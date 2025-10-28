# 模块化 SPIN 验证框架

## 📁 文件结构

```
.
├── main.pml                  # 主文件（组合所有模块）
├── macros.pml               # 宏定义和常量
├── data_structures.pml      # 数据结构和队列操作
├── scheduler.pml            # 调度器和任务操作
├── processes.pml            # 具体进程和初始化
├── ltl_properties.pml       # LTL 验证属性
├── verify.sh                # 配置化验证脚本
└── MODULAR_README.md        # 本文档
```

## 🎯 模块说明

### 1. `macros.pml` - 宏定义
- 任务 ID 和状态定义
- 中断相关宏
- BASEPRI 和优先级宏
- AWAIT 宏
- 常量定义

### 2. `data_structures.pml` - 数据结构
- 全局变量声明
- TCB、ReadyList、SortLinkNode 类型定义
- 队列操作函数
- SortLink 操作函数

### 3. `scheduler.pml` - 调度逻辑
- 任务 Suspend/Resume
- 任务 Delay/Yield
- Tick 处理
- PendSV 和 SysTick 异常处理程序

### 4. `processes.pml` - 进程定义
- Process1 和 Process2 实现
- init 初始化块
- 可以根据不同场景修改此文件

### 5. `ltl_properties.pml` - LTL 属性
- 基础活性属性
- 饥饿自由属性
- 上下文切换属性
- Delay 相关属性

## 🚀 使用方法

### 基础用法

```bash
# 使脚本可执行
chmod +x verify.sh

# 显示帮助
./verify.sh --help

# 列出所有可用的 LTL 属性
./verify.sh --list

# 验证特定 LTL 属性
./verify.sh --ltl back_to_user

# 只做断言检查（不用 LTL）
./verify.sh --no-ltl

# 运行所有 LTL 属性
./verify.sh --all
```

### 高级用法

```bash
# 自定义搜索深度和宽度
./verify.sh --ltl back_to_user --depth 20000 --width 26

# 只编译不运行
./verify.sh --compile-only --ltl back_to_user

# 查看上次失败的 trail
./verify.sh --trail

# 详细输出
./verify.sh --ltl back_to_user --verbose
```

## 📊 验证脚本选项

| 选项 | 说明 |
|------|------|
| `-l, --ltl PROPERTY` | 验证指定的 LTL 属性 |
| `-n, --no-ltl` | 不使用 LTL（只做断言检查） |
| `-a, --all` | 顺序运行所有 LTL 属性 |
| `-s, --list` | 列出所有可用的 LTL 属性 |
| `-d, --depth NUM` | 设置搜索深度（默认 10000） |
| `-w, --width NUM` | 设置哈希表宽度（默认 24） |
| `-c, --compile-only` | 只编译不运行 |
| `-t, --trail` | 显示上次错误的 trail |
| `-v, --verbose` | 详细输出 |
| `-h, --help` | 显示帮助 |

## 🔧 自定义验证

### 修改任务行为

编辑 `processes.pml`：

```promela
proctype Process1()
{
    do
    :: EXEC_WHEN_CURRENT(FIRST_TASK, printf("P1\\n"))
       EXEC_WHEN_CURRENT(FIRST_TASK, LOS_TaskDelay(3));  // 修改延迟时间
    od
}
```

### 添加新的 LTL 属性

1. 在 `ltl_properties.pml` 中添加：
```promela
ltl my_new_property {
    [] (condition -> <> result)
}
```

2. 在 `verify.sh` 中注册（在 `LTL_PROPERTIES` 数组中）：
```bash
["my_new_property"]="Description of my property"
```

3. 运行：
```bash
./verify.sh --ltl my_new_property
```

### 修改系统配置

编辑 `macros.pml`：

```promela
#define NUM_OF_TASKS      3     // 增加任务数
#define NUM_PRIORITIES    8     // 增加优先级数
#define LIST_SIZE         10    // 增加队列大小
```

## 📈 验证结果

### 成功示例

```
=========================================
Verifying: back_to_user
=========================================
ℹ Description: Basic liveness: eventually return to user
ℹ Compiling model...
✓ Model compiled successfully
ℹ Running verification...

State-vector 140 byte, depth reached 8496, errors: 0
    15632 states, stored
    ...

✓ Verification PASSED (3s)
```

### 失败示例

```
✗ Verification FAILED (2s)
⚠ Trail file available: main.pml.trail
ℹ Use: spin -t -p -g -l main.pml | tail -100
```

### 查看失败详情

```bash
# 方法 1：使用脚本
./verify.sh --trail

# 方法 2：手动查看
spin -t -p -g -l main.pml 2>&1 | tail -100

# 方法 3：保存到文件
spin -t -p -g -l main.pml > trail_analysis.txt
```

## 🧪 批量验证

运行所有属性并生成报告：

```bash
./verify.sh --all
```

结果保存在 `verification_results_YYYYMMDD_HHMMSS.txt`

## 🎨 输出颜色

- 🔵 蓝色：信息
- 🟢 绿色：成功
- 🟡 黄色：警告
- 🔴 红色：错误

## 💡 最佳实践

### 1. 迭代开发

```bash
# 开发时：快速检查
./verify.sh --no-ltl --depth 5000

# 测试特定属性
./verify.sh --ltl back_to_user

# 正式验证：深度搜索
./verify.sh --all --depth 50000 --width 28
```

### 2. 调试流程

```bash
# 1. 运行验证
./verify.sh --ltl back_to_user

# 2. 如果失败，查看 trail
./verify.sh --trail

# 3. 修改代码

# 4. 重新验证
./verify.sh --ltl back_to_user
```

### 3. 性能优化

```bash
# 较小状态空间：减少深度
./verify.sh --ltl back_to_user --depth 5000

# 较大状态空间：增加宽度
./verify.sh --ltl back_to_user --width 28

# 启用压缩（修改 GCC_OPTS）
# 在 verify.sh 中：GCC_OPTS="-DCOLLAPSE -DSAFETY -O2"
```

## 📚 扩展阅读

### SPIN 选项说明

| 选项 | 含义 | 推荐值 |
|------|------|--------|
| `-m` | 搜索深度 | 10000-50000 |
| `-w` | 哈希表大小 (2^N) | 24-28 |
| `-DSAFETY` | 安全性检查 | 总是启用 |
| `-DCOLLAPSE` | 状态压缩 | 大模型时启用 |

### 常见问题

**Q: 验证很慢怎么办？**
A: 尝试减少深度，或启用状态压缩

**Q: 内存不足？**
A: 减小哈希表宽度 `-w 22`

**Q: 如何并行验证？**
A: 在多个终端运行不同的 LTL 属性

## 🔄 版本历史

- v1.0: 初始模块化版本
- 支持配置化验证
- 包含 12+ LTL 属性
- 批量验证功能

## 📝 许可

与原项目相同

