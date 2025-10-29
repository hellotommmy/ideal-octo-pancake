# RTOS Scheduler 验证使用指南

## 文件结构

### 核心文件（生产使用）
```
main.pml                    # 主模型入口
├── macros.pml             # 宏定义和常量
├── data_structures.pml    # 数据结构和队列操作
├── scheduler.pml          # 调度器实现（正常版本）
├── processes.pml          # 测试进程
└── ltl_properties.pml     # LTL性质验证
```

### Delay溢出验证文件（仅用于测试）
```
main_overflow_test.pml                 # Delay溢出测试入口
├── macros.pml                         # （共享）
├── data_structures.pml                # （共享）
├── bad_scheduler.pml                  # 带验证的调度器
├── processes_delay_overflow_test.pml  # 溢出测试进程
└── ltl_properties.pml                 # （共享）
```

## 使用场景

### 场景 1：正常的RTOS功能验证

**用途**: 验证调度器、suspend/resume、优先级队列等基本功能

**使用文件**: `main.pml`

**编译运行**:
```bash
# 编译模型
spin -a main.pml

# 编译验证器
gcc -o pan pan.c -O2

# 运行验证
./pan

# 高级选项
./pan -a                    # 查找所有错误
./pan -m100000             # 增加搜索深度
```

**预期结果**: 所有断言通过，无死锁

---

### 场景 2：验证 Delay 溢出Bug

**用途**: 专门检测 `g_tickCount + ticks` 溢出导致的过早唤醒bug

**使用文件**: `main_overflow_test.pml`

**编译运行**:
```bash
# 使用便捷脚本
./verify_delay_overflow.sh

# 或手动执行
spin -a main_overflow_test.pml
gcc -o pan pan.c -O2
./pan
```

**预期结果**: 
- **如果bug存在**: 断言失败，显示过早唤醒
- **如果bug已修复**: 验证通过

**错误信息示例**（bug存在时）:
```
spin: main_overflow_test.pml:XXX: assertion violated
  requestedDelay[taskId] <= ticksActuallyWaited[taskId]
  (requestedDelay[2]=10, ticksActuallyWaited[2]=0)
```

---

## 两个Scheduler的区别

### `scheduler.pml` （正常版本）
```promela
inline LOS_TaskDelay(ticks)
{
    byte intSave;
    byte needSched = 0;
    byte currentTask = EP;
    
    LOS_IntLock(intSave);
    
    if
    :: (ticks == 0) -> LOS_TaskYield();
    :: (ticks > 0) -> 
        OsSchedDelay(currentTask, ticks, needSched);
        ...
    :: else -> skip
    fi;
}
```

**特点**:
- 生产代码，无额外开销
- 专注于功能正确性
- 适合常规验证

---

### `bad_scheduler.pml` （验证版本）
```promela
/* 新增的验证变量 */
byte ticksActuallyWaited[LAST_TASK + 1];
byte requestedDelay[LAST_TASK + 1];

inline LOS_TaskDelay(ticks)
{
    ...
    assert(ticks < 255);  // 防止合法溢出
    
    /* 记录请求的延迟 */
    ticksActuallyWaited[currentTask] = 0;
    requestedDelay[currentTask] = ticks;
    
    OsSchedDelay(currentTask, ticks, needSched);
    ...
}

inline OsTickProcess()
{
    ...
    /* 每个tick增加实际等待时间 */
    do
    :: (verifyIdx < g_taskSortLinkTail) ->
        if
        :: (tcb[verifyTaskId].state == DELAYED) ->
            ticksActuallyWaited[verifyTaskId]++;
        :: else -> skip
        fi;
        verifyIdx++
    :: else -> break
    od;
    
    /* 唤醒时验证 */
    assert(requestedDelay[taskId] <= ticksActuallyWaited[taskId]);
    ...
}
```

**特点**:
- 追踪实际等待时间
- 添加形式化断言
- 状态空间更大，验证更慢
- **仅用于delay正确性验证**

---

## 测试进程的区别

### `processes.pml` （正常测试）
```promela
init
{
    ...
    /* 正常初始化，g_tickCount从0开始 */
    
    tcb[FIRST_TASK].prio = 2;      
    tcb[FIRST_TASK].state = READY; 
    OsEnqueueTail(FIRST_TASK, 2);
    ...
}
```

---

### `processes_delay_overflow_test.pml` （溢出测试）
```promela
init
{
    ...
    /* 关键：设置高初始值以快速触发溢出 */
    g_tickCount = 245;
    
    /* 初始化验证数组 */
    i = 0;
    do
    :: (i <= LAST_TASK) ->
        ticksActuallyWaited[i] = 0;
        requestedDelay[i] = 0;
        i++
    :: else -> break
    od;
    ...
}
```

**关键差异**: `g_tickCount = 245` 使得系统快速接近溢出点

---

## 验证选项

### 基础验证
```bash
./pan              # 默认搜索
```

### 完整验证
```bash
./pan -a           # 查找所有错误（不在第一个错误处停止）
./pan -m1000000    # 增加内存限制
./pan -w28         # 使用28位状态哈希
```

### 性能分析
```bash
./pan -c0          # 无效化状态哈希（用于小模型）
./pan -n           # 不报告部分搜索
```

---

## 工作流程

### 日常开发验证
```bash
# 1. 修改scheduler.pml或其他核心文件
vim scheduler.pml

# 2. 运行正常验证
spin -a main.pml
gcc -o pan pan.c
./pan

# 3. 检查结果
# ✓ 通过 → 继续开发
# ✗ 失败 → 修复bug，重复步骤2
```

### Delay功能特定验证
```bash
# 1. 怀疑delay有问题时
# 2. 运行溢出测试
./verify_delay_overflow.sh

# 3. 分析结果
# 如果失败 → 确认溢出bug
# 如果通过 → 尝试调整初始g_tickCount或delay值
```

---

## 故障排查

### 问题：验证很慢
**原因**: bad_scheduler.pml的状态空间更大

**解决**:
- 减少任务数量 (`NUM_OF_TASKS`)
- 减少优先级数量 (`NUM_PRIORITIES`)
- 限制搜索深度 (`./pan -m10000`)

### 问题：未检测到溢出bug
**检查**:
1. `g_tickCount` 初始值是否够高？（建议 ≥ 245）
2. `LOS_TaskDelay(x)` 中 x 是否够大？（建议 ≥ 10）
3. 测试是否运行足够长时间？

**调试**:
```promela
// 在processes_delay_overflow_test.pml中
g_tickCount = 250;  // 增加初始值
LOS_TaskDelay(15);  // 增加延迟时间
```

### 问题：Spin编译错误
**常见错误**:
- `undeclared variable`: 检查是否正确include所有文件
- `syntax error`: 检查inline函数定义是否完整
- `type clash`: 确认所有byte变量声明正确

---

## 最佳实践

### ✅ DO
- 日常验证使用 `main.pml` + `scheduler.pml`
- 怀疑delay问题时使用 `main_overflow_test.pml` + `bad_scheduler.pml`
- 保持两套文件同步（除了验证代码）
- 提交代码前运行两种验证

### ❌ DON'T
- 不要在生产模型中使用 `bad_scheduler.pml`
- 不要混用两套文件（通过main.pml引用bad_scheduler.pml）
- 不要删除 `bad_scheduler.pml` 中的断言
- 不要跳过正常验证，只运行溢出验证

---

## 总结

| 特性 | main.pml | main_overflow_test.pml |
|------|----------|------------------------|
| **调度器** | scheduler.pml | bad_scheduler.pml |
| **进程** | processes.pml | processes_delay_overflow_test.pml |
| **验证内容** | 全面功能 | Delay溢出 |
| **状态空间** | 正常 | 较大 |
| **运行时间** | 较快 | 较慢 |
| **日常使用** | ✓ | ✗ |
| **专项测试** | ✗ | ✓ |

---

## 附录：形式化规约

### Delay正确性规约
```
∀ task t, ∀ delay d:
  当 t 调用 LOS_TaskDelay(d) 时，
  从调用时刻到 t 再次运行的时间间隔 Δt 必须满足:
    d ≤ Δt
```

### 验证实现
```promela
// 记录请求
requestedDelay[t] = d;
ticksActuallyWaited[t] = 0;

// 每tick增加
ticksActuallyWaited[t]++;

// 唤醒时检查
assert(requestedDelay[t] <= ticksActuallyWaited[t]);
```

### 预期行为
- **正确实现**: 断言总是成立
- **溢出bug**: 断言在特定条件下失败

