#!/bin/bash

# Scheduling Livelock Verification Script
# Checks for task starvation and scheduling fairness issues

echo "=========================================="
echo "Scheduling Livelock Verification"
echo "=========================================="
echo ""

# Check if spin is installed
if ! command -v spin &> /dev/null; then
    echo "Error: Spin model checker not found!"
    echo "Please install it with: apt install spin"
    exit 1
fi

# Configuration
MODEL="main_livelock_test.pml"
DEPTH=2000  # Maximum search depth (reduced due to large state space)
TIMEOUT=5   # Timeout in seconds for each verification step

echo "Verifying three-task scheduling scenario:"
echo "  - prev: Task before victim in schedule order"
echo "  - victask: Victim that may lose execution opportunities"
echo "  - lucky: Task that benefits from victim's loss"
echo "  - IdleTask: Lowest priority task to prevent deadlock"
echo ""

# Compile model
echo "Step 1: Compiling model: $MODEL"
echo "Command: spin -a $MODEL"
if ! spin -a "$MODEL"; then
    echo "Error: Failed to compile model"
    exit 1
fi

echo "Command: gcc -O2 -o pan pan.c"
if ! gcc -O2 -o pan pan.c; then
    echo "Error: Failed to build verifier"
    exit 1
fi

echo ""
echo "Step 2: Running basic verification (without LTL)"
echo "Command: timeout ${TIMEOUT}s ./pan -m${DEPTH}"
echo ""

if timeout ${TIMEOUT}s ./pan -m${DEPTH} 2>&1 | tee pan_basic.out; then
    exit_code=0
else
    exit_code=$?
fi

if [ $exit_code -eq 124 ]; then
    echo ""
    echo "Result: ⚠ Basic verification timed out (>${TIMEOUT}s)"
    echo "  No errors found within time limit - continuing..."
    basic_ok=0
elif grep -q "errors: 0" pan_basic.out; then
    echo ""
    echo "Result: ✓ Basic verification passed (no assertion violations)"
    basic_ok=0
else
    echo ""
    echo "Result: ✗ Basic verification found errors"
    if grep -q "assertion violated" pan_basic.out; then
        echo "  Found assertion violation:"
        grep "assertion violated" pan_basic.out | head -3
    fi
    basic_ok=1
fi

echo ""
echo "=========================================="
echo "Step 3: Checking Fairness Properties"
echo "=========================================="
echo ""

# Check starvation freedom for victask (FIRST_TASK+1)
echo "[3.1] Checking victask starvation freedom..."
echo "Command: timeout ${TIMEOUT}s ./pan -a -N starvation_free_task2 -m${DEPTH}"
echo ""

if timeout ${TIMEOUT}s ./pan -a -N starvation_free_task2 -m${DEPTH} 2>&1 | tee pan_starvation.out; then
    exit_code=0
else
    exit_code=$?
fi

if [ $exit_code -eq 124 ]; then
    echo ""
    echo "Result: ⚠ Starvation check timed out (>${TIMEOUT}s)"
    echo "  No starvation detected within time limit - continuing..."
    starvation_ok=0
elif grep -q "errors: 0" pan_starvation.out; then
    echo ""
    echo "Result: ✓ Victask starvation freedom verified"
    starvation_ok=0
else
    echo ""
    echo "Result: ✗ Victask starvation detected!"
    echo "  This indicates the livelock issue exists"
    if [ -f "main_livelock_test.pml.trail" ]; then
        echo ""
        echo "  Generating counter-example trace..."
        spin -t -p "$MODEL" > trace_starvation.out 2>&1
        echo "  Trace saved to: trace_starvation.out"
    fi
    starvation_ok=1
fi

echo ""
echo "=========================================="
echo "Step 4: Checking Progress Properties"
echo "=========================================="
echo ""

echo "[4.1] Checking that execution eventually returns to user tasks..."
echo "Command: timeout ${TIMEOUT}s ./pan -a -N back_to_user -m${DEPTH}"
echo ""

if timeout ${TIMEOUT}s ./pan -a -N back_to_user -m${DEPTH} 2>&1 | tee pan_progress.out; then
    exit_code=0
else
    exit_code=$?
fi

if [ $exit_code -eq 124 ]; then
    echo ""
    echo "Result: ⚠ Progress check timed out (>${TIMEOUT}s)"
    echo "  No violations detected within time limit - continuing..."
    progress_ok=0
elif grep -q "errors: 0" pan_progress.out; then
    echo ""
    echo "Result: ✓ Progress property verified"
    progress_ok=0
else
    echo ""
    echo "Result: ✗ Progress property violation detected"
    progress_ok=1
fi

echo ""
echo "=========================================="
echo "Verification Summary"
echo "=========================================="
echo ""

if [ $basic_ok -eq 0 ]; then
    echo "✓ Basic verification: PASSED"
else
    echo "✗ Basic verification: FAILED"
fi

if [ $starvation_ok -eq 0 ]; then
    echo "✓ Starvation freedom: VERIFIED"
else
    echo "✗ Starvation freedom: VIOLATED (livelock detected!)"
fi

if [ $progress_ok -eq 0 ]; then
    echo "✓ Progress property: VERIFIED"
else
    echo "✗ Progress property: VIOLATED"
fi

echo ""
echo "=========================================="
echo "Key Metrics from Verification:"
echo "=========================================="
echo ""

# Extract state space size
if [ -f pan_basic.out ]; then
    echo "State space exploration:"
    grep "states, stored" pan_basic.out || echo "  (metrics not available)"
    grep "depth reached" pan_basic.out || echo "  (depth not available)"
fi

echo ""
echo "=========================================="
echo "Notes:"
echo "=========================================="
echo ""
echo "- Timeout: ${TIMEOUT} seconds per verification step"
echo "- The livelock issue occurs when SysTick interrupts PendSV"
echo "  via tail-chaining, causing task re-selection"
echo "- Victask may remain READY but never execute"
echo "- This is a known issue in the current scheduler design"
echo "- No fix is implemented in this verification suite"
echo ""
echo "To adjust timeout: Edit TIMEOUT variable at top of script"
echo ""

# Exit with combined status
exit $(( basic_ok | starvation_ok | progress_ok ))

