/* ===== Main Model File - Delay Correctness Verification ===== */
/* 
 * This file is specifically for verifying the correctness of LOS_TaskDelay.
 * It uses bad_scheduler.pml which tracks actual wait times and verifies
 * the formal property: requestedDelay <= ticksActuallyWaited
 * 
 * USAGE: Compile with this file instead of main.pml when testing delay
 * 
 * Expected result: If overflow bug exists (g_tickCount + ticks wraps around),
 * the assertion in OsTickProcess will fail, demonstrating the premature wakeup bug.
 */

#include "macros.pml"
#include "data_structures.pml"
#include "bad_scheduler.pml"  /* Use verification version instead of scheduler.pml */
#include "processes.pml"
#include "ltl_properties.pml"

/* ===== End of Main Model ===== */


