/* ===== Data Structures and Queue Operations ===== */

/***** Global Variables *****/
byte EP = NULL_byte;
byte g_tickCount = 0;
byte BASEPRI = 0;
byte pending_exp = 0;
byte EP_Stack = NULL_byte;
bit chain_tick_used = 0;
byte topPrio;
byte g_taskScheduled = 1;

/***** Data Structures *****/
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

TCB tcb[LAST_TASK + 1];
ReadyList readyQueue[NUM_PRIORITIES];
SortLinkNode g_taskSortLink[NUM_OF_TASKS + 1];
byte g_taskSortLinkTail = 0;

/***** Basic Inline Functions *****/
inline MSR_BASEPRI(val)
{
    assert(0 <= NON_IMPLEMENTED_LOW_BITS(val) && NON_IMPLEMENTED_LOW_BITS(val) < 16);
    BASEPRI = NON_IMPLEMENTED_LOW_BITS(val)
}

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

inline switch_context(new_context)
{
    assert(LAST_EP_STACK != NULL_byte && LAST_EP_STACK >= FIRST_TASK && new_context >= FIRST_TASK);
    EP_Stack = new_context
}

inline get_high_prio_pending(ret)
{
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

inline LOS_IntLock(intSave)
{
    intSave = 0;
}

inline LOS_IntRestore(intSave)
{
    intSave = 0;
}

/* ND tick even while we are inside an exception */
inline INT_SAFE()
{
    if
    :: (chain_tick_used == 0 && ((pending_exp >> SysTick_ID) & 1) == 0) ->
           set_pending(SysTick_ID); chain_tick_used = 1
    :: skip
    fi
}

/***** Ready Queue Operations *****/
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

/* Remove a specific task from ready queue */
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

/***** SortLink Operations *****/
inline OsAdd2SortLink(taskID)
{
    assert(g_taskSortLinkTail < NUM_OF_TASKS + 1);
    assert(g_taskSortLinkTail >= 0);
    g_taskSortLink[g_taskSortLinkTail].taskId = taskID;
    g_taskSortLink[g_taskSortLinkTail].responseTime = MAX_RESPONSE_TIME;
    tcb[taskID].pendList = g_taskSortLinkTail;
    g_taskSortLinkTail++;
}

inline OsRemoveFromSortLink(taskID)
{
    byte idx = tcb[taskID].pendList;
    do
    :: (idx < g_taskSortLinkTail - 1) ->
        g_taskSortLink[idx].taskId = g_taskSortLink[idx + 1].taskId;
        g_taskSortLink[idx].responseTime = g_taskSortLink[idx + 1].responseTime;
        idx++
    :: else -> break
    od;
    g_taskSortLink[g_taskSortLinkTail - 1].taskId = UNUSED;
    g_taskSortLink[g_taskSortLinkTail - 1].responseTime = UNUSED;
    g_taskSortLinkTail--;
}

