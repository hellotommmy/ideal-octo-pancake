# LiteOS-M Suspend/Resume 功能模型

## 概述

本文件 (`resume_suspend.pml`) 是基于 LiteOS-M 调度器的形式化模型，增加了任务挂起(Suspend)和恢复(Resume)功能。

## 新增功能

### 数据结构

1. **TCB 扩展**：
   - 增加 `responseTime` 域，用于sortLink中的排序
   
2. **SortLink 结构**：
   ```promela
   typedef SortLink {
       byte tasks[LIST_SIZE];  /* 任务ID列表 */
       byte count;             /* 任务数量 */
   }
   ```
   - 用于存放被挂起的任务
   - 使用静态数组模拟链表

### 核心函数

1. **OsSchedSuspend(taskId)**
   - 从调度器角度挂起任务
   - 将任务从就绪队列移除
   - 添加到sortLink
   - 设置任务状态为SUSPENDED

2. **OsSchedResume(taskId, needSched)**
   - 从调度器角度恢复任务
   - 从sortLink移除
   - 添加回就绪队列
   - 根据优先级决定是否需要重新调度

3. **LOS_TaskSuspend(taskId)**
   - API层面的挂起函数
   - 关中断保护
   - 调用OsSchedSuspend执行实际挂起

4. **LOS_TaskResume(taskId)**
   - API层面的恢复函数
   - 关中断保护
   - 调用OsSchedResume执行实际恢复
   - 如需调度则触发Systick_Handler

### SortLink操作

1. **initSortLink()** - 初始化sortLink
2. **OsAdd2SortLink(taskId)** - 添加任务到sortLink
3. **OsDeleteSortLink(taskId)** - 从sortLink删除任务

## 验证结果

### 基本验证
```
State-vector 136 byte, depth reached 480, errors: 0
```
✅ 无死锁、无断言失败

### LTL性质验证
```
✅ starvation_free_task1: errors: 0
✅ starvation_free_task2: errors: 0  
✅ all_starvation_free:   errors: 0
```

所有任务都满足无饥饿性质：若任务处于READY状态，则最终会被执行。

## 使用示例

```promela
/* Process1 可以恢复 Process2 */
proctype Process1() {
    do
    :: EXEC_WHEN_CURRENT(1, LOS_TaskResume(2));
    od
}

/* Process2 可以恢复 Process1 */
proctype Process2() {
    do
    :: EXEC_WHEN_CURRENT(2, LOS_TaskResume(1));
    od
}
```

## 注意事项

1. **避免死锁**：不要让任务互相挂起，这会导致死锁
2. **ResponseTime初始化**：每个任务的responseTime必须初始化
3. **中断保护**：Suspend/Resume操作都需要中断保护

## 与 document.md 的对应

本模型实现了 `document.md` 第 891-1003 行描述的 LiteOS-M 挂起/恢复机制：
- 任务状态位标志管理
- 就绪队列操作
- SortLink排序链表
- 中断锁保护
- 调度触发条件

## 编译和验证

```bash
# 编译
spin -a resume_suspend.pml
gcc -o pan pan.c -O2

# 基本验证
./pan -m20000

# LTL验证
./pan -a -N all_starvation_free -m20000
```

