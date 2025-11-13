# Scheduling Livelock Verification - Quick Start

## 快速运行

```bash
cd scheduling_livelock_verification_suite
bash verify_livelock.sh
```

## 预期结果

根据模型执行的随机交错，可能出现两种情况：

### 情况 A：未触发活锁
```
✓ Basic verification: PASSED
✓ Starvation freedom: VERIFIED
✓ Progress property: VERIFIED
```

### 情况 B：检测到活锁
```
✓ Basic verification: PASSED
✗ Starvation freedom: VIOLATED (livelock detected!)
✓ Progress property: VERIFIED
```

**注意**：活锁问题是由特定的中断交错时序引起的，不是每次运行都会触发。

## 单独测试

### 基础验证
```bash
spin -a main_livelock_test.pml
gcc -O2 -o pan pan.c
./pan -m10000
```

### 检查 victask 饥饿
```bash
./pan -a -N starvation_free_task2 -m10000
```

### 查看反例轨迹
```bash
spin -t -p main_livelock_test.pml | less
```

## 主要文件

- `processes_livelock_test.pml`: 三任务场景定义
  - PrevTask: 前置任务
  - VictimTask: 受害者任务
  - LuckyTask: 受益任务  
  - IdleTask: 防止死锁
- `main_livelock_test.pml`: 主模型入口
- `verify_livelock.sh`: 自动化验证脚本

## 任务说明

所有三个主任务使用**相同优先级**（优先级 2）：

```
prev    (ID=2): 前置任务，可能被中断切出
victask (ID=3): 受害者，可能失去执行机会  
lucky   (ID=4): 受益者，在 victim 失去机会时运行
IdleTask(ID=5): 最低优先级，防止系统死锁
```

## 问题关键

**Tail-Chaining 导致的活锁**：
1. PendSV 选择 victask 运行
2. SysTick 通过 tail-chaining 中断
3. SysTick 触发新的 PendSV
4. 重新选择任务，victask 失去机会

## 调整参数

编辑 `verify_livelock.sh` 顶部：

```bash
DEPTH=2000    # 搜索深度
TIMEOUT=5     # 超时时间（秒）
```

**超时机制**：每个验证步骤如果超过 5 秒会自动跳过，防止长时间卡住。

## 详细信息

详见 `README.md`

