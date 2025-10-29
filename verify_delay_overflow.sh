#!/bin/bash

# Delay Overflow Bug Verification Script
# This script compiles and runs the delay overflow test

echo "=========================================="
echo "Delay Overflow Bug Verification"
echo "=========================================="
echo ""

# Check if spin is installed
if ! command -v spin &> /dev/null; then
    echo "Error: Spin model checker not found!"
    echo "Please install it with: apt install spin"
    exit 1
fi

# Compile the overflow test model
echo "Step 1: Compiling overflow test model..."
echo "Command: spin -a main_overflow_test.pml"
spin -a main_overflow_test.pml

if [ $? -ne 0 ]; then
    echo "Error: Failed to compile Promela model"
    exit 1
fi

echo ""
echo "Step 2: Compiling C verifier..."
echo "Command: gcc -o pan pan.c"
gcc -o pan pan.c -O2

if [ $? -ne 0 ]; then
    echo "Error: Failed to compile C verifier"
    exit 1
fi

echo ""
echo "Step 3: Running verification..."
echo "Command: ./pan"
echo ""
echo "Expected result: Assertion violation indicating overflow bug"
echo "The assertion that should fail:"
echo "  requestedDelay[taskId] <= ticksActuallyWaited[taskId]"
echo ""
echo "----------------------------------------"

./pan 2>&1 | tee pan_output.tmp

EXIT_CODE=$?

echo "----------------------------------------"
echo ""

# Check if overflow-related assertion was violated
if grep -q "assertion violated.*spaceLeft" pan_output.tmp || \
   grep -q "assertion violated.*ticksActuallyWaited" pan_output.tmp; then
    echo "Result: ✗ OVERFLOW BUG DETECTED!"
    echo ""
    echo "The verification found that g_tickCount + ticks causes overflow,"
    echo "which is the root cause of premature task wakeup."
    echo ""
    if grep -q "spaceLeft" pan_output.tmp; then
        echo "Assertion failed: ticks <= spaceLeft"
        echo "This means: delay value exceeds remaining tick space before overflow"
    fi
    if grep -q "ticksActuallyWaited" pan_output.tmp; then
        echo "Assertion failed: requestedDelay <= ticksActuallyWaited"
        echo "This means: task woke up before waiting requested number of ticks"
    fi
    EXIT_CODE=1
elif [ $EXIT_CODE -eq 0 ]; then
    echo "Result: ✓ Verification passed - No overflow bug detected"
    echo "Note: This might mean:"
    echo "  1. The bug is fixed"
    echo "  2. The test didn't reach the overflow scenario"
    echo "  3. Check if g_tickCount was initialized high enough"
else
    echo "Result: Verification failed with other errors"
    echo "Check the output above for details"
fi

rm -f pan_output.tmp

echo ""
echo "=========================================="
echo "Verification complete"
echo "=========================================="

exit $EXIT_CODE

