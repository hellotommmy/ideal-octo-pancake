#!/bin/bash

# Ready-Queue Non-Empty Verification Script (dual-model comparison)
# - Runs a CORRECT model and a BUG-REVEALING model
# - For now both models must be clean (no assertions/errors)
#   (use an explicit bug model later to trigger only this class of error)

echo "=========================================="
echo "Ready Queue Non-Empty Verification"
echo "=========================================="
echo ""

# Check if spin is installed
if ! command -v spin &> /dev/null; then
    echo "Error: Spin model checker not found!"
    echo "Please install it with: apt install spin"
    exit 1
fi

# Configuration
BUG_MODEL="main_overflow_test.pml"
CORRECT_MODEL="main_correct.pml"
DEPTH=10000  # Maximum search depth (use -m flag for pan)

compile_and_build() {
    local model="$1"
    echo "Step: Compiling model: $model"
    echo "Command: spin -a $model"
    spin -a "$model" || return 1
    echo "Command: gcc -O2 -o pan pan.c"
    gcc -O2 -o pan pan.c || return 1
    return 0
}

run_pan() {
    local label="$1"; shift
    echo "Running verification ($label) with depth=$DEPTH ..."
    ./pan -m${DEPTH} 2>&1 | tee "pan_${label}.out"
    return ${PIPESTATUS[0]}
}

run_trace() {
    local model="$1"
    local label="$2"
    spin -t -g -l -p "$model" 2>&1 | tee "trace_${label}.out" >/dev/null
}

echo ""
echo "[1/2] BUG-REVEALING MODEL (placeholder): $BUG_MODEL"
if ! compile_and_build "$BUG_MODEL"; then
    echo "Error: Failed to compile/build $BUG_MODEL"
    exit 1
fi

bug_ok=0
if run_pan "bug"; then
    if grep -qi "assertion violated\|Error:" pan_bug.out; then
        echo "Result (BUG model, placeholder): ✗ Unexpected errors present"
        bug_ok=1
    else
        echo "Result (BUG model, placeholder): ✓ Clean (no errors)"
        bug_ok=0
    fi
else
    echo "Result (BUG model, placeholder): ✗ Should be clean for now"
    run_trace "$BUG_MODEL" "bug"
    bug_ok=1
fi

echo ""
echo "[2/2] CORRECT MODEL: $CORRECT_MODEL"
if ! compile_and_build "$CORRECT_MODEL"; then
    echo "Error: Failed to compile/build $CORRECT_MODEL"
    exit 1
fi

run_pan "ok"
rc=$?
if [ $rc -ne 0 ]; then
    echo "Result (CORRECT model): ✗ Should be clean, but verification failed"
    run_trace "$CORRECT_MODEL" "ok"
    correct_ok=1
else
    if grep -qi "assertion violated\|Error:" pan_ok.out; then
        echo "Result (CORRECT model): ✗ Unexpected errors present"
        correct_ok=1
    else
        echo "Result (CORRECT model): ✓ Clean (no errors)"
        correct_ok=0
    fi
fi

echo ""
echo "=========================================="
echo "Verification complete (dual-model)"
echo "=========================================="

exit $(( bug_ok | correct_ok ))

