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

	trans = (Trans ***) emalloc(7*sizeof(Trans **));

	/* proctype 5: all_starvation_free */

	trans[5] = (Trans **) emalloc(21*sizeof(Trans *));

	trans[5][8]	= settr(763,0,7,1,0,".(goto)", 0, 2, 0);
	T = trans[5][7] = settr(762,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(762,0,1,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(762,0,3,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(762,0,5,0,0,"DO", 0, 2, 0);
	trans[5][1]	= settr(756,0,12,3,0,"((!(!((tcb[2].state==1)))&&!((EP==2))))", 1, 2, 0);
	trans[5][2]	= settr(757,0,12,1,0,"goto accept_S5", 0, 2, 0);
	trans[5][3]	= settr(758,0,17,4,0,"((!(!((tcb[1].state==1)))&&!((EP==1))))", 1, 2, 0);
	trans[5][4]	= settr(759,0,17,1,0,"goto accept_S10", 0, 2, 0);
	trans[5][5]	= settr(760,0,7,1,0,"(1)", 0, 2, 0);
	trans[5][6]	= settr(761,0,7,1,0,"goto T0_init", 0, 2, 0);
	trans[5][9]	= settr(764,0,12,1,0,"break", 0, 2, 0);
	trans[5][13]	= settr(768,0,12,1,0,".(goto)", 0, 2, 0);
	T = trans[5][12] = settr(767,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(767,0,10,0,0,"DO", 0, 2, 0);
	trans[5][10]	= settr(765,0,12,5,0,"(!((EP==2)))", 1, 2, 0);
	trans[5][11]	= settr(766,0,12,1,0,"goto accept_S5", 0, 2, 0);
	trans[5][14]	= settr(769,0,17,1,0,"break", 0, 2, 0);
	trans[5][18]	= settr(773,0,17,1,0,".(goto)", 0, 2, 0);
	T = trans[5][17] = settr(772,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(772,0,15,0,0,"DO", 0, 2, 0);
	trans[5][15]	= settr(770,0,17,6,0,"(!((EP==1)))", 1, 2, 0);
	trans[5][16]	= settr(771,0,17,1,0,"goto accept_S10", 0, 2, 0);
	trans[5][19]	= settr(774,0,20,1,0,"break", 0, 2, 0);
	trans[5][20]	= settr(775,0,0,7,7,"-end-", 0, 3500, 0);

	/* proctype 4: starvation_free_task2 */

	trans[4] = (Trans **) emalloc(14*sizeof(Trans *));

	trans[4][6]	= settr(748,0,5,1,0,".(goto)", 0, 2, 0);
	T = trans[4][5] = settr(747,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(747,0,1,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(747,0,3,0,0,"DO", 0, 2, 0);
	trans[4][1]	= settr(743,0,10,8,0,"((!(!((tcb[2].state==1)))&&!((EP==2))))", 1, 2, 0);
	trans[4][2]	= settr(744,0,10,1,0,"goto accept_S4", 0, 2, 0);
	trans[4][3]	= settr(745,0,5,1,0,"(1)", 0, 2, 0);
	trans[4][4]	= settr(746,0,5,1,0,"goto T0_init", 0, 2, 0);
	trans[4][7]	= settr(749,0,10,1,0,"break", 0, 2, 0);
	trans[4][11]	= settr(753,0,10,1,0,".(goto)", 0, 2, 0);
	T = trans[4][10] = settr(752,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(752,0,8,0,0,"DO", 0, 2, 0);
	trans[4][8]	= settr(750,0,10,9,0,"(!((EP==2)))", 1, 2, 0);
	trans[4][9]	= settr(751,0,10,1,0,"goto accept_S4", 0, 2, 0);
	trans[4][12]	= settr(754,0,13,1,0,"break", 0, 2, 0);
	trans[4][13]	= settr(755,0,0,10,10,"-end-", 0, 3500, 0);

	/* proctype 3: starvation_free_task1 */

	trans[3] = (Trans **) emalloc(14*sizeof(Trans *));

	trans[3][6]	= settr(735,0,5,1,0,".(goto)", 0, 2, 0);
	T = trans[3][5] = settr(734,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(734,0,1,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(734,0,3,0,0,"DO", 0, 2, 0);
	trans[3][1]	= settr(730,0,10,11,0,"((!(!((tcb[1].state==1)))&&!((EP==1))))", 1, 2, 0);
	trans[3][2]	= settr(731,0,10,1,0,"goto accept_S4", 0, 2, 0);
	trans[3][3]	= settr(732,0,5,1,0,"(1)", 0, 2, 0);
	trans[3][4]	= settr(733,0,5,1,0,"goto T0_init", 0, 2, 0);
	trans[3][7]	= settr(736,0,10,1,0,"break", 0, 2, 0);
	trans[3][11]	= settr(740,0,10,1,0,".(goto)", 0, 2, 0);
	T = trans[3][10] = settr(739,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(739,0,8,0,0,"DO", 0, 2, 0);
	trans[3][8]	= settr(737,0,10,12,0,"(!((EP==1)))", 1, 2, 0);
	trans[3][9]	= settr(738,0,10,1,0,"goto accept_S4", 0, 2, 0);
	trans[3][12]	= settr(741,0,13,1,0,"break", 0, 2, 0);
	trans[3][13]	= settr(742,0,0,13,13,"-end-", 0, 3500, 0);

	/* proctype 2: :init: */

	trans[2] = (Trans **) emalloc(99*sizeof(Trans *));

	trans[2][1]	= settr(632,0,18,14,14,"i = 0", 0, 2, 0);
	trans[2][19]	= settr(650,0,18,1,0,".(goto)", 0, 2, 0);
	T = trans[2][18] = settr(649,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(649,0,2,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(649,0,16,0,0,"DO", 0, 2, 0);
	trans[2][2]	= settr(633,0,14,15,0,"((i<4))", 0, 2, 0);
	T = trans[ 2][14] = settr(645,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(645,0,3,0,0,"sub-sequence", 0, 2, 0);
	trans[2][3]	= settr(634,0,10,16,16,"idx = 0", 0, 2, 0); /* m: 4 -> 0,10 */
	reached2[4] = 1;
	trans[2][4]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[2][11]	= settr(642,0,10,1,0,".(goto)", 0, 2, 0);
	T = trans[2][10] = settr(641,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(641,0,5,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(641,0,8,0,0,"DO", 0, 2, 0);
	trans[2][5]	= settr(636,0,6,17,0,"((idx<5))", 0, 2, 0);
	trans[2][6]	= settr(637,0,7,18,18,"readyQueue[i].tasks[idx] = 255", 1, 2, 0);
	trans[2][7]	= settr(638,0,10,19,19,"idx = (idx+1)", 0, 2, 0);
	trans[2][8]	= settr(639,0,13,20,20,"((idx>=5))", 0, 2, 0);
	trans[2][9]	= settr(640,0,13,1,0,"goto :b21", 0, 2, 0);
	trans[2][12]	= settr(643,0,13,1,0,"break", 0, 2, 0);
	trans[2][13]	= settr(644,0,15,21,21,"readyQueue[i].tailIndex = 0", 1, 2, 0);
	trans[2][15]	= settr(646,0,18,22,22,"i = (i+1)", 0, 2, 0);
	trans[2][16]	= settr(647,0,32,23,23,"((i>=4))", 0, 2, 0);
	trans[2][17]	= settr(648,0,32,1,0,"goto :b20", 0, 2, 0);
	trans[2][20]	= settr(651,0,32,1,0,"break", 0, 2, 0);
	T = trans[ 2][32] = settr(663,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(663,0,21,0,0,"sub-sequence", 0, 2, 0);
	trans[2][21]	= settr(652,0,28,24,24,"idx = 0", 0, 2, 0); /* m: 22 -> 0,28 */
	reached2[22] = 1;
	trans[2][22]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[2][29]	= settr(660,0,28,1,0,".(goto)", 0, 2, 0);
	T = trans[2][28] = settr(659,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(659,0,23,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(659,0,26,0,0,"DO", 0, 2, 0);
	trans[2][23]	= settr(654,0,24,25,0,"((idx<5))", 0, 2, 0);
	trans[2][24]	= settr(655,0,25,26,26,"sortLink.tasks[idx] = 255", 1, 2, 0);
	trans[2][25]	= settr(656,0,28,27,27,"idx = (idx+1)", 0, 2, 0);
	trans[2][26]	= settr(657,0,31,28,28,"((idx>=5))", 0, 2, 0);
	trans[2][27]	= settr(658,0,31,1,0,"goto :b22", 0, 2, 0);
	trans[2][30]	= settr(661,0,31,1,0,"break", 0, 2, 0);
	trans[2][31]	= settr(662,0,33,29,29,"sortLink.count = 0", 1, 2, 0);
	trans[2][33]	= settr(664,0,34,30,30,"tcb[1].prio = 2", 1, 2, 0);
	trans[2][34]	= settr(665,0,35,31,31,"tcb[1].state = 1", 1, 2, 0);
	trans[2][35]	= settr(666,0,43,32,32,"tcb[1].responseTime = 10", 1, 2, 0);
	T = trans[ 2][43] = settr(674,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(674,0,41,0,0,"sub-sequence", 0, 2, 0);
	T = trans[2][41] = settr(672,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(672,0,36,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(672,0,39,0,0,"IF", 0, 2, 0);
	trans[2][36]	= settr(667,0,37,33,0,"((readyQueue[tcb[1].prio].tailIndex<5))", 1, 2, 0);
	trans[2][37]	= settr(668,0,38,34,34,"readyQueue[tcb[1].prio].tasks[readyQueue[tcb[1].prio].tailIndex] = 1", 1, 2, 0);
	trans[2][38]	= settr(669,0,44,35,35,"readyQueue[tcb[1].prio].tailIndex = (readyQueue[tcb[1].prio].tailIndex+1)", 1, 2, 0);
	trans[2][42]	= settr(673,0,44,1,0,".(goto)", 0, 2, 0);
	trans[2][39]	= settr(670,0,40,2,0,"else", 0, 2, 0);
	trans[2][40]	= settr(671,0,44,36,0,"assert(0)", 0, 2, 0);
	trans[2][44]	= settr(675,0,45,37,37,"tcb[2].prio = 2", 1, 2, 0);
	trans[2][45]	= settr(676,0,46,38,38,"tcb[2].state = 1", 1, 2, 0);
	trans[2][46]	= settr(677,0,54,39,39,"tcb[2].responseTime = 20", 1, 2, 0);
	T = trans[ 2][54] = settr(685,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(685,0,52,0,0,"sub-sequence", 0, 2, 0);
	T = trans[2][52] = settr(683,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(683,0,47,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(683,0,50,0,0,"IF", 0, 2, 0);
	trans[2][47]	= settr(678,0,48,40,0,"((readyQueue[tcb[2].prio].tailIndex<5))", 1, 2, 0);
	trans[2][48]	= settr(679,0,49,41,41,"readyQueue[tcb[2].prio].tasks[readyQueue[tcb[2].prio].tailIndex] = 2", 1, 2, 0);
	trans[2][49]	= settr(680,0,76,42,42,"readyQueue[tcb[2].prio].tailIndex = (readyQueue[tcb[2].prio].tailIndex+1)", 1, 2, 0);
	trans[2][53]	= settr(684,0,76,1,0,".(goto)", 0, 2, 0);
	trans[2][50]	= settr(681,0,51,2,0,"else", 0, 2, 0);
	trans[2][51]	= settr(682,0,76,43,0,"assert(0)", 0, 2, 0);
	T = trans[ 2][76] = settr(707,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(707,0,55,0,0,"sub-sequence", 0, 2, 0);
	trans[2][55]	= settr(686,0,71,44,44,"prio = 0", 0, 2, 0); /* m: 56 -> 0,71 */
	reached2[56] = 1;
	trans[2][56]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[2][57]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[2][58]	= settr(0,0,0,0,0,"prio = 0",0,0,0);
	trans[2][59]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[2][60]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[2][72]	= settr(703,0,71,1,0,".(goto)", 0, 2, 0);
	T = trans[2][71] = settr(702,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(702,0,61,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(702,0,69,0,0,"DO", 0, 2, 0);
	trans[2][61]	= settr(692,0,67,45,0,"(((prio<4)&&!(found)))", 0, 2, 0);
	T = trans[2][67] = settr(698,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(698,0,62,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(698,0,65,0,0,"IF", 0, 2, 0);
	trans[2][62]	= settr(693,0,63,46,0,"((readyQueue[prio].tailIndex>0))", 1, 2, 0);
	trans[2][63]	= settr(694,0,64,47,47,"top_task = readyQueue[prio].tasks[0]", 1, 2, 0);
	trans[2][64]	= settr(695,0,71,48,48,"found = 1", 0, 2, 0);
	trans[2][68]	= settr(699,0,71,1,0,".(goto)", 0, 2, 0);
	trans[2][65]	= settr(696,0,66,2,0,"else", 0, 2, 0);
	trans[2][66]	= settr(697,0,71,49,49,"prio = (prio+1)", 0, 2, 0);
	trans[2][69]	= settr(700,0,74,50,50,"(((prio>=4)||found))", 0, 2, 0);
	trans[2][70]	= settr(701,0,74,1,0,"goto :b23", 0, 2, 0);
	trans[2][73]	= settr(704,0,74,1,0,"break", 0, 2, 0);
	trans[2][74]	= settr(705,0,75,51,51,"EP = top_task", 1, 2, 0);
	trans[2][75]	= settr(706,0,94,52,52,"topPrio = prio", 1, 2, 0);
	T = trans[ 2][94] = settr(725,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(725,0,77,0,0,"sub-sequence", 0, 2, 0);
	trans[2][77]	= settr(708,0,84,53,53,"idx = 0", 0, 2, 0); /* m: 78 -> 0,84 */
	reached2[78] = 1;
	trans[2][78]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[2][85]	= settr(716,0,84,1,0,".(goto)", 0, 2, 0);
	T = trans[2][84] = settr(715,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(715,0,79,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(715,0,82,0,0,"DO", 0, 2, 0);
	trans[2][79]	= settr(710,0,80,54,0,"((idx<(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0);
	trans[2][80]	= settr(711,0,81,55,55,"readyQueue[topPrio].tasks[idx] = readyQueue[topPrio].tasks[(idx+1)]", 1, 2, 0);
	trans[2][81]	= settr(712,0,84,56,56,"idx = (idx+1)", 0, 2, 0);
	trans[2][82]	= settr(713,0,92,57,57,"((idx>=(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0);
	trans[2][83]	= settr(714,0,92,1,0,"goto :b24", 0, 2, 0);
	trans[2][86]	= settr(717,0,92,1,0,"break", 0, 2, 0);
	T = trans[2][92] = settr(723,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(723,0,87,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(723,0,90,0,0,"IF", 0, 2, 0);
	trans[2][87]	= settr(718,0,88,58,0,"((readyQueue[topPrio].tailIndex>0))", 1, 2, 0);
	trans[2][88]	= settr(719,0,89,59,59,"readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)] = 255", 1, 2, 0);
	trans[2][89]	= settr(720,0,95,60,60,"readyQueue[topPrio].tailIndex = (readyQueue[topPrio].tailIndex-1)", 1, 2, 0);
	trans[2][93]	= settr(724,0,95,1,0,".(goto)", 0, 2, 0);
	trans[2][90]	= settr(721,0,91,2,0,"else", 0, 2, 0);
	trans[2][91]	= settr(722,0,95,1,0,"(1)", 0, 2, 0);
	trans[2][95]	= settr(726,0,96,61,61,"tcb[EP].state = 4", 1, 2, 0);
	trans[2][96]	= settr(727,0,97,62,62,"(run Process1())", 0, 2, 0);
	trans[2][97]	= settr(728,0,98,63,63,"(run Process2())", 0, 2, 0);
	trans[2][98]	= settr(729,0,0,64,64,"-end-", 0, 3500, 0);

	/* proctype 1: Process2 */

	trans[1] = (Trans **) emalloc(283*sizeof(Trans *));

	trans[1][280]	= settr(629,0,279,1,0,".(goto)", 0, 2, 0);
	T = trans[1][279] = settr(628,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(628,0,68,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(628,0,278,0,0,"DO", 0, 2, 0);
	T = trans[ 1][68] = settr(417,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(417,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[1][1]	= settr(350,2,67,65,65,"((EP==2))", 1, 2, 0); /* m: 2 -> 67,0 */
	reached1[2] = 1;
	trans[1][2]	= settr(0,0,0,0,0,"printf('Process 2 is running\\n')",0,0,0);
	T = trans[ 1][67] = settr(416,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(416,0,3,0,0,"sub-sequence", 1, 2, 0);
	trans[1][3]	= settr(352,2,7,66,66,"interrupted_task = 0", 1, 2, 0); /* m: 4 -> 0,7 */
	reached1[4] = 1;
	trans[1][4]	= settr(0,0,0,0,0,"interrupted_task = 0",0,0,0);
	T = trans[ 1][7] = settr(356,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(356,0,5,0,0,"sub-sequence", 1, 2, 0);
	trans[1][5]	= settr(354,2,21,67,67,"int_save = int_ctrl_reg", 1, 2, 0); /* m: 6 -> 0,21 */
	reached1[6] = 1;
	trans[1][6]	= settr(0,0,0,0,0,"int_ctrl_reg = 1",0,0,0);
	trans[1][8]	= settr(0,0,0,0,0,"interrupted_task = EP",0,0,0);
	T = trans[1][21] = settr(370,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(370,2,9,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(370,2,19,0,0,"IF", 1, 2, 0);
	trans[1][9]	= settr(358,2,18,68,68,"(((interrupted_task>=1)&&(interrupted_task<=2)))", 1, 2, 0); /* m: 10 -> 18,0 */
	reached1[10] = 1;
	trans[1][10]	= settr(0,0,0,0,0,"tcb[interrupted_task].state = 1",0,0,0);
	T = trans[ 1][18] = settr(367,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(367,0,16,0,0,"sub-sequence", 1, 2, 0);
	T = trans[1][16] = settr(365,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(365,2,11,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(365,2,14,0,0,"IF", 1, 2, 0);
	trans[1][11]	= settr(360,2,44,69,69,"((readyQueue[tcb[interrupted_task].prio].tailIndex<5))", 1, 2, 0); /* m: 12 -> 44,0 */
	reached1[12] = 1;
	trans[1][12]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tasks[readyQueue[tcb[interrupted_task].prio].tailIndex] = interrupted_task",0,0,0);
	trans[1][13]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tailIndex = (readyQueue[tcb[interrupted_task].prio].tailIndex+1)",0,0,0);
	trans[1][17]	= settr(366,2,44,1,0,".(goto)", 1, 2, 0);
	trans[1][14]	= settr(363,2,15,2,0,"else", 1, 2, 0);
	trans[1][15]	= settr(364,2,44,70,0,"assert(0)", 1, 2, 0);
	trans[1][22]	= settr(371,2,44,1,0,".(goto)", 1, 2, 0);
	trans[1][19]	= settr(368,2,20,2,0,"else", 1, 2, 0);
	trans[1][20]	= settr(369,2,44,1,0,"(1)", 1, 2, 0);
	T = trans[ 1][44] = settr(393,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(393,0,23,0,0,"sub-sequence", 1, 2, 0);
	trans[1][23]	= settr(372,2,39,71,71,"prio = 0", 1, 2, 0); /* m: 24 -> 0,39 */
	reached1[24] = 1;
	trans[1][24]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[1][25]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[1][26]	= settr(0,0,0,0,0,"prio = 0",0,0,0);
	trans[1][27]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[1][28]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[1][40]	= settr(389,2,39,1,0,".(goto)", 1, 2, 0);
	T = trans[1][39] = settr(388,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(388,2,29,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(388,2,37,0,0,"DO", 1, 2, 0);
	trans[1][29]	= settr(378,2,35,72,0,"(((prio<4)&&!(found)))", 1, 2, 0);
	T = trans[1][35] = settr(384,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(384,2,30,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(384,2,33,0,0,"IF", 1, 2, 0);
	trans[1][30]	= settr(379,2,39,73,73,"((readyQueue[prio].tailIndex>0))", 1, 2, 0); /* m: 31 -> 39,0 */
	reached1[31] = 1;
	trans[1][31]	= settr(0,0,0,0,0,"top_task = readyQueue[prio].tasks[0]",0,0,0);
	trans[1][32]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[1][36]	= settr(385,2,39,1,0,".(goto)", 1, 2, 0);
	trans[1][33]	= settr(382,2,34,2,0,"else", 1, 2, 0);
	trans[1][34]	= settr(383,2,39,74,74,"prio = (prio+1)", 1, 2, 0);
	trans[1][37]	= settr(386,2,62,75,75,"(((prio>=4)||found))", 1, 2, 0); /* m: 42 -> 62,0 */
	reached1[42] = 1;
	trans[1][38]	= settr(387,2,42,1,0,"goto :b12", 1, 2, 0); /* m: 42 -> 0,62 */
	reached1[42] = 1;
	trans[1][41]	= settr(390,2,42,1,0,"break", 1, 2, 0);
	trans[1][42]	= settr(391,2,62,76,76,"newTask = top_task", 1, 2, 0); /* m: 43 -> 0,62 */
	reached1[43] = 1;
	trans[1][43]	= settr(0,0,0,0,0,"topPrio = prio",0,0,0);
	T = trans[ 1][62] = settr(411,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(411,0,45,0,0,"sub-sequence", 1, 2, 0);
	trans[1][45]	= settr(394,2,52,77,77,"idx = 0", 1, 2, 0); /* m: 46 -> 0,52 */
	reached1[46] = 1;
	trans[1][46]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[1][53]	= settr(402,2,52,1,0,".(goto)", 1, 2, 0);
	T = trans[1][52] = settr(401,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(401,2,47,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(401,2,50,0,0,"DO", 1, 2, 0);
	trans[1][47]	= settr(396,2,52,78,78,"((idx<(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0); /* m: 48 -> 52,0 */
	reached1[48] = 1;
	trans[1][48]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[idx] = readyQueue[topPrio].tasks[(idx+1)]",0,0,0);
	trans[1][49]	= settr(0,0,0,0,0,"idx = (idx+1)",0,0,0);
	trans[1][50]	= settr(399,2,60,79,79,"((idx>=(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0);
	trans[1][51]	= settr(400,2,60,1,0,"goto :b13", 1, 2, 0);
	trans[1][54]	= settr(403,2,60,1,0,"break", 1, 2, 0);
	T = trans[1][60] = settr(409,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(409,2,55,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(409,2,58,0,0,"IF", 1, 2, 0);
	trans[1][55]	= settr(404,2,66,80,80,"((readyQueue[topPrio].tailIndex>0))", 1, 2, 0); /* m: 56 -> 66,0 */
	reached1[56] = 1;
	trans[1][56]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)] = 255",0,0,0);
	trans[1][57]	= settr(0,0,0,0,0,"readyQueue[topPrio].tailIndex = (readyQueue[topPrio].tailIndex-1)",0,0,0);
	trans[1][61]	= settr(410,2,63,1,0,".(goto)", 1, 2, 0); /* m: 63 -> 0,66 */
	reached1[63] = 1;
	trans[1][58]	= settr(407,2,59,2,0,"else", 1, 2, 0);
	trans[1][59]	= settr(408,2,66,81,81,"(1)", 1, 2, 0); /* m: 63 -> 66,0 */
	reached1[63] = 1;
	trans[1][63]	= settr(412,2,66,82,82,"tcb[newTask].state = 4", 1, 2, 0); /* m: 64 -> 0,66 */
	reached1[64] = 1;
	trans[1][64]	= settr(0,0,0,0,0,"EP = newTask",0,0,0);
	T = trans[ 1][66] = settr(415,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(415,0,65,0,0,"sub-sequence", 1, 2, 0);
	trans[1][65]	= settr(414,0,279,83,83,"int_ctrl_reg = int_save", 1, 2, 0);
	T = trans[ 1][278] = settr(627,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(627,2,69,0,0,"ATOMIC", 1, 2, 0);
	trans[1][69]	= settr(418,2,212,84,0,"((EP==2))", 1, 2, 0);
	T = trans[ 1][212] = settr(561,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(561,0,70,0,0,"sub-sequence", 1, 2, 0);
	trans[1][70]	= settr(419,2,210,85,85,"needSched = 0", 1, 2, 0); /* m: 71 -> 0,210 */
	reached1[71] = 1;
	trans[1][71]	= settr(0,0,0,0,0,"needSched = 0",0,0,0);
	T = trans[1][210] = settr(559,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(559,2,72,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(559,2,208,0,0,"IF", 1, 2, 0);
	trans[1][72]	= settr(421,2,75,86,0,"((((1>=1)&&(1<=2))&&(1!=EP)))", 1, 2, 0);
	T = trans[ 1][75] = settr(424,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(424,0,73,0,0,"sub-sequence", 1, 2, 0);
	trans[1][73]	= settr(422,2,204,87,87,"int_save = int_ctrl_reg", 1, 2, 0); /* m: 74 -> 0,204 */
	reached1[74] = 1;
	trans[1][74]	= settr(0,0,0,0,0,"int_ctrl_reg = 1",0,0,0);
	T = trans[1][204] = settr(553,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(553,2,76,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(553,2,202,0,0,"IF", 1, 2, 0);
	trans[1][76]	= settr(425,2,131,88,0,"((tcb[1].state==3))", 1, 2, 0);
	T = trans[ 1][131] = settr(480,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(480,0,129,0,0,"sub-sequence", 1, 2, 0);
	T = trans[1][129] = settr(478,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(478,2,77,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(478,2,127,0,0,"IF", 1, 2, 0);
	trans[1][77]	= settr(426,2,112,89,89,"((tcb[1].state==3))", 1, 2, 0); /* m: 78 -> 112,0 */
	reached1[78] = 1;
	trans[1][78]	= settr(0,0,0,0,0,"tcb[1].state = 1",0,0,0);
	T = trans[ 1][112] = settr(461,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(461,0,79,0,0,"sub-sequence", 1, 2, 0);
	trans[1][79]	= settr(428,2,93,90,90,"removePos = 0", 1, 2, 0); /* m: 80 -> 0,93 */
	reached1[80] = 1;
	trans[1][80]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[1][81]	= settr(0,0,0,0,0,"shiftIdx = 0",0,0,0);
	trans[1][82]	= settr(0,0,0,0,0,"removePos = 0",0,0,0);
	trans[1][83]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[1][94]	= settr(443,2,93,1,0,".(goto)", 1, 2, 0);
	T = trans[1][93] = settr(442,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(442,2,84,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(442,2,91,0,0,"DO", 1, 2, 0);
	trans[1][84]	= settr(433,2,89,91,0,"(((removePos<sortLink.count)&&!(found)))", 1, 2, 0);
	T = trans[1][89] = settr(438,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(438,2,85,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(438,2,87,0,0,"IF", 1, 2, 0);
	trans[1][85]	= settr(434,2,93,92,92,"((sortLink.tasks[removePos]==1))", 1, 2, 0); /* m: 86 -> 93,0 */
	reached1[86] = 1;
	trans[1][86]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[1][90]	= settr(439,2,93,1,0,".(goto)", 1, 2, 0);
	trans[1][87]	= settr(436,2,88,2,0,"else", 1, 2, 0);
	trans[1][88]	= settr(437,2,93,93,93,"removePos = (removePos+1)", 1, 2, 0);
	trans[1][91]	= settr(440,2,110,2,0,"else", 1, 2, 0);
	trans[1][92]	= settr(441,2,110,1,0,"goto :b14", 1, 2, 0);
	trans[1][95]	= settr(444,2,110,1,0,"break", 1, 2, 0);
	T = trans[1][110] = settr(459,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(459,2,96,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(459,2,108,0,0,"IF", 1, 2, 0);
	trans[1][96]	= settr(445,2,103,94,94,"((found==1))", 1, 2, 0); /* m: 97 -> 103,0 */
	reached1[97] = 1;
	trans[1][97]	= settr(0,0,0,0,0,"shiftIdx = removePos",0,0,0);
	trans[1][104]	= settr(453,2,103,1,0,".(goto)", 1, 2, 0);
	T = trans[1][103] = settr(452,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(452,2,98,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(452,2,101,0,0,"DO", 1, 2, 0);
	trans[1][98]	= settr(447,2,103,95,95,"((shiftIdx<(sortLink.count-1)))", 1, 2, 0); /* m: 99 -> 103,0 */
	reached1[99] = 1;
	trans[1][99]	= settr(0,0,0,0,0,"sortLink.tasks[shiftIdx] = sortLink.tasks[(shiftIdx+1)]",0,0,0);
	trans[1][100]	= settr(0,0,0,0,0,"shiftIdx = (shiftIdx+1)",0,0,0);
	trans[1][101]	= settr(450,2,120,96,96,"((shiftIdx>=(sortLink.count-1)))", 1, 2, 0); /* m: 106 -> 120,0 */
	reached1[106] = 1;
	trans[1][102]	= settr(451,2,106,1,0,"goto :b15", 1, 2, 0); /* m: 106 -> 0,120 */
	reached1[106] = 1;
	trans[1][105]	= settr(454,2,106,1,0,"break", 1, 2, 0);
	trans[1][106]	= settr(455,2,120,97,97,"sortLink.tasks[(sortLink.count-1)] = 255", 1, 2, 0); /* m: 107 -> 0,120 */
	reached1[107] = 1;
	trans[1][107]	= settr(0,0,0,0,0,"sortLink.count = (sortLink.count-1)",0,0,0);
	trans[1][111]	= settr(460,2,120,1,0,".(goto)", 1, 2, 0);
	trans[1][108]	= settr(457,2,109,2,0,"else", 1, 2, 0);
	trans[1][109]	= settr(458,2,120,1,0,"(1)", 1, 2, 0);
	T = trans[ 1][120] = settr(469,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(469,0,118,0,0,"sub-sequence", 1, 2, 0);
	T = trans[1][118] = settr(467,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(467,2,113,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(467,2,116,0,0,"IF", 1, 2, 0);
	trans[1][113]	= settr(462,2,125,98,98,"((readyQueue[tcb[1].prio].tailIndex<5))", 1, 2, 0); /* m: 114 -> 125,0 */
	reached1[114] = 1;
	trans[1][114]	= settr(0,0,0,0,0,"readyQueue[tcb[1].prio].tasks[readyQueue[tcb[1].prio].tailIndex] = 1",0,0,0);
	trans[1][115]	= settr(0,0,0,0,0,"readyQueue[tcb[1].prio].tailIndex = (readyQueue[tcb[1].prio].tailIndex+1)",0,0,0);
	trans[1][119]	= settr(468,2,125,1,0,".(goto)", 1, 2, 0);
	trans[1][116]	= settr(465,2,117,2,0,"else", 1, 2, 0);
	trans[1][117]	= settr(466,2,125,99,0,"assert(0)", 1, 2, 0);
	T = trans[1][125] = settr(474,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(474,2,121,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(474,2,123,0,0,"IF", 1, 2, 0);
	trans[1][121]	= settr(470,2,200,100,100,"((tcb[1].prio<tcb[EP].prio))", 1, 2, 0); /* m: 122 -> 200,0 */
	reached1[122] = 1;
	trans[1][122]	= settr(0,0,0,0,0,"needSched = 1",0,0,0);
	trans[1][126]	= settr(475,2,200,1,0,".(goto)", 1, 2, 0);
	trans[1][123]	= settr(472,2,124,2,0,"else", 1, 2, 0);
	trans[1][124]	= settr(473,2,200,101,101,"needSched = 0", 1, 2, 0);
	trans[1][130]	= settr(479,2,200,1,0,".(goto)", 1, 2, 0);
	trans[1][127]	= settr(476,2,128,2,0,"else", 1, 2, 0);
	trans[1][128]	= settr(477,2,200,102,102,"needSched = 0", 1, 2, 0);
	T = trans[1][200] = settr(549,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(549,2,132,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(549,2,198,0,0,"IF", 1, 2, 0);
	trans[1][132]	= settr(481,2,197,103,103,"((needSched==1))", 1, 2, 0);
	T = trans[ 1][197] = settr(546,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(546,0,133,0,0,"sub-sequence", 1, 2, 0);
	trans[1][133]	= settr(482,2,137,104,104,"interrupted_task = 0", 1, 2, 0); /* m: 134 -> 0,137 */
	reached1[134] = 1;
	trans[1][134]	= settr(0,0,0,0,0,"interrupted_task = 0",0,0,0);
	T = trans[ 1][137] = settr(486,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(486,0,135,0,0,"sub-sequence", 1, 2, 0);
	trans[1][135]	= settr(484,2,151,105,105,"int_save = int_ctrl_reg", 1, 2, 0); /* m: 136 -> 0,151 */
	reached1[136] = 1;
	trans[1][136]	= settr(0,0,0,0,0,"int_ctrl_reg = 1",0,0,0);
	trans[1][138]	= settr(0,0,0,0,0,"interrupted_task = EP",0,0,0);
	T = trans[1][151] = settr(500,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(500,2,139,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(500,2,149,0,0,"IF", 1, 2, 0);
	trans[1][139]	= settr(488,2,148,106,106,"(((interrupted_task>=1)&&(interrupted_task<=2)))", 1, 2, 0); /* m: 140 -> 148,0 */
	reached1[140] = 1;
	trans[1][140]	= settr(0,0,0,0,0,"tcb[interrupted_task].state = 1",0,0,0);
	T = trans[ 1][148] = settr(497,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(497,0,146,0,0,"sub-sequence", 1, 2, 0);
	T = trans[1][146] = settr(495,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(495,2,141,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(495,2,144,0,0,"IF", 1, 2, 0);
	trans[1][141]	= settr(490,2,174,107,107,"((readyQueue[tcb[interrupted_task].prio].tailIndex<5))", 1, 2, 0); /* m: 142 -> 174,0 */
	reached1[142] = 1;
	trans[1][142]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tasks[readyQueue[tcb[interrupted_task].prio].tailIndex] = interrupted_task",0,0,0);
	trans[1][143]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tailIndex = (readyQueue[tcb[interrupted_task].prio].tailIndex+1)",0,0,0);
	trans[1][147]	= settr(496,2,174,1,0,".(goto)", 1, 2, 0);
	trans[1][144]	= settr(493,2,145,2,0,"else", 1, 2, 0);
	trans[1][145]	= settr(494,2,174,108,0,"assert(0)", 1, 2, 0);
	trans[1][152]	= settr(501,2,174,1,0,".(goto)", 1, 2, 0);
	trans[1][149]	= settr(498,2,150,2,0,"else", 1, 2, 0);
	trans[1][150]	= settr(499,2,174,1,0,"(1)", 1, 2, 0);
	T = trans[ 1][174] = settr(523,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(523,0,153,0,0,"sub-sequence", 1, 2, 0);
	trans[1][153]	= settr(502,2,169,109,109,"prio = 0", 1, 2, 0); /* m: 154 -> 0,169 */
	reached1[154] = 1;
	trans[1][154]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[1][155]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[1][156]	= settr(0,0,0,0,0,"prio = 0",0,0,0);
	trans[1][157]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[1][158]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[1][170]	= settr(519,2,169,1,0,".(goto)", 1, 2, 0);
	T = trans[1][169] = settr(518,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(518,2,159,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(518,2,167,0,0,"DO", 1, 2, 0);
	trans[1][159]	= settr(508,2,165,110,0,"(((prio<4)&&!(found)))", 1, 2, 0);
	T = trans[1][165] = settr(514,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(514,2,160,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(514,2,163,0,0,"IF", 1, 2, 0);
	trans[1][160]	= settr(509,2,169,111,111,"((readyQueue[prio].tailIndex>0))", 1, 2, 0); /* m: 161 -> 169,0 */
	reached1[161] = 1;
	trans[1][161]	= settr(0,0,0,0,0,"top_task = readyQueue[prio].tasks[0]",0,0,0);
	trans[1][162]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[1][166]	= settr(515,2,169,1,0,".(goto)", 1, 2, 0);
	trans[1][163]	= settr(512,2,164,2,0,"else", 1, 2, 0);
	trans[1][164]	= settr(513,2,169,112,112,"prio = (prio+1)", 1, 2, 0);
	trans[1][167]	= settr(516,2,192,113,113,"(((prio>=4)||found))", 1, 2, 0); /* m: 172 -> 192,0 */
	reached1[172] = 1;
	trans[1][168]	= settr(517,2,172,1,0,"goto :b16", 1, 2, 0); /* m: 172 -> 0,192 */
	reached1[172] = 1;
	trans[1][171]	= settr(520,2,172,1,0,"break", 1, 2, 0);
	trans[1][172]	= settr(521,2,192,114,114,"newTask = top_task", 1, 2, 0); /* m: 173 -> 0,192 */
	reached1[173] = 1;
	trans[1][173]	= settr(0,0,0,0,0,"topPrio = prio",0,0,0);
	T = trans[ 1][192] = settr(541,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(541,0,175,0,0,"sub-sequence", 1, 2, 0);
	trans[1][175]	= settr(524,2,182,115,115,"idx = 0", 1, 2, 0); /* m: 176 -> 0,182 */
	reached1[176] = 1;
	trans[1][176]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[1][183]	= settr(532,2,182,1,0,".(goto)", 1, 2, 0);
	T = trans[1][182] = settr(531,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(531,2,177,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(531,2,180,0,0,"DO", 1, 2, 0);
	trans[1][177]	= settr(526,2,182,116,116,"((idx<(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0); /* m: 178 -> 182,0 */
	reached1[178] = 1;
	trans[1][178]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[idx] = readyQueue[topPrio].tasks[(idx+1)]",0,0,0);
	trans[1][179]	= settr(0,0,0,0,0,"idx = (idx+1)",0,0,0);
	trans[1][180]	= settr(529,2,190,117,117,"((idx>=(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0);
	trans[1][181]	= settr(530,2,190,1,0,"goto :b17", 1, 2, 0);
	trans[1][184]	= settr(533,2,190,1,0,"break", 1, 2, 0);
	T = trans[1][190] = settr(539,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(539,2,185,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(539,2,188,0,0,"IF", 1, 2, 0);
	trans[1][185]	= settr(534,2,196,118,118,"((readyQueue[topPrio].tailIndex>0))", 1, 2, 0); /* m: 186 -> 196,0 */
	reached1[186] = 1;
	trans[1][186]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)] = 255",0,0,0);
	trans[1][187]	= settr(0,0,0,0,0,"readyQueue[topPrio].tailIndex = (readyQueue[topPrio].tailIndex-1)",0,0,0);
	trans[1][191]	= settr(540,2,193,1,0,".(goto)", 1, 2, 0); /* m: 193 -> 0,196 */
	reached1[193] = 1;
	trans[1][188]	= settr(537,2,189,2,0,"else", 1, 2, 0);
	trans[1][189]	= settr(538,2,196,119,119,"(1)", 1, 2, 0); /* m: 193 -> 196,0 */
	reached1[193] = 1;
	trans[1][193]	= settr(542,2,196,120,120,"tcb[newTask].state = 4", 1, 2, 0); /* m: 194 -> 0,196 */
	reached1[194] = 1;
	trans[1][194]	= settr(0,0,0,0,0,"EP = newTask",0,0,0);
	T = trans[ 1][196] = settr(545,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(545,0,195,0,0,"sub-sequence", 1, 2, 0);
	trans[1][195]	= settr(544,2,207,121,121,"int_ctrl_reg = int_save", 1, 2, 0);
	trans[1][201]	= settr(550,2,207,1,0,".(goto)", 1, 2, 0);
	trans[1][198]	= settr(547,2,199,2,0,"else", 1, 2, 0);
	trans[1][199]	= settr(548,2,207,1,0,"(1)", 1, 2, 0);
	trans[1][205]	= settr(554,2,207,1,0,".(goto)", 1, 2, 0);
	trans[1][202]	= settr(551,2,203,2,0,"else", 1, 2, 0);
	trans[1][203]	= settr(552,2,207,1,0,"(1)", 1, 2, 0);
	T = trans[ 1][207] = settr(556,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(556,0,206,0,0,"sub-sequence", 1, 2, 0);
	trans[1][206]	= settr(555,2,277,122,122,"int_ctrl_reg = int_save", 1, 2, 0);
	trans[1][211]	= settr(560,2,277,1,0,".(goto)", 1, 2, 0);
	trans[1][208]	= settr(557,2,209,2,0,"else", 1, 2, 0);
	trans[1][209]	= settr(558,2,277,1,0,"(1)", 1, 2, 0);
	T = trans[ 1][277] = settr(626,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(626,0,213,0,0,"sub-sequence", 1, 2, 0);
	trans[1][213]	= settr(562,2,217,123,123,"interrupted_task = 0", 1, 2, 0); /* m: 214 -> 0,217 */
	reached1[214] = 1;
	trans[1][214]	= settr(0,0,0,0,0,"interrupted_task = 0",0,0,0);
	T = trans[ 1][217] = settr(566,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(566,0,215,0,0,"sub-sequence", 1, 2, 0);
	trans[1][215]	= settr(564,2,231,124,124,"int_save = int_ctrl_reg", 1, 2, 0); /* m: 216 -> 0,231 */
	reached1[216] = 1;
	trans[1][216]	= settr(0,0,0,0,0,"int_ctrl_reg = 1",0,0,0);
	trans[1][218]	= settr(0,0,0,0,0,"interrupted_task = EP",0,0,0);
	T = trans[1][231] = settr(580,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(580,2,219,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(580,2,229,0,0,"IF", 1, 2, 0);
	trans[1][219]	= settr(568,2,228,125,125,"(((interrupted_task>=1)&&(interrupted_task<=2)))", 1, 2, 0); /* m: 220 -> 228,0 */
	reached1[220] = 1;
	trans[1][220]	= settr(0,0,0,0,0,"tcb[interrupted_task].state = 1",0,0,0);
	T = trans[ 1][228] = settr(577,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(577,0,226,0,0,"sub-sequence", 1, 2, 0);
	T = trans[1][226] = settr(575,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(575,2,221,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(575,2,224,0,0,"IF", 1, 2, 0);
	trans[1][221]	= settr(570,2,254,126,126,"((readyQueue[tcb[interrupted_task].prio].tailIndex<5))", 1, 2, 0); /* m: 222 -> 254,0 */
	reached1[222] = 1;
	trans[1][222]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tasks[readyQueue[tcb[interrupted_task].prio].tailIndex] = interrupted_task",0,0,0);
	trans[1][223]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tailIndex = (readyQueue[tcb[interrupted_task].prio].tailIndex+1)",0,0,0);
	trans[1][227]	= settr(576,2,254,1,0,".(goto)", 1, 2, 0);
	trans[1][224]	= settr(573,2,225,2,0,"else", 1, 2, 0);
	trans[1][225]	= settr(574,2,254,127,0,"assert(0)", 1, 2, 0);
	trans[1][232]	= settr(581,2,254,1,0,".(goto)", 1, 2, 0);
	trans[1][229]	= settr(578,2,230,2,0,"else", 1, 2, 0);
	trans[1][230]	= settr(579,2,254,1,0,"(1)", 1, 2, 0);
	T = trans[ 1][254] = settr(603,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(603,0,233,0,0,"sub-sequence", 1, 2, 0);
	trans[1][233]	= settr(582,2,249,128,128,"prio = 0", 1, 2, 0); /* m: 234 -> 0,249 */
	reached1[234] = 1;
	trans[1][234]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[1][235]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[1][236]	= settr(0,0,0,0,0,"prio = 0",0,0,0);
	trans[1][237]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[1][238]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[1][250]	= settr(599,2,249,1,0,".(goto)", 1, 2, 0);
	T = trans[1][249] = settr(598,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(598,2,239,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(598,2,247,0,0,"DO", 1, 2, 0);
	trans[1][239]	= settr(588,2,245,129,0,"(((prio<4)&&!(found)))", 1, 2, 0);
	T = trans[1][245] = settr(594,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(594,2,240,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(594,2,243,0,0,"IF", 1, 2, 0);
	trans[1][240]	= settr(589,2,249,130,130,"((readyQueue[prio].tailIndex>0))", 1, 2, 0); /* m: 241 -> 249,0 */
	reached1[241] = 1;
	trans[1][241]	= settr(0,0,0,0,0,"top_task = readyQueue[prio].tasks[0]",0,0,0);
	trans[1][242]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[1][246]	= settr(595,2,249,1,0,".(goto)", 1, 2, 0);
	trans[1][243]	= settr(592,2,244,2,0,"else", 1, 2, 0);
	trans[1][244]	= settr(593,2,249,131,131,"prio = (prio+1)", 1, 2, 0);
	trans[1][247]	= settr(596,2,272,132,132,"(((prio>=4)||found))", 1, 2, 0); /* m: 252 -> 272,0 */
	reached1[252] = 1;
	trans[1][248]	= settr(597,2,252,1,0,"goto :b18", 1, 2, 0); /* m: 252 -> 0,272 */
	reached1[252] = 1;
	trans[1][251]	= settr(600,2,252,1,0,"break", 1, 2, 0);
	trans[1][252]	= settr(601,2,272,133,133,"newTask = top_task", 1, 2, 0); /* m: 253 -> 0,272 */
	reached1[253] = 1;
	trans[1][253]	= settr(0,0,0,0,0,"topPrio = prio",0,0,0);
	T = trans[ 1][272] = settr(621,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(621,0,255,0,0,"sub-sequence", 1, 2, 0);
	trans[1][255]	= settr(604,2,262,134,134,"idx = 0", 1, 2, 0); /* m: 256 -> 0,262 */
	reached1[256] = 1;
	trans[1][256]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[1][263]	= settr(612,2,262,1,0,".(goto)", 1, 2, 0);
	T = trans[1][262] = settr(611,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(611,2,257,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(611,2,260,0,0,"DO", 1, 2, 0);
	trans[1][257]	= settr(606,2,262,135,135,"((idx<(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0); /* m: 258 -> 262,0 */
	reached1[258] = 1;
	trans[1][258]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[idx] = readyQueue[topPrio].tasks[(idx+1)]",0,0,0);
	trans[1][259]	= settr(0,0,0,0,0,"idx = (idx+1)",0,0,0);
	trans[1][260]	= settr(609,2,270,136,136,"((idx>=(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0);
	trans[1][261]	= settr(610,2,270,1,0,"goto :b19", 1, 2, 0);
	trans[1][264]	= settr(613,2,270,1,0,"break", 1, 2, 0);
	T = trans[1][270] = settr(619,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(619,2,265,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(619,2,268,0,0,"IF", 1, 2, 0);
	trans[1][265]	= settr(614,2,276,137,137,"((readyQueue[topPrio].tailIndex>0))", 1, 2, 0); /* m: 266 -> 276,0 */
	reached1[266] = 1;
	trans[1][266]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)] = 255",0,0,0);
	trans[1][267]	= settr(0,0,0,0,0,"readyQueue[topPrio].tailIndex = (readyQueue[topPrio].tailIndex-1)",0,0,0);
	trans[1][271]	= settr(620,2,273,1,0,".(goto)", 1, 2, 0); /* m: 273 -> 0,276 */
	reached1[273] = 1;
	trans[1][268]	= settr(617,2,269,2,0,"else", 1, 2, 0);
	trans[1][269]	= settr(618,2,276,138,138,"(1)", 1, 2, 0); /* m: 273 -> 276,0 */
	reached1[273] = 1;
	trans[1][273]	= settr(622,2,276,139,139,"tcb[newTask].state = 4", 1, 2, 0); /* m: 274 -> 0,276 */
	reached1[274] = 1;
	trans[1][274]	= settr(0,0,0,0,0,"EP = newTask",0,0,0);
	T = trans[ 1][276] = settr(625,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(625,0,275,0,0,"sub-sequence", 1, 2, 0);
	trans[1][275]	= settr(624,0,279,140,140,"int_ctrl_reg = int_save", 1, 2, 0);
	trans[1][281]	= settr(630,0,282,1,0,"break", 0, 2, 0);
	trans[1][282]	= settr(631,0,0,141,141,"-end-", 0, 3500, 0);

	/* proctype 0: Process1 */

	trans[0] = (Trans **) emalloc(351*sizeof(Trans *));

	trans[0][348]	= settr(347,0,347,1,0,".(goto)", 0, 2, 0);
	T = trans[0][347] = settr(346,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(346,0,68,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(346,0,136,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(346,0,346,0,0,"DO", 0, 2, 0);
	T = trans[ 0][68] = settr(67,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(67,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[0][1]	= settr(0,2,67,142,142,"((EP==1))", 1, 2, 0); /* m: 2 -> 67,0 */
	reached0[2] = 1;
	trans[0][2]	= settr(0,0,0,0,0,"printf('Process 1 is running\\n')",0,0,0);
	T = trans[ 0][67] = settr(66,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(66,0,3,0,0,"sub-sequence", 1, 2, 0);
	trans[0][3]	= settr(2,2,7,143,143,"interrupted_task = 0", 1, 2, 0); /* m: 4 -> 0,7 */
	reached0[4] = 1;
	trans[0][4]	= settr(0,0,0,0,0,"interrupted_task = 0",0,0,0);
	T = trans[ 0][7] = settr(6,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(6,0,5,0,0,"sub-sequence", 1, 2, 0);
	trans[0][5]	= settr(4,2,21,144,144,"int_save = int_ctrl_reg", 1, 2, 0); /* m: 6 -> 0,21 */
	reached0[6] = 1;
	trans[0][6]	= settr(0,0,0,0,0,"int_ctrl_reg = 1",0,0,0);
	trans[0][8]	= settr(0,0,0,0,0,"interrupted_task = EP",0,0,0);
	T = trans[0][21] = settr(20,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(20,2,9,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(20,2,19,0,0,"IF", 1, 2, 0);
	trans[0][9]	= settr(8,2,18,145,145,"(((interrupted_task>=1)&&(interrupted_task<=2)))", 1, 2, 0); /* m: 10 -> 18,0 */
	reached0[10] = 1;
	trans[0][10]	= settr(0,0,0,0,0,"tcb[interrupted_task].state = 1",0,0,0);
	T = trans[ 0][18] = settr(17,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(17,0,16,0,0,"sub-sequence", 1, 2, 0);
	T = trans[0][16] = settr(15,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(15,2,11,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(15,2,14,0,0,"IF", 1, 2, 0);
	trans[0][11]	= settr(10,2,44,146,146,"((readyQueue[tcb[interrupted_task].prio].tailIndex<5))", 1, 2, 0); /* m: 12 -> 44,0 */
	reached0[12] = 1;
	trans[0][12]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tasks[readyQueue[tcb[interrupted_task].prio].tailIndex] = interrupted_task",0,0,0);
	trans[0][13]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tailIndex = (readyQueue[tcb[interrupted_task].prio].tailIndex+1)",0,0,0);
	trans[0][17]	= settr(16,2,44,1,0,".(goto)", 1, 2, 0);
	trans[0][14]	= settr(13,2,15,2,0,"else", 1, 2, 0);
	trans[0][15]	= settr(14,2,44,147,0,"assert(0)", 1, 2, 0);
	trans[0][22]	= settr(21,2,44,1,0,".(goto)", 1, 2, 0);
	trans[0][19]	= settr(18,2,20,2,0,"else", 1, 2, 0);
	trans[0][20]	= settr(19,2,44,1,0,"(1)", 1, 2, 0);
	T = trans[ 0][44] = settr(43,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(43,0,23,0,0,"sub-sequence", 1, 2, 0);
	trans[0][23]	= settr(22,2,39,148,148,"prio = 0", 1, 2, 0); /* m: 24 -> 0,39 */
	reached0[24] = 1;
	trans[0][24]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[0][25]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[0][26]	= settr(0,0,0,0,0,"prio = 0",0,0,0);
	trans[0][27]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[0][28]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[0][40]	= settr(39,2,39,1,0,".(goto)", 1, 2, 0);
	T = trans[0][39] = settr(38,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(38,2,29,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(38,2,37,0,0,"DO", 1, 2, 0);
	trans[0][29]	= settr(28,2,35,149,0,"(((prio<4)&&!(found)))", 1, 2, 0);
	T = trans[0][35] = settr(34,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(34,2,30,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(34,2,33,0,0,"IF", 1, 2, 0);
	trans[0][30]	= settr(29,2,39,150,150,"((readyQueue[prio].tailIndex>0))", 1, 2, 0); /* m: 31 -> 39,0 */
	reached0[31] = 1;
	trans[0][31]	= settr(0,0,0,0,0,"top_task = readyQueue[prio].tasks[0]",0,0,0);
	trans[0][32]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[0][36]	= settr(35,2,39,1,0,".(goto)", 1, 2, 0);
	trans[0][33]	= settr(32,2,34,2,0,"else", 1, 2, 0);
	trans[0][34]	= settr(33,2,39,151,151,"prio = (prio+1)", 1, 2, 0);
	trans[0][37]	= settr(36,2,62,152,152,"(((prio>=4)||found))", 1, 2, 0); /* m: 42 -> 62,0 */
	reached0[42] = 1;
	trans[0][38]	= settr(37,2,42,1,0,"goto :b1", 1, 2, 0); /* m: 42 -> 0,62 */
	reached0[42] = 1;
	trans[0][41]	= settr(40,2,42,1,0,"break", 1, 2, 0);
	trans[0][42]	= settr(41,2,62,153,153,"newTask = top_task", 1, 2, 0); /* m: 43 -> 0,62 */
	reached0[43] = 1;
	trans[0][43]	= settr(0,0,0,0,0,"topPrio = prio",0,0,0);
	T = trans[ 0][62] = settr(61,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(61,0,45,0,0,"sub-sequence", 1, 2, 0);
	trans[0][45]	= settr(44,2,52,154,154,"idx = 0", 1, 2, 0); /* m: 46 -> 0,52 */
	reached0[46] = 1;
	trans[0][46]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[0][53]	= settr(52,2,52,1,0,".(goto)", 1, 2, 0);
	T = trans[0][52] = settr(51,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(51,2,47,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(51,2,50,0,0,"DO", 1, 2, 0);
	trans[0][47]	= settr(46,2,52,155,155,"((idx<(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0); /* m: 48 -> 52,0 */
	reached0[48] = 1;
	trans[0][48]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[idx] = readyQueue[topPrio].tasks[(idx+1)]",0,0,0);
	trans[0][49]	= settr(0,0,0,0,0,"idx = (idx+1)",0,0,0);
	trans[0][50]	= settr(49,2,60,156,156,"((idx>=(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0);
	trans[0][51]	= settr(50,2,60,1,0,"goto :b2", 1, 2, 0);
	trans[0][54]	= settr(53,2,60,1,0,"break", 1, 2, 0);
	T = trans[0][60] = settr(59,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(59,2,55,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(59,2,58,0,0,"IF", 1, 2, 0);
	trans[0][55]	= settr(54,2,66,157,157,"((readyQueue[topPrio].tailIndex>0))", 1, 2, 0); /* m: 56 -> 66,0 */
	reached0[56] = 1;
	trans[0][56]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)] = 255",0,0,0);
	trans[0][57]	= settr(0,0,0,0,0,"readyQueue[topPrio].tailIndex = (readyQueue[topPrio].tailIndex-1)",0,0,0);
	trans[0][61]	= settr(60,2,63,1,0,".(goto)", 1, 2, 0); /* m: 63 -> 0,66 */
	reached0[63] = 1;
	trans[0][58]	= settr(57,2,59,2,0,"else", 1, 2, 0);
	trans[0][59]	= settr(58,2,66,158,158,"(1)", 1, 2, 0); /* m: 63 -> 66,0 */
	reached0[63] = 1;
	trans[0][63]	= settr(62,2,66,159,159,"tcb[newTask].state = 4", 1, 2, 0); /* m: 64 -> 0,66 */
	reached0[64] = 1;
	trans[0][64]	= settr(0,0,0,0,0,"EP = newTask",0,0,0);
	T = trans[ 0][66] = settr(65,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(65,0,65,0,0,"sub-sequence", 1, 2, 0);
	trans[0][65]	= settr(64,0,347,160,160,"int_ctrl_reg = int_save", 1, 2, 0);
	T = trans[ 0][136] = settr(135,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(135,2,69,0,0,"ATOMIC", 1, 2, 0);
	trans[0][69]	= settr(68,2,135,161,161,"((EP==1))", 1, 2, 0); /* m: 70 -> 135,0 */
	reached0[70] = 1;
	trans[0][70]	= settr(0,0,0,0,0,"assert((EP==1))",0,0,0);
	T = trans[ 0][135] = settr(134,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(134,0,71,0,0,"sub-sequence", 1, 2, 0);
	trans[0][71]	= settr(70,2,75,162,162,"interrupted_task = 0", 1, 2, 0); /* m: 72 -> 0,75 */
	reached0[72] = 1;
	trans[0][72]	= settr(0,0,0,0,0,"interrupted_task = 0",0,0,0);
	T = trans[ 0][75] = settr(74,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(74,0,73,0,0,"sub-sequence", 1, 2, 0);
	trans[0][73]	= settr(72,2,89,163,163,"int_save = int_ctrl_reg", 1, 2, 0); /* m: 74 -> 0,89 */
	reached0[74] = 1;
	trans[0][74]	= settr(0,0,0,0,0,"int_ctrl_reg = 1",0,0,0);
	trans[0][76]	= settr(0,0,0,0,0,"interrupted_task = EP",0,0,0);
	T = trans[0][89] = settr(88,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(88,2,77,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(88,2,87,0,0,"IF", 1, 2, 0);
	trans[0][77]	= settr(76,2,86,164,164,"(((interrupted_task>=1)&&(interrupted_task<=2)))", 1, 2, 0); /* m: 78 -> 86,0 */
	reached0[78] = 1;
	trans[0][78]	= settr(0,0,0,0,0,"tcb[interrupted_task].state = 1",0,0,0);
	T = trans[ 0][86] = settr(85,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(85,0,84,0,0,"sub-sequence", 1, 2, 0);
	T = trans[0][84] = settr(83,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(83,2,79,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(83,2,82,0,0,"IF", 1, 2, 0);
	trans[0][79]	= settr(78,2,112,165,165,"((readyQueue[tcb[interrupted_task].prio].tailIndex<5))", 1, 2, 0); /* m: 80 -> 112,0 */
	reached0[80] = 1;
	trans[0][80]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tasks[readyQueue[tcb[interrupted_task].prio].tailIndex] = interrupted_task",0,0,0);
	trans[0][81]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tailIndex = (readyQueue[tcb[interrupted_task].prio].tailIndex+1)",0,0,0);
	trans[0][85]	= settr(84,2,112,1,0,".(goto)", 1, 2, 0);
	trans[0][82]	= settr(81,2,83,2,0,"else", 1, 2, 0);
	trans[0][83]	= settr(82,2,112,166,0,"assert(0)", 1, 2, 0);
	trans[0][90]	= settr(89,2,112,1,0,".(goto)", 1, 2, 0);
	trans[0][87]	= settr(86,2,88,2,0,"else", 1, 2, 0);
	trans[0][88]	= settr(87,2,112,1,0,"(1)", 1, 2, 0);
	T = trans[ 0][112] = settr(111,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(111,0,91,0,0,"sub-sequence", 1, 2, 0);
	trans[0][91]	= settr(90,2,107,167,167,"prio = 0", 1, 2, 0); /* m: 92 -> 0,107 */
	reached0[92] = 1;
	trans[0][92]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[0][93]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[0][94]	= settr(0,0,0,0,0,"prio = 0",0,0,0);
	trans[0][95]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[0][96]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[0][108]	= settr(107,2,107,1,0,".(goto)", 1, 2, 0);
	T = trans[0][107] = settr(106,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(106,2,97,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(106,2,105,0,0,"DO", 1, 2, 0);
	trans[0][97]	= settr(96,2,103,168,0,"(((prio<4)&&!(found)))", 1, 2, 0);
	T = trans[0][103] = settr(102,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(102,2,98,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(102,2,101,0,0,"IF", 1, 2, 0);
	trans[0][98]	= settr(97,2,107,169,169,"((readyQueue[prio].tailIndex>0))", 1, 2, 0); /* m: 99 -> 107,0 */
	reached0[99] = 1;
	trans[0][99]	= settr(0,0,0,0,0,"top_task = readyQueue[prio].tasks[0]",0,0,0);
	trans[0][100]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[0][104]	= settr(103,2,107,1,0,".(goto)", 1, 2, 0);
	trans[0][101]	= settr(100,2,102,2,0,"else", 1, 2, 0);
	trans[0][102]	= settr(101,2,107,170,170,"prio = (prio+1)", 1, 2, 0);
	trans[0][105]	= settr(104,2,130,171,171,"(((prio>=4)||found))", 1, 2, 0); /* m: 110 -> 130,0 */
	reached0[110] = 1;
	trans[0][106]	= settr(105,2,110,1,0,"goto :b3", 1, 2, 0); /* m: 110 -> 0,130 */
	reached0[110] = 1;
	trans[0][109]	= settr(108,2,110,1,0,"break", 1, 2, 0);
	trans[0][110]	= settr(109,2,130,172,172,"newTask = top_task", 1, 2, 0); /* m: 111 -> 0,130 */
	reached0[111] = 1;
	trans[0][111]	= settr(0,0,0,0,0,"topPrio = prio",0,0,0);
	T = trans[ 0][130] = settr(129,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(129,0,113,0,0,"sub-sequence", 1, 2, 0);
	trans[0][113]	= settr(112,2,120,173,173,"idx = 0", 1, 2, 0); /* m: 114 -> 0,120 */
	reached0[114] = 1;
	trans[0][114]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[0][121]	= settr(120,2,120,1,0,".(goto)", 1, 2, 0);
	T = trans[0][120] = settr(119,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(119,2,115,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(119,2,118,0,0,"DO", 1, 2, 0);
	trans[0][115]	= settr(114,2,120,174,174,"((idx<(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0); /* m: 116 -> 120,0 */
	reached0[116] = 1;
	trans[0][116]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[idx] = readyQueue[topPrio].tasks[(idx+1)]",0,0,0);
	trans[0][117]	= settr(0,0,0,0,0,"idx = (idx+1)",0,0,0);
	trans[0][118]	= settr(117,2,128,175,175,"((idx>=(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0);
	trans[0][119]	= settr(118,2,128,1,0,"goto :b4", 1, 2, 0);
	trans[0][122]	= settr(121,2,128,1,0,"break", 1, 2, 0);
	T = trans[0][128] = settr(127,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(127,2,123,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(127,2,126,0,0,"IF", 1, 2, 0);
	trans[0][123]	= settr(122,2,134,176,176,"((readyQueue[topPrio].tailIndex>0))", 1, 2, 0); /* m: 124 -> 134,0 */
	reached0[124] = 1;
	trans[0][124]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)] = 255",0,0,0);
	trans[0][125]	= settr(0,0,0,0,0,"readyQueue[topPrio].tailIndex = (readyQueue[topPrio].tailIndex-1)",0,0,0);
	trans[0][129]	= settr(128,2,131,1,0,".(goto)", 1, 2, 0); /* m: 131 -> 0,134 */
	reached0[131] = 1;
	trans[0][126]	= settr(125,2,127,2,0,"else", 1, 2, 0);
	trans[0][127]	= settr(126,2,134,177,177,"(1)", 1, 2, 0); /* m: 131 -> 134,0 */
	reached0[131] = 1;
	trans[0][131]	= settr(130,2,134,178,178,"tcb[newTask].state = 4", 1, 2, 0); /* m: 132 -> 0,134 */
	reached0[132] = 1;
	trans[0][132]	= settr(0,0,0,0,0,"EP = newTask",0,0,0);
	T = trans[ 0][134] = settr(133,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(133,0,133,0,0,"sub-sequence", 1, 2, 0);
	trans[0][133]	= settr(132,0,347,179,179,"int_ctrl_reg = int_save", 1, 2, 0);
	T = trans[ 0][346] = settr(345,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(345,2,137,0,0,"ATOMIC", 1, 2, 0);
	trans[0][137]	= settr(136,2,280,180,0,"((EP==1))", 1, 2, 0);
	T = trans[ 0][280] = settr(279,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(279,0,138,0,0,"sub-sequence", 1, 2, 0);
	trans[0][138]	= settr(137,2,278,181,181,"needSched = 0", 1, 2, 0); /* m: 139 -> 0,278 */
	reached0[139] = 1;
	trans[0][139]	= settr(0,0,0,0,0,"needSched = 0",0,0,0);
	T = trans[0][278] = settr(277,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(277,2,140,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(277,2,276,0,0,"IF", 1, 2, 0);
	trans[0][140]	= settr(139,2,143,182,0,"((((2>=1)&&(2<=2))&&(2!=EP)))", 1, 2, 0);
	T = trans[ 0][143] = settr(142,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(142,0,141,0,0,"sub-sequence", 1, 2, 0);
	trans[0][141]	= settr(140,2,272,183,183,"int_save = int_ctrl_reg", 1, 2, 0); /* m: 142 -> 0,272 */
	reached0[142] = 1;
	trans[0][142]	= settr(0,0,0,0,0,"int_ctrl_reg = 1",0,0,0);
	T = trans[0][272] = settr(271,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(271,2,144,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(271,2,270,0,0,"IF", 1, 2, 0);
	trans[0][144]	= settr(143,2,199,184,0,"((tcb[2].state==3))", 1, 2, 0);
	T = trans[ 0][199] = settr(198,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(198,0,197,0,0,"sub-sequence", 1, 2, 0);
	T = trans[0][197] = settr(196,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(196,2,145,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(196,2,195,0,0,"IF", 1, 2, 0);
	trans[0][145]	= settr(144,2,180,185,185,"((tcb[2].state==3))", 1, 2, 0); /* m: 146 -> 180,0 */
	reached0[146] = 1;
	trans[0][146]	= settr(0,0,0,0,0,"tcb[2].state = 1",0,0,0);
	T = trans[ 0][180] = settr(179,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(179,0,147,0,0,"sub-sequence", 1, 2, 0);
	trans[0][147]	= settr(146,2,161,186,186,"removePos = 0", 1, 2, 0); /* m: 148 -> 0,161 */
	reached0[148] = 1;
	trans[0][148]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[0][149]	= settr(0,0,0,0,0,"shiftIdx = 0",0,0,0);
	trans[0][150]	= settr(0,0,0,0,0,"removePos = 0",0,0,0);
	trans[0][151]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[0][162]	= settr(161,2,161,1,0,".(goto)", 1, 2, 0);
	T = trans[0][161] = settr(160,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(160,2,152,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(160,2,159,0,0,"DO", 1, 2, 0);
	trans[0][152]	= settr(151,2,157,187,0,"(((removePos<sortLink.count)&&!(found)))", 1, 2, 0);
	T = trans[0][157] = settr(156,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(156,2,153,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(156,2,155,0,0,"IF", 1, 2, 0);
	trans[0][153]	= settr(152,2,161,188,188,"((sortLink.tasks[removePos]==2))", 1, 2, 0); /* m: 154 -> 161,0 */
	reached0[154] = 1;
	trans[0][154]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[0][158]	= settr(157,2,161,1,0,".(goto)", 1, 2, 0);
	trans[0][155]	= settr(154,2,156,2,0,"else", 1, 2, 0);
	trans[0][156]	= settr(155,2,161,189,189,"removePos = (removePos+1)", 1, 2, 0);
	trans[0][159]	= settr(158,2,178,2,0,"else", 1, 2, 0);
	trans[0][160]	= settr(159,2,178,1,0,"goto :b5", 1, 2, 0);
	trans[0][163]	= settr(162,2,178,1,0,"break", 1, 2, 0);
	T = trans[0][178] = settr(177,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(177,2,164,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(177,2,176,0,0,"IF", 1, 2, 0);
	trans[0][164]	= settr(163,2,171,190,190,"((found==1))", 1, 2, 0); /* m: 165 -> 171,0 */
	reached0[165] = 1;
	trans[0][165]	= settr(0,0,0,0,0,"shiftIdx = removePos",0,0,0);
	trans[0][172]	= settr(171,2,171,1,0,".(goto)", 1, 2, 0);
	T = trans[0][171] = settr(170,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(170,2,166,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(170,2,169,0,0,"DO", 1, 2, 0);
	trans[0][166]	= settr(165,2,171,191,191,"((shiftIdx<(sortLink.count-1)))", 1, 2, 0); /* m: 167 -> 171,0 */
	reached0[167] = 1;
	trans[0][167]	= settr(0,0,0,0,0,"sortLink.tasks[shiftIdx] = sortLink.tasks[(shiftIdx+1)]",0,0,0);
	trans[0][168]	= settr(0,0,0,0,0,"shiftIdx = (shiftIdx+1)",0,0,0);
	trans[0][169]	= settr(168,2,188,192,192,"((shiftIdx>=(sortLink.count-1)))", 1, 2, 0); /* m: 174 -> 188,0 */
	reached0[174] = 1;
	trans[0][170]	= settr(169,2,174,1,0,"goto :b6", 1, 2, 0); /* m: 174 -> 0,188 */
	reached0[174] = 1;
	trans[0][173]	= settr(172,2,174,1,0,"break", 1, 2, 0);
	trans[0][174]	= settr(173,2,188,193,193,"sortLink.tasks[(sortLink.count-1)] = 255", 1, 2, 0); /* m: 175 -> 0,188 */
	reached0[175] = 1;
	trans[0][175]	= settr(0,0,0,0,0,"sortLink.count = (sortLink.count-1)",0,0,0);
	trans[0][179]	= settr(178,2,188,1,0,".(goto)", 1, 2, 0);
	trans[0][176]	= settr(175,2,177,2,0,"else", 1, 2, 0);
	trans[0][177]	= settr(176,2,188,1,0,"(1)", 1, 2, 0);
	T = trans[ 0][188] = settr(187,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(187,0,186,0,0,"sub-sequence", 1, 2, 0);
	T = trans[0][186] = settr(185,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(185,2,181,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(185,2,184,0,0,"IF", 1, 2, 0);
	trans[0][181]	= settr(180,2,193,194,194,"((readyQueue[tcb[2].prio].tailIndex<5))", 1, 2, 0); /* m: 182 -> 193,0 */
	reached0[182] = 1;
	trans[0][182]	= settr(0,0,0,0,0,"readyQueue[tcb[2].prio].tasks[readyQueue[tcb[2].prio].tailIndex] = 2",0,0,0);
	trans[0][183]	= settr(0,0,0,0,0,"readyQueue[tcb[2].prio].tailIndex = (readyQueue[tcb[2].prio].tailIndex+1)",0,0,0);
	trans[0][187]	= settr(186,2,193,1,0,".(goto)", 1, 2, 0);
	trans[0][184]	= settr(183,2,185,2,0,"else", 1, 2, 0);
	trans[0][185]	= settr(184,2,193,195,0,"assert(0)", 1, 2, 0);
	T = trans[0][193] = settr(192,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(192,2,189,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(192,2,191,0,0,"IF", 1, 2, 0);
	trans[0][189]	= settr(188,2,268,196,196,"((tcb[2].prio<tcb[EP].prio))", 1, 2, 0); /* m: 190 -> 268,0 */
	reached0[190] = 1;
	trans[0][190]	= settr(0,0,0,0,0,"needSched = 1",0,0,0);
	trans[0][194]	= settr(193,2,268,1,0,".(goto)", 1, 2, 0);
	trans[0][191]	= settr(190,2,192,2,0,"else", 1, 2, 0);
	trans[0][192]	= settr(191,2,268,197,197,"needSched = 0", 1, 2, 0);
	trans[0][198]	= settr(197,2,268,1,0,".(goto)", 1, 2, 0);
	trans[0][195]	= settr(194,2,196,2,0,"else", 1, 2, 0);
	trans[0][196]	= settr(195,2,268,198,198,"needSched = 0", 1, 2, 0);
	T = trans[0][268] = settr(267,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(267,2,200,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(267,2,266,0,0,"IF", 1, 2, 0);
	trans[0][200]	= settr(199,2,265,199,199,"((needSched==1))", 1, 2, 0);
	T = trans[ 0][265] = settr(264,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(264,0,201,0,0,"sub-sequence", 1, 2, 0);
	trans[0][201]	= settr(200,2,205,200,200,"interrupted_task = 0", 1, 2, 0); /* m: 202 -> 0,205 */
	reached0[202] = 1;
	trans[0][202]	= settr(0,0,0,0,0,"interrupted_task = 0",0,0,0);
	T = trans[ 0][205] = settr(204,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(204,0,203,0,0,"sub-sequence", 1, 2, 0);
	trans[0][203]	= settr(202,2,219,201,201,"int_save = int_ctrl_reg", 1, 2, 0); /* m: 204 -> 0,219 */
	reached0[204] = 1;
	trans[0][204]	= settr(0,0,0,0,0,"int_ctrl_reg = 1",0,0,0);
	trans[0][206]	= settr(0,0,0,0,0,"interrupted_task = EP",0,0,0);
	T = trans[0][219] = settr(218,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(218,2,207,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(218,2,217,0,0,"IF", 1, 2, 0);
	trans[0][207]	= settr(206,2,216,202,202,"(((interrupted_task>=1)&&(interrupted_task<=2)))", 1, 2, 0); /* m: 208 -> 216,0 */
	reached0[208] = 1;
	trans[0][208]	= settr(0,0,0,0,0,"tcb[interrupted_task].state = 1",0,0,0);
	T = trans[ 0][216] = settr(215,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(215,0,214,0,0,"sub-sequence", 1, 2, 0);
	T = trans[0][214] = settr(213,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(213,2,209,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(213,2,212,0,0,"IF", 1, 2, 0);
	trans[0][209]	= settr(208,2,242,203,203,"((readyQueue[tcb[interrupted_task].prio].tailIndex<5))", 1, 2, 0); /* m: 210 -> 242,0 */
	reached0[210] = 1;
	trans[0][210]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tasks[readyQueue[tcb[interrupted_task].prio].tailIndex] = interrupted_task",0,0,0);
	trans[0][211]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tailIndex = (readyQueue[tcb[interrupted_task].prio].tailIndex+1)",0,0,0);
	trans[0][215]	= settr(214,2,242,1,0,".(goto)", 1, 2, 0);
	trans[0][212]	= settr(211,2,213,2,0,"else", 1, 2, 0);
	trans[0][213]	= settr(212,2,242,204,0,"assert(0)", 1, 2, 0);
	trans[0][220]	= settr(219,2,242,1,0,".(goto)", 1, 2, 0);
	trans[0][217]	= settr(216,2,218,2,0,"else", 1, 2, 0);
	trans[0][218]	= settr(217,2,242,1,0,"(1)", 1, 2, 0);
	T = trans[ 0][242] = settr(241,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(241,0,221,0,0,"sub-sequence", 1, 2, 0);
	trans[0][221]	= settr(220,2,237,205,205,"prio = 0", 1, 2, 0); /* m: 222 -> 0,237 */
	reached0[222] = 1;
	trans[0][222]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[0][223]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[0][224]	= settr(0,0,0,0,0,"prio = 0",0,0,0);
	trans[0][225]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[0][226]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[0][238]	= settr(237,2,237,1,0,".(goto)", 1, 2, 0);
	T = trans[0][237] = settr(236,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(236,2,227,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(236,2,235,0,0,"DO", 1, 2, 0);
	trans[0][227]	= settr(226,2,233,206,0,"(((prio<4)&&!(found)))", 1, 2, 0);
	T = trans[0][233] = settr(232,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(232,2,228,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(232,2,231,0,0,"IF", 1, 2, 0);
	trans[0][228]	= settr(227,2,237,207,207,"((readyQueue[prio].tailIndex>0))", 1, 2, 0); /* m: 229 -> 237,0 */
	reached0[229] = 1;
	trans[0][229]	= settr(0,0,0,0,0,"top_task = readyQueue[prio].tasks[0]",0,0,0);
	trans[0][230]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[0][234]	= settr(233,2,237,1,0,".(goto)", 1, 2, 0);
	trans[0][231]	= settr(230,2,232,2,0,"else", 1, 2, 0);
	trans[0][232]	= settr(231,2,237,208,208,"prio = (prio+1)", 1, 2, 0);
	trans[0][235]	= settr(234,2,260,209,209,"(((prio>=4)||found))", 1, 2, 0); /* m: 240 -> 260,0 */
	reached0[240] = 1;
	trans[0][236]	= settr(235,2,240,1,0,"goto :b7", 1, 2, 0); /* m: 240 -> 0,260 */
	reached0[240] = 1;
	trans[0][239]	= settr(238,2,240,1,0,"break", 1, 2, 0);
	trans[0][240]	= settr(239,2,260,210,210,"newTask = top_task", 1, 2, 0); /* m: 241 -> 0,260 */
	reached0[241] = 1;
	trans[0][241]	= settr(0,0,0,0,0,"topPrio = prio",0,0,0);
	T = trans[ 0][260] = settr(259,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(259,0,243,0,0,"sub-sequence", 1, 2, 0);
	trans[0][243]	= settr(242,2,250,211,211,"idx = 0", 1, 2, 0); /* m: 244 -> 0,250 */
	reached0[244] = 1;
	trans[0][244]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[0][251]	= settr(250,2,250,1,0,".(goto)", 1, 2, 0);
	T = trans[0][250] = settr(249,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(249,2,245,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(249,2,248,0,0,"DO", 1, 2, 0);
	trans[0][245]	= settr(244,2,250,212,212,"((idx<(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0); /* m: 246 -> 250,0 */
	reached0[246] = 1;
	trans[0][246]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[idx] = readyQueue[topPrio].tasks[(idx+1)]",0,0,0);
	trans[0][247]	= settr(0,0,0,0,0,"idx = (idx+1)",0,0,0);
	trans[0][248]	= settr(247,2,258,213,213,"((idx>=(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0);
	trans[0][249]	= settr(248,2,258,1,0,"goto :b8", 1, 2, 0);
	trans[0][252]	= settr(251,2,258,1,0,"break", 1, 2, 0);
	T = trans[0][258] = settr(257,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(257,2,253,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(257,2,256,0,0,"IF", 1, 2, 0);
	trans[0][253]	= settr(252,2,264,214,214,"((readyQueue[topPrio].tailIndex>0))", 1, 2, 0); /* m: 254 -> 264,0 */
	reached0[254] = 1;
	trans[0][254]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)] = 255",0,0,0);
	trans[0][255]	= settr(0,0,0,0,0,"readyQueue[topPrio].tailIndex = (readyQueue[topPrio].tailIndex-1)",0,0,0);
	trans[0][259]	= settr(258,2,261,1,0,".(goto)", 1, 2, 0); /* m: 261 -> 0,264 */
	reached0[261] = 1;
	trans[0][256]	= settr(255,2,257,2,0,"else", 1, 2, 0);
	trans[0][257]	= settr(256,2,264,215,215,"(1)", 1, 2, 0); /* m: 261 -> 264,0 */
	reached0[261] = 1;
	trans[0][261]	= settr(260,2,264,216,216,"tcb[newTask].state = 4", 1, 2, 0); /* m: 262 -> 0,264 */
	reached0[262] = 1;
	trans[0][262]	= settr(0,0,0,0,0,"EP = newTask",0,0,0);
	T = trans[ 0][264] = settr(263,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(263,0,263,0,0,"sub-sequence", 1, 2, 0);
	trans[0][263]	= settr(262,2,275,217,217,"int_ctrl_reg = int_save", 1, 2, 0);
	trans[0][269]	= settr(268,2,275,1,0,".(goto)", 1, 2, 0);
	trans[0][266]	= settr(265,2,267,2,0,"else", 1, 2, 0);
	trans[0][267]	= settr(266,2,275,1,0,"(1)", 1, 2, 0);
	trans[0][273]	= settr(272,2,275,1,0,".(goto)", 1, 2, 0);
	trans[0][270]	= settr(269,2,271,2,0,"else", 1, 2, 0);
	trans[0][271]	= settr(270,2,275,1,0,"(1)", 1, 2, 0);
	T = trans[ 0][275] = settr(274,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(274,0,274,0,0,"sub-sequence", 1, 2, 0);
	trans[0][274]	= settr(273,2,345,218,218,"int_ctrl_reg = int_save", 1, 2, 0);
	trans[0][279]	= settr(278,2,345,1,0,".(goto)", 1, 2, 0);
	trans[0][276]	= settr(275,2,277,2,0,"else", 1, 2, 0);
	trans[0][277]	= settr(276,2,345,1,0,"(1)", 1, 2, 0);
	T = trans[ 0][345] = settr(344,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(344,0,281,0,0,"sub-sequence", 1, 2, 0);
	trans[0][281]	= settr(280,2,285,219,219,"interrupted_task = 0", 1, 2, 0); /* m: 282 -> 0,285 */
	reached0[282] = 1;
	trans[0][282]	= settr(0,0,0,0,0,"interrupted_task = 0",0,0,0);
	T = trans[ 0][285] = settr(284,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(284,0,283,0,0,"sub-sequence", 1, 2, 0);
	trans[0][283]	= settr(282,2,299,220,220,"int_save = int_ctrl_reg", 1, 2, 0); /* m: 284 -> 0,299 */
	reached0[284] = 1;
	trans[0][284]	= settr(0,0,0,0,0,"int_ctrl_reg = 1",0,0,0);
	trans[0][286]	= settr(0,0,0,0,0,"interrupted_task = EP",0,0,0);
	T = trans[0][299] = settr(298,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(298,2,287,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(298,2,297,0,0,"IF", 1, 2, 0);
	trans[0][287]	= settr(286,2,296,221,221,"(((interrupted_task>=1)&&(interrupted_task<=2)))", 1, 2, 0); /* m: 288 -> 296,0 */
	reached0[288] = 1;
	trans[0][288]	= settr(0,0,0,0,0,"tcb[interrupted_task].state = 1",0,0,0);
	T = trans[ 0][296] = settr(295,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(295,0,294,0,0,"sub-sequence", 1, 2, 0);
	T = trans[0][294] = settr(293,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(293,2,289,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(293,2,292,0,0,"IF", 1, 2, 0);
	trans[0][289]	= settr(288,2,322,222,222,"((readyQueue[tcb[interrupted_task].prio].tailIndex<5))", 1, 2, 0); /* m: 290 -> 322,0 */
	reached0[290] = 1;
	trans[0][290]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tasks[readyQueue[tcb[interrupted_task].prio].tailIndex] = interrupted_task",0,0,0);
	trans[0][291]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tailIndex = (readyQueue[tcb[interrupted_task].prio].tailIndex+1)",0,0,0);
	trans[0][295]	= settr(294,2,322,1,0,".(goto)", 1, 2, 0);
	trans[0][292]	= settr(291,2,293,2,0,"else", 1, 2, 0);
	trans[0][293]	= settr(292,2,322,223,0,"assert(0)", 1, 2, 0);
	trans[0][300]	= settr(299,2,322,1,0,".(goto)", 1, 2, 0);
	trans[0][297]	= settr(296,2,298,2,0,"else", 1, 2, 0);
	trans[0][298]	= settr(297,2,322,1,0,"(1)", 1, 2, 0);
	T = trans[ 0][322] = settr(321,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(321,0,301,0,0,"sub-sequence", 1, 2, 0);
	trans[0][301]	= settr(300,2,317,224,224,"prio = 0", 1, 2, 0); /* m: 302 -> 0,317 */
	reached0[302] = 1;
	trans[0][302]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[0][303]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[0][304]	= settr(0,0,0,0,0,"prio = 0",0,0,0);
	trans[0][305]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[0][306]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[0][318]	= settr(317,2,317,1,0,".(goto)", 1, 2, 0);
	T = trans[0][317] = settr(316,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(316,2,307,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(316,2,315,0,0,"DO", 1, 2, 0);
	trans[0][307]	= settr(306,2,313,225,0,"(((prio<4)&&!(found)))", 1, 2, 0);
	T = trans[0][313] = settr(312,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(312,2,308,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(312,2,311,0,0,"IF", 1, 2, 0);
	trans[0][308]	= settr(307,2,317,226,226,"((readyQueue[prio].tailIndex>0))", 1, 2, 0); /* m: 309 -> 317,0 */
	reached0[309] = 1;
	trans[0][309]	= settr(0,0,0,0,0,"top_task = readyQueue[prio].tasks[0]",0,0,0);
	trans[0][310]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[0][314]	= settr(313,2,317,1,0,".(goto)", 1, 2, 0);
	trans[0][311]	= settr(310,2,312,2,0,"else", 1, 2, 0);
	trans[0][312]	= settr(311,2,317,227,227,"prio = (prio+1)", 1, 2, 0);
	trans[0][315]	= settr(314,2,340,228,228,"(((prio>=4)||found))", 1, 2, 0); /* m: 320 -> 340,0 */
	reached0[320] = 1;
	trans[0][316]	= settr(315,2,320,1,0,"goto :b9", 1, 2, 0); /* m: 320 -> 0,340 */
	reached0[320] = 1;
	trans[0][319]	= settr(318,2,320,1,0,"break", 1, 2, 0);
	trans[0][320]	= settr(319,2,340,229,229,"newTask = top_task", 1, 2, 0); /* m: 321 -> 0,340 */
	reached0[321] = 1;
	trans[0][321]	= settr(0,0,0,0,0,"topPrio = prio",0,0,0);
	T = trans[ 0][340] = settr(339,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(339,0,323,0,0,"sub-sequence", 1, 2, 0);
	trans[0][323]	= settr(322,2,330,230,230,"idx = 0", 1, 2, 0); /* m: 324 -> 0,330 */
	reached0[324] = 1;
	trans[0][324]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[0][331]	= settr(330,2,330,1,0,".(goto)", 1, 2, 0);
	T = trans[0][330] = settr(329,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(329,2,325,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(329,2,328,0,0,"DO", 1, 2, 0);
	trans[0][325]	= settr(324,2,330,231,231,"((idx<(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0); /* m: 326 -> 330,0 */
	reached0[326] = 1;
	trans[0][326]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[idx] = readyQueue[topPrio].tasks[(idx+1)]",0,0,0);
	trans[0][327]	= settr(0,0,0,0,0,"idx = (idx+1)",0,0,0);
	trans[0][328]	= settr(327,2,338,232,232,"((idx>=(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0);
	trans[0][329]	= settr(328,2,338,1,0,"goto :b10", 1, 2, 0);
	trans[0][332]	= settr(331,2,338,1,0,"break", 1, 2, 0);
	T = trans[0][338] = settr(337,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(337,2,333,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(337,2,336,0,0,"IF", 1, 2, 0);
	trans[0][333]	= settr(332,2,344,233,233,"((readyQueue[topPrio].tailIndex>0))", 1, 2, 0); /* m: 334 -> 344,0 */
	reached0[334] = 1;
	trans[0][334]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)] = 255",0,0,0);
	trans[0][335]	= settr(0,0,0,0,0,"readyQueue[topPrio].tailIndex = (readyQueue[topPrio].tailIndex-1)",0,0,0);
	trans[0][339]	= settr(338,2,341,1,0,".(goto)", 1, 2, 0); /* m: 341 -> 0,344 */
	reached0[341] = 1;
	trans[0][336]	= settr(335,2,337,2,0,"else", 1, 2, 0);
	trans[0][337]	= settr(336,2,344,234,234,"(1)", 1, 2, 0); /* m: 341 -> 344,0 */
	reached0[341] = 1;
	trans[0][341]	= settr(340,2,344,235,235,"tcb[newTask].state = 4", 1, 2, 0); /* m: 342 -> 0,344 */
	reached0[342] = 1;
	trans[0][342]	= settr(0,0,0,0,0,"EP = newTask",0,0,0);
	T = trans[ 0][344] = settr(343,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(343,0,343,0,0,"sub-sequence", 1, 2, 0);
	trans[0][343]	= settr(342,0,347,236,236,"int_ctrl_reg = int_save", 1, 2, 0);
	trans[0][349]	= settr(348,0,350,1,0,"break", 0, 2, 0);
	trans[0][350]	= settr(349,0,0,237,237,"-end-", 0, 3500, 0);
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
