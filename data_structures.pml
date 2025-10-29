/* ===== Data Structures and Queue Operations ===== */

/***** Global Variables *****/
byte EP = NULL_byte;
byte g_tickCount = 0;
byte g_schedResponseTime = MAX_RESPONSE_TIME;  /* Earliest wakeup time in sortLink */
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
/* 
 * Add task to sortLink with sorted insertion by responseTime (ascending order).
 * This allows OsTickProcess to stop scanning at the first non-expired task.
 */
inline OsAdd2SortLinkSorted(taskID, wakeupTime)
{
    byte insertPos;
    byte idx;
    byte found;
    byte tmpId;
    byte tmpTime;
    
    assert(g_taskSortLinkTail < NUM_OF_TASKS + 1);
    assert(g_taskSortLinkTail >= 0);
    
    /* Find insertion position */
    insertPos = 0;
    found = 0;
    do
    :: (insertPos < g_taskSortLinkTail && found == 0) ->
        if
        :: (wakeupTime < g_taskSortLink[insertPos].responseTime) -> 
            found = 1
        :: (wakeupTime >= g_taskSortLink[insertPos].responseTime) -> 
            insertPos++
        fi
    :: else -> break
    od;
    
    /* Shift elements from tail down to insertPos */
    idx = g_taskSortLinkTail;
    do
    :: (idx > insertPos) ->
        /* Copy from [idx-1] to [idx] */
        tmpId = g_taskSortLink[idx - 1].taskId;
        tmpTime = g_taskSortLink[idx - 1].responseTime;
        g_taskSortLink[idx].taskId = tmpId;
        g_taskSortLink[idx].responseTime = tmpTime;
        /* Update pendList if valid task */
        if
        :: (tmpId != UNUSED) -> tcb[tmpId].pendList = idx
        :: (tmpId == UNUSED) -> skip
        fi;
        idx--
    :: (idx <= insertPos) -> break
    od;
    
    /* Insert new task at insertPos */
    g_taskSortLink[insertPos].taskId = taskID;
    g_taskSortLink[insertPos].responseTime = wakeupTime;
    tcb[taskID].pendList = insertPos;
    g_taskSortLinkTail++;
    
    /* Update earliest wakeup time if this task is now first (for DELAYED tasks) */
    if
    :: (insertPos == 0 && wakeupTime < MAX_RESPONSE_TIME) ->
        g_schedResponseTime = wakeupTime
    :: else -> skip
    fi;
    
    /* Verify sortLink remains sorted after insertion */
    AssertSortLinkIsSorted()
}

/* Legacy function for SUSPENDED tasks - uses MAX_RESPONSE_TIME */
inline OsAdd2SortLink(taskID)
{
    OsAdd2SortLinkSorted(taskID, MAX_RESPONSE_TIME);
}

inline OsRemoveFromSortLink(taskID)
{
    byte idx = tcb[taskID].pendList;
    byte removedIdx = idx;
    
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
    
    /* 
     * Update earliest wakeup time after removal.
     * OPTIMIZATION: SUSPENDED tasks (responseTime = MAX_RESPONSE_TIME) are 
     * naturally sorted to the end. If we see one, we can stop immediately.
     */
    if
    :: (g_taskSortLinkTail == 0) ->
        /* sortLink is empty */
        g_schedResponseTime = MAX_RESPONSE_TIME
    :: (removedIdx == 0 && g_taskSortLinkTail > 0) ->
        /* Removed the first element, update to new first */
        byte newFirstTime = g_taskSortLink[0].responseTime;
        if
        :: (newFirstTime < MAX_RESPONSE_TIME) ->
            /* First task has finite wakeup time (DELAYED) */
            g_schedResponseTime = newFirstTime
        :: else ->
            /* First task is SUSPENDED (responseTime = MAX_RESPONSE_TIME).
             * Since sortLink is sorted, all following are also SUSPENDED.
             * No need to scan further! */
            g_schedResponseTime = MAX_RESPONSE_TIME
        fi
    :: else -> skip  /* Didn't remove first, no need to update */
    fi;
    
    /* Verify sortLink remains sorted after removal */
    AssertSortLinkIsSorted()
}

/* 
 * Formal Verification: Check that sortLink is always sorted.
 * This assertion verifies the correctness of the sorted insertion algorithm.
 * 
 * Invariant: For all i, j where 0 <= i < j < g_taskSortLinkTail:
 *            g_taskSortLink[i].responseTime <= g_taskSortLink[j].responseTime
 */
inline AssertSortLinkIsSorted()
{
    byte checkIdx = 0;
    byte isValid = 1;
    
    /* Check pairwise ordering: sortLink[i].responseTime <= sortLink[i+1].responseTime */
    do
    :: (checkIdx < g_taskSortLinkTail - 1) ->
        /* Each element must be <= next element */
        assert(g_taskSortLink[checkIdx].responseTime <= 
               g_taskSortLink[checkIdx + 1].responseTime);
        checkIdx++
    :: else -> break
    od
}

