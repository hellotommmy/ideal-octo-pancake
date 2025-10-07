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

	trans = (Trans ***) emalloc(4*sizeof(Trans **));

	/* proctype 2: :init: */

	trans[2] = (Trans **) emalloc(27*sizeof(Trans *));

	trans[2][1]	= settr(1033,0,2,3,3,"tcb[1].prio = 10", 1, 2, 0);
	trans[2][2]	= settr(1034,0,3,4,4,"tcb[1].state = 1", 1, 2, 0);
	trans[2][3]	= settr(1035,0,4,5,5,"tcb[2].prio = 20", 1, 2, 0);
	trans[2][4]	= settr(1036,0,23,6,6,"tcb[2].state = 1", 1, 2, 0);
	T = trans[ 2][23] = settr(1055,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1055,0,21,0,0,"sub-sequence", 0, 2, 0);
	T = trans[2][21] = settr(1053,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1053,0,5,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1053,0,7,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1053,0,9,0,0,"IF", 0, 2, 0);
	trans[2][5]	= settr(1037,0,6,7,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))", 1, 2, 0);
	trans[2][6]	= settr(1038,0,24,8,8,"EP = 1", 1, 2, 0);
	trans[2][22]	= settr(1054,0,24,1,0,".(goto)", 0, 2, 0);
	trans[2][7]	= settr(1039,0,8,9,0,"((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))", 1, 2, 0);
	trans[2][8]	= settr(1040,0,24,10,10,"EP = 2", 1, 2, 0);
	trans[2][9]	= settr(1041,0,19,11,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))", 1, 2, 0);
	T = trans[2][19] = settr(1051,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1051,0,10,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1051,0,12,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1051,0,14,0,0,"IF", 0, 2, 0);
	trans[2][10]	= settr(1042,0,11,12,0,"((tcb[1].prio<tcb[2].prio))", 1, 2, 0);
	trans[2][11]	= settr(1043,0,24,13,13,"EP = 1", 1, 2, 0);
	trans[2][20]	= settr(1052,0,24,1,0,".(goto)", 0, 2, 0);
	trans[2][12]	= settr(1044,0,13,14,0,"((tcb[1].prio>tcb[2].prio))", 1, 2, 0);
	trans[2][13]	= settr(1045,0,24,15,15,"EP = 2", 1, 2, 0);
	trans[2][14]	= settr(1046,0,17,16,0,"((tcb[1].prio==tcb[2].prio))", 1, 2, 0);
	T = trans[2][17] = settr(1049,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1049,0,15,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1049,0,16,0,0,"IF", 0, 2, 0);
	trans[2][15]	= settr(1047,0,24,17,17,"EP = 1", 1, 2, 0);
	trans[2][18]	= settr(1050,0,24,1,0,".(goto)", 0, 2, 0);
	trans[2][16]	= settr(1048,0,24,18,18,"EP = 2", 1, 2, 0);
	trans[2][24]	= settr(1056,0,25,19,19,"(run Process1())", 0, 2, 0);
	trans[2][25]	= settr(1057,0,26,20,20,"(run Process2())", 0, 2, 0);
	trans[2][26]	= settr(1058,0,0,21,21,"-end-", 0, 3500, 0);

	/* proctype 1: Process2 */

	trans[1] = (Trans **) emalloc(415*sizeof(Trans *));

	trans[1][412]	= settr(1030,0,411,1,0,".(goto)", 0, 2, 0);
	T = trans[1][411] = settr(1029,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1029,0,1,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1029,0,206,0,0,"DO", 0, 2, 0);
	trans[1][1]	= settr(619,0,2,22,0,"((EP==2))", 1, 2, 0);
	trans[1][2]	= settr(620,0,204,23,0,"printf('Process 2 is running\\n')", 0, 2, 0);
	T = trans[1][204] = settr(822,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(822,0,3,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(822,0,4,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(822,0,24,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(822,0,44,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(822,0,64,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(822,0,84,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(822,0,104,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(822,0,124,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(822,0,144,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(822,0,164,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(822,0,184,0,0,"IF", 0, 2, 0);
	trans[1][3]	= settr(621,0,411,1,0,"(1)", 0, 2, 0);
	trans[1][205]	= settr(823,0,411,1,0,".(goto)", 0, 2, 0);
	trans[1][4]	= settr(622,0,23,24,24,"tcb[1].prio = 0", 1, 2, 0);
	T = trans[ 1][23] = settr(641,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(641,0,21,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][21] = settr(639,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(639,0,5,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(639,0,7,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(639,0,9,0,0,"IF", 0, 2, 0);
	trans[1][5]	= settr(623,0,6,25,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))", 1, 2, 0);
	trans[1][6]	= settr(624,0,411,26,26,"EP = 1", 1, 2, 0);
	trans[1][22]	= settr(640,0,411,1,0,".(goto)", 0, 2, 0);
	trans[1][7]	= settr(625,0,8,27,0,"((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))", 1, 2, 0);
	trans[1][8]	= settr(626,0,411,28,28,"EP = 2", 1, 2, 0);
	trans[1][9]	= settr(627,0,19,29,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))", 1, 2, 0);
	T = trans[1][19] = settr(637,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(637,0,10,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(637,0,12,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(637,0,14,0,0,"IF", 0, 2, 0);
	trans[1][10]	= settr(628,0,11,30,0,"((tcb[1].prio<tcb[2].prio))", 1, 2, 0);
	trans[1][11]	= settr(629,0,411,31,31,"EP = 1", 1, 2, 0);
	trans[1][20]	= settr(638,0,411,1,0,".(goto)", 0, 2, 0);
	trans[1][12]	= settr(630,0,13,32,0,"((tcb[1].prio>tcb[2].prio))", 1, 2, 0);
	trans[1][13]	= settr(631,0,411,33,33,"EP = 2", 1, 2, 0);
	trans[1][14]	= settr(632,0,17,34,0,"((tcb[1].prio==tcb[2].prio))", 1, 2, 0);
	T = trans[1][17] = settr(635,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(635,0,15,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(635,0,16,0,0,"IF", 0, 2, 0);
	trans[1][15]	= settr(633,0,411,35,35,"EP = 1", 1, 2, 0);
	trans[1][18]	= settr(636,0,411,1,0,".(goto)", 0, 2, 0);
	trans[1][16]	= settr(634,0,411,36,36,"EP = 2", 1, 2, 0);
	trans[1][24]	= settr(642,0,43,37,37,"tcb[1].prio = 15", 1, 2, 0);
	T = trans[ 1][43] = settr(661,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(661,0,41,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][41] = settr(659,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(659,0,25,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(659,0,27,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(659,0,29,0,0,"IF", 0, 2, 0);
	trans[1][25]	= settr(643,0,26,38,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))", 1, 2, 0);
	trans[1][26]	= settr(644,0,411,39,39,"EP = 1", 1, 2, 0);
	trans[1][42]	= settr(660,0,411,1,0,".(goto)", 0, 2, 0);
	trans[1][27]	= settr(645,0,28,40,0,"((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))", 1, 2, 0);
	trans[1][28]	= settr(646,0,411,41,41,"EP = 2", 1, 2, 0);
	trans[1][29]	= settr(647,0,39,42,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))", 1, 2, 0);
	T = trans[1][39] = settr(657,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(657,0,30,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(657,0,32,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(657,0,34,0,0,"IF", 0, 2, 0);
	trans[1][30]	= settr(648,0,31,43,0,"((tcb[1].prio<tcb[2].prio))", 1, 2, 0);
	trans[1][31]	= settr(649,0,411,44,44,"EP = 1", 1, 2, 0);
	trans[1][40]	= settr(658,0,411,1,0,".(goto)", 0, 2, 0);
	trans[1][32]	= settr(650,0,33,45,0,"((tcb[1].prio>tcb[2].prio))", 1, 2, 0);
	trans[1][33]	= settr(651,0,411,46,46,"EP = 2", 1, 2, 0);
	trans[1][34]	= settr(652,0,37,47,0,"((tcb[1].prio==tcb[2].prio))", 1, 2, 0);
	T = trans[1][37] = settr(655,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(655,0,35,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(655,0,36,0,0,"IF", 0, 2, 0);
	trans[1][35]	= settr(653,0,411,48,48,"EP = 1", 1, 2, 0);
	trans[1][38]	= settr(656,0,411,1,0,".(goto)", 0, 2, 0);
	trans[1][36]	= settr(654,0,411,49,49,"EP = 2", 1, 2, 0);
	trans[1][44]	= settr(662,0,63,50,50,"tcb[1].prio = 31", 1, 2, 0);
	T = trans[ 1][63] = settr(681,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(681,0,61,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][61] = settr(679,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(679,0,45,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(679,0,47,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(679,0,49,0,0,"IF", 0, 2, 0);
	trans[1][45]	= settr(663,0,46,51,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))", 1, 2, 0);
	trans[1][46]	= settr(664,0,411,52,52,"EP = 1", 1, 2, 0);
	trans[1][62]	= settr(680,0,411,1,0,".(goto)", 0, 2, 0);
	trans[1][47]	= settr(665,0,48,53,0,"((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))", 1, 2, 0);
	trans[1][48]	= settr(666,0,411,54,54,"EP = 2", 1, 2, 0);
	trans[1][49]	= settr(667,0,59,55,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))", 1, 2, 0);
	T = trans[1][59] = settr(677,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(677,0,50,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(677,0,52,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(677,0,54,0,0,"IF", 0, 2, 0);
	trans[1][50]	= settr(668,0,51,56,0,"((tcb[1].prio<tcb[2].prio))", 1, 2, 0);
	trans[1][51]	= settr(669,0,411,57,57,"EP = 1", 1, 2, 0);
	trans[1][60]	= settr(678,0,411,1,0,".(goto)", 0, 2, 0);
	trans[1][52]	= settr(670,0,53,58,0,"((tcb[1].prio>tcb[2].prio))", 1, 2, 0);
	trans[1][53]	= settr(671,0,411,59,59,"EP = 2", 1, 2, 0);
	trans[1][54]	= settr(672,0,57,60,0,"((tcb[1].prio==tcb[2].prio))", 1, 2, 0);
	T = trans[1][57] = settr(675,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(675,0,55,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(675,0,56,0,0,"IF", 0, 2, 0);
	trans[1][55]	= settr(673,0,411,61,61,"EP = 1", 1, 2, 0);
	trans[1][58]	= settr(676,0,411,1,0,".(goto)", 0, 2, 0);
	trans[1][56]	= settr(674,0,411,62,62,"EP = 2", 1, 2, 0);
	trans[1][64]	= settr(682,0,83,63,63,"tcb[2].prio = 0", 1, 2, 0);
	T = trans[ 1][83] = settr(701,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(701,0,81,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][81] = settr(699,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(699,0,65,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(699,0,67,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(699,0,69,0,0,"IF", 0, 2, 0);
	trans[1][65]	= settr(683,0,66,64,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))", 1, 2, 0);
	trans[1][66]	= settr(684,0,411,65,65,"EP = 1", 1, 2, 0);
	trans[1][82]	= settr(700,0,411,1,0,".(goto)", 0, 2, 0);
	trans[1][67]	= settr(685,0,68,66,0,"((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))", 1, 2, 0);
	trans[1][68]	= settr(686,0,411,67,67,"EP = 2", 1, 2, 0);
	trans[1][69]	= settr(687,0,79,68,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))", 1, 2, 0);
	T = trans[1][79] = settr(697,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(697,0,70,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(697,0,72,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(697,0,74,0,0,"IF", 0, 2, 0);
	trans[1][70]	= settr(688,0,71,69,0,"((tcb[1].prio<tcb[2].prio))", 1, 2, 0);
	trans[1][71]	= settr(689,0,411,70,70,"EP = 1", 1, 2, 0);
	trans[1][80]	= settr(698,0,411,1,0,".(goto)", 0, 2, 0);
	trans[1][72]	= settr(690,0,73,71,0,"((tcb[1].prio>tcb[2].prio))", 1, 2, 0);
	trans[1][73]	= settr(691,0,411,72,72,"EP = 2", 1, 2, 0);
	trans[1][74]	= settr(692,0,77,73,0,"((tcb[1].prio==tcb[2].prio))", 1, 2, 0);
	T = trans[1][77] = settr(695,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(695,0,75,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(695,0,76,0,0,"IF", 0, 2, 0);
	trans[1][75]	= settr(693,0,411,74,74,"EP = 1", 1, 2, 0);
	trans[1][78]	= settr(696,0,411,1,0,".(goto)", 0, 2, 0);
	trans[1][76]	= settr(694,0,411,75,75,"EP = 2", 1, 2, 0);
	trans[1][84]	= settr(702,0,103,76,76,"tcb[2].prio = 15", 1, 2, 0);
	T = trans[ 1][103] = settr(721,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(721,0,101,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][101] = settr(719,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(719,0,85,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(719,0,87,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(719,0,89,0,0,"IF", 0, 2, 0);
	trans[1][85]	= settr(703,0,86,77,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))", 1, 2, 0);
	trans[1][86]	= settr(704,0,411,78,78,"EP = 1", 1, 2, 0);
	trans[1][102]	= settr(720,0,411,1,0,".(goto)", 0, 2, 0);
	trans[1][87]	= settr(705,0,88,79,0,"((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))", 1, 2, 0);
	trans[1][88]	= settr(706,0,411,80,80,"EP = 2", 1, 2, 0);
	trans[1][89]	= settr(707,0,99,81,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))", 1, 2, 0);
	T = trans[1][99] = settr(717,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(717,0,90,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(717,0,92,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(717,0,94,0,0,"IF", 0, 2, 0);
	trans[1][90]	= settr(708,0,91,82,0,"((tcb[1].prio<tcb[2].prio))", 1, 2, 0);
	trans[1][91]	= settr(709,0,411,83,83,"EP = 1", 1, 2, 0);
	trans[1][100]	= settr(718,0,411,1,0,".(goto)", 0, 2, 0);
	trans[1][92]	= settr(710,0,93,84,0,"((tcb[1].prio>tcb[2].prio))", 1, 2, 0);
	trans[1][93]	= settr(711,0,411,85,85,"EP = 2", 1, 2, 0);
	trans[1][94]	= settr(712,0,97,86,0,"((tcb[1].prio==tcb[2].prio))", 1, 2, 0);
	T = trans[1][97] = settr(715,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(715,0,95,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(715,0,96,0,0,"IF", 0, 2, 0);
	trans[1][95]	= settr(713,0,411,87,87,"EP = 1", 1, 2, 0);
	trans[1][98]	= settr(716,0,411,1,0,".(goto)", 0, 2, 0);
	trans[1][96]	= settr(714,0,411,88,88,"EP = 2", 1, 2, 0);
	trans[1][104]	= settr(722,0,123,89,89,"tcb[2].prio = 31", 1, 2, 0);
	T = trans[ 1][123] = settr(741,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(741,0,121,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][121] = settr(739,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(739,0,105,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(739,0,107,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(739,0,109,0,0,"IF", 0, 2, 0);
	trans[1][105]	= settr(723,0,106,90,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))", 1, 2, 0);
	trans[1][106]	= settr(724,0,411,91,91,"EP = 1", 1, 2, 0);
	trans[1][122]	= settr(740,0,411,1,0,".(goto)", 0, 2, 0);
	trans[1][107]	= settr(725,0,108,92,0,"((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))", 1, 2, 0);
	trans[1][108]	= settr(726,0,411,93,93,"EP = 2", 1, 2, 0);
	trans[1][109]	= settr(727,0,119,94,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))", 1, 2, 0);
	T = trans[1][119] = settr(737,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(737,0,110,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(737,0,112,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(737,0,114,0,0,"IF", 0, 2, 0);
	trans[1][110]	= settr(728,0,111,95,0,"((tcb[1].prio<tcb[2].prio))", 1, 2, 0);
	trans[1][111]	= settr(729,0,411,96,96,"EP = 1", 1, 2, 0);
	trans[1][120]	= settr(738,0,411,1,0,".(goto)", 0, 2, 0);
	trans[1][112]	= settr(730,0,113,97,0,"((tcb[1].prio>tcb[2].prio))", 1, 2, 0);
	trans[1][113]	= settr(731,0,411,98,98,"EP = 2", 1, 2, 0);
	trans[1][114]	= settr(732,0,117,99,0,"((tcb[1].prio==tcb[2].prio))", 1, 2, 0);
	T = trans[1][117] = settr(735,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(735,0,115,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(735,0,116,0,0,"IF", 0, 2, 0);
	trans[1][115]	= settr(733,0,411,100,100,"EP = 1", 1, 2, 0);
	trans[1][118]	= settr(736,0,411,1,0,".(goto)", 0, 2, 0);
	trans[1][116]	= settr(734,0,411,101,101,"EP = 2", 1, 2, 0);
	trans[1][124]	= settr(742,0,143,102,102,"tcb[1].state = 1", 1, 2, 0);
	T = trans[ 1][143] = settr(761,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(761,0,141,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][141] = settr(759,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(759,0,125,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(759,0,127,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(759,0,129,0,0,"IF", 0, 2, 0);
	trans[1][125]	= settr(743,0,126,103,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))", 1, 2, 0);
	trans[1][126]	= settr(744,0,411,104,104,"EP = 1", 1, 2, 0);
	trans[1][142]	= settr(760,0,411,1,0,".(goto)", 0, 2, 0);
	trans[1][127]	= settr(745,0,128,105,0,"((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))", 1, 2, 0);
	trans[1][128]	= settr(746,0,411,106,106,"EP = 2", 1, 2, 0);
	trans[1][129]	= settr(747,0,139,107,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))", 1, 2, 0);
	T = trans[1][139] = settr(757,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(757,0,130,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(757,0,132,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(757,0,134,0,0,"IF", 0, 2, 0);
	trans[1][130]	= settr(748,0,131,108,0,"((tcb[1].prio<tcb[2].prio))", 1, 2, 0);
	trans[1][131]	= settr(749,0,411,109,109,"EP = 1", 1, 2, 0);
	trans[1][140]	= settr(758,0,411,1,0,".(goto)", 0, 2, 0);
	trans[1][132]	= settr(750,0,133,110,0,"((tcb[1].prio>tcb[2].prio))", 1, 2, 0);
	trans[1][133]	= settr(751,0,411,111,111,"EP = 2", 1, 2, 0);
	trans[1][134]	= settr(752,0,137,112,0,"((tcb[1].prio==tcb[2].prio))", 1, 2, 0);
	T = trans[1][137] = settr(755,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(755,0,135,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(755,0,136,0,0,"IF", 0, 2, 0);
	trans[1][135]	= settr(753,0,411,113,113,"EP = 1", 1, 2, 0);
	trans[1][138]	= settr(756,0,411,1,0,".(goto)", 0, 2, 0);
	trans[1][136]	= settr(754,0,411,114,114,"EP = 2", 1, 2, 0);
	trans[1][144]	= settr(762,0,163,115,115,"tcb[1].state = 3", 1, 2, 0);
	T = trans[ 1][163] = settr(781,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(781,0,161,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][161] = settr(779,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(779,0,145,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(779,0,147,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(779,0,149,0,0,"IF", 0, 2, 0);
	trans[1][145]	= settr(763,0,146,116,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))", 1, 2, 0);
	trans[1][146]	= settr(764,0,411,117,117,"EP = 1", 1, 2, 0);
	trans[1][162]	= settr(780,0,411,1,0,".(goto)", 0, 2, 0);
	trans[1][147]	= settr(765,0,148,118,0,"((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))", 1, 2, 0);
	trans[1][148]	= settr(766,0,411,119,119,"EP = 2", 1, 2, 0);
	trans[1][149]	= settr(767,0,159,120,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))", 1, 2, 0);
	T = trans[1][159] = settr(777,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(777,0,150,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(777,0,152,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(777,0,154,0,0,"IF", 0, 2, 0);
	trans[1][150]	= settr(768,0,151,121,0,"((tcb[1].prio<tcb[2].prio))", 1, 2, 0);
	trans[1][151]	= settr(769,0,411,122,122,"EP = 1", 1, 2, 0);
	trans[1][160]	= settr(778,0,411,1,0,".(goto)", 0, 2, 0);
	trans[1][152]	= settr(770,0,153,123,0,"((tcb[1].prio>tcb[2].prio))", 1, 2, 0);
	trans[1][153]	= settr(771,0,411,124,124,"EP = 2", 1, 2, 0);
	trans[1][154]	= settr(772,0,157,125,0,"((tcb[1].prio==tcb[2].prio))", 1, 2, 0);
	T = trans[1][157] = settr(775,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(775,0,155,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(775,0,156,0,0,"IF", 0, 2, 0);
	trans[1][155]	= settr(773,0,411,126,126,"EP = 1", 1, 2, 0);
	trans[1][158]	= settr(776,0,411,1,0,".(goto)", 0, 2, 0);
	trans[1][156]	= settr(774,0,411,127,127,"EP = 2", 1, 2, 0);
	trans[1][164]	= settr(782,0,183,128,128,"tcb[2].state = 1", 1, 2, 0);
	T = trans[ 1][183] = settr(801,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(801,0,181,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][181] = settr(799,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(799,0,165,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(799,0,167,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(799,0,169,0,0,"IF", 0, 2, 0);
	trans[1][165]	= settr(783,0,166,129,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))", 1, 2, 0);
	trans[1][166]	= settr(784,0,411,130,130,"EP = 1", 1, 2, 0);
	trans[1][182]	= settr(800,0,411,1,0,".(goto)", 0, 2, 0);
	trans[1][167]	= settr(785,0,168,131,0,"((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))", 1, 2, 0);
	trans[1][168]	= settr(786,0,411,132,132,"EP = 2", 1, 2, 0);
	trans[1][169]	= settr(787,0,179,133,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))", 1, 2, 0);
	T = trans[1][179] = settr(797,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(797,0,170,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(797,0,172,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(797,0,174,0,0,"IF", 0, 2, 0);
	trans[1][170]	= settr(788,0,171,134,0,"((tcb[1].prio<tcb[2].prio))", 1, 2, 0);
	trans[1][171]	= settr(789,0,411,135,135,"EP = 1", 1, 2, 0);
	trans[1][180]	= settr(798,0,411,1,0,".(goto)", 0, 2, 0);
	trans[1][172]	= settr(790,0,173,136,0,"((tcb[1].prio>tcb[2].prio))", 1, 2, 0);
	trans[1][173]	= settr(791,0,411,137,137,"EP = 2", 1, 2, 0);
	trans[1][174]	= settr(792,0,177,138,0,"((tcb[1].prio==tcb[2].prio))", 1, 2, 0);
	T = trans[1][177] = settr(795,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(795,0,175,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(795,0,176,0,0,"IF", 0, 2, 0);
	trans[1][175]	= settr(793,0,411,139,139,"EP = 1", 1, 2, 0);
	trans[1][178]	= settr(796,0,411,1,0,".(goto)", 0, 2, 0);
	trans[1][176]	= settr(794,0,411,140,140,"EP = 2", 1, 2, 0);
	trans[1][184]	= settr(802,0,203,141,141,"tcb[2].state = 3", 1, 2, 0);
	T = trans[ 1][203] = settr(821,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(821,0,201,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][201] = settr(819,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(819,0,185,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(819,0,187,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(819,0,189,0,0,"IF", 0, 2, 0);
	trans[1][185]	= settr(803,0,186,142,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))", 1, 2, 0);
	trans[1][186]	= settr(804,0,411,143,143,"EP = 1", 1, 2, 0);
	trans[1][202]	= settr(820,0,411,1,0,".(goto)", 0, 2, 0);
	trans[1][187]	= settr(805,0,188,144,0,"((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))", 1, 2, 0);
	trans[1][188]	= settr(806,0,411,145,145,"EP = 2", 1, 2, 0);
	trans[1][189]	= settr(807,0,199,146,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))", 1, 2, 0);
	T = trans[1][199] = settr(817,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(817,0,190,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(817,0,192,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(817,0,194,0,0,"IF", 0, 2, 0);
	trans[1][190]	= settr(808,0,191,147,0,"((tcb[1].prio<tcb[2].prio))", 1, 2, 0);
	trans[1][191]	= settr(809,0,411,148,148,"EP = 1", 1, 2, 0);
	trans[1][200]	= settr(818,0,411,1,0,".(goto)", 0, 2, 0);
	trans[1][192]	= settr(810,0,193,149,0,"((tcb[1].prio>tcb[2].prio))", 1, 2, 0);
	trans[1][193]	= settr(811,0,411,150,150,"EP = 2", 1, 2, 0);
	trans[1][194]	= settr(812,0,197,151,0,"((tcb[1].prio==tcb[2].prio))", 1, 2, 0);
	T = trans[1][197] = settr(815,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(815,0,195,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(815,0,196,0,0,"IF", 0, 2, 0);
	trans[1][195]	= settr(813,0,411,152,152,"EP = 1", 1, 2, 0);
	trans[1][198]	= settr(816,0,411,1,0,".(goto)", 0, 2, 0);
	trans[1][196]	= settr(814,0,411,153,153,"EP = 2", 1, 2, 0);
	trans[1][206]	= settr(824,0,207,154,0,"((EP==2))", 1, 2, 0);
	trans[1][207]	= settr(825,0,409,155,155,"EP = 1", 1, 2, 0);
	T = trans[1][409] = settr(1027,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1027,0,208,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1027,0,209,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1027,0,229,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1027,0,249,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1027,0,269,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1027,0,289,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1027,0,309,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1027,0,329,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1027,0,349,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1027,0,369,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1027,0,389,0,0,"IF", 0, 2, 0);
	trans[1][208]	= settr(826,0,411,1,0,"(1)", 0, 2, 0);
	trans[1][410]	= settr(1028,0,411,1,0,".(goto)", 0, 2, 0);
	trans[1][209]	= settr(827,0,228,156,156,"tcb[1].prio = 0", 1, 2, 0);
	T = trans[ 1][228] = settr(846,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(846,0,226,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][226] = settr(844,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(844,0,210,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(844,0,212,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(844,0,214,0,0,"IF", 0, 2, 0);
	trans[1][210]	= settr(828,0,211,157,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))", 1, 2, 0);
	trans[1][211]	= settr(829,0,411,158,158,"EP = 1", 1, 2, 0);
	trans[1][227]	= settr(845,0,411,1,0,".(goto)", 0, 2, 0);
	trans[1][212]	= settr(830,0,213,159,0,"((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))", 1, 2, 0);
	trans[1][213]	= settr(831,0,411,160,160,"EP = 2", 1, 2, 0);
	trans[1][214]	= settr(832,0,224,161,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))", 1, 2, 0);
	T = trans[1][224] = settr(842,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(842,0,215,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(842,0,217,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(842,0,219,0,0,"IF", 0, 2, 0);
	trans[1][215]	= settr(833,0,216,162,0,"((tcb[1].prio<tcb[2].prio))", 1, 2, 0);
	trans[1][216]	= settr(834,0,411,163,163,"EP = 1", 1, 2, 0);
	trans[1][225]	= settr(843,0,411,1,0,".(goto)", 0, 2, 0);
	trans[1][217]	= settr(835,0,218,164,0,"((tcb[1].prio>tcb[2].prio))", 1, 2, 0);
	trans[1][218]	= settr(836,0,411,165,165,"EP = 2", 1, 2, 0);
	trans[1][219]	= settr(837,0,222,166,0,"((tcb[1].prio==tcb[2].prio))", 1, 2, 0);
	T = trans[1][222] = settr(840,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(840,0,220,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(840,0,221,0,0,"IF", 0, 2, 0);
	trans[1][220]	= settr(838,0,411,167,167,"EP = 1", 1, 2, 0);
	trans[1][223]	= settr(841,0,411,1,0,".(goto)", 0, 2, 0);
	trans[1][221]	= settr(839,0,411,168,168,"EP = 2", 1, 2, 0);
	trans[1][229]	= settr(847,0,248,169,169,"tcb[1].prio = 15", 1, 2, 0);
	T = trans[ 1][248] = settr(866,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(866,0,246,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][246] = settr(864,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(864,0,230,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(864,0,232,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(864,0,234,0,0,"IF", 0, 2, 0);
	trans[1][230]	= settr(848,0,231,170,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))", 1, 2, 0);
	trans[1][231]	= settr(849,0,411,171,171,"EP = 1", 1, 2, 0);
	trans[1][247]	= settr(865,0,411,1,0,".(goto)", 0, 2, 0);
	trans[1][232]	= settr(850,0,233,172,0,"((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))", 1, 2, 0);
	trans[1][233]	= settr(851,0,411,173,173,"EP = 2", 1, 2, 0);
	trans[1][234]	= settr(852,0,244,174,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))", 1, 2, 0);
	T = trans[1][244] = settr(862,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(862,0,235,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(862,0,237,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(862,0,239,0,0,"IF", 0, 2, 0);
	trans[1][235]	= settr(853,0,236,175,0,"((tcb[1].prio<tcb[2].prio))", 1, 2, 0);
	trans[1][236]	= settr(854,0,411,176,176,"EP = 1", 1, 2, 0);
	trans[1][245]	= settr(863,0,411,1,0,".(goto)", 0, 2, 0);
	trans[1][237]	= settr(855,0,238,177,0,"((tcb[1].prio>tcb[2].prio))", 1, 2, 0);
	trans[1][238]	= settr(856,0,411,178,178,"EP = 2", 1, 2, 0);
	trans[1][239]	= settr(857,0,242,179,0,"((tcb[1].prio==tcb[2].prio))", 1, 2, 0);
	T = trans[1][242] = settr(860,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(860,0,240,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(860,0,241,0,0,"IF", 0, 2, 0);
	trans[1][240]	= settr(858,0,411,180,180,"EP = 1", 1, 2, 0);
	trans[1][243]	= settr(861,0,411,1,0,".(goto)", 0, 2, 0);
	trans[1][241]	= settr(859,0,411,181,181,"EP = 2", 1, 2, 0);
	trans[1][249]	= settr(867,0,268,182,182,"tcb[1].prio = 31", 1, 2, 0);
	T = trans[ 1][268] = settr(886,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(886,0,266,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][266] = settr(884,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(884,0,250,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(884,0,252,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(884,0,254,0,0,"IF", 0, 2, 0);
	trans[1][250]	= settr(868,0,251,183,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))", 1, 2, 0);
	trans[1][251]	= settr(869,0,411,184,184,"EP = 1", 1, 2, 0);
	trans[1][267]	= settr(885,0,411,1,0,".(goto)", 0, 2, 0);
	trans[1][252]	= settr(870,0,253,185,0,"((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))", 1, 2, 0);
	trans[1][253]	= settr(871,0,411,186,186,"EP = 2", 1, 2, 0);
	trans[1][254]	= settr(872,0,264,187,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))", 1, 2, 0);
	T = trans[1][264] = settr(882,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(882,0,255,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(882,0,257,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(882,0,259,0,0,"IF", 0, 2, 0);
	trans[1][255]	= settr(873,0,256,188,0,"((tcb[1].prio<tcb[2].prio))", 1, 2, 0);
	trans[1][256]	= settr(874,0,411,189,189,"EP = 1", 1, 2, 0);
	trans[1][265]	= settr(883,0,411,1,0,".(goto)", 0, 2, 0);
	trans[1][257]	= settr(875,0,258,190,0,"((tcb[1].prio>tcb[2].prio))", 1, 2, 0);
	trans[1][258]	= settr(876,0,411,191,191,"EP = 2", 1, 2, 0);
	trans[1][259]	= settr(877,0,262,192,0,"((tcb[1].prio==tcb[2].prio))", 1, 2, 0);
	T = trans[1][262] = settr(880,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(880,0,260,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(880,0,261,0,0,"IF", 0, 2, 0);
	trans[1][260]	= settr(878,0,411,193,193,"EP = 1", 1, 2, 0);
	trans[1][263]	= settr(881,0,411,1,0,".(goto)", 0, 2, 0);
	trans[1][261]	= settr(879,0,411,194,194,"EP = 2", 1, 2, 0);
	trans[1][269]	= settr(887,0,288,195,195,"tcb[2].prio = 0", 1, 2, 0);
	T = trans[ 1][288] = settr(906,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(906,0,286,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][286] = settr(904,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(904,0,270,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(904,0,272,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(904,0,274,0,0,"IF", 0, 2, 0);
	trans[1][270]	= settr(888,0,271,196,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))", 1, 2, 0);
	trans[1][271]	= settr(889,0,411,197,197,"EP = 1", 1, 2, 0);
	trans[1][287]	= settr(905,0,411,1,0,".(goto)", 0, 2, 0);
	trans[1][272]	= settr(890,0,273,198,0,"((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))", 1, 2, 0);
	trans[1][273]	= settr(891,0,411,199,199,"EP = 2", 1, 2, 0);
	trans[1][274]	= settr(892,0,284,200,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))", 1, 2, 0);
	T = trans[1][284] = settr(902,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(902,0,275,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(902,0,277,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(902,0,279,0,0,"IF", 0, 2, 0);
	trans[1][275]	= settr(893,0,276,201,0,"((tcb[1].prio<tcb[2].prio))", 1, 2, 0);
	trans[1][276]	= settr(894,0,411,202,202,"EP = 1", 1, 2, 0);
	trans[1][285]	= settr(903,0,411,1,0,".(goto)", 0, 2, 0);
	trans[1][277]	= settr(895,0,278,203,0,"((tcb[1].prio>tcb[2].prio))", 1, 2, 0);
	trans[1][278]	= settr(896,0,411,204,204,"EP = 2", 1, 2, 0);
	trans[1][279]	= settr(897,0,282,205,0,"((tcb[1].prio==tcb[2].prio))", 1, 2, 0);
	T = trans[1][282] = settr(900,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(900,0,280,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(900,0,281,0,0,"IF", 0, 2, 0);
	trans[1][280]	= settr(898,0,411,206,206,"EP = 1", 1, 2, 0);
	trans[1][283]	= settr(901,0,411,1,0,".(goto)", 0, 2, 0);
	trans[1][281]	= settr(899,0,411,207,207,"EP = 2", 1, 2, 0);
	trans[1][289]	= settr(907,0,308,208,208,"tcb[2].prio = 15", 1, 2, 0);
	T = trans[ 1][308] = settr(926,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(926,0,306,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][306] = settr(924,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(924,0,290,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(924,0,292,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(924,0,294,0,0,"IF", 0, 2, 0);
	trans[1][290]	= settr(908,0,291,209,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))", 1, 2, 0);
	trans[1][291]	= settr(909,0,411,210,210,"EP = 1", 1, 2, 0);
	trans[1][307]	= settr(925,0,411,1,0,".(goto)", 0, 2, 0);
	trans[1][292]	= settr(910,0,293,211,0,"((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))", 1, 2, 0);
	trans[1][293]	= settr(911,0,411,212,212,"EP = 2", 1, 2, 0);
	trans[1][294]	= settr(912,0,304,213,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))", 1, 2, 0);
	T = trans[1][304] = settr(922,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(922,0,295,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(922,0,297,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(922,0,299,0,0,"IF", 0, 2, 0);
	trans[1][295]	= settr(913,0,296,214,0,"((tcb[1].prio<tcb[2].prio))", 1, 2, 0);
	trans[1][296]	= settr(914,0,411,215,215,"EP = 1", 1, 2, 0);
	trans[1][305]	= settr(923,0,411,1,0,".(goto)", 0, 2, 0);
	trans[1][297]	= settr(915,0,298,216,0,"((tcb[1].prio>tcb[2].prio))", 1, 2, 0);
	trans[1][298]	= settr(916,0,411,217,217,"EP = 2", 1, 2, 0);
	trans[1][299]	= settr(917,0,302,218,0,"((tcb[1].prio==tcb[2].prio))", 1, 2, 0);
	T = trans[1][302] = settr(920,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(920,0,300,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(920,0,301,0,0,"IF", 0, 2, 0);
	trans[1][300]	= settr(918,0,411,219,219,"EP = 1", 1, 2, 0);
	trans[1][303]	= settr(921,0,411,1,0,".(goto)", 0, 2, 0);
	trans[1][301]	= settr(919,0,411,220,220,"EP = 2", 1, 2, 0);
	trans[1][309]	= settr(927,0,328,221,221,"tcb[2].prio = 31", 1, 2, 0);
	T = trans[ 1][328] = settr(946,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(946,0,326,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][326] = settr(944,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(944,0,310,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(944,0,312,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(944,0,314,0,0,"IF", 0, 2, 0);
	trans[1][310]	= settr(928,0,311,222,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))", 1, 2, 0);
	trans[1][311]	= settr(929,0,411,223,223,"EP = 1", 1, 2, 0);
	trans[1][327]	= settr(945,0,411,1,0,".(goto)", 0, 2, 0);
	trans[1][312]	= settr(930,0,313,224,0,"((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))", 1, 2, 0);
	trans[1][313]	= settr(931,0,411,225,225,"EP = 2", 1, 2, 0);
	trans[1][314]	= settr(932,0,324,226,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))", 1, 2, 0);
	T = trans[1][324] = settr(942,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(942,0,315,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(942,0,317,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(942,0,319,0,0,"IF", 0, 2, 0);
	trans[1][315]	= settr(933,0,316,227,0,"((tcb[1].prio<tcb[2].prio))", 1, 2, 0);
	trans[1][316]	= settr(934,0,411,228,228,"EP = 1", 1, 2, 0);
	trans[1][325]	= settr(943,0,411,1,0,".(goto)", 0, 2, 0);
	trans[1][317]	= settr(935,0,318,229,0,"((tcb[1].prio>tcb[2].prio))", 1, 2, 0);
	trans[1][318]	= settr(936,0,411,230,230,"EP = 2", 1, 2, 0);
	trans[1][319]	= settr(937,0,322,231,0,"((tcb[1].prio==tcb[2].prio))", 1, 2, 0);
	T = trans[1][322] = settr(940,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(940,0,320,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(940,0,321,0,0,"IF", 0, 2, 0);
	trans[1][320]	= settr(938,0,411,232,232,"EP = 1", 1, 2, 0);
	trans[1][323]	= settr(941,0,411,1,0,".(goto)", 0, 2, 0);
	trans[1][321]	= settr(939,0,411,233,233,"EP = 2", 1, 2, 0);
	trans[1][329]	= settr(947,0,348,234,234,"tcb[1].state = 1", 1, 2, 0);
	T = trans[ 1][348] = settr(966,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(966,0,346,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][346] = settr(964,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(964,0,330,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(964,0,332,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(964,0,334,0,0,"IF", 0, 2, 0);
	trans[1][330]	= settr(948,0,331,235,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))", 1, 2, 0);
	trans[1][331]	= settr(949,0,411,236,236,"EP = 1", 1, 2, 0);
	trans[1][347]	= settr(965,0,411,1,0,".(goto)", 0, 2, 0);
	trans[1][332]	= settr(950,0,333,237,0,"((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))", 1, 2, 0);
	trans[1][333]	= settr(951,0,411,238,238,"EP = 2", 1, 2, 0);
	trans[1][334]	= settr(952,0,344,239,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))", 1, 2, 0);
	T = trans[1][344] = settr(962,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(962,0,335,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(962,0,337,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(962,0,339,0,0,"IF", 0, 2, 0);
	trans[1][335]	= settr(953,0,336,240,0,"((tcb[1].prio<tcb[2].prio))", 1, 2, 0);
	trans[1][336]	= settr(954,0,411,241,241,"EP = 1", 1, 2, 0);
	trans[1][345]	= settr(963,0,411,1,0,".(goto)", 0, 2, 0);
	trans[1][337]	= settr(955,0,338,242,0,"((tcb[1].prio>tcb[2].prio))", 1, 2, 0);
	trans[1][338]	= settr(956,0,411,243,243,"EP = 2", 1, 2, 0);
	trans[1][339]	= settr(957,0,342,244,0,"((tcb[1].prio==tcb[2].prio))", 1, 2, 0);
	T = trans[1][342] = settr(960,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(960,0,340,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(960,0,341,0,0,"IF", 0, 2, 0);
	trans[1][340]	= settr(958,0,411,245,245,"EP = 1", 1, 2, 0);
	trans[1][343]	= settr(961,0,411,1,0,".(goto)", 0, 2, 0);
	trans[1][341]	= settr(959,0,411,246,246,"EP = 2", 1, 2, 0);
	trans[1][349]	= settr(967,0,368,247,247,"tcb[1].state = 3", 1, 2, 0);
	T = trans[ 1][368] = settr(986,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(986,0,366,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][366] = settr(984,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(984,0,350,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(984,0,352,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(984,0,354,0,0,"IF", 0, 2, 0);
	trans[1][350]	= settr(968,0,351,248,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))", 1, 2, 0);
	trans[1][351]	= settr(969,0,411,249,249,"EP = 1", 1, 2, 0);
	trans[1][367]	= settr(985,0,411,1,0,".(goto)", 0, 2, 0);
	trans[1][352]	= settr(970,0,353,250,0,"((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))", 1, 2, 0);
	trans[1][353]	= settr(971,0,411,251,251,"EP = 2", 1, 2, 0);
	trans[1][354]	= settr(972,0,364,252,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))", 1, 2, 0);
	T = trans[1][364] = settr(982,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(982,0,355,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(982,0,357,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(982,0,359,0,0,"IF", 0, 2, 0);
	trans[1][355]	= settr(973,0,356,253,0,"((tcb[1].prio<tcb[2].prio))", 1, 2, 0);
	trans[1][356]	= settr(974,0,411,254,254,"EP = 1", 1, 2, 0);
	trans[1][365]	= settr(983,0,411,1,0,".(goto)", 0, 2, 0);
	trans[1][357]	= settr(975,0,358,255,0,"((tcb[1].prio>tcb[2].prio))", 1, 2, 0);
	trans[1][358]	= settr(976,0,411,256,256,"EP = 2", 1, 2, 0);
	trans[1][359]	= settr(977,0,362,257,0,"((tcb[1].prio==tcb[2].prio))", 1, 2, 0);
	T = trans[1][362] = settr(980,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(980,0,360,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(980,0,361,0,0,"IF", 0, 2, 0);
	trans[1][360]	= settr(978,0,411,258,258,"EP = 1", 1, 2, 0);
	trans[1][363]	= settr(981,0,411,1,0,".(goto)", 0, 2, 0);
	trans[1][361]	= settr(979,0,411,259,259,"EP = 2", 1, 2, 0);
	trans[1][369]	= settr(987,0,388,260,260,"tcb[2].state = 1", 1, 2, 0);
	T = trans[ 1][388] = settr(1006,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1006,0,386,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][386] = settr(1004,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1004,0,370,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1004,0,372,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1004,0,374,0,0,"IF", 0, 2, 0);
	trans[1][370]	= settr(988,0,371,261,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))", 1, 2, 0);
	trans[1][371]	= settr(989,0,411,262,262,"EP = 1", 1, 2, 0);
	trans[1][387]	= settr(1005,0,411,1,0,".(goto)", 0, 2, 0);
	trans[1][372]	= settr(990,0,373,263,0,"((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))", 1, 2, 0);
	trans[1][373]	= settr(991,0,411,264,264,"EP = 2", 1, 2, 0);
	trans[1][374]	= settr(992,0,384,265,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))", 1, 2, 0);
	T = trans[1][384] = settr(1002,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1002,0,375,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1002,0,377,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1002,0,379,0,0,"IF", 0, 2, 0);
	trans[1][375]	= settr(993,0,376,266,0,"((tcb[1].prio<tcb[2].prio))", 1, 2, 0);
	trans[1][376]	= settr(994,0,411,267,267,"EP = 1", 1, 2, 0);
	trans[1][385]	= settr(1003,0,411,1,0,".(goto)", 0, 2, 0);
	trans[1][377]	= settr(995,0,378,268,0,"((tcb[1].prio>tcb[2].prio))", 1, 2, 0);
	trans[1][378]	= settr(996,0,411,269,269,"EP = 2", 1, 2, 0);
	trans[1][379]	= settr(997,0,382,270,0,"((tcb[1].prio==tcb[2].prio))", 1, 2, 0);
	T = trans[1][382] = settr(1000,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1000,0,380,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1000,0,381,0,0,"IF", 0, 2, 0);
	trans[1][380]	= settr(998,0,411,271,271,"EP = 1", 1, 2, 0);
	trans[1][383]	= settr(1001,0,411,1,0,".(goto)", 0, 2, 0);
	trans[1][381]	= settr(999,0,411,272,272,"EP = 2", 1, 2, 0);
	trans[1][389]	= settr(1007,0,408,273,273,"tcb[2].state = 3", 1, 2, 0);
	T = trans[ 1][408] = settr(1026,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1026,0,406,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][406] = settr(1024,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1024,0,390,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1024,0,392,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1024,0,394,0,0,"IF", 0, 2, 0);
	trans[1][390]	= settr(1008,0,391,274,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))", 1, 2, 0);
	trans[1][391]	= settr(1009,0,411,275,275,"EP = 1", 1, 2, 0);
	trans[1][407]	= settr(1025,0,411,1,0,".(goto)", 0, 2, 0);
	trans[1][392]	= settr(1010,0,393,276,0,"((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))", 1, 2, 0);
	trans[1][393]	= settr(1011,0,411,277,277,"EP = 2", 1, 2, 0);
	trans[1][394]	= settr(1012,0,404,278,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))", 1, 2, 0);
	T = trans[1][404] = settr(1022,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1022,0,395,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1022,0,397,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1022,0,399,0,0,"IF", 0, 2, 0);
	trans[1][395]	= settr(1013,0,396,279,0,"((tcb[1].prio<tcb[2].prio))", 1, 2, 0);
	trans[1][396]	= settr(1014,0,411,280,280,"EP = 1", 1, 2, 0);
	trans[1][405]	= settr(1023,0,411,1,0,".(goto)", 0, 2, 0);
	trans[1][397]	= settr(1015,0,398,281,0,"((tcb[1].prio>tcb[2].prio))", 1, 2, 0);
	trans[1][398]	= settr(1016,0,411,282,282,"EP = 2", 1, 2, 0);
	trans[1][399]	= settr(1017,0,402,283,0,"((tcb[1].prio==tcb[2].prio))", 1, 2, 0);
	T = trans[1][402] = settr(1020,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1020,0,400,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1020,0,401,0,0,"IF", 0, 2, 0);
	trans[1][400]	= settr(1018,0,411,284,284,"EP = 1", 1, 2, 0);
	trans[1][403]	= settr(1021,0,411,1,0,".(goto)", 0, 2, 0);
	trans[1][401]	= settr(1019,0,411,285,285,"EP = 2", 1, 2, 0);
	trans[1][413]	= settr(1031,0,414,1,0,"break", 0, 2, 0);
	trans[1][414]	= settr(1032,0,0,286,286,"-end-", 0, 3500, 0);

	/* proctype 0: Process1 */

	trans[0] = (Trans **) emalloc(620*sizeof(Trans *));

	trans[0][617]	= settr(616,0,616,1,0,".(goto)", 0, 2, 0);
	T = trans[0][616] = settr(615,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(615,0,1,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(615,0,206,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(615,0,411,0,0,"DO", 0, 2, 0);
	trans[0][1]	= settr(0,0,2,287,0,"((EP==1))", 1, 2, 0);
	trans[0][2]	= settr(1,0,204,288,0,"printf('Process 1 is running\\n')", 0, 2, 0);
	T = trans[0][204] = settr(203,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(203,0,3,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(203,0,4,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(203,0,24,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(203,0,44,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(203,0,64,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(203,0,84,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(203,0,104,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(203,0,124,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(203,0,144,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(203,0,164,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(203,0,184,0,0,"IF", 0, 2, 0);
	trans[0][3]	= settr(2,0,616,1,0,"(1)", 0, 2, 0);
	trans[0][205]	= settr(204,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][4]	= settr(3,0,23,289,289,"tcb[1].prio = 0", 1, 2, 0);
	T = trans[ 0][23] = settr(22,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(22,0,21,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][21] = settr(20,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(20,0,5,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(20,0,7,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(20,0,9,0,0,"IF", 0, 2, 0);
	trans[0][5]	= settr(4,0,6,290,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))", 1, 2, 0);
	trans[0][6]	= settr(5,0,616,291,291,"EP = 1", 1, 2, 0);
	trans[0][22]	= settr(21,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][7]	= settr(6,0,8,292,0,"((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))", 1, 2, 0);
	trans[0][8]	= settr(7,0,616,293,293,"EP = 2", 1, 2, 0);
	trans[0][9]	= settr(8,0,19,294,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))", 1, 2, 0);
	T = trans[0][19] = settr(18,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(18,0,10,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(18,0,12,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(18,0,14,0,0,"IF", 0, 2, 0);
	trans[0][10]	= settr(9,0,11,295,0,"((tcb[1].prio<tcb[2].prio))", 1, 2, 0);
	trans[0][11]	= settr(10,0,616,296,296,"EP = 1", 1, 2, 0);
	trans[0][20]	= settr(19,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][12]	= settr(11,0,13,297,0,"((tcb[1].prio>tcb[2].prio))", 1, 2, 0);
	trans[0][13]	= settr(12,0,616,298,298,"EP = 2", 1, 2, 0);
	trans[0][14]	= settr(13,0,17,299,0,"((tcb[1].prio==tcb[2].prio))", 1, 2, 0);
	T = trans[0][17] = settr(16,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(16,0,15,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(16,0,16,0,0,"IF", 0, 2, 0);
	trans[0][15]	= settr(14,0,616,300,300,"EP = 1", 1, 2, 0);
	trans[0][18]	= settr(17,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][16]	= settr(15,0,616,301,301,"EP = 2", 1, 2, 0);
	trans[0][24]	= settr(23,0,43,302,302,"tcb[1].prio = 15", 1, 2, 0);
	T = trans[ 0][43] = settr(42,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(42,0,41,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][41] = settr(40,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(40,0,25,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(40,0,27,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(40,0,29,0,0,"IF", 0, 2, 0);
	trans[0][25]	= settr(24,0,26,303,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))", 1, 2, 0);
	trans[0][26]	= settr(25,0,616,304,304,"EP = 1", 1, 2, 0);
	trans[0][42]	= settr(41,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][27]	= settr(26,0,28,305,0,"((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))", 1, 2, 0);
	trans[0][28]	= settr(27,0,616,306,306,"EP = 2", 1, 2, 0);
	trans[0][29]	= settr(28,0,39,307,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))", 1, 2, 0);
	T = trans[0][39] = settr(38,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(38,0,30,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(38,0,32,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(38,0,34,0,0,"IF", 0, 2, 0);
	trans[0][30]	= settr(29,0,31,308,0,"((tcb[1].prio<tcb[2].prio))", 1, 2, 0);
	trans[0][31]	= settr(30,0,616,309,309,"EP = 1", 1, 2, 0);
	trans[0][40]	= settr(39,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][32]	= settr(31,0,33,310,0,"((tcb[1].prio>tcb[2].prio))", 1, 2, 0);
	trans[0][33]	= settr(32,0,616,311,311,"EP = 2", 1, 2, 0);
	trans[0][34]	= settr(33,0,37,312,0,"((tcb[1].prio==tcb[2].prio))", 1, 2, 0);
	T = trans[0][37] = settr(36,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(36,0,35,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(36,0,36,0,0,"IF", 0, 2, 0);
	trans[0][35]	= settr(34,0,616,313,313,"EP = 1", 1, 2, 0);
	trans[0][38]	= settr(37,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][36]	= settr(35,0,616,314,314,"EP = 2", 1, 2, 0);
	trans[0][44]	= settr(43,0,63,315,315,"tcb[1].prio = 31", 1, 2, 0);
	T = trans[ 0][63] = settr(62,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(62,0,61,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][61] = settr(60,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(60,0,45,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(60,0,47,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(60,0,49,0,0,"IF", 0, 2, 0);
	trans[0][45]	= settr(44,0,46,316,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))", 1, 2, 0);
	trans[0][46]	= settr(45,0,616,317,317,"EP = 1", 1, 2, 0);
	trans[0][62]	= settr(61,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][47]	= settr(46,0,48,318,0,"((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))", 1, 2, 0);
	trans[0][48]	= settr(47,0,616,319,319,"EP = 2", 1, 2, 0);
	trans[0][49]	= settr(48,0,59,320,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))", 1, 2, 0);
	T = trans[0][59] = settr(58,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(58,0,50,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(58,0,52,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(58,0,54,0,0,"IF", 0, 2, 0);
	trans[0][50]	= settr(49,0,51,321,0,"((tcb[1].prio<tcb[2].prio))", 1, 2, 0);
	trans[0][51]	= settr(50,0,616,322,322,"EP = 1", 1, 2, 0);
	trans[0][60]	= settr(59,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][52]	= settr(51,0,53,323,0,"((tcb[1].prio>tcb[2].prio))", 1, 2, 0);
	trans[0][53]	= settr(52,0,616,324,324,"EP = 2", 1, 2, 0);
	trans[0][54]	= settr(53,0,57,325,0,"((tcb[1].prio==tcb[2].prio))", 1, 2, 0);
	T = trans[0][57] = settr(56,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(56,0,55,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(56,0,56,0,0,"IF", 0, 2, 0);
	trans[0][55]	= settr(54,0,616,326,326,"EP = 1", 1, 2, 0);
	trans[0][58]	= settr(57,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][56]	= settr(55,0,616,327,327,"EP = 2", 1, 2, 0);
	trans[0][64]	= settr(63,0,83,328,328,"tcb[2].prio = 0", 1, 2, 0);
	T = trans[ 0][83] = settr(82,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(82,0,81,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][81] = settr(80,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(80,0,65,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(80,0,67,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(80,0,69,0,0,"IF", 0, 2, 0);
	trans[0][65]	= settr(64,0,66,329,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))", 1, 2, 0);
	trans[0][66]	= settr(65,0,616,330,330,"EP = 1", 1, 2, 0);
	trans[0][82]	= settr(81,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][67]	= settr(66,0,68,331,0,"((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))", 1, 2, 0);
	trans[0][68]	= settr(67,0,616,332,332,"EP = 2", 1, 2, 0);
	trans[0][69]	= settr(68,0,79,333,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))", 1, 2, 0);
	T = trans[0][79] = settr(78,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(78,0,70,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(78,0,72,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(78,0,74,0,0,"IF", 0, 2, 0);
	trans[0][70]	= settr(69,0,71,334,0,"((tcb[1].prio<tcb[2].prio))", 1, 2, 0);
	trans[0][71]	= settr(70,0,616,335,335,"EP = 1", 1, 2, 0);
	trans[0][80]	= settr(79,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][72]	= settr(71,0,73,336,0,"((tcb[1].prio>tcb[2].prio))", 1, 2, 0);
	trans[0][73]	= settr(72,0,616,337,337,"EP = 2", 1, 2, 0);
	trans[0][74]	= settr(73,0,77,338,0,"((tcb[1].prio==tcb[2].prio))", 1, 2, 0);
	T = trans[0][77] = settr(76,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(76,0,75,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(76,0,76,0,0,"IF", 0, 2, 0);
	trans[0][75]	= settr(74,0,616,339,339,"EP = 1", 1, 2, 0);
	trans[0][78]	= settr(77,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][76]	= settr(75,0,616,340,340,"EP = 2", 1, 2, 0);
	trans[0][84]	= settr(83,0,103,341,341,"tcb[2].prio = 15", 1, 2, 0);
	T = trans[ 0][103] = settr(102,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(102,0,101,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][101] = settr(100,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(100,0,85,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(100,0,87,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(100,0,89,0,0,"IF", 0, 2, 0);
	trans[0][85]	= settr(84,0,86,342,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))", 1, 2, 0);
	trans[0][86]	= settr(85,0,616,343,343,"EP = 1", 1, 2, 0);
	trans[0][102]	= settr(101,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][87]	= settr(86,0,88,344,0,"((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))", 1, 2, 0);
	trans[0][88]	= settr(87,0,616,345,345,"EP = 2", 1, 2, 0);
	trans[0][89]	= settr(88,0,99,346,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))", 1, 2, 0);
	T = trans[0][99] = settr(98,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(98,0,90,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(98,0,92,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(98,0,94,0,0,"IF", 0, 2, 0);
	trans[0][90]	= settr(89,0,91,347,0,"((tcb[1].prio<tcb[2].prio))", 1, 2, 0);
	trans[0][91]	= settr(90,0,616,348,348,"EP = 1", 1, 2, 0);
	trans[0][100]	= settr(99,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][92]	= settr(91,0,93,349,0,"((tcb[1].prio>tcb[2].prio))", 1, 2, 0);
	trans[0][93]	= settr(92,0,616,350,350,"EP = 2", 1, 2, 0);
	trans[0][94]	= settr(93,0,97,351,0,"((tcb[1].prio==tcb[2].prio))", 1, 2, 0);
	T = trans[0][97] = settr(96,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(96,0,95,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(96,0,96,0,0,"IF", 0, 2, 0);
	trans[0][95]	= settr(94,0,616,352,352,"EP = 1", 1, 2, 0);
	trans[0][98]	= settr(97,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][96]	= settr(95,0,616,353,353,"EP = 2", 1, 2, 0);
	trans[0][104]	= settr(103,0,123,354,354,"tcb[2].prio = 31", 1, 2, 0);
	T = trans[ 0][123] = settr(122,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(122,0,121,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][121] = settr(120,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(120,0,105,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(120,0,107,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(120,0,109,0,0,"IF", 0, 2, 0);
	trans[0][105]	= settr(104,0,106,355,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))", 1, 2, 0);
	trans[0][106]	= settr(105,0,616,356,356,"EP = 1", 1, 2, 0);
	trans[0][122]	= settr(121,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][107]	= settr(106,0,108,357,0,"((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))", 1, 2, 0);
	trans[0][108]	= settr(107,0,616,358,358,"EP = 2", 1, 2, 0);
	trans[0][109]	= settr(108,0,119,359,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))", 1, 2, 0);
	T = trans[0][119] = settr(118,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(118,0,110,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(118,0,112,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(118,0,114,0,0,"IF", 0, 2, 0);
	trans[0][110]	= settr(109,0,111,360,0,"((tcb[1].prio<tcb[2].prio))", 1, 2, 0);
	trans[0][111]	= settr(110,0,616,361,361,"EP = 1", 1, 2, 0);
	trans[0][120]	= settr(119,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][112]	= settr(111,0,113,362,0,"((tcb[1].prio>tcb[2].prio))", 1, 2, 0);
	trans[0][113]	= settr(112,0,616,363,363,"EP = 2", 1, 2, 0);
	trans[0][114]	= settr(113,0,117,364,0,"((tcb[1].prio==tcb[2].prio))", 1, 2, 0);
	T = trans[0][117] = settr(116,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(116,0,115,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(116,0,116,0,0,"IF", 0, 2, 0);
	trans[0][115]	= settr(114,0,616,365,365,"EP = 1", 1, 2, 0);
	trans[0][118]	= settr(117,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][116]	= settr(115,0,616,366,366,"EP = 2", 1, 2, 0);
	trans[0][124]	= settr(123,0,143,367,367,"tcb[1].state = 1", 1, 2, 0);
	T = trans[ 0][143] = settr(142,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(142,0,141,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][141] = settr(140,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(140,0,125,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(140,0,127,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(140,0,129,0,0,"IF", 0, 2, 0);
	trans[0][125]	= settr(124,0,126,368,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))", 1, 2, 0);
	trans[0][126]	= settr(125,0,616,369,369,"EP = 1", 1, 2, 0);
	trans[0][142]	= settr(141,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][127]	= settr(126,0,128,370,0,"((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))", 1, 2, 0);
	trans[0][128]	= settr(127,0,616,371,371,"EP = 2", 1, 2, 0);
	trans[0][129]	= settr(128,0,139,372,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))", 1, 2, 0);
	T = trans[0][139] = settr(138,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(138,0,130,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(138,0,132,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(138,0,134,0,0,"IF", 0, 2, 0);
	trans[0][130]	= settr(129,0,131,373,0,"((tcb[1].prio<tcb[2].prio))", 1, 2, 0);
	trans[0][131]	= settr(130,0,616,374,374,"EP = 1", 1, 2, 0);
	trans[0][140]	= settr(139,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][132]	= settr(131,0,133,375,0,"((tcb[1].prio>tcb[2].prio))", 1, 2, 0);
	trans[0][133]	= settr(132,0,616,376,376,"EP = 2", 1, 2, 0);
	trans[0][134]	= settr(133,0,137,377,0,"((tcb[1].prio==tcb[2].prio))", 1, 2, 0);
	T = trans[0][137] = settr(136,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(136,0,135,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(136,0,136,0,0,"IF", 0, 2, 0);
	trans[0][135]	= settr(134,0,616,378,378,"EP = 1", 1, 2, 0);
	trans[0][138]	= settr(137,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][136]	= settr(135,0,616,379,379,"EP = 2", 1, 2, 0);
	trans[0][144]	= settr(143,0,163,380,380,"tcb[1].state = 3", 1, 2, 0);
	T = trans[ 0][163] = settr(162,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(162,0,161,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][161] = settr(160,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(160,0,145,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(160,0,147,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(160,0,149,0,0,"IF", 0, 2, 0);
	trans[0][145]	= settr(144,0,146,381,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))", 1, 2, 0);
	trans[0][146]	= settr(145,0,616,382,382,"EP = 1", 1, 2, 0);
	trans[0][162]	= settr(161,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][147]	= settr(146,0,148,383,0,"((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))", 1, 2, 0);
	trans[0][148]	= settr(147,0,616,384,384,"EP = 2", 1, 2, 0);
	trans[0][149]	= settr(148,0,159,385,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))", 1, 2, 0);
	T = trans[0][159] = settr(158,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(158,0,150,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(158,0,152,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(158,0,154,0,0,"IF", 0, 2, 0);
	trans[0][150]	= settr(149,0,151,386,0,"((tcb[1].prio<tcb[2].prio))", 1, 2, 0);
	trans[0][151]	= settr(150,0,616,387,387,"EP = 1", 1, 2, 0);
	trans[0][160]	= settr(159,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][152]	= settr(151,0,153,388,0,"((tcb[1].prio>tcb[2].prio))", 1, 2, 0);
	trans[0][153]	= settr(152,0,616,389,389,"EP = 2", 1, 2, 0);
	trans[0][154]	= settr(153,0,157,390,0,"((tcb[1].prio==tcb[2].prio))", 1, 2, 0);
	T = trans[0][157] = settr(156,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(156,0,155,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(156,0,156,0,0,"IF", 0, 2, 0);
	trans[0][155]	= settr(154,0,616,391,391,"EP = 1", 1, 2, 0);
	trans[0][158]	= settr(157,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][156]	= settr(155,0,616,392,392,"EP = 2", 1, 2, 0);
	trans[0][164]	= settr(163,0,183,393,393,"tcb[2].state = 1", 1, 2, 0);
	T = trans[ 0][183] = settr(182,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(182,0,181,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][181] = settr(180,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(180,0,165,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(180,0,167,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(180,0,169,0,0,"IF", 0, 2, 0);
	trans[0][165]	= settr(164,0,166,394,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))", 1, 2, 0);
	trans[0][166]	= settr(165,0,616,395,395,"EP = 1", 1, 2, 0);
	trans[0][182]	= settr(181,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][167]	= settr(166,0,168,396,0,"((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))", 1, 2, 0);
	trans[0][168]	= settr(167,0,616,397,397,"EP = 2", 1, 2, 0);
	trans[0][169]	= settr(168,0,179,398,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))", 1, 2, 0);
	T = trans[0][179] = settr(178,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(178,0,170,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(178,0,172,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(178,0,174,0,0,"IF", 0, 2, 0);
	trans[0][170]	= settr(169,0,171,399,0,"((tcb[1].prio<tcb[2].prio))", 1, 2, 0);
	trans[0][171]	= settr(170,0,616,400,400,"EP = 1", 1, 2, 0);
	trans[0][180]	= settr(179,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][172]	= settr(171,0,173,401,0,"((tcb[1].prio>tcb[2].prio))", 1, 2, 0);
	trans[0][173]	= settr(172,0,616,402,402,"EP = 2", 1, 2, 0);
	trans[0][174]	= settr(173,0,177,403,0,"((tcb[1].prio==tcb[2].prio))", 1, 2, 0);
	T = trans[0][177] = settr(176,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(176,0,175,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(176,0,176,0,0,"IF", 0, 2, 0);
	trans[0][175]	= settr(174,0,616,404,404,"EP = 1", 1, 2, 0);
	trans[0][178]	= settr(177,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][176]	= settr(175,0,616,405,405,"EP = 2", 1, 2, 0);
	trans[0][184]	= settr(183,0,203,406,406,"tcb[2].state = 3", 1, 2, 0);
	T = trans[ 0][203] = settr(202,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(202,0,201,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][201] = settr(200,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(200,0,185,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(200,0,187,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(200,0,189,0,0,"IF", 0, 2, 0);
	trans[0][185]	= settr(184,0,186,407,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))", 1, 2, 0);
	trans[0][186]	= settr(185,0,616,408,408,"EP = 1", 1, 2, 0);
	trans[0][202]	= settr(201,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][187]	= settr(186,0,188,409,0,"((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))", 1, 2, 0);
	trans[0][188]	= settr(187,0,616,410,410,"EP = 2", 1, 2, 0);
	trans[0][189]	= settr(188,0,199,411,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))", 1, 2, 0);
	T = trans[0][199] = settr(198,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(198,0,190,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(198,0,192,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(198,0,194,0,0,"IF", 0, 2, 0);
	trans[0][190]	= settr(189,0,191,412,0,"((tcb[1].prio<tcb[2].prio))", 1, 2, 0);
	trans[0][191]	= settr(190,0,616,413,413,"EP = 1", 1, 2, 0);
	trans[0][200]	= settr(199,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][192]	= settr(191,0,193,414,0,"((tcb[1].prio>tcb[2].prio))", 1, 2, 0);
	trans[0][193]	= settr(192,0,616,415,415,"EP = 2", 1, 2, 0);
	trans[0][194]	= settr(193,0,197,416,0,"((tcb[1].prio==tcb[2].prio))", 1, 2, 0);
	T = trans[0][197] = settr(196,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(196,0,195,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(196,0,196,0,0,"IF", 0, 2, 0);
	trans[0][195]	= settr(194,0,616,417,417,"EP = 1", 1, 2, 0);
	trans[0][198]	= settr(197,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][196]	= settr(195,0,616,418,418,"EP = 2", 1, 2, 0);
	trans[0][206]	= settr(205,0,207,419,0,"((EP==1))", 1, 2, 0);
	trans[0][207]	= settr(206,0,409,420,0,"assert((EP==1))", 1, 2, 0);
	T = trans[0][409] = settr(408,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(408,0,208,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(408,0,209,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(408,0,229,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(408,0,249,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(408,0,269,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(408,0,289,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(408,0,309,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(408,0,329,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(408,0,349,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(408,0,369,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(408,0,389,0,0,"IF", 0, 2, 0);
	trans[0][208]	= settr(207,0,616,1,0,"(1)", 0, 2, 0);
	trans[0][410]	= settr(409,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][209]	= settr(208,0,228,421,421,"tcb[1].prio = 0", 1, 2, 0);
	T = trans[ 0][228] = settr(227,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(227,0,226,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][226] = settr(225,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(225,0,210,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(225,0,212,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(225,0,214,0,0,"IF", 0, 2, 0);
	trans[0][210]	= settr(209,0,211,422,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))", 1, 2, 0);
	trans[0][211]	= settr(210,0,616,423,423,"EP = 1", 1, 2, 0);
	trans[0][227]	= settr(226,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][212]	= settr(211,0,213,424,0,"((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))", 1, 2, 0);
	trans[0][213]	= settr(212,0,616,425,425,"EP = 2", 1, 2, 0);
	trans[0][214]	= settr(213,0,224,426,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))", 1, 2, 0);
	T = trans[0][224] = settr(223,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(223,0,215,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(223,0,217,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(223,0,219,0,0,"IF", 0, 2, 0);
	trans[0][215]	= settr(214,0,216,427,0,"((tcb[1].prio<tcb[2].prio))", 1, 2, 0);
	trans[0][216]	= settr(215,0,616,428,428,"EP = 1", 1, 2, 0);
	trans[0][225]	= settr(224,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][217]	= settr(216,0,218,429,0,"((tcb[1].prio>tcb[2].prio))", 1, 2, 0);
	trans[0][218]	= settr(217,0,616,430,430,"EP = 2", 1, 2, 0);
	trans[0][219]	= settr(218,0,222,431,0,"((tcb[1].prio==tcb[2].prio))", 1, 2, 0);
	T = trans[0][222] = settr(221,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(221,0,220,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(221,0,221,0,0,"IF", 0, 2, 0);
	trans[0][220]	= settr(219,0,616,432,432,"EP = 1", 1, 2, 0);
	trans[0][223]	= settr(222,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][221]	= settr(220,0,616,433,433,"EP = 2", 1, 2, 0);
	trans[0][229]	= settr(228,0,248,434,434,"tcb[1].prio = 15", 1, 2, 0);
	T = trans[ 0][248] = settr(247,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(247,0,246,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][246] = settr(245,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(245,0,230,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(245,0,232,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(245,0,234,0,0,"IF", 0, 2, 0);
	trans[0][230]	= settr(229,0,231,435,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))", 1, 2, 0);
	trans[0][231]	= settr(230,0,616,436,436,"EP = 1", 1, 2, 0);
	trans[0][247]	= settr(246,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][232]	= settr(231,0,233,437,0,"((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))", 1, 2, 0);
	trans[0][233]	= settr(232,0,616,438,438,"EP = 2", 1, 2, 0);
	trans[0][234]	= settr(233,0,244,439,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))", 1, 2, 0);
	T = trans[0][244] = settr(243,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(243,0,235,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(243,0,237,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(243,0,239,0,0,"IF", 0, 2, 0);
	trans[0][235]	= settr(234,0,236,440,0,"((tcb[1].prio<tcb[2].prio))", 1, 2, 0);
	trans[0][236]	= settr(235,0,616,441,441,"EP = 1", 1, 2, 0);
	trans[0][245]	= settr(244,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][237]	= settr(236,0,238,442,0,"((tcb[1].prio>tcb[2].prio))", 1, 2, 0);
	trans[0][238]	= settr(237,0,616,443,443,"EP = 2", 1, 2, 0);
	trans[0][239]	= settr(238,0,242,444,0,"((tcb[1].prio==tcb[2].prio))", 1, 2, 0);
	T = trans[0][242] = settr(241,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(241,0,240,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(241,0,241,0,0,"IF", 0, 2, 0);
	trans[0][240]	= settr(239,0,616,445,445,"EP = 1", 1, 2, 0);
	trans[0][243]	= settr(242,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][241]	= settr(240,0,616,446,446,"EP = 2", 1, 2, 0);
	trans[0][249]	= settr(248,0,268,447,447,"tcb[1].prio = 31", 1, 2, 0);
	T = trans[ 0][268] = settr(267,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(267,0,266,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][266] = settr(265,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(265,0,250,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(265,0,252,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(265,0,254,0,0,"IF", 0, 2, 0);
	trans[0][250]	= settr(249,0,251,448,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))", 1, 2, 0);
	trans[0][251]	= settr(250,0,616,449,449,"EP = 1", 1, 2, 0);
	trans[0][267]	= settr(266,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][252]	= settr(251,0,253,450,0,"((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))", 1, 2, 0);
	trans[0][253]	= settr(252,0,616,451,451,"EP = 2", 1, 2, 0);
	trans[0][254]	= settr(253,0,264,452,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))", 1, 2, 0);
	T = trans[0][264] = settr(263,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(263,0,255,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(263,0,257,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(263,0,259,0,0,"IF", 0, 2, 0);
	trans[0][255]	= settr(254,0,256,453,0,"((tcb[1].prio<tcb[2].prio))", 1, 2, 0);
	trans[0][256]	= settr(255,0,616,454,454,"EP = 1", 1, 2, 0);
	trans[0][265]	= settr(264,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][257]	= settr(256,0,258,455,0,"((tcb[1].prio>tcb[2].prio))", 1, 2, 0);
	trans[0][258]	= settr(257,0,616,456,456,"EP = 2", 1, 2, 0);
	trans[0][259]	= settr(258,0,262,457,0,"((tcb[1].prio==tcb[2].prio))", 1, 2, 0);
	T = trans[0][262] = settr(261,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(261,0,260,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(261,0,261,0,0,"IF", 0, 2, 0);
	trans[0][260]	= settr(259,0,616,458,458,"EP = 1", 1, 2, 0);
	trans[0][263]	= settr(262,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][261]	= settr(260,0,616,459,459,"EP = 2", 1, 2, 0);
	trans[0][269]	= settr(268,0,288,460,460,"tcb[2].prio = 0", 1, 2, 0);
	T = trans[ 0][288] = settr(287,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(287,0,286,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][286] = settr(285,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(285,0,270,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(285,0,272,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(285,0,274,0,0,"IF", 0, 2, 0);
	trans[0][270]	= settr(269,0,271,461,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))", 1, 2, 0);
	trans[0][271]	= settr(270,0,616,462,462,"EP = 1", 1, 2, 0);
	trans[0][287]	= settr(286,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][272]	= settr(271,0,273,463,0,"((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))", 1, 2, 0);
	trans[0][273]	= settr(272,0,616,464,464,"EP = 2", 1, 2, 0);
	trans[0][274]	= settr(273,0,284,465,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))", 1, 2, 0);
	T = trans[0][284] = settr(283,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(283,0,275,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(283,0,277,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(283,0,279,0,0,"IF", 0, 2, 0);
	trans[0][275]	= settr(274,0,276,466,0,"((tcb[1].prio<tcb[2].prio))", 1, 2, 0);
	trans[0][276]	= settr(275,0,616,467,467,"EP = 1", 1, 2, 0);
	trans[0][285]	= settr(284,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][277]	= settr(276,0,278,468,0,"((tcb[1].prio>tcb[2].prio))", 1, 2, 0);
	trans[0][278]	= settr(277,0,616,469,469,"EP = 2", 1, 2, 0);
	trans[0][279]	= settr(278,0,282,470,0,"((tcb[1].prio==tcb[2].prio))", 1, 2, 0);
	T = trans[0][282] = settr(281,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(281,0,280,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(281,0,281,0,0,"IF", 0, 2, 0);
	trans[0][280]	= settr(279,0,616,471,471,"EP = 1", 1, 2, 0);
	trans[0][283]	= settr(282,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][281]	= settr(280,0,616,472,472,"EP = 2", 1, 2, 0);
	trans[0][289]	= settr(288,0,308,473,473,"tcb[2].prio = 15", 1, 2, 0);
	T = trans[ 0][308] = settr(307,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(307,0,306,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][306] = settr(305,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(305,0,290,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(305,0,292,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(305,0,294,0,0,"IF", 0, 2, 0);
	trans[0][290]	= settr(289,0,291,474,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))", 1, 2, 0);
	trans[0][291]	= settr(290,0,616,475,475,"EP = 1", 1, 2, 0);
	trans[0][307]	= settr(306,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][292]	= settr(291,0,293,476,0,"((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))", 1, 2, 0);
	trans[0][293]	= settr(292,0,616,477,477,"EP = 2", 1, 2, 0);
	trans[0][294]	= settr(293,0,304,478,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))", 1, 2, 0);
	T = trans[0][304] = settr(303,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(303,0,295,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(303,0,297,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(303,0,299,0,0,"IF", 0, 2, 0);
	trans[0][295]	= settr(294,0,296,479,0,"((tcb[1].prio<tcb[2].prio))", 1, 2, 0);
	trans[0][296]	= settr(295,0,616,480,480,"EP = 1", 1, 2, 0);
	trans[0][305]	= settr(304,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][297]	= settr(296,0,298,481,0,"((tcb[1].prio>tcb[2].prio))", 1, 2, 0);
	trans[0][298]	= settr(297,0,616,482,482,"EP = 2", 1, 2, 0);
	trans[0][299]	= settr(298,0,302,483,0,"((tcb[1].prio==tcb[2].prio))", 1, 2, 0);
	T = trans[0][302] = settr(301,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(301,0,300,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(301,0,301,0,0,"IF", 0, 2, 0);
	trans[0][300]	= settr(299,0,616,484,484,"EP = 1", 1, 2, 0);
	trans[0][303]	= settr(302,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][301]	= settr(300,0,616,485,485,"EP = 2", 1, 2, 0);
	trans[0][309]	= settr(308,0,328,486,486,"tcb[2].prio = 31", 1, 2, 0);
	T = trans[ 0][328] = settr(327,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(327,0,326,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][326] = settr(325,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(325,0,310,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(325,0,312,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(325,0,314,0,0,"IF", 0, 2, 0);
	trans[0][310]	= settr(309,0,311,487,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))", 1, 2, 0);
	trans[0][311]	= settr(310,0,616,488,488,"EP = 1", 1, 2, 0);
	trans[0][327]	= settr(326,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][312]	= settr(311,0,313,489,0,"((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))", 1, 2, 0);
	trans[0][313]	= settr(312,0,616,490,490,"EP = 2", 1, 2, 0);
	trans[0][314]	= settr(313,0,324,491,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))", 1, 2, 0);
	T = trans[0][324] = settr(323,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(323,0,315,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(323,0,317,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(323,0,319,0,0,"IF", 0, 2, 0);
	trans[0][315]	= settr(314,0,316,492,0,"((tcb[1].prio<tcb[2].prio))", 1, 2, 0);
	trans[0][316]	= settr(315,0,616,493,493,"EP = 1", 1, 2, 0);
	trans[0][325]	= settr(324,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][317]	= settr(316,0,318,494,0,"((tcb[1].prio>tcb[2].prio))", 1, 2, 0);
	trans[0][318]	= settr(317,0,616,495,495,"EP = 2", 1, 2, 0);
	trans[0][319]	= settr(318,0,322,496,0,"((tcb[1].prio==tcb[2].prio))", 1, 2, 0);
	T = trans[0][322] = settr(321,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(321,0,320,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(321,0,321,0,0,"IF", 0, 2, 0);
	trans[0][320]	= settr(319,0,616,497,497,"EP = 1", 1, 2, 0);
	trans[0][323]	= settr(322,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][321]	= settr(320,0,616,498,498,"EP = 2", 1, 2, 0);
	trans[0][329]	= settr(328,0,348,499,499,"tcb[1].state = 1", 1, 2, 0);
	T = trans[ 0][348] = settr(347,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(347,0,346,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][346] = settr(345,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(345,0,330,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(345,0,332,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(345,0,334,0,0,"IF", 0, 2, 0);
	trans[0][330]	= settr(329,0,331,500,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))", 1, 2, 0);
	trans[0][331]	= settr(330,0,616,501,501,"EP = 1", 1, 2, 0);
	trans[0][347]	= settr(346,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][332]	= settr(331,0,333,502,0,"((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))", 1, 2, 0);
	trans[0][333]	= settr(332,0,616,503,503,"EP = 2", 1, 2, 0);
	trans[0][334]	= settr(333,0,344,504,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))", 1, 2, 0);
	T = trans[0][344] = settr(343,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(343,0,335,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(343,0,337,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(343,0,339,0,0,"IF", 0, 2, 0);
	trans[0][335]	= settr(334,0,336,505,0,"((tcb[1].prio<tcb[2].prio))", 1, 2, 0);
	trans[0][336]	= settr(335,0,616,506,506,"EP = 1", 1, 2, 0);
	trans[0][345]	= settr(344,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][337]	= settr(336,0,338,507,0,"((tcb[1].prio>tcb[2].prio))", 1, 2, 0);
	trans[0][338]	= settr(337,0,616,508,508,"EP = 2", 1, 2, 0);
	trans[0][339]	= settr(338,0,342,509,0,"((tcb[1].prio==tcb[2].prio))", 1, 2, 0);
	T = trans[0][342] = settr(341,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(341,0,340,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(341,0,341,0,0,"IF", 0, 2, 0);
	trans[0][340]	= settr(339,0,616,510,510,"EP = 1", 1, 2, 0);
	trans[0][343]	= settr(342,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][341]	= settr(340,0,616,511,511,"EP = 2", 1, 2, 0);
	trans[0][349]	= settr(348,0,368,512,512,"tcb[1].state = 3", 1, 2, 0);
	T = trans[ 0][368] = settr(367,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(367,0,366,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][366] = settr(365,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(365,0,350,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(365,0,352,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(365,0,354,0,0,"IF", 0, 2, 0);
	trans[0][350]	= settr(349,0,351,513,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))", 1, 2, 0);
	trans[0][351]	= settr(350,0,616,514,514,"EP = 1", 1, 2, 0);
	trans[0][367]	= settr(366,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][352]	= settr(351,0,353,515,0,"((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))", 1, 2, 0);
	trans[0][353]	= settr(352,0,616,516,516,"EP = 2", 1, 2, 0);
	trans[0][354]	= settr(353,0,364,517,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))", 1, 2, 0);
	T = trans[0][364] = settr(363,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(363,0,355,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(363,0,357,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(363,0,359,0,0,"IF", 0, 2, 0);
	trans[0][355]	= settr(354,0,356,518,0,"((tcb[1].prio<tcb[2].prio))", 1, 2, 0);
	trans[0][356]	= settr(355,0,616,519,519,"EP = 1", 1, 2, 0);
	trans[0][365]	= settr(364,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][357]	= settr(356,0,358,520,0,"((tcb[1].prio>tcb[2].prio))", 1, 2, 0);
	trans[0][358]	= settr(357,0,616,521,521,"EP = 2", 1, 2, 0);
	trans[0][359]	= settr(358,0,362,522,0,"((tcb[1].prio==tcb[2].prio))", 1, 2, 0);
	T = trans[0][362] = settr(361,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(361,0,360,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(361,0,361,0,0,"IF", 0, 2, 0);
	trans[0][360]	= settr(359,0,616,523,523,"EP = 1", 1, 2, 0);
	trans[0][363]	= settr(362,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][361]	= settr(360,0,616,524,524,"EP = 2", 1, 2, 0);
	trans[0][369]	= settr(368,0,388,525,525,"tcb[2].state = 1", 1, 2, 0);
	T = trans[ 0][388] = settr(387,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(387,0,386,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][386] = settr(385,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(385,0,370,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(385,0,372,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(385,0,374,0,0,"IF", 0, 2, 0);
	trans[0][370]	= settr(369,0,371,526,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))", 1, 2, 0);
	trans[0][371]	= settr(370,0,616,527,527,"EP = 1", 1, 2, 0);
	trans[0][387]	= settr(386,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][372]	= settr(371,0,373,528,0,"((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))", 1, 2, 0);
	trans[0][373]	= settr(372,0,616,529,529,"EP = 2", 1, 2, 0);
	trans[0][374]	= settr(373,0,384,530,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))", 1, 2, 0);
	T = trans[0][384] = settr(383,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(383,0,375,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(383,0,377,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(383,0,379,0,0,"IF", 0, 2, 0);
	trans[0][375]	= settr(374,0,376,531,0,"((tcb[1].prio<tcb[2].prio))", 1, 2, 0);
	trans[0][376]	= settr(375,0,616,532,532,"EP = 1", 1, 2, 0);
	trans[0][385]	= settr(384,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][377]	= settr(376,0,378,533,0,"((tcb[1].prio>tcb[2].prio))", 1, 2, 0);
	trans[0][378]	= settr(377,0,616,534,534,"EP = 2", 1, 2, 0);
	trans[0][379]	= settr(378,0,382,535,0,"((tcb[1].prio==tcb[2].prio))", 1, 2, 0);
	T = trans[0][382] = settr(381,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(381,0,380,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(381,0,381,0,0,"IF", 0, 2, 0);
	trans[0][380]	= settr(379,0,616,536,536,"EP = 1", 1, 2, 0);
	trans[0][383]	= settr(382,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][381]	= settr(380,0,616,537,537,"EP = 2", 1, 2, 0);
	trans[0][389]	= settr(388,0,408,538,538,"tcb[2].state = 3", 1, 2, 0);
	T = trans[ 0][408] = settr(407,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(407,0,406,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][406] = settr(405,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(405,0,390,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(405,0,392,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(405,0,394,0,0,"IF", 0, 2, 0);
	trans[0][390]	= settr(389,0,391,539,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))", 1, 2, 0);
	trans[0][391]	= settr(390,0,616,540,540,"EP = 1", 1, 2, 0);
	trans[0][407]	= settr(406,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][392]	= settr(391,0,393,541,0,"((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))", 1, 2, 0);
	trans[0][393]	= settr(392,0,616,542,542,"EP = 2", 1, 2, 0);
	trans[0][394]	= settr(393,0,404,543,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))", 1, 2, 0);
	T = trans[0][404] = settr(403,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(403,0,395,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(403,0,397,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(403,0,399,0,0,"IF", 0, 2, 0);
	trans[0][395]	= settr(394,0,396,544,0,"((tcb[1].prio<tcb[2].prio))", 1, 2, 0);
	trans[0][396]	= settr(395,0,616,545,545,"EP = 1", 1, 2, 0);
	trans[0][405]	= settr(404,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][397]	= settr(396,0,398,546,0,"((tcb[1].prio>tcb[2].prio))", 1, 2, 0);
	trans[0][398]	= settr(397,0,616,547,547,"EP = 2", 1, 2, 0);
	trans[0][399]	= settr(398,0,402,548,0,"((tcb[1].prio==tcb[2].prio))", 1, 2, 0);
	T = trans[0][402] = settr(401,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(401,0,400,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(401,0,401,0,0,"IF", 0, 2, 0);
	trans[0][400]	= settr(399,0,616,549,549,"EP = 1", 1, 2, 0);
	trans[0][403]	= settr(402,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][401]	= settr(400,0,616,550,550,"EP = 2", 1, 2, 0);
	trans[0][411]	= settr(410,0,412,551,0,"((EP==1))", 1, 2, 0);
	trans[0][412]	= settr(411,0,614,552,552,"EP = 2", 1, 2, 0);
	T = trans[0][614] = settr(613,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(613,0,413,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(613,0,414,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(613,0,434,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(613,0,454,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(613,0,474,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(613,0,494,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(613,0,514,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(613,0,534,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(613,0,554,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(613,0,574,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(613,0,594,0,0,"IF", 0, 2, 0);
	trans[0][413]	= settr(412,0,616,1,0,"(1)", 0, 2, 0);
	trans[0][615]	= settr(614,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][414]	= settr(413,0,433,553,553,"tcb[1].prio = 0", 1, 2, 0);
	T = trans[ 0][433] = settr(432,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(432,0,431,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][431] = settr(430,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(430,0,415,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(430,0,417,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(430,0,419,0,0,"IF", 0, 2, 0);
	trans[0][415]	= settr(414,0,416,554,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))", 1, 2, 0);
	trans[0][416]	= settr(415,0,616,555,555,"EP = 1", 1, 2, 0);
	trans[0][432]	= settr(431,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][417]	= settr(416,0,418,556,0,"((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))", 1, 2, 0);
	trans[0][418]	= settr(417,0,616,557,557,"EP = 2", 1, 2, 0);
	trans[0][419]	= settr(418,0,429,558,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))", 1, 2, 0);
	T = trans[0][429] = settr(428,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(428,0,420,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(428,0,422,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(428,0,424,0,0,"IF", 0, 2, 0);
	trans[0][420]	= settr(419,0,421,559,0,"((tcb[1].prio<tcb[2].prio))", 1, 2, 0);
	trans[0][421]	= settr(420,0,616,560,560,"EP = 1", 1, 2, 0);
	trans[0][430]	= settr(429,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][422]	= settr(421,0,423,561,0,"((tcb[1].prio>tcb[2].prio))", 1, 2, 0);
	trans[0][423]	= settr(422,0,616,562,562,"EP = 2", 1, 2, 0);
	trans[0][424]	= settr(423,0,427,563,0,"((tcb[1].prio==tcb[2].prio))", 1, 2, 0);
	T = trans[0][427] = settr(426,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(426,0,425,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(426,0,426,0,0,"IF", 0, 2, 0);
	trans[0][425]	= settr(424,0,616,564,564,"EP = 1", 1, 2, 0);
	trans[0][428]	= settr(427,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][426]	= settr(425,0,616,565,565,"EP = 2", 1, 2, 0);
	trans[0][434]	= settr(433,0,453,566,566,"tcb[1].prio = 15", 1, 2, 0);
	T = trans[ 0][453] = settr(452,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(452,0,451,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][451] = settr(450,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(450,0,435,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(450,0,437,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(450,0,439,0,0,"IF", 0, 2, 0);
	trans[0][435]	= settr(434,0,436,567,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))", 1, 2, 0);
	trans[0][436]	= settr(435,0,616,568,568,"EP = 1", 1, 2, 0);
	trans[0][452]	= settr(451,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][437]	= settr(436,0,438,569,0,"((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))", 1, 2, 0);
	trans[0][438]	= settr(437,0,616,570,570,"EP = 2", 1, 2, 0);
	trans[0][439]	= settr(438,0,449,571,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))", 1, 2, 0);
	T = trans[0][449] = settr(448,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(448,0,440,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(448,0,442,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(448,0,444,0,0,"IF", 0, 2, 0);
	trans[0][440]	= settr(439,0,441,572,0,"((tcb[1].prio<tcb[2].prio))", 1, 2, 0);
	trans[0][441]	= settr(440,0,616,573,573,"EP = 1", 1, 2, 0);
	trans[0][450]	= settr(449,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][442]	= settr(441,0,443,574,0,"((tcb[1].prio>tcb[2].prio))", 1, 2, 0);
	trans[0][443]	= settr(442,0,616,575,575,"EP = 2", 1, 2, 0);
	trans[0][444]	= settr(443,0,447,576,0,"((tcb[1].prio==tcb[2].prio))", 1, 2, 0);
	T = trans[0][447] = settr(446,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(446,0,445,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(446,0,446,0,0,"IF", 0, 2, 0);
	trans[0][445]	= settr(444,0,616,577,577,"EP = 1", 1, 2, 0);
	trans[0][448]	= settr(447,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][446]	= settr(445,0,616,578,578,"EP = 2", 1, 2, 0);
	trans[0][454]	= settr(453,0,473,579,579,"tcb[1].prio = 31", 1, 2, 0);
	T = trans[ 0][473] = settr(472,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(472,0,471,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][471] = settr(470,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(470,0,455,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(470,0,457,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(470,0,459,0,0,"IF", 0, 2, 0);
	trans[0][455]	= settr(454,0,456,580,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))", 1, 2, 0);
	trans[0][456]	= settr(455,0,616,581,581,"EP = 1", 1, 2, 0);
	trans[0][472]	= settr(471,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][457]	= settr(456,0,458,582,0,"((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))", 1, 2, 0);
	trans[0][458]	= settr(457,0,616,583,583,"EP = 2", 1, 2, 0);
	trans[0][459]	= settr(458,0,469,584,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))", 1, 2, 0);
	T = trans[0][469] = settr(468,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(468,0,460,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(468,0,462,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(468,0,464,0,0,"IF", 0, 2, 0);
	trans[0][460]	= settr(459,0,461,585,0,"((tcb[1].prio<tcb[2].prio))", 1, 2, 0);
	trans[0][461]	= settr(460,0,616,586,586,"EP = 1", 1, 2, 0);
	trans[0][470]	= settr(469,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][462]	= settr(461,0,463,587,0,"((tcb[1].prio>tcb[2].prio))", 1, 2, 0);
	trans[0][463]	= settr(462,0,616,588,588,"EP = 2", 1, 2, 0);
	trans[0][464]	= settr(463,0,467,589,0,"((tcb[1].prio==tcb[2].prio))", 1, 2, 0);
	T = trans[0][467] = settr(466,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(466,0,465,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(466,0,466,0,0,"IF", 0, 2, 0);
	trans[0][465]	= settr(464,0,616,590,590,"EP = 1", 1, 2, 0);
	trans[0][468]	= settr(467,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][466]	= settr(465,0,616,591,591,"EP = 2", 1, 2, 0);
	trans[0][474]	= settr(473,0,493,592,592,"tcb[2].prio = 0", 1, 2, 0);
	T = trans[ 0][493] = settr(492,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(492,0,491,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][491] = settr(490,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(490,0,475,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(490,0,477,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(490,0,479,0,0,"IF", 0, 2, 0);
	trans[0][475]	= settr(474,0,476,593,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))", 1, 2, 0);
	trans[0][476]	= settr(475,0,616,594,594,"EP = 1", 1, 2, 0);
	trans[0][492]	= settr(491,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][477]	= settr(476,0,478,595,0,"((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))", 1, 2, 0);
	trans[0][478]	= settr(477,0,616,596,596,"EP = 2", 1, 2, 0);
	trans[0][479]	= settr(478,0,489,597,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))", 1, 2, 0);
	T = trans[0][489] = settr(488,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(488,0,480,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(488,0,482,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(488,0,484,0,0,"IF", 0, 2, 0);
	trans[0][480]	= settr(479,0,481,598,0,"((tcb[1].prio<tcb[2].prio))", 1, 2, 0);
	trans[0][481]	= settr(480,0,616,599,599,"EP = 1", 1, 2, 0);
	trans[0][490]	= settr(489,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][482]	= settr(481,0,483,600,0,"((tcb[1].prio>tcb[2].prio))", 1, 2, 0);
	trans[0][483]	= settr(482,0,616,601,601,"EP = 2", 1, 2, 0);
	trans[0][484]	= settr(483,0,487,602,0,"((tcb[1].prio==tcb[2].prio))", 1, 2, 0);
	T = trans[0][487] = settr(486,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(486,0,485,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(486,0,486,0,0,"IF", 0, 2, 0);
	trans[0][485]	= settr(484,0,616,603,603,"EP = 1", 1, 2, 0);
	trans[0][488]	= settr(487,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][486]	= settr(485,0,616,604,604,"EP = 2", 1, 2, 0);
	trans[0][494]	= settr(493,0,513,605,605,"tcb[2].prio = 15", 1, 2, 0);
	T = trans[ 0][513] = settr(512,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(512,0,511,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][511] = settr(510,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(510,0,495,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(510,0,497,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(510,0,499,0,0,"IF", 0, 2, 0);
	trans[0][495]	= settr(494,0,496,606,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))", 1, 2, 0);
	trans[0][496]	= settr(495,0,616,607,607,"EP = 1", 1, 2, 0);
	trans[0][512]	= settr(511,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][497]	= settr(496,0,498,608,0,"((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))", 1, 2, 0);
	trans[0][498]	= settr(497,0,616,609,609,"EP = 2", 1, 2, 0);
	trans[0][499]	= settr(498,0,509,610,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))", 1, 2, 0);
	T = trans[0][509] = settr(508,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(508,0,500,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(508,0,502,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(508,0,504,0,0,"IF", 0, 2, 0);
	trans[0][500]	= settr(499,0,501,611,0,"((tcb[1].prio<tcb[2].prio))", 1, 2, 0);
	trans[0][501]	= settr(500,0,616,612,612,"EP = 1", 1, 2, 0);
	trans[0][510]	= settr(509,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][502]	= settr(501,0,503,613,0,"((tcb[1].prio>tcb[2].prio))", 1, 2, 0);
	trans[0][503]	= settr(502,0,616,614,614,"EP = 2", 1, 2, 0);
	trans[0][504]	= settr(503,0,507,615,0,"((tcb[1].prio==tcb[2].prio))", 1, 2, 0);
	T = trans[0][507] = settr(506,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(506,0,505,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(506,0,506,0,0,"IF", 0, 2, 0);
	trans[0][505]	= settr(504,0,616,616,616,"EP = 1", 1, 2, 0);
	trans[0][508]	= settr(507,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][506]	= settr(505,0,616,617,617,"EP = 2", 1, 2, 0);
	trans[0][514]	= settr(513,0,533,618,618,"tcb[2].prio = 31", 1, 2, 0);
	T = trans[ 0][533] = settr(532,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(532,0,531,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][531] = settr(530,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(530,0,515,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(530,0,517,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(530,0,519,0,0,"IF", 0, 2, 0);
	trans[0][515]	= settr(514,0,516,619,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))", 1, 2, 0);
	trans[0][516]	= settr(515,0,616,620,620,"EP = 1", 1, 2, 0);
	trans[0][532]	= settr(531,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][517]	= settr(516,0,518,621,0,"((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))", 1, 2, 0);
	trans[0][518]	= settr(517,0,616,622,622,"EP = 2", 1, 2, 0);
	trans[0][519]	= settr(518,0,529,623,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))", 1, 2, 0);
	T = trans[0][529] = settr(528,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(528,0,520,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(528,0,522,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(528,0,524,0,0,"IF", 0, 2, 0);
	trans[0][520]	= settr(519,0,521,624,0,"((tcb[1].prio<tcb[2].prio))", 1, 2, 0);
	trans[0][521]	= settr(520,0,616,625,625,"EP = 1", 1, 2, 0);
	trans[0][530]	= settr(529,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][522]	= settr(521,0,523,626,0,"((tcb[1].prio>tcb[2].prio))", 1, 2, 0);
	trans[0][523]	= settr(522,0,616,627,627,"EP = 2", 1, 2, 0);
	trans[0][524]	= settr(523,0,527,628,0,"((tcb[1].prio==tcb[2].prio))", 1, 2, 0);
	T = trans[0][527] = settr(526,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(526,0,525,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(526,0,526,0,0,"IF", 0, 2, 0);
	trans[0][525]	= settr(524,0,616,629,629,"EP = 1", 1, 2, 0);
	trans[0][528]	= settr(527,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][526]	= settr(525,0,616,630,630,"EP = 2", 1, 2, 0);
	trans[0][534]	= settr(533,0,553,631,631,"tcb[1].state = 1", 1, 2, 0);
	T = trans[ 0][553] = settr(552,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(552,0,551,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][551] = settr(550,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(550,0,535,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(550,0,537,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(550,0,539,0,0,"IF", 0, 2, 0);
	trans[0][535]	= settr(534,0,536,632,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))", 1, 2, 0);
	trans[0][536]	= settr(535,0,616,633,633,"EP = 1", 1, 2, 0);
	trans[0][552]	= settr(551,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][537]	= settr(536,0,538,634,0,"((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))", 1, 2, 0);
	trans[0][538]	= settr(537,0,616,635,635,"EP = 2", 1, 2, 0);
	trans[0][539]	= settr(538,0,549,636,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))", 1, 2, 0);
	T = trans[0][549] = settr(548,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(548,0,540,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(548,0,542,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(548,0,544,0,0,"IF", 0, 2, 0);
	trans[0][540]	= settr(539,0,541,637,0,"((tcb[1].prio<tcb[2].prio))", 1, 2, 0);
	trans[0][541]	= settr(540,0,616,638,638,"EP = 1", 1, 2, 0);
	trans[0][550]	= settr(549,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][542]	= settr(541,0,543,639,0,"((tcb[1].prio>tcb[2].prio))", 1, 2, 0);
	trans[0][543]	= settr(542,0,616,640,640,"EP = 2", 1, 2, 0);
	trans[0][544]	= settr(543,0,547,641,0,"((tcb[1].prio==tcb[2].prio))", 1, 2, 0);
	T = trans[0][547] = settr(546,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(546,0,545,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(546,0,546,0,0,"IF", 0, 2, 0);
	trans[0][545]	= settr(544,0,616,642,642,"EP = 1", 1, 2, 0);
	trans[0][548]	= settr(547,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][546]	= settr(545,0,616,643,643,"EP = 2", 1, 2, 0);
	trans[0][554]	= settr(553,0,573,644,644,"tcb[1].state = 3", 1, 2, 0);
	T = trans[ 0][573] = settr(572,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(572,0,571,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][571] = settr(570,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(570,0,555,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(570,0,557,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(570,0,559,0,0,"IF", 0, 2, 0);
	trans[0][555]	= settr(554,0,556,645,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))", 1, 2, 0);
	trans[0][556]	= settr(555,0,616,646,646,"EP = 1", 1, 2, 0);
	trans[0][572]	= settr(571,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][557]	= settr(556,0,558,647,0,"((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))", 1, 2, 0);
	trans[0][558]	= settr(557,0,616,648,648,"EP = 2", 1, 2, 0);
	trans[0][559]	= settr(558,0,569,649,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))", 1, 2, 0);
	T = trans[0][569] = settr(568,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(568,0,560,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(568,0,562,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(568,0,564,0,0,"IF", 0, 2, 0);
	trans[0][560]	= settr(559,0,561,650,0,"((tcb[1].prio<tcb[2].prio))", 1, 2, 0);
	trans[0][561]	= settr(560,0,616,651,651,"EP = 1", 1, 2, 0);
	trans[0][570]	= settr(569,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][562]	= settr(561,0,563,652,0,"((tcb[1].prio>tcb[2].prio))", 1, 2, 0);
	trans[0][563]	= settr(562,0,616,653,653,"EP = 2", 1, 2, 0);
	trans[0][564]	= settr(563,0,567,654,0,"((tcb[1].prio==tcb[2].prio))", 1, 2, 0);
	T = trans[0][567] = settr(566,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(566,0,565,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(566,0,566,0,0,"IF", 0, 2, 0);
	trans[0][565]	= settr(564,0,616,655,655,"EP = 1", 1, 2, 0);
	trans[0][568]	= settr(567,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][566]	= settr(565,0,616,656,656,"EP = 2", 1, 2, 0);
	trans[0][574]	= settr(573,0,593,657,657,"tcb[2].state = 1", 1, 2, 0);
	T = trans[ 0][593] = settr(592,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(592,0,591,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][591] = settr(590,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(590,0,575,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(590,0,577,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(590,0,579,0,0,"IF", 0, 2, 0);
	trans[0][575]	= settr(574,0,576,658,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))", 1, 2, 0);
	trans[0][576]	= settr(575,0,616,659,659,"EP = 1", 1, 2, 0);
	trans[0][592]	= settr(591,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][577]	= settr(576,0,578,660,0,"((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))", 1, 2, 0);
	trans[0][578]	= settr(577,0,616,661,661,"EP = 2", 1, 2, 0);
	trans[0][579]	= settr(578,0,589,662,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))", 1, 2, 0);
	T = trans[0][589] = settr(588,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(588,0,580,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(588,0,582,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(588,0,584,0,0,"IF", 0, 2, 0);
	trans[0][580]	= settr(579,0,581,663,0,"((tcb[1].prio<tcb[2].prio))", 1, 2, 0);
	trans[0][581]	= settr(580,0,616,664,664,"EP = 1", 1, 2, 0);
	trans[0][590]	= settr(589,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][582]	= settr(581,0,583,665,0,"((tcb[1].prio>tcb[2].prio))", 1, 2, 0);
	trans[0][583]	= settr(582,0,616,666,666,"EP = 2", 1, 2, 0);
	trans[0][584]	= settr(583,0,587,667,0,"((tcb[1].prio==tcb[2].prio))", 1, 2, 0);
	T = trans[0][587] = settr(586,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(586,0,585,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(586,0,586,0,0,"IF", 0, 2, 0);
	trans[0][585]	= settr(584,0,616,668,668,"EP = 1", 1, 2, 0);
	trans[0][588]	= settr(587,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][586]	= settr(585,0,616,669,669,"EP = 2", 1, 2, 0);
	trans[0][594]	= settr(593,0,613,670,670,"tcb[2].state = 3", 1, 2, 0);
	T = trans[ 0][613] = settr(612,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(612,0,611,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][611] = settr(610,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(610,0,595,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(610,0,597,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(610,0,599,0,0,"IF", 0, 2, 0);
	trans[0][595]	= settr(594,0,596,671,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))", 1, 2, 0);
	trans[0][596]	= settr(595,0,616,672,672,"EP = 1", 1, 2, 0);
	trans[0][612]	= settr(611,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][597]	= settr(596,0,598,673,0,"((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))", 1, 2, 0);
	trans[0][598]	= settr(597,0,616,674,674,"EP = 2", 1, 2, 0);
	trans[0][599]	= settr(598,0,609,675,0,"((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))", 1, 2, 0);
	T = trans[0][609] = settr(608,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(608,0,600,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(608,0,602,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(608,0,604,0,0,"IF", 0, 2, 0);
	trans[0][600]	= settr(599,0,601,676,0,"((tcb[1].prio<tcb[2].prio))", 1, 2, 0);
	trans[0][601]	= settr(600,0,616,677,677,"EP = 1", 1, 2, 0);
	trans[0][610]	= settr(609,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][602]	= settr(601,0,603,678,0,"((tcb[1].prio>tcb[2].prio))", 1, 2, 0);
	trans[0][603]	= settr(602,0,616,679,679,"EP = 2", 1, 2, 0);
	trans[0][604]	= settr(603,0,607,680,0,"((tcb[1].prio==tcb[2].prio))", 1, 2, 0);
	T = trans[0][607] = settr(606,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(606,0,605,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(606,0,606,0,0,"IF", 0, 2, 0);
	trans[0][605]	= settr(604,0,616,681,681,"EP = 1", 1, 2, 0);
	trans[0][608]	= settr(607,0,616,1,0,".(goto)", 0, 2, 0);
	trans[0][606]	= settr(605,0,616,682,682,"EP = 2", 1, 2, 0);
	trans[0][618]	= settr(617,0,619,1,0,"break", 0, 2, 0);
	trans[0][619]	= settr(618,0,0,683,683,"-end-", 0, 3500, 0);
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
