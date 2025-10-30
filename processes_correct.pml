/* ===== Processes and Initialization (with Idle Task) ===== */

/* Override NUM_OF_TASKS to include Idle task */
#ifndef NUM_OF_TASKS_CORRECT
#define NUM_OF_TASKS_CORRECT 3
#endif

/***** Task Processes *****/
proctype Process1()
{
    do
    :: EXEC_WHEN_CURRENT(FIRST_TASK, printf("Process1 running\\n"))
       EXEC_WHEN_CURRENT(FIRST_TASK, assert(EP == FIRST_TASK))
       EXEC_WHEN_CURRENT(FIRST_TASK, LOS_TaskDelay(5));
    od
}

proctype Process2()
{
    do
    :: EXEC_WHEN_CURRENT(FIRST_TASK + 1, printf("P2 running\n"))
       EXEC_WHEN_CURRENT(FIRST_TASK + 1, LOS_TaskSuspend(FIRST_TASK))
       EXEC_WHEN_CURRENT(FIRST_TASK + 1, LOS_TaskResume(FIRST_TASK))
       EXEC_WHEN_CURRENT(FIRST_TASK + 1, assert(EP == FIRST_TASK + 1))
       EXEC_WHEN_CURRENT(FIRST_TASK + 1, LOS_TaskDelay(0))
    od
}

/* Idle task: always ready, does trivial work in infinite loop */
proctype IdleTask()
{
    do
    :: EXEC_WHEN_CURRENT(FIRST_TASK + 2, 
           /* Do something trivial - just increment a counter or wait */
           skip;
           LOS_TaskDelay(1))
    od
}

/***** Helper Macros *****/
#define RUN_ALL_EXPS() atomic { run PendSV_Handler(); run SysTick_Handler() }

/***** Initialization *****/
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
    tcb[FIRST_TASK].prio = 2;      
    tcb[FIRST_TASK].state = READY;
    tcb[FIRST_TASK].pendList = UNUSED;
    OsEnqueueTail(FIRST_TASK, 2);
    
    tcb[FIRST_TASK+1].prio = 2;    
    tcb[FIRST_TASK+1].state = READY;
    tcb[FIRST_TASK+1].pendList = UNUSED;
    OsEnqueueTail(FIRST_TASK+1, 2);
    
    /* Idle task at lowest priority (highest priority number) */
    tcb[FIRST_TASK+2].prio = NUM_PRIORITIES - 1;
    tcb[FIRST_TASK+2].state = READY;
    tcb[FIRST_TASK+2].pendList = UNUSED;
    OsEnqueueTail(FIRST_TASK+2, NUM_PRIORITIES - 1);

    /* pick first running task */
    EP = 2;
    topPrio = 2;
    OsDequeueHead(topPrio);
    tcb[EP].state = RUNNING;

    /* start exception handlers and tasks */
    RUN_ALL_EXPS();
    run Process2();
    run Process1();
    run IdleTask()
}

