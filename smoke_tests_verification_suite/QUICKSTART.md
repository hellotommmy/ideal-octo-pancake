# Smoke Tests - Quick Start

## 运行

```bash
cd smoke_tests_verification_suite
bash verify_smoke.sh
```

## 测试说明

**Smoke Tests**: 验证系统允许正常行为（应失败）
**Trace Tests**: 验证不进入特定错误状态
**Basic Tests**: 验证基本性质（应通过）

## 预期输出

```
[1] smoke_P1_user_no_pending ... ✓ FAILED (expected)
[2] smoke_P2_user_no_pending ... ✓ FAILED (expected)
[3] p2_double_context_switch ... ✓ No violation
[4] P2_switching_not_P1_witness_unfolded ... ✓ No violation
[5] back_to_user ... ✓ PASSED
[6] exc_leads_to_user ... ✓ PASSED

Summary: 6/6 tests OK
```

## 调整

编辑 `verify_smoke.sh`:
```bash
DEPTH=1000    # 搜索深度
TIMEOUT=5     # 超时（秒）
```

