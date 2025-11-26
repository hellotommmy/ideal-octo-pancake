/* ===== Processes for Delay Overflow Test ===== */
/* 
 * This file contains test processes specifically designed to trigger
 * the overflow bug in LOS_TaskDelay.
 * 
 * TEST SCENARIO:
 * - Set g_tickCount to a value near 255 (e.g., 250)
 * - Call LOS_TaskDelay(10)
 * - Expected wakeup: tick 260
 * - Actual wakeup due to overflow: tick (250+10)%256 = 4
 * - Result: Task wakes up after only 4 ticks instead of 10
 * 
 * The assertion in bad_scheduler.pml should catch this:
 *   assert(requestedDelay[taskId] <= ticksActuallyWaited[taskId])
 * When overflow occurs: requestedDelay=10, ticksActuallyWaited=4
 * Assertion fails, demonstrating the bug!
 */

/* Override NUM_OF_TASKS to include idle task */
#define NUM_OF_TASKS_OVERFLOW 3

/***** Task Processes *****/
proctype Process1()
{
    do
    :: EXEC_WHEN_CURRENT(FIRST_TASK, 
           /* Normal delay operation */
           LOS_TaskDelay(5)
       )
    od
}

proctype Process2()
{
    do
    :: EXEC_WHEN_CURRENT(FIRST_TASK + 1,
           /* This should trigger or demonstrate the overflow scenario */
           /* When g_tickCount approaches 255, this will cause overflow */
           LOS_TaskDelay(10)
       )
    od
}

proctype IdleTask()
{
    do
    :: EXEC_WHEN_CURRENT(FIRST_TASK + 2, 
           /* Idle task: always ready to run, just delays briefly */
        //    LOS_TaskDelay(1)
        printf("Idle task running\n")
       )
    od
}

/***** Helper Macros *****/
#define RUN_ALL_EXPS() atomic { run PendSV_Handler(); run SysTick_Handler() }
/* Start all task processes */
#define RUN_ALL_PROCESSES() atomic { run Process2(); run Process1(); run IdleTask() }

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
    
    /* 
     * CRITICAL: Non-deterministically select g_tickCount initial value.
     * SPIN will explore all 256 possible initial values and automatically find
     * the ones that trigger the overflow bug.
     * 
     * Note: Using full range (0..255) does NOT increase state vector size,
     * only increases search depth as SPIN explores more initial conditions.
     * 
     * Example discovered scenario:
     * - g_tickCount = 250 (found by SPIN)
     * - Task delays by 10: wakeup time = (250+10)%256 = 4 (BUG!)
     * - Since g_tickCount (250) >= wakeupTime (4), task wakes immediately!
     */
    byte initial_tick;
    select(initial_tick : 0 .. 255);  /* Full range - SPIN finds bug-triggering values */
    g_tickCount = initial_tick;
    
    /* Initialize verification arrays (including idle task) */
    i = 0;
    do
    :: (i <= FIRST_TASK + 2) ->
        ticksActuallyWaited[i] = 0;
        requestedDelay[i] = 0;
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
    
    /* Idle task at lowest priority */
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
    RUN_ALL_PROCESSES()
}


