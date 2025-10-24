/* 简化测试：P2能否执行？ */
byte EP = 2;

proctype Process1() {
    do
    :: atomic { (EP == 2) -> printf("P1 exec\n") }
    od
}

proctype Process2() {
    do
    :: atomic { (EP == 3) -> printf("P2 exec\n"); assert(0) }
    od
}

init {
    run Process1();
    run Process2();
    /* 模拟切换 */
    EP = 3
}

ltl p2_never_runs { [] !(EP == 3) }
