# 方案4：双队列分离法 - 完整实现方案

## 核心思想

```
tick周期: 0-255-0-255-...
         └─当前周期─┘└─下个周期─┘

正常队列: g_taskSortLink       (当前周期内唤醒的任务)
溢出队列: overflowedSortLink   (下个周期才唤醒的任务)

切换时机: g_tickCount从255变为0时
```

## 判断溢出的方法

```promela
/* 如果 g_tickCount + ticks 的结果反而小于 g_tickCount，则发生了溢出 */
byte wakeupTime = g_tickCount + ticks;
byte willOverflow = (wakeupTime < g_tickCount);

/* 或者更精确的判断 */
byte willOverflow = ((255 - g_tickCount) < ticks);
```

## 数据结构扩展

### 在 data_structures.pml 的 Global Variables 部分添加

```promela
/***** Global Variables *****/
byte EP = NULL_byte;
byte g_tickCount = 0;
byte g_schedResponseTime = MAX_RESPONSE_TIME;
byte BASEPRI = 0;
byte pending_exp = 0;
byte EP_Stack = NULL_byte;
bit chain_tick_used = 0;
byte topPrio;
byte g_taskScheduled = 1;

/* 新增：溢出队列相关变量 */
byte g_overflowedResponseTime = MAX_RESPONSE_TIME;  /* 溢出队列最早唤醒时间 */
```

### 在数据结构定义后添加

```promela
TCB tcb[LAST_TASK + 1];
ReadyList readyQueue[NUM_PRIORITIES];
SortLinkNode g_taskSortLink[NUM_OF_TASKS + 1];
byte g_taskSortLinkTail = 0;

/* 新增：溢出延迟队列 */
SortLinkNode overflowedSortLink[NUM_OF_TASKS + 1];
byte overflowedSortLinkTail = 0;
```

## 辅助函数

### 1. 检查溢出

```promela
/***** 检查加法是否会溢出 *****/
inline WillOverflow(base, increment, result)
{
    /* 方法1：检查结果是否反而变小 */
    byte sum = base + increment;
    result = (sum < base);
    
    /* 或者方法2：检查剩余空间 */
    /* result = ((255 - base) < increment); */
}
```

### 2. 智能添加到合适的队列

```promela
/***** 
 * 智能添加到sortLink队列
 * 自动判断应该加入正常队列还是溢出队列
 *****/
inline OsAdd2SortLinkSorted_DualQueue(taskID, wakeupTime)
{
    byte insertPos;
    byte idx;
    byte found;
    byte tmpId;
    byte tmpTime;
    byte willOverflow;
    
    /* 判断是否溢出：wakeupTime < g_tickCount 说明发生了环绕 */
    willOverflow = (wakeupTime < g_tickCount);
    
    if
    :: (willOverflow) ->
        /* ===== 加入溢出队列 ===== */
        assert(overflowedSortLinkTail < NUM_OF_TASKS + 1);
        
        /* 找到插入位置（在溢出队列中排序）*/
        insertPos = 0;
        found = 0;
        do
        :: (insertPos < overflowedSortLinkTail && found == 0) ->
            if
            :: (wakeupTime < overflowedSortLink[insertPos].responseTime) -> 
                found = 1
            :: else -> 
                insertPos++
            fi
        :: else -> break
        od;
        
        /* 移动元素为新任务腾出空间 */
        idx = overflowedSortLinkTail;
        do
        :: (idx > insertPos) ->
            tmpId = overflowedSortLink[idx - 1].taskId;
            tmpTime = overflowedSortLink[idx - 1].responseTime;
            overflowedSortLink[idx].taskId = tmpId;
            overflowedSortLink[idx].responseTime = tmpTime;
            /* 更新pendList：使用128+偏移标记溢出队列 */
            if
            :: (tmpId != UNUSED) -> 
                tcb[tmpId].pendList = 128 + idx
            :: else -> skip
            fi;
            idx--
        :: else -> break
        od;
        
        /* 插入新任务 */
        overflowedSortLink[insertPos].taskId = taskID;
        overflowedSortLink[insertPos].responseTime = wakeupTime;
        tcb[taskID].pendList = 128 + insertPos;  /* 标记在溢出队列 */
        overflowedSortLinkTail++;
        
        /* 更新溢出队列的最早唤醒时间 */
        if
        :: (insertPos == 0 && wakeupTime < MAX_RESPONSE_TIME) ->
            g_overflowedResponseTime = wakeupTime
        :: else -> skip
        fi;
        
        /* 验证溢出队列有序 */
        AssertOverflowedSortLinkIsSorted()
        
    :: else ->
        /* ===== 加入正常队列（原有逻辑）===== */
        assert(g_taskSortLinkTail < NUM_OF_TASKS + 1);
        
        insertPos = 0;
        found = 0;
        do
        :: (insertPos < g_taskSortLinkTail && found == 0) ->
            if
            :: (wakeupTime < g_taskSortLink[insertPos].responseTime) -> 
                found = 1
            :: else -> 
                insertPos++
            fi
        :: else -> break
        od;
        
        idx = g_taskSortLinkTail;
        do
        :: (idx > insertPos) ->
            tmpId = g_taskSortLink[idx - 1].taskId;
            tmpTime = g_taskSortLink[idx - 1].responseTime;
            g_taskSortLink[idx].taskId = tmpId;
            g_taskSortLink[idx].responseTime = tmpTime;
            if
            :: (tmpId != UNUSED) -> tcb[tmpId].pendList = idx
            :: else -> skip
            fi;
            idx--
        :: else -> break
        od;
        
        g_taskSortLink[insertPos].taskId = taskID;
        g_taskSortLink[insertPos].responseTime = wakeupTime;
        tcb[taskID].pendList = insertPos;
        g_taskSortLinkTail++;
        
        if
        :: (insertPos == 0 && wakeupTime < MAX_RESPONSE_TIME) ->
            g_schedResponseTime = wakeupTime
        :: else -> skip
        fi;
        
        AssertSortLinkIsSorted()
    fi
}
```

## 修改 OsSchedDelay

```promela
inline OsSchedDelay(taskID, ticks, needSched)
{
    assert(tcb[taskID].state == READY || tcb[taskID].state == RUNNING);
    needSched = 1;
    
    if
    :: (tcb[taskID].state == READY) ->
        OsDequeueWithId(taskID);
    :: else -> skip
    fi;
    
    tcb[taskID].state = DELAYED;
    
    /* 计算唤醒时间（允许溢出，会自动处理）*/
    byte wakeupTime = g_tickCount + ticks;
    
    /* 使用双队列版本，自动判断加入哪个队列 */
    OsAdd2SortLinkSorted_DualQueue(taskID, wakeupTime);
}
```

## 修改 OsTickProcess - 关键部分

```promela
inline OsTickProcess()
{
    byte idx = 0;
    byte taskId;
    byte needSched = 0;
    byte oldTickCount = g_tickCount;
    
    /* 增加tick计数 */
    g_tickCount++;
    
    /* ===== 关键：检查是否发生环绕（255 -> 0）===== */
    if
    :: (oldTickCount == 255 && g_tickCount == 0) ->
        /* 
         * Tick环绕！需要切换队列
         * 此时 g_taskSortLink 应该已经空了
         * 将 overflowedSortLink 移动到 g_taskSortLink
         */
        
        /* 如果正常队列不为空，说明有bug（不应该还有未唤醒的任务）*/
        /* 但为了健壮性，我们合并两个队列 */
        
        /* 移动溢出队列到正常队列 */
        idx = 0;
        do
        :: (idx < overflowedSortLinkTail) ->
            byte newIdx = g_taskSortLinkTail + idx;
            g_taskSortLink[newIdx].taskId = overflowedSortLink[idx].taskId;
            g_taskSortLink[newIdx].responseTime = overflowedSortLink[idx].responseTime;
            
            /* 更新pendList指向（去掉128标记）*/
            if
            :: (g_taskSortLink[newIdx].taskId != UNUSED) ->
                tcb[g_taskSortLink[newIdx].taskId].pendList = newIdx
            :: else -> skip
            fi;
            
            idx++
        :: else -> break
        od;
        
        /* 更新队列长度 */
        g_taskSortLinkTail = g_taskSortLinkTail + overflowedSortLinkTail;
        
        /* 更新最早唤醒时间 */
        if
        :: (g_taskSortLinkTail > 0) ->
            g_schedResponseTime = g_taskSortLink[0].responseTime
        :: else ->
            g_schedResponseTime = MAX_RESPONSE_TIME
        fi;
        
        /* 清空溢出队列 */
        overflowedSortLinkTail = 0;
        g_overflowedResponseTime = MAX_RESPONSE_TIME;
        
        /* 清空溢出队列内容 */
        idx = 0;
        do
        :: (idx < NUM_OF_TASKS + 1) ->
            overflowedSortLink[idx].taskId = UNUSED;
            overflowedSortLink[idx].responseTime = UNUSED;
            idx++
        :: else -> break
        od
        
    :: else -> skip
    fi;
    
    /* ===== 原有的唤醒逻辑（只处理正常队列）===== */
    if
    :: (g_tickCount < g_schedResponseTime) ->
        skip
    :: else ->
        idx = 0;
        do
        :: (idx < g_taskSortLinkTail) ->
            taskId = g_taskSortLink[idx].taskId;
            byte taskResponseTime = g_taskSortLink[idx].responseTime;
            
            if
            :: (taskResponseTime >= MAX_RESPONSE_TIME) ->
                break
                
            :: (tcb[taskId].state == DELAYED && g_tickCount >= taskResponseTime) ->
                /* 唤醒任务 */
                tcb[taskId].state = READY;
                OsEnqueueTail(taskId, tcb[taskId].prio);
                
                /* 从sortLink移除 */
                byte shiftIdx = idx;
                do
                :: (shiftIdx < g_taskSortLinkTail - 1) ->
                    g_taskSortLink[shiftIdx].taskId = g_taskSortLink[shiftIdx + 1].taskId;
                    g_taskSortLink[shiftIdx].responseTime = g_taskSortLink[shiftIdx + 1].responseTime;
                    if
                    :: (g_taskSortLink[shiftIdx].taskId != UNUSED) ->
                        tcb[g_taskSortLink[shiftIdx].taskId].pendList = shiftIdx
                    :: else -> skip
                    fi;
                    shiftIdx++
                :: else -> break
                od;
                
                g_taskSortLink[g_taskSortLinkTail - 1].taskId = UNUSED;
                g_taskSortLink[g_taskSortLinkTail - 1].responseTime = UNUSED;
                g_taskSortLinkTail--;
                
                AssertSortLinkIsSorted();
                needSched = 1;
                
            :: (tcb[taskId].state == DELAYED && g_tickCount < taskResponseTime) ->
                break
                
            :: else -> 
                idx++
            fi
        :: else -> break
        od;
        
        /* 更新最早唤醒时间 */
        if
        :: (needSched) ->
            if
            :: (g_taskSortLinkTail == 0) ->
                g_schedResponseTime = MAX_RESPONSE_TIME
            :: (g_taskSortLinkTail > 0) ->
                byte firstTime = g_taskSortLink[0].responseTime;
                if
                :: (firstTime < MAX_RESPONSE_TIME) ->
                    g_schedResponseTime = firstTime
                :: else ->
                    g_schedResponseTime = MAX_RESPONSE_TIME
                fi
            fi
        :: else -> skip
        fi
    fi;
    
    if
    :: (needSched && g_taskScheduled) ->
        set_pending(PendSV_ID)
    :: else -> skip
    fi
}
```

## 处理 Suspend/Resume

```promela
inline OsRemoveFromSortLink_DualQueue(taskID)
{
    byte queueFlag = tcb[taskID].pendList;
    
    if
    :: (queueFlag < 128) ->
        /* 在正常队列中 - 使用原有的OsRemoveFromSortLink逻辑 */
        OsRemoveFromSortLink(taskID)
        
    :: else ->
        /* 在溢出队列中（queueFlag >= 128）*/
        byte idx = queueFlag - 128;
        byte removedIdx = idx;
        
        do
        :: (idx < overflowedSortLinkTail - 1) ->
            overflowedSortLink[idx].taskId = overflowedSortLink[idx + 1].taskId;
            overflowedSortLink[idx].responseTime = overflowedSortLink[idx + 1].responseTime;
            if
            :: (overflowedSortLink[idx].taskId != UNUSED) ->
                tcb[overflowedSortLink[idx].taskId].pendList = 128 + idx
            :: else -> skip
            fi;
            idx++
        :: else -> break
        od;
        
        overflowedSortLink[overflowedSortLinkTail - 1].taskId = UNUSED;
        overflowedSortLink[overflowedSortLinkTail - 1].responseTime = UNUSED;
        overflowedSortLinkTail--;
        
        /* 更新溢出队列最早唤醒时间 */
        if
        :: (overflowedSortLinkTail == 0) ->
            g_overflowedResponseTime = MAX_RESPONSE_TIME
        :: (removedIdx == 0 && overflowedSortLinkTail > 0) ->
            byte newFirstTime = overflowedSortLink[0].responseTime;
            if
            :: (newFirstTime < MAX_RESPONSE_TIME) ->
                g_overflowedResponseTime = newFirstTime
            :: else ->
                g_overflowedResponseTime = MAX_RESPONSE_TIME
            fi
        :: else -> skip
        fi;
        
        AssertOverflowedSortLinkIsSorted()
    fi
}
```

## 添加验证函数

```promela
/***** 验证溢出队列也是有序的 *****/
inline AssertOverflowedSortLinkIsSorted()
{
    byte checkIdx = 0;
    
    do
    :: (checkIdx < overflowedSortLinkTail - 1) ->
        assert(overflowedSortLink[checkIdx].responseTime <= 
               overflowedSortLink[checkIdx + 1].responseTime);
        checkIdx++
    :: else -> break
    od
}
```

## pendList 编码方案

```
值范围 0-127:   任务在正常队列 g_taskSortLink 中，值为队列索引
值范围 128-255: 任务在溢出队列 overflowedSortLink 中，值为 128 + 队列索引

示例：
  pendList = 5     → 在 g_taskSortLink[5]
  pendList = 130   → 在 overflowedSortLink[130-128] = overflowedSortLink[2]
```

## 优缺点分析

### ✅ 优点

1. **完全避免溢出bug** - 通过分离队列，不会发生过早唤醒
2. **保持O(1)优化** - 每个队列独立排序，早期终止依然有效
3. **支持完整范围** - 可以delay 0-255 全部范围
4. **逻辑清晰** - 当前周期和下个周期明确分离
5. **可验证性强** - 切换逻辑明确，容易验证

### ⚠️ 缺点

1. **空间开销** - 需要额外的队列（双倍sortLink空间）
2. **代码复杂度** - 需要维护两个队列，代码量增加
3. **切换开销** - 在255->0时需要移动整个队列
4. **pendList复杂** - 需要用标记位区分任务在哪个队列

## 关键要点

### 判断溢出
```promela
byte wakeupTime = g_tickCount + ticks;
byte willOverflow = (wakeupTime < g_tickCount);  // 如果结果反而变小，说明溢出了
```

### 队列切换时机
```promela
if (oldTickCount == 255 && g_tickCount == 0) {
    /* 发生环绕，将溢出队列合并到正常队列 */
    // 移动 overflowedSortLink -> g_taskSortLink
}
```

### 重要假设
- 在tick环绕时（255->0），g_taskSortLink应该已经空了或接近空
- 所有responseTime在当前周期的任务应该已经被唤醒
- 溢出队列中的任务都是下个周期才需要唤醒的

---

**状态**: 方案设计完成，待实现和测试  
**复杂度**: 高  
**推荐度**: ⭐⭐⭐⭐ (如果需要支持完整delay范围)

