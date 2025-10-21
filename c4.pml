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
    EP_Stack = NULL_byte;
}

/* switch_context: decide which task to resume on exception return */
inline switch_context(new_context)
{
    assert(LAST_EP_STACK != NULL_byte && LAST_EP_STACK >= FIRST_TASK && new_context >= FIRST_TASK);
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
    :: true -> TIMER_INT_IRQ \
    :: true -> skip \
    fi



/* ND tick even while we are inside an exception: pending can arrive but won't preempt now */
#define ND_TIMER_INT_EXC() \
    if \
    :: (chain_tick_used == 0 && ((pending_exp >> SysTick_ID) & 1) == 0) -> \
           set_pending(SysTick_ID); chain_tick_used = 1 \
    :: else -> skip \
    fi

/***** AWAIT macros *****/
#define AWAIT_T(id, stmt) \
    atomic { (id == EP) -> stmt; ND_TIMER_INT_TASK(); D_TAKEN_INT() }

#define AWAIT_E(id, stmt) \
    atomic { (id == EP) -> stmt; ND_TIMER_INT_EXC() }

/***** Ready queue & TCBs *****/
typedef TCB {
    byte prio;
    byte state;
    byte pendList;
}

typedef ReadyList {
    byte tasks[LIST_SIZE];
    byte tailIndex;
}

typedef SortLinkNode {
    byte taskId;
    byte responseTime;
}

byte topPrio;
TCB tcb[LAST_TASK + 1];
ReadyList readyQueue[NUM_PRIORITIES];
SortLinkNode g_taskSortLink[NUM_OF_TASKS];
byte g_taskSortLinkTail = 0;

inline initSortLinkList()
{
    byte idx = 0;
    do
    :: (idx < NUM_OF_TASKS) ->
        g_taskSortLink[idx].taskId = UNUSED;
        g_taskSortLink[idx].responseTime = UNUSED;
        idx++
    :: else -> break
    od;
    g_taskSortLinkTail = 0;
}
inline LOS_Schedule()
{
    set_pending(PendSV_ID);
    // D_TAKEN_INT();
}
#define MAX_RESPONSE_TIME  255
inline LOS_Suspend(taskId)
{
    g_taskSortLink[g_taskSortLinkTail].taskId = taskId;
    g_taskSortLink[g_taskSortLinkTail].responseTime = MAX_RESPONSE_TIME;
    tcb[taskId].pendList = g_taskSortLinkTail;
    g_taskSortLinkTail++;
    if
    :: tcb[taskId].state == READY ->
        //remove from ready queue
        OsDequeueWithId(taskId);
        tcb[taskId].state = SUSPENDED;
    :: tcb[taskId].state == RUNNING -> 
        tcb[taskId].state = SUSPENDED;
        LOS_Schedule();
    :: tcb[taskId].state == SUSPENDED ->
        assert(0);
    :: else -> assert(0);
    fi
}


inline LOS_Resume(taskId)
{
    assert(EP >= FIRST_TASK && EP <= LAST_TASK);
    byte sortlinkIdx = tcb[taskId].pendList;
    byte idx = sortlinkIdx;
    do
    :: (idx < g_taskSortLinkTail - 1) ->
        g_taskSortLink[idx].taskId = g_taskSortLink[idx + 1].taskId;
        g_taskSortLink[idx].responseTime = g_taskSortLink[idx + 1].responseTime;
        idx++
    :: else -> break
    od; 
    g_taskSortLink[g_taskSortLinkTail - 1].taskId = UNUSED;
    g_taskSortLink[g_taskSortLinkTail - 1].responseTime = 0;
    g_taskSortLinkTail--;
    tcb[taskId].state = READY;
    OsEnqueueTail(taskId, tcb[taskId].prio);
    if
    :: tcb[taskId].prio < tcb[EP].prio ->
        LOS_Schedule();
    :: else -> skip;
    fi
}
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



inline OsDequeueWithId(taskId)
{
    byte idx = 0;
    byte found = 0;
    byte prioLevel = tcb[taskId].prio;
    do
    :: (idx < readyQueue[prioLevel].tailIndex && !found) ->
        if
        :: (readyQueue[prioLevel].tasks[idx] == taskId) ->
            found = 1;
        :: else -> idx++
        fi
    :: else -> break
    od;
    assert(found == 1);
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

        /* 把被打断的线程放回就绪队列（轮转），并选择下一个 */
        AWAIT_E(PendSV_ID,
            tcb[LAST_EP_STACK].state = READY;
            OsEnqueueTail(LAST_EP_STACK, tcb[LAST_EP_STACK].prio)
        );
        AWAIT_E(PendSV_ID, OsGetTopTask(tmp, topPrio));
        AWAIT_E(PendSV_ID, OsDequeueHead(topPrio));
        AWAIT_E(PendSV_ID, tcb[tmp].state = RUNNING);
        AWAIT_E(PendSV_ID, switch_context(tmp));

        /* 退出：若此时 SysTick 也 pending，则 tail‑chaining 立即转去 SysTick */
        AWAIT_E(PendSV_ID, exp_return(tmp))
    od
}

proctype SysTick_Handler()
{
    byte tmp = NULL_byte;
    do
    :: (EP == SysTick_ID) ->
        exp_entry(SysTick_ID);

        /* tick 到达：请求调度（置位 PendSV） */
        AWAIT_E(SysTick_ID, set_pending(PendSV_ID));

        /* 退出：若 PendSV pending 则直接 tail‑chaining 进入 PendSV */
        AWAIT_E(SysTick_ID, exp_return(tmp))
    od
}


/***** Two simple tasks *****/
proctype Process1()
{
    do
    :: AWAIT_T(FIRST_TASK, printf("Process1 running\\n"))
    :: AWAIT_T(FIRST_TASK, LOS_Suspend(FIRST_TASK+1))
    :: AWAIT_T(FIRST_TASK, assert(EP == FIRST_TASK))
    :: AWAIT_T(FIRST_TASK, LOS_Resume(FIRST_TASK+1))
    od
}

proctype Process2()
{
    do
    :: AWAIT_T(FIRST_TASK + 1, printf("Process2 running\\n"))
    :: AWAIT_T(FIRST_TASK + 1, assert(EP == FIRST_TASK + 1))
    od
}
#define SYSTICK_PENDING   ((((pending_exp) >> SysTick_ID) & 1) == 1)
#define PENDSV_PENDING    ((((pending_exp) >> PendSV_ID)  & 1) == 1)
#define IN_EXC            (EP < FIRST_TASK)
#define IN_USER           (EP >= FIRST_TASK)

/* 不会一直停留在异常态（避免异常 ping-pong） */
ltl back_to_user { [] <> IN_USER }

/* 每次进入异常最终都会回到用户态 */
ltl exc_leads_to_user { [] (IN_EXC -> <> IN_USER) }

ltl starvation_free_task1 {
    ([] ((pending_exp > 0) -> <> IN_USER)) -> (([] ((tcb[FIRST_TASK].state   == READY && SYSTICK_PENDING) -> <> (EP == FIRST_TASK))))
}
ltl starvation_free_task2 {
    ([] ((pending_exp > 0) -> <> IN_USER)) -> (([] ((tcb[FIRST_TASK+1].state == READY && SYSTICK_PENDING) -> <> (EP == FIRST_TASK+1))))
}
/* 组合性质：任务就绪必达 ＋ 只要有任意 pending，最终回到用户态 */
ltl all_starvation_free {
  ([] ((pending_exp > 0) -> <> IN_USER)) -> (([] ((tcb[FIRST_TASK].state   == READY && SYSTICK_PENDING) -> <> (EP == FIRST_TASK))) ||
  ([] ((tcb[FIRST_TASK+1].state == READY && SYSTICK_PENDING) -> <> (EP == FIRST_TASK+1))) )
  
}




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
    initSortLinkList();

    /* init TCBs + ready lists */
    tcb[FIRST_TASK].prio = 2;      tcb[FIRST_TASK].state     = READY; OsEnqueueTail(FIRST_TASK, 2);
    tcb[FIRST_TASK+1].prio = 2;    tcb[FIRST_TASK+1].state   = READY; OsEnqueueTail(FIRST_TASK+1, 2);

    /* pick first running task */
    OsGetTopTask(EP, topPrio);
    OsDequeueHead(topPrio);
    tcb[EP].state = RUNNING;

    /* start exception handlers and tasks */
    RUN_ALL_EXPS();
    run Process1();
    run Process2()
}
/* ===== End of MWE ===== */
