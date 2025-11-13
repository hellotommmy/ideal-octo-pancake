# Smoke Tests Verification Suite

## 目的

验证 RTOS 基本行为，使用简单的两任务场景

## 运行

```bash
bash verify_smoke.sh
```

## 测试内容

**Smoke Tests** (2个，应失败=正常)
- 验证任务可在无中断时执行

**复杂轨迹** (2个，应通过)
- P2→P1→P2 双重切换序列

**基本性质** (2个，应通过)
- 异常最终返回用户态

## 配置

编辑 `verify_smoke.sh`:
```bash
DEPTH=2000
TIMEOUT=10
```

## 预期

```
Summary: 6/6 tests OK
```

