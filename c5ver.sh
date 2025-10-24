#!/bin/bash
# Verify LTL properties for running task queue consistency

echo "=== Generating verifier (all LTL properties detected) ==="
spin -a c5.pml
gcc -o pan pan.c

echo ""
echo "=== Verifying LTL Property: running_not_in_queues_task1 ==="
./pan -a -N running_not_in_queues_task1
echo "Result: $?"

echo ""
echo "=== Verifying LTL Property: running_not_in_queues_task2 ==="
./pan -a -N running_not_in_queues_task2
echo "Result: $?"

echo ""
echo "=== Verifying LTL Property: running_not_in_queues_all ==="
./pan -a -N running_not_in_queues_all
echo "Result: $?"

echo ""
echo "All LTL verification complete!"

