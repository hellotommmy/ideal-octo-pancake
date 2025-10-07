#!/bin/bash
# Verify SPIN model for assertion failures only

echo "Generating verifier..."
spin -a control.pml

echo "Compiling verifier..."
gcc -o pan pan.c -DSAFETY

echo "Running verification (checking assertions)..."
./pan -m1000000

echo ""
echo "Verification complete!"
