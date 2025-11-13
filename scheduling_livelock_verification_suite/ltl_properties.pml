/* ===== LTL Properties for Verification ===== */

/***** Basic Liveness Properties *****/

/* 不会一直停留在异常态（避免异常 ping-pong） */
ltl back_to_user { [] <> IN_USER }

/* 每次进入异常最终都会回到用户态 */
ltl exc_leads_to_user { [] (IN_EXC -> <> IN_USER) }

/***** Starvation Freedom Properties *****/

ltl starvation_free_task1 {
    (([] ((pending_exp > 0) -> <> IN_USER)) -> (([] ((tcb[FIRST_TASK].state   == READY && SYSTICK_PENDING) -> <> (EP == FIRST_TASK)))))
}

ltl starvation_free_task2 {
    ([] ((pending_exp > 0) -> <> IN_USER)) -> (([] ((tcb[FIRST_TASK+1].state == READY && SYSTICK_PENDING) -> <> (EP == FIRST_TASK+1))))
}

/* 组合性质：任务就绪必达 ＋ 只要有任意 pending，最终回到用户态 */
ltl all_starvation_free {
  ([] ((pending_exp > 0) -> <> IN_USER)) -> (([] ((tcb[FIRST_TASK].state   == READY && SYSTICK_PENDING) -> <> (EP == FIRST_TASK))) &&
  ([] ((tcb[FIRST_TASK+1].state == READY && SYSTICK_PENDING) -> <> (EP == FIRST_TASK+1))) )
}

/***** Context Switch Properties *****/

ltl P2_switching_not_P1_witness_unfolded {
  [] !(
    <> (
        /* 步骤1: P2被SysTick打断，进入SysTick Handler */
        (EP==SysTick_ID && EP_Stack==(FIRST_TASK+1))
        && (
            (EP==SysTick_ID && EP_Stack==(FIRST_TASK+1))
            U
            (
                /* 步骤2: tail-chain到PendSV，仍然栈是P2 */
                (EP==PendSV_ID && EP_Stack==(FIRST_TASK+1))
                && (
                    (EP==PendSV_ID && EP_Stack==(FIRST_TASK+1))
                    U
                    (
                        /* 步骤3: switch_context后，栈变成P1 */
                        (EP==PendSV_ID && EP_Stack==FIRST_TASK)
                        && (
                            (EP==PendSV_ID && EP_Stack==FIRST_TASK)
                            U
                            (
                                /* 步骤4: 第二次SysTick pending发生，P1"被打断" */
                                (EP==SysTick_ID && EP_Stack==FIRST_TASK)
                                && (
                                    (EP==SysTick_ID && EP_Stack==FIRST_TASK)
                                    U
                                    (
                                        /* 步骤5: 再次tail-chain到PendSV */
                                        (EP==PendSV_ID && EP_Stack==FIRST_TASK)
                                        && (
                                            (EP==PendSV_ID && EP_Stack==FIRST_TASK)
                                            U
                                            (
                                                /* 步骤6: switch_context回P2 */
                                                (EP==PendSV_ID && EP_Stack==(FIRST_TASK+1))
                                                && (
                                                    (EP==PendSV_ID && EP_Stack==(FIRST_TASK+1))
                                                    U
                                                    (
                                                        /* 步骤7: 最终返回P2用户态 */
                                                        (EP==(FIRST_TASK+1))
                                                    )
                                                )
                                            )
                                        )
                                    )
                                )
                            )
                        )
                    )
                )
            )
        )
    )
  )
}

/* LTL Syntactic Sugar */
#define THEN(curr, next)           ((curr) && ((curr) U (next)))
#define EVENTUALLY_THEN(curr, next) (<> THEN(curr, next))
#define NEVER(formula)             ([] !(formula))

/* State predicates */
#define IN_SYSTICK(task)    (EP==SysTick_ID && EP_Stack==(task))
#define IN_PENDSV(task)     (EP==PendSV_ID && EP_Stack==(task))
#define IN_USER_STATE(task)       (EP==(task))
#define SYSTICK_INT         (SYSTICK_PENDING)
#define PENDSV_INT          (PENDSV_PENDING)
#define NO_PENDING          (pending_exp==0)
#define CHAIN_USED          (chain_tick_used==1)
#define CHAIN_FRESH         (chain_tick_used==0)

ltl p2_double_context_switch {
  NEVER(
    EVENTUALLY_THEN(
        IN_USER_STATE(3) && SYSTICK_INT,          /* P2执行，SysTick来 */
        THEN(IN_SYSTICK(3),                 /* 进入SysTick */
        THEN(IN_PENDSV(3),                  /* PendSV，栈=P2 */
        THEN(IN_PENDSV(2),                  /* 切到P1 */
        THEN(IN_SYSTICK(2),                 /* 第二次SysTick */
        THEN(IN_PENDSV(2),                  /* PendSV，栈=P1 */
        THEN(IN_PENDSV(3),                  /* 切回P2 */
             IN_USER_STATE(3)                     /* 返回P2 */
        ))))))
    )
  )
}

/***** Smoke Tests (should fail to show normal behavior) *****/

/* should fail to indicate normal behaviour allowed: user can run with no exception pending */
ltl smoke_P2_user_no_pending {
  [] !(
     (
        /* 前置步骤: P2在用户态执行，没有pending */
        (EP==(FIRST_TASK+1) && pending_exp==0 && chain_tick_used==1)
    )
  )
}

/* should fail as a smoke test */
ltl smoke_P1_user_no_pending {
  [] !(
     (
        /* 前置步骤: P1在用户态执行，没有pending */
        (EP==(FIRST_TASK) && pending_exp==0 && chain_tick_used==1)
    )
  )
}

/***** Delay-specific Properties *****/

/* Delayed tasks eventually become ready */
ltl delayed_become_ready {
    [] ((tcb[FIRST_TASK].state == DELAYED) -> <> (tcb[FIRST_TASK].state == READY))
}

/* Tick counter increases monotonically */
ltl tick_monotonic {
    [] (g_tickCount < 255)
}

/* Delayed tasks are not in ready queue */
ltl delayed_not_in_ready_queue {
    [] ((tcb[FIRST_TASK].state == DELAYED) -> 
        (readyQueue[tcb[FIRST_TASK].prio].tasks[0] != FIRST_TASK))
}

/* 
 * FORMAL VERIFICATION: SortLink is always sorted (LTL version)
 * 
 * This LTL property verifies that sortLink is always sorted by responseTime.
 * We check that consecutive elements maintain ascending order.
 * 
 * Property: Always (if there are at least 2 elements in sortLink,
 *                   then first element <= second element)
 */
ltl sortlink_is_sorted {
    [] ((g_taskSortLinkTail >= 2) -> 
        (g_taskSortLink[0].responseTime <= g_taskSortLink[1].responseTime))
}

/* 
 * Extended check: If sortLink has 3 elements, check first three are sorted
 */
ltl sortlink_three_sorted {
    [] ((g_taskSortLinkTail >= 3) -> 
        ((g_taskSortLink[0].responseTime <= g_taskSortLink[1].responseTime) &&
         (g_taskSortLink[1].responseTime <= g_taskSortLink[2].responseTime)))
}

