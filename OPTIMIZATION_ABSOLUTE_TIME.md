# Absolute Time Optimization for Task Delay

## 问题背景

在实现 `LOS_TaskDelay` 和 `OsTickProcess` 时，用户提出了一个关键的优化问题：

> "如果每次相应的responseTime都-1，那么g_tickCount的作用是什么？没有一个比较'g_tickCount超过唤醒时间就唤醒任务'的机制吗？"

这是一个非常好的观察！原始实现存在效率问题。

---

## 两种实现对比

### ❌ 原始实现（相对时间）

```promela
/* OsSchedDelay: 设置相对延迟时间 */
g_taskSortLink[tail].responseTime = ticks;  // 例如：5

/* OsTickProcess: 每次 tick 都要对所有 DELAYED 任务 -1 */
g_tickCount++;  // 只增加，不使用
do
:: (idx < g_taskSortLinkTail) ->
    if
    :: (tcb[taskId].state == DELAYED && responseTime > 0) ->
        responseTime--;  // 写操作：5→4→3→2→1→0
        if
        :: (responseTime == 0) -> wake_up_task();
        fi
    fi
od
```

**问题：**
1. ❌ **每次 tick 都要写内存**：对每个 DELAYED 任务的 `responseTime` 执行 `-1`
2. ❌ **无法利用排序优势**：即使 sortLink 排序，也必须访问所有任务
3. ❌ **g_tickCount 没有实际用途**：只增加但从不用来比较

**开销分析：**
- 假设有 N 个 DELAYED 任务
- 每次 tick：N 次读 + N 次写 + N 次比较 = **O(N) 写操作**

---

### ✅ 优化实现（绝对时间）

```promela
/* OsSchedDelay: 设置绝对唤醒时间 */
g_taskSortLink[tail].responseTime = g_tickCount + ticks;  // 例如：100 + 5 = 105

/* OsTickProcess: 只增加 g_tickCount，比较绝对时间 */
g_tickCount++;  // 唯一的写操作：100→101→102→...→105
do
:: (idx < g_taskSortLinkTail) ->
    if
    :: (tcb[taskId].state == DELAYED && g_tickCount >= responseTime) ->
        // 当 g_tickCount 达到 105 时唤醒
        wake_up_task();
    fi
od
```

**优势：**
1. ✅ **只需一次写操作**：每次 tick 只增加 `g_tickCount`
2. ✅ **无需修改任务数据**：所有 `responseTime` 保持不变，直到任务被唤醒
3. ✅ **可扩展到排序优化**：如果 sortLink 排序，可以提前终止扫描

**开销分析：**
- 假设有 N 个 DELAYED 任务
- 每次 tick：N 次读 + N 次比较 + **1 次写操作** = **O(1) 写操作**

---

## 性能提升量化

### 场景：100 次 tick，3 个 DELAYED 任务

| 实现方式 | 写操作次数 | 读操作次数 |
|---------|-----------|-----------|
| **相对时间（原始）** | 100 × 3 = **300 次** | 300 次 |
| **绝对时间（优化）** | 100 × 1 = **100 次** | 300 次 |
| **性能提升** | **减少 67%** | 相同 |

在实际 RTOS 中（可能有 10+ 个 DELAYED 任务）：
- 相对时间：100 × 10 = **1000 次写**
- 绝对时间：100 × 1 = **100 次写**
- **性能提升：减少 90%**

---

## 进一步优化：排序 sortLink

### 真实 RTOS 实现

在真实的 RTOS（如 LiteOS）中，sortLink 通常按 `responseTime` 排序：

```c
// 按绝对唤醒时间排序插入
void OsAdd2SortLink(TaskID, wakeupTime) {
    // 找到合适的插入位置
    for (i = 0; i < sortLinkTail; i++) {
        if (wakeupTime < sortLink[i].responseTime) {
            // 插入到这里，后续元素后移
            insert_at(i);
            return;
        }
    }
    // 如果比所有都晚，追加到尾部
    append_to_tail();
}

// 只扫描到第一个未到期的任务
void OsTickProcess() {
    g_tickCount++;
    for (i = 0; i < sortLinkTail; i++) {
        if (g_tickCount >= sortLink[i].responseTime) {
            wake_up_task(i);
        } else {
            break;  // 后续任务都未到期，提前退出
        }
    }
}
```

**优势：**
- 如果第一个任务还未到期，后续都不用检查
- 平均扫描次数：O(k)，k 是已到期的任务数

**代价：**
- 插入时需要移动元素（排序插入）
- 增加代码复杂度

---

## 模型检查的设计决策

在 Promela 模型中，我们选择**不排序**：

```promela
/* 简单追加，不排序 */
inline OsSchedDelay(taskID, ticks, needSched) {
    // ...
    g_taskSortLink[g_taskSortLinkTail].taskId = taskID;
    g_taskSortLink[g_taskSortLinkTail].responseTime = g_tickCount + ticks;  /* 绝对时间 */
    g_taskSortLinkTail++;
}

/* 扫描全部，不提前停止 */
inline OsTickProcess() {
    g_tickCount++;
    do
    :: (idx < g_taskSortLinkTail) ->
        if
        :: (g_tickCount >= g_taskSortLink[idx].responseTime) ->
            wake_up_task();
        :: else -> idx++
        fi
    :: else -> break
    od
}
```

**原因：**
1. **模型简单性**：排序插入会增加状态数，降低验证效率
2. **任务数量少**：模型中通常只有 2-3 个任务，排序的好处不明显
3. **验证重点**：我们关注的是**正确性**，而不是运行时性能
4. **保留优化核心**：已经实现了绝对时间比较（67% 写操作减少）

---

## 代码位置

### 修改的文件

**`scheduler.pml`：**

1. **OsSchedDelay** (行 83-99)
   ```promela
   g_taskSortLink[g_taskSortLinkTail].responseTime = g_tickCount + ticks;  /* 绝对时间 */
   ```

2. **OsTickProcess** (行 126-196)
   ```promela
   g_tickCount++;  // 唯一的写操作
   
   if
   :: (tcb[taskId].state == DELAYED && g_tickCount >= g_taskSortLink[idx].responseTime) ->
       // 绝对时间比较
   ```

---

## 验证结果

```bash
$ ./verify.sh --no-ltl

[Command 1] spin -a main.pml
[Command 2] gcc -DSAFETY -O2 -o pan pan.c
✓ Model compiled successfully

[Command 3] ./pan -m10000 -w24

State-vector 140 byte, depth reached 9999, errors: 0
  1258739 states, stored
  2290991 transitions
  
✓ No assertion violations found
✓ Model verified successfully with absolute time optimization
```

---

## 总结

| 方面 | 相对时间（原始） | 绝对时间（优化） | 绝对时间+排序（真实RTOS） |
|-----|----------------|----------------|------------------------|
| **g_tickCount 作用** | 无（未使用） | 关键（唯一写操作） | 关键（唯一写操作） |
| **responseTime 含义** | 剩余 ticks | 绝对唤醒时间 | 绝对唤醒时间 |
| **每次 tick 写次数** | O(N) | O(1) | O(1) |
| **扫描次数** | O(N) | O(N) | O(k)，k≤N |
| **插入复杂度** | O(1) | O(1) | O(N) |
| **模型复杂度** | 中 | 中 | 高 |
| **适用场景** | 教学 | 模型检查 | 生产环境 |

### 关键要点

1. ✅ **绝对时间 vs 相对时间**是核心优化
   - 减少 67%~90% 的写操作
   
2. ✅ **g_tickCount 的真正作用**
   - 不仅仅是计数器，是时间比较的基准
   
3. ⚖️ **排序是可选的进一步优化**
   - 真实 RTOS：值得（任务数多）
   - 模型检查：不值得（状态空间爆炸）

---

## 参考

- **用户提问**："如果每次相应的responseTime都-1，那么g_tickCount的作用是什么？"
- **LiteOS 源码**：`kernel/base/los_sortlink.c` - 使用排序链表管理定时任务
- **SPIN 优化原则**：保持模型简单，减少状态空间

---

**Created**: 2025-10-29  
**Optimization by**: User insight  
**Implemented in**: `scheduler.pml`

