#!/bin/bash

if ! command -v spin &> /dev/null; then
    echo "Error: Spin not found"
    exit 1
fi

MODEL="main_smoke.pml"
DEPTH=2000
TIMEOUT=10

spin -a "$MODEL" >/dev/null 2>&1 || exit 1
gcc -O2 -o pan pan.c >/dev/null 2>&1 || exit 1

filter_pan_output() {
    # Keep only the key verifier lines similar to the provided snippet
    # - pan: ... messages
    # - Spin Version / Warning
    # - The "Full statespace search for:" block
    # - Summary / memory statistics
    awk '
        BEGIN { in_block = 0 }
        # Start of the summary block
        /^Full statespace search for:/ {
            print
            in_block = 1
            next
        }
        # End of the summary block on blank line
        in_block && /^[[:space:]]*$/ {
            print
            in_block = 0
            next
        }
        # Inside summary block
        in_block {
            print
            next
        }
        # Key single-line items
        /^pan:/ { print; next }
        /^\(Spin Version/ { print; next }
        /^Warning:/ { print; next }
        /^State-vector/ { print; next }
        /^hash conflicts:/ { print; next }
        /^Stats on memory usage/ { print; next }
        /^[[:space:]]+[0-9.]+[[:space:]]+.*memory/ { print; next }
    ' "$1"
}

# Smoke tests to verify (should FAIL to show normal behavior)
SMOKE_TESTS=(
    "smoke_P1_user_no_pending"
    "smoke_P2_user_no_pending"
)

# Complex trace verification tests
TRACE_TESTS=(
    "p2_double_context_switch"
    "P2_switching_not_P1_witness_unfolded"
)

# Basic property tests (should PASS)
BASIC_TESTS=(
    "back_to_user"
    "exc_leads_to_user"
)

passed=0
failed=0
total=0

TMPDIR="$(mktemp -d)"
trap 'rm -rf "$TMPDIR"' EXIT

for test in "${SMOKE_TESTS[@]}"; do
    total=$((total + 1))
    echo "timeout ${TIMEOUT}s ./pan -a -N \"$test\" -m${DEPTH}"
    outfile="${TMPDIR}/pan_${test}.out"
    timeout ${TIMEOUT}s ./pan -a -N "$test" -m${DEPTH} >"$outfile" 2>&1
    rc=$?
    filter_pan_output "$outfile"
    if [ $rc -ne 0 ]; then passed=$((passed + 1)); else failed=$((failed + 1)); fi
done

for test in "${TRACE_TESTS[@]}"; do
    total=$((total + 1))
    echo "timeout ${TIMEOUT}s ./pan -a -N \"$test\" -m${DEPTH}"
    outfile="${TMPDIR}/pan_${test}.out"
    timeout ${TIMEOUT}s ./pan -a -N "$test" -m${DEPTH} >"$outfile" 2>&1
    rc=$?
    filter_pan_output "$outfile"
    if [ $rc -eq 0 ]; then passed=$((passed + 1)); else failed=$((failed + 1)); fi
done

for test in "${BASIC_TESTS[@]}"; do
    total=$((total + 1))
    echo "timeout ${TIMEOUT}s ./pan -a -N \"$test\" -m${DEPTH}"
    outfile="${TMPDIR}/pan_${test}.out"
    timeout ${TIMEOUT}s ./pan -a -N "$test" -m${DEPTH} >"$outfile" 2>&1
    rc=$?
    filter_pan_output "$outfile"
    if [ $rc -eq 0 ]; then passed=$((passed + 1)); else failed=$((failed + 1)); fi
done

[ $passed -eq $total ]
