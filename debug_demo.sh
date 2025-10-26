#!/bin/bash
echo "=== Step 1: 运行验证 (会失败) ==="
spin -a c2res.pml 2>/dev/null
gcc -DSAFETY -o pan pan.c 2>/dev/null
./pan -m10000 2>&1 | grep -A5 "assertion violated"

echo -e "\n=== Step 2: 查看失败时的完整状态 ==="
spin -t -p -g c2res.pml 2>&1 | tail -50

echo -e "\n=== Step 3: 查看任务2状态的所有变化 ==="
spin -t -p -g c2res.pml 2>&1 | grep "tcb\[2\].state" | head -10

echo -e "\n=== Step 4: 查看EP_Stack的变化 ==="
spin -t -p -g c2res.pml 2>&1 | grep -E "(EP_Stack = [0-9]|switch_context)" | head -15
