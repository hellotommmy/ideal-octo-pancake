/* Minimal SPIN/Promela program with EP control variable - Bounded version */

byte EP = 1;  /* Execution Permission: 1 or 2 */
byte count = 0;  /* Counter to bound execution */

#define MAX_STEPS 10

active proctype Process1() {
    do
    :: (EP == 1 && count < MAX_STEPS) ->
        printf("Process 1 is running\n");
        assert(EP == 1);
        count++;
        EP = 2;  /* Switch control to Process 2 */
    :: (count >= MAX_STEPS) -> break;
    od
}

active proctype Process2() {
    do
    :: (EP == 2 && count < MAX_STEPS) ->
        printf("Process 2 is running\n");
        count++;
        EP = 1;  /* Switch control to Process 1 */
    :: (count >= MAX_STEPS) -> break;
    od
}
