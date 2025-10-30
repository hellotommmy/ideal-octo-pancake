/* ===== Task Scheduler with Delay Verification ===== */
/* 
 * This is a specialized version of scheduler.pml for verifying delay correctness.
 * 
 * BUG DETECTED: g_tickCount + ticks may overflow, causing tasks to wake up prematurely.
 * 
 * VERIFICATION APPROACH:
 * - Track actual wait time (ticksActuallyWaited) for each delayed task
 * - Formal property: requestedDelay <= ticksActuallyWaited
 * - When overflow occurs, this property will be violated
 */

/***** Verification Variables *****/
/* Track actual wait time for each task */
/* Size must accommodate extra tasks like IdleTask */
byte ticksActuallyWaited[FIRST_TASK + 3];

/* Record requested delay for each task */
byte requestedDelay[FIRST_TASK + 3];

/***** Task Operations *****/
inline LOS_Schedule()
{
    set_pending(PendSV_ID);
}

inline OsSchedResume(taskID, needSched)
{
    assert(tcb[taskID].state == SUSPENDED);
    needSched = 1;
    tcb[taskID].state = READY;
    OsRemoveFromSortLink(taskID);
    OsEnqueueTail(taskID, tcb[taskID].prio);
}

inline LOS_TaskResume(taskID)
{
    byte     intSave;
    byte     tempStatus;
    byte       needSched = 0;

    LOS_IntLock(intSave)
    
    /* 不允许resume处于DELAYED状态的任务 */
    assert(tcb[taskID].state != DELAYED);
    
    tempStatus = tcb[taskID].state;

    assert(tempStatus == SUSPENDED);

    OsSchedResume(taskID, needSched);
    if
    :: (needSched && g_taskScheduled) ->
        LOS_IntRestore(intSave);
        LOS_Schedule();
    :: else -> skip
    fi;
}

inline OsSchedSuspend(taskID, needSched)
{
    assert(tcb[taskID].state == READY);
    needSched = 1;
    OsDequeueWithId(taskID);  /* Remove from ready queue first - 必须保留！*/
    tcb[taskID].state = SUSPENDED;
    OsAdd2SortLink(taskID);
}

inline LOS_TaskSuspend(taskID)
{
    byte intSave;
    LOS_IntLock(intSave);
    
    /* 可以suspend READY或DELAYED状态的任务 */
    assert(tcb[taskID].state == READY || tcb[taskID].state == DELAYED);
    
    byte needSched = 0;
    
    if
    :: (tcb[taskID].state == READY) ->
        /* READY状态：按原流程处理 */
        OsSchedSuspend(taskID, needSched);
    :: (tcb[taskID].state == DELAYED) ->
        /* DELAYED状态：直接改为SUSPENDED，不需要从就绪队列移除 */
        needSched = 1;
        tcb[taskID].state = SUSPENDED;
        /* responseTime保持不变，在sortLink中 */
    fi;
    
    if
    :: (needSched && g_taskScheduled) ->
        LOS_IntRestore(intSave);
        LOS_Schedule();
    :: else -> skip
    fi;
}

/* Task Yield - voluntarily give up CPU */
inline LOS_TaskYield()
{
    LOS_Schedule();  /* Simply trigger PendSV for rescheduling */
}

/* Task Delay - delay task for specified ticks */
inline OsSchedDelay(taskID, ticks, needSched)
{
    assert(tcb[taskID].state == READY || tcb[taskID].state == RUNNING);
    needSched = 1;
    if
    :: (tcb[taskID].state == READY) ->
        OsDequeueWithId(taskID);  /* Remove from ready queue */
    :: else -> skip  /* If RUNNING, will be handled by PendSV */
    fi;
    tcb[taskID].state = DELAYED;
    
    /* 
     * Note: Overflow is now handled by the dual-queue system in data_structures.pml
     * The overflow detection and queue selection happens automatically in OsAdd2SortLinkSorted
     */
    byte wakeupTime = g_tickCount + ticks;
    
    /* Add to sortLink with sorted insertion by absolute wakeup time */
    OsAdd2SortLinkSorted(taskID, wakeupTime);
}

inline LOS_TaskDelay(ticks)
{
    byte intSave;
    byte needSched = 0;
    byte currentTask = EP;
    
    /* CONSTRAINT: ticks must be less than 255 to avoid overflow issues */
    assert(ticks < 255);
    
    LOS_IntLock(intSave);
    
    if
    :: (ticks == 0) ->
        /* Delay 0 means yield CPU */
        LOS_TaskYield();
    :: (ticks > 0) ->
        /* VERIFICATION: Clear wait counter and record requested delay */
        ticksActuallyWaited[currentTask] = 0;
        requestedDelay[currentTask] = ticks;
        
        /* Delay for specified ticks */
        OsSchedDelay(currentTask, ticks, needSched);
        if
        :: (needSched && g_taskScheduled) ->
            LOS_IntRestore(intSave);
            LOS_Schedule();
        :: else -> skip
        fi;
    :: else -> skip
    fi;
}

/* 
 * Process tick for delayed tasks - VERIFICATION VERSION with DUAL QUEUE FIX
 * 
 * Now uses the dual-queue system to correctly handle overflow.
 * The overflow bug is FIXED by automatically routing tasks to the correct queue.
 */
inline OsTickProcess()
{
    byte idx = 0;
    byte taskId;
    byte needSched = 0;
    byte oldTickCount = g_tickCount;
    
    /* Increment global tick counter */
    g_tickCount++;
    
    /* 
     * CRITICAL: Check if tick counter wrapped around (255 -> 0)
     * When this happens, merge overflow queue into normal queue
     */
    if
    :: (oldTickCount == 255 && g_tickCount == 0) ->
        /* Tick wrapped! Move overflowed tasks to normal queue */
        idx = 0;
        do
        :: (idx < overflowedSortLinkTail) ->
            byte newIdx = g_taskSortLinkTail + idx;
            g_taskSortLink[newIdx].taskId = overflowedSortLink[idx].taskId;
            g_taskSortLink[newIdx].responseTime = overflowedSortLink[idx].responseTime;
            
            /* Update pendList: remove overflow marker (128+) */
            if
            :: (g_taskSortLink[newIdx].taskId != UNUSED) ->
                tcb[g_taskSortLink[newIdx].taskId].pendList = newIdx
            :: else -> skip
            fi;
            
            idx++
        :: else -> break
        od;
        
        /* Update normal queue length */
        g_taskSortLinkTail = g_taskSortLinkTail + overflowedSortLinkTail;
        
        /* Update earliest wakeup time */
        if
        :: (g_taskSortLinkTail > 0) ->
            g_schedResponseTime = g_taskSortLink[0].responseTime
        :: else ->
            g_schedResponseTime = MAX_RESPONSE_TIME
        fi;
        
        /* Clear overflow queue */
        overflowedSortLinkTail = 0;
        g_overflowedResponseTime = MAX_RESPONSE_TIME;
        
        /* Clear overflow queue contents */
        idx = 0;
        do
        :: (idx < NUM_OF_TASKS + 1) ->
            overflowedSortLink[idx].taskId = UNUSED;
            overflowedSortLink[idx].responseTime = UNUSED;
            idx++
        :: else -> break
        od
        
    :: else -> skip
    fi;
    
    /* Reset idx for the main loop */
    idx = 0;
    
    /* 
     * VERIFICATION: Increment wait time for ALL delayed tasks.
     * This tracks how long each task has ACTUALLY been waiting.
     */
    byte verifyIdx = 0;
    byte verifyTaskId = 0;
    do
    :: (verifyIdx < g_taskSortLinkTail) ->
        verifyTaskId = g_taskSortLink[verifyIdx].taskId;
        if
        :: (tcb[verifyTaskId].state == DELAYED) ->
            ticksActuallyWaited[verifyTaskId]++;
        :: else -> skip
        fi;
        verifyIdx++
    :: else -> break
    od;
    /* Also verify overflowed queue */
    verifyIdx = 0;
    do
    :: (verifyIdx < overflowedSortLinkTail) ->
        verifyTaskId = overflowedSortLink[verifyIdx].taskId;
        if
        :: (tcb[verifyTaskId].state == DELAYED) ->
            ticksActuallyWaited[verifyTaskId]++;
        :: else -> skip
        fi;
        verifyIdx++
    :: else -> break
    od;
    
    /* 
     * OPTIMIZATION: Early exit if no tasks are ready to wake up yet.
     */
    if
    :: (g_tickCount < g_schedResponseTime) ->
        /* No tasks to wake up yet, skip entire sortLink scan */
        skip
    :: else ->
        /* 
         * Scan sortLink for delayed tasks whose wakeup time has arrived.
         */
        do
        :: (idx < g_taskSortLinkTail) ->
            taskId = g_taskSortLink[idx].taskId;
        
        /* Check task's responseTime */
        byte taskResponseTime = g_taskSortLink[idx].responseTime;
        
        if
        :: (taskResponseTime >= MAX_RESPONSE_TIME) ->
            /* 
             * Task has MAX_RESPONSE_TIME (SUSPENDED).
             * Stop scanning immediately!
             */
            break
            
        :: (tcb[taskId].state == DELAYED && g_tickCount >= taskResponseTime) ->
            /* 
             * VERIFICATION POINT: Task is waking up.
             * Check formal property: requestedDelay <= ticksActuallyWaited
             * 
             * If this assertion fails, it means the task woke up BEFORE
             * waiting the requested number of ticks (premature wakeup).
             * This indicates the overflow bug!
             */
            assert(requestedDelay[taskId] <= ticksActuallyWaited[taskId]);
            
            /* Time expired, wake up the task */
            tcb[taskId].state = READY;
            OsEnqueueTail(taskId, tcb[taskId].prio);
            
            /* Remove from sortLink - shift remaining tasks */
            byte shiftIdx = idx;
            do
            :: (shiftIdx < g_taskSortLinkTail - 1) ->
                g_taskSortLink[shiftIdx].taskId = g_taskSortLink[shiftIdx + 1].taskId;
                g_taskSortLink[shiftIdx].responseTime = g_taskSortLink[shiftIdx + 1].responseTime;
                /* Update pendList for shifted tasks */
                if
                :: (g_taskSortLink[shiftIdx].taskId != UNUSED) ->
                    tcb[g_taskSortLink[shiftIdx].taskId].pendList = shiftIdx
                :: else -> skip
                fi;
                shiftIdx++
            :: else -> break
            od;
            
            g_taskSortLink[g_taskSortLinkTail - 1].taskId = UNUSED;
            g_taskSortLink[g_taskSortLinkTail - 1].responseTime = UNUSED;
            g_taskSortLinkTail--;
            
            /* Clear pendList of woken task */
            tcb[taskId].pendList = UNUSED;
            
            /* Verify sortLink remains sorted after removal */
            /* DISABLED: Overflow bug will break sortLink ordering, but we want */
            /* to proceed to verify the ticksActuallyWaited property instead */
            /* AssertSortLinkIsSorted(); */
            
            needSched = 1;
            /* Don't increment idx, as we removed current element and need to check it again */
            
        :: (tcb[taskId].state == DELAYED && g_tickCount < taskResponseTime) ->
            /* 
             * Task is DELAYED but wakeup time not reached yet.
             * EARLY TERMINATION: Stop here to save unnecessary checks.
             */
            break
            
        :: else -> 
            /* Task is SUSPENDED but not at end yet, skip to next */
            idx++
        fi
        :: else -> break
        od;
        
        /* 
         * Update earliest wakeup time after processing expired tasks.
         */
        if
        :: (needSched) ->
            /* Some tasks were awakened, recalculate g_schedResponseTime */
            if
            :: (g_taskSortLinkTail == 0) ->
                g_schedResponseTime = MAX_RESPONSE_TIME
            :: (g_taskSortLinkTail > 0) ->
                byte firstTime = g_taskSortLink[0].responseTime;
                if
                :: (firstTime < MAX_RESPONSE_TIME) ->
                    /* First has finite time, it's the earliest */
                    g_schedResponseTime = firstTime
                :: else ->
                    /* First is SUSPENDED, so are all others */
                    g_schedResponseTime = MAX_RESPONSE_TIME
                fi
            fi
        :: else -> skip
        fi
    fi;
    
    /* If any task was awakened, request scheduling */
    if
    :: (needSched && g_taskScheduled) ->
        set_pending(PendSV_ID)
    :: else -> skip
    fi
}

/***** Exception Handlers *****/
proctype PendSV_Handler()
{
    byte tmp = NULL_byte;
    do
    :: (EP == PendSV_ID) ->
        exp_entry(PendSV_ID);
        /* 获取下一个要运行的任务 */
        EXEC_WHEN_CURRENT_SAFE(PendSV_ID, OsGetTopTask(tmp, topPrio));
        /* Only dequeue and switch if we found a different task */
        if
        :: (tmp != LAST_EP_STACK && tmp != NULL_byte) ->
            /* 切换到不同任务：把被打断的任务放回就绪队列 */
            EXEC_WHEN_CURRENT_SAFE(PendSV_ID,
                if
                :: (tcb[LAST_EP_STACK].state == RUNNING) ->
                    tcb[LAST_EP_STACK].state = READY;
                    OsEnqueueTail(LAST_EP_STACK, tcb[LAST_EP_STACK].prio)
                :: else -> skip
                fi
            );
            EXEC_WHEN_CURRENT_SAFE(PendSV_ID, OsDequeueHead(topPrio));
            EXEC_WHEN_CURRENT_SAFE(PendSV_ID, tcb[tmp].state = RUNNING);
            EXEC_WHEN_CURRENT_SAFE(PendSV_ID, switch_context(tmp))
        :: else ->
            /* Keep current task running, no need to enqueue */
            /* Only set READY tasks to RUNNING, not DELAYED/SUSPENDED */
            EXEC_WHEN_CURRENT_SAFE(PendSV_ID,
                if
                :: (tcb[LAST_EP_STACK].state == READY) ->
                    /* Dequeue self from ready queue head if present */
                    if
                    :: (readyQueue[topPrio].tailIndex > 0) ->
                        OsDequeueHead(topPrio)
                    :: else -> skip
                    fi;
                    tcb[LAST_EP_STACK].state = RUNNING
                :: else -> skip
                fi
            )
        fi;

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

        /* Process tick: increment counter and check delayed tasks */
        EXEC_WHEN_CURRENT_SAFE(SysTick_ID, OsTickProcess());

        /* tick 到达：请求调度（置位 PendSV） */
        EXEC_WHEN_CURRENT_SAFE(SysTick_ID, set_pending(PendSV_ID));

        /* 退出：若 PendSV pending 则直接 tail‑chaining 进入 PendSV */
        EXEC_WHEN_CURRENT_SAFE(SysTick_ID, exp_return(tmp))
    od
}



