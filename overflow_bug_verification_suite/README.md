# Overflow Bug Verification Suite

## 概述

本验证套件用于演示和验证 RTOS 任务延迟（Task Delay）中的**字节溢出 Bug** 及其修复方案。

### Bug 描述

当系统时钟计数器 `g_tickCount` 接近 255 时，如果任务调用 `LOS_TaskDelay(ticks)`，计算唤醒时间时会发生字节溢出：

```c
byte wakeupTime = g_tickCount + ticks;  // Bug: 当 g_tickCount + ticks >= 256 时溢出
```

**示例场景：**
- `g_tickCount = 250`
- 任务调用 `LOS_TaskDelay(10)`
- 计算：`wakeupTime = (250 + 10) % 256 = 4`
- **错误**：由于 `g_tickCount (250) >= wakeupTime (4)`，任务**立即被唤醒**！
- **正确行为**：任务应该等待 10 个 tick 后（在 tick 260/4）才被唤醒

### 修复方案

使用**双队列系统**（Dual-Queue System）：
1. **正常队列** (`g_taskSortLink`)：存储唤醒时间 >= `g_tickCount` 的任务
2. **溢出队列** (`overflowedSortLink`)：存储唤醒时间 < `g_tickCount` 的任务（表示跨越 255->0 边界）
3. 当 `g_tickCount` 从 255 回绕到 0 时，将溢出队列合并到正常队列

## 文件结构

### 核心模型文件

- **`macros.pml`**: 基础宏定义（中断控制、执行条件等）
- **`data_structures.pml`**: 数据结构和队列操作（包含修复后的双队列逻辑）
- **`ltl_properties.pml`**: LTL 性质定义

### 调度器实现

- **`bad_scheduler.pml`**: **Bug 版本** - 不含 overflow 队列处理，会触发 bug
- **`correct_scheduler.pml`**: **正确版本** - 包含完整的双队列 overflow 处理

### 测试场景

- **`processes_delay_overflow_test.pml`**: 专门设计用于触发 overflow bug 的测试进程
  - 初始化 `g_tickCount = 245` 以快速触发溢出场景
  - 包含 IdleTask 防止系统死锁

### 主模型

- **`main_overflow_test.pml`**: 使用 `bad_scheduler.pml` 的主模型（应触发断言失败）
- **`main_correct.pml`**: 使用 `correct_scheduler.pml` 的主模型（应无错误）

### 验证脚本

- **`verify_delay_overflow.sh`**: 自动化双模型对比验证脚本

## 验证方法

### 自动验证（推荐）

运行验证脚本：

```bash
bash verify_delay_overflow.sh
```

**预期结果：**
1. **Bug 模型** (`main_overflow_test.pml`)：触发断言 `requestedDelay[taskId] <= ticksActuallyWaited[taskId]`
2. **正确模型** (`main_correct.pml`)：无错误，所有断言通过

### 手动验证

#### 1. 验证 Bug 模型

```bash
spin -a main_overflow_test.pml
gcc -O2 -o pan pan.c
./pan -m10000
```

**预期输出：**
```
pan:1: assertion violated (requestedDelay[taskId]<=ticksActuallyWaited[taskId])
```

查看错误轨迹：
```bash
spin -t -p main_overflow_test.pml | grep -E "g_tickCount|wakeupTime|requestedDelay|ticksActuallyWaited"
```

#### 2. 验证正确模型

```bash
spin -a main_correct.pml
gcc -O2 -o pan pan.c
./pan -m10000
```

**预期输出：**
```
(Spin Version X.X.X -- ...)
Full statespace search...
errors: 0
```

## 关键验证点

### 1. 延迟正确性断言

位于 `bad_scheduler.pml` 和 `correct_scheduler.pml` 的 `OsTickProcess()` 中：

```promela
assert(requestedDelay[taskId] <= ticksActuallyWaited[taskId]);
```

**含义：**任务实际等待的 tick 数必须 >= 请求的延迟 tick 数

**Bug 场景：**
- 任务请求延迟 10 ticks (`requestedDelay[taskId] = 10`)
- 由于溢出立即唤醒 (`ticksActuallyWaited[taskId] = 0`)
- 断言失败：`10 <= 0` 为假

### 2. 状态一致性

```promela
assert(tcb[taskID].state == READY || tcb[taskID].state == RUNNING);
```

确保只有处于正确状态的任务才能调用延迟函数。

### 3. pendList 一致性

```promela
assert(tcb[taskID].pendList == UNUSED);
```

确保任务在添加到 sortLink 之前不在任何队列中。

## 技术细节

### Bug 版本 (`bad_scheduler.pml`)

`OsSchedDelay` 实现：
```promela
byte wakeupTime = g_tickCount + ticks;  // 直接相加，会溢出
// 插入到单一的 g_taskSortLink，按 wakeupTime 排序
```

`OsTickProcess` 实现：
```promela
g_tickCount++;
// 扫描 g_taskSortLink
if (g_tickCount >= taskResponseTime) {
    // 唤醒任务 - Bug: 当 taskResponseTime < g_tickCount 时错误触发
}
```

### 正确版本 (`correct_scheduler.pml`)

使用 `data_structures.pml` 中的 `OsAdd2SortLinkSorted`：
```promela
inline OsAdd2SortLinkSorted(taskID, wakeupTime) {
    if (wakeupTime < g_tickCount) {
        // 溢出情况：添加到 overflowedSortLink
        // ...
    } else {
        // 正常情况：添加到 g_taskSortLink
        // ...
    }
}
```

`OsTickProcess` 在检测到 tick 回绕时：
```promela
if (oldTickCount == 255 && g_tickCount == 0) {
    // 合并 overflowedSortLink 到 g_taskSortLink
    // ...
}
```

## 配置参数

### 搜索深度

在 `verify_delay_overflow.sh` 中调整：
```bash
DEPTH=10000  # 修改此值以增加/减少搜索深度
```

### 初始 tick 值

在 `processes_delay_overflow_test.pml` 中：
```promela
g_tickCount = 245;  // 设置为接近 255 以快速触发溢出
```

## 验证结果解读

### 成功的验证

```
[1/2] BUG-REVEALING MODEL: main_overflow_test.pml
Result (BUG model): ✓ Expected overflow assertion reproduced

[2/2] CORRECT MODEL: main_correct.pml
Result (CORRECT model): ✓ Clean (no errors)

==========================================
Verification complete (dual-model)
==========================================
```

### 失败情况

如果 Bug 模型**未**触发断言，可能原因：
1. 搜索深度不足（增加 `DEPTH` 值）
2. `g_tickCount` 初始值不够高（建议 >= 245）
3. 任务延迟值太小，无法触发溢出

如果正确模型触发错误，说明修复不完整，需要检查：
1. `OsAdd2SortLinkSorted` 的溢出检测逻辑
2. `OsTickProcess` 的队列合并逻辑
3. `pendList` 字段的维护

## 扩展验证

### 添加更多测试场景

修改 `processes_delay_overflow_test.pml`：
- 调整 `g_tickCount` 初始值
- 增加/减少任务数量
- 改变延迟时间模式

### LTL 性质检查

使用 `-N` 参数验证特定 LTL 性质：
```bash
./pan -a -N sortlink_is_sorted
```

## 依赖

- **Spin**: 版本 6.0 或更高
- **GCC**: 用于编译 pan.c

## 许可

本验证套件是 LiteOS-M Promela 模型的一部分。

## 联系

如有问题或改进建议，请提交 issue。

