#!/bin/bash
# Verify LTL properties for c2.pml

echo "=== Generating verifier (all LTL properties detected) ==="
spin -a c2.pml
gcc -o pan pan.c

echo ""
echo "=========================================="
echo "=== Basic Liveness Properties ==="
echo "=========================================="

echo ""
echo "=== Verifying: back_to_user ==="
echo "    Property: System eventually returns to user mode"
echo "    Expected: errors: 0 (验证通过)"
./pan -a -N back_to_user
echo "Result: $?"

echo ""
echo "=== Verifying: exc_leads_to_user ==="
echo "    Property: Exception entry eventually leads to user mode"
echo "    Expected: errors: 0 (验证通过)"
./pan -a -N exc_leads_to_user
echo "Result: $?"

echo ""
echo "=========================================="
echo "=== Starvation Freedom Properties ==="
echo "=========================================="

echo ""
echo "=== Verifying: starvation_free_task1 ==="
echo "    Property: Task1 is starvation-free"
echo "    Expected: errors: 0 (验证通过)"
./pan -a -N starvation_free_task1
echo "Result: $?"

echo ""
echo "=== Verifying: starvation_free_task2 ==="
echo "    Property: Task2 is starvation-free"
echo "    Expected: errors: 0 (验证通过)"
./pan -a -N starvation_free_task2
echo "Result: $?"

echo ""
echo "=== Verifying: all_starvation_free (no fairness) ==="
echo "    Property: All tasks are starvation-free"
echo "    Expected: errors: 0 (验证通过)"
./pan -a -N all_starvation_free
echo "Result: $?"

echo ""
echo "=== Verifying: all_starvation_free (with fairness) ==="
echo "    Property: All tasks are starvation-free (fairness enabled)"
echo "    Expected: errors: 0 (验证通过)"
./pan -a -N -f all_starvation_free
echo "Result: $?"

echo ""
echo "=========================================="
echo "=== Double Context Switch Witnesses ==="
echo "=========================================="

echo ""
echo "=== Verifying: P2_switching_not_P1_witness_unfolded ==="
echo "    Property: P2 can experience double context switch (unfolded version)"
echo "    Expected: errors: 1 (找到反例，说明双重切换可以发生)"
./pan -a -N P2_switching_not_P1_witness_unfolded
echo "Result: $?"

echo ""
echo "=== Verifying: p2_double_context_switch ==="
echo "    Property: P2 can experience double context switch (syntactic sugar version)"
echo "    Expected: errors: 1 (找到反例，说明双重切换可以发生)"
./pan -a -N p2_double_context_switch
echo "Result: $?"

echo ""
echo "=========================================="
echo "=== Smoke Tests ==="
echo "=========================================="

echo ""
echo "=== Verifying: smoke_P1_user_no_pending ==="
echo "    Property: P1 can run in user mode with no pending and chain_tick_used=1"
echo "    Expected: errors: 1 (找到反例，说明该状态可达)"
./pan -a -N smoke_P1_user_no_pending
echo "Result: $?"

echo ""
echo "=== Verifying: smoke_P2_user_no_pending ==="
echo "    Property: P2 can run in user mode with no pending and chain_tick_used=1"
echo "    Expected: errors: 1 (找到反例，说明该状态可达)"
./pan -a -N smoke_P2_user_no_pending
echo "Result: $?"

echo ""
echo "=========================================="
echo "All LTL verification complete!"
echo "=========================================="
echo ""
echo "Summary:"
echo "  - Liveness properties should have 0 errors"
echo "  - Witness properties should have 1 error (counterexample found)"
echo "  - Smoke tests should have 1 error (state reachable)"




