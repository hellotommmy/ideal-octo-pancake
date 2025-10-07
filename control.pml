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
inline select_highest_priority() {
    /* Only consider READY or RUNNING tasks */
    if
    :: (tcb[1].state == READY || tcb[1].state == RUNNING) && 
       (tcb[2].state != READY && tcb[2].state != RUNNING) ->
        EP = 1;
    :: (tcb[2].state == READY || tcb[2].state == RUNNING) && 
       (tcb[1].state != READY && tcb[1].state != RUNNING) ->
        EP = 2;
    :: (tcb[1].state == READY || tcb[1].state == RUNNING) && 
       (tcb[2].state == READY || tcb[2].state == RUNNING) ->
        if
        :: (tcb[1].prio < tcb[2].prio) -> EP = 1;
        :: (tcb[1].prio > tcb[2].prio) -> EP = 2;
        :: (tcb[1].prio == tcb[2].prio) ->
            if
            :: EP = 1;
            :: EP = 2;
            fi
        fi
    fi
}

/* Non-deterministic interrupt macro */
#define NONDET_INTERRUPT \
    if \
    :: skip; \
    :: tcb[1].prio = 0; select_highest_priority(); \
    :: tcb[1].prio = 15; select_highest_priority(); \
    :: tcb[1].prio = 31; select_highest_priority(); \
    :: tcb[2].prio = 0; select_highest_priority(); \
    :: tcb[2].prio = 15; select_highest_priority(); \
    :: tcb[2].prio = 31; select_highest_priority(); \
    :: tcb[1].state = READY; select_highest_priority(); \
    :: tcb[1].state = SUSPENDED; select_highest_priority(); \
    :: tcb[2].state = READY; select_highest_priority(); \
    :: tcb[2].state = SUSPENDED; select_highest_priority(); \
    fi

/* Execute statement when current process has permission */
#define EXEC_WHEN_CURRENT(id, stmt) \
    (EP == id) -> stmt; NONDET_INTERRUPT

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
    tcb[1].prio = 10;        /* Initial priority for Process1 */
    tcb[1].state = READY;    /* Process1 starts in READY state */
    
    tcb[2].prio = 20;        /* Initial priority for Process2 */
    tcb[2].state = READY;    /* Process2 starts in READY state */
    
    select_highest_priority();  /* Set initial EP based on priorities */
    run Process1();
    run Process2()
}
