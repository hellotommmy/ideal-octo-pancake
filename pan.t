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

	trans = (Trans ***) emalloc(9*sizeof(Trans **));

	/* proctype 7: all_starvation_free */

	trans[7] = (Trans **) emalloc(157*sizeof(Trans *));

	trans[7][20]	= settr(431,0,19,1,0,".(goto)", 0, 2, 0);
	T = trans[7][19] = settr(430,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(430,0,1,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(430,0,3,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(430,0,5,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(430,0,7,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(430,0,9,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(430,0,11,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(430,0,13,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(430,0,15,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(430,0,17,0,0,"DO", 0, 2, 0);
	trans[7][1]	= settr(412,0,28,3,0,"(((!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==2)))&&(EP>=2)))", 1, 2, 0);
	trans[7][2]	= settr(413,0,28,1,0,"goto accept_S9", 0, 2, 0);
	trans[7][3]	= settr(414,0,123,4,0,"((!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==2))))", 1, 2, 0);
	trans[7][4]	= settr(415,0,123,1,0,"goto T0_S350", 0, 2, 0);
	trans[7][5]	= settr(416,0,44,5,0,"(((!((pending_exp>0))&&!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1)))))&&!((EP==2))))", 1, 2, 0);
	trans[7][6]	= settr(417,0,44,1,0,"goto accept_S244", 0, 2, 0);
	trans[7][7]	= settr(418,0,37,6,0,"(((!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==(2+1))))&&(EP>=2)))", 1, 2, 0);
	trans[7][8]	= settr(419,0,37,1,0,"goto accept_S140", 0, 2, 0);
	trans[7][9]	= settr(420,0,132,7,0,"((!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==(2+1)))))", 1, 2, 0);
	trans[7][10]	= settr(421,0,132,1,0,"goto T0_S371", 0, 2, 0);
	trans[7][11]	= settr(422,0,51,8,0,"(((!((pending_exp>0))&&!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1)))))&&!((EP==(2+1)))))", 1, 2, 0);
	trans[7][12]	= settr(423,0,51,1,0,"goto accept_S267", 0, 2, 0);
	trans[7][13]	= settr(424,0,19,9,0,"((EP>=2))", 1, 2, 0);
	trans[7][14]	= settr(425,0,19,1,0,"goto T0_init", 0, 2, 0);
	trans[7][15]	= settr(426,0,153,1,0,"(1)", 0, 2, 0);
	trans[7][16]	= settr(427,0,153,1,0,"goto T0_S384", 0, 2, 0);
	trans[7][17]	= settr(428,0,114,10,0,"(!((pending_exp>0)))", 1, 2, 0);
	trans[7][18]	= settr(429,0,114,1,0,"goto T0_S317", 0, 2, 0);
	trans[7][21]	= settr(432,0,28,1,0,"break", 0, 2, 0);
	trans[7][29]	= settr(440,0,28,1,0,".(goto)", 0, 2, 0);
	T = trans[7][28] = settr(439,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(439,0,22,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(439,0,24,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(439,0,26,0,0,"DO", 0, 2, 0);
	trans[7][22]	= settr(433,0,74,11,0,"((!((EP==2))&&(EP>=2)))", 1, 2, 0);
	trans[7][23]	= settr(434,0,74,1,0,"goto T0_S9", 0, 2, 0);
	trans[7][24]	= settr(435,0,123,12,0,"(!((EP==2)))", 1, 2, 0);
	trans[7][25]	= settr(436,0,123,1,0,"goto T0_S350", 0, 2, 0);
	trans[7][26]	= settr(437,0,90,13,0,"((!((pending_exp>0))&&!((EP==2))))", 1, 2, 0);
	trans[7][27]	= settr(438,0,90,1,0,"goto T0_S244", 0, 2, 0);
	trans[7][30]	= settr(441,0,37,1,0,"break", 0, 2, 0);
	trans[7][38]	= settr(449,0,37,1,0,".(goto)", 0, 2, 0);
	T = trans[7][37] = settr(448,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(448,0,31,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(448,0,33,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(448,0,35,0,0,"DO", 0, 2, 0);
	trans[7][31]	= settr(442,0,83,14,0,"((!((EP==(2+1)))&&(EP>=2)))", 1, 2, 0);
	trans[7][32]	= settr(443,0,83,1,0,"goto T0_S140", 0, 2, 0);
	trans[7][33]	= settr(444,0,132,15,0,"(!((EP==(2+1))))", 1, 2, 0);
	trans[7][34]	= settr(445,0,132,1,0,"goto T0_S371", 0, 2, 0);
	trans[7][35]	= settr(446,0,97,16,0,"((!((pending_exp>0))&&!((EP==(2+1)))))", 1, 2, 0);
	trans[7][36]	= settr(447,0,97,1,0,"goto T0_S267", 0, 2, 0);
	trans[7][39]	= settr(450,0,44,1,0,"break", 0, 2, 0);
	trans[7][45]	= settr(456,0,44,1,0,".(goto)", 0, 2, 0);
	T = trans[7][44] = settr(455,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(455,0,40,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(455,0,42,0,0,"DO", 0, 2, 0);
	trans[7][40]	= settr(451,0,123,17,0,"(!((EP==2)))", 1, 2, 0);
	trans[7][41]	= settr(452,0,123,1,0,"goto T0_S350", 0, 2, 0);
	trans[7][42]	= settr(453,0,90,18,0,"(((!((pending_exp>0))&&!((EP==2)))||(!((EP==2))&&(EP>=2))))", 1, 2, 0);
	trans[7][43]	= settr(454,0,90,1,0,"goto T0_S244", 0, 2, 0);
	trans[7][46]	= settr(457,0,51,1,0,"break", 0, 2, 0);
	trans[7][52]	= settr(463,0,51,1,0,".(goto)", 0, 2, 0);
	T = trans[7][51] = settr(462,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(462,0,47,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(462,0,49,0,0,"DO", 0, 2, 0);
	trans[7][47]	= settr(458,0,132,19,0,"(!((EP==(2+1))))", 1, 2, 0);
	trans[7][48]	= settr(459,0,132,1,0,"goto T0_S371", 0, 2, 0);
	trans[7][49]	= settr(460,0,97,20,0,"(((!((pending_exp>0))&&!((EP==(2+1))))||(!((EP==(2+1)))&&(EP>=2))))", 1, 2, 0);
	trans[7][50]	= settr(461,0,97,1,0,"goto T0_S267", 0, 2, 0);
	trans[7][53]	= settr(464,0,58,1,0,"break", 0, 2, 0);
	trans[7][59]	= settr(470,0,58,1,0,".(goto)", 0, 2, 0);
	T = trans[7][58] = settr(469,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(469,0,54,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(469,0,56,0,0,"DO", 0, 2, 0);
	trans[7][54]	= settr(465,0,123,21,0,"(!((EP==2)))", 1, 2, 0);
	trans[7][55]	= settr(466,0,123,1,0,"goto T0_S350", 0, 2, 0);
	trans[7][56]	= settr(467,0,90,22,0,"((!((EP==2))&&(EP>=2)))", 1, 2, 0);
	trans[7][57]	= settr(468,0,90,1,0,"goto T0_S244", 0, 2, 0);
	trans[7][60]	= settr(471,0,65,1,0,"break", 0, 2, 0);
	trans[7][66]	= settr(477,0,65,1,0,".(goto)", 0, 2, 0);
	T = trans[7][65] = settr(476,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(476,0,61,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(476,0,63,0,0,"DO", 0, 2, 0);
	trans[7][61]	= settr(472,0,132,23,0,"(!((EP==(2+1))))", 1, 2, 0);
	trans[7][62]	= settr(473,0,132,1,0,"goto T0_S371", 0, 2, 0);
	trans[7][63]	= settr(474,0,97,24,0,"((!((EP==(2+1)))&&(EP>=2)))", 1, 2, 0);
	trans[7][64]	= settr(475,0,97,1,0,"goto T0_S267", 0, 2, 0);
	trans[7][67]	= settr(478,0,74,1,0,"break", 0, 2, 0);
	trans[7][75]	= settr(486,0,74,1,0,".(goto)", 0, 2, 0);
	T = trans[7][74] = settr(485,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(485,0,68,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(485,0,70,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(485,0,72,0,0,"DO", 0, 2, 0);
	trans[7][68]	= settr(479,0,28,25,0,"((!((EP==2))&&(EP>=2)))", 1, 2, 0);
	trans[7][69]	= settr(480,0,28,1,0,"goto accept_S9", 0, 2, 0);
	trans[7][70]	= settr(481,0,123,26,0,"(!((EP==2)))", 1, 2, 0);
	trans[7][71]	= settr(482,0,123,1,0,"goto T0_S350", 0, 2, 0);
	trans[7][72]	= settr(483,0,44,27,0,"((!((pending_exp>0))&&!((EP==2))))", 1, 2, 0);
	trans[7][73]	= settr(484,0,44,1,0,"goto accept_S244", 0, 2, 0);
	trans[7][76]	= settr(487,0,83,1,0,"break", 0, 2, 0);
	trans[7][84]	= settr(495,0,83,1,0,".(goto)", 0, 2, 0);
	T = trans[7][83] = settr(494,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(494,0,77,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(494,0,79,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(494,0,81,0,0,"DO", 0, 2, 0);
	trans[7][77]	= settr(488,0,37,28,0,"((!((EP==(2+1)))&&(EP>=2)))", 1, 2, 0);
	trans[7][78]	= settr(489,0,37,1,0,"goto accept_S140", 0, 2, 0);
	trans[7][79]	= settr(490,0,132,29,0,"(!((EP==(2+1))))", 1, 2, 0);
	trans[7][80]	= settr(491,0,132,1,0,"goto T0_S371", 0, 2, 0);
	trans[7][81]	= settr(492,0,51,30,0,"((!((pending_exp>0))&&!((EP==(2+1)))))", 1, 2, 0);
	trans[7][82]	= settr(493,0,51,1,0,"goto accept_S267", 0, 2, 0);
	trans[7][85]	= settr(496,0,90,1,0,"break", 0, 2, 0);
	trans[7][91]	= settr(502,0,90,1,0,".(goto)", 0, 2, 0);
	T = trans[7][90] = settr(501,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(501,0,86,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(501,0,88,0,0,"DO", 0, 2, 0);
	trans[7][86]	= settr(497,0,123,31,0,"(!((EP==2)))", 1, 2, 0);
	trans[7][87]	= settr(498,0,123,1,0,"goto T0_S350", 0, 2, 0);
	trans[7][88]	= settr(499,0,44,32,0,"(((!((pending_exp>0))&&!((EP==2)))||(!((EP==2))&&(EP>=2))))", 1, 2, 0);
	trans[7][89]	= settr(500,0,44,1,0,"goto accept_S244", 0, 2, 0);
	trans[7][92]	= settr(503,0,97,1,0,"break", 0, 2, 0);
	trans[7][98]	= settr(509,0,97,1,0,".(goto)", 0, 2, 0);
	T = trans[7][97] = settr(508,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(508,0,93,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(508,0,95,0,0,"DO", 0, 2, 0);
	trans[7][93]	= settr(504,0,132,33,0,"(!((EP==(2+1))))", 1, 2, 0);
	trans[7][94]	= settr(505,0,132,1,0,"goto T0_S371", 0, 2, 0);
	trans[7][95]	= settr(506,0,51,34,0,"(((!((pending_exp>0))&&!((EP==(2+1))))||(!((EP==(2+1)))&&(EP>=2))))", 1, 2, 0);
	trans[7][96]	= settr(507,0,51,1,0,"goto accept_S267", 0, 2, 0);
	trans[7][99]	= settr(510,0,114,1,0,"break", 0, 2, 0);
	trans[7][115]	= settr(526,0,114,1,0,".(goto)", 0, 2, 0);
	T = trans[7][114] = settr(525,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(525,0,100,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(525,0,102,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(525,0,104,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(525,0,106,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(525,0,108,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(525,0,110,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(525,0,112,0,0,"DO", 0, 2, 0);
	trans[7][100]	= settr(511,0,123,35,0,"((!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==2))))", 1, 2, 0);
	trans[7][101]	= settr(512,0,123,1,0,"goto T0_S350", 0, 2, 0);
	trans[7][102]	= settr(513,0,44,36,0,"(((!((pending_exp>0))&&(!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==2))))||(!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&(!((EP==2))&&(EP>=2)))))", 1, 2, 0);
	trans[7][103]	= settr(514,0,44,1,0,"goto accept_S244", 0, 2, 0);
	trans[7][104]	= settr(515,0,132,37,0,"((!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==(2+1)))))", 1, 2, 0);
	trans[7][105]	= settr(516,0,132,1,0,"goto T0_S371", 0, 2, 0);
	trans[7][106]	= settr(517,0,51,38,0,"(((!((pending_exp>0))&&(!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==(2+1)))))||(!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&(!((EP==(2+1)))&&(EP>=2)))))", 1, 2, 0);
	trans[7][107]	= settr(518,0,51,1,0,"goto accept_S267", 0, 2, 0);
	trans[7][108]	= settr(519,0,19,39,0,"((EP>=2))", 1, 2, 0);
	trans[7][109]	= settr(520,0,19,1,0,"goto T0_init", 0, 2, 0);
	trans[7][110]	= settr(521,0,153,1,0,"(1)", 0, 2, 0);
	trans[7][111]	= settr(522,0,153,1,0,"goto T0_S384", 0, 2, 0);
	trans[7][112]	= settr(523,0,114,40,0,"(!((pending_exp>0)))", 1, 2, 0);
	trans[7][113]	= settr(524,0,114,1,0,"goto T0_S317", 0, 2, 0);
	trans[7][116]	= settr(527,0,123,1,0,"break", 0, 2, 0);
	trans[7][124]	= settr(535,0,123,1,0,".(goto)", 0, 2, 0);
	T = trans[7][123] = settr(534,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(534,0,117,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(534,0,119,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(534,0,121,0,0,"DO", 0, 2, 0);
	trans[7][117]	= settr(528,0,123,41,0,"(!((EP==2)))", 1, 2, 0);
	trans[7][118]	= settr(529,0,123,1,0,"goto T0_S350", 0, 2, 0);
	trans[7][119]	= settr(530,0,44,42,0,"((!((EP==2))&&(EP>=2)))", 1, 2, 0);
	trans[7][120]	= settr(531,0,44,1,0,"goto accept_S244", 0, 2, 0);
	trans[7][121]	= settr(532,0,58,43,0,"((!((EP==2))&&(EP>=2)))", 1, 2, 0);
	trans[7][122]	= settr(533,0,58,1,0,"goto accept_S350", 0, 2, 0);
	trans[7][125]	= settr(536,0,132,1,0,"break", 0, 2, 0);
	trans[7][133]	= settr(544,0,132,1,0,".(goto)", 0, 2, 0);
	T = trans[7][132] = settr(543,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(543,0,126,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(543,0,128,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(543,0,130,0,0,"DO", 0, 2, 0);
	trans[7][126]	= settr(537,0,132,44,0,"(!((EP==(2+1))))", 1, 2, 0);
	trans[7][127]	= settr(538,0,132,1,0,"goto T0_S371", 0, 2, 0);
	trans[7][128]	= settr(539,0,51,45,0,"((!((EP==(2+1)))&&(EP>=2)))", 1, 2, 0);
	trans[7][129]	= settr(540,0,51,1,0,"goto accept_S267", 0, 2, 0);
	trans[7][130]	= settr(541,0,65,46,0,"((!((EP==(2+1)))&&(EP>=2)))", 1, 2, 0);
	trans[7][131]	= settr(542,0,65,1,0,"goto accept_S371", 0, 2, 0);
	trans[7][134]	= settr(545,0,153,1,0,"break", 0, 2, 0);
	trans[7][154]	= settr(565,0,153,1,0,".(goto)", 0, 2, 0);
	T = trans[7][153] = settr(564,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(564,0,135,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(564,0,137,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(564,0,139,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(564,0,141,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(564,0,143,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(564,0,145,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(564,0,147,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(564,0,149,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(564,0,151,0,0,"DO", 0, 2, 0);
	trans[7][135]	= settr(546,0,123,47,0,"((!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==2))))", 1, 2, 0);
	trans[7][136]	= settr(547,0,123,1,0,"goto T0_S350", 0, 2, 0);
	trans[7][137]	= settr(548,0,132,48,0,"((!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==(2+1)))))", 1, 2, 0);
	trans[7][138]	= settr(549,0,132,1,0,"goto T0_S371", 0, 2, 0);
	trans[7][139]	= settr(550,0,19,49,0,"((EP>=2))", 1, 2, 0);
	trans[7][140]	= settr(551,0,19,1,0,"goto T0_init", 0, 2, 0);
	trans[7][141]	= settr(552,0,153,1,0,"(1)", 0, 2, 0);
	trans[7][142]	= settr(553,0,153,1,0,"goto T0_S384", 0, 2, 0);
	trans[7][143]	= settr(554,0,44,50,0,"(((!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==2)))&&(EP>=2)))", 1, 2, 0);
	trans[7][144]	= settr(555,0,44,1,0,"goto accept_S244", 0, 2, 0);
	trans[7][145]	= settr(556,0,58,51,0,"(((!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==2)))&&(EP>=2)))", 1, 2, 0);
	trans[7][146]	= settr(557,0,58,1,0,"goto accept_S350", 0, 2, 0);
	trans[7][147]	= settr(558,0,51,52,0,"(((!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==(2+1))))&&(EP>=2)))", 1, 2, 0);
	trans[7][148]	= settr(559,0,51,1,0,"goto accept_S267", 0, 2, 0);
	trans[7][149]	= settr(560,0,65,53,0,"(((!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==(2+1))))&&(EP>=2)))", 1, 2, 0);
	trans[7][150]	= settr(561,0,65,1,0,"goto accept_S371", 0, 2, 0);
	trans[7][151]	= settr(562,0,114,54,0,"((!((pending_exp>0))&&(EP>=2)))", 1, 2, 0);
	trans[7][152]	= settr(563,0,114,1,0,"goto T0_S317", 0, 2, 0);
	trans[7][155]	= settr(566,0,156,1,0,"break", 0, 2, 0);
	trans[7][156]	= settr(567,0,0,55,55,"-end-", 0, 3500, 0);

	/* proctype 6: exc_leads_to_user */

	trans[6] = (Trans **) emalloc(14*sizeof(Trans *));

	trans[6][6]	= settr(404,0,5,1,0,".(goto)", 0, 2, 0);
	T = trans[6][5] = settr(403,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(403,0,1,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(403,0,3,0,0,"DO", 0, 2, 0);
	trans[6][1]	= settr(399,0,10,56,0,"((!(!((EP<2)))&&!((EP>=2))))", 1, 2, 0);
	trans[6][2]	= settr(400,0,10,1,0,"goto accept_S4", 0, 2, 0);
	trans[6][3]	= settr(401,0,5,1,0,"(1)", 0, 2, 0);
	trans[6][4]	= settr(402,0,5,1,0,"goto T0_init", 0, 2, 0);
	trans[6][7]	= settr(405,0,10,1,0,"break", 0, 2, 0);
	trans[6][11]	= settr(409,0,10,1,0,".(goto)", 0, 2, 0);
	T = trans[6][10] = settr(408,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(408,0,8,0,0,"DO", 0, 2, 0);
	trans[6][8]	= settr(406,0,10,57,0,"(!((EP>=2)))", 1, 2, 0);
	trans[6][9]	= settr(407,0,10,1,0,"goto accept_S4", 0, 2, 0);
	trans[6][12]	= settr(410,0,13,1,0,"break", 0, 2, 0);
	trans[6][13]	= settr(411,0,0,58,58,"-end-", 0, 3500, 0);

	/* proctype 5: back_to_user */

	trans[5] = (Trans **) emalloc(14*sizeof(Trans *));

	trans[5][6]	= settr(391,0,5,1,0,".(goto)", 0, 2, 0);
	T = trans[5][5] = settr(390,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(390,0,1,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(390,0,3,0,0,"DO", 0, 2, 0);
	trans[5][1]	= settr(386,0,10,59,0,"(!((EP>=2)))", 1, 2, 0);
	trans[5][2]	= settr(387,0,10,1,0,"goto accept_S4", 0, 2, 0);
	trans[5][3]	= settr(388,0,5,1,0,"(1)", 0, 2, 0);
	trans[5][4]	= settr(389,0,5,1,0,"goto T0_init", 0, 2, 0);
	trans[5][7]	= settr(392,0,10,1,0,"break", 0, 2, 0);
	trans[5][11]	= settr(396,0,10,1,0,".(goto)", 0, 2, 0);
	T = trans[5][10] = settr(395,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(395,0,8,0,0,"DO", 0, 2, 0);
	trans[5][8]	= settr(393,0,10,60,0,"(!((EP>=2)))", 1, 2, 0);
	trans[5][9]	= settr(394,0,10,1,0,"goto accept_S4", 0, 2, 0);
	trans[5][12]	= settr(397,0,13,1,0,"break", 0, 2, 0);
	trans[5][13]	= settr(398,0,0,61,61,"-end-", 0, 3500, 0);

	/* proctype 4: :init: */

	trans[4] = (Trans **) emalloc(83*sizeof(Trans *));

	trans[4][1]	= settr(304,0,17,62,62,"i = 0", 0, 2, 0);
	trans[4][18]	= settr(321,0,17,1,0,".(goto)", 0, 2, 0);
	T = trans[4][17] = settr(320,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(320,0,2,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(320,0,15,0,0,"DO", 0, 2, 0);
	trans[4][2]	= settr(305,0,13,63,0,"((i<4))", 0, 2, 0);
	T = trans[ 4][13] = settr(316,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(316,0,3,0,0,"sub-sequence", 0, 2, 0);
	trans[4][3]	= settr(306,0,9,64,64,"idx = 0", 0, 2, 0);
	trans[4][10]	= settr(313,0,9,1,0,".(goto)", 0, 2, 0);
	T = trans[4][9] = settr(312,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(312,0,4,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(312,0,7,0,0,"DO", 0, 2, 0);
	trans[4][4]	= settr(307,0,5,65,0,"((idx<5))", 0, 2, 0);
	trans[4][5]	= settr(308,0,6,66,66,"readyQueue[i].tasks[idx] = 255", 1, 2, 0);
	trans[4][6]	= settr(309,0,9,67,67,"idx = (idx+1)", 0, 2, 0);
	trans[4][7]	= settr(310,0,12,2,0,"else", 0, 2, 0);
	trans[4][8]	= settr(311,0,12,1,0,"goto :b7", 0, 2, 0);
	trans[4][11]	= settr(314,0,12,1,0,"break", 0, 2, 0);
	trans[4][12]	= settr(315,0,14,68,68,"readyQueue[i].tailIndex = 0", 1, 2, 0);
	trans[4][14]	= settr(317,0,17,69,69,"i = (i+1)", 0, 2, 0);
	trans[4][15]	= settr(318,0,20,2,0,"else", 0, 2, 0);
	trans[4][16]	= settr(319,0,20,1,0,"goto :b6", 0, 2, 0);
	trans[4][19]	= settr(322,0,20,1,0,"break", 0, 2, 0);
	trans[4][20]	= settr(323,0,21,70,70,"tcb[2].prio = 2", 1, 2, 0);
	trans[4][21]	= settr(324,0,29,71,71,"tcb[2].state = 1", 1, 2, 0);
	T = trans[ 4][29] = settr(332,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(332,0,27,0,0,"sub-sequence", 0, 2, 0);
	T = trans[4][27] = settr(330,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(330,0,22,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(330,0,25,0,0,"IF", 0, 2, 0);
	trans[4][22]	= settr(325,0,23,72,0,"((readyQueue[2].tailIndex<5))", 1, 2, 0);
	trans[4][23]	= settr(326,0,24,73,73,"readyQueue[2].tasks[readyQueue[2].tailIndex] = 2", 1, 2, 0);
	trans[4][24]	= settr(327,0,30,74,74,"readyQueue[2].tailIndex = (readyQueue[2].tailIndex+1)", 1, 2, 0);
	trans[4][28]	= settr(331,0,30,1,0,".(goto)", 0, 2, 0);
	trans[4][25]	= settr(328,0,26,2,0,"else", 0, 2, 0);
	trans[4][26]	= settr(329,0,30,75,0,"assert(0)", 0, 2, 0);
	trans[4][30]	= settr(333,0,31,76,76,"tcb[(2+1)].prio = 2", 1, 2, 0);
	trans[4][31]	= settr(334,0,39,77,77,"tcb[(2+1)].state = 1", 1, 2, 0);
	T = trans[ 4][39] = settr(342,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(342,0,37,0,0,"sub-sequence", 0, 2, 0);
	T = trans[4][37] = settr(340,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(340,0,32,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(340,0,35,0,0,"IF", 0, 2, 0);
	trans[4][32]	= settr(335,0,33,78,0,"((readyQueue[2].tailIndex<5))", 1, 2, 0);
	trans[4][33]	= settr(336,0,34,79,79,"readyQueue[2].tasks[readyQueue[2].tailIndex] = (2+1)", 1, 2, 0);
	trans[4][34]	= settr(337,0,58,80,80,"readyQueue[2].tailIndex = (readyQueue[2].tailIndex+1)", 1, 2, 0);
	trans[4][38]	= settr(341,0,58,1,0,".(goto)", 0, 2, 0);
	trans[4][35]	= settr(338,0,36,2,0,"else", 0, 2, 0);
	trans[4][36]	= settr(339,0,58,81,0,"assert(0)", 0, 2, 0);
	T = trans[ 4][58] = settr(361,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(361,0,40,0,0,"sub-sequence", 0, 2, 0);
	trans[4][40]	= settr(343,0,53,82,82,"prio = 0", 0, 2, 0); /* m: 41 -> 0,53 */
	reached4[41] = 1;
	trans[4][41]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[4][42]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[4][54]	= settr(357,0,53,1,0,".(goto)", 0, 2, 0);
	T = trans[4][53] = settr(356,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(356,0,43,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(356,0,51,0,0,"DO", 0, 2, 0);
	trans[4][43]	= settr(346,0,49,83,0,"(((prio<4)&&!(found)))", 0, 2, 0);
	T = trans[4][49] = settr(352,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(352,0,44,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(352,0,47,0,0,"IF", 0, 2, 0);
	trans[4][44]	= settr(347,0,45,84,0,"((readyQueue[prio].tailIndex>0))", 1, 2, 0);
	trans[4][45]	= settr(348,0,46,85,85,"top_task = readyQueue[prio].tasks[0]", 1, 2, 0);
	trans[4][46]	= settr(349,0,53,86,86,"found = 1", 0, 2, 0);
	trans[4][50]	= settr(353,0,53,1,0,".(goto)", 0, 2, 0);
	trans[4][47]	= settr(350,0,48,2,0,"else", 0, 2, 0);
	trans[4][48]	= settr(351,0,53,87,87,"prio = (prio+1)", 0, 2, 0);
	trans[4][51]	= settr(354,0,56,2,0,"else", 0, 2, 0);
	trans[4][52]	= settr(355,0,56,1,0,"goto :b8", 0, 2, 0);
	trans[4][55]	= settr(358,0,56,1,0,"break", 0, 2, 0);
	trans[4][56]	= settr(359,0,57,88,88,"EP = top_task", 1, 2, 0);
	trans[4][57]	= settr(360,0,75,89,89,"topPrio = prio", 1, 2, 0);
	T = trans[ 4][75] = settr(378,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(378,0,59,0,0,"sub-sequence", 0, 2, 0);
	trans[4][59]	= settr(362,0,65,90,90,"idx = 0", 0, 2, 0);
	trans[4][66]	= settr(369,0,65,1,0,".(goto)", 0, 2, 0);
	T = trans[4][65] = settr(368,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(368,0,60,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(368,0,63,0,0,"DO", 0, 2, 0);
	trans[4][60]	= settr(363,0,61,91,0,"((idx<(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0);
	trans[4][61]	= settr(364,0,62,92,92,"readyQueue[topPrio].tasks[idx] = readyQueue[topPrio].tasks[(idx+1)]", 1, 2, 0);
	trans[4][62]	= settr(365,0,65,93,93,"idx = (idx+1)", 0, 2, 0);
	trans[4][63]	= settr(366,0,73,2,0,"else", 0, 2, 0);
	trans[4][64]	= settr(367,0,73,1,0,"goto :b9", 0, 2, 0);
	trans[4][67]	= settr(370,0,73,1,0,"break", 0, 2, 0);
	T = trans[4][73] = settr(376,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(376,0,68,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(376,0,71,0,0,"IF", 0, 2, 0);
	trans[4][68]	= settr(371,0,69,94,0,"((readyQueue[topPrio].tailIndex>0))", 1, 2, 0);
	trans[4][69]	= settr(372,0,70,95,95,"readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)] = 255", 1, 2, 0);
	trans[4][70]	= settr(373,0,76,96,96,"readyQueue[topPrio].tailIndex = (readyQueue[topPrio].tailIndex-1)", 1, 2, 0);
	trans[4][74]	= settr(377,0,76,1,0,".(goto)", 0, 2, 0);
	trans[4][71]	= settr(374,0,72,2,0,"else", 0, 2, 0);
	trans[4][72]	= settr(375,0,76,1,0,"(1)", 0, 2, 0);
	trans[4][76]	= settr(379,0,79,97,97,"tcb[EP].state = 4", 1, 2, 0);
	T = trans[ 4][79] = settr(382,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(382,2,77,0,0,"ATOMIC", 0, 2, 0);
	trans[4][77]	= settr(380,2,78,98,98,"(run PendSV_Handler())", 0, 2, 0);
	trans[4][78]	= settr(381,0,80,99,99,"(run SysTick_Handler())", 0, 2, 0);
	trans[4][80]	= settr(383,0,81,100,100,"(run Process1())", 0, 2, 0);
	trans[4][81]	= settr(384,0,82,101,101,"(run Process2())", 0, 2, 0);
	trans[4][82]	= settr(385,0,0,102,102,"-end-", 0, 3500, 0);

	/* proctype 3: Process2 */

	trans[3] = (Trans **) emalloc(57*sizeof(Trans *));

	trans[3][54]	= settr(301,0,53,1,0,".(goto)", 0, 2, 0);
	T = trans[3][53] = settr(300,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(300,0,26,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(300,0,52,0,0,"DO", 0, 2, 0);
	T = trans[ 3][26] = settr(273,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(273,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[3][1]	= settr(248,2,9,103,103,"(((2+1)==EP))", 1, 2, 0); /* m: 2 -> 9,0 */
	reached3[2] = 1;
	trans[3][2]	= settr(0,0,0,0,0,"printf('Process2 running\\\\n')",0,0,0);
	T = trans[3][9] = settr(256,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(256,2,3,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(256,2,7,0,0,"IF", 1, 2, 0);
	trans[3][3]	= settr(250,2,6,1,0,"(1)", 1, 2, 0);
	T = trans[ 3][6] = settr(253,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(253,0,4,0,0,"sub-sequence", 1, 2, 0);
	trans[3][4]	= settr(251,2,24,104,104,"assert(((1<2)&&(1<8)))", 1, 2, 0); /* m: 5 -> 0,24 */
	reached3[5] = 1;
	trans[3][5]	= settr(0,0,0,0,0,"pending_exp = (pending_exp|(1<<1))",0,0,0);
	trans[3][10]	= settr(257,2,24,1,0,".(goto)", 1, 2, 0);
	trans[3][7]	= settr(254,2,8,1,0,"(1)", 1, 2, 0);
	trans[3][8]	= settr(255,2,24,1,0,"(1)", 1, 2, 0);
	T = trans[3][24] = settr(271,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(271,2,11,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(271,2,22,0,0,"IF", 1, 2, 0);
	trans[3][11]	= settr(258,2,16,105,0,"((((((pending_exp>>0)&1)&&((BASEPRI==0)||(15<BASEPRI)))||(((pending_exp>>1)&1)&&((BASEPRI==0)||(15<BASEPRI))))&&(EP>=2)))", 1, 2, 0);
	T = trans[3][16] = settr(263,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(263,2,12,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(263,2,14,0,0,"IF", 1, 2, 0);
	trans[3][12]	= settr(259,2,20,106,106,"((EP>=2))", 1, 2, 0); /* m: 13 -> 20,0 */
	reached3[13] = 1;
	trans[3][13]	= settr(0,0,0,0,0,"chain_tick_used = 0",0,0,0);
	trans[3][17]	= settr(264,2,20,1,0,".(goto)", 1, 2, 0);
	trans[3][14]	= settr(261,2,15,2,0,"else", 1, 2, 0);
	trans[3][15]	= settr(262,2,20,1,0,"(1)", 1, 2, 0);
	T = trans[ 3][20] = settr(267,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(267,0,18,0,0,"sub-sequence", 1, 2, 0);
	trans[3][18]	= settr(265,0,53,107,107,"assert((EP_Stack==255))", 1, 2, 0); /* m: 19 -> 0,53 */
	reached3[19] = 1;
	trans[3][19]	= settr(0,0,0,0,0,"EP_Stack = EP",0,0,0);
	trans[3][21]	= settr(0,0,0,0,0,"EP = ( (((pending_exp>>0)&1)) -> (0) : (1) )",0,0,0);
	trans[3][25]	= settr(272,0,53,108,108,".(goto)", 1, 2, 0);
	trans[3][22]	= settr(269,2,23,2,0,"else", 1, 2, 0);
	trans[3][23]	= settr(270,0,53,109,109,"(1)", 1, 2, 0); /* m: 25 -> 53,0 */
	reached3[25] = 1;
	T = trans[ 3][52] = settr(299,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(299,2,27,0,0,"ATOMIC", 1, 2, 0);
	trans[3][27]	= settr(274,2,35,110,110,"(((2+1)==EP))", 1, 2, 0); /* m: 28 -> 35,0 */
	reached3[28] = 1;
	trans[3][28]	= settr(0,0,0,0,0,"assert((EP==(2+1)))",0,0,0);
	T = trans[3][35] = settr(282,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(282,2,29,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(282,2,33,0,0,"IF", 1, 2, 0);
	trans[3][29]	= settr(276,2,32,1,0,"(1)", 1, 2, 0);
	T = trans[ 3][32] = settr(279,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(279,0,30,0,0,"sub-sequence", 1, 2, 0);
	trans[3][30]	= settr(277,2,50,111,111,"assert(((1<2)&&(1<8)))", 1, 2, 0); /* m: 31 -> 0,50 */
	reached3[31] = 1;
	trans[3][31]	= settr(0,0,0,0,0,"pending_exp = (pending_exp|(1<<1))",0,0,0);
	trans[3][36]	= settr(283,2,50,1,0,".(goto)", 1, 2, 0);
	trans[3][33]	= settr(280,2,34,1,0,"(1)", 1, 2, 0);
	trans[3][34]	= settr(281,2,50,1,0,"(1)", 1, 2, 0);
	T = trans[3][50] = settr(297,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(297,2,37,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(297,2,48,0,0,"IF", 1, 2, 0);
	trans[3][37]	= settr(284,2,42,112,0,"((((((pending_exp>>0)&1)&&((BASEPRI==0)||(15<BASEPRI)))||(((pending_exp>>1)&1)&&((BASEPRI==0)||(15<BASEPRI))))&&(EP>=2)))", 1, 2, 0);
	T = trans[3][42] = settr(289,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(289,2,38,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(289,2,40,0,0,"IF", 1, 2, 0);
	trans[3][38]	= settr(285,2,46,113,113,"((EP>=2))", 1, 2, 0); /* m: 39 -> 46,0 */
	reached3[39] = 1;
	trans[3][39]	= settr(0,0,0,0,0,"chain_tick_used = 0",0,0,0);
	trans[3][43]	= settr(290,2,46,1,0,".(goto)", 1, 2, 0);
	trans[3][40]	= settr(287,2,41,2,0,"else", 1, 2, 0);
	trans[3][41]	= settr(288,2,46,1,0,"(1)", 1, 2, 0);
	T = trans[ 3][46] = settr(293,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(293,0,44,0,0,"sub-sequence", 1, 2, 0);
	trans[3][44]	= settr(291,0,53,114,114,"assert((EP_Stack==255))", 1, 2, 0); /* m: 45 -> 0,53 */
	reached3[45] = 1;
	trans[3][45]	= settr(0,0,0,0,0,"EP_Stack = EP",0,0,0);
	trans[3][47]	= settr(0,0,0,0,0,"EP = ( (((pending_exp>>0)&1)) -> (0) : (1) )",0,0,0);
	trans[3][51]	= settr(298,0,53,115,115,".(goto)", 1, 2, 0);
	trans[3][48]	= settr(295,2,49,2,0,"else", 1, 2, 0);
	trans[3][49]	= settr(296,0,53,116,116,"(1)", 1, 2, 0); /* m: 51 -> 53,0 */
	reached3[51] = 1;
	trans[3][55]	= settr(302,0,56,1,0,"break", 0, 2, 0);
	trans[3][56]	= settr(303,0,0,117,117,"-end-", 0, 3500, 0);

	/* proctype 2: Process1 */

	trans[2] = (Trans **) emalloc(57*sizeof(Trans *));

	trans[2][54]	= settr(245,0,53,1,0,".(goto)", 0, 2, 0);
	T = trans[2][53] = settr(244,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(244,0,26,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(244,0,52,0,0,"DO", 0, 2, 0);
	T = trans[ 2][26] = settr(217,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(217,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[2][1]	= settr(192,2,9,118,118,"((2==EP))", 1, 2, 0); /* m: 2 -> 9,0 */
	reached2[2] = 1;
	trans[2][2]	= settr(0,0,0,0,0,"printf('Process1 running\\\\n')",0,0,0);
	T = trans[2][9] = settr(200,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(200,2,3,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(200,2,7,0,0,"IF", 1, 2, 0);
	trans[2][3]	= settr(194,2,6,1,0,"(1)", 1, 2, 0);
	T = trans[ 2][6] = settr(197,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(197,0,4,0,0,"sub-sequence", 1, 2, 0);
	trans[2][4]	= settr(195,2,24,119,119,"assert(((1<2)&&(1<8)))", 1, 2, 0); /* m: 5 -> 0,24 */
	reached2[5] = 1;
	trans[2][5]	= settr(0,0,0,0,0,"pending_exp = (pending_exp|(1<<1))",0,0,0);
	trans[2][10]	= settr(201,2,24,1,0,".(goto)", 1, 2, 0);
	trans[2][7]	= settr(198,2,8,1,0,"(1)", 1, 2, 0);
	trans[2][8]	= settr(199,2,24,1,0,"(1)", 1, 2, 0);
	T = trans[2][24] = settr(215,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(215,2,11,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(215,2,22,0,0,"IF", 1, 2, 0);
	trans[2][11]	= settr(202,2,16,120,0,"((((((pending_exp>>0)&1)&&((BASEPRI==0)||(15<BASEPRI)))||(((pending_exp>>1)&1)&&((BASEPRI==0)||(15<BASEPRI))))&&(EP>=2)))", 1, 2, 0);
	T = trans[2][16] = settr(207,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(207,2,12,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(207,2,14,0,0,"IF", 1, 2, 0);
	trans[2][12]	= settr(203,2,20,121,121,"((EP>=2))", 1, 2, 0); /* m: 13 -> 20,0 */
	reached2[13] = 1;
	trans[2][13]	= settr(0,0,0,0,0,"chain_tick_used = 0",0,0,0);
	trans[2][17]	= settr(208,2,20,1,0,".(goto)", 1, 2, 0);
	trans[2][14]	= settr(205,2,15,2,0,"else", 1, 2, 0);
	trans[2][15]	= settr(206,2,20,1,0,"(1)", 1, 2, 0);
	T = trans[ 2][20] = settr(211,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(211,0,18,0,0,"sub-sequence", 1, 2, 0);
	trans[2][18]	= settr(209,0,53,122,122,"assert((EP_Stack==255))", 1, 2, 0); /* m: 19 -> 0,53 */
	reached2[19] = 1;
	trans[2][19]	= settr(0,0,0,0,0,"EP_Stack = EP",0,0,0);
	trans[2][21]	= settr(0,0,0,0,0,"EP = ( (((pending_exp>>0)&1)) -> (0) : (1) )",0,0,0);
	trans[2][25]	= settr(216,0,53,123,123,".(goto)", 1, 2, 0);
	trans[2][22]	= settr(213,2,23,2,0,"else", 1, 2, 0);
	trans[2][23]	= settr(214,0,53,124,124,"(1)", 1, 2, 0); /* m: 25 -> 53,0 */
	reached2[25] = 1;
	T = trans[ 2][52] = settr(243,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(243,2,27,0,0,"ATOMIC", 1, 2, 0);
	trans[2][27]	= settr(218,2,35,125,125,"((2==EP))", 1, 2, 0); /* m: 28 -> 35,0 */
	reached2[28] = 1;
	trans[2][28]	= settr(0,0,0,0,0,"assert((EP==2))",0,0,0);
	T = trans[2][35] = settr(226,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(226,2,29,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(226,2,33,0,0,"IF", 1, 2, 0);
	trans[2][29]	= settr(220,2,32,1,0,"(1)", 1, 2, 0);
	T = trans[ 2][32] = settr(223,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(223,0,30,0,0,"sub-sequence", 1, 2, 0);
	trans[2][30]	= settr(221,2,50,126,126,"assert(((1<2)&&(1<8)))", 1, 2, 0); /* m: 31 -> 0,50 */
	reached2[31] = 1;
	trans[2][31]	= settr(0,0,0,0,0,"pending_exp = (pending_exp|(1<<1))",0,0,0);
	trans[2][36]	= settr(227,2,50,1,0,".(goto)", 1, 2, 0);
	trans[2][33]	= settr(224,2,34,1,0,"(1)", 1, 2, 0);
	trans[2][34]	= settr(225,2,50,1,0,"(1)", 1, 2, 0);
	T = trans[2][50] = settr(241,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(241,2,37,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(241,2,48,0,0,"IF", 1, 2, 0);
	trans[2][37]	= settr(228,2,42,127,0,"((((((pending_exp>>0)&1)&&((BASEPRI==0)||(15<BASEPRI)))||(((pending_exp>>1)&1)&&((BASEPRI==0)||(15<BASEPRI))))&&(EP>=2)))", 1, 2, 0);
	T = trans[2][42] = settr(233,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(233,2,38,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(233,2,40,0,0,"IF", 1, 2, 0);
	trans[2][38]	= settr(229,2,46,128,128,"((EP>=2))", 1, 2, 0); /* m: 39 -> 46,0 */
	reached2[39] = 1;
	trans[2][39]	= settr(0,0,0,0,0,"chain_tick_used = 0",0,0,0);
	trans[2][43]	= settr(234,2,46,1,0,".(goto)", 1, 2, 0);
	trans[2][40]	= settr(231,2,41,2,0,"else", 1, 2, 0);
	trans[2][41]	= settr(232,2,46,1,0,"(1)", 1, 2, 0);
	T = trans[ 2][46] = settr(237,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(237,0,44,0,0,"sub-sequence", 1, 2, 0);
	trans[2][44]	= settr(235,0,53,129,129,"assert((EP_Stack==255))", 1, 2, 0); /* m: 45 -> 0,53 */
	reached2[45] = 1;
	trans[2][45]	= settr(0,0,0,0,0,"EP_Stack = EP",0,0,0);
	trans[2][47]	= settr(0,0,0,0,0,"EP = ( (((pending_exp>>0)&1)) -> (0) : (1) )",0,0,0);
	trans[2][51]	= settr(242,0,53,130,130,".(goto)", 1, 2, 0);
	trans[2][48]	= settr(239,2,49,2,0,"else", 1, 2, 0);
	trans[2][49]	= settr(240,0,53,131,131,"(1)", 1, 2, 0); /* m: 51 -> 53,0 */
	reached2[51] = 1;
	trans[2][55]	= settr(246,0,56,1,0,"break", 0, 2, 0);
	trans[2][56]	= settr(247,0,0,132,132,"-end-", 0, 3500, 0);

	/* proctype 1: SysTick_Handler */

	trans[1] = (Trans **) emalloc(52*sizeof(Trans *));

	trans[1][49]	= settr(189,0,48,1,0,".(goto)", 0, 2, 0);
	T = trans[1][48] = settr(188,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(188,0,1,0,0,"DO", 0, 2, 0);
	trans[1][1]	= settr(141,0,7,133,0,"((EP==1))", 1, 2, 0);
	T = trans[ 1][7] = settr(147,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(147,0,6,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][6] = settr(146,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(146,2,2,0,0,"ATOMIC", 1, 2, 0);
	trans[1][2]	= settr(142,2,5,134,0,"((EP==1))", 1, 2, 0);
	T = trans[ 1][5] = settr(145,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(145,0,3,0,0,"sub-sequence", 1, 2, 0);
	trans[1][3]	= settr(143,4,21,135,135,"assert(((1<2)&&(1<8)))", 1, 2, 0); /* m: 4 -> 0,21 */
	reached1[4] = 1;
	trans[1][4]	= settr(0,0,0,0,0,"pending_exp = (pending_exp&~((1<<1)))",0,0,0);
	T = trans[ 1][21] = settr(161,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(161,2,8,0,0,"ATOMIC", 1, 2, 0);
	trans[1][8]	= settr(148,2,11,136,0,"((1==EP))", 1, 2, 0);
	T = trans[ 1][11] = settr(151,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(151,0,9,0,0,"sub-sequence", 1, 2, 0);
	trans[1][9]	= settr(149,2,19,137,137,"assert(((0<2)&&(0<8)))", 1, 2, 0); /* m: 10 -> 0,19 */
	reached1[10] = 1;
	trans[1][10]	= settr(0,0,0,0,0,"pending_exp = (pending_exp|(1<<0))",0,0,0);
	T = trans[1][19] = settr(159,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(159,2,12,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(159,2,17,0,0,"IF", 1, 2, 0);
	trans[1][12]	= settr(152,2,15,138,0,"(((chain_tick_used==0)&&(((pending_exp>>1)&1)==0)))", 1, 2, 0);
	T = trans[ 1][15] = settr(155,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(155,0,13,0,0,"sub-sequence", 1, 2, 0);
	trans[1][13]	= settr(153,4,47,139,139,"assert(((1<2)&&(1<8)))", 1, 2, 0); /* m: 14 -> 0,47 */
	reached1[14] = 1;
	trans[1][14]	= settr(0,0,0,0,0,"pending_exp = (pending_exp|(1<<1))",0,0,0);
	trans[1][16]	= settr(0,0,0,0,0,"chain_tick_used = 1",0,0,0);
	trans[1][20]	= settr(160,0,47,140,140,".(goto)", 1, 2, 0);
	trans[1][17]	= settr(157,2,18,2,0,"else", 1, 2, 0);
	trans[1][18]	= settr(158,4,47,141,141,"(1)", 1, 2, 0); /* m: 20 -> 47,0 */
	reached1[20] = 1;
	T = trans[ 1][47] = settr(187,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(187,2,22,0,0,"ATOMIC", 1, 2, 0);
	trans[1][22]	= settr(162,2,37,142,0,"((1==EP))", 1, 2, 0);
	T = trans[ 1][37] = settr(177,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(177,0,35,0,0,"sub-sequence", 1, 2, 0);
	T = trans[1][35] = settr(175,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(175,2,23,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(175,2,30,0,0,"IF", 1, 2, 0);
	trans[1][23]	= settr(163,2,29,143,0,"((pending_exp>0))", 1, 2, 0);
	T = trans[ 1][29] = settr(169,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(169,0,25,0,0,"sub-sequence", 1, 2, 0);
	T = trans[ 1][25] = settr(165,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(165,0,24,0,0,"sub-sequence", 1, 2, 0);
	trans[1][24]	= settr(164,2,45,144,144,"tmp = ( (((pending_exp>>0)&1)) -> (0) : (1) )", 1, 2, 0); /* m: 26 -> 0,45 */
	reached1[26] = 1;
	trans[1][26]	= settr(0,0,0,0,0,"assert((((BASEPRI==0)||(15<BASEPRI))&&(EP_Stack>=2)))",0,0,0);
	trans[1][27]	= settr(0,0,0,0,0,"EP = tmp",0,0,0);
	trans[1][28]	= settr(0,0,0,0,0,"tmp = 255",0,0,0);
	trans[1][36]	= settr(176,2,45,1,0,".(goto)", 1, 2, 0);
	trans[1][30]	= settr(170,2,34,2,0,"else", 1, 2, 0);
	T = trans[ 1][34] = settr(174,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(174,0,31,0,0,"sub-sequence", 1, 2, 0);
	trans[1][31]	= settr(171,2,45,145,145,"assert((EP_Stack!=255))", 1, 2, 0); /* m: 32 -> 0,45 */
	reached1[32] = 1;
	trans[1][32]	= settr(0,0,0,0,0,"EP = EP_Stack",0,0,0);
	trans[1][33]	= settr(0,0,0,0,0,"EP_Stack = 255",0,0,0);
	T = trans[1][45] = settr(185,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(185,2,38,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(185,2,43,0,0,"IF", 1, 2, 0);
	trans[1][38]	= settr(178,2,41,146,0,"(((chain_tick_used==0)&&(((pending_exp>>1)&1)==0)))", 1, 2, 0);
	T = trans[ 1][41] = settr(181,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(181,0,39,0,0,"sub-sequence", 1, 2, 0);
	trans[1][39]	= settr(179,0,48,147,147,"assert(((1<2)&&(1<8)))", 1, 2, 0); /* m: 40 -> 0,48 */
	reached1[40] = 1;
	trans[1][40]	= settr(0,0,0,0,0,"pending_exp = (pending_exp|(1<<1))",0,0,0);
	trans[1][42]	= settr(0,0,0,0,0,"chain_tick_used = 1",0,0,0);
	trans[1][46]	= settr(186,0,48,148,148,".(goto)", 1, 2, 0);
	trans[1][43]	= settr(183,2,44,2,0,"else", 1, 2, 0);
	trans[1][44]	= settr(184,0,48,149,149,"(1)", 1, 2, 0); /* m: 46 -> 48,0 */
	reached1[46] = 1;
	trans[1][50]	= settr(190,0,51,1,0,"break", 0, 2, 0);
	trans[1][51]	= settr(191,0,0,150,150,"-end-", 0, 3500, 0);

	/* proctype 0: PendSV_Handler */

	trans[0] = (Trans **) emalloc(142*sizeof(Trans *));

	trans[0][139]	= settr(138,0,138,1,0,".(goto)", 0, 2, 0);
	T = trans[0][138] = settr(137,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(137,0,1,0,0,"DO", 0, 2, 0);
	trans[0][1]	= settr(0,0,7,151,0,"((EP==0))", 1, 2, 0);
	T = trans[ 0][7] = settr(6,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(6,0,6,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][6] = settr(5,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(5,2,2,0,0,"ATOMIC", 1, 2, 0);
	trans[0][2]	= settr(1,2,5,152,0,"((EP==0))", 1, 2, 0);
	T = trans[ 0][5] = settr(4,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(4,0,3,0,0,"sub-sequence", 1, 2, 0);
	trans[0][3]	= settr(2,4,27,153,153,"assert(((0<2)&&(0<8)))", 1, 2, 0); /* m: 4 -> 0,27 */
	reached0[4] = 1;
	trans[0][4]	= settr(0,0,0,0,0,"pending_exp = (pending_exp&~((1<<0)))",0,0,0);
	T = trans[ 0][27] = settr(26,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(26,2,8,0,0,"ATOMIC", 1, 2, 0);
	trans[0][8]	= settr(7,2,17,154,154,"((0==EP))", 1, 2, 0); /* m: 9 -> 17,0 */
	reached0[9] = 1;
	trans[0][9]	= settr(0,0,0,0,0,"tcb[EP_Stack].state = 1",0,0,0);
	T = trans[ 0][17] = settr(16,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(16,0,15,0,0,"sub-sequence", 1, 2, 0);
	T = trans[0][15] = settr(14,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(14,2,10,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(14,2,13,0,0,"IF", 1, 2, 0);
	trans[0][10]	= settr(9,2,25,155,155,"((readyQueue[tcb[EP_Stack].prio].tailIndex<5))", 1, 2, 0); /* m: 11 -> 25,0 */
	reached0[11] = 1;
	trans[0][11]	= settr(0,0,0,0,0,"readyQueue[tcb[EP_Stack].prio].tasks[readyQueue[tcb[EP_Stack].prio].tailIndex] = EP_Stack",0,0,0);
	trans[0][12]	= settr(0,0,0,0,0,"readyQueue[tcb[EP_Stack].prio].tailIndex = (readyQueue[tcb[EP_Stack].prio].tailIndex+1)",0,0,0);
	trans[0][16]	= settr(15,2,25,1,0,".(goto)", 1, 2, 0);
	trans[0][13]	= settr(12,2,14,2,0,"else", 1, 2, 0);
	trans[0][14]	= settr(13,2,25,156,0,"assert(0)", 1, 2, 0);
	T = trans[0][25] = settr(24,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(24,2,18,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(24,2,23,0,0,"IF", 1, 2, 0);
	trans[0][18]	= settr(17,2,21,157,0,"(((chain_tick_used==0)&&(((pending_exp>>1)&1)==0)))", 1, 2, 0);
	T = trans[ 0][21] = settr(20,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(20,0,19,0,0,"sub-sequence", 1, 2, 0);
	trans[0][19]	= settr(18,4,57,158,158,"assert(((1<2)&&(1<8)))", 1, 2, 0); /* m: 20 -> 0,57 */
	reached0[20] = 1;
	trans[0][20]	= settr(0,0,0,0,0,"pending_exp = (pending_exp|(1<<1))",0,0,0);
	trans[0][22]	= settr(0,0,0,0,0,"chain_tick_used = 1",0,0,0);
	trans[0][26]	= settr(25,0,57,159,159,".(goto)", 1, 2, 0);
	trans[0][23]	= settr(22,2,24,2,0,"else", 1, 2, 0);
	trans[0][24]	= settr(23,4,57,160,160,"(1)", 1, 2, 0); /* m: 26 -> 57,0 */
	reached0[26] = 1;
	T = trans[ 0][57] = settr(56,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(56,2,28,0,0,"ATOMIC", 1, 2, 0);
	trans[0][28]	= settr(27,2,47,161,0,"((0==EP))", 1, 2, 0);
	T = trans[ 0][47] = settr(46,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(46,0,29,0,0,"sub-sequence", 1, 2, 0);
	trans[0][29]	= settr(28,2,42,162,162,"prio = 0", 1, 2, 0); /* m: 30 -> 0,42 */
	reached0[30] = 1;
	trans[0][30]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[0][31]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[0][43]	= settr(42,2,42,1,0,".(goto)", 1, 2, 0);
	T = trans[0][42] = settr(41,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(41,2,32,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(41,2,40,0,0,"DO", 1, 2, 0);
	trans[0][32]	= settr(31,2,38,163,0,"(((prio<4)&&!(found)))", 1, 2, 0);
	T = trans[0][38] = settr(37,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(37,2,33,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(37,2,36,0,0,"IF", 1, 2, 0);
	trans[0][33]	= settr(32,2,42,164,164,"((readyQueue[prio].tailIndex>0))", 1, 2, 0); /* m: 34 -> 42,0 */
	reached0[34] = 1;
	trans[0][34]	= settr(0,0,0,0,0,"top_task = readyQueue[prio].tasks[0]",0,0,0);
	trans[0][35]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[0][39]	= settr(38,2,42,1,0,".(goto)", 1, 2, 0);
	trans[0][36]	= settr(35,2,37,2,0,"else", 1, 2, 0);
	trans[0][37]	= settr(36,2,42,165,165,"prio = (prio+1)", 1, 2, 0);
	trans[0][40]	= settr(39,2,45,2,0,"else", 1, 2, 0);
	trans[0][41]	= settr(40,2,45,1,0,"goto :b1", 1, 2, 0); /* m: 45 -> 0,55 */
	reached0[45] = 1;
	trans[0][44]	= settr(43,2,45,1,0,"break", 1, 2, 0);
	trans[0][45]	= settr(44,2,55,166,166,"tmp = top_task", 1, 2, 0); /* m: 46 -> 0,55 */
	reached0[46] = 1;
	trans[0][46]	= settr(0,0,0,0,0,"topPrio = prio",0,0,0);
	T = trans[0][55] = settr(54,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(54,2,48,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(54,2,53,0,0,"IF", 1, 2, 0);
	trans[0][48]	= settr(47,2,51,167,0,"(((chain_tick_used==0)&&(((pending_exp>>1)&1)==0)))", 1, 2, 0);
	T = trans[ 0][51] = settr(50,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(50,0,49,0,0,"sub-sequence", 1, 2, 0);
	trans[0][49]	= settr(48,4,85,168,168,"assert(((1<2)&&(1<8)))", 1, 2, 0); /* m: 50 -> 0,85 */
	reached0[50] = 1;
	trans[0][50]	= settr(0,0,0,0,0,"pending_exp = (pending_exp|(1<<1))",0,0,0);
	trans[0][52]	= settr(0,0,0,0,0,"chain_tick_used = 1",0,0,0);
	trans[0][56]	= settr(55,0,85,169,169,".(goto)", 1, 2, 0);
	trans[0][53]	= settr(52,2,54,2,0,"else", 1, 2, 0);
	trans[0][54]	= settr(53,4,85,170,170,"(1)", 1, 2, 0); /* m: 56 -> 85,0 */
	reached0[56] = 1;
	T = trans[ 0][85] = settr(84,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(84,2,58,0,0,"ATOMIC", 1, 2, 0);
	trans[0][58]	= settr(57,2,75,171,0,"((0==EP))", 1, 2, 0);
	T = trans[ 0][75] = settr(74,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(74,0,59,0,0,"sub-sequence", 1, 2, 0);
	trans[0][59]	= settr(58,2,65,172,172,"idx = 0", 1, 2, 0);
	trans[0][66]	= settr(65,2,65,1,0,".(goto)", 1, 2, 0);
	T = trans[0][65] = settr(64,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(64,2,60,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(64,2,63,0,0,"DO", 1, 2, 0);
	trans[0][60]	= settr(59,2,65,173,173,"((idx<(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0); /* m: 61 -> 65,0 */
	reached0[61] = 1;
	trans[0][61]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[idx] = readyQueue[topPrio].tasks[(idx+1)]",0,0,0);
	trans[0][62]	= settr(0,0,0,0,0,"idx = (idx+1)",0,0,0);
	trans[0][63]	= settr(62,2,73,2,0,"else", 1, 2, 0);
	trans[0][64]	= settr(63,2,73,1,0,"goto :b2", 1, 2, 0);
	trans[0][67]	= settr(66,2,73,1,0,"break", 1, 2, 0);
	T = trans[0][73] = settr(72,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(72,2,68,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(72,2,71,0,0,"IF", 1, 2, 0);
	trans[0][68]	= settr(67,2,83,174,174,"((readyQueue[topPrio].tailIndex>0))", 1, 2, 0); /* m: 69 -> 83,0 */
	reached0[69] = 1;
	trans[0][69]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)] = 255",0,0,0);
	trans[0][70]	= settr(0,0,0,0,0,"readyQueue[topPrio].tailIndex = (readyQueue[topPrio].tailIndex-1)",0,0,0);
	trans[0][74]	= settr(73,2,83,1,0,".(goto)", 1, 2, 0);
	trans[0][71]	= settr(70,2,72,2,0,"else", 1, 2, 0);
	trans[0][72]	= settr(71,2,83,1,0,"(1)", 1, 2, 0);
	T = trans[0][83] = settr(82,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(82,2,76,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(82,2,81,0,0,"IF", 1, 2, 0);
	trans[0][76]	= settr(75,2,79,175,0,"(((chain_tick_used==0)&&(((pending_exp>>1)&1)==0)))", 1, 2, 0);
	T = trans[ 0][79] = settr(78,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(78,0,77,0,0,"sub-sequence", 1, 2, 0);
	trans[0][77]	= settr(76,4,97,176,176,"assert(((1<2)&&(1<8)))", 1, 2, 0); /* m: 78 -> 0,97 */
	reached0[78] = 1;
	trans[0][78]	= settr(0,0,0,0,0,"pending_exp = (pending_exp|(1<<1))",0,0,0);
	trans[0][80]	= settr(0,0,0,0,0,"chain_tick_used = 1",0,0,0);
	trans[0][84]	= settr(83,0,97,177,177,".(goto)", 1, 2, 0);
	trans[0][81]	= settr(80,2,82,2,0,"else", 1, 2, 0);
	trans[0][82]	= settr(81,4,97,178,178,"(1)", 1, 2, 0); /* m: 84 -> 97,0 */
	reached0[84] = 1;
	T = trans[ 0][97] = settr(96,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(96,2,86,0,0,"ATOMIC", 1, 2, 0);
	trans[0][86]	= settr(85,2,95,179,179,"((0==EP))", 1, 2, 0); /* m: 87 -> 95,0 */
	reached0[87] = 1;
	trans[0][87]	= settr(0,0,0,0,0,"tcb[tmp].state = 4",0,0,0);
	T = trans[0][95] = settr(94,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(94,2,88,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(94,2,93,0,0,"IF", 1, 2, 0);
	trans[0][88]	= settr(87,2,91,180,0,"(((chain_tick_used==0)&&(((pending_exp>>1)&1)==0)))", 1, 2, 0);
	T = trans[ 0][91] = settr(90,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(90,0,89,0,0,"sub-sequence", 1, 2, 0);
	trans[0][89]	= settr(88,4,111,181,181,"assert(((1<2)&&(1<8)))", 1, 2, 0); /* m: 90 -> 0,111 */
	reached0[90] = 1;
	trans[0][90]	= settr(0,0,0,0,0,"pending_exp = (pending_exp|(1<<1))",0,0,0);
	trans[0][92]	= settr(0,0,0,0,0,"chain_tick_used = 1",0,0,0);
	trans[0][96]	= settr(95,0,111,182,182,".(goto)", 1, 2, 0);
	trans[0][93]	= settr(92,2,94,2,0,"else", 1, 2, 0);
	trans[0][94]	= settr(93,4,111,183,183,"(1)", 1, 2, 0); /* m: 96 -> 111,0 */
	reached0[96] = 1;
	T = trans[ 0][111] = settr(110,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(110,2,98,0,0,"ATOMIC", 1, 2, 0);
	trans[0][98]	= settr(97,2,101,184,0,"((0==EP))", 1, 2, 0);
	T = trans[ 0][101] = settr(100,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(100,0,99,0,0,"sub-sequence", 1, 2, 0);
	trans[0][99]	= settr(98,2,109,185,185,"assert((((EP_Stack!=255)&&(EP_Stack>=2))&&(tmp>=2)))", 1, 2, 0); /* m: 100 -> 0,109 */
	reached0[100] = 1;
	trans[0][100]	= settr(0,0,0,0,0,"EP_Stack = tmp",0,0,0);
	T = trans[0][109] = settr(108,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(108,2,102,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(108,2,107,0,0,"IF", 1, 2, 0);
	trans[0][102]	= settr(101,2,105,186,0,"(((chain_tick_used==0)&&(((pending_exp>>1)&1)==0)))", 1, 2, 0);
	T = trans[ 0][105] = settr(104,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(104,0,103,0,0,"sub-sequence", 1, 2, 0);
	trans[0][103]	= settr(102,4,137,187,187,"assert(((1<2)&&(1<8)))", 1, 2, 0); /* m: 104 -> 0,137 */
	reached0[104] = 1;
	trans[0][104]	= settr(0,0,0,0,0,"pending_exp = (pending_exp|(1<<1))",0,0,0);
	trans[0][106]	= settr(0,0,0,0,0,"chain_tick_used = 1",0,0,0);
	trans[0][110]	= settr(109,0,137,188,188,".(goto)", 1, 2, 0);
	trans[0][107]	= settr(106,2,108,2,0,"else", 1, 2, 0);
	trans[0][108]	= settr(107,4,137,189,189,"(1)", 1, 2, 0); /* m: 110 -> 137,0 */
	reached0[110] = 1;
	T = trans[ 0][137] = settr(136,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(136,2,112,0,0,"ATOMIC", 1, 2, 0);
	trans[0][112]	= settr(111,2,127,190,0,"((0==EP))", 1, 2, 0);
	T = trans[ 0][127] = settr(126,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(126,0,125,0,0,"sub-sequence", 1, 2, 0);
	T = trans[0][125] = settr(124,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(124,2,113,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(124,2,120,0,0,"IF", 1, 2, 0);
	trans[0][113]	= settr(112,2,119,191,0,"((pending_exp>0))", 1, 2, 0);
	T = trans[ 0][119] = settr(118,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(118,0,115,0,0,"sub-sequence", 1, 2, 0);
	T = trans[ 0][115] = settr(114,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(114,0,114,0,0,"sub-sequence", 1, 2, 0);
	trans[0][114]	= settr(113,2,135,192,192,"tmp = ( (((pending_exp>>0)&1)) -> (0) : (1) )", 1, 2, 0); /* m: 116 -> 0,135 */
	reached0[116] = 1;
	trans[0][116]	= settr(0,0,0,0,0,"assert((((BASEPRI==0)||(15<BASEPRI))&&(EP_Stack>=2)))",0,0,0);
	trans[0][117]	= settr(0,0,0,0,0,"EP = tmp",0,0,0);
	trans[0][118]	= settr(0,0,0,0,0,"tmp = 255",0,0,0);
	trans[0][126]	= settr(125,2,135,1,0,".(goto)", 1, 2, 0);
	trans[0][120]	= settr(119,2,124,2,0,"else", 1, 2, 0);
	T = trans[ 0][124] = settr(123,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(123,0,121,0,0,"sub-sequence", 1, 2, 0);
	trans[0][121]	= settr(120,2,135,193,193,"assert((EP_Stack!=255))", 1, 2, 0); /* m: 122 -> 0,135 */
	reached0[122] = 1;
	trans[0][122]	= settr(0,0,0,0,0,"EP = EP_Stack",0,0,0);
	trans[0][123]	= settr(0,0,0,0,0,"EP_Stack = 255",0,0,0);
	T = trans[0][135] = settr(134,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(134,2,128,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(134,2,133,0,0,"IF", 1, 2, 0);
	trans[0][128]	= settr(127,2,131,194,0,"(((chain_tick_used==0)&&(((pending_exp>>1)&1)==0)))", 1, 2, 0);
	T = trans[ 0][131] = settr(130,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(130,0,129,0,0,"sub-sequence", 1, 2, 0);
	trans[0][129]	= settr(128,0,138,195,195,"assert(((1<2)&&(1<8)))", 1, 2, 0); /* m: 130 -> 0,138 */
	reached0[130] = 1;
	trans[0][130]	= settr(0,0,0,0,0,"pending_exp = (pending_exp|(1<<1))",0,0,0);
	trans[0][132]	= settr(0,0,0,0,0,"chain_tick_used = 1",0,0,0);
	trans[0][136]	= settr(135,0,138,196,196,".(goto)", 1, 2, 0);
	trans[0][133]	= settr(132,2,134,2,0,"else", 1, 2, 0);
	trans[0][134]	= settr(133,0,138,197,197,"(1)", 1, 2, 0); /* m: 136 -> 138,0 */
	reached0[136] = 1;
	trans[0][140]	= settr(139,0,141,1,0,"break", 0, 2, 0);
	trans[0][141]	= settr(140,0,0,198,198,"-end-", 0, 3500, 0);
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
