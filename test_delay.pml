/* ===== Test for LOS_TaskDelay and LOS_TaskYield ===== */

/* Copy necessary definitions from c2res.pml */
#define NULL_byte         255
#define PendSV_ID         0
#define SysTick_ID        1
#define FIRST_TASK        2
#define NUM_OF_TASKS      2
#define LAST_TASK         (FIRST_TASK + NUM_OF_TASKS - 1)
#define LIST_SIZE         5
#define NUM_PRIORITIES    4
#define UNUSED            255

/* Task states */
#define PENDED     0
#define READY      1
#define DELAYED    2
#define SUSPENDED  3
#define RUNNING    4

/* ... (include all other necessary definitions from c2res.pml) ... */

/***** Test Scenarios *****/

/* Test 1: Simple Delay */
proctype TestDelaySimple()
{
    do
    :: EXEC_WHEN_CURRENT(FIRST_TASK,
        printf("P1: Starting at tick %d\n", g_tickCount);
        LOS_TaskDelay(3);  /* Delay 3 ticks */
    )
    :: EXEC_WHEN_CURRENT(FIRST_TASK,
        printf("P1: Resumed at tick %d (should be ~3 ticks later)\n", g_tickCount);
    )
    od
}

/* Test 2: Yield */
proctype TestYield()
{
    byte counter = 0;
    do
    :: EXEC_WHEN_CURRENT(FIRST_TASK,
        counter++;
        printf("P1: Iteration %d\n", counter);
        LOS_TaskYield();  /* Yield to P2 */
    )
    od
}

proctype TestYieldPartner()
{
    byte counter = 0;
    do
    :: EXEC_WHEN_CURRENT(FIRST_TASK + 1,
        counter++;
        printf("P2: Iteration %d\n", counter);
        LOS_TaskYield();  /* Yield to P1 */
    )
    od
}

/* Test 3: Periodic Task */
proctype PeriodicTask()
{
    do
    :: EXEC_WHEN_CURRENT(FIRST_TASK,
        printf("Periodic: tick=%d\n", g_tickCount);
        LOS_TaskDelay(5);  /* Run every 5 ticks */
    )
    od
}

/* Test 4: Mixed operations */
proctype MixedTest1()
{
    do
    :: EXEC_WHEN_CURRENT(FIRST_TASK,
        printf("P1: Working at tick %d\n", g_tickCount);
    )
    :: EXEC_WHEN_CURRENT(FIRST_TASK,
        printf("P1: Yielding\n");
        LOS_TaskYield();
    )
    :: EXEC_WHEN_CURRENT(FIRST_TASK,
        printf("P1: Delaying 2 ticks\n");
        LOS_TaskDelay(2);
    )
    od
}

proctype MixedTest2()
{
    do
    :: EXEC_WHEN_CURRENT(FIRST_TASK + 1,
        printf("P2: Working at tick %d\n", g_tickCount);
    )
    :: EXEC_WHEN_CURRENT(FIRST_TASK + 1,
        printf("P2: Delaying 3 ticks\n");
        LOS_TaskDelay(3);
    )
    od
}

/***** LTL Properties for Testing *****/

/* Property 1: Delayed tasks eventually become ready */
ltl delayed_become_ready {
    [] ((tcb[FIRST_TASK].state == DELAYED) -> <> (tcb[FIRST_TASK].state == READY))
}

/* Property 2: Tick counter increases */
ltl tick_increases {
    [] (g_tickCount < 255)  /* Should not overflow in test */
}

/* Property 3: System makes progress */
ltl system_progress {
    []<> (EP >= FIRST_TASK)  /* Eventually return to user tasks */
}

/* Property 4: Delayed tasks not in ready queue */
ltl delayed_not_ready {
    [] ((tcb[FIRST_TASK].state == DELAYED) -> 
        (readyQueue[tcb[FIRST_TASK].prio].tasks[0] != FIRST_TASK))
}

/* Property 5: After delay, task returns */
ltl delay_and_return {
    [] ((tcb[FIRST_TASK].state == DELAYED && 
         g_taskSortLink[tcb[FIRST_TASK].pendList].responseTime == 1) ->
        <> (tcb[FIRST_TASK].state == READY))
}

