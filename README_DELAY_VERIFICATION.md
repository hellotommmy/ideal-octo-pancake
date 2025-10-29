# Delay溢出Bug验证 - 快速开始

## 问题描述

`scheduler.pml` 中存在一个潜在的溢出bug：

```promela
OsAdd2SortLinkSorted(taskID, g_tickCount + ticks);
```

当 `g_tickCount + ticks >= 256` 时，byte类型溢出导致：
- 唤醒时间被错误地计算为一个小值
- 任务在 `OsTickProcess` 中被立即唤醒（因为 g_tickCount >= 小的responseTime）
- **结果：任务过早唤醒，违反了delay的语义**

## 解决方案

创建了专门的验证文件来检测这个bug：

### 新增文件

| 文件 | 用途 |
|------|------|
| `bad_scheduler.pml` | 带验证追踪的调度器版本 |
| `main_overflow_test.pml` | 溢出测试主模型 |
| `processes_delay_overflow_test.pml` | 触发溢出的测试进程 |
| `verify_delay_overflow.sh` | 自动化验证脚本 |

### 验证原理

在 `bad_scheduler.pml` 中添加：

```promela
byte ticksActuallyWaited[LAST_TASK + 1];  // 追踪实际等待时间
byte requestedDelay[LAST_TASK + 1];       // 记录请求的延迟

// 调用delay时记录
ticksActuallyWaited[task] = 0;
requestedDelay[task] = ticks;

// 每个tick增加计数器
ticksActuallyWaited[task]++;

// 唤醒时验证形式化规约
assert(requestedDelay[task] <= ticksActuallyWaited[task]);
```

**形式化规约**: 任务请求延迟 d ticks，则实际等待时间必须 ≥ d

## 如何使用

### 方法1：使用自动化脚本（推荐）

```bash
./verify_delay_overflow.sh
```

### 方法2：手动执行

```bash
# 编译模型
spin -a main_overflow_test.pml

# 编译验证器
gcc -o pan pan.c -O2

# 运行验证
./pan
```

## 预期结果

### 如果Bug存在（当前状态）

```
spin: main_overflow_test.pml:XXX: assertion violated
  requestedDelay[taskId] <= ticksActuallyWaited[taskId]
  
context:
  requestedDelay[2] = 10
  ticksActuallyWaited[2] = 0
```

**解释**: 
- 任务请求延迟 10 ticks
- 但只等待了 0 ticks 就被唤醒
- 这证明了溢出bug的存在

### 如果Bug已修复

```
(Spin Version X.X.X -- XX Month YEAR)
...
Full statespace search for:
  assertion violations
  ...
State-vector XX byte, depth reached XXX
  ...
  
0 errors (unreached in proctype ...)
```

**解释**: 所有状态都满足形式化规约，bug已修复

## 触发条件

测试通过以下方式快速触发溢出场景：

```promela
// 在 processes_delay_overflow_test.pml 中
init {
    g_tickCount = 245;  // 初始化为接近255的值
    ...
}

proctype Process1() {
    LOS_TaskDelay(10);  // 延迟10 ticks
    // 245 + 10 = 255 (正常)
    // 250 + 10 = 4 (溢出!)
}
```

经过几个tick后，`g_tickCount` 会到达250或更高，此时 `250 + 10 = 260 % 256 = 4`，触发bug。

## 注意事项

### ⚠️ 重要
- `bad_scheduler.pml` **仅用于验证**，不要用于生产模型
- 平时使用 `main.pml` + `scheduler.pml` 进行正常验证
- 验证数组会增加状态空间，运行时间比正常验证更长

### 约束
```promela
assert(ticks < 255);  // 在 LOS_TaskDelay 中
```
防止合法的边界情况被误报为bug

## 文件组织

```
项目目录/
├── 正常验证文件
│   ├── main.pml                    ← 日常使用
│   ├── scheduler.pml               ← 生产调度器
│   └── processes.pml
│
└── Delay验证文件
    ├── main_overflow_test.pml      ← Delay验证入口
    ├── bad_scheduler.pml           ← 验证调度器
    ├── processes_delay_overflow_test.pml
    ├── verify_delay_overflow.sh    ← 快速验证脚本
    │
    └── 文档
        ├── README_DELAY_VERIFICATION.md   (本文件)
        ├── DELAY_VERIFICATION_README.md   (详细说明)
        ├── USAGE_GUIDE.md                 (完整指南)
        └── DELAY_OVERFLOW_FILES.txt       (文件清单)
```

## 修复建议

一旦确认bug存在，可以考虑以下修复方案：

### 方案1：检测溢出
```promela
inline OsSchedDelay(taskID, ticks, needSched) {
    byte wakeupTime = g_tickCount + ticks;
    
    // 检测溢出：如果wakeup < current，说明溢出了
    if
    :: (wakeupTime < g_tickCount) ->
        // 溢出情况：特殊处理
        wakeupTime = MAX_RESPONSE_TIME;  // 或其他策略
    :: else -> skip
    fi;
    
    OsAdd2SortLinkSorted(taskID, wakeupTime);
}
```

### 方案2：使用相对时间
不存储绝对唤醒时间，而是存储相对延迟，每个tick递减。

### 方案3：有符号比较
使用有符号算术处理环绕（wraparound）。

## 更多信息

- 详细验证原理：`DELAY_VERIFICATION_README.md`
- 完整使用指南：`USAGE_GUIDE.md`
- 文件清单：`DELAY_OVERFLOW_FILES.txt`

## 总结

✅ **创建了完整的验证框架来检测delay溢出bug**

✅ **使用形式化规约验证正确性：`requestedDelay ≤ ticksActuallyWaited`**

✅ **提供了自动化脚本和详细文档**

✅ **与正常验证分离，不影响日常开发流程**

---

**建议工作流**:
1. 日常验证：使用 `main.pml`
2. Delay测试：运行 `./verify_delay_overflow.sh`
3. 发现bug：修复 `scheduler.pml`
4. 再次验证：确保两种测试都通过

