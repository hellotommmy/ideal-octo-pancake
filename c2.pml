/* ===== Minimal Working Example: SysTick & PendSV split with async pending ===== */

#define NULL_byte         255

/***** IDs *****/
#define PendSV_ID         0
#define SysTick_ID        1
#define FIRST_TASK        2

/***** Config: tasks & ready queues *****/
#define NUM_OF_TASKS      2
#define LAST_TASK         (FIRST_TASK + NUM_OF_TASKS - 1)

#define LIST_SIZE         5
#define NUM_PRIORITIES    4
#define UNUSED            255

/* Task states */
#define PENDED     0
#define READY      1
#define DELAYED    2
#define SUSPENDED  3
#define RUNNING    4
// bit sched_req = 0;  
/***** Executing entity (EP): exception(0/1) or user task (>= FIRST_TASK) *****/
byte EP = NULL_byte;

/***** "Ghost" BASEPRI (priority mask) — static single-level model *****/
#define NON_IMPLEMENTED_LOW_BITS(val) (val >> 4)
byte BASEPRI = 0;
/* equal priorities for SysTick & PendSV => static 15 */
#define THE_STATIC_PRIORITY 15
#define GET_PRIO_EXP(id)    THE_STATIC_PRIORITY
#define BASEPRI_MASK(id)    ((BASEPRI == 0) || (GET_PRIO_EXP(id) < BASEPRI))
inline MSR_BASEPRI(val)
{
    assert(0 <= NON_IMPLEMENTED_LOW_BITS(val) && NON_IMPLEMENTED_LOW_BITS(val) < 16);
    BASEPRI = NON_IMPLEMENTED_LOW_BITS(val)
}

/***** Pending bits for exceptions *****/
byte pending_exp = 0;
#define GET_PENDING(id)     ((pending_exp >> id) & 1)
#define HAS_PENDING_EXPS    (pending_exp > 0)
#define SYSTICK_PENDING   ((((pending_exp) >> SysTick_ID) & 1) == 1)
#define PENDSV_PENDING    ((((pending_exp) >> PendSV_ID)  & 1) == 1)
#define IN_EXC            (EP < FIRST_TASK)
#define IN_USER           (EP >= FIRST_TASK)

/* 谁在跑 */
#define RUNS1   (EP == FIRST_TASK)
#define RUNS2   (EP == FIRST_TASK + 1)

/* 在 PendSV 里“准备切到 1”的两种可见信号：
   - 原始 MWE：switch_context(tmp) 把 EP_Stack 设为返回目标
   - 更通用：在 PendSV 中把被选中的目标标为 RUNNING
*/
#define SWITCH_TO1_EPSTACK   (EP == PendSV_ID && LAST_EP_STACK == FIRST_TASK)
#define WAS2_BUT_SWITCHING   (EP == PendSV_ID && LAST_EP_STACK == FIRST_TASK + 1)
#define SWITCH_TO1_RUNNING   (EP == PendSV_ID && tcb[FIRST_TASK].state == RUNNING)
#define SWITCH_TO1           (  WAS2_BUT_SWITCHING -> <> SWITCH_TO1_RUNNING )

/* 正在“切 1”且 SysTick 位已置起（在异常里可见） */
#define SWITCH_TO1_WITH_SYSTICK  (SWITCH_TO1 && SYSTICK_PENDING)

inline set_pending(id)
{
    assert(id < FIRST_TASK && id < 8);
    pending_exp = pending_exp | (1 << id)
}
inline clear_pending(id)
{
    assert(id < FIRST_TASK && id < 8);
    pending_exp = pending_exp & ~(1 << id)
}

/***** Single-slot exception stack (fast path for 2 equal-prio exps) *****/
byte EP_Stack = NULL_byte;
#define LAST_EP_STACK       EP_Stack

inline push(id)
{
    assert(LAST_EP_STACK == NULL_byte);
    EP_Stack = id;
}
inline pop(ret)
{
    assert(LAST_EP_STACK != NULL_byte);
    ret = EP_Stack;
    // assert(ret != FIRST_TASK+1);
    EP_Stack = NULL_byte;
}

/* switch_context: decide which task to resume on exception return */
inline switch_context(new_context)
{
    assert(LAST_EP_STACK != NULL_byte && LAST_EP_STACK >= FIRST_TASK && new_context >= FIRST_TASK);
    // assert(!(new_context == FIRST_TASK+1 && !SYSTICK_PENDING));
    EP_Stack = new_context
}

/***** Interrupt take conditions & helpers *****/
#define INT_TAKE \
    (((GET_PENDING(PendSV_ID) && BASEPRI_MASK(PendSV_ID)) || \
      (GET_PENDING(SysTick_ID) && BASEPRI_MASK(SysTick_ID))) && \
     EP >= FIRST_TASK)

#define INT_SAFE (!INT_TAKE)

bit chain_tick_used = 0;   /* 本次异常链中，是否已在异常内生成过一次 SysTick pending */

/* "take" the highest-numbered pending if both (PendSV first per AN321 tie-break) */
#define D_TAKEN_INT() \
    if \
    :: INT_TAKE -> \
        if \
        :: (EP >= FIRST_TASK) -> chain_tick_used = 0 /* 开启一条新的异常链 */ \
        :: else -> skip \
        fi; \
        push(EP); \
        EP = (GET_PENDING(PendSV_ID) -> PendSV_ID : SysTick_ID) \
    :: else -> skip \
    fi

inline get_high_prio_pending(ret)
{
    /* only 2 exps & equal prio: PendSV is chosen first when both pending */
    ret = (GET_PENDING(PendSV_ID) -> PendSV_ID : SysTick_ID)
}

inline exp_entry(gen_id)
{
    atomic { (EP == gen_id) -> clear_pending(gen_id) }
}

inline tail_chaining(high_pending_exp)
{
    get_high_prio_pending(high_pending_exp);
    assert(BASEPRI_MASK(high_pending_exp) && LAST_EP_STACK >= FIRST_TASK);
    EP = high_pending_exp;
    high_pending_exp = NULL_byte
}

inline exp_return(tmp)
{
    if
    :: HAS_PENDING_EXPS -> tail_chaining(tmp)
    :: else -> pop(EP)
    fi
}

/***** "Hardware timer" arrival (raising SysTick pending) *****/
#define TIMER_INT_IRQ       set_pending(SysTick_ID)

/* ND tick while tasks are executing: may or may not raise SysTick */
#define ND_TIMER_INT_TASK() \
    if \
    :: true -> TIMER_INT_IRQ; \
    :: skip \
    fi

/* ND tick even while we are inside an exception: pending can arrive but won't preempt now */
#define INT_SAFE() \
    if \
    :: (chain_tick_used == 0 && ((pending_exp >> SysTick_ID) & 1) == 0) -> \
           set_pending(SysTick_ID); chain_tick_used = 1 \
    :: skip \
    fi

/***** AWAIT macros *****/
#define EXEC_WHEN_CURRENT(id, stmt) \
    atomic { (id == EP) -> stmt; ND_TIMER_INT_TASK(); D_TAKEN_INT() }

#define EXEC_WHEN_CURRENT_SAFE(id, stmt) \
    atomic { (id == EP) -> stmt; INT_SAFE() }

/***** Ready queue & TCBs *****/
typedef TCB {
    byte prio;
    byte state;
}

typedef ReadyList {
    byte tasks[LIST_SIZE];
    byte tailIndex;
}

byte topPrio;
TCB tcb[LAST_TASK + 1];
ReadyList readyQueue[NUM_PRIORITIES];

inline initReadyQueue(prioLevel)
{
    byte idx = 0;
    do
    :: (idx < LIST_SIZE) ->
        readyQueue[prioLevel].tasks[idx] = UNUSED;
        idx++
    :: else -> break
    od;
    readyQueue[prioLevel].tailIndex = 0
}

inline OsEnqueueTail(taskId, prioLevel)
{
    if
    :: (readyQueue[prioLevel].tailIndex < LIST_SIZE) ->
        readyQueue[prioLevel].tasks[readyQueue[prioLevel].tailIndex] = taskId;
        readyQueue[prioLevel].tailIndex++
    :: else -> assert(0)
    fi
}

inline OsDequeueHead(prioLevel)
{
    byte idx = 0;
    do
    :: (idx < readyQueue[prioLevel].tailIndex - 1) ->
        readyQueue[prioLevel].tasks[idx] = readyQueue[prioLevel].tasks[idx + 1];
        idx++
    :: else -> break
    od;
    if
    :: (readyQueue[prioLevel].tailIndex > 0) ->
        readyQueue[prioLevel].tasks[readyQueue[prioLevel].tailIndex - 1] = UNUSED;
        readyQueue[prioLevel].tailIndex--
    :: else -> skip
    fi
}

inline OsGetTopTask(task_return_var, task_return_prio)
{
    byte prio = 0;
    byte top_task = 0;
    byte found = 0;
    do
    :: (prio < NUM_PRIORITIES && !found) ->
        if
        :: (readyQueue[prio].tailIndex > 0) ->
            top_task = readyQueue[prio].tasks[0];
            found = 1
        :: else -> prio++
        fi
    :: else -> break
    od;
    task_return_var = top_task;
    task_return_prio = prio
}

/***** Exception handlers *****/
proctype PendSV_Handler()
{
    byte tmp = NULL_byte;
    do
    :: (EP == PendSV_ID) ->
        exp_entry(PendSV_ID);
//  EXEC_WHEN_CURRENT_SAFE(PendSV_ID, sched_req = 0);    
        /* 把被打断的线程放回就绪队列（轮转），并选择下一个 */
        EXEC_WHEN_CURRENT_SAFE(PendSV_ID,
            tcb[LAST_EP_STACK].state = READY;
            OsEnqueueTail(LAST_EP_STACK, tcb[LAST_EP_STACK].prio)
        );
        EXEC_WHEN_CURRENT_SAFE(PendSV_ID, OsGetTopTask(tmp, topPrio));
        // assert(tmp != FIRST_TASK+1);
        EXEC_WHEN_CURRENT_SAFE(PendSV_ID, OsDequeueHead(topPrio));
        EXEC_WHEN_CURRENT_SAFE(PendSV_ID, tcb[tmp].state = RUNNING);
        EXEC_WHEN_CURRENT_SAFE(PendSV_ID, switch_context(tmp));

        /* 退出：若此时 SysTick 也 pending，则 tail‑chaining 立即转去 SysTick */
        EXEC_WHEN_CURRENT_SAFE(PendSV_ID, exp_return(tmp))
    od
}

proctype SysTick_Handler()
{
    byte tmp = NULL_byte;
    do
    :: (EP == SysTick_ID) ->
        exp_entry(SysTick_ID);


        /* tick 到达：请求调度（置位 PendSV） */
        EXEC_WHEN_CURRENT_SAFE(SysTick_ID, set_pending(PendSV_ID));

        // EXEC_WHEN_CURRENT_SAFE(SysTick_ID, sched_req = 1);  

        /* 退出：若 PendSV pending 则直接 tail‑chaining 进入 PendSV */
        EXEC_WHEN_CURRENT_SAFE(SysTick_ID, exp_return(tmp))
    od
}

/***** Two simple tasks *****/
proctype Process1()
{
    do
    :: EXEC_WHEN_CURRENT(FIRST_TASK, printf("Process1 running\\n"))
    :: EXEC_WHEN_CURRENT(FIRST_TASK, assert(EP == FIRST_TASK))
    od
}

proctype Process2()
{
    do
    :: EXEC_WHEN_CURRENT(FIRST_TASK + 1, printf("P2 running\n"))
    // :: assert(true)
    :: EXEC_WHEN_CURRENT(FIRST_TASK + 1, assert(EP == FIRST_TASK + 1))
    od
}



/* 不会一直停留在异常态（避免异常 ping-pong） */
ltl back_to_user { [] <> IN_USER }

/* 每次进入异常最终都会回到用户态 */
ltl exc_leads_to_user { [] (IN_EXC -> <> IN_USER) }


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



// /* ===== LTL Syntactic Sugar ===== */

// /* THEN: 当前条件保持直到下一个条件满足
//  * 用法: THEN(condition1, condition2)
//  * 等价于: (condition1) && ((condition1) U (condition2))
//  */
// /* ===== LTL Syntactic Sugar ===== */
#define THEN(curr, next)           ((curr) && ((curr) U (next)))
#define EVENTUALLY_THEN(curr, next) (<> THEN(curr, next))
#define NEVER(formula)             ([] !(formula))

/* State predicates */
#define IN_SYSTICK(task)    (EP==SysTick_ID && EP_Stack==(task))
#define IN_PENDSV(task)     (EP==PendSV_ID && EP_Stack==(task))
#define IN_USER(task)       (EP==(task))
#define SYSTICK_INT         (SYSTICK_PENDING)
#define PENDSV_INT          (PENDSV_PENDING)
#define NO_PENDING          (pending_exp==0)
#define CHAIN_USED          (chain_tick_used==1)
#define CHAIN_FRESH         (chain_tick_used==0)

/* Task shortcuts */
#define P1  FIRST_TASK
#define P2  (FIRST_TASK+1)


ltl p2_double_context_switch {
  NEVER(
    EVENTUALLY_THEN(
        IN_USER(3) && SYSTICK_INT,          /* P2执行，SysTick来 */
        THEN(IN_SYSTICK(3),                 /* 进入SysTick */
        THEN(IN_PENDSV(3),                  /* PendSV，栈=P2 */
        THEN(IN_PENDSV(2),                  /* 切到P1 */
        THEN(IN_SYSTICK(2),                 /* 第二次SysTick */
        THEN(IN_PENDSV(2),                  /* PendSV，栈=P1 */
        THEN(IN_PENDSV(3),                  /* 切回P2 */
             IN_USER(3)                     /* 返回P2 */
        ))))))
    )
  )
}

//should fail to indicate normal behaviour allowed: user can run with no exception pending
ltl smoke_P2_user_no_pending {
  [] !(
     (
        /* 前置步骤: P2在用户态执行，没有pending */
        (EP==(FIRST_TASK+1) && pending_exp==0 && chain_tick_used==1)
        
    )
  )
}

//should fail as a smoke test
ltl smoke_P1_user_no_pending {
  [] !(
     (
        /* 前置步骤: P1在用户态执行，没有pending */
        (EP==(FIRST_TASK) && pending_exp==0 && chain_tick_used==1)
        
    )
  )
}

// /* 测试1: 能否在用户态且 chain_tick_used==1？ */
// ltl test1 {
//   [] !((EP == FIRST_TASK+1) && (chain_tick_used == 0))
// }

// /* 测试2: 能否 pending_exp==0 且 chain_tick_used==1？ */
// ltl test2 {
//   [] !((pending_exp == 0) && (chain_tick_used == 1))
// }

// /* 测试3: 三个条件逐个测试 */
// ltl test3 {
//   [] !((EP == (FIRST_TASK+1)) && (pending_exp == 0) && (chain_tick_used == 1))
// }

// ltl double_switch {
//   NEVER(
//     (IN_USER(P2) && SYSTICK_INT)
//   )
// }

// /* 测试：P1能否在用户态观察到SYSTICK_PENDING？ */
// ltl test_p1_systick {
//   [] !((EP == FIRST_TASK) && SYSTICK_PENDING)
// }

// /* 测试：P2是否真的执行过？ */
// ltl p2_runs {
//   [] !(EP == (FIRST_TASK+1))
// }

// /* 测试：P2能否在用户态观察到SYSTICK_PENDING？ */
// ltl test_p2_systick {
//   [] !((EP == (FIRST_TASK+1)) && SYSTICK_PENDING)
// }

// ltl step2_witness { [] ! SWITCH_TO1 }

// ltl step3_witness { [] ! SWITCH_TO1_WITH_SYSTICK }

// // #define SCHED_REQ   (sched_req == 1)
// // ltl starvation_free_task1p {
// //   [] ( (tcb[FIRST_TASK].state == READY && SCHED_REQ) -> <> (EP == FIRST_TASK) )
// // }
// // ltl starvation_free_task2p {
// //   [] ( (tcb[FIRST_TASK+1].state == READY && SCHED_REQ) -> <> (EP == FIRST_TASK+1) )
// // }

// #define READY1 (tcb[FIRST_TASK].state   == READY)
// #define RUN1   (EP == FIRST_TASK)
// #define READY2 (tcb[FIRST_TASK+1].state == READY)
// #define RUN2   (EP == FIRST_TASK+1)

// /* 如果一个任务无穷多次处于 READY，则它也应无穷多次运行 */
// ltl no_starve_p1 { ( []<> READY1 ) -> ( []<> RUN1 ) }
// ltl no_starve_p2 { ( []<> READY2 ) -> ( []<> RUN2 ) }

/***** Boot *****/
#define RUN_ALL_EXPS() atomic { run PendSV_Handler(); run SysTick_Handler() }

init
{
    byte i;

    /* init ready queues */
    i = 0;
    do
    :: (i < NUM_PRIORITIES) ->
        initReadyQueue(i);
        i++
    :: else -> break
    od;

    /* init TCBs + ready lists */
    tcb[FIRST_TASK].prio = 2;      tcb[FIRST_TASK].state     = READY; OsEnqueueTail(FIRST_TASK, 2);
    tcb[FIRST_TASK+1].prio = 2;    tcb[FIRST_TASK+1].state   = READY; OsEnqueueTail(FIRST_TASK+1, 2);

    /* pick first running task */
    // OsGetTopTask(EP, topPrio);
    EP = 2;
    topPrio = 2;
    OsDequeueHead(topPrio);
    tcb[EP].state = RUNNING;

    /* start exception handlers and tasks */
    RUN_ALL_EXPS();
    run Process2();
    run Process1()
}
/* ===== End of MWE ===== */
