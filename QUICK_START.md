# 🚀 快速开始

## 一行命令

```bash
# 列出所有可用的验证属性
./verify.sh --list

# 验证特定属性
./verify.sh --ltl back_to_user

# 只做断言检查（不用LTL）
./verify.sh --no-ltl

# 运行所有验证
./verify.sh --all
```

## 📁 文件说明

| 文件 | 用途 | 可否修改 |
|------|------|----------|
| `main.pml` | 主入口 | ❌ 不需要 |
| `macros.pml` | 宏定义 | ✅ 配置参数 |
| `data_structures.pml` | 数据结构 | ⚠️  慎重 |
| `scheduler.pml` | 调度逻辑 | ⚠️  慎重 |
| `processes.pml` | 任务定义 | ✅ **常修改** |
| `ltl_properties.pml` | 验证属性 | ✅ 添加属性 |
| `verify.sh` | 验证脚本 | ⚠️  可扩展 |

## 🎯 常见任务

### 修改任务行为

编辑 `processes.pml`：

```promela
proctype Process1()
{
    do
    :: EXEC_WHEN_CURRENT(FIRST_TASK, 
        printf("P1 working\\n");
        LOS_TaskDelay(5)  // 改这里
    )
    od
}
```

### 添加新任务

1. 修改 `macros.pml`：
```promela
#define NUM_OF_TASKS 3  // 增加任务数
```

2. 在 `processes.pml` 的 `init` 中初始化：
```promela
tcb[FIRST_TASK+2].prio = 1;
tcb[FIRST_TASK+2].state = READY;
OsEnqueueTail(FIRST_TASK+2, 1);
```

3. 添加进程：
```promela
proctype Process3()
{
    do
    :: EXEC_WHEN_CURRENT(FIRST_TASK + 2, 
        printf("P3\\n")
    )
    od
}
```

### 添加新的 LTL 属性

1. 在 `ltl_properties.pml` 添加：
```promela
ltl my_property {
    [] (condition -> <> result)
}
```

2. 在 `verify.sh` 中注册（在 `LTL_PROPERTIES` 数组）：
```bash
["my_property"]="Your description here"
```

3. 运行：
```bash
./verify.sh --ltl my_property
```

## 🔍 调试技巧

### 查看失败的 trail

```bash
# 运行验证（失败）
./verify.sh --ltl some_property

# 查看 trail
./verify.sh --trail

# 或手动
spin -t -p -g -l main.pml | less
```

### 调整搜索深度

```bash
# 浅搜索（快速测试）
./verify.sh --ltl back_to_user --depth 5000

# 深搜索（完整验证）
./verify.sh --ltl back_to_user --depth 50000
```

### 详细输出

```bash
./verify.sh --ltl back_to_user --verbose
```

## ⚡ 性能建议

| 场景 | 命令 | 时间 |
|------|------|------|
| 快速检查 | `--no-ltl --depth 5000` | < 1s |
| 日常验证 | `--ltl property` | 1-5s |
| 完整验证 | `--all --depth 20000` | 1-5min |

## 📊 验证属性分类

### 基础属性（必过）
- `back_to_user` - 系统活性
- `exc_leads_to_user` - 异常处理正确性

### 公平性属性
- `starvation_free_task1` - 任务1无饥饿
- `starvation_free_task2` - 任务2无饥饿
- `all_starvation_free` - 全局无饥饿

### 行为属性
- `delayed_become_ready` - Delay功能正确
- `delayed_not_in_ready_queue` - 状态一致性

### 反例属性（应失败）
- `smoke_P1_user_no_pending` - 冒烟测试
- `smoke_P2_user_no_pending` - 冒烟测试

## 🛠️ 故障排除

### 编译错误

```bash
# 检查语法
spin -a main.pml
```

### 验证超时

```bash
# 减小深度
./verify.sh --ltl property --depth 3000
```

### 内存不足

```bash
# 减小哈希表
./verify.sh --ltl property --width 22
```

## 📚 更多信息

- 详细文档：`MODULAR_README.md`
- 帮助：`./verify.sh --help`
- 列出属性：`./verify.sh --list`

