# Task Delay and Yield 实现说明

## 新增功能

### 1. 全局 Tick 计数器
```promela
byte g_tickCount = 0;  // 在每次 SysTick 中递增
```

### 2. LOS_TaskYield() - 主动让出CPU
```promela
inline LOS_TaskYield()
{
    LOS_Schedule();  /* 触发 PendSV 进行重新调度 */
}
```

**用途：**
- 当前任务主动让出 CPU，让同优先级的其他任务运行
- 相当于 `LOS_TaskDelay(0)`

**使用示例：**
```promela
proctype CooperativeTask()
{
    do
    :: EXEC_WHEN_CURRENT(TASK_ID, 
        printf("Task doing work\n");
        LOS_TaskYield();  /* 主动让出CPU */
    )
    od
}
```

---

### 3. LOS_TaskDelay(ticks) - 延迟指定 tick 数

```promela
inline LOS_TaskDelay(ticks)
{
    byte intSave;
    byte needSched = 0;
    byte currentTask = EP;
    
    LOS_IntLock(intSave);
    
    if
    :: (ticks == 0) ->
        LOS_TaskYield();  /* 延迟0 = 让出CPU */
    :: (ticks > 0) ->
        OsSchedDelay(currentTask, ticks, needSched);
        if
        :: (needSched && g_taskScheduled) ->
            LOS_IntRestore(intSave);
            LOS_Schedule();
        :: else -> skip
        fi;
    :: else -> skip
    fi;
}
```

**参数：**
- `ticks`: 延迟的 tick 数
  - `ticks == 0`: 主动让出 CPU（调用 Yield）
  - `ticks > 0`: 延迟指定 tick 数

**行为：**
1. 将当前任务从就绪队列移除（如果在队列中）
2. 设置任务状态为 DELAYED
3. 将任务加入 sortLink，设置 responseTime = ticks
4. 触发调度，切换到其他任务

**使用示例：**
```promela
proctype PeriodicTask()
{
    do
    :: EXEC_WHEN_CURRENT(TASK_ID,
        printf("Periodic work\n");
        LOS_TaskDelay(10);  /* 延迟 10 ticks */
    )
    od
}
```

---

### 4. OsTickProcess() - Tick 处理函数

在每次 SysTick 中断时被调用，功能：

1. **递增全局 tick 计数器**
   ```promela
   g_tickCount++;
   ```

2. **扫描 sortLink 中的 DELAYED 任务**
   - 递减每个 DELAYED 任务的 responseTime
   - 当 responseTime 减到 0 时：
     - 将任务状态改为 READY
     - 将任务加入就绪队列
     - 从 sortLink 中移除
     - 请求调度

3. **自动调度**
   - 如果有任务被唤醒，自动触发 PendSV

---

## 实现细节

### 任务状态转换

```
READY ──LOS_TaskDelay(n)──> DELAYED
  ^                             │
  │                             │
  └───── OsTickProcess() ───────┘
        (responseTime == 0)

RUNNING ──LOS_TaskDelay(n)──> DELAYED
                                  │
                                  └──> (由 PendSV 处理，不放回就绪队列)
```

### SortLink 的使用

- **SUSPENDED 任务**: `responseTime = MAX_RESPONSE_TIME (255)`
- **DELAYED 任务**: `responseTime = 用户指定的 tick 数`

每次 tick 时，只处理 DELAYED 状态的任务，不影响 SUSPENDED 任务。

### PendSV 的更新

PendSV 已经正确处理了 DELAYED 状态：

```promela
EXEC_WHEN_CURRENT_SAFE(PendSV_ID,
    if
    :: (tcb[LAST_EP_STACK].state == RUNNING) ->
        /* 只有 RUNNING 状态才放回队列 */
        tcb[LAST_EP_STACK].state = READY;
        OsEnqueueTail(LAST_EP_STACK, tcb[LAST_EP_STACK].prio)
    :: else -> skip  /* DELAYED/SUSPENDED 等状态不处理 */
    fi
);
```

---

## 使用示例

### 示例 1: 周期性任务

```promela
proctype PeriodicTask()
{
    do
    :: EXEC_WHEN_CURRENT(FIRST_TASK,
        printf("Periodic: tick=%d\n", g_tickCount);
        LOS_TaskDelay(5);  /* 每 5 ticks 运行一次 */
    )
    od
}
```

### 示例 2: 协作式多任务

```promela
proctype CooperativeTask1()
{
    do
    :: EXEC_WHEN_CURRENT(FIRST_TASK,
        printf("Task1 step 1\n");
        LOS_TaskYield();  /* 让出 CPU */
    )
    :: EXEC_WHEN_CURRENT(FIRST_TASK,
        printf("Task1 step 2\n");
        LOS_TaskYield();
    )
    od
}

proctype CooperativeTask2()
{
    do
    :: EXEC_WHEN_CURRENT(FIRST_TASK + 1,
        printf("Task2 step 1\n");
        LOS_TaskYield();
    )
    :: EXEC_WHEN_CURRENT(FIRST_TASK + 1,
        printf("Task2 step 2\n");
        LOS_TaskYield();
    )
    od
}
```

### 示例 3: 混合使用

```promela
proctype Process1()
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
        printf("P1: Delaying 3 ticks\n");
        LOS_TaskDelay(3);
    )
    od
}

proctype Process2()
{
    do
    :: EXEC_WHEN_CURRENT(FIRST_TASK + 1,
        printf("P2: Suspend P1\n");
        LOS_TaskSuspend(FIRST_TASK);
    )
    :: EXEC_WHEN_CURRENT(FIRST_TASK + 1,
        printf("P2: Delay 5 ticks\n");
        LOS_TaskDelay(5);
    )
    :: EXEC_WHEN_CURRENT(FIRST_TASK + 1,
        printf("P2: Resume P1\n");
        LOS_TaskResume(FIRST_TASK);
    )
    od
}
```

---

## LTL 验证属性示例

### 1. Tick 单调递增
```promela
ltl tick_monotonic { 
    [] (g_tickCount < 255)  /* Tick 不溢出 */
}
```

### 2. Delayed 任务最终会被唤醒
```promela
ltl delayed_tasks_wake {
    [] ((tcb[FIRST_TASK].state == DELAYED) -> <> (tcb[FIRST_TASK].state == READY))
}
```

### 3. Delay(0) 等价于 Yield
```promela
/* 调用 Delay(0) 后会触发调度，但任务状态仍为 READY */
ltl delay_zero_is_yield {
    [] ((EP == FIRST_TASK && call_delay_zero) -> 
        (tcb[FIRST_TASK].state == READY || tcb[FIRST_TASK].state == RUNNING))
}
```

### 4. Delayed 任务不在就绪队列
```promela
ltl delayed_not_in_ready_queue {
    [] ((tcb[FIRST_TASK].state == DELAYED) -> 
        (readyQueue[tcb[FIRST_TASK].prio].tasks[0] != FIRST_TASK &&
         readyQueue[tcb[FIRST_TASK].prio].tasks[1] != FIRST_TASK))
}
```

---

## 注意事项

### 1. Tick 溢出
- `g_tickCount` 是 `byte` 类型，会在 255 后溢出回 0
- 对于长延迟，需要考虑溢出问题
- 建议 `responseTime` 不超过 100

### 2. SortLink 容量
- SortLink 大小为 `NUM_OF_TASKS + 1`
- SUSPENDED 和 DELAYED 任务共享 sortLink
- 确保不会超过容量限制

### 3. Delay(0) 的语义
- `LOS_TaskDelay(0)` 等价于 `LOS_TaskYield()`
- 任务保持 READY 状态，只是触发调度
- 如果没有其他同优先级任务，可能立即继续运行

### 4. 在中断中调用
- ⚠️ **不要在异常处理程序中调用 `LOS_TaskDelay`**
- 异常处理程序不应该被延迟
- 只能在用户任务中调用

### 5. 状态一致性
- PendSV 只处理 RUNNING 状态的任务
- DELAYED 任务由 OsTickProcess 唤醒
- SUSPENDED 任务由 LOS_TaskResume 唤醒
- 状态转换必须保持原子性

---

## 与 Suspend/Resume 的区别

| 特性 | TaskDelay | TaskSuspend |
|------|-----------|-------------|
| 触发方式 | 自己延迟自己 | 其他任务挂起目标任务 |
| 唤醒方式 | 自动（tick到期） | 手动（Resume） |
| responseTime | 指定的tick数 | MAX_RESPONSE_TIME |
| 状态 | DELAYED | SUSPENDED |
| 可被中断吗 | 不可（一旦delay必须等待） | 可被Resume打断 |

---

## 测试建议

1. **基础功能测试**
   ```bash
   # 测试 Delay 是否正确延迟
   # 测试 Yield 是否触发调度
   # 测试 tick 计数是否递增
   ```

2. **边界条件测试**
   - Delay(0)
   - Delay(1)
   - Delay(255)
   - sortLink 满的情况

3. **并发测试**
   - 多个任务同时 Delay
   - Delay + Suspend 混合使用
   - 在 PendSV 执行期间 tick 到达

4. **压力测试**
   - 连续 Delay
   - 频繁 Yield
   - Tick 快速递增

---

## 调试技巧

### 查看 Tick 历史
```bash
spin -t -p -g -l c2res.pml 2>&1 | grep "g_tickCount"
```

### 查看 Delayed 任务
```bash
spin -t -p -g -l c2res.pml 2>&1 | grep "state == DELAYED"
```

### 查看 SortLink 内容
```bash
spin -t -p -g -l c2res.pml 2>&1 | grep "g_taskSortLink"
```

### 追踪任务状态变化
```bash
spin -t -p -g -l c2res.pml 2>&1 | grep "tcb\[2\].state"
```

---

## 总结

这个实现提供了完整的任务延迟功能：
- ✅ 精确的 tick 计数
- ✅ 自动唤醒机制
- ✅ 与现有 Suspend/Resume 兼容
- ✅ 支持 Yield 语义
- ✅ 状态管理一致性

可以支持多种常见的嵌入式 RTOS 使用场景！

