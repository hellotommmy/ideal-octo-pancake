/* Minimal SPIN/Promela program with EP control variable */

/* Configuration */
#define NUM_OF_TASKS 2
#define LIST_SIZE 5      /* Static array size for simulating linked list */
#define NUM_PRIORITIES 4 /* Number of priority levels (0-31) */ // you may change to 32 for full liteos-m simulationi, however 4 suffices for verification purposes
#define UNUSED 255       /* Mark for unused list nodes */

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

/* Ready list structure - simulates linked list with static array */
typedef ReadyList {
    byte tasks[LIST_SIZE];  /* Task IDs in the list */
    byte tailIndex;         /* Head index: tailIndex points to head, tailIndex+1 is first element */
}

byte EP = 1;  /* Execution Permission: 1 to NUM_OF_TASKS */
TCB tcb[NUM_OF_TASKS + 1];   /* Task control blocks: tcb[1..NUM_OF_TASKS] */
ReadyList readyQueue[NUM_PRIORITIES];  /* 4 priority queues (0-31) */

/* Initialize a ready queue */
inline initReadyQueue(prioLevel) {
    byte idx = 0;
    do
    :: (idx < LIST_SIZE) ->
        readyQueue[prioLevel].tasks[idx] = UNUSED;
        idx++;
    :: (idx >= LIST_SIZE) -> break;
    od;
    readyQueue[prioLevel].tailIndex = 0;  /* Empty list: tailIndex points to head */
}

/* Add task to ready queue at given priority */
//向就绪优先级队列尾部插入任务对应id
//tailIndex用于表示第一个空位
inline OsEnqueueTail(taskId, prioLevel) {
    /* tailIndex 指向第一个空位，直接插入 */
    if
    :: (readyQueue[prioLevel].tailIndex < LIST_SIZE) ->
        readyQueue[prioLevel].tasks[readyQueue[prioLevel].tailIndex] = taskId;
        readyQueue[prioLevel].tailIndex++;
    :: else -> skip;  /* 队列已满，跳过 */
    fi
}

/* Remove task from tail of ready queue at given priority */
//从队尾删除元素（删除 tailIndex-1 位置的元素）
inline OsDequeueTail(prioLevel) {
    /* 只需删除队尾元素 */
    if
    :: (readyQueue[prioLevel].tailIndex > 0) ->
        /* 清空队尾位置并更新tailIndex */
        readyQueue[prioLevel].tasks[readyQueue[prioLevel].tailIndex - 1] = UNUSED;
        readyQueue[prioLevel].tailIndex--;
    :: else -> skip;  /* 队列为空，跳过 */
    fi
}
inline OsEnqueueHead(taskId, prioLevel){
    byte idx = readyQueue[prioLevel].tailIndex;
    
    /* 将所有元素后移一格，从尾到头 */
    do
    :: (idx > 0) ->
        readyQueue[prioLevel].tasks[idx] = readyQueue[prioLevel].tasks[idx - 1];
        idx--;
    :: (idx <= 0) -> break;
    od;
    
    /* 在头部（位置0）插入新任务 */
    readyQueue[prioLevel].tasks[0] = taskId;
    readyQueue[prioLevel].tailIndex++;
}

inline OsDequeueHead(prioLevel){
    byte idx = 0;
    
    /* 将所有元素前移一格 */
    do
    :: (idx < readyQueue[prioLevel].tailIndex - 1) ->
        readyQueue[prioLevel].tasks[idx] = readyQueue[prioLevel].tasks[idx + 1];
        idx++;
    :: (idx >= readyQueue[prioLevel].tailIndex - 1) -> break;
    od;
    
    /* 清空最后一个位置并更新tailIndex */
    if
    :: (readyQueue[prioLevel].tailIndex > 0) ->
        readyQueue[prioLevel].tasks[readyQueue[prioLevel].tailIndex - 1] = UNUSED;
        readyQueue[prioLevel].tailIndex--;
    :: else -> skip;
    fi
}
//0代表队列头部，tailIndex代表队列尾部（不在队列里）
/*  图例    
readyQueue[prioLevel].tasks:
            数组下标        0   1   2   3   4
            数组元素        1   0   255 255 255
                                    ^
                                    |
                                    |
readyQueue[prioLevel].tailIndex:    2
*/
/* Select highest priority process and update EP */
inline OsGetTopTask(task_return_var, task_return_prio) {
    byte prio = 0;
    byte top_task = 0;
    byte found = 0;
    
    /* Loop through priorities from highest (0) to lowest (31) */
    do
    :: (prio < NUM_PRIORITIES && !found) ->
        if
        :: (readyQueue[prio].tailIndex > 0) -> // 当就绪列表不为空，即第一个空闲位置在0之后
            /* Found a non-empty queue, get first task */
            top_task = readyQueue[prio].tasks[0]; //取列表头元素，即位置在0的元素
            /* 注意：这里只是读取，不从队列中移除任务 */
            /* 任务会一直留在就绪队列中，直到状态改变（如被挂起） */
            found = 1;
        :: else -> prio++;
        fi
    :: (prio >= NUM_PRIORITIES || found) -> break;
    od;
    
    /* Update EP to the highest priority task found */
    task_return_var = top_task;
    task_return_prio = prio;
}

/* Non-deterministic interrupt macro */
#define NONDET_INTERRUPT \
    if \
    :: skip; \
    :: OsGetTopTask(EP, prio); \
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

/* LTL properties for starvation freedom */
/* 
 * Starvation-free: If a task is READY, it will eventually get executed
 * Formula: [] (READY -> <> RUNNING)
 * In our model: [] (tcb[i].state == READY -> <> (EP == i))
 */
ltl starvation_free_task1 { 
    [] ((tcb[1].state == READY) -> <> (EP == 1)) 
}

ltl starvation_free_task2 { 
    [] ((tcb[2].state == READY) -> <> (EP == 2)) 
}

/* Combined property: all tasks are starvation-free */
ltl all_starvation_free {
    ([] ((tcb[1].state == READY) -> <> (EP == 1))) &&
    ([] ((tcb[2].state == READY) -> <> (EP == 2)))
}

init {
    byte i;
    byte prio;
    /* Initialize all ready queues */
    i = 0;
    do
    :: (i < NUM_PRIORITIES) ->
        initReadyQueue(i);
        i++;
    :: (i >= NUM_PRIORITIES) -> break;
    od;
    
    /* Initialize Task Control Blocks */
    tcb[1].prio = 2;        /* Initial priority for Process1 */
    tcb[1].state = READY;    /* Process1 starts in READY state */
    OsEnqueueTail(1, tcb[1].prio);  /* Add to ready queue */
    
    tcb[2].prio = 2;        /* Initial priority for Process2 */
    tcb[2].state = READY;    /* Process2 starts in READY state */
    OsEnqueueTail(2, tcb[2].prio);  /* Add to ready queue */
    
    OsGetTopTask(EP, prio);  /* Set initial EP based on priorities */
    run Process1();
    run Process2()
}
