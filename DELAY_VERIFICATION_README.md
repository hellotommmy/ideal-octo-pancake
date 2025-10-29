# Delay Overflow Bug Verification

## 概述

本目录包含用于验证 LOS_TaskDelay 溢出bug的专用文件。

## Bug 描述

### 问题
在 `scheduler.pml` 中，`OsSchedDelay` 函数计算任务的唤醒时间：
```promela
OsAdd2SortLinkSorted(taskID, g_tickCount + ticks);
```

当 `g_tickCount + ticks >= 256` 时，由于 byte 类型溢出（256 % 256 = 0），会发生回绕。这导致：
- 计算出的唤醒时间（responseTime）小于当前的 g_tickCount
- 在 `OsTickProcess` 中，条件 `g_tickCount >= taskResponseTime` 立即为真
- 任务被过早唤醒，根本没有等待请求的时间

### 示例场景
```
当前时刻: g_tickCount = 250
任务调用: LOS_TaskDelay(10)
计算唤醒时间: responseTime = (250 + 10) % 256 = 4

在 OsTickProcess 中:
  tick 250: g_tickCount (250) >= responseTime (4) → TRUE
  → 任务立即唤醒！
  
实际等待: 0 ticks
应该等待: 10 ticks
Bug 触发！
```

## 验证文件

### 1. `bad_scheduler.pml`
这是 `scheduler.pml` 的验证版本，添加了：
- **ticksActuallyWaited[taskId]**: 追踪任务实际等待的tick数
- **requestedDelay[taskId]**: 记录任务请求的延迟时间
- **形式化规约**: `assert(requestedDelay[taskId] <= ticksActuallyWaited[taskId])`

当溢出bug发生时，这个断言会失败。

### 2. `main_delay_verify.pml`
用于delay验证的主模型文件，使用 `bad_scheduler.pml` 替代正常的 `scheduler.pml`。

### 3. `processes_delay_overflow_test.pml`
专门设计用于触发溢出bug的测试进程：
- 初始化 `g_tickCount = 245`（接近255）
- 任务延迟 10 ticks
- 快速达到溢出场景

### 4. `main_overflow_test.pml`
完整的溢出测试模型，组合上述所有组件。

## 使用方法

### 正常验证（使用原始scheduler）
```bash
# 编译正常版本
spin -a main.pml
gcc -o pan pan.c

# 运行验证
./pan
```

### Delay溢出验证（使用bad_scheduler）
```bash
# 编译delay验证版本
spin -a main_overflow_test.pml
gcc -o pan pan.c

# 运行验证 - 应该检测到bug
./pan

# 预期结果：断言失败
# 错误信息: assertion violated: requestedDelay[taskId] <= ticksActuallyWaited[taskId]
# 这证明了溢出bug的存在
```

## 验证原理

### 追踪机制
1. **调用 LOS_TaskDelay(x)**:
   - 清零 `ticksActuallyWaited[currentTask] = 0`
   - 记录 `requestedDelay[currentTask] = x`

2. **每次 SysTick 中断**:
   - `g_tickCount++`
   - 对所有 DELAYED 状态的任务: `ticksActuallyWaited[taskId]++`

3. **任务唤醒时**:
   - 检查: `requestedDelay[taskId] <= ticksActuallyWaited[taskId]`
   - 如果失败 → 过早唤醒，bug存在

### 形式化规约
```
∀ task: 从 LOS_TaskDelay(x) 到任务重新 RUNNING
  必须满足: x ≤ ticksActuallyWaited[task]
```

当溢出导致过早唤醒时，这个不变式被违反。

## 约束条件

为了避免合法的溢出场景，添加了约束：
```promela
assert(ticks < 255);  // 在 LOS_TaskDelay 中
```

这确保我们只测试真正的bug，而不是合理的边界情况。

## 文件对比

| 文件 | 用途 |
|------|------|
| `scheduler.pml` | 正常的调度器（生产使用） |
| `bad_scheduler.pml` | 验证版本（仅用于delay正确性验证） |
| `main.pml` | 正常的主模型 |
| `main_overflow_test.pml` | Delay溢出测试主模型 |
| `processes.pml` | 正常的测试进程 |
| `processes_delay_overflow_test.pml` | 溢出测试进程（g_tickCount初始化为245） |

## 预期验证结果

### 如果 Bug 存在
```
spin: main_overflow_test.pml:XXX: assertion violated
  requestedDelay[taskId] <= ticksActuallyWaited[taskId]
  (requestedDelay[2]=10, ticksActuallyWaited[2]=0)
```

### 如果 Bug 已修复
验证应该成功完成，没有断言失败。

## 修复建议

要修复这个bug，需要修改 `OsSchedDelay` 和 `OsTickProcess`，使用以下方法之一：

1. **相对时间 + 计数器**: 不使用绝对时间，而是每次tick递减相对延迟
2. **溢出检测**: 检测溢出并适当处理
3. **更大的时间类型**: 使用 short (16位) 而不是 byte (8位)
4. **相对时间比较**: 使用有符号差值比较，正确处理回绕

## 注意事项

- `bad_scheduler.pml` 仅用于验证，不应在生产模型中使用
- 额外的追踪变量会增加状态空间
- 验证时间可能比正常模型更长
- 确保在验证前设置合适的 `g_tickCount` 初始值以触发溢出场景


