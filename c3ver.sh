#!/bin/bash
# Verify LTL properties for starvation freedom

echo "=== Generating verifier (all LTL properties detected) ==="
spin -a c3.pml
gcc -o pan pan.c

echo ""
echo "=== Verifying LTL Property: starvation_free_task1 ==="
./pan -a -N starvation_free_task1
echo "Result: $?"

echo ""
echo "=== Verifying LTL Property: starvation_free_task2 ==="
./pan -a -N starvation_free_task2
echo "Result: $?"

echo ""
echo "=== Verifying LTL Property: all_starvation_free ==="
./pan -a -N all_starvation_free
echo "Result: $?"

echo ""
echo "All LTL verification complete!"

