spin control.pml        # Run simulation
spin -a control.pml     # Generate verifier
gcc -o pan pan.c        # Compile verifier
./pan                   # Run verification