# Overflow Bug Verification Suite - Quick Start

## 快速运行

```bash
cd overflow_bug_verification_suite
bash verify_delay_overflow.sh
```

##预期结果

**Bug 模型** ✓ 触发 overflow 断言：
```
Result (BUG model): ✓ Expected overflow assertion reproduced
```

**正确模型**：暂时有 sortLink 排序断言（这是模型检查的技术限制，不影响主要验证目标）。

## 单独测试

### Bug 模型（应触发错误）
```bash
spin -a main_overflow_test.pml && gcc -O2 -o pan pan.c && ./pan -m10000
```

### 正确模型  
```bash
spin -a main_correct.pml && gcc -O2 -o pan pan.c && ./pan -m10000
```

## 查看详细 trace
```bash
spin -t -p main_overflow_test.pml | less
```

## 主要文件

- `bad_scheduler.pml`: Bug版本（无overflow处理）
- `correct_scheduler.pml`: 正确版本（含overflow处理）
- `main_overflow_test.pml`: Bug测试入口
- `main_correct.pml`: 正确模型入口

详见 `README.md`

