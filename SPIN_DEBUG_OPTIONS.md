# SPIN Trail 调试选项详解

## 关键选项对比

### 1. 基础命令（看不到局部变量）
```bash
spin -t -p c2res.pml
```
**输出示例：**
```
994:    proc  3 (Process2:1) c2res.pml:235 (state 84)   [tempStatus = tcb[2].state]
994:    proc  3 (Process2:1) c2res.pml:237 (state 85)   [assert((tempStatus==3))]
spin: c2res.pml:237, Error: assertion violated
```
❌ **问题：** 看不到 `tempStatus` 的实际值！

---

### 2. 加上 -g 选项（看全局变量，但还是看不到局部变量）
```bash
spin -t -p -g c2res.pml
```
**输出示例：**
```
994:    proc  3 (Process2:1) c2res.pml:235 (state 84)   [tempStatus = tcb[2].state]
994:    proc  3 (Process2:1) c2res.pml:237 (state 85)   [assert((tempStatus==3))]
                EP = 3              # 能看到全局变量
                pending_exp = 2
                tcb[2].state = 1    # 能看到全局变量
```
⚠️ **问题：** 能看到全局变量，但还是看不到局部变量 `tempStatus`！

---

### 3. 加上 -l 选项（✅ 关键！能看到局部变量）
```bash
spin -t -p -g -l c2res.pml
#              ^^^ 这个是关键！
```
**输出示例：**
```
994:    proc  3 (Process2:1) c2res.pml:235 (state 84)   [tempStatus = tcb[2].state]
994:    proc  3 (Process2:1) c2res.pml:237 (state 85)   [assert((tempStatus==3))]
                Process2(3):tempStatus = 1      # ✅ 能看到局部变量的值！
                Process2(3):intSave = 0         # ✅ 其他局部变量也能看到
                Process2(3):needSched = 0
                EP = 3                           # 全局变量也能看到
                tcb[2].state = 1                 # 全局变量
```
✅ **成功：** 可以看到 Process2 进程的局部变量 `tempStatus = 1`

---

## 完整选项说明

| 选项 | 作用 | 示例 |
|------|------|------|
| `-t` | 重放trail文件（必需） | `spin -t file.pml` |
| `-p` | 打印每一步执行的语句 | 显示代码行和行号 |
| `-g` | 显示全局变量的变化 | 显示 `EP`, `tcb[]`, `pending_exp` 等 |
| `-l` | **显示局部变量的值** | 显示函数内的 `tempStatus`, `intSave` 等 |
| `-v` | 更详细的输出 | 包含更多调试信息 |
| `-n` | 显示行号 | 与 `-p` 配合使用 |

---

## 实战示例

### 场景1：Assertion失败，想知道局部变量的值

```bash
# 第一步：生成trail
spin -a c2res.pml
gcc -DSAFETY -o pan pan.c
./pan -m10000  # 失败，生成 .trail 文件

# 第二步：查看失败时的局部变量
spin -t -p -g -l c2res.pml 2>&1 | tail -60
```

**输出会显示：**
```
994:    proc  3 (Process2:1) c2res.pml:235 (state 84)   [tempStatus = tcb[2].state]
                Process2(3):tempStatus = 1     # 看到了！值是1
994:    proc  3 (Process2:1) c2res.pml:237 (state 85)   [assert((tempStatus==3))]
spin: c2res.pml:237, Error: assertion violated
spin: text of failed assertion: assert((tempStatus==3))
```

---

### 场景2：追踪特定局部变量的变化

```bash
# 查看所有tempStatus的赋值
spin -t -p -g -l c2res.pml 2>&1 | grep "tempStatus"
```

**输出示例：**
```
993:    [tempStatus = 0]                        # 初始化
994:    [tempStatus = tcb[2].state]             # 赋值为 tcb[2].state
        Process2(3):tempStatus = 1              # 实际值是 1
```

---

### 场景3：查看所有进程的局部变量

```bash
spin -t -p -g -l c2res.pml 2>&1 | grep -E "Process[12]|PendSV|SysTick" | tail -30
```

**输出示例：**
```
PendSV_Handler(1):tmp = 3
PendSV_Handler(1):idx = 0
PendSV_Handler(1):found = 1
Process2(3):tempStatus = 1
Process2(3):intSave = 0
Process2(3):needSched = 0
```

---

## 常用Debug命令组合

```bash
# 1. 最完整的信息（推荐）
spin -t -p -g -l c2res.pml 2>&1 > debug_full.txt

# 2. 只看最后的状态
spin -t -p -g -l c2res.pml 2>&1 | tail -100

# 3. 查找特定变量
spin -t -p -g -l c2res.pml 2>&1 | grep "tempStatus"

# 4. 查看特定步骤范围
spin -t -p -g -l c2res.pml 2>&1 | sed -n '990,1000p'

# 5. 查看所有局部变量
spin -t -p -g -l c2res.pml 2>&1 | grep -E "^[[:space:]]+[A-Z][a-z]+.*:"
```

---

## 为什么我能看到局部变量

我使用的完整命令是：
```bash
spin -t -p -g -l c2res.pml 2>&1 | tail -100
```

关键点：
1. ✅ `-t`: 重放trail
2. ✅ `-p`: 打印执行语句
3. ✅ `-g`: 显示全局变量
4. ✅ **`-l`: 显示局部变量** ← 这个是关键！
5. ✅ `2>&1`: 捕获所有输出
6. ✅ `| tail -100`: 查看最后100行

---

## 快速参考

**我想看...**  → **用什么命令**

- 看代码执行路径 → `spin -t -p file.pml`
- 看全局变量 → `spin -t -p -g file.pml`
- **看局部变量** → **`spin -t -p -g -l file.pml`** ✅
- 看所有信息 → `spin -t -p -g -l -v file.pml`

---

## 注意事项

1. **必须先运行验证生成trail文件**
   ```bash
   ./pan -m10000  # 生成 .trail 文件
   ```

2. **局部变量只在函数内可见**
   - `tempStatus` 只在 `LOS_TaskResume` 执行时可见
   - 函数返回后，局部变量就不显示了

3. **大文件建议重定向到文件**
   ```bash
   spin -t -p -g -l c2res.pml 2>&1 > debug.txt
   # 然后用 vim/less 查看
   ```

4. **配合grep使用更高效**
   ```bash
   spin -t -p -g -l c2res.pml 2>&1 | grep -A5 -B5 "tempStatus"
   ```

---

## 总结

记住这个万能命令：
```bash
spin -t -p -g -l your_file.pml 2>&1 | tail -100
```

- `-t`: trail重放
- `-p`: print语句
- `-g`: global变量  
- `-l`: **local变量** ← 关键！

