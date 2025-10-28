# 📦 模块化 SPIN 验证框架

## 🎯 一句话介绍

将原来 823 行的单体 `c2res.pml` 重构为 **5 个独立模块 + 1 个配置化验证脚本**，支持灵活的验证场景配置。

---

## 🚀 快速开始（3步）

```bash
# 1. 列出所有验证属性
./verify.sh --list

# 2. 运行单个验证
./verify.sh --ltl back_to_user

# 3. 运行所有验证
./verify.sh --all
```

**就这么简单！** 🎉

---

## 📁 文件结构

### 核心模块（Promela）

```
main.pml                   ← 主入口（#include 所有模块）
├── macros.pml            ← 宏定义和常量
├── data_structures.pml   ← 数据结构和队列操作
├── scheduler.pml         ← 调度器核心逻辑
├── processes.pml         ← 具体进程定义（★常修改）
└── ltl_properties.pml    ← LTL 验证属性
```

### 验证工具

```
verify.sh                  ← 配置化验证脚本（★主要使用）
```

### 文档

```
README_MODULAR.md         ← 本文档（总览）
QUICK_START.md            ← 快速开始指南
MODULAR_README.md         ← 详细使用说明
REFACTOR_SUMMARY.md       ← 重构详细总结
```

---

## 🎨 模块说明

| 模块 | 行数 | 职责 | 修改频率 |
|------|------|------|----------|
| `main.pml` | 7 | 组合所有模块 | 很少 |
| `macros.pml` | 95 | 宏定义和常量 | 偶尔 |
| `data_structures.pml` | 238 | 数据结构和队列 | 很少 |
| `scheduler.pml` | 238 | 调度器逻辑 | 很少 |
| **`processes.pml`** | 58 | **任务场景定义** | **经常** |
| `ltl_properties.pml` | 144 | LTL属性 | 经常 |

---

## 💡 常见任务

### 修改任务行为

```bash
# 1. 编辑进程文件
vim processes.pml

# 2. 验证
./verify.sh --no-ltl
```

### 添加新的验证属性

```bash
# 1. 在 ltl_properties.pml 添加属性
# 2. 在 verify.sh 注册属性名
# 3. 运行
./verify.sh --ltl my_property
```

### 查看失败的 trail

```bash
./verify.sh --ltl property  # 失败
./verify.sh --trail         # 查看轨迹
```

---

## 📊 可用的 LTL 属性（12+）

运行 `./verify.sh --list` 查看完整列表：

**基础属性：**
- `back_to_user` - 系统活性
- `exc_leads_to_user` - 异常处理正确性

**公平性：**
- `starvation_free_task1` / `task2` - 无饥饿
- `all_starvation_free` - 全局公平

**Delay 功能：**
- `delayed_become_ready` - 延迟任务最终就绪
- `delayed_not_in_ready_queue` - 状态一致性
- `tick_monotonic` - Tick 计数器单调性

**冒烟测试：**
- `smoke_P1_user_no_pending` - 冒烟测试
- `smoke_P2_user_no_pending` - 冒烟测试

---

## 🔧 验证脚本选项

```bash
./verify.sh --help  # 完整帮助

# 常用选项
-l, --ltl PROPERTY    验证特定 LTL 属性
-n, --no-ltl          只做断言检查
-a, --all             运行所有 LTL 属性
-s, --list            列出所有可用属性
-d, --depth NUM       设置搜索深度
-t, --trail           查看失败的 trail
-v, --verbose         详细输出
```

---

## ✅ 验证结果示例

### 成功

```
=========================================
Verifying: back_to_user
=========================================
ℹ Description: Basic liveness: eventually return to user
✓ Model compiled successfully
ℹ Running verification...
✓ Verification PASSED (1s)
```

### 失败

```
✗ Verification FAILED (2s)
⚠ Trail file available: main.pml.trail
ℹ Use: spin -t -p -g -l main.pml | tail -100

# 或使用
./verify.sh --trail
```

---

## 📖 文档索引

| 需求 | 查看文档 | 命令 |
|------|---------|------|
| 快速上手 | `QUICK_START.md` | `cat QUICK_START.md` |
| 详细说明 | `MODULAR_README.md` | `cat MODULAR_README.md` |
| 重构背景 | `REFACTOR_SUMMARY.md` | `cat REFACTOR_SUMMARY.md` |
| 脚本帮助 | - | `./verify.sh --help` |
| 列出属性 | - | `./verify.sh --list` |

---

## 🎓 学习路径

### 新手

1. ✅ 阅读本文档（5分钟）
2. ✅ 运行 `./verify.sh --list`
3. ✅ 尝试 `./verify.sh --ltl back_to_user`
4. ✅ 查看 `QUICK_START.md`

### 进阶

1. ✅ 阅读 `processes.pml` 了解任务定义
2. ✅ 修改任务行为并验证
3. ✅ 在 `ltl_properties.pml` 添加新属性
4. ✅ 阅读 `MODULAR_README.md` 深入理解

### 高级

1. ✅ 修改 `scheduler.pml` 添加新API
2. ✅ 阅读 `REFACTOR_SUMMARY.md` 了解设计
3. ✅ 扩展 `verify.sh` 添加新功能
4. ✅ 优化验证性能

---

## 🔄 与原始版本对比

| 方面 | c2res.pml (原始) | 模块化版本 |
|------|------------------|-----------|
| **文件数** | 1 个 823 行 | 5 个模块 + 主文件 |
| **可读性** | 需要阅读全部 | 按需阅读相关模块 |
| **修改任务** | 在 823 行中定位 | 只看 58 行 `processes.pml` |
| **添加 LTL** | 编辑主文件 | 独立文件 + 脚本注册 |
| **验证方式** | 固定脚本 | 配置化 12+ 选项 |
| **批量验证** | 手动循环 | 一键运行 `--all` |
| **文档** | 注释 | 3 份独立文档 |

---

## 🎯 设计优势

### 1. 关注点分离
每个模块职责单一，易于理解和维护

### 2. 灵活验证
12+ LTL 属性可独立选择，支持批量和自定义参数

### 3. 易于扩展
添加新任务/属性/功能只需修改对应模块

### 4. 协作友好
多人可并行修改不同模块，减少冲突

### 5. 学习曲线平缓
模块化降低理解难度，文档完善

---

## 🛠️ 故障排除

### 编译错误

```bash
spin -a main.pml  # 检查语法错误
```

### 验证太慢

```bash
./verify.sh --ltl property --depth 5000  # 减小深度
```

### 内存不足

```bash
./verify.sh --ltl property --width 22  # 减小哈希表
```

### 看不到详细输出

```bash
./verify.sh --ltl property --verbose  # 启用详细输出
```

---

## 📞 获取帮助

```bash
# 脚本帮助
./verify.sh --help

# 列出所有属性
./verify.sh --list

# 查看快速指南
cat QUICK_START.md

# 查看详细文档
cat MODULAR_README.md
```

---

## 🎉 开始使用

```bash
# 克隆/进入项目目录
cd /root/jk_done/ideal-octo-pancake

# 使脚本可执行（如果还没有）
chmod +x verify.sh

# 开始验证！
./verify.sh --ltl back_to_user
```

**就是这么简单！Happy Verifying! 🚀**

---

## 📝 版本信息

- **版本：** 1.0
- **创建日期：** 2025-10-28
- **基于：** c2res.pml (823 行)
- **模块数：** 5 个 + 1 个主文件
- **LTL 属性：** 12+
- **文档：** 4 份

---

## 📄 许可证

与原项目相同

---

**💡 提示：** 如果这是你第一次使用，建议先阅读 `QUICK_START.md` 快速上手！

