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

	trans = (Trans ***) emalloc(21*sizeof(Trans **));

	/* proctype 19: sortlink_three_sorted */

	trans[19] = (Trans **) emalloc(11*sizeof(Trans *));

	trans[19][7]	= settr(2158,0,6,1,0,".(goto)", 0, 2, 0);
	T = trans[19][6] = settr(2157,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(2157,0,3,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(2157,0,4,0,0,"DO", 0, 2, 0);
	T = trans[ 19][3] = settr(2154,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(2154,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[19][1]	= settr(2152,0,6,3,3,"(!((!((g_taskSortLinkTail>=3))||((g_taskSortLink[0].responseTime<=g_taskSortLink[1].responseTime)&&(g_taskSortLink[1].responseTime<=g_taskSortLink[2].responseTime)))))", 1, 2, 0); /* m: 2 -> 6,0 */
	reached19[2] = 1;
	trans[19][2]	= settr(0,0,0,0,0,"assert(!(!((!((g_taskSortLinkTail>=3))||((g_taskSortLink[0].responseTime<=g_taskSortLink[1].responseTime)&&(g_taskSortLink[1].responseTime<=g_taskSortLink[2].responseTime))))))",0,0,0);
	trans[19][4]	= settr(2155,0,6,1,0,"(1)", 0, 2, 0);
	trans[19][5]	= settr(2156,0,6,1,0,"goto T0_init", 0, 2, 0);
	trans[19][8]	= settr(2159,0,9,1,0,"break", 0, 2, 0);
	trans[19][9]	= settr(2160,0,10,1,0,"(1)", 0, 2, 0);
	trans[19][10]	= settr(2161,0,0,4,4,"-end-", 0, 3500, 0);

	/* proctype 18: sortlink_is_sorted */

	trans[18] = (Trans **) emalloc(11*sizeof(Trans *));

	trans[18][7]	= settr(2148,0,6,1,0,".(goto)", 0, 2, 0);
	T = trans[18][6] = settr(2147,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(2147,0,3,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(2147,0,4,0,0,"DO", 0, 2, 0);
	T = trans[ 18][3] = settr(2144,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(2144,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[18][1]	= settr(2142,0,6,5,5,"(!((!((g_taskSortLinkTail>=2))||(g_taskSortLink[0].responseTime<=g_taskSortLink[1].responseTime))))", 1, 2, 0); /* m: 2 -> 6,0 */
	reached18[2] = 1;
	trans[18][2]	= settr(0,0,0,0,0,"assert(!(!((!((g_taskSortLinkTail>=2))||(g_taskSortLink[0].responseTime<=g_taskSortLink[1].responseTime)))))",0,0,0);
	trans[18][4]	= settr(2145,0,6,1,0,"(1)", 0, 2, 0);
	trans[18][5]	= settr(2146,0,6,1,0,"goto T0_init", 0, 2, 0);
	trans[18][8]	= settr(2149,0,9,1,0,"break", 0, 2, 0);
	trans[18][9]	= settr(2150,0,10,1,0,"(1)", 0, 2, 0);
	trans[18][10]	= settr(2151,0,0,6,6,"-end-", 0, 3500, 0);

	/* proctype 17: delayed_not_in_ready_queue */

	trans[17] = (Trans **) emalloc(11*sizeof(Trans *));

	trans[17][7]	= settr(2138,0,6,1,0,".(goto)", 0, 2, 0);
	T = trans[17][6] = settr(2137,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(2137,0,3,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(2137,0,4,0,0,"DO", 0, 2, 0);
	T = trans[ 17][3] = settr(2134,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(2134,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[17][1]	= settr(2132,0,6,7,7,"(!((!((tcb[2].state==2))||(readyQueue[tcb[2].prio].tasks[0]!=2))))", 1, 2, 0); /* m: 2 -> 6,0 */
	reached17[2] = 1;
	trans[17][2]	= settr(0,0,0,0,0,"assert(!(!((!((tcb[2].state==2))||(readyQueue[tcb[2].prio].tasks[0]!=2)))))",0,0,0);
	trans[17][4]	= settr(2135,0,6,1,0,"(1)", 0, 2, 0);
	trans[17][5]	= settr(2136,0,6,1,0,"goto T0_init", 0, 2, 0);
	trans[17][8]	= settr(2139,0,9,1,0,"break", 0, 2, 0);
	trans[17][9]	= settr(2140,0,10,1,0,"(1)", 0, 2, 0);
	trans[17][10]	= settr(2141,0,0,8,8,"-end-", 0, 3500, 0);

	/* proctype 16: tick_monotonic */

	trans[16] = (Trans **) emalloc(11*sizeof(Trans *));

	trans[16][7]	= settr(2128,0,6,1,0,".(goto)", 0, 2, 0);
	T = trans[16][6] = settr(2127,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(2127,0,3,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(2127,0,4,0,0,"DO", 0, 2, 0);
	T = trans[ 16][3] = settr(2124,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(2124,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[16][1]	= settr(2122,0,6,9,9,"(!((g_tickCount<255)))", 1, 2, 0); /* m: 2 -> 6,0 */
	reached16[2] = 1;
	trans[16][2]	= settr(0,0,0,0,0,"assert(!(!((g_tickCount<255))))",0,0,0);
	trans[16][4]	= settr(2125,0,6,1,0,"(1)", 0, 2, 0);
	trans[16][5]	= settr(2126,0,6,1,0,"goto T0_init", 0, 2, 0);
	trans[16][8]	= settr(2129,0,9,1,0,"break", 0, 2, 0);
	trans[16][9]	= settr(2130,0,10,1,0,"(1)", 0, 2, 0);
	trans[16][10]	= settr(2131,0,0,10,10,"-end-", 0, 3500, 0);

	/* proctype 15: delayed_become_ready */

	trans[15] = (Trans **) emalloc(14*sizeof(Trans *));

	trans[15][6]	= settr(2114,0,5,1,0,".(goto)", 0, 2, 0);
	T = trans[15][5] = settr(2113,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(2113,0,1,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(2113,0,3,0,0,"DO", 0, 2, 0);
	trans[15][1]	= settr(2109,0,10,11,0,"((!(!((tcb[2].state==2)))&&!((tcb[2].state==1))))", 1, 2, 0);
	trans[15][2]	= settr(2110,0,10,1,0,"goto accept_S4", 0, 2, 0);
	trans[15][3]	= settr(2111,0,5,1,0,"(1)", 0, 2, 0);
	trans[15][4]	= settr(2112,0,5,1,0,"goto T0_init", 0, 2, 0);
	trans[15][7]	= settr(2115,0,10,1,0,"break", 0, 2, 0);
	trans[15][11]	= settr(2119,0,10,1,0,".(goto)", 0, 2, 0);
	T = trans[15][10] = settr(2118,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(2118,0,8,0,0,"DO", 0, 2, 0);
	trans[15][8]	= settr(2116,0,10,12,0,"(!((tcb[2].state==1)))", 1, 2, 0);
	trans[15][9]	= settr(2117,0,10,1,0,"goto accept_S4", 0, 2, 0);
	trans[15][12]	= settr(2120,0,13,1,0,"break", 0, 2, 0);
	trans[15][13]	= settr(2121,0,0,13,13,"-end-", 0, 3500, 0);

	/* proctype 14: smoke_P1_user_no_pending */

	trans[14] = (Trans **) emalloc(11*sizeof(Trans *));

	trans[14][7]	= settr(2105,0,6,1,0,".(goto)", 0, 2, 0);
	T = trans[14][6] = settr(2104,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(2104,0,3,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(2104,0,4,0,0,"DO", 0, 2, 0);
	T = trans[ 14][3] = settr(2101,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(2101,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[14][1]	= settr(2099,0,6,14,14,"(!(!((((EP==2)&&(pending_exp==0))&&(chain_tick_used==1)))))", 1, 2, 0); /* m: 2 -> 6,0 */
	reached14[2] = 1;
	trans[14][2]	= settr(0,0,0,0,0,"assert(!(!(!((((EP==2)&&(pending_exp==0))&&(chain_tick_used==1))))))",0,0,0);
	trans[14][4]	= settr(2102,0,6,1,0,"(1)", 0, 2, 0);
	trans[14][5]	= settr(2103,0,6,1,0,"goto T0_init", 0, 2, 0);
	trans[14][8]	= settr(2106,0,9,1,0,"break", 0, 2, 0);
	trans[14][9]	= settr(2107,0,10,1,0,"(1)", 0, 2, 0);
	trans[14][10]	= settr(2108,0,0,15,15,"-end-", 0, 3500, 0);

	/* proctype 13: smoke_P2_user_no_pending */

	trans[13] = (Trans **) emalloc(11*sizeof(Trans *));

	trans[13][7]	= settr(2095,0,6,1,0,".(goto)", 0, 2, 0);
	T = trans[13][6] = settr(2094,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(2094,0,3,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(2094,0,4,0,0,"DO", 0, 2, 0);
	T = trans[ 13][3] = settr(2091,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(2091,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[13][1]	= settr(2089,0,6,16,16,"(!(!((((EP==(2+1))&&(pending_exp==0))&&(chain_tick_used==1)))))", 1, 2, 0); /* m: 2 -> 6,0 */
	reached13[2] = 1;
	trans[13][2]	= settr(0,0,0,0,0,"assert(!(!(!((((EP==(2+1))&&(pending_exp==0))&&(chain_tick_used==1))))))",0,0,0);
	trans[13][4]	= settr(2092,0,6,1,0,"(1)", 0, 2, 0);
	trans[13][5]	= settr(2093,0,6,1,0,"goto T0_init", 0, 2, 0);
	trans[13][8]	= settr(2096,0,9,1,0,"break", 0, 2, 0);
	trans[13][9]	= settr(2097,0,10,1,0,"(1)", 0, 2, 0);
	trans[13][10]	= settr(2098,0,0,17,17,"-end-", 0, 3500, 0);

	/* proctype 12: p2_double_context_switch */

	trans[12] = (Trans **) emalloc(123*sizeof(Trans *));

	trans[12][21]	= settr(1987,0,20,1,0,".(goto)", 0, 2, 0);
	T = trans[12][20] = settr(1986,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1986,0,3,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1986,0,4,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1986,0,6,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1986,0,8,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1986,0,10,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1986,0,12,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1986,0,14,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1986,0,16,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1986,0,18,0,0,"DO", 0, 2, 0);
	T = trans[ 12][3] = settr(1969,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(1969,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[12][1]	= settr(1967,0,20,18,18,"((((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==3)))&&((EP==3)&&(((pending_exp>>1)&1)==1)))&&(EP==3)))", 1, 2, 0); /* m: 2 -> 20,0 */
	reached12[2] = 1;
	trans[12][2]	= settr(0,0,0,0,0,"assert(!((((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==3)))&&((EP==3)&&(((pending_exp>>1)&1)==1)))&&(EP==3))))",0,0,0);
	trans[12][4]	= settr(1970,0,28,19,0,"(((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==3)))&&((EP==3)&&(((pending_exp>>1)&1)==1))))", 1, 2, 0);
	trans[12][5]	= settr(1971,0,28,1,0,"goto T0_S120", 0, 2, 0);
	trans[12][6]	= settr(1972,0,38,20,0,"(((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==3)))&&((EP==3)&&(((pending_exp>>1)&1)==1))))", 1, 2, 0);
	trans[12][7]	= settr(1973,0,38,1,0,"goto T0_S119", 0, 2, 0);
	trans[12][8]	= settr(1974,0,50,21,0,"(((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==3)))&&((EP==3)&&(((pending_exp>>1)&1)==1))))", 1, 2, 0);
	trans[12][9]	= settr(1975,0,50,1,0,"goto T0_S118", 0, 2, 0);
	trans[12][10]	= settr(1976,0,64,22,0,"((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==3)))&&((EP==3)&&(((pending_exp>>1)&1)==1))))", 1, 2, 0);
	trans[12][11]	= settr(1977,0,64,1,0,"goto T0_S117", 0, 2, 0);
	trans[12][12]	= settr(1978,0,80,23,0,"(((((EP==0)&&(EP_Stack==3))&&((EP==1)&&(EP_Stack==3)))&&((EP==3)&&(((pending_exp>>1)&1)==1))))", 1, 2, 0);
	trans[12][13]	= settr(1979,0,80,1,0,"goto T0_S116", 0, 2, 0);
	trans[12][14]	= settr(1980,0,98,24,0,"((((EP==1)&&(EP_Stack==3))&&((EP==3)&&(((pending_exp>>1)&1)==1))))", 1, 2, 0);
	trans[12][15]	= settr(1981,0,98,1,0,"goto T0_S115", 0, 2, 0);
	trans[12][16]	= settr(1982,0,118,25,0,"(((EP==3)&&(((pending_exp>>1)&1)==1)))", 1, 2, 0);
	trans[12][17]	= settr(1983,0,118,1,0,"goto T0_S114", 0, 2, 0);
	trans[12][18]	= settr(1984,0,20,1,0,"(1)", 0, 2, 0);
	trans[12][19]	= settr(1985,0,20,1,0,"goto T0_init", 0, 2, 0);
	trans[12][22]	= settr(1988,0,28,1,0,"break", 0, 2, 0);
	trans[12][29]	= settr(1995,0,28,1,0,".(goto)", 0, 2, 0);
	T = trans[12][28] = settr(1994,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1994,0,25,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1994,0,26,0,0,"DO", 0, 2, 0);
	T = trans[ 12][25] = settr(1991,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(1991,2,23,0,0,"ATOMIC", 1, 2, 0);
	trans[12][23]	= settr(1989,0,28,26,26,"((EP==3))", 1, 2, 0); /* m: 24 -> 28,0 */
	reached12[24] = 1;
	trans[12][24]	= settr(0,0,0,0,0,"assert(!((EP==3)))",0,0,0);
	trans[12][26]	= settr(1992,0,28,27,0,"(((EP==0)&&(EP_Stack==3)))", 1, 2, 0);
	trans[12][27]	= settr(1993,0,28,1,0,"goto T0_S120", 0, 2, 0);
	trans[12][30]	= settr(1996,0,38,1,0,"break", 0, 2, 0);
	trans[12][39]	= settr(2005,0,38,1,0,".(goto)", 0, 2, 0);
	T = trans[12][38] = settr(2004,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(2004,0,33,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(2004,0,34,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(2004,0,36,0,0,"DO", 0, 2, 0);
	T = trans[ 12][33] = settr(1999,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(1999,2,31,0,0,"ATOMIC", 1, 2, 0);
	trans[12][31]	= settr(1997,0,38,28,28,"((((EP==0)&&(EP_Stack==3))&&(EP==3)))", 1, 2, 0); /* m: 32 -> 38,0 */
	reached12[32] = 1;
	trans[12][32]	= settr(0,0,0,0,0,"assert(!((((EP==0)&&(EP_Stack==3))&&(EP==3))))",0,0,0);
	trans[12][34]	= settr(2000,0,28,29,0,"(((EP==0)&&(EP_Stack==3)))", 1, 2, 0);
	trans[12][35]	= settr(2001,0,28,1,0,"goto T0_S120", 0, 2, 0);
	trans[12][36]	= settr(2002,0,38,30,0,"(((EP==0)&&(EP_Stack==2)))", 1, 2, 0);
	trans[12][37]	= settr(2003,0,38,1,0,"goto T0_S119", 0, 2, 0);
	trans[12][40]	= settr(2006,0,50,1,0,"break", 0, 2, 0);
	trans[12][51]	= settr(2017,0,50,1,0,".(goto)", 0, 2, 0);
	T = trans[12][50] = settr(2016,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(2016,0,43,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(2016,0,44,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(2016,0,46,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(2016,0,48,0,0,"DO", 0, 2, 0);
	T = trans[ 12][43] = settr(2009,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(2009,2,41,0,0,"ATOMIC", 1, 2, 0);
	trans[12][41]	= settr(2007,0,50,31,31,"(((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&(EP==3)))", 1, 2, 0); /* m: 42 -> 50,0 */
	reached12[42] = 1;
	trans[12][42]	= settr(0,0,0,0,0,"assert(!(((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&(EP==3))))",0,0,0);
	trans[12][44]	= settr(2010,0,28,32,0,"((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3))))", 1, 2, 0);
	trans[12][45]	= settr(2011,0,28,1,0,"goto T0_S120", 0, 2, 0);
	trans[12][46]	= settr(2012,0,38,33,0,"(((EP==0)&&(EP_Stack==2)))", 1, 2, 0);
	trans[12][47]	= settr(2013,0,38,1,0,"goto T0_S119", 0, 2, 0);
	trans[12][48]	= settr(2014,0,50,34,0,"(((EP==1)&&(EP_Stack==2)))", 1, 2, 0);
	trans[12][49]	= settr(2015,0,50,1,0,"goto T0_S118", 0, 2, 0);
	trans[12][52]	= settr(2018,0,64,1,0,"break", 0, 2, 0);
	trans[12][65]	= settr(2031,0,64,1,0,".(goto)", 0, 2, 0);
	T = trans[12][64] = settr(2030,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(2030,0,55,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(2030,0,56,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(2030,0,58,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(2030,0,60,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(2030,0,62,0,0,"DO", 0, 2, 0);
	T = trans[ 12][55] = settr(2021,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(2021,2,53,0,0,"ATOMIC", 1, 2, 0);
	trans[12][53]	= settr(2019,0,64,35,35,"((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2)))&&(EP==3)))", 1, 2, 0); /* m: 54 -> 64,0 */
	reached12[54] = 1;
	trans[12][54]	= settr(0,0,0,0,0,"assert(!((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2)))&&(EP==3))))",0,0,0);
	trans[12][56]	= settr(2022,0,28,36,0,"(((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2))))", 1, 2, 0);
	trans[12][57]	= settr(2023,0,28,1,0,"goto T0_S120", 0, 2, 0);
	trans[12][58]	= settr(2024,0,38,37,0,"((((EP==0)&&(EP_Stack==2))&&((EP==1)&&(EP_Stack==2))))", 1, 2, 0);
	trans[12][59]	= settr(2025,0,38,1,0,"goto T0_S119", 0, 2, 0);
	trans[12][60]	= settr(2026,0,50,38,0,"(((EP==1)&&(EP_Stack==2)))", 1, 2, 0);
	trans[12][61]	= settr(2027,0,50,1,0,"goto T0_S118", 0, 2, 0);
	trans[12][62]	= settr(2028,0,64,39,0,"(((EP==0)&&(EP_Stack==2)))", 1, 2, 0);
	trans[12][63]	= settr(2029,0,64,1,0,"goto T0_S117", 0, 2, 0);
	trans[12][66]	= settr(2032,0,80,1,0,"break", 0, 2, 0);
	trans[12][81]	= settr(2047,0,80,1,0,".(goto)", 0, 2, 0);
	T = trans[12][80] = settr(2046,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(2046,0,69,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(2046,0,70,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(2046,0,72,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(2046,0,74,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(2046,0,76,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(2046,0,78,0,0,"DO", 0, 2, 0);
	T = trans[ 12][69] = settr(2035,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(2035,2,67,0,0,"ATOMIC", 1, 2, 0);
	trans[12][67]	= settr(2033,0,80,40,40,"((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2)))&&(EP==3)))", 1, 2, 0); /* m: 68 -> 80,0 */
	reached12[68] = 1;
	trans[12][68]	= settr(0,0,0,0,0,"assert(!((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2)))&&(EP==3))))",0,0,0);
	trans[12][70]	= settr(2036,0,28,41,0,"(((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2))))", 1, 2, 0);
	trans[12][71]	= settr(2037,0,28,1,0,"goto T0_S120", 0, 2, 0);
	trans[12][72]	= settr(2038,0,38,42,0,"((((EP==0)&&(EP_Stack==2))&&((EP==1)&&(EP_Stack==2))))", 1, 2, 0);
	trans[12][73]	= settr(2039,0,38,1,0,"goto T0_S119", 0, 2, 0);
	trans[12][74]	= settr(2040,0,50,43,0,"((((EP==0)&&(EP_Stack==2))&&((EP==1)&&(EP_Stack==2))))", 1, 2, 0);
	trans[12][75]	= settr(2041,0,50,1,0,"goto T0_S118", 0, 2, 0);
	trans[12][76]	= settr(2042,0,64,44,0,"(((EP==0)&&(EP_Stack==2)))", 1, 2, 0);
	trans[12][77]	= settr(2043,0,64,1,0,"goto T0_S117", 0, 2, 0);
	trans[12][78]	= settr(2044,0,80,45,0,"(((EP==0)&&(EP_Stack==3)))", 1, 2, 0);
	trans[12][79]	= settr(2045,0,80,1,0,"goto T0_S116", 0, 2, 0);
	trans[12][82]	= settr(2048,0,98,1,0,"break", 0, 2, 0);
	trans[12][99]	= settr(2065,0,98,1,0,".(goto)", 0, 2, 0);
	T = trans[12][98] = settr(2064,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(2064,0,85,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(2064,0,86,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(2064,0,88,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(2064,0,90,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(2064,0,92,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(2064,0,94,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(2064,0,96,0,0,"DO", 0, 2, 0);
	T = trans[ 12][85] = settr(2051,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(2051,2,83,0,0,"ATOMIC", 1, 2, 0);
	trans[12][83]	= settr(2049,0,98,46,46,"((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2)))&&(EP==3)))", 1, 2, 0); /* m: 84 -> 98,0 */
	reached12[84] = 1;
	trans[12][84]	= settr(0,0,0,0,0,"assert(!((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2)))&&(EP==3))))",0,0,0);
	trans[12][86]	= settr(2052,0,28,47,0,"(((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2))))", 1, 2, 0);
	trans[12][87]	= settr(2053,0,28,1,0,"goto T0_S120", 0, 2, 0);
	trans[12][88]	= settr(2054,0,38,48,0,"(((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2))))", 1, 2, 0);
	trans[12][89]	= settr(2055,0,38,1,0,"goto T0_S119", 0, 2, 0);
	trans[12][90]	= settr(2056,0,50,49,0,"(((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2))))", 1, 2, 0);
	trans[12][91]	= settr(2057,0,50,1,0,"goto T0_S118", 0, 2, 0);
	trans[12][92]	= settr(2058,0,64,50,0,"((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3))))", 1, 2, 0);
	trans[12][93]	= settr(2059,0,64,1,0,"goto T0_S117", 0, 2, 0);
	trans[12][94]	= settr(2060,0,80,51,0,"(((EP==0)&&(EP_Stack==3)))", 1, 2, 0);
	trans[12][95]	= settr(2061,0,80,1,0,"goto T0_S116", 0, 2, 0);
	trans[12][96]	= settr(2062,0,98,52,0,"(((EP==1)&&(EP_Stack==3)))", 1, 2, 0);
	trans[12][97]	= settr(2063,0,98,1,0,"goto T0_S115", 0, 2, 0);
	trans[12][100]	= settr(2066,0,118,1,0,"break", 0, 2, 0);
	trans[12][119]	= settr(2085,0,118,1,0,".(goto)", 0, 2, 0);
	T = trans[12][118] = settr(2084,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(2084,0,103,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(2084,0,104,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(2084,0,106,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(2084,0,108,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(2084,0,110,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(2084,0,112,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(2084,0,114,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(2084,0,116,0,0,"DO", 0, 2, 0);
	T = trans[ 12][103] = settr(2069,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(2069,2,101,0,0,"ATOMIC", 1, 2, 0);
	trans[12][101]	= settr(2067,0,118,53,53,"(((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==3)))&&(EP==3)))", 1, 2, 0); /* m: 102 -> 118,0 */
	reached12[102] = 1;
	trans[12][102]	= settr(0,0,0,0,0,"assert(!(((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==3)))&&(EP==3))))",0,0,0);
	trans[12][104]	= settr(2070,0,28,54,0,"((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==3))))", 1, 2, 0);
	trans[12][105]	= settr(2071,0,28,1,0,"goto T0_S120", 0, 2, 0);
	trans[12][106]	= settr(2072,0,38,55,0,"((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==3))))", 1, 2, 0);
	trans[12][107]	= settr(2073,0,38,1,0,"goto T0_S119", 0, 2, 0);
	trans[12][108]	= settr(2074,0,50,56,0,"((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==3))))", 1, 2, 0);
	trans[12][109]	= settr(2075,0,50,1,0,"goto T0_S118", 0, 2, 0);
	trans[12][110]	= settr(2076,0,64,57,0,"(((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==3))))", 1, 2, 0);
	trans[12][111]	= settr(2077,0,64,1,0,"goto T0_S117", 0, 2, 0);
	trans[12][112]	= settr(2078,0,80,58,0,"((((EP==0)&&(EP_Stack==3))&&((EP==1)&&(EP_Stack==3))))", 1, 2, 0);
	trans[12][113]	= settr(2079,0,80,1,0,"goto T0_S116", 0, 2, 0);
	trans[12][114]	= settr(2080,0,98,59,0,"(((EP==1)&&(EP_Stack==3)))", 1, 2, 0);
	trans[12][115]	= settr(2081,0,98,1,0,"goto T0_S115", 0, 2, 0);
	trans[12][116]	= settr(2082,0,118,60,0,"(((EP==3)&&(((pending_exp>>1)&1)==1)))", 1, 2, 0);
	trans[12][117]	= settr(2083,0,118,1,0,"goto T0_S114", 0, 2, 0);
	trans[12][120]	= settr(2086,0,121,1,0,"break", 0, 2, 0);
	trans[12][121]	= settr(2087,0,122,1,0,"(1)", 0, 2, 0);
	trans[12][122]	= settr(2088,0,0,61,61,"-end-", 0, 3500, 0);

	/* proctype 11: P2_switching_not_P1_witness_unfolded */

	trans[11] = (Trans **) emalloc(101*sizeof(Trans *));

	trans[11][19]	= settr(1885,0,18,1,0,".(goto)", 0, 2, 0);
	T = trans[11][18] = settr(1884,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1884,0,3,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1884,0,4,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1884,0,6,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1884,0,8,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1884,0,10,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1884,0,12,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1884,0,14,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1884,0,16,0,0,"DO", 0, 2, 0);
	T = trans[ 11][3] = settr(1869,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(1869,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[11][1]	= settr(1867,0,18,62,62,"(((((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==(2+1))))&&((EP==1)&&(EP_Stack==2)))&&(EP==(2+1))))", 1, 2, 0); /* m: 2 -> 18,0 */
	reached11[2] = 1;
	trans[11][2]	= settr(0,0,0,0,0,"assert(!(((((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==(2+1))))&&((EP==1)&&(EP_Stack==2)))&&(EP==(2+1)))))",0,0,0);
	trans[11][4]	= settr(1870,0,26,63,0,"((((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==(2+1))))&&((EP==1)&&(EP_Stack==2))))", 1, 2, 0);
	trans[11][5]	= settr(1871,0,26,1,0,"goto T0_S84", 0, 2, 0);
	trans[11][6]	= settr(1872,0,36,64,0,"((((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==(2+1))))&&((EP==1)&&(EP_Stack==2))))", 1, 2, 0);
	trans[11][7]	= settr(1873,0,36,1,0,"goto T0_S83", 0, 2, 0);
	trans[11][8]	= settr(1874,0,48,65,0,"((((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==(2+1))))&&((EP==1)&&(EP_Stack==2))))", 1, 2, 0);
	trans[11][9]	= settr(1875,0,48,1,0,"goto T0_S82", 0, 2, 0);
	trans[11][10]	= settr(1876,0,62,66,0,"(((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==(2+1)))))", 1, 2, 0);
	trans[11][11]	= settr(1877,0,62,1,0,"goto T0_S81", 0, 2, 0);
	trans[11][12]	= settr(1878,0,78,67,0,"((((EP==0)&&(EP_Stack==(2+1)))&&((EP==1)&&(EP_Stack==(2+1)))))", 1, 2, 0);
	trans[11][13]	= settr(1879,0,78,1,0,"goto T0_S80", 0, 2, 0);
	trans[11][14]	= settr(1880,0,96,68,0,"(((EP==1)&&(EP_Stack==(2+1))))", 1, 2, 0);
	trans[11][15]	= settr(1881,0,96,1,0,"goto T0_S79", 0, 2, 0);
	trans[11][16]	= settr(1882,0,18,1,0,"(1)", 0, 2, 0);
	trans[11][17]	= settr(1883,0,18,1,0,"goto T0_init", 0, 2, 0);
	trans[11][20]	= settr(1886,0,26,1,0,"break", 0, 2, 0);
	trans[11][27]	= settr(1893,0,26,1,0,".(goto)", 0, 2, 0);
	T = trans[11][26] = settr(1892,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1892,0,23,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1892,0,24,0,0,"DO", 0, 2, 0);
	T = trans[ 11][23] = settr(1889,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(1889,2,21,0,0,"ATOMIC", 1, 2, 0);
	trans[11][21]	= settr(1887,0,26,69,69,"((EP==(2+1)))", 1, 2, 0); /* m: 22 -> 26,0 */
	reached11[22] = 1;
	trans[11][22]	= settr(0,0,0,0,0,"assert(!((EP==(2+1))))",0,0,0);
	trans[11][24]	= settr(1890,0,26,70,0,"(((EP==0)&&(EP_Stack==(2+1))))", 1, 2, 0);
	trans[11][25]	= settr(1891,0,26,1,0,"goto T0_S84", 0, 2, 0);
	trans[11][28]	= settr(1894,0,36,1,0,"break", 0, 2, 0);
	trans[11][37]	= settr(1903,0,36,1,0,".(goto)", 0, 2, 0);
	T = trans[11][36] = settr(1902,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1902,0,31,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1902,0,32,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1902,0,34,0,0,"DO", 0, 2, 0);
	T = trans[ 11][31] = settr(1897,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(1897,2,29,0,0,"ATOMIC", 1, 2, 0);
	trans[11][29]	= settr(1895,0,36,71,71,"((((EP==0)&&(EP_Stack==(2+1)))&&(EP==(2+1))))", 1, 2, 0); /* m: 30 -> 36,0 */
	reached11[30] = 1;
	trans[11][30]	= settr(0,0,0,0,0,"assert(!((((EP==0)&&(EP_Stack==(2+1)))&&(EP==(2+1)))))",0,0,0);
	trans[11][32]	= settr(1898,0,26,72,0,"(((EP==0)&&(EP_Stack==(2+1))))", 1, 2, 0);
	trans[11][33]	= settr(1899,0,26,1,0,"goto T0_S84", 0, 2, 0);
	trans[11][34]	= settr(1900,0,36,73,0,"(((EP==0)&&(EP_Stack==2)))", 1, 2, 0);
	trans[11][35]	= settr(1901,0,36,1,0,"goto T0_S83", 0, 2, 0);
	trans[11][38]	= settr(1904,0,48,1,0,"break", 0, 2, 0);
	trans[11][49]	= settr(1915,0,48,1,0,".(goto)", 0, 2, 0);
	T = trans[11][48] = settr(1914,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1914,0,41,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1914,0,42,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1914,0,44,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1914,0,46,0,0,"DO", 0, 2, 0);
	T = trans[ 11][41] = settr(1907,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(1907,2,39,0,0,"ATOMIC", 1, 2, 0);
	trans[11][39]	= settr(1905,0,48,74,74,"(((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&(EP==(2+1))))", 1, 2, 0); /* m: 40 -> 48,0 */
	reached11[40] = 1;
	trans[11][40]	= settr(0,0,0,0,0,"assert(!(((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&(EP==(2+1)))))",0,0,0);
	trans[11][42]	= settr(1908,0,26,75,0,"((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2))))", 1, 2, 0);
	trans[11][43]	= settr(1909,0,26,1,0,"goto T0_S84", 0, 2, 0);
	trans[11][44]	= settr(1910,0,36,76,0,"(((EP==0)&&(EP_Stack==2)))", 1, 2, 0);
	trans[11][45]	= settr(1911,0,36,1,0,"goto T0_S83", 0, 2, 0);
	trans[11][46]	= settr(1912,0,48,77,0,"(((EP==1)&&(EP_Stack==2)))", 1, 2, 0);
	trans[11][47]	= settr(1913,0,48,1,0,"goto T0_S82", 0, 2, 0);
	trans[11][50]	= settr(1916,0,62,1,0,"break", 0, 2, 0);
	trans[11][63]	= settr(1929,0,62,1,0,".(goto)", 0, 2, 0);
	T = trans[11][62] = settr(1928,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1928,0,53,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1928,0,54,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1928,0,56,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1928,0,58,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1928,0,60,0,0,"DO", 0, 2, 0);
	T = trans[ 11][53] = settr(1919,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(1919,2,51,0,0,"ATOMIC", 1, 2, 0);
	trans[11][51]	= settr(1917,0,62,78,78,"((((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==2)))&&(EP==(2+1))))", 1, 2, 0); /* m: 52 -> 62,0 */
	reached11[52] = 1;
	trans[11][52]	= settr(0,0,0,0,0,"assert(!((((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==2)))&&(EP==(2+1)))))",0,0,0);
	trans[11][54]	= settr(1920,0,26,79,0,"(((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==2))))", 1, 2, 0);
	trans[11][55]	= settr(1921,0,26,1,0,"goto T0_S84", 0, 2, 0);
	trans[11][56]	= settr(1922,0,36,80,0,"((((EP==0)&&(EP_Stack==2))&&((EP==1)&&(EP_Stack==2))))", 1, 2, 0);
	trans[11][57]	= settr(1923,0,36,1,0,"goto T0_S83", 0, 2, 0);
	trans[11][58]	= settr(1924,0,48,81,0,"(((EP==1)&&(EP_Stack==2)))", 1, 2, 0);
	trans[11][59]	= settr(1925,0,48,1,0,"goto T0_S82", 0, 2, 0);
	trans[11][60]	= settr(1926,0,62,82,0,"(((EP==0)&&(EP_Stack==2)))", 1, 2, 0);
	trans[11][61]	= settr(1927,0,62,1,0,"goto T0_S81", 0, 2, 0);
	trans[11][64]	= settr(1930,0,78,1,0,"break", 0, 2, 0);
	trans[11][79]	= settr(1945,0,78,1,0,".(goto)", 0, 2, 0);
	T = trans[11][78] = settr(1944,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1944,0,67,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1944,0,68,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1944,0,70,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1944,0,72,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1944,0,74,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1944,0,76,0,0,"DO", 0, 2, 0);
	T = trans[ 11][67] = settr(1933,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(1933,2,65,0,0,"ATOMIC", 1, 2, 0);
	trans[11][65]	= settr(1931,0,78,83,83,"((((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==2)))&&(EP==(2+1))))", 1, 2, 0); /* m: 66 -> 78,0 */
	reached11[66] = 1;
	trans[11][66]	= settr(0,0,0,0,0,"assert(!((((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==2)))&&(EP==(2+1)))))",0,0,0);
	trans[11][68]	= settr(1934,0,26,84,0,"(((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==2))))", 1, 2, 0);
	trans[11][69]	= settr(1935,0,26,1,0,"goto T0_S84", 0, 2, 0);
	trans[11][70]	= settr(1936,0,36,85,0,"((((EP==0)&&(EP_Stack==2))&&((EP==1)&&(EP_Stack==2))))", 1, 2, 0);
	trans[11][71]	= settr(1937,0,36,1,0,"goto T0_S83", 0, 2, 0);
	trans[11][72]	= settr(1938,0,48,86,0,"((((EP==0)&&(EP_Stack==2))&&((EP==1)&&(EP_Stack==2))))", 1, 2, 0);
	trans[11][73]	= settr(1939,0,48,1,0,"goto T0_S82", 0, 2, 0);
	trans[11][74]	= settr(1940,0,62,87,0,"(((EP==0)&&(EP_Stack==2)))", 1, 2, 0);
	trans[11][75]	= settr(1941,0,62,1,0,"goto T0_S81", 0, 2, 0);
	trans[11][76]	= settr(1942,0,78,88,0,"(((EP==0)&&(EP_Stack==(2+1))))", 1, 2, 0);
	trans[11][77]	= settr(1943,0,78,1,0,"goto T0_S80", 0, 2, 0);
	trans[11][80]	= settr(1946,0,96,1,0,"break", 0, 2, 0);
	trans[11][97]	= settr(1963,0,96,1,0,".(goto)", 0, 2, 0);
	T = trans[11][96] = settr(1962,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1962,0,83,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1962,0,84,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1962,0,86,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1962,0,88,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1962,0,90,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1962,0,92,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1962,0,94,0,0,"DO", 0, 2, 0);
	T = trans[ 11][83] = settr(1949,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(1949,2,81,0,0,"ATOMIC", 1, 2, 0);
	trans[11][81]	= settr(1947,0,96,89,89,"((((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==2)))&&(EP==(2+1))))", 1, 2, 0); /* m: 82 -> 96,0 */
	reached11[82] = 1;
	trans[11][82]	= settr(0,0,0,0,0,"assert(!((((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==2)))&&(EP==(2+1)))))",0,0,0);
	trans[11][84]	= settr(1950,0,26,90,0,"(((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==2))))", 1, 2, 0);
	trans[11][85]	= settr(1951,0,26,1,0,"goto T0_S84", 0, 2, 0);
	trans[11][86]	= settr(1952,0,36,91,0,"(((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==2))))", 1, 2, 0);
	trans[11][87]	= settr(1953,0,36,1,0,"goto T0_S83", 0, 2, 0);
	trans[11][88]	= settr(1954,0,48,92,0,"(((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==2))))", 1, 2, 0);
	trans[11][89]	= settr(1955,0,48,1,0,"goto T0_S82", 0, 2, 0);
	trans[11][90]	= settr(1956,0,62,93,0,"((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2))))", 1, 2, 0);
	trans[11][91]	= settr(1957,0,62,1,0,"goto T0_S81", 0, 2, 0);
	trans[11][92]	= settr(1958,0,78,94,0,"(((EP==0)&&(EP_Stack==(2+1))))", 1, 2, 0);
	trans[11][93]	= settr(1959,0,78,1,0,"goto T0_S80", 0, 2, 0);
	trans[11][94]	= settr(1960,0,96,95,0,"(((EP==1)&&(EP_Stack==(2+1))))", 1, 2, 0);
	trans[11][95]	= settr(1961,0,96,1,0,"goto T0_S79", 0, 2, 0);
	trans[11][98]	= settr(1964,0,99,1,0,"break", 0, 2, 0);
	trans[11][99]	= settr(1965,0,100,1,0,"(1)", 0, 2, 0);
	trans[11][100]	= settr(1966,0,0,96,96,"-end-", 0, 3500, 0);

	/* proctype 10: all_starvation_free */

	trans[10] = (Trans **) emalloc(157*sizeof(Trans *));

	trans[10][20]	= settr(1730,0,19,1,0,".(goto)", 0, 2, 0);
	T = trans[10][19] = settr(1729,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1729,0,1,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1729,0,3,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1729,0,5,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1729,0,7,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1729,0,9,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1729,0,11,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1729,0,13,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1729,0,15,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1729,0,17,0,0,"DO", 0, 2, 0);
	trans[10][1]	= settr(1711,0,28,97,0,"(((!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==2)))&&(EP>=2)))", 1, 2, 0);
	trans[10][2]	= settr(1712,0,28,1,0,"goto accept_S9", 0, 2, 0);
	trans[10][3]	= settr(1713,0,123,98,0,"((!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==2))))", 1, 2, 0);
	trans[10][4]	= settr(1714,0,123,1,0,"goto T0_S350", 0, 2, 0);
	trans[10][5]	= settr(1715,0,44,99,0,"(((!((pending_exp>0))&&!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1)))))&&!((EP==2))))", 1, 2, 0);
	trans[10][6]	= settr(1716,0,44,1,0,"goto accept_S244", 0, 2, 0);
	trans[10][7]	= settr(1717,0,37,100,0,"(((!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==(2+1))))&&(EP>=2)))", 1, 2, 0);
	trans[10][8]	= settr(1718,0,37,1,0,"goto accept_S140", 0, 2, 0);
	trans[10][9]	= settr(1719,0,132,101,0,"((!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==(2+1)))))", 1, 2, 0);
	trans[10][10]	= settr(1720,0,132,1,0,"goto T0_S371", 0, 2, 0);
	trans[10][11]	= settr(1721,0,51,102,0,"(((!((pending_exp>0))&&!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1)))))&&!((EP==(2+1)))))", 1, 2, 0);
	trans[10][12]	= settr(1722,0,51,1,0,"goto accept_S267", 0, 2, 0);
	trans[10][13]	= settr(1723,0,19,103,0,"((EP>=2))", 1, 2, 0);
	trans[10][14]	= settr(1724,0,19,1,0,"goto T0_init", 0, 2, 0);
	trans[10][15]	= settr(1725,0,153,1,0,"(1)", 0, 2, 0);
	trans[10][16]	= settr(1726,0,153,1,0,"goto T0_S384", 0, 2, 0);
	trans[10][17]	= settr(1727,0,114,104,0,"(!((pending_exp>0)))", 1, 2, 0);
	trans[10][18]	= settr(1728,0,114,1,0,"goto T0_S317", 0, 2, 0);
	trans[10][21]	= settr(1731,0,28,1,0,"break", 0, 2, 0);
	trans[10][29]	= settr(1739,0,28,1,0,".(goto)", 0, 2, 0);
	T = trans[10][28] = settr(1738,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1738,0,22,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1738,0,24,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1738,0,26,0,0,"DO", 0, 2, 0);
	trans[10][22]	= settr(1732,0,74,105,0,"((!((EP==2))&&(EP>=2)))", 1, 2, 0);
	trans[10][23]	= settr(1733,0,74,1,0,"goto T0_S9", 0, 2, 0);
	trans[10][24]	= settr(1734,0,123,106,0,"(!((EP==2)))", 1, 2, 0);
	trans[10][25]	= settr(1735,0,123,1,0,"goto T0_S350", 0, 2, 0);
	trans[10][26]	= settr(1736,0,90,107,0,"((!((pending_exp>0))&&!((EP==2))))", 1, 2, 0);
	trans[10][27]	= settr(1737,0,90,1,0,"goto T0_S244", 0, 2, 0);
	trans[10][30]	= settr(1740,0,37,1,0,"break", 0, 2, 0);
	trans[10][38]	= settr(1748,0,37,1,0,".(goto)", 0, 2, 0);
	T = trans[10][37] = settr(1747,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1747,0,31,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1747,0,33,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1747,0,35,0,0,"DO", 0, 2, 0);
	trans[10][31]	= settr(1741,0,83,108,0,"((!((EP==(2+1)))&&(EP>=2)))", 1, 2, 0);
	trans[10][32]	= settr(1742,0,83,1,0,"goto T0_S140", 0, 2, 0);
	trans[10][33]	= settr(1743,0,132,109,0,"(!((EP==(2+1))))", 1, 2, 0);
	trans[10][34]	= settr(1744,0,132,1,0,"goto T0_S371", 0, 2, 0);
	trans[10][35]	= settr(1745,0,97,110,0,"((!((pending_exp>0))&&!((EP==(2+1)))))", 1, 2, 0);
	trans[10][36]	= settr(1746,0,97,1,0,"goto T0_S267", 0, 2, 0);
	trans[10][39]	= settr(1749,0,44,1,0,"break", 0, 2, 0);
	trans[10][45]	= settr(1755,0,44,1,0,".(goto)", 0, 2, 0);
	T = trans[10][44] = settr(1754,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1754,0,40,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1754,0,42,0,0,"DO", 0, 2, 0);
	trans[10][40]	= settr(1750,0,123,111,0,"(!((EP==2)))", 1, 2, 0);
	trans[10][41]	= settr(1751,0,123,1,0,"goto T0_S350", 0, 2, 0);
	trans[10][42]	= settr(1752,0,90,112,0,"(((!((pending_exp>0))&&!((EP==2)))||(!((EP==2))&&(EP>=2))))", 1, 2, 0);
	trans[10][43]	= settr(1753,0,90,1,0,"goto T0_S244", 0, 2, 0);
	trans[10][46]	= settr(1756,0,51,1,0,"break", 0, 2, 0);
	trans[10][52]	= settr(1762,0,51,1,0,".(goto)", 0, 2, 0);
	T = trans[10][51] = settr(1761,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1761,0,47,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1761,0,49,0,0,"DO", 0, 2, 0);
	trans[10][47]	= settr(1757,0,132,113,0,"(!((EP==(2+1))))", 1, 2, 0);
	trans[10][48]	= settr(1758,0,132,1,0,"goto T0_S371", 0, 2, 0);
	trans[10][49]	= settr(1759,0,97,114,0,"(((!((pending_exp>0))&&!((EP==(2+1))))||(!((EP==(2+1)))&&(EP>=2))))", 1, 2, 0);
	trans[10][50]	= settr(1760,0,97,1,0,"goto T0_S267", 0, 2, 0);
	trans[10][53]	= settr(1763,0,58,1,0,"break", 0, 2, 0);
	trans[10][59]	= settr(1769,0,58,1,0,".(goto)", 0, 2, 0);
	T = trans[10][58] = settr(1768,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1768,0,54,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1768,0,56,0,0,"DO", 0, 2, 0);
	trans[10][54]	= settr(1764,0,123,115,0,"(!((EP==2)))", 1, 2, 0);
	trans[10][55]	= settr(1765,0,123,1,0,"goto T0_S350", 0, 2, 0);
	trans[10][56]	= settr(1766,0,90,116,0,"((!((EP==2))&&(EP>=2)))", 1, 2, 0);
	trans[10][57]	= settr(1767,0,90,1,0,"goto T0_S244", 0, 2, 0);
	trans[10][60]	= settr(1770,0,65,1,0,"break", 0, 2, 0);
	trans[10][66]	= settr(1776,0,65,1,0,".(goto)", 0, 2, 0);
	T = trans[10][65] = settr(1775,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1775,0,61,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1775,0,63,0,0,"DO", 0, 2, 0);
	trans[10][61]	= settr(1771,0,132,117,0,"(!((EP==(2+1))))", 1, 2, 0);
	trans[10][62]	= settr(1772,0,132,1,0,"goto T0_S371", 0, 2, 0);
	trans[10][63]	= settr(1773,0,97,118,0,"((!((EP==(2+1)))&&(EP>=2)))", 1, 2, 0);
	trans[10][64]	= settr(1774,0,97,1,0,"goto T0_S267", 0, 2, 0);
	trans[10][67]	= settr(1777,0,74,1,0,"break", 0, 2, 0);
	trans[10][75]	= settr(1785,0,74,1,0,".(goto)", 0, 2, 0);
	T = trans[10][74] = settr(1784,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1784,0,68,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1784,0,70,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1784,0,72,0,0,"DO", 0, 2, 0);
	trans[10][68]	= settr(1778,0,28,119,0,"((!((EP==2))&&(EP>=2)))", 1, 2, 0);
	trans[10][69]	= settr(1779,0,28,1,0,"goto accept_S9", 0, 2, 0);
	trans[10][70]	= settr(1780,0,123,120,0,"(!((EP==2)))", 1, 2, 0);
	trans[10][71]	= settr(1781,0,123,1,0,"goto T0_S350", 0, 2, 0);
	trans[10][72]	= settr(1782,0,44,121,0,"((!((pending_exp>0))&&!((EP==2))))", 1, 2, 0);
	trans[10][73]	= settr(1783,0,44,1,0,"goto accept_S244", 0, 2, 0);
	trans[10][76]	= settr(1786,0,83,1,0,"break", 0, 2, 0);
	trans[10][84]	= settr(1794,0,83,1,0,".(goto)", 0, 2, 0);
	T = trans[10][83] = settr(1793,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1793,0,77,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1793,0,79,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1793,0,81,0,0,"DO", 0, 2, 0);
	trans[10][77]	= settr(1787,0,37,122,0,"((!((EP==(2+1)))&&(EP>=2)))", 1, 2, 0);
	trans[10][78]	= settr(1788,0,37,1,0,"goto accept_S140", 0, 2, 0);
	trans[10][79]	= settr(1789,0,132,123,0,"(!((EP==(2+1))))", 1, 2, 0);
	trans[10][80]	= settr(1790,0,132,1,0,"goto T0_S371", 0, 2, 0);
	trans[10][81]	= settr(1791,0,51,124,0,"((!((pending_exp>0))&&!((EP==(2+1)))))", 1, 2, 0);
	trans[10][82]	= settr(1792,0,51,1,0,"goto accept_S267", 0, 2, 0);
	trans[10][85]	= settr(1795,0,90,1,0,"break", 0, 2, 0);
	trans[10][91]	= settr(1801,0,90,1,0,".(goto)", 0, 2, 0);
	T = trans[10][90] = settr(1800,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1800,0,86,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1800,0,88,0,0,"DO", 0, 2, 0);
	trans[10][86]	= settr(1796,0,123,125,0,"(!((EP==2)))", 1, 2, 0);
	trans[10][87]	= settr(1797,0,123,1,0,"goto T0_S350", 0, 2, 0);
	trans[10][88]	= settr(1798,0,44,126,0,"(((!((pending_exp>0))&&!((EP==2)))||(!((EP==2))&&(EP>=2))))", 1, 2, 0);
	trans[10][89]	= settr(1799,0,44,1,0,"goto accept_S244", 0, 2, 0);
	trans[10][92]	= settr(1802,0,97,1,0,"break", 0, 2, 0);
	trans[10][98]	= settr(1808,0,97,1,0,".(goto)", 0, 2, 0);
	T = trans[10][97] = settr(1807,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1807,0,93,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1807,0,95,0,0,"DO", 0, 2, 0);
	trans[10][93]	= settr(1803,0,132,127,0,"(!((EP==(2+1))))", 1, 2, 0);
	trans[10][94]	= settr(1804,0,132,1,0,"goto T0_S371", 0, 2, 0);
	trans[10][95]	= settr(1805,0,51,128,0,"(((!((pending_exp>0))&&!((EP==(2+1))))||(!((EP==(2+1)))&&(EP>=2))))", 1, 2, 0);
	trans[10][96]	= settr(1806,0,51,1,0,"goto accept_S267", 0, 2, 0);
	trans[10][99]	= settr(1809,0,114,1,0,"break", 0, 2, 0);
	trans[10][115]	= settr(1825,0,114,1,0,".(goto)", 0, 2, 0);
	T = trans[10][114] = settr(1824,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1824,0,100,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1824,0,102,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1824,0,104,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1824,0,106,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1824,0,108,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1824,0,110,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1824,0,112,0,0,"DO", 0, 2, 0);
	trans[10][100]	= settr(1810,0,123,129,0,"((!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==2))))", 1, 2, 0);
	trans[10][101]	= settr(1811,0,123,1,0,"goto T0_S350", 0, 2, 0);
	trans[10][102]	= settr(1812,0,44,130,0,"(((!((pending_exp>0))&&(!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==2))))||(!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&(!((EP==2))&&(EP>=2)))))", 1, 2, 0);
	trans[10][103]	= settr(1813,0,44,1,0,"goto accept_S244", 0, 2, 0);
	trans[10][104]	= settr(1814,0,132,131,0,"((!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==(2+1)))))", 1, 2, 0);
	trans[10][105]	= settr(1815,0,132,1,0,"goto T0_S371", 0, 2, 0);
	trans[10][106]	= settr(1816,0,51,132,0,"(((!((pending_exp>0))&&(!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==(2+1)))))||(!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&(!((EP==(2+1)))&&(EP>=2)))))", 1, 2, 0);
	trans[10][107]	= settr(1817,0,51,1,0,"goto accept_S267", 0, 2, 0);
	trans[10][108]	= settr(1818,0,19,133,0,"((EP>=2))", 1, 2, 0);
	trans[10][109]	= settr(1819,0,19,1,0,"goto T0_init", 0, 2, 0);
	trans[10][110]	= settr(1820,0,153,1,0,"(1)", 0, 2, 0);
	trans[10][111]	= settr(1821,0,153,1,0,"goto T0_S384", 0, 2, 0);
	trans[10][112]	= settr(1822,0,114,134,0,"(!((pending_exp>0)))", 1, 2, 0);
	trans[10][113]	= settr(1823,0,114,1,0,"goto T0_S317", 0, 2, 0);
	trans[10][116]	= settr(1826,0,123,1,0,"break", 0, 2, 0);
	trans[10][124]	= settr(1834,0,123,1,0,".(goto)", 0, 2, 0);
	T = trans[10][123] = settr(1833,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1833,0,117,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1833,0,119,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1833,0,121,0,0,"DO", 0, 2, 0);
	trans[10][117]	= settr(1827,0,123,135,0,"(!((EP==2)))", 1, 2, 0);
	trans[10][118]	= settr(1828,0,123,1,0,"goto T0_S350", 0, 2, 0);
	trans[10][119]	= settr(1829,0,44,136,0,"((!((EP==2))&&(EP>=2)))", 1, 2, 0);
	trans[10][120]	= settr(1830,0,44,1,0,"goto accept_S244", 0, 2, 0);
	trans[10][121]	= settr(1831,0,58,137,0,"((!((EP==2))&&(EP>=2)))", 1, 2, 0);
	trans[10][122]	= settr(1832,0,58,1,0,"goto accept_S350", 0, 2, 0);
	trans[10][125]	= settr(1835,0,132,1,0,"break", 0, 2, 0);
	trans[10][133]	= settr(1843,0,132,1,0,".(goto)", 0, 2, 0);
	T = trans[10][132] = settr(1842,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1842,0,126,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1842,0,128,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1842,0,130,0,0,"DO", 0, 2, 0);
	trans[10][126]	= settr(1836,0,132,138,0,"(!((EP==(2+1))))", 1, 2, 0);
	trans[10][127]	= settr(1837,0,132,1,0,"goto T0_S371", 0, 2, 0);
	trans[10][128]	= settr(1838,0,51,139,0,"((!((EP==(2+1)))&&(EP>=2)))", 1, 2, 0);
	trans[10][129]	= settr(1839,0,51,1,0,"goto accept_S267", 0, 2, 0);
	trans[10][130]	= settr(1840,0,65,140,0,"((!((EP==(2+1)))&&(EP>=2)))", 1, 2, 0);
	trans[10][131]	= settr(1841,0,65,1,0,"goto accept_S371", 0, 2, 0);
	trans[10][134]	= settr(1844,0,153,1,0,"break", 0, 2, 0);
	trans[10][154]	= settr(1864,0,153,1,0,".(goto)", 0, 2, 0);
	T = trans[10][153] = settr(1863,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1863,0,135,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1863,0,137,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1863,0,139,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1863,0,141,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1863,0,143,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1863,0,145,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1863,0,147,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1863,0,149,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1863,0,151,0,0,"DO", 0, 2, 0);
	trans[10][135]	= settr(1845,0,123,141,0,"((!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==2))))", 1, 2, 0);
	trans[10][136]	= settr(1846,0,123,1,0,"goto T0_S350", 0, 2, 0);
	trans[10][137]	= settr(1847,0,132,142,0,"((!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==(2+1)))))", 1, 2, 0);
	trans[10][138]	= settr(1848,0,132,1,0,"goto T0_S371", 0, 2, 0);
	trans[10][139]	= settr(1849,0,19,143,0,"((EP>=2))", 1, 2, 0);
	trans[10][140]	= settr(1850,0,19,1,0,"goto T0_init", 0, 2, 0);
	trans[10][141]	= settr(1851,0,153,1,0,"(1)", 0, 2, 0);
	trans[10][142]	= settr(1852,0,153,1,0,"goto T0_S384", 0, 2, 0);
	trans[10][143]	= settr(1853,0,44,144,0,"(((!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==2)))&&(EP>=2)))", 1, 2, 0);
	trans[10][144]	= settr(1854,0,44,1,0,"goto accept_S244", 0, 2, 0);
	trans[10][145]	= settr(1855,0,58,145,0,"(((!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==2)))&&(EP>=2)))", 1, 2, 0);
	trans[10][146]	= settr(1856,0,58,1,0,"goto accept_S350", 0, 2, 0);
	trans[10][147]	= settr(1857,0,51,146,0,"(((!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==(2+1))))&&(EP>=2)))", 1, 2, 0);
	trans[10][148]	= settr(1858,0,51,1,0,"goto accept_S267", 0, 2, 0);
	trans[10][149]	= settr(1859,0,65,147,0,"(((!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==(2+1))))&&(EP>=2)))", 1, 2, 0);
	trans[10][150]	= settr(1860,0,65,1,0,"goto accept_S371", 0, 2, 0);
	trans[10][151]	= settr(1861,0,114,148,0,"((!((pending_exp>0))&&(EP>=2)))", 1, 2, 0);
	trans[10][152]	= settr(1862,0,114,1,0,"goto T0_S317", 0, 2, 0);
	trans[10][155]	= settr(1865,0,156,1,0,"break", 0, 2, 0);
	trans[10][156]	= settr(1866,0,0,149,149,"-end-", 0, 3500, 0);

	/* proctype 9: starvation_free_task2 */

	trans[9] = (Trans **) emalloc(76*sizeof(Trans *));

	trans[9][12]	= settr(1647,0,11,1,0,".(goto)", 0, 2, 0);
	T = trans[9][11] = settr(1646,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1646,0,1,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1646,0,3,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1646,0,5,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1646,0,7,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1646,0,9,0,0,"DO", 0, 2, 0);
	trans[9][1]	= settr(1636,0,20,150,0,"(((!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==(2+1))))&&(EP>=2)))", 1, 2, 0);
	trans[9][2]	= settr(1637,0,20,1,0,"goto accept_S8", 0, 2, 0);
	trans[9][3]	= settr(1638,0,59,151,0,"((!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==(2+1)))))", 1, 2, 0);
	trans[9][4]	= settr(1639,0,59,1,0,"goto T0_S134", 0, 2, 0);
	trans[9][5]	= settr(1640,0,27,152,0,"(((!((pending_exp>0))&&!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1)))))&&!((EP==(2+1)))))", 1, 2, 0);
	trans[9][6]	= settr(1641,0,27,1,0,"goto accept_S111", 0, 2, 0);
	trans[9][7]	= settr(1642,0,11,153,0,"((!((pending_exp>0))||(EP>=2)))", 1, 2, 0);
	trans[9][8]	= settr(1643,0,11,1,0,"goto T0_init", 0, 2, 0);
	trans[9][9]	= settr(1644,0,72,1,0,"(1)", 0, 2, 0);
	trans[9][10]	= settr(1645,0,72,1,0,"goto T0_S201", 0, 2, 0);
	trans[9][13]	= settr(1648,0,20,1,0,"break", 0, 2, 0);
	trans[9][21]	= settr(1656,0,20,1,0,".(goto)", 0, 2, 0);
	T = trans[9][20] = settr(1655,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1655,0,14,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1655,0,16,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1655,0,18,0,0,"DO", 0, 2, 0);
	trans[9][14]	= settr(1649,0,43,154,0,"((!((EP==(2+1)))&&(EP>=2)))", 1, 2, 0);
	trans[9][15]	= settr(1650,0,43,1,0,"goto T0_S8", 0, 2, 0);
	trans[9][16]	= settr(1651,0,59,155,0,"(!((EP==(2+1))))", 1, 2, 0);
	trans[9][17]	= settr(1652,0,59,1,0,"goto T0_S134", 0, 2, 0);
	trans[9][18]	= settr(1653,0,50,156,0,"((!((pending_exp>0))&&!((EP==(2+1)))))", 1, 2, 0);
	trans[9][19]	= settr(1654,0,50,1,0,"goto T0_S111", 0, 2, 0);
	trans[9][22]	= settr(1657,0,27,1,0,"break", 0, 2, 0);
	trans[9][28]	= settr(1663,0,27,1,0,".(goto)", 0, 2, 0);
	T = trans[9][27] = settr(1662,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1662,0,23,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1662,0,25,0,0,"DO", 0, 2, 0);
	trans[9][23]	= settr(1658,0,59,157,0,"(!((EP==(2+1))))", 1, 2, 0);
	trans[9][24]	= settr(1659,0,59,1,0,"goto T0_S134", 0, 2, 0);
	trans[9][25]	= settr(1660,0,50,158,0,"(((!((pending_exp>0))&&!((EP==(2+1))))||(!((EP==(2+1)))&&(EP>=2))))", 1, 2, 0);
	trans[9][26]	= settr(1661,0,50,1,0,"goto T0_S111", 0, 2, 0);
	trans[9][29]	= settr(1664,0,34,1,0,"break", 0, 2, 0);
	trans[9][35]	= settr(1670,0,34,1,0,".(goto)", 0, 2, 0);
	T = trans[9][34] = settr(1669,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1669,0,30,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1669,0,32,0,0,"DO", 0, 2, 0);
	trans[9][30]	= settr(1665,0,59,159,0,"(!((EP==(2+1))))", 1, 2, 0);
	trans[9][31]	= settr(1666,0,59,1,0,"goto T0_S134", 0, 2, 0);
	trans[9][32]	= settr(1667,0,50,160,0,"((!((EP==(2+1)))&&(EP>=2)))", 1, 2, 0);
	trans[9][33]	= settr(1668,0,50,1,0,"goto T0_S111", 0, 2, 0);
	trans[9][36]	= settr(1671,0,43,1,0,"break", 0, 2, 0);
	trans[9][44]	= settr(1679,0,43,1,0,".(goto)", 0, 2, 0);
	T = trans[9][43] = settr(1678,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1678,0,37,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1678,0,39,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1678,0,41,0,0,"DO", 0, 2, 0);
	trans[9][37]	= settr(1672,0,20,161,0,"((!((EP==(2+1)))&&(EP>=2)))", 1, 2, 0);
	trans[9][38]	= settr(1673,0,20,1,0,"goto accept_S8", 0, 2, 0);
	trans[9][39]	= settr(1674,0,59,162,0,"(!((EP==(2+1))))", 1, 2, 0);
	trans[9][40]	= settr(1675,0,59,1,0,"goto T0_S134", 0, 2, 0);
	trans[9][41]	= settr(1676,0,27,163,0,"((!((pending_exp>0))&&!((EP==(2+1)))))", 1, 2, 0);
	trans[9][42]	= settr(1677,0,27,1,0,"goto accept_S111", 0, 2, 0);
	trans[9][45]	= settr(1680,0,50,1,0,"break", 0, 2, 0);
	trans[9][51]	= settr(1686,0,50,1,0,".(goto)", 0, 2, 0);
	T = trans[9][50] = settr(1685,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1685,0,46,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1685,0,48,0,0,"DO", 0, 2, 0);
	trans[9][46]	= settr(1681,0,59,164,0,"(!((EP==(2+1))))", 1, 2, 0);
	trans[9][47]	= settr(1682,0,59,1,0,"goto T0_S134", 0, 2, 0);
	trans[9][48]	= settr(1683,0,27,165,0,"(((!((pending_exp>0))&&!((EP==(2+1))))||(!((EP==(2+1)))&&(EP>=2))))", 1, 2, 0);
	trans[9][49]	= settr(1684,0,27,1,0,"goto accept_S111", 0, 2, 0);
	trans[9][52]	= settr(1687,0,59,1,0,"break", 0, 2, 0);
	trans[9][60]	= settr(1695,0,59,1,0,".(goto)", 0, 2, 0);
	T = trans[9][59] = settr(1694,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1694,0,53,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1694,0,55,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1694,0,57,0,0,"DO", 0, 2, 0);
	trans[9][53]	= settr(1688,0,59,166,0,"(!((EP==(2+1))))", 1, 2, 0);
	trans[9][54]	= settr(1689,0,59,1,0,"goto T0_S134", 0, 2, 0);
	trans[9][55]	= settr(1690,0,27,167,0,"((!((EP==(2+1)))&&(EP>=2)))", 1, 2, 0);
	trans[9][56]	= settr(1691,0,27,1,0,"goto accept_S111", 0, 2, 0);
	trans[9][57]	= settr(1692,0,34,168,0,"((!((EP==(2+1)))&&(EP>=2)))", 1, 2, 0);
	trans[9][58]	= settr(1693,0,34,1,0,"goto accept_S134", 0, 2, 0);
	trans[9][61]	= settr(1696,0,72,1,0,"break", 0, 2, 0);
	trans[9][73]	= settr(1708,0,72,1,0,".(goto)", 0, 2, 0);
	T = trans[9][72] = settr(1707,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1707,0,62,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1707,0,64,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1707,0,66,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1707,0,68,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1707,0,70,0,0,"DO", 0, 2, 0);
	trans[9][62]	= settr(1697,0,59,169,0,"((!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==(2+1)))))", 1, 2, 0);
	trans[9][63]	= settr(1698,0,59,1,0,"goto T0_S134", 0, 2, 0);
	trans[9][64]	= settr(1699,0,11,170,0,"((EP>=2))", 1, 2, 0);
	trans[9][65]	= settr(1700,0,11,1,0,"goto T0_init", 0, 2, 0);
	trans[9][66]	= settr(1701,0,72,1,0,"(1)", 0, 2, 0);
	trans[9][67]	= settr(1702,0,72,1,0,"goto T0_S201", 0, 2, 0);
	trans[9][68]	= settr(1703,0,27,171,0,"(((!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==(2+1))))&&(EP>=2)))", 1, 2, 0);
	trans[9][69]	= settr(1704,0,27,1,0,"goto accept_S111", 0, 2, 0);
	trans[9][70]	= settr(1705,0,34,172,0,"(((!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==(2+1))))&&(EP>=2)))", 1, 2, 0);
	trans[9][71]	= settr(1706,0,34,1,0,"goto accept_S134", 0, 2, 0);
	trans[9][74]	= settr(1709,0,75,1,0,"break", 0, 2, 0);
	trans[9][75]	= settr(1710,0,0,173,173,"-end-", 0, 3500, 0);

	/* proctype 8: starvation_free_task1 */

	trans[8] = (Trans **) emalloc(76*sizeof(Trans *));

	trans[8][12]	= settr(1572,0,11,1,0,".(goto)", 0, 2, 0);
	T = trans[8][11] = settr(1571,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1571,0,1,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1571,0,3,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1571,0,5,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1571,0,7,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1571,0,9,0,0,"DO", 0, 2, 0);
	trans[8][1]	= settr(1561,0,20,174,0,"(((!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==2)))&&(EP>=2)))", 1, 2, 0);
	trans[8][2]	= settr(1562,0,20,1,0,"goto accept_S8", 0, 2, 0);
	trans[8][3]	= settr(1563,0,59,175,0,"((!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==2))))", 1, 2, 0);
	trans[8][4]	= settr(1564,0,59,1,0,"goto T0_S134", 0, 2, 0);
	trans[8][5]	= settr(1565,0,27,176,0,"(((!((pending_exp>0))&&!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1)))))&&!((EP==2))))", 1, 2, 0);
	trans[8][6]	= settr(1566,0,27,1,0,"goto accept_S111", 0, 2, 0);
	trans[8][7]	= settr(1567,0,11,177,0,"((!((pending_exp>0))||(EP>=2)))", 1, 2, 0);
	trans[8][8]	= settr(1568,0,11,1,0,"goto T0_init", 0, 2, 0);
	trans[8][9]	= settr(1569,0,72,1,0,"(1)", 0, 2, 0);
	trans[8][10]	= settr(1570,0,72,1,0,"goto T0_S201", 0, 2, 0);
	trans[8][13]	= settr(1573,0,20,1,0,"break", 0, 2, 0);
	trans[8][21]	= settr(1581,0,20,1,0,".(goto)", 0, 2, 0);
	T = trans[8][20] = settr(1580,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1580,0,14,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1580,0,16,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1580,0,18,0,0,"DO", 0, 2, 0);
	trans[8][14]	= settr(1574,0,43,178,0,"((!((EP==2))&&(EP>=2)))", 1, 2, 0);
	trans[8][15]	= settr(1575,0,43,1,0,"goto T0_S8", 0, 2, 0);
	trans[8][16]	= settr(1576,0,59,179,0,"(!((EP==2)))", 1, 2, 0);
	trans[8][17]	= settr(1577,0,59,1,0,"goto T0_S134", 0, 2, 0);
	trans[8][18]	= settr(1578,0,50,180,0,"((!((pending_exp>0))&&!((EP==2))))", 1, 2, 0);
	trans[8][19]	= settr(1579,0,50,1,0,"goto T0_S111", 0, 2, 0);
	trans[8][22]	= settr(1582,0,27,1,0,"break", 0, 2, 0);
	trans[8][28]	= settr(1588,0,27,1,0,".(goto)", 0, 2, 0);
	T = trans[8][27] = settr(1587,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1587,0,23,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1587,0,25,0,0,"DO", 0, 2, 0);
	trans[8][23]	= settr(1583,0,59,181,0,"(!((EP==2)))", 1, 2, 0);
	trans[8][24]	= settr(1584,0,59,1,0,"goto T0_S134", 0, 2, 0);
	trans[8][25]	= settr(1585,0,50,182,0,"(((!((pending_exp>0))&&!((EP==2)))||(!((EP==2))&&(EP>=2))))", 1, 2, 0);
	trans[8][26]	= settr(1586,0,50,1,0,"goto T0_S111", 0, 2, 0);
	trans[8][29]	= settr(1589,0,34,1,0,"break", 0, 2, 0);
	trans[8][35]	= settr(1595,0,34,1,0,".(goto)", 0, 2, 0);
	T = trans[8][34] = settr(1594,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1594,0,30,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1594,0,32,0,0,"DO", 0, 2, 0);
	trans[8][30]	= settr(1590,0,59,183,0,"(!((EP==2)))", 1, 2, 0);
	trans[8][31]	= settr(1591,0,59,1,0,"goto T0_S134", 0, 2, 0);
	trans[8][32]	= settr(1592,0,50,184,0,"((!((EP==2))&&(EP>=2)))", 1, 2, 0);
	trans[8][33]	= settr(1593,0,50,1,0,"goto T0_S111", 0, 2, 0);
	trans[8][36]	= settr(1596,0,43,1,0,"break", 0, 2, 0);
	trans[8][44]	= settr(1604,0,43,1,0,".(goto)", 0, 2, 0);
	T = trans[8][43] = settr(1603,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1603,0,37,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1603,0,39,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1603,0,41,0,0,"DO", 0, 2, 0);
	trans[8][37]	= settr(1597,0,20,185,0,"((!((EP==2))&&(EP>=2)))", 1, 2, 0);
	trans[8][38]	= settr(1598,0,20,1,0,"goto accept_S8", 0, 2, 0);
	trans[8][39]	= settr(1599,0,59,186,0,"(!((EP==2)))", 1, 2, 0);
	trans[8][40]	= settr(1600,0,59,1,0,"goto T0_S134", 0, 2, 0);
	trans[8][41]	= settr(1601,0,27,187,0,"((!((pending_exp>0))&&!((EP==2))))", 1, 2, 0);
	trans[8][42]	= settr(1602,0,27,1,0,"goto accept_S111", 0, 2, 0);
	trans[8][45]	= settr(1605,0,50,1,0,"break", 0, 2, 0);
	trans[8][51]	= settr(1611,0,50,1,0,".(goto)", 0, 2, 0);
	T = trans[8][50] = settr(1610,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1610,0,46,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1610,0,48,0,0,"DO", 0, 2, 0);
	trans[8][46]	= settr(1606,0,59,188,0,"(!((EP==2)))", 1, 2, 0);
	trans[8][47]	= settr(1607,0,59,1,0,"goto T0_S134", 0, 2, 0);
	trans[8][48]	= settr(1608,0,27,189,0,"(((!((pending_exp>0))&&!((EP==2)))||(!((EP==2))&&(EP>=2))))", 1, 2, 0);
	trans[8][49]	= settr(1609,0,27,1,0,"goto accept_S111", 0, 2, 0);
	trans[8][52]	= settr(1612,0,59,1,0,"break", 0, 2, 0);
	trans[8][60]	= settr(1620,0,59,1,0,".(goto)", 0, 2, 0);
	T = trans[8][59] = settr(1619,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1619,0,53,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1619,0,55,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1619,0,57,0,0,"DO", 0, 2, 0);
	trans[8][53]	= settr(1613,0,59,190,0,"(!((EP==2)))", 1, 2, 0);
	trans[8][54]	= settr(1614,0,59,1,0,"goto T0_S134", 0, 2, 0);
	trans[8][55]	= settr(1615,0,27,191,0,"((!((EP==2))&&(EP>=2)))", 1, 2, 0);
	trans[8][56]	= settr(1616,0,27,1,0,"goto accept_S111", 0, 2, 0);
	trans[8][57]	= settr(1617,0,34,192,0,"((!((EP==2))&&(EP>=2)))", 1, 2, 0);
	trans[8][58]	= settr(1618,0,34,1,0,"goto accept_S134", 0, 2, 0);
	trans[8][61]	= settr(1621,0,72,1,0,"break", 0, 2, 0);
	trans[8][73]	= settr(1633,0,72,1,0,".(goto)", 0, 2, 0);
	T = trans[8][72] = settr(1632,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1632,0,62,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1632,0,64,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1632,0,66,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1632,0,68,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1632,0,70,0,0,"DO", 0, 2, 0);
	trans[8][62]	= settr(1622,0,59,193,0,"((!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==2))))", 1, 2, 0);
	trans[8][63]	= settr(1623,0,59,1,0,"goto T0_S134", 0, 2, 0);
	trans[8][64]	= settr(1624,0,11,194,0,"((EP>=2))", 1, 2, 0);
	trans[8][65]	= settr(1625,0,11,1,0,"goto T0_init", 0, 2, 0);
	trans[8][66]	= settr(1626,0,72,1,0,"(1)", 0, 2, 0);
	trans[8][67]	= settr(1627,0,72,1,0,"goto T0_S201", 0, 2, 0);
	trans[8][68]	= settr(1628,0,27,195,0,"(((!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==2)))&&(EP>=2)))", 1, 2, 0);
	trans[8][69]	= settr(1629,0,27,1,0,"goto accept_S111", 0, 2, 0);
	trans[8][70]	= settr(1630,0,34,196,0,"(((!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==2)))&&(EP>=2)))", 1, 2, 0);
	trans[8][71]	= settr(1631,0,34,1,0,"goto accept_S134", 0, 2, 0);
	trans[8][74]	= settr(1634,0,75,1,0,"break", 0, 2, 0);
	trans[8][75]	= settr(1635,0,0,197,197,"-end-", 0, 3500, 0);

	/* proctype 7: exc_leads_to_user */

	trans[7] = (Trans **) emalloc(14*sizeof(Trans *));

	trans[7][6]	= settr(1553,0,5,1,0,".(goto)", 0, 2, 0);
	T = trans[7][5] = settr(1552,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1552,0,1,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1552,0,3,0,0,"DO", 0, 2, 0);
	trans[7][1]	= settr(1548,0,10,198,0,"((!(!((EP<2)))&&!((EP>=2))))", 1, 2, 0);
	trans[7][2]	= settr(1549,0,10,1,0,"goto accept_S4", 0, 2, 0);
	trans[7][3]	= settr(1550,0,5,1,0,"(1)", 0, 2, 0);
	trans[7][4]	= settr(1551,0,5,1,0,"goto T0_init", 0, 2, 0);
	trans[7][7]	= settr(1554,0,10,1,0,"break", 0, 2, 0);
	trans[7][11]	= settr(1558,0,10,1,0,".(goto)", 0, 2, 0);
	T = trans[7][10] = settr(1557,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1557,0,8,0,0,"DO", 0, 2, 0);
	trans[7][8]	= settr(1555,0,10,199,0,"(!((EP>=2)))", 1, 2, 0);
	trans[7][9]	= settr(1556,0,10,1,0,"goto accept_S4", 0, 2, 0);
	trans[7][12]	= settr(1559,0,13,1,0,"break", 0, 2, 0);
	trans[7][13]	= settr(1560,0,0,200,200,"-end-", 0, 3500, 0);

	/* proctype 6: back_to_user */

	trans[6] = (Trans **) emalloc(14*sizeof(Trans *));

	trans[6][6]	= settr(1540,0,5,1,0,".(goto)", 0, 2, 0);
	T = trans[6][5] = settr(1539,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1539,0,1,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1539,0,3,0,0,"DO", 0, 2, 0);
	trans[6][1]	= settr(1535,0,10,201,0,"(!((EP>=2)))", 1, 2, 0);
	trans[6][2]	= settr(1536,0,10,1,0,"goto accept_S4", 0, 2, 0);
	trans[6][3]	= settr(1537,0,5,1,0,"(1)", 0, 2, 0);
	trans[6][4]	= settr(1538,0,5,1,0,"goto T0_init", 0, 2, 0);
	trans[6][7]	= settr(1541,0,10,1,0,"break", 0, 2, 0);
	trans[6][11]	= settr(1545,0,10,1,0,".(goto)", 0, 2, 0);
	T = trans[6][10] = settr(1544,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1544,0,8,0,0,"DO", 0, 2, 0);
	trans[6][8]	= settr(1542,0,10,202,0,"(!((EP>=2)))", 1, 2, 0);
	trans[6][9]	= settr(1543,0,10,1,0,"goto accept_S4", 0, 2, 0);
	trans[6][12]	= settr(1546,0,13,1,0,"break", 0, 2, 0);
	trans[6][13]	= settr(1547,0,0,203,203,"-end-", 0, 3500, 0);

	/* proctype 5: :init: */

	trans[5] = (Trans **) emalloc(86*sizeof(Trans *));

	trans[5][1]	= settr(1450,0,17,204,204,"i = 0", 0, 2, 0);
	trans[5][18]	= settr(1467,0,17,1,0,".(goto)", 0, 2, 0);
	T = trans[5][17] = settr(1466,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1466,0,2,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1466,0,15,0,0,"DO", 0, 2, 0);
	trans[5][2]	= settr(1451,0,13,205,0,"((i<4))", 0, 2, 0);
	T = trans[ 5][13] = settr(1462,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1462,0,3,0,0,"sub-sequence", 0, 2, 0);
	trans[5][3]	= settr(1452,0,9,206,206,"idx = 0", 0, 2, 0);
	trans[5][10]	= settr(1459,0,9,1,0,".(goto)", 0, 2, 0);
	T = trans[5][9] = settr(1458,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1458,0,4,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1458,0,7,0,0,"DO", 0, 2, 0);
	trans[5][4]	= settr(1453,0,5,207,0,"((idx<5))", 0, 2, 0);
	trans[5][5]	= settr(1454,0,6,208,208,"readyQueue[i].tasks[idx] = 255", 1, 2, 0);
	trans[5][6]	= settr(1455,0,9,209,209,"idx = (idx+1)", 0, 2, 0);
	trans[5][7]	= settr(1456,0,12,2,0,"else", 0, 2, 0);
	trans[5][8]	= settr(1457,0,12,1,0,"goto :b45", 0, 2, 0);
	trans[5][11]	= settr(1460,0,12,1,0,"break", 0, 2, 0);
	trans[5][12]	= settr(1461,0,14,210,210,"readyQueue[i].tailIndex = 0", 1, 2, 0);
	trans[5][14]	= settr(1463,0,17,211,211,"i = (i+1)", 0, 2, 0);
	trans[5][15]	= settr(1464,0,20,2,0,"else", 0, 2, 0);
	trans[5][16]	= settr(1465,0,20,1,0,"goto :b44", 0, 2, 0);
	trans[5][19]	= settr(1468,0,20,1,0,"break", 0, 2, 0);
	trans[5][20]	= settr(1469,0,21,212,212,"tcb[2].prio = 2", 1, 2, 0);
	trans[5][21]	= settr(1470,0,22,213,213,"tcb[2].state = 1", 1, 2, 0);
	trans[5][22]	= settr(1471,0,32,214,214,"tcb[2].pendList = 255", 1, 2, 0);
	T = trans[ 5][32] = settr(1481,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1481,0,23,0,0,"sub-sequence", 0, 2, 0);
	trans[5][23]	= settr(1472,0,24,215,215,"temp = 2", 0, 2, 0);
	trans[5][24]	= settr(1473,0,30,216,216,"temp1 = readyQueue[2].tailIndex", 1, 2, 0);
	T = trans[5][30] = settr(1479,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1479,0,25,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1479,0,28,0,0,"IF", 0, 2, 0);
	trans[5][25]	= settr(1474,0,26,217,0,"((readyQueue[2].tailIndex<5))", 1, 2, 0);
	trans[5][26]	= settr(1475,0,27,218,218,"readyQueue[2].tasks[readyQueue[2].tailIndex] = 2", 1, 2, 0);
	trans[5][27]	= settr(1476,0,33,219,219,"readyQueue[2].tailIndex = (readyQueue[2].tailIndex+1)", 1, 2, 0);
	trans[5][31]	= settr(1480,0,33,1,0,".(goto)", 0, 2, 0);
	trans[5][28]	= settr(1477,0,29,2,0,"else", 0, 2, 0);
	trans[5][29]	= settr(1478,0,33,220,0,"assert(0)", 0, 2, 0);
	trans[5][33]	= settr(1482,0,34,221,221,"tcb[(2+1)].prio = 2", 1, 2, 0);
	trans[5][34]	= settr(1483,0,35,222,222,"tcb[(2+1)].state = 1", 1, 2, 0);
	trans[5][35]	= settr(1484,0,45,223,223,"tcb[(2+1)].pendList = 255", 1, 2, 0);
	T = trans[ 5][45] = settr(1494,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1494,0,36,0,0,"sub-sequence", 0, 2, 0);
	trans[5][36]	= settr(1485,0,37,224,224,"temp = 2", 0, 2, 0);
	trans[5][37]	= settr(1486,0,43,225,225,"temp1 = readyQueue[2].tailIndex", 1, 2, 0);
	T = trans[5][43] = settr(1492,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1492,0,38,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1492,0,41,0,0,"IF", 0, 2, 0);
	trans[5][38]	= settr(1487,0,39,226,0,"((readyQueue[2].tailIndex<5))", 1, 2, 0);
	trans[5][39]	= settr(1488,0,40,227,227,"readyQueue[2].tasks[readyQueue[2].tailIndex] = (2+1)", 1, 2, 0);
	trans[5][40]	= settr(1489,0,46,228,228,"readyQueue[2].tailIndex = (readyQueue[2].tailIndex+1)", 1, 2, 0);
	trans[5][44]	= settr(1493,0,46,1,0,".(goto)", 0, 2, 0);
	trans[5][41]	= settr(1490,0,42,2,0,"else", 0, 2, 0);
	trans[5][42]	= settr(1491,0,46,229,0,"assert(0)", 0, 2, 0);
	trans[5][46]	= settr(1495,0,47,230,230,"tcb[(2+2)].prio = (4-1)", 1, 2, 0);
	trans[5][47]	= settr(1496,0,48,231,231,"tcb[(2+2)].state = 1", 1, 2, 0);
	trans[5][48]	= settr(1497,0,58,232,232,"tcb[(2+2)].pendList = 255", 1, 2, 0);
	T = trans[ 5][58] = settr(1507,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1507,0,49,0,0,"sub-sequence", 0, 2, 0);
	trans[5][49]	= settr(1498,0,50,233,233,"temp = (4-1)", 0, 2, 0);
	trans[5][50]	= settr(1499,0,56,234,234,"temp1 = readyQueue[(4-1)].tailIndex", 1, 2, 0);
	T = trans[5][56] = settr(1505,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1505,0,51,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1505,0,54,0,0,"IF", 0, 2, 0);
	trans[5][51]	= settr(1500,0,52,235,0,"((readyQueue[(4-1)].tailIndex<5))", 1, 2, 0);
	trans[5][52]	= settr(1501,0,53,236,236,"readyQueue[(4-1)].tasks[readyQueue[(4-1)].tailIndex] = (2+2)", 1, 2, 0);
	trans[5][53]	= settr(1502,0,59,237,237,"readyQueue[(4-1)].tailIndex = (readyQueue[(4-1)].tailIndex+1)", 1, 2, 0);
	trans[5][57]	= settr(1506,0,59,1,0,".(goto)", 0, 2, 0);
	trans[5][54]	= settr(1503,0,55,2,0,"else", 0, 2, 0);
	trans[5][55]	= settr(1504,0,59,238,0,"assert(0)", 0, 2, 0);
	trans[5][59]	= settr(1508,0,60,239,239,"EP = 2", 1, 2, 0);
	trans[5][60]	= settr(1509,0,77,240,240,"topPrio = 2", 1, 2, 0);
	T = trans[ 5][77] = settr(1526,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1526,0,61,0,0,"sub-sequence", 0, 2, 0);
	trans[5][61]	= settr(1510,0,67,241,241,"idx = 0", 0, 2, 0);
	trans[5][68]	= settr(1517,0,67,1,0,".(goto)", 0, 2, 0);
	T = trans[5][67] = settr(1516,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1516,0,62,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1516,0,65,0,0,"DO", 0, 2, 0);
	trans[5][62]	= settr(1511,0,63,242,0,"((idx<(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0);
	trans[5][63]	= settr(1512,0,64,243,243,"readyQueue[topPrio].tasks[idx] = readyQueue[topPrio].tasks[(idx+1)]", 1, 2, 0);
	trans[5][64]	= settr(1513,0,67,244,244,"idx = (idx+1)", 0, 2, 0);
	trans[5][65]	= settr(1514,0,75,2,0,"else", 0, 2, 0);
	trans[5][66]	= settr(1515,0,75,1,0,"goto :b46", 0, 2, 0);
	trans[5][69]	= settr(1518,0,75,1,0,"break", 0, 2, 0);
	T = trans[5][75] = settr(1524,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1524,0,70,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1524,0,73,0,0,"IF", 0, 2, 0);
	trans[5][70]	= settr(1519,0,71,245,0,"((readyQueue[topPrio].tailIndex>0))", 1, 2, 0);
	trans[5][71]	= settr(1520,0,72,246,246,"readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)] = 255", 1, 2, 0);
	trans[5][72]	= settr(1521,0,78,247,247,"readyQueue[topPrio].tailIndex = (readyQueue[topPrio].tailIndex-1)", 1, 2, 0);
	trans[5][76]	= settr(1525,0,78,1,0,".(goto)", 0, 2, 0);
	trans[5][73]	= settr(1522,0,74,2,0,"else", 0, 2, 0);
	trans[5][74]	= settr(1523,0,78,1,0,"(1)", 0, 2, 0);
	trans[5][78]	= settr(1527,0,81,248,248,"tcb[EP].state = 4", 1, 2, 0);
	T = trans[ 5][81] = settr(1530,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(1530,2,79,0,0,"ATOMIC", 1, 2, 0);
	trans[5][79]	= settr(1528,2,80,249,249,"(run PendSV_Handler())", 1, 2, 0);
	trans[5][80]	= settr(1529,0,82,250,250,"(run SysTick_Handler())", 1, 2, 0);
	trans[5][82]	= settr(1531,0,83,251,251,"(run Process2())", 0, 2, 0);
	trans[5][83]	= settr(1532,0,84,252,252,"(run Process1())", 0, 2, 0);
	trans[5][84]	= settr(1533,0,85,253,253,"(run IdleTask())", 0, 2, 0);
	trans[5][85]	= settr(1534,0,0,254,254,"-end-", 0, 3500, 0);

	/* proctype 4: IdleTask */

	trans[4] = (Trans **) emalloc(205*sizeof(Trans *));

	trans[4][202]	= settr(1447,0,201,1,0,".(goto)", 0, 2, 0);
	T = trans[4][201] = settr(1446,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1446,0,200,0,0,"DO", 0, 2, 0);
	T = trans[ 4][200] = settr(1445,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(1445,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[4][1]	= settr(1246,2,2,255,0,"(((2+2)==EP))", 1, 2, 0);
	trans[4][2]	= settr(1247,2,177,1,0,"(1)", 1, 2, 0);
	T = trans[ 4][177] = settr(1422,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1422,0,3,0,0,"sub-sequence", 1, 2, 0);
	trans[4][3]	= settr(1248,2,8,256,256,"intSave = 0", 1, 2, 0); /* m: 4 -> 0,8 */
	reached4[4] = 1;
	trans[4][4]	= settr(0,0,0,0,0,"needSched = 0",0,0,0);
	trans[4][5]	= settr(0,0,0,0,0,"currentTask = EP",0,0,0);
	trans[4][6]	= settr(0,0,0,0,0,"assert(g_taskScheduled)",0,0,0);
	T = trans[ 4][8] = settr(1253,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1253,0,7,0,0,"sub-sequence", 1, 2, 0);
	trans[4][7]	= settr(1252,2,175,257,257,"intSave = 0", 1, 2, 0);
	T = trans[4][175] = settr(1420,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1420,2,9,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1420,2,15,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1420,2,173,0,0,"IF", 1, 2, 0);
	trans[4][9]	= settr(1254,2,14,258,0,"((1==0))", 1, 2, 0);
	T = trans[ 4][14] = settr(1259,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1259,0,13,0,0,"sub-sequence", 1, 2, 0);
	T = trans[ 4][13] = settr(1258,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1258,0,12,0,0,"sub-sequence", 1, 2, 0);
	T = trans[ 4][12] = settr(1257,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1257,0,10,0,0,"sub-sequence", 1, 2, 0);
	trans[4][10]	= settr(1255,2,183,259,259,"assert(((0<2)&&(0<8)))", 1, 2, 0); /* m: 11 -> 0,183 */
	reached4[11] = 1;
	trans[4][11]	= settr(0,0,0,0,0,"pending_exp = (pending_exp|(1<<0))",0,0,0);
	trans[4][176]	= settr(1421,2,183,1,0,".(goto)", 1, 2, 0);
	trans[4][15]	= settr(1260,2,166,260,0,"((1>0))", 1, 2, 0);
	T = trans[ 4][166] = settr(1411,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1411,0,16,0,0,"sub-sequence", 1, 2, 0);
	trans[4][16]	= settr(1261,2,53,261,261,"assert(((tcb[currentTask].state==1)||(tcb[currentTask].state==4)))", 1, 2, 0); /* m: 17 -> 0,53 */
	reached4[17] = 1;
	trans[4][17]	= settr(0,0,0,0,0,"needSched = 1",0,0,0);
	T = trans[4][53] = settr(1298,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1298,2,18,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1298,2,51,0,0,"IF", 1, 2, 0);
	trans[4][18]	= settr(1263,2,50,262,0,"((tcb[currentTask].state==1))", 1, 2, 0);
	T = trans[ 4][50] = settr(1295,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1295,0,19,0,0,"sub-sequence", 1, 2, 0);
	trans[4][19]	= settr(1264,2,31,263,263,"idx = 0", 1, 2, 0); /* m: 20 -> 0,31 */
	reached4[20] = 1;
	trans[4][20]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[4][21]	= settr(0,0,0,0,0,"prioLevel = tcb[currentTask].prio",0,0,0);
	trans[4][32]	= settr(1277,2,31,1,0,".(goto)", 1, 2, 0);
	T = trans[4][31] = settr(1276,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(1276,2,22,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(1276,2,29,0,0,"DO", 1, 2, 0);
	trans[4][22]	= settr(1267,2,27,264,0,"(((idx<readyQueue[prioLevel].tailIndex)&&!(found)))", 1, 2, 0);
	T = trans[4][27] = settr(1272,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1272,2,23,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1272,2,25,0,0,"IF", 1, 2, 0);
	trans[4][23]	= settr(1268,2,31,265,265,"((readyQueue[prioLevel].tasks[idx]==currentTask))", 1, 2, 0); /* m: 24 -> 31,0 */
	reached4[24] = 1;
	trans[4][24]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[4][28]	= settr(1273,2,31,1,0,".(goto)", 1, 2, 0);
	trans[4][25]	= settr(1270,2,26,2,0,"else", 1, 2, 0);
	trans[4][26]	= settr(1271,2,31,266,266,"idx = (idx+1)", 1, 2, 0);
	trans[4][29]	= settr(1274,2,34,2,0,"else", 1, 2, 0);
	trans[4][30]	= settr(1275,2,34,1,0,"goto :b37", 1, 2, 0); /* m: 34 -> 0,40 */
	reached4[34] = 1;
	trans[4][33]	= settr(1278,2,34,1,0,"break", 1, 2, 0);
	trans[4][34]	= settr(1279,2,40,267,267,"assert((found==1))", 1, 2, 0);
	trans[4][41]	= settr(1286,2,40,1,0,".(goto)", 1, 2, 0);
	T = trans[4][40] = settr(1285,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(1285,2,35,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(1285,2,38,0,0,"DO", 1, 2, 0);
	trans[4][35]	= settr(1280,2,40,268,268,"((idx<(readyQueue[prioLevel].tailIndex-1)))", 1, 2, 0); /* m: 36 -> 40,0 */
	reached4[36] = 1;
	trans[4][36]	= settr(0,0,0,0,0,"readyQueue[prioLevel].tasks[idx] = readyQueue[prioLevel].tasks[(idx+1)]",0,0,0);
	trans[4][37]	= settr(0,0,0,0,0,"idx = (idx+1)",0,0,0);
	trans[4][38]	= settr(1283,2,48,2,0,"else", 1, 2, 0);
	trans[4][39]	= settr(1284,2,48,1,0,"goto :b38", 1, 2, 0);
	trans[4][42]	= settr(1287,2,48,1,0,"break", 1, 2, 0);
	T = trans[4][48] = settr(1293,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1293,2,43,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1293,2,46,0,0,"IF", 1, 2, 0);
	trans[4][43]	= settr(1288,2,165,269,269,"((readyQueue[prioLevel].tailIndex>0))", 1, 2, 0); /* m: 44 -> 165,0 */
	reached4[44] = 1;
	trans[4][44]	= settr(0,0,0,0,0,"readyQueue[prioLevel].tasks[(readyQueue[prioLevel].tailIndex-1)] = 255",0,0,0);
	trans[4][45]	= settr(0,0,0,0,0,"readyQueue[prioLevel].tailIndex = (readyQueue[prioLevel].tailIndex-1)",0,0,0);
	trans[4][49]	= settr(1294,2,55,1,0,".(goto)", 1, 2, 0); /* m: 55 -> 0,165 */
	reached4[55] = 1;
	trans[4][46]	= settr(1291,2,47,2,0,"else", 1, 2, 0);
	trans[4][47]	= settr(1292,2,165,270,270,"(1)", 1, 2, 0); /* m: 55 -> 165,0 */
	reached4[55] = 1;
	trans[4][54]	= settr(1299,2,55,1,0,".(goto)", 1, 2, 0); /* m: 55 -> 0,165 */
	reached4[55] = 1;
	trans[4][51]	= settr(1296,2,52,2,0,"else", 1, 2, 0);
	trans[4][52]	= settr(1297,2,165,271,271,"(1)", 1, 2, 0); /* m: 55 -> 165,0 */
	reached4[55] = 1;
	trans[4][55]	= settr(1300,2,165,272,272,"tcb[currentTask].state = 2", 1, 2, 0);
	T = trans[ 4][165] = settr(1410,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1410,0,56,0,0,"sub-sequence", 1, 2, 0);
	trans[4][56]	= settr(1301,2,163,273,273,"insertPos = 0", 1, 2, 0); /* m: 57 -> 0,163 */
	reached4[57] = 1;
	trans[4][57]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[4][58]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[4][59]	= settr(0,0,0,0,0,"tmpId = 0",0,0,0);
	trans[4][60]	= settr(0,0,0,0,0,"tmpTime = 0",0,0,0);
	trans[4][61]	= settr(0,0,0,0,0,"willOverflow = 0",0,0,0);
	trans[4][62]	= settr(0,0,0,0,0,"assert((tcb[currentTask].pendList==255))",0,0,0);
	trans[4][63]	= settr(0,0,0,0,0,"willOverflow = ((g_tickCount+1)<g_tickCount)",0,0,0);
	T = trans[4][163] = settr(1408,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1408,2,64,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1408,2,108,0,0,"IF", 1, 2, 0);
	trans[4][64]	= settr(1309,2,77,274,274,"(willOverflow)", 1, 2, 0); /* m: 65 -> 77,0 */
	reached4[65] = 1;
	trans[4][65]	= settr(0,0,0,0,0,"assert((overflowedSortLinkTail<(2+1)))",0,0,0);
	trans[4][66]	= settr(0,0,0,0,0,"insertPos = 0",0,0,0);
	trans[4][67]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[4][78]	= settr(1323,2,77,1,0,".(goto)", 1, 2, 0);
	T = trans[4][77] = settr(1322,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(1322,2,68,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(1322,2,75,0,0,"DO", 1, 2, 0);
	trans[4][68]	= settr(1313,2,73,275,0,"(((insertPos<overflowedSortLinkTail)&&(found==0)))", 1, 2, 0);
	T = trans[4][73] = settr(1318,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1318,2,69,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1318,2,71,0,0,"IF", 1, 2, 0);
	trans[4][69]	= settr(1314,2,77,276,276,"(((g_tickCount+1)<overflowedSortLink[insertPos].responseTime))", 1, 2, 0); /* m: 70 -> 77,0 */
	reached4[70] = 1;
	trans[4][70]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[4][74]	= settr(1319,2,77,1,0,".(goto)", 1, 2, 0);
	trans[4][71]	= settr(1316,2,72,2,0,"else", 1, 2, 0);
	trans[4][72]	= settr(1317,2,77,277,277,"insertPos = (insertPos+1)", 1, 2, 0);
	trans[4][75]	= settr(1320,2,80,2,0,"else", 1, 2, 0);
	trans[4][76]	= settr(1321,2,80,1,0,"goto :b39", 1, 2, 0); /* m: 80 -> 0,95 */
	reached4[80] = 1;
	trans[4][79]	= settr(1324,2,80,1,0,"break", 1, 2, 0);
	trans[4][80]	= settr(1325,2,95,278,278,"idx = overflowedSortLinkTail", 1, 2, 0);
	trans[4][96]	= settr(1341,2,95,1,0,".(goto)", 1, 2, 0);
	T = trans[4][95] = settr(1340,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(1340,2,81,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(1340,2,93,0,0,"DO", 1, 2, 0);
	trans[4][81]	= settr(1326,2,90,279,279,"((idx>insertPos))", 1, 2, 0); /* m: 82 -> 90,0 */
	reached4[82] = 1;
	trans[4][82]	= settr(0,0,0,0,0,"tmpId = overflowedSortLink[(idx-1)].taskId",0,0,0);
	trans[4][83]	= settr(0,0,0,0,0,"tmpTime = overflowedSortLink[(idx-1)].responseTime",0,0,0);
	trans[4][84]	= settr(0,0,0,0,0,"overflowedSortLink[idx].taskId = tmpId",0,0,0);
	trans[4][85]	= settr(0,0,0,0,0,"overflowedSortLink[idx].responseTime = tmpTime",0,0,0);
	T = trans[4][90] = settr(1335,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1335,2,86,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1335,2,88,0,0,"IF", 1, 2, 0);
	trans[4][86]	= settr(1331,2,95,280,280,"((tmpId!=255))", 1, 2, 0); /* m: 87 -> 95,0 */
	reached4[87] = 1;
	trans[4][87]	= settr(0,0,0,0,0,"tcb[tmpId].pendList = (128+idx)",0,0,0);
	trans[4][91]	= settr(1336,2,92,1,0,".(goto)", 1, 2, 0); /* m: 92 -> 0,95 */
	reached4[92] = 1;
	trans[4][88]	= settr(1333,2,89,2,0,"else", 1, 2, 0);
	trans[4][89]	= settr(1334,2,95,281,281,"(1)", 1, 2, 0); /* m: 92 -> 95,0 */
	reached4[92] = 1;
	trans[4][92]	= settr(1337,2,95,282,282,"idx = (idx-1)", 1, 2, 0);
	trans[4][93]	= settr(1338,2,98,2,0,"else", 1, 2, 0);
	trans[4][94]	= settr(1339,2,98,1,0,"goto :b40", 1, 2, 0); /* m: 98 -> 0,106 */
	reached4[98] = 1;
	trans[4][97]	= settr(1342,2,98,1,0,"break", 1, 2, 0);
	trans[4][98]	= settr(1343,2,106,283,283,"overflowedSortLink[insertPos].taskId = currentTask", 1, 2, 0); /* m: 99 -> 0,106 */
	reached4[99] = 1;
	trans[4][99]	= settr(0,0,0,0,0,"overflowedSortLink[insertPos].responseTime = (g_tickCount+1)",0,0,0);
	trans[4][100]	= settr(0,0,0,0,0,"tcb[currentTask].pendList = (128+insertPos)",0,0,0);
	trans[4][101]	= settr(0,0,0,0,0,"overflowedSortLinkTail = (overflowedSortLinkTail+1)",0,0,0);
	T = trans[4][106] = settr(1351,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1351,2,102,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1351,2,104,0,0,"IF", 1, 2, 0);
	trans[4][102]	= settr(1347,2,168,284,284,"(((insertPos==0)&&((g_tickCount+1)<255)))", 1, 2, 0); /* m: 103 -> 168,0 */
	reached4[103] = 1;
	trans[4][103]	= settr(0,0,0,0,0,"g_overflowedResponseTime = (g_tickCount+1)",0,0,0);
	trans[4][107]	= settr(1352,2,168,1,0,".(goto)", 1, 2, 0);
	trans[4][104]	= settr(1349,2,105,2,0,"else", 1, 2, 0);
	trans[4][105]	= settr(1350,2,168,1,0,"(1)", 1, 2, 0);
	trans[4][164]	= settr(1409,2,168,1,0,".(goto)", 1, 2, 0);
	trans[4][108]	= settr(1353,2,109,2,0,"else", 1, 2, 0);
	trans[4][109]	= settr(1354,2,121,285,285,"assert((g_taskSortLinkTail<(2+1)))", 1, 2, 0); /* m: 110 -> 0,121 */
	reached4[110] = 1;
	trans[4][110]	= settr(0,0,0,0,0,"insertPos = 0",0,0,0);
	trans[4][111]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[4][122]	= settr(1367,2,121,1,0,".(goto)", 1, 2, 0);
	T = trans[4][121] = settr(1366,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(1366,2,112,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(1366,2,119,0,0,"DO", 1, 2, 0);
	trans[4][112]	= settr(1357,2,117,286,0,"(((insertPos<g_taskSortLinkTail)&&(found==0)))", 1, 2, 0);
	T = trans[4][117] = settr(1362,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1362,2,113,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1362,2,115,0,0,"IF", 1, 2, 0);
	trans[4][113]	= settr(1358,2,121,287,287,"(((g_tickCount+1)<g_taskSortLink[insertPos].responseTime))", 1, 2, 0); /* m: 114 -> 121,0 */
	reached4[114] = 1;
	trans[4][114]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[4][118]	= settr(1363,2,121,1,0,".(goto)", 1, 2, 0);
	trans[4][115]	= settr(1360,2,116,2,0,"else", 1, 2, 0);
	trans[4][116]	= settr(1361,2,121,288,288,"insertPos = (insertPos+1)", 1, 2, 0);
	trans[4][119]	= settr(1364,2,124,2,0,"else", 1, 2, 0);
	trans[4][120]	= settr(1365,2,124,1,0,"goto :b41", 1, 2, 0); /* m: 124 -> 0,139 */
	reached4[124] = 1;
	trans[4][123]	= settr(1368,2,124,1,0,"break", 1, 2, 0);
	trans[4][124]	= settr(1369,2,139,289,289,"idx = g_taskSortLinkTail", 1, 2, 0);
	trans[4][140]	= settr(1385,2,139,1,0,".(goto)", 1, 2, 0);
	T = trans[4][139] = settr(1384,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(1384,2,125,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(1384,2,137,0,0,"DO", 1, 2, 0);
	trans[4][125]	= settr(1370,2,134,290,290,"((idx>insertPos))", 1, 2, 0); /* m: 126 -> 134,0 */
	reached4[126] = 1;
	trans[4][126]	= settr(0,0,0,0,0,"tmpId = g_taskSortLink[(idx-1)].taskId",0,0,0);
	trans[4][127]	= settr(0,0,0,0,0,"tmpTime = g_taskSortLink[(idx-1)].responseTime",0,0,0);
	trans[4][128]	= settr(0,0,0,0,0,"g_taskSortLink[idx].taskId = tmpId",0,0,0);
	trans[4][129]	= settr(0,0,0,0,0,"g_taskSortLink[idx].responseTime = tmpTime",0,0,0);
	T = trans[4][134] = settr(1379,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1379,2,130,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1379,2,132,0,0,"IF", 1, 2, 0);
	trans[4][130]	= settr(1375,2,139,291,291,"((tmpId!=255))", 1, 2, 0); /* m: 131 -> 139,0 */
	reached4[131] = 1;
	trans[4][131]	= settr(0,0,0,0,0,"tcb[tmpId].pendList = idx",0,0,0);
	trans[4][135]	= settr(1380,2,136,1,0,".(goto)", 1, 2, 0); /* m: 136 -> 0,139 */
	reached4[136] = 1;
	trans[4][132]	= settr(1377,2,133,2,0,"else", 1, 2, 0);
	trans[4][133]	= settr(1378,2,139,292,292,"(1)", 1, 2, 0); /* m: 136 -> 139,0 */
	reached4[136] = 1;
	trans[4][136]	= settr(1381,2,139,293,293,"idx = (idx-1)", 1, 2, 0);
	trans[4][137]	= settr(1382,2,142,2,0,"else", 1, 2, 0);
	trans[4][138]	= settr(1383,2,142,1,0,"goto :b42", 1, 2, 0); /* m: 142 -> 0,150 */
	reached4[142] = 1;
	trans[4][141]	= settr(1386,2,142,1,0,"break", 1, 2, 0);
	trans[4][142]	= settr(1387,2,150,294,294,"g_taskSortLink[insertPos].taskId = currentTask", 1, 2, 0); /* m: 143 -> 0,150 */
	reached4[143] = 1;
	trans[4][143]	= settr(0,0,0,0,0,"g_taskSortLink[insertPos].responseTime = (g_tickCount+1)",0,0,0);
	trans[4][144]	= settr(0,0,0,0,0,"tcb[currentTask].pendList = insertPos",0,0,0);
	trans[4][145]	= settr(0,0,0,0,0,"g_taskSortLinkTail = (g_taskSortLinkTail+1)",0,0,0);
	T = trans[4][150] = settr(1395,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1395,2,146,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1395,2,148,0,0,"IF", 1, 2, 0);
	trans[4][146]	= settr(1391,2,162,295,295,"(((insertPos==0)&&((g_tickCount+1)<255)))", 1, 2, 0); /* m: 147 -> 162,0 */
	reached4[147] = 1;
	trans[4][147]	= settr(0,0,0,0,0,"g_schedResponseTime = (g_tickCount+1)",0,0,0);
	trans[4][151]	= settr(1396,2,162,1,0,".(goto)", 1, 2, 0);
	trans[4][148]	= settr(1393,2,149,2,0,"else", 1, 2, 0);
	trans[4][149]	= settr(1394,2,162,1,0,"(1)", 1, 2, 0);
	T = trans[ 4][162] = settr(1407,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1407,0,152,0,0,"sub-sequence", 1, 2, 0);
	trans[4][152]	= settr(1397,2,159,296,296,"checkIdx = 0", 1, 2, 0); /* m: 153 -> 0,159 */
	reached4[153] = 1;
	trans[4][153]	= settr(0,0,0,0,0,"isValid = 1",0,0,0);
	trans[4][160]	= settr(1405,2,159,1,0,".(goto)", 1, 2, 0);
	T = trans[4][159] = settr(1404,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(1404,2,154,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(1404,2,157,0,0,"DO", 1, 2, 0);
	trans[4][154]	= settr(1399,2,159,297,297,"((checkIdx<(g_taskSortLinkTail-1)))", 1, 2, 0); /* m: 155 -> 159,0 */
	reached4[155] = 1;
	trans[4][155]	= settr(0,0,0,0,0,"assert((g_taskSortLink[checkIdx].responseTime<=g_taskSortLink[(checkIdx+1)].responseTime))",0,0,0);
	trans[4][156]	= settr(0,0,0,0,0,"checkIdx = (checkIdx+1)",0,0,0);
	trans[4][157]	= settr(1402,2,168,2,0,"else", 1, 2, 0);
	trans[4][158]	= settr(1403,2,168,1,0,"goto :b43", 1, 2, 0);
	trans[4][161]	= settr(1406,2,168,1,0,"break", 1, 2, 0);
	T = trans[ 4][168] = settr(1413,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1413,0,167,0,0,"sub-sequence", 1, 2, 0);
	trans[4][167]	= settr(1412,2,172,298,298,"intSave = 0", 1, 2, 0);
	T = trans[ 4][172] = settr(1417,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1417,0,171,0,0,"sub-sequence", 1, 2, 0);
	T = trans[ 4][171] = settr(1416,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1416,0,169,0,0,"sub-sequence", 1, 2, 0);
	trans[4][169]	= settr(1414,2,183,299,299,"assert(((0<2)&&(0<8)))", 1, 2, 0); /* m: 170 -> 0,183 */
	reached4[170] = 1;
	trans[4][170]	= settr(0,0,0,0,0,"pending_exp = (pending_exp|(1<<0))",0,0,0);
	trans[4][173]	= settr(1418,2,174,2,0,"else", 1, 2, 0);
	trans[4][174]	= settr(1419,2,183,1,0,"(1)", 1, 2, 0);
	T = trans[4][183] = settr(1428,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1428,2,178,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1428,2,182,0,0,"IF", 1, 2, 0);
	trans[4][178]	= settr(1423,2,181,1,0,"(1)", 1, 2, 0);
	T = trans[ 4][181] = settr(1426,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1426,0,179,0,0,"sub-sequence", 1, 2, 0);
	trans[4][179]	= settr(1424,2,198,300,300,"assert(((1<2)&&(1<8)))", 1, 2, 0); /* m: 180 -> 0,198 */
	reached4[180] = 1;
	trans[4][180]	= settr(0,0,0,0,0,"pending_exp = (pending_exp|(1<<1))",0,0,0);
	trans[4][184]	= settr(1429,2,198,1,0,".(goto)", 1, 2, 0);
	trans[4][182]	= settr(1427,2,198,1,0,"(1)", 1, 2, 0);
	T = trans[4][198] = settr(1443,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1443,2,185,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1443,2,196,0,0,"IF", 1, 2, 0);
	trans[4][185]	= settr(1430,2,190,301,0,"((((((pending_exp>>0)&1)&&((BASEPRI==0)||(15<BASEPRI)))||(((pending_exp>>1)&1)&&((BASEPRI==0)||(15<BASEPRI))))&&(EP>=2)))", 1, 2, 0);
	T = trans[4][190] = settr(1435,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1435,2,186,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1435,2,188,0,0,"IF", 1, 2, 0);
	trans[4][186]	= settr(1431,2,194,302,302,"((EP>=2))", 1, 2, 0); /* m: 187 -> 194,0 */
	reached4[187] = 1;
	trans[4][187]	= settr(0,0,0,0,0,"chain_tick_used = 0",0,0,0);
	trans[4][191]	= settr(1436,2,194,1,0,".(goto)", 1, 2, 0);
	trans[4][188]	= settr(1433,2,189,2,0,"else", 1, 2, 0);
	trans[4][189]	= settr(1434,2,194,1,0,"(1)", 1, 2, 0);
	T = trans[ 4][194] = settr(1439,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1439,0,192,0,0,"sub-sequence", 1, 2, 0);
	trans[4][192]	= settr(1437,0,201,303,303,"assert((EP_Stack==255))", 1, 2, 0); /* m: 193 -> 0,201 */
	reached4[193] = 1;
	trans[4][193]	= settr(0,0,0,0,0,"EP_Stack = EP",0,0,0);
	trans[4][195]	= settr(0,0,0,0,0,"EP = ( (((pending_exp>>0)&1)) -> (0) : (1) )",0,0,0);
	trans[4][199]	= settr(1444,0,201,304,304,".(goto)", 1, 2, 0);
	trans[4][196]	= settr(1441,2,197,2,0,"else", 1, 2, 0);
	trans[4][197]	= settr(1442,0,201,305,305,"(1)", 1, 2, 0); /* m: 199 -> 201,0 */
	reached4[199] = 1;
	trans[4][203]	= settr(1448,0,204,1,0,"break", 0, 2, 0);
	trans[4][204]	= settr(1449,0,0,306,306,"-end-", 0, 3500, 0);

	/* proctype 3: Process2 */

	trans[3] = (Trans **) emalloc(596*sizeof(Trans *));

	trans[3][593]	= settr(1243,0,592,1,0,".(goto)", 0, 2, 0);
	T = trans[3][592] = settr(1242,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1242,0,25,0,0,"DO", 0, 2, 0);
	T = trans[ 3][25] = settr(675,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(675,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[3][1]	= settr(651,2,8,307,307,"(((2+1)==EP))", 1, 2, 0); /* m: 2 -> 8,0 */
	reached3[2] = 1;
	trans[3][2]	= settr(0,0,0,0,0,"printf('P2 running\\n')",0,0,0);
	T = trans[3][8] = settr(658,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(658,2,3,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(658,2,7,0,0,"IF", 1, 2, 0);
	trans[3][3]	= settr(653,2,6,1,0,"(1)", 1, 2, 0);
	T = trans[ 3][6] = settr(656,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(656,0,4,0,0,"sub-sequence", 1, 2, 0);
	trans[3][4]	= settr(654,2,23,308,308,"assert(((1<2)&&(1<8)))", 1, 2, 0); /* m: 5 -> 0,23 */
	reached3[5] = 1;
	trans[3][5]	= settr(0,0,0,0,0,"pending_exp = (pending_exp|(1<<1))",0,0,0);
	trans[3][9]	= settr(659,2,23,1,0,".(goto)", 1, 2, 0);
	trans[3][7]	= settr(657,2,23,1,0,"(1)", 1, 2, 0);
	T = trans[3][23] = settr(673,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(673,2,10,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(673,2,21,0,0,"IF", 1, 2, 0);
	trans[3][10]	= settr(660,2,15,309,0,"((((((pending_exp>>0)&1)&&((BASEPRI==0)||(15<BASEPRI)))||(((pending_exp>>1)&1)&&((BASEPRI==0)||(15<BASEPRI))))&&(EP>=2)))", 1, 2, 0);
	T = trans[3][15] = settr(665,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(665,2,11,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(665,2,13,0,0,"IF", 1, 2, 0);
	trans[3][11]	= settr(661,2,19,310,310,"((EP>=2))", 1, 2, 0); /* m: 12 -> 19,0 */
	reached3[12] = 1;
	trans[3][12]	= settr(0,0,0,0,0,"chain_tick_used = 0",0,0,0);
	trans[3][16]	= settr(666,2,19,1,0,".(goto)", 1, 2, 0);
	trans[3][13]	= settr(663,2,14,2,0,"else", 1, 2, 0);
	trans[3][14]	= settr(664,2,19,1,0,"(1)", 1, 2, 0);
	T = trans[ 3][19] = settr(669,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(669,0,17,0,0,"sub-sequence", 1, 2, 0);
	trans[3][17]	= settr(667,4,219,311,311,"assert((EP_Stack==255))", 1, 2, 0); /* m: 18 -> 0,219 */
	reached3[18] = 1;
	trans[3][18]	= settr(0,0,0,0,0,"EP_Stack = EP",0,0,0);
	trans[3][20]	= settr(0,0,0,0,0,"EP = ( (((pending_exp>>0)&1)) -> (0) : (1) )",0,0,0);
	trans[3][24]	= settr(674,0,219,312,312,".(goto)", 1, 2, 0);
	trans[3][21]	= settr(671,2,22,2,0,"else", 1, 2, 0);
	trans[3][22]	= settr(672,4,219,313,313,"(1)", 1, 2, 0); /* m: 24 -> 219,0 */
	reached3[24] = 1;
	T = trans[ 3][219] = settr(869,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(869,2,26,0,0,"ATOMIC", 1, 2, 0);
	trans[3][26]	= settr(676,2,196,314,0,"(((2+1)==EP))", 1, 2, 0);
	T = trans[ 3][196] = settr(846,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(846,0,27,0,0,"sub-sequence", 1, 2, 0);
	trans[3][27]	= settr(677,2,29,315,315,"intSave = 0", 1, 2, 0);
	T = trans[ 3][29] = settr(679,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(679,0,28,0,0,"sub-sequence", 1, 2, 0);
	trans[3][28]	= settr(678,2,183,316,316,"intSave = 0", 1, 2, 0); /* m: 30 -> 0,183 */
	reached3[30] = 1;
	trans[3][30]	= settr(0,0,0,0,0,"assert(((tcb[2].state==1)||(tcb[2].state==2)))",0,0,0);
	trans[3][31]	= settr(0,0,0,0,0,"needSched = 0",0,0,0);
	T = trans[3][183] = settr(833,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(833,2,32,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(833,2,180,0,0,"IF", 1, 2, 0);
	trans[3][32]	= settr(682,2,179,317,0,"((tcb[2].state==1))", 1, 2, 0);
	T = trans[ 3][179] = settr(829,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(829,0,33,0,0,"sub-sequence", 1, 2, 0);
	trans[3][33]	= settr(683,2,66,318,318,"assert((tcb[2].state==1))", 1, 2, 0); /* m: 34 -> 0,66 */
	reached3[34] = 1;
	trans[3][34]	= settr(0,0,0,0,0,"needSched = 1",0,0,0);
	T = trans[ 3][66] = settr(716,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(716,0,35,0,0,"sub-sequence", 1, 2, 0);
	trans[3][35]	= settr(685,2,47,319,319,"idx = 0", 1, 2, 0); /* m: 36 -> 0,47 */
	reached3[36] = 1;
	trans[3][36]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[3][37]	= settr(0,0,0,0,0,"prioLevel = tcb[2].prio",0,0,0);
	trans[3][48]	= settr(698,2,47,1,0,".(goto)", 1, 2, 0);
	T = trans[3][47] = settr(697,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(697,2,38,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(697,2,45,0,0,"DO", 1, 2, 0);
	trans[3][38]	= settr(688,2,43,320,0,"(((idx<readyQueue[prioLevel].tailIndex)&&!(found)))", 1, 2, 0);
	T = trans[3][43] = settr(693,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(693,2,39,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(693,2,41,0,0,"IF", 1, 2, 0);
	trans[3][39]	= settr(689,2,47,321,321,"((readyQueue[prioLevel].tasks[idx]==2))", 1, 2, 0); /* m: 40 -> 47,0 */
	reached3[40] = 1;
	trans[3][40]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[3][44]	= settr(694,2,47,1,0,".(goto)", 1, 2, 0);
	trans[3][41]	= settr(691,2,42,2,0,"else", 1, 2, 0);
	trans[3][42]	= settr(692,2,47,322,322,"idx = (idx+1)", 1, 2, 0);
	trans[3][45]	= settr(695,2,50,2,0,"else", 1, 2, 0);
	trans[3][46]	= settr(696,2,50,1,0,"goto :b19", 1, 2, 0); /* m: 50 -> 0,56 */
	reached3[50] = 1;
	trans[3][49]	= settr(699,2,50,1,0,"break", 1, 2, 0);
	trans[3][50]	= settr(700,2,56,323,323,"assert((found==1))", 1, 2, 0);
	trans[3][57]	= settr(707,2,56,1,0,".(goto)", 1, 2, 0);
	T = trans[3][56] = settr(706,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(706,2,51,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(706,2,54,0,0,"DO", 1, 2, 0);
	trans[3][51]	= settr(701,2,56,324,324,"((idx<(readyQueue[prioLevel].tailIndex-1)))", 1, 2, 0); /* m: 52 -> 56,0 */
	reached3[52] = 1;
	trans[3][52]	= settr(0,0,0,0,0,"readyQueue[prioLevel].tasks[idx] = readyQueue[prioLevel].tasks[(idx+1)]",0,0,0);
	trans[3][53]	= settr(0,0,0,0,0,"idx = (idx+1)",0,0,0);
	trans[3][54]	= settr(704,2,64,2,0,"else", 1, 2, 0);
	trans[3][55]	= settr(705,2,64,1,0,"goto :b20", 1, 2, 0);
	trans[3][58]	= settr(708,2,64,1,0,"break", 1, 2, 0);
	T = trans[3][64] = settr(714,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(714,2,59,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(714,2,62,0,0,"IF", 1, 2, 0);
	trans[3][59]	= settr(709,2,178,325,325,"((readyQueue[prioLevel].tailIndex>0))", 1, 2, 0); /* m: 60 -> 178,0 */
	reached3[60] = 1;
	trans[3][60]	= settr(0,0,0,0,0,"readyQueue[prioLevel].tasks[(readyQueue[prioLevel].tailIndex-1)] = 255",0,0,0);
	trans[3][61]	= settr(0,0,0,0,0,"readyQueue[prioLevel].tailIndex = (readyQueue[prioLevel].tailIndex-1)",0,0,0);
	trans[3][65]	= settr(715,2,67,1,0,".(goto)", 1, 2, 0); /* m: 67 -> 0,178 */
	reached3[67] = 1;
	trans[3][62]	= settr(712,2,63,2,0,"else", 1, 2, 0);
	trans[3][63]	= settr(713,2,178,326,326,"(1)", 1, 2, 0); /* m: 67 -> 178,0 */
	reached3[67] = 1;
	trans[3][67]	= settr(717,2,178,327,327,"tcb[2].state = 3", 1, 2, 0);
	T = trans[ 3][178] = settr(828,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(828,0,177,0,0,"sub-sequence", 1, 2, 0);
	T = trans[ 3][177] = settr(827,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(827,0,68,0,0,"sub-sequence", 1, 2, 0);
	trans[3][68]	= settr(718,2,175,328,328,"insertPos = 0", 1, 2, 0); /* m: 69 -> 0,175 */
	reached3[69] = 1;
	trans[3][69]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[3][70]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[3][71]	= settr(0,0,0,0,0,"tmpId = 0",0,0,0);
	trans[3][72]	= settr(0,0,0,0,0,"tmpTime = 0",0,0,0);
	trans[3][73]	= settr(0,0,0,0,0,"willOverflow = 0",0,0,0);
	trans[3][74]	= settr(0,0,0,0,0,"assert((tcb[2].pendList==255))",0,0,0);
	trans[3][75]	= settr(0,0,0,0,0,"willOverflow = (255<g_tickCount)",0,0,0);
	T = trans[3][175] = settr(825,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(825,2,76,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(825,2,120,0,0,"IF", 1, 2, 0);
	trans[3][76]	= settr(726,2,89,329,329,"(willOverflow)", 1, 2, 0); /* m: 77 -> 89,0 */
	reached3[77] = 1;
	trans[3][77]	= settr(0,0,0,0,0,"assert((overflowedSortLinkTail<(2+1)))",0,0,0);
	trans[3][78]	= settr(0,0,0,0,0,"insertPos = 0",0,0,0);
	trans[3][79]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[3][90]	= settr(740,2,89,1,0,".(goto)", 1, 2, 0);
	T = trans[3][89] = settr(739,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(739,2,80,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(739,2,87,0,0,"DO", 1, 2, 0);
	trans[3][80]	= settr(730,2,85,330,0,"(((insertPos<overflowedSortLinkTail)&&(found==0)))", 1, 2, 0);
	T = trans[3][85] = settr(735,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(735,2,81,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(735,2,83,0,0,"IF", 1, 2, 0);
	trans[3][81]	= settr(731,2,89,331,331,"((255<overflowedSortLink[insertPos].responseTime))", 1, 2, 0); /* m: 82 -> 89,0 */
	reached3[82] = 1;
	trans[3][82]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[3][86]	= settr(736,2,89,1,0,".(goto)", 1, 2, 0);
	trans[3][83]	= settr(733,2,84,2,0,"else", 1, 2, 0);
	trans[3][84]	= settr(734,2,89,332,332,"insertPos = (insertPos+1)", 1, 2, 0);
	trans[3][87]	= settr(737,2,92,2,0,"else", 1, 2, 0);
	trans[3][88]	= settr(738,2,92,1,0,"goto :b21", 1, 2, 0); /* m: 92 -> 0,107 */
	reached3[92] = 1;
	trans[3][91]	= settr(741,2,92,1,0,"break", 1, 2, 0);
	trans[3][92]	= settr(742,2,107,333,333,"idx = overflowedSortLinkTail", 1, 2, 0);
	trans[3][108]	= settr(758,2,107,1,0,".(goto)", 1, 2, 0);
	T = trans[3][107] = settr(757,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(757,2,93,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(757,2,105,0,0,"DO", 1, 2, 0);
	trans[3][93]	= settr(743,2,102,334,334,"((idx>insertPos))", 1, 2, 0); /* m: 94 -> 102,0 */
	reached3[94] = 1;
	trans[3][94]	= settr(0,0,0,0,0,"tmpId = overflowedSortLink[(idx-1)].taskId",0,0,0);
	trans[3][95]	= settr(0,0,0,0,0,"tmpTime = overflowedSortLink[(idx-1)].responseTime",0,0,0);
	trans[3][96]	= settr(0,0,0,0,0,"overflowedSortLink[idx].taskId = tmpId",0,0,0);
	trans[3][97]	= settr(0,0,0,0,0,"overflowedSortLink[idx].responseTime = tmpTime",0,0,0);
	T = trans[3][102] = settr(752,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(752,2,98,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(752,2,100,0,0,"IF", 1, 2, 0);
	trans[3][98]	= settr(748,2,107,335,335,"((tmpId!=255))", 1, 2, 0); /* m: 99 -> 107,0 */
	reached3[99] = 1;
	trans[3][99]	= settr(0,0,0,0,0,"tcb[tmpId].pendList = (128+idx)",0,0,0);
	trans[3][103]	= settr(753,2,104,1,0,".(goto)", 1, 2, 0); /* m: 104 -> 0,107 */
	reached3[104] = 1;
	trans[3][100]	= settr(750,2,101,2,0,"else", 1, 2, 0);
	trans[3][101]	= settr(751,2,107,336,336,"(1)", 1, 2, 0); /* m: 104 -> 107,0 */
	reached3[104] = 1;
	trans[3][104]	= settr(754,2,107,337,337,"idx = (idx-1)", 1, 2, 0);
	trans[3][105]	= settr(755,2,110,2,0,"else", 1, 2, 0);
	trans[3][106]	= settr(756,2,110,1,0,"goto :b22", 1, 2, 0); /* m: 110 -> 0,118 */
	reached3[110] = 1;
	trans[3][109]	= settr(759,2,110,1,0,"break", 1, 2, 0);
	trans[3][110]	= settr(760,2,118,338,338,"overflowedSortLink[insertPos].taskId = 2", 1, 2, 0); /* m: 111 -> 0,118 */
	reached3[111] = 1;
	trans[3][111]	= settr(0,0,0,0,0,"overflowedSortLink[insertPos].responseTime = 255",0,0,0);
	trans[3][112]	= settr(0,0,0,0,0,"tcb[2].pendList = (128+insertPos)",0,0,0);
	trans[3][113]	= settr(0,0,0,0,0,"overflowedSortLinkTail = (overflowedSortLinkTail+1)",0,0,0);
	T = trans[3][118] = settr(768,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(768,2,114,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(768,2,116,0,0,"IF", 1, 2, 0);
	trans[3][114]	= settr(764,2,194,339,339,"(((insertPos==0)&&(255<255)))", 1, 2, 0); /* m: 115 -> 194,0 */
	reached3[115] = 1;
	trans[3][115]	= settr(0,0,0,0,0,"g_overflowedResponseTime = 255",0,0,0);
	trans[3][119]	= settr(769,2,194,1,0,".(goto)", 1, 2, 0);
	trans[3][116]	= settr(766,2,117,2,0,"else", 1, 2, 0);
	trans[3][117]	= settr(767,2,194,1,0,"(1)", 1, 2, 0);
	trans[3][176]	= settr(826,2,194,1,0,".(goto)", 1, 2, 0);
	trans[3][120]	= settr(770,2,121,2,0,"else", 1, 2, 0);
	trans[3][121]	= settr(771,2,133,340,340,"assert((g_taskSortLinkTail<(2+1)))", 1, 2, 0); /* m: 122 -> 0,133 */
	reached3[122] = 1;
	trans[3][122]	= settr(0,0,0,0,0,"insertPos = 0",0,0,0);
	trans[3][123]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[3][134]	= settr(784,2,133,1,0,".(goto)", 1, 2, 0);
	T = trans[3][133] = settr(783,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(783,2,124,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(783,2,131,0,0,"DO", 1, 2, 0);
	trans[3][124]	= settr(774,2,129,341,0,"(((insertPos<g_taskSortLinkTail)&&(found==0)))", 1, 2, 0);
	T = trans[3][129] = settr(779,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(779,2,125,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(779,2,127,0,0,"IF", 1, 2, 0);
	trans[3][125]	= settr(775,2,133,342,342,"((255<g_taskSortLink[insertPos].responseTime))", 1, 2, 0); /* m: 126 -> 133,0 */
	reached3[126] = 1;
	trans[3][126]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[3][130]	= settr(780,2,133,1,0,".(goto)", 1, 2, 0);
	trans[3][127]	= settr(777,2,128,2,0,"else", 1, 2, 0);
	trans[3][128]	= settr(778,2,133,343,343,"insertPos = (insertPos+1)", 1, 2, 0);
	trans[3][131]	= settr(781,2,136,2,0,"else", 1, 2, 0);
	trans[3][132]	= settr(782,2,136,1,0,"goto :b23", 1, 2, 0); /* m: 136 -> 0,151 */
	reached3[136] = 1;
	trans[3][135]	= settr(785,2,136,1,0,"break", 1, 2, 0);
	trans[3][136]	= settr(786,2,151,344,344,"idx = g_taskSortLinkTail", 1, 2, 0);
	trans[3][152]	= settr(802,2,151,1,0,".(goto)", 1, 2, 0);
	T = trans[3][151] = settr(801,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(801,2,137,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(801,2,149,0,0,"DO", 1, 2, 0);
	trans[3][137]	= settr(787,2,146,345,345,"((idx>insertPos))", 1, 2, 0); /* m: 138 -> 146,0 */
	reached3[138] = 1;
	trans[3][138]	= settr(0,0,0,0,0,"tmpId = g_taskSortLink[(idx-1)].taskId",0,0,0);
	trans[3][139]	= settr(0,0,0,0,0,"tmpTime = g_taskSortLink[(idx-1)].responseTime",0,0,0);
	trans[3][140]	= settr(0,0,0,0,0,"g_taskSortLink[idx].taskId = tmpId",0,0,0);
	trans[3][141]	= settr(0,0,0,0,0,"g_taskSortLink[idx].responseTime = tmpTime",0,0,0);
	T = trans[3][146] = settr(796,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(796,2,142,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(796,2,144,0,0,"IF", 1, 2, 0);
	trans[3][142]	= settr(792,2,151,346,346,"((tmpId!=255))", 1, 2, 0); /* m: 143 -> 151,0 */
	reached3[143] = 1;
	trans[3][143]	= settr(0,0,0,0,0,"tcb[tmpId].pendList = idx",0,0,0);
	trans[3][147]	= settr(797,2,148,1,0,".(goto)", 1, 2, 0); /* m: 148 -> 0,151 */
	reached3[148] = 1;
	trans[3][144]	= settr(794,2,145,2,0,"else", 1, 2, 0);
	trans[3][145]	= settr(795,2,151,347,347,"(1)", 1, 2, 0); /* m: 148 -> 151,0 */
	reached3[148] = 1;
	trans[3][148]	= settr(798,2,151,348,348,"idx = (idx-1)", 1, 2, 0);
	trans[3][149]	= settr(799,2,154,2,0,"else", 1, 2, 0);
	trans[3][150]	= settr(800,2,154,1,0,"goto :b24", 1, 2, 0); /* m: 154 -> 0,162 */
	reached3[154] = 1;
	trans[3][153]	= settr(803,2,154,1,0,"break", 1, 2, 0);
	trans[3][154]	= settr(804,2,162,349,349,"g_taskSortLink[insertPos].taskId = 2", 1, 2, 0); /* m: 155 -> 0,162 */
	reached3[155] = 1;
	trans[3][155]	= settr(0,0,0,0,0,"g_taskSortLink[insertPos].responseTime = 255",0,0,0);
	trans[3][156]	= settr(0,0,0,0,0,"tcb[2].pendList = insertPos",0,0,0);
	trans[3][157]	= settr(0,0,0,0,0,"g_taskSortLinkTail = (g_taskSortLinkTail+1)",0,0,0);
	T = trans[3][162] = settr(812,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(812,2,158,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(812,2,160,0,0,"IF", 1, 2, 0);
	trans[3][158]	= settr(808,2,174,350,350,"(((insertPos==0)&&(255<255)))", 1, 2, 0); /* m: 159 -> 174,0 */
	reached3[159] = 1;
	trans[3][159]	= settr(0,0,0,0,0,"g_schedResponseTime = 255",0,0,0);
	trans[3][163]	= settr(813,2,174,1,0,".(goto)", 1, 2, 0);
	trans[3][160]	= settr(810,2,161,2,0,"else", 1, 2, 0);
	trans[3][161]	= settr(811,2,174,1,0,"(1)", 1, 2, 0);
	T = trans[ 3][174] = settr(824,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(824,0,164,0,0,"sub-sequence", 1, 2, 0);
	trans[3][164]	= settr(814,2,171,351,351,"checkIdx = 0", 1, 2, 0); /* m: 165 -> 0,171 */
	reached3[165] = 1;
	trans[3][165]	= settr(0,0,0,0,0,"isValid = 1",0,0,0);
	trans[3][172]	= settr(822,2,171,1,0,".(goto)", 1, 2, 0);
	T = trans[3][171] = settr(821,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(821,2,166,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(821,2,169,0,0,"DO", 1, 2, 0);
	trans[3][166]	= settr(816,2,171,352,352,"((checkIdx<(g_taskSortLinkTail-1)))", 1, 2, 0); /* m: 167 -> 171,0 */
	reached3[167] = 1;
	trans[3][167]	= settr(0,0,0,0,0,"assert((g_taskSortLink[checkIdx].responseTime<=g_taskSortLink[(checkIdx+1)].responseTime))",0,0,0);
	trans[3][168]	= settr(0,0,0,0,0,"checkIdx = (checkIdx+1)",0,0,0);
	trans[3][169]	= settr(819,2,194,2,0,"else", 1, 2, 0);
	trans[3][170]	= settr(820,2,194,1,0,"goto :b25", 1, 2, 0);
	trans[3][173]	= settr(823,2,194,1,0,"break", 1, 2, 0);
	trans[3][184]	= settr(834,2,194,1,0,".(goto)", 1, 2, 0);
	trans[3][180]	= settr(830,2,194,353,353,"((tcb[2].state==2))", 1, 2, 0); /* m: 181 -> 194,0 */
	reached3[181] = 1;
	trans[3][181]	= settr(0,0,0,0,0,"needSched = 1",0,0,0);
	trans[3][182]	= settr(0,0,0,0,0,"tcb[2].state = 3",0,0,0);
	T = trans[3][194] = settr(844,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(844,2,185,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(844,2,192,0,0,"IF", 1, 2, 0);
	trans[3][185]	= settr(835,2,187,354,354,"((needSched&&g_taskScheduled))", 1, 2, 0);
	T = trans[ 3][187] = settr(837,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(837,0,186,0,0,"sub-sequence", 1, 2, 0);
	trans[3][186]	= settr(836,2,191,355,355,"intSave = 0", 1, 2, 0);
	T = trans[ 3][191] = settr(841,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(841,0,190,0,0,"sub-sequence", 1, 2, 0);
	T = trans[ 3][190] = settr(840,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(840,0,188,0,0,"sub-sequence", 1, 2, 0);
	trans[3][188]	= settr(838,2,202,356,356,"assert(((0<2)&&(0<8)))", 1, 2, 0); /* m: 189 -> 0,202 */
	reached3[189] = 1;
	trans[3][189]	= settr(0,0,0,0,0,"pending_exp = (pending_exp|(1<<0))",0,0,0);
	trans[3][195]	= settr(845,2,202,1,0,".(goto)", 1, 2, 0);
	trans[3][192]	= settr(842,2,193,2,0,"else", 1, 2, 0);
	trans[3][193]	= settr(843,2,202,1,0,"(1)", 1, 2, 0);
	T = trans[3][202] = settr(852,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(852,2,197,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(852,2,201,0,0,"IF", 1, 2, 0);
	trans[3][197]	= settr(847,2,200,1,0,"(1)", 1, 2, 0);
	T = trans[ 3][200] = settr(850,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(850,0,198,0,0,"sub-sequence", 1, 2, 0);
	trans[3][198]	= settr(848,2,217,357,357,"assert(((1<2)&&(1<8)))", 1, 2, 0); /* m: 199 -> 0,217 */
	reached3[199] = 1;
	trans[3][199]	= settr(0,0,0,0,0,"pending_exp = (pending_exp|(1<<1))",0,0,0);
	trans[3][203]	= settr(853,2,217,1,0,".(goto)", 1, 2, 0);
	trans[3][201]	= settr(851,2,217,1,0,"(1)", 1, 2, 0);
	T = trans[3][217] = settr(867,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(867,2,204,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(867,2,215,0,0,"IF", 1, 2, 0);
	trans[3][204]	= settr(854,2,209,358,0,"((((((pending_exp>>0)&1)&&((BASEPRI==0)||(15<BASEPRI)))||(((pending_exp>>1)&1)&&((BASEPRI==0)||(15<BASEPRI))))&&(EP>=2)))", 1, 2, 0);
	T = trans[3][209] = settr(859,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(859,2,205,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(859,2,207,0,0,"IF", 1, 2, 0);
	trans[3][205]	= settr(855,2,213,359,359,"((EP>=2))", 1, 2, 0); /* m: 206 -> 213,0 */
	reached3[206] = 1;
	trans[3][206]	= settr(0,0,0,0,0,"chain_tick_used = 0",0,0,0);
	trans[3][210]	= settr(860,2,213,1,0,".(goto)", 1, 2, 0);
	trans[3][207]	= settr(857,2,208,2,0,"else", 1, 2, 0);
	trans[3][208]	= settr(858,2,213,1,0,"(1)", 1, 2, 0);
	T = trans[ 3][213] = settr(863,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(863,0,211,0,0,"sub-sequence", 1, 2, 0);
	trans[3][211]	= settr(861,4,367,360,360,"assert((EP_Stack==255))", 1, 2, 0); /* m: 212 -> 0,367 */
	reached3[212] = 1;
	trans[3][212]	= settr(0,0,0,0,0,"EP_Stack = EP",0,0,0);
	trans[3][214]	= settr(0,0,0,0,0,"EP = ( (((pending_exp>>0)&1)) -> (0) : (1) )",0,0,0);
	trans[3][218]	= settr(868,0,367,361,361,".(goto)", 1, 2, 0);
	trans[3][215]	= settr(865,2,216,2,0,"else", 1, 2, 0);
	trans[3][216]	= settr(866,4,367,362,362,"(1)", 1, 2, 0); /* m: 218 -> 367,0 */
	reached3[218] = 1;
	T = trans[ 3][367] = settr(1017,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(1017,2,220,0,0,"ATOMIC", 1, 2, 0);
	trans[3][220]	= settr(870,2,344,363,0,"(((2+1)==EP))", 1, 2, 0);
	T = trans[ 3][344] = settr(994,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(994,0,221,0,0,"sub-sequence", 1, 2, 0);
	trans[3][221]	= settr(871,2,225,364,364,"intSave = 0", 1, 2, 0); /* m: 222 -> 0,225 */
	reached3[222] = 1;
	trans[3][222]	= settr(0,0,0,0,0,"tempStatus = 0",0,0,0);
	trans[3][223]	= settr(0,0,0,0,0,"needSched = 0",0,0,0);
	T = trans[ 3][225] = settr(875,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(875,0,224,0,0,"sub-sequence", 1, 2, 0);
	trans[3][224]	= settr(874,2,332,365,365,"intSave = 0", 1, 2, 0); /* m: 226 -> 0,332 */
	reached3[226] = 1;
	trans[3][226]	= settr(0,0,0,0,0,"assert((tcb[2].state!=2))",0,0,0);
	trans[3][227]	= settr(0,0,0,0,0,"tempStatus = tcb[2].state",0,0,0);
	trans[3][228]	= settr(0,0,0,0,0,"assert((tempStatus==3))",0,0,0);
	T = trans[ 3][332] = settr(982,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(982,0,229,0,0,"sub-sequence", 1, 2, 0);
	trans[3][229]	= settr(879,2,321,366,366,"assert((tcb[2].state==3))", 1, 2, 0); /* m: 230 -> 0,321 */
	reached3[230] = 1;
	trans[3][230]	= settr(0,0,0,0,0,"needSched = 1",0,0,0);
	trans[3][231]	= settr(0,0,0,0,0,"tcb[2].state = 1",0,0,0);
	T = trans[ 3][321] = settr(971,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(971,0,232,0,0,"sub-sequence", 1, 2, 0);
	trans[3][232]	= settr(882,2,319,367,367,"pendListValue = tcb[2].pendList", 1, 2, 0); /* m: 233 -> 0,319 */
	reached3[233] = 1;
	trans[3][233]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[3][234]	= settr(0,0,0,0,0,"removedIdx = 0",0,0,0);
	trans[3][235]	= settr(0,0,0,0,0,"newFirstTime = 0",0,0,0);
	T = trans[3][319] = settr(969,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(969,2,236,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(969,2,283,0,0,"IF", 1, 2, 0);
	trans[3][236]	= settr(886,2,251,368,368,"((pendListValue<128))", 1, 2, 0); /* m: 237 -> 251,0 */
	reached3[237] = 1;
	trans[3][237]	= settr(0,0,0,0,0,"idx = pendListValue",0,0,0);
	trans[3][238]	= settr(0,0,0,0,0,"removedIdx = idx",0,0,0);
	trans[3][252]	= settr(902,2,251,1,0,".(goto)", 1, 2, 0);
	T = trans[3][251] = settr(901,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(901,2,239,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(901,2,249,0,0,"DO", 1, 2, 0);
	trans[3][239]	= settr(889,2,246,369,369,"((idx<(g_taskSortLinkTail-1)))", 1, 2, 0); /* m: 240 -> 246,0 */
	reached3[240] = 1;
	trans[3][240]	= settr(0,0,0,0,0,"g_taskSortLink[idx].taskId = g_taskSortLink[(idx+1)].taskId",0,0,0);
	trans[3][241]	= settr(0,0,0,0,0,"g_taskSortLink[idx].responseTime = g_taskSortLink[(idx+1)].responseTime",0,0,0);
	T = trans[3][246] = settr(896,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(896,2,242,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(896,2,244,0,0,"IF", 1, 2, 0);
	trans[3][242]	= settr(892,2,251,370,370,"((g_taskSortLink[idx].taskId!=255))", 1, 2, 0); /* m: 243 -> 251,0 */
	reached3[243] = 1;
	trans[3][243]	= settr(0,0,0,0,0,"tcb[g_taskSortLink[idx].taskId].pendList = idx",0,0,0);
	trans[3][247]	= settr(897,2,248,1,0,".(goto)", 1, 2, 0); /* m: 248 -> 0,251 */
	reached3[248] = 1;
	trans[3][244]	= settr(894,2,245,2,0,"else", 1, 2, 0);
	trans[3][245]	= settr(895,2,251,371,371,"(1)", 1, 2, 0); /* m: 248 -> 251,0 */
	reached3[248] = 1;
	trans[3][248]	= settr(898,2,251,372,372,"idx = (idx+1)", 1, 2, 0);
	trans[3][249]	= settr(899,2,254,2,0,"else", 1, 2, 0);
	trans[3][250]	= settr(900,2,254,1,0,"goto :b26", 1, 2, 0); /* m: 254 -> 0,270 */
	reached3[254] = 1;
	trans[3][253]	= settr(903,2,254,1,0,"break", 1, 2, 0);
	trans[3][254]	= settr(904,2,270,373,373,"g_taskSortLink[(g_taskSortLinkTail-1)].taskId = 255", 1, 2, 0); /* m: 255 -> 0,270 */
	reached3[255] = 1;
	trans[3][255]	= settr(0,0,0,0,0,"g_taskSortLink[(g_taskSortLinkTail-1)].responseTime = 255",0,0,0);
	trans[3][256]	= settr(0,0,0,0,0,"g_taskSortLinkTail = (g_taskSortLinkTail-1)",0,0,0);
	trans[3][257]	= settr(0,0,0,0,0,"tcb[2].pendList = 255",0,0,0);
	T = trans[3][270] = settr(920,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(920,2,258,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(920,2,260,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(920,2,268,0,0,"IF", 1, 2, 0);
	trans[3][258]	= settr(908,2,282,374,374,"((g_taskSortLinkTail==0))", 1, 2, 0); /* m: 259 -> 282,0 */
	reached3[259] = 1;
	trans[3][259]	= settr(0,0,0,0,0,"g_schedResponseTime = 255",0,0,0);
	trans[3][271]	= settr(921,2,282,1,0,".(goto)", 1, 2, 0);
	trans[3][260]	= settr(910,2,266,375,375,"(((removedIdx==0)&&(g_taskSortLinkTail>0)))", 1, 2, 0); /* m: 261 -> 266,0 */
	reached3[261] = 1;
	trans[3][261]	= settr(0,0,0,0,0,"newFirstTime = g_taskSortLink[0].responseTime",0,0,0);
	T = trans[3][266] = settr(916,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(916,2,262,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(916,2,264,0,0,"IF", 1, 2, 0);
	trans[3][262]	= settr(912,2,282,376,376,"((newFirstTime<255))", 1, 2, 0); /* m: 263 -> 282,0 */
	reached3[263] = 1;
	trans[3][263]	= settr(0,0,0,0,0,"g_schedResponseTime = newFirstTime",0,0,0);
	trans[3][267]	= settr(917,2,282,1,0,".(goto)", 1, 2, 0);
	trans[3][264]	= settr(914,2,265,2,0,"else", 1, 2, 0);
	trans[3][265]	= settr(915,2,282,377,377,"g_schedResponseTime = 255", 1, 2, 0);
	trans[3][268]	= settr(918,2,269,2,0,"else", 1, 2, 0);
	trans[3][269]	= settr(919,2,282,1,0,"(1)", 1, 2, 0);
	T = trans[ 3][282] = settr(932,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(932,0,272,0,0,"sub-sequence", 1, 2, 0);
	trans[3][272]	= settr(922,2,279,378,378,"checkIdx = 0", 1, 2, 0); /* m: 273 -> 0,279 */
	reached3[273] = 1;
	trans[3][273]	= settr(0,0,0,0,0,"isValid = 1",0,0,0);
	trans[3][280]	= settr(930,2,279,1,0,".(goto)", 1, 2, 0);
	T = trans[3][279] = settr(929,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(929,2,274,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(929,2,277,0,0,"DO", 1, 2, 0);
	trans[3][274]	= settr(924,2,279,379,379,"((checkIdx<(g_taskSortLinkTail-1)))", 1, 2, 0); /* m: 275 -> 279,0 */
	reached3[275] = 1;
	trans[3][275]	= settr(0,0,0,0,0,"assert((g_taskSortLink[checkIdx].responseTime<=g_taskSortLink[(checkIdx+1)].responseTime))",0,0,0);
	trans[3][276]	= settr(0,0,0,0,0,"checkIdx = (checkIdx+1)",0,0,0);
	trans[3][277]	= settr(927,2,331,2,0,"else", 1, 2, 0);
	trans[3][278]	= settr(928,2,331,1,0,"goto :b27", 1, 2, 0);
	trans[3][281]	= settr(931,2,331,1,0,"break", 1, 2, 0);
	trans[3][320]	= settr(970,2,331,1,0,".(goto)", 1, 2, 0);
	trans[3][283]	= settr(933,2,284,2,0,"else", 1, 2, 0);
	trans[3][284]	= settr(934,2,298,380,380,"idx = (pendListValue-128)", 1, 2, 0); /* m: 285 -> 0,298 */
	reached3[285] = 1;
	trans[3][285]	= settr(0,0,0,0,0,"removedIdx = idx",0,0,0);
	trans[3][299]	= settr(949,2,298,1,0,".(goto)", 1, 2, 0);
	T = trans[3][298] = settr(948,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(948,2,286,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(948,2,296,0,0,"DO", 1, 2, 0);
	trans[3][286]	= settr(936,2,293,381,381,"((idx<(overflowedSortLinkTail-1)))", 1, 2, 0); /* m: 287 -> 293,0 */
	reached3[287] = 1;
	trans[3][287]	= settr(0,0,0,0,0,"overflowedSortLink[idx].taskId = overflowedSortLink[(idx+1)].taskId",0,0,0);
	trans[3][288]	= settr(0,0,0,0,0,"overflowedSortLink[idx].responseTime = overflowedSortLink[(idx+1)].responseTime",0,0,0);
	T = trans[3][293] = settr(943,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(943,2,289,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(943,2,291,0,0,"IF", 1, 2, 0);
	trans[3][289]	= settr(939,2,298,382,382,"((overflowedSortLink[idx].taskId!=255))", 1, 2, 0); /* m: 290 -> 298,0 */
	reached3[290] = 1;
	trans[3][290]	= settr(0,0,0,0,0,"tcb[overflowedSortLink[idx].taskId].pendList = (128+idx)",0,0,0);
	trans[3][294]	= settr(944,2,295,1,0,".(goto)", 1, 2, 0); /* m: 295 -> 0,298 */
	reached3[295] = 1;
	trans[3][291]	= settr(941,2,292,2,0,"else", 1, 2, 0);
	trans[3][292]	= settr(942,2,298,383,383,"(1)", 1, 2, 0); /* m: 295 -> 298,0 */
	reached3[295] = 1;
	trans[3][295]	= settr(945,2,298,384,384,"idx = (idx+1)", 1, 2, 0);
	trans[3][296]	= settr(946,2,301,2,0,"else", 1, 2, 0);
	trans[3][297]	= settr(947,2,301,1,0,"goto :b28", 1, 2, 0); /* m: 301 -> 0,317 */
	reached3[301] = 1;
	trans[3][300]	= settr(950,2,301,1,0,"break", 1, 2, 0);
	trans[3][301]	= settr(951,2,317,385,385,"overflowedSortLink[(overflowedSortLinkTail-1)].taskId = 255", 1, 2, 0); /* m: 302 -> 0,317 */
	reached3[302] = 1;
	trans[3][302]	= settr(0,0,0,0,0,"overflowedSortLink[(overflowedSortLinkTail-1)].responseTime = 255",0,0,0);
	trans[3][303]	= settr(0,0,0,0,0,"overflowedSortLinkTail = (overflowedSortLinkTail-1)",0,0,0);
	trans[3][304]	= settr(0,0,0,0,0,"tcb[2].pendList = 255",0,0,0);
	T = trans[3][317] = settr(967,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(967,2,305,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(967,2,307,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(967,2,315,0,0,"IF", 1, 2, 0);
	trans[3][305]	= settr(955,2,331,386,386,"((overflowedSortLinkTail==0))", 1, 2, 0); /* m: 306 -> 331,0 */
	reached3[306] = 1;
	trans[3][306]	= settr(0,0,0,0,0,"g_overflowedResponseTime = 255",0,0,0);
	trans[3][318]	= settr(968,2,331,1,0,".(goto)", 1, 2, 0);
	trans[3][307]	= settr(957,2,313,387,387,"(((removedIdx==0)&&(overflowedSortLinkTail>0)))", 1, 2, 0); /* m: 308 -> 313,0 */
	reached3[308] = 1;
	trans[3][308]	= settr(0,0,0,0,0,"newFirstTime = overflowedSortLink[0].responseTime",0,0,0);
	T = trans[3][313] = settr(963,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(963,2,309,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(963,2,311,0,0,"IF", 1, 2, 0);
	trans[3][309]	= settr(959,2,331,388,388,"((newFirstTime<255))", 1, 2, 0); /* m: 310 -> 331,0 */
	reached3[310] = 1;
	trans[3][310]	= settr(0,0,0,0,0,"g_overflowedResponseTime = newFirstTime",0,0,0);
	trans[3][314]	= settr(964,2,331,1,0,".(goto)", 1, 2, 0);
	trans[3][311]	= settr(961,2,312,2,0,"else", 1, 2, 0);
	trans[3][312]	= settr(962,2,331,389,389,"g_overflowedResponseTime = 255", 1, 2, 0);
	trans[3][315]	= settr(965,2,316,2,0,"else", 1, 2, 0);
	trans[3][316]	= settr(966,2,331,1,0,"(1)", 1, 2, 0);
	T = trans[ 3][331] = settr(981,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(981,0,322,0,0,"sub-sequence", 1, 2, 0);
	trans[3][322]	= settr(972,2,329,390,390,"temp = tcb[2].prio", 1, 2, 0); /* m: 323 -> 0,329 */
	reached3[323] = 1;
	trans[3][323]	= settr(0,0,0,0,0,"temp1 = readyQueue[tcb[2].prio].tailIndex",0,0,0);
	T = trans[3][329] = settr(979,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(979,2,324,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(979,2,327,0,0,"IF", 1, 2, 0);
	trans[3][324]	= settr(974,2,342,391,391,"((readyQueue[tcb[2].prio].tailIndex<5))", 1, 2, 0); /* m: 325 -> 342,0 */
	reached3[325] = 1;
	trans[3][325]	= settr(0,0,0,0,0,"readyQueue[tcb[2].prio].tasks[readyQueue[tcb[2].prio].tailIndex] = 2",0,0,0);
	trans[3][326]	= settr(0,0,0,0,0,"readyQueue[tcb[2].prio].tailIndex = (readyQueue[tcb[2].prio].tailIndex+1)",0,0,0);
	trans[3][330]	= settr(980,2,342,1,0,".(goto)", 1, 2, 0);
	trans[3][327]	= settr(977,2,328,2,0,"else", 1, 2, 0);
	trans[3][328]	= settr(978,2,342,392,0,"assert(0)", 1, 2, 0);
	T = trans[3][342] = settr(992,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(992,2,333,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(992,2,340,0,0,"IF", 1, 2, 0);
	trans[3][333]	= settr(983,2,335,393,393,"((needSched&&g_taskScheduled))", 1, 2, 0);
	T = trans[ 3][335] = settr(985,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(985,0,334,0,0,"sub-sequence", 1, 2, 0);
	trans[3][334]	= settr(984,2,339,394,394,"intSave = 0", 1, 2, 0);
	T = trans[ 3][339] = settr(989,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(989,0,338,0,0,"sub-sequence", 1, 2, 0);
	T = trans[ 3][338] = settr(988,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(988,0,336,0,0,"sub-sequence", 1, 2, 0);
	trans[3][336]	= settr(986,2,350,395,395,"assert(((0<2)&&(0<8)))", 1, 2, 0); /* m: 337 -> 0,350 */
	reached3[337] = 1;
	trans[3][337]	= settr(0,0,0,0,0,"pending_exp = (pending_exp|(1<<0))",0,0,0);
	trans[3][343]	= settr(993,2,350,1,0,".(goto)", 1, 2, 0);
	trans[3][340]	= settr(990,2,341,2,0,"else", 1, 2, 0);
	trans[3][341]	= settr(991,2,350,1,0,"(1)", 1, 2, 0);
	T = trans[3][350] = settr(1000,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1000,2,345,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1000,2,349,0,0,"IF", 1, 2, 0);
	trans[3][345]	= settr(995,2,348,1,0,"(1)", 1, 2, 0);
	T = trans[ 3][348] = settr(998,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(998,0,346,0,0,"sub-sequence", 1, 2, 0);
	trans[3][346]	= settr(996,2,365,396,396,"assert(((1<2)&&(1<8)))", 1, 2, 0); /* m: 347 -> 0,365 */
	reached3[347] = 1;
	trans[3][347]	= settr(0,0,0,0,0,"pending_exp = (pending_exp|(1<<1))",0,0,0);
	trans[3][351]	= settr(1001,2,365,1,0,".(goto)", 1, 2, 0);
	trans[3][349]	= settr(999,2,365,1,0,"(1)", 1, 2, 0);
	T = trans[3][365] = settr(1015,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1015,2,352,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1015,2,363,0,0,"IF", 1, 2, 0);
	trans[3][352]	= settr(1002,2,357,397,0,"((((((pending_exp>>0)&1)&&((BASEPRI==0)||(15<BASEPRI)))||(((pending_exp>>1)&1)&&((BASEPRI==0)||(15<BASEPRI))))&&(EP>=2)))", 1, 2, 0);
	T = trans[3][357] = settr(1007,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1007,2,353,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1007,2,355,0,0,"IF", 1, 2, 0);
	trans[3][353]	= settr(1003,2,361,398,398,"((EP>=2))", 1, 2, 0); /* m: 354 -> 361,0 */
	reached3[354] = 1;
	trans[3][354]	= settr(0,0,0,0,0,"chain_tick_used = 0",0,0,0);
	trans[3][358]	= settr(1008,2,361,1,0,".(goto)", 1, 2, 0);
	trans[3][355]	= settr(1005,2,356,2,0,"else", 1, 2, 0);
	trans[3][356]	= settr(1006,2,361,1,0,"(1)", 1, 2, 0);
	T = trans[ 3][361] = settr(1011,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1011,0,359,0,0,"sub-sequence", 1, 2, 0);
	trans[3][359]	= settr(1009,4,392,399,399,"assert((EP_Stack==255))", 1, 2, 0); /* m: 360 -> 0,392 */
	reached3[360] = 1;
	trans[3][360]	= settr(0,0,0,0,0,"EP_Stack = EP",0,0,0);
	trans[3][362]	= settr(0,0,0,0,0,"EP = ( (((pending_exp>>0)&1)) -> (0) : (1) )",0,0,0);
	trans[3][366]	= settr(1016,0,392,400,400,".(goto)", 1, 2, 0);
	trans[3][363]	= settr(1013,2,364,2,0,"else", 1, 2, 0);
	trans[3][364]	= settr(1014,4,392,401,401,"(1)", 1, 2, 0); /* m: 366 -> 392,0 */
	reached3[366] = 1;
	T = trans[ 3][392] = settr(1042,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(1042,2,368,0,0,"ATOMIC", 1, 2, 0);
	trans[3][368]	= settr(1018,2,375,402,402,"(((2+1)==EP))", 1, 2, 0); /* m: 369 -> 375,0 */
	reached3[369] = 1;
	trans[3][369]	= settr(0,0,0,0,0,"assert((EP==(2+1)))",0,0,0);
	T = trans[3][375] = settr(1025,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1025,2,370,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1025,2,374,0,0,"IF", 1, 2, 0);
	trans[3][370]	= settr(1020,2,373,1,0,"(1)", 1, 2, 0);
	T = trans[ 3][373] = settr(1023,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1023,0,371,0,0,"sub-sequence", 1, 2, 0);
	trans[3][371]	= settr(1021,2,390,403,403,"assert(((1<2)&&(1<8)))", 1, 2, 0); /* m: 372 -> 0,390 */
	reached3[372] = 1;
	trans[3][372]	= settr(0,0,0,0,0,"pending_exp = (pending_exp|(1<<1))",0,0,0);
	trans[3][376]	= settr(1026,2,390,1,0,".(goto)", 1, 2, 0);
	trans[3][374]	= settr(1024,2,390,1,0,"(1)", 1, 2, 0);
	T = trans[3][390] = settr(1040,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1040,2,377,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1040,2,388,0,0,"IF", 1, 2, 0);
	trans[3][377]	= settr(1027,2,382,404,0,"((((((pending_exp>>0)&1)&&((BASEPRI==0)||(15<BASEPRI)))||(((pending_exp>>1)&1)&&((BASEPRI==0)||(15<BASEPRI))))&&(EP>=2)))", 1, 2, 0);
	T = trans[3][382] = settr(1032,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1032,2,378,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1032,2,380,0,0,"IF", 1, 2, 0);
	trans[3][378]	= settr(1028,2,386,405,405,"((EP>=2))", 1, 2, 0); /* m: 379 -> 386,0 */
	reached3[379] = 1;
	trans[3][379]	= settr(0,0,0,0,0,"chain_tick_used = 0",0,0,0);
	trans[3][383]	= settr(1033,2,386,1,0,".(goto)", 1, 2, 0);
	trans[3][380]	= settr(1030,2,381,2,0,"else", 1, 2, 0);
	trans[3][381]	= settr(1031,2,386,1,0,"(1)", 1, 2, 0);
	T = trans[ 3][386] = settr(1036,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1036,0,384,0,0,"sub-sequence", 1, 2, 0);
	trans[3][384]	= settr(1034,4,591,406,406,"assert((EP_Stack==255))", 1, 2, 0); /* m: 385 -> 0,591 */
	reached3[385] = 1;
	trans[3][385]	= settr(0,0,0,0,0,"EP_Stack = EP",0,0,0);
	trans[3][387]	= settr(0,0,0,0,0,"EP = ( (((pending_exp>>0)&1)) -> (0) : (1) )",0,0,0);
	trans[3][391]	= settr(1041,0,591,407,407,".(goto)", 1, 2, 0);
	trans[3][388]	= settr(1038,2,389,2,0,"else", 1, 2, 0);
	trans[3][389]	= settr(1039,4,591,408,408,"(1)", 1, 2, 0); /* m: 391 -> 591,0 */
	reached3[391] = 1;
	T = trans[ 3][591] = settr(1241,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(1241,2,393,0,0,"ATOMIC", 1, 2, 0);
	trans[3][393]	= settr(1043,2,568,409,0,"(((2+1)==EP))", 1, 2, 0);
	T = trans[ 3][568] = settr(1218,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1218,0,394,0,0,"sub-sequence", 1, 2, 0);
	trans[3][394]	= settr(1044,2,399,410,410,"intSave = 0", 1, 2, 0); /* m: 395 -> 0,399 */
	reached3[395] = 1;
	trans[3][395]	= settr(0,0,0,0,0,"needSched = 0",0,0,0);
	trans[3][396]	= settr(0,0,0,0,0,"currentTask = EP",0,0,0);
	trans[3][397]	= settr(0,0,0,0,0,"assert(g_taskScheduled)",0,0,0);
	T = trans[ 3][399] = settr(1049,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1049,0,398,0,0,"sub-sequence", 1, 2, 0);
	trans[3][398]	= settr(1048,2,566,411,411,"intSave = 0", 1, 2, 0);
	T = trans[3][566] = settr(1216,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1216,2,400,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1216,2,406,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1216,2,564,0,0,"IF", 1, 2, 0);
	trans[3][400]	= settr(1050,2,405,412,0,"((0==0))", 1, 2, 0);
	T = trans[ 3][405] = settr(1055,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1055,0,404,0,0,"sub-sequence", 1, 2, 0);
	T = trans[ 3][404] = settr(1054,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1054,0,403,0,0,"sub-sequence", 1, 2, 0);
	T = trans[ 3][403] = settr(1053,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1053,0,401,0,0,"sub-sequence", 1, 2, 0);
	trans[3][401]	= settr(1051,2,574,413,413,"assert(((0<2)&&(0<8)))", 1, 2, 0); /* m: 402 -> 0,574 */
	reached3[402] = 1;
	trans[3][402]	= settr(0,0,0,0,0,"pending_exp = (pending_exp|(1<<0))",0,0,0);
	trans[3][567]	= settr(1217,2,574,1,0,".(goto)", 1, 2, 0);
	trans[3][406]	= settr(1056,2,557,414,0,"((0>0))", 1, 2, 0);
	T = trans[ 3][557] = settr(1207,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1207,0,407,0,0,"sub-sequence", 1, 2, 0);
	trans[3][407]	= settr(1057,2,444,415,415,"assert(((tcb[currentTask].state==1)||(tcb[currentTask].state==4)))", 1, 2, 0); /* m: 408 -> 0,444 */
	reached3[408] = 1;
	trans[3][408]	= settr(0,0,0,0,0,"needSched = 1",0,0,0);
	T = trans[3][444] = settr(1094,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1094,2,409,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1094,2,442,0,0,"IF", 1, 2, 0);
	trans[3][409]	= settr(1059,2,441,416,0,"((tcb[currentTask].state==1))", 1, 2, 0);
	T = trans[ 3][441] = settr(1091,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1091,0,410,0,0,"sub-sequence", 1, 2, 0);
	trans[3][410]	= settr(1060,2,422,417,417,"idx = 0", 1, 2, 0); /* m: 411 -> 0,422 */
	reached3[411] = 1;
	trans[3][411]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[3][412]	= settr(0,0,0,0,0,"prioLevel = tcb[currentTask].prio",0,0,0);
	trans[3][423]	= settr(1073,2,422,1,0,".(goto)", 1, 2, 0);
	T = trans[3][422] = settr(1072,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(1072,2,413,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(1072,2,420,0,0,"DO", 1, 2, 0);
	trans[3][413]	= settr(1063,2,418,418,0,"(((idx<readyQueue[prioLevel].tailIndex)&&!(found)))", 1, 2, 0);
	T = trans[3][418] = settr(1068,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1068,2,414,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1068,2,416,0,0,"IF", 1, 2, 0);
	trans[3][414]	= settr(1064,2,422,419,419,"((readyQueue[prioLevel].tasks[idx]==currentTask))", 1, 2, 0); /* m: 415 -> 422,0 */
	reached3[415] = 1;
	trans[3][415]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[3][419]	= settr(1069,2,422,1,0,".(goto)", 1, 2, 0);
	trans[3][416]	= settr(1066,2,417,2,0,"else", 1, 2, 0);
	trans[3][417]	= settr(1067,2,422,420,420,"idx = (idx+1)", 1, 2, 0);
	trans[3][420]	= settr(1070,2,425,2,0,"else", 1, 2, 0);
	trans[3][421]	= settr(1071,2,425,1,0,"goto :b29", 1, 2, 0); /* m: 425 -> 0,431 */
	reached3[425] = 1;
	trans[3][424]	= settr(1074,2,425,1,0,"break", 1, 2, 0);
	trans[3][425]	= settr(1075,2,431,421,421,"assert((found==1))", 1, 2, 0);
	trans[3][432]	= settr(1082,2,431,1,0,".(goto)", 1, 2, 0);
	T = trans[3][431] = settr(1081,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(1081,2,426,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(1081,2,429,0,0,"DO", 1, 2, 0);
	trans[3][426]	= settr(1076,2,431,422,422,"((idx<(readyQueue[prioLevel].tailIndex-1)))", 1, 2, 0); /* m: 427 -> 431,0 */
	reached3[427] = 1;
	trans[3][427]	= settr(0,0,0,0,0,"readyQueue[prioLevel].tasks[idx] = readyQueue[prioLevel].tasks[(idx+1)]",0,0,0);
	trans[3][428]	= settr(0,0,0,0,0,"idx = (idx+1)",0,0,0);
	trans[3][429]	= settr(1079,2,439,2,0,"else", 1, 2, 0);
	trans[3][430]	= settr(1080,2,439,1,0,"goto :b30", 1, 2, 0);
	trans[3][433]	= settr(1083,2,439,1,0,"break", 1, 2, 0);
	T = trans[3][439] = settr(1089,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1089,2,434,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1089,2,437,0,0,"IF", 1, 2, 0);
	trans[3][434]	= settr(1084,2,556,423,423,"((readyQueue[prioLevel].tailIndex>0))", 1, 2, 0); /* m: 435 -> 556,0 */
	reached3[435] = 1;
	trans[3][435]	= settr(0,0,0,0,0,"readyQueue[prioLevel].tasks[(readyQueue[prioLevel].tailIndex-1)] = 255",0,0,0);
	trans[3][436]	= settr(0,0,0,0,0,"readyQueue[prioLevel].tailIndex = (readyQueue[prioLevel].tailIndex-1)",0,0,0);
	trans[3][440]	= settr(1090,2,446,1,0,".(goto)", 1, 2, 0); /* m: 446 -> 0,556 */
	reached3[446] = 1;
	trans[3][437]	= settr(1087,2,438,2,0,"else", 1, 2, 0);
	trans[3][438]	= settr(1088,2,556,424,424,"(1)", 1, 2, 0); /* m: 446 -> 556,0 */
	reached3[446] = 1;
	trans[3][445]	= settr(1095,2,446,1,0,".(goto)", 1, 2, 0); /* m: 446 -> 0,556 */
	reached3[446] = 1;
	trans[3][442]	= settr(1092,2,443,2,0,"else", 1, 2, 0);
	trans[3][443]	= settr(1093,2,556,425,425,"(1)", 1, 2, 0); /* m: 446 -> 556,0 */
	reached3[446] = 1;
	trans[3][446]	= settr(1096,2,556,426,426,"tcb[currentTask].state = 2", 1, 2, 0);
	T = trans[ 3][556] = settr(1206,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1206,0,447,0,0,"sub-sequence", 1, 2, 0);
	trans[3][447]	= settr(1097,2,554,427,427,"insertPos = 0", 1, 2, 0); /* m: 448 -> 0,554 */
	reached3[448] = 1;
	trans[3][448]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[3][449]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[3][450]	= settr(0,0,0,0,0,"tmpId = 0",0,0,0);
	trans[3][451]	= settr(0,0,0,0,0,"tmpTime = 0",0,0,0);
	trans[3][452]	= settr(0,0,0,0,0,"willOverflow = 0",0,0,0);
	trans[3][453]	= settr(0,0,0,0,0,"assert((tcb[currentTask].pendList==255))",0,0,0);
	trans[3][454]	= settr(0,0,0,0,0,"willOverflow = ((g_tickCount+0)<g_tickCount)",0,0,0);
	T = trans[3][554] = settr(1204,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1204,2,455,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1204,2,499,0,0,"IF", 1, 2, 0);
	trans[3][455]	= settr(1105,2,468,428,428,"(willOverflow)", 1, 2, 0); /* m: 456 -> 468,0 */
	reached3[456] = 1;
	trans[3][456]	= settr(0,0,0,0,0,"assert((overflowedSortLinkTail<(2+1)))",0,0,0);
	trans[3][457]	= settr(0,0,0,0,0,"insertPos = 0",0,0,0);
	trans[3][458]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[3][469]	= settr(1119,2,468,1,0,".(goto)", 1, 2, 0);
	T = trans[3][468] = settr(1118,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(1118,2,459,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(1118,2,466,0,0,"DO", 1, 2, 0);
	trans[3][459]	= settr(1109,2,464,429,0,"(((insertPos<overflowedSortLinkTail)&&(found==0)))", 1, 2, 0);
	T = trans[3][464] = settr(1114,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1114,2,460,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1114,2,462,0,0,"IF", 1, 2, 0);
	trans[3][460]	= settr(1110,2,468,430,430,"(((g_tickCount+0)<overflowedSortLink[insertPos].responseTime))", 1, 2, 0); /* m: 461 -> 468,0 */
	reached3[461] = 1;
	trans[3][461]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[3][465]	= settr(1115,2,468,1,0,".(goto)", 1, 2, 0);
	trans[3][462]	= settr(1112,2,463,2,0,"else", 1, 2, 0);
	trans[3][463]	= settr(1113,2,468,431,431,"insertPos = (insertPos+1)", 1, 2, 0);
	trans[3][466]	= settr(1116,2,471,2,0,"else", 1, 2, 0);
	trans[3][467]	= settr(1117,2,471,1,0,"goto :b31", 1, 2, 0); /* m: 471 -> 0,486 */
	reached3[471] = 1;
	trans[3][470]	= settr(1120,2,471,1,0,"break", 1, 2, 0);
	trans[3][471]	= settr(1121,2,486,432,432,"idx = overflowedSortLinkTail", 1, 2, 0);
	trans[3][487]	= settr(1137,2,486,1,0,".(goto)", 1, 2, 0);
	T = trans[3][486] = settr(1136,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(1136,2,472,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(1136,2,484,0,0,"DO", 1, 2, 0);
	trans[3][472]	= settr(1122,2,481,433,433,"((idx>insertPos))", 1, 2, 0); /* m: 473 -> 481,0 */
	reached3[473] = 1;
	trans[3][473]	= settr(0,0,0,0,0,"tmpId = overflowedSortLink[(idx-1)].taskId",0,0,0);
	trans[3][474]	= settr(0,0,0,0,0,"tmpTime = overflowedSortLink[(idx-1)].responseTime",0,0,0);
	trans[3][475]	= settr(0,0,0,0,0,"overflowedSortLink[idx].taskId = tmpId",0,0,0);
	trans[3][476]	= settr(0,0,0,0,0,"overflowedSortLink[idx].responseTime = tmpTime",0,0,0);
	T = trans[3][481] = settr(1131,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1131,2,477,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1131,2,479,0,0,"IF", 1, 2, 0);
	trans[3][477]	= settr(1127,2,486,434,434,"((tmpId!=255))", 1, 2, 0); /* m: 478 -> 486,0 */
	reached3[478] = 1;
	trans[3][478]	= settr(0,0,0,0,0,"tcb[tmpId].pendList = (128+idx)",0,0,0);
	trans[3][482]	= settr(1132,2,483,1,0,".(goto)", 1, 2, 0); /* m: 483 -> 0,486 */
	reached3[483] = 1;
	trans[3][479]	= settr(1129,2,480,2,0,"else", 1, 2, 0);
	trans[3][480]	= settr(1130,2,486,435,435,"(1)", 1, 2, 0); /* m: 483 -> 486,0 */
	reached3[483] = 1;
	trans[3][483]	= settr(1133,2,486,436,436,"idx = (idx-1)", 1, 2, 0);
	trans[3][484]	= settr(1134,2,489,2,0,"else", 1, 2, 0);
	trans[3][485]	= settr(1135,2,489,1,0,"goto :b32", 1, 2, 0); /* m: 489 -> 0,497 */
	reached3[489] = 1;
	trans[3][488]	= settr(1138,2,489,1,0,"break", 1, 2, 0);
	trans[3][489]	= settr(1139,2,497,437,437,"overflowedSortLink[insertPos].taskId = currentTask", 1, 2, 0); /* m: 490 -> 0,497 */
	reached3[490] = 1;
	trans[3][490]	= settr(0,0,0,0,0,"overflowedSortLink[insertPos].responseTime = (g_tickCount+0)",0,0,0);
	trans[3][491]	= settr(0,0,0,0,0,"tcb[currentTask].pendList = (128+insertPos)",0,0,0);
	trans[3][492]	= settr(0,0,0,0,0,"overflowedSortLinkTail = (overflowedSortLinkTail+1)",0,0,0);
	T = trans[3][497] = settr(1147,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1147,2,493,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1147,2,495,0,0,"IF", 1, 2, 0);
	trans[3][493]	= settr(1143,2,559,438,438,"(((insertPos==0)&&((g_tickCount+0)<255)))", 1, 2, 0); /* m: 494 -> 559,0 */
	reached3[494] = 1;
	trans[3][494]	= settr(0,0,0,0,0,"g_overflowedResponseTime = (g_tickCount+0)",0,0,0);
	trans[3][498]	= settr(1148,2,559,1,0,".(goto)", 1, 2, 0);
	trans[3][495]	= settr(1145,2,496,2,0,"else", 1, 2, 0);
	trans[3][496]	= settr(1146,2,559,1,0,"(1)", 1, 2, 0);
	trans[3][555]	= settr(1205,2,559,1,0,".(goto)", 1, 2, 0);
	trans[3][499]	= settr(1149,2,500,2,0,"else", 1, 2, 0);
	trans[3][500]	= settr(1150,2,512,439,439,"assert((g_taskSortLinkTail<(2+1)))", 1, 2, 0); /* m: 501 -> 0,512 */
	reached3[501] = 1;
	trans[3][501]	= settr(0,0,0,0,0,"insertPos = 0",0,0,0);
	trans[3][502]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[3][513]	= settr(1163,2,512,1,0,".(goto)", 1, 2, 0);
	T = trans[3][512] = settr(1162,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(1162,2,503,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(1162,2,510,0,0,"DO", 1, 2, 0);
	trans[3][503]	= settr(1153,2,508,440,0,"(((insertPos<g_taskSortLinkTail)&&(found==0)))", 1, 2, 0);
	T = trans[3][508] = settr(1158,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1158,2,504,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1158,2,506,0,0,"IF", 1, 2, 0);
	trans[3][504]	= settr(1154,2,512,441,441,"(((g_tickCount+0)<g_taskSortLink[insertPos].responseTime))", 1, 2, 0); /* m: 505 -> 512,0 */
	reached3[505] = 1;
	trans[3][505]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[3][509]	= settr(1159,2,512,1,0,".(goto)", 1, 2, 0);
	trans[3][506]	= settr(1156,2,507,2,0,"else", 1, 2, 0);
	trans[3][507]	= settr(1157,2,512,442,442,"insertPos = (insertPos+1)", 1, 2, 0);
	trans[3][510]	= settr(1160,2,515,2,0,"else", 1, 2, 0);
	trans[3][511]	= settr(1161,2,515,1,0,"goto :b33", 1, 2, 0); /* m: 515 -> 0,530 */
	reached3[515] = 1;
	trans[3][514]	= settr(1164,2,515,1,0,"break", 1, 2, 0);
	trans[3][515]	= settr(1165,2,530,443,443,"idx = g_taskSortLinkTail", 1, 2, 0);
	trans[3][531]	= settr(1181,2,530,1,0,".(goto)", 1, 2, 0);
	T = trans[3][530] = settr(1180,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(1180,2,516,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(1180,2,528,0,0,"DO", 1, 2, 0);
	trans[3][516]	= settr(1166,2,525,444,444,"((idx>insertPos))", 1, 2, 0); /* m: 517 -> 525,0 */
	reached3[517] = 1;
	trans[3][517]	= settr(0,0,0,0,0,"tmpId = g_taskSortLink[(idx-1)].taskId",0,0,0);
	trans[3][518]	= settr(0,0,0,0,0,"tmpTime = g_taskSortLink[(idx-1)].responseTime",0,0,0);
	trans[3][519]	= settr(0,0,0,0,0,"g_taskSortLink[idx].taskId = tmpId",0,0,0);
	trans[3][520]	= settr(0,0,0,0,0,"g_taskSortLink[idx].responseTime = tmpTime",0,0,0);
	T = trans[3][525] = settr(1175,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1175,2,521,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1175,2,523,0,0,"IF", 1, 2, 0);
	trans[3][521]	= settr(1171,2,530,445,445,"((tmpId!=255))", 1, 2, 0); /* m: 522 -> 530,0 */
	reached3[522] = 1;
	trans[3][522]	= settr(0,0,0,0,0,"tcb[tmpId].pendList = idx",0,0,0);
	trans[3][526]	= settr(1176,2,527,1,0,".(goto)", 1, 2, 0); /* m: 527 -> 0,530 */
	reached3[527] = 1;
	trans[3][523]	= settr(1173,2,524,2,0,"else", 1, 2, 0);
	trans[3][524]	= settr(1174,2,530,446,446,"(1)", 1, 2, 0); /* m: 527 -> 530,0 */
	reached3[527] = 1;
	trans[3][527]	= settr(1177,2,530,447,447,"idx = (idx-1)", 1, 2, 0);
	trans[3][528]	= settr(1178,2,533,2,0,"else", 1, 2, 0);
	trans[3][529]	= settr(1179,2,533,1,0,"goto :b34", 1, 2, 0); /* m: 533 -> 0,541 */
	reached3[533] = 1;
	trans[3][532]	= settr(1182,2,533,1,0,"break", 1, 2, 0);
	trans[3][533]	= settr(1183,2,541,448,448,"g_taskSortLink[insertPos].taskId = currentTask", 1, 2, 0); /* m: 534 -> 0,541 */
	reached3[534] = 1;
	trans[3][534]	= settr(0,0,0,0,0,"g_taskSortLink[insertPos].responseTime = (g_tickCount+0)",0,0,0);
	trans[3][535]	= settr(0,0,0,0,0,"tcb[currentTask].pendList = insertPos",0,0,0);
	trans[3][536]	= settr(0,0,0,0,0,"g_taskSortLinkTail = (g_taskSortLinkTail+1)",0,0,0);
	T = trans[3][541] = settr(1191,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1191,2,537,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1191,2,539,0,0,"IF", 1, 2, 0);
	trans[3][537]	= settr(1187,2,553,449,449,"(((insertPos==0)&&((g_tickCount+0)<255)))", 1, 2, 0); /* m: 538 -> 553,0 */
	reached3[538] = 1;
	trans[3][538]	= settr(0,0,0,0,0,"g_schedResponseTime = (g_tickCount+0)",0,0,0);
	trans[3][542]	= settr(1192,2,553,1,0,".(goto)", 1, 2, 0);
	trans[3][539]	= settr(1189,2,540,2,0,"else", 1, 2, 0);
	trans[3][540]	= settr(1190,2,553,1,0,"(1)", 1, 2, 0);
	T = trans[ 3][553] = settr(1203,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1203,0,543,0,0,"sub-sequence", 1, 2, 0);
	trans[3][543]	= settr(1193,2,550,450,450,"checkIdx = 0", 1, 2, 0); /* m: 544 -> 0,550 */
	reached3[544] = 1;
	trans[3][544]	= settr(0,0,0,0,0,"isValid = 1",0,0,0);
	trans[3][551]	= settr(1201,2,550,1,0,".(goto)", 1, 2, 0);
	T = trans[3][550] = settr(1200,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(1200,2,545,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(1200,2,548,0,0,"DO", 1, 2, 0);
	trans[3][545]	= settr(1195,2,550,451,451,"((checkIdx<(g_taskSortLinkTail-1)))", 1, 2, 0); /* m: 546 -> 550,0 */
	reached3[546] = 1;
	trans[3][546]	= settr(0,0,0,0,0,"assert((g_taskSortLink[checkIdx].responseTime<=g_taskSortLink[(checkIdx+1)].responseTime))",0,0,0);
	trans[3][547]	= settr(0,0,0,0,0,"checkIdx = (checkIdx+1)",0,0,0);
	trans[3][548]	= settr(1198,2,559,2,0,"else", 1, 2, 0);
	trans[3][549]	= settr(1199,2,559,1,0,"goto :b35", 1, 2, 0);
	trans[3][552]	= settr(1202,2,559,1,0,"break", 1, 2, 0);
	T = trans[ 3][559] = settr(1209,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1209,0,558,0,0,"sub-sequence", 1, 2, 0);
	trans[3][558]	= settr(1208,2,563,452,452,"intSave = 0", 1, 2, 0);
	T = trans[ 3][563] = settr(1213,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1213,0,562,0,0,"sub-sequence", 1, 2, 0);
	T = trans[ 3][562] = settr(1212,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1212,0,560,0,0,"sub-sequence", 1, 2, 0);
	trans[3][560]	= settr(1210,2,574,453,453,"assert(((0<2)&&(0<8)))", 1, 2, 0); /* m: 561 -> 0,574 */
	reached3[561] = 1;
	trans[3][561]	= settr(0,0,0,0,0,"pending_exp = (pending_exp|(1<<0))",0,0,0);
	trans[3][564]	= settr(1214,2,565,2,0,"else", 1, 2, 0);
	trans[3][565]	= settr(1215,2,574,1,0,"(1)", 1, 2, 0);
	T = trans[3][574] = settr(1224,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1224,2,569,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1224,2,573,0,0,"IF", 1, 2, 0);
	trans[3][569]	= settr(1219,2,572,1,0,"(1)", 1, 2, 0);
	T = trans[ 3][572] = settr(1222,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1222,0,570,0,0,"sub-sequence", 1, 2, 0);
	trans[3][570]	= settr(1220,2,589,454,454,"assert(((1<2)&&(1<8)))", 1, 2, 0); /* m: 571 -> 0,589 */
	reached3[571] = 1;
	trans[3][571]	= settr(0,0,0,0,0,"pending_exp = (pending_exp|(1<<1))",0,0,0);
	trans[3][575]	= settr(1225,2,589,1,0,".(goto)", 1, 2, 0);
	trans[3][573]	= settr(1223,2,589,1,0,"(1)", 1, 2, 0);
	T = trans[3][589] = settr(1239,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1239,2,576,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1239,2,587,0,0,"IF", 1, 2, 0);
	trans[3][576]	= settr(1226,2,581,455,0,"((((((pending_exp>>0)&1)&&((BASEPRI==0)||(15<BASEPRI)))||(((pending_exp>>1)&1)&&((BASEPRI==0)||(15<BASEPRI))))&&(EP>=2)))", 1, 2, 0);
	T = trans[3][581] = settr(1231,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1231,2,577,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1231,2,579,0,0,"IF", 1, 2, 0);
	trans[3][577]	= settr(1227,2,585,456,456,"((EP>=2))", 1, 2, 0); /* m: 578 -> 585,0 */
	reached3[578] = 1;
	trans[3][578]	= settr(0,0,0,0,0,"chain_tick_used = 0",0,0,0);
	trans[3][582]	= settr(1232,2,585,1,0,".(goto)", 1, 2, 0);
	trans[3][579]	= settr(1229,2,580,2,0,"else", 1, 2, 0);
	trans[3][580]	= settr(1230,2,585,1,0,"(1)", 1, 2, 0);
	T = trans[ 3][585] = settr(1235,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1235,0,583,0,0,"sub-sequence", 1, 2, 0);
	trans[3][583]	= settr(1233,0,592,457,457,"assert((EP_Stack==255))", 1, 2, 0); /* m: 584 -> 0,592 */
	reached3[584] = 1;
	trans[3][584]	= settr(0,0,0,0,0,"EP_Stack = EP",0,0,0);
	trans[3][586]	= settr(0,0,0,0,0,"EP = ( (((pending_exp>>0)&1)) -> (0) : (1) )",0,0,0);
	trans[3][590]	= settr(1240,0,592,458,458,".(goto)", 1, 2, 0);
	trans[3][587]	= settr(1237,2,588,2,0,"else", 1, 2, 0);
	trans[3][588]	= settr(1238,0,592,459,459,"(1)", 1, 2, 0); /* m: 590 -> 592,0 */
	reached3[590] = 1;
	trans[3][594]	= settr(1244,0,595,1,0,"break", 0, 2, 0);
	trans[3][595]	= settr(1245,0,0,460,460,"-end-", 0, 3500, 0);

	/* proctype 2: Process1 */

	trans[2] = (Trans **) emalloc(254*sizeof(Trans *));

	trans[2][251]	= settr(648,0,250,1,0,".(goto)", 0, 2, 0);
	T = trans[2][250] = settr(647,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(647,0,25,0,0,"DO", 0, 2, 0);
	T = trans[ 2][25] = settr(422,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(422,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[2][1]	= settr(398,2,8,461,461,"((2==EP))", 1, 2, 0); /* m: 2 -> 8,0 */
	reached2[2] = 1;
	trans[2][2]	= settr(0,0,0,0,0,"printf('Process1 running\\\\n')",0,0,0);
	T = trans[2][8] = settr(405,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(405,2,3,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(405,2,7,0,0,"IF", 1, 2, 0);
	trans[2][3]	= settr(400,2,6,1,0,"(1)", 1, 2, 0);
	T = trans[ 2][6] = settr(403,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(403,0,4,0,0,"sub-sequence", 1, 2, 0);
	trans[2][4]	= settr(401,2,23,462,462,"assert(((1<2)&&(1<8)))", 1, 2, 0); /* m: 5 -> 0,23 */
	reached2[5] = 1;
	trans[2][5]	= settr(0,0,0,0,0,"pending_exp = (pending_exp|(1<<1))",0,0,0);
	trans[2][9]	= settr(406,2,23,1,0,".(goto)", 1, 2, 0);
	trans[2][7]	= settr(404,2,23,1,0,"(1)", 1, 2, 0);
	T = trans[2][23] = settr(420,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(420,2,10,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(420,2,21,0,0,"IF", 1, 2, 0);
	trans[2][10]	= settr(407,2,15,463,0,"((((((pending_exp>>0)&1)&&((BASEPRI==0)||(15<BASEPRI)))||(((pending_exp>>1)&1)&&((BASEPRI==0)||(15<BASEPRI))))&&(EP>=2)))", 1, 2, 0);
	T = trans[2][15] = settr(412,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(412,2,11,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(412,2,13,0,0,"IF", 1, 2, 0);
	trans[2][11]	= settr(408,2,19,464,464,"((EP>=2))", 1, 2, 0); /* m: 12 -> 19,0 */
	reached2[12] = 1;
	trans[2][12]	= settr(0,0,0,0,0,"chain_tick_used = 0",0,0,0);
	trans[2][16]	= settr(413,2,19,1,0,".(goto)", 1, 2, 0);
	trans[2][13]	= settr(410,2,14,2,0,"else", 1, 2, 0);
	trans[2][14]	= settr(411,2,19,1,0,"(1)", 1, 2, 0);
	T = trans[ 2][19] = settr(416,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(416,0,17,0,0,"sub-sequence", 1, 2, 0);
	trans[2][17]	= settr(414,4,50,465,465,"assert((EP_Stack==255))", 1, 2, 0); /* m: 18 -> 0,50 */
	reached2[18] = 1;
	trans[2][18]	= settr(0,0,0,0,0,"EP_Stack = EP",0,0,0);
	trans[2][20]	= settr(0,0,0,0,0,"EP = ( (((pending_exp>>0)&1)) -> (0) : (1) )",0,0,0);
	trans[2][24]	= settr(421,0,50,466,466,".(goto)", 1, 2, 0);
	trans[2][21]	= settr(418,2,22,2,0,"else", 1, 2, 0);
	trans[2][22]	= settr(419,4,50,467,467,"(1)", 1, 2, 0); /* m: 24 -> 50,0 */
	reached2[24] = 1;
	T = trans[ 2][50] = settr(447,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(447,2,26,0,0,"ATOMIC", 1, 2, 0);
	trans[2][26]	= settr(423,2,33,468,468,"((2==EP))", 1, 2, 0); /* m: 27 -> 33,0 */
	reached2[27] = 1;
	trans[2][27]	= settr(0,0,0,0,0,"assert((EP==2))",0,0,0);
	T = trans[2][33] = settr(430,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(430,2,28,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(430,2,32,0,0,"IF", 1, 2, 0);
	trans[2][28]	= settr(425,2,31,1,0,"(1)", 1, 2, 0);
	T = trans[ 2][31] = settr(428,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(428,0,29,0,0,"sub-sequence", 1, 2, 0);
	trans[2][29]	= settr(426,2,48,469,469,"assert(((1<2)&&(1<8)))", 1, 2, 0); /* m: 30 -> 0,48 */
	reached2[30] = 1;
	trans[2][30]	= settr(0,0,0,0,0,"pending_exp = (pending_exp|(1<<1))",0,0,0);
	trans[2][34]	= settr(431,2,48,1,0,".(goto)", 1, 2, 0);
	trans[2][32]	= settr(429,2,48,1,0,"(1)", 1, 2, 0);
	T = trans[2][48] = settr(445,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(445,2,35,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(445,2,46,0,0,"IF", 1, 2, 0);
	trans[2][35]	= settr(432,2,40,470,0,"((((((pending_exp>>0)&1)&&((BASEPRI==0)||(15<BASEPRI)))||(((pending_exp>>1)&1)&&((BASEPRI==0)||(15<BASEPRI))))&&(EP>=2)))", 1, 2, 0);
	T = trans[2][40] = settr(437,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(437,2,36,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(437,2,38,0,0,"IF", 1, 2, 0);
	trans[2][36]	= settr(433,2,44,471,471,"((EP>=2))", 1, 2, 0); /* m: 37 -> 44,0 */
	reached2[37] = 1;
	trans[2][37]	= settr(0,0,0,0,0,"chain_tick_used = 0",0,0,0);
	trans[2][41]	= settr(438,2,44,1,0,".(goto)", 1, 2, 0);
	trans[2][38]	= settr(435,2,39,2,0,"else", 1, 2, 0);
	trans[2][39]	= settr(436,2,44,1,0,"(1)", 1, 2, 0);
	T = trans[ 2][44] = settr(441,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(441,0,42,0,0,"sub-sequence", 1, 2, 0);
	trans[2][42]	= settr(439,4,249,472,472,"assert((EP_Stack==255))", 1, 2, 0); /* m: 43 -> 0,249 */
	reached2[43] = 1;
	trans[2][43]	= settr(0,0,0,0,0,"EP_Stack = EP",0,0,0);
	trans[2][45]	= settr(0,0,0,0,0,"EP = ( (((pending_exp>>0)&1)) -> (0) : (1) )",0,0,0);
	trans[2][49]	= settr(446,0,249,473,473,".(goto)", 1, 2, 0);
	trans[2][46]	= settr(443,2,47,2,0,"else", 1, 2, 0);
	trans[2][47]	= settr(444,4,249,474,474,"(1)", 1, 2, 0); /* m: 49 -> 249,0 */
	reached2[49] = 1;
	T = trans[ 2][249] = settr(646,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(646,2,51,0,0,"ATOMIC", 1, 2, 0);
	trans[2][51]	= settr(448,2,226,475,0,"((2==EP))", 1, 2, 0);
	T = trans[ 2][226] = settr(623,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(623,0,52,0,0,"sub-sequence", 1, 2, 0);
	trans[2][52]	= settr(449,2,57,476,476,"intSave = 0", 1, 2, 0); /* m: 53 -> 0,57 */
	reached2[53] = 1;
	trans[2][53]	= settr(0,0,0,0,0,"needSched = 0",0,0,0);
	trans[2][54]	= settr(0,0,0,0,0,"currentTask = EP",0,0,0);
	trans[2][55]	= settr(0,0,0,0,0,"assert(g_taskScheduled)",0,0,0);
	T = trans[ 2][57] = settr(454,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(454,0,56,0,0,"sub-sequence", 1, 2, 0);
	trans[2][56]	= settr(453,2,224,477,477,"intSave = 0", 1, 2, 0);
	T = trans[2][224] = settr(621,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(621,2,58,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(621,2,64,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(621,2,222,0,0,"IF", 1, 2, 0);
	trans[2][58]	= settr(455,2,63,478,0,"((5==0))", 1, 2, 0);
	T = trans[ 2][63] = settr(460,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(460,0,62,0,0,"sub-sequence", 1, 2, 0);
	T = trans[ 2][62] = settr(459,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(459,0,61,0,0,"sub-sequence", 1, 2, 0);
	T = trans[ 2][61] = settr(458,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(458,0,59,0,0,"sub-sequence", 1, 2, 0);
	trans[2][59]	= settr(456,2,232,479,479,"assert(((0<2)&&(0<8)))", 1, 2, 0); /* m: 60 -> 0,232 */
	reached2[60] = 1;
	trans[2][60]	= settr(0,0,0,0,0,"pending_exp = (pending_exp|(1<<0))",0,0,0);
	trans[2][225]	= settr(622,2,232,1,0,".(goto)", 1, 2, 0);
	trans[2][64]	= settr(461,2,215,480,0,"((5>0))", 1, 2, 0);
	T = trans[ 2][215] = settr(612,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(612,0,65,0,0,"sub-sequence", 1, 2, 0);
	trans[2][65]	= settr(462,2,102,481,481,"assert(((tcb[currentTask].state==1)||(tcb[currentTask].state==4)))", 1, 2, 0); /* m: 66 -> 0,102 */
	reached2[66] = 1;
	trans[2][66]	= settr(0,0,0,0,0,"needSched = 1",0,0,0);
	T = trans[2][102] = settr(499,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(499,2,67,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(499,2,100,0,0,"IF", 1, 2, 0);
	trans[2][67]	= settr(464,2,99,482,0,"((tcb[currentTask].state==1))", 1, 2, 0);
	T = trans[ 2][99] = settr(496,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(496,0,68,0,0,"sub-sequence", 1, 2, 0);
	trans[2][68]	= settr(465,2,80,483,483,"idx = 0", 1, 2, 0); /* m: 69 -> 0,80 */
	reached2[69] = 1;
	trans[2][69]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[2][70]	= settr(0,0,0,0,0,"prioLevel = tcb[currentTask].prio",0,0,0);
	trans[2][81]	= settr(478,2,80,1,0,".(goto)", 1, 2, 0);
	T = trans[2][80] = settr(477,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(477,2,71,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(477,2,78,0,0,"DO", 1, 2, 0);
	trans[2][71]	= settr(468,2,76,484,0,"(((idx<readyQueue[prioLevel].tailIndex)&&!(found)))", 1, 2, 0);
	T = trans[2][76] = settr(473,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(473,2,72,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(473,2,74,0,0,"IF", 1, 2, 0);
	trans[2][72]	= settr(469,2,80,485,485,"((readyQueue[prioLevel].tasks[idx]==currentTask))", 1, 2, 0); /* m: 73 -> 80,0 */
	reached2[73] = 1;
	trans[2][73]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[2][77]	= settr(474,2,80,1,0,".(goto)", 1, 2, 0);
	trans[2][74]	= settr(471,2,75,2,0,"else", 1, 2, 0);
	trans[2][75]	= settr(472,2,80,486,486,"idx = (idx+1)", 1, 2, 0);
	trans[2][78]	= settr(475,2,83,2,0,"else", 1, 2, 0);
	trans[2][79]	= settr(476,2,83,1,0,"goto :b11", 1, 2, 0); /* m: 83 -> 0,89 */
	reached2[83] = 1;
	trans[2][82]	= settr(479,2,83,1,0,"break", 1, 2, 0);
	trans[2][83]	= settr(480,2,89,487,487,"assert((found==1))", 1, 2, 0);
	trans[2][90]	= settr(487,2,89,1,0,".(goto)", 1, 2, 0);
	T = trans[2][89] = settr(486,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(486,2,84,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(486,2,87,0,0,"DO", 1, 2, 0);
	trans[2][84]	= settr(481,2,89,488,488,"((idx<(readyQueue[prioLevel].tailIndex-1)))", 1, 2, 0); /* m: 85 -> 89,0 */
	reached2[85] = 1;
	trans[2][85]	= settr(0,0,0,0,0,"readyQueue[prioLevel].tasks[idx] = readyQueue[prioLevel].tasks[(idx+1)]",0,0,0);
	trans[2][86]	= settr(0,0,0,0,0,"idx = (idx+1)",0,0,0);
	trans[2][87]	= settr(484,2,97,2,0,"else", 1, 2, 0);
	trans[2][88]	= settr(485,2,97,1,0,"goto :b12", 1, 2, 0);
	trans[2][91]	= settr(488,2,97,1,0,"break", 1, 2, 0);
	T = trans[2][97] = settr(494,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(494,2,92,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(494,2,95,0,0,"IF", 1, 2, 0);
	trans[2][92]	= settr(489,2,214,489,489,"((readyQueue[prioLevel].tailIndex>0))", 1, 2, 0); /* m: 93 -> 214,0 */
	reached2[93] = 1;
	trans[2][93]	= settr(0,0,0,0,0,"readyQueue[prioLevel].tasks[(readyQueue[prioLevel].tailIndex-1)] = 255",0,0,0);
	trans[2][94]	= settr(0,0,0,0,0,"readyQueue[prioLevel].tailIndex = (readyQueue[prioLevel].tailIndex-1)",0,0,0);
	trans[2][98]	= settr(495,2,104,1,0,".(goto)", 1, 2, 0); /* m: 104 -> 0,214 */
	reached2[104] = 1;
	trans[2][95]	= settr(492,2,96,2,0,"else", 1, 2, 0);
	trans[2][96]	= settr(493,2,214,490,490,"(1)", 1, 2, 0); /* m: 104 -> 214,0 */
	reached2[104] = 1;
	trans[2][103]	= settr(500,2,104,1,0,".(goto)", 1, 2, 0); /* m: 104 -> 0,214 */
	reached2[104] = 1;
	trans[2][100]	= settr(497,2,101,2,0,"else", 1, 2, 0);
	trans[2][101]	= settr(498,2,214,491,491,"(1)", 1, 2, 0); /* m: 104 -> 214,0 */
	reached2[104] = 1;
	trans[2][104]	= settr(501,2,214,492,492,"tcb[currentTask].state = 2", 1, 2, 0);
	T = trans[ 2][214] = settr(611,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(611,0,105,0,0,"sub-sequence", 1, 2, 0);
	trans[2][105]	= settr(502,2,212,493,493,"insertPos = 0", 1, 2, 0); /* m: 106 -> 0,212 */
	reached2[106] = 1;
	trans[2][106]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[2][107]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[2][108]	= settr(0,0,0,0,0,"tmpId = 0",0,0,0);
	trans[2][109]	= settr(0,0,0,0,0,"tmpTime = 0",0,0,0);
	trans[2][110]	= settr(0,0,0,0,0,"willOverflow = 0",0,0,0);
	trans[2][111]	= settr(0,0,0,0,0,"assert((tcb[currentTask].pendList==255))",0,0,0);
	trans[2][112]	= settr(0,0,0,0,0,"willOverflow = ((g_tickCount+5)<g_tickCount)",0,0,0);
	T = trans[2][212] = settr(609,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(609,2,113,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(609,2,157,0,0,"IF", 1, 2, 0);
	trans[2][113]	= settr(510,2,126,494,494,"(willOverflow)", 1, 2, 0); /* m: 114 -> 126,0 */
	reached2[114] = 1;
	trans[2][114]	= settr(0,0,0,0,0,"assert((overflowedSortLinkTail<(2+1)))",0,0,0);
	trans[2][115]	= settr(0,0,0,0,0,"insertPos = 0",0,0,0);
	trans[2][116]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[2][127]	= settr(524,2,126,1,0,".(goto)", 1, 2, 0);
	T = trans[2][126] = settr(523,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(523,2,117,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(523,2,124,0,0,"DO", 1, 2, 0);
	trans[2][117]	= settr(514,2,122,495,0,"(((insertPos<overflowedSortLinkTail)&&(found==0)))", 1, 2, 0);
	T = trans[2][122] = settr(519,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(519,2,118,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(519,2,120,0,0,"IF", 1, 2, 0);
	trans[2][118]	= settr(515,2,126,496,496,"(((g_tickCount+5)<overflowedSortLink[insertPos].responseTime))", 1, 2, 0); /* m: 119 -> 126,0 */
	reached2[119] = 1;
	trans[2][119]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[2][123]	= settr(520,2,126,1,0,".(goto)", 1, 2, 0);
	trans[2][120]	= settr(517,2,121,2,0,"else", 1, 2, 0);
	trans[2][121]	= settr(518,2,126,497,497,"insertPos = (insertPos+1)", 1, 2, 0);
	trans[2][124]	= settr(521,2,129,2,0,"else", 1, 2, 0);
	trans[2][125]	= settr(522,2,129,1,0,"goto :b13", 1, 2, 0); /* m: 129 -> 0,144 */
	reached2[129] = 1;
	trans[2][128]	= settr(525,2,129,1,0,"break", 1, 2, 0);
	trans[2][129]	= settr(526,2,144,498,498,"idx = overflowedSortLinkTail", 1, 2, 0);
	trans[2][145]	= settr(542,2,144,1,0,".(goto)", 1, 2, 0);
	T = trans[2][144] = settr(541,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(541,2,130,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(541,2,142,0,0,"DO", 1, 2, 0);
	trans[2][130]	= settr(527,2,139,499,499,"((idx>insertPos))", 1, 2, 0); /* m: 131 -> 139,0 */
	reached2[131] = 1;
	trans[2][131]	= settr(0,0,0,0,0,"tmpId = overflowedSortLink[(idx-1)].taskId",0,0,0);
	trans[2][132]	= settr(0,0,0,0,0,"tmpTime = overflowedSortLink[(idx-1)].responseTime",0,0,0);
	trans[2][133]	= settr(0,0,0,0,0,"overflowedSortLink[idx].taskId = tmpId",0,0,0);
	trans[2][134]	= settr(0,0,0,0,0,"overflowedSortLink[idx].responseTime = tmpTime",0,0,0);
	T = trans[2][139] = settr(536,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(536,2,135,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(536,2,137,0,0,"IF", 1, 2, 0);
	trans[2][135]	= settr(532,2,144,500,500,"((tmpId!=255))", 1, 2, 0); /* m: 136 -> 144,0 */
	reached2[136] = 1;
	trans[2][136]	= settr(0,0,0,0,0,"tcb[tmpId].pendList = (128+idx)",0,0,0);
	trans[2][140]	= settr(537,2,141,1,0,".(goto)", 1, 2, 0); /* m: 141 -> 0,144 */
	reached2[141] = 1;
	trans[2][137]	= settr(534,2,138,2,0,"else", 1, 2, 0);
	trans[2][138]	= settr(535,2,144,501,501,"(1)", 1, 2, 0); /* m: 141 -> 144,0 */
	reached2[141] = 1;
	trans[2][141]	= settr(538,2,144,502,502,"idx = (idx-1)", 1, 2, 0);
	trans[2][142]	= settr(539,2,147,2,0,"else", 1, 2, 0);
	trans[2][143]	= settr(540,2,147,1,0,"goto :b14", 1, 2, 0); /* m: 147 -> 0,155 */
	reached2[147] = 1;
	trans[2][146]	= settr(543,2,147,1,0,"break", 1, 2, 0);
	trans[2][147]	= settr(544,2,155,503,503,"overflowedSortLink[insertPos].taskId = currentTask", 1, 2, 0); /* m: 148 -> 0,155 */
	reached2[148] = 1;
	trans[2][148]	= settr(0,0,0,0,0,"overflowedSortLink[insertPos].responseTime = (g_tickCount+5)",0,0,0);
	trans[2][149]	= settr(0,0,0,0,0,"tcb[currentTask].pendList = (128+insertPos)",0,0,0);
	trans[2][150]	= settr(0,0,0,0,0,"overflowedSortLinkTail = (overflowedSortLinkTail+1)",0,0,0);
	T = trans[2][155] = settr(552,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(552,2,151,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(552,2,153,0,0,"IF", 1, 2, 0);
	trans[2][151]	= settr(548,2,217,504,504,"(((insertPos==0)&&((g_tickCount+5)<255)))", 1, 2, 0); /* m: 152 -> 217,0 */
	reached2[152] = 1;
	trans[2][152]	= settr(0,0,0,0,0,"g_overflowedResponseTime = (g_tickCount+5)",0,0,0);
	trans[2][156]	= settr(553,2,217,1,0,".(goto)", 1, 2, 0);
	trans[2][153]	= settr(550,2,154,2,0,"else", 1, 2, 0);
	trans[2][154]	= settr(551,2,217,1,0,"(1)", 1, 2, 0);
	trans[2][213]	= settr(610,2,217,1,0,".(goto)", 1, 2, 0);
	trans[2][157]	= settr(554,2,158,2,0,"else", 1, 2, 0);
	trans[2][158]	= settr(555,2,170,505,505,"assert((g_taskSortLinkTail<(2+1)))", 1, 2, 0); /* m: 159 -> 0,170 */
	reached2[159] = 1;
	trans[2][159]	= settr(0,0,0,0,0,"insertPos = 0",0,0,0);
	trans[2][160]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[2][171]	= settr(568,2,170,1,0,".(goto)", 1, 2, 0);
	T = trans[2][170] = settr(567,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(567,2,161,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(567,2,168,0,0,"DO", 1, 2, 0);
	trans[2][161]	= settr(558,2,166,506,0,"(((insertPos<g_taskSortLinkTail)&&(found==0)))", 1, 2, 0);
	T = trans[2][166] = settr(563,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(563,2,162,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(563,2,164,0,0,"IF", 1, 2, 0);
	trans[2][162]	= settr(559,2,170,507,507,"(((g_tickCount+5)<g_taskSortLink[insertPos].responseTime))", 1, 2, 0); /* m: 163 -> 170,0 */
	reached2[163] = 1;
	trans[2][163]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[2][167]	= settr(564,2,170,1,0,".(goto)", 1, 2, 0);
	trans[2][164]	= settr(561,2,165,2,0,"else", 1, 2, 0);
	trans[2][165]	= settr(562,2,170,508,508,"insertPos = (insertPos+1)", 1, 2, 0);
	trans[2][168]	= settr(565,2,173,2,0,"else", 1, 2, 0);
	trans[2][169]	= settr(566,2,173,1,0,"goto :b15", 1, 2, 0); /* m: 173 -> 0,188 */
	reached2[173] = 1;
	trans[2][172]	= settr(569,2,173,1,0,"break", 1, 2, 0);
	trans[2][173]	= settr(570,2,188,509,509,"idx = g_taskSortLinkTail", 1, 2, 0);
	trans[2][189]	= settr(586,2,188,1,0,".(goto)", 1, 2, 0);
	T = trans[2][188] = settr(585,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(585,2,174,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(585,2,186,0,0,"DO", 1, 2, 0);
	trans[2][174]	= settr(571,2,183,510,510,"((idx>insertPos))", 1, 2, 0); /* m: 175 -> 183,0 */
	reached2[175] = 1;
	trans[2][175]	= settr(0,0,0,0,0,"tmpId = g_taskSortLink[(idx-1)].taskId",0,0,0);
	trans[2][176]	= settr(0,0,0,0,0,"tmpTime = g_taskSortLink[(idx-1)].responseTime",0,0,0);
	trans[2][177]	= settr(0,0,0,0,0,"g_taskSortLink[idx].taskId = tmpId",0,0,0);
	trans[2][178]	= settr(0,0,0,0,0,"g_taskSortLink[idx].responseTime = tmpTime",0,0,0);
	T = trans[2][183] = settr(580,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(580,2,179,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(580,2,181,0,0,"IF", 1, 2, 0);
	trans[2][179]	= settr(576,2,188,511,511,"((tmpId!=255))", 1, 2, 0); /* m: 180 -> 188,0 */
	reached2[180] = 1;
	trans[2][180]	= settr(0,0,0,0,0,"tcb[tmpId].pendList = idx",0,0,0);
	trans[2][184]	= settr(581,2,185,1,0,".(goto)", 1, 2, 0); /* m: 185 -> 0,188 */
	reached2[185] = 1;
	trans[2][181]	= settr(578,2,182,2,0,"else", 1, 2, 0);
	trans[2][182]	= settr(579,2,188,512,512,"(1)", 1, 2, 0); /* m: 185 -> 188,0 */
	reached2[185] = 1;
	trans[2][185]	= settr(582,2,188,513,513,"idx = (idx-1)", 1, 2, 0);
	trans[2][186]	= settr(583,2,191,2,0,"else", 1, 2, 0);
	trans[2][187]	= settr(584,2,191,1,0,"goto :b16", 1, 2, 0); /* m: 191 -> 0,199 */
	reached2[191] = 1;
	trans[2][190]	= settr(587,2,191,1,0,"break", 1, 2, 0);
	trans[2][191]	= settr(588,2,199,514,514,"g_taskSortLink[insertPos].taskId = currentTask", 1, 2, 0); /* m: 192 -> 0,199 */
	reached2[192] = 1;
	trans[2][192]	= settr(0,0,0,0,0,"g_taskSortLink[insertPos].responseTime = (g_tickCount+5)",0,0,0);
	trans[2][193]	= settr(0,0,0,0,0,"tcb[currentTask].pendList = insertPos",0,0,0);
	trans[2][194]	= settr(0,0,0,0,0,"g_taskSortLinkTail = (g_taskSortLinkTail+1)",0,0,0);
	T = trans[2][199] = settr(596,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(596,2,195,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(596,2,197,0,0,"IF", 1, 2, 0);
	trans[2][195]	= settr(592,2,211,515,515,"(((insertPos==0)&&((g_tickCount+5)<255)))", 1, 2, 0); /* m: 196 -> 211,0 */
	reached2[196] = 1;
	trans[2][196]	= settr(0,0,0,0,0,"g_schedResponseTime = (g_tickCount+5)",0,0,0);
	trans[2][200]	= settr(597,2,211,1,0,".(goto)", 1, 2, 0);
	trans[2][197]	= settr(594,2,198,2,0,"else", 1, 2, 0);
	trans[2][198]	= settr(595,2,211,1,0,"(1)", 1, 2, 0);
	T = trans[ 2][211] = settr(608,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(608,0,201,0,0,"sub-sequence", 1, 2, 0);
	trans[2][201]	= settr(598,2,208,516,516,"checkIdx = 0", 1, 2, 0); /* m: 202 -> 0,208 */
	reached2[202] = 1;
	trans[2][202]	= settr(0,0,0,0,0,"isValid = 1",0,0,0);
	trans[2][209]	= settr(606,2,208,1,0,".(goto)", 1, 2, 0);
	T = trans[2][208] = settr(605,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(605,2,203,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(605,2,206,0,0,"DO", 1, 2, 0);
	trans[2][203]	= settr(600,2,208,517,517,"((checkIdx<(g_taskSortLinkTail-1)))", 1, 2, 0); /* m: 204 -> 208,0 */
	reached2[204] = 1;
	trans[2][204]	= settr(0,0,0,0,0,"assert((g_taskSortLink[checkIdx].responseTime<=g_taskSortLink[(checkIdx+1)].responseTime))",0,0,0);
	trans[2][205]	= settr(0,0,0,0,0,"checkIdx = (checkIdx+1)",0,0,0);
	trans[2][206]	= settr(603,2,217,2,0,"else", 1, 2, 0);
	trans[2][207]	= settr(604,2,217,1,0,"goto :b17", 1, 2, 0);
	trans[2][210]	= settr(607,2,217,1,0,"break", 1, 2, 0);
	T = trans[ 2][217] = settr(614,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(614,0,216,0,0,"sub-sequence", 1, 2, 0);
	trans[2][216]	= settr(613,2,221,518,518,"intSave = 0", 1, 2, 0);
	T = trans[ 2][221] = settr(618,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(618,0,220,0,0,"sub-sequence", 1, 2, 0);
	T = trans[ 2][220] = settr(617,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(617,0,218,0,0,"sub-sequence", 1, 2, 0);
	trans[2][218]	= settr(615,2,232,519,519,"assert(((0<2)&&(0<8)))", 1, 2, 0); /* m: 219 -> 0,232 */
	reached2[219] = 1;
	trans[2][219]	= settr(0,0,0,0,0,"pending_exp = (pending_exp|(1<<0))",0,0,0);
	trans[2][222]	= settr(619,2,223,2,0,"else", 1, 2, 0);
	trans[2][223]	= settr(620,2,232,1,0,"(1)", 1, 2, 0);
	T = trans[2][232] = settr(629,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(629,2,227,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(629,2,231,0,0,"IF", 1, 2, 0);
	trans[2][227]	= settr(624,2,230,1,0,"(1)", 1, 2, 0);
	T = trans[ 2][230] = settr(627,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(627,0,228,0,0,"sub-sequence", 1, 2, 0);
	trans[2][228]	= settr(625,2,247,520,520,"assert(((1<2)&&(1<8)))", 1, 2, 0); /* m: 229 -> 0,247 */
	reached2[229] = 1;
	trans[2][229]	= settr(0,0,0,0,0,"pending_exp = (pending_exp|(1<<1))",0,0,0);
	trans[2][233]	= settr(630,2,247,1,0,".(goto)", 1, 2, 0);
	trans[2][231]	= settr(628,2,247,1,0,"(1)", 1, 2, 0);
	T = trans[2][247] = settr(644,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(644,2,234,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(644,2,245,0,0,"IF", 1, 2, 0);
	trans[2][234]	= settr(631,2,239,521,0,"((((((pending_exp>>0)&1)&&((BASEPRI==0)||(15<BASEPRI)))||(((pending_exp>>1)&1)&&((BASEPRI==0)||(15<BASEPRI))))&&(EP>=2)))", 1, 2, 0);
	T = trans[2][239] = settr(636,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(636,2,235,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(636,2,237,0,0,"IF", 1, 2, 0);
	trans[2][235]	= settr(632,2,243,522,522,"((EP>=2))", 1, 2, 0); /* m: 236 -> 243,0 */
	reached2[236] = 1;
	trans[2][236]	= settr(0,0,0,0,0,"chain_tick_used = 0",0,0,0);
	trans[2][240]	= settr(637,2,243,1,0,".(goto)", 1, 2, 0);
	trans[2][237]	= settr(634,2,238,2,0,"else", 1, 2, 0);
	trans[2][238]	= settr(635,2,243,1,0,"(1)", 1, 2, 0);
	T = trans[ 2][243] = settr(640,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(640,0,241,0,0,"sub-sequence", 1, 2, 0);
	trans[2][241]	= settr(638,0,250,523,523,"assert((EP_Stack==255))", 1, 2, 0); /* m: 242 -> 0,250 */
	reached2[242] = 1;
	trans[2][242]	= settr(0,0,0,0,0,"EP_Stack = EP",0,0,0);
	trans[2][244]	= settr(0,0,0,0,0,"EP = ( (((pending_exp>>0)&1)) -> (0) : (1) )",0,0,0);
	trans[2][248]	= settr(645,0,250,524,524,".(goto)", 1, 2, 0);
	trans[2][245]	= settr(642,2,246,2,0,"else", 1, 2, 0);
	trans[2][246]	= settr(643,0,250,525,525,"(1)", 1, 2, 0); /* m: 248 -> 250,0 */
	reached2[248] = 1;
	trans[2][252]	= settr(649,0,253,1,0,"break", 0, 2, 0);
	trans[2][253]	= settr(650,0,0,526,526,"-end-", 0, 3500, 0);

	/* proctype 1: SysTick_Handler */

	trans[1] = (Trans **) emalloc(201*sizeof(Trans *));

	trans[1][198]	= settr(395,0,197,1,0,".(goto)", 0, 2, 0);
	T = trans[1][197] = settr(394,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(394,0,1,0,0,"DO", 0, 2, 0);
	trans[1][1]	= settr(198,0,7,527,0,"((EP==1))", 1, 2, 0);
	T = trans[ 1][7] = settr(204,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(204,0,6,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][6] = settr(203,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(203,2,2,0,0,"ATOMIC", 1, 2, 0);
	trans[1][2]	= settr(199,2,5,528,0,"((EP==1))", 1, 2, 0);
	T = trans[ 1][5] = settr(202,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(202,0,3,0,0,"sub-sequence", 1, 2, 0);
	trans[1][3]	= settr(200,4,156,529,529,"assert(((1<2)&&(1<8)))", 1, 2, 0); /* m: 4 -> 0,156 */
	reached1[4] = 1;
	trans[1][4]	= settr(0,0,0,0,0,"pending_exp = (pending_exp&~((1<<1)))",0,0,0);
	T = trans[ 1][156] = settr(353,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(353,2,8,0,0,"ATOMIC", 1, 2, 0);
	trans[1][8]	= settr(205,2,146,530,0,"((1==EP))", 1, 2, 0);
	T = trans[ 1][146] = settr(343,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(343,0,9,0,0,"sub-sequence", 1, 2, 0);
	trans[1][9]	= settr(206,2,53,531,531,"idx = 0", 1, 2, 0); /* m: 10 -> 0,53 */
	reached1[10] = 1;
	trans[1][10]	= settr(0,0,0,0,0,"taskId = 0",0,0,0);
	trans[1][11]	= settr(0,0,0,0,0,"needSched = 0",0,0,0);
	trans[1][12]	= settr(0,0,0,0,0,"oldTickCount = g_tickCount",0,0,0);
	trans[1][13]	= settr(0,0,0,0,0,"g_tickCount = (g_tickCount+1)",0,0,0);
	T = trans[1][53] = settr(250,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(250,2,14,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(250,2,51,0,0,"IF", 1, 2, 0);
	trans[1][14]	= settr(211,2,29,532,532,"(((oldTickCount==255)&&(g_tickCount==0)))", 1, 2, 0); /* m: 15 -> 29,0 */
	reached1[15] = 1;
	trans[1][15]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[1][30]	= settr(227,2,29,1,0,".(goto)", 1, 2, 0);
	T = trans[1][29] = settr(226,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(226,2,16,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(226,2,27,0,0,"DO", 1, 2, 0);
	trans[1][16]	= settr(213,2,24,533,533,"((idx<overflowedSortLinkTail))", 1, 2, 0); /* m: 17 -> 24,0 */
	reached1[17] = 1;
	trans[1][17]	= settr(0,0,0,0,0,"newIdx = (g_taskSortLinkTail+idx)",0,0,0);
	trans[1][18]	= settr(0,0,0,0,0,"g_taskSortLink[newIdx].taskId = overflowedSortLink[idx].taskId",0,0,0);
	trans[1][19]	= settr(0,0,0,0,0,"g_taskSortLink[newIdx].responseTime = overflowedSortLink[idx].responseTime",0,0,0);
	T = trans[1][24] = settr(221,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(221,2,20,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(221,2,22,0,0,"IF", 1, 2, 0);
	trans[1][20]	= settr(217,2,29,534,534,"((g_taskSortLink[newIdx].taskId!=255))", 1, 2, 0); /* m: 21 -> 29,0 */
	reached1[21] = 1;
	trans[1][21]	= settr(0,0,0,0,0,"tcb[g_taskSortLink[newIdx].taskId].pendList = newIdx",0,0,0);
	trans[1][25]	= settr(222,2,26,1,0,".(goto)", 1, 2, 0); /* m: 26 -> 0,29 */
	reached1[26] = 1;
	trans[1][22]	= settr(219,2,23,2,0,"else", 1, 2, 0);
	trans[1][23]	= settr(220,2,29,535,535,"(1)", 1, 2, 0); /* m: 26 -> 29,0 */
	reached1[26] = 1;
	trans[1][26]	= settr(223,2,29,536,536,"idx = (idx+1)", 1, 2, 0);
	trans[1][27]	= settr(224,2,32,2,0,"else", 1, 2, 0);
	trans[1][28]	= settr(225,2,32,1,0,"goto :b5", 1, 2, 0); /* m: 32 -> 0,37 */
	reached1[32] = 1;
	trans[1][31]	= settr(228,2,32,1,0,"break", 1, 2, 0);
	trans[1][32]	= settr(229,2,37,537,537,"g_taskSortLinkTail = (g_taskSortLinkTail+overflowedSortLinkTail)", 1, 2, 0);
	T = trans[1][37] = settr(234,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(234,2,33,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(234,2,35,0,0,"IF", 1, 2, 0);
	trans[1][33]	= settr(230,2,48,538,538,"((g_taskSortLinkTail>0))", 1, 2, 0); /* m: 34 -> 48,0 */
	reached1[34] = 1;
	trans[1][34]	= settr(0,0,0,0,0,"g_schedResponseTime = g_taskSortLink[0].responseTime",0,0,0);
	trans[1][38]	= settr(235,2,39,1,0,".(goto)", 1, 2, 0); /* m: 39 -> 0,48 */
	reached1[39] = 1;
	trans[1][35]	= settr(232,2,36,2,0,"else", 1, 2, 0);
	trans[1][36]	= settr(233,2,48,539,539,"g_schedResponseTime = 255", 1, 2, 0); /* m: 39 -> 0,48 */
	reached1[39] = 1;
	trans[1][39]	= settr(236,2,48,540,540,"overflowedSortLinkTail = 0", 1, 2, 0); /* m: 40 -> 0,48 */
	reached1[40] = 1;
	trans[1][40]	= settr(0,0,0,0,0,"g_overflowedResponseTime = 255",0,0,0);
	trans[1][41]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[1][49]	= settr(246,2,48,1,0,".(goto)", 1, 2, 0);
	T = trans[1][48] = settr(245,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(245,2,42,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(245,2,46,0,0,"DO", 1, 2, 0);
	trans[1][42]	= settr(239,2,48,541,541,"((idx<(2+1)))", 1, 2, 0); /* m: 43 -> 48,0 */
	reached1[43] = 1;
	trans[1][43]	= settr(0,0,0,0,0,"overflowedSortLink[idx].taskId = 255",0,0,0);
	trans[1][44]	= settr(0,0,0,0,0,"overflowedSortLink[idx].responseTime = 255",0,0,0);
	trans[1][45]	= settr(0,0,0,0,0,"idx = (idx+1)",0,0,0);
	trans[1][46]	= settr(243,2,55,2,0,"else", 1, 2, 0);
	trans[1][47]	= settr(244,2,55,1,0,"goto :b6", 1, 2, 0); /* m: 55 -> 0,136 */
	reached1[55] = 1;
	trans[1][50]	= settr(247,2,55,1,0,"break", 1, 2, 0);
	trans[1][54]	= settr(251,2,55,1,0,".(goto)", 1, 2, 0); /* m: 55 -> 0,136 */
	reached1[55] = 1;
	trans[1][51]	= settr(248,2,52,2,0,"else", 1, 2, 0);
	trans[1][52]	= settr(249,2,136,542,542,"(1)", 1, 2, 0); /* m: 55 -> 136,0 */
	reached1[55] = 1;
	trans[1][55]	= settr(252,2,136,543,543,"idx = 0", 1, 2, 0);
	T = trans[1][136] = settr(333,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(333,2,56,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(333,2,58,0,0,"IF", 1, 2, 0);
	trans[1][56]	= settr(253,2,57,544,0,"((g_tickCount<g_schedResponseTime))", 1, 2, 0);
	trans[1][57]	= settr(254,2,144,1,0,"(1)", 1, 2, 0);
	trans[1][137]	= settr(334,2,144,1,0,".(goto)", 1, 2, 0);
	trans[1][58]	= settr(255,2,116,2,0,"else", 1, 2, 0);
	trans[1][117]	= settr(314,2,116,1,0,".(goto)", 1, 2, 0);
	T = trans[1][116] = settr(313,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(313,2,59,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(313,2,114,0,0,"DO", 1, 2, 0);
	trans[1][59]	= settr(256,2,112,545,545,"((idx<g_taskSortLinkTail))", 1, 2, 0); /* m: 60 -> 112,0 */
	reached1[60] = 1;
	trans[1][60]	= settr(0,0,0,0,0,"taskId = g_taskSortLink[idx].taskId",0,0,0);
	trans[1][61]	= settr(0,0,0,0,0,"taskResponseTime = g_taskSortLink[idx].responseTime",0,0,0);
	T = trans[1][112] = settr(309,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(309,2,62,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(309,2,64,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(309,2,108,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(309,2,110,0,0,"IF", 1, 2, 0);
	trans[1][62]	= settr(259,2,134,546,546,"((taskResponseTime>=255))", 1, 2, 0);
	trans[1][63]	= settr(260,2,134,1,0,"goto :b7", 1, 2, 0);
	trans[1][113]	= settr(310,2,116,1,0,".(goto)", 1, 2, 0);
	trans[1][64]	= settr(261,2,75,547,547,"(((tcb[taskId].state==2)&&(g_tickCount>=taskResponseTime)))", 1, 2, 0); /* m: 65 -> 75,0 */
	reached1[65] = 1;
	trans[1][65]	= settr(0,0,0,0,0,"tcb[taskId].state = 1",0,0,0);
	T = trans[ 1][75] = settr(272,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(272,0,66,0,0,"sub-sequence", 1, 2, 0);
	trans[1][66]	= settr(263,2,73,548,548,"temp = tcb[taskId].prio", 1, 2, 0); /* m: 67 -> 0,73 */
	reached1[67] = 1;
	trans[1][67]	= settr(0,0,0,0,0,"temp1 = readyQueue[tcb[taskId].prio].tailIndex",0,0,0);
	T = trans[1][73] = settr(270,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(270,2,68,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(270,2,71,0,0,"IF", 1, 2, 0);
	trans[1][68]	= settr(265,2,89,549,549,"((readyQueue[tcb[taskId].prio].tailIndex<5))", 1, 2, 0); /* m: 69 -> 89,0 */
	reached1[69] = 1;
	trans[1][69]	= settr(0,0,0,0,0,"readyQueue[tcb[taskId].prio].tasks[readyQueue[tcb[taskId].prio].tailIndex] = taskId",0,0,0);
	trans[1][70]	= settr(0,0,0,0,0,"readyQueue[tcb[taskId].prio].tailIndex = (readyQueue[tcb[taskId].prio].tailIndex+1)",0,0,0);
	trans[1][74]	= settr(271,2,76,1,0,".(goto)", 1, 2, 0); /* m: 76 -> 0,89 */
	reached1[76] = 1;
	trans[1][71]	= settr(268,2,72,2,0,"else", 1, 2, 0);
	trans[1][72]	= settr(269,2,89,550,550,"assert(0)", 1, 2, 0); /* m: 76 -> 0,89 */
	reached1[76] = 1;
	trans[1][76]	= settr(273,2,89,551,551,"shiftIdx = idx", 1, 2, 0);
	trans[1][90]	= settr(287,2,89,1,0,".(goto)", 1, 2, 0);
	T = trans[1][89] = settr(286,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(286,2,77,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(286,2,87,0,0,"DO", 1, 2, 0);
	trans[1][77]	= settr(274,2,84,552,552,"((shiftIdx<(g_taskSortLinkTail-1)))", 1, 2, 0); /* m: 78 -> 84,0 */
	reached1[78] = 1;
	trans[1][78]	= settr(0,0,0,0,0,"g_taskSortLink[shiftIdx].taskId = g_taskSortLink[(shiftIdx+1)].taskId",0,0,0);
	trans[1][79]	= settr(0,0,0,0,0,"g_taskSortLink[shiftIdx].responseTime = g_taskSortLink[(shiftIdx+1)].responseTime",0,0,0);
	T = trans[1][84] = settr(281,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(281,2,80,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(281,2,82,0,0,"IF", 1, 2, 0);
	trans[1][80]	= settr(277,2,89,553,553,"((g_taskSortLink[shiftIdx].taskId!=255))", 1, 2, 0); /* m: 81 -> 89,0 */
	reached1[81] = 1;
	trans[1][81]	= settr(0,0,0,0,0,"tcb[g_taskSortLink[shiftIdx].taskId].pendList = shiftIdx",0,0,0);
	trans[1][85]	= settr(282,2,86,1,0,".(goto)", 1, 2, 0); /* m: 86 -> 0,89 */
	reached1[86] = 1;
	trans[1][82]	= settr(279,2,83,2,0,"else", 1, 2, 0);
	trans[1][83]	= settr(280,2,89,554,554,"(1)", 1, 2, 0); /* m: 86 -> 89,0 */
	reached1[86] = 1;
	trans[1][86]	= settr(283,2,89,555,555,"shiftIdx = (shiftIdx+1)", 1, 2, 0);
	trans[1][87]	= settr(284,2,92,2,0,"else", 1, 2, 0);
	trans[1][88]	= settr(285,2,92,1,0,"goto :b8", 1, 2, 0); /* m: 92 -> 0,106 */
	reached1[92] = 1;
	trans[1][91]	= settr(288,2,92,1,0,"break", 1, 2, 0);
	trans[1][92]	= settr(289,2,106,556,556,"g_taskSortLink[(g_taskSortLinkTail-1)].taskId = 255", 1, 2, 0); /* m: 93 -> 0,106 */
	reached1[93] = 1;
	trans[1][93]	= settr(0,0,0,0,0,"g_taskSortLink[(g_taskSortLinkTail-1)].responseTime = 255",0,0,0);
	trans[1][94]	= settr(0,0,0,0,0,"g_taskSortLinkTail = (g_taskSortLinkTail-1)",0,0,0);
	trans[1][95]	= settr(0,0,0,0,0,"tcb[taskId].pendList = 255",0,0,0);
	T = trans[ 1][106] = settr(303,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(303,0,96,0,0,"sub-sequence", 1, 2, 0);
	trans[1][96]	= settr(293,2,103,557,557,"checkIdx = 0", 1, 2, 0); /* m: 97 -> 0,103 */
	reached1[97] = 1;
	trans[1][97]	= settr(0,0,0,0,0,"isValid = 1",0,0,0);
	trans[1][104]	= settr(301,2,103,1,0,".(goto)", 1, 2, 0);
	T = trans[1][103] = settr(300,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(300,2,98,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(300,2,101,0,0,"DO", 1, 2, 0);
	trans[1][98]	= settr(295,2,103,558,558,"((checkIdx<(g_taskSortLinkTail-1)))", 1, 2, 0); /* m: 99 -> 103,0 */
	reached1[99] = 1;
	trans[1][99]	= settr(0,0,0,0,0,"assert((g_taskSortLink[checkIdx].responseTime<=g_taskSortLink[(checkIdx+1)].responseTime))",0,0,0);
	trans[1][100]	= settr(0,0,0,0,0,"checkIdx = (checkIdx+1)",0,0,0);
	trans[1][101]	= settr(298,2,107,2,0,"else", 1, 2, 0);
	trans[1][102]	= settr(299,2,107,1,0,"goto :b9", 1, 2, 0); /* m: 107 -> 0,116 */
	reached1[107] = 1;
	trans[1][105]	= settr(302,2,107,1,0,"break", 1, 2, 0);
	trans[1][107]	= settr(304,2,116,559,559,"needSched = 1", 1, 2, 0);
	trans[1][108]	= settr(305,2,134,560,560,"(((tcb[taskId].state==2)&&(g_tickCount<taskResponseTime)))", 1, 2, 0);
	trans[1][109]	= settr(306,2,134,1,0,"goto :b7", 1, 2, 0);
	trans[1][110]	= settr(307,2,111,2,0,"else", 1, 2, 0);
	trans[1][111]	= settr(308,2,116,561,561,"idx = (idx+1)", 1, 2, 0);
	trans[1][114]	= settr(311,2,134,2,0,"else", 1, 2, 0);
	trans[1][115]	= settr(312,2,134,1,0,"goto :b7", 1, 2, 0);
	trans[1][118]	= settr(315,2,134,1,0,"break", 1, 2, 0);
	T = trans[1][134] = settr(331,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(331,2,119,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(331,2,132,0,0,"IF", 1, 2, 0);
	trans[1][119]	= settr(316,2,130,562,0,"(needSched)", 1, 2, 0);
	T = trans[1][130] = settr(327,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(327,2,120,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(327,2,122,0,0,"IF", 1, 2, 0);
	trans[1][120]	= settr(317,2,144,563,563,"((g_taskSortLinkTail==0))", 1, 2, 0); /* m: 121 -> 144,0 */
	reached1[121] = 1;
	trans[1][121]	= settr(0,0,0,0,0,"g_schedResponseTime = 255",0,0,0);
	trans[1][131]	= settr(328,2,144,1,0,".(goto)", 1, 2, 0);
	trans[1][122]	= settr(319,2,128,564,564,"((g_taskSortLinkTail>0))", 1, 2, 0); /* m: 123 -> 128,0 */
	reached1[123] = 1;
	trans[1][123]	= settr(0,0,0,0,0,"firstTime = g_taskSortLink[0].responseTime",0,0,0);
	T = trans[1][128] = settr(325,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(325,2,124,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(325,2,126,0,0,"IF", 1, 2, 0);
	trans[1][124]	= settr(321,2,144,565,565,"((firstTime<255))", 1, 2, 0); /* m: 125 -> 144,0 */
	reached1[125] = 1;
	trans[1][125]	= settr(0,0,0,0,0,"g_schedResponseTime = firstTime",0,0,0);
	trans[1][129]	= settr(326,2,144,1,0,".(goto)", 1, 2, 0);
	trans[1][126]	= settr(323,2,127,2,0,"else", 1, 2, 0);
	trans[1][127]	= settr(324,2,144,566,566,"g_schedResponseTime = 255", 1, 2, 0);
	trans[1][135]	= settr(332,2,144,1,0,".(goto)", 1, 2, 0);
	trans[1][132]	= settr(329,2,133,2,0,"else", 1, 2, 0);
	trans[1][133]	= settr(330,2,144,1,0,"(1)", 1, 2, 0);
	T = trans[1][144] = settr(341,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(341,2,138,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(341,2,142,0,0,"IF", 1, 2, 0);
	trans[1][138]	= settr(335,2,141,567,567,"((needSched&&g_taskScheduled))", 1, 2, 0);
	T = trans[ 1][141] = settr(338,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(338,0,139,0,0,"sub-sequence", 1, 2, 0);
	trans[1][139]	= settr(336,2,155,568,568,"assert(((0<2)&&(0<8)))", 1, 2, 0); /* m: 140 -> 0,155 */
	reached1[140] = 1;
	trans[1][140]	= settr(0,0,0,0,0,"pending_exp = (pending_exp|(1<<0))",0,0,0);
	trans[1][145]	= settr(342,2,155,1,0,".(goto)", 1, 2, 0);
	trans[1][142]	= settr(339,2,143,2,0,"else", 1, 2, 0);
	trans[1][143]	= settr(340,2,155,1,0,"(1)", 1, 2, 0);
	T = trans[ 1][155] = settr(352,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(352,0,153,0,0,"sub-sequence", 1, 2, 0);
	T = trans[1][153] = settr(350,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(350,2,147,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(350,2,152,0,0,"IF", 1, 2, 0);
	trans[1][147]	= settr(344,2,150,569,0,"(((chain_tick_used==0)&&(((pending_exp>>1)&1)==0)))", 1, 2, 0);
	T = trans[ 1][150] = settr(347,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(347,0,148,0,0,"sub-sequence", 1, 2, 0);
	trans[1][148]	= settr(345,4,170,570,570,"assert(((1<2)&&(1<8)))", 1, 2, 0); /* m: 149 -> 0,170 */
	reached1[149] = 1;
	trans[1][149]	= settr(0,0,0,0,0,"pending_exp = (pending_exp|(1<<1))",0,0,0);
	trans[1][151]	= settr(0,0,0,0,0,"chain_tick_used = 1",0,0,0);
	trans[1][154]	= settr(351,0,170,571,571,".(goto)", 1, 2, 0);
	trans[1][152]	= settr(349,4,170,572,572,"(1)", 1, 2, 0); /* m: 154 -> 170,0 */
	reached1[154] = 1;
	T = trans[ 1][170] = settr(367,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(367,2,157,0,0,"ATOMIC", 1, 2, 0);
	trans[1][157]	= settr(354,2,160,573,0,"((1==EP))", 1, 2, 0);
	T = trans[ 1][160] = settr(357,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(357,0,158,0,0,"sub-sequence", 1, 2, 0);
	trans[1][158]	= settr(355,2,169,574,574,"assert(((0<2)&&(0<8)))", 1, 2, 0); /* m: 159 -> 0,169 */
	reached1[159] = 1;
	trans[1][159]	= settr(0,0,0,0,0,"pending_exp = (pending_exp|(1<<0))",0,0,0);
	T = trans[ 1][169] = settr(366,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(366,0,167,0,0,"sub-sequence", 1, 2, 0);
	T = trans[1][167] = settr(364,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(364,2,161,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(364,2,166,0,0,"IF", 1, 2, 0);
	trans[1][161]	= settr(358,2,164,575,0,"(((chain_tick_used==0)&&(((pending_exp>>1)&1)==0)))", 1, 2, 0);
	T = trans[ 1][164] = settr(361,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(361,0,162,0,0,"sub-sequence", 1, 2, 0);
	trans[1][162]	= settr(359,4,196,576,576,"assert(((1<2)&&(1<8)))", 1, 2, 0); /* m: 163 -> 0,196 */
	reached1[163] = 1;
	trans[1][163]	= settr(0,0,0,0,0,"pending_exp = (pending_exp|(1<<1))",0,0,0);
	trans[1][165]	= settr(0,0,0,0,0,"chain_tick_used = 1",0,0,0);
	trans[1][168]	= settr(365,0,196,577,577,".(goto)", 1, 2, 0);
	trans[1][166]	= settr(363,4,196,578,578,"(1)", 1, 2, 0); /* m: 168 -> 196,0 */
	reached1[168] = 1;
	T = trans[ 1][196] = settr(393,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(393,2,171,0,0,"ATOMIC", 1, 2, 0);
	trans[1][171]	= settr(368,2,186,579,0,"((1==EP))", 1, 2, 0);
	T = trans[ 1][186] = settr(383,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(383,0,184,0,0,"sub-sequence", 1, 2, 0);
	T = trans[1][184] = settr(381,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(381,2,172,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(381,2,179,0,0,"IF", 1, 2, 0);
	trans[1][172]	= settr(369,2,178,580,0,"((pending_exp>0))", 1, 2, 0);
	T = trans[ 1][178] = settr(375,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(375,0,174,0,0,"sub-sequence", 1, 2, 0);
	T = trans[ 1][174] = settr(371,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(371,0,173,0,0,"sub-sequence", 1, 2, 0);
	trans[1][173]	= settr(370,2,195,581,581,"tmp = ( (((pending_exp>>0)&1)) -> (0) : (1) )", 1, 2, 0); /* m: 175 -> 0,195 */
	reached1[175] = 1;
	trans[1][175]	= settr(0,0,0,0,0,"assert((((BASEPRI==0)||(15<BASEPRI))&&(EP_Stack>=2)))",0,0,0);
	trans[1][176]	= settr(0,0,0,0,0,"EP = tmp",0,0,0);
	trans[1][177]	= settr(0,0,0,0,0,"tmp = 255",0,0,0);
	trans[1][185]	= settr(382,2,195,1,0,".(goto)", 1, 2, 0);
	trans[1][179]	= settr(376,2,183,2,0,"else", 1, 2, 0);
	T = trans[ 1][183] = settr(380,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(380,0,180,0,0,"sub-sequence", 1, 2, 0);
	trans[1][180]	= settr(377,2,195,582,582,"assert((EP_Stack!=255))", 1, 2, 0); /* m: 181 -> 0,195 */
	reached1[181] = 1;
	trans[1][181]	= settr(0,0,0,0,0,"EP = EP_Stack",0,0,0);
	trans[1][182]	= settr(0,0,0,0,0,"EP_Stack = 255",0,0,0);
	T = trans[ 1][195] = settr(392,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(392,0,193,0,0,"sub-sequence", 1, 2, 0);
	T = trans[1][193] = settr(390,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(390,2,187,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(390,2,192,0,0,"IF", 1, 2, 0);
	trans[1][187]	= settr(384,2,190,583,0,"(((chain_tick_used==0)&&(((pending_exp>>1)&1)==0)))", 1, 2, 0);
	T = trans[ 1][190] = settr(387,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(387,0,188,0,0,"sub-sequence", 1, 2, 0);
	trans[1][188]	= settr(385,0,197,584,584,"assert(((1<2)&&(1<8)))", 1, 2, 0); /* m: 189 -> 0,197 */
	reached1[189] = 1;
	trans[1][189]	= settr(0,0,0,0,0,"pending_exp = (pending_exp|(1<<1))",0,0,0);
	trans[1][191]	= settr(0,0,0,0,0,"chain_tick_used = 1",0,0,0);
	trans[1][194]	= settr(391,0,197,585,585,".(goto)", 1, 2, 0);
	trans[1][192]	= settr(389,0,197,586,586,"(1)", 1, 2, 0); /* m: 194 -> 197,0 */
	reached1[194] = 1;
	trans[1][199]	= settr(396,0,200,1,0,"break", 0, 2, 0);
	trans[1][200]	= settr(397,0,0,587,587,"-end-", 0, 3500, 0);

	/* proctype 0: PendSV_Handler */

	trans[0] = (Trans **) emalloc(199*sizeof(Trans *));

	trans[0][196]	= settr(195,0,195,1,0,".(goto)", 0, 2, 0);
	T = trans[0][195] = settr(194,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(194,0,1,0,0,"DO", 0, 2, 0);
	trans[0][1]	= settr(0,0,7,588,0,"((EP==0))", 1, 2, 0);
	T = trans[ 0][7] = settr(6,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(6,0,6,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][6] = settr(5,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(5,2,2,0,0,"ATOMIC", 1, 2, 0);
	trans[0][2]	= settr(1,2,5,589,0,"((EP==0))", 1, 2, 0);
	T = trans[ 0][5] = settr(4,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(4,0,3,0,0,"sub-sequence", 1, 2, 0);
	trans[0][3]	= settr(2,4,44,590,590,"assert(((0<2)&&(0<8)))", 1, 2, 0); /* m: 4 -> 0,44 */
	reached0[4] = 1;
	trans[0][4]	= settr(0,0,0,0,0,"pending_exp = (pending_exp&~((1<<0)))",0,0,0);
	T = trans[ 0][44] = settr(43,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(43,2,8,0,0,"ATOMIC", 1, 2, 0);
	trans[0][8]	= settr(7,2,34,591,0,"((0==EP))", 1, 2, 0);
	T = trans[ 0][34] = settr(33,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(33,0,9,0,0,"sub-sequence", 1, 2, 0);
	trans[0][9]	= settr(8,2,22,592,592,"prio = 0", 1, 2, 0); /* m: 10 -> 0,22 */
	reached0[10] = 1;
	trans[0][10]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[0][11]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[0][23]	= settr(22,2,22,1,0,".(goto)", 1, 2, 0);
	T = trans[0][22] = settr(21,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(21,2,12,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(21,2,20,0,0,"DO", 1, 2, 0);
	trans[0][12]	= settr(11,2,18,593,0,"(((prio<4)&&!(found)))", 1, 2, 0);
	T = trans[0][18] = settr(17,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(17,2,13,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(17,2,16,0,0,"IF", 1, 2, 0);
	trans[0][13]	= settr(12,2,22,594,594,"((readyQueue[prio].tailIndex>0))", 1, 2, 0); /* m: 14 -> 22,0 */
	reached0[14] = 1;
	trans[0][14]	= settr(0,0,0,0,0,"top_task = readyQueue[prio].tasks[0]",0,0,0);
	trans[0][15]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[0][19]	= settr(18,2,22,1,0,".(goto)", 1, 2, 0);
	trans[0][16]	= settr(15,2,17,2,0,"else", 1, 2, 0);
	trans[0][17]	= settr(16,2,22,595,595,"prio = (prio+1)", 1, 2, 0);
	trans[0][20]	= settr(19,2,30,2,0,"else", 1, 2, 0);
	trans[0][21]	= settr(20,2,30,1,0,"goto :b1", 1, 2, 0);
	trans[0][24]	= settr(23,2,30,1,0,"break", 1, 2, 0);
	T = trans[0][30] = settr(29,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(29,2,25,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(29,2,28,0,0,"IF", 1, 2, 0);
	trans[0][25]	= settr(24,2,43,596,596,"(!(found))", 1, 2, 0); /* m: 26 -> 43,0 */
	reached0[26] = 1;
	trans[0][26]	= settr(0,0,0,0,0,"top_task = EP_Stack",0,0,0);
	trans[0][27]	= settr(0,0,0,0,0,"prio = tcb[EP_Stack].prio",0,0,0);
	trans[0][31]	= settr(30,2,32,1,0,".(goto)", 1, 2, 0); /* m: 32 -> 0,43 */
	reached0[32] = 1;
	trans[0][28]	= settr(27,2,29,2,0,"else", 1, 2, 0);
	trans[0][29]	= settr(28,2,43,597,597,"(1)", 1, 2, 0); /* m: 32 -> 43,0 */
	reached0[32] = 1;
	trans[0][32]	= settr(31,2,43,598,598,"tmp = top_task", 1, 2, 0); /* m: 33 -> 0,43 */
	reached0[33] = 1;
	trans[0][33]	= settr(0,0,0,0,0,"topPrio = prio",0,0,0);
	T = trans[ 0][43] = settr(42,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(42,0,41,0,0,"sub-sequence", 1, 2, 0);
	T = trans[0][41] = settr(40,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(40,2,35,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(40,2,40,0,0,"IF", 1, 2, 0);
	trans[0][35]	= settr(34,2,38,599,0,"(((chain_tick_used==0)&&(((pending_exp>>1)&1)==0)))", 1, 2, 0);
	T = trans[ 0][38] = settr(37,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(37,0,36,0,0,"sub-sequence", 1, 2, 0);
	trans[0][36]	= settr(35,4,167,600,600,"assert(((1<2)&&(1<8)))", 1, 2, 0); /* m: 37 -> 0,167 */
	reached0[37] = 1;
	trans[0][37]	= settr(0,0,0,0,0,"pending_exp = (pending_exp|(1<<1))",0,0,0);
	trans[0][39]	= settr(0,0,0,0,0,"chain_tick_used = 1",0,0,0);
	trans[0][42]	= settr(41,0,167,601,601,".(goto)", 1, 2, 0);
	trans[0][40]	= settr(39,4,167,602,602,"(1)", 1, 2, 0); /* m: 42 -> 167,0 */
	reached0[42] = 1;
	T = trans[0][167] = settr(166,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(166,0,45,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(166,0,127,0,0,"IF", 0, 2, 0);
	trans[0][45]	= settr(44,0,72,603,0,"(((tmp!=EP_Stack)&&(tmp!=255)))", 1, 2, 0);
	T = trans[ 0][72] = settr(71,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(71,2,46,0,0,"ATOMIC", 1, 2, 0);
	trans[0][46]	= settr(45,2,61,604,0,"((0==EP))", 1, 2, 0);
	T = trans[0][61] = settr(60,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(60,2,47,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(60,2,59,0,0,"IF", 1, 2, 0);
	trans[0][47]	= settr(46,2,58,605,605,"((tcb[EP_Stack].state==4))", 1, 2, 0); /* m: 48 -> 58,0 */
	reached0[48] = 1;
	trans[0][48]	= settr(0,0,0,0,0,"tcb[EP_Stack].state = 1",0,0,0);
	T = trans[ 0][58] = settr(57,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(57,0,49,0,0,"sub-sequence", 1, 2, 0);
	trans[0][49]	= settr(48,2,56,606,606,"temp = tcb[EP_Stack].prio", 1, 2, 0); /* m: 50 -> 0,56 */
	reached0[50] = 1;
	trans[0][50]	= settr(0,0,0,0,0,"temp1 = readyQueue[tcb[EP_Stack].prio].tailIndex",0,0,0);
	T = trans[0][56] = settr(55,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(55,2,51,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(55,2,54,0,0,"IF", 1, 2, 0);
	trans[0][51]	= settr(50,2,71,607,607,"((readyQueue[tcb[EP_Stack].prio].tailIndex<5))", 1, 2, 0); /* m: 52 -> 71,0 */
	reached0[52] = 1;
	trans[0][52]	= settr(0,0,0,0,0,"readyQueue[tcb[EP_Stack].prio].tasks[readyQueue[tcb[EP_Stack].prio].tailIndex] = EP_Stack",0,0,0);
	trans[0][53]	= settr(0,0,0,0,0,"readyQueue[tcb[EP_Stack].prio].tailIndex = (readyQueue[tcb[EP_Stack].prio].tailIndex+1)",0,0,0);
	trans[0][57]	= settr(56,2,71,1,0,".(goto)", 1, 2, 0);
	trans[0][54]	= settr(53,2,55,2,0,"else", 1, 2, 0);
	trans[0][55]	= settr(54,2,71,608,0,"assert(0)", 1, 2, 0);
	trans[0][62]	= settr(61,2,71,1,0,".(goto)", 1, 2, 0);
	trans[0][59]	= settr(58,2,60,2,0,"else", 1, 2, 0);
	trans[0][60]	= settr(59,2,71,1,0,"(1)", 1, 2, 0);
	T = trans[ 0][71] = settr(70,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(70,0,69,0,0,"sub-sequence", 1, 2, 0);
	T = trans[0][69] = settr(68,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(68,2,63,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(68,2,68,0,0,"IF", 1, 2, 0);
	trans[0][63]	= settr(62,2,66,609,0,"(((chain_tick_used==0)&&(((pending_exp>>1)&1)==0)))", 1, 2, 0);
	T = trans[ 0][66] = settr(65,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(65,0,64,0,0,"sub-sequence", 1, 2, 0);
	trans[0][64]	= settr(63,4,100,610,610,"assert(((1<2)&&(1<8)))", 1, 2, 0); /* m: 65 -> 0,100 */
	reached0[65] = 1;
	trans[0][65]	= settr(0,0,0,0,0,"pending_exp = (pending_exp|(1<<1))",0,0,0);
	trans[0][67]	= settr(0,0,0,0,0,"chain_tick_used = 1",0,0,0);
	trans[0][70]	= settr(69,0,100,611,611,".(goto)", 1, 2, 0);
	trans[0][68]	= settr(67,4,100,612,612,"(1)", 1, 2, 0); /* m: 70 -> 100,0 */
	reached0[70] = 1;
	T = trans[ 0][100] = settr(99,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(99,2,73,0,0,"ATOMIC", 1, 2, 0);
	trans[0][73]	= settr(72,2,90,613,0,"((0==EP))", 1, 2, 0);
	T = trans[ 0][90] = settr(89,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(89,0,74,0,0,"sub-sequence", 1, 2, 0);
	trans[0][74]	= settr(73,2,80,614,614,"idx = 0", 1, 2, 0);
	trans[0][81]	= settr(80,2,80,1,0,".(goto)", 1, 2, 0);
	T = trans[0][80] = settr(79,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(79,2,75,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(79,2,78,0,0,"DO", 1, 2, 0);
	trans[0][75]	= settr(74,2,80,615,615,"((idx<(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0); /* m: 76 -> 80,0 */
	reached0[76] = 1;
	trans[0][76]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[idx] = readyQueue[topPrio].tasks[(idx+1)]",0,0,0);
	trans[0][77]	= settr(0,0,0,0,0,"idx = (idx+1)",0,0,0);
	trans[0][78]	= settr(77,2,88,2,0,"else", 1, 2, 0);
	trans[0][79]	= settr(78,2,88,1,0,"goto :b2", 1, 2, 0);
	trans[0][82]	= settr(81,2,88,1,0,"break", 1, 2, 0);
	T = trans[0][88] = settr(87,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(87,2,83,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(87,2,86,0,0,"IF", 1, 2, 0);
	trans[0][83]	= settr(82,2,99,616,616,"((readyQueue[topPrio].tailIndex>0))", 1, 2, 0); /* m: 84 -> 99,0 */
	reached0[84] = 1;
	trans[0][84]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)] = 255",0,0,0);
	trans[0][85]	= settr(0,0,0,0,0,"readyQueue[topPrio].tailIndex = (readyQueue[topPrio].tailIndex-1)",0,0,0);
	trans[0][89]	= settr(88,2,99,1,0,".(goto)", 1, 2, 0);
	trans[0][86]	= settr(85,2,87,2,0,"else", 1, 2, 0);
	trans[0][87]	= settr(86,2,99,1,0,"(1)", 1, 2, 0);
	T = trans[ 0][99] = settr(98,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(98,0,97,0,0,"sub-sequence", 1, 2, 0);
	T = trans[0][97] = settr(96,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(96,2,91,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(96,2,96,0,0,"IF", 1, 2, 0);
	trans[0][91]	= settr(90,2,94,617,0,"(((chain_tick_used==0)&&(((pending_exp>>1)&1)==0)))", 1, 2, 0);
	T = trans[ 0][94] = settr(93,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(93,0,92,0,0,"sub-sequence", 1, 2, 0);
	trans[0][92]	= settr(91,4,112,618,618,"assert(((1<2)&&(1<8)))", 1, 2, 0); /* m: 93 -> 0,112 */
	reached0[93] = 1;
	trans[0][93]	= settr(0,0,0,0,0,"pending_exp = (pending_exp|(1<<1))",0,0,0);
	trans[0][95]	= settr(0,0,0,0,0,"chain_tick_used = 1",0,0,0);
	trans[0][98]	= settr(97,0,112,619,619,".(goto)", 1, 2, 0);
	trans[0][96]	= settr(95,4,112,620,620,"(1)", 1, 2, 0); /* m: 98 -> 112,0 */
	reached0[98] = 1;
	T = trans[ 0][112] = settr(111,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(111,2,101,0,0,"ATOMIC", 1, 2, 0);
	trans[0][101]	= settr(100,2,111,621,621,"((0==EP))", 1, 2, 0); /* m: 102 -> 111,0 */
	reached0[102] = 1;
	trans[0][102]	= settr(0,0,0,0,0,"tcb[tmp].state = 4",0,0,0);
	T = trans[ 0][111] = settr(110,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(110,0,109,0,0,"sub-sequence", 1, 2, 0);
	T = trans[0][109] = settr(108,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(108,2,103,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(108,2,108,0,0,"IF", 1, 2, 0);
	trans[0][103]	= settr(102,2,106,622,0,"(((chain_tick_used==0)&&(((pending_exp>>1)&1)==0)))", 1, 2, 0);
	T = trans[ 0][106] = settr(105,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(105,0,104,0,0,"sub-sequence", 1, 2, 0);
	trans[0][104]	= settr(103,4,126,623,623,"assert(((1<2)&&(1<8)))", 1, 2, 0); /* m: 105 -> 0,126 */
	reached0[105] = 1;
	trans[0][105]	= settr(0,0,0,0,0,"pending_exp = (pending_exp|(1<<1))",0,0,0);
	trans[0][107]	= settr(0,0,0,0,0,"chain_tick_used = 1",0,0,0);
	trans[0][110]	= settr(109,0,126,624,624,".(goto)", 1, 2, 0);
	trans[0][108]	= settr(107,4,126,625,625,"(1)", 1, 2, 0); /* m: 110 -> 126,0 */
	reached0[110] = 1;
	T = trans[ 0][126] = settr(125,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(125,2,113,0,0,"ATOMIC", 1, 2, 0);
	trans[0][113]	= settr(112,2,116,626,0,"((0==EP))", 1, 2, 0);
	T = trans[ 0][116] = settr(115,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(115,0,114,0,0,"sub-sequence", 1, 2, 0);
	trans[0][114]	= settr(113,2,125,627,627,"assert((((EP_Stack!=255)&&(EP_Stack>=2))&&(tmp>=2)))", 1, 2, 0); /* m: 115 -> 0,125 */
	reached0[115] = 1;
	trans[0][115]	= settr(0,0,0,0,0,"EP_Stack = tmp",0,0,0);
	T = trans[ 0][125] = settr(124,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(124,0,123,0,0,"sub-sequence", 1, 2, 0);
	T = trans[0][123] = settr(122,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(122,2,117,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(122,2,122,0,0,"IF", 1, 2, 0);
	trans[0][117]	= settr(116,2,120,628,0,"(((chain_tick_used==0)&&(((pending_exp>>1)&1)==0)))", 1, 2, 0);
	T = trans[ 0][120] = settr(119,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(119,0,118,0,0,"sub-sequence", 1, 2, 0);
	trans[0][118]	= settr(117,0,194,629,629,"assert(((1<2)&&(1<8)))", 1, 2, 0); /* m: 119 -> 0,194 */
	reached0[119] = 1;
	trans[0][119]	= settr(0,0,0,0,0,"pending_exp = (pending_exp|(1<<1))",0,0,0);
	trans[0][121]	= settr(0,0,0,0,0,"chain_tick_used = 1",0,0,0);
	trans[0][124]	= settr(123,0,194,630,630,".(goto)", 1, 2, 0);
	trans[0][122]	= settr(121,0,194,631,631,"(1)", 1, 2, 0); /* m: 124 -> 194,0 */
	reached0[124] = 1;
	trans[0][168]	= settr(167,0,194,1,0,".(goto)", 0, 2, 0);
	trans[0][127]	= settr(126,0,166,2,0,"else", 0, 2, 0);
	T = trans[ 0][166] = settr(165,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(165,2,128,0,0,"ATOMIC", 1, 2, 0);
	trans[0][128]	= settr(127,2,155,632,0,"((0==EP))", 1, 2, 0);
	T = trans[0][155] = settr(154,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(154,2,129,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(154,2,153,0,0,"IF", 1, 2, 0);
	trans[0][129]	= settr(128,2,150,633,0,"((tcb[EP_Stack].state==1))", 1, 2, 0);
	T = trans[0][150] = settr(149,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(149,2,130,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(149,2,148,0,0,"IF", 1, 2, 0);
	trans[0][130]	= settr(129,2,147,634,0,"((readyQueue[topPrio].tailIndex>0))", 1, 2, 0);
	T = trans[ 0][147] = settr(146,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(146,0,131,0,0,"sub-sequence", 1, 2, 0);
	trans[0][131]	= settr(130,2,137,635,635,"idx = 0", 1, 2, 0);
	trans[0][138]	= settr(137,2,137,1,0,".(goto)", 1, 2, 0);
	T = trans[0][137] = settr(136,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(136,2,132,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(136,2,135,0,0,"DO", 1, 2, 0);
	trans[0][132]	= settr(131,2,137,636,636,"((idx<(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0); /* m: 133 -> 137,0 */
	reached0[133] = 1;
	trans[0][133]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[idx] = readyQueue[topPrio].tasks[(idx+1)]",0,0,0);
	trans[0][134]	= settr(0,0,0,0,0,"idx = (idx+1)",0,0,0);
	trans[0][135]	= settr(134,2,145,2,0,"else", 1, 2, 0);
	trans[0][136]	= settr(135,2,145,1,0,"goto :b3", 1, 2, 0);
	trans[0][139]	= settr(138,2,145,1,0,"break", 1, 2, 0);
	T = trans[0][145] = settr(144,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(144,2,140,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(144,2,143,0,0,"IF", 1, 2, 0);
	trans[0][140]	= settr(139,2,165,637,637,"((readyQueue[topPrio].tailIndex>0))", 1, 2, 0); /* m: 141 -> 165,0 */
	reached0[141] = 1;
	trans[0][141]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)] = 255",0,0,0);
	trans[0][142]	= settr(0,0,0,0,0,"readyQueue[topPrio].tailIndex = (readyQueue[topPrio].tailIndex-1)",0,0,0);
	trans[0][146]	= settr(145,2,152,1,0,".(goto)", 1, 2, 0); /* m: 152 -> 0,165 */
	reached0[152] = 1;
	trans[0][143]	= settr(142,2,144,2,0,"else", 1, 2, 0);
	trans[0][144]	= settr(143,2,165,638,638,"(1)", 1, 2, 0); /* m: 152 -> 165,0 */
	reached0[152] = 1;
	trans[0][151]	= settr(150,2,152,1,0,".(goto)", 1, 2, 0); /* m: 152 -> 0,165 */
	reached0[152] = 1;
	trans[0][148]	= settr(147,2,149,2,0,"else", 1, 2, 0);
	trans[0][149]	= settr(148,2,165,639,639,"(1)", 1, 2, 0); /* m: 152 -> 165,0 */
	reached0[152] = 1;
	trans[0][152]	= settr(151,2,165,640,640,"tcb[EP_Stack].state = 4", 1, 2, 0);
	trans[0][156]	= settr(155,2,165,1,0,".(goto)", 1, 2, 0);
	trans[0][153]	= settr(152,2,154,2,0,"else", 1, 2, 0);
	trans[0][154]	= settr(153,2,165,1,0,"(1)", 1, 2, 0);
	T = trans[ 0][165] = settr(164,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(164,0,163,0,0,"sub-sequence", 1, 2, 0);
	T = trans[0][163] = settr(162,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(162,2,157,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(162,2,162,0,0,"IF", 1, 2, 0);
	trans[0][157]	= settr(156,2,160,641,0,"(((chain_tick_used==0)&&(((pending_exp>>1)&1)==0)))", 1, 2, 0);
	T = trans[ 0][160] = settr(159,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(159,0,158,0,0,"sub-sequence", 1, 2, 0);
	trans[0][158]	= settr(157,0,194,642,642,"assert(((1<2)&&(1<8)))", 1, 2, 0); /* m: 159 -> 0,194 */
	reached0[159] = 1;
	trans[0][159]	= settr(0,0,0,0,0,"pending_exp = (pending_exp|(1<<1))",0,0,0);
	trans[0][161]	= settr(0,0,0,0,0,"chain_tick_used = 1",0,0,0);
	trans[0][164]	= settr(163,0,194,643,643,".(goto)", 1, 2, 0);
	trans[0][162]	= settr(161,0,194,644,644,"(1)", 1, 2, 0); /* m: 164 -> 194,0 */
	reached0[164] = 1;
	T = trans[ 0][194] = settr(193,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(193,2,169,0,0,"ATOMIC", 1, 2, 0);
	trans[0][169]	= settr(168,2,184,645,0,"((0==EP))", 1, 2, 0);
	T = trans[ 0][184] = settr(183,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(183,0,182,0,0,"sub-sequence", 1, 2, 0);
	T = trans[0][182] = settr(181,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(181,2,170,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(181,2,177,0,0,"IF", 1, 2, 0);
	trans[0][170]	= settr(169,2,176,646,0,"((pending_exp>0))", 1, 2, 0);
	T = trans[ 0][176] = settr(175,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(175,0,172,0,0,"sub-sequence", 1, 2, 0);
	T = trans[ 0][172] = settr(171,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(171,0,171,0,0,"sub-sequence", 1, 2, 0);
	trans[0][171]	= settr(170,2,193,647,647,"tmp = ( (((pending_exp>>0)&1)) -> (0) : (1) )", 1, 2, 0); /* m: 173 -> 0,193 */
	reached0[173] = 1;
	trans[0][173]	= settr(0,0,0,0,0,"assert((((BASEPRI==0)||(15<BASEPRI))&&(EP_Stack>=2)))",0,0,0);
	trans[0][174]	= settr(0,0,0,0,0,"EP = tmp",0,0,0);
	trans[0][175]	= settr(0,0,0,0,0,"tmp = 255",0,0,0);
	trans[0][183]	= settr(182,2,193,1,0,".(goto)", 1, 2, 0);
	trans[0][177]	= settr(176,2,181,2,0,"else", 1, 2, 0);
	T = trans[ 0][181] = settr(180,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(180,0,178,0,0,"sub-sequence", 1, 2, 0);
	trans[0][178]	= settr(177,2,193,648,648,"assert((EP_Stack!=255))", 1, 2, 0); /* m: 179 -> 0,193 */
	reached0[179] = 1;
	trans[0][179]	= settr(0,0,0,0,0,"EP = EP_Stack",0,0,0);
	trans[0][180]	= settr(0,0,0,0,0,"EP_Stack = 255",0,0,0);
	T = trans[ 0][193] = settr(192,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(192,0,191,0,0,"sub-sequence", 1, 2, 0);
	T = trans[0][191] = settr(190,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(190,2,185,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(190,2,190,0,0,"IF", 1, 2, 0);
	trans[0][185]	= settr(184,2,188,649,0,"(((chain_tick_used==0)&&(((pending_exp>>1)&1)==0)))", 1, 2, 0);
	T = trans[ 0][188] = settr(187,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(187,0,186,0,0,"sub-sequence", 1, 2, 0);
	trans[0][186]	= settr(185,0,195,650,650,"assert(((1<2)&&(1<8)))", 1, 2, 0); /* m: 187 -> 0,195 */
	reached0[187] = 1;
	trans[0][187]	= settr(0,0,0,0,0,"pending_exp = (pending_exp|(1<<1))",0,0,0);
	trans[0][189]	= settr(0,0,0,0,0,"chain_tick_used = 1",0,0,0);
	trans[0][192]	= settr(191,0,195,651,651,".(goto)", 1, 2, 0);
	trans[0][190]	= settr(189,0,195,652,652,"(1)", 1, 2, 0); /* m: 192 -> 195,0 */
	reached0[192] = 1;
	trans[0][197]	= settr(196,0,198,1,0,"break", 0, 2, 0);
	trans[0][198]	= settr(197,0,0,653,653,"-end-", 0, 3500, 0);
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
