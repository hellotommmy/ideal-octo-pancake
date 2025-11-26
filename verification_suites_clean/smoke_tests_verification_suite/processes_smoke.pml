/* Smoke Test Processes - Simple two-task scenario like c2.pml */

proctype Process1()
{
    do
    :: EXEC_WHEN_CURRENT(FIRST_TASK, printf("Process1 running\n"))
    od
}

proctype Process2()
{
    do
    :: EXEC_WHEN_CURRENT(FIRST_TASK+1, printf("Process2 running\n"))
    od
}

#define RUN_ALL_EXPS() atomic { run PendSV_Handler(); run SysTick_Handler() }
/* Start all task processes */
#define RUN_ALL_PROCESSES() atomic { run Process1(); run Process2() }

init
{
    byte i = 0;
    do
    :: (i < NUM_PRIORITIES) ->
        initReadyQueue(i);
        i++
    :: else -> break
    od;
    
    tcb[FIRST_TASK].prio = 2;
    tcb[FIRST_TASK].state = READY;
    OsEnqueueTail(FIRST_TASK, 2);
    
    tcb[FIRST_TASK+1].prio = 2;
    tcb[FIRST_TASK+1].state = READY;
    OsEnqueueTail(FIRST_TASK+1, 2);

    EP = FIRST_TASK;
    topPrio = 2;
    OsDequeueHead(topPrio);
    tcb[EP].state = RUNNING;

    RUN_ALL_EXPS();
    RUN_ALL_PROCESSES()
}

