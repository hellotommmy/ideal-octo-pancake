/* ===== Main Model File - Delay Overflow Bug Test ===== */
/* 
 * This file is specifically for detecting the delay overflow bug.
 * 
 * BUG DESCRIPTION:
 * When g_tickCount + ticks >= 256, the result wraps around (byte overflow).
 * This causes tasks to wake up prematurely.
 * 
 * EXAMPLE:
 * - g_tickCount = 250
 * - Task calls LOS_TaskDelay(10)
 * - Wakeup time = (250 + 10) % 256 = 4
 * - Task should wake at tick 260, but wakes at tick 4 (after only 10 ticks from 250)
 * - Wait... actually it would wake when g_tickCount reaches 4 after wrapping
 * - From tick 250 to tick 255: 5 ticks
 * - From tick 0 to tick 4: 4 ticks
 * - Total: 9 ticks (should be 10, but off by one due to implementation)
 * 
 * Actually, the bug is more severe:
 * - g_tickCount = 250, wakeup = 4
 * - When g_tickCount = 251, 252, 253, 254, 255, then wraps to 0, 1, 2, 3, 4
 * - Task wakes when g_tickCount >= 4 after wrap
 * - But the comparison g_tickCount >= responseTime triggers at tick 4
 * - Actual wait: from 250 to 4 (wrapping) = 10 ticks - THIS IS CORRECT!
 * 
 * Wait, let me reconsider...
 * The bug would occur if responseTime < g_tickCount initially.
 * - At tick 250, delay 10: responseTime = (250+10)%256 = 4
 * - At tick 250: g_tickCount (250) >= responseTime (4) is TRUE!
 * - Task wakes immediately! Only waited 0 ticks!
 * 
 * VERIFICATION:
 * The assertion checks: requestedDelay <= ticksActuallyWaited
 * When overflow bug occurs, task wakes at tick 250 (immediately):
 * - requestedDelay = 10
 * - ticksActuallyWaited = 0
 * - Assertion fails: 10 <= 0 is FALSE
 * 
 * COMPILE AND RUN:
 * spin -a main_overflow_test.pml
 * gcc -o pan pan.c
 * ./pan
 */

#include "macros.pml"
#include "bad_data_structures.pml"
#include "bad_scheduler.pml"
#include "processes_delay_overflow_test.pml"
#include "ltl_properties.pml"

/* ===== End of Main Model ===== */


