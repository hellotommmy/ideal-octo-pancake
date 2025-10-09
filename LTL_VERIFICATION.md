# LTL 属性验证：Starvation Freedom

## 定义的 LTL 属性

在 `control.pml` 中定义了三个 LTL 属性来检测 starvation freedom：

### 1. `starvation_free_task1`
```promela
ltl starvation_free_task1 { 
    [] ((tcb[1].state == READY) -> <> (EP == 1)) 
}
```
**含义**：如果任务1处于READY状态，那么最终一定会获得执行权（EP == 1）

### 2. `starvation_free_task2`
```promela
ltl starvation_free_task2 { 
    [] ((tcb[2].state == READY) -> <> (EP == 2)) 
}
```
**含义**：如果任务2处于READY状态，那么最终一定会获得执行权（EP == 2）

### 3. `all_starvation_free`
```promela
ltl all_starvation_free {
    ([] ((tcb[1].state == READY) -> <> (EP == 1))) &&
    ([] ((tcb[2].state == READY) -> <> (EP == 2)))
}
```
**含义**：所有任务都是 starvation-free 的

## 如何验证

### 方法1：使用提供的脚本
```bash
./verify_ltl.sh
```

### 方法2：手动验证单个属性
```bash
# 生成验证器
spin -a control.pml

# 编译
gcc -o pan pan.c

# 验证特定属性
./pan -a -N starvation_free_task1
./pan -a -N starvation_free_task2
./pan -a -N all_starvation_free
```

### 方法3：查看反例
如果验证失败，可以查看反例轨迹：
```bash
spin -t control.pml
```

## 验证结果说明

### 成功（Starvation-Free）
```
errors: 0
```
表示该属性被满足，所有READY状态的任务最终都会得到执行。

### 失败（发现Starvation）
```
acceptance cycle (at depth N)
errors: 1
```
表示找到了一个违反属性的执行路径，即存在任务饥饿的情况。

## LTL 语法说明

- `[]` (always, G) - 在所有未来状态中
- `<>` (eventually, F) - 在某个未来状态中
- `->` (implies) - 蕴含
- `&&` - 逻辑与
- `||` - 逻辑或
- `!` - 逻辑非

## 当前模型的验证结果

当前实现**不满足** starvation-free 属性，因为：

1. 任务加入就绪队列后永远不会被移除
2. `OsGetTopTask()` 只读取队首任务，不改变队列状态
3. `NONDET_INTERRUPT` 可能导致调度器重新选择任务
4. 存在这样的执行路径：
   - 任务1在READY状态
   - 但由于non-deterministic的调度决策
   - 任务1可能永远不获得 EP（被饿死）

## 如何修复 Starvation

要使模型满足 starvation-free 属性，可以考虑：

### 选项1：添加公平性约束（Fairness）
```bash
./pan -a -f  # 启用弱公平性（weak fairness）
```

### 选项2：修改调度器
- 确保每个READY任务都会轮流获得执行权
- 使用时间片轮转（Round Robin）
- 确保优先级相同时公平调度

### 选项3：在模型中显式建模公平性
在 Promela 中使用 `progress` 标签标记关键状态。

## 扩展到 N 个任务

对于任意数量的任务，LTL 属性可以这样定义：

```promela
#define STARVATION_FREE(i) ([] ((tcb[i].state == READY) -> <> (EP == i)))

ltl all_tasks_starvation_free {
    STARVATION_FREE(1) && STARVATION_FREE(2) && ... && STARVATION_FREE(N)
}
```

