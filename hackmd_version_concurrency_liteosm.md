
# LiteOS-M调度与并发形式化验证报告
谭成松
我们调研LiteOS-M的代码库，通过动态和静态的方式研究系统初始化过程及开始调度后，CPU执行的所有代码，以及控制流在这些代码间如何跳转。分析源码后，选取关键函数作为验证目标，采用SPIN/Promela和Isabelle等语言，对LiteOS-M的调度和并发作出形式化建模和验证。我们
* 梳理分析了LiteOS-M任务调度相关模块函数，确立建模对象
* 建立了LiteOS-M的任务调度方面的数学模型
* 建立了LiteOS-M任务调度与并发的Promela/SPIN模型
* 建立了LiteOSM-M任务调度的Isabelle/HOL模型
* 发现了两个并发性潜在缺陷并提出整改建议
## 一、模型建立
LiteOS-M采用时间片轮转的抢占式调度。支持多任务处理，允许多个任务（或线程）并发运行。这是通过时间分片和任务调度来实现的，确保每个任务获得合理的处理器时间。 LiteOS-M采用基于优先级的调度策略。每个任务都有一个指定的优先级，调度器根据这些优先级来决定哪个任务应该获得处理器资源。高优先级的任务会比低优先级的任务更优先获得执行。LiteOS-M采用抢占式调度。在抢占式调度中，一个正在运行的低优先级任务可以被一个更高优先级的任务抢占（中断），这确保了高优先级任务可以及时响应。
任务可以处于运行、阻塞、退出、就绪几个状态：
![lQLPKHXMVS6hd83NAffNA2iwYsfCTRrpqSEIgHCd-WStAA_872_503](https://hackmd.io/_uploads/SJ6EMQgFlg.png)

我们先梳理与任务调度相关的代码，以确定验证对象。


### 从复位到任务调度的完整系统初始化流程分析

LiteOS-M 的初始化流程遵循明确的路径，从硬件复位到内核设置，再到开启任务调度。Reset_Handler 在上电或系统复位后立即开始执行，随后即开始执行内核C代码。流程如下
```
1. 硬件复位 → Reset_Handler (汇编)
2. 跳转到main() (C语言开始)
3. UartInit() (硬件外设初始化)
4. LOS_KernelInit() (内核初始化)
   ├── OsMemSystemInit() (内存管理初始化)
   ├── ArchInit() (架构相关初始化)
   ├── OsTickTimerInit() (系统时钟初始化)
   ├── OsTaskInit() (任务管理初始化)
   │   └── OsSchedInit() (调度器初始化)
   └── 其他子系统初始化...
5. 其他模块初始化 (文件系统、网络、Shell等)
6. LOS_Start() (启动调度器)
   └── ArchStartSchedule() → OsSchedStart()
7. 系统进入多任务调度状态
```
我们在本项目中关注的内容为：
初始化调用链：
```Reset_Handler → main() → LOS_KernelInit() → OsTaskInit() → OsSchedInit()```
调度器启动到进入多任务调度过程：
```LOS_Start() --> ArchStartSchedule() --> OsSchedStart --> 多任务调度状态```
#### 硬件复位和汇编启动

`los_startup_gcc.s` 中的 `Reset_Handler` 执行关键的底层初始化。 ARM Cortex-M4 架构下，首先从地址 0x00000000 加载主堆栈指针，然后从位于 0x00000004 的向量表中提取 Reset_Handler 地址。Reset_Handler 执行以下基本步骤：将初始化数据从 Flash 复制到 SRAM、将 BSS 段初始化为零、配置基本 CPU 设置，并在跳转到 main() 函数之前建立适当的内存布局。
典型的内存布局将向量表放置在 Flash 基址 (0x08000000)，代码段紧随其后，而位于 0x20000000 的 SRAM 包含运行时数据结构。此阶段完全使用汇编语言执行。我们当前对其不作建模。
#### 应用层main()函数启动

Reset_Handler完成底层初始化后，跳转到应用程序的main()函数。在OpenHarmony中，main()函数位于具体的板级支持包中，如`/device/qemu/arm_mps2_an386/liteos_m/board/main.c`。该函数首先进行硬件外设初始化（如UART），然后调用`LOS_KernelInit()`启动LiteOS-M内核。

####  任务调度模块涉及主要变量及数据结构概述

LiteOS-M 调度模块维护全局的就绪队列和阻塞队列等状态，用于选择下一个运行的任务。就绪队列使用多条入侵式双向链表 `g_priQueueList[OS_PRIORITY_QUEUE_NUM]` 实现，每条链表对应一个优先级（通常为 0~31），存放该优先级的所有就绪任务。优先级越高，对应的数值越低。（0为最高优先级，31为最低优先级）。同时，用 `g_queueBitmap` 位图记录各队列是否非空（第 i 位为 1 表示优先级 i 的队列非空），查找时可以通过位运算（ARM中为`CLZ`，Count Leading Zeros）快速定位最高优先级的非空队列。模块还维护一个按照任务唤醒（响应）时间从早到晚排序的等待队列（`g_taskSortLinkList`），存放处于有限阻塞状态（如延时或限时等待）的任务。每次调度时，如果有任务在等待队列中到期，调度器会将其唤醒并移动到就绪队列。此外，调度模块记录下一次调度响应的任务信息：`g_schedResponseID` 和 `g_schedResponseTime`。在系统启动或无其他事件时，`g_schedResponseTime` 初始化为最大值（`OS_SCHED_MAX_RESPONSE_TIME`），`g_schedResponseID` 置为 `OS_INVALID`。此外，调度模块还保存与系统时钟频率相关的时间参数（如时间片长度等），在时钟频率变化时需要更新这些参数。
#### 模块初始化

系统启动时，应用程序main()函数调用`LOS_KernelInit()`启动内核初始化。`LOS_KernelInit()`按顺序初始化各个子系统，其中`OsTaskInit()`负责任务管理子系统初始化，并在最后调用`OsSchedInit()`初始化调度模块状态。

`OsSchedInit()`函数主要完成以下工作：遍历所有优先级，将每条就绪链表初始化为空链表，并将`g_queueBitmap`清零（表示当前没有就绪任务）。通过`OsGetSortLinkAttribute(OS_SORT_LINK_TASK)`获取预定义的全局任务排序链表管理结构体指针，该结构体用于管理所有延时和等待任务的有序链表，然后调用`OsSortLinkInit()`初始化排序链表。完成基础数据结构初始化后，调用`SchedTimeBaseInit()`根据系统时钟频率设置时间相关参数（如时间片长度、调度精度等），保证调度器能正确处理时间相关的调度决策。

初始化完成后，main()函数继续执行其他模块初始化，最后调用`LOS_Start()`启动调度器。`LOS_Start()`通过调用链`LOS_Start() → ArchStartSchedule() → OsSchedStart()`正式启动调度。`OsSchedStart()`选择最高优先级的就绪任务作为初始运行任务，设置`g_taskScheduled = TRUE`开启调度标志，记录任务开始时间，并配置系统定时器以支持时间片轮转和任务超时唤醒功能。

### 调度运行机制

调度核心由 `OsSchedTaskSwitch()` 完成，即选择下一个就绪任务并切换任务上下文。切换过程大致如下：

* **消耗并更新时间片**：首先调用 `OsTimeSliceUpdate()` 更新当前运行任务已用的时间片。如果任务还未阻塞，则会消耗其剩余时间；如果任务进入阻塞状态（如延时或挂起），则跳过后续的时片调度逻辑。
* **任务重新排队**：根据当前运行任务的新状态，将其放回合适的队列。如果任务仍为就绪（未阻塞），则重新排入就绪队列；如果是有限阻塞（将在未来被唤醒），则插入等待队列。若启用了时间片轮转调度（`LOSCFG_BASE_CORE_TIMESLICE`），当任务耗尽时间片时会先调用 `LOS_Schedule()` 请求调度；同时在重新入队时，如果时间片已用尽则将任务放到就绪队列尾部，否则放在队列头部，以便平均分配 CPU 时间。在当前场景中未启用时间片轮转，这一步跳过。
* **获取下一个就绪任务**：调用 `OsGetTopTask()` 在就绪队列中找到最高优先级的非空队列，并取出队头任务作为下一运行任务；如果所有队列均空，则返回空闲（idle）任务。此操作通过 `g_queueBitmap` 位图加速查找。
* **状态更新与设置下次调度时间**：如果选出的新任务与原运行任务不同，则需要执行上下文切换。切换前会更新两个任务的状态：将当前任务标记为非运行状态（可能为就绪或阻塞态），将新任务标记为运行状态。然后记录新任务的起始时间（`startTime`），并调用 `OsSchedSetNextExpireTime()` 设定调度模块的下次响应时间；该时间一般为 "当前任务的时间片结束时间" 与 "等待队列中最早唤醒任务的到期时间" 中的较小者。给出了时间片结束时间的计算示例。这样，下次 SysTick 中断触发时，调度器就会在正确的时间点进行响应。

调度功能通过两种方式触发：一是系统时钟（SysTick）中断；二是任务主动调用 `LOS_Schedule()` 或阻塞后自动调度。**SysTick 中断处理（`LOS_SchedTickHandler`）**首先关闭中断进入临界区，然后更新系统 tick 计数并清中断标志。随后，调度器扫描等待队列，将所有到期任务唤醒：对超时等待状态（`OS_TASK_STATUS_PEND`）的任务，先设置超时标记再移出队列；对正常延时（非挂起）到期的任务，则直接从等待队列移回就绪队列；挂起状态任务保持不动。完成扫描后，`LOS_SwtmrScan()`（软件定时器扫描）等自定义扫描函数也会被调用，然后进行一次任务调度（通常调用 `LOS_Schedule()` 触发 PendSV）。**主动调度接口（`LOS_Schedule()`）**可由任务在任意时刻调用，例如当前任务主动挂起或退出时，会通过该接口立即切换到下一个就绪任务。

通过上述机制，LiteOS-M 在 Cortex-M4 等架构下实现了优先级抢占的任务调度。如未启用时间片调度，则高优先级任务阻塞时才会切换到下一级；启用后在相同优先级下还会进行时间片轮转，确保所有就绪任务公平使用 CPU。



### 对应C函数分析
### LOSTaskCB 结构体关键数据域分析


## 任务控制块 LosTaskCB

任务控制块（Task Control Block，TCB）是 LiteOS-M 内核管理每个任务的重要数据结构。每个任务对应一个 `LosTaskCB` 结构体实例，记录了任务的所有关键信息，例如任务状态、优先级、栈指针以及链表指针等。**LosTaskCB** 相当于任务在内核中的"身份证"，反映任务生命周期内的运行情况。其主要字段包括：

* **stackPointer**：任务栈指针，指向任务当前上下文的栈顶（保存寄存器等现场）。
* **taskStatus**：任务状态标志，使用位标识表示任务是否处于就绪、运行、阻塞、退出等状态。
* **priority**：任务优先级，数值越小优先级越高（LiteOS-M 默认支持32级优先级，0为最高）。
* **timeSlice**：时间片计数，表示该任务在当前调度周期还可运行的时间片数。
* **stackSize**：任务栈大小（字节数）。
* **topOfStack**：任务栈顶的初始地址（栈空间的起始地址）。
* **taskID**：任务ID，通常对应于任务池数组中的索引值。
* **taskEntry**：任务入口函数的指针，即任务运行时执行的起始地址。
* **taskName**：任务名称（用于调试和管理）。
* **taskSem**/**taskMux**：指向任务当前等待的信号量或互斥锁（如果任务阻塞于同步原语，则记录阻塞原因）。
* **pendList**：双向链表节点，用于将该任务挂载到各种任务链表中（如就绪队列、阻塞队列或空闲/回收链表）。
* **sortList/timerList**：定时排序链表节点，用于任务延时（delay）或定时唤醒时将任务按超时时间排序挂载。
* *(其他字段如事件信息、错误码、CPU亲和性等，此处略)*

上述字段中，最重要的是 `taskStatus` 和若干用于链表的指针域。内核通过更改 `taskStatus` 标志来表示任务的当前状态，并通过 `pendList` 等链表指针将任务插入或移出各种管理队列。例如，当任务阻塞时，会将其 `LosTaskCB.pendList` 插入相应的阻塞队列；当任务就绪或空闲时，也会使用该字段加入就绪队列或空闲链表。这样的设计使得 `LosTaskCB` 可以灵活地在不同链表中移动，参与内核的调度和资源管理。




####  调度器初始化 (OsSchedInit 等)

在 LiteOS-M 内核启动过程中，会调用调度器初始化函数 `OsSchedInit()` 来设置调度所需的全局结构。`OsSchedInit()` 主要完成以下工作：

* **就绪队列初始化**：系统支持 `OS_PRIORITY_QUEUE_NUM` 个优先级（32 个），为每个优先级初始化一个双向链表用于存放就绪态任务。链表初始时指向自身，表示该优先级暂时没有任务。同时，用位图 `g_queueBitmap` 标记哪些优先级队列非空，初始化时清零。

* **排序链表初始化**：获取任务超时排序链表属性 `g_taskSortLinkList` 并调用 `OsSortLinkInit()` 初始化之。任务排序链表用于管理具有超时的任务（如延时睡眠任务）的超时节点。

* **调度响应时间初始化**：将全局调度响应时间 `g_schedResponseTime` 设置为最大值（通常为 `OS_SCHED_MAX_RESPONSE_TIME`），表示当前无调度延迟。

上述初始化完成后，`OsSchedInit()` 返回 `LOS_OK`，表示调度器就绪：

```c
UINT32 OsSchedInit(VOID)
{
    UINT16 pri;
    // 初始化每一个优先级队列的双向链表
    for (pri = 0; pri < OS_PRIORITY_QUEUE_NUM; pri++) {
        LOS_ListInit(&g_priQueueList[pri]);
    }
    g_queueBitmap = 0;                     // 就绪队列位图清零
    g_taskSortLinkList = OsGetSortLinkAttribute(OS_SORT_LINK_TASK);
    if (g_taskSortLinkList == NULL) {
        return LOS_NOK;
    }
    OsSortLinkInit(g_taskSortLinkList);    // 初始化任务超时排序链表
    SchedTimeBaseInit();                   // 初始化调度时间基准参数
    return LOS_OK;
}
```



> `OsSchedInit()` 通常在系统任务初始化 (`OsTaskInit()`) 时被调用。只有初始化完成后，后续任务创建和调度功能才能正常工作。

#### 启动调度器 (OsSchedStart)

当所有初始任务创建完毕、系统准备开始多任务调度时，内核会调用 `OsSchedStart()` 正式启动调度器。其调用链为：`LOS_Start()` → `ArchStartSchedule()` → `OsSchedStart()`。`OsSchedStart()` 的主要步骤如下：

1. **关闭中断**：调度启动过程中先关中断以避免中途被打断。
2. **选取最高优先级任务**：通过 `OsGetTopTask()` 从就绪队列中取出最高优先级的任务作为即将运行的任务 `newTask`。
3. **设置任务状态**：将选中的 `newTask` 状态设为运行态 (`OS_TASK_STATUS_RUNNING`)，并更新全局当前运行任务指针 `g_losTask.runTask` 和新调度任务指针 `g_losTask.newTask` 都指向该任务。
4. **记录开始时间**：记录任务开始运行的时间戳 `startTime`。
5. **移出就绪队列**：将该任务从其优先级的就绪队列中删除，以表示它已被调度运行。
6. **启动系统Tick计时**：调用 `OsTickSysTimerStartTimeSet()` 和 `OsSwtmrResponseTimeReset()`，重置系统滴答定时器和软定时器模块的参考起点。
7. **开启调度开关**：设置 `g_taskScheduled = TRUE` 标记调度器已激活运行。
8. **初始化调度响应时间**：再次将 `g_schedResponseTime` 设为最大值，`g_schedResponseID` 设为无效，以备下次调度使用。
9. **设定首个时间片到期时间**：根据当前任务的时间片长度设置其下次到期时间，用于时间片轮转调度。即调用 `OsSchedSetNextExpireTime(taskID, startTime + timeSlice)` 记录该任务的时间片结束时间。

如下是 `OsSchedStart()` 代码关键片段：

```c
VOID OsSchedStart(VOID)
{
    (VOID)LOS_IntLock();                      // 关闭中断
    LosTaskCB *newTask = OsGetTopTask();      // 获取最高优先级任务
    newTask->taskStatus |= OS_TASK_STATUS_RUNNING;
    g_losTask.newTask = newTask;
    g_losTask.runTask = g_losTask.newTask;    // 当前运行任务指向 newTask
    newTask->startTime = OsGetCurrSchedTimeCycle();
    OsSchedTaskDeQueue(newTask);              // 从就绪队列中删除该任务
    OsTickSysTimerStartTimeSet(newTask->startTime);
    OsSwtmrResponseTimeReset(newTask->startTime);
    g_taskScheduled = TRUE;                   // 标记调度器已启用
    g_schedResponseTime = OS_SCHED_MAX_RESPONSE_TIME;
    g_schedResponseID = OS_INVALID;
    OsSchedSetNextExpireTime(newTask->taskID,
                              newTask->startTime + newTask->timeSlice); // 设定时间片到期时间
}
```



成功执行 `OsSchedStart()` 后，系统调度器开始工作，初始任务将在随后开启的多任务环境中运行。接下来，CPU通过汇编函数 `HalStartToRun()` 切换到第一个任务的上下文开始执行。



### 核心调度函数与时间片轮转

LiteOS-M 内核提供了一组核心函数来实现任务的切换和时间片轮转调度，包括 `OsSchedTaskSwitch`、`OsSchedScanTimerList` 等，以及用于控制调度的锁机制函数。下面分别介绍这些函数的作用与调用关系。

#### OsSchedTaskSwitch：任务切换核心

`OsSchedTaskSwitch()` 是执行具体任务切换的核心函数。当需要进行任务调度（如有更高优先级任务就绪或当前任务时间片耗尽）时，内核会调用该函数完成任务上下文的切换。其关键步骤如下：

* **更新时间片**：函数开头调用 `OsTimeSliceUpdate()` 更新当前运行任务的时间片消耗情况。

* **处理当前任务状态**：根据当前任务的状态，将其重新排队到合适的队列中。如果任务处于延时或等待状态，则添加到排序链表；如果仍为就绪状态，则重新加入就绪队列。

* **获取最高优先级任务**：通过 `OsGetTopTask()` 获取当前就绪队列中最高优先级的任务作为 `newTask`。

* **任务切换检查**：如果新任务与当前任务不同，则进行任务切换。更新任务状态，设置新任务的开始时间，并调用相关钩子函数。

* **设置下次调度时间**：调用 `OsSchedSetNextExpireTime()` 设定下次调度的响应时间。

下面是 `OsSchedTaskSwitch()` 的核心代码片段：

```c
BOOL OsSchedTaskSwitch(VOID)
{
    UINT64 endTime;
    BOOL isTaskSwitch = FALSE;
    LosTaskCB* runTask = g_losTask.runTask;
    OsTimeSliceUpdate(runTask, OsGetCurrSchedTimeCycle());

    // 根据任务状态重新排队
    if(runTask->taskStatus & (OS_TASK_STATUS_PEND_TIME | OS_TASK_STATUS_DELAY)) {
        OsAdd2SortLink(&runTask->sortList, runTask->startTime, runTask->waitTimes, OS_SORT_LINK_TASK);
    } else if(!(runTask->taskStatus & OS_TASK_BLOCKED_STATUS)) {
        OsSchedTaskEnQueue(runTask);
    }

    LosTaskCB* newTask = OsGetTopTask();
    g_losTask.newTask = newTask;

    if(runTask != newTask) {
        // 执行任务切换
        runTask->taskStatus &= ~OS_TASK_STATUS_RUNNING;
        newTask->taskStatus |= OS_TASK_STATUS_RUNNING;
        newTask->startTime = runTask->startTime;
        isTaskSwitch = TRUE;
    }

    OsSchedTaskDeQueue(newTask);
    // 设置下次调度时间
    if(newTask->taskID != g_idleTaskID) {
        endTime = newTask->startTime + newTask->timeSlice;
    } else {
        endTime = OS_SCHED_MAX_RESPONSE_TIME - g_tickResponsePrecision;
    }
    OsSchedSetNextExpireTime(newTask->taskID, endTime);
    
    return isTaskSwitch;
}
```



上述代码执行后，新任务开始运行，旧任务被挂起或放入就绪队列等待下次调度。整个过程确保切换的安全性。


#### OsSchedScanTimerList：任务超时扫描

`OsSchedScanTimerList()` 函数在每个系统Tick中断中被调用，用于扫描任务超时链表，以处理因延时或等待超时而阻塞的任务。其主要工作包括：

* 遍历全局 **任务排序链表**（`g_taskSortLinkList`），检查是否有任务的等待超时时间已到期。如果有，则将这些任务从等待状态移出，恢复为就绪态。

* 对于因超时恢复就绪的任务，如果其优先级高于当前运行任务，或者与当前任务同优先级但采用时间片轮转策略，那么在本次Tick中断后需要进行一次调度切换，使高优先级任务或同级新就绪任务获得CPU。

LiteOS-M 源码中，在 Tick 中断处理里调用 `OsSchedScanTimerList()`，并在代码注释中标明"任务扫描，发起调度"。这意味着只要有任务超时或者其他原因使得更高优先级任务变为就绪，`OsSchedScanTimerList()` 完成后将设置好相应状态，随后在中断退出时通过调度器切换到优先级最高的任务运行。

需要注意，`OsSchedScanTimerList()` 本身并不直接调用任务切换，而是调整相关任务的状态和就绪队列。真正的切换仍由稍后的调度器调用来完成（可能是中断退出时或通过 `LOS_Schedule()` 完成）。

#### LOS_Schedule：触发调度

无论是时间片检查还是任务超时扫描，只要发现需要切换任务，最终都会调用 `LOS_Schedule()` 来触发实际的调度过程。`LOS_Schedule()` 是调度入口函数，它会根据当前调度器状态决定是否执行任务切换：

* 如果 **调度未启用** 或 **调度被锁定**，则直接返回不做切换。其中 `OsCheckKernelRunning()` 判断用于确保调度器已启动; 而调度锁会在下面介绍。

* 否则，`LOS_Schedule()` 会调用 `ArchTaskSchedule()` 完成任务选择和上下文切换，然后返回。

简而言之，`LOS_Schedule()` 是内核中显式触发一次任务调度的API。当我们调用该函数时，如果有更高优先级任务就绪，或者当前任务已不再适合继续运行，内核将切换到新的任务。很多内部场景都会调用它，例如在解锁调度、任务优先级变更、任务删除/挂起等操作后。时间片耗尽正是通过它来触发任务轮转的。

### Tick中断与调度流程

系统时钟中断 (Tick IRQ) 是操作系统实现时间片和延时功能的基础。LiteOS-M默认每10ms触发一次 SysTick 中断。每次 Tick 中断发生时，内核执行 `OsTickHandler()` 进行时钟心跳的处理，其中包含了与任务调度的联动。整个Tick中断调度流程如下：

1. **进入Tick中断**：硬件定时器触发 SysTick 中断，CPU跳转执行 LiteOS-M 的时钟中断服务例程，即 `OsTickHandler()`。

2. **更新系统节拍计数**：`OsTickHandler` 开头会先更新系统时间基准（调用 `OsUpdateSysTimeBase()`）以记录系统已运行的时间。

3. **调用调度Tick处理**：接着调用 `LOS_SchedTickHandler()` 进行调度相关的Tick处理，包括任务超时扫描和时间片更新。

4. **任务超时扫描**：在 `LOS_SchedTickHandler()` 中调用 `OsSchedScanTimerList()` 遍历任务超时链表，将所有到期的延时任务重新置为就绪态。如果有任务因为超时被唤醒，且其优先级较高，内核会意识到需要一次调度。

5. **软定时器扫描**：如果系统启用了软件定时器模块 (`LOSCFG_BASE_CORE_SWTMR`)，也会在 Tick 中断中调用软件定时器扫描函数检查软件定时器是否超时，并执行相应的定时回调。

6. **退出中断触发调度**：一旦 `OsTickHandler()` 完成以上工作，Tick中断将结束，此时如果之前任务扫描中发现需要调度，系统将在中断退出时切换到新的任务上下文。对Cortex-M架构而言，这通常通过触发PendSV中断来完成任务切换。换句话说，当 Tick 中断返回时，下一个运行的可能已经是新任务。

`OsTickHandler()` 函数伪代码如下（省略了一些平台相关处理）：

```c
VOID OsTickHandler(VOID)
{
    OsUpdateSysTimeBase();       // 更新系统时间基准
    LOS_SchedTickHandler();      // 调度Tick处理
}
```



结合前面的分析，可以看出：**Tick中断是触发时间片轮转和任务调度的关键**。它在适当的时机调用 `OsSchedScanTimerList()` 等函数，从而决定当前任务是否应当让出CPU。如果当前任务用完了时间片，且同优先级有其他任务就绪，或者有更高优先级的新任务就绪，都会在这一次中断后发生任务切换。

### 调度锁与并发控制 (g_losTaskLock)

在某些场景下，开发者或内核需要暂时禁止任务调度，以防止关键代码段被任务切换打断。LiteOS-M 提供了 **调度锁** 机制来实现这一点。调度锁通常由一个全局计数器表示，该计数器为 `g_losTaskLock`。对应的API有：

* `LOS_TaskLock()` ：锁定任务调度，将 `g_losTaskLock` 加1。在锁住期间，内核不再切换任务，即使有更高优先级任务就绪，调度也会被延后。

* `LOS_TaskUnlock()` ：解锁任务调度，将 `g_losTaskLock` 减1，并在计数降为0时触发一次调度。如果解锁后仍大于0，表示还有嵌套的锁未释放，不进行调度切换。

下面是调度锁定/解锁的代码实现片段：

```c
LITE_OS_SEC_TEXT_MINOR VOID LOS_TaskLock(VOID)
{
    UINTPTR intSave;
    intSave = LOS_IntLock();
    g_losTaskLock++;               // 调度锁计数加一
    LOS_IntRestore(intSave);
}

LITE_OS_SEC_TEXT_MINOR VOID LOS_TaskUnlock(VOID)
{
    UINTPTR intSave;
    intSave = LOS_IntLock();
    if (g_losTaskLock > 0) {       // 有锁时计数减一
        g_losTaskLock--;
        if (g_losTaskLock == 0) {  // 解锁至0，恢复调度
            LOS_IntRestore(intSave);
            LOS_Schedule();       // 触发一次调度
            return;
        }
    }
    LOS_IntRestore(intSave);
}
```



当调用 `LOS_TaskLock()` 后，即便有中断使高优先级任务就绪，`LOS_Schedule()` 也不会真正切换任务，因为调度被锁住了（内核中会检查 `g_losTaskLock` 状态）。只有对应数量的 `LOS_TaskUnlock()` 调用使得锁计数降为0时，才会在解锁的瞬间检查是否需要调度，并通过调用 `LOS_Schedule()` 来执行实际的任务切换。这确保了在锁定期间当前任务不会被抢占，从而保护临界区代码的原子性。

需要注意，调度锁会阻止任务级别的切换，但**不会屏蔽中断**。因此在锁定期间，中断服务例程仍然会执行，只是其中如果尝试切换任务（例如时间片用完时调用了 `LOS_Schedule()`），会因为锁存在而推迟。等到稍后解锁时，`LOS_Schedule()` 会再被调用以完成当时被推迟的调度。

#### 并发调度场景示例

设想如下场景：任务A正执行关键代码并调用了`LOS_TaskLock()`锁定调度，这时一个中断发生唤醒了更高优先级的任务B。本应立即切换去运行B，但由于调度被锁，任务A不会被抢占，B保持就绪状态。随后任务A执行完关键段调用`LOS_TaskUnlock()`解锁调度。此时系统发现有更高优先级的B在就绪队列，`LOS_TaskUnlock()` 内部将调用`LOS_Schedule()`。`LOS_Schedule()` 进而调用 `ArchTaskSchedule()`，最终切换到任务B运行。整个过程保证了任务A的关键段不被打断，同时也确保锁释放后高优先级任务能够及时获取CPU。

### 中断触发调度的调用链条

综合以上机制，可以梳理出LiteOS-M中**时间片轮转调度的调用链**及中断调度流程如下：

1. **时钟中断触发**：每当系统Tick中断到来时，进入`OsTickHandler()`。此时中断上下文会暂时打断当前任务的执行。

2. **Tick处理及任务扫描**：在`OsTickHandler()`中，首先更新系统时间基准，然后调用`LOS_SchedTickHandler()`进行调度处理。在调度处理中会调用`OsSchedScanTimerList()`扫描任务超时链表，将到期任务移至就绪队列。

3. **时间片更新**：在 `LOS_SchedTickHandler()` 中还会调用 `OsTimeSliceUpdate()` 更新当前运行任务的时间片。

4. **中断结束调度**：当`OsTickHandler()`执行完毕并即将退出中断时，如果发现需要调度（通过 `LOS_CHECK_SCHEDULE` 检查），系统将调用 `ArchTaskSchedule()` 执行一次实际的任务上下文切换。也就是说，内核在中断退出时通过任务调度完成从旧任务到新任务的切换。因此，中断一返回，CPU便进入了新任务的运行上下文。

5. **任务继续执行**：被切换下的原任务此时已变为就绪态（或等待态），排在就绪队列中；新任务开始占用CPU运行，直到遇到下一次可触发调度的时机（例如更高优先级任务就绪或其时间片耗尽）。

用更直观的顺序图表示：

* **[中断发生]** → **OsTickHandler** (更新时间基准) → **LOS_SchedTickHandler** (调度Tick处理) → **OsSchedScanTimerList** (扫描超时任务) → **[中断即将返回]** → **ArchTaskSchedule** (如需调度则执行任务切换) → **[切换到新任务运行]**.

在此链条中，**调度锁 (g_losTaskLock)** 会影响 `LOS_Schedule()` 的执行时机。如果在中断中发起调度但被锁，任务切换会被延迟，到 `LOS_TaskUnlock()` 时才真正调用 `LOS_Schedule()` 完成切换。因此，调度锁确保了在并发情况下的调度有序进行，不会因中断而破坏临界区，但也保证锁一旦释放，积累的调度请求会被及时处理。


### 总结

LiteOS-M 4.0/4.1 的时间片轮转调度通过 **Tick中断 + 任务扫描 + 调度锁机制** 协同实现：

* 调度器初始化 (`OsSchedInit`) 初始化建立就绪队列和超时链表。
* 调度启动 (`OsSchedStart`) 选定初始任务运行，并开启调度开关，系统进入多任务调度状态。
* 核心调度函数 (`OsSchedTaskSwitch`) 完成任务的实际切换，保证切换过程的正确性。
* Tick中断处理 (`OsTickHandler`) 每周期扫描等待任务 (`OsSchedScanTimerList`)，从而决定是否需要切换任务。
* 调度锁 (`g_losTaskLock`) 提供了并发保护，防止关键区间被任务切换打断，通过`LOS_TaskLock/Unlock`成对使用实现锁定和释放调度。
* 当有更高优先级任务就绪时，内核通过调用`LOS_Schedule()`来触发调度，让出CPU执行权。在调度锁未锁定的情况下，`LOS_Schedule()` 将调用底层的任务切换流程，使新任务获得CPU。



## 二、数学描述
基于 LiteOS-M任务调度的实际结构，整理出LiteOS-M调度的数学描述。
### 系统状态定义

我们可将系统状态表示为各任务所在状态的集合及当前运行任务。定义：

* 任务集合 $\mathcal{T}=\{T_1,T_2,\dots,T_N\}$. 每个任务 $T_i$ 具有优先级 $p_i\in{0,1,\dots,31}$（注意优先级与数字大小相反，0为最高优先级）、状态$\sigma_i$、剩余时间片$\tau_i$、所执行的程序状态$\Sigma_i$。

  **程序状态$\Sigma_i$的详细定义**：对于任务$T_i$，其程序状态$\Sigma_i$是一个四元组：
  $$\Sigma_i = (PC_i, \mathcal{V}_i, \mathcal{S}_i, \mathcal{I}_i)$$
  其中：
  - $PC_i \in \mathbb{N}$：程序计数器，指向当前执行指令的位置
  - $\mathcal{V}_i$：任务局部变量状态映射，$\mathcal{V}_i: VarName \rightarrow Value$
  - $\mathcal{S}_i$：任务栈状态，包含函数调用栈和寄存器上下文
  - $\mathcal{I}_i$：指令序列，$\mathcal{I}_i = \{I_0, I_1, \ldots, I_k\}$

**整体系统状态定义**：定义系统在任意时刻$t$的完整状态为七元组：
$$\Psi(t) = (\{\Sigma_1(t), \Sigma_2(t), \ldots, \Sigma_N(t)\}, \mathcal{G}(t), C(t), \mathcal{R}(t), \mathcal{D}(t), \mathcal{T}(t), \mathrm{runTask}(t))$$
其中：
- $\{\Sigma_1(t), \Sigma_2(t), \ldots, \Sigma_N(t)\}$：所有任务的程序状态集合
- $\mathcal{G}(t)$：全局变量状态映射，$\mathcal{G}: GlobalVarName \rightarrow Value$
- $C(t)$：系统寄存器状态，定义为五元组：
  $$C(t) = (C_{gen}(t), C_{ret}(t), C_{pc}(t), C_{int}(t), C_{timer}(t))$$
  - $C_{gen}(t): [1, K] \rightarrow Value$：普通寄存器集合，$K$为寄存器总数常量
  - $C_{ret}(t) \in Address$：返回地址寄存器（单个）
  - $C_{pc}(t) \in Address$：程序计数器寄存器（单个）
  - $C_{int}(t): [1, M] \rightarrow \{0, 1\}$：中断控制寄存器，$M$为支持的中断数量
    * $C_{int}(i) = 1$表示中断$i$处于pending状态
    * 初始化时：$\forall i \in [1, M]: C_{int}(i) = 0$
  - $C_{timer}(t) \in \mathbb{N}$：系统时钟倒计时寄存器
    * 每次状态转换递减：$C_{timer}(t+1) = C_{timer}(t) - \delta(I)$
    * 其中$\delta(I)$为指令$I$的执行开销（随机值或基于指令+内存访问的确定值）
    * 当$C_{timer}(t) \leq 0$时触发系统时钟中断，设置$C_{int}(SysTick) = 1$
- $\mathcal{R}(t)$：优先级就绪队列状态，定义为：
  $$\mathcal{R}(t) = (\{R_0(t), R_1(t), \ldots, R_{31}(t)\}, B(t))$$
  - $R_p(t) = (TS_p, index_p)$：优先级$p$的就绪队列
  - $B(t)$：就绪队列位图，$B[p]=1$当且仅当$R_p \neq \emptyset$
- $\mathcal{D}(t)$：延时/阻塞队列，$\mathcal{D}(t) = \{(T_i, d_i) \mid T_i \in \mathcal{B}, d_i > 0\}$
- $\mathcal{T}(t)$：时间片状态，$\mathcal{T}(t) = \{\tau_1(t), \tau_2(t), \ldots, \tau_N(t)\}$
- $\mathrm{runTask}(t) \in [1, N] \cup \{\perp\}$：当前正在执行的任务ID，$\perp$表示无任务执行

**寄存器-变量绑定关系**：对于每个任务$T_i$，定义绑定映射：
$$\beta_i: VarName_i \rightharpoonup [1, K]$$
其中$VarName_i \subset VarName$是任务$T_i$的局部变量名集合，$\rightharpoonup$表示部分映射。我们假设系统变量绑定函数是唯一给定的常量，因而不作为系统状态的一部分参与转换规则。

系统状态转换定义为：
$$\Psi(t) \rightarrow \Psi(t+1)$$
转换由当前执行任务的指令类型决定，无需外部事件参数。

  指令类型分为：
  - **普通指令**：$I_{normal} \in \{assign, arithmetic, branch, \ldots\}$，修改$\mathcal{V}_i$、$PC_i$，还有可能$\mathcal{G}$
  - **调度相关指令**：$I_{sched} \in \{yield, delay, suspend, resume, \ldots\}$，可能触发任务状态转换，修改
  - **同步指令**：$I_{sync} \in \{lock, unlock, wait, signal, \ldots\}$，涉及任务间同步

  程序状态转换根据当前执行任务的指令类型分为三种：

  **普通指令转换**：
  $$(\{\Sigma_1(t), \ldots, \Sigma_N(t)\}, \mathcal{G}(t), C(t), \mathcal{R}(t), \mathcal{D}(t), \mathcal{T}(t), \mathrm{runTask}(t)) \xrightarrow{local}$$
  $$(\{\Sigma_1(t), \ldots, \Sigma_m'(t), \ldots, \Sigma_N(t)\}, \mathcal{G}'(t), C'(t), \mathcal{R}(t), \mathcal{D}(t), \mathcal{T}(t), \mathrm{runTask}(t))$$
  当且仅当$\mathrm{runTask}(t) = m$且$\mathcal{I}_m[PC_m] \in I_{normal}$时发生。
  
  **修改的域**：
  - $\Sigma_m'(t)$：当前执行任务的程序状态（$PC_m$, $\mathcal{V}_m$, $\mathcal{S}_m$, $\mathcal{I}_m$）
  - $\mathcal{G}'(t)$：可能修改的全局变量
  - $C'(t) = (C_{gen}'(t), C_{ret}(t), C_{pc}(t), C_{int}(t), C_{timer}'(t))$：
    * $C_{gen}'(t)$：根据绑定关系$\beta_m$同步更新的普通寄存器
    * 返回地址和PC寄存器保持不变
    * 中断控制寄存器保持不变
    * $C_{timer}'(t) = C_{timer}(t) - \delta(\mathcal{I}_m[PC_m])$：倒计时递减
  - $\mathcal{R}(t)$、$\mathcal{D}(t)$、$\mathcal{T}(t)$：就绪队列、延时队列、时间片状态保持不变
  - $\mathrm{runTask}(t)$：执行任务ID保持不变

  **局部转换的详细形式**：
  $$\Sigma_m(t) = (PC_m, \mathcal{V}_m, \mathcal{S}_m, \mathcal{I}_m) \xrightarrow{normal} (PC_m', \mathcal{V}_m', \mathcal{S}_m', tail(\mathcal{I}_m))$$
  $$\mathcal{G}(t) \xrightarrow{normal} \mathcal{G}'(t) \text{ （如果指令涉及全局变量）}$$
  $$\forall v \in VarName_m \cap dom(\beta_m): C_{gen}(\beta_m(v)) \leftarrow \mathcal{V}_m'(v)$$

  **调度指令转换**：
  $$(\{\Sigma_1(t), \Sigma_2(t), \ldots, \Sigma_N(t)\}, \mathcal{G}(t), C(t), \mathcal{R}(t), \mathcal{D}(t), \mathcal{T}(t), \mathrm{runTask}(t)) \xrightarrow{sched}$$
  $$(\{\Sigma_1'(t), \Sigma_2'(t), \ldots, \Sigma_N'(t)\}, \mathcal{G}'(t), C'(t), \mathcal{R}'(t), \mathcal{D}'(t), \mathcal{T}'(t), \mathrm{runTask}'(t))$$
  当且仅当$\mathrm{runTask}(t) = m$且$\mathcal{I}_m[PC_m] \in I_{sched}$时发生。
  
  **修改的域**：
  - $\{\Sigma_i'(t)\}$：可能修改任意任务状态（任务挂起、恢复、删除等）
  - $\mathcal{G}'(t)$：可能修改全局调度变量
  - $C'(t) = (C_{gen}'(t), C_{ret}'(t), C_{pc}'(t), C_{int}(t), C_{timer}'(t))$：
    * 上下文切换时保存当前任务寄存器到栈中
    * 恢复新任务寄存器从栈中
    * 中断控制寄存器保持不变
    * $C_{timer}'(t) = C_{timer}(t) - \delta(\mathcal{I}_m[PC_m])$：倒计时递减
  - $\mathrm{runTask}'(t)$：切换到新的执行任务

  **局部转换的详细形式**：
  $$\Sigma_m(t) = (PC_m, \mathcal{V}_m, \mathcal{S}_m, \mathcal{I}_m) \xrightarrow{sched} (PC_m', \mathcal{V}_m', \mathcal{S}_m', tail(\mathcal{I}_m))$$
  $$\mathcal{S}_m^{new} = \mathcal{S}_m^{current} \cup \{(PC, C_{pc}), (RetAddr, C_{ret})\}$$
  $$\text{如果发生上下文切换：} C_{gen} \leftarrow \text{从栈中恢复新任务寄存器}$$
  $$\mathrm{runTask}(t) = m \xrightarrow{sched} \mathrm{runTask}'(t) = \text{新选择的任务ID}$$

  **同步指令转换**：
  $$(\{\Sigma_1(t), \Sigma_2(t), \ldots, \Sigma_N(t)\}, \mathcal{G}(t), C(t), \mathcal{R}(t), \mathcal{D}(t), \mathcal{T}(t), \mathrm{runTask}(t)) \xrightarrow{sync}$$
  $$(\{\Sigma_1'(t), \Sigma_2'(t), \ldots, \Sigma_N'(t)\}, \mathcal{G}'(t), C'(t), \mathcal{R}'(t), \mathcal{D}'(t), \mathcal{T}'(t), \mathrm{runTask}'(t))$$
  当且仅当$\mathrm{runTask}(t) = m$且$\mathcal{I}_m[PC_m] \in I_{sync}$时发生。
  
  **修改的域**：
  - $\{\Sigma_i'(t)\}$：修改涉及同步的多个任务状态（阻塞、唤醒）
  - $\mathcal{G}'(t)$：可能修改同步相关的全局变量（锁状态、等待队列等）
  - $C'(t) = (C_{gen}(t), C_{ret}(t), C_{pc}(t), C_{int}(t), C_{timer}'(t))$：
    * 普通寄存器、返回地址、PC寄存器通常不变，除非发生任务切换
    * 中断控制寄存器保持不变
    * $C_{timer}'(t) = C_{timer}(t) - \delta(\mathcal{I}_m[PC_m])$：倒计时递减
  - $\mathrm{runTask}'(t)$：通常保持不变，除非当前任务因同步而阻塞

  **局部转换的详细形式**：
  $$\Sigma_m(t) = (PC_m, \mathcal{V}_m, \mathcal{S}_m, \mathcal{I}_m) \xrightarrow{sync} (PC_m', \mathcal{V}_m', \mathcal{S}_m', tail(\mathcal{I}_m))$$
  $$\text{对于涉及的其他任务} j: \Sigma_j(t) \xrightarrow{sync} \Sigma_j'(t) \text{ （状态变化：阻塞↔就绪）}$$
  $$\mathcal{G}(t) \xrightarrow{sync} \mathcal{G}'(t) \text{ （同步原语状态更新）}$$
    $$\text{如果当前任务阻塞：} \mathrm{runTask}(t) = m \xrightarrow{sync} \mathrm{runTask}'(t) = \text{调度选择的新任务}$$

  **中断指令转换**：
  $$\Psi(t) \xrightarrow{interrupt} \Psi'(t)$$
  当且仅当$C_{timer}(t) \leq 0$时发生系统时钟中断。
  
  **修改的域**：
  - $C_{int}'(SysTick) = 1$：设置时钟中断标志位
  - $C_{timer}'(t) = C_{timer\_init}$：重置倒计时寄存器为初始值
  - $\mathrm{runTask}'(t) = ISR_{SysTick}$：切换到中断处理程序
  - 其他域暂时保持不变，等待中断处理程序执行

  **中断处理完成转换**：
  $$\Psi(t) \xrightarrow{isr} \Psi'(t)$$
  当中断服务程序执行完毕时发生。
  
  **修改的域**：
  - $C_{int}'(interrupt\_id) = 0$：清除对应中断标志位
  - $\mathcal{R}'(t)$、$\mathcal{D}'(t)$、$\mathcal{T}'(t)$：根据中断处理逻辑更新调度相关状态
  - $\mathrm{runTask}'(t)$：返回到被中断的任务或切换到新任务

    **转换条件的形式化表示**：
       $$\Psi(t) \rightarrow \Psi(t+1) \Leftrightarrow \begin{cases}
    C_{timer}(t) \leq 0 & \text{（中断触发）} \\
    \exists m \in [1,N]: \mathrm{runTask}(t) = m \land \mathcal{I}_m[PC_m] \neq \emptyset & \text{（正常指令执行）}
    \end{cases}$$

  **上下文切换的数学表示**：模拟硬件上下文切换的完整过程。

  **任务$T_i$被调度出去时（保存上下文）**：
  1. **寄存器压栈**：将当前寄存器状态保存到任务栈中
     $$\mathcal{S}_i^{new} = \mathcal{S}_i^{current} \cup \{(PC, C_{pc}), (RetAddr, C_{ret})\}$$
     $$\forall k \in [1, K]: \mathcal{S}_i^{new} = \mathcal{S}_i^{new} \cup \{(Reg_k, C_{gen}(k))\}$$
  
  2. **绑定变量同步保存**：确保变量-寄存器一致性
     $$\forall v \in dom(\beta_i): \mathcal{S}_i^{new} = \mathcal{S}_i^{new} \cup \{(Var_v, \mathcal{V}_i(v))\}$$
  
  3. **更新任务程序状态**：
     $$\Sigma_i^{saved} = (PC_i^{suspend}, \mathcal{V}_i^{current}, \mathcal{S}_i^{new}, \mathcal{I}_i)$$

  **任务$T_j$被调度进来时（恢复上下文）**：
  1. **从栈中恢复寄存器**：
     $$C_{pc} \leftarrow \text{从} \mathcal{S}_j \text{中取出} (PC, value)$$
     $$C_{ret} \leftarrow \text{从} \mathcal{S}_j \text{中取出} (RetAddr, value)$$
     $$\forall k \in [1, K]: C_{gen}(k) \leftarrow \text{从} \mathcal{S}_j \text{中取出} (Reg_k, value)$$
  
  2. **恢复绑定变量**：保持变量-寄存器一致性
     $$\forall v \in dom(\beta_j): \mathcal{V}_j(v) \leftarrow C_{gen}(\beta_j(v))$$
  
  3. **清理栈顶**：移除已恢复的上下文信息
     $$\mathcal{S}_j^{restored} = \mathcal{S}_j \setminus \{\text{已恢复的寄存器和变量条目}\}$$

  这样确保了硬件级别的上下文切换语义：寄存器内容通过栈进行任务间的隔离和恢复。

  **我们可以定义一些程序状态的并发性质**：
  - 状态隔离性：$\forall i \neq j: \mathcal{V}_i \cap \mathcal{V}_j = \emptyset$（任务局部变量互不干扰）
  - 临界区的原子性：当禁用中断(IntLock执行后），临界区内的指令集合$\mathcal{A} \subset \mathcal{I}_i$执行过程不可被抢占
  - 进度保证：对于就绪任务$T_i \in \mathcal{R}$，存在有限步数$k$使得$PC_i$最终递增：
    $$\exists k \in \mathbb{N}: PC_i(t+k) > PC_i(t)$$
* 就绪态集合 $\mathcal{R} = \{T_i\in\mathcal{T}\mid T_i\text{ 已就绪（Ready）}\}$；阻塞态（包括延时、挂起等）集合 $\mathcal{B}=\mathcal{T}\setminus \mathcal{R}$。当前运行任务记为 $\mathrm{run}\in\mathcal{R}$。任务可以运行的时间片长度以$\tau_i$表示（后文有更详细形式化定义）。
* 对每个优先级 $p$，定义该优先级的就绪队列
$$R_p = (TS, \textit{index})$$
其中$TS$为队列列表，满足$set(TS) =\{T_i\in\mathcal{R}\mid p_i = p\})$。$index$为队列头部元素位置索引。系统还维护一个位图 $B$，其中 $B[p]=1$ 当且仅当 $\textit{TS}\neq []$（即优先级$p$队列非空）。所有优先级队列的不交并为就绪态集合：
$$\bigsqcup_p R_p = R$$
* 对阻塞态任务$T_i \in \mathcal{B}$, 定义其被唤醒时间为$bt_i$,所等待资源为$be_i$。

### 优先级调度
* 模型初始化流程如下：首先创建中断例程以及所有用户任务。锁中断、锁调度。初始化所有任务$T_i$及其对应数据结构。创建Idle task。开中断、开启调度，进入调度函数，运行开始。
* 当发生调度触发（如 SysTick 中断、任务创建/删除/恢复、主动让出等事件），伴随发生的任务切换中断PendSV将调用LiteOS-M 的调度决策函数`OsSchedTaskSwitch`。
* `OsSchedTaskSwitch`按照如下规则运转：首先，根据正在运行的任务的状态位变量，决定是否将正在运行的任务$\mathrm{runTask}$（不妨设为$T_i$）放回就绪队列。若任务状态延迟位$\sigma_i[DELAYED\_BIT]$为1，则将$T_i$放入延迟队列，若任务处于活跃状态（延时、挂起、退出、不使用以外的状态），则将其入队其对应优先级就绪队列$R_{p_i}$。一般情况下会插入$T_i$至队列头，除非任务剩余时间片极短（低于最短时间片长度$\epsilon$），则要重置时间片至初始时间片长度$\tau_0$并被放到$R_{p_i}$尾部。
* 选择就绪队列中最高优先级的任务运行。形式化地，令 $p^* = \min(\{p\mid R\_p\neq\emptyset\})$（最小的非空优先级值），则选择 $T^* = head(R\_{p^*})$ 为新的运行任务，并将其从 $R\_{p^*}$ 中移除、更新位图$B$。如果原运行任务 $\mathrm{run}$ 的优先级也为 $p^*$，且其时间片尚未用完，则调度可能选择继续运行 $\mathrm{run}$；否则即 $\mathrm{run}$ 与 $T^*$ 不同，则进行任务切换。调度条件表示为：

$$
p^* = \min\{p \mid B[p]=1\},\quad T^* = \text{head}(R_{p^*}).
$$

* 若 $T^*\neq \mathrm{runTask}$，则发生任务切换：$\mathrm{runTask} := T^*$。这里 $\mathrm{head}(R\_{p^*})$ 表示优先级 $p^*$ 队列中的第一个任务。


### 时间片管理

基于我们实现的`LOS_TaskIncrementTick`函数，时间片管理可以用以下数学模型描述：

对于每个任务 $T_i$，定义：
* $\tau_i(t)$：任务 $T_i$ 在时刻 $t$ 的剩余时间片
* $s_i(t)$：任务 $T_i$ 在时刻 $t$ 的开始时间
* $\Delta t$：系统时钟增量

时间片更新规则（对应`OsTimeSliceUpdate`）：
$$
\begin{cases}
\tau_i(t+1) = \tau_i(t) - \Delta t, & \text{if } T_i \neq T_{\text{idle}} \text{ and } T_i = \mathrm{runTask} \\
\tau_i(t+1) = \tau_i(t), & \text{otherwise}
\end{cases}
$$

$$s_i(t+1) = t+1, \quad \text{if } T_i = \mathrm{run}$$

时间片耗尽触发调度的条件：
$$
\text{需要调度} \Leftrightarrow (\tau_{\mathrm{run}}(t) \leq 0) \land (|R_{p_{\mathrm{run}}}| > 1)
$$

### 延时队列数学模型

延时任务管理遵循以下规则：

定义延时队列 $\mathcal{D} = \{(T_i, d_i) \mid T_i \in \mathcal{B}, d_i > 0\}$，其中 $d_i$ 是任务 $T_i$ 的剩余延时时间。

每个系统时钟周期执行：
$$
\forall (T_i, d_i) \in \mathcal{D}: d_i := d_i - 1
$$

任务唤醒条件：
$$
T_i: \mathcal{B} \rightarrow \mathcal{R} \Leftrightarrow d_i = 0
$$

唤醒后的队列更新：
$$
R_{p_i} := R_{p_i} \cup \{T_i\}, \quad B[p_i] := 1
$$

抢占条件检查：
$$
\text{需要抢占} \Leftrightarrow p_i < p_{\mathrm{run}}
$$




## 三、模型检测
本章介绍我们如何利用SPIN/Promela构建形式化模型并验证LiteOS-M中任务调度相关函数API。


### SPIN模型检查器

SPIN是一个专门用于分析并发通信进程的模型检查器[[26]](#26)。它提供Promela语言来描述系统的形式化模型。在Promela中，系统由多个并发进程组成，每个进程包含一系列命令序列。命令的执行遵循非确定性交错语义，即在任意时刻只有一个使能的命令被执行。
选用SPIN/Promela是因为其对并发系统的验证有较丰富的工具和较好优化，特别适合验证操作系统任务的调度[[1]](#1)。

### LiteOS-M-SPIN模型架构

#### 模型整体架构

LiteOS-M-SPIN模型建模了分层架构设计，确保了形式化验证的完整性和准确性：

**架构层次**：
- **应用层**：用户任务进程，例如task1, task2等
- **系统调用层**：LiteOS-M API接口，如LOS_TaskDelay, LOS_Schedule等
- **内核层**：调度器、中断处理器、同步原语，此类函数在LiteOS-M中通常以Os开头，如OsSchedInit、OsTickHandler等
- **硬件抽象层**：与具体的架构相关的底层函数定义、指令、变量，例如ArchTaskSchedule，实现是架构特定的，我们建模其针对ARM Cortex-M3/4架构实现的版本
- **底层原语层**：Promela执行控制宏和数据结构

#### 进程标识

为追踪正在执行的任务并正确建模上下文切换、中断处理等行为，模型采用统一的进程标识，相对SPIN内部进程编号偏移量为-1，因为用于生成所有任务初始化、开始调度的任务init不参与后续调度：

```promela
#define _PID (_pid - 1)
byte EP = UNUSED; /* Executing Process */
...
（调度初始化时）
EP = FIRST_TOP_TASK_PID
...
(调度切换时)
EP = NEW_TOP_TASK_PID
...
(中断时)
EP_SAVE = EP;
EP = INTERRUPT_PID
...
...
```

**例子：当用户任务有三个时，这三个变量的映射关系**：
```
进程类型:  init  PendSV  SysTick  FIRST_TASK  SEC_TASK  IDLE_TASK
_pid:      0     1       2        3           4         5
_PID:            0       1        2           3         4
EP范围:          [0, IDLE_TASK_ID]
```





LiteOS-M采用抢占式调度策略，支持32个优先级级别。调度函数API包括：
- `LOS_KernelInit`: 内核初始化函数
- `LOS_TaskInit`: 任务初始化函数
- `OsSchedInit`：调度初始化函数
- `LOS_Start`：开始调度函数
- `LOS_TaskResume`: 任务恢复
- `LOS_TaskSuspend`: 任务挂起  
- `LOS_IntLock/LOS_IntRestore`: 中断控制
- `LOS_Schedule`: 主动任务调度函数

等等。我们在模型中也构建同样的API。




#### EXEC_WHEN_CURRENT宏的设计

为了准确建模任务间的随时切换行为，我们采用`EXEC_WHEN_CURRENT`等宏：

```promela
#define EXEC_WHEN_CURRENT(id, stmt) atomic { (id == EP) -> stmt; ND_TIMER_INT(id); D_TAKEN_INT() }

#define EXEC_WHEN_CURRENT_SAFE(id, stmt) atomic { (id == EP) -> stmt; INT_SAFE }
```

这些宏只有当前执行任务(`EP`)才能执行特定操作。几乎每一条任务语句都包裹在EXEC_WHEN_CURRENT或者类似的宏中。`EP`仅在任务切换函数中可以修改。这就使得不同任务不可以随意交错执行，而必须通过任务主动调度或中断来切换。`EXEC_WHEN_CURRENT`在末尾添加了非确定性的系统时钟中断触发函数`ND_TIMER_INT`。`ND_TIMER_INT`的定义为：

```promela
#define ND_TIMER_INT(_id) \
        if \
    :: FIRST_TASK <= _id && _id <= IDLE_TASK_ID -> TIMER_INT_IRQ; \
    :: true \
    fi
```

而最后的`D_TAKEN_INT`函数则建模了当中断控制寄存器某标志位被置1后CPU响应跳转到对应中断处理例程的行为：

```promela
#define D_TAKEN_INT() \
    if \
    :: INT_TAKE -> \
        /* Expanding the macro __exp_taken(id) */ \
        push(EP); \
        /* __exp_taken(id) without clearing the pending bit. */ \
        EP = (GET_PENDING(PendSV_ID) -> PendSV_ID : SysTick_ID); \
    :: else \
    fi
```

因此，本模型中，任务执行过程随时可能发生系统中断。当执行系统调度器、中断处理程序等特殊函数时，则使用EXEC_WHEN_CURRENT_SAFE，因为此过程中不使能中断。为确保使用EXEC_WHEN_CURRENT_SAFE使用的位置确实禁用了中断，在末尾加上断言INT_SAFE执行此处时处于中断过程中或者中断被禁用。这个INT_SAFE的定义为：

```promela
#define INT_SAFE (!INT_TAKE)
```

其中`INT_TAKE`表示中断是否被接受的条件，定义为：

```promela
#define INT_TAKE \
    (((GET_PENDING(PendSV_ID) && BASEPRI_MASK(PendSV_ID)) || \
        (GET_PENDING(SysTick_ID) && BASEPRI_MASK(SysTick_ID))) && \
        EP >= FIRST_TASK)
```

这个宏检查是否有待处理的中断（PendSV或SysTick）且当前任务处于用户任务范围内。通过`assert(INT_SAFE)`断言，模型确保在使用`EXEC_WHEN_CURRENT_SAFE`的位置确实处于中断安全状态，即没有待处理的中断需要响应。

除了上述两个核心宏外，模型还提供了其他执行控制变体以适应不同的建模需求：

```promela
#define EXEC_WHEN_CURRENT_PLAIN(id, stmt) atomic { (id == EP) -> stmt; }
#define EXEC_WHEN_CURRENT_ATOMIC(id, stmt) d_step { assert(id == EP); stmt; assert(INT_SAFE) }
```

其中`EXEC_WHEN_CURRENT_PLAIN`提供最基础的执行控制，不包含中断触发和安全检查，适用于简单的状态更新操作。而`EXEC_WHEN_CURRENT_ATOMIC`使用`d_step`提供最强的原子性保证，确保执行过程完全不可中断，常用于关键的调度决策和上下文切换操作。

当需要执行的操作stmt比较复杂，或者仅需根据判断条件决定是否阻塞，就用SELE（**sele**ct）等宏来表示仅仅在被调度且分支条件满足时执行某分支代码块：
```
if
:: SELE(_id, bool_cond) ->
    if_branch_code
   ELSE(_id, bool_cond) ->
::  else_branch_code
fi
```
这等价于
```
if
:: (EP == _id) && (bool_cond == true) ->
    if_branch_code
:: ((EP == _id) && !(bool_cond == true)) ->
    else_branch_code
```


这些宏采用可变参数设计，支持2-3个参数的灵活调用：

```promela
#define SELE_SAFE(_id, condition, ..., INT_SAFE)  // 禁止中断发生条件选择if
#define ELSE_SAFE(_id, condition, ..., INT_SAFE)  // 禁止中断发生条件分支else
#define SELE(_id, condition, ...)            // 普通条件选择if
#define ELSE(_id, condition, ...)            // 普通条件分支else
```

这种设计使得模型能够准确表达LiteOS-M中复杂的条件判断逻辑，同时保持中断安全性。一个典型使用案例：
```
inline TaskSwitchContext(_id, local_idx)
{
    if
    :: SELE_SAFE(_id, g_taskLock != 0);
        EXEC_WHEN_CURRENT_SAFE(_id, losTaskYieldPending = true)
    :: ELSE_SAFE(_id, g_taskLock != 0);
        EXEC_WHEN_CURRENT_SAFE(_id, losTaskYieldPending = false);
        GetTopTask(_id, local_idx)
    fi
}
```
这段代码通常运行在PendSV中断，LiteOS-M会在进入时加全局中断锁，因此此刻是没有中断发生的，故使用SELE_SAFE/EXEC_WHEN_CURRENT_SAFE等。


#### 任务状态建模

在我们的LiteOS-M-SPIN模型中，任务状态通过以下结构保存：

```promela
typedef TaskCB {
    byte taskPrio;        // 任务优先级
    byte taskStatus;      // 任务状态
    ListItem ListItems[2]; // 状态列表项和事件列表项
}
```

任务状态包括`OS_TASK_STATUS_READY`:（就绪）、`OS_TASK_STATUS_SUSPEND`（挂起）、`OS_TASK_STATUS_DELAY`（延时）、`OS_TASK_STATUS_UNUSED`（未使用）等。
当任务被修改状态`taskStatus`后，也会被放入相应的状态或事件列表，ListItems用于保存该任务被挂入的列表的类型，可理解为指向其被挂载列表节点的指针。

为了在SPIN模型中准确建模LiteOS-M的动态数据结构，我们采用静态数组来抽象链表操作。以就绪队列的插入操作为例：

```promela
// LiteOS-M源码中的链表插入
LOS_ListTailInsert(&g_priQueueList[priority], &taskCB->pendList);

// 在SPIN模型中的等价实现
LOS_ListTailInsert(g_priQueueList[priority], RLIST_SIZE, taskID, stateBit, hidden_idx);
```

这种转换的核心在于用静态数组`pointers[]`来模拟链表节点：

```promela
typedef LOS_DL_LIST8_WITH_INDEX {
    List_t pointers[8];  // 最多容纳8个任务的静态数组
    byte headIndex;        // 轮转调度索引，指向当前"链表头"
};

typedef List_t {
    byte p_tcb_item;     // 编码的TCB索引: (tcb_id << 1) | state_bit
};
```

其中`headIndex`指向的是当前优先级队列的"链表头"位置，每次调度器选择任务时，实际取出执行的是`headIndex`下一个位置的任务，然后`headIndex`向前移动，从而实现同优先级任务的轮转调度机制。

LiteOS-M任务状态管理采用位标志，通过`taskStatus`字段（UINT16类型）的不同位来表示任务的复合状态：

```c
// LiteOS-M源码中的任务状态检查（来自los_task.c）
if (taskCB->taskStatus & OS_TASK_STATUS_SUSPEND) {
    // 任务处于挂起状态，放入对应队列
}
else {
    //任务未挂起，放入就绪队列等等
}

// 在SPIN模型中的等价实现
if :: SELE_SAFE(_id, OS_TCB_FROM_TID(taskID).taskStatus 
    & OS_TASK_STATUS_SUSPEND);
    // 处理挂起状态的任务
    //....
:: ELSE_SAFE(_id, OS_TCB_FROM_TID(taskID).taskStatus 
    & OS_TASK_STATUS_SUSPEND);
    // 任务未挂起
    //...
fi
```

根据LiteOS-M源码，任务状态定义为：

```c
// LiteOS-M任务状态定义
#define OS_TASK_STATUS_UNUSED   0x0001  // 任务未创建
#define OS_TASK_STATUS_SUSPEND  0x0002  // 任务挂起  
#define OS_TASK_STATUS_READY    0x0004  // 任务就绪
#define OS_TASK_STATUS_PEND     0x0008  // 任务阻塞
#define OS_TASK_STATUS_RUNNING  0x0010  // 任务运行
#define OS_TASK_STATUS_DELAY    0x0020  // 任务延时
......
```

这种位标志设计允许任务同时处于多种状态，例如一个任务可以同时是`SUSPEND | DELAY`（挂起且延时），通过位与操作`&`来检查特定状态位。得益于Promela语言和C语言的相似度，在模型中我们用同样的定义。



全局数据结构的建模我们使用了和LiteOS-M源码一致的静态数组：

```promela
LosTaskCB g_taskCBArray[g_taskMaxNum + 1];                    
// 任务控制块数组
LOS_DL_LIST5_WITH_INDEX g_priQueueList[OS_PRIORITY_QUEUE_NUM]; 
// 32个优先级就绪队列  
byte g_queueBitmap = tskIDLE_PRIORITY;                        
// 优先级位图，用于快速查找
```

不过，我们不照搬链表的插入删除的指针操作，而是直接挪动数组元素，并修改`headIndex`的值来模拟插入/删除节点操作。我们的设计在尽量保持LiteOS-M原有的语义的同时，又尽量避免建模动态内存分配过于昂贵导致状态空间爆炸。

在细节层面，我们尽量贴近LiteOS-M系统本身API。一个典型的任务状态转换函数是挂起/恢复任务。在LiteOS-M中，挂起任务的函数定义主要在`LOS_TaskSuspend`和`OsSchedSuspend`:
```C
BOOL OsSchedResume(LosTaskCB* taskCB)
{
    if(taskCB->taskStatus & OS_TASK_FLAG_FREEZE) {
        OsSchedUnfreezeTask(taskCB);
    }

    taskCB->taskStatus &= (~OS_TASK_STATUS_SUSPEND);
    if(!(taskCB->taskStatus & (OS_TASK_STATUS_DELAY | OS_TASK_STATUS_PEND))) {
        OsSchedTaskEnQueue(taskCB);
        return TRUE;
    }

    return FALSE;
}
LITE_OS_SEC_TEXT_INIT UINT32 LOS_TaskResume(UINT32 taskID)
{
    UINT32     intSave;
    LosTaskCB* taskCB = NULL;
    UINT16     tempStatus;
    UINT32     retErr    = OS_ERROR;
    BOOL       needSched = FALSE;

    if(!OS_TASK_ID_CHECK(taskID)) {
        return LOS_ERRNO_TSK_ID_INVALID;
    }

    taskCB     = OS_TCB_FROM_TID(taskID);
    intSave    = LOS_IntLock();
    tempStatus = taskCB->taskStatus;

    if(tempStatus & OS_TASK_STATUS_UNUSED) {
        retErr = LOS_ERRNO_TSK_NOT_CREATED;
        OS_GOTO_ERREND();
    } else if(!(tempStatus & OS_TASK_STATUS_SUSPEND)) {
        retErr = LOS_ERRNO_TSK_NOT_SUSPENDED;
        OS_GOTO_ERREND();
    }

    needSched = OsSchedResume(taskCB);
    if(needSched && g_taskScheduled) {
        LOS_IntRestore(intSave);
        LOS_Schedule();
        return LOS_OK;
    }

    LOS_IntRestore(intSave);
    return LOS_OK;

LOS_ERREND:
    LOS_IntRestore(intSave);
    return retErr;
}
```
在对应的promela模型中，我们也建模同样的流程，只是在底层实现上有所简化：
```promela
inline OsSchedResume(_id, taskID, needSched)
{
    // 跳过从挂起任务列表中移除的操作
    // （因为任务没有被加入挂起列表）
    // 原来的操作：EXEC_WHEN_CURRENT_ATOMIC(_id, 
    //     ListRemove(xSuspendedTaskList, SLIST_SIZE, taskID, stateBit, hidden_idx));
    
     // 【关键修复】清除挂起标志位 
     // - 这是LOS_TaskResume正确工作的必要步骤
     EXEC_WHEN_CURRENT_SAFE(_id, 
         OS_TCB_FROM_TID(taskID).usTaskStatus = OS_TCB_FROM_TID(taskID).usTaskStatus & (~OS_TASK_STATUS_SUSPEND)
     );
    
    // 将任务加入调度队列
    prvAddTaskToReadyList(_id, taskID);
    
     // 根据任务优先级决定是否需要进行任务调度
     if
     :: SELE_SAFE(_id, 
         OS_TCB_FROM_TID(taskID).taskPrio >= OS_TCB_FROM_TID(runTask).taskPrio);
         EXEC_WHEN_CURRENT_SAFE(_id, needSched = true)  // 需要调度
     :: ELSE_SAFE(_id, 
         OS_TCB_FROM_TID(taskID).taskPrio >= OS_TCB_FROM_TID(runTask).taskPrio);
         EXEC_WHEN_CURRENT_SAFE(_id, needSched = false) // 不需要调度
     fi
}
inline LOS_TaskResume(_id, taskID, isTaskSuspended)
{
    byte intSave, needSched;  // LiteOS-M风格的局部变量
    
    if
    :: SELE(_id, taskID != runTask && taskID != UNUSED);
        LOS_IntLock_WithSave(_id, intSave);  // 关中断并保存中断状态

        OsTaskSuspendCheck(_id, taskID, isTaskSuspended);  // 检查任务是否挂起
        if
        :: SELE_SAFE(_id, isTaskSuspended == true, 
            isTaskSuspended = UNUSED);
            // 调用 OsSchedResume 恢复任务调度
            OsSchedResume(_id, taskID, needSched);
            
            // 根据调度需要变量决定是否执行调度 
            if
            :: SELE_SAFE(_id, needSched == true);
                LOS_Schedule(_id)  // 执行任务调度
            :: ELSE_SAFE(_id, needSched == true)
            fi
        :: ELSE_SAFE(_id, isTaskSuspended == true, 
            isTaskSuspended = LOS_ERR_TASK_NOT_SUSPENDED)
        fi;

        LOS_IntRestore_WithValue(_id, intSave)  // 恢复中断状态
    :: ELSE(_id, taskID != runTask && taskID != UNUSED)
    fi
}
```
LOS_TaskSuspend/OsSchedSuspend和其他调度函数不再赘述。


#### 调度器启动机制

我们的模型也建模系统初始化后，调度刚开始启动的情况：

```promela
// LiteOS-M风格调度器启动
inline LOS_Start(EP)
{
    EP = OsGetTopTask();
    ArchStartSchedule();
}

inline ArchStartSchedule()
{
    RUN_LOS_EXPS(); // 启动所有中断进程，随时可触发
}
```



调度开始以后，就在不同任务间依照调度策略优先级轮转。调度策略的实现依赖于任务选择和上下文切换原语。最高优先级任务选择实现：

```promela
// LiteOS-M源码中的任务选择
LosTaskCB *newTask = OsGetTopTask();

// 在SPIN模型中的等价实现  
GetTopTask(_id, local_idx);
```

具体实现采用优先级位图加速查找：

```promela
inline GetTopTask(_id, local_idx)
{
    // 1. 使用CLZ指令快速找到最高优先级
    EXEC_WHEN_CURRENT_SAFE(_id,
        CLZ(local_idx, g_queueBitmap);
        assert(LIST_IS_EMPTY(g_priQueueList[local_idx]) == false)
    );
    
    // 2. 从选中的优先级队列中获取任务
    getTCBPointedByInternalIterator(_id, SelectedTCB, g_priQueueList[local_idx], RLIST_SIZE);
    
    // 3. 清理工作变量
    EXEC_WHEN_CURRENT_SAFE(_id, local_idx = UNUSED);
}
```

其中`OsGetTopTask`使用CLZ（Count Leading Zeros）算法实现O(1)时间复杂度的优先级查找。

上下文切换通过`TaskSwitchContext`实现调度器挂起状态的处理：

```promela
inline TaskSwitchContext(_id, local_idx)
{
    if
    :: SELE_SAFE(_id, g_taskLock != 0);
        EXEC_WHEN_CURRENT_SAFE(_id, losTaskYieldPending = true)
    :: ELSE_SAFE(_id, g_taskLock != 0);
        EXEC_WHEN_CURRENT_SAFE(_id, losTaskYieldPending = false);
        GetTopTask(_id, local_idx)
    fi
}
```

这种设计确保了在调度器挂起期间任务切换请求被正确延迟，直到调度器恢复时才执行实际的任务选择。这些操作都没有调整EP，这需要在Systick_Handler中执行。

####  调度时机

任务调度发生在任务主动让出CPU (`LOS_TaskYield`)、任务进入阻塞状态 (`LOS_TaskSuspend`)、时钟嘀嗒中断处理完成后 (`LOS_TickHandler`)、任务恢复执行时 (`LOS_TaskResume`)、任务删除时 (`LOS_TaskDelete`)等其他多种调度触发场景。


#### PendSV_Handler/HalPendSV+OsTickHandler两个中断处理机制

系统中断处理是LiteOS-M调度的核心机制。在我们的模型中，LiteOS-M通过两个关键的中断处理器实现任务调度和上下文切换：

##### OsTickHandler - 系统时钟中断服务程序

LiteOS-M的系统时钟中断处理器负责时间片管理和任务调度触发：

```promela
proctype OsTickHandler()
{
    bit local_bit = 0;
    byte local_var = NULL_byte;
    assert(LOS_SchedTick_ID == _PID);
do
::  exp_entry(_PID);
    LOS_IntLock(_PID);
    LOS_TickHandler(_PID, local_bit, local_var);
    if
    :: SELE_PLAIN(_PID, local_bit != false, local_bit = false);
        EXEC_WHEN_CURRENT_PLAIN(_PID, set_pending(LOS_PendSV_ID))
    :: ELSE_PLAIN(_PID, local_bit != false)
    fi;
    LOS_IntRestore(_PID);
    EXEC_WHEN_CURRENT(_PID, exp_return(local_var))
od
}
```

该中断处理器的核心功能包括：
- **中断锁定**：进入处理程序后立即锁定中断，确保原子性操作
- **时钟处理**：调用`LOS_TickHandler`进行时间片更新和延时任务检查
- **调度触发**：根据处理结果决定是否触发PendSV中断进行任务切换
- **中断恢复**：处理完成后恢复中断使能状态

##### HalPendSV - 挂起服务中断处理器

LiteOS-M的PendSV中断处理器负责执行实际的任务上下文切换：

```promela
proctype HalPendSV()
{
    byte local_var = NULL_byte;
    assert(LOS_PendSV_ID == _PID);
do
::  exp_entry(_PID);
    EXEC_WHEN_CURRENT_PLAIN(_PID, assert(LAST_EP_STACK >= FIRST_TASK); MSR_BASEPRI(MAX_NUM_PRIORITIES));
    LOS_Schedule(_PID);
    EXEC_WHEN_CURRENT_PLAIN(_PID, MSR_BASEPRI(0));
    EXEC_WHEN_CURRENT_PLAIN(_PID, switch_context(runTask));
    EXEC_WHEN_CURRENT(_PID, exp_return(local_var))
od
}
```

该中断处理器的关键步骤包括：
- **中断优先级设置**：设置最高中断优先级，防止被其他中断打断
- **调度执行**：调用`LOS_Schedule`选择下一个要运行的任务
- **上下文切换**：执行实际的任务上下文切换操作
- **中断恢复**：恢复正常的中断优先级





### 验证的规约性质

模型中中包含大量规约性质，这些性质确保了LiteOS-M任务调度系统的正确性、安全性和一致性。按照功能领域，这些规约性质可分为以下5个主要类别，每个类别我们举例：

#### 1. 任务调度正确性规约

**最高优先级任务选择不变量**
- **形式化定义**：$\forall p \in [0, 31]: \text{!LIST\_IS\_EMPTY}(g\_priQueueList[p]) \Rightarrow p >= \text{selected\_priority}$
- **具体示例**：`assert(LIST_IS_EMPTY(g_priQueueList[local_idx]) == false)`
- **上下文**：位于`OsGetTopTask`函数中，该函数负责从就绪队列中选择最高优先级的任务。断言确保选中的优先级队列非空，保证调度器能正确选择任务。

**任务切换原子性保证**
- **形式化定义**：$\text{SelectedTCB} \neq \text{UNUSED} \land \text{ListItems[stateBit].listType} \neq \text{UNUSED}$
- **具体示例**：`assert(SelectedTCB != UNUSED); assert(OS_TCB_FROM_TID(SelectedTCB).ListItems[stateBit].listType != UNUSED)`
- **上下文**：位于`OsGetTopTask`函数中，在获取任务后验证任务的有效性。该函数是调度器的核心，负责选择下一个要运行的任务。
- **系统意义**：保证选中的任务必须是有效的、已初始化的任务

**调度器状态一致性**
- **形式化定义**：$\text{SchedulerRunning} \land \text{g_taskLock} = 0$
- **具体示例**：`assert(SchedulerRunning && g_taskLock == 0)`
- **上下文**：位于`LOS_TaskSuspend`函数中，在挂起当前运行任务时检查调度器状态。该函数负责将任务从运行状态切换到挂起状态。
- **系统意义**：确保调度器在运行状态且未被锁定任务调度时才可以挂起任务

#### 2. 数据结构一致性规约

**链表完整性约束**
- **形式化定义**：$\forall \text{list} \in \text{all\_lists}: \text{nodeAvailable}(\text{list.pointers}[0])$
- **具体示例**：`assert(nodeAvailable(sortLinkList[hidden_idx].pointers[0]))`
- **上下文**：位于`OsTaskInit`函数中，该函数负责初始化任务管理子系统。断言检查队列链表（例如延迟列表）是否已正确初始化。
- **系统意义**：确保所有链表结构都已正确初始化



#### 3. 状态转换安全性规约


**转换条件完备性**
- **形式化定义**：$\text{NewPriority} < \text{OS\_PRIORITY\_QUEUE\_NUM} \land \text{YieldRequired} = \text{false}$
- **具体示例**：`assert(NewPriority < OS_PRIORITY_QUEUE_NUM && YieldRequired == false && temp_var == UNUSED)`
- **上下文**：位于`OsSchedParameterSet`函数入口处，在设置任务优先级前验证输入参数的有效性。该函数确保新优先级在有效范围内且相关变量处于初始状态。
- **系统意义**：确保优先级设置操作的参数有效性


#### 4. 边界条件规约

**数组边界检查**
- **形式化定义**：$\text{NewPriority} < \text{OS\_PRIORITY\_QUEUE\_NUM}$
- **具体示例**：`assert(NewPriority < OS_PRIORITY_QUEUE_NUM)`
- **上下文**：位于`OsSchedParameterSet`函数中，在设置任务优先级前验证优先级值是否在有效范围内。该函数确保优先级值不会导致数组越界访问。
- **系统意义**：防止优先级值超出有效范围


**时间值有效性**
- **形式化定义**：$\text{responseTime} < 255 \land \text{GET\_LIST\_ITEM\_VALUE}(\text{ListItems[stateBit]}) = 0$
- **具体示例**：`assert(responseTime < 255 && GET_LIST_ITEM_VALUE(OS_TCB_FROM_TID(SelectedTCB).ListItems[stateBit]) == 0)`
- **上下文**：位于`OsAdd2SortList`函数中，在将当前任务添加到延时队列前验证延时参数的有效性。该函数负责处理任务的延时操作。在模型中等待时间用`byte`类型表示，故255表示最大等待时间（不timeout）。
- **系统意义**：确保延时时间在有效范围内且状态位已清零

#### 5. 时间管理规约

**时钟滴答单调性**
- **形式化定义**：$\text{TickCount} < 254 \Rightarrow \text{TickCount} = \text{TickCount} + 1$
- **具体示例**：`assert(TickCount < 254); TickCount = TickCount + 1`
- **上下文**：位于`LOS_TickHandler`函数中，在系统时钟中断处理时检查并更新滴答计数器。该函数负责处理系统时钟中断并更新系统时间。
- **系统意义**：防止时钟计数器溢出，确保时间单调递增

**延时任务排序**
- **形式化定义**：$\forall \text{task} \in \text{SortLink}: \text{GET\_LIST\_ITEM\_VALUE}(\text{task}) > \text{TickCount}$
- **具体示例**：`assert(GET_LIST_ITEM_VALUE(OrdinalListItem(SortLink, idx)) > TickCount)`
- **上下文**：位于`SetNextExpireTime`函数中，唤醒所有需要唤醒任务后，在重置延时任务唤醒时间时检查任务排序的正确性。该函数负责更新延时任务的时间戳。
- **系统意义**：确保延时任务按唤醒时间正确排序



这些规约性质通过SPIN模型检查器进行验证，确保了LiteOS-M任务调度系统在各种并发场景下的正确性和安全性。每个性质都对应具体的assert语句，体现了系统设计中的核心不变量和约束条件。


### 验证结果
在验证场景下，三个永远循环的任务轮转调度，根据优先级不同获得执行机会各有长短，系统稳定不触发任何以上断言性质。
当优先级相同时，LiteOS-M可能存在任务被活锁的并发缺陷，详见第五章。


## 四、演绎检测

我们采用Isabelle/HOL定理证明器对LiteOS-M的任务调度/并发性作演绎检测。通过建立完整的形式化模型，我们不仅验证了调度算法的正确性，更重要的是发现了一个可能导致硬件定时器响应不及时的性能缺陷。

## Isabelle/HOL形式化模型概述

我们构建的LiteOS-M调度器形式化模型包含以下核心组件：

### 任务控制块数据类型定义

```isabelle
datatype task_status = 
    TaskReady | TaskRunning | TaskDelay | TaskSuspend | TaskPending

datatype task_action =
    Computing nat | WaitingIO nat | Delay nat | Finished

record task_cb =
  taskID :: task_id
  taskStatus :: task_status
  priority :: nat
  timeSlice :: nat
  waitTimes :: nat
  startTime :: time
  responseTime :: time
  currentAction :: task_action
```



#### 调度器状态空间定义

调度器状态 `scheduler_state` 包含以下关键组件：

```isabelle
record scheduler_state =
  runTask :: "task_cb option"                    -- 当前运行任务
  priQueueList :: "task_cb list list"           -- 优先级队列数组
  priQueueBitmap :: nat                          -- 最高优先级位图
  taskSortLink :: "task_cb list"                -- 延时任务排序链表
  suspendedTasks :: "task_cb list"              -- 挂起任务列表
  currentTime :: time                            -- 当前系统时间
  allTasks :: "task_id ⇒ task_cb option"        -- 任务映射表
  g_taskSchedule :: nat                          -- 调度器开关
  g_responseTime :: time                         -- 全局响应时间
  needs_scheduling :: nat                        -- 调度标志
```

### 操作语义形式化
我们定义了完整的调度器状态操作语义，确保系统行为的正确性和一致性。

#### 任务调度操作语义

**最高优先级任务选择**：
$$\frac{\text{get\_highest\_priority}(s) = \text{Some}(p) \quad \text{get\_priority\_queue}(s, p) = t \cdot ts}{\text{get\_next\_ready\_task}(s) = \text{Some}(t)}$$

**任务状态转换**：
$$\frac{t \in \text{priQueueList}(s)[p] \quad t' = \text{set\_task\_running}(t)}{\text{schedule\_next\_task}(s) = s'[\text{runTask} \mapsto \text{Some}(t')]}$$

#### 时间管理操作语义

**时钟中断处理**：
$$\frac{s' = \text{timer\_interrupt}(s) \quad \text{currentTime}(s') = \text{currentTime}(s) + 1}{\text{auto\_timer\_interrupt}(s) = s'}$$

**延时任务唤醒**：
$$\frac{\text{responseTime}(t) \leq \text{currentTime}(s) \quad t \in \text{taskSortLink}(s)}{\text{OsSchedScanTimerList}(s) = s'[\text{taskSortLink} \mapsto \text{remove}(t, \text{taskSortLink}(s))]}$$

#### 系统事件处理语义

**任务执行步骤**：
$$\frac{\text{runTask}(s) = \text{Some}(t) \quad \text{taskID}(t) = \text{tid} \quad \text{is\_blocking\_action}(\text{action})}{\text{process\_task\_action}(s, \text{tid}, \text{action}) = \text{schedule\_next\_task}(s')}$$

**任务唤醒操作**：
$$\frac{t \in \text{taskSortLink}(s) \quad \text{taskID}(t) = \text{tid} \quad t' = \text{set\_task\_ready}(t)}{\text{wake\_up\_task\_by\_id}(s, \text{tid}) = \text{add\_to\_ready\_queue}(s', t')}$$

#### 系统状态转换语义

**系统步骤执行**：
$$\frac{\text{system\_step}(s, \text{event}) = s' \quad \text{perform\_scheduling\_if\_needed}(s') = s''}{\text{system\_step}(s, \text{event}) = s''}$$

**多步骤系统执行**：
$$\frac{\text{system\_step}(s, e) = s' \quad \text{auto\_timer\_interrupt}(s') = s'' \quad \text{system\_multi\_step}(s'', \text{events}) = s'''}{\text{system\_multi\_step}(s, e \cdot \text{events}) = s'''}$$

**自动定时器中断**：
$$\frac{\text{g\_responseTime}(s) \leq \text{currentTime}(s) \quad \text{timer\_interrupt}(s) = s' \quad \text{should\_reschedule}(s, s')}{\text{auto\_timer\_interrupt}(s) = \text{schedule\_next\_task}(s')}$$

**调度器启动**：
$$\frac{\text{g\_taskSchedule}(s) = 0 \quad s' = s[\text{g\_taskSchedule} \mapsto 1] \quad \text{schedule\_next\_task}(s') = s''}{\text{LOS\_Start}(s) = s''}$$

#### 任务管理操作语义

**任务添加到优先级队列**：
$$\frac{t' = \text{set\_task\_ready}(t) \quad \text{pri} = \text{priority}(t) \quad \text{queue} = \text{get\_priority\_queue}(s, \text{pri})}{\text{add\_to\_priority\_queue}(s, t) = s'[\text{priQueueList}[\text{pri}] \mapsto t' \cdot \text{queue}]}$$

**任务从优先级队列移除**：
$$\frac{\text{pri} = \text{priority}(t) \quad \text{queue} = \text{get\_priority\_queue}(s, \text{pri}) \quad \text{queue}' = \text{remove}(t, \text{queue})}{\text{remove\_from\_priority\_queue}(s, \text{pri}) = s'[\text{priQueueList}[\text{pri}] \mapsto \text{queue}']}$$

**延时任务添加**：
$$\frac{t' = \text{set\_task\_delay}(t) \quad \text{sortlink}' = \text{insert\_sorted\_by\_response\_time}(t', \text{taskSortLink}(s))}{\text{add\_to\_delay\_queue}(s, t) = s'[\text{taskSortLink} \mapsto \text{sortlink}']}$$

#### 时间管理操作语义

**响应时间计算**：
$$\frac{\text{taskSortLink}(s) = []}{\text{OsSetNextExpireTime}(\text{taskSortLink}(s)) = \text{MAX\_RESPONSE\_TIME}}$$

$$\frac{\text{taskSortLink}(s) = t \cdot ts \quad \text{responseTime}(t) = \tau}{\text{OsSetNextExpireTime}(\text{taskSortLink}(s)) = \tau}$$

**延时任务扫描**：
$$\frac{\text{expired} = \{t \in \text{taskSortLink}(s) : \text{responseTime}(t) \leq \text{currentTime}(s)\} \quad \text{remaining} = \text{taskSortLink}(s) \setminus \text{expired}}{\text{OsSchedScanTimerList}(s) = \text{fold} \text{add\_to\_ready\_queue} \text{expired} (s[\text{taskSortLink} \mapsto \text{remaining}])}$$

### 不变量定义

#### 1. 优先级调度正确性

**形式化定义**：
$$\forall s \in \text{valid\_states}: \text{runTask}(s) = \text{Some}(t) \Rightarrow \forall t' \in \text{ready\_tasks}(s): \text{priority}(t) \leq \text{priority}(t')$$

**验证结果**：通过Isabelle/HOL证明，确保高优先级任务总是优先于低优先级任务被调度。

#### 2. 任务状态一致性

**形式化定义**：
$$\forall s \in \text{valid\_states}: \text{runTask}(s) = \text{Some}(t) \Rightarrow \text{taskStatus}(t) = \text{TaskRunning}$$

**验证结果**：确保运行任务的状态始终为运行状态。

#### 3. 延时任务排序不变量

**形式化定义**：
$$\forall s \in \text{valid\_states}: \forall t_1, t_2 \in \text{taskSortLink}(s): \text{index}(t_1) < \text{index}(t_2) \Rightarrow \text{responseTime}(t_1) \leq \text{responseTime}(t_2)$$

**验证结果**：确保延时任务按唤醒时间正确排序。

#### 4. 全局响应时间一致性

**形式化定义**：
$$\forall s \in \text{valid\_states}: \text{g\_responseTime}(s) = \text{OsSetNextExpireTime}(\text{taskSortLink}(s))$$

**验证结果**：确保全局响应时间始终等于下一个任务的唤醒时间。

### 关键概念与含义说明




#### 任务动作类型 (Task Actions)

```isabelle
datatype task_action =
    Computing nat      -- 计算任务，参数为持续时间
  | WaitingIO nat      -- I/O等待任务，参数为等待时间
  | Delay nat          -- 延时任务，参数为延时时间
  | Finished           -- 任务完成
```

**关键含义**：
- `Computing` 表示任务正在执行计算，不会阻塞调度器
- `WaitingIO` 和 `Delay` 是阻塞性动作，会触发任务调度
- `Finished` 表示任务执行完毕，需要从系统中移除

#### 系统事件类型 (System Events)

```isabelle
datatype system_event =
    TimerInterrupt                    -- 定时器中断
  | TaskStep task_id task_action      -- 任务执行步骤
  | WakingUpWithIO task_id            -- I/O唤醒事件
```

**关键含义**：
- `TimerInterrupt` 触发系统时间推进和延时任务检查
- `TaskStep` 表示任务执行一个具体动作，可能改变任务状态
- `WakingUpWithIO` 用于外部I/O完成时唤醒等待的任务

#### 优先级队列管理

**优先级位图机制**：
$$\text{priQueueBitmap}(s) = \min\{p : \text{get\_priority\_queue}(s, p) \neq []\}$$

**关键含义**：
- 使用位图快速定位最高优先级的非空队列
- 避免遍历所有优先级队列，提高调度效率
- 确保O(1)时间复杂度的任务选择

#### 延时任务排序机制

**排序不变量**：
$$\forall i < j < |\text{taskSortLink}(s)|: \text{responseTime}(\text{taskSortLink}(s)[i]) \leq \text{responseTime}(\text{taskSortLink}(s)[j])$$

**关键含义**：
- 延时任务按唤醒时间升序排列
- 确保最早需要唤醒的任务在链表头部
- 支持高效的延时任务管理和唤醒操作


### 性能缺陷发现与验证

通过Isabelle/HOL的形式化验证，我们发现了LiteOS-M中的一个重要性能缺陷。以下三个验证案例详细展示了这个问题：

#### 验证案例1：硬件定时器响应延迟问题

```isabelle
(* 案例1：需要系统滴答来设置全局响应时间 *)
value "let highest_priority_task = test_ready_task_1⦇taskID := 301, priority := 1, responseTime := 10⦈;
           high_priority_task = test_ready_task_2⦇taskID := 302, priority := 5, responseTime := 15⦈;
           medium_priority_task = test_ready_task_2⦇taskID := 303, priority := 10, responseTime := 20⦈;
           running_task = test_ready_task_2⦇taskID := 100, priority := 15⦈;
           initial_state = test_initial_state⦇currentTime := 15, runTask := Some running_task,
                                                  taskSortLink := [highest_priority_task, high_priority_task, medium_priority_task]⦈;
           after_wakeup = system_multi_step initial_state [(WakingUpWithIO 301), TimerInterrupt]
       in after_wakeup"
```

**问题分析**：当任务从`sortLink`中被唤醒时，原始的`system_multi_step`实现需要显式的`TimerInterrupt`事件来更新全局响应时间`g_responseTime`。这可能导致硬件定时器响应不及时，因为：

1. **延迟更新**：全局响应时间只有在系统滴答时才被更新
2. **硬件依赖**：系统依赖于硬件定时器的精确触发
3. **性能影响**：可能导致任务唤醒延迟，影响实时性

#### 验证案例2：无定时器中断的次优行为

```isabelle
(* 案例2：无定时器中断时的次优行为 *)
value "let highest_priority_task = test_ready_task_1⦇taskID := 301, priority := 1, responseTime := 10⦈;
           high_priority_task = test_ready_task_2⦇taskID := 302, priority := 5, responseTime := 15⦈;
           medium_priority_task = test_ready_task_2⦇taskID := 303, priority := 10, responseTime := 20⦈;
           running_task = test_ready_task_2⦇taskID := 100, priority := 15⦈;
           initial_state = test_initial_state⦇currentTime := 15, runTask := Some running_task,
                                                  taskSortLink := [highest_priority_task, high_priority_task, medium_priority_task]⦈;
           after_wakeup = system_multi_step initial_state [(WakingUpWithIO 301)]
       in after_wakeup"
```

**问题分析**：当没有显式的`TimerInterrupt`事件时，系统无法及时更新全局响应时间，导致：
- 硬件定时器可能错过下一个任务的唤醒时间
- 系统响应延迟增加
- 实时性保证被破坏

#### 验证案例3：优化方案的正确性验证

```isabelle
(* 案例3：优化版本的正确性验证 *)
value "let highest_priority_task = test_ready_task_1⦇taskID := 301, priority := 1, responseTime := 10⦈;
           high_priority_task = test_ready_task_2⦇taskID := 302, priority := 5, responseTime := 15⦈;
           medium_priority_task = test_ready_task_2⦇taskID := 303, priority := 10, responseTime := 20⦈;
           running_task = test_ready_task_2⦇taskID := 100, priority := 15⦈;
           initial_state = test_initial_state⦇currentTime := 15, runTask := Some running_task,
                                                  taskSortLink := [highest_priority_task, high_priority_task, medium_priority_task]⦈;
           after_wakeup = system_multi_step_optimised initial_state [(WakingUpWithIO 301), TimerInterrupt]
       in after_wakeup"
```

**优化方案**：我们实现了`OsDeleteSortLinkNode_optimised`函数，该函数在删除任务时立即更新全局响应时间：

```isabelle
definition OsDeleteSortLinkNode_optimised :: "scheduler_state ⇒ task_cb list ⇒ task_id ⇒ scheduler_state" where
  "OsDeleteSortLinkNode_optimised S task_list tid = 
     (let new_response_time = get_response_time_next_to_this tid task_list; 
          g_time = g_responseTime S;
          deleted = filter (λtcb. taskID tcb ≠ tid) task_list   
         in 
         (if new_response_time < g_time then S ⦇ taskSortLink := deleted, g_responseTime := new_response_time ⦈
          else S ⦇ taskSortLink := deleted ⦈)
       )"
```
因此，即使不需要系统滴答也能即使响应发出中断信号。



### 潜在优化

1. **硬件定时器响应不及时**：原始实现依赖显式的系统滴答来更新全局响应时间
2. **性能次优**：任务唤醒后无法立即更新下一个响应时间
3. **实时性风险**：可能导致关键任务延迟执行

### 优化方案的有效性

通过形式化验证，我们证明了优化方案能够：
- **立即更新**：在任务删除时立即更新全局响应时间
- **减少中断**：减少对硬件系统滴答的依赖
- **提高性能**：显著改善系统响应时间



## 五、实施整改
我们在LiteOS-M（针对Arm Cortex M4 mps2-an386平台版本）中复现验证出的两个并发缺陷。

### 缺陷一：任务调度活锁问题
引发错误的测试用例由三个并发执行的任务构成：`prev`、`victask`和`lucky`。
当`prev`（位于受害者任务之前的那个）在SysTick中断即将发生的前后被切出，`victask`（受害者任务）被`PendSV`调用新任务选择函数`OsSchedTaskSwitch`选作下一个运行的任务。此时lucky（当 victim 被选中但尚未开始执行时，下一个会选中的任务）的调度顺序位于`victask`之后，本应在`victask`执行完成后执行。SysTick中断在`PendSV`中断还未结束时被并行地触发，中断标志位设立。基于ARM体系的tail-chaining机制，`SysTick`在`PendSV`结束后执行，再次触发`PendSV`中断，导致前一次选取任务失效，重新选择任务。`victask`失去一次执行机会。如果此类情况一再发生，或者`victask`是某个关键任务（持有关键资源，是producer/consumer），则可能造成系统活锁/死锁。

### 缺陷二：硬件定时器响应延迟问题
通过Isabelle/HOL形式化验证发现的第二个缺陷是硬件定时器响应不及时问题。当任务从`sortLink`中被删除时，原始实现依赖显式的系统滴答来更新全局响应时间`g_responseTime`，这可能导致：
1. **延迟更新**：全局响应时间只有在系统滴答时才被更新
2. **硬件依赖**：系统依赖于硬件定时器的精确触发  
3. **性能影响**：可能导致任务唤醒延迟，影响实时性

对应的伪代码为
```
lucky {
    while(1){
        assert(victim_selected == victim_ran)
        print current tick number
        yield
    }
}

victask {
    old_victim_selected := victim_selected
    while(1) {
        if old_victim_selected != victim_selected
            victim_ran++
            old_victim_selected := victim_selected
        assert(victim_selected == victim_ran)
        yield
    }
}

prev {
    while(1){
        t1 = getTime()
        block of code (taking less than 1 tick's time)
        t2 = getTime()
        while(t2 - t1 < oneTickTime - epsilon)
            do some work taking less than epsilon's time
            t2 = getTime()
        yield
    }
}
Lock_scheduler()
taskCreate(prev, PRIO1) taskCreate(lucky, PRIO1) taskCreate(victask, PRIO1)
Unlock_scheduler()
```
所有三个任务均有相同的优先级。
对应的测试用例文件名以`Test.FRU_PRS.1-*.c`开头，`*`以数字编号，位于`testsuites/security/task`中。其中，核心用例对应的文件名为`Test.FRU_PRS.1-5.c`

### 整改建议

**缺陷一整改建议**：将SysTick任务的优先级提高。

**缺陷二整改建议**：每次删除sortLink节点时，若发现本节点的响应时间小于等于当前全局定时器响应时间，则更新全局响应时间到该节点下一节点。具体实现如下：

```c
// 优化后的sortLink节点删除函数
void OsDeleteSortLinkNode_optimized(LosTaskCB* taskCB) {
    // 检查被删除节点的响应时间
    if (taskCB->responseTime <= g_schedResponseTime) {
        // 更新全局响应时间为下一个节点的响应时间
        g_schedResponseTime = get_next_node_response_time();
    }
    // 执行正常的节点删除操作
    OsSortLinkDelete(&g_taskSortLinkList, &taskCB->sortList);
}
```

这种优化方案的优势：
1. **立即更新**：在任务删除时立即更新全局响应时间
2. **减少中断**：减少对硬件系统滴答的依赖
3. **提高性能**：显著改善系统响应时间
4. **实时性保证**：确保硬件定时器能够及时响应下一个任务的唤醒
## 参考文献

<a id="1"> [1]</a> Chen-Kai Lin and Bow-Yaw Wang. Analyzing FreeRTOS Scheduling Behaviors with the Spin Model Checker. arXiv preprint arXiv:2205.07480, 2022.

<a id="26"> [26]</a> Gerard J. Holzmann. The model checker spin. IEEE Trans. Softw. Eng., 23(5):279-295, May 1997.
