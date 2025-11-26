/* ===== Simplified Process Definitions for Livelock Test ===== */
/* 
 * Simplified version with reduced non-determinism for faster verification
 */

/* Override number of tasks */
#define NUM_OF_TASKS 4

/***** Task Processes *****/

/* prev: Task positioned before victask in scheduling order */
proctype PrevTask()
{
    byte count = 0;
    do
    :: EXEC_WHEN_CURRENT(FIRST_TASK, 
           count++;
           if
           :: (count % 3 == 0) -> LOS_TaskYield()
           :: else -> skip
           fi
       )
    od
}

/* victask: Victim task that may lose execution opportunity */
proctype VictimTask()
{
    byte count = 0;
    
    do
    :: EXEC_WHEN_CURRENT(FIRST_TASK + 1,
           count++;
           if
           :: (count % 3 == 0) -> LOS_TaskYield()
           :: else -> skip
           fi
       )
    od
}

/* lucky: Task that gets scheduled when victim loses opportunity */
proctype LuckyTask()
{
    byte count = 0;
    
    do
    :: EXEC_WHEN_CURRENT(FIRST_TASK + 2,
           count++;
           if
           :: (count % 3 == 0) -> LOS_TaskYield()
           :: else -> skip
           fi
       )
    od
}

/* IdleTask: Always ready to prevent system deadlock */
proctype IdleTask()
{
    do
    :: EXEC_WHEN_CURRENT(FIRST_TASK + 3, skip)
    od
}

/***** Helper Macros *****/
#define RUN_ALL_EXPS() atomic { run PendSV_Handler(); run SysTick_Handler() }
/* Start all task processes */
#define RUN_ALL_PROCESSES() atomic { run PrevTask(); run VictimTask(); run LuckyTask(); run IdleTask() }

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
    
    /* Task priority setup - all same priority */
    tcb[FIRST_TASK].prio = 2;      
    tcb[FIRST_TASK].state = READY;
    tcb[FIRST_TASK].pendList = UNUSED;
    OsEnqueueTail(FIRST_TASK, 2);
    
    tcb[FIRST_TASK+1].prio = 2;    
    tcb[FIRST_TASK+1].state = READY;
    tcb[FIRST_TASK+1].pendList = UNUSED;
    OsEnqueueTail(FIRST_TASK+1, 2);
    
    tcb[FIRST_TASK+2].prio = 2;
    tcb[FIRST_TASK+2].state = READY;
    tcb[FIRST_TASK+2].pendList = UNUSED;
    OsEnqueueTail(FIRST_TASK+2, 2);
    
    tcb[FIRST_TASK+3].prio = NUM_PRIORITIES - 1;
    tcb[FIRST_TASK+3].state = READY;
    tcb[FIRST_TASK+3].pendList = UNUSED;
    OsEnqueueTail(FIRST_TASK+3, NUM_PRIORITIES - 1);

    EP = FIRST_TASK;
    topPrio = 2;
    OsDequeueHead(topPrio);
    tcb[EP].state = RUNNING;

    RUN_ALL_EXPS();
    RUN_ALL_PROCESSES()
}

