#!/bin/bash
# Verify LTL properties for resume_suspend.pml
spin -a resume_suspend.pml
gcc -o pan pan.c
./pan -a -f -N  all_starvation_free
