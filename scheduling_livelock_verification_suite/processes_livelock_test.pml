/* ===== Process Definitions for Livelock Test ===== */
/* 
 * This file defines three tasks to demonstrate the scheduling livelock issue:
 * - prev: Task that gets switched out just before/after SysTick
 * - victask: Victim task that loses execution opportunity
 * - lucky: Task that gets scheduled after victask
 * 
 * Plus an IdleTask to prevent system deadlock.
 */

/* Override number of tasks */
#define NUM_OF_TASKS 4

/***** Task Processes *****/

/* prev: Task positioned before victask in scheduling order */
proctype PrevTask()
{
    do
    :: EXEC_WHEN_CURRENT(FIRST_TASK, 
           /* Simulate work that might get interrupted by SysTick */
           skip;
           /* Can yield or delay to trigger scheduling */
           if
           :: LOS_TaskYield()
           :: LOS_TaskDelay(1)
           :: skip
           fi
       )
    od
}

/* victask: Victim task that may lose execution opportunity */
proctype VictimTask()
{
    byte victimExecutionCount = 0;
    
    do
    :: EXEC_WHEN_CURRENT(FIRST_TASK + 1,
           /* Track execution count */
           victimExecutionCount++;
           
           /* Victim performs its work */
           skip;
           
           /* Yield to allow other tasks to run */
           if
           :: LOS_TaskYield()
           :: LOS_TaskDelay(1)
           :: skip
           fi
       )
    od
}

/* lucky: Task that gets scheduled when victim loses opportunity */
proctype LuckyTask()
{
    byte luckyExecutionCount = 0;
    
    do
    :: EXEC_WHEN_CURRENT(FIRST_TASK + 2,
           /* Track execution count */
           luckyExecutionCount++;
           
           /* Lucky performs its work */
           skip;
           
           /* Yield to allow other tasks to run */
           if
           :: LOS_TaskYield()
           :: LOS_TaskDelay(1)
           :: skip
           fi
       )
    od
}

/* IdleTask: Always ready to prevent system deadlock */
proctype IdleTask()
{
    do
    :: EXEC_WHEN_CURRENT(FIRST_TASK + 3, 
           /* Idle task just yields */
           skip
       )
    od
}

/***** Helper Macros *****/
#define RUN_ALL_EXPS() atomic { run PendSV_Handler(); run SysTick_Handler() }

/***** Initialization *****/
init
{
    byte i;

    /* Initialize ready queues */
    i = 0;
    do
    :: (i < NUM_PRIORITIES) ->
        initReadyQueue(i);
        i++
    :: else -> break
    od;
    
    /* 
     * Task priority setup:
     * - prev, victask, lucky: Same priority (2) to trigger scheduling contention
     * - IdleTask: Lowest priority
     */
    
    /* prev task */
    tcb[FIRST_TASK].prio = 2;      
    tcb[FIRST_TASK].state = READY;
    tcb[FIRST_TASK].pendList = UNUSED;
    OsEnqueueTail(FIRST_TASK, 2);
    
    /* victask (victim) */
    tcb[FIRST_TASK+1].prio = 2;    
    tcb[FIRST_TASK+1].state = READY;
    tcb[FIRST_TASK+1].pendList = UNUSED;
    OsEnqueueTail(FIRST_TASK+1, 2);
    
    /* lucky task */
    tcb[FIRST_TASK+2].prio = 2;
    tcb[FIRST_TASK+2].state = READY;
    tcb[FIRST_TASK+2].pendList = UNUSED;
    OsEnqueueTail(FIRST_TASK+2, 2);
    
    /* Idle task at lowest priority */
    tcb[FIRST_TASK+3].prio = NUM_PRIORITIES - 1;
    tcb[FIRST_TASK+3].state = READY;
    tcb[FIRST_TASK+3].pendList = UNUSED;
    OsEnqueueTail(FIRST_TASK+3, NUM_PRIORITIES - 1);

    /* Pick first running task */
    EP = FIRST_TASK;
    topPrio = 2;
    OsDequeueHead(topPrio);
    tcb[EP].state = RUNNING;

    /* Start exception handlers and tasks */
    RUN_ALL_EXPS();
    run PrevTask();
    run VictimTask();
    run LuckyTask();
    run IdleTask()
}

