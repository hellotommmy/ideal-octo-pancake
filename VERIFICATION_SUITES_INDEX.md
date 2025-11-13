# RTOS 验证套件索引

本目录包含三个独立的 Promela 模型验证套件，用于检测和演示 LiteOS-M RTOS 中的关键问题。

## 验证套件列表

### 1. Overflow Bug Verification Suite

**位置**: `overflow_bug_verification_suite/`

**目标**: 验证任务延迟（Task Delay）中的字节溢出 Bug 及其修复方案

**问题描述**:
当 `g_tickCount + ticks >= 256` 时，字节溢出导致任务过早唤醒。

**示例**:
- g_tickCount = 250
- 任务调用 `LOS_TaskDelay(10)`
- wakeupTime = (250+10) % 256 = 4
- 由于 250 >= 4，任务**立即唤醒**（错误！）

**修复方案**:
双队列系统（Dual-Queue System）：
- `g_taskSortLink`: 正常队列
- `overflowedSortLink`: 溢出队列
- 当 tick 回绕时合并队列

**特点**:
- ✓ 包含 Bug 模型和 Correct 模型对比
- ✓ 自动化双模型验证
- ✓ 确定性触发
- ✓ 有明确的修复实现

**快速开始**:
```bash
cd overflow_bug_verification_suite
bash verify_delay_overflow.sh
```

**预期结果**:
```
Result (BUG model): ✓ Expected overflow assertion reproduced
Result (CORRECT model): ✓ Clean
```

**详细文档**: `overflow_bug_verification_suite/README.md`

---

### 2. Scheduling Livelock Verification Suite

**位置**: `scheduling_livelock_verification_suite/`

**目标**: 检测任务调度中的活锁（Livelock）问题

**问题描述**:
当三个任务（prev、victask、lucky）在特定时序下交互，由于 ARM Cortex-M 的 tail-chaining 机制，victask 可能永远无法获得执行机会。

**触发场景**:
1. PendSV 选择 victask 作为下一个任务
2. SysTick 通过 tail-chaining 中断
3. 新的 PendSV 被触发，重新选择任务
4. victask 失去执行机会
5. 反复发生导致 victask 饥饿

**严重后果**:
- 任务饥饿
- 系统死锁（如果 victask 持有关键资源）
- 系统活锁（如果 victask 是 producer/consumer）

**特点**:
- ✗ 仅有问题模型，无修复方案
- ✓ 使用 LTL 性质验证（饥饿自由度）
- ✗ 非确定性触发（需要特定交错）
- ✓ 包含简化版本以应对状态空间爆炸
- ✓ 内置超时机制，防止验证卡住

**快速开始**:
```bash
cd scheduling_livelock_verification_suite

# 方式1：使用简化版本（推荐）
spin -a main_livelock_simple.pml
gcc -O2 -o pan pan.c
./pan -m1000

# 方式2：使用自动化脚本（带超时保护）
bash verify_livelock.sh  # TIMEOUT=5秒/步，防止卡住
```

**预期结果**:
```
State-vector 180 byte, depth reached 999, errors: 0
```

根据随机交错，可能触发或不触发活锁。

**详细文档**: `scheduling_livelock_verification_suite/README.md`

---

### 3. Smoke Tests Verification Suite

**位置**: `smoke_tests_verification_suite/`

**目标**: 验证 RTOS 基本行为符合预期

**测试类型**:
1. **Smoke Tests** (应失败 = 正常)
   - 验证用户任务可以在无中断时正常执行
2. **复杂轨迹验证**
   - 检查系统不会进入特定错误状态序列
3. **基本性质** (应通过)
   - 异常最终返回用户态

**特点**:
- ✓ 快速验证（< 1秒）
- ✓ 6 个测试覆盖基本行为
- ✓ 超时保护
- ✓ 简洁的输出

**快速开始**:
```bash
cd smoke_tests_verification_suite
bash verify_smoke.sh
```

**预期结果**:
```
Summary: 6/6 tests OK
```

**详细文档**: `smoke_tests_verification_suite/README.md`

---

## 套件对比

| 特性 | Overflow Bug | Livelock | Smoke Tests |
|------|-------------|----------|-------------|
| **目的** | Bug检测+修复 | 活锁检测 | 基本行为验证 |
| **问题类型** | 字节溢出 | 调度活锁 | N/A |
| **模型数量** | 2个 | 1个 | 1个 |
| **测试数量** | 2步对比 | 3步检查 | 6个测试 |
| **任务数量** | 2 + Idle | 3 + Idle | 2个 |
| **验证时间** | 中等 | 长（大状态空间） | 快速（<1秒） |
| **超时保护** | 无 | ✓ 5秒/步 | ✓ 5秒/测试 |
| **文件数量** | 12 | 12 | 7 |

## 共同依赖

两个套件都使用以下核心文件：
- `macros.pml`: 基础宏定义
- `data_structures.pml`: 数据结构和队列操作
- `scheduler.pml`: 调度器实现
- `ltl_properties.pml`: LTL 性质定义

但每个套件有自己的副本，可以独立运行。

## 使用建议

### 教学和演示
1. **先学习 Overflow Bug Suite**：
   - 问题清晰
   - 有明确的修复方案
   - 验证结果确定性强
   
2. **再研究 Livelock Suite**：
   - 问题更复杂
   - 涉及并发和时序
   - 适合深入研究

### 研究和开发
- **Overflow Bug**: 作为修复验证的模板
- **Livelock**: 作为问题检测和分析的案例

### 验证深度建议
- Overflow Bug: `-m10000`（默认）
- Livelock Simple: `-m1000` 到 `-m2000`
- Livelock Full: 状态空间过大，不推荐

## 技术要求

- **Spin**: 版本 6.0 或更高
- **GCC**: 用于编译 verifier
- **内存**: 
  - Overflow Bug: 约 1GB
  - Livelock: 2GB+（简化版本约 500MB）

## 扩展阅读

详细的技术文档和问题分析见：
- `concurrency_liteosm.md`
- `hackmd_version_concurrency_liteosm.md`

## 许可

这些验证套件是 LiteOS-M Promela 模型项目的一部分。

## 联系

如有问题或改进建议，请提交 issue。

---

**最后更新**: 2025-10-31
**版本**: 1.0

