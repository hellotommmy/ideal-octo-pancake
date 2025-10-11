#ifdef PEG
struct T_SRC {
	char *fl; int ln;
} T_SRC[NTRANS];

void
tr_2_src(int m, char *file, int ln)
{	T_SRC[m].fl = file;
	T_SRC[m].ln = ln;
}

void
putpeg(int n, int m)
{	printf("%5d	trans %4d ", m, n);
	printf("%s:%d\n",
		T_SRC[n].fl, T_SRC[n].ln);
}
#endif

void
settable(void)
{	Trans *T;
	Trans *settr(int, int, int, int, int, char *, int, int, int);

	trans = (Trans ***) emalloc(11*sizeof(Trans **));

	/* proctype 9: all_starvation_free */

	trans[9] = (Trans **) emalloc(35*sizeof(Trans *));

	trans[9][12]	= settr(4565,0,11,1,0,".(goto)", 0, 2, 0);
	T = trans[9][11] = settr(4564,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(4564,0,1,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(4564,0,3,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(4564,0,5,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(4564,0,7,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(4564,0,9,0,0,"DO", 0, 2, 0);
	trans[9][1]	= settr(4554,0,16,3,0,"(((!(!((tcb[4].state==1)))&&!((EP==4)))&&(!(!((tcb[1].state==1)))||(!(!((tcb[2].state==1)))||(!(!((tcb[3].state==1)))||!(!((tcb[4].state==1))))))))", 1, 2, 0);
	trans[9][2]	= settr(4555,0,16,1,0,"goto accept_S7", 0, 2, 0);
	trans[9][3]	= settr(4556,0,21,4,0,"(((!(!((tcb[3].state==1)))&&!((EP==3)))&&(!(!((tcb[1].state==1)))||(!(!((tcb[2].state==1)))||(!(!((tcb[3].state==1)))||!(!((tcb[4].state==1))))))))", 1, 2, 0);
	trans[9][4]	= settr(4557,0,21,1,0,"goto accept_S12", 0, 2, 0);
	trans[9][5]	= settr(4558,0,26,5,0,"((!(!((tcb[2].state==1)))&&!((EP==2))))", 1, 2, 0);
	trans[9][6]	= settr(4559,0,26,1,0,"goto accept_S17", 0, 2, 0);
	trans[9][7]	= settr(4560,0,31,6,0,"((!(!((tcb[1].state==1)))&&!((EP==1))))", 1, 2, 0);
	trans[9][8]	= settr(4561,0,31,1,0,"goto accept_S22", 0, 2, 0);
	trans[9][9]	= settr(4562,0,11,1,0,"(1)", 0, 2, 0);
	trans[9][10]	= settr(4563,0,11,1,0,"goto T0_init", 0, 2, 0);
	trans[9][13]	= settr(4566,0,16,1,0,"break", 0, 2, 0);
	trans[9][17]	= settr(4570,0,16,1,0,".(goto)", 0, 2, 0);
	T = trans[9][16] = settr(4569,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(4569,0,14,0,0,"DO", 0, 2, 0);
	trans[9][14]	= settr(4567,0,16,7,0,"(!((EP==4)))", 1, 2, 0);
	trans[9][15]	= settr(4568,0,16,1,0,"goto accept_S7", 0, 2, 0);
	trans[9][18]	= settr(4571,0,21,1,0,"break", 0, 2, 0);
	trans[9][22]	= settr(4575,0,21,1,0,".(goto)", 0, 2, 0);
	T = trans[9][21] = settr(4574,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(4574,0,19,0,0,"DO", 0, 2, 0);
	trans[9][19]	= settr(4572,0,21,8,0,"(!((EP==3)))", 1, 2, 0);
	trans[9][20]	= settr(4573,0,21,1,0,"goto accept_S12", 0, 2, 0);
	trans[9][23]	= settr(4576,0,26,1,0,"break", 0, 2, 0);
	trans[9][27]	= settr(4580,0,26,1,0,".(goto)", 0, 2, 0);
	T = trans[9][26] = settr(4579,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(4579,0,24,0,0,"DO", 0, 2, 0);
	trans[9][24]	= settr(4577,0,26,9,0,"(!((EP==2)))", 1, 2, 0);
	trans[9][25]	= settr(4578,0,26,1,0,"goto accept_S17", 0, 2, 0);
	trans[9][28]	= settr(4581,0,31,1,0,"break", 0, 2, 0);
	trans[9][32]	= settr(4585,0,31,1,0,".(goto)", 0, 2, 0);
	T = trans[9][31] = settr(4584,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(4584,0,29,0,0,"DO", 0, 2, 0);
	trans[9][29]	= settr(4582,0,31,10,0,"(!((EP==1)))", 1, 2, 0);
	trans[9][30]	= settr(4583,0,31,1,0,"goto accept_S22", 0, 2, 0);
	trans[9][33]	= settr(4586,0,34,1,0,"break", 0, 2, 0);
	trans[9][34]	= settr(4587,0,0,11,11,"-end-", 0, 3500, 0);

	/* proctype 8: starvation_free_task4 */

	trans[8] = (Trans **) emalloc(14*sizeof(Trans *));

	trans[8][6]	= settr(4546,0,5,1,0,".(goto)", 0, 2, 0);
	T = trans[8][5] = settr(4545,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(4545,0,1,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(4545,0,3,0,0,"DO", 0, 2, 0);
	trans[8][1]	= settr(4541,0,10,12,0,"((!(!((tcb[4].state==1)))&&!((EP==4))))", 1, 2, 0);
	trans[8][2]	= settr(4542,0,10,1,0,"goto accept_S4", 0, 2, 0);
	trans[8][3]	= settr(4543,0,5,1,0,"(1)", 0, 2, 0);
	trans[8][4]	= settr(4544,0,5,1,0,"goto T0_init", 0, 2, 0);
	trans[8][7]	= settr(4547,0,10,1,0,"break", 0, 2, 0);
	trans[8][11]	= settr(4551,0,10,1,0,".(goto)", 0, 2, 0);
	T = trans[8][10] = settr(4550,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(4550,0,8,0,0,"DO", 0, 2, 0);
	trans[8][8]	= settr(4548,0,10,13,0,"(!((EP==4)))", 1, 2, 0);
	trans[8][9]	= settr(4549,0,10,1,0,"goto accept_S4", 0, 2, 0);
	trans[8][12]	= settr(4552,0,13,1,0,"break", 0, 2, 0);
	trans[8][13]	= settr(4553,0,0,14,14,"-end-", 0, 3500, 0);

	/* proctype 7: starvation_free_task3 */

	trans[7] = (Trans **) emalloc(14*sizeof(Trans *));

	trans[7][6]	= settr(4533,0,5,1,0,".(goto)", 0, 2, 0);
	T = trans[7][5] = settr(4532,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(4532,0,1,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(4532,0,3,0,0,"DO", 0, 2, 0);
	trans[7][1]	= settr(4528,0,10,15,0,"((!(!((tcb[3].state==1)))&&!((EP==3))))", 1, 2, 0);
	trans[7][2]	= settr(4529,0,10,1,0,"goto accept_S4", 0, 2, 0);
	trans[7][3]	= settr(4530,0,5,1,0,"(1)", 0, 2, 0);
	trans[7][4]	= settr(4531,0,5,1,0,"goto T0_init", 0, 2, 0);
	trans[7][7]	= settr(4534,0,10,1,0,"break", 0, 2, 0);
	trans[7][11]	= settr(4538,0,10,1,0,".(goto)", 0, 2, 0);
	T = trans[7][10] = settr(4537,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(4537,0,8,0,0,"DO", 0, 2, 0);
	trans[7][8]	= settr(4535,0,10,16,0,"(!((EP==3)))", 1, 2, 0);
	trans[7][9]	= settr(4536,0,10,1,0,"goto accept_S4", 0, 2, 0);
	trans[7][12]	= settr(4539,0,13,1,0,"break", 0, 2, 0);
	trans[7][13]	= settr(4540,0,0,17,17,"-end-", 0, 3500, 0);

	/* proctype 6: starvation_free_task2 */

	trans[6] = (Trans **) emalloc(14*sizeof(Trans *));

	trans[6][6]	= settr(4520,0,5,1,0,".(goto)", 0, 2, 0);
	T = trans[6][5] = settr(4519,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(4519,0,1,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(4519,0,3,0,0,"DO", 0, 2, 0);
	trans[6][1]	= settr(4515,0,10,18,0,"((!(!((tcb[2].state==1)))&&!((EP==2))))", 1, 2, 0);
	trans[6][2]	= settr(4516,0,10,1,0,"goto accept_S4", 0, 2, 0);
	trans[6][3]	= settr(4517,0,5,1,0,"(1)", 0, 2, 0);
	trans[6][4]	= settr(4518,0,5,1,0,"goto T0_init", 0, 2, 0);
	trans[6][7]	= settr(4521,0,10,1,0,"break", 0, 2, 0);
	trans[6][11]	= settr(4525,0,10,1,0,".(goto)", 0, 2, 0);
	T = trans[6][10] = settr(4524,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(4524,0,8,0,0,"DO", 0, 2, 0);
	trans[6][8]	= settr(4522,0,10,19,0,"(!((EP==2)))", 1, 2, 0);
	trans[6][9]	= settr(4523,0,10,1,0,"goto accept_S4", 0, 2, 0);
	trans[6][12]	= settr(4526,0,13,1,0,"break", 0, 2, 0);
	trans[6][13]	= settr(4527,0,0,20,20,"-end-", 0, 3500, 0);

	/* proctype 5: starvation_free_task1 */

	trans[5] = (Trans **) emalloc(14*sizeof(Trans *));

	trans[5][6]	= settr(4507,0,5,1,0,".(goto)", 0, 2, 0);
	T = trans[5][5] = settr(4506,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(4506,0,1,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(4506,0,3,0,0,"DO", 0, 2, 0);
	trans[5][1]	= settr(4502,0,10,21,0,"((!(!((tcb[1].state==1)))&&!((EP==1))))", 1, 2, 0);
	trans[5][2]	= settr(4503,0,10,1,0,"goto accept_S4", 0, 2, 0);
	trans[5][3]	= settr(4504,0,5,1,0,"(1)", 0, 2, 0);
	trans[5][4]	= settr(4505,0,5,1,0,"goto T0_init", 0, 2, 0);
	trans[5][7]	= settr(4508,0,10,1,0,"break", 0, 2, 0);
	trans[5][11]	= settr(4512,0,10,1,0,".(goto)", 0, 2, 0);
	T = trans[5][10] = settr(4511,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(4511,0,8,0,0,"DO", 0, 2, 0);
	trans[5][8]	= settr(4509,0,10,22,0,"(!((EP==1)))", 1, 2, 0);
	trans[5][9]	= settr(4510,0,10,1,0,"goto accept_S4", 0, 2, 0);
	trans[5][12]	= settr(4513,0,13,1,0,"break", 0, 2, 0);
	trans[5][13]	= settr(4514,0,0,23,23,"-end-", 0, 3500, 0);

	/* proctype 4: :init: */

	trans[4] = (Trans **) emalloc(131*sizeof(Trans *));

	trans[4][1]	= settr(4372,0,18,24,24,"i = 0", 0, 2, 0);
	trans[4][19]	= settr(4390,0,18,1,0,".(goto)", 0, 2, 0);
	T = trans[4][18] = settr(4389,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(4389,0,2,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(4389,0,16,0,0,"DO", 0, 2, 0);
	trans[4][2]	= settr(4373,0,14,25,0,"((i<4))", 0, 2, 0);
	T = trans[ 4][14] = settr(4385,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(4385,0,3,0,0,"sub-sequence", 0, 2, 0);
	trans[4][3]	= settr(4374,0,10,26,26,"init_rq_idx = 0", 0, 2, 0); /* m: 4 -> 0,10 */
	reached4[4] = 1;
	trans[4][4]	= settr(0,0,0,0,0,"init_rq_idx = 0",0,0,0);
	trans[4][11]	= settr(4382,0,10,1,0,".(goto)", 0, 2, 0);
	T = trans[4][10] = settr(4381,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(4381,0,5,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(4381,0,8,0,0,"DO", 0, 2, 0);
	trans[4][5]	= settr(4376,0,6,27,0,"((init_rq_idx<8))", 0, 2, 0);
	trans[4][6]	= settr(4377,0,7,28,28,"readyQueue[i].tasks[init_rq_idx] = 255", 1, 2, 0);
	trans[4][7]	= settr(4378,0,10,29,29,"init_rq_idx = (init_rq_idx+1)", 0, 2, 0);
	trans[4][8]	= settr(4379,0,13,30,30,"((init_rq_idx>=8))", 0, 2, 0);
	trans[4][9]	= settr(4380,0,13,1,0,"goto :b165", 0, 2, 0);
	trans[4][12]	= settr(4383,0,13,1,0,"break", 0, 2, 0);
	trans[4][13]	= settr(4384,0,15,31,31,"readyQueue[i].tailIndex = 0", 1, 2, 0);
	trans[4][15]	= settr(4386,0,18,32,32,"i = (i+1)", 0, 2, 0);
	trans[4][16]	= settr(4387,0,32,33,33,"((i>=4))", 0, 2, 0);
	trans[4][17]	= settr(4388,0,32,1,0,"goto :b164", 0, 2, 0);
	trans[4][20]	= settr(4391,0,32,1,0,"break", 0, 2, 0);
	T = trans[ 4][32] = settr(4403,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(4403,0,21,0,0,"sub-sequence", 0, 2, 0);
	trans[4][21]	= settr(4392,0,28,34,34,"init_sl_idx = 0", 0, 2, 0); /* m: 22 -> 0,28 */
	reached4[22] = 1;
	trans[4][22]	= settr(0,0,0,0,0,"init_sl_idx = 0",0,0,0);
	trans[4][29]	= settr(4400,0,28,1,0,".(goto)", 0, 2, 0);
	T = trans[4][28] = settr(4399,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(4399,0,23,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(4399,0,26,0,0,"DO", 0, 2, 0);
	trans[4][23]	= settr(4394,0,24,35,0,"((init_sl_idx<8))", 0, 2, 0);
	trans[4][24]	= settr(4395,0,25,36,36,"sortLink.tasks[init_sl_idx] = 255", 1, 2, 0);
	trans[4][25]	= settr(4396,0,28,37,37,"init_sl_idx = (init_sl_idx+1)", 0, 2, 0);
	trans[4][26]	= settr(4397,0,31,38,38,"((init_sl_idx>=8))", 0, 2, 0);
	trans[4][27]	= settr(4398,0,31,1,0,"goto :b166", 0, 2, 0);
	trans[4][30]	= settr(4401,0,31,1,0,"break", 0, 2, 0);
	trans[4][31]	= settr(4402,0,33,39,39,"sortLink.count = 0", 1, 2, 0);
	trans[4][33]	= settr(4404,0,34,40,40,"tcb[1].prio = 2", 1, 2, 0);
	trans[4][34]	= settr(4405,0,35,41,41,"tcb[1].state = 1", 1, 2, 0);
	trans[4][35]	= settr(4406,0,36,42,42,"tcb[1].responseTime = 10", 1, 2, 0);
	trans[4][36]	= settr(4407,0,37,43,43,"tcb[1].wakeupTime = 0", 1, 2, 0);
	trans[4][37]	= settr(4408,0,45,44,44,"tcb[1].delayTicks = 0", 1, 2, 0);
	T = trans[ 4][45] = settr(4416,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(4416,0,43,0,0,"sub-sequence", 0, 2, 0);
	T = trans[4][43] = settr(4414,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4414,0,38,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(4414,0,41,0,0,"IF", 0, 2, 0);
	trans[4][38]	= settr(4409,0,39,45,0,"((readyQueue[tcb[1].prio].tailIndex<8))", 1, 2, 0);
	trans[4][39]	= settr(4410,0,40,46,46,"readyQueue[tcb[1].prio].tasks[readyQueue[tcb[1].prio].tailIndex] = 1", 1, 2, 0);
	trans[4][40]	= settr(4411,0,46,47,47,"readyQueue[tcb[1].prio].tailIndex = (readyQueue[tcb[1].prio].tailIndex+1)", 1, 2, 0);
	trans[4][44]	= settr(4415,0,46,1,0,".(goto)", 0, 2, 0);
	trans[4][41]	= settr(4412,0,42,2,0,"else", 0, 2, 0);
	trans[4][42]	= settr(4413,0,46,48,0,"assert(0)", 0, 2, 0);
	trans[4][46]	= settr(4417,0,47,49,49,"tcb[2].prio = 2", 1, 2, 0);
	trans[4][47]	= settr(4418,0,48,50,50,"tcb[2].state = 1", 1, 2, 0);
	trans[4][48]	= settr(4419,0,49,51,51,"tcb[2].responseTime = 20", 1, 2, 0);
	trans[4][49]	= settr(4420,0,50,52,52,"tcb[2].wakeupTime = 0", 1, 2, 0);
	trans[4][50]	= settr(4421,0,58,53,53,"tcb[2].delayTicks = 0", 1, 2, 0);
	T = trans[ 4][58] = settr(4429,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(4429,0,56,0,0,"sub-sequence", 0, 2, 0);
	T = trans[4][56] = settr(4427,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4427,0,51,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(4427,0,54,0,0,"IF", 0, 2, 0);
	trans[4][51]	= settr(4422,0,52,54,0,"((readyQueue[tcb[2].prio].tailIndex<8))", 1, 2, 0);
	trans[4][52]	= settr(4423,0,53,55,55,"readyQueue[tcb[2].prio].tasks[readyQueue[tcb[2].prio].tailIndex] = 2", 1, 2, 0);
	trans[4][53]	= settr(4424,0,59,56,56,"readyQueue[tcb[2].prio].tailIndex = (readyQueue[tcb[2].prio].tailIndex+1)", 1, 2, 0);
	trans[4][57]	= settr(4428,0,59,1,0,".(goto)", 0, 2, 0);
	trans[4][54]	= settr(4425,0,55,2,0,"else", 0, 2, 0);
	trans[4][55]	= settr(4426,0,59,57,0,"assert(0)", 0, 2, 0);
	trans[4][59]	= settr(4430,0,60,58,58,"tcb[3].prio = 1", 1, 2, 0);
	trans[4][60]	= settr(4431,0,61,59,59,"tcb[3].state = 1", 1, 2, 0);
	trans[4][61]	= settr(4432,0,62,60,60,"tcb[3].responseTime = 15", 1, 2, 0);
	trans[4][62]	= settr(4433,0,63,61,61,"tcb[3].wakeupTime = 0", 1, 2, 0);
	trans[4][63]	= settr(4434,0,71,62,62,"tcb[3].delayTicks = 0", 1, 2, 0);
	T = trans[ 4][71] = settr(4442,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(4442,0,69,0,0,"sub-sequence", 0, 2, 0);
	T = trans[4][69] = settr(4440,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4440,0,64,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(4440,0,67,0,0,"IF", 0, 2, 0);
	trans[4][64]	= settr(4435,0,65,63,0,"((readyQueue[tcb[3].prio].tailIndex<8))", 1, 2, 0);
	trans[4][65]	= settr(4436,0,66,64,64,"readyQueue[tcb[3].prio].tasks[readyQueue[tcb[3].prio].tailIndex] = 3", 1, 2, 0);
	trans[4][66]	= settr(4437,0,72,65,65,"readyQueue[tcb[3].prio].tailIndex = (readyQueue[tcb[3].prio].tailIndex+1)", 1, 2, 0);
	trans[4][70]	= settr(4441,0,72,1,0,".(goto)", 0, 2, 0);
	trans[4][67]	= settr(4438,0,68,2,0,"else", 0, 2, 0);
	trans[4][68]	= settr(4439,0,72,66,0,"assert(0)", 0, 2, 0);
	trans[4][72]	= settr(4443,0,73,67,67,"tcb[4].prio = 3", 1, 2, 0);
	trans[4][73]	= settr(4444,0,74,68,68,"tcb[4].state = 1", 1, 2, 0);
	trans[4][74]	= settr(4445,0,75,69,69,"tcb[4].responseTime = 25", 1, 2, 0);
	trans[4][75]	= settr(4446,0,76,70,70,"tcb[4].wakeupTime = 0", 1, 2, 0);
	trans[4][76]	= settr(4447,0,84,71,71,"tcb[4].delayTicks = 0", 1, 2, 0);
	T = trans[ 4][84] = settr(4455,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(4455,0,82,0,0,"sub-sequence", 0, 2, 0);
	T = trans[4][82] = settr(4453,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4453,0,77,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(4453,0,80,0,0,"IF", 0, 2, 0);
	trans[4][77]	= settr(4448,0,78,72,0,"((readyQueue[tcb[4].prio].tailIndex<8))", 1, 2, 0);
	trans[4][78]	= settr(4449,0,79,73,73,"readyQueue[tcb[4].prio].tasks[readyQueue[tcb[4].prio].tailIndex] = 4", 1, 2, 0);
	trans[4][79]	= settr(4450,0,106,74,74,"readyQueue[tcb[4].prio].tailIndex = (readyQueue[tcb[4].prio].tailIndex+1)", 1, 2, 0);
	trans[4][83]	= settr(4454,0,106,1,0,".(goto)", 0, 2, 0);
	trans[4][80]	= settr(4451,0,81,2,0,"else", 0, 2, 0);
	trans[4][81]	= settr(4452,0,106,75,0,"assert(0)", 0, 2, 0);
	T = trans[ 4][106] = settr(4477,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(4477,0,85,0,0,"sub-sequence", 0, 2, 0);
	trans[4][85]	= settr(4456,0,101,76,76,"prio = 0", 0, 2, 0); /* m: 86 -> 0,101 */
	reached4[86] = 1;
	trans[4][86]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[4][87]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[4][88]	= settr(0,0,0,0,0,"prio = 0",0,0,0);
	trans[4][89]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[4][90]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[4][102]	= settr(4473,0,101,1,0,".(goto)", 0, 2, 0);
	T = trans[4][101] = settr(4472,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(4472,0,91,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(4472,0,99,0,0,"DO", 0, 2, 0);
	trans[4][91]	= settr(4462,0,97,77,0,"(((prio<4)&&!(found)))", 0, 2, 0);
	T = trans[4][97] = settr(4468,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4468,0,92,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(4468,0,95,0,0,"IF", 0, 2, 0);
	trans[4][92]	= settr(4463,0,93,78,0,"((readyQueue[prio].tailIndex>0))", 1, 2, 0);
	trans[4][93]	= settr(4464,0,94,79,79,"top_task = readyQueue[prio].tasks[0]", 1, 2, 0);
	trans[4][94]	= settr(4465,0,101,80,80,"found = 1", 0, 2, 0);
	trans[4][98]	= settr(4469,0,101,1,0,".(goto)", 0, 2, 0);
	trans[4][95]	= settr(4466,0,96,2,0,"else", 0, 2, 0);
	trans[4][96]	= settr(4467,0,101,81,81,"prio = (prio+1)", 0, 2, 0);
	trans[4][99]	= settr(4470,0,104,82,82,"(((prio>=4)||found))", 0, 2, 0);
	trans[4][100]	= settr(4471,0,104,1,0,"goto :b167", 0, 2, 0);
	trans[4][103]	= settr(4474,0,104,1,0,"break", 0, 2, 0);
	trans[4][104]	= settr(4475,0,105,83,83,"EP = top_task", 1, 2, 0);
	trans[4][105]	= settr(4476,0,124,84,84,"topPrio = prio", 1, 2, 0);
	T = trans[ 4][124] = settr(4495,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(4495,0,107,0,0,"sub-sequence", 0, 2, 0);
	trans[4][107]	= settr(4478,0,114,85,85,"deq_idx = 0", 0, 2, 0); /* m: 108 -> 0,114 */
	reached4[108] = 1;
	trans[4][108]	= settr(0,0,0,0,0,"deq_idx = 0",0,0,0);
	trans[4][115]	= settr(4486,0,114,1,0,".(goto)", 0, 2, 0);
	T = trans[4][114] = settr(4485,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(4485,0,109,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(4485,0,112,0,0,"DO", 0, 2, 0);
	trans[4][109]	= settr(4480,0,110,86,0,"((deq_idx<(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0);
	trans[4][110]	= settr(4481,0,111,87,87,"readyQueue[topPrio].tasks[deq_idx] = readyQueue[topPrio].tasks[(deq_idx+1)]", 1, 2, 0);
	trans[4][111]	= settr(4482,0,114,88,88,"deq_idx = (deq_idx+1)", 0, 2, 0);
	trans[4][112]	= settr(4483,0,122,89,89,"((deq_idx>=(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0);
	trans[4][113]	= settr(4484,0,122,1,0,"goto :b168", 0, 2, 0);
	trans[4][116]	= settr(4487,0,122,1,0,"break", 0, 2, 0);
	T = trans[4][122] = settr(4493,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(4493,0,117,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(4493,0,120,0,0,"IF", 0, 2, 0);
	trans[4][117]	= settr(4488,0,118,90,0,"((readyQueue[topPrio].tailIndex>0))", 1, 2, 0);
	trans[4][118]	= settr(4489,0,119,91,91,"readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)] = 255", 1, 2, 0);
	trans[4][119]	= settr(4490,0,125,92,92,"readyQueue[topPrio].tailIndex = (readyQueue[topPrio].tailIndex-1)", 1, 2, 0);
	trans[4][123]	= settr(4494,0,125,1,0,".(goto)", 0, 2, 0);
	trans[4][120]	= settr(4491,0,121,2,0,"else", 0, 2, 0);
	trans[4][121]	= settr(4492,0,125,1,0,"(1)", 0, 2, 0);
	trans[4][125]	= settr(4496,0,126,93,93,"tcb[EP].state = 4", 1, 2, 0);
	trans[4][126]	= settr(4497,0,127,94,94,"(run Process1())", 0, 2, 0);
	trans[4][127]	= settr(4498,0,128,95,95,"(run Process2())", 0, 2, 0);
	trans[4][128]	= settr(4499,0,129,96,96,"(run Process3())", 0, 2, 0);
	trans[4][129]	= settr(4500,0,130,97,97,"(run Process4())", 0, 2, 0);
	trans[4][130]	= settr(4501,0,0,98,98,"-end-", 0, 3500, 0);

	/* proctype 3: Process4 */

	trans[3] = (Trans **) emalloc(1094*sizeof(Trans *));

	trans[3][1091]	= settr(4369,0,1090,1,0,".(goto)", 0, 2, 0);
	T = trans[3][1090] = settr(4368,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(4368,0,131,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(4368,0,262,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(4368,0,393,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(4368,0,675,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(4368,0,957,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(4368,0,958,0,0,"DO", 0, 2, 0);
	T = trans[ 3][131] = settr(3409,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(3409,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[3][1]	= settr(3279,2,130,99,99,"((EP==4))", 1, 2, 0); /* m: 2 -> 130,0 */
	reached3[2] = 1;
	trans[3][2]	= settr(0,0,0,0,0,"printf('Process 4 running, counter=%d\\n',counter)",0,0,0);
	T = trans[ 3][130] = settr(3408,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(3408,0,3,0,0,"sub-sequence", 1, 2, 0);
	trans[3][3]	= settr(3281,2,11,100,100,"interrupted_task = 0", 1, 2, 0); /* m: 4 -> 0,11 */
	reached3[4] = 1;
	trans[3][4]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[3][5]	= settr(0,0,0,0,0,"taskId = 0",0,0,0);
	trans[3][6]	= settr(0,0,0,0,0,"needResched = 0",0,0,0);
	trans[3][7]	= settr(0,0,0,0,0,"interrupted_task = 0",0,0,0);
	trans[3][8]	= settr(0,0,0,0,0,"needResched = 0",0,0,0);
	T = trans[ 3][11] = settr(3289,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(3289,0,9,0,0,"sub-sequence", 1, 2, 0);
	trans[3][9]	= settr(3287,2,68,101,101,"int_save = int_ctrl_reg", 1, 2, 0); /* m: 10 -> 0,68 */
	reached3[10] = 1;
	trans[3][10]	= settr(0,0,0,0,0,"int_ctrl_reg = 1",0,0,0);
	trans[3][12]	= settr(0,0,0,0,0,"tickCount = (tickCount+1)",0,0,0);
	trans[3][13]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[3][69]	= settr(3347,2,68,1,0,".(goto)", 1, 2, 0);
	T = trans[3][68] = settr(3346,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(3346,2,14,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(3346,2,66,0,0,"DO", 1, 2, 0);
	trans[3][14]	= settr(3292,2,64,102,102,"((idx<sortLink.count))", 1, 2, 0); /* m: 15 -> 64,0 */
	reached3[15] = 1;
	trans[3][15]	= settr(0,0,0,0,0,"taskId = sortLink.tasks[idx]",0,0,0);
	T = trans[3][64] = settr(3342,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(3342,2,16,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(3342,2,62,0,0,"IF", 1, 2, 0);
	trans[3][16]	= settr(3294,2,52,103,103,"(((tcb[taskId].state==2)&&(tickCount>=tcb[taskId].wakeupTime)))", 1, 2, 0); /* m: 17 -> 52,0 */
	reached3[17] = 1;
	trans[3][17]	= settr(0,0,0,0,0,"tcb[taskId].state = 1",0,0,0);
	trans[3][18]	= settr(0,0,0,0,0,"tcb[taskId].delayTicks = 0",0,0,0);
	T = trans[ 3][52] = settr(3330,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(3330,0,19,0,0,"sub-sequence", 1, 2, 0);
	trans[3][19]	= settr(3297,2,33,104,104,"removePos = 0", 1, 2, 0); /* m: 20 -> 0,33 */
	reached3[20] = 1;
	trans[3][20]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[3][21]	= settr(0,0,0,0,0,"shiftIdx = 0",0,0,0);
	trans[3][22]	= settr(0,0,0,0,0,"removePos = 0",0,0,0);
	trans[3][23]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[3][34]	= settr(3312,2,33,1,0,".(goto)", 1, 2, 0);
	T = trans[3][33] = settr(3311,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(3311,2,24,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(3311,2,31,0,0,"DO", 1, 2, 0);
	trans[3][24]	= settr(3302,2,29,105,0,"(((removePos<sortLink.count)&&!(found)))", 1, 2, 0);
	T = trans[3][29] = settr(3307,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(3307,2,25,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(3307,2,27,0,0,"IF", 1, 2, 0);
	trans[3][25]	= settr(3303,2,33,106,106,"((sortLink.tasks[removePos]==taskId))", 1, 2, 0); /* m: 26 -> 33,0 */
	reached3[26] = 1;
	trans[3][26]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[3][30]	= settr(3308,2,33,1,0,".(goto)", 1, 2, 0);
	trans[3][27]	= settr(3305,2,28,2,0,"else", 1, 2, 0);
	trans[3][28]	= settr(3306,2,33,107,107,"removePos = (removePos+1)", 1, 2, 0);
	trans[3][31]	= settr(3309,2,50,2,0,"else", 1, 2, 0);
	trans[3][32]	= settr(3310,2,50,1,0,"goto :b125", 1, 2, 0);
	trans[3][35]	= settr(3313,2,50,1,0,"break", 1, 2, 0);
	T = trans[3][50] = settr(3328,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(3328,2,36,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(3328,2,48,0,0,"IF", 1, 2, 0);
	trans[3][36]	= settr(3314,2,43,108,108,"((found==1))", 1, 2, 0); /* m: 37 -> 43,0 */
	reached3[37] = 1;
	trans[3][37]	= settr(0,0,0,0,0,"shiftIdx = removePos",0,0,0);
	trans[3][44]	= settr(3322,2,43,1,0,".(goto)", 1, 2, 0);
	T = trans[3][43] = settr(3321,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(3321,2,38,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(3321,2,41,0,0,"DO", 1, 2, 0);
	trans[3][38]	= settr(3316,2,43,109,109,"((shiftIdx<(sortLink.count-1)))", 1, 2, 0); /* m: 39 -> 43,0 */
	reached3[39] = 1;
	trans[3][39]	= settr(0,0,0,0,0,"sortLink.tasks[shiftIdx] = sortLink.tasks[(shiftIdx+1)]",0,0,0);
	trans[3][40]	= settr(0,0,0,0,0,"shiftIdx = (shiftIdx+1)",0,0,0);
	trans[3][41]	= settr(3319,2,60,110,110,"((shiftIdx>=(sortLink.count-1)))", 1, 2, 0); /* m: 46 -> 60,0 */
	reached3[46] = 1;
	trans[3][42]	= settr(3320,2,46,1,0,"goto :b126", 1, 2, 0); /* m: 46 -> 0,60 */
	reached3[46] = 1;
	trans[3][45]	= settr(3323,2,46,1,0,"break", 1, 2, 0);
	trans[3][46]	= settr(3324,2,60,111,111,"sortLink.tasks[(sortLink.count-1)] = 255", 1, 2, 0); /* m: 47 -> 0,60 */
	reached3[47] = 1;
	trans[3][47]	= settr(0,0,0,0,0,"sortLink.count = (sortLink.count-1)",0,0,0);
	trans[3][51]	= settr(3329,2,60,1,0,".(goto)", 1, 2, 0);
	trans[3][48]	= settr(3326,2,49,2,0,"else", 1, 2, 0);
	trans[3][49]	= settr(3327,2,60,1,0,"(1)", 1, 2, 0);
	T = trans[ 3][60] = settr(3338,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(3338,0,58,0,0,"sub-sequence", 1, 2, 0);
	T = trans[3][58] = settr(3336,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(3336,2,53,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(3336,2,56,0,0,"IF", 1, 2, 0);
	trans[3][53]	= settr(3331,2,68,112,112,"((readyQueue[tcb[taskId].prio].tailIndex<8))", 1, 2, 0); /* m: 54 -> 68,0 */
	reached3[54] = 1;
	trans[3][54]	= settr(0,0,0,0,0,"readyQueue[tcb[taskId].prio].tasks[readyQueue[tcb[taskId].prio].tailIndex] = taskId",0,0,0);
	trans[3][55]	= settr(0,0,0,0,0,"readyQueue[tcb[taskId].prio].tailIndex = (readyQueue[tcb[taskId].prio].tailIndex+1)",0,0,0);
	trans[3][59]	= settr(3337,2,61,1,0,".(goto)", 1, 2, 0); /* m: 61 -> 0,68 */
	reached3[61] = 1;
	trans[3][56]	= settr(3334,2,57,2,0,"else", 1, 2, 0);
	trans[3][57]	= settr(3335,2,68,113,113,"assert(0)", 1, 2, 0); /* m: 61 -> 0,68 */
	reached3[61] = 1;
	trans[3][61]	= settr(3339,2,68,114,114,"needResched = 1", 1, 2, 0);
	trans[3][65]	= settr(3343,2,68,1,0,".(goto)", 1, 2, 0);
	trans[3][62]	= settr(3340,2,63,2,0,"else", 1, 2, 0);
	trans[3][63]	= settr(3341,2,68,115,115,"idx = (idx+1)", 1, 2, 0);
	trans[3][66]	= settr(3344,2,84,116,116,"((idx>=sortLink.count))", 1, 2, 0); /* m: 71 -> 84,0 */
	reached3[71] = 1;
	trans[3][67]	= settr(3345,2,71,1,0,"goto :b124", 1, 2, 0); /* m: 71 -> 0,84 */
	reached3[71] = 1;
	trans[3][70]	= settr(3348,2,71,1,0,"break", 1, 2, 0);
	trans[3][71]	= settr(3349,2,84,117,117,"interrupted_task = EP", 1, 2, 0);
	T = trans[3][84] = settr(3362,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(3362,2,72,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(3362,2,82,0,0,"IF", 1, 2, 0);
	trans[3][72]	= settr(3350,2,81,118,118,"((((interrupted_task>=1)&&(interrupted_task<=4))&&(tcb[interrupted_task].state!=2)))", 1, 2, 0); /* m: 73 -> 81,0 */
	reached3[73] = 1;
	trans[3][73]	= settr(0,0,0,0,0,"tcb[interrupted_task].state = 1",0,0,0);
	T = trans[ 3][81] = settr(3359,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(3359,0,79,0,0,"sub-sequence", 1, 2, 0);
	T = trans[3][79] = settr(3357,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(3357,2,74,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(3357,2,77,0,0,"IF", 1, 2, 0);
	trans[3][74]	= settr(3352,2,107,119,119,"((readyQueue[tcb[interrupted_task].prio].tailIndex<8))", 1, 2, 0); /* m: 75 -> 107,0 */
	reached3[75] = 1;
	trans[3][75]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tasks[readyQueue[tcb[interrupted_task].prio].tailIndex] = interrupted_task",0,0,0);
	trans[3][76]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tailIndex = (readyQueue[tcb[interrupted_task].prio].tailIndex+1)",0,0,0);
	trans[3][80]	= settr(3358,2,107,1,0,".(goto)", 1, 2, 0);
	trans[3][77]	= settr(3355,2,78,2,0,"else", 1, 2, 0);
	trans[3][78]	= settr(3356,2,107,120,0,"assert(0)", 1, 2, 0);
	trans[3][85]	= settr(3363,2,107,1,0,".(goto)", 1, 2, 0);
	trans[3][82]	= settr(3360,2,83,2,0,"else", 1, 2, 0);
	trans[3][83]	= settr(3361,2,107,1,0,"(1)", 1, 2, 0);
	T = trans[ 3][107] = settr(3385,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(3385,0,86,0,0,"sub-sequence", 1, 2, 0);
	trans[3][86]	= settr(3364,2,102,121,121,"prio = 0", 1, 2, 0); /* m: 87 -> 0,102 */
	reached3[87] = 1;
	trans[3][87]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[3][88]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[3][89]	= settr(0,0,0,0,0,"prio = 0",0,0,0);
	trans[3][90]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[3][91]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[3][103]	= settr(3381,2,102,1,0,".(goto)", 1, 2, 0);
	T = trans[3][102] = settr(3380,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(3380,2,92,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(3380,2,100,0,0,"DO", 1, 2, 0);
	trans[3][92]	= settr(3370,2,98,122,0,"(((prio<4)&&!(found)))", 1, 2, 0);
	T = trans[3][98] = settr(3376,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(3376,2,93,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(3376,2,96,0,0,"IF", 1, 2, 0);
	trans[3][93]	= settr(3371,2,102,123,123,"((readyQueue[prio].tailIndex>0))", 1, 2, 0); /* m: 94 -> 102,0 */
	reached3[94] = 1;
	trans[3][94]	= settr(0,0,0,0,0,"top_task = readyQueue[prio].tasks[0]",0,0,0);
	trans[3][95]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[3][99]	= settr(3377,2,102,1,0,".(goto)", 1, 2, 0);
	trans[3][96]	= settr(3374,2,97,2,0,"else", 1, 2, 0);
	trans[3][97]	= settr(3375,2,102,124,124,"prio = (prio+1)", 1, 2, 0);
	trans[3][100]	= settr(3378,2,125,125,125,"(((prio>=4)||found))", 1, 2, 0); /* m: 105 -> 125,0 */
	reached3[105] = 1;
	trans[3][101]	= settr(3379,2,105,1,0,"goto :b127", 1, 2, 0); /* m: 105 -> 0,125 */
	reached3[105] = 1;
	trans[3][104]	= settr(3382,2,105,1,0,"break", 1, 2, 0);
	trans[3][105]	= settr(3383,2,125,126,126,"newTask = top_task", 1, 2, 0); /* m: 106 -> 0,125 */
	reached3[106] = 1;
	trans[3][106]	= settr(0,0,0,0,0,"topPrio = prio",0,0,0);
	T = trans[ 3][125] = settr(3403,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(3403,0,108,0,0,"sub-sequence", 1, 2, 0);
	trans[3][108]	= settr(3386,2,115,127,127,"deq_idx = 0", 1, 2, 0); /* m: 109 -> 0,115 */
	reached3[109] = 1;
	trans[3][109]	= settr(0,0,0,0,0,"deq_idx = 0",0,0,0);
	trans[3][116]	= settr(3394,2,115,1,0,".(goto)", 1, 2, 0);
	T = trans[3][115] = settr(3393,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(3393,2,110,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(3393,2,113,0,0,"DO", 1, 2, 0);
	trans[3][110]	= settr(3388,2,115,128,128,"((deq_idx<(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0); /* m: 111 -> 115,0 */
	reached3[111] = 1;
	trans[3][111]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[deq_idx] = readyQueue[topPrio].tasks[(deq_idx+1)]",0,0,0);
	trans[3][112]	= settr(0,0,0,0,0,"deq_idx = (deq_idx+1)",0,0,0);
	trans[3][113]	= settr(3391,2,123,129,129,"((deq_idx>=(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0);
	trans[3][114]	= settr(3392,2,123,1,0,"goto :b128", 1, 2, 0);
	trans[3][117]	= settr(3395,2,123,1,0,"break", 1, 2, 0);
	T = trans[3][123] = settr(3401,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(3401,2,118,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(3401,2,121,0,0,"IF", 1, 2, 0);
	trans[3][118]	= settr(3396,2,129,130,130,"((readyQueue[topPrio].tailIndex>0))", 1, 2, 0); /* m: 119 -> 129,0 */
	reached3[119] = 1;
	trans[3][119]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)] = 255",0,0,0);
	trans[3][120]	= settr(0,0,0,0,0,"readyQueue[topPrio].tailIndex = (readyQueue[topPrio].tailIndex-1)",0,0,0);
	trans[3][124]	= settr(3402,2,126,1,0,".(goto)", 1, 2, 0); /* m: 126 -> 0,129 */
	reached3[126] = 1;
	trans[3][121]	= settr(3399,2,122,2,0,"else", 1, 2, 0);
	trans[3][122]	= settr(3400,2,129,131,131,"(1)", 1, 2, 0); /* m: 126 -> 129,0 */
	reached3[126] = 1;
	trans[3][126]	= settr(3404,2,129,132,132,"tcb[newTask].state = 4", 1, 2, 0); /* m: 127 -> 0,129 */
	reached3[127] = 1;
	trans[3][127]	= settr(0,0,0,0,0,"EP = newTask",0,0,0);
	T = trans[ 3][129] = settr(3407,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(3407,0,128,0,0,"sub-sequence", 1, 2, 0);
	trans[3][128]	= settr(3406,0,1090,133,133,"int_ctrl_reg = int_save", 1, 2, 0);
	T = trans[ 3][262] = settr(3540,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(3540,2,132,0,0,"ATOMIC", 1, 2, 0);
	trans[3][132]	= settr(3410,2,261,134,134,"((EP==4))", 1, 2, 0); /* m: 133 -> 261,0 */
	reached3[133] = 1;
	trans[3][133]	= settr(0,0,0,0,0,"counter = (counter+1)",0,0,0);
	T = trans[ 3][261] = settr(3539,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(3539,0,134,0,0,"sub-sequence", 1, 2, 0);
	trans[3][134]	= settr(3412,2,142,135,135,"interrupted_task = 0", 1, 2, 0); /* m: 135 -> 0,142 */
	reached3[135] = 1;
	trans[3][135]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[3][136]	= settr(0,0,0,0,0,"taskId = 0",0,0,0);
	trans[3][137]	= settr(0,0,0,0,0,"needResched = 0",0,0,0);
	trans[3][138]	= settr(0,0,0,0,0,"interrupted_task = 0",0,0,0);
	trans[3][139]	= settr(0,0,0,0,0,"needResched = 0",0,0,0);
	T = trans[ 3][142] = settr(3420,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(3420,0,140,0,0,"sub-sequence", 1, 2, 0);
	trans[3][140]	= settr(3418,2,199,136,136,"int_save = int_ctrl_reg", 1, 2, 0); /* m: 141 -> 0,199 */
	reached3[141] = 1;
	trans[3][141]	= settr(0,0,0,0,0,"int_ctrl_reg = 1",0,0,0);
	trans[3][143]	= settr(0,0,0,0,0,"tickCount = (tickCount+1)",0,0,0);
	trans[3][144]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[3][200]	= settr(3478,2,199,1,0,".(goto)", 1, 2, 0);
	T = trans[3][199] = settr(3477,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(3477,2,145,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(3477,2,197,0,0,"DO", 1, 2, 0);
	trans[3][145]	= settr(3423,2,195,137,137,"((idx<sortLink.count))", 1, 2, 0); /* m: 146 -> 195,0 */
	reached3[146] = 1;
	trans[3][146]	= settr(0,0,0,0,0,"taskId = sortLink.tasks[idx]",0,0,0);
	T = trans[3][195] = settr(3473,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(3473,2,147,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(3473,2,193,0,0,"IF", 1, 2, 0);
	trans[3][147]	= settr(3425,2,183,138,138,"(((tcb[taskId].state==2)&&(tickCount>=tcb[taskId].wakeupTime)))", 1, 2, 0); /* m: 148 -> 183,0 */
	reached3[148] = 1;
	trans[3][148]	= settr(0,0,0,0,0,"tcb[taskId].state = 1",0,0,0);
	trans[3][149]	= settr(0,0,0,0,0,"tcb[taskId].delayTicks = 0",0,0,0);
	T = trans[ 3][183] = settr(3461,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(3461,0,150,0,0,"sub-sequence", 1, 2, 0);
	trans[3][150]	= settr(3428,2,164,139,139,"removePos = 0", 1, 2, 0); /* m: 151 -> 0,164 */
	reached3[151] = 1;
	trans[3][151]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[3][152]	= settr(0,0,0,0,0,"shiftIdx = 0",0,0,0);
	trans[3][153]	= settr(0,0,0,0,0,"removePos = 0",0,0,0);
	trans[3][154]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[3][165]	= settr(3443,2,164,1,0,".(goto)", 1, 2, 0);
	T = trans[3][164] = settr(3442,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(3442,2,155,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(3442,2,162,0,0,"DO", 1, 2, 0);
	trans[3][155]	= settr(3433,2,160,140,0,"(((removePos<sortLink.count)&&!(found)))", 1, 2, 0);
	T = trans[3][160] = settr(3438,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(3438,2,156,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(3438,2,158,0,0,"IF", 1, 2, 0);
	trans[3][156]	= settr(3434,2,164,141,141,"((sortLink.tasks[removePos]==taskId))", 1, 2, 0); /* m: 157 -> 164,0 */
	reached3[157] = 1;
	trans[3][157]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[3][161]	= settr(3439,2,164,1,0,".(goto)", 1, 2, 0);
	trans[3][158]	= settr(3436,2,159,2,0,"else", 1, 2, 0);
	trans[3][159]	= settr(3437,2,164,142,142,"removePos = (removePos+1)", 1, 2, 0);
	trans[3][162]	= settr(3440,2,181,2,0,"else", 1, 2, 0);
	trans[3][163]	= settr(3441,2,181,1,0,"goto :b130", 1, 2, 0);
	trans[3][166]	= settr(3444,2,181,1,0,"break", 1, 2, 0);
	T = trans[3][181] = settr(3459,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(3459,2,167,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(3459,2,179,0,0,"IF", 1, 2, 0);
	trans[3][167]	= settr(3445,2,174,143,143,"((found==1))", 1, 2, 0); /* m: 168 -> 174,0 */
	reached3[168] = 1;
	trans[3][168]	= settr(0,0,0,0,0,"shiftIdx = removePos",0,0,0);
	trans[3][175]	= settr(3453,2,174,1,0,".(goto)", 1, 2, 0);
	T = trans[3][174] = settr(3452,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(3452,2,169,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(3452,2,172,0,0,"DO", 1, 2, 0);
	trans[3][169]	= settr(3447,2,174,144,144,"((shiftIdx<(sortLink.count-1)))", 1, 2, 0); /* m: 170 -> 174,0 */
	reached3[170] = 1;
	trans[3][170]	= settr(0,0,0,0,0,"sortLink.tasks[shiftIdx] = sortLink.tasks[(shiftIdx+1)]",0,0,0);
	trans[3][171]	= settr(0,0,0,0,0,"shiftIdx = (shiftIdx+1)",0,0,0);
	trans[3][172]	= settr(3450,2,191,145,145,"((shiftIdx>=(sortLink.count-1)))", 1, 2, 0); /* m: 177 -> 191,0 */
	reached3[177] = 1;
	trans[3][173]	= settr(3451,2,177,1,0,"goto :b131", 1, 2, 0); /* m: 177 -> 0,191 */
	reached3[177] = 1;
	trans[3][176]	= settr(3454,2,177,1,0,"break", 1, 2, 0);
	trans[3][177]	= settr(3455,2,191,146,146,"sortLink.tasks[(sortLink.count-1)] = 255", 1, 2, 0); /* m: 178 -> 0,191 */
	reached3[178] = 1;
	trans[3][178]	= settr(0,0,0,0,0,"sortLink.count = (sortLink.count-1)",0,0,0);
	trans[3][182]	= settr(3460,2,191,1,0,".(goto)", 1, 2, 0);
	trans[3][179]	= settr(3457,2,180,2,0,"else", 1, 2, 0);
	trans[3][180]	= settr(3458,2,191,1,0,"(1)", 1, 2, 0);
	T = trans[ 3][191] = settr(3469,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(3469,0,189,0,0,"sub-sequence", 1, 2, 0);
	T = trans[3][189] = settr(3467,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(3467,2,184,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(3467,2,187,0,0,"IF", 1, 2, 0);
	trans[3][184]	= settr(3462,2,199,147,147,"((readyQueue[tcb[taskId].prio].tailIndex<8))", 1, 2, 0); /* m: 185 -> 199,0 */
	reached3[185] = 1;
	trans[3][185]	= settr(0,0,0,0,0,"readyQueue[tcb[taskId].prio].tasks[readyQueue[tcb[taskId].prio].tailIndex] = taskId",0,0,0);
	trans[3][186]	= settr(0,0,0,0,0,"readyQueue[tcb[taskId].prio].tailIndex = (readyQueue[tcb[taskId].prio].tailIndex+1)",0,0,0);
	trans[3][190]	= settr(3468,2,192,1,0,".(goto)", 1, 2, 0); /* m: 192 -> 0,199 */
	reached3[192] = 1;
	trans[3][187]	= settr(3465,2,188,2,0,"else", 1, 2, 0);
	trans[3][188]	= settr(3466,2,199,148,148,"assert(0)", 1, 2, 0); /* m: 192 -> 0,199 */
	reached3[192] = 1;
	trans[3][192]	= settr(3470,2,199,149,149,"needResched = 1", 1, 2, 0);
	trans[3][196]	= settr(3474,2,199,1,0,".(goto)", 1, 2, 0);
	trans[3][193]	= settr(3471,2,194,2,0,"else", 1, 2, 0);
	trans[3][194]	= settr(3472,2,199,150,150,"idx = (idx+1)", 1, 2, 0);
	trans[3][197]	= settr(3475,2,215,151,151,"((idx>=sortLink.count))", 1, 2, 0); /* m: 202 -> 215,0 */
	reached3[202] = 1;
	trans[3][198]	= settr(3476,2,202,1,0,"goto :b129", 1, 2, 0); /* m: 202 -> 0,215 */
	reached3[202] = 1;
	trans[3][201]	= settr(3479,2,202,1,0,"break", 1, 2, 0);
	trans[3][202]	= settr(3480,2,215,152,152,"interrupted_task = EP", 1, 2, 0);
	T = trans[3][215] = settr(3493,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(3493,2,203,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(3493,2,213,0,0,"IF", 1, 2, 0);
	trans[3][203]	= settr(3481,2,212,153,153,"((((interrupted_task>=1)&&(interrupted_task<=4))&&(tcb[interrupted_task].state!=2)))", 1, 2, 0); /* m: 204 -> 212,0 */
	reached3[204] = 1;
	trans[3][204]	= settr(0,0,0,0,0,"tcb[interrupted_task].state = 1",0,0,0);
	T = trans[ 3][212] = settr(3490,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(3490,0,210,0,0,"sub-sequence", 1, 2, 0);
	T = trans[3][210] = settr(3488,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(3488,2,205,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(3488,2,208,0,0,"IF", 1, 2, 0);
	trans[3][205]	= settr(3483,2,238,154,154,"((readyQueue[tcb[interrupted_task].prio].tailIndex<8))", 1, 2, 0); /* m: 206 -> 238,0 */
	reached3[206] = 1;
	trans[3][206]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tasks[readyQueue[tcb[interrupted_task].prio].tailIndex] = interrupted_task",0,0,0);
	trans[3][207]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tailIndex = (readyQueue[tcb[interrupted_task].prio].tailIndex+1)",0,0,0);
	trans[3][211]	= settr(3489,2,238,1,0,".(goto)", 1, 2, 0);
	trans[3][208]	= settr(3486,2,209,2,0,"else", 1, 2, 0);
	trans[3][209]	= settr(3487,2,238,155,0,"assert(0)", 1, 2, 0);
	trans[3][216]	= settr(3494,2,238,1,0,".(goto)", 1, 2, 0);
	trans[3][213]	= settr(3491,2,214,2,0,"else", 1, 2, 0);
	trans[3][214]	= settr(3492,2,238,1,0,"(1)", 1, 2, 0);
	T = trans[ 3][238] = settr(3516,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(3516,0,217,0,0,"sub-sequence", 1, 2, 0);
	trans[3][217]	= settr(3495,2,233,156,156,"prio = 0", 1, 2, 0); /* m: 218 -> 0,233 */
	reached3[218] = 1;
	trans[3][218]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[3][219]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[3][220]	= settr(0,0,0,0,0,"prio = 0",0,0,0);
	trans[3][221]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[3][222]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[3][234]	= settr(3512,2,233,1,0,".(goto)", 1, 2, 0);
	T = trans[3][233] = settr(3511,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(3511,2,223,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(3511,2,231,0,0,"DO", 1, 2, 0);
	trans[3][223]	= settr(3501,2,229,157,0,"(((prio<4)&&!(found)))", 1, 2, 0);
	T = trans[3][229] = settr(3507,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(3507,2,224,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(3507,2,227,0,0,"IF", 1, 2, 0);
	trans[3][224]	= settr(3502,2,233,158,158,"((readyQueue[prio].tailIndex>0))", 1, 2, 0); /* m: 225 -> 233,0 */
	reached3[225] = 1;
	trans[3][225]	= settr(0,0,0,0,0,"top_task = readyQueue[prio].tasks[0]",0,0,0);
	trans[3][226]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[3][230]	= settr(3508,2,233,1,0,".(goto)", 1, 2, 0);
	trans[3][227]	= settr(3505,2,228,2,0,"else", 1, 2, 0);
	trans[3][228]	= settr(3506,2,233,159,159,"prio = (prio+1)", 1, 2, 0);
	trans[3][231]	= settr(3509,2,256,160,160,"(((prio>=4)||found))", 1, 2, 0); /* m: 236 -> 256,0 */
	reached3[236] = 1;
	trans[3][232]	= settr(3510,2,236,1,0,"goto :b132", 1, 2, 0); /* m: 236 -> 0,256 */
	reached3[236] = 1;
	trans[3][235]	= settr(3513,2,236,1,0,"break", 1, 2, 0);
	trans[3][236]	= settr(3514,2,256,161,161,"newTask = top_task", 1, 2, 0); /* m: 237 -> 0,256 */
	reached3[237] = 1;
	trans[3][237]	= settr(0,0,0,0,0,"topPrio = prio",0,0,0);
	T = trans[ 3][256] = settr(3534,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(3534,0,239,0,0,"sub-sequence", 1, 2, 0);
	trans[3][239]	= settr(3517,2,246,162,162,"deq_idx = 0", 1, 2, 0); /* m: 240 -> 0,246 */
	reached3[240] = 1;
	trans[3][240]	= settr(0,0,0,0,0,"deq_idx = 0",0,0,0);
	trans[3][247]	= settr(3525,2,246,1,0,".(goto)", 1, 2, 0);
	T = trans[3][246] = settr(3524,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(3524,2,241,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(3524,2,244,0,0,"DO", 1, 2, 0);
	trans[3][241]	= settr(3519,2,246,163,163,"((deq_idx<(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0); /* m: 242 -> 246,0 */
	reached3[242] = 1;
	trans[3][242]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[deq_idx] = readyQueue[topPrio].tasks[(deq_idx+1)]",0,0,0);
	trans[3][243]	= settr(0,0,0,0,0,"deq_idx = (deq_idx+1)",0,0,0);
	trans[3][244]	= settr(3522,2,254,164,164,"((deq_idx>=(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0);
	trans[3][245]	= settr(3523,2,254,1,0,"goto :b133", 1, 2, 0);
	trans[3][248]	= settr(3526,2,254,1,0,"break", 1, 2, 0);
	T = trans[3][254] = settr(3532,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(3532,2,249,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(3532,2,252,0,0,"IF", 1, 2, 0);
	trans[3][249]	= settr(3527,2,260,165,165,"((readyQueue[topPrio].tailIndex>0))", 1, 2, 0); /* m: 250 -> 260,0 */
	reached3[250] = 1;
	trans[3][250]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)] = 255",0,0,0);
	trans[3][251]	= settr(0,0,0,0,0,"readyQueue[topPrio].tailIndex = (readyQueue[topPrio].tailIndex-1)",0,0,0);
	trans[3][255]	= settr(3533,2,257,1,0,".(goto)", 1, 2, 0); /* m: 257 -> 0,260 */
	reached3[257] = 1;
	trans[3][252]	= settr(3530,2,253,2,0,"else", 1, 2, 0);
	trans[3][253]	= settr(3531,2,260,166,166,"(1)", 1, 2, 0); /* m: 257 -> 260,0 */
	reached3[257] = 1;
	trans[3][257]	= settr(3535,2,260,167,167,"tcb[newTask].state = 4", 1, 2, 0); /* m: 258 -> 0,260 */
	reached3[258] = 1;
	trans[3][258]	= settr(0,0,0,0,0,"EP = newTask",0,0,0);
	T = trans[ 3][260] = settr(3538,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(3538,0,259,0,0,"sub-sequence", 1, 2, 0);
	trans[3][259]	= settr(3537,0,1090,168,168,"int_ctrl_reg = int_save", 1, 2, 0);
	T = trans[ 3][393] = settr(3671,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(3671,2,263,0,0,"ATOMIC", 1, 2, 0);
	trans[3][263]	= settr(3541,2,392,169,169,"((EP==4))", 1, 2, 0); /* m: 264 -> 392,0 */
	reached3[264] = 1;
	trans[3][264]	= settr(0,0,0,0,0,"work = ((work+(counter*4))%100)",0,0,0);
	T = trans[ 3][392] = settr(3670,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(3670,0,265,0,0,"sub-sequence", 1, 2, 0);
	trans[3][265]	= settr(3543,2,273,170,170,"interrupted_task = 0", 1, 2, 0); /* m: 266 -> 0,273 */
	reached3[266] = 1;
	trans[3][266]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[3][267]	= settr(0,0,0,0,0,"taskId = 0",0,0,0);
	trans[3][268]	= settr(0,0,0,0,0,"needResched = 0",0,0,0);
	trans[3][269]	= settr(0,0,0,0,0,"interrupted_task = 0",0,0,0);
	trans[3][270]	= settr(0,0,0,0,0,"needResched = 0",0,0,0);
	T = trans[ 3][273] = settr(3551,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(3551,0,271,0,0,"sub-sequence", 1, 2, 0);
	trans[3][271]	= settr(3549,2,330,171,171,"int_save = int_ctrl_reg", 1, 2, 0); /* m: 272 -> 0,330 */
	reached3[272] = 1;
	trans[3][272]	= settr(0,0,0,0,0,"int_ctrl_reg = 1",0,0,0);
	trans[3][274]	= settr(0,0,0,0,0,"tickCount = (tickCount+1)",0,0,0);
	trans[3][275]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[3][331]	= settr(3609,2,330,1,0,".(goto)", 1, 2, 0);
	T = trans[3][330] = settr(3608,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(3608,2,276,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(3608,2,328,0,0,"DO", 1, 2, 0);
	trans[3][276]	= settr(3554,2,326,172,172,"((idx<sortLink.count))", 1, 2, 0); /* m: 277 -> 326,0 */
	reached3[277] = 1;
	trans[3][277]	= settr(0,0,0,0,0,"taskId = sortLink.tasks[idx]",0,0,0);
	T = trans[3][326] = settr(3604,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(3604,2,278,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(3604,2,324,0,0,"IF", 1, 2, 0);
	trans[3][278]	= settr(3556,2,314,173,173,"(((tcb[taskId].state==2)&&(tickCount>=tcb[taskId].wakeupTime)))", 1, 2, 0); /* m: 279 -> 314,0 */
	reached3[279] = 1;
	trans[3][279]	= settr(0,0,0,0,0,"tcb[taskId].state = 1",0,0,0);
	trans[3][280]	= settr(0,0,0,0,0,"tcb[taskId].delayTicks = 0",0,0,0);
	T = trans[ 3][314] = settr(3592,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(3592,0,281,0,0,"sub-sequence", 1, 2, 0);
	trans[3][281]	= settr(3559,2,295,174,174,"removePos = 0", 1, 2, 0); /* m: 282 -> 0,295 */
	reached3[282] = 1;
	trans[3][282]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[3][283]	= settr(0,0,0,0,0,"shiftIdx = 0",0,0,0);
	trans[3][284]	= settr(0,0,0,0,0,"removePos = 0",0,0,0);
	trans[3][285]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[3][296]	= settr(3574,2,295,1,0,".(goto)", 1, 2, 0);
	T = trans[3][295] = settr(3573,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(3573,2,286,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(3573,2,293,0,0,"DO", 1, 2, 0);
	trans[3][286]	= settr(3564,2,291,175,0,"(((removePos<sortLink.count)&&!(found)))", 1, 2, 0);
	T = trans[3][291] = settr(3569,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(3569,2,287,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(3569,2,289,0,0,"IF", 1, 2, 0);
	trans[3][287]	= settr(3565,2,295,176,176,"((sortLink.tasks[removePos]==taskId))", 1, 2, 0); /* m: 288 -> 295,0 */
	reached3[288] = 1;
	trans[3][288]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[3][292]	= settr(3570,2,295,1,0,".(goto)", 1, 2, 0);
	trans[3][289]	= settr(3567,2,290,2,0,"else", 1, 2, 0);
	trans[3][290]	= settr(3568,2,295,177,177,"removePos = (removePos+1)", 1, 2, 0);
	trans[3][293]	= settr(3571,2,312,2,0,"else", 1, 2, 0);
	trans[3][294]	= settr(3572,2,312,1,0,"goto :b135", 1, 2, 0);
	trans[3][297]	= settr(3575,2,312,1,0,"break", 1, 2, 0);
	T = trans[3][312] = settr(3590,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(3590,2,298,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(3590,2,310,0,0,"IF", 1, 2, 0);
	trans[3][298]	= settr(3576,2,305,178,178,"((found==1))", 1, 2, 0); /* m: 299 -> 305,0 */
	reached3[299] = 1;
	trans[3][299]	= settr(0,0,0,0,0,"shiftIdx = removePos",0,0,0);
	trans[3][306]	= settr(3584,2,305,1,0,".(goto)", 1, 2, 0);
	T = trans[3][305] = settr(3583,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(3583,2,300,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(3583,2,303,0,0,"DO", 1, 2, 0);
	trans[3][300]	= settr(3578,2,305,179,179,"((shiftIdx<(sortLink.count-1)))", 1, 2, 0); /* m: 301 -> 305,0 */
	reached3[301] = 1;
	trans[3][301]	= settr(0,0,0,0,0,"sortLink.tasks[shiftIdx] = sortLink.tasks[(shiftIdx+1)]",0,0,0);
	trans[3][302]	= settr(0,0,0,0,0,"shiftIdx = (shiftIdx+1)",0,0,0);
	trans[3][303]	= settr(3581,2,322,180,180,"((shiftIdx>=(sortLink.count-1)))", 1, 2, 0); /* m: 308 -> 322,0 */
	reached3[308] = 1;
	trans[3][304]	= settr(3582,2,308,1,0,"goto :b136", 1, 2, 0); /* m: 308 -> 0,322 */
	reached3[308] = 1;
	trans[3][307]	= settr(3585,2,308,1,0,"break", 1, 2, 0);
	trans[3][308]	= settr(3586,2,322,181,181,"sortLink.tasks[(sortLink.count-1)] = 255", 1, 2, 0); /* m: 309 -> 0,322 */
	reached3[309] = 1;
	trans[3][309]	= settr(0,0,0,0,0,"sortLink.count = (sortLink.count-1)",0,0,0);
	trans[3][313]	= settr(3591,2,322,1,0,".(goto)", 1, 2, 0);
	trans[3][310]	= settr(3588,2,311,2,0,"else", 1, 2, 0);
	trans[3][311]	= settr(3589,2,322,1,0,"(1)", 1, 2, 0);
	T = trans[ 3][322] = settr(3600,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(3600,0,320,0,0,"sub-sequence", 1, 2, 0);
	T = trans[3][320] = settr(3598,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(3598,2,315,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(3598,2,318,0,0,"IF", 1, 2, 0);
	trans[3][315]	= settr(3593,2,330,182,182,"((readyQueue[tcb[taskId].prio].tailIndex<8))", 1, 2, 0); /* m: 316 -> 330,0 */
	reached3[316] = 1;
	trans[3][316]	= settr(0,0,0,0,0,"readyQueue[tcb[taskId].prio].tasks[readyQueue[tcb[taskId].prio].tailIndex] = taskId",0,0,0);
	trans[3][317]	= settr(0,0,0,0,0,"readyQueue[tcb[taskId].prio].tailIndex = (readyQueue[tcb[taskId].prio].tailIndex+1)",0,0,0);
	trans[3][321]	= settr(3599,2,323,1,0,".(goto)", 1, 2, 0); /* m: 323 -> 0,330 */
	reached3[323] = 1;
	trans[3][318]	= settr(3596,2,319,2,0,"else", 1, 2, 0);
	trans[3][319]	= settr(3597,2,330,183,183,"assert(0)", 1, 2, 0); /* m: 323 -> 0,330 */
	reached3[323] = 1;
	trans[3][323]	= settr(3601,2,330,184,184,"needResched = 1", 1, 2, 0);
	trans[3][327]	= settr(3605,2,330,1,0,".(goto)", 1, 2, 0);
	trans[3][324]	= settr(3602,2,325,2,0,"else", 1, 2, 0);
	trans[3][325]	= settr(3603,2,330,185,185,"idx = (idx+1)", 1, 2, 0);
	trans[3][328]	= settr(3606,2,346,186,186,"((idx>=sortLink.count))", 1, 2, 0); /* m: 333 -> 346,0 */
	reached3[333] = 1;
	trans[3][329]	= settr(3607,2,333,1,0,"goto :b134", 1, 2, 0); /* m: 333 -> 0,346 */
	reached3[333] = 1;
	trans[3][332]	= settr(3610,2,333,1,0,"break", 1, 2, 0);
	trans[3][333]	= settr(3611,2,346,187,187,"interrupted_task = EP", 1, 2, 0);
	T = trans[3][346] = settr(3624,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(3624,2,334,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(3624,2,344,0,0,"IF", 1, 2, 0);
	trans[3][334]	= settr(3612,2,343,188,188,"((((interrupted_task>=1)&&(interrupted_task<=4))&&(tcb[interrupted_task].state!=2)))", 1, 2, 0); /* m: 335 -> 343,0 */
	reached3[335] = 1;
	trans[3][335]	= settr(0,0,0,0,0,"tcb[interrupted_task].state = 1",0,0,0);
	T = trans[ 3][343] = settr(3621,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(3621,0,341,0,0,"sub-sequence", 1, 2, 0);
	T = trans[3][341] = settr(3619,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(3619,2,336,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(3619,2,339,0,0,"IF", 1, 2, 0);
	trans[3][336]	= settr(3614,2,369,189,189,"((readyQueue[tcb[interrupted_task].prio].tailIndex<8))", 1, 2, 0); /* m: 337 -> 369,0 */
	reached3[337] = 1;
	trans[3][337]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tasks[readyQueue[tcb[interrupted_task].prio].tailIndex] = interrupted_task",0,0,0);
	trans[3][338]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tailIndex = (readyQueue[tcb[interrupted_task].prio].tailIndex+1)",0,0,0);
	trans[3][342]	= settr(3620,2,369,1,0,".(goto)", 1, 2, 0);
	trans[3][339]	= settr(3617,2,340,2,0,"else", 1, 2, 0);
	trans[3][340]	= settr(3618,2,369,190,0,"assert(0)", 1, 2, 0);
	trans[3][347]	= settr(3625,2,369,1,0,".(goto)", 1, 2, 0);
	trans[3][344]	= settr(3622,2,345,2,0,"else", 1, 2, 0);
	trans[3][345]	= settr(3623,2,369,1,0,"(1)", 1, 2, 0);
	T = trans[ 3][369] = settr(3647,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(3647,0,348,0,0,"sub-sequence", 1, 2, 0);
	trans[3][348]	= settr(3626,2,364,191,191,"prio = 0", 1, 2, 0); /* m: 349 -> 0,364 */
	reached3[349] = 1;
	trans[3][349]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[3][350]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[3][351]	= settr(0,0,0,0,0,"prio = 0",0,0,0);
	trans[3][352]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[3][353]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[3][365]	= settr(3643,2,364,1,0,".(goto)", 1, 2, 0);
	T = trans[3][364] = settr(3642,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(3642,2,354,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(3642,2,362,0,0,"DO", 1, 2, 0);
	trans[3][354]	= settr(3632,2,360,192,0,"(((prio<4)&&!(found)))", 1, 2, 0);
	T = trans[3][360] = settr(3638,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(3638,2,355,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(3638,2,358,0,0,"IF", 1, 2, 0);
	trans[3][355]	= settr(3633,2,364,193,193,"((readyQueue[prio].tailIndex>0))", 1, 2, 0); /* m: 356 -> 364,0 */
	reached3[356] = 1;
	trans[3][356]	= settr(0,0,0,0,0,"top_task = readyQueue[prio].tasks[0]",0,0,0);
	trans[3][357]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[3][361]	= settr(3639,2,364,1,0,".(goto)", 1, 2, 0);
	trans[3][358]	= settr(3636,2,359,2,0,"else", 1, 2, 0);
	trans[3][359]	= settr(3637,2,364,194,194,"prio = (prio+1)", 1, 2, 0);
	trans[3][362]	= settr(3640,2,387,195,195,"(((prio>=4)||found))", 1, 2, 0); /* m: 367 -> 387,0 */
	reached3[367] = 1;
	trans[3][363]	= settr(3641,2,367,1,0,"goto :b137", 1, 2, 0); /* m: 367 -> 0,387 */
	reached3[367] = 1;
	trans[3][366]	= settr(3644,2,367,1,0,"break", 1, 2, 0);
	trans[3][367]	= settr(3645,2,387,196,196,"newTask = top_task", 1, 2, 0); /* m: 368 -> 0,387 */
	reached3[368] = 1;
	trans[3][368]	= settr(0,0,0,0,0,"topPrio = prio",0,0,0);
	T = trans[ 3][387] = settr(3665,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(3665,0,370,0,0,"sub-sequence", 1, 2, 0);
	trans[3][370]	= settr(3648,2,377,197,197,"deq_idx = 0", 1, 2, 0); /* m: 371 -> 0,377 */
	reached3[371] = 1;
	trans[3][371]	= settr(0,0,0,0,0,"deq_idx = 0",0,0,0);
	trans[3][378]	= settr(3656,2,377,1,0,".(goto)", 1, 2, 0);
	T = trans[3][377] = settr(3655,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(3655,2,372,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(3655,2,375,0,0,"DO", 1, 2, 0);
	trans[3][372]	= settr(3650,2,377,198,198,"((deq_idx<(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0); /* m: 373 -> 377,0 */
	reached3[373] = 1;
	trans[3][373]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[deq_idx] = readyQueue[topPrio].tasks[(deq_idx+1)]",0,0,0);
	trans[3][374]	= settr(0,0,0,0,0,"deq_idx = (deq_idx+1)",0,0,0);
	trans[3][375]	= settr(3653,2,385,199,199,"((deq_idx>=(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0);
	trans[3][376]	= settr(3654,2,385,1,0,"goto :b138", 1, 2, 0);
	trans[3][379]	= settr(3657,2,385,1,0,"break", 1, 2, 0);
	T = trans[3][385] = settr(3663,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(3663,2,380,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(3663,2,383,0,0,"IF", 1, 2, 0);
	trans[3][380]	= settr(3658,2,391,200,200,"((readyQueue[topPrio].tailIndex>0))", 1, 2, 0); /* m: 381 -> 391,0 */
	reached3[381] = 1;
	trans[3][381]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)] = 255",0,0,0);
	trans[3][382]	= settr(0,0,0,0,0,"readyQueue[topPrio].tailIndex = (readyQueue[topPrio].tailIndex-1)",0,0,0);
	trans[3][386]	= settr(3664,2,388,1,0,".(goto)", 1, 2, 0); /* m: 388 -> 0,391 */
	reached3[388] = 1;
	trans[3][383]	= settr(3661,2,384,2,0,"else", 1, 2, 0);
	trans[3][384]	= settr(3662,2,391,201,201,"(1)", 1, 2, 0); /* m: 388 -> 391,0 */
	reached3[388] = 1;
	trans[3][388]	= settr(3666,2,391,202,202,"tcb[newTask].state = 4", 1, 2, 0); /* m: 389 -> 0,391 */
	reached3[389] = 1;
	trans[3][389]	= settr(0,0,0,0,0,"EP = newTask",0,0,0);
	T = trans[ 3][391] = settr(3669,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(3669,0,390,0,0,"sub-sequence", 1, 2, 0);
	trans[3][390]	= settr(3668,0,1090,203,203,"int_ctrl_reg = int_save", 1, 2, 0);
	T = trans[ 3][675] = settr(3953,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(3953,2,394,0,0,"ATOMIC", 1, 2, 0);
	trans[3][394]	= settr(3672,2,546,204,0,"((EP==4))", 1, 2, 0);
	T = trans[ 3][546] = settr(3824,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(3824,0,395,0,0,"sub-sequence", 1, 2, 0);
	trans[3][395]	= settr(3673,2,544,205,205,"currentTask = 0", 1, 2, 0);
	T = trans[3][544] = settr(3822,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(3822,2,396,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(3822,2,542,0,0,"IF", 1, 2, 0);
	trans[3][396]	= settr(3674,2,399,206,0,"((((2>0)&&(EP>=1))&&(EP<=4)))", 1, 2, 0);
	T = trans[ 3][399] = settr(3677,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(3677,0,397,0,0,"sub-sequence", 1, 2, 0);
	trans[3][397]	= settr(3675,2,411,207,207,"int_save = int_ctrl_reg", 1, 2, 0); /* m: 398 -> 0,411 */
	reached3[398] = 1;
	trans[3][398]	= settr(0,0,0,0,0,"int_ctrl_reg = 1",0,0,0);
	trans[3][400]	= settr(0,0,0,0,0,"currentTask = EP",0,0,0);
	trans[3][401]	= settr(0,0,0,0,0,"tcb[currentTask].state = 2",0,0,0);
	trans[3][402]	= settr(0,0,0,0,0,"tcb[currentTask].wakeupTime = (tickCount+2)",0,0,0);
	trans[3][403]	= settr(0,0,0,0,0,"tcb[currentTask].delayTicks = 2",0,0,0);
	T = trans[ 3][411] = settr(3689,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(3689,0,409,0,0,"sub-sequence", 1, 2, 0);
	T = trans[3][409] = settr(3687,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(3687,2,404,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(3687,2,407,0,0,"IF", 1, 2, 0);
	trans[3][404]	= settr(3682,2,539,208,208,"((sortLink.count<8))", 1, 2, 0); /* m: 405 -> 539,0 */
	reached3[405] = 1;
	trans[3][405]	= settr(0,0,0,0,0,"sortLink.tasks[sortLink.count] = currentTask",0,0,0);
	trans[3][406]	= settr(0,0,0,0,0,"sortLink.count = (sortLink.count+1)",0,0,0);
	trans[3][410]	= settr(3688,2,539,1,0,".(goto)", 1, 2, 0);
	trans[3][407]	= settr(3685,2,408,2,0,"else", 1, 2, 0);
	trans[3][408]	= settr(3686,2,539,209,0,"assert(0)", 1, 2, 0);
	T = trans[ 3][539] = settr(3817,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(3817,0,412,0,0,"sub-sequence", 1, 2, 0);
	trans[3][412]	= settr(3690,2,420,210,210,"interrupted_task = 0", 1, 2, 0); /* m: 413 -> 0,420 */
	reached3[413] = 1;
	trans[3][413]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[3][414]	= settr(0,0,0,0,0,"taskId = 0",0,0,0);
	trans[3][415]	= settr(0,0,0,0,0,"needResched = 0",0,0,0);
	trans[3][416]	= settr(0,0,0,0,0,"interrupted_task = 0",0,0,0);
	trans[3][417]	= settr(0,0,0,0,0,"needResched = 0",0,0,0);
	T = trans[ 3][420] = settr(3698,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(3698,0,418,0,0,"sub-sequence", 1, 2, 0);
	trans[3][418]	= settr(3696,2,477,211,211,"int_save = int_ctrl_reg", 1, 2, 0); /* m: 419 -> 0,477 */
	reached3[419] = 1;
	trans[3][419]	= settr(0,0,0,0,0,"int_ctrl_reg = 1",0,0,0);
	trans[3][421]	= settr(0,0,0,0,0,"tickCount = (tickCount+1)",0,0,0);
	trans[3][422]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[3][478]	= settr(3756,2,477,1,0,".(goto)", 1, 2, 0);
	T = trans[3][477] = settr(3755,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(3755,2,423,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(3755,2,475,0,0,"DO", 1, 2, 0);
	trans[3][423]	= settr(3701,2,473,212,212,"((idx<sortLink.count))", 1, 2, 0); /* m: 424 -> 473,0 */
	reached3[424] = 1;
	trans[3][424]	= settr(0,0,0,0,0,"taskId = sortLink.tasks[idx]",0,0,0);
	T = trans[3][473] = settr(3751,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(3751,2,425,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(3751,2,471,0,0,"IF", 1, 2, 0);
	trans[3][425]	= settr(3703,2,461,213,213,"(((tcb[taskId].state==2)&&(tickCount>=tcb[taskId].wakeupTime)))", 1, 2, 0); /* m: 426 -> 461,0 */
	reached3[426] = 1;
	trans[3][426]	= settr(0,0,0,0,0,"tcb[taskId].state = 1",0,0,0);
	trans[3][427]	= settr(0,0,0,0,0,"tcb[taskId].delayTicks = 0",0,0,0);
	T = trans[ 3][461] = settr(3739,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(3739,0,428,0,0,"sub-sequence", 1, 2, 0);
	trans[3][428]	= settr(3706,2,442,214,214,"removePos = 0", 1, 2, 0); /* m: 429 -> 0,442 */
	reached3[429] = 1;
	trans[3][429]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[3][430]	= settr(0,0,0,0,0,"shiftIdx = 0",0,0,0);
	trans[3][431]	= settr(0,0,0,0,0,"removePos = 0",0,0,0);
	trans[3][432]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[3][443]	= settr(3721,2,442,1,0,".(goto)", 1, 2, 0);
	T = trans[3][442] = settr(3720,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(3720,2,433,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(3720,2,440,0,0,"DO", 1, 2, 0);
	trans[3][433]	= settr(3711,2,438,215,0,"(((removePos<sortLink.count)&&!(found)))", 1, 2, 0);
	T = trans[3][438] = settr(3716,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(3716,2,434,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(3716,2,436,0,0,"IF", 1, 2, 0);
	trans[3][434]	= settr(3712,2,442,216,216,"((sortLink.tasks[removePos]==taskId))", 1, 2, 0); /* m: 435 -> 442,0 */
	reached3[435] = 1;
	trans[3][435]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[3][439]	= settr(3717,2,442,1,0,".(goto)", 1, 2, 0);
	trans[3][436]	= settr(3714,2,437,2,0,"else", 1, 2, 0);
	trans[3][437]	= settr(3715,2,442,217,217,"removePos = (removePos+1)", 1, 2, 0);
	trans[3][440]	= settr(3718,2,459,2,0,"else", 1, 2, 0);
	trans[3][441]	= settr(3719,2,459,1,0,"goto :b140", 1, 2, 0);
	trans[3][444]	= settr(3722,2,459,1,0,"break", 1, 2, 0);
	T = trans[3][459] = settr(3737,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(3737,2,445,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(3737,2,457,0,0,"IF", 1, 2, 0);
	trans[3][445]	= settr(3723,2,452,218,218,"((found==1))", 1, 2, 0); /* m: 446 -> 452,0 */
	reached3[446] = 1;
	trans[3][446]	= settr(0,0,0,0,0,"shiftIdx = removePos",0,0,0);
	trans[3][453]	= settr(3731,2,452,1,0,".(goto)", 1, 2, 0);
	T = trans[3][452] = settr(3730,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(3730,2,447,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(3730,2,450,0,0,"DO", 1, 2, 0);
	trans[3][447]	= settr(3725,2,452,219,219,"((shiftIdx<(sortLink.count-1)))", 1, 2, 0); /* m: 448 -> 452,0 */
	reached3[448] = 1;
	trans[3][448]	= settr(0,0,0,0,0,"sortLink.tasks[shiftIdx] = sortLink.tasks[(shiftIdx+1)]",0,0,0);
	trans[3][449]	= settr(0,0,0,0,0,"shiftIdx = (shiftIdx+1)",0,0,0);
	trans[3][450]	= settr(3728,2,469,220,220,"((shiftIdx>=(sortLink.count-1)))", 1, 2, 0); /* m: 455 -> 469,0 */
	reached3[455] = 1;
	trans[3][451]	= settr(3729,2,455,1,0,"goto :b141", 1, 2, 0); /* m: 455 -> 0,469 */
	reached3[455] = 1;
	trans[3][454]	= settr(3732,2,455,1,0,"break", 1, 2, 0);
	trans[3][455]	= settr(3733,2,469,221,221,"sortLink.tasks[(sortLink.count-1)] = 255", 1, 2, 0); /* m: 456 -> 0,469 */
	reached3[456] = 1;
	trans[3][456]	= settr(0,0,0,0,0,"sortLink.count = (sortLink.count-1)",0,0,0);
	trans[3][460]	= settr(3738,2,469,1,0,".(goto)", 1, 2, 0);
	trans[3][457]	= settr(3735,2,458,2,0,"else", 1, 2, 0);
	trans[3][458]	= settr(3736,2,469,1,0,"(1)", 1, 2, 0);
	T = trans[ 3][469] = settr(3747,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(3747,0,467,0,0,"sub-sequence", 1, 2, 0);
	T = trans[3][467] = settr(3745,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(3745,2,462,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(3745,2,465,0,0,"IF", 1, 2, 0);
	trans[3][462]	= settr(3740,2,477,222,222,"((readyQueue[tcb[taskId].prio].tailIndex<8))", 1, 2, 0); /* m: 463 -> 477,0 */
	reached3[463] = 1;
	trans[3][463]	= settr(0,0,0,0,0,"readyQueue[tcb[taskId].prio].tasks[readyQueue[tcb[taskId].prio].tailIndex] = taskId",0,0,0);
	trans[3][464]	= settr(0,0,0,0,0,"readyQueue[tcb[taskId].prio].tailIndex = (readyQueue[tcb[taskId].prio].tailIndex+1)",0,0,0);
	trans[3][468]	= settr(3746,2,470,1,0,".(goto)", 1, 2, 0); /* m: 470 -> 0,477 */
	reached3[470] = 1;
	trans[3][465]	= settr(3743,2,466,2,0,"else", 1, 2, 0);
	trans[3][466]	= settr(3744,2,477,223,223,"assert(0)", 1, 2, 0); /* m: 470 -> 0,477 */
	reached3[470] = 1;
	trans[3][470]	= settr(3748,2,477,224,224,"needResched = 1", 1, 2, 0);
	trans[3][474]	= settr(3752,2,477,1,0,".(goto)", 1, 2, 0);
	trans[3][471]	= settr(3749,2,472,2,0,"else", 1, 2, 0);
	trans[3][472]	= settr(3750,2,477,225,225,"idx = (idx+1)", 1, 2, 0);
	trans[3][475]	= settr(3753,2,493,226,226,"((idx>=sortLink.count))", 1, 2, 0); /* m: 480 -> 493,0 */
	reached3[480] = 1;
	trans[3][476]	= settr(3754,2,480,1,0,"goto :b139", 1, 2, 0); /* m: 480 -> 0,493 */
	reached3[480] = 1;
	trans[3][479]	= settr(3757,2,480,1,0,"break", 1, 2, 0);
	trans[3][480]	= settr(3758,2,493,227,227,"interrupted_task = EP", 1, 2, 0);
	T = trans[3][493] = settr(3771,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(3771,2,481,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(3771,2,491,0,0,"IF", 1, 2, 0);
	trans[3][481]	= settr(3759,2,490,228,228,"((((interrupted_task>=1)&&(interrupted_task<=4))&&(tcb[interrupted_task].state!=2)))", 1, 2, 0); /* m: 482 -> 490,0 */
	reached3[482] = 1;
	trans[3][482]	= settr(0,0,0,0,0,"tcb[interrupted_task].state = 1",0,0,0);
	T = trans[ 3][490] = settr(3768,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(3768,0,488,0,0,"sub-sequence", 1, 2, 0);
	T = trans[3][488] = settr(3766,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(3766,2,483,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(3766,2,486,0,0,"IF", 1, 2, 0);
	trans[3][483]	= settr(3761,2,516,229,229,"((readyQueue[tcb[interrupted_task].prio].tailIndex<8))", 1, 2, 0); /* m: 484 -> 516,0 */
	reached3[484] = 1;
	trans[3][484]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tasks[readyQueue[tcb[interrupted_task].prio].tailIndex] = interrupted_task",0,0,0);
	trans[3][485]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tailIndex = (readyQueue[tcb[interrupted_task].prio].tailIndex+1)",0,0,0);
	trans[3][489]	= settr(3767,2,516,1,0,".(goto)", 1, 2, 0);
	trans[3][486]	= settr(3764,2,487,2,0,"else", 1, 2, 0);
	trans[3][487]	= settr(3765,2,516,230,0,"assert(0)", 1, 2, 0);
	trans[3][494]	= settr(3772,2,516,1,0,".(goto)", 1, 2, 0);
	trans[3][491]	= settr(3769,2,492,2,0,"else", 1, 2, 0);
	trans[3][492]	= settr(3770,2,516,1,0,"(1)", 1, 2, 0);
	T = trans[ 3][516] = settr(3794,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(3794,0,495,0,0,"sub-sequence", 1, 2, 0);
	trans[3][495]	= settr(3773,2,511,231,231,"prio = 0", 1, 2, 0); /* m: 496 -> 0,511 */
	reached3[496] = 1;
	trans[3][496]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[3][497]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[3][498]	= settr(0,0,0,0,0,"prio = 0",0,0,0);
	trans[3][499]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[3][500]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[3][512]	= settr(3790,2,511,1,0,".(goto)", 1, 2, 0);
	T = trans[3][511] = settr(3789,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(3789,2,501,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(3789,2,509,0,0,"DO", 1, 2, 0);
	trans[3][501]	= settr(3779,2,507,232,0,"(((prio<4)&&!(found)))", 1, 2, 0);
	T = trans[3][507] = settr(3785,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(3785,2,502,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(3785,2,505,0,0,"IF", 1, 2, 0);
	trans[3][502]	= settr(3780,2,511,233,233,"((readyQueue[prio].tailIndex>0))", 1, 2, 0); /* m: 503 -> 511,0 */
	reached3[503] = 1;
	trans[3][503]	= settr(0,0,0,0,0,"top_task = readyQueue[prio].tasks[0]",0,0,0);
	trans[3][504]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[3][508]	= settr(3786,2,511,1,0,".(goto)", 1, 2, 0);
	trans[3][505]	= settr(3783,2,506,2,0,"else", 1, 2, 0);
	trans[3][506]	= settr(3784,2,511,234,234,"prio = (prio+1)", 1, 2, 0);
	trans[3][509]	= settr(3787,2,534,235,235,"(((prio>=4)||found))", 1, 2, 0); /* m: 514 -> 534,0 */
	reached3[514] = 1;
	trans[3][510]	= settr(3788,2,514,1,0,"goto :b142", 1, 2, 0); /* m: 514 -> 0,534 */
	reached3[514] = 1;
	trans[3][513]	= settr(3791,2,514,1,0,"break", 1, 2, 0);
	trans[3][514]	= settr(3792,2,534,236,236,"newTask = top_task", 1, 2, 0); /* m: 515 -> 0,534 */
	reached3[515] = 1;
	trans[3][515]	= settr(0,0,0,0,0,"topPrio = prio",0,0,0);
	T = trans[ 3][534] = settr(3812,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(3812,0,517,0,0,"sub-sequence", 1, 2, 0);
	trans[3][517]	= settr(3795,2,524,237,237,"deq_idx = 0", 1, 2, 0); /* m: 518 -> 0,524 */
	reached3[518] = 1;
	trans[3][518]	= settr(0,0,0,0,0,"deq_idx = 0",0,0,0);
	trans[3][525]	= settr(3803,2,524,1,0,".(goto)", 1, 2, 0);
	T = trans[3][524] = settr(3802,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(3802,2,519,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(3802,2,522,0,0,"DO", 1, 2, 0);
	trans[3][519]	= settr(3797,2,524,238,238,"((deq_idx<(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0); /* m: 520 -> 524,0 */
	reached3[520] = 1;
	trans[3][520]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[deq_idx] = readyQueue[topPrio].tasks[(deq_idx+1)]",0,0,0);
	trans[3][521]	= settr(0,0,0,0,0,"deq_idx = (deq_idx+1)",0,0,0);
	trans[3][522]	= settr(3800,2,532,239,239,"((deq_idx>=(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0);
	trans[3][523]	= settr(3801,2,532,1,0,"goto :b143", 1, 2, 0);
	trans[3][526]	= settr(3804,2,532,1,0,"break", 1, 2, 0);
	T = trans[3][532] = settr(3810,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(3810,2,527,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(3810,2,530,0,0,"IF", 1, 2, 0);
	trans[3][527]	= settr(3805,2,538,240,240,"((readyQueue[topPrio].tailIndex>0))", 1, 2, 0); /* m: 528 -> 538,0 */
	reached3[528] = 1;
	trans[3][528]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)] = 255",0,0,0);
	trans[3][529]	= settr(0,0,0,0,0,"readyQueue[topPrio].tailIndex = (readyQueue[topPrio].tailIndex-1)",0,0,0);
	trans[3][533]	= settr(3811,2,535,1,0,".(goto)", 1, 2, 0); /* m: 535 -> 0,538 */
	reached3[535] = 1;
	trans[3][530]	= settr(3808,2,531,2,0,"else", 1, 2, 0);
	trans[3][531]	= settr(3809,2,538,241,241,"(1)", 1, 2, 0); /* m: 535 -> 538,0 */
	reached3[535] = 1;
	trans[3][535]	= settr(3813,2,538,242,242,"tcb[newTask].state = 4", 1, 2, 0); /* m: 536 -> 0,538 */
	reached3[536] = 1;
	trans[3][536]	= settr(0,0,0,0,0,"EP = newTask",0,0,0);
	T = trans[ 3][538] = settr(3816,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(3816,0,537,0,0,"sub-sequence", 1, 2, 0);
	trans[3][537]	= settr(3815,2,541,243,243,"int_ctrl_reg = int_save", 1, 2, 0);
	T = trans[ 3][541] = settr(3819,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(3819,0,540,0,0,"sub-sequence", 1, 2, 0);
	trans[3][540]	= settr(3818,2,674,244,244,"int_ctrl_reg = int_save", 1, 2, 0);
	trans[3][545]	= settr(3823,2,674,1,0,".(goto)", 1, 2, 0);
	trans[3][542]	= settr(3820,2,543,2,0,"else", 1, 2, 0);
	trans[3][543]	= settr(3821,2,674,1,0,"(1)", 1, 2, 0);
	T = trans[ 3][674] = settr(3952,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(3952,0,547,0,0,"sub-sequence", 1, 2, 0);
	trans[3][547]	= settr(3825,2,555,245,245,"interrupted_task = 0", 1, 2, 0); /* m: 548 -> 0,555 */
	reached3[548] = 1;
	trans[3][548]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[3][549]	= settr(0,0,0,0,0,"taskId = 0",0,0,0);
	trans[3][550]	= settr(0,0,0,0,0,"needResched = 0",0,0,0);
	trans[3][551]	= settr(0,0,0,0,0,"interrupted_task = 0",0,0,0);
	trans[3][552]	= settr(0,0,0,0,0,"needResched = 0",0,0,0);
	T = trans[ 3][555] = settr(3833,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(3833,0,553,0,0,"sub-sequence", 1, 2, 0);
	trans[3][553]	= settr(3831,2,612,246,246,"int_save = int_ctrl_reg", 1, 2, 0); /* m: 554 -> 0,612 */
	reached3[554] = 1;
	trans[3][554]	= settr(0,0,0,0,0,"int_ctrl_reg = 1",0,0,0);
	trans[3][556]	= settr(0,0,0,0,0,"tickCount = (tickCount+1)",0,0,0);
	trans[3][557]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[3][613]	= settr(3891,2,612,1,0,".(goto)", 1, 2, 0);
	T = trans[3][612] = settr(3890,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(3890,2,558,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(3890,2,610,0,0,"DO", 1, 2, 0);
	trans[3][558]	= settr(3836,2,608,247,247,"((idx<sortLink.count))", 1, 2, 0); /* m: 559 -> 608,0 */
	reached3[559] = 1;
	trans[3][559]	= settr(0,0,0,0,0,"taskId = sortLink.tasks[idx]",0,0,0);
	T = trans[3][608] = settr(3886,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(3886,2,560,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(3886,2,606,0,0,"IF", 1, 2, 0);
	trans[3][560]	= settr(3838,2,596,248,248,"(((tcb[taskId].state==2)&&(tickCount>=tcb[taskId].wakeupTime)))", 1, 2, 0); /* m: 561 -> 596,0 */
	reached3[561] = 1;
	trans[3][561]	= settr(0,0,0,0,0,"tcb[taskId].state = 1",0,0,0);
	trans[3][562]	= settr(0,0,0,0,0,"tcb[taskId].delayTicks = 0",0,0,0);
	T = trans[ 3][596] = settr(3874,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(3874,0,563,0,0,"sub-sequence", 1, 2, 0);
	trans[3][563]	= settr(3841,2,577,249,249,"removePos = 0", 1, 2, 0); /* m: 564 -> 0,577 */
	reached3[564] = 1;
	trans[3][564]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[3][565]	= settr(0,0,0,0,0,"shiftIdx = 0",0,0,0);
	trans[3][566]	= settr(0,0,0,0,0,"removePos = 0",0,0,0);
	trans[3][567]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[3][578]	= settr(3856,2,577,1,0,".(goto)", 1, 2, 0);
	T = trans[3][577] = settr(3855,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(3855,2,568,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(3855,2,575,0,0,"DO", 1, 2, 0);
	trans[3][568]	= settr(3846,2,573,250,0,"(((removePos<sortLink.count)&&!(found)))", 1, 2, 0);
	T = trans[3][573] = settr(3851,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(3851,2,569,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(3851,2,571,0,0,"IF", 1, 2, 0);
	trans[3][569]	= settr(3847,2,577,251,251,"((sortLink.tasks[removePos]==taskId))", 1, 2, 0); /* m: 570 -> 577,0 */
	reached3[570] = 1;
	trans[3][570]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[3][574]	= settr(3852,2,577,1,0,".(goto)", 1, 2, 0);
	trans[3][571]	= settr(3849,2,572,2,0,"else", 1, 2, 0);
	trans[3][572]	= settr(3850,2,577,252,252,"removePos = (removePos+1)", 1, 2, 0);
	trans[3][575]	= settr(3853,2,594,2,0,"else", 1, 2, 0);
	trans[3][576]	= settr(3854,2,594,1,0,"goto :b145", 1, 2, 0);
	trans[3][579]	= settr(3857,2,594,1,0,"break", 1, 2, 0);
	T = trans[3][594] = settr(3872,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(3872,2,580,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(3872,2,592,0,0,"IF", 1, 2, 0);
	trans[3][580]	= settr(3858,2,587,253,253,"((found==1))", 1, 2, 0); /* m: 581 -> 587,0 */
	reached3[581] = 1;
	trans[3][581]	= settr(0,0,0,0,0,"shiftIdx = removePos",0,0,0);
	trans[3][588]	= settr(3866,2,587,1,0,".(goto)", 1, 2, 0);
	T = trans[3][587] = settr(3865,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(3865,2,582,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(3865,2,585,0,0,"DO", 1, 2, 0);
	trans[3][582]	= settr(3860,2,587,254,254,"((shiftIdx<(sortLink.count-1)))", 1, 2, 0); /* m: 583 -> 587,0 */
	reached3[583] = 1;
	trans[3][583]	= settr(0,0,0,0,0,"sortLink.tasks[shiftIdx] = sortLink.tasks[(shiftIdx+1)]",0,0,0);
	trans[3][584]	= settr(0,0,0,0,0,"shiftIdx = (shiftIdx+1)",0,0,0);
	trans[3][585]	= settr(3863,2,604,255,255,"((shiftIdx>=(sortLink.count-1)))", 1, 2, 0); /* m: 590 -> 604,0 */
	reached3[590] = 1;
	trans[3][586]	= settr(3864,2,590,1,0,"goto :b146", 1, 2, 0); /* m: 590 -> 0,604 */
	reached3[590] = 1;
	trans[3][589]	= settr(3867,2,590,1,0,"break", 1, 2, 0);
	trans[3][590]	= settr(3868,2,604,256,256,"sortLink.tasks[(sortLink.count-1)] = 255", 1, 2, 0); /* m: 591 -> 0,604 */
	reached3[591] = 1;
	trans[3][591]	= settr(0,0,0,0,0,"sortLink.count = (sortLink.count-1)",0,0,0);
	trans[3][595]	= settr(3873,2,604,1,0,".(goto)", 1, 2, 0);
	trans[3][592]	= settr(3870,2,593,2,0,"else", 1, 2, 0);
	trans[3][593]	= settr(3871,2,604,1,0,"(1)", 1, 2, 0);
	T = trans[ 3][604] = settr(3882,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(3882,0,602,0,0,"sub-sequence", 1, 2, 0);
	T = trans[3][602] = settr(3880,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(3880,2,597,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(3880,2,600,0,0,"IF", 1, 2, 0);
	trans[3][597]	= settr(3875,2,612,257,257,"((readyQueue[tcb[taskId].prio].tailIndex<8))", 1, 2, 0); /* m: 598 -> 612,0 */
	reached3[598] = 1;
	trans[3][598]	= settr(0,0,0,0,0,"readyQueue[tcb[taskId].prio].tasks[readyQueue[tcb[taskId].prio].tailIndex] = taskId",0,0,0);
	trans[3][599]	= settr(0,0,0,0,0,"readyQueue[tcb[taskId].prio].tailIndex = (readyQueue[tcb[taskId].prio].tailIndex+1)",0,0,0);
	trans[3][603]	= settr(3881,2,605,1,0,".(goto)", 1, 2, 0); /* m: 605 -> 0,612 */
	reached3[605] = 1;
	trans[3][600]	= settr(3878,2,601,2,0,"else", 1, 2, 0);
	trans[3][601]	= settr(3879,2,612,258,258,"assert(0)", 1, 2, 0); /* m: 605 -> 0,612 */
	reached3[605] = 1;
	trans[3][605]	= settr(3883,2,612,259,259,"needResched = 1", 1, 2, 0);
	trans[3][609]	= settr(3887,2,612,1,0,".(goto)", 1, 2, 0);
	trans[3][606]	= settr(3884,2,607,2,0,"else", 1, 2, 0);
	trans[3][607]	= settr(3885,2,612,260,260,"idx = (idx+1)", 1, 2, 0);
	trans[3][610]	= settr(3888,2,628,261,261,"((idx>=sortLink.count))", 1, 2, 0); /* m: 615 -> 628,0 */
	reached3[615] = 1;
	trans[3][611]	= settr(3889,2,615,1,0,"goto :b144", 1, 2, 0); /* m: 615 -> 0,628 */
	reached3[615] = 1;
	trans[3][614]	= settr(3892,2,615,1,0,"break", 1, 2, 0);
	trans[3][615]	= settr(3893,2,628,262,262,"interrupted_task = EP", 1, 2, 0);
	T = trans[3][628] = settr(3906,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(3906,2,616,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(3906,2,626,0,0,"IF", 1, 2, 0);
	trans[3][616]	= settr(3894,2,625,263,263,"((((interrupted_task>=1)&&(interrupted_task<=4))&&(tcb[interrupted_task].state!=2)))", 1, 2, 0); /* m: 617 -> 625,0 */
	reached3[617] = 1;
	trans[3][617]	= settr(0,0,0,0,0,"tcb[interrupted_task].state = 1",0,0,0);
	T = trans[ 3][625] = settr(3903,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(3903,0,623,0,0,"sub-sequence", 1, 2, 0);
	T = trans[3][623] = settr(3901,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(3901,2,618,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(3901,2,621,0,0,"IF", 1, 2, 0);
	trans[3][618]	= settr(3896,2,651,264,264,"((readyQueue[tcb[interrupted_task].prio].tailIndex<8))", 1, 2, 0); /* m: 619 -> 651,0 */
	reached3[619] = 1;
	trans[3][619]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tasks[readyQueue[tcb[interrupted_task].prio].tailIndex] = interrupted_task",0,0,0);
	trans[3][620]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tailIndex = (readyQueue[tcb[interrupted_task].prio].tailIndex+1)",0,0,0);
	trans[3][624]	= settr(3902,2,651,1,0,".(goto)", 1, 2, 0);
	trans[3][621]	= settr(3899,2,622,2,0,"else", 1, 2, 0);
	trans[3][622]	= settr(3900,2,651,265,0,"assert(0)", 1, 2, 0);
	trans[3][629]	= settr(3907,2,651,1,0,".(goto)", 1, 2, 0);
	trans[3][626]	= settr(3904,2,627,2,0,"else", 1, 2, 0);
	trans[3][627]	= settr(3905,2,651,1,0,"(1)", 1, 2, 0);
	T = trans[ 3][651] = settr(3929,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(3929,0,630,0,0,"sub-sequence", 1, 2, 0);
	trans[3][630]	= settr(3908,2,646,266,266,"prio = 0", 1, 2, 0); /* m: 631 -> 0,646 */
	reached3[631] = 1;
	trans[3][631]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[3][632]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[3][633]	= settr(0,0,0,0,0,"prio = 0",0,0,0);
	trans[3][634]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[3][635]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[3][647]	= settr(3925,2,646,1,0,".(goto)", 1, 2, 0);
	T = trans[3][646] = settr(3924,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(3924,2,636,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(3924,2,644,0,0,"DO", 1, 2, 0);
	trans[3][636]	= settr(3914,2,642,267,0,"(((prio<4)&&!(found)))", 1, 2, 0);
	T = trans[3][642] = settr(3920,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(3920,2,637,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(3920,2,640,0,0,"IF", 1, 2, 0);
	trans[3][637]	= settr(3915,2,646,268,268,"((readyQueue[prio].tailIndex>0))", 1, 2, 0); /* m: 638 -> 646,0 */
	reached3[638] = 1;
	trans[3][638]	= settr(0,0,0,0,0,"top_task = readyQueue[prio].tasks[0]",0,0,0);
	trans[3][639]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[3][643]	= settr(3921,2,646,1,0,".(goto)", 1, 2, 0);
	trans[3][640]	= settr(3918,2,641,2,0,"else", 1, 2, 0);
	trans[3][641]	= settr(3919,2,646,269,269,"prio = (prio+1)", 1, 2, 0);
	trans[3][644]	= settr(3922,2,669,270,270,"(((prio>=4)||found))", 1, 2, 0); /* m: 649 -> 669,0 */
	reached3[649] = 1;
	trans[3][645]	= settr(3923,2,649,1,0,"goto :b147", 1, 2, 0); /* m: 649 -> 0,669 */
	reached3[649] = 1;
	trans[3][648]	= settr(3926,2,649,1,0,"break", 1, 2, 0);
	trans[3][649]	= settr(3927,2,669,271,271,"newTask = top_task", 1, 2, 0); /* m: 650 -> 0,669 */
	reached3[650] = 1;
	trans[3][650]	= settr(0,0,0,0,0,"topPrio = prio",0,0,0);
	T = trans[ 3][669] = settr(3947,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(3947,0,652,0,0,"sub-sequence", 1, 2, 0);
	trans[3][652]	= settr(3930,2,659,272,272,"deq_idx = 0", 1, 2, 0); /* m: 653 -> 0,659 */
	reached3[653] = 1;
	trans[3][653]	= settr(0,0,0,0,0,"deq_idx = 0",0,0,0);
	trans[3][660]	= settr(3938,2,659,1,0,".(goto)", 1, 2, 0);
	T = trans[3][659] = settr(3937,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(3937,2,654,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(3937,2,657,0,0,"DO", 1, 2, 0);
	trans[3][654]	= settr(3932,2,659,273,273,"((deq_idx<(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0); /* m: 655 -> 659,0 */
	reached3[655] = 1;
	trans[3][655]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[deq_idx] = readyQueue[topPrio].tasks[(deq_idx+1)]",0,0,0);
	trans[3][656]	= settr(0,0,0,0,0,"deq_idx = (deq_idx+1)",0,0,0);
	trans[3][657]	= settr(3935,2,667,274,274,"((deq_idx>=(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0);
	trans[3][658]	= settr(3936,2,667,1,0,"goto :b148", 1, 2, 0);
	trans[3][661]	= settr(3939,2,667,1,0,"break", 1, 2, 0);
	T = trans[3][667] = settr(3945,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(3945,2,662,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(3945,2,665,0,0,"IF", 1, 2, 0);
	trans[3][662]	= settr(3940,2,673,275,275,"((readyQueue[topPrio].tailIndex>0))", 1, 2, 0); /* m: 663 -> 673,0 */
	reached3[663] = 1;
	trans[3][663]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)] = 255",0,0,0);
	trans[3][664]	= settr(0,0,0,0,0,"readyQueue[topPrio].tailIndex = (readyQueue[topPrio].tailIndex-1)",0,0,0);
	trans[3][668]	= settr(3946,2,670,1,0,".(goto)", 1, 2, 0); /* m: 670 -> 0,673 */
	reached3[670] = 1;
	trans[3][665]	= settr(3943,2,666,2,0,"else", 1, 2, 0);
	trans[3][666]	= settr(3944,2,673,276,276,"(1)", 1, 2, 0); /* m: 670 -> 673,0 */
	reached3[670] = 1;
	trans[3][670]	= settr(3948,2,673,277,277,"tcb[newTask].state = 4", 1, 2, 0); /* m: 671 -> 0,673 */
	reached3[671] = 1;
	trans[3][671]	= settr(0,0,0,0,0,"EP = newTask",0,0,0);
	T = trans[ 3][673] = settr(3951,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(3951,0,672,0,0,"sub-sequence", 1, 2, 0);
	trans[3][672]	= settr(3950,0,1090,278,278,"int_ctrl_reg = int_save", 1, 2, 0);
	T = trans[ 3][957] = settr(4235,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(4235,2,676,0,0,"ATOMIC", 1, 2, 0);
	trans[3][676]	= settr(3954,2,828,279,0,"((EP==4))", 1, 2, 0);
	T = trans[ 3][828] = settr(4106,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(4106,0,677,0,0,"sub-sequence", 1, 2, 0);
	trans[3][677]	= settr(3955,2,826,280,280,"currentTask = 0", 1, 2, 0);
	T = trans[3][826] = settr(4104,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(4104,2,678,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(4104,2,824,0,0,"IF", 1, 2, 0);
	trans[3][678]	= settr(3956,2,681,281,0,"((((5>0)&&(EP>=1))&&(EP<=4)))", 1, 2, 0);
	T = trans[ 3][681] = settr(3959,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(3959,0,679,0,0,"sub-sequence", 1, 2, 0);
	trans[3][679]	= settr(3957,2,693,282,282,"int_save = int_ctrl_reg", 1, 2, 0); /* m: 680 -> 0,693 */
	reached3[680] = 1;
	trans[3][680]	= settr(0,0,0,0,0,"int_ctrl_reg = 1",0,0,0);
	trans[3][682]	= settr(0,0,0,0,0,"currentTask = EP",0,0,0);
	trans[3][683]	= settr(0,0,0,0,0,"tcb[currentTask].state = 2",0,0,0);
	trans[3][684]	= settr(0,0,0,0,0,"tcb[currentTask].wakeupTime = (tickCount+5)",0,0,0);
	trans[3][685]	= settr(0,0,0,0,0,"tcb[currentTask].delayTicks = 5",0,0,0);
	T = trans[ 3][693] = settr(3971,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(3971,0,691,0,0,"sub-sequence", 1, 2, 0);
	T = trans[3][691] = settr(3969,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(3969,2,686,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(3969,2,689,0,0,"IF", 1, 2, 0);
	trans[3][686]	= settr(3964,2,821,283,283,"((sortLink.count<8))", 1, 2, 0); /* m: 687 -> 821,0 */
	reached3[687] = 1;
	trans[3][687]	= settr(0,0,0,0,0,"sortLink.tasks[sortLink.count] = currentTask",0,0,0);
	trans[3][688]	= settr(0,0,0,0,0,"sortLink.count = (sortLink.count+1)",0,0,0);
	trans[3][692]	= settr(3970,2,821,1,0,".(goto)", 1, 2, 0);
	trans[3][689]	= settr(3967,2,690,2,0,"else", 1, 2, 0);
	trans[3][690]	= settr(3968,2,821,284,0,"assert(0)", 1, 2, 0);
	T = trans[ 3][821] = settr(4099,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(4099,0,694,0,0,"sub-sequence", 1, 2, 0);
	trans[3][694]	= settr(3972,2,702,285,285,"interrupted_task = 0", 1, 2, 0); /* m: 695 -> 0,702 */
	reached3[695] = 1;
	trans[3][695]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[3][696]	= settr(0,0,0,0,0,"taskId = 0",0,0,0);
	trans[3][697]	= settr(0,0,0,0,0,"needResched = 0",0,0,0);
	trans[3][698]	= settr(0,0,0,0,0,"interrupted_task = 0",0,0,0);
	trans[3][699]	= settr(0,0,0,0,0,"needResched = 0",0,0,0);
	T = trans[ 3][702] = settr(3980,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(3980,0,700,0,0,"sub-sequence", 1, 2, 0);
	trans[3][700]	= settr(3978,2,759,286,286,"int_save = int_ctrl_reg", 1, 2, 0); /* m: 701 -> 0,759 */
	reached3[701] = 1;
	trans[3][701]	= settr(0,0,0,0,0,"int_ctrl_reg = 1",0,0,0);
	trans[3][703]	= settr(0,0,0,0,0,"tickCount = (tickCount+1)",0,0,0);
	trans[3][704]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[3][760]	= settr(4038,2,759,1,0,".(goto)", 1, 2, 0);
	T = trans[3][759] = settr(4037,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(4037,2,705,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(4037,2,757,0,0,"DO", 1, 2, 0);
	trans[3][705]	= settr(3983,2,755,287,287,"((idx<sortLink.count))", 1, 2, 0); /* m: 706 -> 755,0 */
	reached3[706] = 1;
	trans[3][706]	= settr(0,0,0,0,0,"taskId = sortLink.tasks[idx]",0,0,0);
	T = trans[3][755] = settr(4033,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(4033,2,707,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(4033,2,753,0,0,"IF", 1, 2, 0);
	trans[3][707]	= settr(3985,2,743,288,288,"(((tcb[taskId].state==2)&&(tickCount>=tcb[taskId].wakeupTime)))", 1, 2, 0); /* m: 708 -> 743,0 */
	reached3[708] = 1;
	trans[3][708]	= settr(0,0,0,0,0,"tcb[taskId].state = 1",0,0,0);
	trans[3][709]	= settr(0,0,0,0,0,"tcb[taskId].delayTicks = 0",0,0,0);
	T = trans[ 3][743] = settr(4021,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(4021,0,710,0,0,"sub-sequence", 1, 2, 0);
	trans[3][710]	= settr(3988,2,724,289,289,"removePos = 0", 1, 2, 0); /* m: 711 -> 0,724 */
	reached3[711] = 1;
	trans[3][711]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[3][712]	= settr(0,0,0,0,0,"shiftIdx = 0",0,0,0);
	trans[3][713]	= settr(0,0,0,0,0,"removePos = 0",0,0,0);
	trans[3][714]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[3][725]	= settr(4003,2,724,1,0,".(goto)", 1, 2, 0);
	T = trans[3][724] = settr(4002,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(4002,2,715,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(4002,2,722,0,0,"DO", 1, 2, 0);
	trans[3][715]	= settr(3993,2,720,290,0,"(((removePos<sortLink.count)&&!(found)))", 1, 2, 0);
	T = trans[3][720] = settr(3998,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(3998,2,716,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(3998,2,718,0,0,"IF", 1, 2, 0);
	trans[3][716]	= settr(3994,2,724,291,291,"((sortLink.tasks[removePos]==taskId))", 1, 2, 0); /* m: 717 -> 724,0 */
	reached3[717] = 1;
	trans[3][717]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[3][721]	= settr(3999,2,724,1,0,".(goto)", 1, 2, 0);
	trans[3][718]	= settr(3996,2,719,2,0,"else", 1, 2, 0);
	trans[3][719]	= settr(3997,2,724,292,292,"removePos = (removePos+1)", 1, 2, 0);
	trans[3][722]	= settr(4000,2,741,2,0,"else", 1, 2, 0);
	trans[3][723]	= settr(4001,2,741,1,0,"goto :b150", 1, 2, 0);
	trans[3][726]	= settr(4004,2,741,1,0,"break", 1, 2, 0);
	T = trans[3][741] = settr(4019,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(4019,2,727,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(4019,2,739,0,0,"IF", 1, 2, 0);
	trans[3][727]	= settr(4005,2,734,293,293,"((found==1))", 1, 2, 0); /* m: 728 -> 734,0 */
	reached3[728] = 1;
	trans[3][728]	= settr(0,0,0,0,0,"shiftIdx = removePos",0,0,0);
	trans[3][735]	= settr(4013,2,734,1,0,".(goto)", 1, 2, 0);
	T = trans[3][734] = settr(4012,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(4012,2,729,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(4012,2,732,0,0,"DO", 1, 2, 0);
	trans[3][729]	= settr(4007,2,734,294,294,"((shiftIdx<(sortLink.count-1)))", 1, 2, 0); /* m: 730 -> 734,0 */
	reached3[730] = 1;
	trans[3][730]	= settr(0,0,0,0,0,"sortLink.tasks[shiftIdx] = sortLink.tasks[(shiftIdx+1)]",0,0,0);
	trans[3][731]	= settr(0,0,0,0,0,"shiftIdx = (shiftIdx+1)",0,0,0);
	trans[3][732]	= settr(4010,2,751,295,295,"((shiftIdx>=(sortLink.count-1)))", 1, 2, 0); /* m: 737 -> 751,0 */
	reached3[737] = 1;
	trans[3][733]	= settr(4011,2,737,1,0,"goto :b151", 1, 2, 0); /* m: 737 -> 0,751 */
	reached3[737] = 1;
	trans[3][736]	= settr(4014,2,737,1,0,"break", 1, 2, 0);
	trans[3][737]	= settr(4015,2,751,296,296,"sortLink.tasks[(sortLink.count-1)] = 255", 1, 2, 0); /* m: 738 -> 0,751 */
	reached3[738] = 1;
	trans[3][738]	= settr(0,0,0,0,0,"sortLink.count = (sortLink.count-1)",0,0,0);
	trans[3][742]	= settr(4020,2,751,1,0,".(goto)", 1, 2, 0);
	trans[3][739]	= settr(4017,2,740,2,0,"else", 1, 2, 0);
	trans[3][740]	= settr(4018,2,751,1,0,"(1)", 1, 2, 0);
	T = trans[ 3][751] = settr(4029,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(4029,0,749,0,0,"sub-sequence", 1, 2, 0);
	T = trans[3][749] = settr(4027,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(4027,2,744,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(4027,2,747,0,0,"IF", 1, 2, 0);
	trans[3][744]	= settr(4022,2,759,297,297,"((readyQueue[tcb[taskId].prio].tailIndex<8))", 1, 2, 0); /* m: 745 -> 759,0 */
	reached3[745] = 1;
	trans[3][745]	= settr(0,0,0,0,0,"readyQueue[tcb[taskId].prio].tasks[readyQueue[tcb[taskId].prio].tailIndex] = taskId",0,0,0);
	trans[3][746]	= settr(0,0,0,0,0,"readyQueue[tcb[taskId].prio].tailIndex = (readyQueue[tcb[taskId].prio].tailIndex+1)",0,0,0);
	trans[3][750]	= settr(4028,2,752,1,0,".(goto)", 1, 2, 0); /* m: 752 -> 0,759 */
	reached3[752] = 1;
	trans[3][747]	= settr(4025,2,748,2,0,"else", 1, 2, 0);
	trans[3][748]	= settr(4026,2,759,298,298,"assert(0)", 1, 2, 0); /* m: 752 -> 0,759 */
	reached3[752] = 1;
	trans[3][752]	= settr(4030,2,759,299,299,"needResched = 1", 1, 2, 0);
	trans[3][756]	= settr(4034,2,759,1,0,".(goto)", 1, 2, 0);
	trans[3][753]	= settr(4031,2,754,2,0,"else", 1, 2, 0);
	trans[3][754]	= settr(4032,2,759,300,300,"idx = (idx+1)", 1, 2, 0);
	trans[3][757]	= settr(4035,2,775,301,301,"((idx>=sortLink.count))", 1, 2, 0); /* m: 762 -> 775,0 */
	reached3[762] = 1;
	trans[3][758]	= settr(4036,2,762,1,0,"goto :b149", 1, 2, 0); /* m: 762 -> 0,775 */
	reached3[762] = 1;
	trans[3][761]	= settr(4039,2,762,1,0,"break", 1, 2, 0);
	trans[3][762]	= settr(4040,2,775,302,302,"interrupted_task = EP", 1, 2, 0);
	T = trans[3][775] = settr(4053,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(4053,2,763,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(4053,2,773,0,0,"IF", 1, 2, 0);
	trans[3][763]	= settr(4041,2,772,303,303,"((((interrupted_task>=1)&&(interrupted_task<=4))&&(tcb[interrupted_task].state!=2)))", 1, 2, 0); /* m: 764 -> 772,0 */
	reached3[764] = 1;
	trans[3][764]	= settr(0,0,0,0,0,"tcb[interrupted_task].state = 1",0,0,0);
	T = trans[ 3][772] = settr(4050,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(4050,0,770,0,0,"sub-sequence", 1, 2, 0);
	T = trans[3][770] = settr(4048,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(4048,2,765,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(4048,2,768,0,0,"IF", 1, 2, 0);
	trans[3][765]	= settr(4043,2,798,304,304,"((readyQueue[tcb[interrupted_task].prio].tailIndex<8))", 1, 2, 0); /* m: 766 -> 798,0 */
	reached3[766] = 1;
	trans[3][766]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tasks[readyQueue[tcb[interrupted_task].prio].tailIndex] = interrupted_task",0,0,0);
	trans[3][767]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tailIndex = (readyQueue[tcb[interrupted_task].prio].tailIndex+1)",0,0,0);
	trans[3][771]	= settr(4049,2,798,1,0,".(goto)", 1, 2, 0);
	trans[3][768]	= settr(4046,2,769,2,0,"else", 1, 2, 0);
	trans[3][769]	= settr(4047,2,798,305,0,"assert(0)", 1, 2, 0);
	trans[3][776]	= settr(4054,2,798,1,0,".(goto)", 1, 2, 0);
	trans[3][773]	= settr(4051,2,774,2,0,"else", 1, 2, 0);
	trans[3][774]	= settr(4052,2,798,1,0,"(1)", 1, 2, 0);
	T = trans[ 3][798] = settr(4076,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(4076,0,777,0,0,"sub-sequence", 1, 2, 0);
	trans[3][777]	= settr(4055,2,793,306,306,"prio = 0", 1, 2, 0); /* m: 778 -> 0,793 */
	reached3[778] = 1;
	trans[3][778]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[3][779]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[3][780]	= settr(0,0,0,0,0,"prio = 0",0,0,0);
	trans[3][781]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[3][782]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[3][794]	= settr(4072,2,793,1,0,".(goto)", 1, 2, 0);
	T = trans[3][793] = settr(4071,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(4071,2,783,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(4071,2,791,0,0,"DO", 1, 2, 0);
	trans[3][783]	= settr(4061,2,789,307,0,"(((prio<4)&&!(found)))", 1, 2, 0);
	T = trans[3][789] = settr(4067,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(4067,2,784,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(4067,2,787,0,0,"IF", 1, 2, 0);
	trans[3][784]	= settr(4062,2,793,308,308,"((readyQueue[prio].tailIndex>0))", 1, 2, 0); /* m: 785 -> 793,0 */
	reached3[785] = 1;
	trans[3][785]	= settr(0,0,0,0,0,"top_task = readyQueue[prio].tasks[0]",0,0,0);
	trans[3][786]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[3][790]	= settr(4068,2,793,1,0,".(goto)", 1, 2, 0);
	trans[3][787]	= settr(4065,2,788,2,0,"else", 1, 2, 0);
	trans[3][788]	= settr(4066,2,793,309,309,"prio = (prio+1)", 1, 2, 0);
	trans[3][791]	= settr(4069,2,816,310,310,"(((prio>=4)||found))", 1, 2, 0); /* m: 796 -> 816,0 */
	reached3[796] = 1;
	trans[3][792]	= settr(4070,2,796,1,0,"goto :b152", 1, 2, 0); /* m: 796 -> 0,816 */
	reached3[796] = 1;
	trans[3][795]	= settr(4073,2,796,1,0,"break", 1, 2, 0);
	trans[3][796]	= settr(4074,2,816,311,311,"newTask = top_task", 1, 2, 0); /* m: 797 -> 0,816 */
	reached3[797] = 1;
	trans[3][797]	= settr(0,0,0,0,0,"topPrio = prio",0,0,0);
	T = trans[ 3][816] = settr(4094,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(4094,0,799,0,0,"sub-sequence", 1, 2, 0);
	trans[3][799]	= settr(4077,2,806,312,312,"deq_idx = 0", 1, 2, 0); /* m: 800 -> 0,806 */
	reached3[800] = 1;
	trans[3][800]	= settr(0,0,0,0,0,"deq_idx = 0",0,0,0);
	trans[3][807]	= settr(4085,2,806,1,0,".(goto)", 1, 2, 0);
	T = trans[3][806] = settr(4084,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(4084,2,801,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(4084,2,804,0,0,"DO", 1, 2, 0);
	trans[3][801]	= settr(4079,2,806,313,313,"((deq_idx<(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0); /* m: 802 -> 806,0 */
	reached3[802] = 1;
	trans[3][802]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[deq_idx] = readyQueue[topPrio].tasks[(deq_idx+1)]",0,0,0);
	trans[3][803]	= settr(0,0,0,0,0,"deq_idx = (deq_idx+1)",0,0,0);
	trans[3][804]	= settr(4082,2,814,314,314,"((deq_idx>=(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0);
	trans[3][805]	= settr(4083,2,814,1,0,"goto :b153", 1, 2, 0);
	trans[3][808]	= settr(4086,2,814,1,0,"break", 1, 2, 0);
	T = trans[3][814] = settr(4092,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(4092,2,809,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(4092,2,812,0,0,"IF", 1, 2, 0);
	trans[3][809]	= settr(4087,2,820,315,315,"((readyQueue[topPrio].tailIndex>0))", 1, 2, 0); /* m: 810 -> 820,0 */
	reached3[810] = 1;
	trans[3][810]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)] = 255",0,0,0);
	trans[3][811]	= settr(0,0,0,0,0,"readyQueue[topPrio].tailIndex = (readyQueue[topPrio].tailIndex-1)",0,0,0);
	trans[3][815]	= settr(4093,2,817,1,0,".(goto)", 1, 2, 0); /* m: 817 -> 0,820 */
	reached3[817] = 1;
	trans[3][812]	= settr(4090,2,813,2,0,"else", 1, 2, 0);
	trans[3][813]	= settr(4091,2,820,316,316,"(1)", 1, 2, 0); /* m: 817 -> 820,0 */
	reached3[817] = 1;
	trans[3][817]	= settr(4095,2,820,317,317,"tcb[newTask].state = 4", 1, 2, 0); /* m: 818 -> 0,820 */
	reached3[818] = 1;
	trans[3][818]	= settr(0,0,0,0,0,"EP = newTask",0,0,0);
	T = trans[ 3][820] = settr(4098,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(4098,0,819,0,0,"sub-sequence", 1, 2, 0);
	trans[3][819]	= settr(4097,2,823,318,318,"int_ctrl_reg = int_save", 1, 2, 0);
	T = trans[ 3][823] = settr(4101,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(4101,0,822,0,0,"sub-sequence", 1, 2, 0);
	trans[3][822]	= settr(4100,2,956,319,319,"int_ctrl_reg = int_save", 1, 2, 0);
	trans[3][827]	= settr(4105,2,956,1,0,".(goto)", 1, 2, 0);
	trans[3][824]	= settr(4102,2,825,2,0,"else", 1, 2, 0);
	trans[3][825]	= settr(4103,2,956,1,0,"(1)", 1, 2, 0);
	T = trans[ 3][956] = settr(4234,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(4234,0,829,0,0,"sub-sequence", 1, 2, 0);
	trans[3][829]	= settr(4107,2,837,320,320,"interrupted_task = 0", 1, 2, 0); /* m: 830 -> 0,837 */
	reached3[830] = 1;
	trans[3][830]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[3][831]	= settr(0,0,0,0,0,"taskId = 0",0,0,0);
	trans[3][832]	= settr(0,0,0,0,0,"needResched = 0",0,0,0);
	trans[3][833]	= settr(0,0,0,0,0,"interrupted_task = 0",0,0,0);
	trans[3][834]	= settr(0,0,0,0,0,"needResched = 0",0,0,0);
	T = trans[ 3][837] = settr(4115,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(4115,0,835,0,0,"sub-sequence", 1, 2, 0);
	trans[3][835]	= settr(4113,2,894,321,321,"int_save = int_ctrl_reg", 1, 2, 0); /* m: 836 -> 0,894 */
	reached3[836] = 1;
	trans[3][836]	= settr(0,0,0,0,0,"int_ctrl_reg = 1",0,0,0);
	trans[3][838]	= settr(0,0,0,0,0,"tickCount = (tickCount+1)",0,0,0);
	trans[3][839]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[3][895]	= settr(4173,2,894,1,0,".(goto)", 1, 2, 0);
	T = trans[3][894] = settr(4172,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(4172,2,840,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(4172,2,892,0,0,"DO", 1, 2, 0);
	trans[3][840]	= settr(4118,2,890,322,322,"((idx<sortLink.count))", 1, 2, 0); /* m: 841 -> 890,0 */
	reached3[841] = 1;
	trans[3][841]	= settr(0,0,0,0,0,"taskId = sortLink.tasks[idx]",0,0,0);
	T = trans[3][890] = settr(4168,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(4168,2,842,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(4168,2,888,0,0,"IF", 1, 2, 0);
	trans[3][842]	= settr(4120,2,878,323,323,"(((tcb[taskId].state==2)&&(tickCount>=tcb[taskId].wakeupTime)))", 1, 2, 0); /* m: 843 -> 878,0 */
	reached3[843] = 1;
	trans[3][843]	= settr(0,0,0,0,0,"tcb[taskId].state = 1",0,0,0);
	trans[3][844]	= settr(0,0,0,0,0,"tcb[taskId].delayTicks = 0",0,0,0);
	T = trans[ 3][878] = settr(4156,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(4156,0,845,0,0,"sub-sequence", 1, 2, 0);
	trans[3][845]	= settr(4123,2,859,324,324,"removePos = 0", 1, 2, 0); /* m: 846 -> 0,859 */
	reached3[846] = 1;
	trans[3][846]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[3][847]	= settr(0,0,0,0,0,"shiftIdx = 0",0,0,0);
	trans[3][848]	= settr(0,0,0,0,0,"removePos = 0",0,0,0);
	trans[3][849]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[3][860]	= settr(4138,2,859,1,0,".(goto)", 1, 2, 0);
	T = trans[3][859] = settr(4137,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(4137,2,850,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(4137,2,857,0,0,"DO", 1, 2, 0);
	trans[3][850]	= settr(4128,2,855,325,0,"(((removePos<sortLink.count)&&!(found)))", 1, 2, 0);
	T = trans[3][855] = settr(4133,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(4133,2,851,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(4133,2,853,0,0,"IF", 1, 2, 0);
	trans[3][851]	= settr(4129,2,859,326,326,"((sortLink.tasks[removePos]==taskId))", 1, 2, 0); /* m: 852 -> 859,0 */
	reached3[852] = 1;
	trans[3][852]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[3][856]	= settr(4134,2,859,1,0,".(goto)", 1, 2, 0);
	trans[3][853]	= settr(4131,2,854,2,0,"else", 1, 2, 0);
	trans[3][854]	= settr(4132,2,859,327,327,"removePos = (removePos+1)", 1, 2, 0);
	trans[3][857]	= settr(4135,2,876,2,0,"else", 1, 2, 0);
	trans[3][858]	= settr(4136,2,876,1,0,"goto :b155", 1, 2, 0);
	trans[3][861]	= settr(4139,2,876,1,0,"break", 1, 2, 0);
	T = trans[3][876] = settr(4154,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(4154,2,862,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(4154,2,874,0,0,"IF", 1, 2, 0);
	trans[3][862]	= settr(4140,2,869,328,328,"((found==1))", 1, 2, 0); /* m: 863 -> 869,0 */
	reached3[863] = 1;
	trans[3][863]	= settr(0,0,0,0,0,"shiftIdx = removePos",0,0,0);
	trans[3][870]	= settr(4148,2,869,1,0,".(goto)", 1, 2, 0);
	T = trans[3][869] = settr(4147,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(4147,2,864,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(4147,2,867,0,0,"DO", 1, 2, 0);
	trans[3][864]	= settr(4142,2,869,329,329,"((shiftIdx<(sortLink.count-1)))", 1, 2, 0); /* m: 865 -> 869,0 */
	reached3[865] = 1;
	trans[3][865]	= settr(0,0,0,0,0,"sortLink.tasks[shiftIdx] = sortLink.tasks[(shiftIdx+1)]",0,0,0);
	trans[3][866]	= settr(0,0,0,0,0,"shiftIdx = (shiftIdx+1)",0,0,0);
	trans[3][867]	= settr(4145,2,886,330,330,"((shiftIdx>=(sortLink.count-1)))", 1, 2, 0); /* m: 872 -> 886,0 */
	reached3[872] = 1;
	trans[3][868]	= settr(4146,2,872,1,0,"goto :b156", 1, 2, 0); /* m: 872 -> 0,886 */
	reached3[872] = 1;
	trans[3][871]	= settr(4149,2,872,1,0,"break", 1, 2, 0);
	trans[3][872]	= settr(4150,2,886,331,331,"sortLink.tasks[(sortLink.count-1)] = 255", 1, 2, 0); /* m: 873 -> 0,886 */
	reached3[873] = 1;
	trans[3][873]	= settr(0,0,0,0,0,"sortLink.count = (sortLink.count-1)",0,0,0);
	trans[3][877]	= settr(4155,2,886,1,0,".(goto)", 1, 2, 0);
	trans[3][874]	= settr(4152,2,875,2,0,"else", 1, 2, 0);
	trans[3][875]	= settr(4153,2,886,1,0,"(1)", 1, 2, 0);
	T = trans[ 3][886] = settr(4164,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(4164,0,884,0,0,"sub-sequence", 1, 2, 0);
	T = trans[3][884] = settr(4162,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(4162,2,879,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(4162,2,882,0,0,"IF", 1, 2, 0);
	trans[3][879]	= settr(4157,2,894,332,332,"((readyQueue[tcb[taskId].prio].tailIndex<8))", 1, 2, 0); /* m: 880 -> 894,0 */
	reached3[880] = 1;
	trans[3][880]	= settr(0,0,0,0,0,"readyQueue[tcb[taskId].prio].tasks[readyQueue[tcb[taskId].prio].tailIndex] = taskId",0,0,0);
	trans[3][881]	= settr(0,0,0,0,0,"readyQueue[tcb[taskId].prio].tailIndex = (readyQueue[tcb[taskId].prio].tailIndex+1)",0,0,0);
	trans[3][885]	= settr(4163,2,887,1,0,".(goto)", 1, 2, 0); /* m: 887 -> 0,894 */
	reached3[887] = 1;
	trans[3][882]	= settr(4160,2,883,2,0,"else", 1, 2, 0);
	trans[3][883]	= settr(4161,2,894,333,333,"assert(0)", 1, 2, 0); /* m: 887 -> 0,894 */
	reached3[887] = 1;
	trans[3][887]	= settr(4165,2,894,334,334,"needResched = 1", 1, 2, 0);
	trans[3][891]	= settr(4169,2,894,1,0,".(goto)", 1, 2, 0);
	trans[3][888]	= settr(4166,2,889,2,0,"else", 1, 2, 0);
	trans[3][889]	= settr(4167,2,894,335,335,"idx = (idx+1)", 1, 2, 0);
	trans[3][892]	= settr(4170,2,910,336,336,"((idx>=sortLink.count))", 1, 2, 0); /* m: 897 -> 910,0 */
	reached3[897] = 1;
	trans[3][893]	= settr(4171,2,897,1,0,"goto :b154", 1, 2, 0); /* m: 897 -> 0,910 */
	reached3[897] = 1;
	trans[3][896]	= settr(4174,2,897,1,0,"break", 1, 2, 0);
	trans[3][897]	= settr(4175,2,910,337,337,"interrupted_task = EP", 1, 2, 0);
	T = trans[3][910] = settr(4188,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(4188,2,898,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(4188,2,908,0,0,"IF", 1, 2, 0);
	trans[3][898]	= settr(4176,2,907,338,338,"((((interrupted_task>=1)&&(interrupted_task<=4))&&(tcb[interrupted_task].state!=2)))", 1, 2, 0); /* m: 899 -> 907,0 */
	reached3[899] = 1;
	trans[3][899]	= settr(0,0,0,0,0,"tcb[interrupted_task].state = 1",0,0,0);
	T = trans[ 3][907] = settr(4185,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(4185,0,905,0,0,"sub-sequence", 1, 2, 0);
	T = trans[3][905] = settr(4183,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(4183,2,900,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(4183,2,903,0,0,"IF", 1, 2, 0);
	trans[3][900]	= settr(4178,2,933,339,339,"((readyQueue[tcb[interrupted_task].prio].tailIndex<8))", 1, 2, 0); /* m: 901 -> 933,0 */
	reached3[901] = 1;
	trans[3][901]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tasks[readyQueue[tcb[interrupted_task].prio].tailIndex] = interrupted_task",0,0,0);
	trans[3][902]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tailIndex = (readyQueue[tcb[interrupted_task].prio].tailIndex+1)",0,0,0);
	trans[3][906]	= settr(4184,2,933,1,0,".(goto)", 1, 2, 0);
	trans[3][903]	= settr(4181,2,904,2,0,"else", 1, 2, 0);
	trans[3][904]	= settr(4182,2,933,340,0,"assert(0)", 1, 2, 0);
	trans[3][911]	= settr(4189,2,933,1,0,".(goto)", 1, 2, 0);
	trans[3][908]	= settr(4186,2,909,2,0,"else", 1, 2, 0);
	trans[3][909]	= settr(4187,2,933,1,0,"(1)", 1, 2, 0);
	T = trans[ 3][933] = settr(4211,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(4211,0,912,0,0,"sub-sequence", 1, 2, 0);
	trans[3][912]	= settr(4190,2,928,341,341,"prio = 0", 1, 2, 0); /* m: 913 -> 0,928 */
	reached3[913] = 1;
	trans[3][913]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[3][914]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[3][915]	= settr(0,0,0,0,0,"prio = 0",0,0,0);
	trans[3][916]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[3][917]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[3][929]	= settr(4207,2,928,1,0,".(goto)", 1, 2, 0);
	T = trans[3][928] = settr(4206,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(4206,2,918,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(4206,2,926,0,0,"DO", 1, 2, 0);
	trans[3][918]	= settr(4196,2,924,342,0,"(((prio<4)&&!(found)))", 1, 2, 0);
	T = trans[3][924] = settr(4202,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(4202,2,919,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(4202,2,922,0,0,"IF", 1, 2, 0);
	trans[3][919]	= settr(4197,2,928,343,343,"((readyQueue[prio].tailIndex>0))", 1, 2, 0); /* m: 920 -> 928,0 */
	reached3[920] = 1;
	trans[3][920]	= settr(0,0,0,0,0,"top_task = readyQueue[prio].tasks[0]",0,0,0);
	trans[3][921]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[3][925]	= settr(4203,2,928,1,0,".(goto)", 1, 2, 0);
	trans[3][922]	= settr(4200,2,923,2,0,"else", 1, 2, 0);
	trans[3][923]	= settr(4201,2,928,344,344,"prio = (prio+1)", 1, 2, 0);
	trans[3][926]	= settr(4204,2,951,345,345,"(((prio>=4)||found))", 1, 2, 0); /* m: 931 -> 951,0 */
	reached3[931] = 1;
	trans[3][927]	= settr(4205,2,931,1,0,"goto :b157", 1, 2, 0); /* m: 931 -> 0,951 */
	reached3[931] = 1;
	trans[3][930]	= settr(4208,2,931,1,0,"break", 1, 2, 0);
	trans[3][931]	= settr(4209,2,951,346,346,"newTask = top_task", 1, 2, 0); /* m: 932 -> 0,951 */
	reached3[932] = 1;
	trans[3][932]	= settr(0,0,0,0,0,"topPrio = prio",0,0,0);
	T = trans[ 3][951] = settr(4229,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(4229,0,934,0,0,"sub-sequence", 1, 2, 0);
	trans[3][934]	= settr(4212,2,941,347,347,"deq_idx = 0", 1, 2, 0); /* m: 935 -> 0,941 */
	reached3[935] = 1;
	trans[3][935]	= settr(0,0,0,0,0,"deq_idx = 0",0,0,0);
	trans[3][942]	= settr(4220,2,941,1,0,".(goto)", 1, 2, 0);
	T = trans[3][941] = settr(4219,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(4219,2,936,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(4219,2,939,0,0,"DO", 1, 2, 0);
	trans[3][936]	= settr(4214,2,941,348,348,"((deq_idx<(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0); /* m: 937 -> 941,0 */
	reached3[937] = 1;
	trans[3][937]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[deq_idx] = readyQueue[topPrio].tasks[(deq_idx+1)]",0,0,0);
	trans[3][938]	= settr(0,0,0,0,0,"deq_idx = (deq_idx+1)",0,0,0);
	trans[3][939]	= settr(4217,2,949,349,349,"((deq_idx>=(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0);
	trans[3][940]	= settr(4218,2,949,1,0,"goto :b158", 1, 2, 0);
	trans[3][943]	= settr(4221,2,949,1,0,"break", 1, 2, 0);
	T = trans[3][949] = settr(4227,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(4227,2,944,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(4227,2,947,0,0,"IF", 1, 2, 0);
	trans[3][944]	= settr(4222,2,955,350,350,"((readyQueue[topPrio].tailIndex>0))", 1, 2, 0); /* m: 945 -> 955,0 */
	reached3[945] = 1;
	trans[3][945]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)] = 255",0,0,0);
	trans[3][946]	= settr(0,0,0,0,0,"readyQueue[topPrio].tailIndex = (readyQueue[topPrio].tailIndex-1)",0,0,0);
	trans[3][950]	= settr(4228,2,952,1,0,".(goto)", 1, 2, 0); /* m: 952 -> 0,955 */
	reached3[952] = 1;
	trans[3][947]	= settr(4225,2,948,2,0,"else", 1, 2, 0);
	trans[3][948]	= settr(4226,2,955,351,351,"(1)", 1, 2, 0); /* m: 952 -> 955,0 */
	reached3[952] = 1;
	trans[3][952]	= settr(4230,2,955,352,352,"tcb[newTask].state = 4", 1, 2, 0); /* m: 953 -> 0,955 */
	reached3[953] = 1;
	trans[3][953]	= settr(0,0,0,0,0,"EP = newTask",0,0,0);
	T = trans[ 3][955] = settr(4233,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(4233,0,954,0,0,"sub-sequence", 1, 2, 0);
	trans[3][954]	= settr(4232,0,1090,353,353,"int_ctrl_reg = int_save", 1, 2, 0);
	trans[3][958]	= settr(4236,0,1089,354,0,"((counter<100))", 0, 2, 0);
	T = trans[ 3][1089] = settr(4367,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(4367,2,959,0,0,"ATOMIC", 1, 2, 0);
	trans[3][959]	= settr(4237,2,960,355,0,"((EP==4))", 1, 2, 0);
	trans[3][960]	= settr(4238,2,1088,1,0,"(1)", 1, 2, 0);
	T = trans[ 3][1088] = settr(4366,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(4366,0,961,0,0,"sub-sequence", 1, 2, 0);
	trans[3][961]	= settr(4239,2,969,356,356,"interrupted_task = 0", 1, 2, 0); /* m: 962 -> 0,969 */
	reached3[962] = 1;
	trans[3][962]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[3][963]	= settr(0,0,0,0,0,"taskId = 0",0,0,0);
	trans[3][964]	= settr(0,0,0,0,0,"needResched = 0",0,0,0);
	trans[3][965]	= settr(0,0,0,0,0,"interrupted_task = 0",0,0,0);
	trans[3][966]	= settr(0,0,0,0,0,"needResched = 0",0,0,0);
	T = trans[ 3][969] = settr(4247,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(4247,0,967,0,0,"sub-sequence", 1, 2, 0);
	trans[3][967]	= settr(4245,2,1026,357,357,"int_save = int_ctrl_reg", 1, 2, 0); /* m: 968 -> 0,1026 */
	reached3[968] = 1;
	trans[3][968]	= settr(0,0,0,0,0,"int_ctrl_reg = 1",0,0,0);
	trans[3][970]	= settr(0,0,0,0,0,"tickCount = (tickCount+1)",0,0,0);
	trans[3][971]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[3][1027]	= settr(4305,2,1026,1,0,".(goto)", 1, 2, 0);
	T = trans[3][1026] = settr(4304,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(4304,2,972,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(4304,2,1024,0,0,"DO", 1, 2, 0);
	trans[3][972]	= settr(4250,2,1022,358,358,"((idx<sortLink.count))", 1, 2, 0); /* m: 973 -> 1022,0 */
	reached3[973] = 1;
	trans[3][973]	= settr(0,0,0,0,0,"taskId = sortLink.tasks[idx]",0,0,0);
	T = trans[3][1022] = settr(4300,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(4300,2,974,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(4300,2,1020,0,0,"IF", 1, 2, 0);
	trans[3][974]	= settr(4252,2,1010,359,359,"(((tcb[taskId].state==2)&&(tickCount>=tcb[taskId].wakeupTime)))", 1, 2, 0); /* m: 975 -> 1010,0 */
	reached3[975] = 1;
	trans[3][975]	= settr(0,0,0,0,0,"tcb[taskId].state = 1",0,0,0);
	trans[3][976]	= settr(0,0,0,0,0,"tcb[taskId].delayTicks = 0",0,0,0);
	T = trans[ 3][1010] = settr(4288,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(4288,0,977,0,0,"sub-sequence", 1, 2, 0);
	trans[3][977]	= settr(4255,2,991,360,360,"removePos = 0", 1, 2, 0); /* m: 978 -> 0,991 */
	reached3[978] = 1;
	trans[3][978]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[3][979]	= settr(0,0,0,0,0,"shiftIdx = 0",0,0,0);
	trans[3][980]	= settr(0,0,0,0,0,"removePos = 0",0,0,0);
	trans[3][981]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[3][992]	= settr(4270,2,991,1,0,".(goto)", 1, 2, 0);
	T = trans[3][991] = settr(4269,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(4269,2,982,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(4269,2,989,0,0,"DO", 1, 2, 0);
	trans[3][982]	= settr(4260,2,987,361,0,"(((removePos<sortLink.count)&&!(found)))", 1, 2, 0);
	T = trans[3][987] = settr(4265,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(4265,2,983,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(4265,2,985,0,0,"IF", 1, 2, 0);
	trans[3][983]	= settr(4261,2,991,362,362,"((sortLink.tasks[removePos]==taskId))", 1, 2, 0); /* m: 984 -> 991,0 */
	reached3[984] = 1;
	trans[3][984]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[3][988]	= settr(4266,2,991,1,0,".(goto)", 1, 2, 0);
	trans[3][985]	= settr(4263,2,986,2,0,"else", 1, 2, 0);
	trans[3][986]	= settr(4264,2,991,363,363,"removePos = (removePos+1)", 1, 2, 0);
	trans[3][989]	= settr(4267,2,1008,2,0,"else", 1, 2, 0);
	trans[3][990]	= settr(4268,2,1008,1,0,"goto :b160", 1, 2, 0);
	trans[3][993]	= settr(4271,2,1008,1,0,"break", 1, 2, 0);
	T = trans[3][1008] = settr(4286,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(4286,2,994,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(4286,2,1006,0,0,"IF", 1, 2, 0);
	trans[3][994]	= settr(4272,2,1001,364,364,"((found==1))", 1, 2, 0); /* m: 995 -> 1001,0 */
	reached3[995] = 1;
	trans[3][995]	= settr(0,0,0,0,0,"shiftIdx = removePos",0,0,0);
	trans[3][1002]	= settr(4280,2,1001,1,0,".(goto)", 1, 2, 0);
	T = trans[3][1001] = settr(4279,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(4279,2,996,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(4279,2,999,0,0,"DO", 1, 2, 0);
	trans[3][996]	= settr(4274,2,1001,365,365,"((shiftIdx<(sortLink.count-1)))", 1, 2, 0); /* m: 997 -> 1001,0 */
	reached3[997] = 1;
	trans[3][997]	= settr(0,0,0,0,0,"sortLink.tasks[shiftIdx] = sortLink.tasks[(shiftIdx+1)]",0,0,0);
	trans[3][998]	= settr(0,0,0,0,0,"shiftIdx = (shiftIdx+1)",0,0,0);
	trans[3][999]	= settr(4277,2,1018,366,366,"((shiftIdx>=(sortLink.count-1)))", 1, 2, 0); /* m: 1004 -> 1018,0 */
	reached3[1004] = 1;
	trans[3][1000]	= settr(4278,2,1004,1,0,"goto :b161", 1, 2, 0); /* m: 1004 -> 0,1018 */
	reached3[1004] = 1;
	trans[3][1003]	= settr(4281,2,1004,1,0,"break", 1, 2, 0);
	trans[3][1004]	= settr(4282,2,1018,367,367,"sortLink.tasks[(sortLink.count-1)] = 255", 1, 2, 0); /* m: 1005 -> 0,1018 */
	reached3[1005] = 1;
	trans[3][1005]	= settr(0,0,0,0,0,"sortLink.count = (sortLink.count-1)",0,0,0);
	trans[3][1009]	= settr(4287,2,1018,1,0,".(goto)", 1, 2, 0);
	trans[3][1006]	= settr(4284,2,1007,2,0,"else", 1, 2, 0);
	trans[3][1007]	= settr(4285,2,1018,1,0,"(1)", 1, 2, 0);
	T = trans[ 3][1018] = settr(4296,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(4296,0,1016,0,0,"sub-sequence", 1, 2, 0);
	T = trans[3][1016] = settr(4294,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(4294,2,1011,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(4294,2,1014,0,0,"IF", 1, 2, 0);
	trans[3][1011]	= settr(4289,2,1026,368,368,"((readyQueue[tcb[taskId].prio].tailIndex<8))", 1, 2, 0); /* m: 1012 -> 1026,0 */
	reached3[1012] = 1;
	trans[3][1012]	= settr(0,0,0,0,0,"readyQueue[tcb[taskId].prio].tasks[readyQueue[tcb[taskId].prio].tailIndex] = taskId",0,0,0);
	trans[3][1013]	= settr(0,0,0,0,0,"readyQueue[tcb[taskId].prio].tailIndex = (readyQueue[tcb[taskId].prio].tailIndex+1)",0,0,0);
	trans[3][1017]	= settr(4295,2,1019,1,0,".(goto)", 1, 2, 0); /* m: 1019 -> 0,1026 */
	reached3[1019] = 1;
	trans[3][1014]	= settr(4292,2,1015,2,0,"else", 1, 2, 0);
	trans[3][1015]	= settr(4293,2,1026,369,369,"assert(0)", 1, 2, 0); /* m: 1019 -> 0,1026 */
	reached3[1019] = 1;
	trans[3][1019]	= settr(4297,2,1026,370,370,"needResched = 1", 1, 2, 0);
	trans[3][1023]	= settr(4301,2,1026,1,0,".(goto)", 1, 2, 0);
	trans[3][1020]	= settr(4298,2,1021,2,0,"else", 1, 2, 0);
	trans[3][1021]	= settr(4299,2,1026,371,371,"idx = (idx+1)", 1, 2, 0);
	trans[3][1024]	= settr(4302,2,1042,372,372,"((idx>=sortLink.count))", 1, 2, 0); /* m: 1029 -> 1042,0 */
	reached3[1029] = 1;
	trans[3][1025]	= settr(4303,2,1029,1,0,"goto :b159", 1, 2, 0); /* m: 1029 -> 0,1042 */
	reached3[1029] = 1;
	trans[3][1028]	= settr(4306,2,1029,1,0,"break", 1, 2, 0);
	trans[3][1029]	= settr(4307,2,1042,373,373,"interrupted_task = EP", 1, 2, 0);
	T = trans[3][1042] = settr(4320,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(4320,2,1030,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(4320,2,1040,0,0,"IF", 1, 2, 0);
	trans[3][1030]	= settr(4308,2,1039,374,374,"((((interrupted_task>=1)&&(interrupted_task<=4))&&(tcb[interrupted_task].state!=2)))", 1, 2, 0); /* m: 1031 -> 1039,0 */
	reached3[1031] = 1;
	trans[3][1031]	= settr(0,0,0,0,0,"tcb[interrupted_task].state = 1",0,0,0);
	T = trans[ 3][1039] = settr(4317,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(4317,0,1037,0,0,"sub-sequence", 1, 2, 0);
	T = trans[3][1037] = settr(4315,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(4315,2,1032,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(4315,2,1035,0,0,"IF", 1, 2, 0);
	trans[3][1032]	= settr(4310,2,1065,375,375,"((readyQueue[tcb[interrupted_task].prio].tailIndex<8))", 1, 2, 0); /* m: 1033 -> 1065,0 */
	reached3[1033] = 1;
	trans[3][1033]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tasks[readyQueue[tcb[interrupted_task].prio].tailIndex] = interrupted_task",0,0,0);
	trans[3][1034]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tailIndex = (readyQueue[tcb[interrupted_task].prio].tailIndex+1)",0,0,0);
	trans[3][1038]	= settr(4316,2,1065,1,0,".(goto)", 1, 2, 0);
	trans[3][1035]	= settr(4313,2,1036,2,0,"else", 1, 2, 0);
	trans[3][1036]	= settr(4314,2,1065,376,0,"assert(0)", 1, 2, 0);
	trans[3][1043]	= settr(4321,2,1065,1,0,".(goto)", 1, 2, 0);
	trans[3][1040]	= settr(4318,2,1041,2,0,"else", 1, 2, 0);
	trans[3][1041]	= settr(4319,2,1065,1,0,"(1)", 1, 2, 0);
	T = trans[ 3][1065] = settr(4343,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(4343,0,1044,0,0,"sub-sequence", 1, 2, 0);
	trans[3][1044]	= settr(4322,2,1060,377,377,"prio = 0", 1, 2, 0); /* m: 1045 -> 0,1060 */
	reached3[1045] = 1;
	trans[3][1045]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[3][1046]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[3][1047]	= settr(0,0,0,0,0,"prio = 0",0,0,0);
	trans[3][1048]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[3][1049]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[3][1061]	= settr(4339,2,1060,1,0,".(goto)", 1, 2, 0);
	T = trans[3][1060] = settr(4338,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(4338,2,1050,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(4338,2,1058,0,0,"DO", 1, 2, 0);
	trans[3][1050]	= settr(4328,2,1056,378,0,"(((prio<4)&&!(found)))", 1, 2, 0);
	T = trans[3][1056] = settr(4334,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(4334,2,1051,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(4334,2,1054,0,0,"IF", 1, 2, 0);
	trans[3][1051]	= settr(4329,2,1060,379,379,"((readyQueue[prio].tailIndex>0))", 1, 2, 0); /* m: 1052 -> 1060,0 */
	reached3[1052] = 1;
	trans[3][1052]	= settr(0,0,0,0,0,"top_task = readyQueue[prio].tasks[0]",0,0,0);
	trans[3][1053]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[3][1057]	= settr(4335,2,1060,1,0,".(goto)", 1, 2, 0);
	trans[3][1054]	= settr(4332,2,1055,2,0,"else", 1, 2, 0);
	trans[3][1055]	= settr(4333,2,1060,380,380,"prio = (prio+1)", 1, 2, 0);
	trans[3][1058]	= settr(4336,2,1083,381,381,"(((prio>=4)||found))", 1, 2, 0); /* m: 1063 -> 1083,0 */
	reached3[1063] = 1;
	trans[3][1059]	= settr(4337,2,1063,1,0,"goto :b162", 1, 2, 0); /* m: 1063 -> 0,1083 */
	reached3[1063] = 1;
	trans[3][1062]	= settr(4340,2,1063,1,0,"break", 1, 2, 0);
	trans[3][1063]	= settr(4341,2,1083,382,382,"newTask = top_task", 1, 2, 0); /* m: 1064 -> 0,1083 */
	reached3[1064] = 1;
	trans[3][1064]	= settr(0,0,0,0,0,"topPrio = prio",0,0,0);
	T = trans[ 3][1083] = settr(4361,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(4361,0,1066,0,0,"sub-sequence", 1, 2, 0);
	trans[3][1066]	= settr(4344,2,1073,383,383,"deq_idx = 0", 1, 2, 0); /* m: 1067 -> 0,1073 */
	reached3[1067] = 1;
	trans[3][1067]	= settr(0,0,0,0,0,"deq_idx = 0",0,0,0);
	trans[3][1074]	= settr(4352,2,1073,1,0,".(goto)", 1, 2, 0);
	T = trans[3][1073] = settr(4351,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(4351,2,1068,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(4351,2,1071,0,0,"DO", 1, 2, 0);
	trans[3][1068]	= settr(4346,2,1073,384,384,"((deq_idx<(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0); /* m: 1069 -> 1073,0 */
	reached3[1069] = 1;
	trans[3][1069]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[deq_idx] = readyQueue[topPrio].tasks[(deq_idx+1)]",0,0,0);
	trans[3][1070]	= settr(0,0,0,0,0,"deq_idx = (deq_idx+1)",0,0,0);
	trans[3][1071]	= settr(4349,2,1081,385,385,"((deq_idx>=(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0);
	trans[3][1072]	= settr(4350,2,1081,1,0,"goto :b163", 1, 2, 0);
	trans[3][1075]	= settr(4353,2,1081,1,0,"break", 1, 2, 0);
	T = trans[3][1081] = settr(4359,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(4359,2,1076,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(4359,2,1079,0,0,"IF", 1, 2, 0);
	trans[3][1076]	= settr(4354,2,1087,386,386,"((readyQueue[topPrio].tailIndex>0))", 1, 2, 0); /* m: 1077 -> 1087,0 */
	reached3[1077] = 1;
	trans[3][1077]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)] = 255",0,0,0);
	trans[3][1078]	= settr(0,0,0,0,0,"readyQueue[topPrio].tailIndex = (readyQueue[topPrio].tailIndex-1)",0,0,0);
	trans[3][1082]	= settr(4360,2,1084,1,0,".(goto)", 1, 2, 0); /* m: 1084 -> 0,1087 */
	reached3[1084] = 1;
	trans[3][1079]	= settr(4357,2,1080,2,0,"else", 1, 2, 0);
	trans[3][1080]	= settr(4358,2,1087,387,387,"(1)", 1, 2, 0); /* m: 1084 -> 1087,0 */
	reached3[1084] = 1;
	trans[3][1084]	= settr(4362,2,1087,388,388,"tcb[newTask].state = 4", 1, 2, 0); /* m: 1085 -> 0,1087 */
	reached3[1085] = 1;
	trans[3][1085]	= settr(0,0,0,0,0,"EP = newTask",0,0,0);
	T = trans[ 3][1087] = settr(4365,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(4365,0,1086,0,0,"sub-sequence", 1, 2, 0);
	trans[3][1086]	= settr(4364,0,1090,389,389,"int_ctrl_reg = int_save", 1, 2, 0);
	trans[3][1092]	= settr(4370,0,1093,1,0,"break", 0, 2, 0);
	trans[3][1093]	= settr(4371,0,0,390,390,"-end-", 0, 3500, 0);

	/* proctype 2: Process3 */

	trans[2] = (Trans **) emalloc(1094*sizeof(Trans *));

	trans[2][1091]	= settr(3276,0,1090,1,0,".(goto)", 0, 2, 0);
	T = trans[2][1090] = settr(3275,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(3275,0,131,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(3275,0,262,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(3275,0,393,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(3275,0,675,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(3275,0,957,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(3275,0,958,0,0,"DO", 0, 2, 0);
	T = trans[ 2][131] = settr(2316,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(2316,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[2][1]	= settr(2186,2,130,391,391,"((EP==3))", 1, 2, 0); /* m: 2 -> 130,0 */
	reached2[2] = 1;
	trans[2][2]	= settr(0,0,0,0,0,"printf('Process 3 running, counter=%d\\n',counter)",0,0,0);
	T = trans[ 2][130] = settr(2315,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(2315,0,3,0,0,"sub-sequence", 1, 2, 0);
	trans[2][3]	= settr(2188,2,11,392,392,"interrupted_task = 0", 1, 2, 0); /* m: 4 -> 0,11 */
	reached2[4] = 1;
	trans[2][4]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[2][5]	= settr(0,0,0,0,0,"taskId = 0",0,0,0);
	trans[2][6]	= settr(0,0,0,0,0,"needResched = 0",0,0,0);
	trans[2][7]	= settr(0,0,0,0,0,"interrupted_task = 0",0,0,0);
	trans[2][8]	= settr(0,0,0,0,0,"needResched = 0",0,0,0);
	T = trans[ 2][11] = settr(2196,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(2196,0,9,0,0,"sub-sequence", 1, 2, 0);
	trans[2][9]	= settr(2194,2,68,393,393,"int_save = int_ctrl_reg", 1, 2, 0); /* m: 10 -> 0,68 */
	reached2[10] = 1;
	trans[2][10]	= settr(0,0,0,0,0,"int_ctrl_reg = 1",0,0,0);
	trans[2][12]	= settr(0,0,0,0,0,"tickCount = (tickCount+1)",0,0,0);
	trans[2][13]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[2][69]	= settr(2254,2,68,1,0,".(goto)", 1, 2, 0);
	T = trans[2][68] = settr(2253,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(2253,2,14,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(2253,2,66,0,0,"DO", 1, 2, 0);
	trans[2][14]	= settr(2199,2,64,394,394,"((idx<sortLink.count))", 1, 2, 0); /* m: 15 -> 64,0 */
	reached2[15] = 1;
	trans[2][15]	= settr(0,0,0,0,0,"taskId = sortLink.tasks[idx]",0,0,0);
	T = trans[2][64] = settr(2249,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(2249,2,16,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(2249,2,62,0,0,"IF", 1, 2, 0);
	trans[2][16]	= settr(2201,2,52,395,395,"(((tcb[taskId].state==2)&&(tickCount>=tcb[taskId].wakeupTime)))", 1, 2, 0); /* m: 17 -> 52,0 */
	reached2[17] = 1;
	trans[2][17]	= settr(0,0,0,0,0,"tcb[taskId].state = 1",0,0,0);
	trans[2][18]	= settr(0,0,0,0,0,"tcb[taskId].delayTicks = 0",0,0,0);
	T = trans[ 2][52] = settr(2237,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(2237,0,19,0,0,"sub-sequence", 1, 2, 0);
	trans[2][19]	= settr(2204,2,33,396,396,"removePos = 0", 1, 2, 0); /* m: 20 -> 0,33 */
	reached2[20] = 1;
	trans[2][20]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[2][21]	= settr(0,0,0,0,0,"shiftIdx = 0",0,0,0);
	trans[2][22]	= settr(0,0,0,0,0,"removePos = 0",0,0,0);
	trans[2][23]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[2][34]	= settr(2219,2,33,1,0,".(goto)", 1, 2, 0);
	T = trans[2][33] = settr(2218,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(2218,2,24,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(2218,2,31,0,0,"DO", 1, 2, 0);
	trans[2][24]	= settr(2209,2,29,397,0,"(((removePos<sortLink.count)&&!(found)))", 1, 2, 0);
	T = trans[2][29] = settr(2214,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(2214,2,25,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(2214,2,27,0,0,"IF", 1, 2, 0);
	trans[2][25]	= settr(2210,2,33,398,398,"((sortLink.tasks[removePos]==taskId))", 1, 2, 0); /* m: 26 -> 33,0 */
	reached2[26] = 1;
	trans[2][26]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[2][30]	= settr(2215,2,33,1,0,".(goto)", 1, 2, 0);
	trans[2][27]	= settr(2212,2,28,2,0,"else", 1, 2, 0);
	trans[2][28]	= settr(2213,2,33,399,399,"removePos = (removePos+1)", 1, 2, 0);
	trans[2][31]	= settr(2216,2,50,2,0,"else", 1, 2, 0);
	trans[2][32]	= settr(2217,2,50,1,0,"goto :b84", 1, 2, 0);
	trans[2][35]	= settr(2220,2,50,1,0,"break", 1, 2, 0);
	T = trans[2][50] = settr(2235,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(2235,2,36,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(2235,2,48,0,0,"IF", 1, 2, 0);
	trans[2][36]	= settr(2221,2,43,400,400,"((found==1))", 1, 2, 0); /* m: 37 -> 43,0 */
	reached2[37] = 1;
	trans[2][37]	= settr(0,0,0,0,0,"shiftIdx = removePos",0,0,0);
	trans[2][44]	= settr(2229,2,43,1,0,".(goto)", 1, 2, 0);
	T = trans[2][43] = settr(2228,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(2228,2,38,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(2228,2,41,0,0,"DO", 1, 2, 0);
	trans[2][38]	= settr(2223,2,43,401,401,"((shiftIdx<(sortLink.count-1)))", 1, 2, 0); /* m: 39 -> 43,0 */
	reached2[39] = 1;
	trans[2][39]	= settr(0,0,0,0,0,"sortLink.tasks[shiftIdx] = sortLink.tasks[(shiftIdx+1)]",0,0,0);
	trans[2][40]	= settr(0,0,0,0,0,"shiftIdx = (shiftIdx+1)",0,0,0);
	trans[2][41]	= settr(2226,2,60,402,402,"((shiftIdx>=(sortLink.count-1)))", 1, 2, 0); /* m: 46 -> 60,0 */
	reached2[46] = 1;
	trans[2][42]	= settr(2227,2,46,1,0,"goto :b85", 1, 2, 0); /* m: 46 -> 0,60 */
	reached2[46] = 1;
	trans[2][45]	= settr(2230,2,46,1,0,"break", 1, 2, 0);
	trans[2][46]	= settr(2231,2,60,403,403,"sortLink.tasks[(sortLink.count-1)] = 255", 1, 2, 0); /* m: 47 -> 0,60 */
	reached2[47] = 1;
	trans[2][47]	= settr(0,0,0,0,0,"sortLink.count = (sortLink.count-1)",0,0,0);
	trans[2][51]	= settr(2236,2,60,1,0,".(goto)", 1, 2, 0);
	trans[2][48]	= settr(2233,2,49,2,0,"else", 1, 2, 0);
	trans[2][49]	= settr(2234,2,60,1,0,"(1)", 1, 2, 0);
	T = trans[ 2][60] = settr(2245,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(2245,0,58,0,0,"sub-sequence", 1, 2, 0);
	T = trans[2][58] = settr(2243,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(2243,2,53,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(2243,2,56,0,0,"IF", 1, 2, 0);
	trans[2][53]	= settr(2238,2,68,404,404,"((readyQueue[tcb[taskId].prio].tailIndex<8))", 1, 2, 0); /* m: 54 -> 68,0 */
	reached2[54] = 1;
	trans[2][54]	= settr(0,0,0,0,0,"readyQueue[tcb[taskId].prio].tasks[readyQueue[tcb[taskId].prio].tailIndex] = taskId",0,0,0);
	trans[2][55]	= settr(0,0,0,0,0,"readyQueue[tcb[taskId].prio].tailIndex = (readyQueue[tcb[taskId].prio].tailIndex+1)",0,0,0);
	trans[2][59]	= settr(2244,2,61,1,0,".(goto)", 1, 2, 0); /* m: 61 -> 0,68 */
	reached2[61] = 1;
	trans[2][56]	= settr(2241,2,57,2,0,"else", 1, 2, 0);
	trans[2][57]	= settr(2242,2,68,405,405,"assert(0)", 1, 2, 0); /* m: 61 -> 0,68 */
	reached2[61] = 1;
	trans[2][61]	= settr(2246,2,68,406,406,"needResched = 1", 1, 2, 0);
	trans[2][65]	= settr(2250,2,68,1,0,".(goto)", 1, 2, 0);
	trans[2][62]	= settr(2247,2,63,2,0,"else", 1, 2, 0);
	trans[2][63]	= settr(2248,2,68,407,407,"idx = (idx+1)", 1, 2, 0);
	trans[2][66]	= settr(2251,2,84,408,408,"((idx>=sortLink.count))", 1, 2, 0); /* m: 71 -> 84,0 */
	reached2[71] = 1;
	trans[2][67]	= settr(2252,2,71,1,0,"goto :b83", 1, 2, 0); /* m: 71 -> 0,84 */
	reached2[71] = 1;
	trans[2][70]	= settr(2255,2,71,1,0,"break", 1, 2, 0);
	trans[2][71]	= settr(2256,2,84,409,409,"interrupted_task = EP", 1, 2, 0);
	T = trans[2][84] = settr(2269,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(2269,2,72,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(2269,2,82,0,0,"IF", 1, 2, 0);
	trans[2][72]	= settr(2257,2,81,410,410,"((((interrupted_task>=1)&&(interrupted_task<=4))&&(tcb[interrupted_task].state!=2)))", 1, 2, 0); /* m: 73 -> 81,0 */
	reached2[73] = 1;
	trans[2][73]	= settr(0,0,0,0,0,"tcb[interrupted_task].state = 1",0,0,0);
	T = trans[ 2][81] = settr(2266,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(2266,0,79,0,0,"sub-sequence", 1, 2, 0);
	T = trans[2][79] = settr(2264,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(2264,2,74,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(2264,2,77,0,0,"IF", 1, 2, 0);
	trans[2][74]	= settr(2259,2,107,411,411,"((readyQueue[tcb[interrupted_task].prio].tailIndex<8))", 1, 2, 0); /* m: 75 -> 107,0 */
	reached2[75] = 1;
	trans[2][75]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tasks[readyQueue[tcb[interrupted_task].prio].tailIndex] = interrupted_task",0,0,0);
	trans[2][76]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tailIndex = (readyQueue[tcb[interrupted_task].prio].tailIndex+1)",0,0,0);
	trans[2][80]	= settr(2265,2,107,1,0,".(goto)", 1, 2, 0);
	trans[2][77]	= settr(2262,2,78,2,0,"else", 1, 2, 0);
	trans[2][78]	= settr(2263,2,107,412,0,"assert(0)", 1, 2, 0);
	trans[2][85]	= settr(2270,2,107,1,0,".(goto)", 1, 2, 0);
	trans[2][82]	= settr(2267,2,83,2,0,"else", 1, 2, 0);
	trans[2][83]	= settr(2268,2,107,1,0,"(1)", 1, 2, 0);
	T = trans[ 2][107] = settr(2292,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(2292,0,86,0,0,"sub-sequence", 1, 2, 0);
	trans[2][86]	= settr(2271,2,102,413,413,"prio = 0", 1, 2, 0); /* m: 87 -> 0,102 */
	reached2[87] = 1;
	trans[2][87]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[2][88]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[2][89]	= settr(0,0,0,0,0,"prio = 0",0,0,0);
	trans[2][90]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[2][91]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[2][103]	= settr(2288,2,102,1,0,".(goto)", 1, 2, 0);
	T = trans[2][102] = settr(2287,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(2287,2,92,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(2287,2,100,0,0,"DO", 1, 2, 0);
	trans[2][92]	= settr(2277,2,98,414,0,"(((prio<4)&&!(found)))", 1, 2, 0);
	T = trans[2][98] = settr(2283,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(2283,2,93,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(2283,2,96,0,0,"IF", 1, 2, 0);
	trans[2][93]	= settr(2278,2,102,415,415,"((readyQueue[prio].tailIndex>0))", 1, 2, 0); /* m: 94 -> 102,0 */
	reached2[94] = 1;
	trans[2][94]	= settr(0,0,0,0,0,"top_task = readyQueue[prio].tasks[0]",0,0,0);
	trans[2][95]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[2][99]	= settr(2284,2,102,1,0,".(goto)", 1, 2, 0);
	trans[2][96]	= settr(2281,2,97,2,0,"else", 1, 2, 0);
	trans[2][97]	= settr(2282,2,102,416,416,"prio = (prio+1)", 1, 2, 0);
	trans[2][100]	= settr(2285,2,125,417,417,"(((prio>=4)||found))", 1, 2, 0); /* m: 105 -> 125,0 */
	reached2[105] = 1;
	trans[2][101]	= settr(2286,2,105,1,0,"goto :b86", 1, 2, 0); /* m: 105 -> 0,125 */
	reached2[105] = 1;
	trans[2][104]	= settr(2289,2,105,1,0,"break", 1, 2, 0);
	trans[2][105]	= settr(2290,2,125,418,418,"newTask = top_task", 1, 2, 0); /* m: 106 -> 0,125 */
	reached2[106] = 1;
	trans[2][106]	= settr(0,0,0,0,0,"topPrio = prio",0,0,0);
	T = trans[ 2][125] = settr(2310,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(2310,0,108,0,0,"sub-sequence", 1, 2, 0);
	trans[2][108]	= settr(2293,2,115,419,419,"deq_idx = 0", 1, 2, 0); /* m: 109 -> 0,115 */
	reached2[109] = 1;
	trans[2][109]	= settr(0,0,0,0,0,"deq_idx = 0",0,0,0);
	trans[2][116]	= settr(2301,2,115,1,0,".(goto)", 1, 2, 0);
	T = trans[2][115] = settr(2300,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(2300,2,110,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(2300,2,113,0,0,"DO", 1, 2, 0);
	trans[2][110]	= settr(2295,2,115,420,420,"((deq_idx<(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0); /* m: 111 -> 115,0 */
	reached2[111] = 1;
	trans[2][111]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[deq_idx] = readyQueue[topPrio].tasks[(deq_idx+1)]",0,0,0);
	trans[2][112]	= settr(0,0,0,0,0,"deq_idx = (deq_idx+1)",0,0,0);
	trans[2][113]	= settr(2298,2,123,421,421,"((deq_idx>=(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0);
	trans[2][114]	= settr(2299,2,123,1,0,"goto :b87", 1, 2, 0);
	trans[2][117]	= settr(2302,2,123,1,0,"break", 1, 2, 0);
	T = trans[2][123] = settr(2308,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(2308,2,118,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(2308,2,121,0,0,"IF", 1, 2, 0);
	trans[2][118]	= settr(2303,2,129,422,422,"((readyQueue[topPrio].tailIndex>0))", 1, 2, 0); /* m: 119 -> 129,0 */
	reached2[119] = 1;
	trans[2][119]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)] = 255",0,0,0);
	trans[2][120]	= settr(0,0,0,0,0,"readyQueue[topPrio].tailIndex = (readyQueue[topPrio].tailIndex-1)",0,0,0);
	trans[2][124]	= settr(2309,2,126,1,0,".(goto)", 1, 2, 0); /* m: 126 -> 0,129 */
	reached2[126] = 1;
	trans[2][121]	= settr(2306,2,122,2,0,"else", 1, 2, 0);
	trans[2][122]	= settr(2307,2,129,423,423,"(1)", 1, 2, 0); /* m: 126 -> 129,0 */
	reached2[126] = 1;
	trans[2][126]	= settr(2311,2,129,424,424,"tcb[newTask].state = 4", 1, 2, 0); /* m: 127 -> 0,129 */
	reached2[127] = 1;
	trans[2][127]	= settr(0,0,0,0,0,"EP = newTask",0,0,0);
	T = trans[ 2][129] = settr(2314,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(2314,0,128,0,0,"sub-sequence", 1, 2, 0);
	trans[2][128]	= settr(2313,0,1090,425,425,"int_ctrl_reg = int_save", 1, 2, 0);
	T = trans[ 2][262] = settr(2447,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(2447,2,132,0,0,"ATOMIC", 1, 2, 0);
	trans[2][132]	= settr(2317,2,261,426,426,"((EP==3))", 1, 2, 0); /* m: 133 -> 261,0 */
	reached2[133] = 1;
	trans[2][133]	= settr(0,0,0,0,0,"counter = (counter+1)",0,0,0);
	T = trans[ 2][261] = settr(2446,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(2446,0,134,0,0,"sub-sequence", 1, 2, 0);
	trans[2][134]	= settr(2319,2,142,427,427,"interrupted_task = 0", 1, 2, 0); /* m: 135 -> 0,142 */
	reached2[135] = 1;
	trans[2][135]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[2][136]	= settr(0,0,0,0,0,"taskId = 0",0,0,0);
	trans[2][137]	= settr(0,0,0,0,0,"needResched = 0",0,0,0);
	trans[2][138]	= settr(0,0,0,0,0,"interrupted_task = 0",0,0,0);
	trans[2][139]	= settr(0,0,0,0,0,"needResched = 0",0,0,0);
	T = trans[ 2][142] = settr(2327,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(2327,0,140,0,0,"sub-sequence", 1, 2, 0);
	trans[2][140]	= settr(2325,2,199,428,428,"int_save = int_ctrl_reg", 1, 2, 0); /* m: 141 -> 0,199 */
	reached2[141] = 1;
	trans[2][141]	= settr(0,0,0,0,0,"int_ctrl_reg = 1",0,0,0);
	trans[2][143]	= settr(0,0,0,0,0,"tickCount = (tickCount+1)",0,0,0);
	trans[2][144]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[2][200]	= settr(2385,2,199,1,0,".(goto)", 1, 2, 0);
	T = trans[2][199] = settr(2384,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(2384,2,145,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(2384,2,197,0,0,"DO", 1, 2, 0);
	trans[2][145]	= settr(2330,2,195,429,429,"((idx<sortLink.count))", 1, 2, 0); /* m: 146 -> 195,0 */
	reached2[146] = 1;
	trans[2][146]	= settr(0,0,0,0,0,"taskId = sortLink.tasks[idx]",0,0,0);
	T = trans[2][195] = settr(2380,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(2380,2,147,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(2380,2,193,0,0,"IF", 1, 2, 0);
	trans[2][147]	= settr(2332,2,183,430,430,"(((tcb[taskId].state==2)&&(tickCount>=tcb[taskId].wakeupTime)))", 1, 2, 0); /* m: 148 -> 183,0 */
	reached2[148] = 1;
	trans[2][148]	= settr(0,0,0,0,0,"tcb[taskId].state = 1",0,0,0);
	trans[2][149]	= settr(0,0,0,0,0,"tcb[taskId].delayTicks = 0",0,0,0);
	T = trans[ 2][183] = settr(2368,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(2368,0,150,0,0,"sub-sequence", 1, 2, 0);
	trans[2][150]	= settr(2335,2,164,431,431,"removePos = 0", 1, 2, 0); /* m: 151 -> 0,164 */
	reached2[151] = 1;
	trans[2][151]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[2][152]	= settr(0,0,0,0,0,"shiftIdx = 0",0,0,0);
	trans[2][153]	= settr(0,0,0,0,0,"removePos = 0",0,0,0);
	trans[2][154]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[2][165]	= settr(2350,2,164,1,0,".(goto)", 1, 2, 0);
	T = trans[2][164] = settr(2349,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(2349,2,155,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(2349,2,162,0,0,"DO", 1, 2, 0);
	trans[2][155]	= settr(2340,2,160,432,0,"(((removePos<sortLink.count)&&!(found)))", 1, 2, 0);
	T = trans[2][160] = settr(2345,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(2345,2,156,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(2345,2,158,0,0,"IF", 1, 2, 0);
	trans[2][156]	= settr(2341,2,164,433,433,"((sortLink.tasks[removePos]==taskId))", 1, 2, 0); /* m: 157 -> 164,0 */
	reached2[157] = 1;
	trans[2][157]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[2][161]	= settr(2346,2,164,1,0,".(goto)", 1, 2, 0);
	trans[2][158]	= settr(2343,2,159,2,0,"else", 1, 2, 0);
	trans[2][159]	= settr(2344,2,164,434,434,"removePos = (removePos+1)", 1, 2, 0);
	trans[2][162]	= settr(2347,2,181,2,0,"else", 1, 2, 0);
	trans[2][163]	= settr(2348,2,181,1,0,"goto :b89", 1, 2, 0);
	trans[2][166]	= settr(2351,2,181,1,0,"break", 1, 2, 0);
	T = trans[2][181] = settr(2366,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(2366,2,167,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(2366,2,179,0,0,"IF", 1, 2, 0);
	trans[2][167]	= settr(2352,2,174,435,435,"((found==1))", 1, 2, 0); /* m: 168 -> 174,0 */
	reached2[168] = 1;
	trans[2][168]	= settr(0,0,0,0,0,"shiftIdx = removePos",0,0,0);
	trans[2][175]	= settr(2360,2,174,1,0,".(goto)", 1, 2, 0);
	T = trans[2][174] = settr(2359,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(2359,2,169,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(2359,2,172,0,0,"DO", 1, 2, 0);
	trans[2][169]	= settr(2354,2,174,436,436,"((shiftIdx<(sortLink.count-1)))", 1, 2, 0); /* m: 170 -> 174,0 */
	reached2[170] = 1;
	trans[2][170]	= settr(0,0,0,0,0,"sortLink.tasks[shiftIdx] = sortLink.tasks[(shiftIdx+1)]",0,0,0);
	trans[2][171]	= settr(0,0,0,0,0,"shiftIdx = (shiftIdx+1)",0,0,0);
	trans[2][172]	= settr(2357,2,191,437,437,"((shiftIdx>=(sortLink.count-1)))", 1, 2, 0); /* m: 177 -> 191,0 */
	reached2[177] = 1;
	trans[2][173]	= settr(2358,2,177,1,0,"goto :b90", 1, 2, 0); /* m: 177 -> 0,191 */
	reached2[177] = 1;
	trans[2][176]	= settr(2361,2,177,1,0,"break", 1, 2, 0);
	trans[2][177]	= settr(2362,2,191,438,438,"sortLink.tasks[(sortLink.count-1)] = 255", 1, 2, 0); /* m: 178 -> 0,191 */
	reached2[178] = 1;
	trans[2][178]	= settr(0,0,0,0,0,"sortLink.count = (sortLink.count-1)",0,0,0);
	trans[2][182]	= settr(2367,2,191,1,0,".(goto)", 1, 2, 0);
	trans[2][179]	= settr(2364,2,180,2,0,"else", 1, 2, 0);
	trans[2][180]	= settr(2365,2,191,1,0,"(1)", 1, 2, 0);
	T = trans[ 2][191] = settr(2376,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(2376,0,189,0,0,"sub-sequence", 1, 2, 0);
	T = trans[2][189] = settr(2374,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(2374,2,184,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(2374,2,187,0,0,"IF", 1, 2, 0);
	trans[2][184]	= settr(2369,2,199,439,439,"((readyQueue[tcb[taskId].prio].tailIndex<8))", 1, 2, 0); /* m: 185 -> 199,0 */
	reached2[185] = 1;
	trans[2][185]	= settr(0,0,0,0,0,"readyQueue[tcb[taskId].prio].tasks[readyQueue[tcb[taskId].prio].tailIndex] = taskId",0,0,0);
	trans[2][186]	= settr(0,0,0,0,0,"readyQueue[tcb[taskId].prio].tailIndex = (readyQueue[tcb[taskId].prio].tailIndex+1)",0,0,0);
	trans[2][190]	= settr(2375,2,192,1,0,".(goto)", 1, 2, 0); /* m: 192 -> 0,199 */
	reached2[192] = 1;
	trans[2][187]	= settr(2372,2,188,2,0,"else", 1, 2, 0);
	trans[2][188]	= settr(2373,2,199,440,440,"assert(0)", 1, 2, 0); /* m: 192 -> 0,199 */
	reached2[192] = 1;
	trans[2][192]	= settr(2377,2,199,441,441,"needResched = 1", 1, 2, 0);
	trans[2][196]	= settr(2381,2,199,1,0,".(goto)", 1, 2, 0);
	trans[2][193]	= settr(2378,2,194,2,0,"else", 1, 2, 0);
	trans[2][194]	= settr(2379,2,199,442,442,"idx = (idx+1)", 1, 2, 0);
	trans[2][197]	= settr(2382,2,215,443,443,"((idx>=sortLink.count))", 1, 2, 0); /* m: 202 -> 215,0 */
	reached2[202] = 1;
	trans[2][198]	= settr(2383,2,202,1,0,"goto :b88", 1, 2, 0); /* m: 202 -> 0,215 */
	reached2[202] = 1;
	trans[2][201]	= settr(2386,2,202,1,0,"break", 1, 2, 0);
	trans[2][202]	= settr(2387,2,215,444,444,"interrupted_task = EP", 1, 2, 0);
	T = trans[2][215] = settr(2400,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(2400,2,203,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(2400,2,213,0,0,"IF", 1, 2, 0);
	trans[2][203]	= settr(2388,2,212,445,445,"((((interrupted_task>=1)&&(interrupted_task<=4))&&(tcb[interrupted_task].state!=2)))", 1, 2, 0); /* m: 204 -> 212,0 */
	reached2[204] = 1;
	trans[2][204]	= settr(0,0,0,0,0,"tcb[interrupted_task].state = 1",0,0,0);
	T = trans[ 2][212] = settr(2397,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(2397,0,210,0,0,"sub-sequence", 1, 2, 0);
	T = trans[2][210] = settr(2395,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(2395,2,205,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(2395,2,208,0,0,"IF", 1, 2, 0);
	trans[2][205]	= settr(2390,2,238,446,446,"((readyQueue[tcb[interrupted_task].prio].tailIndex<8))", 1, 2, 0); /* m: 206 -> 238,0 */
	reached2[206] = 1;
	trans[2][206]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tasks[readyQueue[tcb[interrupted_task].prio].tailIndex] = interrupted_task",0,0,0);
	trans[2][207]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tailIndex = (readyQueue[tcb[interrupted_task].prio].tailIndex+1)",0,0,0);
	trans[2][211]	= settr(2396,2,238,1,0,".(goto)", 1, 2, 0);
	trans[2][208]	= settr(2393,2,209,2,0,"else", 1, 2, 0);
	trans[2][209]	= settr(2394,2,238,447,0,"assert(0)", 1, 2, 0);
	trans[2][216]	= settr(2401,2,238,1,0,".(goto)", 1, 2, 0);
	trans[2][213]	= settr(2398,2,214,2,0,"else", 1, 2, 0);
	trans[2][214]	= settr(2399,2,238,1,0,"(1)", 1, 2, 0);
	T = trans[ 2][238] = settr(2423,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(2423,0,217,0,0,"sub-sequence", 1, 2, 0);
	trans[2][217]	= settr(2402,2,233,448,448,"prio = 0", 1, 2, 0); /* m: 218 -> 0,233 */
	reached2[218] = 1;
	trans[2][218]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[2][219]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[2][220]	= settr(0,0,0,0,0,"prio = 0",0,0,0);
	trans[2][221]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[2][222]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[2][234]	= settr(2419,2,233,1,0,".(goto)", 1, 2, 0);
	T = trans[2][233] = settr(2418,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(2418,2,223,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(2418,2,231,0,0,"DO", 1, 2, 0);
	trans[2][223]	= settr(2408,2,229,449,0,"(((prio<4)&&!(found)))", 1, 2, 0);
	T = trans[2][229] = settr(2414,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(2414,2,224,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(2414,2,227,0,0,"IF", 1, 2, 0);
	trans[2][224]	= settr(2409,2,233,450,450,"((readyQueue[prio].tailIndex>0))", 1, 2, 0); /* m: 225 -> 233,0 */
	reached2[225] = 1;
	trans[2][225]	= settr(0,0,0,0,0,"top_task = readyQueue[prio].tasks[0]",0,0,0);
	trans[2][226]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[2][230]	= settr(2415,2,233,1,0,".(goto)", 1, 2, 0);
	trans[2][227]	= settr(2412,2,228,2,0,"else", 1, 2, 0);
	trans[2][228]	= settr(2413,2,233,451,451,"prio = (prio+1)", 1, 2, 0);
	trans[2][231]	= settr(2416,2,256,452,452,"(((prio>=4)||found))", 1, 2, 0); /* m: 236 -> 256,0 */
	reached2[236] = 1;
	trans[2][232]	= settr(2417,2,236,1,0,"goto :b91", 1, 2, 0); /* m: 236 -> 0,256 */
	reached2[236] = 1;
	trans[2][235]	= settr(2420,2,236,1,0,"break", 1, 2, 0);
	trans[2][236]	= settr(2421,2,256,453,453,"newTask = top_task", 1, 2, 0); /* m: 237 -> 0,256 */
	reached2[237] = 1;
	trans[2][237]	= settr(0,0,0,0,0,"topPrio = prio",0,0,0);
	T = trans[ 2][256] = settr(2441,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(2441,0,239,0,0,"sub-sequence", 1, 2, 0);
	trans[2][239]	= settr(2424,2,246,454,454,"deq_idx = 0", 1, 2, 0); /* m: 240 -> 0,246 */
	reached2[240] = 1;
	trans[2][240]	= settr(0,0,0,0,0,"deq_idx = 0",0,0,0);
	trans[2][247]	= settr(2432,2,246,1,0,".(goto)", 1, 2, 0);
	T = trans[2][246] = settr(2431,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(2431,2,241,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(2431,2,244,0,0,"DO", 1, 2, 0);
	trans[2][241]	= settr(2426,2,246,455,455,"((deq_idx<(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0); /* m: 242 -> 246,0 */
	reached2[242] = 1;
	trans[2][242]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[deq_idx] = readyQueue[topPrio].tasks[(deq_idx+1)]",0,0,0);
	trans[2][243]	= settr(0,0,0,0,0,"deq_idx = (deq_idx+1)",0,0,0);
	trans[2][244]	= settr(2429,2,254,456,456,"((deq_idx>=(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0);
	trans[2][245]	= settr(2430,2,254,1,0,"goto :b92", 1, 2, 0);
	trans[2][248]	= settr(2433,2,254,1,0,"break", 1, 2, 0);
	T = trans[2][254] = settr(2439,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(2439,2,249,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(2439,2,252,0,0,"IF", 1, 2, 0);
	trans[2][249]	= settr(2434,2,260,457,457,"((readyQueue[topPrio].tailIndex>0))", 1, 2, 0); /* m: 250 -> 260,0 */
	reached2[250] = 1;
	trans[2][250]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)] = 255",0,0,0);
	trans[2][251]	= settr(0,0,0,0,0,"readyQueue[topPrio].tailIndex = (readyQueue[topPrio].tailIndex-1)",0,0,0);
	trans[2][255]	= settr(2440,2,257,1,0,".(goto)", 1, 2, 0); /* m: 257 -> 0,260 */
	reached2[257] = 1;
	trans[2][252]	= settr(2437,2,253,2,0,"else", 1, 2, 0);
	trans[2][253]	= settr(2438,2,260,458,458,"(1)", 1, 2, 0); /* m: 257 -> 260,0 */
	reached2[257] = 1;
	trans[2][257]	= settr(2442,2,260,459,459,"tcb[newTask].state = 4", 1, 2, 0); /* m: 258 -> 0,260 */
	reached2[258] = 1;
	trans[2][258]	= settr(0,0,0,0,0,"EP = newTask",0,0,0);
	T = trans[ 2][260] = settr(2445,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(2445,0,259,0,0,"sub-sequence", 1, 2, 0);
	trans[2][259]	= settr(2444,0,1090,460,460,"int_ctrl_reg = int_save", 1, 2, 0);
	T = trans[ 2][393] = settr(2578,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(2578,2,263,0,0,"ATOMIC", 1, 2, 0);
	trans[2][263]	= settr(2448,2,392,461,461,"((EP==3))", 1, 2, 0); /* m: 264 -> 392,0 */
	reached2[264] = 1;
	trans[2][264]	= settr(0,0,0,0,0,"work = ((work+(counter*3))%100)",0,0,0);
	T = trans[ 2][392] = settr(2577,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(2577,0,265,0,0,"sub-sequence", 1, 2, 0);
	trans[2][265]	= settr(2450,2,273,462,462,"interrupted_task = 0", 1, 2, 0); /* m: 266 -> 0,273 */
	reached2[266] = 1;
	trans[2][266]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[2][267]	= settr(0,0,0,0,0,"taskId = 0",0,0,0);
	trans[2][268]	= settr(0,0,0,0,0,"needResched = 0",0,0,0);
	trans[2][269]	= settr(0,0,0,0,0,"interrupted_task = 0",0,0,0);
	trans[2][270]	= settr(0,0,0,0,0,"needResched = 0",0,0,0);
	T = trans[ 2][273] = settr(2458,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(2458,0,271,0,0,"sub-sequence", 1, 2, 0);
	trans[2][271]	= settr(2456,2,330,463,463,"int_save = int_ctrl_reg", 1, 2, 0); /* m: 272 -> 0,330 */
	reached2[272] = 1;
	trans[2][272]	= settr(0,0,0,0,0,"int_ctrl_reg = 1",0,0,0);
	trans[2][274]	= settr(0,0,0,0,0,"tickCount = (tickCount+1)",0,0,0);
	trans[2][275]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[2][331]	= settr(2516,2,330,1,0,".(goto)", 1, 2, 0);
	T = trans[2][330] = settr(2515,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(2515,2,276,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(2515,2,328,0,0,"DO", 1, 2, 0);
	trans[2][276]	= settr(2461,2,326,464,464,"((idx<sortLink.count))", 1, 2, 0); /* m: 277 -> 326,0 */
	reached2[277] = 1;
	trans[2][277]	= settr(0,0,0,0,0,"taskId = sortLink.tasks[idx]",0,0,0);
	T = trans[2][326] = settr(2511,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(2511,2,278,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(2511,2,324,0,0,"IF", 1, 2, 0);
	trans[2][278]	= settr(2463,2,314,465,465,"(((tcb[taskId].state==2)&&(tickCount>=tcb[taskId].wakeupTime)))", 1, 2, 0); /* m: 279 -> 314,0 */
	reached2[279] = 1;
	trans[2][279]	= settr(0,0,0,0,0,"tcb[taskId].state = 1",0,0,0);
	trans[2][280]	= settr(0,0,0,0,0,"tcb[taskId].delayTicks = 0",0,0,0);
	T = trans[ 2][314] = settr(2499,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(2499,0,281,0,0,"sub-sequence", 1, 2, 0);
	trans[2][281]	= settr(2466,2,295,466,466,"removePos = 0", 1, 2, 0); /* m: 282 -> 0,295 */
	reached2[282] = 1;
	trans[2][282]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[2][283]	= settr(0,0,0,0,0,"shiftIdx = 0",0,0,0);
	trans[2][284]	= settr(0,0,0,0,0,"removePos = 0",0,0,0);
	trans[2][285]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[2][296]	= settr(2481,2,295,1,0,".(goto)", 1, 2, 0);
	T = trans[2][295] = settr(2480,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(2480,2,286,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(2480,2,293,0,0,"DO", 1, 2, 0);
	trans[2][286]	= settr(2471,2,291,467,0,"(((removePos<sortLink.count)&&!(found)))", 1, 2, 0);
	T = trans[2][291] = settr(2476,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(2476,2,287,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(2476,2,289,0,0,"IF", 1, 2, 0);
	trans[2][287]	= settr(2472,2,295,468,468,"((sortLink.tasks[removePos]==taskId))", 1, 2, 0); /* m: 288 -> 295,0 */
	reached2[288] = 1;
	trans[2][288]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[2][292]	= settr(2477,2,295,1,0,".(goto)", 1, 2, 0);
	trans[2][289]	= settr(2474,2,290,2,0,"else", 1, 2, 0);
	trans[2][290]	= settr(2475,2,295,469,469,"removePos = (removePos+1)", 1, 2, 0);
	trans[2][293]	= settr(2478,2,312,2,0,"else", 1, 2, 0);
	trans[2][294]	= settr(2479,2,312,1,0,"goto :b94", 1, 2, 0);
	trans[2][297]	= settr(2482,2,312,1,0,"break", 1, 2, 0);
	T = trans[2][312] = settr(2497,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(2497,2,298,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(2497,2,310,0,0,"IF", 1, 2, 0);
	trans[2][298]	= settr(2483,2,305,470,470,"((found==1))", 1, 2, 0); /* m: 299 -> 305,0 */
	reached2[299] = 1;
	trans[2][299]	= settr(0,0,0,0,0,"shiftIdx = removePos",0,0,0);
	trans[2][306]	= settr(2491,2,305,1,0,".(goto)", 1, 2, 0);
	T = trans[2][305] = settr(2490,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(2490,2,300,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(2490,2,303,0,0,"DO", 1, 2, 0);
	trans[2][300]	= settr(2485,2,305,471,471,"((shiftIdx<(sortLink.count-1)))", 1, 2, 0); /* m: 301 -> 305,0 */
	reached2[301] = 1;
	trans[2][301]	= settr(0,0,0,0,0,"sortLink.tasks[shiftIdx] = sortLink.tasks[(shiftIdx+1)]",0,0,0);
	trans[2][302]	= settr(0,0,0,0,0,"shiftIdx = (shiftIdx+1)",0,0,0);
	trans[2][303]	= settr(2488,2,322,472,472,"((shiftIdx>=(sortLink.count-1)))", 1, 2, 0); /* m: 308 -> 322,0 */
	reached2[308] = 1;
	trans[2][304]	= settr(2489,2,308,1,0,"goto :b95", 1, 2, 0); /* m: 308 -> 0,322 */
	reached2[308] = 1;
	trans[2][307]	= settr(2492,2,308,1,0,"break", 1, 2, 0);
	trans[2][308]	= settr(2493,2,322,473,473,"sortLink.tasks[(sortLink.count-1)] = 255", 1, 2, 0); /* m: 309 -> 0,322 */
	reached2[309] = 1;
	trans[2][309]	= settr(0,0,0,0,0,"sortLink.count = (sortLink.count-1)",0,0,0);
	trans[2][313]	= settr(2498,2,322,1,0,".(goto)", 1, 2, 0);
	trans[2][310]	= settr(2495,2,311,2,0,"else", 1, 2, 0);
	trans[2][311]	= settr(2496,2,322,1,0,"(1)", 1, 2, 0);
	T = trans[ 2][322] = settr(2507,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(2507,0,320,0,0,"sub-sequence", 1, 2, 0);
	T = trans[2][320] = settr(2505,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(2505,2,315,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(2505,2,318,0,0,"IF", 1, 2, 0);
	trans[2][315]	= settr(2500,2,330,474,474,"((readyQueue[tcb[taskId].prio].tailIndex<8))", 1, 2, 0); /* m: 316 -> 330,0 */
	reached2[316] = 1;
	trans[2][316]	= settr(0,0,0,0,0,"readyQueue[tcb[taskId].prio].tasks[readyQueue[tcb[taskId].prio].tailIndex] = taskId",0,0,0);
	trans[2][317]	= settr(0,0,0,0,0,"readyQueue[tcb[taskId].prio].tailIndex = (readyQueue[tcb[taskId].prio].tailIndex+1)",0,0,0);
	trans[2][321]	= settr(2506,2,323,1,0,".(goto)", 1, 2, 0); /* m: 323 -> 0,330 */
	reached2[323] = 1;
	trans[2][318]	= settr(2503,2,319,2,0,"else", 1, 2, 0);
	trans[2][319]	= settr(2504,2,330,475,475,"assert(0)", 1, 2, 0); /* m: 323 -> 0,330 */
	reached2[323] = 1;
	trans[2][323]	= settr(2508,2,330,476,476,"needResched = 1", 1, 2, 0);
	trans[2][327]	= settr(2512,2,330,1,0,".(goto)", 1, 2, 0);
	trans[2][324]	= settr(2509,2,325,2,0,"else", 1, 2, 0);
	trans[2][325]	= settr(2510,2,330,477,477,"idx = (idx+1)", 1, 2, 0);
	trans[2][328]	= settr(2513,2,346,478,478,"((idx>=sortLink.count))", 1, 2, 0); /* m: 333 -> 346,0 */
	reached2[333] = 1;
	trans[2][329]	= settr(2514,2,333,1,0,"goto :b93", 1, 2, 0); /* m: 333 -> 0,346 */
	reached2[333] = 1;
	trans[2][332]	= settr(2517,2,333,1,0,"break", 1, 2, 0);
	trans[2][333]	= settr(2518,2,346,479,479,"interrupted_task = EP", 1, 2, 0);
	T = trans[2][346] = settr(2531,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(2531,2,334,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(2531,2,344,0,0,"IF", 1, 2, 0);
	trans[2][334]	= settr(2519,2,343,480,480,"((((interrupted_task>=1)&&(interrupted_task<=4))&&(tcb[interrupted_task].state!=2)))", 1, 2, 0); /* m: 335 -> 343,0 */
	reached2[335] = 1;
	trans[2][335]	= settr(0,0,0,0,0,"tcb[interrupted_task].state = 1",0,0,0);
	T = trans[ 2][343] = settr(2528,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(2528,0,341,0,0,"sub-sequence", 1, 2, 0);
	T = trans[2][341] = settr(2526,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(2526,2,336,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(2526,2,339,0,0,"IF", 1, 2, 0);
	trans[2][336]	= settr(2521,2,369,481,481,"((readyQueue[tcb[interrupted_task].prio].tailIndex<8))", 1, 2, 0); /* m: 337 -> 369,0 */
	reached2[337] = 1;
	trans[2][337]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tasks[readyQueue[tcb[interrupted_task].prio].tailIndex] = interrupted_task",0,0,0);
	trans[2][338]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tailIndex = (readyQueue[tcb[interrupted_task].prio].tailIndex+1)",0,0,0);
	trans[2][342]	= settr(2527,2,369,1,0,".(goto)", 1, 2, 0);
	trans[2][339]	= settr(2524,2,340,2,0,"else", 1, 2, 0);
	trans[2][340]	= settr(2525,2,369,482,0,"assert(0)", 1, 2, 0);
	trans[2][347]	= settr(2532,2,369,1,0,".(goto)", 1, 2, 0);
	trans[2][344]	= settr(2529,2,345,2,0,"else", 1, 2, 0);
	trans[2][345]	= settr(2530,2,369,1,0,"(1)", 1, 2, 0);
	T = trans[ 2][369] = settr(2554,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(2554,0,348,0,0,"sub-sequence", 1, 2, 0);
	trans[2][348]	= settr(2533,2,364,483,483,"prio = 0", 1, 2, 0); /* m: 349 -> 0,364 */
	reached2[349] = 1;
	trans[2][349]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[2][350]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[2][351]	= settr(0,0,0,0,0,"prio = 0",0,0,0);
	trans[2][352]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[2][353]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[2][365]	= settr(2550,2,364,1,0,".(goto)", 1, 2, 0);
	T = trans[2][364] = settr(2549,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(2549,2,354,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(2549,2,362,0,0,"DO", 1, 2, 0);
	trans[2][354]	= settr(2539,2,360,484,0,"(((prio<4)&&!(found)))", 1, 2, 0);
	T = trans[2][360] = settr(2545,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(2545,2,355,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(2545,2,358,0,0,"IF", 1, 2, 0);
	trans[2][355]	= settr(2540,2,364,485,485,"((readyQueue[prio].tailIndex>0))", 1, 2, 0); /* m: 356 -> 364,0 */
	reached2[356] = 1;
	trans[2][356]	= settr(0,0,0,0,0,"top_task = readyQueue[prio].tasks[0]",0,0,0);
	trans[2][357]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[2][361]	= settr(2546,2,364,1,0,".(goto)", 1, 2, 0);
	trans[2][358]	= settr(2543,2,359,2,0,"else", 1, 2, 0);
	trans[2][359]	= settr(2544,2,364,486,486,"prio = (prio+1)", 1, 2, 0);
	trans[2][362]	= settr(2547,2,387,487,487,"(((prio>=4)||found))", 1, 2, 0); /* m: 367 -> 387,0 */
	reached2[367] = 1;
	trans[2][363]	= settr(2548,2,367,1,0,"goto :b96", 1, 2, 0); /* m: 367 -> 0,387 */
	reached2[367] = 1;
	trans[2][366]	= settr(2551,2,367,1,0,"break", 1, 2, 0);
	trans[2][367]	= settr(2552,2,387,488,488,"newTask = top_task", 1, 2, 0); /* m: 368 -> 0,387 */
	reached2[368] = 1;
	trans[2][368]	= settr(0,0,0,0,0,"topPrio = prio",0,0,0);
	T = trans[ 2][387] = settr(2572,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(2572,0,370,0,0,"sub-sequence", 1, 2, 0);
	trans[2][370]	= settr(2555,2,377,489,489,"deq_idx = 0", 1, 2, 0); /* m: 371 -> 0,377 */
	reached2[371] = 1;
	trans[2][371]	= settr(0,0,0,0,0,"deq_idx = 0",0,0,0);
	trans[2][378]	= settr(2563,2,377,1,0,".(goto)", 1, 2, 0);
	T = trans[2][377] = settr(2562,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(2562,2,372,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(2562,2,375,0,0,"DO", 1, 2, 0);
	trans[2][372]	= settr(2557,2,377,490,490,"((deq_idx<(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0); /* m: 373 -> 377,0 */
	reached2[373] = 1;
	trans[2][373]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[deq_idx] = readyQueue[topPrio].tasks[(deq_idx+1)]",0,0,0);
	trans[2][374]	= settr(0,0,0,0,0,"deq_idx = (deq_idx+1)",0,0,0);
	trans[2][375]	= settr(2560,2,385,491,491,"((deq_idx>=(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0);
	trans[2][376]	= settr(2561,2,385,1,0,"goto :b97", 1, 2, 0);
	trans[2][379]	= settr(2564,2,385,1,0,"break", 1, 2, 0);
	T = trans[2][385] = settr(2570,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(2570,2,380,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(2570,2,383,0,0,"IF", 1, 2, 0);
	trans[2][380]	= settr(2565,2,391,492,492,"((readyQueue[topPrio].tailIndex>0))", 1, 2, 0); /* m: 381 -> 391,0 */
	reached2[381] = 1;
	trans[2][381]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)] = 255",0,0,0);
	trans[2][382]	= settr(0,0,0,0,0,"readyQueue[topPrio].tailIndex = (readyQueue[topPrio].tailIndex-1)",0,0,0);
	trans[2][386]	= settr(2571,2,388,1,0,".(goto)", 1, 2, 0); /* m: 388 -> 0,391 */
	reached2[388] = 1;
	trans[2][383]	= settr(2568,2,384,2,0,"else", 1, 2, 0);
	trans[2][384]	= settr(2569,2,391,493,493,"(1)", 1, 2, 0); /* m: 388 -> 391,0 */
	reached2[388] = 1;
	trans[2][388]	= settr(2573,2,391,494,494,"tcb[newTask].state = 4", 1, 2, 0); /* m: 389 -> 0,391 */
	reached2[389] = 1;
	trans[2][389]	= settr(0,0,0,0,0,"EP = newTask",0,0,0);
	T = trans[ 2][391] = settr(2576,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(2576,0,390,0,0,"sub-sequence", 1, 2, 0);
	trans[2][390]	= settr(2575,0,1090,495,495,"int_ctrl_reg = int_save", 1, 2, 0);
	T = trans[ 2][675] = settr(2860,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(2860,2,394,0,0,"ATOMIC", 1, 2, 0);
	trans[2][394]	= settr(2579,2,546,496,0,"((EP==3))", 1, 2, 0);
	T = trans[ 2][546] = settr(2731,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(2731,0,395,0,0,"sub-sequence", 1, 2, 0);
	trans[2][395]	= settr(2580,2,544,497,497,"currentTask = 0", 1, 2, 0);
	T = trans[2][544] = settr(2729,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(2729,2,396,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(2729,2,542,0,0,"IF", 1, 2, 0);
	trans[2][396]	= settr(2581,2,399,498,0,"((((1>0)&&(EP>=1))&&(EP<=4)))", 1, 2, 0);
	T = trans[ 2][399] = settr(2584,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(2584,0,397,0,0,"sub-sequence", 1, 2, 0);
	trans[2][397]	= settr(2582,2,411,499,499,"int_save = int_ctrl_reg", 1, 2, 0); /* m: 398 -> 0,411 */
	reached2[398] = 1;
	trans[2][398]	= settr(0,0,0,0,0,"int_ctrl_reg = 1",0,0,0);
	trans[2][400]	= settr(0,0,0,0,0,"currentTask = EP",0,0,0);
	trans[2][401]	= settr(0,0,0,0,0,"tcb[currentTask].state = 2",0,0,0);
	trans[2][402]	= settr(0,0,0,0,0,"tcb[currentTask].wakeupTime = (tickCount+1)",0,0,0);
	trans[2][403]	= settr(0,0,0,0,0,"tcb[currentTask].delayTicks = 1",0,0,0);
	T = trans[ 2][411] = settr(2596,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(2596,0,409,0,0,"sub-sequence", 1, 2, 0);
	T = trans[2][409] = settr(2594,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(2594,2,404,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(2594,2,407,0,0,"IF", 1, 2, 0);
	trans[2][404]	= settr(2589,2,539,500,500,"((sortLink.count<8))", 1, 2, 0); /* m: 405 -> 539,0 */
	reached2[405] = 1;
	trans[2][405]	= settr(0,0,0,0,0,"sortLink.tasks[sortLink.count] = currentTask",0,0,0);
	trans[2][406]	= settr(0,0,0,0,0,"sortLink.count = (sortLink.count+1)",0,0,0);
	trans[2][410]	= settr(2595,2,539,1,0,".(goto)", 1, 2, 0);
	trans[2][407]	= settr(2592,2,408,2,0,"else", 1, 2, 0);
	trans[2][408]	= settr(2593,2,539,501,0,"assert(0)", 1, 2, 0);
	T = trans[ 2][539] = settr(2724,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(2724,0,412,0,0,"sub-sequence", 1, 2, 0);
	trans[2][412]	= settr(2597,2,420,502,502,"interrupted_task = 0", 1, 2, 0); /* m: 413 -> 0,420 */
	reached2[413] = 1;
	trans[2][413]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[2][414]	= settr(0,0,0,0,0,"taskId = 0",0,0,0);
	trans[2][415]	= settr(0,0,0,0,0,"needResched = 0",0,0,0);
	trans[2][416]	= settr(0,0,0,0,0,"interrupted_task = 0",0,0,0);
	trans[2][417]	= settr(0,0,0,0,0,"needResched = 0",0,0,0);
	T = trans[ 2][420] = settr(2605,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(2605,0,418,0,0,"sub-sequence", 1, 2, 0);
	trans[2][418]	= settr(2603,2,477,503,503,"int_save = int_ctrl_reg", 1, 2, 0); /* m: 419 -> 0,477 */
	reached2[419] = 1;
	trans[2][419]	= settr(0,0,0,0,0,"int_ctrl_reg = 1",0,0,0);
	trans[2][421]	= settr(0,0,0,0,0,"tickCount = (tickCount+1)",0,0,0);
	trans[2][422]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[2][478]	= settr(2663,2,477,1,0,".(goto)", 1, 2, 0);
	T = trans[2][477] = settr(2662,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(2662,2,423,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(2662,2,475,0,0,"DO", 1, 2, 0);
	trans[2][423]	= settr(2608,2,473,504,504,"((idx<sortLink.count))", 1, 2, 0); /* m: 424 -> 473,0 */
	reached2[424] = 1;
	trans[2][424]	= settr(0,0,0,0,0,"taskId = sortLink.tasks[idx]",0,0,0);
	T = trans[2][473] = settr(2658,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(2658,2,425,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(2658,2,471,0,0,"IF", 1, 2, 0);
	trans[2][425]	= settr(2610,2,461,505,505,"(((tcb[taskId].state==2)&&(tickCount>=tcb[taskId].wakeupTime)))", 1, 2, 0); /* m: 426 -> 461,0 */
	reached2[426] = 1;
	trans[2][426]	= settr(0,0,0,0,0,"tcb[taskId].state = 1",0,0,0);
	trans[2][427]	= settr(0,0,0,0,0,"tcb[taskId].delayTicks = 0",0,0,0);
	T = trans[ 2][461] = settr(2646,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(2646,0,428,0,0,"sub-sequence", 1, 2, 0);
	trans[2][428]	= settr(2613,2,442,506,506,"removePos = 0", 1, 2, 0); /* m: 429 -> 0,442 */
	reached2[429] = 1;
	trans[2][429]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[2][430]	= settr(0,0,0,0,0,"shiftIdx = 0",0,0,0);
	trans[2][431]	= settr(0,0,0,0,0,"removePos = 0",0,0,0);
	trans[2][432]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[2][443]	= settr(2628,2,442,1,0,".(goto)", 1, 2, 0);
	T = trans[2][442] = settr(2627,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(2627,2,433,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(2627,2,440,0,0,"DO", 1, 2, 0);
	trans[2][433]	= settr(2618,2,438,507,0,"(((removePos<sortLink.count)&&!(found)))", 1, 2, 0);
	T = trans[2][438] = settr(2623,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(2623,2,434,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(2623,2,436,0,0,"IF", 1, 2, 0);
	trans[2][434]	= settr(2619,2,442,508,508,"((sortLink.tasks[removePos]==taskId))", 1, 2, 0); /* m: 435 -> 442,0 */
	reached2[435] = 1;
	trans[2][435]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[2][439]	= settr(2624,2,442,1,0,".(goto)", 1, 2, 0);
	trans[2][436]	= settr(2621,2,437,2,0,"else", 1, 2, 0);
	trans[2][437]	= settr(2622,2,442,509,509,"removePos = (removePos+1)", 1, 2, 0);
	trans[2][440]	= settr(2625,2,459,2,0,"else", 1, 2, 0);
	trans[2][441]	= settr(2626,2,459,1,0,"goto :b99", 1, 2, 0);
	trans[2][444]	= settr(2629,2,459,1,0,"break", 1, 2, 0);
	T = trans[2][459] = settr(2644,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(2644,2,445,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(2644,2,457,0,0,"IF", 1, 2, 0);
	trans[2][445]	= settr(2630,2,452,510,510,"((found==1))", 1, 2, 0); /* m: 446 -> 452,0 */
	reached2[446] = 1;
	trans[2][446]	= settr(0,0,0,0,0,"shiftIdx = removePos",0,0,0);
	trans[2][453]	= settr(2638,2,452,1,0,".(goto)", 1, 2, 0);
	T = trans[2][452] = settr(2637,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(2637,2,447,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(2637,2,450,0,0,"DO", 1, 2, 0);
	trans[2][447]	= settr(2632,2,452,511,511,"((shiftIdx<(sortLink.count-1)))", 1, 2, 0); /* m: 448 -> 452,0 */
	reached2[448] = 1;
	trans[2][448]	= settr(0,0,0,0,0,"sortLink.tasks[shiftIdx] = sortLink.tasks[(shiftIdx+1)]",0,0,0);
	trans[2][449]	= settr(0,0,0,0,0,"shiftIdx = (shiftIdx+1)",0,0,0);
	trans[2][450]	= settr(2635,2,469,512,512,"((shiftIdx>=(sortLink.count-1)))", 1, 2, 0); /* m: 455 -> 469,0 */
	reached2[455] = 1;
	trans[2][451]	= settr(2636,2,455,1,0,"goto :b100", 1, 2, 0); /* m: 455 -> 0,469 */
	reached2[455] = 1;
	trans[2][454]	= settr(2639,2,455,1,0,"break", 1, 2, 0);
	trans[2][455]	= settr(2640,2,469,513,513,"sortLink.tasks[(sortLink.count-1)] = 255", 1, 2, 0); /* m: 456 -> 0,469 */
	reached2[456] = 1;
	trans[2][456]	= settr(0,0,0,0,0,"sortLink.count = (sortLink.count-1)",0,0,0);
	trans[2][460]	= settr(2645,2,469,1,0,".(goto)", 1, 2, 0);
	trans[2][457]	= settr(2642,2,458,2,0,"else", 1, 2, 0);
	trans[2][458]	= settr(2643,2,469,1,0,"(1)", 1, 2, 0);
	T = trans[ 2][469] = settr(2654,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(2654,0,467,0,0,"sub-sequence", 1, 2, 0);
	T = trans[2][467] = settr(2652,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(2652,2,462,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(2652,2,465,0,0,"IF", 1, 2, 0);
	trans[2][462]	= settr(2647,2,477,514,514,"((readyQueue[tcb[taskId].prio].tailIndex<8))", 1, 2, 0); /* m: 463 -> 477,0 */
	reached2[463] = 1;
	trans[2][463]	= settr(0,0,0,0,0,"readyQueue[tcb[taskId].prio].tasks[readyQueue[tcb[taskId].prio].tailIndex] = taskId",0,0,0);
	trans[2][464]	= settr(0,0,0,0,0,"readyQueue[tcb[taskId].prio].tailIndex = (readyQueue[tcb[taskId].prio].tailIndex+1)",0,0,0);
	trans[2][468]	= settr(2653,2,470,1,0,".(goto)", 1, 2, 0); /* m: 470 -> 0,477 */
	reached2[470] = 1;
	trans[2][465]	= settr(2650,2,466,2,0,"else", 1, 2, 0);
	trans[2][466]	= settr(2651,2,477,515,515,"assert(0)", 1, 2, 0); /* m: 470 -> 0,477 */
	reached2[470] = 1;
	trans[2][470]	= settr(2655,2,477,516,516,"needResched = 1", 1, 2, 0);
	trans[2][474]	= settr(2659,2,477,1,0,".(goto)", 1, 2, 0);
	trans[2][471]	= settr(2656,2,472,2,0,"else", 1, 2, 0);
	trans[2][472]	= settr(2657,2,477,517,517,"idx = (idx+1)", 1, 2, 0);
	trans[2][475]	= settr(2660,2,493,518,518,"((idx>=sortLink.count))", 1, 2, 0); /* m: 480 -> 493,0 */
	reached2[480] = 1;
	trans[2][476]	= settr(2661,2,480,1,0,"goto :b98", 1, 2, 0); /* m: 480 -> 0,493 */
	reached2[480] = 1;
	trans[2][479]	= settr(2664,2,480,1,0,"break", 1, 2, 0);
	trans[2][480]	= settr(2665,2,493,519,519,"interrupted_task = EP", 1, 2, 0);
	T = trans[2][493] = settr(2678,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(2678,2,481,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(2678,2,491,0,0,"IF", 1, 2, 0);
	trans[2][481]	= settr(2666,2,490,520,520,"((((interrupted_task>=1)&&(interrupted_task<=4))&&(tcb[interrupted_task].state!=2)))", 1, 2, 0); /* m: 482 -> 490,0 */
	reached2[482] = 1;
	trans[2][482]	= settr(0,0,0,0,0,"tcb[interrupted_task].state = 1",0,0,0);
	T = trans[ 2][490] = settr(2675,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(2675,0,488,0,0,"sub-sequence", 1, 2, 0);
	T = trans[2][488] = settr(2673,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(2673,2,483,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(2673,2,486,0,0,"IF", 1, 2, 0);
	trans[2][483]	= settr(2668,2,516,521,521,"((readyQueue[tcb[interrupted_task].prio].tailIndex<8))", 1, 2, 0); /* m: 484 -> 516,0 */
	reached2[484] = 1;
	trans[2][484]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tasks[readyQueue[tcb[interrupted_task].prio].tailIndex] = interrupted_task",0,0,0);
	trans[2][485]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tailIndex = (readyQueue[tcb[interrupted_task].prio].tailIndex+1)",0,0,0);
	trans[2][489]	= settr(2674,2,516,1,0,".(goto)", 1, 2, 0);
	trans[2][486]	= settr(2671,2,487,2,0,"else", 1, 2, 0);
	trans[2][487]	= settr(2672,2,516,522,0,"assert(0)", 1, 2, 0);
	trans[2][494]	= settr(2679,2,516,1,0,".(goto)", 1, 2, 0);
	trans[2][491]	= settr(2676,2,492,2,0,"else", 1, 2, 0);
	trans[2][492]	= settr(2677,2,516,1,0,"(1)", 1, 2, 0);
	T = trans[ 2][516] = settr(2701,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(2701,0,495,0,0,"sub-sequence", 1, 2, 0);
	trans[2][495]	= settr(2680,2,511,523,523,"prio = 0", 1, 2, 0); /* m: 496 -> 0,511 */
	reached2[496] = 1;
	trans[2][496]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[2][497]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[2][498]	= settr(0,0,0,0,0,"prio = 0",0,0,0);
	trans[2][499]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[2][500]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[2][512]	= settr(2697,2,511,1,0,".(goto)", 1, 2, 0);
	T = trans[2][511] = settr(2696,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(2696,2,501,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(2696,2,509,0,0,"DO", 1, 2, 0);
	trans[2][501]	= settr(2686,2,507,524,0,"(((prio<4)&&!(found)))", 1, 2, 0);
	T = trans[2][507] = settr(2692,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(2692,2,502,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(2692,2,505,0,0,"IF", 1, 2, 0);
	trans[2][502]	= settr(2687,2,511,525,525,"((readyQueue[prio].tailIndex>0))", 1, 2, 0); /* m: 503 -> 511,0 */
	reached2[503] = 1;
	trans[2][503]	= settr(0,0,0,0,0,"top_task = readyQueue[prio].tasks[0]",0,0,0);
	trans[2][504]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[2][508]	= settr(2693,2,511,1,0,".(goto)", 1, 2, 0);
	trans[2][505]	= settr(2690,2,506,2,0,"else", 1, 2, 0);
	trans[2][506]	= settr(2691,2,511,526,526,"prio = (prio+1)", 1, 2, 0);
	trans[2][509]	= settr(2694,2,534,527,527,"(((prio>=4)||found))", 1, 2, 0); /* m: 514 -> 534,0 */
	reached2[514] = 1;
	trans[2][510]	= settr(2695,2,514,1,0,"goto :b101", 1, 2, 0); /* m: 514 -> 0,534 */
	reached2[514] = 1;
	trans[2][513]	= settr(2698,2,514,1,0,"break", 1, 2, 0);
	trans[2][514]	= settr(2699,2,534,528,528,"newTask = top_task", 1, 2, 0); /* m: 515 -> 0,534 */
	reached2[515] = 1;
	trans[2][515]	= settr(0,0,0,0,0,"topPrio = prio",0,0,0);
	T = trans[ 2][534] = settr(2719,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(2719,0,517,0,0,"sub-sequence", 1, 2, 0);
	trans[2][517]	= settr(2702,2,524,529,529,"deq_idx = 0", 1, 2, 0); /* m: 518 -> 0,524 */
	reached2[518] = 1;
	trans[2][518]	= settr(0,0,0,0,0,"deq_idx = 0",0,0,0);
	trans[2][525]	= settr(2710,2,524,1,0,".(goto)", 1, 2, 0);
	T = trans[2][524] = settr(2709,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(2709,2,519,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(2709,2,522,0,0,"DO", 1, 2, 0);
	trans[2][519]	= settr(2704,2,524,530,530,"((deq_idx<(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0); /* m: 520 -> 524,0 */
	reached2[520] = 1;
	trans[2][520]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[deq_idx] = readyQueue[topPrio].tasks[(deq_idx+1)]",0,0,0);
	trans[2][521]	= settr(0,0,0,0,0,"deq_idx = (deq_idx+1)",0,0,0);
	trans[2][522]	= settr(2707,2,532,531,531,"((deq_idx>=(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0);
	trans[2][523]	= settr(2708,2,532,1,0,"goto :b102", 1, 2, 0);
	trans[2][526]	= settr(2711,2,532,1,0,"break", 1, 2, 0);
	T = trans[2][532] = settr(2717,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(2717,2,527,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(2717,2,530,0,0,"IF", 1, 2, 0);
	trans[2][527]	= settr(2712,2,538,532,532,"((readyQueue[topPrio].tailIndex>0))", 1, 2, 0); /* m: 528 -> 538,0 */
	reached2[528] = 1;
	trans[2][528]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)] = 255",0,0,0);
	trans[2][529]	= settr(0,0,0,0,0,"readyQueue[topPrio].tailIndex = (readyQueue[topPrio].tailIndex-1)",0,0,0);
	trans[2][533]	= settr(2718,2,535,1,0,".(goto)", 1, 2, 0); /* m: 535 -> 0,538 */
	reached2[535] = 1;
	trans[2][530]	= settr(2715,2,531,2,0,"else", 1, 2, 0);
	trans[2][531]	= settr(2716,2,538,533,533,"(1)", 1, 2, 0); /* m: 535 -> 538,0 */
	reached2[535] = 1;
	trans[2][535]	= settr(2720,2,538,534,534,"tcb[newTask].state = 4", 1, 2, 0); /* m: 536 -> 0,538 */
	reached2[536] = 1;
	trans[2][536]	= settr(0,0,0,0,0,"EP = newTask",0,0,0);
	T = trans[ 2][538] = settr(2723,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(2723,0,537,0,0,"sub-sequence", 1, 2, 0);
	trans[2][537]	= settr(2722,2,541,535,535,"int_ctrl_reg = int_save", 1, 2, 0);
	T = trans[ 2][541] = settr(2726,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(2726,0,540,0,0,"sub-sequence", 1, 2, 0);
	trans[2][540]	= settr(2725,2,674,536,536,"int_ctrl_reg = int_save", 1, 2, 0);
	trans[2][545]	= settr(2730,2,674,1,0,".(goto)", 1, 2, 0);
	trans[2][542]	= settr(2727,2,543,2,0,"else", 1, 2, 0);
	trans[2][543]	= settr(2728,2,674,1,0,"(1)", 1, 2, 0);
	T = trans[ 2][674] = settr(2859,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(2859,0,547,0,0,"sub-sequence", 1, 2, 0);
	trans[2][547]	= settr(2732,2,555,537,537,"interrupted_task = 0", 1, 2, 0); /* m: 548 -> 0,555 */
	reached2[548] = 1;
	trans[2][548]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[2][549]	= settr(0,0,0,0,0,"taskId = 0",0,0,0);
	trans[2][550]	= settr(0,0,0,0,0,"needResched = 0",0,0,0);
	trans[2][551]	= settr(0,0,0,0,0,"interrupted_task = 0",0,0,0);
	trans[2][552]	= settr(0,0,0,0,0,"needResched = 0",0,0,0);
	T = trans[ 2][555] = settr(2740,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(2740,0,553,0,0,"sub-sequence", 1, 2, 0);
	trans[2][553]	= settr(2738,2,612,538,538,"int_save = int_ctrl_reg", 1, 2, 0); /* m: 554 -> 0,612 */
	reached2[554] = 1;
	trans[2][554]	= settr(0,0,0,0,0,"int_ctrl_reg = 1",0,0,0);
	trans[2][556]	= settr(0,0,0,0,0,"tickCount = (tickCount+1)",0,0,0);
	trans[2][557]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[2][613]	= settr(2798,2,612,1,0,".(goto)", 1, 2, 0);
	T = trans[2][612] = settr(2797,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(2797,2,558,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(2797,2,610,0,0,"DO", 1, 2, 0);
	trans[2][558]	= settr(2743,2,608,539,539,"((idx<sortLink.count))", 1, 2, 0); /* m: 559 -> 608,0 */
	reached2[559] = 1;
	trans[2][559]	= settr(0,0,0,0,0,"taskId = sortLink.tasks[idx]",0,0,0);
	T = trans[2][608] = settr(2793,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(2793,2,560,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(2793,2,606,0,0,"IF", 1, 2, 0);
	trans[2][560]	= settr(2745,2,596,540,540,"(((tcb[taskId].state==2)&&(tickCount>=tcb[taskId].wakeupTime)))", 1, 2, 0); /* m: 561 -> 596,0 */
	reached2[561] = 1;
	trans[2][561]	= settr(0,0,0,0,0,"tcb[taskId].state = 1",0,0,0);
	trans[2][562]	= settr(0,0,0,0,0,"tcb[taskId].delayTicks = 0",0,0,0);
	T = trans[ 2][596] = settr(2781,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(2781,0,563,0,0,"sub-sequence", 1, 2, 0);
	trans[2][563]	= settr(2748,2,577,541,541,"removePos = 0", 1, 2, 0); /* m: 564 -> 0,577 */
	reached2[564] = 1;
	trans[2][564]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[2][565]	= settr(0,0,0,0,0,"shiftIdx = 0",0,0,0);
	trans[2][566]	= settr(0,0,0,0,0,"removePos = 0",0,0,0);
	trans[2][567]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[2][578]	= settr(2763,2,577,1,0,".(goto)", 1, 2, 0);
	T = trans[2][577] = settr(2762,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(2762,2,568,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(2762,2,575,0,0,"DO", 1, 2, 0);
	trans[2][568]	= settr(2753,2,573,542,0,"(((removePos<sortLink.count)&&!(found)))", 1, 2, 0);
	T = trans[2][573] = settr(2758,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(2758,2,569,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(2758,2,571,0,0,"IF", 1, 2, 0);
	trans[2][569]	= settr(2754,2,577,543,543,"((sortLink.tasks[removePos]==taskId))", 1, 2, 0); /* m: 570 -> 577,0 */
	reached2[570] = 1;
	trans[2][570]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[2][574]	= settr(2759,2,577,1,0,".(goto)", 1, 2, 0);
	trans[2][571]	= settr(2756,2,572,2,0,"else", 1, 2, 0);
	trans[2][572]	= settr(2757,2,577,544,544,"removePos = (removePos+1)", 1, 2, 0);
	trans[2][575]	= settr(2760,2,594,2,0,"else", 1, 2, 0);
	trans[2][576]	= settr(2761,2,594,1,0,"goto :b104", 1, 2, 0);
	trans[2][579]	= settr(2764,2,594,1,0,"break", 1, 2, 0);
	T = trans[2][594] = settr(2779,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(2779,2,580,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(2779,2,592,0,0,"IF", 1, 2, 0);
	trans[2][580]	= settr(2765,2,587,545,545,"((found==1))", 1, 2, 0); /* m: 581 -> 587,0 */
	reached2[581] = 1;
	trans[2][581]	= settr(0,0,0,0,0,"shiftIdx = removePos",0,0,0);
	trans[2][588]	= settr(2773,2,587,1,0,".(goto)", 1, 2, 0);
	T = trans[2][587] = settr(2772,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(2772,2,582,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(2772,2,585,0,0,"DO", 1, 2, 0);
	trans[2][582]	= settr(2767,2,587,546,546,"((shiftIdx<(sortLink.count-1)))", 1, 2, 0); /* m: 583 -> 587,0 */
	reached2[583] = 1;
	trans[2][583]	= settr(0,0,0,0,0,"sortLink.tasks[shiftIdx] = sortLink.tasks[(shiftIdx+1)]",0,0,0);
	trans[2][584]	= settr(0,0,0,0,0,"shiftIdx = (shiftIdx+1)",0,0,0);
	trans[2][585]	= settr(2770,2,604,547,547,"((shiftIdx>=(sortLink.count-1)))", 1, 2, 0); /* m: 590 -> 604,0 */
	reached2[590] = 1;
	trans[2][586]	= settr(2771,2,590,1,0,"goto :b105", 1, 2, 0); /* m: 590 -> 0,604 */
	reached2[590] = 1;
	trans[2][589]	= settr(2774,2,590,1,0,"break", 1, 2, 0);
	trans[2][590]	= settr(2775,2,604,548,548,"sortLink.tasks[(sortLink.count-1)] = 255", 1, 2, 0); /* m: 591 -> 0,604 */
	reached2[591] = 1;
	trans[2][591]	= settr(0,0,0,0,0,"sortLink.count = (sortLink.count-1)",0,0,0);
	trans[2][595]	= settr(2780,2,604,1,0,".(goto)", 1, 2, 0);
	trans[2][592]	= settr(2777,2,593,2,0,"else", 1, 2, 0);
	trans[2][593]	= settr(2778,2,604,1,0,"(1)", 1, 2, 0);
	T = trans[ 2][604] = settr(2789,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(2789,0,602,0,0,"sub-sequence", 1, 2, 0);
	T = trans[2][602] = settr(2787,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(2787,2,597,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(2787,2,600,0,0,"IF", 1, 2, 0);
	trans[2][597]	= settr(2782,2,612,549,549,"((readyQueue[tcb[taskId].prio].tailIndex<8))", 1, 2, 0); /* m: 598 -> 612,0 */
	reached2[598] = 1;
	trans[2][598]	= settr(0,0,0,0,0,"readyQueue[tcb[taskId].prio].tasks[readyQueue[tcb[taskId].prio].tailIndex] = taskId",0,0,0);
	trans[2][599]	= settr(0,0,0,0,0,"readyQueue[tcb[taskId].prio].tailIndex = (readyQueue[tcb[taskId].prio].tailIndex+1)",0,0,0);
	trans[2][603]	= settr(2788,2,605,1,0,".(goto)", 1, 2, 0); /* m: 605 -> 0,612 */
	reached2[605] = 1;
	trans[2][600]	= settr(2785,2,601,2,0,"else", 1, 2, 0);
	trans[2][601]	= settr(2786,2,612,550,550,"assert(0)", 1, 2, 0); /* m: 605 -> 0,612 */
	reached2[605] = 1;
	trans[2][605]	= settr(2790,2,612,551,551,"needResched = 1", 1, 2, 0);
	trans[2][609]	= settr(2794,2,612,1,0,".(goto)", 1, 2, 0);
	trans[2][606]	= settr(2791,2,607,2,0,"else", 1, 2, 0);
	trans[2][607]	= settr(2792,2,612,552,552,"idx = (idx+1)", 1, 2, 0);
	trans[2][610]	= settr(2795,2,628,553,553,"((idx>=sortLink.count))", 1, 2, 0); /* m: 615 -> 628,0 */
	reached2[615] = 1;
	trans[2][611]	= settr(2796,2,615,1,0,"goto :b103", 1, 2, 0); /* m: 615 -> 0,628 */
	reached2[615] = 1;
	trans[2][614]	= settr(2799,2,615,1,0,"break", 1, 2, 0);
	trans[2][615]	= settr(2800,2,628,554,554,"interrupted_task = EP", 1, 2, 0);
	T = trans[2][628] = settr(2813,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(2813,2,616,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(2813,2,626,0,0,"IF", 1, 2, 0);
	trans[2][616]	= settr(2801,2,625,555,555,"((((interrupted_task>=1)&&(interrupted_task<=4))&&(tcb[interrupted_task].state!=2)))", 1, 2, 0); /* m: 617 -> 625,0 */
	reached2[617] = 1;
	trans[2][617]	= settr(0,0,0,0,0,"tcb[interrupted_task].state = 1",0,0,0);
	T = trans[ 2][625] = settr(2810,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(2810,0,623,0,0,"sub-sequence", 1, 2, 0);
	T = trans[2][623] = settr(2808,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(2808,2,618,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(2808,2,621,0,0,"IF", 1, 2, 0);
	trans[2][618]	= settr(2803,2,651,556,556,"((readyQueue[tcb[interrupted_task].prio].tailIndex<8))", 1, 2, 0); /* m: 619 -> 651,0 */
	reached2[619] = 1;
	trans[2][619]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tasks[readyQueue[tcb[interrupted_task].prio].tailIndex] = interrupted_task",0,0,0);
	trans[2][620]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tailIndex = (readyQueue[tcb[interrupted_task].prio].tailIndex+1)",0,0,0);
	trans[2][624]	= settr(2809,2,651,1,0,".(goto)", 1, 2, 0);
	trans[2][621]	= settr(2806,2,622,2,0,"else", 1, 2, 0);
	trans[2][622]	= settr(2807,2,651,557,0,"assert(0)", 1, 2, 0);
	trans[2][629]	= settr(2814,2,651,1,0,".(goto)", 1, 2, 0);
	trans[2][626]	= settr(2811,2,627,2,0,"else", 1, 2, 0);
	trans[2][627]	= settr(2812,2,651,1,0,"(1)", 1, 2, 0);
	T = trans[ 2][651] = settr(2836,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(2836,0,630,0,0,"sub-sequence", 1, 2, 0);
	trans[2][630]	= settr(2815,2,646,558,558,"prio = 0", 1, 2, 0); /* m: 631 -> 0,646 */
	reached2[631] = 1;
	trans[2][631]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[2][632]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[2][633]	= settr(0,0,0,0,0,"prio = 0",0,0,0);
	trans[2][634]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[2][635]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[2][647]	= settr(2832,2,646,1,0,".(goto)", 1, 2, 0);
	T = trans[2][646] = settr(2831,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(2831,2,636,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(2831,2,644,0,0,"DO", 1, 2, 0);
	trans[2][636]	= settr(2821,2,642,559,0,"(((prio<4)&&!(found)))", 1, 2, 0);
	T = trans[2][642] = settr(2827,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(2827,2,637,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(2827,2,640,0,0,"IF", 1, 2, 0);
	trans[2][637]	= settr(2822,2,646,560,560,"((readyQueue[prio].tailIndex>0))", 1, 2, 0); /* m: 638 -> 646,0 */
	reached2[638] = 1;
	trans[2][638]	= settr(0,0,0,0,0,"top_task = readyQueue[prio].tasks[0]",0,0,0);
	trans[2][639]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[2][643]	= settr(2828,2,646,1,0,".(goto)", 1, 2, 0);
	trans[2][640]	= settr(2825,2,641,2,0,"else", 1, 2, 0);
	trans[2][641]	= settr(2826,2,646,561,561,"prio = (prio+1)", 1, 2, 0);
	trans[2][644]	= settr(2829,2,669,562,562,"(((prio>=4)||found))", 1, 2, 0); /* m: 649 -> 669,0 */
	reached2[649] = 1;
	trans[2][645]	= settr(2830,2,649,1,0,"goto :b106", 1, 2, 0); /* m: 649 -> 0,669 */
	reached2[649] = 1;
	trans[2][648]	= settr(2833,2,649,1,0,"break", 1, 2, 0);
	trans[2][649]	= settr(2834,2,669,563,563,"newTask = top_task", 1, 2, 0); /* m: 650 -> 0,669 */
	reached2[650] = 1;
	trans[2][650]	= settr(0,0,0,0,0,"topPrio = prio",0,0,0);
	T = trans[ 2][669] = settr(2854,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(2854,0,652,0,0,"sub-sequence", 1, 2, 0);
	trans[2][652]	= settr(2837,2,659,564,564,"deq_idx = 0", 1, 2, 0); /* m: 653 -> 0,659 */
	reached2[653] = 1;
	trans[2][653]	= settr(0,0,0,0,0,"deq_idx = 0",0,0,0);
	trans[2][660]	= settr(2845,2,659,1,0,".(goto)", 1, 2, 0);
	T = trans[2][659] = settr(2844,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(2844,2,654,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(2844,2,657,0,0,"DO", 1, 2, 0);
	trans[2][654]	= settr(2839,2,659,565,565,"((deq_idx<(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0); /* m: 655 -> 659,0 */
	reached2[655] = 1;
	trans[2][655]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[deq_idx] = readyQueue[topPrio].tasks[(deq_idx+1)]",0,0,0);
	trans[2][656]	= settr(0,0,0,0,0,"deq_idx = (deq_idx+1)",0,0,0);
	trans[2][657]	= settr(2842,2,667,566,566,"((deq_idx>=(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0);
	trans[2][658]	= settr(2843,2,667,1,0,"goto :b107", 1, 2, 0);
	trans[2][661]	= settr(2846,2,667,1,0,"break", 1, 2, 0);
	T = trans[2][667] = settr(2852,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(2852,2,662,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(2852,2,665,0,0,"IF", 1, 2, 0);
	trans[2][662]	= settr(2847,2,673,567,567,"((readyQueue[topPrio].tailIndex>0))", 1, 2, 0); /* m: 663 -> 673,0 */
	reached2[663] = 1;
	trans[2][663]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)] = 255",0,0,0);
	trans[2][664]	= settr(0,0,0,0,0,"readyQueue[topPrio].tailIndex = (readyQueue[topPrio].tailIndex-1)",0,0,0);
	trans[2][668]	= settr(2853,2,670,1,0,".(goto)", 1, 2, 0); /* m: 670 -> 0,673 */
	reached2[670] = 1;
	trans[2][665]	= settr(2850,2,666,2,0,"else", 1, 2, 0);
	trans[2][666]	= settr(2851,2,673,568,568,"(1)", 1, 2, 0); /* m: 670 -> 673,0 */
	reached2[670] = 1;
	trans[2][670]	= settr(2855,2,673,569,569,"tcb[newTask].state = 4", 1, 2, 0); /* m: 671 -> 0,673 */
	reached2[671] = 1;
	trans[2][671]	= settr(0,0,0,0,0,"EP = newTask",0,0,0);
	T = trans[ 2][673] = settr(2858,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(2858,0,672,0,0,"sub-sequence", 1, 2, 0);
	trans[2][672]	= settr(2857,0,1090,570,570,"int_ctrl_reg = int_save", 1, 2, 0);
	T = trans[ 2][957] = settr(3142,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(3142,2,676,0,0,"ATOMIC", 1, 2, 0);
	trans[2][676]	= settr(2861,2,828,571,0,"((EP==3))", 1, 2, 0);
	T = trans[ 2][828] = settr(3013,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(3013,0,677,0,0,"sub-sequence", 1, 2, 0);
	trans[2][677]	= settr(2862,2,826,572,572,"currentTask = 0", 1, 2, 0);
	T = trans[2][826] = settr(3011,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(3011,2,678,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(3011,2,824,0,0,"IF", 1, 2, 0);
	trans[2][678]	= settr(2863,2,681,573,0,"((((4>0)&&(EP>=1))&&(EP<=4)))", 1, 2, 0);
	T = trans[ 2][681] = settr(2866,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(2866,0,679,0,0,"sub-sequence", 1, 2, 0);
	trans[2][679]	= settr(2864,2,693,574,574,"int_save = int_ctrl_reg", 1, 2, 0); /* m: 680 -> 0,693 */
	reached2[680] = 1;
	trans[2][680]	= settr(0,0,0,0,0,"int_ctrl_reg = 1",0,0,0);
	trans[2][682]	= settr(0,0,0,0,0,"currentTask = EP",0,0,0);
	trans[2][683]	= settr(0,0,0,0,0,"tcb[currentTask].state = 2",0,0,0);
	trans[2][684]	= settr(0,0,0,0,0,"tcb[currentTask].wakeupTime = (tickCount+4)",0,0,0);
	trans[2][685]	= settr(0,0,0,0,0,"tcb[currentTask].delayTicks = 4",0,0,0);
	T = trans[ 2][693] = settr(2878,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(2878,0,691,0,0,"sub-sequence", 1, 2, 0);
	T = trans[2][691] = settr(2876,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(2876,2,686,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(2876,2,689,0,0,"IF", 1, 2, 0);
	trans[2][686]	= settr(2871,2,821,575,575,"((sortLink.count<8))", 1, 2, 0); /* m: 687 -> 821,0 */
	reached2[687] = 1;
	trans[2][687]	= settr(0,0,0,0,0,"sortLink.tasks[sortLink.count] = currentTask",0,0,0);
	trans[2][688]	= settr(0,0,0,0,0,"sortLink.count = (sortLink.count+1)",0,0,0);
	trans[2][692]	= settr(2877,2,821,1,0,".(goto)", 1, 2, 0);
	trans[2][689]	= settr(2874,2,690,2,0,"else", 1, 2, 0);
	trans[2][690]	= settr(2875,2,821,576,0,"assert(0)", 1, 2, 0);
	T = trans[ 2][821] = settr(3006,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(3006,0,694,0,0,"sub-sequence", 1, 2, 0);
	trans[2][694]	= settr(2879,2,702,577,577,"interrupted_task = 0", 1, 2, 0); /* m: 695 -> 0,702 */
	reached2[695] = 1;
	trans[2][695]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[2][696]	= settr(0,0,0,0,0,"taskId = 0",0,0,0);
	trans[2][697]	= settr(0,0,0,0,0,"needResched = 0",0,0,0);
	trans[2][698]	= settr(0,0,0,0,0,"interrupted_task = 0",0,0,0);
	trans[2][699]	= settr(0,0,0,0,0,"needResched = 0",0,0,0);
	T = trans[ 2][702] = settr(2887,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(2887,0,700,0,0,"sub-sequence", 1, 2, 0);
	trans[2][700]	= settr(2885,2,759,578,578,"int_save = int_ctrl_reg", 1, 2, 0); /* m: 701 -> 0,759 */
	reached2[701] = 1;
	trans[2][701]	= settr(0,0,0,0,0,"int_ctrl_reg = 1",0,0,0);
	trans[2][703]	= settr(0,0,0,0,0,"tickCount = (tickCount+1)",0,0,0);
	trans[2][704]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[2][760]	= settr(2945,2,759,1,0,".(goto)", 1, 2, 0);
	T = trans[2][759] = settr(2944,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(2944,2,705,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(2944,2,757,0,0,"DO", 1, 2, 0);
	trans[2][705]	= settr(2890,2,755,579,579,"((idx<sortLink.count))", 1, 2, 0); /* m: 706 -> 755,0 */
	reached2[706] = 1;
	trans[2][706]	= settr(0,0,0,0,0,"taskId = sortLink.tasks[idx]",0,0,0);
	T = trans[2][755] = settr(2940,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(2940,2,707,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(2940,2,753,0,0,"IF", 1, 2, 0);
	trans[2][707]	= settr(2892,2,743,580,580,"(((tcb[taskId].state==2)&&(tickCount>=tcb[taskId].wakeupTime)))", 1, 2, 0); /* m: 708 -> 743,0 */
	reached2[708] = 1;
	trans[2][708]	= settr(0,0,0,0,0,"tcb[taskId].state = 1",0,0,0);
	trans[2][709]	= settr(0,0,0,0,0,"tcb[taskId].delayTicks = 0",0,0,0);
	T = trans[ 2][743] = settr(2928,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(2928,0,710,0,0,"sub-sequence", 1, 2, 0);
	trans[2][710]	= settr(2895,2,724,581,581,"removePos = 0", 1, 2, 0); /* m: 711 -> 0,724 */
	reached2[711] = 1;
	trans[2][711]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[2][712]	= settr(0,0,0,0,0,"shiftIdx = 0",0,0,0);
	trans[2][713]	= settr(0,0,0,0,0,"removePos = 0",0,0,0);
	trans[2][714]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[2][725]	= settr(2910,2,724,1,0,".(goto)", 1, 2, 0);
	T = trans[2][724] = settr(2909,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(2909,2,715,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(2909,2,722,0,0,"DO", 1, 2, 0);
	trans[2][715]	= settr(2900,2,720,582,0,"(((removePos<sortLink.count)&&!(found)))", 1, 2, 0);
	T = trans[2][720] = settr(2905,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(2905,2,716,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(2905,2,718,0,0,"IF", 1, 2, 0);
	trans[2][716]	= settr(2901,2,724,583,583,"((sortLink.tasks[removePos]==taskId))", 1, 2, 0); /* m: 717 -> 724,0 */
	reached2[717] = 1;
	trans[2][717]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[2][721]	= settr(2906,2,724,1,0,".(goto)", 1, 2, 0);
	trans[2][718]	= settr(2903,2,719,2,0,"else", 1, 2, 0);
	trans[2][719]	= settr(2904,2,724,584,584,"removePos = (removePos+1)", 1, 2, 0);
	trans[2][722]	= settr(2907,2,741,2,0,"else", 1, 2, 0);
	trans[2][723]	= settr(2908,2,741,1,0,"goto :b109", 1, 2, 0);
	trans[2][726]	= settr(2911,2,741,1,0,"break", 1, 2, 0);
	T = trans[2][741] = settr(2926,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(2926,2,727,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(2926,2,739,0,0,"IF", 1, 2, 0);
	trans[2][727]	= settr(2912,2,734,585,585,"((found==1))", 1, 2, 0); /* m: 728 -> 734,0 */
	reached2[728] = 1;
	trans[2][728]	= settr(0,0,0,0,0,"shiftIdx = removePos",0,0,0);
	trans[2][735]	= settr(2920,2,734,1,0,".(goto)", 1, 2, 0);
	T = trans[2][734] = settr(2919,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(2919,2,729,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(2919,2,732,0,0,"DO", 1, 2, 0);
	trans[2][729]	= settr(2914,2,734,586,586,"((shiftIdx<(sortLink.count-1)))", 1, 2, 0); /* m: 730 -> 734,0 */
	reached2[730] = 1;
	trans[2][730]	= settr(0,0,0,0,0,"sortLink.tasks[shiftIdx] = sortLink.tasks[(shiftIdx+1)]",0,0,0);
	trans[2][731]	= settr(0,0,0,0,0,"shiftIdx = (shiftIdx+1)",0,0,0);
	trans[2][732]	= settr(2917,2,751,587,587,"((shiftIdx>=(sortLink.count-1)))", 1, 2, 0); /* m: 737 -> 751,0 */
	reached2[737] = 1;
	trans[2][733]	= settr(2918,2,737,1,0,"goto :b110", 1, 2, 0); /* m: 737 -> 0,751 */
	reached2[737] = 1;
	trans[2][736]	= settr(2921,2,737,1,0,"break", 1, 2, 0);
	trans[2][737]	= settr(2922,2,751,588,588,"sortLink.tasks[(sortLink.count-1)] = 255", 1, 2, 0); /* m: 738 -> 0,751 */
	reached2[738] = 1;
	trans[2][738]	= settr(0,0,0,0,0,"sortLink.count = (sortLink.count-1)",0,0,0);
	trans[2][742]	= settr(2927,2,751,1,0,".(goto)", 1, 2, 0);
	trans[2][739]	= settr(2924,2,740,2,0,"else", 1, 2, 0);
	trans[2][740]	= settr(2925,2,751,1,0,"(1)", 1, 2, 0);
	T = trans[ 2][751] = settr(2936,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(2936,0,749,0,0,"sub-sequence", 1, 2, 0);
	T = trans[2][749] = settr(2934,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(2934,2,744,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(2934,2,747,0,0,"IF", 1, 2, 0);
	trans[2][744]	= settr(2929,2,759,589,589,"((readyQueue[tcb[taskId].prio].tailIndex<8))", 1, 2, 0); /* m: 745 -> 759,0 */
	reached2[745] = 1;
	trans[2][745]	= settr(0,0,0,0,0,"readyQueue[tcb[taskId].prio].tasks[readyQueue[tcb[taskId].prio].tailIndex] = taskId",0,0,0);
	trans[2][746]	= settr(0,0,0,0,0,"readyQueue[tcb[taskId].prio].tailIndex = (readyQueue[tcb[taskId].prio].tailIndex+1)",0,0,0);
	trans[2][750]	= settr(2935,2,752,1,0,".(goto)", 1, 2, 0); /* m: 752 -> 0,759 */
	reached2[752] = 1;
	trans[2][747]	= settr(2932,2,748,2,0,"else", 1, 2, 0);
	trans[2][748]	= settr(2933,2,759,590,590,"assert(0)", 1, 2, 0); /* m: 752 -> 0,759 */
	reached2[752] = 1;
	trans[2][752]	= settr(2937,2,759,591,591,"needResched = 1", 1, 2, 0);
	trans[2][756]	= settr(2941,2,759,1,0,".(goto)", 1, 2, 0);
	trans[2][753]	= settr(2938,2,754,2,0,"else", 1, 2, 0);
	trans[2][754]	= settr(2939,2,759,592,592,"idx = (idx+1)", 1, 2, 0);
	trans[2][757]	= settr(2942,2,775,593,593,"((idx>=sortLink.count))", 1, 2, 0); /* m: 762 -> 775,0 */
	reached2[762] = 1;
	trans[2][758]	= settr(2943,2,762,1,0,"goto :b108", 1, 2, 0); /* m: 762 -> 0,775 */
	reached2[762] = 1;
	trans[2][761]	= settr(2946,2,762,1,0,"break", 1, 2, 0);
	trans[2][762]	= settr(2947,2,775,594,594,"interrupted_task = EP", 1, 2, 0);
	T = trans[2][775] = settr(2960,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(2960,2,763,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(2960,2,773,0,0,"IF", 1, 2, 0);
	trans[2][763]	= settr(2948,2,772,595,595,"((((interrupted_task>=1)&&(interrupted_task<=4))&&(tcb[interrupted_task].state!=2)))", 1, 2, 0); /* m: 764 -> 772,0 */
	reached2[764] = 1;
	trans[2][764]	= settr(0,0,0,0,0,"tcb[interrupted_task].state = 1",0,0,0);
	T = trans[ 2][772] = settr(2957,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(2957,0,770,0,0,"sub-sequence", 1, 2, 0);
	T = trans[2][770] = settr(2955,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(2955,2,765,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(2955,2,768,0,0,"IF", 1, 2, 0);
	trans[2][765]	= settr(2950,2,798,596,596,"((readyQueue[tcb[interrupted_task].prio].tailIndex<8))", 1, 2, 0); /* m: 766 -> 798,0 */
	reached2[766] = 1;
	trans[2][766]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tasks[readyQueue[tcb[interrupted_task].prio].tailIndex] = interrupted_task",0,0,0);
	trans[2][767]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tailIndex = (readyQueue[tcb[interrupted_task].prio].tailIndex+1)",0,0,0);
	trans[2][771]	= settr(2956,2,798,1,0,".(goto)", 1, 2, 0);
	trans[2][768]	= settr(2953,2,769,2,0,"else", 1, 2, 0);
	trans[2][769]	= settr(2954,2,798,597,0,"assert(0)", 1, 2, 0);
	trans[2][776]	= settr(2961,2,798,1,0,".(goto)", 1, 2, 0);
	trans[2][773]	= settr(2958,2,774,2,0,"else", 1, 2, 0);
	trans[2][774]	= settr(2959,2,798,1,0,"(1)", 1, 2, 0);
	T = trans[ 2][798] = settr(2983,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(2983,0,777,0,0,"sub-sequence", 1, 2, 0);
	trans[2][777]	= settr(2962,2,793,598,598,"prio = 0", 1, 2, 0); /* m: 778 -> 0,793 */
	reached2[778] = 1;
	trans[2][778]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[2][779]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[2][780]	= settr(0,0,0,0,0,"prio = 0",0,0,0);
	trans[2][781]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[2][782]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[2][794]	= settr(2979,2,793,1,0,".(goto)", 1, 2, 0);
	T = trans[2][793] = settr(2978,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(2978,2,783,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(2978,2,791,0,0,"DO", 1, 2, 0);
	trans[2][783]	= settr(2968,2,789,599,0,"(((prio<4)&&!(found)))", 1, 2, 0);
	T = trans[2][789] = settr(2974,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(2974,2,784,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(2974,2,787,0,0,"IF", 1, 2, 0);
	trans[2][784]	= settr(2969,2,793,600,600,"((readyQueue[prio].tailIndex>0))", 1, 2, 0); /* m: 785 -> 793,0 */
	reached2[785] = 1;
	trans[2][785]	= settr(0,0,0,0,0,"top_task = readyQueue[prio].tasks[0]",0,0,0);
	trans[2][786]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[2][790]	= settr(2975,2,793,1,0,".(goto)", 1, 2, 0);
	trans[2][787]	= settr(2972,2,788,2,0,"else", 1, 2, 0);
	trans[2][788]	= settr(2973,2,793,601,601,"prio = (prio+1)", 1, 2, 0);
	trans[2][791]	= settr(2976,2,816,602,602,"(((prio>=4)||found))", 1, 2, 0); /* m: 796 -> 816,0 */
	reached2[796] = 1;
	trans[2][792]	= settr(2977,2,796,1,0,"goto :b111", 1, 2, 0); /* m: 796 -> 0,816 */
	reached2[796] = 1;
	trans[2][795]	= settr(2980,2,796,1,0,"break", 1, 2, 0);
	trans[2][796]	= settr(2981,2,816,603,603,"newTask = top_task", 1, 2, 0); /* m: 797 -> 0,816 */
	reached2[797] = 1;
	trans[2][797]	= settr(0,0,0,0,0,"topPrio = prio",0,0,0);
	T = trans[ 2][816] = settr(3001,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(3001,0,799,0,0,"sub-sequence", 1, 2, 0);
	trans[2][799]	= settr(2984,2,806,604,604,"deq_idx = 0", 1, 2, 0); /* m: 800 -> 0,806 */
	reached2[800] = 1;
	trans[2][800]	= settr(0,0,0,0,0,"deq_idx = 0",0,0,0);
	trans[2][807]	= settr(2992,2,806,1,0,".(goto)", 1, 2, 0);
	T = trans[2][806] = settr(2991,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(2991,2,801,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(2991,2,804,0,0,"DO", 1, 2, 0);
	trans[2][801]	= settr(2986,2,806,605,605,"((deq_idx<(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0); /* m: 802 -> 806,0 */
	reached2[802] = 1;
	trans[2][802]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[deq_idx] = readyQueue[topPrio].tasks[(deq_idx+1)]",0,0,0);
	trans[2][803]	= settr(0,0,0,0,0,"deq_idx = (deq_idx+1)",0,0,0);
	trans[2][804]	= settr(2989,2,814,606,606,"((deq_idx>=(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0);
	trans[2][805]	= settr(2990,2,814,1,0,"goto :b112", 1, 2, 0);
	trans[2][808]	= settr(2993,2,814,1,0,"break", 1, 2, 0);
	T = trans[2][814] = settr(2999,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(2999,2,809,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(2999,2,812,0,0,"IF", 1, 2, 0);
	trans[2][809]	= settr(2994,2,820,607,607,"((readyQueue[topPrio].tailIndex>0))", 1, 2, 0); /* m: 810 -> 820,0 */
	reached2[810] = 1;
	trans[2][810]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)] = 255",0,0,0);
	trans[2][811]	= settr(0,0,0,0,0,"readyQueue[topPrio].tailIndex = (readyQueue[topPrio].tailIndex-1)",0,0,0);
	trans[2][815]	= settr(3000,2,817,1,0,".(goto)", 1, 2, 0); /* m: 817 -> 0,820 */
	reached2[817] = 1;
	trans[2][812]	= settr(2997,2,813,2,0,"else", 1, 2, 0);
	trans[2][813]	= settr(2998,2,820,608,608,"(1)", 1, 2, 0); /* m: 817 -> 820,0 */
	reached2[817] = 1;
	trans[2][817]	= settr(3002,2,820,609,609,"tcb[newTask].state = 4", 1, 2, 0); /* m: 818 -> 0,820 */
	reached2[818] = 1;
	trans[2][818]	= settr(0,0,0,0,0,"EP = newTask",0,0,0);
	T = trans[ 2][820] = settr(3005,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(3005,0,819,0,0,"sub-sequence", 1, 2, 0);
	trans[2][819]	= settr(3004,2,823,610,610,"int_ctrl_reg = int_save", 1, 2, 0);
	T = trans[ 2][823] = settr(3008,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(3008,0,822,0,0,"sub-sequence", 1, 2, 0);
	trans[2][822]	= settr(3007,2,956,611,611,"int_ctrl_reg = int_save", 1, 2, 0);
	trans[2][827]	= settr(3012,2,956,1,0,".(goto)", 1, 2, 0);
	trans[2][824]	= settr(3009,2,825,2,0,"else", 1, 2, 0);
	trans[2][825]	= settr(3010,2,956,1,0,"(1)", 1, 2, 0);
	T = trans[ 2][956] = settr(3141,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(3141,0,829,0,0,"sub-sequence", 1, 2, 0);
	trans[2][829]	= settr(3014,2,837,612,612,"interrupted_task = 0", 1, 2, 0); /* m: 830 -> 0,837 */
	reached2[830] = 1;
	trans[2][830]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[2][831]	= settr(0,0,0,0,0,"taskId = 0",0,0,0);
	trans[2][832]	= settr(0,0,0,0,0,"needResched = 0",0,0,0);
	trans[2][833]	= settr(0,0,0,0,0,"interrupted_task = 0",0,0,0);
	trans[2][834]	= settr(0,0,0,0,0,"needResched = 0",0,0,0);
	T = trans[ 2][837] = settr(3022,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(3022,0,835,0,0,"sub-sequence", 1, 2, 0);
	trans[2][835]	= settr(3020,2,894,613,613,"int_save = int_ctrl_reg", 1, 2, 0); /* m: 836 -> 0,894 */
	reached2[836] = 1;
	trans[2][836]	= settr(0,0,0,0,0,"int_ctrl_reg = 1",0,0,0);
	trans[2][838]	= settr(0,0,0,0,0,"tickCount = (tickCount+1)",0,0,0);
	trans[2][839]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[2][895]	= settr(3080,2,894,1,0,".(goto)", 1, 2, 0);
	T = trans[2][894] = settr(3079,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(3079,2,840,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(3079,2,892,0,0,"DO", 1, 2, 0);
	trans[2][840]	= settr(3025,2,890,614,614,"((idx<sortLink.count))", 1, 2, 0); /* m: 841 -> 890,0 */
	reached2[841] = 1;
	trans[2][841]	= settr(0,0,0,0,0,"taskId = sortLink.tasks[idx]",0,0,0);
	T = trans[2][890] = settr(3075,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(3075,2,842,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(3075,2,888,0,0,"IF", 1, 2, 0);
	trans[2][842]	= settr(3027,2,878,615,615,"(((tcb[taskId].state==2)&&(tickCount>=tcb[taskId].wakeupTime)))", 1, 2, 0); /* m: 843 -> 878,0 */
	reached2[843] = 1;
	trans[2][843]	= settr(0,0,0,0,0,"tcb[taskId].state = 1",0,0,0);
	trans[2][844]	= settr(0,0,0,0,0,"tcb[taskId].delayTicks = 0",0,0,0);
	T = trans[ 2][878] = settr(3063,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(3063,0,845,0,0,"sub-sequence", 1, 2, 0);
	trans[2][845]	= settr(3030,2,859,616,616,"removePos = 0", 1, 2, 0); /* m: 846 -> 0,859 */
	reached2[846] = 1;
	trans[2][846]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[2][847]	= settr(0,0,0,0,0,"shiftIdx = 0",0,0,0);
	trans[2][848]	= settr(0,0,0,0,0,"removePos = 0",0,0,0);
	trans[2][849]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[2][860]	= settr(3045,2,859,1,0,".(goto)", 1, 2, 0);
	T = trans[2][859] = settr(3044,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(3044,2,850,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(3044,2,857,0,0,"DO", 1, 2, 0);
	trans[2][850]	= settr(3035,2,855,617,0,"(((removePos<sortLink.count)&&!(found)))", 1, 2, 0);
	T = trans[2][855] = settr(3040,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(3040,2,851,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(3040,2,853,0,0,"IF", 1, 2, 0);
	trans[2][851]	= settr(3036,2,859,618,618,"((sortLink.tasks[removePos]==taskId))", 1, 2, 0); /* m: 852 -> 859,0 */
	reached2[852] = 1;
	trans[2][852]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[2][856]	= settr(3041,2,859,1,0,".(goto)", 1, 2, 0);
	trans[2][853]	= settr(3038,2,854,2,0,"else", 1, 2, 0);
	trans[2][854]	= settr(3039,2,859,619,619,"removePos = (removePos+1)", 1, 2, 0);
	trans[2][857]	= settr(3042,2,876,2,0,"else", 1, 2, 0);
	trans[2][858]	= settr(3043,2,876,1,0,"goto :b114", 1, 2, 0);
	trans[2][861]	= settr(3046,2,876,1,0,"break", 1, 2, 0);
	T = trans[2][876] = settr(3061,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(3061,2,862,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(3061,2,874,0,0,"IF", 1, 2, 0);
	trans[2][862]	= settr(3047,2,869,620,620,"((found==1))", 1, 2, 0); /* m: 863 -> 869,0 */
	reached2[863] = 1;
	trans[2][863]	= settr(0,0,0,0,0,"shiftIdx = removePos",0,0,0);
	trans[2][870]	= settr(3055,2,869,1,0,".(goto)", 1, 2, 0);
	T = trans[2][869] = settr(3054,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(3054,2,864,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(3054,2,867,0,0,"DO", 1, 2, 0);
	trans[2][864]	= settr(3049,2,869,621,621,"((shiftIdx<(sortLink.count-1)))", 1, 2, 0); /* m: 865 -> 869,0 */
	reached2[865] = 1;
	trans[2][865]	= settr(0,0,0,0,0,"sortLink.tasks[shiftIdx] = sortLink.tasks[(shiftIdx+1)]",0,0,0);
	trans[2][866]	= settr(0,0,0,0,0,"shiftIdx = (shiftIdx+1)",0,0,0);
	trans[2][867]	= settr(3052,2,886,622,622,"((shiftIdx>=(sortLink.count-1)))", 1, 2, 0); /* m: 872 -> 886,0 */
	reached2[872] = 1;
	trans[2][868]	= settr(3053,2,872,1,0,"goto :b115", 1, 2, 0); /* m: 872 -> 0,886 */
	reached2[872] = 1;
	trans[2][871]	= settr(3056,2,872,1,0,"break", 1, 2, 0);
	trans[2][872]	= settr(3057,2,886,623,623,"sortLink.tasks[(sortLink.count-1)] = 255", 1, 2, 0); /* m: 873 -> 0,886 */
	reached2[873] = 1;
	trans[2][873]	= settr(0,0,0,0,0,"sortLink.count = (sortLink.count-1)",0,0,0);
	trans[2][877]	= settr(3062,2,886,1,0,".(goto)", 1, 2, 0);
	trans[2][874]	= settr(3059,2,875,2,0,"else", 1, 2, 0);
	trans[2][875]	= settr(3060,2,886,1,0,"(1)", 1, 2, 0);
	T = trans[ 2][886] = settr(3071,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(3071,0,884,0,0,"sub-sequence", 1, 2, 0);
	T = trans[2][884] = settr(3069,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(3069,2,879,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(3069,2,882,0,0,"IF", 1, 2, 0);
	trans[2][879]	= settr(3064,2,894,624,624,"((readyQueue[tcb[taskId].prio].tailIndex<8))", 1, 2, 0); /* m: 880 -> 894,0 */
	reached2[880] = 1;
	trans[2][880]	= settr(0,0,0,0,0,"readyQueue[tcb[taskId].prio].tasks[readyQueue[tcb[taskId].prio].tailIndex] = taskId",0,0,0);
	trans[2][881]	= settr(0,0,0,0,0,"readyQueue[tcb[taskId].prio].tailIndex = (readyQueue[tcb[taskId].prio].tailIndex+1)",0,0,0);
	trans[2][885]	= settr(3070,2,887,1,0,".(goto)", 1, 2, 0); /* m: 887 -> 0,894 */
	reached2[887] = 1;
	trans[2][882]	= settr(3067,2,883,2,0,"else", 1, 2, 0);
	trans[2][883]	= settr(3068,2,894,625,625,"assert(0)", 1, 2, 0); /* m: 887 -> 0,894 */
	reached2[887] = 1;
	trans[2][887]	= settr(3072,2,894,626,626,"needResched = 1", 1, 2, 0);
	trans[2][891]	= settr(3076,2,894,1,0,".(goto)", 1, 2, 0);
	trans[2][888]	= settr(3073,2,889,2,0,"else", 1, 2, 0);
	trans[2][889]	= settr(3074,2,894,627,627,"idx = (idx+1)", 1, 2, 0);
	trans[2][892]	= settr(3077,2,910,628,628,"((idx>=sortLink.count))", 1, 2, 0); /* m: 897 -> 910,0 */
	reached2[897] = 1;
	trans[2][893]	= settr(3078,2,897,1,0,"goto :b113", 1, 2, 0); /* m: 897 -> 0,910 */
	reached2[897] = 1;
	trans[2][896]	= settr(3081,2,897,1,0,"break", 1, 2, 0);
	trans[2][897]	= settr(3082,2,910,629,629,"interrupted_task = EP", 1, 2, 0);
	T = trans[2][910] = settr(3095,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(3095,2,898,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(3095,2,908,0,0,"IF", 1, 2, 0);
	trans[2][898]	= settr(3083,2,907,630,630,"((((interrupted_task>=1)&&(interrupted_task<=4))&&(tcb[interrupted_task].state!=2)))", 1, 2, 0); /* m: 899 -> 907,0 */
	reached2[899] = 1;
	trans[2][899]	= settr(0,0,0,0,0,"tcb[interrupted_task].state = 1",0,0,0);
	T = trans[ 2][907] = settr(3092,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(3092,0,905,0,0,"sub-sequence", 1, 2, 0);
	T = trans[2][905] = settr(3090,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(3090,2,900,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(3090,2,903,0,0,"IF", 1, 2, 0);
	trans[2][900]	= settr(3085,2,933,631,631,"((readyQueue[tcb[interrupted_task].prio].tailIndex<8))", 1, 2, 0); /* m: 901 -> 933,0 */
	reached2[901] = 1;
	trans[2][901]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tasks[readyQueue[tcb[interrupted_task].prio].tailIndex] = interrupted_task",0,0,0);
	trans[2][902]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tailIndex = (readyQueue[tcb[interrupted_task].prio].tailIndex+1)",0,0,0);
	trans[2][906]	= settr(3091,2,933,1,0,".(goto)", 1, 2, 0);
	trans[2][903]	= settr(3088,2,904,2,0,"else", 1, 2, 0);
	trans[2][904]	= settr(3089,2,933,632,0,"assert(0)", 1, 2, 0);
	trans[2][911]	= settr(3096,2,933,1,0,".(goto)", 1, 2, 0);
	trans[2][908]	= settr(3093,2,909,2,0,"else", 1, 2, 0);
	trans[2][909]	= settr(3094,2,933,1,0,"(1)", 1, 2, 0);
	T = trans[ 2][933] = settr(3118,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(3118,0,912,0,0,"sub-sequence", 1, 2, 0);
	trans[2][912]	= settr(3097,2,928,633,633,"prio = 0", 1, 2, 0); /* m: 913 -> 0,928 */
	reached2[913] = 1;
	trans[2][913]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[2][914]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[2][915]	= settr(0,0,0,0,0,"prio = 0",0,0,0);
	trans[2][916]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[2][917]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[2][929]	= settr(3114,2,928,1,0,".(goto)", 1, 2, 0);
	T = trans[2][928] = settr(3113,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(3113,2,918,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(3113,2,926,0,0,"DO", 1, 2, 0);
	trans[2][918]	= settr(3103,2,924,634,0,"(((prio<4)&&!(found)))", 1, 2, 0);
	T = trans[2][924] = settr(3109,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(3109,2,919,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(3109,2,922,0,0,"IF", 1, 2, 0);
	trans[2][919]	= settr(3104,2,928,635,635,"((readyQueue[prio].tailIndex>0))", 1, 2, 0); /* m: 920 -> 928,0 */
	reached2[920] = 1;
	trans[2][920]	= settr(0,0,0,0,0,"top_task = readyQueue[prio].tasks[0]",0,0,0);
	trans[2][921]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[2][925]	= settr(3110,2,928,1,0,".(goto)", 1, 2, 0);
	trans[2][922]	= settr(3107,2,923,2,0,"else", 1, 2, 0);
	trans[2][923]	= settr(3108,2,928,636,636,"prio = (prio+1)", 1, 2, 0);
	trans[2][926]	= settr(3111,2,951,637,637,"(((prio>=4)||found))", 1, 2, 0); /* m: 931 -> 951,0 */
	reached2[931] = 1;
	trans[2][927]	= settr(3112,2,931,1,0,"goto :b116", 1, 2, 0); /* m: 931 -> 0,951 */
	reached2[931] = 1;
	trans[2][930]	= settr(3115,2,931,1,0,"break", 1, 2, 0);
	trans[2][931]	= settr(3116,2,951,638,638,"newTask = top_task", 1, 2, 0); /* m: 932 -> 0,951 */
	reached2[932] = 1;
	trans[2][932]	= settr(0,0,0,0,0,"topPrio = prio",0,0,0);
	T = trans[ 2][951] = settr(3136,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(3136,0,934,0,0,"sub-sequence", 1, 2, 0);
	trans[2][934]	= settr(3119,2,941,639,639,"deq_idx = 0", 1, 2, 0); /* m: 935 -> 0,941 */
	reached2[935] = 1;
	trans[2][935]	= settr(0,0,0,0,0,"deq_idx = 0",0,0,0);
	trans[2][942]	= settr(3127,2,941,1,0,".(goto)", 1, 2, 0);
	T = trans[2][941] = settr(3126,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(3126,2,936,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(3126,2,939,0,0,"DO", 1, 2, 0);
	trans[2][936]	= settr(3121,2,941,640,640,"((deq_idx<(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0); /* m: 937 -> 941,0 */
	reached2[937] = 1;
	trans[2][937]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[deq_idx] = readyQueue[topPrio].tasks[(deq_idx+1)]",0,0,0);
	trans[2][938]	= settr(0,0,0,0,0,"deq_idx = (deq_idx+1)",0,0,0);
	trans[2][939]	= settr(3124,2,949,641,641,"((deq_idx>=(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0);
	trans[2][940]	= settr(3125,2,949,1,0,"goto :b117", 1, 2, 0);
	trans[2][943]	= settr(3128,2,949,1,0,"break", 1, 2, 0);
	T = trans[2][949] = settr(3134,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(3134,2,944,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(3134,2,947,0,0,"IF", 1, 2, 0);
	trans[2][944]	= settr(3129,2,955,642,642,"((readyQueue[topPrio].tailIndex>0))", 1, 2, 0); /* m: 945 -> 955,0 */
	reached2[945] = 1;
	trans[2][945]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)] = 255",0,0,0);
	trans[2][946]	= settr(0,0,0,0,0,"readyQueue[topPrio].tailIndex = (readyQueue[topPrio].tailIndex-1)",0,0,0);
	trans[2][950]	= settr(3135,2,952,1,0,".(goto)", 1, 2, 0); /* m: 952 -> 0,955 */
	reached2[952] = 1;
	trans[2][947]	= settr(3132,2,948,2,0,"else", 1, 2, 0);
	trans[2][948]	= settr(3133,2,955,643,643,"(1)", 1, 2, 0); /* m: 952 -> 955,0 */
	reached2[952] = 1;
	trans[2][952]	= settr(3137,2,955,644,644,"tcb[newTask].state = 4", 1, 2, 0); /* m: 953 -> 0,955 */
	reached2[953] = 1;
	trans[2][953]	= settr(0,0,0,0,0,"EP = newTask",0,0,0);
	T = trans[ 2][955] = settr(3140,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(3140,0,954,0,0,"sub-sequence", 1, 2, 0);
	trans[2][954]	= settr(3139,0,1090,645,645,"int_ctrl_reg = int_save", 1, 2, 0);
	trans[2][958]	= settr(3143,0,1089,646,0,"((counter<100))", 0, 2, 0);
	T = trans[ 2][1089] = settr(3274,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(3274,2,959,0,0,"ATOMIC", 1, 2, 0);
	trans[2][959]	= settr(3144,2,960,647,0,"((EP==3))", 1, 2, 0);
	trans[2][960]	= settr(3145,2,1088,1,0,"(1)", 1, 2, 0);
	T = trans[ 2][1088] = settr(3273,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(3273,0,961,0,0,"sub-sequence", 1, 2, 0);
	trans[2][961]	= settr(3146,2,969,648,648,"interrupted_task = 0", 1, 2, 0); /* m: 962 -> 0,969 */
	reached2[962] = 1;
	trans[2][962]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[2][963]	= settr(0,0,0,0,0,"taskId = 0",0,0,0);
	trans[2][964]	= settr(0,0,0,0,0,"needResched = 0",0,0,0);
	trans[2][965]	= settr(0,0,0,0,0,"interrupted_task = 0",0,0,0);
	trans[2][966]	= settr(0,0,0,0,0,"needResched = 0",0,0,0);
	T = trans[ 2][969] = settr(3154,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(3154,0,967,0,0,"sub-sequence", 1, 2, 0);
	trans[2][967]	= settr(3152,2,1026,649,649,"int_save = int_ctrl_reg", 1, 2, 0); /* m: 968 -> 0,1026 */
	reached2[968] = 1;
	trans[2][968]	= settr(0,0,0,0,0,"int_ctrl_reg = 1",0,0,0);
	trans[2][970]	= settr(0,0,0,0,0,"tickCount = (tickCount+1)",0,0,0);
	trans[2][971]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[2][1027]	= settr(3212,2,1026,1,0,".(goto)", 1, 2, 0);
	T = trans[2][1026] = settr(3211,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(3211,2,972,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(3211,2,1024,0,0,"DO", 1, 2, 0);
	trans[2][972]	= settr(3157,2,1022,650,650,"((idx<sortLink.count))", 1, 2, 0); /* m: 973 -> 1022,0 */
	reached2[973] = 1;
	trans[2][973]	= settr(0,0,0,0,0,"taskId = sortLink.tasks[idx]",0,0,0);
	T = trans[2][1022] = settr(3207,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(3207,2,974,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(3207,2,1020,0,0,"IF", 1, 2, 0);
	trans[2][974]	= settr(3159,2,1010,651,651,"(((tcb[taskId].state==2)&&(tickCount>=tcb[taskId].wakeupTime)))", 1, 2, 0); /* m: 975 -> 1010,0 */
	reached2[975] = 1;
	trans[2][975]	= settr(0,0,0,0,0,"tcb[taskId].state = 1",0,0,0);
	trans[2][976]	= settr(0,0,0,0,0,"tcb[taskId].delayTicks = 0",0,0,0);
	T = trans[ 2][1010] = settr(3195,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(3195,0,977,0,0,"sub-sequence", 1, 2, 0);
	trans[2][977]	= settr(3162,2,991,652,652,"removePos = 0", 1, 2, 0); /* m: 978 -> 0,991 */
	reached2[978] = 1;
	trans[2][978]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[2][979]	= settr(0,0,0,0,0,"shiftIdx = 0",0,0,0);
	trans[2][980]	= settr(0,0,0,0,0,"removePos = 0",0,0,0);
	trans[2][981]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[2][992]	= settr(3177,2,991,1,0,".(goto)", 1, 2, 0);
	T = trans[2][991] = settr(3176,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(3176,2,982,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(3176,2,989,0,0,"DO", 1, 2, 0);
	trans[2][982]	= settr(3167,2,987,653,0,"(((removePos<sortLink.count)&&!(found)))", 1, 2, 0);
	T = trans[2][987] = settr(3172,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(3172,2,983,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(3172,2,985,0,0,"IF", 1, 2, 0);
	trans[2][983]	= settr(3168,2,991,654,654,"((sortLink.tasks[removePos]==taskId))", 1, 2, 0); /* m: 984 -> 991,0 */
	reached2[984] = 1;
	trans[2][984]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[2][988]	= settr(3173,2,991,1,0,".(goto)", 1, 2, 0);
	trans[2][985]	= settr(3170,2,986,2,0,"else", 1, 2, 0);
	trans[2][986]	= settr(3171,2,991,655,655,"removePos = (removePos+1)", 1, 2, 0);
	trans[2][989]	= settr(3174,2,1008,2,0,"else", 1, 2, 0);
	trans[2][990]	= settr(3175,2,1008,1,0,"goto :b119", 1, 2, 0);
	trans[2][993]	= settr(3178,2,1008,1,0,"break", 1, 2, 0);
	T = trans[2][1008] = settr(3193,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(3193,2,994,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(3193,2,1006,0,0,"IF", 1, 2, 0);
	trans[2][994]	= settr(3179,2,1001,656,656,"((found==1))", 1, 2, 0); /* m: 995 -> 1001,0 */
	reached2[995] = 1;
	trans[2][995]	= settr(0,0,0,0,0,"shiftIdx = removePos",0,0,0);
	trans[2][1002]	= settr(3187,2,1001,1,0,".(goto)", 1, 2, 0);
	T = trans[2][1001] = settr(3186,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(3186,2,996,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(3186,2,999,0,0,"DO", 1, 2, 0);
	trans[2][996]	= settr(3181,2,1001,657,657,"((shiftIdx<(sortLink.count-1)))", 1, 2, 0); /* m: 997 -> 1001,0 */
	reached2[997] = 1;
	trans[2][997]	= settr(0,0,0,0,0,"sortLink.tasks[shiftIdx] = sortLink.tasks[(shiftIdx+1)]",0,0,0);
	trans[2][998]	= settr(0,0,0,0,0,"shiftIdx = (shiftIdx+1)",0,0,0);
	trans[2][999]	= settr(3184,2,1018,658,658,"((shiftIdx>=(sortLink.count-1)))", 1, 2, 0); /* m: 1004 -> 1018,0 */
	reached2[1004] = 1;
	trans[2][1000]	= settr(3185,2,1004,1,0,"goto :b120", 1, 2, 0); /* m: 1004 -> 0,1018 */
	reached2[1004] = 1;
	trans[2][1003]	= settr(3188,2,1004,1,0,"break", 1, 2, 0);
	trans[2][1004]	= settr(3189,2,1018,659,659,"sortLink.tasks[(sortLink.count-1)] = 255", 1, 2, 0); /* m: 1005 -> 0,1018 */
	reached2[1005] = 1;
	trans[2][1005]	= settr(0,0,0,0,0,"sortLink.count = (sortLink.count-1)",0,0,0);
	trans[2][1009]	= settr(3194,2,1018,1,0,".(goto)", 1, 2, 0);
	trans[2][1006]	= settr(3191,2,1007,2,0,"else", 1, 2, 0);
	trans[2][1007]	= settr(3192,2,1018,1,0,"(1)", 1, 2, 0);
	T = trans[ 2][1018] = settr(3203,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(3203,0,1016,0,0,"sub-sequence", 1, 2, 0);
	T = trans[2][1016] = settr(3201,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(3201,2,1011,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(3201,2,1014,0,0,"IF", 1, 2, 0);
	trans[2][1011]	= settr(3196,2,1026,660,660,"((readyQueue[tcb[taskId].prio].tailIndex<8))", 1, 2, 0); /* m: 1012 -> 1026,0 */
	reached2[1012] = 1;
	trans[2][1012]	= settr(0,0,0,0,0,"readyQueue[tcb[taskId].prio].tasks[readyQueue[tcb[taskId].prio].tailIndex] = taskId",0,0,0);
	trans[2][1013]	= settr(0,0,0,0,0,"readyQueue[tcb[taskId].prio].tailIndex = (readyQueue[tcb[taskId].prio].tailIndex+1)",0,0,0);
	trans[2][1017]	= settr(3202,2,1019,1,0,".(goto)", 1, 2, 0); /* m: 1019 -> 0,1026 */
	reached2[1019] = 1;
	trans[2][1014]	= settr(3199,2,1015,2,0,"else", 1, 2, 0);
	trans[2][1015]	= settr(3200,2,1026,661,661,"assert(0)", 1, 2, 0); /* m: 1019 -> 0,1026 */
	reached2[1019] = 1;
	trans[2][1019]	= settr(3204,2,1026,662,662,"needResched = 1", 1, 2, 0);
	trans[2][1023]	= settr(3208,2,1026,1,0,".(goto)", 1, 2, 0);
	trans[2][1020]	= settr(3205,2,1021,2,0,"else", 1, 2, 0);
	trans[2][1021]	= settr(3206,2,1026,663,663,"idx = (idx+1)", 1, 2, 0);
	trans[2][1024]	= settr(3209,2,1042,664,664,"((idx>=sortLink.count))", 1, 2, 0); /* m: 1029 -> 1042,0 */
	reached2[1029] = 1;
	trans[2][1025]	= settr(3210,2,1029,1,0,"goto :b118", 1, 2, 0); /* m: 1029 -> 0,1042 */
	reached2[1029] = 1;
	trans[2][1028]	= settr(3213,2,1029,1,0,"break", 1, 2, 0);
	trans[2][1029]	= settr(3214,2,1042,665,665,"interrupted_task = EP", 1, 2, 0);
	T = trans[2][1042] = settr(3227,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(3227,2,1030,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(3227,2,1040,0,0,"IF", 1, 2, 0);
	trans[2][1030]	= settr(3215,2,1039,666,666,"((((interrupted_task>=1)&&(interrupted_task<=4))&&(tcb[interrupted_task].state!=2)))", 1, 2, 0); /* m: 1031 -> 1039,0 */
	reached2[1031] = 1;
	trans[2][1031]	= settr(0,0,0,0,0,"tcb[interrupted_task].state = 1",0,0,0);
	T = trans[ 2][1039] = settr(3224,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(3224,0,1037,0,0,"sub-sequence", 1, 2, 0);
	T = trans[2][1037] = settr(3222,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(3222,2,1032,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(3222,2,1035,0,0,"IF", 1, 2, 0);
	trans[2][1032]	= settr(3217,2,1065,667,667,"((readyQueue[tcb[interrupted_task].prio].tailIndex<8))", 1, 2, 0); /* m: 1033 -> 1065,0 */
	reached2[1033] = 1;
	trans[2][1033]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tasks[readyQueue[tcb[interrupted_task].prio].tailIndex] = interrupted_task",0,0,0);
	trans[2][1034]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tailIndex = (readyQueue[tcb[interrupted_task].prio].tailIndex+1)",0,0,0);
	trans[2][1038]	= settr(3223,2,1065,1,0,".(goto)", 1, 2, 0);
	trans[2][1035]	= settr(3220,2,1036,2,0,"else", 1, 2, 0);
	trans[2][1036]	= settr(3221,2,1065,668,0,"assert(0)", 1, 2, 0);
	trans[2][1043]	= settr(3228,2,1065,1,0,".(goto)", 1, 2, 0);
	trans[2][1040]	= settr(3225,2,1041,2,0,"else", 1, 2, 0);
	trans[2][1041]	= settr(3226,2,1065,1,0,"(1)", 1, 2, 0);
	T = trans[ 2][1065] = settr(3250,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(3250,0,1044,0,0,"sub-sequence", 1, 2, 0);
	trans[2][1044]	= settr(3229,2,1060,669,669,"prio = 0", 1, 2, 0); /* m: 1045 -> 0,1060 */
	reached2[1045] = 1;
	trans[2][1045]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[2][1046]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[2][1047]	= settr(0,0,0,0,0,"prio = 0",0,0,0);
	trans[2][1048]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[2][1049]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[2][1061]	= settr(3246,2,1060,1,0,".(goto)", 1, 2, 0);
	T = trans[2][1060] = settr(3245,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(3245,2,1050,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(3245,2,1058,0,0,"DO", 1, 2, 0);
	trans[2][1050]	= settr(3235,2,1056,670,0,"(((prio<4)&&!(found)))", 1, 2, 0);
	T = trans[2][1056] = settr(3241,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(3241,2,1051,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(3241,2,1054,0,0,"IF", 1, 2, 0);
	trans[2][1051]	= settr(3236,2,1060,671,671,"((readyQueue[prio].tailIndex>0))", 1, 2, 0); /* m: 1052 -> 1060,0 */
	reached2[1052] = 1;
	trans[2][1052]	= settr(0,0,0,0,0,"top_task = readyQueue[prio].tasks[0]",0,0,0);
	trans[2][1053]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[2][1057]	= settr(3242,2,1060,1,0,".(goto)", 1, 2, 0);
	trans[2][1054]	= settr(3239,2,1055,2,0,"else", 1, 2, 0);
	trans[2][1055]	= settr(3240,2,1060,672,672,"prio = (prio+1)", 1, 2, 0);
	trans[2][1058]	= settr(3243,2,1083,673,673,"(((prio>=4)||found))", 1, 2, 0); /* m: 1063 -> 1083,0 */
	reached2[1063] = 1;
	trans[2][1059]	= settr(3244,2,1063,1,0,"goto :b121", 1, 2, 0); /* m: 1063 -> 0,1083 */
	reached2[1063] = 1;
	trans[2][1062]	= settr(3247,2,1063,1,0,"break", 1, 2, 0);
	trans[2][1063]	= settr(3248,2,1083,674,674,"newTask = top_task", 1, 2, 0); /* m: 1064 -> 0,1083 */
	reached2[1064] = 1;
	trans[2][1064]	= settr(0,0,0,0,0,"topPrio = prio",0,0,0);
	T = trans[ 2][1083] = settr(3268,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(3268,0,1066,0,0,"sub-sequence", 1, 2, 0);
	trans[2][1066]	= settr(3251,2,1073,675,675,"deq_idx = 0", 1, 2, 0); /* m: 1067 -> 0,1073 */
	reached2[1067] = 1;
	trans[2][1067]	= settr(0,0,0,0,0,"deq_idx = 0",0,0,0);
	trans[2][1074]	= settr(3259,2,1073,1,0,".(goto)", 1, 2, 0);
	T = trans[2][1073] = settr(3258,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(3258,2,1068,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(3258,2,1071,0,0,"DO", 1, 2, 0);
	trans[2][1068]	= settr(3253,2,1073,676,676,"((deq_idx<(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0); /* m: 1069 -> 1073,0 */
	reached2[1069] = 1;
	trans[2][1069]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[deq_idx] = readyQueue[topPrio].tasks[(deq_idx+1)]",0,0,0);
	trans[2][1070]	= settr(0,0,0,0,0,"deq_idx = (deq_idx+1)",0,0,0);
	trans[2][1071]	= settr(3256,2,1081,677,677,"((deq_idx>=(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0);
	trans[2][1072]	= settr(3257,2,1081,1,0,"goto :b122", 1, 2, 0);
	trans[2][1075]	= settr(3260,2,1081,1,0,"break", 1, 2, 0);
	T = trans[2][1081] = settr(3266,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(3266,2,1076,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(3266,2,1079,0,0,"IF", 1, 2, 0);
	trans[2][1076]	= settr(3261,2,1087,678,678,"((readyQueue[topPrio].tailIndex>0))", 1, 2, 0); /* m: 1077 -> 1087,0 */
	reached2[1077] = 1;
	trans[2][1077]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)] = 255",0,0,0);
	trans[2][1078]	= settr(0,0,0,0,0,"readyQueue[topPrio].tailIndex = (readyQueue[topPrio].tailIndex-1)",0,0,0);
	trans[2][1082]	= settr(3267,2,1084,1,0,".(goto)", 1, 2, 0); /* m: 1084 -> 0,1087 */
	reached2[1084] = 1;
	trans[2][1079]	= settr(3264,2,1080,2,0,"else", 1, 2, 0);
	trans[2][1080]	= settr(3265,2,1087,679,679,"(1)", 1, 2, 0); /* m: 1084 -> 1087,0 */
	reached2[1084] = 1;
	trans[2][1084]	= settr(3269,2,1087,680,680,"tcb[newTask].state = 4", 1, 2, 0); /* m: 1085 -> 0,1087 */
	reached2[1085] = 1;
	trans[2][1085]	= settr(0,0,0,0,0,"EP = newTask",0,0,0);
	T = trans[ 2][1087] = settr(3272,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(3272,0,1086,0,0,"sub-sequence", 1, 2, 0);
	trans[2][1086]	= settr(3271,0,1090,681,681,"int_ctrl_reg = int_save", 1, 2, 0);
	trans[2][1092]	= settr(3277,0,1093,1,0,"break", 0, 2, 0);
	trans[2][1093]	= settr(3278,0,0,682,682,"-end-", 0, 3500, 0);

	/* proctype 1: Process2 */

	trans[1] = (Trans **) emalloc(1094*sizeof(Trans *));

	trans[1][1091]	= settr(2183,0,1090,1,0,".(goto)", 0, 2, 0);
	T = trans[1][1090] = settr(2182,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(2182,0,131,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(2182,0,262,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(2182,0,393,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(2182,0,675,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(2182,0,957,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(2182,0,958,0,0,"DO", 0, 2, 0);
	T = trans[ 1][131] = settr(1223,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(1223,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[1][1]	= settr(1093,2,130,683,683,"((EP==2))", 1, 2, 0); /* m: 2 -> 130,0 */
	reached1[2] = 1;
	trans[1][2]	= settr(0,0,0,0,0,"printf('Process 2 running, counter=%d\\n',counter)",0,0,0);
	T = trans[ 1][130] = settr(1222,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1222,0,3,0,0,"sub-sequence", 1, 2, 0);
	trans[1][3]	= settr(1095,2,11,684,684,"interrupted_task = 0", 1, 2, 0); /* m: 4 -> 0,11 */
	reached1[4] = 1;
	trans[1][4]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[1][5]	= settr(0,0,0,0,0,"taskId = 0",0,0,0);
	trans[1][6]	= settr(0,0,0,0,0,"needResched = 0",0,0,0);
	trans[1][7]	= settr(0,0,0,0,0,"interrupted_task = 0",0,0,0);
	trans[1][8]	= settr(0,0,0,0,0,"needResched = 0",0,0,0);
	T = trans[ 1][11] = settr(1103,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1103,0,9,0,0,"sub-sequence", 1, 2, 0);
	trans[1][9]	= settr(1101,2,68,685,685,"int_save = int_ctrl_reg", 1, 2, 0); /* m: 10 -> 0,68 */
	reached1[10] = 1;
	trans[1][10]	= settr(0,0,0,0,0,"int_ctrl_reg = 1",0,0,0);
	trans[1][12]	= settr(0,0,0,0,0,"tickCount = (tickCount+1)",0,0,0);
	trans[1][13]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[1][69]	= settr(1161,2,68,1,0,".(goto)", 1, 2, 0);
	T = trans[1][68] = settr(1160,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(1160,2,14,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(1160,2,66,0,0,"DO", 1, 2, 0);
	trans[1][14]	= settr(1106,2,64,686,686,"((idx<sortLink.count))", 1, 2, 0); /* m: 15 -> 64,0 */
	reached1[15] = 1;
	trans[1][15]	= settr(0,0,0,0,0,"taskId = sortLink.tasks[idx]",0,0,0);
	T = trans[1][64] = settr(1156,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1156,2,16,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1156,2,62,0,0,"IF", 1, 2, 0);
	trans[1][16]	= settr(1108,2,52,687,687,"(((tcb[taskId].state==2)&&(tickCount>=tcb[taskId].wakeupTime)))", 1, 2, 0); /* m: 17 -> 52,0 */
	reached1[17] = 1;
	trans[1][17]	= settr(0,0,0,0,0,"tcb[taskId].state = 1",0,0,0);
	trans[1][18]	= settr(0,0,0,0,0,"tcb[taskId].delayTicks = 0",0,0,0);
	T = trans[ 1][52] = settr(1144,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1144,0,19,0,0,"sub-sequence", 1, 2, 0);
	trans[1][19]	= settr(1111,2,33,688,688,"removePos = 0", 1, 2, 0); /* m: 20 -> 0,33 */
	reached1[20] = 1;
	trans[1][20]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[1][21]	= settr(0,0,0,0,0,"shiftIdx = 0",0,0,0);
	trans[1][22]	= settr(0,0,0,0,0,"removePos = 0",0,0,0);
	trans[1][23]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[1][34]	= settr(1126,2,33,1,0,".(goto)", 1, 2, 0);
	T = trans[1][33] = settr(1125,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(1125,2,24,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(1125,2,31,0,0,"DO", 1, 2, 0);
	trans[1][24]	= settr(1116,2,29,689,0,"(((removePos<sortLink.count)&&!(found)))", 1, 2, 0);
	T = trans[1][29] = settr(1121,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1121,2,25,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1121,2,27,0,0,"IF", 1, 2, 0);
	trans[1][25]	= settr(1117,2,33,690,690,"((sortLink.tasks[removePos]==taskId))", 1, 2, 0); /* m: 26 -> 33,0 */
	reached1[26] = 1;
	trans[1][26]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[1][30]	= settr(1122,2,33,1,0,".(goto)", 1, 2, 0);
	trans[1][27]	= settr(1119,2,28,2,0,"else", 1, 2, 0);
	trans[1][28]	= settr(1120,2,33,691,691,"removePos = (removePos+1)", 1, 2, 0);
	trans[1][31]	= settr(1123,2,50,2,0,"else", 1, 2, 0);
	trans[1][32]	= settr(1124,2,50,1,0,"goto :b43", 1, 2, 0);
	trans[1][35]	= settr(1127,2,50,1,0,"break", 1, 2, 0);
	T = trans[1][50] = settr(1142,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1142,2,36,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1142,2,48,0,0,"IF", 1, 2, 0);
	trans[1][36]	= settr(1128,2,43,692,692,"((found==1))", 1, 2, 0); /* m: 37 -> 43,0 */
	reached1[37] = 1;
	trans[1][37]	= settr(0,0,0,0,0,"shiftIdx = removePos",0,0,0);
	trans[1][44]	= settr(1136,2,43,1,0,".(goto)", 1, 2, 0);
	T = trans[1][43] = settr(1135,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(1135,2,38,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(1135,2,41,0,0,"DO", 1, 2, 0);
	trans[1][38]	= settr(1130,2,43,693,693,"((shiftIdx<(sortLink.count-1)))", 1, 2, 0); /* m: 39 -> 43,0 */
	reached1[39] = 1;
	trans[1][39]	= settr(0,0,0,0,0,"sortLink.tasks[shiftIdx] = sortLink.tasks[(shiftIdx+1)]",0,0,0);
	trans[1][40]	= settr(0,0,0,0,0,"shiftIdx = (shiftIdx+1)",0,0,0);
	trans[1][41]	= settr(1133,2,60,694,694,"((shiftIdx>=(sortLink.count-1)))", 1, 2, 0); /* m: 46 -> 60,0 */
	reached1[46] = 1;
	trans[1][42]	= settr(1134,2,46,1,0,"goto :b44", 1, 2, 0); /* m: 46 -> 0,60 */
	reached1[46] = 1;
	trans[1][45]	= settr(1137,2,46,1,0,"break", 1, 2, 0);
	trans[1][46]	= settr(1138,2,60,695,695,"sortLink.tasks[(sortLink.count-1)] = 255", 1, 2, 0); /* m: 47 -> 0,60 */
	reached1[47] = 1;
	trans[1][47]	= settr(0,0,0,0,0,"sortLink.count = (sortLink.count-1)",0,0,0);
	trans[1][51]	= settr(1143,2,60,1,0,".(goto)", 1, 2, 0);
	trans[1][48]	= settr(1140,2,49,2,0,"else", 1, 2, 0);
	trans[1][49]	= settr(1141,2,60,1,0,"(1)", 1, 2, 0);
	T = trans[ 1][60] = settr(1152,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1152,0,58,0,0,"sub-sequence", 1, 2, 0);
	T = trans[1][58] = settr(1150,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1150,2,53,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1150,2,56,0,0,"IF", 1, 2, 0);
	trans[1][53]	= settr(1145,2,68,696,696,"((readyQueue[tcb[taskId].prio].tailIndex<8))", 1, 2, 0); /* m: 54 -> 68,0 */
	reached1[54] = 1;
	trans[1][54]	= settr(0,0,0,0,0,"readyQueue[tcb[taskId].prio].tasks[readyQueue[tcb[taskId].prio].tailIndex] = taskId",0,0,0);
	trans[1][55]	= settr(0,0,0,0,0,"readyQueue[tcb[taskId].prio].tailIndex = (readyQueue[tcb[taskId].prio].tailIndex+1)",0,0,0);
	trans[1][59]	= settr(1151,2,61,1,0,".(goto)", 1, 2, 0); /* m: 61 -> 0,68 */
	reached1[61] = 1;
	trans[1][56]	= settr(1148,2,57,2,0,"else", 1, 2, 0);
	trans[1][57]	= settr(1149,2,68,697,697,"assert(0)", 1, 2, 0); /* m: 61 -> 0,68 */
	reached1[61] = 1;
	trans[1][61]	= settr(1153,2,68,698,698,"needResched = 1", 1, 2, 0);
	trans[1][65]	= settr(1157,2,68,1,0,".(goto)", 1, 2, 0);
	trans[1][62]	= settr(1154,2,63,2,0,"else", 1, 2, 0);
	trans[1][63]	= settr(1155,2,68,699,699,"idx = (idx+1)", 1, 2, 0);
	trans[1][66]	= settr(1158,2,84,700,700,"((idx>=sortLink.count))", 1, 2, 0); /* m: 71 -> 84,0 */
	reached1[71] = 1;
	trans[1][67]	= settr(1159,2,71,1,0,"goto :b42", 1, 2, 0); /* m: 71 -> 0,84 */
	reached1[71] = 1;
	trans[1][70]	= settr(1162,2,71,1,0,"break", 1, 2, 0);
	trans[1][71]	= settr(1163,2,84,701,701,"interrupted_task = EP", 1, 2, 0);
	T = trans[1][84] = settr(1176,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1176,2,72,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1176,2,82,0,0,"IF", 1, 2, 0);
	trans[1][72]	= settr(1164,2,81,702,702,"((((interrupted_task>=1)&&(interrupted_task<=4))&&(tcb[interrupted_task].state!=2)))", 1, 2, 0); /* m: 73 -> 81,0 */
	reached1[73] = 1;
	trans[1][73]	= settr(0,0,0,0,0,"tcb[interrupted_task].state = 1",0,0,0);
	T = trans[ 1][81] = settr(1173,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1173,0,79,0,0,"sub-sequence", 1, 2, 0);
	T = trans[1][79] = settr(1171,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1171,2,74,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1171,2,77,0,0,"IF", 1, 2, 0);
	trans[1][74]	= settr(1166,2,107,703,703,"((readyQueue[tcb[interrupted_task].prio].tailIndex<8))", 1, 2, 0); /* m: 75 -> 107,0 */
	reached1[75] = 1;
	trans[1][75]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tasks[readyQueue[tcb[interrupted_task].prio].tailIndex] = interrupted_task",0,0,0);
	trans[1][76]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tailIndex = (readyQueue[tcb[interrupted_task].prio].tailIndex+1)",0,0,0);
	trans[1][80]	= settr(1172,2,107,1,0,".(goto)", 1, 2, 0);
	trans[1][77]	= settr(1169,2,78,2,0,"else", 1, 2, 0);
	trans[1][78]	= settr(1170,2,107,704,0,"assert(0)", 1, 2, 0);
	trans[1][85]	= settr(1177,2,107,1,0,".(goto)", 1, 2, 0);
	trans[1][82]	= settr(1174,2,83,2,0,"else", 1, 2, 0);
	trans[1][83]	= settr(1175,2,107,1,0,"(1)", 1, 2, 0);
	T = trans[ 1][107] = settr(1199,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1199,0,86,0,0,"sub-sequence", 1, 2, 0);
	trans[1][86]	= settr(1178,2,102,705,705,"prio = 0", 1, 2, 0); /* m: 87 -> 0,102 */
	reached1[87] = 1;
	trans[1][87]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[1][88]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[1][89]	= settr(0,0,0,0,0,"prio = 0",0,0,0);
	trans[1][90]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[1][91]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[1][103]	= settr(1195,2,102,1,0,".(goto)", 1, 2, 0);
	T = trans[1][102] = settr(1194,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(1194,2,92,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(1194,2,100,0,0,"DO", 1, 2, 0);
	trans[1][92]	= settr(1184,2,98,706,0,"(((prio<4)&&!(found)))", 1, 2, 0);
	T = trans[1][98] = settr(1190,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1190,2,93,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1190,2,96,0,0,"IF", 1, 2, 0);
	trans[1][93]	= settr(1185,2,102,707,707,"((readyQueue[prio].tailIndex>0))", 1, 2, 0); /* m: 94 -> 102,0 */
	reached1[94] = 1;
	trans[1][94]	= settr(0,0,0,0,0,"top_task = readyQueue[prio].tasks[0]",0,0,0);
	trans[1][95]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[1][99]	= settr(1191,2,102,1,0,".(goto)", 1, 2, 0);
	trans[1][96]	= settr(1188,2,97,2,0,"else", 1, 2, 0);
	trans[1][97]	= settr(1189,2,102,708,708,"prio = (prio+1)", 1, 2, 0);
	trans[1][100]	= settr(1192,2,125,709,709,"(((prio>=4)||found))", 1, 2, 0); /* m: 105 -> 125,0 */
	reached1[105] = 1;
	trans[1][101]	= settr(1193,2,105,1,0,"goto :b45", 1, 2, 0); /* m: 105 -> 0,125 */
	reached1[105] = 1;
	trans[1][104]	= settr(1196,2,105,1,0,"break", 1, 2, 0);
	trans[1][105]	= settr(1197,2,125,710,710,"newTask = top_task", 1, 2, 0); /* m: 106 -> 0,125 */
	reached1[106] = 1;
	trans[1][106]	= settr(0,0,0,0,0,"topPrio = prio",0,0,0);
	T = trans[ 1][125] = settr(1217,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1217,0,108,0,0,"sub-sequence", 1, 2, 0);
	trans[1][108]	= settr(1200,2,115,711,711,"deq_idx = 0", 1, 2, 0); /* m: 109 -> 0,115 */
	reached1[109] = 1;
	trans[1][109]	= settr(0,0,0,0,0,"deq_idx = 0",0,0,0);
	trans[1][116]	= settr(1208,2,115,1,0,".(goto)", 1, 2, 0);
	T = trans[1][115] = settr(1207,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(1207,2,110,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(1207,2,113,0,0,"DO", 1, 2, 0);
	trans[1][110]	= settr(1202,2,115,712,712,"((deq_idx<(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0); /* m: 111 -> 115,0 */
	reached1[111] = 1;
	trans[1][111]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[deq_idx] = readyQueue[topPrio].tasks[(deq_idx+1)]",0,0,0);
	trans[1][112]	= settr(0,0,0,0,0,"deq_idx = (deq_idx+1)",0,0,0);
	trans[1][113]	= settr(1205,2,123,713,713,"((deq_idx>=(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0);
	trans[1][114]	= settr(1206,2,123,1,0,"goto :b46", 1, 2, 0);
	trans[1][117]	= settr(1209,2,123,1,0,"break", 1, 2, 0);
	T = trans[1][123] = settr(1215,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1215,2,118,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1215,2,121,0,0,"IF", 1, 2, 0);
	trans[1][118]	= settr(1210,2,129,714,714,"((readyQueue[topPrio].tailIndex>0))", 1, 2, 0); /* m: 119 -> 129,0 */
	reached1[119] = 1;
	trans[1][119]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)] = 255",0,0,0);
	trans[1][120]	= settr(0,0,0,0,0,"readyQueue[topPrio].tailIndex = (readyQueue[topPrio].tailIndex-1)",0,0,0);
	trans[1][124]	= settr(1216,2,126,1,0,".(goto)", 1, 2, 0); /* m: 126 -> 0,129 */
	reached1[126] = 1;
	trans[1][121]	= settr(1213,2,122,2,0,"else", 1, 2, 0);
	trans[1][122]	= settr(1214,2,129,715,715,"(1)", 1, 2, 0); /* m: 126 -> 129,0 */
	reached1[126] = 1;
	trans[1][126]	= settr(1218,2,129,716,716,"tcb[newTask].state = 4", 1, 2, 0); /* m: 127 -> 0,129 */
	reached1[127] = 1;
	trans[1][127]	= settr(0,0,0,0,0,"EP = newTask",0,0,0);
	T = trans[ 1][129] = settr(1221,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1221,0,128,0,0,"sub-sequence", 1, 2, 0);
	trans[1][128]	= settr(1220,0,1090,717,717,"int_ctrl_reg = int_save", 1, 2, 0);
	T = trans[ 1][262] = settr(1354,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(1354,2,132,0,0,"ATOMIC", 1, 2, 0);
	trans[1][132]	= settr(1224,2,261,718,718,"((EP==2))", 1, 2, 0); /* m: 133 -> 261,0 */
	reached1[133] = 1;
	trans[1][133]	= settr(0,0,0,0,0,"counter = (counter+1)",0,0,0);
	T = trans[ 1][261] = settr(1353,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1353,0,134,0,0,"sub-sequence", 1, 2, 0);
	trans[1][134]	= settr(1226,2,142,719,719,"interrupted_task = 0", 1, 2, 0); /* m: 135 -> 0,142 */
	reached1[135] = 1;
	trans[1][135]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[1][136]	= settr(0,0,0,0,0,"taskId = 0",0,0,0);
	trans[1][137]	= settr(0,0,0,0,0,"needResched = 0",0,0,0);
	trans[1][138]	= settr(0,0,0,0,0,"interrupted_task = 0",0,0,0);
	trans[1][139]	= settr(0,0,0,0,0,"needResched = 0",0,0,0);
	T = trans[ 1][142] = settr(1234,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1234,0,140,0,0,"sub-sequence", 1, 2, 0);
	trans[1][140]	= settr(1232,2,199,720,720,"int_save = int_ctrl_reg", 1, 2, 0); /* m: 141 -> 0,199 */
	reached1[141] = 1;
	trans[1][141]	= settr(0,0,0,0,0,"int_ctrl_reg = 1",0,0,0);
	trans[1][143]	= settr(0,0,0,0,0,"tickCount = (tickCount+1)",0,0,0);
	trans[1][144]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[1][200]	= settr(1292,2,199,1,0,".(goto)", 1, 2, 0);
	T = trans[1][199] = settr(1291,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(1291,2,145,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(1291,2,197,0,0,"DO", 1, 2, 0);
	trans[1][145]	= settr(1237,2,195,721,721,"((idx<sortLink.count))", 1, 2, 0); /* m: 146 -> 195,0 */
	reached1[146] = 1;
	trans[1][146]	= settr(0,0,0,0,0,"taskId = sortLink.tasks[idx]",0,0,0);
	T = trans[1][195] = settr(1287,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1287,2,147,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1287,2,193,0,0,"IF", 1, 2, 0);
	trans[1][147]	= settr(1239,2,183,722,722,"(((tcb[taskId].state==2)&&(tickCount>=tcb[taskId].wakeupTime)))", 1, 2, 0); /* m: 148 -> 183,0 */
	reached1[148] = 1;
	trans[1][148]	= settr(0,0,0,0,0,"tcb[taskId].state = 1",0,0,0);
	trans[1][149]	= settr(0,0,0,0,0,"tcb[taskId].delayTicks = 0",0,0,0);
	T = trans[ 1][183] = settr(1275,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1275,0,150,0,0,"sub-sequence", 1, 2, 0);
	trans[1][150]	= settr(1242,2,164,723,723,"removePos = 0", 1, 2, 0); /* m: 151 -> 0,164 */
	reached1[151] = 1;
	trans[1][151]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[1][152]	= settr(0,0,0,0,0,"shiftIdx = 0",0,0,0);
	trans[1][153]	= settr(0,0,0,0,0,"removePos = 0",0,0,0);
	trans[1][154]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[1][165]	= settr(1257,2,164,1,0,".(goto)", 1, 2, 0);
	T = trans[1][164] = settr(1256,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(1256,2,155,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(1256,2,162,0,0,"DO", 1, 2, 0);
	trans[1][155]	= settr(1247,2,160,724,0,"(((removePos<sortLink.count)&&!(found)))", 1, 2, 0);
	T = trans[1][160] = settr(1252,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1252,2,156,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1252,2,158,0,0,"IF", 1, 2, 0);
	trans[1][156]	= settr(1248,2,164,725,725,"((sortLink.tasks[removePos]==taskId))", 1, 2, 0); /* m: 157 -> 164,0 */
	reached1[157] = 1;
	trans[1][157]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[1][161]	= settr(1253,2,164,1,0,".(goto)", 1, 2, 0);
	trans[1][158]	= settr(1250,2,159,2,0,"else", 1, 2, 0);
	trans[1][159]	= settr(1251,2,164,726,726,"removePos = (removePos+1)", 1, 2, 0);
	trans[1][162]	= settr(1254,2,181,2,0,"else", 1, 2, 0);
	trans[1][163]	= settr(1255,2,181,1,0,"goto :b48", 1, 2, 0);
	trans[1][166]	= settr(1258,2,181,1,0,"break", 1, 2, 0);
	T = trans[1][181] = settr(1273,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1273,2,167,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1273,2,179,0,0,"IF", 1, 2, 0);
	trans[1][167]	= settr(1259,2,174,727,727,"((found==1))", 1, 2, 0); /* m: 168 -> 174,0 */
	reached1[168] = 1;
	trans[1][168]	= settr(0,0,0,0,0,"shiftIdx = removePos",0,0,0);
	trans[1][175]	= settr(1267,2,174,1,0,".(goto)", 1, 2, 0);
	T = trans[1][174] = settr(1266,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(1266,2,169,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(1266,2,172,0,0,"DO", 1, 2, 0);
	trans[1][169]	= settr(1261,2,174,728,728,"((shiftIdx<(sortLink.count-1)))", 1, 2, 0); /* m: 170 -> 174,0 */
	reached1[170] = 1;
	trans[1][170]	= settr(0,0,0,0,0,"sortLink.tasks[shiftIdx] = sortLink.tasks[(shiftIdx+1)]",0,0,0);
	trans[1][171]	= settr(0,0,0,0,0,"shiftIdx = (shiftIdx+1)",0,0,0);
	trans[1][172]	= settr(1264,2,191,729,729,"((shiftIdx>=(sortLink.count-1)))", 1, 2, 0); /* m: 177 -> 191,0 */
	reached1[177] = 1;
	trans[1][173]	= settr(1265,2,177,1,0,"goto :b49", 1, 2, 0); /* m: 177 -> 0,191 */
	reached1[177] = 1;
	trans[1][176]	= settr(1268,2,177,1,0,"break", 1, 2, 0);
	trans[1][177]	= settr(1269,2,191,730,730,"sortLink.tasks[(sortLink.count-1)] = 255", 1, 2, 0); /* m: 178 -> 0,191 */
	reached1[178] = 1;
	trans[1][178]	= settr(0,0,0,0,0,"sortLink.count = (sortLink.count-1)",0,0,0);
	trans[1][182]	= settr(1274,2,191,1,0,".(goto)", 1, 2, 0);
	trans[1][179]	= settr(1271,2,180,2,0,"else", 1, 2, 0);
	trans[1][180]	= settr(1272,2,191,1,0,"(1)", 1, 2, 0);
	T = trans[ 1][191] = settr(1283,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1283,0,189,0,0,"sub-sequence", 1, 2, 0);
	T = trans[1][189] = settr(1281,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1281,2,184,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1281,2,187,0,0,"IF", 1, 2, 0);
	trans[1][184]	= settr(1276,2,199,731,731,"((readyQueue[tcb[taskId].prio].tailIndex<8))", 1, 2, 0); /* m: 185 -> 199,0 */
	reached1[185] = 1;
	trans[1][185]	= settr(0,0,0,0,0,"readyQueue[tcb[taskId].prio].tasks[readyQueue[tcb[taskId].prio].tailIndex] = taskId",0,0,0);
	trans[1][186]	= settr(0,0,0,0,0,"readyQueue[tcb[taskId].prio].tailIndex = (readyQueue[tcb[taskId].prio].tailIndex+1)",0,0,0);
	trans[1][190]	= settr(1282,2,192,1,0,".(goto)", 1, 2, 0); /* m: 192 -> 0,199 */
	reached1[192] = 1;
	trans[1][187]	= settr(1279,2,188,2,0,"else", 1, 2, 0);
	trans[1][188]	= settr(1280,2,199,732,732,"assert(0)", 1, 2, 0); /* m: 192 -> 0,199 */
	reached1[192] = 1;
	trans[1][192]	= settr(1284,2,199,733,733,"needResched = 1", 1, 2, 0);
	trans[1][196]	= settr(1288,2,199,1,0,".(goto)", 1, 2, 0);
	trans[1][193]	= settr(1285,2,194,2,0,"else", 1, 2, 0);
	trans[1][194]	= settr(1286,2,199,734,734,"idx = (idx+1)", 1, 2, 0);
	trans[1][197]	= settr(1289,2,215,735,735,"((idx>=sortLink.count))", 1, 2, 0); /* m: 202 -> 215,0 */
	reached1[202] = 1;
	trans[1][198]	= settr(1290,2,202,1,0,"goto :b47", 1, 2, 0); /* m: 202 -> 0,215 */
	reached1[202] = 1;
	trans[1][201]	= settr(1293,2,202,1,0,"break", 1, 2, 0);
	trans[1][202]	= settr(1294,2,215,736,736,"interrupted_task = EP", 1, 2, 0);
	T = trans[1][215] = settr(1307,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1307,2,203,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1307,2,213,0,0,"IF", 1, 2, 0);
	trans[1][203]	= settr(1295,2,212,737,737,"((((interrupted_task>=1)&&(interrupted_task<=4))&&(tcb[interrupted_task].state!=2)))", 1, 2, 0); /* m: 204 -> 212,0 */
	reached1[204] = 1;
	trans[1][204]	= settr(0,0,0,0,0,"tcb[interrupted_task].state = 1",0,0,0);
	T = trans[ 1][212] = settr(1304,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1304,0,210,0,0,"sub-sequence", 1, 2, 0);
	T = trans[1][210] = settr(1302,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1302,2,205,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1302,2,208,0,0,"IF", 1, 2, 0);
	trans[1][205]	= settr(1297,2,238,738,738,"((readyQueue[tcb[interrupted_task].prio].tailIndex<8))", 1, 2, 0); /* m: 206 -> 238,0 */
	reached1[206] = 1;
	trans[1][206]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tasks[readyQueue[tcb[interrupted_task].prio].tailIndex] = interrupted_task",0,0,0);
	trans[1][207]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tailIndex = (readyQueue[tcb[interrupted_task].prio].tailIndex+1)",0,0,0);
	trans[1][211]	= settr(1303,2,238,1,0,".(goto)", 1, 2, 0);
	trans[1][208]	= settr(1300,2,209,2,0,"else", 1, 2, 0);
	trans[1][209]	= settr(1301,2,238,739,0,"assert(0)", 1, 2, 0);
	trans[1][216]	= settr(1308,2,238,1,0,".(goto)", 1, 2, 0);
	trans[1][213]	= settr(1305,2,214,2,0,"else", 1, 2, 0);
	trans[1][214]	= settr(1306,2,238,1,0,"(1)", 1, 2, 0);
	T = trans[ 1][238] = settr(1330,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1330,0,217,0,0,"sub-sequence", 1, 2, 0);
	trans[1][217]	= settr(1309,2,233,740,740,"prio = 0", 1, 2, 0); /* m: 218 -> 0,233 */
	reached1[218] = 1;
	trans[1][218]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[1][219]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[1][220]	= settr(0,0,0,0,0,"prio = 0",0,0,0);
	trans[1][221]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[1][222]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[1][234]	= settr(1326,2,233,1,0,".(goto)", 1, 2, 0);
	T = trans[1][233] = settr(1325,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(1325,2,223,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(1325,2,231,0,0,"DO", 1, 2, 0);
	trans[1][223]	= settr(1315,2,229,741,0,"(((prio<4)&&!(found)))", 1, 2, 0);
	T = trans[1][229] = settr(1321,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1321,2,224,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1321,2,227,0,0,"IF", 1, 2, 0);
	trans[1][224]	= settr(1316,2,233,742,742,"((readyQueue[prio].tailIndex>0))", 1, 2, 0); /* m: 225 -> 233,0 */
	reached1[225] = 1;
	trans[1][225]	= settr(0,0,0,0,0,"top_task = readyQueue[prio].tasks[0]",0,0,0);
	trans[1][226]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[1][230]	= settr(1322,2,233,1,0,".(goto)", 1, 2, 0);
	trans[1][227]	= settr(1319,2,228,2,0,"else", 1, 2, 0);
	trans[1][228]	= settr(1320,2,233,743,743,"prio = (prio+1)", 1, 2, 0);
	trans[1][231]	= settr(1323,2,256,744,744,"(((prio>=4)||found))", 1, 2, 0); /* m: 236 -> 256,0 */
	reached1[236] = 1;
	trans[1][232]	= settr(1324,2,236,1,0,"goto :b50", 1, 2, 0); /* m: 236 -> 0,256 */
	reached1[236] = 1;
	trans[1][235]	= settr(1327,2,236,1,0,"break", 1, 2, 0);
	trans[1][236]	= settr(1328,2,256,745,745,"newTask = top_task", 1, 2, 0); /* m: 237 -> 0,256 */
	reached1[237] = 1;
	trans[1][237]	= settr(0,0,0,0,0,"topPrio = prio",0,0,0);
	T = trans[ 1][256] = settr(1348,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1348,0,239,0,0,"sub-sequence", 1, 2, 0);
	trans[1][239]	= settr(1331,2,246,746,746,"deq_idx = 0", 1, 2, 0); /* m: 240 -> 0,246 */
	reached1[240] = 1;
	trans[1][240]	= settr(0,0,0,0,0,"deq_idx = 0",0,0,0);
	trans[1][247]	= settr(1339,2,246,1,0,".(goto)", 1, 2, 0);
	T = trans[1][246] = settr(1338,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(1338,2,241,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(1338,2,244,0,0,"DO", 1, 2, 0);
	trans[1][241]	= settr(1333,2,246,747,747,"((deq_idx<(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0); /* m: 242 -> 246,0 */
	reached1[242] = 1;
	trans[1][242]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[deq_idx] = readyQueue[topPrio].tasks[(deq_idx+1)]",0,0,0);
	trans[1][243]	= settr(0,0,0,0,0,"deq_idx = (deq_idx+1)",0,0,0);
	trans[1][244]	= settr(1336,2,254,748,748,"((deq_idx>=(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0);
	trans[1][245]	= settr(1337,2,254,1,0,"goto :b51", 1, 2, 0);
	trans[1][248]	= settr(1340,2,254,1,0,"break", 1, 2, 0);
	T = trans[1][254] = settr(1346,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1346,2,249,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1346,2,252,0,0,"IF", 1, 2, 0);
	trans[1][249]	= settr(1341,2,260,749,749,"((readyQueue[topPrio].tailIndex>0))", 1, 2, 0); /* m: 250 -> 260,0 */
	reached1[250] = 1;
	trans[1][250]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)] = 255",0,0,0);
	trans[1][251]	= settr(0,0,0,0,0,"readyQueue[topPrio].tailIndex = (readyQueue[topPrio].tailIndex-1)",0,0,0);
	trans[1][255]	= settr(1347,2,257,1,0,".(goto)", 1, 2, 0); /* m: 257 -> 0,260 */
	reached1[257] = 1;
	trans[1][252]	= settr(1344,2,253,2,0,"else", 1, 2, 0);
	trans[1][253]	= settr(1345,2,260,750,750,"(1)", 1, 2, 0); /* m: 257 -> 260,0 */
	reached1[257] = 1;
	trans[1][257]	= settr(1349,2,260,751,751,"tcb[newTask].state = 4", 1, 2, 0); /* m: 258 -> 0,260 */
	reached1[258] = 1;
	trans[1][258]	= settr(0,0,0,0,0,"EP = newTask",0,0,0);
	T = trans[ 1][260] = settr(1352,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1352,0,259,0,0,"sub-sequence", 1, 2, 0);
	trans[1][259]	= settr(1351,0,1090,752,752,"int_ctrl_reg = int_save", 1, 2, 0);
	T = trans[ 1][393] = settr(1485,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(1485,2,263,0,0,"ATOMIC", 1, 2, 0);
	trans[1][263]	= settr(1355,2,392,753,753,"((EP==2))", 1, 2, 0); /* m: 264 -> 392,0 */
	reached1[264] = 1;
	trans[1][264]	= settr(0,0,0,0,0,"work = ((work+(counter*2))%100)",0,0,0);
	T = trans[ 1][392] = settr(1484,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1484,0,265,0,0,"sub-sequence", 1, 2, 0);
	trans[1][265]	= settr(1357,2,273,754,754,"interrupted_task = 0", 1, 2, 0); /* m: 266 -> 0,273 */
	reached1[266] = 1;
	trans[1][266]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[1][267]	= settr(0,0,0,0,0,"taskId = 0",0,0,0);
	trans[1][268]	= settr(0,0,0,0,0,"needResched = 0",0,0,0);
	trans[1][269]	= settr(0,0,0,0,0,"interrupted_task = 0",0,0,0);
	trans[1][270]	= settr(0,0,0,0,0,"needResched = 0",0,0,0);
	T = trans[ 1][273] = settr(1365,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1365,0,271,0,0,"sub-sequence", 1, 2, 0);
	trans[1][271]	= settr(1363,2,330,755,755,"int_save = int_ctrl_reg", 1, 2, 0); /* m: 272 -> 0,330 */
	reached1[272] = 1;
	trans[1][272]	= settr(0,0,0,0,0,"int_ctrl_reg = 1",0,0,0);
	trans[1][274]	= settr(0,0,0,0,0,"tickCount = (tickCount+1)",0,0,0);
	trans[1][275]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[1][331]	= settr(1423,2,330,1,0,".(goto)", 1, 2, 0);
	T = trans[1][330] = settr(1422,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(1422,2,276,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(1422,2,328,0,0,"DO", 1, 2, 0);
	trans[1][276]	= settr(1368,2,326,756,756,"((idx<sortLink.count))", 1, 2, 0); /* m: 277 -> 326,0 */
	reached1[277] = 1;
	trans[1][277]	= settr(0,0,0,0,0,"taskId = sortLink.tasks[idx]",0,0,0);
	T = trans[1][326] = settr(1418,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1418,2,278,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1418,2,324,0,0,"IF", 1, 2, 0);
	trans[1][278]	= settr(1370,2,314,757,757,"(((tcb[taskId].state==2)&&(tickCount>=tcb[taskId].wakeupTime)))", 1, 2, 0); /* m: 279 -> 314,0 */
	reached1[279] = 1;
	trans[1][279]	= settr(0,0,0,0,0,"tcb[taskId].state = 1",0,0,0);
	trans[1][280]	= settr(0,0,0,0,0,"tcb[taskId].delayTicks = 0",0,0,0);
	T = trans[ 1][314] = settr(1406,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1406,0,281,0,0,"sub-sequence", 1, 2, 0);
	trans[1][281]	= settr(1373,2,295,758,758,"removePos = 0", 1, 2, 0); /* m: 282 -> 0,295 */
	reached1[282] = 1;
	trans[1][282]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[1][283]	= settr(0,0,0,0,0,"shiftIdx = 0",0,0,0);
	trans[1][284]	= settr(0,0,0,0,0,"removePos = 0",0,0,0);
	trans[1][285]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[1][296]	= settr(1388,2,295,1,0,".(goto)", 1, 2, 0);
	T = trans[1][295] = settr(1387,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(1387,2,286,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(1387,2,293,0,0,"DO", 1, 2, 0);
	trans[1][286]	= settr(1378,2,291,759,0,"(((removePos<sortLink.count)&&!(found)))", 1, 2, 0);
	T = trans[1][291] = settr(1383,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1383,2,287,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1383,2,289,0,0,"IF", 1, 2, 0);
	trans[1][287]	= settr(1379,2,295,760,760,"((sortLink.tasks[removePos]==taskId))", 1, 2, 0); /* m: 288 -> 295,0 */
	reached1[288] = 1;
	trans[1][288]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[1][292]	= settr(1384,2,295,1,0,".(goto)", 1, 2, 0);
	trans[1][289]	= settr(1381,2,290,2,0,"else", 1, 2, 0);
	trans[1][290]	= settr(1382,2,295,761,761,"removePos = (removePos+1)", 1, 2, 0);
	trans[1][293]	= settr(1385,2,312,2,0,"else", 1, 2, 0);
	trans[1][294]	= settr(1386,2,312,1,0,"goto :b53", 1, 2, 0);
	trans[1][297]	= settr(1389,2,312,1,0,"break", 1, 2, 0);
	T = trans[1][312] = settr(1404,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1404,2,298,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1404,2,310,0,0,"IF", 1, 2, 0);
	trans[1][298]	= settr(1390,2,305,762,762,"((found==1))", 1, 2, 0); /* m: 299 -> 305,0 */
	reached1[299] = 1;
	trans[1][299]	= settr(0,0,0,0,0,"shiftIdx = removePos",0,0,0);
	trans[1][306]	= settr(1398,2,305,1,0,".(goto)", 1, 2, 0);
	T = trans[1][305] = settr(1397,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(1397,2,300,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(1397,2,303,0,0,"DO", 1, 2, 0);
	trans[1][300]	= settr(1392,2,305,763,763,"((shiftIdx<(sortLink.count-1)))", 1, 2, 0); /* m: 301 -> 305,0 */
	reached1[301] = 1;
	trans[1][301]	= settr(0,0,0,0,0,"sortLink.tasks[shiftIdx] = sortLink.tasks[(shiftIdx+1)]",0,0,0);
	trans[1][302]	= settr(0,0,0,0,0,"shiftIdx = (shiftIdx+1)",0,0,0);
	trans[1][303]	= settr(1395,2,322,764,764,"((shiftIdx>=(sortLink.count-1)))", 1, 2, 0); /* m: 308 -> 322,0 */
	reached1[308] = 1;
	trans[1][304]	= settr(1396,2,308,1,0,"goto :b54", 1, 2, 0); /* m: 308 -> 0,322 */
	reached1[308] = 1;
	trans[1][307]	= settr(1399,2,308,1,0,"break", 1, 2, 0);
	trans[1][308]	= settr(1400,2,322,765,765,"sortLink.tasks[(sortLink.count-1)] = 255", 1, 2, 0); /* m: 309 -> 0,322 */
	reached1[309] = 1;
	trans[1][309]	= settr(0,0,0,0,0,"sortLink.count = (sortLink.count-1)",0,0,0);
	trans[1][313]	= settr(1405,2,322,1,0,".(goto)", 1, 2, 0);
	trans[1][310]	= settr(1402,2,311,2,0,"else", 1, 2, 0);
	trans[1][311]	= settr(1403,2,322,1,0,"(1)", 1, 2, 0);
	T = trans[ 1][322] = settr(1414,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1414,0,320,0,0,"sub-sequence", 1, 2, 0);
	T = trans[1][320] = settr(1412,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1412,2,315,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1412,2,318,0,0,"IF", 1, 2, 0);
	trans[1][315]	= settr(1407,2,330,766,766,"((readyQueue[tcb[taskId].prio].tailIndex<8))", 1, 2, 0); /* m: 316 -> 330,0 */
	reached1[316] = 1;
	trans[1][316]	= settr(0,0,0,0,0,"readyQueue[tcb[taskId].prio].tasks[readyQueue[tcb[taskId].prio].tailIndex] = taskId",0,0,0);
	trans[1][317]	= settr(0,0,0,0,0,"readyQueue[tcb[taskId].prio].tailIndex = (readyQueue[tcb[taskId].prio].tailIndex+1)",0,0,0);
	trans[1][321]	= settr(1413,2,323,1,0,".(goto)", 1, 2, 0); /* m: 323 -> 0,330 */
	reached1[323] = 1;
	trans[1][318]	= settr(1410,2,319,2,0,"else", 1, 2, 0);
	trans[1][319]	= settr(1411,2,330,767,767,"assert(0)", 1, 2, 0); /* m: 323 -> 0,330 */
	reached1[323] = 1;
	trans[1][323]	= settr(1415,2,330,768,768,"needResched = 1", 1, 2, 0);
	trans[1][327]	= settr(1419,2,330,1,0,".(goto)", 1, 2, 0);
	trans[1][324]	= settr(1416,2,325,2,0,"else", 1, 2, 0);
	trans[1][325]	= settr(1417,2,330,769,769,"idx = (idx+1)", 1, 2, 0);
	trans[1][328]	= settr(1420,2,346,770,770,"((idx>=sortLink.count))", 1, 2, 0); /* m: 333 -> 346,0 */
	reached1[333] = 1;
	trans[1][329]	= settr(1421,2,333,1,0,"goto :b52", 1, 2, 0); /* m: 333 -> 0,346 */
	reached1[333] = 1;
	trans[1][332]	= settr(1424,2,333,1,0,"break", 1, 2, 0);
	trans[1][333]	= settr(1425,2,346,771,771,"interrupted_task = EP", 1, 2, 0);
	T = trans[1][346] = settr(1438,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1438,2,334,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1438,2,344,0,0,"IF", 1, 2, 0);
	trans[1][334]	= settr(1426,2,343,772,772,"((((interrupted_task>=1)&&(interrupted_task<=4))&&(tcb[interrupted_task].state!=2)))", 1, 2, 0); /* m: 335 -> 343,0 */
	reached1[335] = 1;
	trans[1][335]	= settr(0,0,0,0,0,"tcb[interrupted_task].state = 1",0,0,0);
	T = trans[ 1][343] = settr(1435,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1435,0,341,0,0,"sub-sequence", 1, 2, 0);
	T = trans[1][341] = settr(1433,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1433,2,336,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1433,2,339,0,0,"IF", 1, 2, 0);
	trans[1][336]	= settr(1428,2,369,773,773,"((readyQueue[tcb[interrupted_task].prio].tailIndex<8))", 1, 2, 0); /* m: 337 -> 369,0 */
	reached1[337] = 1;
	trans[1][337]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tasks[readyQueue[tcb[interrupted_task].prio].tailIndex] = interrupted_task",0,0,0);
	trans[1][338]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tailIndex = (readyQueue[tcb[interrupted_task].prio].tailIndex+1)",0,0,0);
	trans[1][342]	= settr(1434,2,369,1,0,".(goto)", 1, 2, 0);
	trans[1][339]	= settr(1431,2,340,2,0,"else", 1, 2, 0);
	trans[1][340]	= settr(1432,2,369,774,0,"assert(0)", 1, 2, 0);
	trans[1][347]	= settr(1439,2,369,1,0,".(goto)", 1, 2, 0);
	trans[1][344]	= settr(1436,2,345,2,0,"else", 1, 2, 0);
	trans[1][345]	= settr(1437,2,369,1,0,"(1)", 1, 2, 0);
	T = trans[ 1][369] = settr(1461,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1461,0,348,0,0,"sub-sequence", 1, 2, 0);
	trans[1][348]	= settr(1440,2,364,775,775,"prio = 0", 1, 2, 0); /* m: 349 -> 0,364 */
	reached1[349] = 1;
	trans[1][349]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[1][350]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[1][351]	= settr(0,0,0,0,0,"prio = 0",0,0,0);
	trans[1][352]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[1][353]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[1][365]	= settr(1457,2,364,1,0,".(goto)", 1, 2, 0);
	T = trans[1][364] = settr(1456,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(1456,2,354,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(1456,2,362,0,0,"DO", 1, 2, 0);
	trans[1][354]	= settr(1446,2,360,776,0,"(((prio<4)&&!(found)))", 1, 2, 0);
	T = trans[1][360] = settr(1452,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1452,2,355,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1452,2,358,0,0,"IF", 1, 2, 0);
	trans[1][355]	= settr(1447,2,364,777,777,"((readyQueue[prio].tailIndex>0))", 1, 2, 0); /* m: 356 -> 364,0 */
	reached1[356] = 1;
	trans[1][356]	= settr(0,0,0,0,0,"top_task = readyQueue[prio].tasks[0]",0,0,0);
	trans[1][357]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[1][361]	= settr(1453,2,364,1,0,".(goto)", 1, 2, 0);
	trans[1][358]	= settr(1450,2,359,2,0,"else", 1, 2, 0);
	trans[1][359]	= settr(1451,2,364,778,778,"prio = (prio+1)", 1, 2, 0);
	trans[1][362]	= settr(1454,2,387,779,779,"(((prio>=4)||found))", 1, 2, 0); /* m: 367 -> 387,0 */
	reached1[367] = 1;
	trans[1][363]	= settr(1455,2,367,1,0,"goto :b55", 1, 2, 0); /* m: 367 -> 0,387 */
	reached1[367] = 1;
	trans[1][366]	= settr(1458,2,367,1,0,"break", 1, 2, 0);
	trans[1][367]	= settr(1459,2,387,780,780,"newTask = top_task", 1, 2, 0); /* m: 368 -> 0,387 */
	reached1[368] = 1;
	trans[1][368]	= settr(0,0,0,0,0,"topPrio = prio",0,0,0);
	T = trans[ 1][387] = settr(1479,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1479,0,370,0,0,"sub-sequence", 1, 2, 0);
	trans[1][370]	= settr(1462,2,377,781,781,"deq_idx = 0", 1, 2, 0); /* m: 371 -> 0,377 */
	reached1[371] = 1;
	trans[1][371]	= settr(0,0,0,0,0,"deq_idx = 0",0,0,0);
	trans[1][378]	= settr(1470,2,377,1,0,".(goto)", 1, 2, 0);
	T = trans[1][377] = settr(1469,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(1469,2,372,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(1469,2,375,0,0,"DO", 1, 2, 0);
	trans[1][372]	= settr(1464,2,377,782,782,"((deq_idx<(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0); /* m: 373 -> 377,0 */
	reached1[373] = 1;
	trans[1][373]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[deq_idx] = readyQueue[topPrio].tasks[(deq_idx+1)]",0,0,0);
	trans[1][374]	= settr(0,0,0,0,0,"deq_idx = (deq_idx+1)",0,0,0);
	trans[1][375]	= settr(1467,2,385,783,783,"((deq_idx>=(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0);
	trans[1][376]	= settr(1468,2,385,1,0,"goto :b56", 1, 2, 0);
	trans[1][379]	= settr(1471,2,385,1,0,"break", 1, 2, 0);
	T = trans[1][385] = settr(1477,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1477,2,380,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1477,2,383,0,0,"IF", 1, 2, 0);
	trans[1][380]	= settr(1472,2,391,784,784,"((readyQueue[topPrio].tailIndex>0))", 1, 2, 0); /* m: 381 -> 391,0 */
	reached1[381] = 1;
	trans[1][381]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)] = 255",0,0,0);
	trans[1][382]	= settr(0,0,0,0,0,"readyQueue[topPrio].tailIndex = (readyQueue[topPrio].tailIndex-1)",0,0,0);
	trans[1][386]	= settr(1478,2,388,1,0,".(goto)", 1, 2, 0); /* m: 388 -> 0,391 */
	reached1[388] = 1;
	trans[1][383]	= settr(1475,2,384,2,0,"else", 1, 2, 0);
	trans[1][384]	= settr(1476,2,391,785,785,"(1)", 1, 2, 0); /* m: 388 -> 391,0 */
	reached1[388] = 1;
	trans[1][388]	= settr(1480,2,391,786,786,"tcb[newTask].state = 4", 1, 2, 0); /* m: 389 -> 0,391 */
	reached1[389] = 1;
	trans[1][389]	= settr(0,0,0,0,0,"EP = newTask",0,0,0);
	T = trans[ 1][391] = settr(1483,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1483,0,390,0,0,"sub-sequence", 1, 2, 0);
	trans[1][390]	= settr(1482,0,1090,787,787,"int_ctrl_reg = int_save", 1, 2, 0);
	T = trans[ 1][675] = settr(1767,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(1767,2,394,0,0,"ATOMIC", 1, 2, 0);
	trans[1][394]	= settr(1486,2,546,788,0,"((EP==2))", 1, 2, 0);
	T = trans[ 1][546] = settr(1638,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1638,0,395,0,0,"sub-sequence", 1, 2, 0);
	trans[1][395]	= settr(1487,2,544,789,789,"currentTask = 0", 1, 2, 0);
	T = trans[1][544] = settr(1636,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1636,2,396,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1636,2,542,0,0,"IF", 1, 2, 0);
	trans[1][396]	= settr(1488,2,399,790,0,"((((3>0)&&(EP>=1))&&(EP<=4)))", 1, 2, 0);
	T = trans[ 1][399] = settr(1491,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1491,0,397,0,0,"sub-sequence", 1, 2, 0);
	trans[1][397]	= settr(1489,2,411,791,791,"int_save = int_ctrl_reg", 1, 2, 0); /* m: 398 -> 0,411 */
	reached1[398] = 1;
	trans[1][398]	= settr(0,0,0,0,0,"int_ctrl_reg = 1",0,0,0);
	trans[1][400]	= settr(0,0,0,0,0,"currentTask = EP",0,0,0);
	trans[1][401]	= settr(0,0,0,0,0,"tcb[currentTask].state = 2",0,0,0);
	trans[1][402]	= settr(0,0,0,0,0,"tcb[currentTask].wakeupTime = (tickCount+3)",0,0,0);
	trans[1][403]	= settr(0,0,0,0,0,"tcb[currentTask].delayTicks = 3",0,0,0);
	T = trans[ 1][411] = settr(1503,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1503,0,409,0,0,"sub-sequence", 1, 2, 0);
	T = trans[1][409] = settr(1501,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1501,2,404,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1501,2,407,0,0,"IF", 1, 2, 0);
	trans[1][404]	= settr(1496,2,539,792,792,"((sortLink.count<8))", 1, 2, 0); /* m: 405 -> 539,0 */
	reached1[405] = 1;
	trans[1][405]	= settr(0,0,0,0,0,"sortLink.tasks[sortLink.count] = currentTask",0,0,0);
	trans[1][406]	= settr(0,0,0,0,0,"sortLink.count = (sortLink.count+1)",0,0,0);
	trans[1][410]	= settr(1502,2,539,1,0,".(goto)", 1, 2, 0);
	trans[1][407]	= settr(1499,2,408,2,0,"else", 1, 2, 0);
	trans[1][408]	= settr(1500,2,539,793,0,"assert(0)", 1, 2, 0);
	T = trans[ 1][539] = settr(1631,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1631,0,412,0,0,"sub-sequence", 1, 2, 0);
	trans[1][412]	= settr(1504,2,420,794,794,"interrupted_task = 0", 1, 2, 0); /* m: 413 -> 0,420 */
	reached1[413] = 1;
	trans[1][413]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[1][414]	= settr(0,0,0,0,0,"taskId = 0",0,0,0);
	trans[1][415]	= settr(0,0,0,0,0,"needResched = 0",0,0,0);
	trans[1][416]	= settr(0,0,0,0,0,"interrupted_task = 0",0,0,0);
	trans[1][417]	= settr(0,0,0,0,0,"needResched = 0",0,0,0);
	T = trans[ 1][420] = settr(1512,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1512,0,418,0,0,"sub-sequence", 1, 2, 0);
	trans[1][418]	= settr(1510,2,477,795,795,"int_save = int_ctrl_reg", 1, 2, 0); /* m: 419 -> 0,477 */
	reached1[419] = 1;
	trans[1][419]	= settr(0,0,0,0,0,"int_ctrl_reg = 1",0,0,0);
	trans[1][421]	= settr(0,0,0,0,0,"tickCount = (tickCount+1)",0,0,0);
	trans[1][422]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[1][478]	= settr(1570,2,477,1,0,".(goto)", 1, 2, 0);
	T = trans[1][477] = settr(1569,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(1569,2,423,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(1569,2,475,0,0,"DO", 1, 2, 0);
	trans[1][423]	= settr(1515,2,473,796,796,"((idx<sortLink.count))", 1, 2, 0); /* m: 424 -> 473,0 */
	reached1[424] = 1;
	trans[1][424]	= settr(0,0,0,0,0,"taskId = sortLink.tasks[idx]",0,0,0);
	T = trans[1][473] = settr(1565,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1565,2,425,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1565,2,471,0,0,"IF", 1, 2, 0);
	trans[1][425]	= settr(1517,2,461,797,797,"(((tcb[taskId].state==2)&&(tickCount>=tcb[taskId].wakeupTime)))", 1, 2, 0); /* m: 426 -> 461,0 */
	reached1[426] = 1;
	trans[1][426]	= settr(0,0,0,0,0,"tcb[taskId].state = 1",0,0,0);
	trans[1][427]	= settr(0,0,0,0,0,"tcb[taskId].delayTicks = 0",0,0,0);
	T = trans[ 1][461] = settr(1553,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1553,0,428,0,0,"sub-sequence", 1, 2, 0);
	trans[1][428]	= settr(1520,2,442,798,798,"removePos = 0", 1, 2, 0); /* m: 429 -> 0,442 */
	reached1[429] = 1;
	trans[1][429]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[1][430]	= settr(0,0,0,0,0,"shiftIdx = 0",0,0,0);
	trans[1][431]	= settr(0,0,0,0,0,"removePos = 0",0,0,0);
	trans[1][432]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[1][443]	= settr(1535,2,442,1,0,".(goto)", 1, 2, 0);
	T = trans[1][442] = settr(1534,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(1534,2,433,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(1534,2,440,0,0,"DO", 1, 2, 0);
	trans[1][433]	= settr(1525,2,438,799,0,"(((removePos<sortLink.count)&&!(found)))", 1, 2, 0);
	T = trans[1][438] = settr(1530,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1530,2,434,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1530,2,436,0,0,"IF", 1, 2, 0);
	trans[1][434]	= settr(1526,2,442,800,800,"((sortLink.tasks[removePos]==taskId))", 1, 2, 0); /* m: 435 -> 442,0 */
	reached1[435] = 1;
	trans[1][435]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[1][439]	= settr(1531,2,442,1,0,".(goto)", 1, 2, 0);
	trans[1][436]	= settr(1528,2,437,2,0,"else", 1, 2, 0);
	trans[1][437]	= settr(1529,2,442,801,801,"removePos = (removePos+1)", 1, 2, 0);
	trans[1][440]	= settr(1532,2,459,2,0,"else", 1, 2, 0);
	trans[1][441]	= settr(1533,2,459,1,0,"goto :b58", 1, 2, 0);
	trans[1][444]	= settr(1536,2,459,1,0,"break", 1, 2, 0);
	T = trans[1][459] = settr(1551,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1551,2,445,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1551,2,457,0,0,"IF", 1, 2, 0);
	trans[1][445]	= settr(1537,2,452,802,802,"((found==1))", 1, 2, 0); /* m: 446 -> 452,0 */
	reached1[446] = 1;
	trans[1][446]	= settr(0,0,0,0,0,"shiftIdx = removePos",0,0,0);
	trans[1][453]	= settr(1545,2,452,1,0,".(goto)", 1, 2, 0);
	T = trans[1][452] = settr(1544,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(1544,2,447,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(1544,2,450,0,0,"DO", 1, 2, 0);
	trans[1][447]	= settr(1539,2,452,803,803,"((shiftIdx<(sortLink.count-1)))", 1, 2, 0); /* m: 448 -> 452,0 */
	reached1[448] = 1;
	trans[1][448]	= settr(0,0,0,0,0,"sortLink.tasks[shiftIdx] = sortLink.tasks[(shiftIdx+1)]",0,0,0);
	trans[1][449]	= settr(0,0,0,0,0,"shiftIdx = (shiftIdx+1)",0,0,0);
	trans[1][450]	= settr(1542,2,469,804,804,"((shiftIdx>=(sortLink.count-1)))", 1, 2, 0); /* m: 455 -> 469,0 */
	reached1[455] = 1;
	trans[1][451]	= settr(1543,2,455,1,0,"goto :b59", 1, 2, 0); /* m: 455 -> 0,469 */
	reached1[455] = 1;
	trans[1][454]	= settr(1546,2,455,1,0,"break", 1, 2, 0);
	trans[1][455]	= settr(1547,2,469,805,805,"sortLink.tasks[(sortLink.count-1)] = 255", 1, 2, 0); /* m: 456 -> 0,469 */
	reached1[456] = 1;
	trans[1][456]	= settr(0,0,0,0,0,"sortLink.count = (sortLink.count-1)",0,0,0);
	trans[1][460]	= settr(1552,2,469,1,0,".(goto)", 1, 2, 0);
	trans[1][457]	= settr(1549,2,458,2,0,"else", 1, 2, 0);
	trans[1][458]	= settr(1550,2,469,1,0,"(1)", 1, 2, 0);
	T = trans[ 1][469] = settr(1561,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1561,0,467,0,0,"sub-sequence", 1, 2, 0);
	T = trans[1][467] = settr(1559,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1559,2,462,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1559,2,465,0,0,"IF", 1, 2, 0);
	trans[1][462]	= settr(1554,2,477,806,806,"((readyQueue[tcb[taskId].prio].tailIndex<8))", 1, 2, 0); /* m: 463 -> 477,0 */
	reached1[463] = 1;
	trans[1][463]	= settr(0,0,0,0,0,"readyQueue[tcb[taskId].prio].tasks[readyQueue[tcb[taskId].prio].tailIndex] = taskId",0,0,0);
	trans[1][464]	= settr(0,0,0,0,0,"readyQueue[tcb[taskId].prio].tailIndex = (readyQueue[tcb[taskId].prio].tailIndex+1)",0,0,0);
	trans[1][468]	= settr(1560,2,470,1,0,".(goto)", 1, 2, 0); /* m: 470 -> 0,477 */
	reached1[470] = 1;
	trans[1][465]	= settr(1557,2,466,2,0,"else", 1, 2, 0);
	trans[1][466]	= settr(1558,2,477,807,807,"assert(0)", 1, 2, 0); /* m: 470 -> 0,477 */
	reached1[470] = 1;
	trans[1][470]	= settr(1562,2,477,808,808,"needResched = 1", 1, 2, 0);
	trans[1][474]	= settr(1566,2,477,1,0,".(goto)", 1, 2, 0);
	trans[1][471]	= settr(1563,2,472,2,0,"else", 1, 2, 0);
	trans[1][472]	= settr(1564,2,477,809,809,"idx = (idx+1)", 1, 2, 0);
	trans[1][475]	= settr(1567,2,493,810,810,"((idx>=sortLink.count))", 1, 2, 0); /* m: 480 -> 493,0 */
	reached1[480] = 1;
	trans[1][476]	= settr(1568,2,480,1,0,"goto :b57", 1, 2, 0); /* m: 480 -> 0,493 */
	reached1[480] = 1;
	trans[1][479]	= settr(1571,2,480,1,0,"break", 1, 2, 0);
	trans[1][480]	= settr(1572,2,493,811,811,"interrupted_task = EP", 1, 2, 0);
	T = trans[1][493] = settr(1585,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1585,2,481,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1585,2,491,0,0,"IF", 1, 2, 0);
	trans[1][481]	= settr(1573,2,490,812,812,"((((interrupted_task>=1)&&(interrupted_task<=4))&&(tcb[interrupted_task].state!=2)))", 1, 2, 0); /* m: 482 -> 490,0 */
	reached1[482] = 1;
	trans[1][482]	= settr(0,0,0,0,0,"tcb[interrupted_task].state = 1",0,0,0);
	T = trans[ 1][490] = settr(1582,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1582,0,488,0,0,"sub-sequence", 1, 2, 0);
	T = trans[1][488] = settr(1580,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1580,2,483,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1580,2,486,0,0,"IF", 1, 2, 0);
	trans[1][483]	= settr(1575,2,516,813,813,"((readyQueue[tcb[interrupted_task].prio].tailIndex<8))", 1, 2, 0); /* m: 484 -> 516,0 */
	reached1[484] = 1;
	trans[1][484]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tasks[readyQueue[tcb[interrupted_task].prio].tailIndex] = interrupted_task",0,0,0);
	trans[1][485]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tailIndex = (readyQueue[tcb[interrupted_task].prio].tailIndex+1)",0,0,0);
	trans[1][489]	= settr(1581,2,516,1,0,".(goto)", 1, 2, 0);
	trans[1][486]	= settr(1578,2,487,2,0,"else", 1, 2, 0);
	trans[1][487]	= settr(1579,2,516,814,0,"assert(0)", 1, 2, 0);
	trans[1][494]	= settr(1586,2,516,1,0,".(goto)", 1, 2, 0);
	trans[1][491]	= settr(1583,2,492,2,0,"else", 1, 2, 0);
	trans[1][492]	= settr(1584,2,516,1,0,"(1)", 1, 2, 0);
	T = trans[ 1][516] = settr(1608,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1608,0,495,0,0,"sub-sequence", 1, 2, 0);
	trans[1][495]	= settr(1587,2,511,815,815,"prio = 0", 1, 2, 0); /* m: 496 -> 0,511 */
	reached1[496] = 1;
	trans[1][496]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[1][497]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[1][498]	= settr(0,0,0,0,0,"prio = 0",0,0,0);
	trans[1][499]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[1][500]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[1][512]	= settr(1604,2,511,1,0,".(goto)", 1, 2, 0);
	T = trans[1][511] = settr(1603,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(1603,2,501,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(1603,2,509,0,0,"DO", 1, 2, 0);
	trans[1][501]	= settr(1593,2,507,816,0,"(((prio<4)&&!(found)))", 1, 2, 0);
	T = trans[1][507] = settr(1599,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1599,2,502,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1599,2,505,0,0,"IF", 1, 2, 0);
	trans[1][502]	= settr(1594,2,511,817,817,"((readyQueue[prio].tailIndex>0))", 1, 2, 0); /* m: 503 -> 511,0 */
	reached1[503] = 1;
	trans[1][503]	= settr(0,0,0,0,0,"top_task = readyQueue[prio].tasks[0]",0,0,0);
	trans[1][504]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[1][508]	= settr(1600,2,511,1,0,".(goto)", 1, 2, 0);
	trans[1][505]	= settr(1597,2,506,2,0,"else", 1, 2, 0);
	trans[1][506]	= settr(1598,2,511,818,818,"prio = (prio+1)", 1, 2, 0);
	trans[1][509]	= settr(1601,2,534,819,819,"(((prio>=4)||found))", 1, 2, 0); /* m: 514 -> 534,0 */
	reached1[514] = 1;
	trans[1][510]	= settr(1602,2,514,1,0,"goto :b60", 1, 2, 0); /* m: 514 -> 0,534 */
	reached1[514] = 1;
	trans[1][513]	= settr(1605,2,514,1,0,"break", 1, 2, 0);
	trans[1][514]	= settr(1606,2,534,820,820,"newTask = top_task", 1, 2, 0); /* m: 515 -> 0,534 */
	reached1[515] = 1;
	trans[1][515]	= settr(0,0,0,0,0,"topPrio = prio",0,0,0);
	T = trans[ 1][534] = settr(1626,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1626,0,517,0,0,"sub-sequence", 1, 2, 0);
	trans[1][517]	= settr(1609,2,524,821,821,"deq_idx = 0", 1, 2, 0); /* m: 518 -> 0,524 */
	reached1[518] = 1;
	trans[1][518]	= settr(0,0,0,0,0,"deq_idx = 0",0,0,0);
	trans[1][525]	= settr(1617,2,524,1,0,".(goto)", 1, 2, 0);
	T = trans[1][524] = settr(1616,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(1616,2,519,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(1616,2,522,0,0,"DO", 1, 2, 0);
	trans[1][519]	= settr(1611,2,524,822,822,"((deq_idx<(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0); /* m: 520 -> 524,0 */
	reached1[520] = 1;
	trans[1][520]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[deq_idx] = readyQueue[topPrio].tasks[(deq_idx+1)]",0,0,0);
	trans[1][521]	= settr(0,0,0,0,0,"deq_idx = (deq_idx+1)",0,0,0);
	trans[1][522]	= settr(1614,2,532,823,823,"((deq_idx>=(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0);
	trans[1][523]	= settr(1615,2,532,1,0,"goto :b61", 1, 2, 0);
	trans[1][526]	= settr(1618,2,532,1,0,"break", 1, 2, 0);
	T = trans[1][532] = settr(1624,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1624,2,527,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1624,2,530,0,0,"IF", 1, 2, 0);
	trans[1][527]	= settr(1619,2,538,824,824,"((readyQueue[topPrio].tailIndex>0))", 1, 2, 0); /* m: 528 -> 538,0 */
	reached1[528] = 1;
	trans[1][528]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)] = 255",0,0,0);
	trans[1][529]	= settr(0,0,0,0,0,"readyQueue[topPrio].tailIndex = (readyQueue[topPrio].tailIndex-1)",0,0,0);
	trans[1][533]	= settr(1625,2,535,1,0,".(goto)", 1, 2, 0); /* m: 535 -> 0,538 */
	reached1[535] = 1;
	trans[1][530]	= settr(1622,2,531,2,0,"else", 1, 2, 0);
	trans[1][531]	= settr(1623,2,538,825,825,"(1)", 1, 2, 0); /* m: 535 -> 538,0 */
	reached1[535] = 1;
	trans[1][535]	= settr(1627,2,538,826,826,"tcb[newTask].state = 4", 1, 2, 0); /* m: 536 -> 0,538 */
	reached1[536] = 1;
	trans[1][536]	= settr(0,0,0,0,0,"EP = newTask",0,0,0);
	T = trans[ 1][538] = settr(1630,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1630,0,537,0,0,"sub-sequence", 1, 2, 0);
	trans[1][537]	= settr(1629,2,541,827,827,"int_ctrl_reg = int_save", 1, 2, 0);
	T = trans[ 1][541] = settr(1633,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1633,0,540,0,0,"sub-sequence", 1, 2, 0);
	trans[1][540]	= settr(1632,2,674,828,828,"int_ctrl_reg = int_save", 1, 2, 0);
	trans[1][545]	= settr(1637,2,674,1,0,".(goto)", 1, 2, 0);
	trans[1][542]	= settr(1634,2,543,2,0,"else", 1, 2, 0);
	trans[1][543]	= settr(1635,2,674,1,0,"(1)", 1, 2, 0);
	T = trans[ 1][674] = settr(1766,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1766,0,547,0,0,"sub-sequence", 1, 2, 0);
	trans[1][547]	= settr(1639,2,555,829,829,"interrupted_task = 0", 1, 2, 0); /* m: 548 -> 0,555 */
	reached1[548] = 1;
	trans[1][548]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[1][549]	= settr(0,0,0,0,0,"taskId = 0",0,0,0);
	trans[1][550]	= settr(0,0,0,0,0,"needResched = 0",0,0,0);
	trans[1][551]	= settr(0,0,0,0,0,"interrupted_task = 0",0,0,0);
	trans[1][552]	= settr(0,0,0,0,0,"needResched = 0",0,0,0);
	T = trans[ 1][555] = settr(1647,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1647,0,553,0,0,"sub-sequence", 1, 2, 0);
	trans[1][553]	= settr(1645,2,612,830,830,"int_save = int_ctrl_reg", 1, 2, 0); /* m: 554 -> 0,612 */
	reached1[554] = 1;
	trans[1][554]	= settr(0,0,0,0,0,"int_ctrl_reg = 1",0,0,0);
	trans[1][556]	= settr(0,0,0,0,0,"tickCount = (tickCount+1)",0,0,0);
	trans[1][557]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[1][613]	= settr(1705,2,612,1,0,".(goto)", 1, 2, 0);
	T = trans[1][612] = settr(1704,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(1704,2,558,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(1704,2,610,0,0,"DO", 1, 2, 0);
	trans[1][558]	= settr(1650,2,608,831,831,"((idx<sortLink.count))", 1, 2, 0); /* m: 559 -> 608,0 */
	reached1[559] = 1;
	trans[1][559]	= settr(0,0,0,0,0,"taskId = sortLink.tasks[idx]",0,0,0);
	T = trans[1][608] = settr(1700,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1700,2,560,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1700,2,606,0,0,"IF", 1, 2, 0);
	trans[1][560]	= settr(1652,2,596,832,832,"(((tcb[taskId].state==2)&&(tickCount>=tcb[taskId].wakeupTime)))", 1, 2, 0); /* m: 561 -> 596,0 */
	reached1[561] = 1;
	trans[1][561]	= settr(0,0,0,0,0,"tcb[taskId].state = 1",0,0,0);
	trans[1][562]	= settr(0,0,0,0,0,"tcb[taskId].delayTicks = 0",0,0,0);
	T = trans[ 1][596] = settr(1688,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1688,0,563,0,0,"sub-sequence", 1, 2, 0);
	trans[1][563]	= settr(1655,2,577,833,833,"removePos = 0", 1, 2, 0); /* m: 564 -> 0,577 */
	reached1[564] = 1;
	trans[1][564]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[1][565]	= settr(0,0,0,0,0,"shiftIdx = 0",0,0,0);
	trans[1][566]	= settr(0,0,0,0,0,"removePos = 0",0,0,0);
	trans[1][567]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[1][578]	= settr(1670,2,577,1,0,".(goto)", 1, 2, 0);
	T = trans[1][577] = settr(1669,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(1669,2,568,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(1669,2,575,0,0,"DO", 1, 2, 0);
	trans[1][568]	= settr(1660,2,573,834,0,"(((removePos<sortLink.count)&&!(found)))", 1, 2, 0);
	T = trans[1][573] = settr(1665,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1665,2,569,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1665,2,571,0,0,"IF", 1, 2, 0);
	trans[1][569]	= settr(1661,2,577,835,835,"((sortLink.tasks[removePos]==taskId))", 1, 2, 0); /* m: 570 -> 577,0 */
	reached1[570] = 1;
	trans[1][570]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[1][574]	= settr(1666,2,577,1,0,".(goto)", 1, 2, 0);
	trans[1][571]	= settr(1663,2,572,2,0,"else", 1, 2, 0);
	trans[1][572]	= settr(1664,2,577,836,836,"removePos = (removePos+1)", 1, 2, 0);
	trans[1][575]	= settr(1667,2,594,2,0,"else", 1, 2, 0);
	trans[1][576]	= settr(1668,2,594,1,0,"goto :b63", 1, 2, 0);
	trans[1][579]	= settr(1671,2,594,1,0,"break", 1, 2, 0);
	T = trans[1][594] = settr(1686,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1686,2,580,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1686,2,592,0,0,"IF", 1, 2, 0);
	trans[1][580]	= settr(1672,2,587,837,837,"((found==1))", 1, 2, 0); /* m: 581 -> 587,0 */
	reached1[581] = 1;
	trans[1][581]	= settr(0,0,0,0,0,"shiftIdx = removePos",0,0,0);
	trans[1][588]	= settr(1680,2,587,1,0,".(goto)", 1, 2, 0);
	T = trans[1][587] = settr(1679,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(1679,2,582,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(1679,2,585,0,0,"DO", 1, 2, 0);
	trans[1][582]	= settr(1674,2,587,838,838,"((shiftIdx<(sortLink.count-1)))", 1, 2, 0); /* m: 583 -> 587,0 */
	reached1[583] = 1;
	trans[1][583]	= settr(0,0,0,0,0,"sortLink.tasks[shiftIdx] = sortLink.tasks[(shiftIdx+1)]",0,0,0);
	trans[1][584]	= settr(0,0,0,0,0,"shiftIdx = (shiftIdx+1)",0,0,0);
	trans[1][585]	= settr(1677,2,604,839,839,"((shiftIdx>=(sortLink.count-1)))", 1, 2, 0); /* m: 590 -> 604,0 */
	reached1[590] = 1;
	trans[1][586]	= settr(1678,2,590,1,0,"goto :b64", 1, 2, 0); /* m: 590 -> 0,604 */
	reached1[590] = 1;
	trans[1][589]	= settr(1681,2,590,1,0,"break", 1, 2, 0);
	trans[1][590]	= settr(1682,2,604,840,840,"sortLink.tasks[(sortLink.count-1)] = 255", 1, 2, 0); /* m: 591 -> 0,604 */
	reached1[591] = 1;
	trans[1][591]	= settr(0,0,0,0,0,"sortLink.count = (sortLink.count-1)",0,0,0);
	trans[1][595]	= settr(1687,2,604,1,0,".(goto)", 1, 2, 0);
	trans[1][592]	= settr(1684,2,593,2,0,"else", 1, 2, 0);
	trans[1][593]	= settr(1685,2,604,1,0,"(1)", 1, 2, 0);
	T = trans[ 1][604] = settr(1696,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1696,0,602,0,0,"sub-sequence", 1, 2, 0);
	T = trans[1][602] = settr(1694,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1694,2,597,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1694,2,600,0,0,"IF", 1, 2, 0);
	trans[1][597]	= settr(1689,2,612,841,841,"((readyQueue[tcb[taskId].prio].tailIndex<8))", 1, 2, 0); /* m: 598 -> 612,0 */
	reached1[598] = 1;
	trans[1][598]	= settr(0,0,0,0,0,"readyQueue[tcb[taskId].prio].tasks[readyQueue[tcb[taskId].prio].tailIndex] = taskId",0,0,0);
	trans[1][599]	= settr(0,0,0,0,0,"readyQueue[tcb[taskId].prio].tailIndex = (readyQueue[tcb[taskId].prio].tailIndex+1)",0,0,0);
	trans[1][603]	= settr(1695,2,605,1,0,".(goto)", 1, 2, 0); /* m: 605 -> 0,612 */
	reached1[605] = 1;
	trans[1][600]	= settr(1692,2,601,2,0,"else", 1, 2, 0);
	trans[1][601]	= settr(1693,2,612,842,842,"assert(0)", 1, 2, 0); /* m: 605 -> 0,612 */
	reached1[605] = 1;
	trans[1][605]	= settr(1697,2,612,843,843,"needResched = 1", 1, 2, 0);
	trans[1][609]	= settr(1701,2,612,1,0,".(goto)", 1, 2, 0);
	trans[1][606]	= settr(1698,2,607,2,0,"else", 1, 2, 0);
	trans[1][607]	= settr(1699,2,612,844,844,"idx = (idx+1)", 1, 2, 0);
	trans[1][610]	= settr(1702,2,628,845,845,"((idx>=sortLink.count))", 1, 2, 0); /* m: 615 -> 628,0 */
	reached1[615] = 1;
	trans[1][611]	= settr(1703,2,615,1,0,"goto :b62", 1, 2, 0); /* m: 615 -> 0,628 */
	reached1[615] = 1;
	trans[1][614]	= settr(1706,2,615,1,0,"break", 1, 2, 0);
	trans[1][615]	= settr(1707,2,628,846,846,"interrupted_task = EP", 1, 2, 0);
	T = trans[1][628] = settr(1720,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1720,2,616,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1720,2,626,0,0,"IF", 1, 2, 0);
	trans[1][616]	= settr(1708,2,625,847,847,"((((interrupted_task>=1)&&(interrupted_task<=4))&&(tcb[interrupted_task].state!=2)))", 1, 2, 0); /* m: 617 -> 625,0 */
	reached1[617] = 1;
	trans[1][617]	= settr(0,0,0,0,0,"tcb[interrupted_task].state = 1",0,0,0);
	T = trans[ 1][625] = settr(1717,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1717,0,623,0,0,"sub-sequence", 1, 2, 0);
	T = trans[1][623] = settr(1715,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1715,2,618,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1715,2,621,0,0,"IF", 1, 2, 0);
	trans[1][618]	= settr(1710,2,651,848,848,"((readyQueue[tcb[interrupted_task].prio].tailIndex<8))", 1, 2, 0); /* m: 619 -> 651,0 */
	reached1[619] = 1;
	trans[1][619]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tasks[readyQueue[tcb[interrupted_task].prio].tailIndex] = interrupted_task",0,0,0);
	trans[1][620]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tailIndex = (readyQueue[tcb[interrupted_task].prio].tailIndex+1)",0,0,0);
	trans[1][624]	= settr(1716,2,651,1,0,".(goto)", 1, 2, 0);
	trans[1][621]	= settr(1713,2,622,2,0,"else", 1, 2, 0);
	trans[1][622]	= settr(1714,2,651,849,0,"assert(0)", 1, 2, 0);
	trans[1][629]	= settr(1721,2,651,1,0,".(goto)", 1, 2, 0);
	trans[1][626]	= settr(1718,2,627,2,0,"else", 1, 2, 0);
	trans[1][627]	= settr(1719,2,651,1,0,"(1)", 1, 2, 0);
	T = trans[ 1][651] = settr(1743,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1743,0,630,0,0,"sub-sequence", 1, 2, 0);
	trans[1][630]	= settr(1722,2,646,850,850,"prio = 0", 1, 2, 0); /* m: 631 -> 0,646 */
	reached1[631] = 1;
	trans[1][631]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[1][632]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[1][633]	= settr(0,0,0,0,0,"prio = 0",0,0,0);
	trans[1][634]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[1][635]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[1][647]	= settr(1739,2,646,1,0,".(goto)", 1, 2, 0);
	T = trans[1][646] = settr(1738,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(1738,2,636,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(1738,2,644,0,0,"DO", 1, 2, 0);
	trans[1][636]	= settr(1728,2,642,851,0,"(((prio<4)&&!(found)))", 1, 2, 0);
	T = trans[1][642] = settr(1734,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1734,2,637,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1734,2,640,0,0,"IF", 1, 2, 0);
	trans[1][637]	= settr(1729,2,646,852,852,"((readyQueue[prio].tailIndex>0))", 1, 2, 0); /* m: 638 -> 646,0 */
	reached1[638] = 1;
	trans[1][638]	= settr(0,0,0,0,0,"top_task = readyQueue[prio].tasks[0]",0,0,0);
	trans[1][639]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[1][643]	= settr(1735,2,646,1,0,".(goto)", 1, 2, 0);
	trans[1][640]	= settr(1732,2,641,2,0,"else", 1, 2, 0);
	trans[1][641]	= settr(1733,2,646,853,853,"prio = (prio+1)", 1, 2, 0);
	trans[1][644]	= settr(1736,2,669,854,854,"(((prio>=4)||found))", 1, 2, 0); /* m: 649 -> 669,0 */
	reached1[649] = 1;
	trans[1][645]	= settr(1737,2,649,1,0,"goto :b65", 1, 2, 0); /* m: 649 -> 0,669 */
	reached1[649] = 1;
	trans[1][648]	= settr(1740,2,649,1,0,"break", 1, 2, 0);
	trans[1][649]	= settr(1741,2,669,855,855,"newTask = top_task", 1, 2, 0); /* m: 650 -> 0,669 */
	reached1[650] = 1;
	trans[1][650]	= settr(0,0,0,0,0,"topPrio = prio",0,0,0);
	T = trans[ 1][669] = settr(1761,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1761,0,652,0,0,"sub-sequence", 1, 2, 0);
	trans[1][652]	= settr(1744,2,659,856,856,"deq_idx = 0", 1, 2, 0); /* m: 653 -> 0,659 */
	reached1[653] = 1;
	trans[1][653]	= settr(0,0,0,0,0,"deq_idx = 0",0,0,0);
	trans[1][660]	= settr(1752,2,659,1,0,".(goto)", 1, 2, 0);
	T = trans[1][659] = settr(1751,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(1751,2,654,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(1751,2,657,0,0,"DO", 1, 2, 0);
	trans[1][654]	= settr(1746,2,659,857,857,"((deq_idx<(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0); /* m: 655 -> 659,0 */
	reached1[655] = 1;
	trans[1][655]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[deq_idx] = readyQueue[topPrio].tasks[(deq_idx+1)]",0,0,0);
	trans[1][656]	= settr(0,0,0,0,0,"deq_idx = (deq_idx+1)",0,0,0);
	trans[1][657]	= settr(1749,2,667,858,858,"((deq_idx>=(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0);
	trans[1][658]	= settr(1750,2,667,1,0,"goto :b66", 1, 2, 0);
	trans[1][661]	= settr(1753,2,667,1,0,"break", 1, 2, 0);
	T = trans[1][667] = settr(1759,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1759,2,662,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1759,2,665,0,0,"IF", 1, 2, 0);
	trans[1][662]	= settr(1754,2,673,859,859,"((readyQueue[topPrio].tailIndex>0))", 1, 2, 0); /* m: 663 -> 673,0 */
	reached1[663] = 1;
	trans[1][663]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)] = 255",0,0,0);
	trans[1][664]	= settr(0,0,0,0,0,"readyQueue[topPrio].tailIndex = (readyQueue[topPrio].tailIndex-1)",0,0,0);
	trans[1][668]	= settr(1760,2,670,1,0,".(goto)", 1, 2, 0); /* m: 670 -> 0,673 */
	reached1[670] = 1;
	trans[1][665]	= settr(1757,2,666,2,0,"else", 1, 2, 0);
	trans[1][666]	= settr(1758,2,673,860,860,"(1)", 1, 2, 0); /* m: 670 -> 673,0 */
	reached1[670] = 1;
	trans[1][670]	= settr(1762,2,673,861,861,"tcb[newTask].state = 4", 1, 2, 0); /* m: 671 -> 0,673 */
	reached1[671] = 1;
	trans[1][671]	= settr(0,0,0,0,0,"EP = newTask",0,0,0);
	T = trans[ 1][673] = settr(1765,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1765,0,672,0,0,"sub-sequence", 1, 2, 0);
	trans[1][672]	= settr(1764,0,1090,862,862,"int_ctrl_reg = int_save", 1, 2, 0);
	T = trans[ 1][957] = settr(2049,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(2049,2,676,0,0,"ATOMIC", 1, 2, 0);
	trans[1][676]	= settr(1768,2,828,863,0,"((EP==2))", 1, 2, 0);
	T = trans[ 1][828] = settr(1920,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1920,0,677,0,0,"sub-sequence", 1, 2, 0);
	trans[1][677]	= settr(1769,2,826,864,864,"currentTask = 0", 1, 2, 0);
	T = trans[1][826] = settr(1918,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1918,2,678,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1918,2,824,0,0,"IF", 1, 2, 0);
	trans[1][678]	= settr(1770,2,681,865,0,"((((1>0)&&(EP>=1))&&(EP<=4)))", 1, 2, 0);
	T = trans[ 1][681] = settr(1773,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1773,0,679,0,0,"sub-sequence", 1, 2, 0);
	trans[1][679]	= settr(1771,2,693,866,866,"int_save = int_ctrl_reg", 1, 2, 0); /* m: 680 -> 0,693 */
	reached1[680] = 1;
	trans[1][680]	= settr(0,0,0,0,0,"int_ctrl_reg = 1",0,0,0);
	trans[1][682]	= settr(0,0,0,0,0,"currentTask = EP",0,0,0);
	trans[1][683]	= settr(0,0,0,0,0,"tcb[currentTask].state = 2",0,0,0);
	trans[1][684]	= settr(0,0,0,0,0,"tcb[currentTask].wakeupTime = (tickCount+1)",0,0,0);
	trans[1][685]	= settr(0,0,0,0,0,"tcb[currentTask].delayTicks = 1",0,0,0);
	T = trans[ 1][693] = settr(1785,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1785,0,691,0,0,"sub-sequence", 1, 2, 0);
	T = trans[1][691] = settr(1783,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1783,2,686,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1783,2,689,0,0,"IF", 1, 2, 0);
	trans[1][686]	= settr(1778,2,821,867,867,"((sortLink.count<8))", 1, 2, 0); /* m: 687 -> 821,0 */
	reached1[687] = 1;
	trans[1][687]	= settr(0,0,0,0,0,"sortLink.tasks[sortLink.count] = currentTask",0,0,0);
	trans[1][688]	= settr(0,0,0,0,0,"sortLink.count = (sortLink.count+1)",0,0,0);
	trans[1][692]	= settr(1784,2,821,1,0,".(goto)", 1, 2, 0);
	trans[1][689]	= settr(1781,2,690,2,0,"else", 1, 2, 0);
	trans[1][690]	= settr(1782,2,821,868,0,"assert(0)", 1, 2, 0);
	T = trans[ 1][821] = settr(1913,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1913,0,694,0,0,"sub-sequence", 1, 2, 0);
	trans[1][694]	= settr(1786,2,702,869,869,"interrupted_task = 0", 1, 2, 0); /* m: 695 -> 0,702 */
	reached1[695] = 1;
	trans[1][695]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[1][696]	= settr(0,0,0,0,0,"taskId = 0",0,0,0);
	trans[1][697]	= settr(0,0,0,0,0,"needResched = 0",0,0,0);
	trans[1][698]	= settr(0,0,0,0,0,"interrupted_task = 0",0,0,0);
	trans[1][699]	= settr(0,0,0,0,0,"needResched = 0",0,0,0);
	T = trans[ 1][702] = settr(1794,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1794,0,700,0,0,"sub-sequence", 1, 2, 0);
	trans[1][700]	= settr(1792,2,759,870,870,"int_save = int_ctrl_reg", 1, 2, 0); /* m: 701 -> 0,759 */
	reached1[701] = 1;
	trans[1][701]	= settr(0,0,0,0,0,"int_ctrl_reg = 1",0,0,0);
	trans[1][703]	= settr(0,0,0,0,0,"tickCount = (tickCount+1)",0,0,0);
	trans[1][704]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[1][760]	= settr(1852,2,759,1,0,".(goto)", 1, 2, 0);
	T = trans[1][759] = settr(1851,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(1851,2,705,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(1851,2,757,0,0,"DO", 1, 2, 0);
	trans[1][705]	= settr(1797,2,755,871,871,"((idx<sortLink.count))", 1, 2, 0); /* m: 706 -> 755,0 */
	reached1[706] = 1;
	trans[1][706]	= settr(0,0,0,0,0,"taskId = sortLink.tasks[idx]",0,0,0);
	T = trans[1][755] = settr(1847,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1847,2,707,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1847,2,753,0,0,"IF", 1, 2, 0);
	trans[1][707]	= settr(1799,2,743,872,872,"(((tcb[taskId].state==2)&&(tickCount>=tcb[taskId].wakeupTime)))", 1, 2, 0); /* m: 708 -> 743,0 */
	reached1[708] = 1;
	trans[1][708]	= settr(0,0,0,0,0,"tcb[taskId].state = 1",0,0,0);
	trans[1][709]	= settr(0,0,0,0,0,"tcb[taskId].delayTicks = 0",0,0,0);
	T = trans[ 1][743] = settr(1835,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1835,0,710,0,0,"sub-sequence", 1, 2, 0);
	trans[1][710]	= settr(1802,2,724,873,873,"removePos = 0", 1, 2, 0); /* m: 711 -> 0,724 */
	reached1[711] = 1;
	trans[1][711]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[1][712]	= settr(0,0,0,0,0,"shiftIdx = 0",0,0,0);
	trans[1][713]	= settr(0,0,0,0,0,"removePos = 0",0,0,0);
	trans[1][714]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[1][725]	= settr(1817,2,724,1,0,".(goto)", 1, 2, 0);
	T = trans[1][724] = settr(1816,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(1816,2,715,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(1816,2,722,0,0,"DO", 1, 2, 0);
	trans[1][715]	= settr(1807,2,720,874,0,"(((removePos<sortLink.count)&&!(found)))", 1, 2, 0);
	T = trans[1][720] = settr(1812,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1812,2,716,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1812,2,718,0,0,"IF", 1, 2, 0);
	trans[1][716]	= settr(1808,2,724,875,875,"((sortLink.tasks[removePos]==taskId))", 1, 2, 0); /* m: 717 -> 724,0 */
	reached1[717] = 1;
	trans[1][717]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[1][721]	= settr(1813,2,724,1,0,".(goto)", 1, 2, 0);
	trans[1][718]	= settr(1810,2,719,2,0,"else", 1, 2, 0);
	trans[1][719]	= settr(1811,2,724,876,876,"removePos = (removePos+1)", 1, 2, 0);
	trans[1][722]	= settr(1814,2,741,2,0,"else", 1, 2, 0);
	trans[1][723]	= settr(1815,2,741,1,0,"goto :b68", 1, 2, 0);
	trans[1][726]	= settr(1818,2,741,1,0,"break", 1, 2, 0);
	T = trans[1][741] = settr(1833,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1833,2,727,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1833,2,739,0,0,"IF", 1, 2, 0);
	trans[1][727]	= settr(1819,2,734,877,877,"((found==1))", 1, 2, 0); /* m: 728 -> 734,0 */
	reached1[728] = 1;
	trans[1][728]	= settr(0,0,0,0,0,"shiftIdx = removePos",0,0,0);
	trans[1][735]	= settr(1827,2,734,1,0,".(goto)", 1, 2, 0);
	T = trans[1][734] = settr(1826,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(1826,2,729,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(1826,2,732,0,0,"DO", 1, 2, 0);
	trans[1][729]	= settr(1821,2,734,878,878,"((shiftIdx<(sortLink.count-1)))", 1, 2, 0); /* m: 730 -> 734,0 */
	reached1[730] = 1;
	trans[1][730]	= settr(0,0,0,0,0,"sortLink.tasks[shiftIdx] = sortLink.tasks[(shiftIdx+1)]",0,0,0);
	trans[1][731]	= settr(0,0,0,0,0,"shiftIdx = (shiftIdx+1)",0,0,0);
	trans[1][732]	= settr(1824,2,751,879,879,"((shiftIdx>=(sortLink.count-1)))", 1, 2, 0); /* m: 737 -> 751,0 */
	reached1[737] = 1;
	trans[1][733]	= settr(1825,2,737,1,0,"goto :b69", 1, 2, 0); /* m: 737 -> 0,751 */
	reached1[737] = 1;
	trans[1][736]	= settr(1828,2,737,1,0,"break", 1, 2, 0);
	trans[1][737]	= settr(1829,2,751,880,880,"sortLink.tasks[(sortLink.count-1)] = 255", 1, 2, 0); /* m: 738 -> 0,751 */
	reached1[738] = 1;
	trans[1][738]	= settr(0,0,0,0,0,"sortLink.count = (sortLink.count-1)",0,0,0);
	trans[1][742]	= settr(1834,2,751,1,0,".(goto)", 1, 2, 0);
	trans[1][739]	= settr(1831,2,740,2,0,"else", 1, 2, 0);
	trans[1][740]	= settr(1832,2,751,1,0,"(1)", 1, 2, 0);
	T = trans[ 1][751] = settr(1843,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1843,0,749,0,0,"sub-sequence", 1, 2, 0);
	T = trans[1][749] = settr(1841,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1841,2,744,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1841,2,747,0,0,"IF", 1, 2, 0);
	trans[1][744]	= settr(1836,2,759,881,881,"((readyQueue[tcb[taskId].prio].tailIndex<8))", 1, 2, 0); /* m: 745 -> 759,0 */
	reached1[745] = 1;
	trans[1][745]	= settr(0,0,0,0,0,"readyQueue[tcb[taskId].prio].tasks[readyQueue[tcb[taskId].prio].tailIndex] = taskId",0,0,0);
	trans[1][746]	= settr(0,0,0,0,0,"readyQueue[tcb[taskId].prio].tailIndex = (readyQueue[tcb[taskId].prio].tailIndex+1)",0,0,0);
	trans[1][750]	= settr(1842,2,752,1,0,".(goto)", 1, 2, 0); /* m: 752 -> 0,759 */
	reached1[752] = 1;
	trans[1][747]	= settr(1839,2,748,2,0,"else", 1, 2, 0);
	trans[1][748]	= settr(1840,2,759,882,882,"assert(0)", 1, 2, 0); /* m: 752 -> 0,759 */
	reached1[752] = 1;
	trans[1][752]	= settr(1844,2,759,883,883,"needResched = 1", 1, 2, 0);
	trans[1][756]	= settr(1848,2,759,1,0,".(goto)", 1, 2, 0);
	trans[1][753]	= settr(1845,2,754,2,0,"else", 1, 2, 0);
	trans[1][754]	= settr(1846,2,759,884,884,"idx = (idx+1)", 1, 2, 0);
	trans[1][757]	= settr(1849,2,775,885,885,"((idx>=sortLink.count))", 1, 2, 0); /* m: 762 -> 775,0 */
	reached1[762] = 1;
	trans[1][758]	= settr(1850,2,762,1,0,"goto :b67", 1, 2, 0); /* m: 762 -> 0,775 */
	reached1[762] = 1;
	trans[1][761]	= settr(1853,2,762,1,0,"break", 1, 2, 0);
	trans[1][762]	= settr(1854,2,775,886,886,"interrupted_task = EP", 1, 2, 0);
	T = trans[1][775] = settr(1867,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1867,2,763,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1867,2,773,0,0,"IF", 1, 2, 0);
	trans[1][763]	= settr(1855,2,772,887,887,"((((interrupted_task>=1)&&(interrupted_task<=4))&&(tcb[interrupted_task].state!=2)))", 1, 2, 0); /* m: 764 -> 772,0 */
	reached1[764] = 1;
	trans[1][764]	= settr(0,0,0,0,0,"tcb[interrupted_task].state = 1",0,0,0);
	T = trans[ 1][772] = settr(1864,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1864,0,770,0,0,"sub-sequence", 1, 2, 0);
	T = trans[1][770] = settr(1862,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1862,2,765,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1862,2,768,0,0,"IF", 1, 2, 0);
	trans[1][765]	= settr(1857,2,798,888,888,"((readyQueue[tcb[interrupted_task].prio].tailIndex<8))", 1, 2, 0); /* m: 766 -> 798,0 */
	reached1[766] = 1;
	trans[1][766]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tasks[readyQueue[tcb[interrupted_task].prio].tailIndex] = interrupted_task",0,0,0);
	trans[1][767]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tailIndex = (readyQueue[tcb[interrupted_task].prio].tailIndex+1)",0,0,0);
	trans[1][771]	= settr(1863,2,798,1,0,".(goto)", 1, 2, 0);
	trans[1][768]	= settr(1860,2,769,2,0,"else", 1, 2, 0);
	trans[1][769]	= settr(1861,2,798,889,0,"assert(0)", 1, 2, 0);
	trans[1][776]	= settr(1868,2,798,1,0,".(goto)", 1, 2, 0);
	trans[1][773]	= settr(1865,2,774,2,0,"else", 1, 2, 0);
	trans[1][774]	= settr(1866,2,798,1,0,"(1)", 1, 2, 0);
	T = trans[ 1][798] = settr(1890,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1890,0,777,0,0,"sub-sequence", 1, 2, 0);
	trans[1][777]	= settr(1869,2,793,890,890,"prio = 0", 1, 2, 0); /* m: 778 -> 0,793 */
	reached1[778] = 1;
	trans[1][778]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[1][779]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[1][780]	= settr(0,0,0,0,0,"prio = 0",0,0,0);
	trans[1][781]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[1][782]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[1][794]	= settr(1886,2,793,1,0,".(goto)", 1, 2, 0);
	T = trans[1][793] = settr(1885,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(1885,2,783,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(1885,2,791,0,0,"DO", 1, 2, 0);
	trans[1][783]	= settr(1875,2,789,891,0,"(((prio<4)&&!(found)))", 1, 2, 0);
	T = trans[1][789] = settr(1881,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1881,2,784,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1881,2,787,0,0,"IF", 1, 2, 0);
	trans[1][784]	= settr(1876,2,793,892,892,"((readyQueue[prio].tailIndex>0))", 1, 2, 0); /* m: 785 -> 793,0 */
	reached1[785] = 1;
	trans[1][785]	= settr(0,0,0,0,0,"top_task = readyQueue[prio].tasks[0]",0,0,0);
	trans[1][786]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[1][790]	= settr(1882,2,793,1,0,".(goto)", 1, 2, 0);
	trans[1][787]	= settr(1879,2,788,2,0,"else", 1, 2, 0);
	trans[1][788]	= settr(1880,2,793,893,893,"prio = (prio+1)", 1, 2, 0);
	trans[1][791]	= settr(1883,2,816,894,894,"(((prio>=4)||found))", 1, 2, 0); /* m: 796 -> 816,0 */
	reached1[796] = 1;
	trans[1][792]	= settr(1884,2,796,1,0,"goto :b70", 1, 2, 0); /* m: 796 -> 0,816 */
	reached1[796] = 1;
	trans[1][795]	= settr(1887,2,796,1,0,"break", 1, 2, 0);
	trans[1][796]	= settr(1888,2,816,895,895,"newTask = top_task", 1, 2, 0); /* m: 797 -> 0,816 */
	reached1[797] = 1;
	trans[1][797]	= settr(0,0,0,0,0,"topPrio = prio",0,0,0);
	T = trans[ 1][816] = settr(1908,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1908,0,799,0,0,"sub-sequence", 1, 2, 0);
	trans[1][799]	= settr(1891,2,806,896,896,"deq_idx = 0", 1, 2, 0); /* m: 800 -> 0,806 */
	reached1[800] = 1;
	trans[1][800]	= settr(0,0,0,0,0,"deq_idx = 0",0,0,0);
	trans[1][807]	= settr(1899,2,806,1,0,".(goto)", 1, 2, 0);
	T = trans[1][806] = settr(1898,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(1898,2,801,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(1898,2,804,0,0,"DO", 1, 2, 0);
	trans[1][801]	= settr(1893,2,806,897,897,"((deq_idx<(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0); /* m: 802 -> 806,0 */
	reached1[802] = 1;
	trans[1][802]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[deq_idx] = readyQueue[topPrio].tasks[(deq_idx+1)]",0,0,0);
	trans[1][803]	= settr(0,0,0,0,0,"deq_idx = (deq_idx+1)",0,0,0);
	trans[1][804]	= settr(1896,2,814,898,898,"((deq_idx>=(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0);
	trans[1][805]	= settr(1897,2,814,1,0,"goto :b71", 1, 2, 0);
	trans[1][808]	= settr(1900,2,814,1,0,"break", 1, 2, 0);
	T = trans[1][814] = settr(1906,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1906,2,809,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1906,2,812,0,0,"IF", 1, 2, 0);
	trans[1][809]	= settr(1901,2,820,899,899,"((readyQueue[topPrio].tailIndex>0))", 1, 2, 0); /* m: 810 -> 820,0 */
	reached1[810] = 1;
	trans[1][810]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)] = 255",0,0,0);
	trans[1][811]	= settr(0,0,0,0,0,"readyQueue[topPrio].tailIndex = (readyQueue[topPrio].tailIndex-1)",0,0,0);
	trans[1][815]	= settr(1907,2,817,1,0,".(goto)", 1, 2, 0); /* m: 817 -> 0,820 */
	reached1[817] = 1;
	trans[1][812]	= settr(1904,2,813,2,0,"else", 1, 2, 0);
	trans[1][813]	= settr(1905,2,820,900,900,"(1)", 1, 2, 0); /* m: 817 -> 820,0 */
	reached1[817] = 1;
	trans[1][817]	= settr(1909,2,820,901,901,"tcb[newTask].state = 4", 1, 2, 0); /* m: 818 -> 0,820 */
	reached1[818] = 1;
	trans[1][818]	= settr(0,0,0,0,0,"EP = newTask",0,0,0);
	T = trans[ 1][820] = settr(1912,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1912,0,819,0,0,"sub-sequence", 1, 2, 0);
	trans[1][819]	= settr(1911,2,823,902,902,"int_ctrl_reg = int_save", 1, 2, 0);
	T = trans[ 1][823] = settr(1915,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1915,0,822,0,0,"sub-sequence", 1, 2, 0);
	trans[1][822]	= settr(1914,2,956,903,903,"int_ctrl_reg = int_save", 1, 2, 0);
	trans[1][827]	= settr(1919,2,956,1,0,".(goto)", 1, 2, 0);
	trans[1][824]	= settr(1916,2,825,2,0,"else", 1, 2, 0);
	trans[1][825]	= settr(1917,2,956,1,0,"(1)", 1, 2, 0);
	T = trans[ 1][956] = settr(2048,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(2048,0,829,0,0,"sub-sequence", 1, 2, 0);
	trans[1][829]	= settr(1921,2,837,904,904,"interrupted_task = 0", 1, 2, 0); /* m: 830 -> 0,837 */
	reached1[830] = 1;
	trans[1][830]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[1][831]	= settr(0,0,0,0,0,"taskId = 0",0,0,0);
	trans[1][832]	= settr(0,0,0,0,0,"needResched = 0",0,0,0);
	trans[1][833]	= settr(0,0,0,0,0,"interrupted_task = 0",0,0,0);
	trans[1][834]	= settr(0,0,0,0,0,"needResched = 0",0,0,0);
	T = trans[ 1][837] = settr(1929,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1929,0,835,0,0,"sub-sequence", 1, 2, 0);
	trans[1][835]	= settr(1927,2,894,905,905,"int_save = int_ctrl_reg", 1, 2, 0); /* m: 836 -> 0,894 */
	reached1[836] = 1;
	trans[1][836]	= settr(0,0,0,0,0,"int_ctrl_reg = 1",0,0,0);
	trans[1][838]	= settr(0,0,0,0,0,"tickCount = (tickCount+1)",0,0,0);
	trans[1][839]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[1][895]	= settr(1987,2,894,1,0,".(goto)", 1, 2, 0);
	T = trans[1][894] = settr(1986,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(1986,2,840,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(1986,2,892,0,0,"DO", 1, 2, 0);
	trans[1][840]	= settr(1932,2,890,906,906,"((idx<sortLink.count))", 1, 2, 0); /* m: 841 -> 890,0 */
	reached1[841] = 1;
	trans[1][841]	= settr(0,0,0,0,0,"taskId = sortLink.tasks[idx]",0,0,0);
	T = trans[1][890] = settr(1982,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1982,2,842,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1982,2,888,0,0,"IF", 1, 2, 0);
	trans[1][842]	= settr(1934,2,878,907,907,"(((tcb[taskId].state==2)&&(tickCount>=tcb[taskId].wakeupTime)))", 1, 2, 0); /* m: 843 -> 878,0 */
	reached1[843] = 1;
	trans[1][843]	= settr(0,0,0,0,0,"tcb[taskId].state = 1",0,0,0);
	trans[1][844]	= settr(0,0,0,0,0,"tcb[taskId].delayTicks = 0",0,0,0);
	T = trans[ 1][878] = settr(1970,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1970,0,845,0,0,"sub-sequence", 1, 2, 0);
	trans[1][845]	= settr(1937,2,859,908,908,"removePos = 0", 1, 2, 0); /* m: 846 -> 0,859 */
	reached1[846] = 1;
	trans[1][846]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[1][847]	= settr(0,0,0,0,0,"shiftIdx = 0",0,0,0);
	trans[1][848]	= settr(0,0,0,0,0,"removePos = 0",0,0,0);
	trans[1][849]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[1][860]	= settr(1952,2,859,1,0,".(goto)", 1, 2, 0);
	T = trans[1][859] = settr(1951,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(1951,2,850,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(1951,2,857,0,0,"DO", 1, 2, 0);
	trans[1][850]	= settr(1942,2,855,909,0,"(((removePos<sortLink.count)&&!(found)))", 1, 2, 0);
	T = trans[1][855] = settr(1947,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1947,2,851,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1947,2,853,0,0,"IF", 1, 2, 0);
	trans[1][851]	= settr(1943,2,859,910,910,"((sortLink.tasks[removePos]==taskId))", 1, 2, 0); /* m: 852 -> 859,0 */
	reached1[852] = 1;
	trans[1][852]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[1][856]	= settr(1948,2,859,1,0,".(goto)", 1, 2, 0);
	trans[1][853]	= settr(1945,2,854,2,0,"else", 1, 2, 0);
	trans[1][854]	= settr(1946,2,859,911,911,"removePos = (removePos+1)", 1, 2, 0);
	trans[1][857]	= settr(1949,2,876,2,0,"else", 1, 2, 0);
	trans[1][858]	= settr(1950,2,876,1,0,"goto :b73", 1, 2, 0);
	trans[1][861]	= settr(1953,2,876,1,0,"break", 1, 2, 0);
	T = trans[1][876] = settr(1968,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1968,2,862,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1968,2,874,0,0,"IF", 1, 2, 0);
	trans[1][862]	= settr(1954,2,869,912,912,"((found==1))", 1, 2, 0); /* m: 863 -> 869,0 */
	reached1[863] = 1;
	trans[1][863]	= settr(0,0,0,0,0,"shiftIdx = removePos",0,0,0);
	trans[1][870]	= settr(1962,2,869,1,0,".(goto)", 1, 2, 0);
	T = trans[1][869] = settr(1961,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(1961,2,864,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(1961,2,867,0,0,"DO", 1, 2, 0);
	trans[1][864]	= settr(1956,2,869,913,913,"((shiftIdx<(sortLink.count-1)))", 1, 2, 0); /* m: 865 -> 869,0 */
	reached1[865] = 1;
	trans[1][865]	= settr(0,0,0,0,0,"sortLink.tasks[shiftIdx] = sortLink.tasks[(shiftIdx+1)]",0,0,0);
	trans[1][866]	= settr(0,0,0,0,0,"shiftIdx = (shiftIdx+1)",0,0,0);
	trans[1][867]	= settr(1959,2,886,914,914,"((shiftIdx>=(sortLink.count-1)))", 1, 2, 0); /* m: 872 -> 886,0 */
	reached1[872] = 1;
	trans[1][868]	= settr(1960,2,872,1,0,"goto :b74", 1, 2, 0); /* m: 872 -> 0,886 */
	reached1[872] = 1;
	trans[1][871]	= settr(1963,2,872,1,0,"break", 1, 2, 0);
	trans[1][872]	= settr(1964,2,886,915,915,"sortLink.tasks[(sortLink.count-1)] = 255", 1, 2, 0); /* m: 873 -> 0,886 */
	reached1[873] = 1;
	trans[1][873]	= settr(0,0,0,0,0,"sortLink.count = (sortLink.count-1)",0,0,0);
	trans[1][877]	= settr(1969,2,886,1,0,".(goto)", 1, 2, 0);
	trans[1][874]	= settr(1966,2,875,2,0,"else", 1, 2, 0);
	trans[1][875]	= settr(1967,2,886,1,0,"(1)", 1, 2, 0);
	T = trans[ 1][886] = settr(1978,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1978,0,884,0,0,"sub-sequence", 1, 2, 0);
	T = trans[1][884] = settr(1976,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1976,2,879,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1976,2,882,0,0,"IF", 1, 2, 0);
	trans[1][879]	= settr(1971,2,894,916,916,"((readyQueue[tcb[taskId].prio].tailIndex<8))", 1, 2, 0); /* m: 880 -> 894,0 */
	reached1[880] = 1;
	trans[1][880]	= settr(0,0,0,0,0,"readyQueue[tcb[taskId].prio].tasks[readyQueue[tcb[taskId].prio].tailIndex] = taskId",0,0,0);
	trans[1][881]	= settr(0,0,0,0,0,"readyQueue[tcb[taskId].prio].tailIndex = (readyQueue[tcb[taskId].prio].tailIndex+1)",0,0,0);
	trans[1][885]	= settr(1977,2,887,1,0,".(goto)", 1, 2, 0); /* m: 887 -> 0,894 */
	reached1[887] = 1;
	trans[1][882]	= settr(1974,2,883,2,0,"else", 1, 2, 0);
	trans[1][883]	= settr(1975,2,894,917,917,"assert(0)", 1, 2, 0); /* m: 887 -> 0,894 */
	reached1[887] = 1;
	trans[1][887]	= settr(1979,2,894,918,918,"needResched = 1", 1, 2, 0);
	trans[1][891]	= settr(1983,2,894,1,0,".(goto)", 1, 2, 0);
	trans[1][888]	= settr(1980,2,889,2,0,"else", 1, 2, 0);
	trans[1][889]	= settr(1981,2,894,919,919,"idx = (idx+1)", 1, 2, 0);
	trans[1][892]	= settr(1984,2,910,920,920,"((idx>=sortLink.count))", 1, 2, 0); /* m: 897 -> 910,0 */
	reached1[897] = 1;
	trans[1][893]	= settr(1985,2,897,1,0,"goto :b72", 1, 2, 0); /* m: 897 -> 0,910 */
	reached1[897] = 1;
	trans[1][896]	= settr(1988,2,897,1,0,"break", 1, 2, 0);
	trans[1][897]	= settr(1989,2,910,921,921,"interrupted_task = EP", 1, 2, 0);
	T = trans[1][910] = settr(2002,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(2002,2,898,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(2002,2,908,0,0,"IF", 1, 2, 0);
	trans[1][898]	= settr(1990,2,907,922,922,"((((interrupted_task>=1)&&(interrupted_task<=4))&&(tcb[interrupted_task].state!=2)))", 1, 2, 0); /* m: 899 -> 907,0 */
	reached1[899] = 1;
	trans[1][899]	= settr(0,0,0,0,0,"tcb[interrupted_task].state = 1",0,0,0);
	T = trans[ 1][907] = settr(1999,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1999,0,905,0,0,"sub-sequence", 1, 2, 0);
	T = trans[1][905] = settr(1997,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1997,2,900,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1997,2,903,0,0,"IF", 1, 2, 0);
	trans[1][900]	= settr(1992,2,933,923,923,"((readyQueue[tcb[interrupted_task].prio].tailIndex<8))", 1, 2, 0); /* m: 901 -> 933,0 */
	reached1[901] = 1;
	trans[1][901]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tasks[readyQueue[tcb[interrupted_task].prio].tailIndex] = interrupted_task",0,0,0);
	trans[1][902]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tailIndex = (readyQueue[tcb[interrupted_task].prio].tailIndex+1)",0,0,0);
	trans[1][906]	= settr(1998,2,933,1,0,".(goto)", 1, 2, 0);
	trans[1][903]	= settr(1995,2,904,2,0,"else", 1, 2, 0);
	trans[1][904]	= settr(1996,2,933,924,0,"assert(0)", 1, 2, 0);
	trans[1][911]	= settr(2003,2,933,1,0,".(goto)", 1, 2, 0);
	trans[1][908]	= settr(2000,2,909,2,0,"else", 1, 2, 0);
	trans[1][909]	= settr(2001,2,933,1,0,"(1)", 1, 2, 0);
	T = trans[ 1][933] = settr(2025,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(2025,0,912,0,0,"sub-sequence", 1, 2, 0);
	trans[1][912]	= settr(2004,2,928,925,925,"prio = 0", 1, 2, 0); /* m: 913 -> 0,928 */
	reached1[913] = 1;
	trans[1][913]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[1][914]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[1][915]	= settr(0,0,0,0,0,"prio = 0",0,0,0);
	trans[1][916]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[1][917]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[1][929]	= settr(2021,2,928,1,0,".(goto)", 1, 2, 0);
	T = trans[1][928] = settr(2020,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(2020,2,918,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(2020,2,926,0,0,"DO", 1, 2, 0);
	trans[1][918]	= settr(2010,2,924,926,0,"(((prio<4)&&!(found)))", 1, 2, 0);
	T = trans[1][924] = settr(2016,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(2016,2,919,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(2016,2,922,0,0,"IF", 1, 2, 0);
	trans[1][919]	= settr(2011,2,928,927,927,"((readyQueue[prio].tailIndex>0))", 1, 2, 0); /* m: 920 -> 928,0 */
	reached1[920] = 1;
	trans[1][920]	= settr(0,0,0,0,0,"top_task = readyQueue[prio].tasks[0]",0,0,0);
	trans[1][921]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[1][925]	= settr(2017,2,928,1,0,".(goto)", 1, 2, 0);
	trans[1][922]	= settr(2014,2,923,2,0,"else", 1, 2, 0);
	trans[1][923]	= settr(2015,2,928,928,928,"prio = (prio+1)", 1, 2, 0);
	trans[1][926]	= settr(2018,2,951,929,929,"(((prio>=4)||found))", 1, 2, 0); /* m: 931 -> 951,0 */
	reached1[931] = 1;
	trans[1][927]	= settr(2019,2,931,1,0,"goto :b75", 1, 2, 0); /* m: 931 -> 0,951 */
	reached1[931] = 1;
	trans[1][930]	= settr(2022,2,931,1,0,"break", 1, 2, 0);
	trans[1][931]	= settr(2023,2,951,930,930,"newTask = top_task", 1, 2, 0); /* m: 932 -> 0,951 */
	reached1[932] = 1;
	trans[1][932]	= settr(0,0,0,0,0,"topPrio = prio",0,0,0);
	T = trans[ 1][951] = settr(2043,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(2043,0,934,0,0,"sub-sequence", 1, 2, 0);
	trans[1][934]	= settr(2026,2,941,931,931,"deq_idx = 0", 1, 2, 0); /* m: 935 -> 0,941 */
	reached1[935] = 1;
	trans[1][935]	= settr(0,0,0,0,0,"deq_idx = 0",0,0,0);
	trans[1][942]	= settr(2034,2,941,1,0,".(goto)", 1, 2, 0);
	T = trans[1][941] = settr(2033,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(2033,2,936,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(2033,2,939,0,0,"DO", 1, 2, 0);
	trans[1][936]	= settr(2028,2,941,932,932,"((deq_idx<(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0); /* m: 937 -> 941,0 */
	reached1[937] = 1;
	trans[1][937]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[deq_idx] = readyQueue[topPrio].tasks[(deq_idx+1)]",0,0,0);
	trans[1][938]	= settr(0,0,0,0,0,"deq_idx = (deq_idx+1)",0,0,0);
	trans[1][939]	= settr(2031,2,949,933,933,"((deq_idx>=(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0);
	trans[1][940]	= settr(2032,2,949,1,0,"goto :b76", 1, 2, 0);
	trans[1][943]	= settr(2035,2,949,1,0,"break", 1, 2, 0);
	T = trans[1][949] = settr(2041,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(2041,2,944,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(2041,2,947,0,0,"IF", 1, 2, 0);
	trans[1][944]	= settr(2036,2,955,934,934,"((readyQueue[topPrio].tailIndex>0))", 1, 2, 0); /* m: 945 -> 955,0 */
	reached1[945] = 1;
	trans[1][945]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)] = 255",0,0,0);
	trans[1][946]	= settr(0,0,0,0,0,"readyQueue[topPrio].tailIndex = (readyQueue[topPrio].tailIndex-1)",0,0,0);
	trans[1][950]	= settr(2042,2,952,1,0,".(goto)", 1, 2, 0); /* m: 952 -> 0,955 */
	reached1[952] = 1;
	trans[1][947]	= settr(2039,2,948,2,0,"else", 1, 2, 0);
	trans[1][948]	= settr(2040,2,955,935,935,"(1)", 1, 2, 0); /* m: 952 -> 955,0 */
	reached1[952] = 1;
	trans[1][952]	= settr(2044,2,955,936,936,"tcb[newTask].state = 4", 1, 2, 0); /* m: 953 -> 0,955 */
	reached1[953] = 1;
	trans[1][953]	= settr(0,0,0,0,0,"EP = newTask",0,0,0);
	T = trans[ 1][955] = settr(2047,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(2047,0,954,0,0,"sub-sequence", 1, 2, 0);
	trans[1][954]	= settr(2046,0,1090,937,937,"int_ctrl_reg = int_save", 1, 2, 0);
	trans[1][958]	= settr(2050,0,1089,938,0,"((counter<100))", 0, 2, 0);
	T = trans[ 1][1089] = settr(2181,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(2181,2,959,0,0,"ATOMIC", 1, 2, 0);
	trans[1][959]	= settr(2051,2,960,939,0,"((EP==2))", 1, 2, 0);
	trans[1][960]	= settr(2052,2,1088,1,0,"(1)", 1, 2, 0);
	T = trans[ 1][1088] = settr(2180,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(2180,0,961,0,0,"sub-sequence", 1, 2, 0);
	trans[1][961]	= settr(2053,2,969,940,940,"interrupted_task = 0", 1, 2, 0); /* m: 962 -> 0,969 */
	reached1[962] = 1;
	trans[1][962]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[1][963]	= settr(0,0,0,0,0,"taskId = 0",0,0,0);
	trans[1][964]	= settr(0,0,0,0,0,"needResched = 0",0,0,0);
	trans[1][965]	= settr(0,0,0,0,0,"interrupted_task = 0",0,0,0);
	trans[1][966]	= settr(0,0,0,0,0,"needResched = 0",0,0,0);
	T = trans[ 1][969] = settr(2061,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(2061,0,967,0,0,"sub-sequence", 1, 2, 0);
	trans[1][967]	= settr(2059,2,1026,941,941,"int_save = int_ctrl_reg", 1, 2, 0); /* m: 968 -> 0,1026 */
	reached1[968] = 1;
	trans[1][968]	= settr(0,0,0,0,0,"int_ctrl_reg = 1",0,0,0);
	trans[1][970]	= settr(0,0,0,0,0,"tickCount = (tickCount+1)",0,0,0);
	trans[1][971]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[1][1027]	= settr(2119,2,1026,1,0,".(goto)", 1, 2, 0);
	T = trans[1][1026] = settr(2118,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(2118,2,972,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(2118,2,1024,0,0,"DO", 1, 2, 0);
	trans[1][972]	= settr(2064,2,1022,942,942,"((idx<sortLink.count))", 1, 2, 0); /* m: 973 -> 1022,0 */
	reached1[973] = 1;
	trans[1][973]	= settr(0,0,0,0,0,"taskId = sortLink.tasks[idx]",0,0,0);
	T = trans[1][1022] = settr(2114,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(2114,2,974,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(2114,2,1020,0,0,"IF", 1, 2, 0);
	trans[1][974]	= settr(2066,2,1010,943,943,"(((tcb[taskId].state==2)&&(tickCount>=tcb[taskId].wakeupTime)))", 1, 2, 0); /* m: 975 -> 1010,0 */
	reached1[975] = 1;
	trans[1][975]	= settr(0,0,0,0,0,"tcb[taskId].state = 1",0,0,0);
	trans[1][976]	= settr(0,0,0,0,0,"tcb[taskId].delayTicks = 0",0,0,0);
	T = trans[ 1][1010] = settr(2102,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(2102,0,977,0,0,"sub-sequence", 1, 2, 0);
	trans[1][977]	= settr(2069,2,991,944,944,"removePos = 0", 1, 2, 0); /* m: 978 -> 0,991 */
	reached1[978] = 1;
	trans[1][978]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[1][979]	= settr(0,0,0,0,0,"shiftIdx = 0",0,0,0);
	trans[1][980]	= settr(0,0,0,0,0,"removePos = 0",0,0,0);
	trans[1][981]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[1][992]	= settr(2084,2,991,1,0,".(goto)", 1, 2, 0);
	T = trans[1][991] = settr(2083,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(2083,2,982,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(2083,2,989,0,0,"DO", 1, 2, 0);
	trans[1][982]	= settr(2074,2,987,945,0,"(((removePos<sortLink.count)&&!(found)))", 1, 2, 0);
	T = trans[1][987] = settr(2079,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(2079,2,983,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(2079,2,985,0,0,"IF", 1, 2, 0);
	trans[1][983]	= settr(2075,2,991,946,946,"((sortLink.tasks[removePos]==taskId))", 1, 2, 0); /* m: 984 -> 991,0 */
	reached1[984] = 1;
	trans[1][984]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[1][988]	= settr(2080,2,991,1,0,".(goto)", 1, 2, 0);
	trans[1][985]	= settr(2077,2,986,2,0,"else", 1, 2, 0);
	trans[1][986]	= settr(2078,2,991,947,947,"removePos = (removePos+1)", 1, 2, 0);
	trans[1][989]	= settr(2081,2,1008,2,0,"else", 1, 2, 0);
	trans[1][990]	= settr(2082,2,1008,1,0,"goto :b78", 1, 2, 0);
	trans[1][993]	= settr(2085,2,1008,1,0,"break", 1, 2, 0);
	T = trans[1][1008] = settr(2100,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(2100,2,994,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(2100,2,1006,0,0,"IF", 1, 2, 0);
	trans[1][994]	= settr(2086,2,1001,948,948,"((found==1))", 1, 2, 0); /* m: 995 -> 1001,0 */
	reached1[995] = 1;
	trans[1][995]	= settr(0,0,0,0,0,"shiftIdx = removePos",0,0,0);
	trans[1][1002]	= settr(2094,2,1001,1,0,".(goto)", 1, 2, 0);
	T = trans[1][1001] = settr(2093,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(2093,2,996,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(2093,2,999,0,0,"DO", 1, 2, 0);
	trans[1][996]	= settr(2088,2,1001,949,949,"((shiftIdx<(sortLink.count-1)))", 1, 2, 0); /* m: 997 -> 1001,0 */
	reached1[997] = 1;
	trans[1][997]	= settr(0,0,0,0,0,"sortLink.tasks[shiftIdx] = sortLink.tasks[(shiftIdx+1)]",0,0,0);
	trans[1][998]	= settr(0,0,0,0,0,"shiftIdx = (shiftIdx+1)",0,0,0);
	trans[1][999]	= settr(2091,2,1018,950,950,"((shiftIdx>=(sortLink.count-1)))", 1, 2, 0); /* m: 1004 -> 1018,0 */
	reached1[1004] = 1;
	trans[1][1000]	= settr(2092,2,1004,1,0,"goto :b79", 1, 2, 0); /* m: 1004 -> 0,1018 */
	reached1[1004] = 1;
	trans[1][1003]	= settr(2095,2,1004,1,0,"break", 1, 2, 0);
	trans[1][1004]	= settr(2096,2,1018,951,951,"sortLink.tasks[(sortLink.count-1)] = 255", 1, 2, 0); /* m: 1005 -> 0,1018 */
	reached1[1005] = 1;
	trans[1][1005]	= settr(0,0,0,0,0,"sortLink.count = (sortLink.count-1)",0,0,0);
	trans[1][1009]	= settr(2101,2,1018,1,0,".(goto)", 1, 2, 0);
	trans[1][1006]	= settr(2098,2,1007,2,0,"else", 1, 2, 0);
	trans[1][1007]	= settr(2099,2,1018,1,0,"(1)", 1, 2, 0);
	T = trans[ 1][1018] = settr(2110,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(2110,0,1016,0,0,"sub-sequence", 1, 2, 0);
	T = trans[1][1016] = settr(2108,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(2108,2,1011,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(2108,2,1014,0,0,"IF", 1, 2, 0);
	trans[1][1011]	= settr(2103,2,1026,952,952,"((readyQueue[tcb[taskId].prio].tailIndex<8))", 1, 2, 0); /* m: 1012 -> 1026,0 */
	reached1[1012] = 1;
	trans[1][1012]	= settr(0,0,0,0,0,"readyQueue[tcb[taskId].prio].tasks[readyQueue[tcb[taskId].prio].tailIndex] = taskId",0,0,0);
	trans[1][1013]	= settr(0,0,0,0,0,"readyQueue[tcb[taskId].prio].tailIndex = (readyQueue[tcb[taskId].prio].tailIndex+1)",0,0,0);
	trans[1][1017]	= settr(2109,2,1019,1,0,".(goto)", 1, 2, 0); /* m: 1019 -> 0,1026 */
	reached1[1019] = 1;
	trans[1][1014]	= settr(2106,2,1015,2,0,"else", 1, 2, 0);
	trans[1][1015]	= settr(2107,2,1026,953,953,"assert(0)", 1, 2, 0); /* m: 1019 -> 0,1026 */
	reached1[1019] = 1;
	trans[1][1019]	= settr(2111,2,1026,954,954,"needResched = 1", 1, 2, 0);
	trans[1][1023]	= settr(2115,2,1026,1,0,".(goto)", 1, 2, 0);
	trans[1][1020]	= settr(2112,2,1021,2,0,"else", 1, 2, 0);
	trans[1][1021]	= settr(2113,2,1026,955,955,"idx = (idx+1)", 1, 2, 0);
	trans[1][1024]	= settr(2116,2,1042,956,956,"((idx>=sortLink.count))", 1, 2, 0); /* m: 1029 -> 1042,0 */
	reached1[1029] = 1;
	trans[1][1025]	= settr(2117,2,1029,1,0,"goto :b77", 1, 2, 0); /* m: 1029 -> 0,1042 */
	reached1[1029] = 1;
	trans[1][1028]	= settr(2120,2,1029,1,0,"break", 1, 2, 0);
	trans[1][1029]	= settr(2121,2,1042,957,957,"interrupted_task = EP", 1, 2, 0);
	T = trans[1][1042] = settr(2134,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(2134,2,1030,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(2134,2,1040,0,0,"IF", 1, 2, 0);
	trans[1][1030]	= settr(2122,2,1039,958,958,"((((interrupted_task>=1)&&(interrupted_task<=4))&&(tcb[interrupted_task].state!=2)))", 1, 2, 0); /* m: 1031 -> 1039,0 */
	reached1[1031] = 1;
	trans[1][1031]	= settr(0,0,0,0,0,"tcb[interrupted_task].state = 1",0,0,0);
	T = trans[ 1][1039] = settr(2131,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(2131,0,1037,0,0,"sub-sequence", 1, 2, 0);
	T = trans[1][1037] = settr(2129,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(2129,2,1032,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(2129,2,1035,0,0,"IF", 1, 2, 0);
	trans[1][1032]	= settr(2124,2,1065,959,959,"((readyQueue[tcb[interrupted_task].prio].tailIndex<8))", 1, 2, 0); /* m: 1033 -> 1065,0 */
	reached1[1033] = 1;
	trans[1][1033]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tasks[readyQueue[tcb[interrupted_task].prio].tailIndex] = interrupted_task",0,0,0);
	trans[1][1034]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tailIndex = (readyQueue[tcb[interrupted_task].prio].tailIndex+1)",0,0,0);
	trans[1][1038]	= settr(2130,2,1065,1,0,".(goto)", 1, 2, 0);
	trans[1][1035]	= settr(2127,2,1036,2,0,"else", 1, 2, 0);
	trans[1][1036]	= settr(2128,2,1065,960,0,"assert(0)", 1, 2, 0);
	trans[1][1043]	= settr(2135,2,1065,1,0,".(goto)", 1, 2, 0);
	trans[1][1040]	= settr(2132,2,1041,2,0,"else", 1, 2, 0);
	trans[1][1041]	= settr(2133,2,1065,1,0,"(1)", 1, 2, 0);
	T = trans[ 1][1065] = settr(2157,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(2157,0,1044,0,0,"sub-sequence", 1, 2, 0);
	trans[1][1044]	= settr(2136,2,1060,961,961,"prio = 0", 1, 2, 0); /* m: 1045 -> 0,1060 */
	reached1[1045] = 1;
	trans[1][1045]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[1][1046]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[1][1047]	= settr(0,0,0,0,0,"prio = 0",0,0,0);
	trans[1][1048]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[1][1049]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[1][1061]	= settr(2153,2,1060,1,0,".(goto)", 1, 2, 0);
	T = trans[1][1060] = settr(2152,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(2152,2,1050,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(2152,2,1058,0,0,"DO", 1, 2, 0);
	trans[1][1050]	= settr(2142,2,1056,962,0,"(((prio<4)&&!(found)))", 1, 2, 0);
	T = trans[1][1056] = settr(2148,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(2148,2,1051,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(2148,2,1054,0,0,"IF", 1, 2, 0);
	trans[1][1051]	= settr(2143,2,1060,963,963,"((readyQueue[prio].tailIndex>0))", 1, 2, 0); /* m: 1052 -> 1060,0 */
	reached1[1052] = 1;
	trans[1][1052]	= settr(0,0,0,0,0,"top_task = readyQueue[prio].tasks[0]",0,0,0);
	trans[1][1053]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[1][1057]	= settr(2149,2,1060,1,0,".(goto)", 1, 2, 0);
	trans[1][1054]	= settr(2146,2,1055,2,0,"else", 1, 2, 0);
	trans[1][1055]	= settr(2147,2,1060,964,964,"prio = (prio+1)", 1, 2, 0);
	trans[1][1058]	= settr(2150,2,1083,965,965,"(((prio>=4)||found))", 1, 2, 0); /* m: 1063 -> 1083,0 */
	reached1[1063] = 1;
	trans[1][1059]	= settr(2151,2,1063,1,0,"goto :b80", 1, 2, 0); /* m: 1063 -> 0,1083 */
	reached1[1063] = 1;
	trans[1][1062]	= settr(2154,2,1063,1,0,"break", 1, 2, 0);
	trans[1][1063]	= settr(2155,2,1083,966,966,"newTask = top_task", 1, 2, 0); /* m: 1064 -> 0,1083 */
	reached1[1064] = 1;
	trans[1][1064]	= settr(0,0,0,0,0,"topPrio = prio",0,0,0);
	T = trans[ 1][1083] = settr(2175,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(2175,0,1066,0,0,"sub-sequence", 1, 2, 0);
	trans[1][1066]	= settr(2158,2,1073,967,967,"deq_idx = 0", 1, 2, 0); /* m: 1067 -> 0,1073 */
	reached1[1067] = 1;
	trans[1][1067]	= settr(0,0,0,0,0,"deq_idx = 0",0,0,0);
	trans[1][1074]	= settr(2166,2,1073,1,0,".(goto)", 1, 2, 0);
	T = trans[1][1073] = settr(2165,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(2165,2,1068,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(2165,2,1071,0,0,"DO", 1, 2, 0);
	trans[1][1068]	= settr(2160,2,1073,968,968,"((deq_idx<(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0); /* m: 1069 -> 1073,0 */
	reached1[1069] = 1;
	trans[1][1069]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[deq_idx] = readyQueue[topPrio].tasks[(deq_idx+1)]",0,0,0);
	trans[1][1070]	= settr(0,0,0,0,0,"deq_idx = (deq_idx+1)",0,0,0);
	trans[1][1071]	= settr(2163,2,1081,969,969,"((deq_idx>=(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0);
	trans[1][1072]	= settr(2164,2,1081,1,0,"goto :b81", 1, 2, 0);
	trans[1][1075]	= settr(2167,2,1081,1,0,"break", 1, 2, 0);
	T = trans[1][1081] = settr(2173,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(2173,2,1076,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(2173,2,1079,0,0,"IF", 1, 2, 0);
	trans[1][1076]	= settr(2168,2,1087,970,970,"((readyQueue[topPrio].tailIndex>0))", 1, 2, 0); /* m: 1077 -> 1087,0 */
	reached1[1077] = 1;
	trans[1][1077]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)] = 255",0,0,0);
	trans[1][1078]	= settr(0,0,0,0,0,"readyQueue[topPrio].tailIndex = (readyQueue[topPrio].tailIndex-1)",0,0,0);
	trans[1][1082]	= settr(2174,2,1084,1,0,".(goto)", 1, 2, 0); /* m: 1084 -> 0,1087 */
	reached1[1084] = 1;
	trans[1][1079]	= settr(2171,2,1080,2,0,"else", 1, 2, 0);
	trans[1][1080]	= settr(2172,2,1087,971,971,"(1)", 1, 2, 0); /* m: 1084 -> 1087,0 */
	reached1[1084] = 1;
	trans[1][1084]	= settr(2176,2,1087,972,972,"tcb[newTask].state = 4", 1, 2, 0); /* m: 1085 -> 0,1087 */
	reached1[1085] = 1;
	trans[1][1085]	= settr(0,0,0,0,0,"EP = newTask",0,0,0);
	T = trans[ 1][1087] = settr(2179,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(2179,0,1086,0,0,"sub-sequence", 1, 2, 0);
	trans[1][1086]	= settr(2178,0,1090,973,973,"int_ctrl_reg = int_save", 1, 2, 0);
	trans[1][1092]	= settr(2184,0,1093,1,0,"break", 0, 2, 0);
	trans[1][1093]	= settr(2185,0,0,974,974,"-end-", 0, 3500, 0);

	/* proctype 0: Process1 */

	trans[0] = (Trans **) emalloc(1094*sizeof(Trans *));

	trans[0][1091]	= settr(1090,0,1090,1,0,".(goto)", 0, 2, 0);
	T = trans[0][1090] = settr(1089,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1089,0,131,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1089,0,262,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1089,0,393,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1089,0,675,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1089,0,957,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1089,0,958,0,0,"DO", 0, 2, 0);
	T = trans[ 0][131] = settr(130,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(130,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[0][1]	= settr(0,2,130,975,975,"((EP==1))", 1, 2, 0); /* m: 2 -> 130,0 */
	reached0[2] = 1;
	trans[0][2]	= settr(0,0,0,0,0,"printf('Process 1 running, counter=%d\\n',counter)",0,0,0);
	T = trans[ 0][130] = settr(129,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(129,0,3,0,0,"sub-sequence", 1, 2, 0);
	trans[0][3]	= settr(2,2,11,976,976,"interrupted_task = 0", 1, 2, 0); /* m: 4 -> 0,11 */
	reached0[4] = 1;
	trans[0][4]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[0][5]	= settr(0,0,0,0,0,"taskId = 0",0,0,0);
	trans[0][6]	= settr(0,0,0,0,0,"needResched = 0",0,0,0);
	trans[0][7]	= settr(0,0,0,0,0,"interrupted_task = 0",0,0,0);
	trans[0][8]	= settr(0,0,0,0,0,"needResched = 0",0,0,0);
	T = trans[ 0][11] = settr(10,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(10,0,9,0,0,"sub-sequence", 1, 2, 0);
	trans[0][9]	= settr(8,2,68,977,977,"int_save = int_ctrl_reg", 1, 2, 0); /* m: 10 -> 0,68 */
	reached0[10] = 1;
	trans[0][10]	= settr(0,0,0,0,0,"int_ctrl_reg = 1",0,0,0);
	trans[0][12]	= settr(0,0,0,0,0,"tickCount = (tickCount+1)",0,0,0);
	trans[0][13]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[0][69]	= settr(68,2,68,1,0,".(goto)", 1, 2, 0);
	T = trans[0][68] = settr(67,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(67,2,14,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(67,2,66,0,0,"DO", 1, 2, 0);
	trans[0][14]	= settr(13,2,64,978,978,"((idx<sortLink.count))", 1, 2, 0); /* m: 15 -> 64,0 */
	reached0[15] = 1;
	trans[0][15]	= settr(0,0,0,0,0,"taskId = sortLink.tasks[idx]",0,0,0);
	T = trans[0][64] = settr(63,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(63,2,16,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(63,2,62,0,0,"IF", 1, 2, 0);
	trans[0][16]	= settr(15,2,52,979,979,"(((tcb[taskId].state==2)&&(tickCount>=tcb[taskId].wakeupTime)))", 1, 2, 0); /* m: 17 -> 52,0 */
	reached0[17] = 1;
	trans[0][17]	= settr(0,0,0,0,0,"tcb[taskId].state = 1",0,0,0);
	trans[0][18]	= settr(0,0,0,0,0,"tcb[taskId].delayTicks = 0",0,0,0);
	T = trans[ 0][52] = settr(51,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(51,0,19,0,0,"sub-sequence", 1, 2, 0);
	trans[0][19]	= settr(18,2,33,980,980,"removePos = 0", 1, 2, 0); /* m: 20 -> 0,33 */
	reached0[20] = 1;
	trans[0][20]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[0][21]	= settr(0,0,0,0,0,"shiftIdx = 0",0,0,0);
	trans[0][22]	= settr(0,0,0,0,0,"removePos = 0",0,0,0);
	trans[0][23]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[0][34]	= settr(33,2,33,1,0,".(goto)", 1, 2, 0);
	T = trans[0][33] = settr(32,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(32,2,24,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(32,2,31,0,0,"DO", 1, 2, 0);
	trans[0][24]	= settr(23,2,29,981,0,"(((removePos<sortLink.count)&&!(found)))", 1, 2, 0);
	T = trans[0][29] = settr(28,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(28,2,25,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(28,2,27,0,0,"IF", 1, 2, 0);
	trans[0][25]	= settr(24,2,33,982,982,"((sortLink.tasks[removePos]==taskId))", 1, 2, 0); /* m: 26 -> 33,0 */
	reached0[26] = 1;
	trans[0][26]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[0][30]	= settr(29,2,33,1,0,".(goto)", 1, 2, 0);
	trans[0][27]	= settr(26,2,28,2,0,"else", 1, 2, 0);
	trans[0][28]	= settr(27,2,33,983,983,"removePos = (removePos+1)", 1, 2, 0);
	trans[0][31]	= settr(30,2,50,2,0,"else", 1, 2, 0);
	trans[0][32]	= settr(31,2,50,1,0,"goto :b2", 1, 2, 0);
	trans[0][35]	= settr(34,2,50,1,0,"break", 1, 2, 0);
	T = trans[0][50] = settr(49,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(49,2,36,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(49,2,48,0,0,"IF", 1, 2, 0);
	trans[0][36]	= settr(35,2,43,984,984,"((found==1))", 1, 2, 0); /* m: 37 -> 43,0 */
	reached0[37] = 1;
	trans[0][37]	= settr(0,0,0,0,0,"shiftIdx = removePos",0,0,0);
	trans[0][44]	= settr(43,2,43,1,0,".(goto)", 1, 2, 0);
	T = trans[0][43] = settr(42,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(42,2,38,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(42,2,41,0,0,"DO", 1, 2, 0);
	trans[0][38]	= settr(37,2,43,985,985,"((shiftIdx<(sortLink.count-1)))", 1, 2, 0); /* m: 39 -> 43,0 */
	reached0[39] = 1;
	trans[0][39]	= settr(0,0,0,0,0,"sortLink.tasks[shiftIdx] = sortLink.tasks[(shiftIdx+1)]",0,0,0);
	trans[0][40]	= settr(0,0,0,0,0,"shiftIdx = (shiftIdx+1)",0,0,0);
	trans[0][41]	= settr(40,2,60,986,986,"((shiftIdx>=(sortLink.count-1)))", 1, 2, 0); /* m: 46 -> 60,0 */
	reached0[46] = 1;
	trans[0][42]	= settr(41,2,46,1,0,"goto :b3", 1, 2, 0); /* m: 46 -> 0,60 */
	reached0[46] = 1;
	trans[0][45]	= settr(44,2,46,1,0,"break", 1, 2, 0);
	trans[0][46]	= settr(45,2,60,987,987,"sortLink.tasks[(sortLink.count-1)] = 255", 1, 2, 0); /* m: 47 -> 0,60 */
	reached0[47] = 1;
	trans[0][47]	= settr(0,0,0,0,0,"sortLink.count = (sortLink.count-1)",0,0,0);
	trans[0][51]	= settr(50,2,60,1,0,".(goto)", 1, 2, 0);
	trans[0][48]	= settr(47,2,49,2,0,"else", 1, 2, 0);
	trans[0][49]	= settr(48,2,60,1,0,"(1)", 1, 2, 0);
	T = trans[ 0][60] = settr(59,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(59,0,58,0,0,"sub-sequence", 1, 2, 0);
	T = trans[0][58] = settr(57,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(57,2,53,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(57,2,56,0,0,"IF", 1, 2, 0);
	trans[0][53]	= settr(52,2,68,988,988,"((readyQueue[tcb[taskId].prio].tailIndex<8))", 1, 2, 0); /* m: 54 -> 68,0 */
	reached0[54] = 1;
	trans[0][54]	= settr(0,0,0,0,0,"readyQueue[tcb[taskId].prio].tasks[readyQueue[tcb[taskId].prio].tailIndex] = taskId",0,0,0);
	trans[0][55]	= settr(0,0,0,0,0,"readyQueue[tcb[taskId].prio].tailIndex = (readyQueue[tcb[taskId].prio].tailIndex+1)",0,0,0);
	trans[0][59]	= settr(58,2,61,1,0,".(goto)", 1, 2, 0); /* m: 61 -> 0,68 */
	reached0[61] = 1;
	trans[0][56]	= settr(55,2,57,2,0,"else", 1, 2, 0);
	trans[0][57]	= settr(56,2,68,989,989,"assert(0)", 1, 2, 0); /* m: 61 -> 0,68 */
	reached0[61] = 1;
	trans[0][61]	= settr(60,2,68,990,990,"needResched = 1", 1, 2, 0);
	trans[0][65]	= settr(64,2,68,1,0,".(goto)", 1, 2, 0);
	trans[0][62]	= settr(61,2,63,2,0,"else", 1, 2, 0);
	trans[0][63]	= settr(62,2,68,991,991,"idx = (idx+1)", 1, 2, 0);
	trans[0][66]	= settr(65,2,84,992,992,"((idx>=sortLink.count))", 1, 2, 0); /* m: 71 -> 84,0 */
	reached0[71] = 1;
	trans[0][67]	= settr(66,2,71,1,0,"goto :b1", 1, 2, 0); /* m: 71 -> 0,84 */
	reached0[71] = 1;
	trans[0][70]	= settr(69,2,71,1,0,"break", 1, 2, 0);
	trans[0][71]	= settr(70,2,84,993,993,"interrupted_task = EP", 1, 2, 0);
	T = trans[0][84] = settr(83,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(83,2,72,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(83,2,82,0,0,"IF", 1, 2, 0);
	trans[0][72]	= settr(71,2,81,994,994,"((((interrupted_task>=1)&&(interrupted_task<=4))&&(tcb[interrupted_task].state!=2)))", 1, 2, 0); /* m: 73 -> 81,0 */
	reached0[73] = 1;
	trans[0][73]	= settr(0,0,0,0,0,"tcb[interrupted_task].state = 1",0,0,0);
	T = trans[ 0][81] = settr(80,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(80,0,79,0,0,"sub-sequence", 1, 2, 0);
	T = trans[0][79] = settr(78,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(78,2,74,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(78,2,77,0,0,"IF", 1, 2, 0);
	trans[0][74]	= settr(73,2,107,995,995,"((readyQueue[tcb[interrupted_task].prio].tailIndex<8))", 1, 2, 0); /* m: 75 -> 107,0 */
	reached0[75] = 1;
	trans[0][75]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tasks[readyQueue[tcb[interrupted_task].prio].tailIndex] = interrupted_task",0,0,0);
	trans[0][76]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tailIndex = (readyQueue[tcb[interrupted_task].prio].tailIndex+1)",0,0,0);
	trans[0][80]	= settr(79,2,107,1,0,".(goto)", 1, 2, 0);
	trans[0][77]	= settr(76,2,78,2,0,"else", 1, 2, 0);
	trans[0][78]	= settr(77,2,107,996,0,"assert(0)", 1, 2, 0);
	trans[0][85]	= settr(84,2,107,1,0,".(goto)", 1, 2, 0);
	trans[0][82]	= settr(81,2,83,2,0,"else", 1, 2, 0);
	trans[0][83]	= settr(82,2,107,1,0,"(1)", 1, 2, 0);
	T = trans[ 0][107] = settr(106,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(106,0,86,0,0,"sub-sequence", 1, 2, 0);
	trans[0][86]	= settr(85,2,102,997,997,"prio = 0", 1, 2, 0); /* m: 87 -> 0,102 */
	reached0[87] = 1;
	trans[0][87]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[0][88]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[0][89]	= settr(0,0,0,0,0,"prio = 0",0,0,0);
	trans[0][90]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[0][91]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[0][103]	= settr(102,2,102,1,0,".(goto)", 1, 2, 0);
	T = trans[0][102] = settr(101,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(101,2,92,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(101,2,100,0,0,"DO", 1, 2, 0);
	trans[0][92]	= settr(91,2,98,998,0,"(((prio<4)&&!(found)))", 1, 2, 0);
	T = trans[0][98] = settr(97,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(97,2,93,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(97,2,96,0,0,"IF", 1, 2, 0);
	trans[0][93]	= settr(92,2,102,999,999,"((readyQueue[prio].tailIndex>0))", 1, 2, 0); /* m: 94 -> 102,0 */
	reached0[94] = 1;
	trans[0][94]	= settr(0,0,0,0,0,"top_task = readyQueue[prio].tasks[0]",0,0,0);
	trans[0][95]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[0][99]	= settr(98,2,102,1,0,".(goto)", 1, 2, 0);
	trans[0][96]	= settr(95,2,97,2,0,"else", 1, 2, 0);
	trans[0][97]	= settr(96,2,102,1000,1000,"prio = (prio+1)", 1, 2, 0);
	trans[0][100]	= settr(99,2,125,1001,1001,"(((prio>=4)||found))", 1, 2, 0); /* m: 105 -> 125,0 */
	reached0[105] = 1;
	trans[0][101]	= settr(100,2,105,1,0,"goto :b4", 1, 2, 0); /* m: 105 -> 0,125 */
	reached0[105] = 1;
	trans[0][104]	= settr(103,2,105,1,0,"break", 1, 2, 0);
	trans[0][105]	= settr(104,2,125,1002,1002,"newTask = top_task", 1, 2, 0); /* m: 106 -> 0,125 */
	reached0[106] = 1;
	trans[0][106]	= settr(0,0,0,0,0,"topPrio = prio",0,0,0);
	T = trans[ 0][125] = settr(124,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(124,0,108,0,0,"sub-sequence", 1, 2, 0);
	trans[0][108]	= settr(107,2,115,1003,1003,"deq_idx = 0", 1, 2, 0); /* m: 109 -> 0,115 */
	reached0[109] = 1;
	trans[0][109]	= settr(0,0,0,0,0,"deq_idx = 0",0,0,0);
	trans[0][116]	= settr(115,2,115,1,0,".(goto)", 1, 2, 0);
	T = trans[0][115] = settr(114,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(114,2,110,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(114,2,113,0,0,"DO", 1, 2, 0);
	trans[0][110]	= settr(109,2,115,1004,1004,"((deq_idx<(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0); /* m: 111 -> 115,0 */
	reached0[111] = 1;
	trans[0][111]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[deq_idx] = readyQueue[topPrio].tasks[(deq_idx+1)]",0,0,0);
	trans[0][112]	= settr(0,0,0,0,0,"deq_idx = (deq_idx+1)",0,0,0);
	trans[0][113]	= settr(112,2,123,1005,1005,"((deq_idx>=(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0);
	trans[0][114]	= settr(113,2,123,1,0,"goto :b5", 1, 2, 0);
	trans[0][117]	= settr(116,2,123,1,0,"break", 1, 2, 0);
	T = trans[0][123] = settr(122,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(122,2,118,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(122,2,121,0,0,"IF", 1, 2, 0);
	trans[0][118]	= settr(117,2,129,1006,1006,"((readyQueue[topPrio].tailIndex>0))", 1, 2, 0); /* m: 119 -> 129,0 */
	reached0[119] = 1;
	trans[0][119]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)] = 255",0,0,0);
	trans[0][120]	= settr(0,0,0,0,0,"readyQueue[topPrio].tailIndex = (readyQueue[topPrio].tailIndex-1)",0,0,0);
	trans[0][124]	= settr(123,2,126,1,0,".(goto)", 1, 2, 0); /* m: 126 -> 0,129 */
	reached0[126] = 1;
	trans[0][121]	= settr(120,2,122,2,0,"else", 1, 2, 0);
	trans[0][122]	= settr(121,2,129,1007,1007,"(1)", 1, 2, 0); /* m: 126 -> 129,0 */
	reached0[126] = 1;
	trans[0][126]	= settr(125,2,129,1008,1008,"tcb[newTask].state = 4", 1, 2, 0); /* m: 127 -> 0,129 */
	reached0[127] = 1;
	trans[0][127]	= settr(0,0,0,0,0,"EP = newTask",0,0,0);
	T = trans[ 0][129] = settr(128,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(128,0,128,0,0,"sub-sequence", 1, 2, 0);
	trans[0][128]	= settr(127,0,1090,1009,1009,"int_ctrl_reg = int_save", 1, 2, 0);
	T = trans[ 0][262] = settr(261,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(261,2,132,0,0,"ATOMIC", 1, 2, 0);
	trans[0][132]	= settr(131,2,261,1010,1010,"((EP==1))", 1, 2, 0); /* m: 133 -> 261,0 */
	reached0[133] = 1;
	trans[0][133]	= settr(0,0,0,0,0,"counter = (counter+1)",0,0,0);
	T = trans[ 0][261] = settr(260,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(260,0,134,0,0,"sub-sequence", 1, 2, 0);
	trans[0][134]	= settr(133,2,142,1011,1011,"interrupted_task = 0", 1, 2, 0); /* m: 135 -> 0,142 */
	reached0[135] = 1;
	trans[0][135]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[0][136]	= settr(0,0,0,0,0,"taskId = 0",0,0,0);
	trans[0][137]	= settr(0,0,0,0,0,"needResched = 0",0,0,0);
	trans[0][138]	= settr(0,0,0,0,0,"interrupted_task = 0",0,0,0);
	trans[0][139]	= settr(0,0,0,0,0,"needResched = 0",0,0,0);
	T = trans[ 0][142] = settr(141,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(141,0,140,0,0,"sub-sequence", 1, 2, 0);
	trans[0][140]	= settr(139,2,199,1012,1012,"int_save = int_ctrl_reg", 1, 2, 0); /* m: 141 -> 0,199 */
	reached0[141] = 1;
	trans[0][141]	= settr(0,0,0,0,0,"int_ctrl_reg = 1",0,0,0);
	trans[0][143]	= settr(0,0,0,0,0,"tickCount = (tickCount+1)",0,0,0);
	trans[0][144]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[0][200]	= settr(199,2,199,1,0,".(goto)", 1, 2, 0);
	T = trans[0][199] = settr(198,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(198,2,145,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(198,2,197,0,0,"DO", 1, 2, 0);
	trans[0][145]	= settr(144,2,195,1013,1013,"((idx<sortLink.count))", 1, 2, 0); /* m: 146 -> 195,0 */
	reached0[146] = 1;
	trans[0][146]	= settr(0,0,0,0,0,"taskId = sortLink.tasks[idx]",0,0,0);
	T = trans[0][195] = settr(194,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(194,2,147,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(194,2,193,0,0,"IF", 1, 2, 0);
	trans[0][147]	= settr(146,2,183,1014,1014,"(((tcb[taskId].state==2)&&(tickCount>=tcb[taskId].wakeupTime)))", 1, 2, 0); /* m: 148 -> 183,0 */
	reached0[148] = 1;
	trans[0][148]	= settr(0,0,0,0,0,"tcb[taskId].state = 1",0,0,0);
	trans[0][149]	= settr(0,0,0,0,0,"tcb[taskId].delayTicks = 0",0,0,0);
	T = trans[ 0][183] = settr(182,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(182,0,150,0,0,"sub-sequence", 1, 2, 0);
	trans[0][150]	= settr(149,2,164,1015,1015,"removePos = 0", 1, 2, 0); /* m: 151 -> 0,164 */
	reached0[151] = 1;
	trans[0][151]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[0][152]	= settr(0,0,0,0,0,"shiftIdx = 0",0,0,0);
	trans[0][153]	= settr(0,0,0,0,0,"removePos = 0",0,0,0);
	trans[0][154]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[0][165]	= settr(164,2,164,1,0,".(goto)", 1, 2, 0);
	T = trans[0][164] = settr(163,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(163,2,155,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(163,2,162,0,0,"DO", 1, 2, 0);
	trans[0][155]	= settr(154,2,160,1016,0,"(((removePos<sortLink.count)&&!(found)))", 1, 2, 0);
	T = trans[0][160] = settr(159,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(159,2,156,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(159,2,158,0,0,"IF", 1, 2, 0);
	trans[0][156]	= settr(155,2,164,1017,1017,"((sortLink.tasks[removePos]==taskId))", 1, 2, 0); /* m: 157 -> 164,0 */
	reached0[157] = 1;
	trans[0][157]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[0][161]	= settr(160,2,164,1,0,".(goto)", 1, 2, 0);
	trans[0][158]	= settr(157,2,159,2,0,"else", 1, 2, 0);
	trans[0][159]	= settr(158,2,164,1018,1018,"removePos = (removePos+1)", 1, 2, 0);
	trans[0][162]	= settr(161,2,181,2,0,"else", 1, 2, 0);
	trans[0][163]	= settr(162,2,181,1,0,"goto :b7", 1, 2, 0);
	trans[0][166]	= settr(165,2,181,1,0,"break", 1, 2, 0);
	T = trans[0][181] = settr(180,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(180,2,167,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(180,2,179,0,0,"IF", 1, 2, 0);
	trans[0][167]	= settr(166,2,174,1019,1019,"((found==1))", 1, 2, 0); /* m: 168 -> 174,0 */
	reached0[168] = 1;
	trans[0][168]	= settr(0,0,0,0,0,"shiftIdx = removePos",0,0,0);
	trans[0][175]	= settr(174,2,174,1,0,".(goto)", 1, 2, 0);
	T = trans[0][174] = settr(173,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(173,2,169,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(173,2,172,0,0,"DO", 1, 2, 0);
	trans[0][169]	= settr(168,2,174,1020,1020,"((shiftIdx<(sortLink.count-1)))", 1, 2, 0); /* m: 170 -> 174,0 */
	reached0[170] = 1;
	trans[0][170]	= settr(0,0,0,0,0,"sortLink.tasks[shiftIdx] = sortLink.tasks[(shiftIdx+1)]",0,0,0);
	trans[0][171]	= settr(0,0,0,0,0,"shiftIdx = (shiftIdx+1)",0,0,0);
	trans[0][172]	= settr(171,2,191,1021,1021,"((shiftIdx>=(sortLink.count-1)))", 1, 2, 0); /* m: 177 -> 191,0 */
	reached0[177] = 1;
	trans[0][173]	= settr(172,2,177,1,0,"goto :b8", 1, 2, 0); /* m: 177 -> 0,191 */
	reached0[177] = 1;
	trans[0][176]	= settr(175,2,177,1,0,"break", 1, 2, 0);
	trans[0][177]	= settr(176,2,191,1022,1022,"sortLink.tasks[(sortLink.count-1)] = 255", 1, 2, 0); /* m: 178 -> 0,191 */
	reached0[178] = 1;
	trans[0][178]	= settr(0,0,0,0,0,"sortLink.count = (sortLink.count-1)",0,0,0);
	trans[0][182]	= settr(181,2,191,1,0,".(goto)", 1, 2, 0);
	trans[0][179]	= settr(178,2,180,2,0,"else", 1, 2, 0);
	trans[0][180]	= settr(179,2,191,1,0,"(1)", 1, 2, 0);
	T = trans[ 0][191] = settr(190,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(190,0,189,0,0,"sub-sequence", 1, 2, 0);
	T = trans[0][189] = settr(188,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(188,2,184,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(188,2,187,0,0,"IF", 1, 2, 0);
	trans[0][184]	= settr(183,2,199,1023,1023,"((readyQueue[tcb[taskId].prio].tailIndex<8))", 1, 2, 0); /* m: 185 -> 199,0 */
	reached0[185] = 1;
	trans[0][185]	= settr(0,0,0,0,0,"readyQueue[tcb[taskId].prio].tasks[readyQueue[tcb[taskId].prio].tailIndex] = taskId",0,0,0);
	trans[0][186]	= settr(0,0,0,0,0,"readyQueue[tcb[taskId].prio].tailIndex = (readyQueue[tcb[taskId].prio].tailIndex+1)",0,0,0);
	trans[0][190]	= settr(189,2,192,1,0,".(goto)", 1, 2, 0); /* m: 192 -> 0,199 */
	reached0[192] = 1;
	trans[0][187]	= settr(186,2,188,2,0,"else", 1, 2, 0);
	trans[0][188]	= settr(187,2,199,1024,1024,"assert(0)", 1, 2, 0); /* m: 192 -> 0,199 */
	reached0[192] = 1;
	trans[0][192]	= settr(191,2,199,1025,1025,"needResched = 1", 1, 2, 0);
	trans[0][196]	= settr(195,2,199,1,0,".(goto)", 1, 2, 0);
	trans[0][193]	= settr(192,2,194,2,0,"else", 1, 2, 0);
	trans[0][194]	= settr(193,2,199,1026,1026,"idx = (idx+1)", 1, 2, 0);
	trans[0][197]	= settr(196,2,215,1027,1027,"((idx>=sortLink.count))", 1, 2, 0); /* m: 202 -> 215,0 */
	reached0[202] = 1;
	trans[0][198]	= settr(197,2,202,1,0,"goto :b6", 1, 2, 0); /* m: 202 -> 0,215 */
	reached0[202] = 1;
	trans[0][201]	= settr(200,2,202,1,0,"break", 1, 2, 0);
	trans[0][202]	= settr(201,2,215,1028,1028,"interrupted_task = EP", 1, 2, 0);
	T = trans[0][215] = settr(214,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(214,2,203,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(214,2,213,0,0,"IF", 1, 2, 0);
	trans[0][203]	= settr(202,2,212,1029,1029,"((((interrupted_task>=1)&&(interrupted_task<=4))&&(tcb[interrupted_task].state!=2)))", 1, 2, 0); /* m: 204 -> 212,0 */
	reached0[204] = 1;
	trans[0][204]	= settr(0,0,0,0,0,"tcb[interrupted_task].state = 1",0,0,0);
	T = trans[ 0][212] = settr(211,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(211,0,210,0,0,"sub-sequence", 1, 2, 0);
	T = trans[0][210] = settr(209,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(209,2,205,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(209,2,208,0,0,"IF", 1, 2, 0);
	trans[0][205]	= settr(204,2,238,1030,1030,"((readyQueue[tcb[interrupted_task].prio].tailIndex<8))", 1, 2, 0); /* m: 206 -> 238,0 */
	reached0[206] = 1;
	trans[0][206]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tasks[readyQueue[tcb[interrupted_task].prio].tailIndex] = interrupted_task",0,0,0);
	trans[0][207]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tailIndex = (readyQueue[tcb[interrupted_task].prio].tailIndex+1)",0,0,0);
	trans[0][211]	= settr(210,2,238,1,0,".(goto)", 1, 2, 0);
	trans[0][208]	= settr(207,2,209,2,0,"else", 1, 2, 0);
	trans[0][209]	= settr(208,2,238,1031,0,"assert(0)", 1, 2, 0);
	trans[0][216]	= settr(215,2,238,1,0,".(goto)", 1, 2, 0);
	trans[0][213]	= settr(212,2,214,2,0,"else", 1, 2, 0);
	trans[0][214]	= settr(213,2,238,1,0,"(1)", 1, 2, 0);
	T = trans[ 0][238] = settr(237,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(237,0,217,0,0,"sub-sequence", 1, 2, 0);
	trans[0][217]	= settr(216,2,233,1032,1032,"prio = 0", 1, 2, 0); /* m: 218 -> 0,233 */
	reached0[218] = 1;
	trans[0][218]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[0][219]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[0][220]	= settr(0,0,0,0,0,"prio = 0",0,0,0);
	trans[0][221]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[0][222]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[0][234]	= settr(233,2,233,1,0,".(goto)", 1, 2, 0);
	T = trans[0][233] = settr(232,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(232,2,223,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(232,2,231,0,0,"DO", 1, 2, 0);
	trans[0][223]	= settr(222,2,229,1033,0,"(((prio<4)&&!(found)))", 1, 2, 0);
	T = trans[0][229] = settr(228,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(228,2,224,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(228,2,227,0,0,"IF", 1, 2, 0);
	trans[0][224]	= settr(223,2,233,1034,1034,"((readyQueue[prio].tailIndex>0))", 1, 2, 0); /* m: 225 -> 233,0 */
	reached0[225] = 1;
	trans[0][225]	= settr(0,0,0,0,0,"top_task = readyQueue[prio].tasks[0]",0,0,0);
	trans[0][226]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[0][230]	= settr(229,2,233,1,0,".(goto)", 1, 2, 0);
	trans[0][227]	= settr(226,2,228,2,0,"else", 1, 2, 0);
	trans[0][228]	= settr(227,2,233,1035,1035,"prio = (prio+1)", 1, 2, 0);
	trans[0][231]	= settr(230,2,256,1036,1036,"(((prio>=4)||found))", 1, 2, 0); /* m: 236 -> 256,0 */
	reached0[236] = 1;
	trans[0][232]	= settr(231,2,236,1,0,"goto :b9", 1, 2, 0); /* m: 236 -> 0,256 */
	reached0[236] = 1;
	trans[0][235]	= settr(234,2,236,1,0,"break", 1, 2, 0);
	trans[0][236]	= settr(235,2,256,1037,1037,"newTask = top_task", 1, 2, 0); /* m: 237 -> 0,256 */
	reached0[237] = 1;
	trans[0][237]	= settr(0,0,0,0,0,"topPrio = prio",0,0,0);
	T = trans[ 0][256] = settr(255,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(255,0,239,0,0,"sub-sequence", 1, 2, 0);
	trans[0][239]	= settr(238,2,246,1038,1038,"deq_idx = 0", 1, 2, 0); /* m: 240 -> 0,246 */
	reached0[240] = 1;
	trans[0][240]	= settr(0,0,0,0,0,"deq_idx = 0",0,0,0);
	trans[0][247]	= settr(246,2,246,1,0,".(goto)", 1, 2, 0);
	T = trans[0][246] = settr(245,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(245,2,241,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(245,2,244,0,0,"DO", 1, 2, 0);
	trans[0][241]	= settr(240,2,246,1039,1039,"((deq_idx<(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0); /* m: 242 -> 246,0 */
	reached0[242] = 1;
	trans[0][242]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[deq_idx] = readyQueue[topPrio].tasks[(deq_idx+1)]",0,0,0);
	trans[0][243]	= settr(0,0,0,0,0,"deq_idx = (deq_idx+1)",0,0,0);
	trans[0][244]	= settr(243,2,254,1040,1040,"((deq_idx>=(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0);
	trans[0][245]	= settr(244,2,254,1,0,"goto :b10", 1, 2, 0);
	trans[0][248]	= settr(247,2,254,1,0,"break", 1, 2, 0);
	T = trans[0][254] = settr(253,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(253,2,249,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(253,2,252,0,0,"IF", 1, 2, 0);
	trans[0][249]	= settr(248,2,260,1041,1041,"((readyQueue[topPrio].tailIndex>0))", 1, 2, 0); /* m: 250 -> 260,0 */
	reached0[250] = 1;
	trans[0][250]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)] = 255",0,0,0);
	trans[0][251]	= settr(0,0,0,0,0,"readyQueue[topPrio].tailIndex = (readyQueue[topPrio].tailIndex-1)",0,0,0);
	trans[0][255]	= settr(254,2,257,1,0,".(goto)", 1, 2, 0); /* m: 257 -> 0,260 */
	reached0[257] = 1;
	trans[0][252]	= settr(251,2,253,2,0,"else", 1, 2, 0);
	trans[0][253]	= settr(252,2,260,1042,1042,"(1)", 1, 2, 0); /* m: 257 -> 260,0 */
	reached0[257] = 1;
	trans[0][257]	= settr(256,2,260,1043,1043,"tcb[newTask].state = 4", 1, 2, 0); /* m: 258 -> 0,260 */
	reached0[258] = 1;
	trans[0][258]	= settr(0,0,0,0,0,"EP = newTask",0,0,0);
	T = trans[ 0][260] = settr(259,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(259,0,259,0,0,"sub-sequence", 1, 2, 0);
	trans[0][259]	= settr(258,0,1090,1044,1044,"int_ctrl_reg = int_save", 1, 2, 0);
	T = trans[ 0][393] = settr(392,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(392,2,263,0,0,"ATOMIC", 1, 2, 0);
	trans[0][263]	= settr(262,2,392,1045,1045,"((EP==1))", 1, 2, 0); /* m: 264 -> 392,0 */
	reached0[264] = 1;
	trans[0][264]	= settr(0,0,0,0,0,"work = ((work+counter)%100)",0,0,0);
	T = trans[ 0][392] = settr(391,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(391,0,265,0,0,"sub-sequence", 1, 2, 0);
	trans[0][265]	= settr(264,2,273,1046,1046,"interrupted_task = 0", 1, 2, 0); /* m: 266 -> 0,273 */
	reached0[266] = 1;
	trans[0][266]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[0][267]	= settr(0,0,0,0,0,"taskId = 0",0,0,0);
	trans[0][268]	= settr(0,0,0,0,0,"needResched = 0",0,0,0);
	trans[0][269]	= settr(0,0,0,0,0,"interrupted_task = 0",0,0,0);
	trans[0][270]	= settr(0,0,0,0,0,"needResched = 0",0,0,0);
	T = trans[ 0][273] = settr(272,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(272,0,271,0,0,"sub-sequence", 1, 2, 0);
	trans[0][271]	= settr(270,2,330,1047,1047,"int_save = int_ctrl_reg", 1, 2, 0); /* m: 272 -> 0,330 */
	reached0[272] = 1;
	trans[0][272]	= settr(0,0,0,0,0,"int_ctrl_reg = 1",0,0,0);
	trans[0][274]	= settr(0,0,0,0,0,"tickCount = (tickCount+1)",0,0,0);
	trans[0][275]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[0][331]	= settr(330,2,330,1,0,".(goto)", 1, 2, 0);
	T = trans[0][330] = settr(329,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(329,2,276,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(329,2,328,0,0,"DO", 1, 2, 0);
	trans[0][276]	= settr(275,2,326,1048,1048,"((idx<sortLink.count))", 1, 2, 0); /* m: 277 -> 326,0 */
	reached0[277] = 1;
	trans[0][277]	= settr(0,0,0,0,0,"taskId = sortLink.tasks[idx]",0,0,0);
	T = trans[0][326] = settr(325,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(325,2,278,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(325,2,324,0,0,"IF", 1, 2, 0);
	trans[0][278]	= settr(277,2,314,1049,1049,"(((tcb[taskId].state==2)&&(tickCount>=tcb[taskId].wakeupTime)))", 1, 2, 0); /* m: 279 -> 314,0 */
	reached0[279] = 1;
	trans[0][279]	= settr(0,0,0,0,0,"tcb[taskId].state = 1",0,0,0);
	trans[0][280]	= settr(0,0,0,0,0,"tcb[taskId].delayTicks = 0",0,0,0);
	T = trans[ 0][314] = settr(313,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(313,0,281,0,0,"sub-sequence", 1, 2, 0);
	trans[0][281]	= settr(280,2,295,1050,1050,"removePos = 0", 1, 2, 0); /* m: 282 -> 0,295 */
	reached0[282] = 1;
	trans[0][282]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[0][283]	= settr(0,0,0,0,0,"shiftIdx = 0",0,0,0);
	trans[0][284]	= settr(0,0,0,0,0,"removePos = 0",0,0,0);
	trans[0][285]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[0][296]	= settr(295,2,295,1,0,".(goto)", 1, 2, 0);
	T = trans[0][295] = settr(294,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(294,2,286,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(294,2,293,0,0,"DO", 1, 2, 0);
	trans[0][286]	= settr(285,2,291,1051,0,"(((removePos<sortLink.count)&&!(found)))", 1, 2, 0);
	T = trans[0][291] = settr(290,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(290,2,287,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(290,2,289,0,0,"IF", 1, 2, 0);
	trans[0][287]	= settr(286,2,295,1052,1052,"((sortLink.tasks[removePos]==taskId))", 1, 2, 0); /* m: 288 -> 295,0 */
	reached0[288] = 1;
	trans[0][288]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[0][292]	= settr(291,2,295,1,0,".(goto)", 1, 2, 0);
	trans[0][289]	= settr(288,2,290,2,0,"else", 1, 2, 0);
	trans[0][290]	= settr(289,2,295,1053,1053,"removePos = (removePos+1)", 1, 2, 0);
	trans[0][293]	= settr(292,2,312,2,0,"else", 1, 2, 0);
	trans[0][294]	= settr(293,2,312,1,0,"goto :b12", 1, 2, 0);
	trans[0][297]	= settr(296,2,312,1,0,"break", 1, 2, 0);
	T = trans[0][312] = settr(311,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(311,2,298,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(311,2,310,0,0,"IF", 1, 2, 0);
	trans[0][298]	= settr(297,2,305,1054,1054,"((found==1))", 1, 2, 0); /* m: 299 -> 305,0 */
	reached0[299] = 1;
	trans[0][299]	= settr(0,0,0,0,0,"shiftIdx = removePos",0,0,0);
	trans[0][306]	= settr(305,2,305,1,0,".(goto)", 1, 2, 0);
	T = trans[0][305] = settr(304,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(304,2,300,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(304,2,303,0,0,"DO", 1, 2, 0);
	trans[0][300]	= settr(299,2,305,1055,1055,"((shiftIdx<(sortLink.count-1)))", 1, 2, 0); /* m: 301 -> 305,0 */
	reached0[301] = 1;
	trans[0][301]	= settr(0,0,0,0,0,"sortLink.tasks[shiftIdx] = sortLink.tasks[(shiftIdx+1)]",0,0,0);
	trans[0][302]	= settr(0,0,0,0,0,"shiftIdx = (shiftIdx+1)",0,0,0);
	trans[0][303]	= settr(302,2,322,1056,1056,"((shiftIdx>=(sortLink.count-1)))", 1, 2, 0); /* m: 308 -> 322,0 */
	reached0[308] = 1;
	trans[0][304]	= settr(303,2,308,1,0,"goto :b13", 1, 2, 0); /* m: 308 -> 0,322 */
	reached0[308] = 1;
	trans[0][307]	= settr(306,2,308,1,0,"break", 1, 2, 0);
	trans[0][308]	= settr(307,2,322,1057,1057,"sortLink.tasks[(sortLink.count-1)] = 255", 1, 2, 0); /* m: 309 -> 0,322 */
	reached0[309] = 1;
	trans[0][309]	= settr(0,0,0,0,0,"sortLink.count = (sortLink.count-1)",0,0,0);
	trans[0][313]	= settr(312,2,322,1,0,".(goto)", 1, 2, 0);
	trans[0][310]	= settr(309,2,311,2,0,"else", 1, 2, 0);
	trans[0][311]	= settr(310,2,322,1,0,"(1)", 1, 2, 0);
	T = trans[ 0][322] = settr(321,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(321,0,320,0,0,"sub-sequence", 1, 2, 0);
	T = trans[0][320] = settr(319,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(319,2,315,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(319,2,318,0,0,"IF", 1, 2, 0);
	trans[0][315]	= settr(314,2,330,1058,1058,"((readyQueue[tcb[taskId].prio].tailIndex<8))", 1, 2, 0); /* m: 316 -> 330,0 */
	reached0[316] = 1;
	trans[0][316]	= settr(0,0,0,0,0,"readyQueue[tcb[taskId].prio].tasks[readyQueue[tcb[taskId].prio].tailIndex] = taskId",0,0,0);
	trans[0][317]	= settr(0,0,0,0,0,"readyQueue[tcb[taskId].prio].tailIndex = (readyQueue[tcb[taskId].prio].tailIndex+1)",0,0,0);
	trans[0][321]	= settr(320,2,323,1,0,".(goto)", 1, 2, 0); /* m: 323 -> 0,330 */
	reached0[323] = 1;
	trans[0][318]	= settr(317,2,319,2,0,"else", 1, 2, 0);
	trans[0][319]	= settr(318,2,330,1059,1059,"assert(0)", 1, 2, 0); /* m: 323 -> 0,330 */
	reached0[323] = 1;
	trans[0][323]	= settr(322,2,330,1060,1060,"needResched = 1", 1, 2, 0);
	trans[0][327]	= settr(326,2,330,1,0,".(goto)", 1, 2, 0);
	trans[0][324]	= settr(323,2,325,2,0,"else", 1, 2, 0);
	trans[0][325]	= settr(324,2,330,1061,1061,"idx = (idx+1)", 1, 2, 0);
	trans[0][328]	= settr(327,2,346,1062,1062,"((idx>=sortLink.count))", 1, 2, 0); /* m: 333 -> 346,0 */
	reached0[333] = 1;
	trans[0][329]	= settr(328,2,333,1,0,"goto :b11", 1, 2, 0); /* m: 333 -> 0,346 */
	reached0[333] = 1;
	trans[0][332]	= settr(331,2,333,1,0,"break", 1, 2, 0);
	trans[0][333]	= settr(332,2,346,1063,1063,"interrupted_task = EP", 1, 2, 0);
	T = trans[0][346] = settr(345,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(345,2,334,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(345,2,344,0,0,"IF", 1, 2, 0);
	trans[0][334]	= settr(333,2,343,1064,1064,"((((interrupted_task>=1)&&(interrupted_task<=4))&&(tcb[interrupted_task].state!=2)))", 1, 2, 0); /* m: 335 -> 343,0 */
	reached0[335] = 1;
	trans[0][335]	= settr(0,0,0,0,0,"tcb[interrupted_task].state = 1",0,0,0);
	T = trans[ 0][343] = settr(342,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(342,0,341,0,0,"sub-sequence", 1, 2, 0);
	T = trans[0][341] = settr(340,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(340,2,336,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(340,2,339,0,0,"IF", 1, 2, 0);
	trans[0][336]	= settr(335,2,369,1065,1065,"((readyQueue[tcb[interrupted_task].prio].tailIndex<8))", 1, 2, 0); /* m: 337 -> 369,0 */
	reached0[337] = 1;
	trans[0][337]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tasks[readyQueue[tcb[interrupted_task].prio].tailIndex] = interrupted_task",0,0,0);
	trans[0][338]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tailIndex = (readyQueue[tcb[interrupted_task].prio].tailIndex+1)",0,0,0);
	trans[0][342]	= settr(341,2,369,1,0,".(goto)", 1, 2, 0);
	trans[0][339]	= settr(338,2,340,2,0,"else", 1, 2, 0);
	trans[0][340]	= settr(339,2,369,1066,0,"assert(0)", 1, 2, 0);
	trans[0][347]	= settr(346,2,369,1,0,".(goto)", 1, 2, 0);
	trans[0][344]	= settr(343,2,345,2,0,"else", 1, 2, 0);
	trans[0][345]	= settr(344,2,369,1,0,"(1)", 1, 2, 0);
	T = trans[ 0][369] = settr(368,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(368,0,348,0,0,"sub-sequence", 1, 2, 0);
	trans[0][348]	= settr(347,2,364,1067,1067,"prio = 0", 1, 2, 0); /* m: 349 -> 0,364 */
	reached0[349] = 1;
	trans[0][349]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[0][350]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[0][351]	= settr(0,0,0,0,0,"prio = 0",0,0,0);
	trans[0][352]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[0][353]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[0][365]	= settr(364,2,364,1,0,".(goto)", 1, 2, 0);
	T = trans[0][364] = settr(363,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(363,2,354,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(363,2,362,0,0,"DO", 1, 2, 0);
	trans[0][354]	= settr(353,2,360,1068,0,"(((prio<4)&&!(found)))", 1, 2, 0);
	T = trans[0][360] = settr(359,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(359,2,355,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(359,2,358,0,0,"IF", 1, 2, 0);
	trans[0][355]	= settr(354,2,364,1069,1069,"((readyQueue[prio].tailIndex>0))", 1, 2, 0); /* m: 356 -> 364,0 */
	reached0[356] = 1;
	trans[0][356]	= settr(0,0,0,0,0,"top_task = readyQueue[prio].tasks[0]",0,0,0);
	trans[0][357]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[0][361]	= settr(360,2,364,1,0,".(goto)", 1, 2, 0);
	trans[0][358]	= settr(357,2,359,2,0,"else", 1, 2, 0);
	trans[0][359]	= settr(358,2,364,1070,1070,"prio = (prio+1)", 1, 2, 0);
	trans[0][362]	= settr(361,2,387,1071,1071,"(((prio>=4)||found))", 1, 2, 0); /* m: 367 -> 387,0 */
	reached0[367] = 1;
	trans[0][363]	= settr(362,2,367,1,0,"goto :b14", 1, 2, 0); /* m: 367 -> 0,387 */
	reached0[367] = 1;
	trans[0][366]	= settr(365,2,367,1,0,"break", 1, 2, 0);
	trans[0][367]	= settr(366,2,387,1072,1072,"newTask = top_task", 1, 2, 0); /* m: 368 -> 0,387 */
	reached0[368] = 1;
	trans[0][368]	= settr(0,0,0,0,0,"topPrio = prio",0,0,0);
	T = trans[ 0][387] = settr(386,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(386,0,370,0,0,"sub-sequence", 1, 2, 0);
	trans[0][370]	= settr(369,2,377,1073,1073,"deq_idx = 0", 1, 2, 0); /* m: 371 -> 0,377 */
	reached0[371] = 1;
	trans[0][371]	= settr(0,0,0,0,0,"deq_idx = 0",0,0,0);
	trans[0][378]	= settr(377,2,377,1,0,".(goto)", 1, 2, 0);
	T = trans[0][377] = settr(376,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(376,2,372,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(376,2,375,0,0,"DO", 1, 2, 0);
	trans[0][372]	= settr(371,2,377,1074,1074,"((deq_idx<(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0); /* m: 373 -> 377,0 */
	reached0[373] = 1;
	trans[0][373]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[deq_idx] = readyQueue[topPrio].tasks[(deq_idx+1)]",0,0,0);
	trans[0][374]	= settr(0,0,0,0,0,"deq_idx = (deq_idx+1)",0,0,0);
	trans[0][375]	= settr(374,2,385,1075,1075,"((deq_idx>=(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0);
	trans[0][376]	= settr(375,2,385,1,0,"goto :b15", 1, 2, 0);
	trans[0][379]	= settr(378,2,385,1,0,"break", 1, 2, 0);
	T = trans[0][385] = settr(384,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(384,2,380,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(384,2,383,0,0,"IF", 1, 2, 0);
	trans[0][380]	= settr(379,2,391,1076,1076,"((readyQueue[topPrio].tailIndex>0))", 1, 2, 0); /* m: 381 -> 391,0 */
	reached0[381] = 1;
	trans[0][381]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)] = 255",0,0,0);
	trans[0][382]	= settr(0,0,0,0,0,"readyQueue[topPrio].tailIndex = (readyQueue[topPrio].tailIndex-1)",0,0,0);
	trans[0][386]	= settr(385,2,388,1,0,".(goto)", 1, 2, 0); /* m: 388 -> 0,391 */
	reached0[388] = 1;
	trans[0][383]	= settr(382,2,384,2,0,"else", 1, 2, 0);
	trans[0][384]	= settr(383,2,391,1077,1077,"(1)", 1, 2, 0); /* m: 388 -> 391,0 */
	reached0[388] = 1;
	trans[0][388]	= settr(387,2,391,1078,1078,"tcb[newTask].state = 4", 1, 2, 0); /* m: 389 -> 0,391 */
	reached0[389] = 1;
	trans[0][389]	= settr(0,0,0,0,0,"EP = newTask",0,0,0);
	T = trans[ 0][391] = settr(390,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(390,0,390,0,0,"sub-sequence", 1, 2, 0);
	trans[0][390]	= settr(389,0,1090,1079,1079,"int_ctrl_reg = int_save", 1, 2, 0);
	T = trans[ 0][675] = settr(674,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(674,2,394,0,0,"ATOMIC", 1, 2, 0);
	trans[0][394]	= settr(393,2,546,1080,0,"((EP==1))", 1, 2, 0);
	T = trans[ 0][546] = settr(545,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(545,0,395,0,0,"sub-sequence", 1, 2, 0);
	trans[0][395]	= settr(394,2,544,1081,1081,"currentTask = 0", 1, 2, 0);
	T = trans[0][544] = settr(543,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(543,2,396,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(543,2,542,0,0,"IF", 1, 2, 0);
	trans[0][396]	= settr(395,2,399,1082,0,"((((2>0)&&(EP>=1))&&(EP<=4)))", 1, 2, 0);
	T = trans[ 0][399] = settr(398,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(398,0,397,0,0,"sub-sequence", 1, 2, 0);
	trans[0][397]	= settr(396,2,411,1083,1083,"int_save = int_ctrl_reg", 1, 2, 0); /* m: 398 -> 0,411 */
	reached0[398] = 1;
	trans[0][398]	= settr(0,0,0,0,0,"int_ctrl_reg = 1",0,0,0);
	trans[0][400]	= settr(0,0,0,0,0,"currentTask = EP",0,0,0);
	trans[0][401]	= settr(0,0,0,0,0,"tcb[currentTask].state = 2",0,0,0);
	trans[0][402]	= settr(0,0,0,0,0,"tcb[currentTask].wakeupTime = (tickCount+2)",0,0,0);
	trans[0][403]	= settr(0,0,0,0,0,"tcb[currentTask].delayTicks = 2",0,0,0);
	T = trans[ 0][411] = settr(410,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(410,0,409,0,0,"sub-sequence", 1, 2, 0);
	T = trans[0][409] = settr(408,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(408,2,404,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(408,2,407,0,0,"IF", 1, 2, 0);
	trans[0][404]	= settr(403,2,539,1084,1084,"((sortLink.count<8))", 1, 2, 0); /* m: 405 -> 539,0 */
	reached0[405] = 1;
	trans[0][405]	= settr(0,0,0,0,0,"sortLink.tasks[sortLink.count] = currentTask",0,0,0);
	trans[0][406]	= settr(0,0,0,0,0,"sortLink.count = (sortLink.count+1)",0,0,0);
	trans[0][410]	= settr(409,2,539,1,0,".(goto)", 1, 2, 0);
	trans[0][407]	= settr(406,2,408,2,0,"else", 1, 2, 0);
	trans[0][408]	= settr(407,2,539,1085,0,"assert(0)", 1, 2, 0);
	T = trans[ 0][539] = settr(538,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(538,0,412,0,0,"sub-sequence", 1, 2, 0);
	trans[0][412]	= settr(411,2,420,1086,1086,"interrupted_task = 0", 1, 2, 0); /* m: 413 -> 0,420 */
	reached0[413] = 1;
	trans[0][413]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[0][414]	= settr(0,0,0,0,0,"taskId = 0",0,0,0);
	trans[0][415]	= settr(0,0,0,0,0,"needResched = 0",0,0,0);
	trans[0][416]	= settr(0,0,0,0,0,"interrupted_task = 0",0,0,0);
	trans[0][417]	= settr(0,0,0,0,0,"needResched = 0",0,0,0);
	T = trans[ 0][420] = settr(419,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(419,0,418,0,0,"sub-sequence", 1, 2, 0);
	trans[0][418]	= settr(417,2,477,1087,1087,"int_save = int_ctrl_reg", 1, 2, 0); /* m: 419 -> 0,477 */
	reached0[419] = 1;
	trans[0][419]	= settr(0,0,0,0,0,"int_ctrl_reg = 1",0,0,0);
	trans[0][421]	= settr(0,0,0,0,0,"tickCount = (tickCount+1)",0,0,0);
	trans[0][422]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[0][478]	= settr(477,2,477,1,0,".(goto)", 1, 2, 0);
	T = trans[0][477] = settr(476,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(476,2,423,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(476,2,475,0,0,"DO", 1, 2, 0);
	trans[0][423]	= settr(422,2,473,1088,1088,"((idx<sortLink.count))", 1, 2, 0); /* m: 424 -> 473,0 */
	reached0[424] = 1;
	trans[0][424]	= settr(0,0,0,0,0,"taskId = sortLink.tasks[idx]",0,0,0);
	T = trans[0][473] = settr(472,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(472,2,425,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(472,2,471,0,0,"IF", 1, 2, 0);
	trans[0][425]	= settr(424,2,461,1089,1089,"(((tcb[taskId].state==2)&&(tickCount>=tcb[taskId].wakeupTime)))", 1, 2, 0); /* m: 426 -> 461,0 */
	reached0[426] = 1;
	trans[0][426]	= settr(0,0,0,0,0,"tcb[taskId].state = 1",0,0,0);
	trans[0][427]	= settr(0,0,0,0,0,"tcb[taskId].delayTicks = 0",0,0,0);
	T = trans[ 0][461] = settr(460,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(460,0,428,0,0,"sub-sequence", 1, 2, 0);
	trans[0][428]	= settr(427,2,442,1090,1090,"removePos = 0", 1, 2, 0); /* m: 429 -> 0,442 */
	reached0[429] = 1;
	trans[0][429]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[0][430]	= settr(0,0,0,0,0,"shiftIdx = 0",0,0,0);
	trans[0][431]	= settr(0,0,0,0,0,"removePos = 0",0,0,0);
	trans[0][432]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[0][443]	= settr(442,2,442,1,0,".(goto)", 1, 2, 0);
	T = trans[0][442] = settr(441,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(441,2,433,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(441,2,440,0,0,"DO", 1, 2, 0);
	trans[0][433]	= settr(432,2,438,1091,0,"(((removePos<sortLink.count)&&!(found)))", 1, 2, 0);
	T = trans[0][438] = settr(437,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(437,2,434,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(437,2,436,0,0,"IF", 1, 2, 0);
	trans[0][434]	= settr(433,2,442,1092,1092,"((sortLink.tasks[removePos]==taskId))", 1, 2, 0); /* m: 435 -> 442,0 */
	reached0[435] = 1;
	trans[0][435]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[0][439]	= settr(438,2,442,1,0,".(goto)", 1, 2, 0);
	trans[0][436]	= settr(435,2,437,2,0,"else", 1, 2, 0);
	trans[0][437]	= settr(436,2,442,1093,1093,"removePos = (removePos+1)", 1, 2, 0);
	trans[0][440]	= settr(439,2,459,2,0,"else", 1, 2, 0);
	trans[0][441]	= settr(440,2,459,1,0,"goto :b17", 1, 2, 0);
	trans[0][444]	= settr(443,2,459,1,0,"break", 1, 2, 0);
	T = trans[0][459] = settr(458,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(458,2,445,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(458,2,457,0,0,"IF", 1, 2, 0);
	trans[0][445]	= settr(444,2,452,1094,1094,"((found==1))", 1, 2, 0); /* m: 446 -> 452,0 */
	reached0[446] = 1;
	trans[0][446]	= settr(0,0,0,0,0,"shiftIdx = removePos",0,0,0);
	trans[0][453]	= settr(452,2,452,1,0,".(goto)", 1, 2, 0);
	T = trans[0][452] = settr(451,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(451,2,447,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(451,2,450,0,0,"DO", 1, 2, 0);
	trans[0][447]	= settr(446,2,452,1095,1095,"((shiftIdx<(sortLink.count-1)))", 1, 2, 0); /* m: 448 -> 452,0 */
	reached0[448] = 1;
	trans[0][448]	= settr(0,0,0,0,0,"sortLink.tasks[shiftIdx] = sortLink.tasks[(shiftIdx+1)]",0,0,0);
	trans[0][449]	= settr(0,0,0,0,0,"shiftIdx = (shiftIdx+1)",0,0,0);
	trans[0][450]	= settr(449,2,469,1096,1096,"((shiftIdx>=(sortLink.count-1)))", 1, 2, 0); /* m: 455 -> 469,0 */
	reached0[455] = 1;
	trans[0][451]	= settr(450,2,455,1,0,"goto :b18", 1, 2, 0); /* m: 455 -> 0,469 */
	reached0[455] = 1;
	trans[0][454]	= settr(453,2,455,1,0,"break", 1, 2, 0);
	trans[0][455]	= settr(454,2,469,1097,1097,"sortLink.tasks[(sortLink.count-1)] = 255", 1, 2, 0); /* m: 456 -> 0,469 */
	reached0[456] = 1;
	trans[0][456]	= settr(0,0,0,0,0,"sortLink.count = (sortLink.count-1)",0,0,0);
	trans[0][460]	= settr(459,2,469,1,0,".(goto)", 1, 2, 0);
	trans[0][457]	= settr(456,2,458,2,0,"else", 1, 2, 0);
	trans[0][458]	= settr(457,2,469,1,0,"(1)", 1, 2, 0);
	T = trans[ 0][469] = settr(468,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(468,0,467,0,0,"sub-sequence", 1, 2, 0);
	T = trans[0][467] = settr(466,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(466,2,462,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(466,2,465,0,0,"IF", 1, 2, 0);
	trans[0][462]	= settr(461,2,477,1098,1098,"((readyQueue[tcb[taskId].prio].tailIndex<8))", 1, 2, 0); /* m: 463 -> 477,0 */
	reached0[463] = 1;
	trans[0][463]	= settr(0,0,0,0,0,"readyQueue[tcb[taskId].prio].tasks[readyQueue[tcb[taskId].prio].tailIndex] = taskId",0,0,0);
	trans[0][464]	= settr(0,0,0,0,0,"readyQueue[tcb[taskId].prio].tailIndex = (readyQueue[tcb[taskId].prio].tailIndex+1)",0,0,0);
	trans[0][468]	= settr(467,2,470,1,0,".(goto)", 1, 2, 0); /* m: 470 -> 0,477 */
	reached0[470] = 1;
	trans[0][465]	= settr(464,2,466,2,0,"else", 1, 2, 0);
	trans[0][466]	= settr(465,2,477,1099,1099,"assert(0)", 1, 2, 0); /* m: 470 -> 0,477 */
	reached0[470] = 1;
	trans[0][470]	= settr(469,2,477,1100,1100,"needResched = 1", 1, 2, 0);
	trans[0][474]	= settr(473,2,477,1,0,".(goto)", 1, 2, 0);
	trans[0][471]	= settr(470,2,472,2,0,"else", 1, 2, 0);
	trans[0][472]	= settr(471,2,477,1101,1101,"idx = (idx+1)", 1, 2, 0);
	trans[0][475]	= settr(474,2,493,1102,1102,"((idx>=sortLink.count))", 1, 2, 0); /* m: 480 -> 493,0 */
	reached0[480] = 1;
	trans[0][476]	= settr(475,2,480,1,0,"goto :b16", 1, 2, 0); /* m: 480 -> 0,493 */
	reached0[480] = 1;
	trans[0][479]	= settr(478,2,480,1,0,"break", 1, 2, 0);
	trans[0][480]	= settr(479,2,493,1103,1103,"interrupted_task = EP", 1, 2, 0);
	T = trans[0][493] = settr(492,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(492,2,481,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(492,2,491,0,0,"IF", 1, 2, 0);
	trans[0][481]	= settr(480,2,490,1104,1104,"((((interrupted_task>=1)&&(interrupted_task<=4))&&(tcb[interrupted_task].state!=2)))", 1, 2, 0); /* m: 482 -> 490,0 */
	reached0[482] = 1;
	trans[0][482]	= settr(0,0,0,0,0,"tcb[interrupted_task].state = 1",0,0,0);
	T = trans[ 0][490] = settr(489,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(489,0,488,0,0,"sub-sequence", 1, 2, 0);
	T = trans[0][488] = settr(487,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(487,2,483,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(487,2,486,0,0,"IF", 1, 2, 0);
	trans[0][483]	= settr(482,2,516,1105,1105,"((readyQueue[tcb[interrupted_task].prio].tailIndex<8))", 1, 2, 0); /* m: 484 -> 516,0 */
	reached0[484] = 1;
	trans[0][484]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tasks[readyQueue[tcb[interrupted_task].prio].tailIndex] = interrupted_task",0,0,0);
	trans[0][485]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tailIndex = (readyQueue[tcb[interrupted_task].prio].tailIndex+1)",0,0,0);
	trans[0][489]	= settr(488,2,516,1,0,".(goto)", 1, 2, 0);
	trans[0][486]	= settr(485,2,487,2,0,"else", 1, 2, 0);
	trans[0][487]	= settr(486,2,516,1106,0,"assert(0)", 1, 2, 0);
	trans[0][494]	= settr(493,2,516,1,0,".(goto)", 1, 2, 0);
	trans[0][491]	= settr(490,2,492,2,0,"else", 1, 2, 0);
	trans[0][492]	= settr(491,2,516,1,0,"(1)", 1, 2, 0);
	T = trans[ 0][516] = settr(515,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(515,0,495,0,0,"sub-sequence", 1, 2, 0);
	trans[0][495]	= settr(494,2,511,1107,1107,"prio = 0", 1, 2, 0); /* m: 496 -> 0,511 */
	reached0[496] = 1;
	trans[0][496]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[0][497]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[0][498]	= settr(0,0,0,0,0,"prio = 0",0,0,0);
	trans[0][499]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[0][500]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[0][512]	= settr(511,2,511,1,0,".(goto)", 1, 2, 0);
	T = trans[0][511] = settr(510,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(510,2,501,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(510,2,509,0,0,"DO", 1, 2, 0);
	trans[0][501]	= settr(500,2,507,1108,0,"(((prio<4)&&!(found)))", 1, 2, 0);
	T = trans[0][507] = settr(506,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(506,2,502,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(506,2,505,0,0,"IF", 1, 2, 0);
	trans[0][502]	= settr(501,2,511,1109,1109,"((readyQueue[prio].tailIndex>0))", 1, 2, 0); /* m: 503 -> 511,0 */
	reached0[503] = 1;
	trans[0][503]	= settr(0,0,0,0,0,"top_task = readyQueue[prio].tasks[0]",0,0,0);
	trans[0][504]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[0][508]	= settr(507,2,511,1,0,".(goto)", 1, 2, 0);
	trans[0][505]	= settr(504,2,506,2,0,"else", 1, 2, 0);
	trans[0][506]	= settr(505,2,511,1110,1110,"prio = (prio+1)", 1, 2, 0);
	trans[0][509]	= settr(508,2,534,1111,1111,"(((prio>=4)||found))", 1, 2, 0); /* m: 514 -> 534,0 */
	reached0[514] = 1;
	trans[0][510]	= settr(509,2,514,1,0,"goto :b19", 1, 2, 0); /* m: 514 -> 0,534 */
	reached0[514] = 1;
	trans[0][513]	= settr(512,2,514,1,0,"break", 1, 2, 0);
	trans[0][514]	= settr(513,2,534,1112,1112,"newTask = top_task", 1, 2, 0); /* m: 515 -> 0,534 */
	reached0[515] = 1;
	trans[0][515]	= settr(0,0,0,0,0,"topPrio = prio",0,0,0);
	T = trans[ 0][534] = settr(533,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(533,0,517,0,0,"sub-sequence", 1, 2, 0);
	trans[0][517]	= settr(516,2,524,1113,1113,"deq_idx = 0", 1, 2, 0); /* m: 518 -> 0,524 */
	reached0[518] = 1;
	trans[0][518]	= settr(0,0,0,0,0,"deq_idx = 0",0,0,0);
	trans[0][525]	= settr(524,2,524,1,0,".(goto)", 1, 2, 0);
	T = trans[0][524] = settr(523,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(523,2,519,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(523,2,522,0,0,"DO", 1, 2, 0);
	trans[0][519]	= settr(518,2,524,1114,1114,"((deq_idx<(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0); /* m: 520 -> 524,0 */
	reached0[520] = 1;
	trans[0][520]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[deq_idx] = readyQueue[topPrio].tasks[(deq_idx+1)]",0,0,0);
	trans[0][521]	= settr(0,0,0,0,0,"deq_idx = (deq_idx+1)",0,0,0);
	trans[0][522]	= settr(521,2,532,1115,1115,"((deq_idx>=(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0);
	trans[0][523]	= settr(522,2,532,1,0,"goto :b20", 1, 2, 0);
	trans[0][526]	= settr(525,2,532,1,0,"break", 1, 2, 0);
	T = trans[0][532] = settr(531,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(531,2,527,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(531,2,530,0,0,"IF", 1, 2, 0);
	trans[0][527]	= settr(526,2,538,1116,1116,"((readyQueue[topPrio].tailIndex>0))", 1, 2, 0); /* m: 528 -> 538,0 */
	reached0[528] = 1;
	trans[0][528]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)] = 255",0,0,0);
	trans[0][529]	= settr(0,0,0,0,0,"readyQueue[topPrio].tailIndex = (readyQueue[topPrio].tailIndex-1)",0,0,0);
	trans[0][533]	= settr(532,2,535,1,0,".(goto)", 1, 2, 0); /* m: 535 -> 0,538 */
	reached0[535] = 1;
	trans[0][530]	= settr(529,2,531,2,0,"else", 1, 2, 0);
	trans[0][531]	= settr(530,2,538,1117,1117,"(1)", 1, 2, 0); /* m: 535 -> 538,0 */
	reached0[535] = 1;
	trans[0][535]	= settr(534,2,538,1118,1118,"tcb[newTask].state = 4", 1, 2, 0); /* m: 536 -> 0,538 */
	reached0[536] = 1;
	trans[0][536]	= settr(0,0,0,0,0,"EP = newTask",0,0,0);
	T = trans[ 0][538] = settr(537,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(537,0,537,0,0,"sub-sequence", 1, 2, 0);
	trans[0][537]	= settr(536,2,541,1119,1119,"int_ctrl_reg = int_save", 1, 2, 0);
	T = trans[ 0][541] = settr(540,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(540,0,540,0,0,"sub-sequence", 1, 2, 0);
	trans[0][540]	= settr(539,2,674,1120,1120,"int_ctrl_reg = int_save", 1, 2, 0);
	trans[0][545]	= settr(544,2,674,1,0,".(goto)", 1, 2, 0);
	trans[0][542]	= settr(541,2,543,2,0,"else", 1, 2, 0);
	trans[0][543]	= settr(542,2,674,1,0,"(1)", 1, 2, 0);
	T = trans[ 0][674] = settr(673,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(673,0,547,0,0,"sub-sequence", 1, 2, 0);
	trans[0][547]	= settr(546,2,555,1121,1121,"interrupted_task = 0", 1, 2, 0); /* m: 548 -> 0,555 */
	reached0[548] = 1;
	trans[0][548]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[0][549]	= settr(0,0,0,0,0,"taskId = 0",0,0,0);
	trans[0][550]	= settr(0,0,0,0,0,"needResched = 0",0,0,0);
	trans[0][551]	= settr(0,0,0,0,0,"interrupted_task = 0",0,0,0);
	trans[0][552]	= settr(0,0,0,0,0,"needResched = 0",0,0,0);
	T = trans[ 0][555] = settr(554,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(554,0,553,0,0,"sub-sequence", 1, 2, 0);
	trans[0][553]	= settr(552,2,612,1122,1122,"int_save = int_ctrl_reg", 1, 2, 0); /* m: 554 -> 0,612 */
	reached0[554] = 1;
	trans[0][554]	= settr(0,0,0,0,0,"int_ctrl_reg = 1",0,0,0);
	trans[0][556]	= settr(0,0,0,0,0,"tickCount = (tickCount+1)",0,0,0);
	trans[0][557]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[0][613]	= settr(612,2,612,1,0,".(goto)", 1, 2, 0);
	T = trans[0][612] = settr(611,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(611,2,558,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(611,2,610,0,0,"DO", 1, 2, 0);
	trans[0][558]	= settr(557,2,608,1123,1123,"((idx<sortLink.count))", 1, 2, 0); /* m: 559 -> 608,0 */
	reached0[559] = 1;
	trans[0][559]	= settr(0,0,0,0,0,"taskId = sortLink.tasks[idx]",0,0,0);
	T = trans[0][608] = settr(607,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(607,2,560,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(607,2,606,0,0,"IF", 1, 2, 0);
	trans[0][560]	= settr(559,2,596,1124,1124,"(((tcb[taskId].state==2)&&(tickCount>=tcb[taskId].wakeupTime)))", 1, 2, 0); /* m: 561 -> 596,0 */
	reached0[561] = 1;
	trans[0][561]	= settr(0,0,0,0,0,"tcb[taskId].state = 1",0,0,0);
	trans[0][562]	= settr(0,0,0,0,0,"tcb[taskId].delayTicks = 0",0,0,0);
	T = trans[ 0][596] = settr(595,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(595,0,563,0,0,"sub-sequence", 1, 2, 0);
	trans[0][563]	= settr(562,2,577,1125,1125,"removePos = 0", 1, 2, 0); /* m: 564 -> 0,577 */
	reached0[564] = 1;
	trans[0][564]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[0][565]	= settr(0,0,0,0,0,"shiftIdx = 0",0,0,0);
	trans[0][566]	= settr(0,0,0,0,0,"removePos = 0",0,0,0);
	trans[0][567]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[0][578]	= settr(577,2,577,1,0,".(goto)", 1, 2, 0);
	T = trans[0][577] = settr(576,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(576,2,568,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(576,2,575,0,0,"DO", 1, 2, 0);
	trans[0][568]	= settr(567,2,573,1126,0,"(((removePos<sortLink.count)&&!(found)))", 1, 2, 0);
	T = trans[0][573] = settr(572,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(572,2,569,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(572,2,571,0,0,"IF", 1, 2, 0);
	trans[0][569]	= settr(568,2,577,1127,1127,"((sortLink.tasks[removePos]==taskId))", 1, 2, 0); /* m: 570 -> 577,0 */
	reached0[570] = 1;
	trans[0][570]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[0][574]	= settr(573,2,577,1,0,".(goto)", 1, 2, 0);
	trans[0][571]	= settr(570,2,572,2,0,"else", 1, 2, 0);
	trans[0][572]	= settr(571,2,577,1128,1128,"removePos = (removePos+1)", 1, 2, 0);
	trans[0][575]	= settr(574,2,594,2,0,"else", 1, 2, 0);
	trans[0][576]	= settr(575,2,594,1,0,"goto :b22", 1, 2, 0);
	trans[0][579]	= settr(578,2,594,1,0,"break", 1, 2, 0);
	T = trans[0][594] = settr(593,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(593,2,580,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(593,2,592,0,0,"IF", 1, 2, 0);
	trans[0][580]	= settr(579,2,587,1129,1129,"((found==1))", 1, 2, 0); /* m: 581 -> 587,0 */
	reached0[581] = 1;
	trans[0][581]	= settr(0,0,0,0,0,"shiftIdx = removePos",0,0,0);
	trans[0][588]	= settr(587,2,587,1,0,".(goto)", 1, 2, 0);
	T = trans[0][587] = settr(586,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(586,2,582,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(586,2,585,0,0,"DO", 1, 2, 0);
	trans[0][582]	= settr(581,2,587,1130,1130,"((shiftIdx<(sortLink.count-1)))", 1, 2, 0); /* m: 583 -> 587,0 */
	reached0[583] = 1;
	trans[0][583]	= settr(0,0,0,0,0,"sortLink.tasks[shiftIdx] = sortLink.tasks[(shiftIdx+1)]",0,0,0);
	trans[0][584]	= settr(0,0,0,0,0,"shiftIdx = (shiftIdx+1)",0,0,0);
	trans[0][585]	= settr(584,2,604,1131,1131,"((shiftIdx>=(sortLink.count-1)))", 1, 2, 0); /* m: 590 -> 604,0 */
	reached0[590] = 1;
	trans[0][586]	= settr(585,2,590,1,0,"goto :b23", 1, 2, 0); /* m: 590 -> 0,604 */
	reached0[590] = 1;
	trans[0][589]	= settr(588,2,590,1,0,"break", 1, 2, 0);
	trans[0][590]	= settr(589,2,604,1132,1132,"sortLink.tasks[(sortLink.count-1)] = 255", 1, 2, 0); /* m: 591 -> 0,604 */
	reached0[591] = 1;
	trans[0][591]	= settr(0,0,0,0,0,"sortLink.count = (sortLink.count-1)",0,0,0);
	trans[0][595]	= settr(594,2,604,1,0,".(goto)", 1, 2, 0);
	trans[0][592]	= settr(591,2,593,2,0,"else", 1, 2, 0);
	trans[0][593]	= settr(592,2,604,1,0,"(1)", 1, 2, 0);
	T = trans[ 0][604] = settr(603,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(603,0,602,0,0,"sub-sequence", 1, 2, 0);
	T = trans[0][602] = settr(601,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(601,2,597,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(601,2,600,0,0,"IF", 1, 2, 0);
	trans[0][597]	= settr(596,2,612,1133,1133,"((readyQueue[tcb[taskId].prio].tailIndex<8))", 1, 2, 0); /* m: 598 -> 612,0 */
	reached0[598] = 1;
	trans[0][598]	= settr(0,0,0,0,0,"readyQueue[tcb[taskId].prio].tasks[readyQueue[tcb[taskId].prio].tailIndex] = taskId",0,0,0);
	trans[0][599]	= settr(0,0,0,0,0,"readyQueue[tcb[taskId].prio].tailIndex = (readyQueue[tcb[taskId].prio].tailIndex+1)",0,0,0);
	trans[0][603]	= settr(602,2,605,1,0,".(goto)", 1, 2, 0); /* m: 605 -> 0,612 */
	reached0[605] = 1;
	trans[0][600]	= settr(599,2,601,2,0,"else", 1, 2, 0);
	trans[0][601]	= settr(600,2,612,1134,1134,"assert(0)", 1, 2, 0); /* m: 605 -> 0,612 */
	reached0[605] = 1;
	trans[0][605]	= settr(604,2,612,1135,1135,"needResched = 1", 1, 2, 0);
	trans[0][609]	= settr(608,2,612,1,0,".(goto)", 1, 2, 0);
	trans[0][606]	= settr(605,2,607,2,0,"else", 1, 2, 0);
	trans[0][607]	= settr(606,2,612,1136,1136,"idx = (idx+1)", 1, 2, 0);
	trans[0][610]	= settr(609,2,628,1137,1137,"((idx>=sortLink.count))", 1, 2, 0); /* m: 615 -> 628,0 */
	reached0[615] = 1;
	trans[0][611]	= settr(610,2,615,1,0,"goto :b21", 1, 2, 0); /* m: 615 -> 0,628 */
	reached0[615] = 1;
	trans[0][614]	= settr(613,2,615,1,0,"break", 1, 2, 0);
	trans[0][615]	= settr(614,2,628,1138,1138,"interrupted_task = EP", 1, 2, 0);
	T = trans[0][628] = settr(627,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(627,2,616,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(627,2,626,0,0,"IF", 1, 2, 0);
	trans[0][616]	= settr(615,2,625,1139,1139,"((((interrupted_task>=1)&&(interrupted_task<=4))&&(tcb[interrupted_task].state!=2)))", 1, 2, 0); /* m: 617 -> 625,0 */
	reached0[617] = 1;
	trans[0][617]	= settr(0,0,0,0,0,"tcb[interrupted_task].state = 1",0,0,0);
	T = trans[ 0][625] = settr(624,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(624,0,623,0,0,"sub-sequence", 1, 2, 0);
	T = trans[0][623] = settr(622,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(622,2,618,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(622,2,621,0,0,"IF", 1, 2, 0);
	trans[0][618]	= settr(617,2,651,1140,1140,"((readyQueue[tcb[interrupted_task].prio].tailIndex<8))", 1, 2, 0); /* m: 619 -> 651,0 */
	reached0[619] = 1;
	trans[0][619]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tasks[readyQueue[tcb[interrupted_task].prio].tailIndex] = interrupted_task",0,0,0);
	trans[0][620]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tailIndex = (readyQueue[tcb[interrupted_task].prio].tailIndex+1)",0,0,0);
	trans[0][624]	= settr(623,2,651,1,0,".(goto)", 1, 2, 0);
	trans[0][621]	= settr(620,2,622,2,0,"else", 1, 2, 0);
	trans[0][622]	= settr(621,2,651,1141,0,"assert(0)", 1, 2, 0);
	trans[0][629]	= settr(628,2,651,1,0,".(goto)", 1, 2, 0);
	trans[0][626]	= settr(625,2,627,2,0,"else", 1, 2, 0);
	trans[0][627]	= settr(626,2,651,1,0,"(1)", 1, 2, 0);
	T = trans[ 0][651] = settr(650,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(650,0,630,0,0,"sub-sequence", 1, 2, 0);
	trans[0][630]	= settr(629,2,646,1142,1142,"prio = 0", 1, 2, 0); /* m: 631 -> 0,646 */
	reached0[631] = 1;
	trans[0][631]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[0][632]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[0][633]	= settr(0,0,0,0,0,"prio = 0",0,0,0);
	trans[0][634]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[0][635]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[0][647]	= settr(646,2,646,1,0,".(goto)", 1, 2, 0);
	T = trans[0][646] = settr(645,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(645,2,636,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(645,2,644,0,0,"DO", 1, 2, 0);
	trans[0][636]	= settr(635,2,642,1143,0,"(((prio<4)&&!(found)))", 1, 2, 0);
	T = trans[0][642] = settr(641,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(641,2,637,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(641,2,640,0,0,"IF", 1, 2, 0);
	trans[0][637]	= settr(636,2,646,1144,1144,"((readyQueue[prio].tailIndex>0))", 1, 2, 0); /* m: 638 -> 646,0 */
	reached0[638] = 1;
	trans[0][638]	= settr(0,0,0,0,0,"top_task = readyQueue[prio].tasks[0]",0,0,0);
	trans[0][639]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[0][643]	= settr(642,2,646,1,0,".(goto)", 1, 2, 0);
	trans[0][640]	= settr(639,2,641,2,0,"else", 1, 2, 0);
	trans[0][641]	= settr(640,2,646,1145,1145,"prio = (prio+1)", 1, 2, 0);
	trans[0][644]	= settr(643,2,669,1146,1146,"(((prio>=4)||found))", 1, 2, 0); /* m: 649 -> 669,0 */
	reached0[649] = 1;
	trans[0][645]	= settr(644,2,649,1,0,"goto :b24", 1, 2, 0); /* m: 649 -> 0,669 */
	reached0[649] = 1;
	trans[0][648]	= settr(647,2,649,1,0,"break", 1, 2, 0);
	trans[0][649]	= settr(648,2,669,1147,1147,"newTask = top_task", 1, 2, 0); /* m: 650 -> 0,669 */
	reached0[650] = 1;
	trans[0][650]	= settr(0,0,0,0,0,"topPrio = prio",0,0,0);
	T = trans[ 0][669] = settr(668,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(668,0,652,0,0,"sub-sequence", 1, 2, 0);
	trans[0][652]	= settr(651,2,659,1148,1148,"deq_idx = 0", 1, 2, 0); /* m: 653 -> 0,659 */
	reached0[653] = 1;
	trans[0][653]	= settr(0,0,0,0,0,"deq_idx = 0",0,0,0);
	trans[0][660]	= settr(659,2,659,1,0,".(goto)", 1, 2, 0);
	T = trans[0][659] = settr(658,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(658,2,654,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(658,2,657,0,0,"DO", 1, 2, 0);
	trans[0][654]	= settr(653,2,659,1149,1149,"((deq_idx<(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0); /* m: 655 -> 659,0 */
	reached0[655] = 1;
	trans[0][655]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[deq_idx] = readyQueue[topPrio].tasks[(deq_idx+1)]",0,0,0);
	trans[0][656]	= settr(0,0,0,0,0,"deq_idx = (deq_idx+1)",0,0,0);
	trans[0][657]	= settr(656,2,667,1150,1150,"((deq_idx>=(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0);
	trans[0][658]	= settr(657,2,667,1,0,"goto :b25", 1, 2, 0);
	trans[0][661]	= settr(660,2,667,1,0,"break", 1, 2, 0);
	T = trans[0][667] = settr(666,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(666,2,662,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(666,2,665,0,0,"IF", 1, 2, 0);
	trans[0][662]	= settr(661,2,673,1151,1151,"((readyQueue[topPrio].tailIndex>0))", 1, 2, 0); /* m: 663 -> 673,0 */
	reached0[663] = 1;
	trans[0][663]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)] = 255",0,0,0);
	trans[0][664]	= settr(0,0,0,0,0,"readyQueue[topPrio].tailIndex = (readyQueue[topPrio].tailIndex-1)",0,0,0);
	trans[0][668]	= settr(667,2,670,1,0,".(goto)", 1, 2, 0); /* m: 670 -> 0,673 */
	reached0[670] = 1;
	trans[0][665]	= settr(664,2,666,2,0,"else", 1, 2, 0);
	trans[0][666]	= settr(665,2,673,1152,1152,"(1)", 1, 2, 0); /* m: 670 -> 673,0 */
	reached0[670] = 1;
	trans[0][670]	= settr(669,2,673,1153,1153,"tcb[newTask].state = 4", 1, 2, 0); /* m: 671 -> 0,673 */
	reached0[671] = 1;
	trans[0][671]	= settr(0,0,0,0,0,"EP = newTask",0,0,0);
	T = trans[ 0][673] = settr(672,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(672,0,672,0,0,"sub-sequence", 1, 2, 0);
	trans[0][672]	= settr(671,0,1090,1154,1154,"int_ctrl_reg = int_save", 1, 2, 0);
	T = trans[ 0][957] = settr(956,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(956,2,676,0,0,"ATOMIC", 1, 2, 0);
	trans[0][676]	= settr(675,2,828,1155,0,"((EP==1))", 1, 2, 0);
	T = trans[ 0][828] = settr(827,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(827,0,677,0,0,"sub-sequence", 1, 2, 0);
	trans[0][677]	= settr(676,2,826,1156,1156,"currentTask = 0", 1, 2, 0);
	T = trans[0][826] = settr(825,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(825,2,678,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(825,2,824,0,0,"IF", 1, 2, 0);
	trans[0][678]	= settr(677,2,681,1157,0,"((((3>0)&&(EP>=1))&&(EP<=4)))", 1, 2, 0);
	T = trans[ 0][681] = settr(680,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(680,0,679,0,0,"sub-sequence", 1, 2, 0);
	trans[0][679]	= settr(678,2,693,1158,1158,"int_save = int_ctrl_reg", 1, 2, 0); /* m: 680 -> 0,693 */
	reached0[680] = 1;
	trans[0][680]	= settr(0,0,0,0,0,"int_ctrl_reg = 1",0,0,0);
	trans[0][682]	= settr(0,0,0,0,0,"currentTask = EP",0,0,0);
	trans[0][683]	= settr(0,0,0,0,0,"tcb[currentTask].state = 2",0,0,0);
	trans[0][684]	= settr(0,0,0,0,0,"tcb[currentTask].wakeupTime = (tickCount+3)",0,0,0);
	trans[0][685]	= settr(0,0,0,0,0,"tcb[currentTask].delayTicks = 3",0,0,0);
	T = trans[ 0][693] = settr(692,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(692,0,691,0,0,"sub-sequence", 1, 2, 0);
	T = trans[0][691] = settr(690,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(690,2,686,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(690,2,689,0,0,"IF", 1, 2, 0);
	trans[0][686]	= settr(685,2,821,1159,1159,"((sortLink.count<8))", 1, 2, 0); /* m: 687 -> 821,0 */
	reached0[687] = 1;
	trans[0][687]	= settr(0,0,0,0,0,"sortLink.tasks[sortLink.count] = currentTask",0,0,0);
	trans[0][688]	= settr(0,0,0,0,0,"sortLink.count = (sortLink.count+1)",0,0,0);
	trans[0][692]	= settr(691,2,821,1,0,".(goto)", 1, 2, 0);
	trans[0][689]	= settr(688,2,690,2,0,"else", 1, 2, 0);
	trans[0][690]	= settr(689,2,821,1160,0,"assert(0)", 1, 2, 0);
	T = trans[ 0][821] = settr(820,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(820,0,694,0,0,"sub-sequence", 1, 2, 0);
	trans[0][694]	= settr(693,2,702,1161,1161,"interrupted_task = 0", 1, 2, 0); /* m: 695 -> 0,702 */
	reached0[695] = 1;
	trans[0][695]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[0][696]	= settr(0,0,0,0,0,"taskId = 0",0,0,0);
	trans[0][697]	= settr(0,0,0,0,0,"needResched = 0",0,0,0);
	trans[0][698]	= settr(0,0,0,0,0,"interrupted_task = 0",0,0,0);
	trans[0][699]	= settr(0,0,0,0,0,"needResched = 0",0,0,0);
	T = trans[ 0][702] = settr(701,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(701,0,700,0,0,"sub-sequence", 1, 2, 0);
	trans[0][700]	= settr(699,2,759,1162,1162,"int_save = int_ctrl_reg", 1, 2, 0); /* m: 701 -> 0,759 */
	reached0[701] = 1;
	trans[0][701]	= settr(0,0,0,0,0,"int_ctrl_reg = 1",0,0,0);
	trans[0][703]	= settr(0,0,0,0,0,"tickCount = (tickCount+1)",0,0,0);
	trans[0][704]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[0][760]	= settr(759,2,759,1,0,".(goto)", 1, 2, 0);
	T = trans[0][759] = settr(758,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(758,2,705,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(758,2,757,0,0,"DO", 1, 2, 0);
	trans[0][705]	= settr(704,2,755,1163,1163,"((idx<sortLink.count))", 1, 2, 0); /* m: 706 -> 755,0 */
	reached0[706] = 1;
	trans[0][706]	= settr(0,0,0,0,0,"taskId = sortLink.tasks[idx]",0,0,0);
	T = trans[0][755] = settr(754,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(754,2,707,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(754,2,753,0,0,"IF", 1, 2, 0);
	trans[0][707]	= settr(706,2,743,1164,1164,"(((tcb[taskId].state==2)&&(tickCount>=tcb[taskId].wakeupTime)))", 1, 2, 0); /* m: 708 -> 743,0 */
	reached0[708] = 1;
	trans[0][708]	= settr(0,0,0,0,0,"tcb[taskId].state = 1",0,0,0);
	trans[0][709]	= settr(0,0,0,0,0,"tcb[taskId].delayTicks = 0",0,0,0);
	T = trans[ 0][743] = settr(742,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(742,0,710,0,0,"sub-sequence", 1, 2, 0);
	trans[0][710]	= settr(709,2,724,1165,1165,"removePos = 0", 1, 2, 0); /* m: 711 -> 0,724 */
	reached0[711] = 1;
	trans[0][711]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[0][712]	= settr(0,0,0,0,0,"shiftIdx = 0",0,0,0);
	trans[0][713]	= settr(0,0,0,0,0,"removePos = 0",0,0,0);
	trans[0][714]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[0][725]	= settr(724,2,724,1,0,".(goto)", 1, 2, 0);
	T = trans[0][724] = settr(723,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(723,2,715,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(723,2,722,0,0,"DO", 1, 2, 0);
	trans[0][715]	= settr(714,2,720,1166,0,"(((removePos<sortLink.count)&&!(found)))", 1, 2, 0);
	T = trans[0][720] = settr(719,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(719,2,716,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(719,2,718,0,0,"IF", 1, 2, 0);
	trans[0][716]	= settr(715,2,724,1167,1167,"((sortLink.tasks[removePos]==taskId))", 1, 2, 0); /* m: 717 -> 724,0 */
	reached0[717] = 1;
	trans[0][717]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[0][721]	= settr(720,2,724,1,0,".(goto)", 1, 2, 0);
	trans[0][718]	= settr(717,2,719,2,0,"else", 1, 2, 0);
	trans[0][719]	= settr(718,2,724,1168,1168,"removePos = (removePos+1)", 1, 2, 0);
	trans[0][722]	= settr(721,2,741,2,0,"else", 1, 2, 0);
	trans[0][723]	= settr(722,2,741,1,0,"goto :b27", 1, 2, 0);
	trans[0][726]	= settr(725,2,741,1,0,"break", 1, 2, 0);
	T = trans[0][741] = settr(740,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(740,2,727,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(740,2,739,0,0,"IF", 1, 2, 0);
	trans[0][727]	= settr(726,2,734,1169,1169,"((found==1))", 1, 2, 0); /* m: 728 -> 734,0 */
	reached0[728] = 1;
	trans[0][728]	= settr(0,0,0,0,0,"shiftIdx = removePos",0,0,0);
	trans[0][735]	= settr(734,2,734,1,0,".(goto)", 1, 2, 0);
	T = trans[0][734] = settr(733,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(733,2,729,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(733,2,732,0,0,"DO", 1, 2, 0);
	trans[0][729]	= settr(728,2,734,1170,1170,"((shiftIdx<(sortLink.count-1)))", 1, 2, 0); /* m: 730 -> 734,0 */
	reached0[730] = 1;
	trans[0][730]	= settr(0,0,0,0,0,"sortLink.tasks[shiftIdx] = sortLink.tasks[(shiftIdx+1)]",0,0,0);
	trans[0][731]	= settr(0,0,0,0,0,"shiftIdx = (shiftIdx+1)",0,0,0);
	trans[0][732]	= settr(731,2,751,1171,1171,"((shiftIdx>=(sortLink.count-1)))", 1, 2, 0); /* m: 737 -> 751,0 */
	reached0[737] = 1;
	trans[0][733]	= settr(732,2,737,1,0,"goto :b28", 1, 2, 0); /* m: 737 -> 0,751 */
	reached0[737] = 1;
	trans[0][736]	= settr(735,2,737,1,0,"break", 1, 2, 0);
	trans[0][737]	= settr(736,2,751,1172,1172,"sortLink.tasks[(sortLink.count-1)] = 255", 1, 2, 0); /* m: 738 -> 0,751 */
	reached0[738] = 1;
	trans[0][738]	= settr(0,0,0,0,0,"sortLink.count = (sortLink.count-1)",0,0,0);
	trans[0][742]	= settr(741,2,751,1,0,".(goto)", 1, 2, 0);
	trans[0][739]	= settr(738,2,740,2,0,"else", 1, 2, 0);
	trans[0][740]	= settr(739,2,751,1,0,"(1)", 1, 2, 0);
	T = trans[ 0][751] = settr(750,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(750,0,749,0,0,"sub-sequence", 1, 2, 0);
	T = trans[0][749] = settr(748,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(748,2,744,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(748,2,747,0,0,"IF", 1, 2, 0);
	trans[0][744]	= settr(743,2,759,1173,1173,"((readyQueue[tcb[taskId].prio].tailIndex<8))", 1, 2, 0); /* m: 745 -> 759,0 */
	reached0[745] = 1;
	trans[0][745]	= settr(0,0,0,0,0,"readyQueue[tcb[taskId].prio].tasks[readyQueue[tcb[taskId].prio].tailIndex] = taskId",0,0,0);
	trans[0][746]	= settr(0,0,0,0,0,"readyQueue[tcb[taskId].prio].tailIndex = (readyQueue[tcb[taskId].prio].tailIndex+1)",0,0,0);
	trans[0][750]	= settr(749,2,752,1,0,".(goto)", 1, 2, 0); /* m: 752 -> 0,759 */
	reached0[752] = 1;
	trans[0][747]	= settr(746,2,748,2,0,"else", 1, 2, 0);
	trans[0][748]	= settr(747,2,759,1174,1174,"assert(0)", 1, 2, 0); /* m: 752 -> 0,759 */
	reached0[752] = 1;
	trans[0][752]	= settr(751,2,759,1175,1175,"needResched = 1", 1, 2, 0);
	trans[0][756]	= settr(755,2,759,1,0,".(goto)", 1, 2, 0);
	trans[0][753]	= settr(752,2,754,2,0,"else", 1, 2, 0);
	trans[0][754]	= settr(753,2,759,1176,1176,"idx = (idx+1)", 1, 2, 0);
	trans[0][757]	= settr(756,2,775,1177,1177,"((idx>=sortLink.count))", 1, 2, 0); /* m: 762 -> 775,0 */
	reached0[762] = 1;
	trans[0][758]	= settr(757,2,762,1,0,"goto :b26", 1, 2, 0); /* m: 762 -> 0,775 */
	reached0[762] = 1;
	trans[0][761]	= settr(760,2,762,1,0,"break", 1, 2, 0);
	trans[0][762]	= settr(761,2,775,1178,1178,"interrupted_task = EP", 1, 2, 0);
	T = trans[0][775] = settr(774,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(774,2,763,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(774,2,773,0,0,"IF", 1, 2, 0);
	trans[0][763]	= settr(762,2,772,1179,1179,"((((interrupted_task>=1)&&(interrupted_task<=4))&&(tcb[interrupted_task].state!=2)))", 1, 2, 0); /* m: 764 -> 772,0 */
	reached0[764] = 1;
	trans[0][764]	= settr(0,0,0,0,0,"tcb[interrupted_task].state = 1",0,0,0);
	T = trans[ 0][772] = settr(771,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(771,0,770,0,0,"sub-sequence", 1, 2, 0);
	T = trans[0][770] = settr(769,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(769,2,765,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(769,2,768,0,0,"IF", 1, 2, 0);
	trans[0][765]	= settr(764,2,798,1180,1180,"((readyQueue[tcb[interrupted_task].prio].tailIndex<8))", 1, 2, 0); /* m: 766 -> 798,0 */
	reached0[766] = 1;
	trans[0][766]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tasks[readyQueue[tcb[interrupted_task].prio].tailIndex] = interrupted_task",0,0,0);
	trans[0][767]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tailIndex = (readyQueue[tcb[interrupted_task].prio].tailIndex+1)",0,0,0);
	trans[0][771]	= settr(770,2,798,1,0,".(goto)", 1, 2, 0);
	trans[0][768]	= settr(767,2,769,2,0,"else", 1, 2, 0);
	trans[0][769]	= settr(768,2,798,1181,0,"assert(0)", 1, 2, 0);
	trans[0][776]	= settr(775,2,798,1,0,".(goto)", 1, 2, 0);
	trans[0][773]	= settr(772,2,774,2,0,"else", 1, 2, 0);
	trans[0][774]	= settr(773,2,798,1,0,"(1)", 1, 2, 0);
	T = trans[ 0][798] = settr(797,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(797,0,777,0,0,"sub-sequence", 1, 2, 0);
	trans[0][777]	= settr(776,2,793,1182,1182,"prio = 0", 1, 2, 0); /* m: 778 -> 0,793 */
	reached0[778] = 1;
	trans[0][778]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[0][779]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[0][780]	= settr(0,0,0,0,0,"prio = 0",0,0,0);
	trans[0][781]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[0][782]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[0][794]	= settr(793,2,793,1,0,".(goto)", 1, 2, 0);
	T = trans[0][793] = settr(792,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(792,2,783,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(792,2,791,0,0,"DO", 1, 2, 0);
	trans[0][783]	= settr(782,2,789,1183,0,"(((prio<4)&&!(found)))", 1, 2, 0);
	T = trans[0][789] = settr(788,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(788,2,784,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(788,2,787,0,0,"IF", 1, 2, 0);
	trans[0][784]	= settr(783,2,793,1184,1184,"((readyQueue[prio].tailIndex>0))", 1, 2, 0); /* m: 785 -> 793,0 */
	reached0[785] = 1;
	trans[0][785]	= settr(0,0,0,0,0,"top_task = readyQueue[prio].tasks[0]",0,0,0);
	trans[0][786]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[0][790]	= settr(789,2,793,1,0,".(goto)", 1, 2, 0);
	trans[0][787]	= settr(786,2,788,2,0,"else", 1, 2, 0);
	trans[0][788]	= settr(787,2,793,1185,1185,"prio = (prio+1)", 1, 2, 0);
	trans[0][791]	= settr(790,2,816,1186,1186,"(((prio>=4)||found))", 1, 2, 0); /* m: 796 -> 816,0 */
	reached0[796] = 1;
	trans[0][792]	= settr(791,2,796,1,0,"goto :b29", 1, 2, 0); /* m: 796 -> 0,816 */
	reached0[796] = 1;
	trans[0][795]	= settr(794,2,796,1,0,"break", 1, 2, 0);
	trans[0][796]	= settr(795,2,816,1187,1187,"newTask = top_task", 1, 2, 0); /* m: 797 -> 0,816 */
	reached0[797] = 1;
	trans[0][797]	= settr(0,0,0,0,0,"topPrio = prio",0,0,0);
	T = trans[ 0][816] = settr(815,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(815,0,799,0,0,"sub-sequence", 1, 2, 0);
	trans[0][799]	= settr(798,2,806,1188,1188,"deq_idx = 0", 1, 2, 0); /* m: 800 -> 0,806 */
	reached0[800] = 1;
	trans[0][800]	= settr(0,0,0,0,0,"deq_idx = 0",0,0,0);
	trans[0][807]	= settr(806,2,806,1,0,".(goto)", 1, 2, 0);
	T = trans[0][806] = settr(805,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(805,2,801,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(805,2,804,0,0,"DO", 1, 2, 0);
	trans[0][801]	= settr(800,2,806,1189,1189,"((deq_idx<(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0); /* m: 802 -> 806,0 */
	reached0[802] = 1;
	trans[0][802]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[deq_idx] = readyQueue[topPrio].tasks[(deq_idx+1)]",0,0,0);
	trans[0][803]	= settr(0,0,0,0,0,"deq_idx = (deq_idx+1)",0,0,0);
	trans[0][804]	= settr(803,2,814,1190,1190,"((deq_idx>=(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0);
	trans[0][805]	= settr(804,2,814,1,0,"goto :b30", 1, 2, 0);
	trans[0][808]	= settr(807,2,814,1,0,"break", 1, 2, 0);
	T = trans[0][814] = settr(813,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(813,2,809,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(813,2,812,0,0,"IF", 1, 2, 0);
	trans[0][809]	= settr(808,2,820,1191,1191,"((readyQueue[topPrio].tailIndex>0))", 1, 2, 0); /* m: 810 -> 820,0 */
	reached0[810] = 1;
	trans[0][810]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)] = 255",0,0,0);
	trans[0][811]	= settr(0,0,0,0,0,"readyQueue[topPrio].tailIndex = (readyQueue[topPrio].tailIndex-1)",0,0,0);
	trans[0][815]	= settr(814,2,817,1,0,".(goto)", 1, 2, 0); /* m: 817 -> 0,820 */
	reached0[817] = 1;
	trans[0][812]	= settr(811,2,813,2,0,"else", 1, 2, 0);
	trans[0][813]	= settr(812,2,820,1192,1192,"(1)", 1, 2, 0); /* m: 817 -> 820,0 */
	reached0[817] = 1;
	trans[0][817]	= settr(816,2,820,1193,1193,"tcb[newTask].state = 4", 1, 2, 0); /* m: 818 -> 0,820 */
	reached0[818] = 1;
	trans[0][818]	= settr(0,0,0,0,0,"EP = newTask",0,0,0);
	T = trans[ 0][820] = settr(819,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(819,0,819,0,0,"sub-sequence", 1, 2, 0);
	trans[0][819]	= settr(818,2,823,1194,1194,"int_ctrl_reg = int_save", 1, 2, 0);
	T = trans[ 0][823] = settr(822,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(822,0,822,0,0,"sub-sequence", 1, 2, 0);
	trans[0][822]	= settr(821,2,956,1195,1195,"int_ctrl_reg = int_save", 1, 2, 0);
	trans[0][827]	= settr(826,2,956,1,0,".(goto)", 1, 2, 0);
	trans[0][824]	= settr(823,2,825,2,0,"else", 1, 2, 0);
	trans[0][825]	= settr(824,2,956,1,0,"(1)", 1, 2, 0);
	T = trans[ 0][956] = settr(955,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(955,0,829,0,0,"sub-sequence", 1, 2, 0);
	trans[0][829]	= settr(828,2,837,1196,1196,"interrupted_task = 0", 1, 2, 0); /* m: 830 -> 0,837 */
	reached0[830] = 1;
	trans[0][830]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[0][831]	= settr(0,0,0,0,0,"taskId = 0",0,0,0);
	trans[0][832]	= settr(0,0,0,0,0,"needResched = 0",0,0,0);
	trans[0][833]	= settr(0,0,0,0,0,"interrupted_task = 0",0,0,0);
	trans[0][834]	= settr(0,0,0,0,0,"needResched = 0",0,0,0);
	T = trans[ 0][837] = settr(836,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(836,0,835,0,0,"sub-sequence", 1, 2, 0);
	trans[0][835]	= settr(834,2,894,1197,1197,"int_save = int_ctrl_reg", 1, 2, 0); /* m: 836 -> 0,894 */
	reached0[836] = 1;
	trans[0][836]	= settr(0,0,0,0,0,"int_ctrl_reg = 1",0,0,0);
	trans[0][838]	= settr(0,0,0,0,0,"tickCount = (tickCount+1)",0,0,0);
	trans[0][839]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[0][895]	= settr(894,2,894,1,0,".(goto)", 1, 2, 0);
	T = trans[0][894] = settr(893,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(893,2,840,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(893,2,892,0,0,"DO", 1, 2, 0);
	trans[0][840]	= settr(839,2,890,1198,1198,"((idx<sortLink.count))", 1, 2, 0); /* m: 841 -> 890,0 */
	reached0[841] = 1;
	trans[0][841]	= settr(0,0,0,0,0,"taskId = sortLink.tasks[idx]",0,0,0);
	T = trans[0][890] = settr(889,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(889,2,842,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(889,2,888,0,0,"IF", 1, 2, 0);
	trans[0][842]	= settr(841,2,878,1199,1199,"(((tcb[taskId].state==2)&&(tickCount>=tcb[taskId].wakeupTime)))", 1, 2, 0); /* m: 843 -> 878,0 */
	reached0[843] = 1;
	trans[0][843]	= settr(0,0,0,0,0,"tcb[taskId].state = 1",0,0,0);
	trans[0][844]	= settr(0,0,0,0,0,"tcb[taskId].delayTicks = 0",0,0,0);
	T = trans[ 0][878] = settr(877,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(877,0,845,0,0,"sub-sequence", 1, 2, 0);
	trans[0][845]	= settr(844,2,859,1200,1200,"removePos = 0", 1, 2, 0); /* m: 846 -> 0,859 */
	reached0[846] = 1;
	trans[0][846]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[0][847]	= settr(0,0,0,0,0,"shiftIdx = 0",0,0,0);
	trans[0][848]	= settr(0,0,0,0,0,"removePos = 0",0,0,0);
	trans[0][849]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[0][860]	= settr(859,2,859,1,0,".(goto)", 1, 2, 0);
	T = trans[0][859] = settr(858,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(858,2,850,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(858,2,857,0,0,"DO", 1, 2, 0);
	trans[0][850]	= settr(849,2,855,1201,0,"(((removePos<sortLink.count)&&!(found)))", 1, 2, 0);
	T = trans[0][855] = settr(854,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(854,2,851,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(854,2,853,0,0,"IF", 1, 2, 0);
	trans[0][851]	= settr(850,2,859,1202,1202,"((sortLink.tasks[removePos]==taskId))", 1, 2, 0); /* m: 852 -> 859,0 */
	reached0[852] = 1;
	trans[0][852]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[0][856]	= settr(855,2,859,1,0,".(goto)", 1, 2, 0);
	trans[0][853]	= settr(852,2,854,2,0,"else", 1, 2, 0);
	trans[0][854]	= settr(853,2,859,1203,1203,"removePos = (removePos+1)", 1, 2, 0);
	trans[0][857]	= settr(856,2,876,2,0,"else", 1, 2, 0);
	trans[0][858]	= settr(857,2,876,1,0,"goto :b32", 1, 2, 0);
	trans[0][861]	= settr(860,2,876,1,0,"break", 1, 2, 0);
	T = trans[0][876] = settr(875,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(875,2,862,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(875,2,874,0,0,"IF", 1, 2, 0);
	trans[0][862]	= settr(861,2,869,1204,1204,"((found==1))", 1, 2, 0); /* m: 863 -> 869,0 */
	reached0[863] = 1;
	trans[0][863]	= settr(0,0,0,0,0,"shiftIdx = removePos",0,0,0);
	trans[0][870]	= settr(869,2,869,1,0,".(goto)", 1, 2, 0);
	T = trans[0][869] = settr(868,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(868,2,864,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(868,2,867,0,0,"DO", 1, 2, 0);
	trans[0][864]	= settr(863,2,869,1205,1205,"((shiftIdx<(sortLink.count-1)))", 1, 2, 0); /* m: 865 -> 869,0 */
	reached0[865] = 1;
	trans[0][865]	= settr(0,0,0,0,0,"sortLink.tasks[shiftIdx] = sortLink.tasks[(shiftIdx+1)]",0,0,0);
	trans[0][866]	= settr(0,0,0,0,0,"shiftIdx = (shiftIdx+1)",0,0,0);
	trans[0][867]	= settr(866,2,886,1206,1206,"((shiftIdx>=(sortLink.count-1)))", 1, 2, 0); /* m: 872 -> 886,0 */
	reached0[872] = 1;
	trans[0][868]	= settr(867,2,872,1,0,"goto :b33", 1, 2, 0); /* m: 872 -> 0,886 */
	reached0[872] = 1;
	trans[0][871]	= settr(870,2,872,1,0,"break", 1, 2, 0);
	trans[0][872]	= settr(871,2,886,1207,1207,"sortLink.tasks[(sortLink.count-1)] = 255", 1, 2, 0); /* m: 873 -> 0,886 */
	reached0[873] = 1;
	trans[0][873]	= settr(0,0,0,0,0,"sortLink.count = (sortLink.count-1)",0,0,0);
	trans[0][877]	= settr(876,2,886,1,0,".(goto)", 1, 2, 0);
	trans[0][874]	= settr(873,2,875,2,0,"else", 1, 2, 0);
	trans[0][875]	= settr(874,2,886,1,0,"(1)", 1, 2, 0);
	T = trans[ 0][886] = settr(885,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(885,0,884,0,0,"sub-sequence", 1, 2, 0);
	T = trans[0][884] = settr(883,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(883,2,879,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(883,2,882,0,0,"IF", 1, 2, 0);
	trans[0][879]	= settr(878,2,894,1208,1208,"((readyQueue[tcb[taskId].prio].tailIndex<8))", 1, 2, 0); /* m: 880 -> 894,0 */
	reached0[880] = 1;
	trans[0][880]	= settr(0,0,0,0,0,"readyQueue[tcb[taskId].prio].tasks[readyQueue[tcb[taskId].prio].tailIndex] = taskId",0,0,0);
	trans[0][881]	= settr(0,0,0,0,0,"readyQueue[tcb[taskId].prio].tailIndex = (readyQueue[tcb[taskId].prio].tailIndex+1)",0,0,0);
	trans[0][885]	= settr(884,2,887,1,0,".(goto)", 1, 2, 0); /* m: 887 -> 0,894 */
	reached0[887] = 1;
	trans[0][882]	= settr(881,2,883,2,0,"else", 1, 2, 0);
	trans[0][883]	= settr(882,2,894,1209,1209,"assert(0)", 1, 2, 0); /* m: 887 -> 0,894 */
	reached0[887] = 1;
	trans[0][887]	= settr(886,2,894,1210,1210,"needResched = 1", 1, 2, 0);
	trans[0][891]	= settr(890,2,894,1,0,".(goto)", 1, 2, 0);
	trans[0][888]	= settr(887,2,889,2,0,"else", 1, 2, 0);
	trans[0][889]	= settr(888,2,894,1211,1211,"idx = (idx+1)", 1, 2, 0);
	trans[0][892]	= settr(891,2,910,1212,1212,"((idx>=sortLink.count))", 1, 2, 0); /* m: 897 -> 910,0 */
	reached0[897] = 1;
	trans[0][893]	= settr(892,2,897,1,0,"goto :b31", 1, 2, 0); /* m: 897 -> 0,910 */
	reached0[897] = 1;
	trans[0][896]	= settr(895,2,897,1,0,"break", 1, 2, 0);
	trans[0][897]	= settr(896,2,910,1213,1213,"interrupted_task = EP", 1, 2, 0);
	T = trans[0][910] = settr(909,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(909,2,898,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(909,2,908,0,0,"IF", 1, 2, 0);
	trans[0][898]	= settr(897,2,907,1214,1214,"((((interrupted_task>=1)&&(interrupted_task<=4))&&(tcb[interrupted_task].state!=2)))", 1, 2, 0); /* m: 899 -> 907,0 */
	reached0[899] = 1;
	trans[0][899]	= settr(0,0,0,0,0,"tcb[interrupted_task].state = 1",0,0,0);
	T = trans[ 0][907] = settr(906,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(906,0,905,0,0,"sub-sequence", 1, 2, 0);
	T = trans[0][905] = settr(904,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(904,2,900,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(904,2,903,0,0,"IF", 1, 2, 0);
	trans[0][900]	= settr(899,2,933,1215,1215,"((readyQueue[tcb[interrupted_task].prio].tailIndex<8))", 1, 2, 0); /* m: 901 -> 933,0 */
	reached0[901] = 1;
	trans[0][901]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tasks[readyQueue[tcb[interrupted_task].prio].tailIndex] = interrupted_task",0,0,0);
	trans[0][902]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tailIndex = (readyQueue[tcb[interrupted_task].prio].tailIndex+1)",0,0,0);
	trans[0][906]	= settr(905,2,933,1,0,".(goto)", 1, 2, 0);
	trans[0][903]	= settr(902,2,904,2,0,"else", 1, 2, 0);
	trans[0][904]	= settr(903,2,933,1216,0,"assert(0)", 1, 2, 0);
	trans[0][911]	= settr(910,2,933,1,0,".(goto)", 1, 2, 0);
	trans[0][908]	= settr(907,2,909,2,0,"else", 1, 2, 0);
	trans[0][909]	= settr(908,2,933,1,0,"(1)", 1, 2, 0);
	T = trans[ 0][933] = settr(932,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(932,0,912,0,0,"sub-sequence", 1, 2, 0);
	trans[0][912]	= settr(911,2,928,1217,1217,"prio = 0", 1, 2, 0); /* m: 913 -> 0,928 */
	reached0[913] = 1;
	trans[0][913]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[0][914]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[0][915]	= settr(0,0,0,0,0,"prio = 0",0,0,0);
	trans[0][916]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[0][917]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[0][929]	= settr(928,2,928,1,0,".(goto)", 1, 2, 0);
	T = trans[0][928] = settr(927,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(927,2,918,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(927,2,926,0,0,"DO", 1, 2, 0);
	trans[0][918]	= settr(917,2,924,1218,0,"(((prio<4)&&!(found)))", 1, 2, 0);
	T = trans[0][924] = settr(923,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(923,2,919,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(923,2,922,0,0,"IF", 1, 2, 0);
	trans[0][919]	= settr(918,2,928,1219,1219,"((readyQueue[prio].tailIndex>0))", 1, 2, 0); /* m: 920 -> 928,0 */
	reached0[920] = 1;
	trans[0][920]	= settr(0,0,0,0,0,"top_task = readyQueue[prio].tasks[0]",0,0,0);
	trans[0][921]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[0][925]	= settr(924,2,928,1,0,".(goto)", 1, 2, 0);
	trans[0][922]	= settr(921,2,923,2,0,"else", 1, 2, 0);
	trans[0][923]	= settr(922,2,928,1220,1220,"prio = (prio+1)", 1, 2, 0);
	trans[0][926]	= settr(925,2,951,1221,1221,"(((prio>=4)||found))", 1, 2, 0); /* m: 931 -> 951,0 */
	reached0[931] = 1;
	trans[0][927]	= settr(926,2,931,1,0,"goto :b34", 1, 2, 0); /* m: 931 -> 0,951 */
	reached0[931] = 1;
	trans[0][930]	= settr(929,2,931,1,0,"break", 1, 2, 0);
	trans[0][931]	= settr(930,2,951,1222,1222,"newTask = top_task", 1, 2, 0); /* m: 932 -> 0,951 */
	reached0[932] = 1;
	trans[0][932]	= settr(0,0,0,0,0,"topPrio = prio",0,0,0);
	T = trans[ 0][951] = settr(950,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(950,0,934,0,0,"sub-sequence", 1, 2, 0);
	trans[0][934]	= settr(933,2,941,1223,1223,"deq_idx = 0", 1, 2, 0); /* m: 935 -> 0,941 */
	reached0[935] = 1;
	trans[0][935]	= settr(0,0,0,0,0,"deq_idx = 0",0,0,0);
	trans[0][942]	= settr(941,2,941,1,0,".(goto)", 1, 2, 0);
	T = trans[0][941] = settr(940,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(940,2,936,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(940,2,939,0,0,"DO", 1, 2, 0);
	trans[0][936]	= settr(935,2,941,1224,1224,"((deq_idx<(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0); /* m: 937 -> 941,0 */
	reached0[937] = 1;
	trans[0][937]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[deq_idx] = readyQueue[topPrio].tasks[(deq_idx+1)]",0,0,0);
	trans[0][938]	= settr(0,0,0,0,0,"deq_idx = (deq_idx+1)",0,0,0);
	trans[0][939]	= settr(938,2,949,1225,1225,"((deq_idx>=(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0);
	trans[0][940]	= settr(939,2,949,1,0,"goto :b35", 1, 2, 0);
	trans[0][943]	= settr(942,2,949,1,0,"break", 1, 2, 0);
	T = trans[0][949] = settr(948,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(948,2,944,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(948,2,947,0,0,"IF", 1, 2, 0);
	trans[0][944]	= settr(943,2,955,1226,1226,"((readyQueue[topPrio].tailIndex>0))", 1, 2, 0); /* m: 945 -> 955,0 */
	reached0[945] = 1;
	trans[0][945]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)] = 255",0,0,0);
	trans[0][946]	= settr(0,0,0,0,0,"readyQueue[topPrio].tailIndex = (readyQueue[topPrio].tailIndex-1)",0,0,0);
	trans[0][950]	= settr(949,2,952,1,0,".(goto)", 1, 2, 0); /* m: 952 -> 0,955 */
	reached0[952] = 1;
	trans[0][947]	= settr(946,2,948,2,0,"else", 1, 2, 0);
	trans[0][948]	= settr(947,2,955,1227,1227,"(1)", 1, 2, 0); /* m: 952 -> 955,0 */
	reached0[952] = 1;
	trans[0][952]	= settr(951,2,955,1228,1228,"tcb[newTask].state = 4", 1, 2, 0); /* m: 953 -> 0,955 */
	reached0[953] = 1;
	trans[0][953]	= settr(0,0,0,0,0,"EP = newTask",0,0,0);
	T = trans[ 0][955] = settr(954,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(954,0,954,0,0,"sub-sequence", 1, 2, 0);
	trans[0][954]	= settr(953,0,1090,1229,1229,"int_ctrl_reg = int_save", 1, 2, 0);
	trans[0][958]	= settr(957,0,1089,1230,0,"((counter<100))", 0, 2, 0);
	T = trans[ 0][1089] = settr(1088,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(1088,2,959,0,0,"ATOMIC", 1, 2, 0);
	trans[0][959]	= settr(958,2,960,1231,0,"((EP==1))", 1, 2, 0);
	trans[0][960]	= settr(959,2,1088,1,0,"(1)", 1, 2, 0);
	T = trans[ 0][1088] = settr(1087,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1087,0,961,0,0,"sub-sequence", 1, 2, 0);
	trans[0][961]	= settr(960,2,969,1232,1232,"interrupted_task = 0", 1, 2, 0); /* m: 962 -> 0,969 */
	reached0[962] = 1;
	trans[0][962]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[0][963]	= settr(0,0,0,0,0,"taskId = 0",0,0,0);
	trans[0][964]	= settr(0,0,0,0,0,"needResched = 0",0,0,0);
	trans[0][965]	= settr(0,0,0,0,0,"interrupted_task = 0",0,0,0);
	trans[0][966]	= settr(0,0,0,0,0,"needResched = 0",0,0,0);
	T = trans[ 0][969] = settr(968,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(968,0,967,0,0,"sub-sequence", 1, 2, 0);
	trans[0][967]	= settr(966,2,1026,1233,1233,"int_save = int_ctrl_reg", 1, 2, 0); /* m: 968 -> 0,1026 */
	reached0[968] = 1;
	trans[0][968]	= settr(0,0,0,0,0,"int_ctrl_reg = 1",0,0,0);
	trans[0][970]	= settr(0,0,0,0,0,"tickCount = (tickCount+1)",0,0,0);
	trans[0][971]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[0][1027]	= settr(1026,2,1026,1,0,".(goto)", 1, 2, 0);
	T = trans[0][1026] = settr(1025,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(1025,2,972,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(1025,2,1024,0,0,"DO", 1, 2, 0);
	trans[0][972]	= settr(971,2,1022,1234,1234,"((idx<sortLink.count))", 1, 2, 0); /* m: 973 -> 1022,0 */
	reached0[973] = 1;
	trans[0][973]	= settr(0,0,0,0,0,"taskId = sortLink.tasks[idx]",0,0,0);
	T = trans[0][1022] = settr(1021,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1021,2,974,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1021,2,1020,0,0,"IF", 1, 2, 0);
	trans[0][974]	= settr(973,2,1010,1235,1235,"(((tcb[taskId].state==2)&&(tickCount>=tcb[taskId].wakeupTime)))", 1, 2, 0); /* m: 975 -> 1010,0 */
	reached0[975] = 1;
	trans[0][975]	= settr(0,0,0,0,0,"tcb[taskId].state = 1",0,0,0);
	trans[0][976]	= settr(0,0,0,0,0,"tcb[taskId].delayTicks = 0",0,0,0);
	T = trans[ 0][1010] = settr(1009,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1009,0,977,0,0,"sub-sequence", 1, 2, 0);
	trans[0][977]	= settr(976,2,991,1236,1236,"removePos = 0", 1, 2, 0); /* m: 978 -> 0,991 */
	reached0[978] = 1;
	trans[0][978]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[0][979]	= settr(0,0,0,0,0,"shiftIdx = 0",0,0,0);
	trans[0][980]	= settr(0,0,0,0,0,"removePos = 0",0,0,0);
	trans[0][981]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[0][992]	= settr(991,2,991,1,0,".(goto)", 1, 2, 0);
	T = trans[0][991] = settr(990,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(990,2,982,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(990,2,989,0,0,"DO", 1, 2, 0);
	trans[0][982]	= settr(981,2,987,1237,0,"(((removePos<sortLink.count)&&!(found)))", 1, 2, 0);
	T = trans[0][987] = settr(986,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(986,2,983,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(986,2,985,0,0,"IF", 1, 2, 0);
	trans[0][983]	= settr(982,2,991,1238,1238,"((sortLink.tasks[removePos]==taskId))", 1, 2, 0); /* m: 984 -> 991,0 */
	reached0[984] = 1;
	trans[0][984]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[0][988]	= settr(987,2,991,1,0,".(goto)", 1, 2, 0);
	trans[0][985]	= settr(984,2,986,2,0,"else", 1, 2, 0);
	trans[0][986]	= settr(985,2,991,1239,1239,"removePos = (removePos+1)", 1, 2, 0);
	trans[0][989]	= settr(988,2,1008,2,0,"else", 1, 2, 0);
	trans[0][990]	= settr(989,2,1008,1,0,"goto :b37", 1, 2, 0);
	trans[0][993]	= settr(992,2,1008,1,0,"break", 1, 2, 0);
	T = trans[0][1008] = settr(1007,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1007,2,994,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1007,2,1006,0,0,"IF", 1, 2, 0);
	trans[0][994]	= settr(993,2,1001,1240,1240,"((found==1))", 1, 2, 0); /* m: 995 -> 1001,0 */
	reached0[995] = 1;
	trans[0][995]	= settr(0,0,0,0,0,"shiftIdx = removePos",0,0,0);
	trans[0][1002]	= settr(1001,2,1001,1,0,".(goto)", 1, 2, 0);
	T = trans[0][1001] = settr(1000,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(1000,2,996,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(1000,2,999,0,0,"DO", 1, 2, 0);
	trans[0][996]	= settr(995,2,1001,1241,1241,"((shiftIdx<(sortLink.count-1)))", 1, 2, 0); /* m: 997 -> 1001,0 */
	reached0[997] = 1;
	trans[0][997]	= settr(0,0,0,0,0,"sortLink.tasks[shiftIdx] = sortLink.tasks[(shiftIdx+1)]",0,0,0);
	trans[0][998]	= settr(0,0,0,0,0,"shiftIdx = (shiftIdx+1)",0,0,0);
	trans[0][999]	= settr(998,2,1018,1242,1242,"((shiftIdx>=(sortLink.count-1)))", 1, 2, 0); /* m: 1004 -> 1018,0 */
	reached0[1004] = 1;
	trans[0][1000]	= settr(999,2,1004,1,0,"goto :b38", 1, 2, 0); /* m: 1004 -> 0,1018 */
	reached0[1004] = 1;
	trans[0][1003]	= settr(1002,2,1004,1,0,"break", 1, 2, 0);
	trans[0][1004]	= settr(1003,2,1018,1243,1243,"sortLink.tasks[(sortLink.count-1)] = 255", 1, 2, 0); /* m: 1005 -> 0,1018 */
	reached0[1005] = 1;
	trans[0][1005]	= settr(0,0,0,0,0,"sortLink.count = (sortLink.count-1)",0,0,0);
	trans[0][1009]	= settr(1008,2,1018,1,0,".(goto)", 1, 2, 0);
	trans[0][1006]	= settr(1005,2,1007,2,0,"else", 1, 2, 0);
	trans[0][1007]	= settr(1006,2,1018,1,0,"(1)", 1, 2, 0);
	T = trans[ 0][1018] = settr(1017,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1017,0,1016,0,0,"sub-sequence", 1, 2, 0);
	T = trans[0][1016] = settr(1015,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1015,2,1011,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1015,2,1014,0,0,"IF", 1, 2, 0);
	trans[0][1011]	= settr(1010,2,1026,1244,1244,"((readyQueue[tcb[taskId].prio].tailIndex<8))", 1, 2, 0); /* m: 1012 -> 1026,0 */
	reached0[1012] = 1;
	trans[0][1012]	= settr(0,0,0,0,0,"readyQueue[tcb[taskId].prio].tasks[readyQueue[tcb[taskId].prio].tailIndex] = taskId",0,0,0);
	trans[0][1013]	= settr(0,0,0,0,0,"readyQueue[tcb[taskId].prio].tailIndex = (readyQueue[tcb[taskId].prio].tailIndex+1)",0,0,0);
	trans[0][1017]	= settr(1016,2,1019,1,0,".(goto)", 1, 2, 0); /* m: 1019 -> 0,1026 */
	reached0[1019] = 1;
	trans[0][1014]	= settr(1013,2,1015,2,0,"else", 1, 2, 0);
	trans[0][1015]	= settr(1014,2,1026,1245,1245,"assert(0)", 1, 2, 0); /* m: 1019 -> 0,1026 */
	reached0[1019] = 1;
	trans[0][1019]	= settr(1018,2,1026,1246,1246,"needResched = 1", 1, 2, 0);
	trans[0][1023]	= settr(1022,2,1026,1,0,".(goto)", 1, 2, 0);
	trans[0][1020]	= settr(1019,2,1021,2,0,"else", 1, 2, 0);
	trans[0][1021]	= settr(1020,2,1026,1247,1247,"idx = (idx+1)", 1, 2, 0);
	trans[0][1024]	= settr(1023,2,1042,1248,1248,"((idx>=sortLink.count))", 1, 2, 0); /* m: 1029 -> 1042,0 */
	reached0[1029] = 1;
	trans[0][1025]	= settr(1024,2,1029,1,0,"goto :b36", 1, 2, 0); /* m: 1029 -> 0,1042 */
	reached0[1029] = 1;
	trans[0][1028]	= settr(1027,2,1029,1,0,"break", 1, 2, 0);
	trans[0][1029]	= settr(1028,2,1042,1249,1249,"interrupted_task = EP", 1, 2, 0);
	T = trans[0][1042] = settr(1041,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1041,2,1030,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1041,2,1040,0,0,"IF", 1, 2, 0);
	trans[0][1030]	= settr(1029,2,1039,1250,1250,"((((interrupted_task>=1)&&(interrupted_task<=4))&&(tcb[interrupted_task].state!=2)))", 1, 2, 0); /* m: 1031 -> 1039,0 */
	reached0[1031] = 1;
	trans[0][1031]	= settr(0,0,0,0,0,"tcb[interrupted_task].state = 1",0,0,0);
	T = trans[ 0][1039] = settr(1038,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1038,0,1037,0,0,"sub-sequence", 1, 2, 0);
	T = trans[0][1037] = settr(1036,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1036,2,1032,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1036,2,1035,0,0,"IF", 1, 2, 0);
	trans[0][1032]	= settr(1031,2,1065,1251,1251,"((readyQueue[tcb[interrupted_task].prio].tailIndex<8))", 1, 2, 0); /* m: 1033 -> 1065,0 */
	reached0[1033] = 1;
	trans[0][1033]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tasks[readyQueue[tcb[interrupted_task].prio].tailIndex] = interrupted_task",0,0,0);
	trans[0][1034]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tailIndex = (readyQueue[tcb[interrupted_task].prio].tailIndex+1)",0,0,0);
	trans[0][1038]	= settr(1037,2,1065,1,0,".(goto)", 1, 2, 0);
	trans[0][1035]	= settr(1034,2,1036,2,0,"else", 1, 2, 0);
	trans[0][1036]	= settr(1035,2,1065,1252,0,"assert(0)", 1, 2, 0);
	trans[0][1043]	= settr(1042,2,1065,1,0,".(goto)", 1, 2, 0);
	trans[0][1040]	= settr(1039,2,1041,2,0,"else", 1, 2, 0);
	trans[0][1041]	= settr(1040,2,1065,1,0,"(1)", 1, 2, 0);
	T = trans[ 0][1065] = settr(1064,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1064,0,1044,0,0,"sub-sequence", 1, 2, 0);
	trans[0][1044]	= settr(1043,2,1060,1253,1253,"prio = 0", 1, 2, 0); /* m: 1045 -> 0,1060 */
	reached0[1045] = 1;
	trans[0][1045]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[0][1046]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[0][1047]	= settr(0,0,0,0,0,"prio = 0",0,0,0);
	trans[0][1048]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[0][1049]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[0][1061]	= settr(1060,2,1060,1,0,".(goto)", 1, 2, 0);
	T = trans[0][1060] = settr(1059,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(1059,2,1050,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(1059,2,1058,0,0,"DO", 1, 2, 0);
	trans[0][1050]	= settr(1049,2,1056,1254,0,"(((prio<4)&&!(found)))", 1, 2, 0);
	T = trans[0][1056] = settr(1055,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1055,2,1051,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1055,2,1054,0,0,"IF", 1, 2, 0);
	trans[0][1051]	= settr(1050,2,1060,1255,1255,"((readyQueue[prio].tailIndex>0))", 1, 2, 0); /* m: 1052 -> 1060,0 */
	reached0[1052] = 1;
	trans[0][1052]	= settr(0,0,0,0,0,"top_task = readyQueue[prio].tasks[0]",0,0,0);
	trans[0][1053]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[0][1057]	= settr(1056,2,1060,1,0,".(goto)", 1, 2, 0);
	trans[0][1054]	= settr(1053,2,1055,2,0,"else", 1, 2, 0);
	trans[0][1055]	= settr(1054,2,1060,1256,1256,"prio = (prio+1)", 1, 2, 0);
	trans[0][1058]	= settr(1057,2,1083,1257,1257,"(((prio>=4)||found))", 1, 2, 0); /* m: 1063 -> 1083,0 */
	reached0[1063] = 1;
	trans[0][1059]	= settr(1058,2,1063,1,0,"goto :b39", 1, 2, 0); /* m: 1063 -> 0,1083 */
	reached0[1063] = 1;
	trans[0][1062]	= settr(1061,2,1063,1,0,"break", 1, 2, 0);
	trans[0][1063]	= settr(1062,2,1083,1258,1258,"newTask = top_task", 1, 2, 0); /* m: 1064 -> 0,1083 */
	reached0[1064] = 1;
	trans[0][1064]	= settr(0,0,0,0,0,"topPrio = prio",0,0,0);
	T = trans[ 0][1083] = settr(1082,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1082,0,1066,0,0,"sub-sequence", 1, 2, 0);
	trans[0][1066]	= settr(1065,2,1073,1259,1259,"deq_idx = 0", 1, 2, 0); /* m: 1067 -> 0,1073 */
	reached0[1067] = 1;
	trans[0][1067]	= settr(0,0,0,0,0,"deq_idx = 0",0,0,0);
	trans[0][1074]	= settr(1073,2,1073,1,0,".(goto)", 1, 2, 0);
	T = trans[0][1073] = settr(1072,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(1072,2,1068,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(1072,2,1071,0,0,"DO", 1, 2, 0);
	trans[0][1068]	= settr(1067,2,1073,1260,1260,"((deq_idx<(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0); /* m: 1069 -> 1073,0 */
	reached0[1069] = 1;
	trans[0][1069]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[deq_idx] = readyQueue[topPrio].tasks[(deq_idx+1)]",0,0,0);
	trans[0][1070]	= settr(0,0,0,0,0,"deq_idx = (deq_idx+1)",0,0,0);
	trans[0][1071]	= settr(1070,2,1081,1261,1261,"((deq_idx>=(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0);
	trans[0][1072]	= settr(1071,2,1081,1,0,"goto :b40", 1, 2, 0);
	trans[0][1075]	= settr(1074,2,1081,1,0,"break", 1, 2, 0);
	T = trans[0][1081] = settr(1080,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1080,2,1076,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1080,2,1079,0,0,"IF", 1, 2, 0);
	trans[0][1076]	= settr(1075,2,1087,1262,1262,"((readyQueue[topPrio].tailIndex>0))", 1, 2, 0); /* m: 1077 -> 1087,0 */
	reached0[1077] = 1;
	trans[0][1077]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)] = 255",0,0,0);
	trans[0][1078]	= settr(0,0,0,0,0,"readyQueue[topPrio].tailIndex = (readyQueue[topPrio].tailIndex-1)",0,0,0);
	trans[0][1082]	= settr(1081,2,1084,1,0,".(goto)", 1, 2, 0); /* m: 1084 -> 0,1087 */
	reached0[1084] = 1;
	trans[0][1079]	= settr(1078,2,1080,2,0,"else", 1, 2, 0);
	trans[0][1080]	= settr(1079,2,1087,1263,1263,"(1)", 1, 2, 0); /* m: 1084 -> 1087,0 */
	reached0[1084] = 1;
	trans[0][1084]	= settr(1083,2,1087,1264,1264,"tcb[newTask].state = 4", 1, 2, 0); /* m: 1085 -> 0,1087 */
	reached0[1085] = 1;
	trans[0][1085]	= settr(0,0,0,0,0,"EP = newTask",0,0,0);
	T = trans[ 0][1087] = settr(1086,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1086,0,1086,0,0,"sub-sequence", 1, 2, 0);
	trans[0][1086]	= settr(1085,0,1090,1265,1265,"int_ctrl_reg = int_save", 1, 2, 0);
	trans[0][1092]	= settr(1091,0,1093,1,0,"break", 0, 2, 0);
	trans[0][1093]	= settr(1092,0,0,1266,1266,"-end-", 0, 3500, 0);
	/* np_ demon: */
	trans[_NP_] = (Trans **) emalloc(3*sizeof(Trans *));
	T = trans[_NP_][0] = settr(9997,0,1,_T5,0,"(np_)", 1,2,0);
	    T->nxt	  = settr(9998,0,0,_T2,0,"(1)",   0,2,0);
	T = trans[_NP_][1] = settr(9999,0,1,_T5,0,"(np_)", 1,2,0);
}

Trans *
settr(	int t_id, int a, int b, int c, int d,
	char *t, int g, int tpe0, int tpe1)
{	Trans *tmp = (Trans *) emalloc(sizeof(Trans));

	tmp->atom  = a&(6|32);	/* only (2|8|32) have meaning */
	if (!g) tmp->atom |= 8;	/* no global references */
	tmp->st    = b;
	tmp->tpe[0] = tpe0;
	tmp->tpe[1] = tpe1;
	tmp->tp    = t;
	tmp->t_id  = t_id;
	tmp->forw  = c;
	tmp->back  = d;
	return tmp;
}

Trans *
cpytr(Trans *a)
{	Trans *tmp = (Trans *) emalloc(sizeof(Trans));

	int i;
	tmp->atom  = a->atom;
	tmp->st    = a->st;
#ifdef HAS_UNLESS
	tmp->e_trans = a->e_trans;
	for (i = 0; i < HAS_UNLESS; i++)
		tmp->escp[i] = a->escp[i];
#endif
	tmp->tpe[0] = a->tpe[0];
	tmp->tpe[1] = a->tpe[1];
	for (i = 0; i < 6; i++)
	{	tmp->qu[i] = a->qu[i];
		tmp->ty[i] = a->ty[i];
	}
	tmp->tp    = (char *) emalloc(strlen(a->tp)+1);
	strcpy(tmp->tp, a->tp);
	tmp->t_id  = a->t_id;
	tmp->forw  = a->forw;
	tmp->back  = a->back;
	return tmp;
}

#ifndef NOREDUCE
int
srinc_set(int n)
{	if (n <= 2) return LOCAL;
	if (n <= 2+  DELTA) return Q_FULL_F; /* 's' or nfull  */
	if (n <= 2+2*DELTA) return Q_EMPT_F; /* 'r' or nempty */
	if (n <= 2+3*DELTA) return Q_EMPT_T; /* empty */
	if (n <= 2+4*DELTA) return Q_FULL_T; /* full  */
	if (n ==   5*DELTA) return GLOBAL;
	if (n ==   6*DELTA) return TIMEOUT_F;
	if (n ==   7*DELTA) return ALPHA_F;
	Uerror("cannot happen srinc_class");
	return BAD;
}
int
srunc(int n, int m)
{	switch(m) {
	case Q_FULL_F: return n-2;
	case Q_EMPT_F: return n-2-DELTA;
	case Q_EMPT_T: return n-2-2*DELTA;
	case Q_FULL_T: return n-2-3*DELTA;
	case ALPHA_F:
	case TIMEOUT_F: return 257; /* non-zero, and > MAXQ */
	}
	Uerror("cannot happen srunc");
	return 0;
}
#endif
int cnt;
#ifdef HAS_UNLESS
int
isthere(Trans *a, int b)
{	Trans *t;
	for (t = a; t; t = t->nxt)
		if (t->t_id == b)
			return 1;
	return 0;
}
#endif
#ifndef NOREDUCE
int
mark_safety(Trans *t) /* for conditional safety */
{	int g = 0, i, j, k;

	if (!t) return 0;
	if (t->qu[0])
		return (t->qu[1])?2:1;	/* marked */

	for (i = 0; i < 2; i++)
	{	j = srinc_set(t->tpe[i]);
		if (j >= GLOBAL && j != ALPHA_F)
			return -1;
		if (j != LOCAL)
		{	k = srunc(t->tpe[i], j);
			if (g == 0
			||  t->qu[0] != k
			||  t->ty[0] != j)
			{	t->qu[g] = k;
				t->ty[g] = j;
				g++;
	}	}	}
	return g;
}
#endif
void
retrans(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])
	/* process n, with m states, is=initial state */
{	Trans *T0, *T1, *T2, *T3;
	Trans *T4, *T5; /* t_reverse or has_unless */
	int i;
#if defined(HAS_UNLESS) || !defined(NOREDUCE)
	int k;
#endif
#ifndef NOREDUCE
	int g, h, j, aa;
#endif
#ifdef HAS_UNLESS
	int p;
#endif
	if (state_tables >= 4)
	{	printf("STEP 1 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
	do {
		for (i = 1, cnt = 0; i < m; i++)
		{	T2 = trans[n][i];
			T1 = T2?T2->nxt:(Trans *)0;
/* prescan: */		for (T0 = T1; T0; T0 = T0->nxt)
/* choice in choice */	{	if (T0->st && trans[n][T0->st]
				&&  trans[n][T0->st]->nxt)
					break;
			}
#if 0
		if (T0)
		printf("\tstate %d / %d: choice in choice\n",
		i, T0->st);
#endif
			if (T0)
			for (T0 = T1; T0; T0 = T0->nxt)
			{	T3 = trans[n][T0->st];
				if (!T3->nxt)
				{	T2->nxt = cpytr(T0);
					T2 = T2->nxt;
					imed(T2, T0->st, n, i);
					continue;
				}
				do {	T3 = T3->nxt;
					T2->nxt = cpytr(T3);
					T2 = T2->nxt;
					imed(T2, T0->st, n, i);
				} while (T3->nxt);
				cnt++;
			}
		}
	} while (cnt);
	if (state_tables >= 3)
	{	printf("STEP 2 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
	for (i = 1; i < m; i++)
	{	if (trans[n][i] && trans[n][i]->nxt) /* optimize */
		{	T1 = trans[n][i]->nxt;
#if 0
			printf("\t\tpull %d (%d) to %d\n",
			T1->st, T1->forw, i);
#endif
			srcln[i] = srcln[T1->st];	/* Oyvind Teig, 5.2.0 */

			if (!trans[n][T1->st]) continue;
			T0 = cpytr(trans[n][T1->st]);
			trans[n][i] = T0;
			reach[T1->st] = 1;
			imed(T0, T1->st, n, i);
			for (T1 = T1->nxt; T1; T1 = T1->nxt)
			{
#if 0
			printf("\t\tpull %d (%d) to %d\n",
				T1->st, T1->forw, i);
#endif
		/*		srcln[i] = srcln[T1->st];  gh: not useful */
				if (!trans[n][T1->st]) continue;
				T0->nxt = cpytr(trans[n][T1->st]);
				T0 = T0->nxt;
				reach[T1->st] = 1;
				imed(T0, T1->st, n, i);
	}	}	}
	if (state_tables >= 2)
	{	printf("STEP 3 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
#ifdef HAS_UNLESS
	for (i = 1; i < m; i++)
	{	if (!trans[n][i]) continue;
		/* check for each state i if an
		 * escape to some state p is defined
		 * if so, copy and mark p's transitions
		 * and prepend them to the transition-
		 * list of state i
		 */
	 if (!like_java) /* the default */
	 {	for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		for (k = HAS_UNLESS-1; k >= 0; k--)
		{	if (p = T0->escp[k])
			for (T1 = trans[n][p]; T1; T1 = T1->nxt)
			{	if (isthere(trans[n][i], T1->t_id))
					continue;
				T2 = cpytr(T1);
				T2->e_trans = p;
				T2->nxt = trans[n][i];
				trans[n][i] = T2;
		}	}
	 } else /* outermost unless checked first */
	 {	T4 = T3 = (Trans *) 0;
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		for (k = HAS_UNLESS-1; k >= 0; k--)
		{	if (p = T0->escp[k])
			for (T1 = trans[n][p]; T1; T1 = T1->nxt)
			{	if (isthere(trans[n][i], T1->t_id))
					continue;
				T2 = cpytr(T1);
				T2->nxt = (Trans *) 0;
				T2->e_trans = p;
				if (T3)	T3->nxt = T2;
				else	T4 = T2;
				T3 = T2;
		}	}
		if (T4)
		{	T3->nxt = trans[n][i];
			trans[n][i] = T4;
		}
	 }
	}
#endif
#ifndef NOREDUCE
	for (i = 1; i < m; i++)
	{	if (a_cycles)
		{ /* moves through these states are visible */
	#if PROG_LAB>0 && defined(HAS_NP)
			if (progstate[n][i])
				goto degrade;
			for (T1 = trans[n][i]; T1; T1 = T1->nxt)
				if (progstate[n][T1->st])
					goto degrade;
	#endif
			if (accpstate[n][i] || visstate[n][i])
				goto degrade;
			for (T1 = trans[n][i]; T1; T1 = T1->nxt)
				if (accpstate[n][T1->st])
					goto degrade;
		}
		T1 = trans[n][i];
		if (!T1) continue;
		g = mark_safety(T1);	/* V3.3.1 */
		if (g < 0) goto degrade; /* global */
		/* check if mixing of guards preserves reduction */
		if (T1->nxt)
		{	k = 0;
			for (T0 = T1; T0; T0 = T0->nxt)
			{	if (!(T0->atom&8))
					goto degrade;
				for (aa = 0; aa < 2; aa++)
				{	j = srinc_set(T0->tpe[aa]);
					if (j >= GLOBAL && j != ALPHA_F)
						goto degrade;
					if (T0->tpe[aa]
					&&  T0->tpe[aa]
					!=  T1->tpe[0])
						k = 1;
			}	}
			/* g = 0;	V3.3.1 */
			if (k)	/* non-uniform selection */
			for (T0 = T1; T0; T0 = T0->nxt)
			for (aa = 0; aa < 2; aa++)
			{	j = srinc_set(T0->tpe[aa]);
				if (j != LOCAL)
				{	k = srunc(T0->tpe[aa], j);
					for (h = 0; h < 6; h++)
						if (T1->qu[h] == k
						&&  T1->ty[h] == j)
							break;
					if (h >= 6)
					{	T1->qu[g%6] = k;
						T1->ty[g%6] = j;
						g++;
			}	}	}
			if (g > 6)
			{	T1->qu[0] = 0;	/* turn it off */
				printf("pan: warning, line %d, ",
					srcln[i]);
			 	printf("too many stmnt types (%d)",
					g);
			  	printf(" in selection\n");
			  goto degrade;
			}
		}
		/* mark all options global if >=1 is global */
		for (T1 = trans[n][i]; T1; T1 = T1->nxt)
			if (!(T1->atom&8)) break;
		if (T1)
degrade:	for (T1 = trans[n][i]; T1; T1 = T1->nxt)
			T1->atom &= ~8;	/* mark as unsafe */
		/* can only mix 'r's or 's's if on same chan */
		/* and not mixed with other local operations */
		T1 = trans[n][i];
		if (!T1 || T1->qu[0]) continue;
		j = T1->tpe[0];
		if (T1->nxt && T1->atom&8)
		{ if (j == 5*DELTA)
		  {	printf("warning: line %d ", srcln[i]);
			printf("mixed condition ");
			printf("(defeats reduction)\n");
			goto degrade;
		  }
		  for (T0 = T1; T0; T0 = T0->nxt)
		  for (aa = 0; aa < 2; aa++)
		  if  (T0->tpe[aa] && T0->tpe[aa] != j)
		  {	printf("warning: line %d ", srcln[i]);
			printf("[%d-%d] mixed %stion ",
				T0->tpe[aa], j, 
				(j==5*DELTA)?"condi":"selec");
			printf("(defeats reduction)\n");
			printf("	'%s' <-> '%s'\n",
				T1->tp, T0->tp);
			goto degrade;
		} }
	}
#endif
	for (i = 1; i < m; i++)
	{	T2 = trans[n][i];
		if (!T2
		||  T2->nxt
		||  strncmp(T2->tp, ".(goto)", 7)
		||  !stopstate[n][i])
			continue;
		stopstate[n][T2->st] = 1;
	}
	if (state_tables && !verbose)
	{	if (dodot)
		{	char buf[256], *q = buf, *p = procname[n];
			while (*p != '\0')
			{	if (*p != ':')
				{	*q++ = *p;
				}
				p++;
			}
			*q = '\0';
			printf("digraph ");
			switch (Btypes[n]) {
			case I_PROC:  printf("init {\n"); break;
			case N_CLAIM: printf("claim_%s {\n", buf); break;
			case E_TRACE: printf("notrace {\n"); break;
			case N_TRACE: printf("trace {\n"); break;
			default:      printf("p_%s {\n", buf); break;
			}
			printf("size=\"8,10\";\n");
			printf("  GT [shape=box,style=dotted,label=\"%s\"];\n", buf);
			printf("  GT -> S%d;\n", is);
		} else
		{	switch (Btypes[n]) {
			case I_PROC:  printf("init\n"); break;
			case N_CLAIM: printf("claim %s\n", procname[n]); break;
			case E_TRACE: printf("notrace assertion\n"); break;
			case N_TRACE: printf("trace assertion\n"); break;
			default:      printf("proctype %s\n", procname[n]); break;
		}	}
		for (i = 1; i < m; i++)
		{	reach[i] = 1;
		}
		tagtable(n, m, is, srcln, reach);
		if (dodot) printf("}\n");
	} else
	for (i = 1; i < m; i++)
	{	int nrelse;
		if (Btypes[n] != N_CLAIM)
		{	for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			{	if (T0->st == i
				&& strcmp(T0->tp, "(1)") == 0)
				{	printf("error: proctype '%s' ",
						procname[n]);
		  			printf("line %d, state %d: has un",
						srcln[i], i);
					printf("conditional self-loop\n");
					pan_exit(1);
		}	}	}
		nrelse = 0;
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		{	if (strcmp(T0->tp, "else") == 0)
				nrelse++;
		}
		if (nrelse > 1)
		{	printf("error: proctype '%s' state",
				procname[n]);
		  	printf(" %d, inherits %d", i, nrelse);
		  	printf(" 'else' stmnts\n");
			pan_exit(1);
	}	}
#if !defined(LOOPSTATE) && !defined(BFS_PAR)
	if (state_tables)
#endif
	do_dfs(n, m, is, srcln, reach, lpstate);

	if (!t_reverse)
	{	return;
	}
	/* process n, with m states, is=initial state -- reverse list */
	if (!state_tables && Btypes[n] != N_CLAIM)
	{	for (i = 1; i < m; i++)
		{	Trans *Tx = (Trans *) 0; /* list of escapes */
			Trans *Ty = (Trans *) 0; /* its tail element */
			T1 = (Trans *) 0; /* reversed list */
			T2 = (Trans *) 0; /* its tail */
			T3 = (Trans *) 0; /* remembers possible 'else' */

			/* find unless-escapes, they should go first */
			T4 = T5 = T0 = trans[n][i];
	#ifdef HAS_UNLESS
			while (T4 && T4->e_trans) /* escapes are first in orig list */
			{	T5 = T4;	  /* remember predecessor */
				T4 = T4->nxt;
			}
	#endif
			/* T4 points to first non-escape, T5 to its parent, T0 to original list */
			if (T4 != T0)		 /* there was at least one escape */
			{	T3 = T5->nxt;		 /* start of non-escapes */
				T5->nxt = (Trans *) 0;	 /* separate */
				Tx = T0;		 /* start of the escapes */
				Ty = T5;		 /* its tail */
				T0 = T3;		 /* the rest, to be reversed */
			}
			/* T0 points to first non-escape, Tx to the list of escapes, Ty to its tail */

			/* first tail-add non-escape transitions, reversed */
			T3 = (Trans *) 0;
			for (T5 = T0; T5; T5 = T4)
			{	T4 = T5->nxt;
	#ifdef HAS_UNLESS
				if (T5->e_trans)
				{	printf("error: cannot happen!\n");
					continue;
				}
	#endif
				if (strcmp(T5->tp, "else") == 0)
				{	T3 = T5;
					T5->nxt = (Trans *) 0;
				} else
				{	T5->nxt = T1;
					if (!T1) { T2 = T5; }
					T1 = T5;
			}	}
			/* T3 points to a possible else, which is removed from the list */
			/* T1 points to the reversed list so far (without escapes) */
			/* T2 points to the tail element -- where the else should go */
			if (T2 && T3)
			{	T2->nxt = T3;	/* add else */
			} else
			{	if (T3) /* there was an else, but there's no tail */
				{	if (!T1)	/* and no reversed list */
					{	T1 = T3; /* odd, but possible */
					} else		/* even stranger */
					{	T1->nxt = T3;
			}	}	}

			/* add in the escapes, to that they appear at the front */
			if (Tx && Ty) { Ty->nxt = T1; T1 = Tx; }

			trans[n][i] = T1;
			/* reversed, with escapes first and else last */
	}	}
	if (state_tables && verbose)
	{	printf("FINAL proctype %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
	}
}
void
imed(Trans *T, int v, int n, int j)	/* set intermediate state */
{	progstate[n][T->st] |= progstate[n][v];
	accpstate[n][T->st] |= accpstate[n][v];
	stopstate[n][T->st] |= stopstate[n][v];
	mapstate[n][j] = T->st;
}
void
tagtable(int n, int m, int is, short srcln[], uchar reach[])
{	Trans *z;

	if (is >= m || !trans[n][is]
	||  is <= 0 || reach[is] == 0)
		return;
	reach[is] = 0;
	if (state_tables)
	for (z = trans[n][is]; z; z = z->nxt)
	{	if (dodot)
			dot_crack(n, is, z);
		else
			crack(n, is, z, srcln);
	}

	for (z = trans[n][is]; z; z = z->nxt)
	{
#ifdef HAS_UNLESS
		int i, j;
#endif
		tagtable(n, m, z->st, srcln, reach);
#ifdef HAS_UNLESS
		for (i = 0; i < HAS_UNLESS; i++)
		{	j = trans[n][is]->escp[i];
			if (!j) break;
			tagtable(n, m, j, srcln, reach);
		}
#endif
	}
}

extern Trans *t_id_lkup[];

void
dfs_table(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])
{	Trans *z;

	if (is >= m || is <= 0 || !trans[n][is])
		return;
	if ((reach[is] & (4|8|16)) != 0)
	{	if ((reach[is] & (8|16)) == 16)	/* on stack, not yet recorded */
		{	lpstate[is] = 1;
			reach[is] |= 8; /* recorded */
			if (state_tables && verbose)
			{	printf("state %d line %d is a loopstate\n", is, srcln[is]);
		}	}
		return;
	}
	reach[is] |= (4|16);	/* visited | onstack */
	for (z = trans[n][is]; z; z = z->nxt)
	{	t_id_lkup[z->t_id] = z;
#ifdef HAS_UNLESS
		int i, j;
#endif
		dfs_table(n, m, z->st, srcln, reach, lpstate);
#ifdef HAS_UNLESS
		for (i = 0; i < HAS_UNLESS; i++)
		{	j = trans[n][is]->escp[i];
			if (!j) break;
			dfs_table(n, m, j, srcln, reach, lpstate);
		}
#endif
	}
	reach[is] &= ~16; /* no longer on stack */
}
void
do_dfs(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])
{	int i;
	dfs_table(n, m, is, srcln, reach, lpstate);
	for (i = 0; i < m; i++)
		reach[i] &= ~(4|8|16);
}
void
crack(int n, int j, Trans *z, short srcln[])
{	int i;

	if (!z) return;
	printf("	state %3d -(tr %3d)-> state %3d  ",
		j, z->forw, z->st);
	printf("[id %3d tp %3d", z->t_id, z->tpe[0]);
	if (z->tpe[1]) printf(",%d", z->tpe[1]);
#ifdef HAS_UNLESS
	if (z->e_trans)
		printf(" org %3d", z->e_trans);
	else if (state_tables >= 2)
	for (i = 0; i < HAS_UNLESS; i++)
	{	if (!z->escp[i]) break;
		printf(" esc %d", z->escp[i]);
	}
#endif
	printf("]");
	printf(" [%s%s%s%s%s] %s:%d => ",
		z->atom&6?"A":z->atom&32?"D":"-",
		accpstate[n][j]?"a" :"-",
		stopstate[n][j]?"e" : "-",
		progstate[n][j]?"p" : "-",
		z->atom & 8 ?"L":"G",
		PanSource, srcln[j]);
	for (i = 0; z->tp[i]; i++)
		if (z->tp[i] == '\n')
			printf("\\n");
		else
			putchar(z->tp[i]);
	if (verbose && z->qu[0])
	{	printf("\t[");
		for (i = 0; i < 6; i++)
			if (z->qu[i])
				printf("(%d,%d)",
				z->qu[i], z->ty[i]);
		printf("]");
	}
	printf("\n");
	fflush(stdout);
}
/* spin -a m.pml; cc -o pan pan.c; ./pan -D | dot -Tps > foo.ps; ps2pdf foo.ps */
void
dot_crack(int n, int j, Trans *z)
{	int i;

	if (!z) return;
	printf("	S%d -> S%d  [color=black", j, z->st);

	if (z->atom&6) printf(",style=dashed");
	else if (z->atom&32) printf(",style=dotted");
	else if (z->atom&8) printf(",style=solid");
	else printf(",style=bold");

	printf(",label=\"");
	for (i = 0; z->tp[i]; i++)
	{	if (z->tp[i] == '\\'
		&&  z->tp[i+1] == 'n')
		{	i++; printf(" ");
		} else
		{	putchar(z->tp[i]);
	}	}
	printf("\"];\n");
	if (accpstate[n][j]) printf("  S%d [color=red,style=bold];\n", j);
	else if (progstate[n][j]) printf("  S%d [color=green,style=bold];\n", j);
	if (stopstate[n][j]) printf("  S%d [color=blue,style=bold,shape=box];\n", j);
}

#ifdef VAR_RANGES
#define BYTESIZE	32	/* 2^8 : 2^3 = 256:8 = 32 */

typedef struct Vr_Ptr {
	char	*nm;
	uchar	vals[BYTESIZE];
	struct Vr_Ptr *nxt;
} Vr_Ptr;
Vr_Ptr *ranges = (Vr_Ptr *) 0;

void
logval(char *s, int v)
{	Vr_Ptr *tmp;

	if (v<0 || v > 255) return;
	for (tmp = ranges; tmp; tmp = tmp->nxt)
		if (!strcmp(tmp->nm, s))
			goto found;
	tmp = (Vr_Ptr *) emalloc(sizeof(Vr_Ptr));
	tmp->nxt = ranges;
	ranges = tmp;
	tmp->nm = s;
found:
	tmp->vals[(v)/8] |= 1<<((v)%8);
}

void
dumpval(uchar X[], int range)
{	int w, x, i, j = -1;

	for (w = i = 0; w < range; w++)
	for (x = 0; x < 8; x++, i++)
	{
from:		if ((X[w] & (1<<x)))
		{	printf("%d", i);
			j = i;
			goto upto;
	}	}
	return;
	for (w = 0; w < range; w++)
	for (x = 0; x < 8; x++, i++)
	{
upto:		if (!(X[w] & (1<<x)))
		{	if (i-1 == j)
				printf(", ");
			else
				printf("-%d, ", i-1);
			goto from;
	}	}
	if (j >= 0 && j != 255)
		printf("-255");
}

void
dumpranges(void)
{	Vr_Ptr *tmp;
	printf("\nValues assigned within ");
	printf("interval [0..255]:\n");
	for (tmp = ranges; tmp; tmp = tmp->nxt)
	{	printf("\t%s\t: ", tmp->nm);
		dumpval(tmp->vals, BYTESIZE);
		printf("\n");
	}
}
#endif
