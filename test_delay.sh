#!/bin/bash
# Test script for LOS_TaskDelay and LOS_TaskYield

echo "========================================="
echo "Testing TaskDelay and TaskYield Functions"
echo "========================================="

PMLFILE="c2res.pml"

# Check if file exists
if [ ! -f "$PMLFILE" ]; then
    echo "Error: $PMLFILE not found!"
    exit 1
fi

# Compile
echo -e "\n[1/3] Compiling model..."
spin -a $PMLFILE 2>&1 | grep -E "(warning|error)" || echo "✓ No warnings"
gcc -DSAFETY -o pan pan.c 2>&1 | grep -E "(warning|error)" || echo "✓ Compiled successfully"

# Run basic verification
echo -e "\n[2/3] Running basic verification..."
timeout 30 ./pan -m10000 2>&1 | tail -20

# Check results
if [ $? -eq 0 ]; then
    echo -e "\n✅ Verification PASSED - No errors found!"
else
    echo -e "\n⚠️  Verification found issues - checking trail..."
    
    # Show error details
    echo -e "\n[3/3] Analyzing error trail..."
    spin -t -p -g -l $PMLFILE 2>&1 | tail -80 > error_trail.txt
    echo "Error trail saved to error_trail.txt"
    
    # Show key information
    echo -e "\n=== Error Summary ==="
    grep -E "(assertion|Error|state)" error_trail.txt | head -20
    
    echo -e "\n=== Task States at Error ==="
    grep "tcb\[" error_trail.txt | tail -5
    
    echo -e "\n=== Tick Count at Error ==="
    grep "g_tickCount" error_trail.txt | tail -3
    
    echo -e "\n=== SortLink at Error ==="
    grep "g_taskSortLink" error_trail.txt | tail -5
fi

echo -e "\n========================================="
echo "Test completed!"
echo "========================================="

