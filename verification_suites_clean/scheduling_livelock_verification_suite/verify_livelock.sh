#!/bin/bash

if ! command -v spin &> /dev/null; then
    echo "Error: Spin model checker not found!"
    echo "Please install it with: apt install spin"
    exit 1
fi

BASIC_MODEL="main_livelock_basic.pml"
LTL_MODEL="main_livelock_test.pml"
DEPTH=2000
TIMEOUT=10
WIDTH=27

filter_pan_output() {
    awk '
        BEGIN { in_block = 0 }
        /^Full statespace search for:/ { print; in_block = 1; next }
        in_block && /^[[:space:]]*$/ { print; in_block = 0; next }
        in_block { print; next }
        /^pan:/ { print; next }
        /^\(Spin Version/ { print; next }
        /^Warning:/ { print; next }
        /^State-vector/ { print; next }
        /^hash conflicts:/ { print; next }
        /^Stats on memory usage/ { print; next }
        /^[[:space:]]+[0-9.]+[[:space:]]+.*memory/ { print; next }
    ' "$1"
}

TMPDIR="$(mktemp -d)"
trap 'rm -rf "$TMPDIR"' EXIT

compile_and_build() {
    local model="$1"
    rm -f pan pan.* >/dev/null 2>&1
    spin -a "$model" >/dev/null 2>&1 || return 1
    gcc -O2 -o pan pan.c >/dev/null 2>&1 || return 1
    return 0
}

run_pan() {
    local label="$1"; shift
    local outfile="${TMPDIR}/pan_${label}.out"
    local extra_args=("$@")
    echo "timeout -s INT -k 2s ${TIMEOUT}s ./pan ${extra_args[*]} -m${DEPTH} -w${WIDTH}"
    timeout -s INT -k 2s ${TIMEOUT}s ./pan "${extra_args[@]}" -m${DEPTH} -w${WIDTH} >"$outfile" 2>&1
    local cmd_rc=$?
    filter_pan_output "$outfile"
    if [ $cmd_rc -eq 124 ] || [ $cmd_rc -eq 137 ]; then
        echo "pan: timeout after ${TIMEOUT}s"
    fi
    if grep -q "errors: 0" "$outfile"; then
        return 0
    else
        return 1
    fi
}

if ! compile_and_build "$BASIC_MODEL"; then
    echo "Error: failed to build"
    exit 1
fi

status=0

# Basic (no LTL) - built from BASIC_MODEL that excludes LTL claims
if ! run_pan "basic"; then status=$((status | 1)); fi

# Rebuild with full LTL model for subsequent checks
if ! compile_and_build "$LTL_MODEL"; then
    echo "Error: failed to build"
    exit 1
fi

# Starvation freedom claim
if ! run_pan "starvation" -a -N starvation_free_task2; then status=$((status | 1)); fi

# Progress property
if ! run_pan "progress" -a -N back_to_user; then status=$((status | 1)); fi

# At-least-one-infinite execution among prev/victim/lucky
if ! run_pan "oneinf" -a -N at_least_one_runs_inf; then status=$((status | 1)); fi

exit $status

