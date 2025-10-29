# Delay溢出验证 - 从这里开始 🚀

## 这是什么？

这是一个用于验证 `scheduler.pml` 中 **LOS_TaskDelay 溢出bug** 的完整框架。

### Bug简述
```promela
// 在 scheduler.pml 中
OsAdd2SortLinkSorted(taskID, g_tickCount + ticks);
```

当 `g_tickCount + ticks >= 256` 时：
- **问题**: Byte溢出 → 唤醒时间变小 → 任务立即被唤醒
- **后果**: 任务没有等待足够的时间就被唤醒（过早唤醒）

---

## 🎯 我想...

### 1️⃣ 快速检测这个Bug
```bash
./verify_delay_overflow.sh
```

**预期结果**（如果bug存在）:
```
assertion violated: requestedDelay[taskId] <= ticksActuallyWaited[taskId]
```

---

### 2️⃣ 了解这个Bug的详细信息
👉 阅读 [`README_DELAY_VERIFICATION.md`](README_DELAY_VERIFICATION.md)

包含：
- 问题描述和示例
- 验证原理
- 使用方法
- 预期结果
- 修复建议

---

### 3️⃣ 学习如何使用验证文件
👉 阅读 [`USAGE_GUIDE.md`](USAGE_GUIDE.md)

包含：
- 正常验证 vs Delay验证的区别
- 文件对比（scheduler.pml vs bad_scheduler.pml）
- 工作流程
- 故障排查
- 最佳实践

---

### 4️⃣ 深入了解技术实现
👉 阅读 [`DELAY_VERIFICATION_README.md`](DELAY_VERIFICATION_README.md)

包含：
- 验证原理深入解析
- 形式化规约
- 三大优化
- 安全性保证

---

### 5️⃣ 查看实现总结
👉 阅读 [`IMPLEMENTATION_SUMMARY.md`](IMPLEMENTATION_SUMMARY.md)

包含：
- 完整的文件列表
- 设计决策
- 技术亮点
- 验证原理
- 后续工作

---

### 6️⃣ 快速参考文件清单
👉 阅读 [`DELAY_OVERFLOW_FILES.txt`](DELAY_OVERFLOW_FILES.txt)

包含：
- 所有新文件列表
- 快速命令
- 文件关系
- 重要提示

---

## 📁 文件说明

### 核心验证文件
| 文件 | 大小 | 说明 |
|------|------|------|
| `bad_scheduler.pml` | 11KB | 带验证追踪的调度器 |
| `main_overflow_test.pml` | 1.9KB | 溢出测试主模型 |
| `processes_delay_overflow_test.pml` | 2.6KB | 触发溢出的测试进程 |

### 工具脚本
| 文件 | 说明 |
|------|------|
| `verify_delay_overflow.sh` | 一键验证脚本（可执行） |

### 文档
| 文件 | 内容 | 推荐阅读顺序 |
|------|------|--------------|
| `START_HERE.md` | 本文件 - 快速导航 | 1️⃣ |
| `README_DELAY_VERIFICATION.md` | 快速开始指南 | 2️⃣ |
| `USAGE_GUIDE.md` | 完整使用指南 | 3️⃣ |
| `DELAY_VERIFICATION_README.md` | 技术深入 | 4️⃣ |
| `IMPLEMENTATION_SUMMARY.md` | 实现总结 | 5️⃣ |
| `DELAY_OVERFLOW_FILES.txt` | 文件清单 | 参考 |

---

## ⚡ 快速命令

### 检测Delay溢出Bug
```bash
./verify_delay_overflow.sh
```

### 手动验证
```bash
# 编译模型
spin -a main_overflow_test.pml

# 编译验证器
gcc -o pan pan.c -O2

# 运行
./pan
```

### 正常验证（日常使用）
```bash
spin -a main.pml
gcc -o pan pan.c
./pan
```

---

## 🔍 验证原理一览

### 追踪机制
```
LOS_TaskDelay(10) 被调用
    ↓
记录: requestedDelay[task] = 10
清零: ticksActuallyWaited[task] = 0
    ↓
每个Tick: ticksActuallyWaited[task]++
    ↓
任务唤醒时验证:
  assert(requestedDelay[task] <= ticksActuallyWaited[task])
  即: 10 <= ticksActuallyWaited[task]
    ↓
如果失败 → 过早唤醒，Bug存在！
```

### 溢出场景
```
g_tickCount = 250
LOS_TaskDelay(10)
    ↓
计算: wakeupTime = (250 + 10) % 256 = 4
    ↓
判断: g_tickCount (250) >= wakeupTime (4)
结果: TRUE → 立即唤醒！
    ↓
实际等待: 0 ticks
应该等待: 10 ticks
    ↓
断言失败: 10 <= 0 ✗
Bug检测到！
```

---

## 🎓 理解这个系统

### 两套文件系统

#### 正常使用（生产验证）
```
main.pml
  → scheduler.pml          (无验证开销)
  → processes.pml
```
**用途**: 日常开发和功能验证

#### Delay验证（专项测试）
```
main_overflow_test.pml
  → bad_scheduler.pml      (带验证追踪)
  → processes_delay_overflow_test.pml  (g_tickCount=245)
```
**用途**: 检测delay溢出bug

---

## ⚠️ 重要提示

### ✅ DO
- ✓ 使用 `verify_delay_overflow.sh` 快速测试
- ✓ 日常开发用 `main.pml`
- ✓ 怀疑delay问题时用 `main_overflow_test.pml`
- ✓ 阅读文档了解详细信息

### ❌ DON'T
- ✗ 不要在生产模型中使用 `bad_scheduler.pml`
- ✗ 不要混用两套文件
- ✗ 不要忽略验证失败的警告

---

## 🏁 下一步

### 新手推荐路径
1. 运行 `./verify_delay_overflow.sh` 看看效果
2. 阅读 [`README_DELAY_VERIFICATION.md`](README_DELAY_VERIFICATION.md)
3. 查看 `bad_scheduler.pml` 源码理解实现
4. 尝试修改 `g_tickCount` 初始值观察效果

### 开发者路径
1. 阅读 [`IMPLEMENTATION_SUMMARY.md`](IMPLEMENTATION_SUMMARY.md) 了解全貌
2. 阅读 [`USAGE_GUIDE.md`](USAGE_GUIDE.md) 掌握使用方法
3. 集成到现有验证流程中

### 研究者路径
1. 阅读 [`DELAY_VERIFICATION_README.md`](DELAY_VERIFICATION_README.md)
2. 理解形式化规约
3. 分析验证方法的完备性

---

## 📊 统计信息

- **文件数量**: 9个（4个验证文件 + 1个脚本 + 4个文档）
- **代码量**: ~16KB（验证文件）
- **文档量**: ~24KB（文档）
- **总大小**: ~40KB
- **开发时间**: 1个工作周期
- **验证目标**: Delay溢出bug

---

## 💡 关键概念

### 形式化规约
```
∀ task, delay d:
  实际等待时间 Δt ≥ d
```

### 验证方法
使用Spin模型检查器的断言验证机制

### Bug类型
Byte溢出导致的逻辑错误

---

## 🤝 贡献

如果发现问题或有改进建议：
1. 检查 `IMPLEMENTATION_SUMMARY.md` 的"设计决策"部分
2. 理解当前实现的考虑因素
3. 提出改进方案

---

## 📞 帮助

遇到问题？
1. 查看 [`USAGE_GUIDE.md`](USAGE_GUIDE.md) 的"故障排查"部分
2. 检查 [`DELAY_OVERFLOW_FILES.txt`](DELAY_OVERFLOW_FILES.txt) 的"重要提示"
3. 阅读相关文档的详细说明

---

## 🎉 开始验证

```bash
# 就这一个命令！
./verify_delay_overflow.sh
```

等待结果，然后查看文档了解详情。

---

**祝验证顺利！** 🚀

---

*最后更新: 2025-10-29*  
*版本: 1.0*

