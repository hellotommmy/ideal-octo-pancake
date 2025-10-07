/* Minimal SPIN/Promela program with EP control variable */

/* Task state definitions */
#define PENDED    0
#define READY     1
#define DELAYED   2
#define SUSPENDED 3
#define RUNNING   4

/* Task control block structure */
typedef TCB {
    byte prio;   /* Priority: lower value = higher priority (0-31 range) */
    byte state;  /* Task state: PENDED/READY/DELAYED/SUSPENDED/RUNNING */
}

byte EP = 1;  /* Execution Permission: 1 or 2 */
TCB tcb[3];   /* Task control blocks: tcb[1] for Process1, tcb[2] for Process2 */

/* Select highest priority process and update EP */
inline OsGetTopTask() {
    byte i;
    byte highest_prio = 255;  /* Start with lowest possible priority */
    byte top_task = 0;        /* 0 means no task found */
    
    /* Loop through all tasks to find highest priority READY/RUNNING task */
    i = 1;
    do
    :: (i <= 2) ->
        if
        :: (tcb[i].state == READY || tcb[i].state == RUNNING) ->
            if
            :: (tcb[i].prio < highest_prio) ->
                highest_prio = tcb[i].prio;
                top_task = i;
            :: (tcb[i].prio == highest_prio) ->
                /* Same priority: non-deterministically choose */
                if
                :: top_task = i;
                :: skip;  /* Keep current top_task */
                fi
            :: else -> skip;
            fi
        :: else -> skip;
        fi;
        i++;
    :: (i > 2) -> break;
    od;
    
    /* Update EP to the highest priority task found */
    EP = top_task;
}

/* Non-deterministic interrupt macro */
#define NONDET_INTERRUPT \
    if \
    :: skip; \
    :: OsGetTopTask(); \
    fi

/* Execute statement when current process has permission */
#define EXEC_WHEN_CURRENT(id, stmt) \
    atomic { (EP == id) -> stmt; NONDET_INTERRUPT }

proctype Process1() {
    do
    :: EXEC_WHEN_CURRENT(1, printf("Process 1 is running\n"));
    :: EXEC_WHEN_CURRENT(1, assert(EP == 1));
    :: EXEC_WHEN_CURRENT(1, EP = 2)
    od
}

proctype Process2() {
    do
    :: EXEC_WHEN_CURRENT(2, printf("Process 2 is running\n"));
    :: EXEC_WHEN_CURRENT(2, EP = 1)
    od
}

init {
    /* Initialize Task Control Blocks */
    tcb[1].prio = 20;        /* Initial priority for Process1 */
    tcb[1].state = READY;    /* Process1 starts in READY state */
    
    tcb[2].prio = 20;        /* Initial priority for Process2 */
    tcb[2].state = READY;    /* Process2 starts in READY state */
    
    OsGetTopTask();  /* Set initial EP based on priorities */
    run Process1();
    run Process2()
}
