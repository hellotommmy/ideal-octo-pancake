/* ===== Data Structures and Queue Operations ===== */

/***** Global Variables *****/
byte EP = NULL_byte;
byte g_tickCount = 0;
byte g_schedResponseTime = MAX_RESPONSE_TIME;  /* Earliest wakeup time in sortLink */
byte g_overflowedResponseTime = MAX_RESPONSE_TIME;  /* Earliest wakeup time in overflowedSortLink */
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

/* TCB array must accommodate extra tasks (like IdleTask in overflow test) */
TCB tcb[FIRST_TASK + 4];  /* Allow FIRST_TASK + 3 tasks */
ReadyList readyQueue[NUM_PRIORITIES];
SortLinkNode g_taskSortLink[NUM_OF_TASKS + 2];  /* Allow extra task */
byte g_taskSortLinkTail = 0;

/* Overflow queue for tasks that would wrap around the 255 tick boundary */
SortLinkNode overflowedSortLink[NUM_OF_TASKS + 2];  /* Allow extra task */
byte overflowedSortLinkTail = 0;

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
    byte temp = prioLevel;
    byte temp1 = readyQueue[prioLevel].tailIndex;
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
    /* If no task found, keep current task */
    if
    :: (!found) ->
        top_task = LAST_EP_STACK;
        prio = (tcb[LAST_EP_STACK].prio)
    :: else -> skip
    fi;
    task_return_var = top_task;
    task_return_prio = prio
}

/***** SortLink Operations *****/
/* 
 * Add task to sortLink with sorted insertion - DUAL QUEUE VERSION
 * 
 * Automatically determines whether to add to normal queue or overflow queue:
 * - If wakeupTime < g_tickCount: overflow occurred, add to overflowedSortLink
 * - Otherwise: add to g_taskSortLink (normal queue)
 * 
 * This solves the byte overflow bug where g_tickCount + ticks wraps around.
 */
inline OsAdd2SortLinkSorted(taskID, wakeupTime)
{
    byte insertPos;
    byte idx;
    byte found;
    byte tmpId;
    byte tmpTime;
    byte willOverflow;
    
    /* CRITICAL: Task must not already be in a sortLink */
    assert(tcb[taskID].pendList == UNUSED);
    byte candidate = wakeupTime;
    /* Detect overflow: if wakeupTime < g_tickCount, byte addition wrapped around */
    willOverflow = (candidate < g_tickCount);
    
    if
    :: (willOverflow) ->
        /* ===== ADD TO OVERFLOW QUEUE ===== */
        assert(overflowedSortLinkTail < NUM_OF_TASKS + 1);
        
        /* Find insertion position in overflow queue */
        insertPos = 0;
        found = 0;
        do
        :: (insertPos < overflowedSortLinkTail && found == 0) ->
            if
            :: (wakeupTime < overflowedSortLink[insertPos].responseTime) -> 
                found = 1
            :: else -> 
                insertPos++
            fi
        :: else -> break
        od;
        
        /* Shift elements in overflow queue */
        idx = overflowedSortLinkTail;
        do
        :: (idx > insertPos) ->
            tmpId = overflowedSortLink[idx - 1].taskId;
            tmpTime = overflowedSortLink[idx - 1].responseTime;
            overflowedSortLink[idx].taskId = tmpId;
            overflowedSortLink[idx].responseTime = tmpTime;
            if
            :: (tmpId != UNUSED) -> 
                tcb[tmpId].pendList = 128 + idx  /* Mark as overflow queue */
            :: else -> skip
            fi;
            idx--
        :: else -> break
        od;
        
        /* Insert into overflow queue */
        overflowedSortLink[insertPos].taskId = taskID;
        overflowedSortLink[insertPos].responseTime = wakeupTime;
        tcb[taskID].pendList = 128 + insertPos;  /* Mark as overflow queue */
        overflowedSortLinkTail++;
        
        /* Update overflow queue earliest wakeup time */
        if
        :: (insertPos == 0 && wakeupTime < MAX_RESPONSE_TIME) ->
            g_overflowedResponseTime = wakeupTime
        :: else -> skip
        fi
        
    :: else ->
        /* ===== ADD TO NORMAL QUEUE ===== */
        assert(g_taskSortLinkTail < NUM_OF_TASKS + 1);
        
        /* Find insertion position */
        insertPos = 0;
        found = 0;
        do
        :: (insertPos < g_taskSortLinkTail && found == 0) ->
            if
            :: (wakeupTime < g_taskSortLink[insertPos].responseTime) -> 
                found = 1
            :: else -> 
                insertPos++
            fi
        :: else -> break
        od;
        
        /* Shift elements */
        idx = g_taskSortLinkTail;
        do
        :: (idx > insertPos) ->
            tmpId = g_taskSortLink[idx - 1].taskId;
            tmpTime = g_taskSortLink[idx - 1].responseTime;
            g_taskSortLink[idx].taskId = tmpId;
            g_taskSortLink[idx].responseTime = tmpTime;
            if
            :: (tmpId != UNUSED) -> tcb[tmpId].pendList = idx
            :: else -> skip
            fi;
            idx--
        :: else -> break
        od;
        
        /* Insert into normal queue */
        g_taskSortLink[insertPos].taskId = taskID;
        g_taskSortLink[insertPos].responseTime = wakeupTime;
        tcb[taskID].pendList = insertPos;
        g_taskSortLinkTail++;
        
        /* Update normal queue earliest wakeup time */
        if
        :: (insertPos == 0 && wakeupTime < MAX_RESPONSE_TIME) ->
            g_schedResponseTime = wakeupTime
        :: else -> skip
        fi;
        
        /* Verify normal queue remains sorted */
        AssertSortLinkIsSorted()
    fi
}

/* Legacy function for SUSPENDED tasks - uses MAX_RESPONSE_TIME */
inline OsAdd2SortLink(taskID)
{
    OsAdd2SortLinkSorted(taskID, MAX_RESPONSE_TIME);
}

inline OsRemoveFromSortLink(taskID)
{
    byte pendListValue = tcb[taskID].pendList;
    byte idx;
    byte removedIdx;
    byte newFirstTime;
    
    /* Check which queue the task is in based on pendList encoding */
    if
    :: (pendListValue < 128) ->
        /* ===== REMOVE FROM NORMAL QUEUE ===== */
        idx = pendListValue;
        removedIdx = idx;
        
        do
        :: (idx < g_taskSortLinkTail - 1) ->
            g_taskSortLink[idx].taskId = g_taskSortLink[idx + 1].taskId;
            g_taskSortLink[idx].responseTime = g_taskSortLink[idx + 1].responseTime;
            /* Update pendList for shifted tasks */
            if
            :: (g_taskSortLink[idx].taskId != UNUSED) ->
                tcb[g_taskSortLink[idx].taskId].pendList = idx
            :: else -> skip
            fi;
            idx++
        :: else -> break
        od;
        g_taskSortLink[g_taskSortLinkTail - 1].taskId = UNUSED;
        g_taskSortLink[g_taskSortLinkTail - 1].responseTime = UNUSED;
        g_taskSortLinkTail--;
        
        /* Clear pendList of removed task */
        tcb[taskID].pendList = UNUSED;
        
        /* Update earliest wakeup time after removal */
        if
        :: (g_taskSortLinkTail == 0) ->
            g_schedResponseTime = MAX_RESPONSE_TIME
        :: (removedIdx == 0 && g_taskSortLinkTail > 0) ->
            newFirstTime = g_taskSortLink[0].responseTime;
            if
            :: (newFirstTime < MAX_RESPONSE_TIME) ->
                g_schedResponseTime = newFirstTime
            :: else ->
                g_schedResponseTime = MAX_RESPONSE_TIME
            fi
        :: else -> skip
        fi;
        
        AssertSortLinkIsSorted()
        
    :: else ->
        /* ===== REMOVE FROM OVERFLOW QUEUE ===== */
        idx = pendListValue - 128;  /* Decode actual index */
        removedIdx = idx;
        
        do
        :: (idx < overflowedSortLinkTail - 1) ->
            overflowedSortLink[idx].taskId = overflowedSortLink[idx + 1].taskId;
            overflowedSortLink[idx].responseTime = overflowedSortLink[idx + 1].responseTime;
            /* Update pendList for shifted tasks */
            if
            :: (overflowedSortLink[idx].taskId != UNUSED) ->
                tcb[overflowedSortLink[idx].taskId].pendList = 128 + idx
            :: else -> skip
            fi;
            idx++
        :: else -> break
        od;
        overflowedSortLink[overflowedSortLinkTail - 1].taskId = UNUSED;
        overflowedSortLink[overflowedSortLinkTail - 1].responseTime = UNUSED;
        overflowedSortLinkTail--;
        
        /* Clear pendList of removed task */
        tcb[taskID].pendList = UNUSED;
        
        /* Update overflow queue earliest wakeup time */
        if
        :: (overflowedSortLinkTail == 0) ->
            g_overflowedResponseTime = MAX_RESPONSE_TIME
        :: (removedIdx == 0 && overflowedSortLinkTail > 0) ->
            newFirstTime = overflowedSortLink[0].responseTime;
            if
            :: (newFirstTime < MAX_RESPONSE_TIME) ->
                g_overflowedResponseTime = newFirstTime
            :: else ->
                g_overflowedResponseTime = MAX_RESPONSE_TIME
            fi
        :: else -> skip
        fi
    fi
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

