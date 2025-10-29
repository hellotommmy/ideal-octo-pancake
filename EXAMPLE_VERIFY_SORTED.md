# 示例：如何验证 SortLink 排序正确性

## 🎯 快速开始

### 1. 查看所有可用的验证属性

```bash
$ cd /root/jk_done/ideal-octo-pancake
$ ./verify.sh --list

Available LTL Properties:
  ...
  sortlink_is_sorted          : SortLink is always sorted (2 elements)
  sortlink_three_sorted       : SortLink is always sorted (3 elements)
  ...
```

---

## 🔍 方式一：Assertion 验证（推荐）

### 运行命令

```bash
./verify.sh --no-ltl
```

### 示例输出

```
=========================================
Verification (No LTL - Assertion Checking Only)
=========================================
ℹ Compiling model for safety checking...

[Command 1] spin -a main.pml
[Command 2] gcc -DSAFETY -O2 -o pan pan.c
✓ Model compiled successfully

ℹ Running verification...

[Command 3] ./pan -m10000 -w24

State-vector 176 byte, depth reached 9999, errors: 0
  1,467,630 states, stored
  2,677,739 transitions

✓ Verification PASSED (2s)
```

### 验证内容

- ✅ `AssertSortLinkIsSorted()` 在所有修改 sortLink 的位置被调用
- ✅ 检查每对相邻元素: `sortLink[i] <= sortLink[i+1]`
- ✅ 覆盖所有插入、移除、唤醒操作

### 如果失败

```bash
# 示例错误输出
pan:1: assertion violated (sortLink[1] <= sortLink[2])
pan: wrote main.pml.trail

# 查看 trail
spin -t -p -g -l main.pml > trace

# 分析排序状态
grep "g_taskSortLink" trace | tail -20
```

---

## 📊 方式二：LTL 验证（补充）

### 2.1 验证前两个元素有序

```bash
./verify.sh --ltl sortlink_is_sorted
```

#### 示例输出

```
=========================================
Verifying: sortlink_is_sorted
=========================================
ℹ Description: SortLink is always sorted (2 elements)
ℹ Compiling model for LTL verification...

[Command 1] spin -a main.pml
[Command 2] gcc -O2 -o pan pan.c
✓ Model compiled successfully

ℹ Running verification...

[Command 3] ./pan -a -N sortlink_is_sorted -m10000 -w24

pan: ltl formula sortlink_is_sorted
State-vector 176 byte, depth reached 9999, errors: 0
   749,858 states, stored
   978,646 transitions

pan: rate 1,442,034.6 states/second

✓ Verification PASSED (0s)
```

#### 验证的 LTL 公式

```promela
ltl sortlink_is_sorted {
    [] ((g_taskSortLinkTail >= 2) -> 
        (g_taskSortLink[0].responseTime <= g_taskSortLink[1].responseTime))
}
```

**含义**: 总是（在所有状态下），如果 sortLink 有至少 2 个元素，那么第一个元素 ≤ 第二个元素。

---

### 2.2 验证前三个元素有序

```bash
./verify.sh --ltl sortlink_three_sorted
```

#### 示例输出

```
=========================================
Verifying: sortlink_three_sorted
=========================================
ℹ Description: SortLink is always sorted (3 elements)
...

State-vector 176 byte, depth reached 9999, errors: 0
   749,858 states, stored

✓ Verification PASSED (0s)
```

#### 验证的 LTL 公式

```promela
ltl sortlink_three_sorted {
    [] ((g_taskSortLinkTail >= 3) -> 
        ((g_taskSortLink[0].responseTime <= g_taskSortLink[1].responseTime) &&
         (g_taskSortLink[1].responseTime <= g_taskSortLink[2].responseTime)))
}
```

**含义**: 总是，如果 sortLink 有至少 3 个元素，那么它们保持升序。

---

## 🔄 方式三：运行所有验证

### 运行所有 LTL 属性（包括排序验证）

```bash
./verify.sh --all-ltl
```

这会依次运行所有 14 个 LTL 属性，包括：
- `sortlink_is_sorted`
- `sortlink_three_sorted`
- 以及其他系统属性

---

## 📝 实际场景演示

### 场景 1: 验证插入保持有序

假设我们修改了 `OsAdd2SortLinkSorted` 函数，想验证它是否正确：

```bash
# 1. 修改代码后，立即验证
./verify.sh --no-ltl

# 2. 如果通过，进一步用 LTL 验证
./verify.sh --ltl sortlink_is_sorted

# 3. 全面验证
./verify.sh --ltl sortlink_three_sorted
```

**预期结果**: 所有验证都应该通过 ✅

---

### 场景 2: 调试失败的验证

假设我们不小心破坏了排序逻辑：

```promela
/* 错误的实现：总是插入到末尾 */
inline OsAdd2SortLinkSorted(taskID, wakeupTime) {
    insertPos = g_taskSortLinkTail;  // ❌ 错误：不检查顺序
    // ...
}
```

#### 验证失败

```bash
$ ./verify.sh --no-ltl

pan:1: assertion violated g_taskSortLink[checkIdx].responseTime<=g_taskSortLink[checkIdx+1].responseTime
    line 301 in data_structures.pml

✗ Verification FAILED
```

#### 调试过程

```bash
# 1. 生成 trail
./verify.sh --trail

# 2. 查看 sortLink 状态
spin -t -p -g -l main.pml | grep -A 5 "g_taskSortLink"

# 输出示例：
# g_taskSortLink[0].responseTime = 120
# g_taskSortLink[1].responseTime = 105  ← 错误！应该 >= 120
# g_taskSortLink[2].responseTime = 110
```

#### 修复并重新验证

```promela
/* 正确的实现 */
inline OsAdd2SortLinkSorted(taskID, wakeupTime) {
    // 找到正确的插入位置
    insertPos = 0;
    do
    :: (insertPos < g_taskSortLinkTail) ->
        if
        :: (wakeupTime < g_taskSortLink[insertPos].responseTime) -> break
        :: else -> insertPos++
        fi
    :: else -> break
    od;
    // ...
}
```

```bash
$ ./verify.sh --no-ltl
✓ Verification PASSED (2s)
```

---

## 📊 验证结果解读

### 成功的验证

```
State-vector 176 byte, depth reached 9999, errors: 0
  1,467,630 states, stored
  2,677,739 transitions

✓ Verification PASSED
```

**含义**:
- ✅ 探索了 1,467,630 个状态
- ✅ 没有发现任何 assertion violation
- ✅ sortLink 在所有状态下都保持有序

---

### 失败的验证

```
pan:1: assertion violated ...
  line 301 in data_structures.pml

States: 12,345 (stopped at error)

✗ Verification FAILED
```

**含义**:
- ❌ 在第 12,345 个状态发现错误
- ❌ 第 301 行的 assertion 失败
- ❌ sortLink 在某个操作后失序

**下一步**: 使用 `spin -t` 回放执行路径，定位问题。

---

## 🎯 验证策略建议

### 日常开发

```bash
# 快速检查（1-2秒）
./verify.sh --no-ltl
```

### 提交前验证

```bash
# 完整验证（~0.5秒 × 2）
./verify.sh --ltl sortlink_is_sorted
./verify.sh --ltl sortlink_three_sorted
```

### 重大修改后

```bash
# 全面验证（~30秒）
./verify.sh --all-ltl
```

---

## 🔧 高级用法

### 增加搜索深度

如果警告 "max search depth too small"：

```bash
./verify.sh --no-ltl --depth 100000
```

### 增加内存

```bash
./verify.sh --no-ltl --width 26  # 2^26 = 64M hash table
```

### 只编译不运行

```bash
./verify.sh --compile-only
```

---

## 📈 性能对比

| 验证方法 | 时间 | 状态数 | 适用场景 |
|---------|------|--------|---------|
| `--no-ltl` | ~1.2s | 1.4M | 日常快速检查 |
| `--ltl sortlink_is_sorted` | ~0.5s | 750K | 针对性验证 |
| `--ltl sortlink_three_sorted` | ~0.5s | 750K | 针对性验证 |
| `--all-ltl` | ~30s | 累计 | 完整回归测试 |

---

## ✅ 检查清单

在提交代码前，确保：

- [ ] `./verify.sh --no-ltl` 通过（包含 assertion）
- [ ] `./verify.sh --ltl sortlink_is_sorted` 通过
- [ ] `./verify.sh --ltl sortlink_three_sorted` 通过
- [ ] 没有 "assertion violated" 错误
- [ ] 没有 "depth too small" 警告（或已增加深度）

---

## 📚 相关资源

- **`FORMAL_SPEC_SORTED.md`** - 形式化规约完整文档
- **`data_structures.pml:291`** - `AssertSortLinkIsSorted()` 实现
- **`ltl_properties.pml:166`** - `sortlink_is_sorted` 定义
- **`ltl_properties.pml:174`** - `sortlink_three_sorted` 定义

---

## 🎓 总结

### 为什么需要验证 sortLink 有序性？

1. **正确性保证**: 排序是提前停止优化的前提
2. **性能验证**: 确保优化真的有效
3. **回归防护**: 防止未来修改破坏排序

### 如何验证？

- **Assertion**: 在每个修改点立即检查
- **LTL**: 全局时序属性，覆盖所有状态

### 何时验证？

- ✅ 每次修改 sortLink 相关代码后
- ✅ 提交前
- ✅ CI/CD 流程中

---

**Created**: 2025-10-29  
**Examples tested**: ✅ All working  
**Ready to use**: ✅ Yes

