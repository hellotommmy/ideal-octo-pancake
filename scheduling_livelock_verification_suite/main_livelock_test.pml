/* ===== Main Model File - Scheduling Livelock Test ===== */
/* 
 * This file demonstrates the scheduling livelock issue.
 * 
 * ISSUE DESCRIPTION:
 * When a task (victask) is selected by PendSV_Handler to run next,
 * but before it actually starts executing, a SysTick interrupt occurs
 * (via tail-chaining). This triggers another PendSV, which re-selects
 * a different task, causing victask to lose its execution opportunity.
 * 
 * SCENARIO:
 * 1. prev task is running
 * 2. SysTick interrupt is about to occur
 * 3. prev gets switched out, victask is selected by PendSV
 * 4. Before victask starts, SysTick fires (tail-chaining)
 * 5. SysTick triggers another PendSV
 * 6. PendSV re-selects, victask loses its turn
 * 7. If this repeats, victask may never run (livelock)
 * 
 * CONSEQUENCES:
 * - Task starvation
 * - Potential deadlock if victask holds critical resources
 * - System livelock if victask is a producer/consumer
 * 
 * VERIFICATION APPROACH:
 * - Use LTL properties to check for fairness
 * - Detect if victask remains READY but never gets to run
 * - Check for bounded execution opportunities
 * 
 * COMPILE AND RUN:
 * spin -a main_livelock_test.pml
 * gcc -o pan pan.c
 * ./pan -m10000
 * 
 * To check specific LTL properties:
 * ./pan -a -N starvation_free_task2  (checks victask starvation)
 */

#include "macros.pml"
#include "data_structures.pml"
#include "scheduler.pml"
#include "processes_livelock_test.pml"
#include "ltl_properties.pml"

/* ===== End of Main Model ===== */

