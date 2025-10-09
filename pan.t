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

	trans[5][8]	= settr(435,0,7,1,0,".(goto)", 0, 2, 0);
	T = trans[5][7] = settr(434,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(434,0,1,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(434,0,3,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(434,0,5,0,0,"DO", 0, 2, 0);
	trans[5][1]	= settr(428,0,12,3,0,"((!(!((tcb[2].state==1)))&&!((EP==2))))", 1, 2, 0);
	trans[5][2]	= settr(429,0,12,1,0,"goto accept_S5", 0, 2, 0);
	trans[5][3]	= settr(430,0,17,4,0,"((!(!((tcb[1].state==1)))&&!((EP==1))))", 1, 2, 0);
	trans[5][4]	= settr(431,0,17,1,0,"goto accept_S10", 0, 2, 0);
	trans[5][5]	= settr(432,0,7,1,0,"(1)", 0, 2, 0);
	trans[5][6]	= settr(433,0,7,1,0,"goto T0_init", 0, 2, 0);
	trans[5][9]	= settr(436,0,12,1,0,"break", 0, 2, 0);
	trans[5][13]	= settr(440,0,12,1,0,".(goto)", 0, 2, 0);
	T = trans[5][12] = settr(439,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(439,0,10,0,0,"DO", 0, 2, 0);
	trans[5][10]	= settr(437,0,12,5,0,"(!((EP==2)))", 1, 2, 0);
	trans[5][11]	= settr(438,0,12,1,0,"goto accept_S5", 0, 2, 0);
	trans[5][14]	= settr(441,0,17,1,0,"break", 0, 2, 0);
	trans[5][18]	= settr(445,0,17,1,0,".(goto)", 0, 2, 0);
	T = trans[5][17] = settr(444,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(444,0,15,0,0,"DO", 0, 2, 0);
	trans[5][15]	= settr(442,0,17,6,0,"(!((EP==1)))", 1, 2, 0);
	trans[5][16]	= settr(443,0,17,1,0,"goto accept_S10", 0, 2, 0);
	trans[5][19]	= settr(446,0,20,1,0,"break", 0, 2, 0);
	trans[5][20]	= settr(447,0,0,7,7,"-end-", 0, 3500, 0);

	/* proctype 4: starvation_free_task2 */

	trans[4] = (Trans **) emalloc(14*sizeof(Trans *));

	trans[4][6]	= settr(420,0,5,1,0,".(goto)", 0, 2, 0);
	T = trans[4][5] = settr(419,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(419,0,1,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(419,0,3,0,0,"DO", 0, 2, 0);
	trans[4][1]	= settr(415,0,10,8,0,"((!(!((tcb[2].state==1)))&&!((EP==2))))", 1, 2, 0);
	trans[4][2]	= settr(416,0,10,1,0,"goto accept_S4", 0, 2, 0);
	trans[4][3]	= settr(417,0,5,1,0,"(1)", 0, 2, 0);
	trans[4][4]	= settr(418,0,5,1,0,"goto T0_init", 0, 2, 0);
	trans[4][7]	= settr(421,0,10,1,0,"break", 0, 2, 0);
	trans[4][11]	= settr(425,0,10,1,0,".(goto)", 0, 2, 0);
	T = trans[4][10] = settr(424,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(424,0,8,0,0,"DO", 0, 2, 0);
	trans[4][8]	= settr(422,0,10,9,0,"(!((EP==2)))", 1, 2, 0);
	trans[4][9]	= settr(423,0,10,1,0,"goto accept_S4", 0, 2, 0);
	trans[4][12]	= settr(426,0,13,1,0,"break", 0, 2, 0);
	trans[4][13]	= settr(427,0,0,10,10,"-end-", 0, 3500, 0);

	/* proctype 3: starvation_free_task1 */

	trans[3] = (Trans **) emalloc(14*sizeof(Trans *));

	trans[3][6]	= settr(407,0,5,1,0,".(goto)", 0, 2, 0);
	T = trans[3][5] = settr(406,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(406,0,1,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(406,0,3,0,0,"DO", 0, 2, 0);
	trans[3][1]	= settr(402,0,10,11,0,"((!(!((tcb[1].state==1)))&&!((EP==1))))", 1, 2, 0);
	trans[3][2]	= settr(403,0,10,1,0,"goto accept_S4", 0, 2, 0);
	trans[3][3]	= settr(404,0,5,1,0,"(1)", 0, 2, 0);
	trans[3][4]	= settr(405,0,5,1,0,"goto T0_init", 0, 2, 0);
	trans[3][7]	= settr(408,0,10,1,0,"break", 0, 2, 0);
	trans[3][11]	= settr(412,0,10,1,0,".(goto)", 0, 2, 0);
	T = trans[3][10] = settr(411,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(411,0,8,0,0,"DO", 0, 2, 0);
	trans[3][8]	= settr(409,0,10,12,0,"(!((EP==1)))", 1, 2, 0);
	trans[3][9]	= settr(410,0,10,1,0,"goto accept_S4", 0, 2, 0);
	trans[3][12]	= settr(413,0,13,1,0,"break", 0, 2, 0);
	trans[3][13]	= settr(414,0,0,13,13,"-end-", 0, 3500, 0);

	/* proctype 2: :init: */

	trans[2] = (Trans **) emalloc(80*sizeof(Trans *));

	trans[2][1]	= settr(323,0,17,14,14,"i = 0", 0, 2, 0);
	trans[2][18]	= settr(340,0,17,1,0,".(goto)", 0, 2, 0);
	T = trans[2][17] = settr(339,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(339,0,2,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(339,0,15,0,0,"DO", 0, 2, 0);
	trans[2][2]	= settr(324,0,13,15,0,"((i<4))", 0, 2, 0);
	T = trans[ 2][13] = settr(335,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(335,0,3,0,0,"sub-sequence", 0, 2, 0);
	trans[2][3]	= settr(325,0,9,16,16,"idx = 0", 0, 2, 0);
	trans[2][10]	= settr(332,0,9,1,0,".(goto)", 0, 2, 0);
	T = trans[2][9] = settr(331,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(331,0,4,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(331,0,7,0,0,"DO", 0, 2, 0);
	trans[2][4]	= settr(326,0,5,17,0,"((idx<5))", 0, 2, 0);
	trans[2][5]	= settr(327,0,6,18,18,"readyQueue[i].tasks[idx] = 255", 1, 2, 0);
	trans[2][6]	= settr(328,0,9,19,19,"idx = (idx+1)", 0, 2, 0);
	trans[2][7]	= settr(329,0,12,20,20,"((idx>=5))", 0, 2, 0);
	trans[2][8]	= settr(330,0,12,1,0,"goto :b13", 0, 2, 0);
	trans[2][11]	= settr(333,0,12,1,0,"break", 0, 2, 0);
	trans[2][12]	= settr(334,0,14,21,21,"readyQueue[i].tailIndex = 0", 1, 2, 0);
	trans[2][14]	= settr(336,0,17,22,22,"i = (i+1)", 0, 2, 0);
	trans[2][15]	= settr(337,0,20,23,23,"((i>=4))", 0, 2, 0);
	trans[2][16]	= settr(338,0,20,1,0,"goto :b12", 0, 2, 0);
	trans[2][19]	= settr(341,0,20,1,0,"break", 0, 2, 0);
	trans[2][20]	= settr(342,0,21,24,24,"tcb[1].prio = 2", 1, 2, 0);
	trans[2][21]	= settr(343,0,29,25,25,"tcb[1].state = 1", 1, 2, 0);
	T = trans[ 2][29] = settr(351,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(351,0,27,0,0,"sub-sequence", 0, 2, 0);
	T = trans[2][27] = settr(349,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(349,0,22,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(349,0,25,0,0,"IF", 0, 2, 0);
	trans[2][22]	= settr(344,0,23,26,0,"((readyQueue[tcb[1].prio].tailIndex<5))", 1, 2, 0);
	trans[2][23]	= settr(345,0,24,27,27,"readyQueue[tcb[1].prio].tasks[readyQueue[tcb[1].prio].tailIndex] = 1", 1, 2, 0);
	trans[2][24]	= settr(346,0,30,28,28,"readyQueue[tcb[1].prio].tailIndex = (readyQueue[tcb[1].prio].tailIndex+1)", 1, 2, 0);
	trans[2][28]	= settr(350,0,30,1,0,".(goto)", 0, 2, 0);
	trans[2][25]	= settr(347,0,26,2,0,"else", 0, 2, 0);
	trans[2][26]	= settr(348,0,30,29,0,"assert(0)", 0, 2, 0);
	trans[2][30]	= settr(352,0,31,30,30,"tcb[2].prio = 2", 1, 2, 0);
	trans[2][31]	= settr(353,0,39,31,31,"tcb[2].state = 1", 1, 2, 0);
	T = trans[ 2][39] = settr(361,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(361,0,37,0,0,"sub-sequence", 0, 2, 0);
	T = trans[2][37] = settr(359,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(359,0,32,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(359,0,35,0,0,"IF", 0, 2, 0);
	trans[2][32]	= settr(354,0,33,32,0,"((readyQueue[tcb[2].prio].tailIndex<5))", 1, 2, 0);
	trans[2][33]	= settr(355,0,34,33,33,"readyQueue[tcb[2].prio].tasks[readyQueue[tcb[2].prio].tailIndex] = 2", 1, 2, 0);
	trans[2][34]	= settr(356,0,58,34,34,"readyQueue[tcb[2].prio].tailIndex = (readyQueue[tcb[2].prio].tailIndex+1)", 1, 2, 0);
	trans[2][38]	= settr(360,0,58,1,0,".(goto)", 0, 2, 0);
	trans[2][35]	= settr(357,0,36,2,0,"else", 0, 2, 0);
	trans[2][36]	= settr(358,0,58,35,0,"assert(0)", 0, 2, 0);
	T = trans[ 2][58] = settr(380,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(380,0,40,0,0,"sub-sequence", 0, 2, 0);
	trans[2][40]	= settr(362,0,53,36,36,"prio = 0", 0, 2, 0); /* m: 41 -> 0,53 */
	reached2[41] = 1;
	trans[2][41]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[2][42]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[2][54]	= settr(376,0,53,1,0,".(goto)", 0, 2, 0);
	T = trans[2][53] = settr(375,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(375,0,43,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(375,0,51,0,0,"DO", 0, 2, 0);
	trans[2][43]	= settr(365,0,49,37,0,"(((prio<4)&&!(found)))", 0, 2, 0);
	T = trans[2][49] = settr(371,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(371,0,44,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(371,0,47,0,0,"IF", 0, 2, 0);
	trans[2][44]	= settr(366,0,45,38,0,"((readyQueue[prio].tailIndex>0))", 1, 2, 0);
	trans[2][45]	= settr(367,0,46,39,39,"top_task = readyQueue[prio].tasks[0]", 1, 2, 0);
	trans[2][46]	= settr(368,0,53,40,40,"found = 1", 0, 2, 0);
	trans[2][50]	= settr(372,0,53,1,0,".(goto)", 0, 2, 0);
	trans[2][47]	= settr(369,0,48,2,0,"else", 0, 2, 0);
	trans[2][48]	= settr(370,0,53,41,41,"prio = (prio+1)", 0, 2, 0);
	trans[2][51]	= settr(373,0,56,42,42,"(((prio>=4)||found))", 0, 2, 0);
	trans[2][52]	= settr(374,0,56,1,0,"goto :b14", 0, 2, 0);
	trans[2][55]	= settr(377,0,56,1,0,"break", 0, 2, 0);
	trans[2][56]	= settr(378,0,57,43,43,"EP = top_task", 1, 2, 0);
	trans[2][57]	= settr(379,0,75,44,44,"topPrio = prio", 1, 2, 0);
	T = trans[ 2][75] = settr(397,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(397,0,59,0,0,"sub-sequence", 0, 2, 0);
	trans[2][59]	= settr(381,0,65,45,45,"idx = 0", 0, 2, 0);
	trans[2][66]	= settr(388,0,65,1,0,".(goto)", 0, 2, 0);
	T = trans[2][65] = settr(387,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(387,0,60,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(387,0,63,0,0,"DO", 0, 2, 0);
	trans[2][60]	= settr(382,0,61,46,0,"((idx<(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0);
	trans[2][61]	= settr(383,0,62,47,47,"readyQueue[topPrio].tasks[idx] = readyQueue[topPrio].tasks[(idx+1)]", 1, 2, 0);
	trans[2][62]	= settr(384,0,65,48,48,"idx = (idx+1)", 0, 2, 0);
	trans[2][63]	= settr(385,0,73,49,49,"((idx>=(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0);
	trans[2][64]	= settr(386,0,73,1,0,"goto :b15", 0, 2, 0);
	trans[2][67]	= settr(389,0,73,1,0,"break", 0, 2, 0);
	T = trans[2][73] = settr(395,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(395,0,68,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(395,0,71,0,0,"IF", 0, 2, 0);
	trans[2][68]	= settr(390,0,69,50,0,"((readyQueue[topPrio].tailIndex>0))", 1, 2, 0);
	trans[2][69]	= settr(391,0,70,51,51,"readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)] = 255", 1, 2, 0);
	trans[2][70]	= settr(392,0,76,52,52,"readyQueue[topPrio].tailIndex = (readyQueue[topPrio].tailIndex-1)", 1, 2, 0);
	trans[2][74]	= settr(396,0,76,1,0,".(goto)", 0, 2, 0);
	trans[2][71]	= settr(393,0,72,2,0,"else", 0, 2, 0);
	trans[2][72]	= settr(394,0,76,1,0,"(1)", 0, 2, 0);
	trans[2][76]	= settr(398,0,77,53,53,"tcb[EP].state = 4", 1, 2, 0);
	trans[2][77]	= settr(399,0,78,54,54,"(run Process1())", 0, 2, 0);
	trans[2][78]	= settr(400,0,79,55,55,"(run Process2())", 0, 2, 0);
	trans[2][79]	= settr(401,0,0,56,56,"-end-", 0, 3500, 0);

	/* proctype 1: Process2 */

	trans[1] = (Trans **) emalloc(131*sizeof(Trans *));

	trans[1][128]	= settr(320,0,127,1,0,".(goto)", 0, 2, 0);
	T = trans[1][127] = settr(319,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(319,0,63,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(319,0,126,0,0,"DO", 0, 2, 0);
	T = trans[ 1][63] = settr(255,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(255,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[1][1]	= settr(193,2,62,57,57,"((EP==2))", 1, 2, 0); /* m: 2 -> 62,0 */
	reached1[2] = 1;
	trans[1][2]	= settr(0,0,0,0,0,"printf('Process 2 is running\\n')",0,0,0);
	T = trans[ 1][62] = settr(254,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(254,0,3,0,0,"sub-sequence", 1, 2, 0);
	trans[1][3]	= settr(195,2,6,58,58,"interrupted_task = 0", 1, 2, 0);
	T = trans[ 1][6] = settr(198,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(198,0,4,0,0,"sub-sequence", 1, 2, 0);
	trans[1][4]	= settr(196,2,20,59,59,"int_save = int_ctrl_reg", 1, 2, 0); /* m: 5 -> 0,20 */
	reached1[5] = 1;
	trans[1][5]	= settr(0,0,0,0,0,"int_ctrl_reg = 1",0,0,0);
	trans[1][7]	= settr(0,0,0,0,0,"interrupted_task = EP",0,0,0);
	T = trans[1][20] = settr(212,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(212,2,8,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(212,2,18,0,0,"IF", 1, 2, 0);
	trans[1][8]	= settr(200,2,17,60,60,"(((interrupted_task>=1)&&(interrupted_task<=2)))", 1, 2, 0); /* m: 9 -> 17,0 */
	reached1[9] = 1;
	trans[1][9]	= settr(0,0,0,0,0,"tcb[interrupted_task].state = 1",0,0,0);
	T = trans[ 1][17] = settr(209,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(209,0,15,0,0,"sub-sequence", 1, 2, 0);
	T = trans[1][15] = settr(207,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(207,2,10,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(207,2,13,0,0,"IF", 1, 2, 0);
	trans[1][10]	= settr(202,2,40,61,61,"((readyQueue[tcb[interrupted_task].prio].tailIndex<5))", 1, 2, 0); /* m: 11 -> 40,0 */
	reached1[11] = 1;
	trans[1][11]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tasks[readyQueue[tcb[interrupted_task].prio].tailIndex] = interrupted_task",0,0,0);
	trans[1][12]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tailIndex = (readyQueue[tcb[interrupted_task].prio].tailIndex+1)",0,0,0);
	trans[1][16]	= settr(208,2,40,1,0,".(goto)", 1, 2, 0);
	trans[1][13]	= settr(205,2,14,2,0,"else", 1, 2, 0);
	trans[1][14]	= settr(206,2,40,62,0,"assert(0)", 1, 2, 0);
	trans[1][21]	= settr(213,2,40,1,0,".(goto)", 1, 2, 0);
	trans[1][18]	= settr(210,2,19,2,0,"else", 1, 2, 0);
	trans[1][19]	= settr(211,2,40,1,0,"(1)", 1, 2, 0);
	T = trans[ 1][40] = settr(232,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(232,0,22,0,0,"sub-sequence", 1, 2, 0);
	trans[1][22]	= settr(214,2,35,63,63,"prio = 0", 1, 2, 0); /* m: 23 -> 0,35 */
	reached1[23] = 1;
	trans[1][23]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[1][24]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[1][36]	= settr(228,2,35,1,0,".(goto)", 1, 2, 0);
	T = trans[1][35] = settr(227,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(227,2,25,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(227,2,33,0,0,"DO", 1, 2, 0);
	trans[1][25]	= settr(217,2,31,64,0,"(((prio<4)&&!(found)))", 1, 2, 0);
	T = trans[1][31] = settr(223,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(223,2,26,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(223,2,29,0,0,"IF", 1, 2, 0);
	trans[1][26]	= settr(218,2,35,65,65,"((readyQueue[prio].tailIndex>0))", 1, 2, 0); /* m: 27 -> 35,0 */
	reached1[27] = 1;
	trans[1][27]	= settr(0,0,0,0,0,"top_task = readyQueue[prio].tasks[0]",0,0,0);
	trans[1][28]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[1][32]	= settr(224,2,35,1,0,".(goto)", 1, 2, 0);
	trans[1][29]	= settr(221,2,30,2,0,"else", 1, 2, 0);
	trans[1][30]	= settr(222,2,35,66,66,"prio = (prio+1)", 1, 2, 0);
	trans[1][33]	= settr(225,2,57,67,67,"(((prio>=4)||found))", 1, 2, 0); /* m: 38 -> 57,0 */
	reached1[38] = 1;
	trans[1][34]	= settr(226,2,38,1,0,"goto :b8", 1, 2, 0); /* m: 38 -> 0,57 */
	reached1[38] = 1;
	trans[1][37]	= settr(229,2,38,1,0,"break", 1, 2, 0);
	trans[1][38]	= settr(230,2,57,68,68,"newTask = top_task", 1, 2, 0); /* m: 39 -> 0,57 */
	reached1[39] = 1;
	trans[1][39]	= settr(0,0,0,0,0,"topPrio = prio",0,0,0);
	T = trans[ 1][57] = settr(249,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(249,0,41,0,0,"sub-sequence", 1, 2, 0);
	trans[1][41]	= settr(233,2,47,69,69,"idx = 0", 1, 2, 0);
	trans[1][48]	= settr(240,2,47,1,0,".(goto)", 1, 2, 0);
	T = trans[1][47] = settr(239,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(239,2,42,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(239,2,45,0,0,"DO", 1, 2, 0);
	trans[1][42]	= settr(234,2,47,70,70,"((idx<(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0); /* m: 43 -> 47,0 */
	reached1[43] = 1;
	trans[1][43]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[idx] = readyQueue[topPrio].tasks[(idx+1)]",0,0,0);
	trans[1][44]	= settr(0,0,0,0,0,"idx = (idx+1)",0,0,0);
	trans[1][45]	= settr(237,2,55,71,71,"((idx>=(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0);
	trans[1][46]	= settr(238,2,55,1,0,"goto :b9", 1, 2, 0);
	trans[1][49]	= settr(241,2,55,1,0,"break", 1, 2, 0);
	T = trans[1][55] = settr(247,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(247,2,50,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(247,2,53,0,0,"IF", 1, 2, 0);
	trans[1][50]	= settr(242,2,61,72,72,"((readyQueue[topPrio].tailIndex>0))", 1, 2, 0); /* m: 51 -> 61,0 */
	reached1[51] = 1;
	trans[1][51]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)] = 255",0,0,0);
	trans[1][52]	= settr(0,0,0,0,0,"readyQueue[topPrio].tailIndex = (readyQueue[topPrio].tailIndex-1)",0,0,0);
	trans[1][56]	= settr(248,2,58,1,0,".(goto)", 1, 2, 0); /* m: 58 -> 0,61 */
	reached1[58] = 1;
	trans[1][53]	= settr(245,2,54,2,0,"else", 1, 2, 0);
	trans[1][54]	= settr(246,2,61,73,73,"(1)", 1, 2, 0); /* m: 58 -> 61,0 */
	reached1[58] = 1;
	trans[1][58]	= settr(250,2,61,74,74,"tcb[newTask].state = 4", 1, 2, 0); /* m: 59 -> 0,61 */
	reached1[59] = 1;
	trans[1][59]	= settr(0,0,0,0,0,"EP = newTask",0,0,0);
	T = trans[ 1][61] = settr(253,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(253,0,60,0,0,"sub-sequence", 1, 2, 0);
	trans[1][60]	= settr(252,0,127,75,75,"int_ctrl_reg = int_save", 1, 2, 0);
	T = trans[ 1][126] = settr(318,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(318,2,64,0,0,"ATOMIC", 1, 2, 0);
	trans[1][64]	= settr(256,2,125,76,76,"((EP==2))", 1, 2, 0); /* m: 65 -> 125,0 */
	reached1[65] = 1;
	trans[1][65]	= settr(0,0,0,0,0,"EP = 1",0,0,0);
	T = trans[ 1][125] = settr(317,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(317,0,66,0,0,"sub-sequence", 1, 2, 0);
	trans[1][66]	= settr(258,2,69,77,77,"interrupted_task = 0", 1, 2, 0);
	T = trans[ 1][69] = settr(261,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(261,0,67,0,0,"sub-sequence", 1, 2, 0);
	trans[1][67]	= settr(259,2,83,78,78,"int_save = int_ctrl_reg", 1, 2, 0); /* m: 68 -> 0,83 */
	reached1[68] = 1;
	trans[1][68]	= settr(0,0,0,0,0,"int_ctrl_reg = 1",0,0,0);
	trans[1][70]	= settr(0,0,0,0,0,"interrupted_task = EP",0,0,0);
	T = trans[1][83] = settr(275,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(275,2,71,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(275,2,81,0,0,"IF", 1, 2, 0);
	trans[1][71]	= settr(263,2,80,79,79,"(((interrupted_task>=1)&&(interrupted_task<=2)))", 1, 2, 0); /* m: 72 -> 80,0 */
	reached1[72] = 1;
	trans[1][72]	= settr(0,0,0,0,0,"tcb[interrupted_task].state = 1",0,0,0);
	T = trans[ 1][80] = settr(272,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(272,0,78,0,0,"sub-sequence", 1, 2, 0);
	T = trans[1][78] = settr(270,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(270,2,73,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(270,2,76,0,0,"IF", 1, 2, 0);
	trans[1][73]	= settr(265,2,103,80,80,"((readyQueue[tcb[interrupted_task].prio].tailIndex<5))", 1, 2, 0); /* m: 74 -> 103,0 */
	reached1[74] = 1;
	trans[1][74]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tasks[readyQueue[tcb[interrupted_task].prio].tailIndex] = interrupted_task",0,0,0);
	trans[1][75]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tailIndex = (readyQueue[tcb[interrupted_task].prio].tailIndex+1)",0,0,0);
	trans[1][79]	= settr(271,2,103,1,0,".(goto)", 1, 2, 0);
	trans[1][76]	= settr(268,2,77,2,0,"else", 1, 2, 0);
	trans[1][77]	= settr(269,2,103,81,0,"assert(0)", 1, 2, 0);
	trans[1][84]	= settr(276,2,103,1,0,".(goto)", 1, 2, 0);
	trans[1][81]	= settr(273,2,82,2,0,"else", 1, 2, 0);
	trans[1][82]	= settr(274,2,103,1,0,"(1)", 1, 2, 0);
	T = trans[ 1][103] = settr(295,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(295,0,85,0,0,"sub-sequence", 1, 2, 0);
	trans[1][85]	= settr(277,2,98,82,82,"prio = 0", 1, 2, 0); /* m: 86 -> 0,98 */
	reached1[86] = 1;
	trans[1][86]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[1][87]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[1][99]	= settr(291,2,98,1,0,".(goto)", 1, 2, 0);
	T = trans[1][98] = settr(290,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(290,2,88,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(290,2,96,0,0,"DO", 1, 2, 0);
	trans[1][88]	= settr(280,2,94,83,0,"(((prio<4)&&!(found)))", 1, 2, 0);
	T = trans[1][94] = settr(286,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(286,2,89,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(286,2,92,0,0,"IF", 1, 2, 0);
	trans[1][89]	= settr(281,2,98,84,84,"((readyQueue[prio].tailIndex>0))", 1, 2, 0); /* m: 90 -> 98,0 */
	reached1[90] = 1;
	trans[1][90]	= settr(0,0,0,0,0,"top_task = readyQueue[prio].tasks[0]",0,0,0);
	trans[1][91]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[1][95]	= settr(287,2,98,1,0,".(goto)", 1, 2, 0);
	trans[1][92]	= settr(284,2,93,2,0,"else", 1, 2, 0);
	trans[1][93]	= settr(285,2,98,85,85,"prio = (prio+1)", 1, 2, 0);
	trans[1][96]	= settr(288,2,120,86,86,"(((prio>=4)||found))", 1, 2, 0); /* m: 101 -> 120,0 */
	reached1[101] = 1;
	trans[1][97]	= settr(289,2,101,1,0,"goto :b10", 1, 2, 0); /* m: 101 -> 0,120 */
	reached1[101] = 1;
	trans[1][100]	= settr(292,2,101,1,0,"break", 1, 2, 0);
	trans[1][101]	= settr(293,2,120,87,87,"newTask = top_task", 1, 2, 0); /* m: 102 -> 0,120 */
	reached1[102] = 1;
	trans[1][102]	= settr(0,0,0,0,0,"topPrio = prio",0,0,0);
	T = trans[ 1][120] = settr(312,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(312,0,104,0,0,"sub-sequence", 1, 2, 0);
	trans[1][104]	= settr(296,2,110,88,88,"idx = 0", 1, 2, 0);
	trans[1][111]	= settr(303,2,110,1,0,".(goto)", 1, 2, 0);
	T = trans[1][110] = settr(302,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(302,2,105,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(302,2,108,0,0,"DO", 1, 2, 0);
	trans[1][105]	= settr(297,2,110,89,89,"((idx<(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0); /* m: 106 -> 110,0 */
	reached1[106] = 1;
	trans[1][106]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[idx] = readyQueue[topPrio].tasks[(idx+1)]",0,0,0);
	trans[1][107]	= settr(0,0,0,0,0,"idx = (idx+1)",0,0,0);
	trans[1][108]	= settr(300,2,118,90,90,"((idx>=(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0);
	trans[1][109]	= settr(301,2,118,1,0,"goto :b11", 1, 2, 0);
	trans[1][112]	= settr(304,2,118,1,0,"break", 1, 2, 0);
	T = trans[1][118] = settr(310,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(310,2,113,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(310,2,116,0,0,"IF", 1, 2, 0);
	trans[1][113]	= settr(305,2,124,91,91,"((readyQueue[topPrio].tailIndex>0))", 1, 2, 0); /* m: 114 -> 124,0 */
	reached1[114] = 1;
	trans[1][114]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)] = 255",0,0,0);
	trans[1][115]	= settr(0,0,0,0,0,"readyQueue[topPrio].tailIndex = (readyQueue[topPrio].tailIndex-1)",0,0,0);
	trans[1][119]	= settr(311,2,121,1,0,".(goto)", 1, 2, 0); /* m: 121 -> 0,124 */
	reached1[121] = 1;
	trans[1][116]	= settr(308,2,117,2,0,"else", 1, 2, 0);
	trans[1][117]	= settr(309,2,124,92,92,"(1)", 1, 2, 0); /* m: 121 -> 124,0 */
	reached1[121] = 1;
	trans[1][121]	= settr(313,2,124,93,93,"tcb[newTask].state = 4", 1, 2, 0); /* m: 122 -> 0,124 */
	reached1[122] = 1;
	trans[1][122]	= settr(0,0,0,0,0,"EP = newTask",0,0,0);
	T = trans[ 1][124] = settr(316,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(316,0,123,0,0,"sub-sequence", 1, 2, 0);
	trans[1][123]	= settr(315,0,127,94,94,"int_ctrl_reg = int_save", 1, 2, 0);
	trans[1][129]	= settr(321,0,130,1,0,"break", 0, 2, 0);
	trans[1][130]	= settr(322,0,0,95,95,"-end-", 0, 3500, 0);

	/* proctype 0: Process1 */

	trans[0] = (Trans **) emalloc(194*sizeof(Trans *));

	trans[0][191]	= settr(190,0,190,1,0,".(goto)", 0, 2, 0);
	T = trans[0][190] = settr(189,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(189,0,63,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(189,0,126,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(189,0,189,0,0,"DO", 0, 2, 0);
	T = trans[ 0][63] = settr(62,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(62,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[0][1]	= settr(0,2,62,96,96,"((EP==1))", 1, 2, 0); /* m: 2 -> 62,0 */
	reached0[2] = 1;
	trans[0][2]	= settr(0,0,0,0,0,"printf('Process 1 is running\\n')",0,0,0);
	T = trans[ 0][62] = settr(61,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(61,0,3,0,0,"sub-sequence", 1, 2, 0);
	trans[0][3]	= settr(2,2,6,97,97,"interrupted_task = 0", 1, 2, 0);
	T = trans[ 0][6] = settr(5,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(5,0,4,0,0,"sub-sequence", 1, 2, 0);
	trans[0][4]	= settr(3,2,20,98,98,"int_save = int_ctrl_reg", 1, 2, 0); /* m: 5 -> 0,20 */
	reached0[5] = 1;
	trans[0][5]	= settr(0,0,0,0,0,"int_ctrl_reg = 1",0,0,0);
	trans[0][7]	= settr(0,0,0,0,0,"interrupted_task = EP",0,0,0);
	T = trans[0][20] = settr(19,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(19,2,8,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(19,2,18,0,0,"IF", 1, 2, 0);
	trans[0][8]	= settr(7,2,17,99,99,"(((interrupted_task>=1)&&(interrupted_task<=2)))", 1, 2, 0); /* m: 9 -> 17,0 */
	reached0[9] = 1;
	trans[0][9]	= settr(0,0,0,0,0,"tcb[interrupted_task].state = 1",0,0,0);
	T = trans[ 0][17] = settr(16,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(16,0,15,0,0,"sub-sequence", 1, 2, 0);
	T = trans[0][15] = settr(14,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(14,2,10,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(14,2,13,0,0,"IF", 1, 2, 0);
	trans[0][10]	= settr(9,2,40,100,100,"((readyQueue[tcb[interrupted_task].prio].tailIndex<5))", 1, 2, 0); /* m: 11 -> 40,0 */
	reached0[11] = 1;
	trans[0][11]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tasks[readyQueue[tcb[interrupted_task].prio].tailIndex] = interrupted_task",0,0,0);
	trans[0][12]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tailIndex = (readyQueue[tcb[interrupted_task].prio].tailIndex+1)",0,0,0);
	trans[0][16]	= settr(15,2,40,1,0,".(goto)", 1, 2, 0);
	trans[0][13]	= settr(12,2,14,2,0,"else", 1, 2, 0);
	trans[0][14]	= settr(13,2,40,101,0,"assert(0)", 1, 2, 0);
	trans[0][21]	= settr(20,2,40,1,0,".(goto)", 1, 2, 0);
	trans[0][18]	= settr(17,2,19,2,0,"else", 1, 2, 0);
	trans[0][19]	= settr(18,2,40,1,0,"(1)", 1, 2, 0);
	T = trans[ 0][40] = settr(39,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(39,0,22,0,0,"sub-sequence", 1, 2, 0);
	trans[0][22]	= settr(21,2,35,102,102,"prio = 0", 1, 2, 0); /* m: 23 -> 0,35 */
	reached0[23] = 1;
	trans[0][23]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[0][24]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[0][36]	= settr(35,2,35,1,0,".(goto)", 1, 2, 0);
	T = trans[0][35] = settr(34,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(34,2,25,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(34,2,33,0,0,"DO", 1, 2, 0);
	trans[0][25]	= settr(24,2,31,103,0,"(((prio<4)&&!(found)))", 1, 2, 0);
	T = trans[0][31] = settr(30,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(30,2,26,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(30,2,29,0,0,"IF", 1, 2, 0);
	trans[0][26]	= settr(25,2,35,104,104,"((readyQueue[prio].tailIndex>0))", 1, 2, 0); /* m: 27 -> 35,0 */
	reached0[27] = 1;
	trans[0][27]	= settr(0,0,0,0,0,"top_task = readyQueue[prio].tasks[0]",0,0,0);
	trans[0][28]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[0][32]	= settr(31,2,35,1,0,".(goto)", 1, 2, 0);
	trans[0][29]	= settr(28,2,30,2,0,"else", 1, 2, 0);
	trans[0][30]	= settr(29,2,35,105,105,"prio = (prio+1)", 1, 2, 0);
	trans[0][33]	= settr(32,2,57,106,106,"(((prio>=4)||found))", 1, 2, 0); /* m: 38 -> 57,0 */
	reached0[38] = 1;
	trans[0][34]	= settr(33,2,38,1,0,"goto :b1", 1, 2, 0); /* m: 38 -> 0,57 */
	reached0[38] = 1;
	trans[0][37]	= settr(36,2,38,1,0,"break", 1, 2, 0);
	trans[0][38]	= settr(37,2,57,107,107,"newTask = top_task", 1, 2, 0); /* m: 39 -> 0,57 */
	reached0[39] = 1;
	trans[0][39]	= settr(0,0,0,0,0,"topPrio = prio",0,0,0);
	T = trans[ 0][57] = settr(56,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(56,0,41,0,0,"sub-sequence", 1, 2, 0);
	trans[0][41]	= settr(40,2,47,108,108,"idx = 0", 1, 2, 0);
	trans[0][48]	= settr(47,2,47,1,0,".(goto)", 1, 2, 0);
	T = trans[0][47] = settr(46,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(46,2,42,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(46,2,45,0,0,"DO", 1, 2, 0);
	trans[0][42]	= settr(41,2,47,109,109,"((idx<(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0); /* m: 43 -> 47,0 */
	reached0[43] = 1;
	trans[0][43]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[idx] = readyQueue[topPrio].tasks[(idx+1)]",0,0,0);
	trans[0][44]	= settr(0,0,0,0,0,"idx = (idx+1)",0,0,0);
	trans[0][45]	= settr(44,2,55,110,110,"((idx>=(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0);
	trans[0][46]	= settr(45,2,55,1,0,"goto :b2", 1, 2, 0);
	trans[0][49]	= settr(48,2,55,1,0,"break", 1, 2, 0);
	T = trans[0][55] = settr(54,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(54,2,50,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(54,2,53,0,0,"IF", 1, 2, 0);
	trans[0][50]	= settr(49,2,61,111,111,"((readyQueue[topPrio].tailIndex>0))", 1, 2, 0); /* m: 51 -> 61,0 */
	reached0[51] = 1;
	trans[0][51]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)] = 255",0,0,0);
	trans[0][52]	= settr(0,0,0,0,0,"readyQueue[topPrio].tailIndex = (readyQueue[topPrio].tailIndex-1)",0,0,0);
	trans[0][56]	= settr(55,2,58,1,0,".(goto)", 1, 2, 0); /* m: 58 -> 0,61 */
	reached0[58] = 1;
	trans[0][53]	= settr(52,2,54,2,0,"else", 1, 2, 0);
	trans[0][54]	= settr(53,2,61,112,112,"(1)", 1, 2, 0); /* m: 58 -> 61,0 */
	reached0[58] = 1;
	trans[0][58]	= settr(57,2,61,113,113,"tcb[newTask].state = 4", 1, 2, 0); /* m: 59 -> 0,61 */
	reached0[59] = 1;
	trans[0][59]	= settr(0,0,0,0,0,"EP = newTask",0,0,0);
	T = trans[ 0][61] = settr(60,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(60,0,60,0,0,"sub-sequence", 1, 2, 0);
	trans[0][60]	= settr(59,0,190,114,114,"int_ctrl_reg = int_save", 1, 2, 0);
	T = trans[ 0][126] = settr(125,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(125,2,64,0,0,"ATOMIC", 1, 2, 0);
	trans[0][64]	= settr(63,2,125,115,115,"((EP==1))", 1, 2, 0); /* m: 65 -> 125,0 */
	reached0[65] = 1;
	trans[0][65]	= settr(0,0,0,0,0,"assert((EP==1))",0,0,0);
	T = trans[ 0][125] = settr(124,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(124,0,66,0,0,"sub-sequence", 1, 2, 0);
	trans[0][66]	= settr(65,2,69,116,116,"interrupted_task = 0", 1, 2, 0);
	T = trans[ 0][69] = settr(68,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(68,0,67,0,0,"sub-sequence", 1, 2, 0);
	trans[0][67]	= settr(66,2,83,117,117,"int_save = int_ctrl_reg", 1, 2, 0); /* m: 68 -> 0,83 */
	reached0[68] = 1;
	trans[0][68]	= settr(0,0,0,0,0,"int_ctrl_reg = 1",0,0,0);
	trans[0][70]	= settr(0,0,0,0,0,"interrupted_task = EP",0,0,0);
	T = trans[0][83] = settr(82,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(82,2,71,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(82,2,81,0,0,"IF", 1, 2, 0);
	trans[0][71]	= settr(70,2,80,118,118,"(((interrupted_task>=1)&&(interrupted_task<=2)))", 1, 2, 0); /* m: 72 -> 80,0 */
	reached0[72] = 1;
	trans[0][72]	= settr(0,0,0,0,0,"tcb[interrupted_task].state = 1",0,0,0);
	T = trans[ 0][80] = settr(79,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(79,0,78,0,0,"sub-sequence", 1, 2, 0);
	T = trans[0][78] = settr(77,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(77,2,73,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(77,2,76,0,0,"IF", 1, 2, 0);
	trans[0][73]	= settr(72,2,103,119,119,"((readyQueue[tcb[interrupted_task].prio].tailIndex<5))", 1, 2, 0); /* m: 74 -> 103,0 */
	reached0[74] = 1;
	trans[0][74]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tasks[readyQueue[tcb[interrupted_task].prio].tailIndex] = interrupted_task",0,0,0);
	trans[0][75]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tailIndex = (readyQueue[tcb[interrupted_task].prio].tailIndex+1)",0,0,0);
	trans[0][79]	= settr(78,2,103,1,0,".(goto)", 1, 2, 0);
	trans[0][76]	= settr(75,2,77,2,0,"else", 1, 2, 0);
	trans[0][77]	= settr(76,2,103,120,0,"assert(0)", 1, 2, 0);
	trans[0][84]	= settr(83,2,103,1,0,".(goto)", 1, 2, 0);
	trans[0][81]	= settr(80,2,82,2,0,"else", 1, 2, 0);
	trans[0][82]	= settr(81,2,103,1,0,"(1)", 1, 2, 0);
	T = trans[ 0][103] = settr(102,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(102,0,85,0,0,"sub-sequence", 1, 2, 0);
	trans[0][85]	= settr(84,2,98,121,121,"prio = 0", 1, 2, 0); /* m: 86 -> 0,98 */
	reached0[86] = 1;
	trans[0][86]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[0][87]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[0][99]	= settr(98,2,98,1,0,".(goto)", 1, 2, 0);
	T = trans[0][98] = settr(97,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(97,2,88,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(97,2,96,0,0,"DO", 1, 2, 0);
	trans[0][88]	= settr(87,2,94,122,0,"(((prio<4)&&!(found)))", 1, 2, 0);
	T = trans[0][94] = settr(93,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(93,2,89,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(93,2,92,0,0,"IF", 1, 2, 0);
	trans[0][89]	= settr(88,2,98,123,123,"((readyQueue[prio].tailIndex>0))", 1, 2, 0); /* m: 90 -> 98,0 */
	reached0[90] = 1;
	trans[0][90]	= settr(0,0,0,0,0,"top_task = readyQueue[prio].tasks[0]",0,0,0);
	trans[0][91]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[0][95]	= settr(94,2,98,1,0,".(goto)", 1, 2, 0);
	trans[0][92]	= settr(91,2,93,2,0,"else", 1, 2, 0);
	trans[0][93]	= settr(92,2,98,124,124,"prio = (prio+1)", 1, 2, 0);
	trans[0][96]	= settr(95,2,120,125,125,"(((prio>=4)||found))", 1, 2, 0); /* m: 101 -> 120,0 */
	reached0[101] = 1;
	trans[0][97]	= settr(96,2,101,1,0,"goto :b3", 1, 2, 0); /* m: 101 -> 0,120 */
	reached0[101] = 1;
	trans[0][100]	= settr(99,2,101,1,0,"break", 1, 2, 0);
	trans[0][101]	= settr(100,2,120,126,126,"newTask = top_task", 1, 2, 0); /* m: 102 -> 0,120 */
	reached0[102] = 1;
	trans[0][102]	= settr(0,0,0,0,0,"topPrio = prio",0,0,0);
	T = trans[ 0][120] = settr(119,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(119,0,104,0,0,"sub-sequence", 1, 2, 0);
	trans[0][104]	= settr(103,2,110,127,127,"idx = 0", 1, 2, 0);
	trans[0][111]	= settr(110,2,110,1,0,".(goto)", 1, 2, 0);
	T = trans[0][110] = settr(109,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(109,2,105,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(109,2,108,0,0,"DO", 1, 2, 0);
	trans[0][105]	= settr(104,2,110,128,128,"((idx<(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0); /* m: 106 -> 110,0 */
	reached0[106] = 1;
	trans[0][106]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[idx] = readyQueue[topPrio].tasks[(idx+1)]",0,0,0);
	trans[0][107]	= settr(0,0,0,0,0,"idx = (idx+1)",0,0,0);
	trans[0][108]	= settr(107,2,118,129,129,"((idx>=(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0);
	trans[0][109]	= settr(108,2,118,1,0,"goto :b4", 1, 2, 0);
	trans[0][112]	= settr(111,2,118,1,0,"break", 1, 2, 0);
	T = trans[0][118] = settr(117,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(117,2,113,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(117,2,116,0,0,"IF", 1, 2, 0);
	trans[0][113]	= settr(112,2,124,130,130,"((readyQueue[topPrio].tailIndex>0))", 1, 2, 0); /* m: 114 -> 124,0 */
	reached0[114] = 1;
	trans[0][114]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)] = 255",0,0,0);
	trans[0][115]	= settr(0,0,0,0,0,"readyQueue[topPrio].tailIndex = (readyQueue[topPrio].tailIndex-1)",0,0,0);
	trans[0][119]	= settr(118,2,121,1,0,".(goto)", 1, 2, 0); /* m: 121 -> 0,124 */
	reached0[121] = 1;
	trans[0][116]	= settr(115,2,117,2,0,"else", 1, 2, 0);
	trans[0][117]	= settr(116,2,124,131,131,"(1)", 1, 2, 0); /* m: 121 -> 124,0 */
	reached0[121] = 1;
	trans[0][121]	= settr(120,2,124,132,132,"tcb[newTask].state = 4", 1, 2, 0); /* m: 122 -> 0,124 */
	reached0[122] = 1;
	trans[0][122]	= settr(0,0,0,0,0,"EP = newTask",0,0,0);
	T = trans[ 0][124] = settr(123,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(123,0,123,0,0,"sub-sequence", 1, 2, 0);
	trans[0][123]	= settr(122,0,190,133,133,"int_ctrl_reg = int_save", 1, 2, 0);
	T = trans[ 0][189] = settr(188,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(188,2,127,0,0,"ATOMIC", 1, 2, 0);
	trans[0][127]	= settr(126,2,188,134,134,"((EP==1))", 1, 2, 0); /* m: 128 -> 188,0 */
	reached0[128] = 1;
	trans[0][128]	= settr(0,0,0,0,0,"EP = 2",0,0,0);
	T = trans[ 0][188] = settr(187,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(187,0,129,0,0,"sub-sequence", 1, 2, 0);
	trans[0][129]	= settr(128,2,132,135,135,"interrupted_task = 0", 1, 2, 0);
	T = trans[ 0][132] = settr(131,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(131,0,130,0,0,"sub-sequence", 1, 2, 0);
	trans[0][130]	= settr(129,2,146,136,136,"int_save = int_ctrl_reg", 1, 2, 0); /* m: 131 -> 0,146 */
	reached0[131] = 1;
	trans[0][131]	= settr(0,0,0,0,0,"int_ctrl_reg = 1",0,0,0);
	trans[0][133]	= settr(0,0,0,0,0,"interrupted_task = EP",0,0,0);
	T = trans[0][146] = settr(145,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(145,2,134,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(145,2,144,0,0,"IF", 1, 2, 0);
	trans[0][134]	= settr(133,2,143,137,137,"(((interrupted_task>=1)&&(interrupted_task<=2)))", 1, 2, 0); /* m: 135 -> 143,0 */
	reached0[135] = 1;
	trans[0][135]	= settr(0,0,0,0,0,"tcb[interrupted_task].state = 1",0,0,0);
	T = trans[ 0][143] = settr(142,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(142,0,141,0,0,"sub-sequence", 1, 2, 0);
	T = trans[0][141] = settr(140,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(140,2,136,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(140,2,139,0,0,"IF", 1, 2, 0);
	trans[0][136]	= settr(135,2,166,138,138,"((readyQueue[tcb[interrupted_task].prio].tailIndex<5))", 1, 2, 0); /* m: 137 -> 166,0 */
	reached0[137] = 1;
	trans[0][137]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tasks[readyQueue[tcb[interrupted_task].prio].tailIndex] = interrupted_task",0,0,0);
	trans[0][138]	= settr(0,0,0,0,0,"readyQueue[tcb[interrupted_task].prio].tailIndex = (readyQueue[tcb[interrupted_task].prio].tailIndex+1)",0,0,0);
	trans[0][142]	= settr(141,2,166,1,0,".(goto)", 1, 2, 0);
	trans[0][139]	= settr(138,2,140,2,0,"else", 1, 2, 0);
	trans[0][140]	= settr(139,2,166,139,0,"assert(0)", 1, 2, 0);
	trans[0][147]	= settr(146,2,166,1,0,".(goto)", 1, 2, 0);
	trans[0][144]	= settr(143,2,145,2,0,"else", 1, 2, 0);
	trans[0][145]	= settr(144,2,166,1,0,"(1)", 1, 2, 0);
	T = trans[ 0][166] = settr(165,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(165,0,148,0,0,"sub-sequence", 1, 2, 0);
	trans[0][148]	= settr(147,2,161,140,140,"prio = 0", 1, 2, 0); /* m: 149 -> 0,161 */
	reached0[149] = 1;
	trans[0][149]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[0][150]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[0][162]	= settr(161,2,161,1,0,".(goto)", 1, 2, 0);
	T = trans[0][161] = settr(160,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(160,2,151,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(160,2,159,0,0,"DO", 1, 2, 0);
	trans[0][151]	= settr(150,2,157,141,0,"(((prio<4)&&!(found)))", 1, 2, 0);
	T = trans[0][157] = settr(156,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(156,2,152,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(156,2,155,0,0,"IF", 1, 2, 0);
	trans[0][152]	= settr(151,2,161,142,142,"((readyQueue[prio].tailIndex>0))", 1, 2, 0); /* m: 153 -> 161,0 */
	reached0[153] = 1;
	trans[0][153]	= settr(0,0,0,0,0,"top_task = readyQueue[prio].tasks[0]",0,0,0);
	trans[0][154]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[0][158]	= settr(157,2,161,1,0,".(goto)", 1, 2, 0);
	trans[0][155]	= settr(154,2,156,2,0,"else", 1, 2, 0);
	trans[0][156]	= settr(155,2,161,143,143,"prio = (prio+1)", 1, 2, 0);
	trans[0][159]	= settr(158,2,183,144,144,"(((prio>=4)||found))", 1, 2, 0); /* m: 164 -> 183,0 */
	reached0[164] = 1;
	trans[0][160]	= settr(159,2,164,1,0,"goto :b5", 1, 2, 0); /* m: 164 -> 0,183 */
	reached0[164] = 1;
	trans[0][163]	= settr(162,2,164,1,0,"break", 1, 2, 0);
	trans[0][164]	= settr(163,2,183,145,145,"newTask = top_task", 1, 2, 0); /* m: 165 -> 0,183 */
	reached0[165] = 1;
	trans[0][165]	= settr(0,0,0,0,0,"topPrio = prio",0,0,0);
	T = trans[ 0][183] = settr(182,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(182,0,167,0,0,"sub-sequence", 1, 2, 0);
	trans[0][167]	= settr(166,2,173,146,146,"idx = 0", 1, 2, 0);
	trans[0][174]	= settr(173,2,173,1,0,".(goto)", 1, 2, 0);
	T = trans[0][173] = settr(172,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(172,2,168,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(172,2,171,0,0,"DO", 1, 2, 0);
	trans[0][168]	= settr(167,2,173,147,147,"((idx<(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0); /* m: 169 -> 173,0 */
	reached0[169] = 1;
	trans[0][169]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[idx] = readyQueue[topPrio].tasks[(idx+1)]",0,0,0);
	trans[0][170]	= settr(0,0,0,0,0,"idx = (idx+1)",0,0,0);
	trans[0][171]	= settr(170,2,181,148,148,"((idx>=(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0);
	trans[0][172]	= settr(171,2,181,1,0,"goto :b6", 1, 2, 0);
	trans[0][175]	= settr(174,2,181,1,0,"break", 1, 2, 0);
	T = trans[0][181] = settr(180,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(180,2,176,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(180,2,179,0,0,"IF", 1, 2, 0);
	trans[0][176]	= settr(175,2,187,149,149,"((readyQueue[topPrio].tailIndex>0))", 1, 2, 0); /* m: 177 -> 187,0 */
	reached0[177] = 1;
	trans[0][177]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)] = 255",0,0,0);
	trans[0][178]	= settr(0,0,0,0,0,"readyQueue[topPrio].tailIndex = (readyQueue[topPrio].tailIndex-1)",0,0,0);
	trans[0][182]	= settr(181,2,184,1,0,".(goto)", 1, 2, 0); /* m: 184 -> 0,187 */
	reached0[184] = 1;
	trans[0][179]	= settr(178,2,180,2,0,"else", 1, 2, 0);
	trans[0][180]	= settr(179,2,187,150,150,"(1)", 1, 2, 0); /* m: 184 -> 187,0 */
	reached0[184] = 1;
	trans[0][184]	= settr(183,2,187,151,151,"tcb[newTask].state = 4", 1, 2, 0); /* m: 185 -> 0,187 */
	reached0[185] = 1;
	trans[0][185]	= settr(0,0,0,0,0,"EP = newTask",0,0,0);
	T = trans[ 0][187] = settr(186,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(186,0,186,0,0,"sub-sequence", 1, 2, 0);
	trans[0][186]	= settr(185,0,190,152,152,"int_ctrl_reg = int_save", 1, 2, 0);
	trans[0][192]	= settr(191,0,193,1,0,"break", 0, 2, 0);
	trans[0][193]	= settr(192,0,0,153,153,"-end-", 0, 3500, 0);
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
