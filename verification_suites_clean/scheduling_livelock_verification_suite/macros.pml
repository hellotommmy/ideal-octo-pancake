/* ===== Macros and Constants ===== */

#define NULL_byte         255

/***** IDs *****/
#define PendSV_ID         0
#define SysTick_ID        1
#define FIRST_TASK        2

/***** Config: tasks & ready queues *****/
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

/* Task shortcuts */
#define P1  FIRST_TASK
#define P2  (FIRST_TASK+1)

/***** BASEPRI (priority mask) *****/
#define NON_IMPLEMENTED_LOW_BITS(val) (val >> 4)
#define THE_STATIC_PRIORITY 15
#define GET_PRIO_EXP(id)    THE_STATIC_PRIORITY
#define BASEPRI_MASK(id)    ((BASEPRI == 0) || (GET_PRIO_EXP(id) < BASEPRI))

/***** Pending bits for exceptions *****/
#define GET_PENDING(id)     ((pending_exp >> id) & 1)
#define HAS_PENDING_EXPS    (pending_exp > 0)
#define SYSTICK_PENDING   ((((pending_exp) >> SysTick_ID) & 1) == 1)
#define PENDSV_PENDING    ((((pending_exp) >> PendSV_ID)  & 1) == 1)
#define IN_EXC            (EP < FIRST_TASK)
#define IN_USER           (EP >= FIRST_TASK)

/* Task running checks */
#define RUNS1   (EP == FIRST_TASK)
#define RUNS2   (EP == FIRST_TASK + 1)

/***** Interrupt take conditions & helpers *****/
#define INT_TAKE \
    (((GET_PENDING(PendSV_ID) && BASEPRI_MASK(PendSV_ID)) || \
      (GET_PENDING(SysTick_ID) && BASEPRI_MASK(SysTick_ID))) && \
     EP >= FIRST_TASK)

/* "take" the highest-numbered pending if both (PendSV first per AN321 tie-break) */
#define D_TAKEN_INT() \
    if \
    :: INT_TAKE -> \
        if \
        :: (EP >= FIRST_TASK) -> chain_tick_used = 1 /* 开启一条新的异常链 */ \
        :: else -> skip \
        fi; \
        push(EP); \
        EP = (GET_PENDING(PendSV_ID) -> PendSV_ID : SysTick_ID) \
    :: else -> skip \
    fi

/***** "Hardware timer" arrival (raising SysTick pending) *****/
#define TIMER_INT_IRQ       set_pending(SysTick_ID)

/* ND tick while tasks are executing: may or may not raise SysTick */
#define ND_TIMER_INT_TASK() \
    if \
    :: true -> TIMER_INT_IRQ; \
    :: skip \
    fi

/***** AWAIT macros *****/
#define EXEC_WHEN_CURRENT(id, stmt) \
    atomic { (id == EP) -> stmt; ND_TIMER_INT_TASK(); D_TAKEN_INT() }

#define EXEC_WHEN_CURRENT_SAFE(id, stmt) \
    atomic { (id == EP) -> stmt; INT_SAFE() }

/***** Single-slot exception stack *****/
#define LAST_EP_STACK       EP_Stack

/***** Other constants *****/
#define MAX_RESPONSE_TIME  255

