# Scheduling Livelock Verification Suite

## 概述

本验证套件用于演示和检测 RTOS 任务调度中的**活锁（Livelock）问题**。该问题由 ARM Cortex-M 的 tail-chaining 机制引起，导致某些任务可能永远无法获得执行机会。

## 问题描述

### 缺陷：任务调度活锁问题

当三个并发执行的任务（`prev`、`victask`、`lucky`）在特定时序下交互时，可能发生以下情况：

1. **prev** 任务正在运行，即将被切出
2. **PendSV** 中断触发，选择 **victask** 作为下一个运行任务
3. 在 **victask** 真正开始执行之前，**SysTick** 中断通过 tail-chaining 机制触发
4. **SysTick** 再次触发 **PendSV**，导致任务重新选择
5. **victask** 失去本次执行机会，**lucky** 任务可能被选中
6. 如果这种情况反复发生，**victask** 将遭受**饥饿（starvation）**

### 严重后果

- **任务饥饿**：victask 长时间无法执行
- **系统死锁**：如果 victask 持有关键资源
- **系统活锁**：如果 victask 是 producer/consumer 中的关键角色

### 触发条件

- 多个同优先级任务
- SysTick 中断与 PendSV 中断的特定时序
- ARM Cortex-M 的 tail-chaining 机制

## 文件结构

### 核心模型文件

- **`macros.pml`**: 基础宏定义（中断控制、执行条件等）
- **`data_structures.pml`**: 数据结构和队列操作
- **`scheduler.pml`**: 调度器实现
- **`ltl_properties.pml`**: LTL 性质定义（包含 starvation freedom）

### 测试场景

- **`processes_livelock_test.pml`**: 三任务场景定义
  - **PrevTask**: 位于受害者任务之前的任务
  - **VictimTask**: 受害者任务，可能失去执行机会
  - **LuckyTask**: 受益于 victask 失去机会的任务
  - **IdleTask**: 最低优先级任务，防止系统死锁

### 主模型

- **`main_livelock_test.pml`**: 活锁测试主模型

### 验证脚本

- **`verify_livelock.sh`**: 自动化验证脚本

## 验证方法

### 自动验证（推荐）

运行验证脚本：

```bash
bash verify_livelock.sh
```

**验证内容：**
1. **基础验证**：检查断言违规
2. **饥饿自由度**：验证 victask 是否会遭受饥饿
3. **进度性质**：验证系统最终会返回用户任务

### 手动验证

#### 1. 基础验证

```bash
spin -a main_livelock_test.pml
gcc -O2 -o pan pan.c
./pan -m10000
```

#### 2. 检查 victask 饥饿

```bash
./pan -a -N starvation_free_task2 -m10000
```

**victask 对应 `FIRST_TASK+1`，即 task ID 3**

如果输出 `errors: 1` 并生成 trail 文件，说明检测到饥饿问题。

#### 3. 查看反例轨迹

```bash
spin -t -p main_livelock_test.pml | less
```

在轨迹中查找：
- `EP` 的值（当前执行任务）
- `tcb[3].state`（victask 的状态）
- PendSV 和 SysTick 的交互时序

## 关键验证点

### 1. 饥饿自由度（Starvation Freedom）

LTL 性质（`ltl_properties.pml`）：

```promela
ltl starvation_free_task2 {
    ([] (!(pending_exp > 0) || <>(EP >= FIRST_TASK))) 
    -> 
    ([] ((tcb[FIRST_TASK+1].state == READY && SysTick_pending) 
         -> <>(EP == FIRST_TASK+1)))
}
```

**含义**：如果系统会返回用户任务，那么当 victask 处于 READY 状态且有中断 pending 时，victask 最终应该被执行。

### 2. 进度性质（Progress）

```promela
ltl back_to_user {
    [] <> (EP >= FIRST_TASK)
}
```

**含义**：系统总是最终会返回用户任务（不会一直停留在异常处理）。

### 3. 任务状态一致性

```promela
assert(tcb[taskID].state == READY || tcb[taskID].state == RUNNING);
```

确保任务状态转换的正确性。

## 任务配置

### 优先级设置

所有三个主任务使用**相同优先级**（优先级 2）以触发调度竞争：

```promela
tcb[FIRST_TASK].prio   = 2;  // prev
tcb[FIRST_TASK+1].prio = 2;  // victask
tcb[FIRST_TASK+2].prio = 2;  // lucky
tcb[FIRST_TASK+3].prio = NUM_PRIORITIES - 1;  // IdleTask
```

### 任务行为

每个任务都会：
- 执行一些工作（`skip`）
- 随机选择：yield、delay 或继续
- 追踪执行次数（通过局部变量）

## 预期结果

### 场景 A：无活锁（理想情况）

```
✓ Basic verification: PASSED
✓ Starvation freedom: VERIFIED
✓ Progress property: VERIFIED
```

### 场景 B：检测到活锁

```
✓ Basic verification: PASSED
✗ Starvation freedom: VIOLATED (livelock detected!)
✓ Progress property: VERIFIED
```

**说明**：
- 基础验证通过（无断言违规）
- 饥饿自由度违反（victask 无法执行）
- 进度性质可能仍然满足（系统仍在运行，只是 victask 被饿死）

## 配置参数

### 搜索深度和超时

在 `verify_livelock.sh` 中调整：

```bash
DEPTH=2000   # 最大搜索深度
TIMEOUT=5    # 每个验证步骤的超时时间（秒）
```

建议值：
- **深度（DEPTH）**:
  - 快速测试：1000-2000
  - 标准测试：5000
  - 深度测试：10000+（可能需要更长超时）
  
- **超时（TIMEOUT）**:
  - 快速测试：5 秒
  - 标准测试：10-30 秒
  - 深度测试：60+ 秒

**超时机制**：如果某个验证步骤超过设定时间，会自动跳过该步骤继续执行，防止验证卡住。

### 任务数量

在 `processes_livelock_test.pml` 中：

```promela
#define NUM_OF_TASKS 4  // 3个主任务 + 1个IdleTask
```

## 分析活锁轨迹

如果检测到活锁，查看生成的轨迹：

```bash
spin -t -p main_livelock_test.pml > trace.txt
```

### 关键观察点

1. **查找 victask 被选中但未执行的序列**：
   ```
   PendSV selects victask (EP will be FIRST_TASK+1)
   -> SysTick fires (tail-chaining)
   -> PendSV re-triggers
   -> Different task selected
   ```

2. **检查 EP 变化模式**：
   ```
   EP = 2 (prev)
   EP = 0 (PendSV)
   EP = 1 (SysTick) 
   EP = 0 (PendSV again)
   EP = 4 (lucky)  // victask (3) skipped!
   ```

3. **观察 pending_exp 位模式**：
   ```
   pending_exp = 0x01 (PendSV only)
   pending_exp = 0x03 (PendSV + SysTick)
   ```

## 已知限制

1. **模型简化**：
   - 实际硬件的时序更复杂
   - 中断优先级简化处理
   - 不包括所有 ARM Cortex-M 细节

2. **状态空间爆炸**：
   - 三个任务的并发会产生大量状态
   - 可能需要较大的搜索深度
   - 某些场景可能超出内存限制

3. **非确定性**：
   - 活锁可能不是必然发生
   - 需要特定的交错执行序列
   - 可能需要多次运行或调整参数

## 缓解方案（理论）

虽然本套件不包含修复实现，但理论上的缓解方案包括：

1. **优先级天花板协议（Priority Ceiling Protocol）**
2. **禁止 tail-chaining**（性能损失）
3. **任务选择确认机制**
4. **公平调度策略**
5. **时间片轮转（Time Slicing）**

## 扩展验证

### 添加更多任务

修改 `processes_livelock_test.pml`：
- 增加 `NUM_OF_TASKS`
- 添加新的 proctype
- 在 init 中初始化新任务

### 自定义 LTL 性质

在 `ltl_properties.pml` 中添加：

```promela
ltl my_property {
    [] (/* your property here */)
}
```

验证：
```bash
./pan -a -N my_property -m10000
```

### 改变优先级配置

在 `processes_livelock_test.pml` 的 init 块中：

```promela
tcb[FIRST_TASK].prio = 1;    // 高优先级
tcb[FIRST_TASK+1].prio = 2;  // 中优先级
tcb[FIRST_TASK+2].prio = 3;  // 低优先级
```

## 依赖

- **Spin**: 版本 6.0 或更高
- **GCC**: 用于编译 pan.c

## 参考文献

详细的问题描述和分析见：
- `concurrency_liteosm.md` 第 1498-1502 行

## 许可

本验证套件是 LiteOS-M Promela 模型的一部分。

