/* ===== Task Scheduler and Exception Handlers ===== */

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
    /* Add to sortLink with responseTime = ticks */
    assert(g_taskSortLinkTail < NUM_OF_TASKS + 1);
    g_taskSortLink[g_taskSortLinkTail].taskId = taskID;
    g_taskSortLink[g_taskSortLinkTail].responseTime = ticks;
    tcb[taskID].pendList = g_taskSortLinkTail;
    g_taskSortLinkTail++;
}

inline LOS_TaskDelay(ticks)
{
    byte intSave;
    byte needSched = 0;
    byte currentTask = EP;
    
    LOS_IntLock(intSave);
    
    if
    :: (ticks == 0) ->
        /* Delay 0 means yield CPU */
        LOS_TaskYield();
    :: (ticks > 0) ->
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

/* Process tick for delayed tasks */
inline OsTickProcess()
{
    byte idx = 0;
    byte taskId;
    byte needSched = 0;
    
    /* Increment global tick counter */
    g_tickCount++;
    
    /* Scan sortLink for delayed tasks */
    do
    :: (idx < g_taskSortLinkTail) ->
        taskId = g_taskSortLink[idx].taskId;
        if
        :: (tcb[taskId].state == DELAYED && g_taskSortLink[idx].responseTime > 0) ->
            /* Decrement responseTime */
            g_taskSortLink[idx].responseTime--;
            
            if
            :: (g_taskSortLink[idx].responseTime == 0) ->
                /* Time expired, wake up the task */
                tcb[taskId].state = READY;
                OsEnqueueTail(taskId, tcb[taskId].prio);
                
                /* Remove from sortLink - need to shift remaining tasks */
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
                
                needSched = 1;
                /* Don't increment idx, as we removed current element */
            :: else -> idx++
            fi
        :: else -> idx++
        fi
    :: else -> break
    od;
    
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
        /* 把被打断的线程放回就绪队列（轮转），并选择下一个 */
        /* 只有RUNNING状态的任务才能被放回就绪队列，避免覆盖SUSPENDED等状态 */
        EXEC_WHEN_CURRENT_SAFE(PendSV_ID,
            if
            :: (tcb[LAST_EP_STACK].state == RUNNING) ->
                tcb[LAST_EP_STACK].state = READY;
                OsEnqueueTail(LAST_EP_STACK, tcb[LAST_EP_STACK].prio)
            :: else -> skip
            fi
        );
        EXEC_WHEN_CURRENT_SAFE(PendSV_ID, OsGetTopTask(tmp, topPrio));
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

        /* Process tick: increment counter and check delayed tasks */
        EXEC_WHEN_CURRENT_SAFE(SysTick_ID, OsTickProcess());

        /* tick 到达：请求调度（置位 PendSV） */
        EXEC_WHEN_CURRENT_SAFE(SysTick_ID, set_pending(PendSV_ID));

        /* 退出：若 PendSV pending 则直接 tail‑chaining 进入 PendSV */
        EXEC_WHEN_CURRENT_SAFE(SysTick_ID, exp_return(tmp))
    od
}

