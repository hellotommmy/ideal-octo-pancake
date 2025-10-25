/* Execute statement when current process has permission */
byte int_ctrl_reg = 0;
#define INT_SAFE (int_ctrl_reg > 0)

#define EXEC_WHEN_CURRENT(id, stmt) \
    atomic { (EP == id) -> stmt; NONDET_INTERRUPT }
#define EXEC_WHEN_CURRENT_SAFE(id, stmt) \
    atomic { (id == EP) -> stmt; INT_SAFE }

/* Configuration */
#define NUM_OF_TASKS 4
#define LIST_SIZE 8      /* Static array size for simulating linked list */
#define NUM_PRIORITIES 4 /* Number of priority levels (0-31) */ // you may change to 32 for full liteos-m simulationi, however 4 suffices for verification purposes
#define UNUSED 255       /* Mark for unused list nodes */
#define MAX_DELAY_TICKS 10  /* Maximum delay ticks for verification */

/* Task state definitions */
#define PENDED    0
#define READY     1
#define DELAYED   2
#define SUSPENDED 3
#define RUNNING   4

byte topPrio;
byte tickCount = 0;  /* Global tick counter */

/* Task control block structure */
typedef TCB {
    byte prio;          /* Priority: lower value = higher priority (0-31 range) */
    byte state;         /* Task state: PENDED/READY/DELAYED/SUSPENDED/RUNNING */
    byte responseTime;  /* Response time for sortLink ordering */
    byte wakeupTime;    /* Wakeup time for delayed tasks (in ticks) */
    byte delayTicks;    /* Remaining delay ticks */
}

/* Ready list structure - simulates linked list with static array */
typedef ReadyList {
    byte tasks[LIST_SIZE];  /* Task IDs in the list */
    byte tailIndex;         /* Head index: tailIndex points to head, tailIndex+1 is first element */
}

/* SortLink structure - for suspended tasks sorted by responseTime */
typedef SortLink {
    byte tasks[LIST_SIZE];  /* Task IDs in the list, sorted by responseTime */
    byte count;             /* Number of tasks in sortLink */
}

byte EP = 1;  /* Execution Permission: 1 to NUM_OF_TASKS */
TCB tcb[NUM_OF_TASKS + 1];   /* Task control blocks: tcb[1..NUM_OF_TASKS] */
ReadyList readyQueue[NUM_PRIORITIES];  /* 4 priority queues (0-31) */
SortLink sortLink;  /* Sorted list for suspended/delayed tasks */

/* Initialize sortLink */
inline initSortLink() {
    byte init_sl_idx;
    
    init_sl_idx = 0;
    do
    :: (init_sl_idx < LIST_SIZE) ->
        sortLink.tasks[init_sl_idx] = UNUSED;
        init_sl_idx++;
    :: (init_sl_idx >= LIST_SIZE) -> break;
    od;
    sortLink.count = 0;
}

/* Insert task into sortLink - simplified version, always insert at tail */
inline OsAdd2SortLink(taskId) {
    if
    :: (sortLink.count < LIST_SIZE) ->
        /* Simplified: just add to end of list */
        sortLink.tasks[sortLink.count] = taskId;
        sortLink.count++;
    :: else -> assert(0);  /* sortLink full, error */
    fi
}

/* Remove task from sortLink by task ID */
inline OsDeleteSortLink(taskId) {
    byte removePos;
    byte found;
    byte shiftIdx;
    
    removePos = 0;
    found = 0;
    
    /* Find task position */
    do
    :: (removePos < sortLink.count && !found) ->
        if
        :: (sortLink.tasks[removePos] == taskId) ->
            found = 1;
        :: else ->
            removePos++;
        fi
    :: else -> break;
    od;
    
    if
    :: (found == 1) ->
        /* Shift elements to fill the gap */
        shiftIdx = removePos;
        do
        :: (shiftIdx < sortLink.count - 1) ->
            sortLink.tasks[shiftIdx] = sortLink.tasks[shiftIdx + 1];
            shiftIdx++;
        :: (shiftIdx >= sortLink.count - 1) -> break;
        od;
        
        /* Clear last position */
        sortLink.tasks[sortLink.count - 1] = UNUSED;
        sortLink.count--;
    :: else -> skip;  /* Task not found */
    fi
}

/* Initialize a ready queue */
inline initReadyQueue(prioLevel) {
    byte init_rq_idx;
    
    init_rq_idx = 0;
    do
    :: (init_rq_idx < LIST_SIZE) ->
        readyQueue[prioLevel].tasks[init_rq_idx] = UNUSED;
        init_rq_idx++;
    :: (init_rq_idx >= LIST_SIZE) -> break;
    od;
    readyQueue[prioLevel].tailIndex = 0;  /* Empty list: tailIndex points to head */
}

/* Add task to ready queue at given priority */
//向就绪优先级队列尾部插入任务对应id
//tailIndex用于表示第一个空位
inline OsEnqueueTail(taskId, prioLevel) {
    /* tailIndex 指向第一个空位，直接插入 */
    if
    :: (readyQueue[prioLevel].tailIndex < LIST_SIZE) ->//若队列不满
        readyQueue[prioLevel].tasks[readyQueue[prioLevel].tailIndex] = taskId;//直接插入
        readyQueue[prioLevel].tailIndex++;//队尾后移一位
    :: else -> assert(0);  /* 队列已满，错误 */
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
    byte enq_idx;
    
    enq_idx = readyQueue[prioLevel].tailIndex;
    
    /* 将所有元素后移一格，从尾到头 */
    do
    :: (enq_idx > 0) ->
        readyQueue[prioLevel].tasks[enq_idx] = readyQueue[prioLevel].tasks[enq_idx - 1];
        enq_idx--;
    :: (enq_idx <= 0) -> break;
    od;
    
    /* 在头部（位置0）插入新任务 */
    readyQueue[prioLevel].tasks[0] = taskId;
    readyQueue[prioLevel].tailIndex++;
}

inline OsDequeueHead(prioLevel){
    byte deq_idx;
    
    deq_idx = 0;
    
    /* 将所有元素前移一格 */
    do
    :: (deq_idx < readyQueue[prioLevel].tailIndex - 1) ->
        readyQueue[prioLevel].tasks[deq_idx] = readyQueue[prioLevel].tasks[deq_idx + 1];
        deq_idx++;
    :: (deq_idx >= readyQueue[prioLevel].tailIndex - 1) -> break;
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
    byte prio;
    byte top_task;
    byte found;
    
    prio = 0;
    top_task = 0;
    found = 0;
    
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
byte isTaskSwitch = 0;

byte int_save = 0;
inline LOS_IntLock() {
    int_save = int_ctrl_reg;
    int_ctrl_reg = 1;
}
inline LOS_IntRestore() {
    int_ctrl_reg = int_save;
}
inline LOS_IntUnlock() {
    int_ctrl_reg = 0;
}
byte ep_save = 0;
byte newTask = 0;
byte pendSV_pending = 0;

/* OsSchedSuspend - Suspend a task from scheduler's perspective */
inline OsSchedSuspend(taskId) {
    byte removeIdx;
    byte found;
    byte shiftIdx;
    
    /* Mark task as suspended */
    tcb[taskId].state = SUSPENDED;
    
    /* Remove from ready queue if present */
    if
    :: (readyQueue[tcb[taskId].prio].tailIndex > 0) ->
        removeIdx = 0;
        found = 0;
        
        /* Find task in ready queue */
        do
        :: (removeIdx < readyQueue[tcb[taskId].prio].tailIndex && !found) ->
            if
            :: (readyQueue[tcb[taskId].prio].tasks[removeIdx] == taskId) ->
                found = 1;
            :: else ->
                removeIdx++;
            fi
        :: else -> break;
        od;
        
        /* Remove if found */
        if
        :: (found == 1) ->
            shiftIdx = removeIdx;
            do
            :: (shiftIdx < readyQueue[tcb[taskId].prio].tailIndex - 1) ->
                readyQueue[tcb[taskId].prio].tasks[shiftIdx] = 
                    readyQueue[tcb[taskId].prio].tasks[shiftIdx + 1];
                shiftIdx++;
            :: else -> break;
            od;
            readyQueue[tcb[taskId].prio].tailIndex--;
        :: else -> skip;
        fi
    :: else -> skip;
    fi;
    
    /* Add to sortLink */
    OsAdd2SortLink(taskId);
}

/* OsSchedResume - Resume a task from scheduler's perspective */
inline OsSchedResume(taskId, needSched) {
    /* Clear suspended flag */
    if
    :: (tcb[taskId].state == SUSPENDED) ->
        tcb[taskId].state = READY;
        
        /* Remove from sortLink */
        OsDeleteSortLink(taskId);
        
        /* Add back to ready queue */
        OsEnqueueTail(taskId, tcb[taskId].prio);
        
        /* Check if need scheduling */
        if
        :: (tcb[taskId].prio < tcb[EP].prio) ->
            needSched = 1;
        :: else ->
            needSched = 0;
        fi
    :: else ->
        needSched = 0;
    fi
}

/* LOS_TaskSuspend - Suspend a task (API level) */
inline LOS_TaskSuspend(taskId) {
    if
    :: (taskId >= 1 && taskId <= NUM_OF_TASKS && taskId != EP) ->
        LOS_IntLock();
        
        /* Check if task is not already suspended */
        if
        :: (tcb[taskId].state != SUSPENDED && tcb[taskId].state != PENDED) ->
            OsSchedSuspend(taskId);
        :: else -> skip;
        fi;
        
        LOS_IntRestore();
    :: else -> skip;
    fi
}

/* LOS_TaskResume - Resume a suspended task (API level) */
inline LOS_TaskResume(taskId) {
    byte needSched;
    
    needSched = 0;
    
    if
    :: (taskId >= 1 && taskId <= NUM_OF_TASKS && taskId != EP) ->
        LOS_IntLock();
        
        /* Check if task is suspended */
        if
        :: (tcb[taskId].state == SUSPENDED) ->
            OsSchedResume(taskId, needSched);
            
            /* Trigger scheduling if needed */
            if
            :: (needSched == 1) ->
                /* Would call Systick_Handler or schedule */
                Systick_Handler();
            :: else -> skip;
            fi
        :: else -> skip;
        fi;
        
        LOS_IntRestore();
    :: else -> skip;
    fi
}

/* LOS_TaskDelay - Delay current task for specified ticks */
inline LOS_TaskDelay(ticks) {
    byte currentTask;
    
    if
    :: (ticks > 0 && EP >= 1 && EP <= NUM_OF_TASKS) ->
        LOS_IntLock();
        
        currentTask = EP;
        
        /* Set delay parameters */
        tcb[currentTask].state = DELAYED;
        tcb[currentTask].wakeupTime = tickCount + ticks;
        tcb[currentTask].delayTicks = ticks;
        
        /* Remove from ready queue and add to sortLink */
        OsAdd2SortLink(currentTask);
        
        /* Force task switch */
        Systick_Handler();
        
        LOS_IntRestore();
    :: else -> skip;
    fi
}

/* Inline Systick interrupt handler */
inline Systick_Handler() {
    byte interrupted_task;
    byte idx;
    byte taskId;
    byte needResched;
    
    interrupted_task = 0;
    needResched = 0;
    
    LOS_IntLock();
    
    /* Increment tick counter */
    tickCount++;
    
    /* Scan sortLink for delayed tasks to wake up */
    idx = 0;
    do
    :: (idx < sortLink.count) ->
        taskId = sortLink.tasks[idx];
        
        /* Check if task should be woken up */
        if
        :: (tcb[taskId].state == DELAYED && 
            tickCount >= tcb[taskId].wakeupTime) ->
            /* Wake up the task */
            tcb[taskId].state = READY;
            tcb[taskId].delayTicks = 0;
            
            /* Remove from sortLink */
            OsDeleteSortLink(taskId);
            
            /* Add back to ready queue */
            OsEnqueueTail(taskId, tcb[taskId].prio);
            
            needResched = 1;
            /* Don't increment idx, as we removed an element */
        :: else ->
            idx++;
        fi
    :: (idx >= sortLink.count) -> break;
    od;
    
    /* Save the interrupted task */
    interrupted_task = EP;
    
    /* Save current task if it's a user task and not delayed */
    if
    :: (interrupted_task >= 1 && interrupted_task <= NUM_OF_TASKS &&
        tcb[interrupted_task].state != DELAYED) ->
        tcb[interrupted_task].state = READY;
        OsEnqueueTail(interrupted_task, tcb[interrupted_task].prio);
    :: else -> skip;
    fi;
    
    /* Select next task */
    OsGetTopTask(newTask, topPrio);
    OsDequeueHead(topPrio);
    
    /* Perform context switch */
    tcb[newTask].state = RUNNING;
    EP = newTask;
    
    LOS_IntRestore();
}
/* Non-deterministic interrupt macro */
/* For starvation-free verification, always trigger systick */
#define NONDET_INTERRUPT Systick_Handler();



proctype Process1() {
    byte counter = 0;
    byte work = 0;
    
    do
    :: EXEC_WHEN_CURRENT(1, printf("Process 1 running, counter=%d\n", counter));
    :: EXEC_WHEN_CURRENT(1, counter++);
    :: EXEC_WHEN_CURRENT(1, work = (work + counter) % 100);
    :: EXEC_WHEN_CURRENT(1, LOS_TaskDelay(2));  /* Delay 2 ticks */
    :: EXEC_WHEN_CURRENT(1, LOS_TaskDelay(3));  /* Variable delay */
    :: (counter < 100) -> EXEC_WHEN_CURRENT(1, skip);  /* Continue working */
    od
}

proctype Process2() {
    byte counter = 0;
    byte work = 0;
    
    do
    :: EXEC_WHEN_CURRENT(2, printf("Process 2 running, counter=%d\n", counter));
    :: EXEC_WHEN_CURRENT(2, counter++);
    :: EXEC_WHEN_CURRENT(2, work = (work + counter * 2) % 100);
    :: EXEC_WHEN_CURRENT(2, LOS_TaskDelay(3));  /* Delay 3 ticks */
    :: EXEC_WHEN_CURRENT(2, LOS_TaskDelay(1));  /* Variable delay */
    :: (counter < 100) -> EXEC_WHEN_CURRENT(2, skip);
    od
}

proctype Process3() {
    byte counter = 0;
    byte work = 0;
    
    do
    :: EXEC_WHEN_CURRENT(3, printf("Process 3 running, counter=%d\n", counter));
    // :: assert(0);
    :: EXEC_WHEN_CURRENT(3, counter++);
    :: EXEC_WHEN_CURRENT(3, work = (work + counter * 3) % 100);
    :: EXEC_WHEN_CURRENT(3, LOS_TaskDelay(1));  /* Delay 1 tick */
    :: EXEC_WHEN_CURRENT(3, LOS_TaskDelay(4));  /* Variable delay */
    :: (counter < 100) -> EXEC_WHEN_CURRENT(3, skip);
    od
}

proctype Process4() {
    byte counter = 0;
    byte work = 0;
    
    do
    :: EXEC_WHEN_CURRENT(4, printf("Process 4 running, counter=%d\n", counter));
    :: EXEC_WHEN_CURRENT(4, counter++);
    :: EXEC_WHEN_CURRENT(4, work = (work + counter * 4) % 100);
    :: EXEC_WHEN_CURRENT(4, LOS_TaskDelay(2));  /* Delay 2 ticks */
    :: EXEC_WHEN_CURRENT(4, LOS_TaskDelay(5));  /* Variable delay */
    :: (counter < 100) -> EXEC_WHEN_CURRENT(4, skip);
    od
}

/* LTL properties for starvation freedom */
/* 
 * Starvation-free: If a task is READY, it will eventually get executed
 * Formula: [] (READY -> <> RUNNING)
 * In our model: [] (tcb[i].state == READY -> <> (EP == i))
 */
// ltl starvation_free_task1 { 
//     [] ((tcb[1].state == READY) -> <> (EP == 1)) 
// }

// ltl starvation_free_task2 { 
//     [] ((tcb[2].state == READY) -> <> (EP == 2)) 
// }

// ltl starvation_free_task3 { 
//     [] ((tcb[3].state == READY) -> <> (EP == 3)) 
// }

// ltl starvation_free_task4 { 
//     [] ((tcb[4].state == READY) -> <> (EP == 4)) 
// }

// /* Combined property: all tasks are starvation-free */
ltl all_starvation_free {
    ([] ((tcb[1].state == READY) -> <> (EP == 1))) &&
    ([] ((tcb[2].state == READY) -> <> (EP == 2))) &&
    ([] ((tcb[3].state == READY) -> <> (EP == 3))) &&
    ([] ((tcb[4].state == READY) -> <> (EP == 4)))
}

init {
    byte i;

    /* Initialize all ready queues */
    i = 0;
    do
    :: (i < NUM_PRIORITIES) ->
        initReadyQueue(i);
        i++;
    :: (i >= NUM_PRIORITIES) -> break;
    od;
    
    /* Initialize sortLink */
    initSortLink();
    
    /* Initialize Task Control Blocks */
    tcb[1].prio = 2;            /* Initial priority for Process1 */
    tcb[1].state = READY;       /* Process1 starts in READY state */
    tcb[1].responseTime = 10;   /* Initial response time */
    tcb[1].wakeupTime = 0;
    tcb[1].delayTicks = 0;
    OsEnqueueTail(1, tcb[1].prio);  /* Add to ready queue */
    
    tcb[2].prio = 2;            /* Initial priority for Process2 */
    tcb[2].state = READY;       /* Process2 starts in READY state */
    tcb[2].responseTime = 20;   /* Initial response time */
    tcb[2].wakeupTime = 0;
    tcb[2].delayTicks = 0;
    OsEnqueueTail(2, tcb[2].prio);  /* Add to ready queue */
    
    tcb[3].prio = 1;            /* Higher priority for Process3 */
    tcb[3].state = READY;       /* Process3 starts in READY state */
    tcb[3].responseTime = 15;   /* Initial response time */
    tcb[3].wakeupTime = 0;
    tcb[3].delayTicks = 0;
    OsEnqueueTail(3, tcb[3].prio);  /* Add to ready queue */
    
    tcb[4].prio = 3;            /* Lower priority for Process4 */
    tcb[4].state = READY;       /* Process4 starts in READY state */
    tcb[4].responseTime = 25;   /* Initial response time */
    tcb[4].wakeupTime = 0;
    tcb[4].delayTicks = 0;
    OsEnqueueTail(4, tcb[4].prio);  /* Add to ready queue */
    
    /* Get first task and remove from queue */
    OsGetTopTask(EP, topPrio);       /* Get highest priority task */
    OsDequeueHead(topPrio);          /* Remove it from queue */
    tcb[EP].state = RUNNING;         /* Mark as RUNNING */
    
    run Process1();
    run Process2();
    run Process3();
    run Process4()
}
