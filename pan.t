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

	trans = (Trans ***) emalloc(20*sizeof(Trans **));

	/* proctype 18: sortlink_three_sorted */

	trans[18] = (Trans **) emalloc(11*sizeof(Trans *));

	trans[18][7]	= settr(1644,0,6,1,0,".(goto)", 0, 2, 0);
	T = trans[18][6] = settr(1643,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1643,0,3,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1643,0,4,0,0,"DO", 0, 2, 0);
	T = trans[ 18][3] = settr(1640,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(1640,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[18][1]	= settr(1638,0,6,3,3,"(!((!((g_taskSortLinkTail>=3))||((g_taskSortLink[0].responseTime<=g_taskSortLink[1].responseTime)&&(g_taskSortLink[1].responseTime<=g_taskSortLink[2].responseTime)))))", 1, 2, 0); /* m: 2 -> 6,0 */
	reached18[2] = 1;
	trans[18][2]	= settr(0,0,0,0,0,"assert(!(!((!((g_taskSortLinkTail>=3))||((g_taskSortLink[0].responseTime<=g_taskSortLink[1].responseTime)&&(g_taskSortLink[1].responseTime<=g_taskSortLink[2].responseTime))))))",0,0,0);
	trans[18][4]	= settr(1641,0,6,1,0,"(1)", 0, 2, 0);
	trans[18][5]	= settr(1642,0,6,1,0,"goto T0_init", 0, 2, 0);
	trans[18][8]	= settr(1645,0,9,1,0,"break", 0, 2, 0);
	trans[18][9]	= settr(1646,0,10,1,0,"(1)", 0, 2, 0);
	trans[18][10]	= settr(1647,0,0,4,4,"-end-", 0, 3500, 0);

	/* proctype 17: sortlink_is_sorted */

	trans[17] = (Trans **) emalloc(11*sizeof(Trans *));

	trans[17][7]	= settr(1634,0,6,1,0,".(goto)", 0, 2, 0);
	T = trans[17][6] = settr(1633,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1633,0,3,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1633,0,4,0,0,"DO", 0, 2, 0);
	T = trans[ 17][3] = settr(1630,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(1630,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[17][1]	= settr(1628,0,6,5,5,"(!((!((g_taskSortLinkTail>=2))||(g_taskSortLink[0].responseTime<=g_taskSortLink[1].responseTime))))", 1, 2, 0); /* m: 2 -> 6,0 */
	reached17[2] = 1;
	trans[17][2]	= settr(0,0,0,0,0,"assert(!(!((!((g_taskSortLinkTail>=2))||(g_taskSortLink[0].responseTime<=g_taskSortLink[1].responseTime)))))",0,0,0);
	trans[17][4]	= settr(1631,0,6,1,0,"(1)", 0, 2, 0);
	trans[17][5]	= settr(1632,0,6,1,0,"goto T0_init", 0, 2, 0);
	trans[17][8]	= settr(1635,0,9,1,0,"break", 0, 2, 0);
	trans[17][9]	= settr(1636,0,10,1,0,"(1)", 0, 2, 0);
	trans[17][10]	= settr(1637,0,0,6,6,"-end-", 0, 3500, 0);

	/* proctype 16: delayed_not_in_ready_queue */

	trans[16] = (Trans **) emalloc(11*sizeof(Trans *));

	trans[16][7]	= settr(1624,0,6,1,0,".(goto)", 0, 2, 0);
	T = trans[16][6] = settr(1623,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1623,0,3,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1623,0,4,0,0,"DO", 0, 2, 0);
	T = trans[ 16][3] = settr(1620,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(1620,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[16][1]	= settr(1618,0,6,7,7,"(!((!((tcb[2].state==2))||(readyQueue[tcb[2].prio].tasks[0]!=2))))", 1, 2, 0); /* m: 2 -> 6,0 */
	reached16[2] = 1;
	trans[16][2]	= settr(0,0,0,0,0,"assert(!(!((!((tcb[2].state==2))||(readyQueue[tcb[2].prio].tasks[0]!=2)))))",0,0,0);
	trans[16][4]	= settr(1621,0,6,1,0,"(1)", 0, 2, 0);
	trans[16][5]	= settr(1622,0,6,1,0,"goto T0_init", 0, 2, 0);
	trans[16][8]	= settr(1625,0,9,1,0,"break", 0, 2, 0);
	trans[16][9]	= settr(1626,0,10,1,0,"(1)", 0, 2, 0);
	trans[16][10]	= settr(1627,0,0,8,8,"-end-", 0, 3500, 0);

	/* proctype 15: tick_monotonic */

	trans[15] = (Trans **) emalloc(11*sizeof(Trans *));

	trans[15][7]	= settr(1614,0,6,1,0,".(goto)", 0, 2, 0);
	T = trans[15][6] = settr(1613,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1613,0,3,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1613,0,4,0,0,"DO", 0, 2, 0);
	T = trans[ 15][3] = settr(1610,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(1610,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[15][1]	= settr(1608,0,6,9,9,"(!((g_tickCount<255)))", 1, 2, 0); /* m: 2 -> 6,0 */
	reached15[2] = 1;
	trans[15][2]	= settr(0,0,0,0,0,"assert(!(!((g_tickCount<255))))",0,0,0);
	trans[15][4]	= settr(1611,0,6,1,0,"(1)", 0, 2, 0);
	trans[15][5]	= settr(1612,0,6,1,0,"goto T0_init", 0, 2, 0);
	trans[15][8]	= settr(1615,0,9,1,0,"break", 0, 2, 0);
	trans[15][9]	= settr(1616,0,10,1,0,"(1)", 0, 2, 0);
	trans[15][10]	= settr(1617,0,0,10,10,"-end-", 0, 3500, 0);

	/* proctype 14: delayed_become_ready */

	trans[14] = (Trans **) emalloc(14*sizeof(Trans *));

	trans[14][6]	= settr(1600,0,5,1,0,".(goto)", 0, 2, 0);
	T = trans[14][5] = settr(1599,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1599,0,1,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1599,0,3,0,0,"DO", 0, 2, 0);
	trans[14][1]	= settr(1595,0,10,11,0,"((!(!((tcb[2].state==2)))&&!((tcb[2].state==1))))", 1, 2, 0);
	trans[14][2]	= settr(1596,0,10,1,0,"goto accept_S4", 0, 2, 0);
	trans[14][3]	= settr(1597,0,5,1,0,"(1)", 0, 2, 0);
	trans[14][4]	= settr(1598,0,5,1,0,"goto T0_init", 0, 2, 0);
	trans[14][7]	= settr(1601,0,10,1,0,"break", 0, 2, 0);
	trans[14][11]	= settr(1605,0,10,1,0,".(goto)", 0, 2, 0);
	T = trans[14][10] = settr(1604,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1604,0,8,0,0,"DO", 0, 2, 0);
	trans[14][8]	= settr(1602,0,10,12,0,"(!((tcb[2].state==1)))", 1, 2, 0);
	trans[14][9]	= settr(1603,0,10,1,0,"goto accept_S4", 0, 2, 0);
	trans[14][12]	= settr(1606,0,13,1,0,"break", 0, 2, 0);
	trans[14][13]	= settr(1607,0,0,13,13,"-end-", 0, 3500, 0);

	/* proctype 13: smoke_P1_user_no_pending */

	trans[13] = (Trans **) emalloc(11*sizeof(Trans *));

	trans[13][7]	= settr(1591,0,6,1,0,".(goto)", 0, 2, 0);
	T = trans[13][6] = settr(1590,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1590,0,3,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1590,0,4,0,0,"DO", 0, 2, 0);
	T = trans[ 13][3] = settr(1587,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(1587,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[13][1]	= settr(1585,0,6,14,14,"(!(!((((EP==2)&&(pending_exp==0))&&(chain_tick_used==1)))))", 1, 2, 0); /* m: 2 -> 6,0 */
	reached13[2] = 1;
	trans[13][2]	= settr(0,0,0,0,0,"assert(!(!(!((((EP==2)&&(pending_exp==0))&&(chain_tick_used==1))))))",0,0,0);
	trans[13][4]	= settr(1588,0,6,1,0,"(1)", 0, 2, 0);
	trans[13][5]	= settr(1589,0,6,1,0,"goto T0_init", 0, 2, 0);
	trans[13][8]	= settr(1592,0,9,1,0,"break", 0, 2, 0);
	trans[13][9]	= settr(1593,0,10,1,0,"(1)", 0, 2, 0);
	trans[13][10]	= settr(1594,0,0,15,15,"-end-", 0, 3500, 0);

	/* proctype 12: smoke_P2_user_no_pending */

	trans[12] = (Trans **) emalloc(11*sizeof(Trans *));

	trans[12][7]	= settr(1581,0,6,1,0,".(goto)", 0, 2, 0);
	T = trans[12][6] = settr(1580,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1580,0,3,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1580,0,4,0,0,"DO", 0, 2, 0);
	T = trans[ 12][3] = settr(1577,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(1577,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[12][1]	= settr(1575,0,6,16,16,"(!(!((((EP==(2+1))&&(pending_exp==0))&&(chain_tick_used==1)))))", 1, 2, 0); /* m: 2 -> 6,0 */
	reached12[2] = 1;
	trans[12][2]	= settr(0,0,0,0,0,"assert(!(!(!((((EP==(2+1))&&(pending_exp==0))&&(chain_tick_used==1))))))",0,0,0);
	trans[12][4]	= settr(1578,0,6,1,0,"(1)", 0, 2, 0);
	trans[12][5]	= settr(1579,0,6,1,0,"goto T0_init", 0, 2, 0);
	trans[12][8]	= settr(1582,0,9,1,0,"break", 0, 2, 0);
	trans[12][9]	= settr(1583,0,10,1,0,"(1)", 0, 2, 0);
	trans[12][10]	= settr(1584,0,0,17,17,"-end-", 0, 3500, 0);

	/* proctype 11: p2_double_context_switch */

	trans[11] = (Trans **) emalloc(123*sizeof(Trans *));

	trans[11][21]	= settr(1473,0,20,1,0,".(goto)", 0, 2, 0);
	T = trans[11][20] = settr(1472,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1472,0,3,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1472,0,4,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1472,0,6,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1472,0,8,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1472,0,10,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1472,0,12,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1472,0,14,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1472,0,16,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1472,0,18,0,0,"DO", 0, 2, 0);
	T = trans[ 11][3] = settr(1455,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(1455,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[11][1]	= settr(1453,0,20,18,18,"((((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==3)))&&((EP==3)&&(((pending_exp>>1)&1)==1)))&&(EP==3)))", 1, 2, 0); /* m: 2 -> 20,0 */
	reached11[2] = 1;
	trans[11][2]	= settr(0,0,0,0,0,"assert(!((((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==3)))&&((EP==3)&&(((pending_exp>>1)&1)==1)))&&(EP==3))))",0,0,0);
	trans[11][4]	= settr(1456,0,28,19,0,"(((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==3)))&&((EP==3)&&(((pending_exp>>1)&1)==1))))", 1, 2, 0);
	trans[11][5]	= settr(1457,0,28,1,0,"goto T0_S120", 0, 2, 0);
	trans[11][6]	= settr(1458,0,38,20,0,"(((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==3)))&&((EP==3)&&(((pending_exp>>1)&1)==1))))", 1, 2, 0);
	trans[11][7]	= settr(1459,0,38,1,0,"goto T0_S119", 0, 2, 0);
	trans[11][8]	= settr(1460,0,50,21,0,"(((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==3)))&&((EP==3)&&(((pending_exp>>1)&1)==1))))", 1, 2, 0);
	trans[11][9]	= settr(1461,0,50,1,0,"goto T0_S118", 0, 2, 0);
	trans[11][10]	= settr(1462,0,64,22,0,"((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==3)))&&((EP==3)&&(((pending_exp>>1)&1)==1))))", 1, 2, 0);
	trans[11][11]	= settr(1463,0,64,1,0,"goto T0_S117", 0, 2, 0);
	trans[11][12]	= settr(1464,0,80,23,0,"(((((EP==0)&&(EP_Stack==3))&&((EP==1)&&(EP_Stack==3)))&&((EP==3)&&(((pending_exp>>1)&1)==1))))", 1, 2, 0);
	trans[11][13]	= settr(1465,0,80,1,0,"goto T0_S116", 0, 2, 0);
	trans[11][14]	= settr(1466,0,98,24,0,"((((EP==1)&&(EP_Stack==3))&&((EP==3)&&(((pending_exp>>1)&1)==1))))", 1, 2, 0);
	trans[11][15]	= settr(1467,0,98,1,0,"goto T0_S115", 0, 2, 0);
	trans[11][16]	= settr(1468,0,118,25,0,"(((EP==3)&&(((pending_exp>>1)&1)==1)))", 1, 2, 0);
	trans[11][17]	= settr(1469,0,118,1,0,"goto T0_S114", 0, 2, 0);
	trans[11][18]	= settr(1470,0,20,1,0,"(1)", 0, 2, 0);
	trans[11][19]	= settr(1471,0,20,1,0,"goto T0_init", 0, 2, 0);
	trans[11][22]	= settr(1474,0,28,1,0,"break", 0, 2, 0);
	trans[11][29]	= settr(1481,0,28,1,0,".(goto)", 0, 2, 0);
	T = trans[11][28] = settr(1480,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1480,0,25,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1480,0,26,0,0,"DO", 0, 2, 0);
	T = trans[ 11][25] = settr(1477,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(1477,2,23,0,0,"ATOMIC", 1, 2, 0);
	trans[11][23]	= settr(1475,0,28,26,26,"((EP==3))", 1, 2, 0); /* m: 24 -> 28,0 */
	reached11[24] = 1;
	trans[11][24]	= settr(0,0,0,0,0,"assert(!((EP==3)))",0,0,0);
	trans[11][26]	= settr(1478,0,28,27,0,"(((EP==0)&&(EP_Stack==3)))", 1, 2, 0);
	trans[11][27]	= settr(1479,0,28,1,0,"goto T0_S120", 0, 2, 0);
	trans[11][30]	= settr(1482,0,38,1,0,"break", 0, 2, 0);
	trans[11][39]	= settr(1491,0,38,1,0,".(goto)", 0, 2, 0);
	T = trans[11][38] = settr(1490,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1490,0,33,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1490,0,34,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1490,0,36,0,0,"DO", 0, 2, 0);
	T = trans[ 11][33] = settr(1485,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(1485,2,31,0,0,"ATOMIC", 1, 2, 0);
	trans[11][31]	= settr(1483,0,38,28,28,"((((EP==0)&&(EP_Stack==3))&&(EP==3)))", 1, 2, 0); /* m: 32 -> 38,0 */
	reached11[32] = 1;
	trans[11][32]	= settr(0,0,0,0,0,"assert(!((((EP==0)&&(EP_Stack==3))&&(EP==3))))",0,0,0);
	trans[11][34]	= settr(1486,0,28,29,0,"(((EP==0)&&(EP_Stack==3)))", 1, 2, 0);
	trans[11][35]	= settr(1487,0,28,1,0,"goto T0_S120", 0, 2, 0);
	trans[11][36]	= settr(1488,0,38,30,0,"(((EP==0)&&(EP_Stack==2)))", 1, 2, 0);
	trans[11][37]	= settr(1489,0,38,1,0,"goto T0_S119", 0, 2, 0);
	trans[11][40]	= settr(1492,0,50,1,0,"break", 0, 2, 0);
	trans[11][51]	= settr(1503,0,50,1,0,".(goto)", 0, 2, 0);
	T = trans[11][50] = settr(1502,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1502,0,43,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1502,0,44,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1502,0,46,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1502,0,48,0,0,"DO", 0, 2, 0);
	T = trans[ 11][43] = settr(1495,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(1495,2,41,0,0,"ATOMIC", 1, 2, 0);
	trans[11][41]	= settr(1493,0,50,31,31,"(((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&(EP==3)))", 1, 2, 0); /* m: 42 -> 50,0 */
	reached11[42] = 1;
	trans[11][42]	= settr(0,0,0,0,0,"assert(!(((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&(EP==3))))",0,0,0);
	trans[11][44]	= settr(1496,0,28,32,0,"((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3))))", 1, 2, 0);
	trans[11][45]	= settr(1497,0,28,1,0,"goto T0_S120", 0, 2, 0);
	trans[11][46]	= settr(1498,0,38,33,0,"(((EP==0)&&(EP_Stack==2)))", 1, 2, 0);
	trans[11][47]	= settr(1499,0,38,1,0,"goto T0_S119", 0, 2, 0);
	trans[11][48]	= settr(1500,0,50,34,0,"(((EP==1)&&(EP_Stack==2)))", 1, 2, 0);
	trans[11][49]	= settr(1501,0,50,1,0,"goto T0_S118", 0, 2, 0);
	trans[11][52]	= settr(1504,0,64,1,0,"break", 0, 2, 0);
	trans[11][65]	= settr(1517,0,64,1,0,".(goto)", 0, 2, 0);
	T = trans[11][64] = settr(1516,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1516,0,55,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1516,0,56,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1516,0,58,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1516,0,60,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1516,0,62,0,0,"DO", 0, 2, 0);
	T = trans[ 11][55] = settr(1507,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(1507,2,53,0,0,"ATOMIC", 1, 2, 0);
	trans[11][53]	= settr(1505,0,64,35,35,"((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2)))&&(EP==3)))", 1, 2, 0); /* m: 54 -> 64,0 */
	reached11[54] = 1;
	trans[11][54]	= settr(0,0,0,0,0,"assert(!((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2)))&&(EP==3))))",0,0,0);
	trans[11][56]	= settr(1508,0,28,36,0,"(((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2))))", 1, 2, 0);
	trans[11][57]	= settr(1509,0,28,1,0,"goto T0_S120", 0, 2, 0);
	trans[11][58]	= settr(1510,0,38,37,0,"((((EP==0)&&(EP_Stack==2))&&((EP==1)&&(EP_Stack==2))))", 1, 2, 0);
	trans[11][59]	= settr(1511,0,38,1,0,"goto T0_S119", 0, 2, 0);
	trans[11][60]	= settr(1512,0,50,38,0,"(((EP==1)&&(EP_Stack==2)))", 1, 2, 0);
	trans[11][61]	= settr(1513,0,50,1,0,"goto T0_S118", 0, 2, 0);
	trans[11][62]	= settr(1514,0,64,39,0,"(((EP==0)&&(EP_Stack==2)))", 1, 2, 0);
	trans[11][63]	= settr(1515,0,64,1,0,"goto T0_S117", 0, 2, 0);
	trans[11][66]	= settr(1518,0,80,1,0,"break", 0, 2, 0);
	trans[11][81]	= settr(1533,0,80,1,0,".(goto)", 0, 2, 0);
	T = trans[11][80] = settr(1532,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1532,0,69,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1532,0,70,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1532,0,72,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1532,0,74,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1532,0,76,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1532,0,78,0,0,"DO", 0, 2, 0);
	T = trans[ 11][69] = settr(1521,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(1521,2,67,0,0,"ATOMIC", 1, 2, 0);
	trans[11][67]	= settr(1519,0,80,40,40,"((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2)))&&(EP==3)))", 1, 2, 0); /* m: 68 -> 80,0 */
	reached11[68] = 1;
	trans[11][68]	= settr(0,0,0,0,0,"assert(!((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2)))&&(EP==3))))",0,0,0);
	trans[11][70]	= settr(1522,0,28,41,0,"(((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2))))", 1, 2, 0);
	trans[11][71]	= settr(1523,0,28,1,0,"goto T0_S120", 0, 2, 0);
	trans[11][72]	= settr(1524,0,38,42,0,"((((EP==0)&&(EP_Stack==2))&&((EP==1)&&(EP_Stack==2))))", 1, 2, 0);
	trans[11][73]	= settr(1525,0,38,1,0,"goto T0_S119", 0, 2, 0);
	trans[11][74]	= settr(1526,0,50,43,0,"((((EP==0)&&(EP_Stack==2))&&((EP==1)&&(EP_Stack==2))))", 1, 2, 0);
	trans[11][75]	= settr(1527,0,50,1,0,"goto T0_S118", 0, 2, 0);
	trans[11][76]	= settr(1528,0,64,44,0,"(((EP==0)&&(EP_Stack==2)))", 1, 2, 0);
	trans[11][77]	= settr(1529,0,64,1,0,"goto T0_S117", 0, 2, 0);
	trans[11][78]	= settr(1530,0,80,45,0,"(((EP==0)&&(EP_Stack==3)))", 1, 2, 0);
	trans[11][79]	= settr(1531,0,80,1,0,"goto T0_S116", 0, 2, 0);
	trans[11][82]	= settr(1534,0,98,1,0,"break", 0, 2, 0);
	trans[11][99]	= settr(1551,0,98,1,0,".(goto)", 0, 2, 0);
	T = trans[11][98] = settr(1550,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1550,0,85,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1550,0,86,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1550,0,88,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1550,0,90,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1550,0,92,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1550,0,94,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1550,0,96,0,0,"DO", 0, 2, 0);
	T = trans[ 11][85] = settr(1537,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(1537,2,83,0,0,"ATOMIC", 1, 2, 0);
	trans[11][83]	= settr(1535,0,98,46,46,"((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2)))&&(EP==3)))", 1, 2, 0); /* m: 84 -> 98,0 */
	reached11[84] = 1;
	trans[11][84]	= settr(0,0,0,0,0,"assert(!((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2)))&&(EP==3))))",0,0,0);
	trans[11][86]	= settr(1538,0,28,47,0,"(((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2))))", 1, 2, 0);
	trans[11][87]	= settr(1539,0,28,1,0,"goto T0_S120", 0, 2, 0);
	trans[11][88]	= settr(1540,0,38,48,0,"(((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2))))", 1, 2, 0);
	trans[11][89]	= settr(1541,0,38,1,0,"goto T0_S119", 0, 2, 0);
	trans[11][90]	= settr(1542,0,50,49,0,"(((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2))))", 1, 2, 0);
	trans[11][91]	= settr(1543,0,50,1,0,"goto T0_S118", 0, 2, 0);
	trans[11][92]	= settr(1544,0,64,50,0,"((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3))))", 1, 2, 0);
	trans[11][93]	= settr(1545,0,64,1,0,"goto T0_S117", 0, 2, 0);
	trans[11][94]	= settr(1546,0,80,51,0,"(((EP==0)&&(EP_Stack==3)))", 1, 2, 0);
	trans[11][95]	= settr(1547,0,80,1,0,"goto T0_S116", 0, 2, 0);
	trans[11][96]	= settr(1548,0,98,52,0,"(((EP==1)&&(EP_Stack==3)))", 1, 2, 0);
	trans[11][97]	= settr(1549,0,98,1,0,"goto T0_S115", 0, 2, 0);
	trans[11][100]	= settr(1552,0,118,1,0,"break", 0, 2, 0);
	trans[11][119]	= settr(1571,0,118,1,0,".(goto)", 0, 2, 0);
	T = trans[11][118] = settr(1570,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1570,0,103,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1570,0,104,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1570,0,106,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1570,0,108,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1570,0,110,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1570,0,112,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1570,0,114,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1570,0,116,0,0,"DO", 0, 2, 0);
	T = trans[ 11][103] = settr(1555,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(1555,2,101,0,0,"ATOMIC", 1, 2, 0);
	trans[11][101]	= settr(1553,0,118,53,53,"(((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==3)))&&(EP==3)))", 1, 2, 0); /* m: 102 -> 118,0 */
	reached11[102] = 1;
	trans[11][102]	= settr(0,0,0,0,0,"assert(!(((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==3)))&&(EP==3))))",0,0,0);
	trans[11][104]	= settr(1556,0,28,54,0,"((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==3))))", 1, 2, 0);
	trans[11][105]	= settr(1557,0,28,1,0,"goto T0_S120", 0, 2, 0);
	trans[11][106]	= settr(1558,0,38,55,0,"((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==3))))", 1, 2, 0);
	trans[11][107]	= settr(1559,0,38,1,0,"goto T0_S119", 0, 2, 0);
	trans[11][108]	= settr(1560,0,50,56,0,"((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==3))))", 1, 2, 0);
	trans[11][109]	= settr(1561,0,50,1,0,"goto T0_S118", 0, 2, 0);
	trans[11][110]	= settr(1562,0,64,57,0,"(((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==3))))", 1, 2, 0);
	trans[11][111]	= settr(1563,0,64,1,0,"goto T0_S117", 0, 2, 0);
	trans[11][112]	= settr(1564,0,80,58,0,"((((EP==0)&&(EP_Stack==3))&&((EP==1)&&(EP_Stack==3))))", 1, 2, 0);
	trans[11][113]	= settr(1565,0,80,1,0,"goto T0_S116", 0, 2, 0);
	trans[11][114]	= settr(1566,0,98,59,0,"(((EP==1)&&(EP_Stack==3)))", 1, 2, 0);
	trans[11][115]	= settr(1567,0,98,1,0,"goto T0_S115", 0, 2, 0);
	trans[11][116]	= settr(1568,0,118,60,0,"(((EP==3)&&(((pending_exp>>1)&1)==1)))", 1, 2, 0);
	trans[11][117]	= settr(1569,0,118,1,0,"goto T0_S114", 0, 2, 0);
	trans[11][120]	= settr(1572,0,121,1,0,"break", 0, 2, 0);
	trans[11][121]	= settr(1573,0,122,1,0,"(1)", 0, 2, 0);
	trans[11][122]	= settr(1574,0,0,61,61,"-end-", 0, 3500, 0);

	/* proctype 10: P2_switching_not_P1_witness_unfolded */

	trans[10] = (Trans **) emalloc(101*sizeof(Trans *));

	trans[10][19]	= settr(1371,0,18,1,0,".(goto)", 0, 2, 0);
	T = trans[10][18] = settr(1370,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1370,0,3,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1370,0,4,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1370,0,6,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1370,0,8,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1370,0,10,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1370,0,12,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1370,0,14,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1370,0,16,0,0,"DO", 0, 2, 0);
	T = trans[ 10][3] = settr(1355,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(1355,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[10][1]	= settr(1353,0,18,62,62,"(((((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==(2+1))))&&((EP==1)&&(EP_Stack==2)))&&(EP==(2+1))))", 1, 2, 0); /* m: 2 -> 18,0 */
	reached10[2] = 1;
	trans[10][2]	= settr(0,0,0,0,0,"assert(!(((((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==(2+1))))&&((EP==1)&&(EP_Stack==2)))&&(EP==(2+1)))))",0,0,0);
	trans[10][4]	= settr(1356,0,26,63,0,"((((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==(2+1))))&&((EP==1)&&(EP_Stack==2))))", 1, 2, 0);
	trans[10][5]	= settr(1357,0,26,1,0,"goto T0_S84", 0, 2, 0);
	trans[10][6]	= settr(1358,0,36,64,0,"((((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==(2+1))))&&((EP==1)&&(EP_Stack==2))))", 1, 2, 0);
	trans[10][7]	= settr(1359,0,36,1,0,"goto T0_S83", 0, 2, 0);
	trans[10][8]	= settr(1360,0,48,65,0,"((((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==(2+1))))&&((EP==1)&&(EP_Stack==2))))", 1, 2, 0);
	trans[10][9]	= settr(1361,0,48,1,0,"goto T0_S82", 0, 2, 0);
	trans[10][10]	= settr(1362,0,62,66,0,"(((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==(2+1)))))", 1, 2, 0);
	trans[10][11]	= settr(1363,0,62,1,0,"goto T0_S81", 0, 2, 0);
	trans[10][12]	= settr(1364,0,78,67,0,"((((EP==0)&&(EP_Stack==(2+1)))&&((EP==1)&&(EP_Stack==(2+1)))))", 1, 2, 0);
	trans[10][13]	= settr(1365,0,78,1,0,"goto T0_S80", 0, 2, 0);
	trans[10][14]	= settr(1366,0,96,68,0,"(((EP==1)&&(EP_Stack==(2+1))))", 1, 2, 0);
	trans[10][15]	= settr(1367,0,96,1,0,"goto T0_S79", 0, 2, 0);
	trans[10][16]	= settr(1368,0,18,1,0,"(1)", 0, 2, 0);
	trans[10][17]	= settr(1369,0,18,1,0,"goto T0_init", 0, 2, 0);
	trans[10][20]	= settr(1372,0,26,1,0,"break", 0, 2, 0);
	trans[10][27]	= settr(1379,0,26,1,0,".(goto)", 0, 2, 0);
	T = trans[10][26] = settr(1378,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1378,0,23,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1378,0,24,0,0,"DO", 0, 2, 0);
	T = trans[ 10][23] = settr(1375,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(1375,2,21,0,0,"ATOMIC", 1, 2, 0);
	trans[10][21]	= settr(1373,0,26,69,69,"((EP==(2+1)))", 1, 2, 0); /* m: 22 -> 26,0 */
	reached10[22] = 1;
	trans[10][22]	= settr(0,0,0,0,0,"assert(!((EP==(2+1))))",0,0,0);
	trans[10][24]	= settr(1376,0,26,70,0,"(((EP==0)&&(EP_Stack==(2+1))))", 1, 2, 0);
	trans[10][25]	= settr(1377,0,26,1,0,"goto T0_S84", 0, 2, 0);
	trans[10][28]	= settr(1380,0,36,1,0,"break", 0, 2, 0);
	trans[10][37]	= settr(1389,0,36,1,0,".(goto)", 0, 2, 0);
	T = trans[10][36] = settr(1388,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1388,0,31,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1388,0,32,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1388,0,34,0,0,"DO", 0, 2, 0);
	T = trans[ 10][31] = settr(1383,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(1383,2,29,0,0,"ATOMIC", 1, 2, 0);
	trans[10][29]	= settr(1381,0,36,71,71,"((((EP==0)&&(EP_Stack==(2+1)))&&(EP==(2+1))))", 1, 2, 0); /* m: 30 -> 36,0 */
	reached10[30] = 1;
	trans[10][30]	= settr(0,0,0,0,0,"assert(!((((EP==0)&&(EP_Stack==(2+1)))&&(EP==(2+1)))))",0,0,0);
	trans[10][32]	= settr(1384,0,26,72,0,"(((EP==0)&&(EP_Stack==(2+1))))", 1, 2, 0);
	trans[10][33]	= settr(1385,0,26,1,0,"goto T0_S84", 0, 2, 0);
	trans[10][34]	= settr(1386,0,36,73,0,"(((EP==0)&&(EP_Stack==2)))", 1, 2, 0);
	trans[10][35]	= settr(1387,0,36,1,0,"goto T0_S83", 0, 2, 0);
	trans[10][38]	= settr(1390,0,48,1,0,"break", 0, 2, 0);
	trans[10][49]	= settr(1401,0,48,1,0,".(goto)", 0, 2, 0);
	T = trans[10][48] = settr(1400,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1400,0,41,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1400,0,42,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1400,0,44,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1400,0,46,0,0,"DO", 0, 2, 0);
	T = trans[ 10][41] = settr(1393,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(1393,2,39,0,0,"ATOMIC", 1, 2, 0);
	trans[10][39]	= settr(1391,0,48,74,74,"(((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&(EP==(2+1))))", 1, 2, 0); /* m: 40 -> 48,0 */
	reached10[40] = 1;
	trans[10][40]	= settr(0,0,0,0,0,"assert(!(((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&(EP==(2+1)))))",0,0,0);
	trans[10][42]	= settr(1394,0,26,75,0,"((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2))))", 1, 2, 0);
	trans[10][43]	= settr(1395,0,26,1,0,"goto T0_S84", 0, 2, 0);
	trans[10][44]	= settr(1396,0,36,76,0,"(((EP==0)&&(EP_Stack==2)))", 1, 2, 0);
	trans[10][45]	= settr(1397,0,36,1,0,"goto T0_S83", 0, 2, 0);
	trans[10][46]	= settr(1398,0,48,77,0,"(((EP==1)&&(EP_Stack==2)))", 1, 2, 0);
	trans[10][47]	= settr(1399,0,48,1,0,"goto T0_S82", 0, 2, 0);
	trans[10][50]	= settr(1402,0,62,1,0,"break", 0, 2, 0);
	trans[10][63]	= settr(1415,0,62,1,0,".(goto)", 0, 2, 0);
	T = trans[10][62] = settr(1414,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1414,0,53,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1414,0,54,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1414,0,56,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1414,0,58,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1414,0,60,0,0,"DO", 0, 2, 0);
	T = trans[ 10][53] = settr(1405,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(1405,2,51,0,0,"ATOMIC", 1, 2, 0);
	trans[10][51]	= settr(1403,0,62,78,78,"((((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==2)))&&(EP==(2+1))))", 1, 2, 0); /* m: 52 -> 62,0 */
	reached10[52] = 1;
	trans[10][52]	= settr(0,0,0,0,0,"assert(!((((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==2)))&&(EP==(2+1)))))",0,0,0);
	trans[10][54]	= settr(1406,0,26,79,0,"(((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==2))))", 1, 2, 0);
	trans[10][55]	= settr(1407,0,26,1,0,"goto T0_S84", 0, 2, 0);
	trans[10][56]	= settr(1408,0,36,80,0,"((((EP==0)&&(EP_Stack==2))&&((EP==1)&&(EP_Stack==2))))", 1, 2, 0);
	trans[10][57]	= settr(1409,0,36,1,0,"goto T0_S83", 0, 2, 0);
	trans[10][58]	= settr(1410,0,48,81,0,"(((EP==1)&&(EP_Stack==2)))", 1, 2, 0);
	trans[10][59]	= settr(1411,0,48,1,0,"goto T0_S82", 0, 2, 0);
	trans[10][60]	= settr(1412,0,62,82,0,"(((EP==0)&&(EP_Stack==2)))", 1, 2, 0);
	trans[10][61]	= settr(1413,0,62,1,0,"goto T0_S81", 0, 2, 0);
	trans[10][64]	= settr(1416,0,78,1,0,"break", 0, 2, 0);
	trans[10][79]	= settr(1431,0,78,1,0,".(goto)", 0, 2, 0);
	T = trans[10][78] = settr(1430,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1430,0,67,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1430,0,68,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1430,0,70,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1430,0,72,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1430,0,74,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1430,0,76,0,0,"DO", 0, 2, 0);
	T = trans[ 10][67] = settr(1419,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(1419,2,65,0,0,"ATOMIC", 1, 2, 0);
	trans[10][65]	= settr(1417,0,78,83,83,"((((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==2)))&&(EP==(2+1))))", 1, 2, 0); /* m: 66 -> 78,0 */
	reached10[66] = 1;
	trans[10][66]	= settr(0,0,0,0,0,"assert(!((((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==2)))&&(EP==(2+1)))))",0,0,0);
	trans[10][68]	= settr(1420,0,26,84,0,"(((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==2))))", 1, 2, 0);
	trans[10][69]	= settr(1421,0,26,1,0,"goto T0_S84", 0, 2, 0);
	trans[10][70]	= settr(1422,0,36,85,0,"((((EP==0)&&(EP_Stack==2))&&((EP==1)&&(EP_Stack==2))))", 1, 2, 0);
	trans[10][71]	= settr(1423,0,36,1,0,"goto T0_S83", 0, 2, 0);
	trans[10][72]	= settr(1424,0,48,86,0,"((((EP==0)&&(EP_Stack==2))&&((EP==1)&&(EP_Stack==2))))", 1, 2, 0);
	trans[10][73]	= settr(1425,0,48,1,0,"goto T0_S82", 0, 2, 0);
	trans[10][74]	= settr(1426,0,62,87,0,"(((EP==0)&&(EP_Stack==2)))", 1, 2, 0);
	trans[10][75]	= settr(1427,0,62,1,0,"goto T0_S81", 0, 2, 0);
	trans[10][76]	= settr(1428,0,78,88,0,"(((EP==0)&&(EP_Stack==(2+1))))", 1, 2, 0);
	trans[10][77]	= settr(1429,0,78,1,0,"goto T0_S80", 0, 2, 0);
	trans[10][80]	= settr(1432,0,96,1,0,"break", 0, 2, 0);
	trans[10][97]	= settr(1449,0,96,1,0,".(goto)", 0, 2, 0);
	T = trans[10][96] = settr(1448,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1448,0,83,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1448,0,84,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1448,0,86,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1448,0,88,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1448,0,90,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1448,0,92,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1448,0,94,0,0,"DO", 0, 2, 0);
	T = trans[ 10][83] = settr(1435,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(1435,2,81,0,0,"ATOMIC", 1, 2, 0);
	trans[10][81]	= settr(1433,0,96,89,89,"((((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==2)))&&(EP==(2+1))))", 1, 2, 0); /* m: 82 -> 96,0 */
	reached10[82] = 1;
	trans[10][82]	= settr(0,0,0,0,0,"assert(!((((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==2)))&&(EP==(2+1)))))",0,0,0);
	trans[10][84]	= settr(1436,0,26,90,0,"(((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==2))))", 1, 2, 0);
	trans[10][85]	= settr(1437,0,26,1,0,"goto T0_S84", 0, 2, 0);
	trans[10][86]	= settr(1438,0,36,91,0,"(((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==2))))", 1, 2, 0);
	trans[10][87]	= settr(1439,0,36,1,0,"goto T0_S83", 0, 2, 0);
	trans[10][88]	= settr(1440,0,48,92,0,"(((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==2))))", 1, 2, 0);
	trans[10][89]	= settr(1441,0,48,1,0,"goto T0_S82", 0, 2, 0);
	trans[10][90]	= settr(1442,0,62,93,0,"((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2))))", 1, 2, 0);
	trans[10][91]	= settr(1443,0,62,1,0,"goto T0_S81", 0, 2, 0);
	trans[10][92]	= settr(1444,0,78,94,0,"(((EP==0)&&(EP_Stack==(2+1))))", 1, 2, 0);
	trans[10][93]	= settr(1445,0,78,1,0,"goto T0_S80", 0, 2, 0);
	trans[10][94]	= settr(1446,0,96,95,0,"(((EP==1)&&(EP_Stack==(2+1))))", 1, 2, 0);
	trans[10][95]	= settr(1447,0,96,1,0,"goto T0_S79", 0, 2, 0);
	trans[10][98]	= settr(1450,0,99,1,0,"break", 0, 2, 0);
	trans[10][99]	= settr(1451,0,100,1,0,"(1)", 0, 2, 0);
	trans[10][100]	= settr(1452,0,0,96,96,"-end-", 0, 3500, 0);

	/* proctype 9: all_starvation_free */

	trans[9] = (Trans **) emalloc(157*sizeof(Trans *));

	trans[9][20]	= settr(1216,0,19,1,0,".(goto)", 0, 2, 0);
	T = trans[9][19] = settr(1215,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1215,0,1,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1215,0,3,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1215,0,5,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1215,0,7,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1215,0,9,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1215,0,11,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1215,0,13,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1215,0,15,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1215,0,17,0,0,"DO", 0, 2, 0);
	trans[9][1]	= settr(1197,0,28,97,0,"(((!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==2)))&&(EP>=2)))", 1, 2, 0);
	trans[9][2]	= settr(1198,0,28,1,0,"goto accept_S9", 0, 2, 0);
	trans[9][3]	= settr(1199,0,123,98,0,"((!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==2))))", 1, 2, 0);
	trans[9][4]	= settr(1200,0,123,1,0,"goto T0_S350", 0, 2, 0);
	trans[9][5]	= settr(1201,0,44,99,0,"(((!((pending_exp>0))&&!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1)))))&&!((EP==2))))", 1, 2, 0);
	trans[9][6]	= settr(1202,0,44,1,0,"goto accept_S244", 0, 2, 0);
	trans[9][7]	= settr(1203,0,37,100,0,"(((!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==(2+1))))&&(EP>=2)))", 1, 2, 0);
	trans[9][8]	= settr(1204,0,37,1,0,"goto accept_S140", 0, 2, 0);
	trans[9][9]	= settr(1205,0,132,101,0,"((!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==(2+1)))))", 1, 2, 0);
	trans[9][10]	= settr(1206,0,132,1,0,"goto T0_S371", 0, 2, 0);
	trans[9][11]	= settr(1207,0,51,102,0,"(((!((pending_exp>0))&&!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1)))))&&!((EP==(2+1)))))", 1, 2, 0);
	trans[9][12]	= settr(1208,0,51,1,0,"goto accept_S267", 0, 2, 0);
	trans[9][13]	= settr(1209,0,19,103,0,"((EP>=2))", 1, 2, 0);
	trans[9][14]	= settr(1210,0,19,1,0,"goto T0_init", 0, 2, 0);
	trans[9][15]	= settr(1211,0,153,1,0,"(1)", 0, 2, 0);
	trans[9][16]	= settr(1212,0,153,1,0,"goto T0_S384", 0, 2, 0);
	trans[9][17]	= settr(1213,0,114,104,0,"(!((pending_exp>0)))", 1, 2, 0);
	trans[9][18]	= settr(1214,0,114,1,0,"goto T0_S317", 0, 2, 0);
	trans[9][21]	= settr(1217,0,28,1,0,"break", 0, 2, 0);
	trans[9][29]	= settr(1225,0,28,1,0,".(goto)", 0, 2, 0);
	T = trans[9][28] = settr(1224,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1224,0,22,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1224,0,24,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1224,0,26,0,0,"DO", 0, 2, 0);
	trans[9][22]	= settr(1218,0,74,105,0,"((!((EP==2))&&(EP>=2)))", 1, 2, 0);
	trans[9][23]	= settr(1219,0,74,1,0,"goto T0_S9", 0, 2, 0);
	trans[9][24]	= settr(1220,0,123,106,0,"(!((EP==2)))", 1, 2, 0);
	trans[9][25]	= settr(1221,0,123,1,0,"goto T0_S350", 0, 2, 0);
	trans[9][26]	= settr(1222,0,90,107,0,"((!((pending_exp>0))&&!((EP==2))))", 1, 2, 0);
	trans[9][27]	= settr(1223,0,90,1,0,"goto T0_S244", 0, 2, 0);
	trans[9][30]	= settr(1226,0,37,1,0,"break", 0, 2, 0);
	trans[9][38]	= settr(1234,0,37,1,0,".(goto)", 0, 2, 0);
	T = trans[9][37] = settr(1233,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1233,0,31,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1233,0,33,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1233,0,35,0,0,"DO", 0, 2, 0);
	trans[9][31]	= settr(1227,0,83,108,0,"((!((EP==(2+1)))&&(EP>=2)))", 1, 2, 0);
	trans[9][32]	= settr(1228,0,83,1,0,"goto T0_S140", 0, 2, 0);
	trans[9][33]	= settr(1229,0,132,109,0,"(!((EP==(2+1))))", 1, 2, 0);
	trans[9][34]	= settr(1230,0,132,1,0,"goto T0_S371", 0, 2, 0);
	trans[9][35]	= settr(1231,0,97,110,0,"((!((pending_exp>0))&&!((EP==(2+1)))))", 1, 2, 0);
	trans[9][36]	= settr(1232,0,97,1,0,"goto T0_S267", 0, 2, 0);
	trans[9][39]	= settr(1235,0,44,1,0,"break", 0, 2, 0);
	trans[9][45]	= settr(1241,0,44,1,0,".(goto)", 0, 2, 0);
	T = trans[9][44] = settr(1240,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1240,0,40,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1240,0,42,0,0,"DO", 0, 2, 0);
	trans[9][40]	= settr(1236,0,123,111,0,"(!((EP==2)))", 1, 2, 0);
	trans[9][41]	= settr(1237,0,123,1,0,"goto T0_S350", 0, 2, 0);
	trans[9][42]	= settr(1238,0,90,112,0,"(((!((pending_exp>0))&&!((EP==2)))||(!((EP==2))&&(EP>=2))))", 1, 2, 0);
	trans[9][43]	= settr(1239,0,90,1,0,"goto T0_S244", 0, 2, 0);
	trans[9][46]	= settr(1242,0,51,1,0,"break", 0, 2, 0);
	trans[9][52]	= settr(1248,0,51,1,0,".(goto)", 0, 2, 0);
	T = trans[9][51] = settr(1247,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1247,0,47,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1247,0,49,0,0,"DO", 0, 2, 0);
	trans[9][47]	= settr(1243,0,132,113,0,"(!((EP==(2+1))))", 1, 2, 0);
	trans[9][48]	= settr(1244,0,132,1,0,"goto T0_S371", 0, 2, 0);
	trans[9][49]	= settr(1245,0,97,114,0,"(((!((pending_exp>0))&&!((EP==(2+1))))||(!((EP==(2+1)))&&(EP>=2))))", 1, 2, 0);
	trans[9][50]	= settr(1246,0,97,1,0,"goto T0_S267", 0, 2, 0);
	trans[9][53]	= settr(1249,0,58,1,0,"break", 0, 2, 0);
	trans[9][59]	= settr(1255,0,58,1,0,".(goto)", 0, 2, 0);
	T = trans[9][58] = settr(1254,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1254,0,54,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1254,0,56,0,0,"DO", 0, 2, 0);
	trans[9][54]	= settr(1250,0,123,115,0,"(!((EP==2)))", 1, 2, 0);
	trans[9][55]	= settr(1251,0,123,1,0,"goto T0_S350", 0, 2, 0);
	trans[9][56]	= settr(1252,0,90,116,0,"((!((EP==2))&&(EP>=2)))", 1, 2, 0);
	trans[9][57]	= settr(1253,0,90,1,0,"goto T0_S244", 0, 2, 0);
	trans[9][60]	= settr(1256,0,65,1,0,"break", 0, 2, 0);
	trans[9][66]	= settr(1262,0,65,1,0,".(goto)", 0, 2, 0);
	T = trans[9][65] = settr(1261,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1261,0,61,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1261,0,63,0,0,"DO", 0, 2, 0);
	trans[9][61]	= settr(1257,0,132,117,0,"(!((EP==(2+1))))", 1, 2, 0);
	trans[9][62]	= settr(1258,0,132,1,0,"goto T0_S371", 0, 2, 0);
	trans[9][63]	= settr(1259,0,97,118,0,"((!((EP==(2+1)))&&(EP>=2)))", 1, 2, 0);
	trans[9][64]	= settr(1260,0,97,1,0,"goto T0_S267", 0, 2, 0);
	trans[9][67]	= settr(1263,0,74,1,0,"break", 0, 2, 0);
	trans[9][75]	= settr(1271,0,74,1,0,".(goto)", 0, 2, 0);
	T = trans[9][74] = settr(1270,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1270,0,68,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1270,0,70,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1270,0,72,0,0,"DO", 0, 2, 0);
	trans[9][68]	= settr(1264,0,28,119,0,"((!((EP==2))&&(EP>=2)))", 1, 2, 0);
	trans[9][69]	= settr(1265,0,28,1,0,"goto accept_S9", 0, 2, 0);
	trans[9][70]	= settr(1266,0,123,120,0,"(!((EP==2)))", 1, 2, 0);
	trans[9][71]	= settr(1267,0,123,1,0,"goto T0_S350", 0, 2, 0);
	trans[9][72]	= settr(1268,0,44,121,0,"((!((pending_exp>0))&&!((EP==2))))", 1, 2, 0);
	trans[9][73]	= settr(1269,0,44,1,0,"goto accept_S244", 0, 2, 0);
	trans[9][76]	= settr(1272,0,83,1,0,"break", 0, 2, 0);
	trans[9][84]	= settr(1280,0,83,1,0,".(goto)", 0, 2, 0);
	T = trans[9][83] = settr(1279,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1279,0,77,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1279,0,79,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1279,0,81,0,0,"DO", 0, 2, 0);
	trans[9][77]	= settr(1273,0,37,122,0,"((!((EP==(2+1)))&&(EP>=2)))", 1, 2, 0);
	trans[9][78]	= settr(1274,0,37,1,0,"goto accept_S140", 0, 2, 0);
	trans[9][79]	= settr(1275,0,132,123,0,"(!((EP==(2+1))))", 1, 2, 0);
	trans[9][80]	= settr(1276,0,132,1,0,"goto T0_S371", 0, 2, 0);
	trans[9][81]	= settr(1277,0,51,124,0,"((!((pending_exp>0))&&!((EP==(2+1)))))", 1, 2, 0);
	trans[9][82]	= settr(1278,0,51,1,0,"goto accept_S267", 0, 2, 0);
	trans[9][85]	= settr(1281,0,90,1,0,"break", 0, 2, 0);
	trans[9][91]	= settr(1287,0,90,1,0,".(goto)", 0, 2, 0);
	T = trans[9][90] = settr(1286,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1286,0,86,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1286,0,88,0,0,"DO", 0, 2, 0);
	trans[9][86]	= settr(1282,0,123,125,0,"(!((EP==2)))", 1, 2, 0);
	trans[9][87]	= settr(1283,0,123,1,0,"goto T0_S350", 0, 2, 0);
	trans[9][88]	= settr(1284,0,44,126,0,"(((!((pending_exp>0))&&!((EP==2)))||(!((EP==2))&&(EP>=2))))", 1, 2, 0);
	trans[9][89]	= settr(1285,0,44,1,0,"goto accept_S244", 0, 2, 0);
	trans[9][92]	= settr(1288,0,97,1,0,"break", 0, 2, 0);
	trans[9][98]	= settr(1294,0,97,1,0,".(goto)", 0, 2, 0);
	T = trans[9][97] = settr(1293,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1293,0,93,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1293,0,95,0,0,"DO", 0, 2, 0);
	trans[9][93]	= settr(1289,0,132,127,0,"(!((EP==(2+1))))", 1, 2, 0);
	trans[9][94]	= settr(1290,0,132,1,0,"goto T0_S371", 0, 2, 0);
	trans[9][95]	= settr(1291,0,51,128,0,"(((!((pending_exp>0))&&!((EP==(2+1))))||(!((EP==(2+1)))&&(EP>=2))))", 1, 2, 0);
	trans[9][96]	= settr(1292,0,51,1,0,"goto accept_S267", 0, 2, 0);
	trans[9][99]	= settr(1295,0,114,1,0,"break", 0, 2, 0);
	trans[9][115]	= settr(1311,0,114,1,0,".(goto)", 0, 2, 0);
	T = trans[9][114] = settr(1310,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1310,0,100,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1310,0,102,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1310,0,104,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1310,0,106,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1310,0,108,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1310,0,110,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1310,0,112,0,0,"DO", 0, 2, 0);
	trans[9][100]	= settr(1296,0,123,129,0,"((!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==2))))", 1, 2, 0);
	trans[9][101]	= settr(1297,0,123,1,0,"goto T0_S350", 0, 2, 0);
	trans[9][102]	= settr(1298,0,44,130,0,"(((!((pending_exp>0))&&(!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==2))))||(!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&(!((EP==2))&&(EP>=2)))))", 1, 2, 0);
	trans[9][103]	= settr(1299,0,44,1,0,"goto accept_S244", 0, 2, 0);
	trans[9][104]	= settr(1300,0,132,131,0,"((!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==(2+1)))))", 1, 2, 0);
	trans[9][105]	= settr(1301,0,132,1,0,"goto T0_S371", 0, 2, 0);
	trans[9][106]	= settr(1302,0,51,132,0,"(((!((pending_exp>0))&&(!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==(2+1)))))||(!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&(!((EP==(2+1)))&&(EP>=2)))))", 1, 2, 0);
	trans[9][107]	= settr(1303,0,51,1,0,"goto accept_S267", 0, 2, 0);
	trans[9][108]	= settr(1304,0,19,133,0,"((EP>=2))", 1, 2, 0);
	trans[9][109]	= settr(1305,0,19,1,0,"goto T0_init", 0, 2, 0);
	trans[9][110]	= settr(1306,0,153,1,0,"(1)", 0, 2, 0);
	trans[9][111]	= settr(1307,0,153,1,0,"goto T0_S384", 0, 2, 0);
	trans[9][112]	= settr(1308,0,114,134,0,"(!((pending_exp>0)))", 1, 2, 0);
	trans[9][113]	= settr(1309,0,114,1,0,"goto T0_S317", 0, 2, 0);
	trans[9][116]	= settr(1312,0,123,1,0,"break", 0, 2, 0);
	trans[9][124]	= settr(1320,0,123,1,0,".(goto)", 0, 2, 0);
	T = trans[9][123] = settr(1319,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1319,0,117,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1319,0,119,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1319,0,121,0,0,"DO", 0, 2, 0);
	trans[9][117]	= settr(1313,0,123,135,0,"(!((EP==2)))", 1, 2, 0);
	trans[9][118]	= settr(1314,0,123,1,0,"goto T0_S350", 0, 2, 0);
	trans[9][119]	= settr(1315,0,44,136,0,"((!((EP==2))&&(EP>=2)))", 1, 2, 0);
	trans[9][120]	= settr(1316,0,44,1,0,"goto accept_S244", 0, 2, 0);
	trans[9][121]	= settr(1317,0,58,137,0,"((!((EP==2))&&(EP>=2)))", 1, 2, 0);
	trans[9][122]	= settr(1318,0,58,1,0,"goto accept_S350", 0, 2, 0);
	trans[9][125]	= settr(1321,0,132,1,0,"break", 0, 2, 0);
	trans[9][133]	= settr(1329,0,132,1,0,".(goto)", 0, 2, 0);
	T = trans[9][132] = settr(1328,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1328,0,126,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1328,0,128,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1328,0,130,0,0,"DO", 0, 2, 0);
	trans[9][126]	= settr(1322,0,132,138,0,"(!((EP==(2+1))))", 1, 2, 0);
	trans[9][127]	= settr(1323,0,132,1,0,"goto T0_S371", 0, 2, 0);
	trans[9][128]	= settr(1324,0,51,139,0,"((!((EP==(2+1)))&&(EP>=2)))", 1, 2, 0);
	trans[9][129]	= settr(1325,0,51,1,0,"goto accept_S267", 0, 2, 0);
	trans[9][130]	= settr(1326,0,65,140,0,"((!((EP==(2+1)))&&(EP>=2)))", 1, 2, 0);
	trans[9][131]	= settr(1327,0,65,1,0,"goto accept_S371", 0, 2, 0);
	trans[9][134]	= settr(1330,0,153,1,0,"break", 0, 2, 0);
	trans[9][154]	= settr(1350,0,153,1,0,".(goto)", 0, 2, 0);
	T = trans[9][153] = settr(1349,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1349,0,135,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1349,0,137,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1349,0,139,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1349,0,141,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1349,0,143,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1349,0,145,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1349,0,147,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1349,0,149,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1349,0,151,0,0,"DO", 0, 2, 0);
	trans[9][135]	= settr(1331,0,123,141,0,"((!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==2))))", 1, 2, 0);
	trans[9][136]	= settr(1332,0,123,1,0,"goto T0_S350", 0, 2, 0);
	trans[9][137]	= settr(1333,0,132,142,0,"((!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==(2+1)))))", 1, 2, 0);
	trans[9][138]	= settr(1334,0,132,1,0,"goto T0_S371", 0, 2, 0);
	trans[9][139]	= settr(1335,0,19,143,0,"((EP>=2))", 1, 2, 0);
	trans[9][140]	= settr(1336,0,19,1,0,"goto T0_init", 0, 2, 0);
	trans[9][141]	= settr(1337,0,153,1,0,"(1)", 0, 2, 0);
	trans[9][142]	= settr(1338,0,153,1,0,"goto T0_S384", 0, 2, 0);
	trans[9][143]	= settr(1339,0,44,144,0,"(((!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==2)))&&(EP>=2)))", 1, 2, 0);
	trans[9][144]	= settr(1340,0,44,1,0,"goto accept_S244", 0, 2, 0);
	trans[9][145]	= settr(1341,0,58,145,0,"(((!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==2)))&&(EP>=2)))", 1, 2, 0);
	trans[9][146]	= settr(1342,0,58,1,0,"goto accept_S350", 0, 2, 0);
	trans[9][147]	= settr(1343,0,51,146,0,"(((!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==(2+1))))&&(EP>=2)))", 1, 2, 0);
	trans[9][148]	= settr(1344,0,51,1,0,"goto accept_S267", 0, 2, 0);
	trans[9][149]	= settr(1345,0,65,147,0,"(((!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==(2+1))))&&(EP>=2)))", 1, 2, 0);
	trans[9][150]	= settr(1346,0,65,1,0,"goto accept_S371", 0, 2, 0);
	trans[9][151]	= settr(1347,0,114,148,0,"((!((pending_exp>0))&&(EP>=2)))", 1, 2, 0);
	trans[9][152]	= settr(1348,0,114,1,0,"goto T0_S317", 0, 2, 0);
	trans[9][155]	= settr(1351,0,156,1,0,"break", 0, 2, 0);
	trans[9][156]	= settr(1352,0,0,149,149,"-end-", 0, 3500, 0);

	/* proctype 8: starvation_free_task2 */

	trans[8] = (Trans **) emalloc(76*sizeof(Trans *));

	trans[8][12]	= settr(1133,0,11,1,0,".(goto)", 0, 2, 0);
	T = trans[8][11] = settr(1132,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1132,0,1,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1132,0,3,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1132,0,5,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1132,0,7,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1132,0,9,0,0,"DO", 0, 2, 0);
	trans[8][1]	= settr(1122,0,20,150,0,"(((!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==(2+1))))&&(EP>=2)))", 1, 2, 0);
	trans[8][2]	= settr(1123,0,20,1,0,"goto accept_S8", 0, 2, 0);
	trans[8][3]	= settr(1124,0,59,151,0,"((!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==(2+1)))))", 1, 2, 0);
	trans[8][4]	= settr(1125,0,59,1,0,"goto T0_S134", 0, 2, 0);
	trans[8][5]	= settr(1126,0,27,152,0,"(((!((pending_exp>0))&&!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1)))))&&!((EP==(2+1)))))", 1, 2, 0);
	trans[8][6]	= settr(1127,0,27,1,0,"goto accept_S111", 0, 2, 0);
	trans[8][7]	= settr(1128,0,11,153,0,"((!((pending_exp>0))||(EP>=2)))", 1, 2, 0);
	trans[8][8]	= settr(1129,0,11,1,0,"goto T0_init", 0, 2, 0);
	trans[8][9]	= settr(1130,0,72,1,0,"(1)", 0, 2, 0);
	trans[8][10]	= settr(1131,0,72,1,0,"goto T0_S201", 0, 2, 0);
	trans[8][13]	= settr(1134,0,20,1,0,"break", 0, 2, 0);
	trans[8][21]	= settr(1142,0,20,1,0,".(goto)", 0, 2, 0);
	T = trans[8][20] = settr(1141,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1141,0,14,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1141,0,16,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1141,0,18,0,0,"DO", 0, 2, 0);
	trans[8][14]	= settr(1135,0,43,154,0,"((!((EP==(2+1)))&&(EP>=2)))", 1, 2, 0);
	trans[8][15]	= settr(1136,0,43,1,0,"goto T0_S8", 0, 2, 0);
	trans[8][16]	= settr(1137,0,59,155,0,"(!((EP==(2+1))))", 1, 2, 0);
	trans[8][17]	= settr(1138,0,59,1,0,"goto T0_S134", 0, 2, 0);
	trans[8][18]	= settr(1139,0,50,156,0,"((!((pending_exp>0))&&!((EP==(2+1)))))", 1, 2, 0);
	trans[8][19]	= settr(1140,0,50,1,0,"goto T0_S111", 0, 2, 0);
	trans[8][22]	= settr(1143,0,27,1,0,"break", 0, 2, 0);
	trans[8][28]	= settr(1149,0,27,1,0,".(goto)", 0, 2, 0);
	T = trans[8][27] = settr(1148,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1148,0,23,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1148,0,25,0,0,"DO", 0, 2, 0);
	trans[8][23]	= settr(1144,0,59,157,0,"(!((EP==(2+1))))", 1, 2, 0);
	trans[8][24]	= settr(1145,0,59,1,0,"goto T0_S134", 0, 2, 0);
	trans[8][25]	= settr(1146,0,50,158,0,"(((!((pending_exp>0))&&!((EP==(2+1))))||(!((EP==(2+1)))&&(EP>=2))))", 1, 2, 0);
	trans[8][26]	= settr(1147,0,50,1,0,"goto T0_S111", 0, 2, 0);
	trans[8][29]	= settr(1150,0,34,1,0,"break", 0, 2, 0);
	trans[8][35]	= settr(1156,0,34,1,0,".(goto)", 0, 2, 0);
	T = trans[8][34] = settr(1155,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1155,0,30,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1155,0,32,0,0,"DO", 0, 2, 0);
	trans[8][30]	= settr(1151,0,59,159,0,"(!((EP==(2+1))))", 1, 2, 0);
	trans[8][31]	= settr(1152,0,59,1,0,"goto T0_S134", 0, 2, 0);
	trans[8][32]	= settr(1153,0,50,160,0,"((!((EP==(2+1)))&&(EP>=2)))", 1, 2, 0);
	trans[8][33]	= settr(1154,0,50,1,0,"goto T0_S111", 0, 2, 0);
	trans[8][36]	= settr(1157,0,43,1,0,"break", 0, 2, 0);
	trans[8][44]	= settr(1165,0,43,1,0,".(goto)", 0, 2, 0);
	T = trans[8][43] = settr(1164,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1164,0,37,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1164,0,39,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1164,0,41,0,0,"DO", 0, 2, 0);
	trans[8][37]	= settr(1158,0,20,161,0,"((!((EP==(2+1)))&&(EP>=2)))", 1, 2, 0);
	trans[8][38]	= settr(1159,0,20,1,0,"goto accept_S8", 0, 2, 0);
	trans[8][39]	= settr(1160,0,59,162,0,"(!((EP==(2+1))))", 1, 2, 0);
	trans[8][40]	= settr(1161,0,59,1,0,"goto T0_S134", 0, 2, 0);
	trans[8][41]	= settr(1162,0,27,163,0,"((!((pending_exp>0))&&!((EP==(2+1)))))", 1, 2, 0);
	trans[8][42]	= settr(1163,0,27,1,0,"goto accept_S111", 0, 2, 0);
	trans[8][45]	= settr(1166,0,50,1,0,"break", 0, 2, 0);
	trans[8][51]	= settr(1172,0,50,1,0,".(goto)", 0, 2, 0);
	T = trans[8][50] = settr(1171,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1171,0,46,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1171,0,48,0,0,"DO", 0, 2, 0);
	trans[8][46]	= settr(1167,0,59,164,0,"(!((EP==(2+1))))", 1, 2, 0);
	trans[8][47]	= settr(1168,0,59,1,0,"goto T0_S134", 0, 2, 0);
	trans[8][48]	= settr(1169,0,27,165,0,"(((!((pending_exp>0))&&!((EP==(2+1))))||(!((EP==(2+1)))&&(EP>=2))))", 1, 2, 0);
	trans[8][49]	= settr(1170,0,27,1,0,"goto accept_S111", 0, 2, 0);
	trans[8][52]	= settr(1173,0,59,1,0,"break", 0, 2, 0);
	trans[8][60]	= settr(1181,0,59,1,0,".(goto)", 0, 2, 0);
	T = trans[8][59] = settr(1180,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1180,0,53,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1180,0,55,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1180,0,57,0,0,"DO", 0, 2, 0);
	trans[8][53]	= settr(1174,0,59,166,0,"(!((EP==(2+1))))", 1, 2, 0);
	trans[8][54]	= settr(1175,0,59,1,0,"goto T0_S134", 0, 2, 0);
	trans[8][55]	= settr(1176,0,27,167,0,"((!((EP==(2+1)))&&(EP>=2)))", 1, 2, 0);
	trans[8][56]	= settr(1177,0,27,1,0,"goto accept_S111", 0, 2, 0);
	trans[8][57]	= settr(1178,0,34,168,0,"((!((EP==(2+1)))&&(EP>=2)))", 1, 2, 0);
	trans[8][58]	= settr(1179,0,34,1,0,"goto accept_S134", 0, 2, 0);
	trans[8][61]	= settr(1182,0,72,1,0,"break", 0, 2, 0);
	trans[8][73]	= settr(1194,0,72,1,0,".(goto)", 0, 2, 0);
	T = trans[8][72] = settr(1193,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1193,0,62,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1193,0,64,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1193,0,66,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1193,0,68,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1193,0,70,0,0,"DO", 0, 2, 0);
	trans[8][62]	= settr(1183,0,59,169,0,"((!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==(2+1)))))", 1, 2, 0);
	trans[8][63]	= settr(1184,0,59,1,0,"goto T0_S134", 0, 2, 0);
	trans[8][64]	= settr(1185,0,11,170,0,"((EP>=2))", 1, 2, 0);
	trans[8][65]	= settr(1186,0,11,1,0,"goto T0_init", 0, 2, 0);
	trans[8][66]	= settr(1187,0,72,1,0,"(1)", 0, 2, 0);
	trans[8][67]	= settr(1188,0,72,1,0,"goto T0_S201", 0, 2, 0);
	trans[8][68]	= settr(1189,0,27,171,0,"(((!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==(2+1))))&&(EP>=2)))", 1, 2, 0);
	trans[8][69]	= settr(1190,0,27,1,0,"goto accept_S111", 0, 2, 0);
	trans[8][70]	= settr(1191,0,34,172,0,"(((!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==(2+1))))&&(EP>=2)))", 1, 2, 0);
	trans[8][71]	= settr(1192,0,34,1,0,"goto accept_S134", 0, 2, 0);
	trans[8][74]	= settr(1195,0,75,1,0,"break", 0, 2, 0);
	trans[8][75]	= settr(1196,0,0,173,173,"-end-", 0, 3500, 0);

	/* proctype 7: starvation_free_task1 */

	trans[7] = (Trans **) emalloc(76*sizeof(Trans *));

	trans[7][12]	= settr(1058,0,11,1,0,".(goto)", 0, 2, 0);
	T = trans[7][11] = settr(1057,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1057,0,1,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1057,0,3,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1057,0,5,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1057,0,7,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1057,0,9,0,0,"DO", 0, 2, 0);
	trans[7][1]	= settr(1047,0,20,174,0,"(((!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==2)))&&(EP>=2)))", 1, 2, 0);
	trans[7][2]	= settr(1048,0,20,1,0,"goto accept_S8", 0, 2, 0);
	trans[7][3]	= settr(1049,0,59,175,0,"((!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==2))))", 1, 2, 0);
	trans[7][4]	= settr(1050,0,59,1,0,"goto T0_S134", 0, 2, 0);
	trans[7][5]	= settr(1051,0,27,176,0,"(((!((pending_exp>0))&&!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1)))))&&!((EP==2))))", 1, 2, 0);
	trans[7][6]	= settr(1052,0,27,1,0,"goto accept_S111", 0, 2, 0);
	trans[7][7]	= settr(1053,0,11,177,0,"((!((pending_exp>0))||(EP>=2)))", 1, 2, 0);
	trans[7][8]	= settr(1054,0,11,1,0,"goto T0_init", 0, 2, 0);
	trans[7][9]	= settr(1055,0,72,1,0,"(1)", 0, 2, 0);
	trans[7][10]	= settr(1056,0,72,1,0,"goto T0_S201", 0, 2, 0);
	trans[7][13]	= settr(1059,0,20,1,0,"break", 0, 2, 0);
	trans[7][21]	= settr(1067,0,20,1,0,".(goto)", 0, 2, 0);
	T = trans[7][20] = settr(1066,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1066,0,14,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1066,0,16,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1066,0,18,0,0,"DO", 0, 2, 0);
	trans[7][14]	= settr(1060,0,43,178,0,"((!((EP==2))&&(EP>=2)))", 1, 2, 0);
	trans[7][15]	= settr(1061,0,43,1,0,"goto T0_S8", 0, 2, 0);
	trans[7][16]	= settr(1062,0,59,179,0,"(!((EP==2)))", 1, 2, 0);
	trans[7][17]	= settr(1063,0,59,1,0,"goto T0_S134", 0, 2, 0);
	trans[7][18]	= settr(1064,0,50,180,0,"((!((pending_exp>0))&&!((EP==2))))", 1, 2, 0);
	trans[7][19]	= settr(1065,0,50,1,0,"goto T0_S111", 0, 2, 0);
	trans[7][22]	= settr(1068,0,27,1,0,"break", 0, 2, 0);
	trans[7][28]	= settr(1074,0,27,1,0,".(goto)", 0, 2, 0);
	T = trans[7][27] = settr(1073,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1073,0,23,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1073,0,25,0,0,"DO", 0, 2, 0);
	trans[7][23]	= settr(1069,0,59,181,0,"(!((EP==2)))", 1, 2, 0);
	trans[7][24]	= settr(1070,0,59,1,0,"goto T0_S134", 0, 2, 0);
	trans[7][25]	= settr(1071,0,50,182,0,"(((!((pending_exp>0))&&!((EP==2)))||(!((EP==2))&&(EP>=2))))", 1, 2, 0);
	trans[7][26]	= settr(1072,0,50,1,0,"goto T0_S111", 0, 2, 0);
	trans[7][29]	= settr(1075,0,34,1,0,"break", 0, 2, 0);
	trans[7][35]	= settr(1081,0,34,1,0,".(goto)", 0, 2, 0);
	T = trans[7][34] = settr(1080,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1080,0,30,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1080,0,32,0,0,"DO", 0, 2, 0);
	trans[7][30]	= settr(1076,0,59,183,0,"(!((EP==2)))", 1, 2, 0);
	trans[7][31]	= settr(1077,0,59,1,0,"goto T0_S134", 0, 2, 0);
	trans[7][32]	= settr(1078,0,50,184,0,"((!((EP==2))&&(EP>=2)))", 1, 2, 0);
	trans[7][33]	= settr(1079,0,50,1,0,"goto T0_S111", 0, 2, 0);
	trans[7][36]	= settr(1082,0,43,1,0,"break", 0, 2, 0);
	trans[7][44]	= settr(1090,0,43,1,0,".(goto)", 0, 2, 0);
	T = trans[7][43] = settr(1089,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1089,0,37,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1089,0,39,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1089,0,41,0,0,"DO", 0, 2, 0);
	trans[7][37]	= settr(1083,0,20,185,0,"((!((EP==2))&&(EP>=2)))", 1, 2, 0);
	trans[7][38]	= settr(1084,0,20,1,0,"goto accept_S8", 0, 2, 0);
	trans[7][39]	= settr(1085,0,59,186,0,"(!((EP==2)))", 1, 2, 0);
	trans[7][40]	= settr(1086,0,59,1,0,"goto T0_S134", 0, 2, 0);
	trans[7][41]	= settr(1087,0,27,187,0,"((!((pending_exp>0))&&!((EP==2))))", 1, 2, 0);
	trans[7][42]	= settr(1088,0,27,1,0,"goto accept_S111", 0, 2, 0);
	trans[7][45]	= settr(1091,0,50,1,0,"break", 0, 2, 0);
	trans[7][51]	= settr(1097,0,50,1,0,".(goto)", 0, 2, 0);
	T = trans[7][50] = settr(1096,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1096,0,46,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1096,0,48,0,0,"DO", 0, 2, 0);
	trans[7][46]	= settr(1092,0,59,188,0,"(!((EP==2)))", 1, 2, 0);
	trans[7][47]	= settr(1093,0,59,1,0,"goto T0_S134", 0, 2, 0);
	trans[7][48]	= settr(1094,0,27,189,0,"(((!((pending_exp>0))&&!((EP==2)))||(!((EP==2))&&(EP>=2))))", 1, 2, 0);
	trans[7][49]	= settr(1095,0,27,1,0,"goto accept_S111", 0, 2, 0);
	trans[7][52]	= settr(1098,0,59,1,0,"break", 0, 2, 0);
	trans[7][60]	= settr(1106,0,59,1,0,".(goto)", 0, 2, 0);
	T = trans[7][59] = settr(1105,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1105,0,53,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1105,0,55,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1105,0,57,0,0,"DO", 0, 2, 0);
	trans[7][53]	= settr(1099,0,59,190,0,"(!((EP==2)))", 1, 2, 0);
	trans[7][54]	= settr(1100,0,59,1,0,"goto T0_S134", 0, 2, 0);
	trans[7][55]	= settr(1101,0,27,191,0,"((!((EP==2))&&(EP>=2)))", 1, 2, 0);
	trans[7][56]	= settr(1102,0,27,1,0,"goto accept_S111", 0, 2, 0);
	trans[7][57]	= settr(1103,0,34,192,0,"((!((EP==2))&&(EP>=2)))", 1, 2, 0);
	trans[7][58]	= settr(1104,0,34,1,0,"goto accept_S134", 0, 2, 0);
	trans[7][61]	= settr(1107,0,72,1,0,"break", 0, 2, 0);
	trans[7][73]	= settr(1119,0,72,1,0,".(goto)", 0, 2, 0);
	T = trans[7][72] = settr(1118,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1118,0,62,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1118,0,64,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1118,0,66,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1118,0,68,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1118,0,70,0,0,"DO", 0, 2, 0);
	trans[7][62]	= settr(1108,0,59,193,0,"((!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==2))))", 1, 2, 0);
	trans[7][63]	= settr(1109,0,59,1,0,"goto T0_S134", 0, 2, 0);
	trans[7][64]	= settr(1110,0,11,194,0,"((EP>=2))", 1, 2, 0);
	trans[7][65]	= settr(1111,0,11,1,0,"goto T0_init", 0, 2, 0);
	trans[7][66]	= settr(1112,0,72,1,0,"(1)", 0, 2, 0);
	trans[7][67]	= settr(1113,0,72,1,0,"goto T0_S201", 0, 2, 0);
	trans[7][68]	= settr(1114,0,27,195,0,"(((!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==2)))&&(EP>=2)))", 1, 2, 0);
	trans[7][69]	= settr(1115,0,27,1,0,"goto accept_S111", 0, 2, 0);
	trans[7][70]	= settr(1116,0,34,196,0,"(((!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==2)))&&(EP>=2)))", 1, 2, 0);
	trans[7][71]	= settr(1117,0,34,1,0,"goto accept_S134", 0, 2, 0);
	trans[7][74]	= settr(1120,0,75,1,0,"break", 0, 2, 0);
	trans[7][75]	= settr(1121,0,0,197,197,"-end-", 0, 3500, 0);

	/* proctype 6: exc_leads_to_user */

	trans[6] = (Trans **) emalloc(14*sizeof(Trans *));

	trans[6][6]	= settr(1039,0,5,1,0,".(goto)", 0, 2, 0);
	T = trans[6][5] = settr(1038,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1038,0,1,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1038,0,3,0,0,"DO", 0, 2, 0);
	trans[6][1]	= settr(1034,0,10,198,0,"((!(!((EP<2)))&&!((EP>=2))))", 1, 2, 0);
	trans[6][2]	= settr(1035,0,10,1,0,"goto accept_S4", 0, 2, 0);
	trans[6][3]	= settr(1036,0,5,1,0,"(1)", 0, 2, 0);
	trans[6][4]	= settr(1037,0,5,1,0,"goto T0_init", 0, 2, 0);
	trans[6][7]	= settr(1040,0,10,1,0,"break", 0, 2, 0);
	trans[6][11]	= settr(1044,0,10,1,0,".(goto)", 0, 2, 0);
	T = trans[6][10] = settr(1043,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1043,0,8,0,0,"DO", 0, 2, 0);
	trans[6][8]	= settr(1041,0,10,199,0,"(!((EP>=2)))", 1, 2, 0);
	trans[6][9]	= settr(1042,0,10,1,0,"goto accept_S4", 0, 2, 0);
	trans[6][12]	= settr(1045,0,13,1,0,"break", 0, 2, 0);
	trans[6][13]	= settr(1046,0,0,200,200,"-end-", 0, 3500, 0);

	/* proctype 5: back_to_user */

	trans[5] = (Trans **) emalloc(14*sizeof(Trans *));

	trans[5][6]	= settr(1026,0,5,1,0,".(goto)", 0, 2, 0);
	T = trans[5][5] = settr(1025,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1025,0,1,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1025,0,3,0,0,"DO", 0, 2, 0);
	trans[5][1]	= settr(1021,0,10,201,0,"(!((EP>=2)))", 1, 2, 0);
	trans[5][2]	= settr(1022,0,10,1,0,"goto accept_S4", 0, 2, 0);
	trans[5][3]	= settr(1023,0,5,1,0,"(1)", 0, 2, 0);
	trans[5][4]	= settr(1024,0,5,1,0,"goto T0_init", 0, 2, 0);
	trans[5][7]	= settr(1027,0,10,1,0,"break", 0, 2, 0);
	trans[5][11]	= settr(1031,0,10,1,0,".(goto)", 0, 2, 0);
	T = trans[5][10] = settr(1030,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1030,0,8,0,0,"DO", 0, 2, 0);
	trans[5][8]	= settr(1028,0,10,202,0,"(!((EP>=2)))", 1, 2, 0);
	trans[5][9]	= settr(1029,0,10,1,0,"goto accept_S4", 0, 2, 0);
	trans[5][12]	= settr(1032,0,13,1,0,"break", 0, 2, 0);
	trans[5][13]	= settr(1033,0,0,203,203,"-end-", 0, 3500, 0);

	/* proctype 4: :init: */

	trans[4] = (Trans **) emalloc(66*sizeof(Trans *));

	trans[4][1]	= settr(956,0,17,204,204,"i = 0", 0, 2, 0);
	trans[4][18]	= settr(973,0,17,1,0,".(goto)", 0, 2, 0);
	T = trans[4][17] = settr(972,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(972,0,2,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(972,0,15,0,0,"DO", 0, 2, 0);
	trans[4][2]	= settr(957,0,13,205,0,"((i<4))", 0, 2, 0);
	T = trans[ 4][13] = settr(968,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(968,0,3,0,0,"sub-sequence", 0, 2, 0);
	trans[4][3]	= settr(958,0,9,206,206,"idx = 0", 0, 2, 0);
	trans[4][10]	= settr(965,0,9,1,0,".(goto)", 0, 2, 0);
	T = trans[4][9] = settr(964,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(964,0,4,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(964,0,7,0,0,"DO", 0, 2, 0);
	trans[4][4]	= settr(959,0,5,207,0,"((idx<5))", 0, 2, 0);
	trans[4][5]	= settr(960,0,6,208,208,"readyQueue[i].tasks[idx] = 255", 1, 2, 0);
	trans[4][6]	= settr(961,0,9,209,209,"idx = (idx+1)", 0, 2, 0);
	trans[4][7]	= settr(962,0,12,2,0,"else", 0, 2, 0);
	trans[4][8]	= settr(963,0,12,1,0,"goto :b27", 0, 2, 0);
	trans[4][11]	= settr(966,0,12,1,0,"break", 0, 2, 0);
	trans[4][12]	= settr(967,0,14,210,210,"readyQueue[i].tailIndex = 0", 1, 2, 0);
	trans[4][14]	= settr(969,0,17,211,211,"i = (i+1)", 0, 2, 0);
	trans[4][15]	= settr(970,0,20,2,0,"else", 0, 2, 0);
	trans[4][16]	= settr(971,0,20,1,0,"goto :b26", 0, 2, 0);
	trans[4][19]	= settr(974,0,20,1,0,"break", 0, 2, 0);
	trans[4][20]	= settr(975,0,21,212,212,"tcb[2].prio = 2", 1, 2, 0);
	trans[4][21]	= settr(976,0,29,213,213,"tcb[2].state = 1", 1, 2, 0);
	T = trans[ 4][29] = settr(984,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(984,0,27,0,0,"sub-sequence", 0, 2, 0);
	T = trans[4][27] = settr(982,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(982,0,22,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(982,0,25,0,0,"IF", 0, 2, 0);
	trans[4][22]	= settr(977,0,23,214,0,"((readyQueue[2].tailIndex<5))", 1, 2, 0);
	trans[4][23]	= settr(978,0,24,215,215,"readyQueue[2].tasks[readyQueue[2].tailIndex] = 2", 1, 2, 0);
	trans[4][24]	= settr(979,0,30,216,216,"readyQueue[2].tailIndex = (readyQueue[2].tailIndex+1)", 1, 2, 0);
	trans[4][28]	= settr(983,0,30,1,0,".(goto)", 0, 2, 0);
	trans[4][25]	= settr(980,0,26,2,0,"else", 0, 2, 0);
	trans[4][26]	= settr(981,0,30,217,0,"assert(0)", 0, 2, 0);
	trans[4][30]	= settr(985,0,31,218,218,"tcb[(2+1)].prio = 2", 1, 2, 0);
	trans[4][31]	= settr(986,0,39,219,219,"tcb[(2+1)].state = 1", 1, 2, 0);
	T = trans[ 4][39] = settr(994,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(994,0,37,0,0,"sub-sequence", 0, 2, 0);
	T = trans[4][37] = settr(992,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(992,0,32,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(992,0,35,0,0,"IF", 0, 2, 0);
	trans[4][32]	= settr(987,0,33,220,0,"((readyQueue[2].tailIndex<5))", 1, 2, 0);
	trans[4][33]	= settr(988,0,34,221,221,"readyQueue[2].tasks[readyQueue[2].tailIndex] = (2+1)", 1, 2, 0);
	trans[4][34]	= settr(989,0,40,222,222,"readyQueue[2].tailIndex = (readyQueue[2].tailIndex+1)", 1, 2, 0);
	trans[4][38]	= settr(993,0,40,1,0,".(goto)", 0, 2, 0);
	trans[4][35]	= settr(990,0,36,2,0,"else", 0, 2, 0);
	trans[4][36]	= settr(991,0,40,223,0,"assert(0)", 0, 2, 0);
	trans[4][40]	= settr(995,0,41,224,224,"EP = 2", 1, 2, 0);
	trans[4][41]	= settr(996,0,58,225,225,"topPrio = 2", 1, 2, 0);
	T = trans[ 4][58] = settr(1013,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(1013,0,42,0,0,"sub-sequence", 0, 2, 0);
	trans[4][42]	= settr(997,0,48,226,226,"idx = 0", 0, 2, 0);
	trans[4][49]	= settr(1004,0,48,1,0,".(goto)", 0, 2, 0);
	T = trans[4][48] = settr(1003,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1003,0,43,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1003,0,46,0,0,"DO", 0, 2, 0);
	trans[4][43]	= settr(998,0,44,227,0,"((idx<(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0);
	trans[4][44]	= settr(999,0,45,228,228,"readyQueue[topPrio].tasks[idx] = readyQueue[topPrio].tasks[(idx+1)]", 1, 2, 0);
	trans[4][45]	= settr(1000,0,48,229,229,"idx = (idx+1)", 0, 2, 0);
	trans[4][46]	= settr(1001,0,56,2,0,"else", 0, 2, 0);
	trans[4][47]	= settr(1002,0,56,1,0,"goto :b28", 0, 2, 0);
	trans[4][50]	= settr(1005,0,56,1,0,"break", 0, 2, 0);
	T = trans[4][56] = settr(1011,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(1011,0,51,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(1011,0,54,0,0,"IF", 0, 2, 0);
	trans[4][51]	= settr(1006,0,52,230,0,"((readyQueue[topPrio].tailIndex>0))", 1, 2, 0);
	trans[4][52]	= settr(1007,0,53,231,231,"readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)] = 255", 1, 2, 0);
	trans[4][53]	= settr(1008,0,59,232,232,"readyQueue[topPrio].tailIndex = (readyQueue[topPrio].tailIndex-1)", 1, 2, 0);
	trans[4][57]	= settr(1012,0,59,1,0,".(goto)", 0, 2, 0);
	trans[4][54]	= settr(1009,0,55,2,0,"else", 0, 2, 0);
	trans[4][55]	= settr(1010,0,59,1,0,"(1)", 0, 2, 0);
	trans[4][59]	= settr(1014,0,62,233,233,"tcb[EP].state = 4", 1, 2, 0);
	T = trans[ 4][62] = settr(1017,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(1017,2,60,0,0,"ATOMIC", 1, 2, 0);
	trans[4][60]	= settr(1015,2,61,234,234,"(run PendSV_Handler())", 1, 2, 0);
	trans[4][61]	= settr(1016,0,63,235,235,"(run SysTick_Handler())", 1, 2, 0);
	trans[4][63]	= settr(1018,0,64,236,236,"(run Process2())", 0, 2, 0);
	trans[4][64]	= settr(1019,0,65,237,237,"(run Process1())", 0, 2, 0);
	trans[4][65]	= settr(1020,0,0,238,238,"-end-", 0, 3500, 0);

	/* proctype 3: Process2 */

	trans[3] = (Trans **) emalloc(449*sizeof(Trans *));

	trans[3][446]	= settr(953,0,445,1,0,".(goto)", 0, 2, 0);
	T = trans[3][445] = settr(952,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(952,0,25,0,0,"DO", 0, 2, 0);
	T = trans[ 3][25] = settr(532,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(532,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[3][1]	= settr(508,2,8,239,239,"(((2+1)==EP))", 1, 2, 0); /* m: 2 -> 8,0 */
	reached3[2] = 1;
	trans[3][2]	= settr(0,0,0,0,0,"printf('P2 running\\n')",0,0,0);
	T = trans[3][8] = settr(515,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(515,2,3,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(515,2,7,0,0,"IF", 1, 2, 0);
	trans[3][3]	= settr(510,2,6,1,0,"(1)", 1, 2, 0);
	T = trans[ 3][6] = settr(513,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(513,0,4,0,0,"sub-sequence", 1, 2, 0);
	trans[3][4]	= settr(511,2,23,240,240,"assert(((1<2)&&(1<8)))", 1, 2, 0); /* m: 5 -> 0,23 */
	reached3[5] = 1;
	trans[3][5]	= settr(0,0,0,0,0,"pending_exp = (pending_exp|(1<<1))",0,0,0);
	trans[3][9]	= settr(516,2,23,1,0,".(goto)", 1, 2, 0);
	trans[3][7]	= settr(514,2,23,1,0,"(1)", 1, 2, 0);
	T = trans[3][23] = settr(530,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(530,2,10,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(530,2,21,0,0,"IF", 1, 2, 0);
	trans[3][10]	= settr(517,2,15,241,0,"((((((pending_exp>>0)&1)&&((BASEPRI==0)||(15<BASEPRI)))||(((pending_exp>>1)&1)&&((BASEPRI==0)||(15<BASEPRI))))&&(EP>=2)))", 1, 2, 0);
	T = trans[3][15] = settr(522,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(522,2,11,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(522,2,13,0,0,"IF", 1, 2, 0);
	trans[3][11]	= settr(518,2,19,242,242,"((EP>=2))", 1, 2, 0); /* m: 12 -> 19,0 */
	reached3[12] = 1;
	trans[3][12]	= settr(0,0,0,0,0,"chain_tick_used = 0",0,0,0);
	trans[3][16]	= settr(523,2,19,1,0,".(goto)", 1, 2, 0);
	trans[3][13]	= settr(520,2,14,2,0,"else", 1, 2, 0);
	trans[3][14]	= settr(521,2,19,1,0,"(1)", 1, 2, 0);
	T = trans[ 3][19] = settr(526,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(526,0,17,0,0,"sub-sequence", 1, 2, 0);
	trans[3][17]	= settr(524,4,170,243,243,"assert((EP_Stack==255))", 1, 2, 0); /* m: 18 -> 0,170 */
	reached3[18] = 1;
	trans[3][18]	= settr(0,0,0,0,0,"EP_Stack = EP",0,0,0);
	trans[3][20]	= settr(0,0,0,0,0,"EP = ( (((pending_exp>>0)&1)) -> (0) : (1) )",0,0,0);
	trans[3][24]	= settr(531,0,170,244,244,".(goto)", 1, 2, 0);
	trans[3][21]	= settr(528,2,22,2,0,"else", 1, 2, 0);
	trans[3][22]	= settr(529,4,170,245,245,"(1)", 1, 2, 0); /* m: 24 -> 170,0 */
	reached3[24] = 1;
	T = trans[ 3][170] = settr(677,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(677,2,26,0,0,"ATOMIC", 1, 2, 0);
	trans[3][26]	= settr(533,2,147,246,0,"(((2+1)==EP))", 1, 2, 0);
	T = trans[ 3][147] = settr(654,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(654,0,27,0,0,"sub-sequence", 1, 2, 0);
	trans[3][27]	= settr(534,2,29,247,247,"intSave = 0", 1, 2, 0);
	T = trans[ 3][29] = settr(536,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(536,0,28,0,0,"sub-sequence", 1, 2, 0);
	trans[3][28]	= settr(535,2,134,248,248,"intSave = 0", 1, 2, 0); /* m: 30 -> 0,134 */
	reached3[30] = 1;
	trans[3][30]	= settr(0,0,0,0,0,"assert(((tcb[2].state==1)||(tcb[2].state==2)))",0,0,0);
	trans[3][31]	= settr(0,0,0,0,0,"needSched = 0",0,0,0);
	T = trans[3][134] = settr(641,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(641,2,32,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(641,2,131,0,0,"IF", 1, 2, 0);
	trans[3][32]	= settr(539,2,130,249,0,"((tcb[2].state==1))", 1, 2, 0);
	T = trans[ 3][130] = settr(637,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(637,0,33,0,0,"sub-sequence", 1, 2, 0);
	trans[3][33]	= settr(540,2,66,250,250,"assert((tcb[2].state==1))", 1, 2, 0); /* m: 34 -> 0,66 */
	reached3[34] = 1;
	trans[3][34]	= settr(0,0,0,0,0,"needSched = 1",0,0,0);
	T = trans[ 3][66] = settr(573,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(573,0,35,0,0,"sub-sequence", 1, 2, 0);
	trans[3][35]	= settr(542,2,47,251,251,"idx = 0", 1, 2, 0); /* m: 36 -> 0,47 */
	reached3[36] = 1;
	trans[3][36]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[3][37]	= settr(0,0,0,0,0,"prioLevel = tcb[2].prio",0,0,0);
	trans[3][48]	= settr(555,2,47,1,0,".(goto)", 1, 2, 0);
	T = trans[3][47] = settr(554,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(554,2,38,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(554,2,45,0,0,"DO", 1, 2, 0);
	trans[3][38]	= settr(545,2,43,252,0,"(((idx<readyQueue[prioLevel].tailIndex)&&!(found)))", 1, 2, 0);
	T = trans[3][43] = settr(550,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(550,2,39,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(550,2,41,0,0,"IF", 1, 2, 0);
	trans[3][39]	= settr(546,2,47,253,253,"((readyQueue[prioLevel].tasks[idx]==2))", 1, 2, 0); /* m: 40 -> 47,0 */
	reached3[40] = 1;
	trans[3][40]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[3][44]	= settr(551,2,47,1,0,".(goto)", 1, 2, 0);
	trans[3][41]	= settr(548,2,42,2,0,"else", 1, 2, 0);
	trans[3][42]	= settr(549,2,47,254,254,"idx = (idx+1)", 1, 2, 0);
	trans[3][45]	= settr(552,2,50,2,0,"else", 1, 2, 0);
	trans[3][46]	= settr(553,2,50,1,0,"goto :b14", 1, 2, 0); /* m: 50 -> 0,56 */
	reached3[50] = 1;
	trans[3][49]	= settr(556,2,50,1,0,"break", 1, 2, 0);
	trans[3][50]	= settr(557,2,56,255,255,"assert((found==1))", 1, 2, 0);
	trans[3][57]	= settr(564,2,56,1,0,".(goto)", 1, 2, 0);
	T = trans[3][56] = settr(563,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(563,2,51,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(563,2,54,0,0,"DO", 1, 2, 0);
	trans[3][51]	= settr(558,2,56,256,256,"((idx<(readyQueue[prioLevel].tailIndex-1)))", 1, 2, 0); /* m: 52 -> 56,0 */
	reached3[52] = 1;
	trans[3][52]	= settr(0,0,0,0,0,"readyQueue[prioLevel].tasks[idx] = readyQueue[prioLevel].tasks[(idx+1)]",0,0,0);
	trans[3][53]	= settr(0,0,0,0,0,"idx = (idx+1)",0,0,0);
	trans[3][54]	= settr(561,2,64,2,0,"else", 1, 2, 0);
	trans[3][55]	= settr(562,2,64,1,0,"goto :b15", 1, 2, 0);
	trans[3][58]	= settr(565,2,64,1,0,"break", 1, 2, 0);
	T = trans[3][64] = settr(571,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(571,2,59,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(571,2,62,0,0,"IF", 1, 2, 0);
	trans[3][59]	= settr(566,2,129,257,257,"((readyQueue[prioLevel].tailIndex>0))", 1, 2, 0); /* m: 60 -> 129,0 */
	reached3[60] = 1;
	trans[3][60]	= settr(0,0,0,0,0,"readyQueue[prioLevel].tasks[(readyQueue[prioLevel].tailIndex-1)] = 255",0,0,0);
	trans[3][61]	= settr(0,0,0,0,0,"readyQueue[prioLevel].tailIndex = (readyQueue[prioLevel].tailIndex-1)",0,0,0);
	trans[3][65]	= settr(572,2,67,1,0,".(goto)", 1, 2, 0); /* m: 67 -> 0,129 */
	reached3[67] = 1;
	trans[3][62]	= settr(569,2,63,2,0,"else", 1, 2, 0);
	trans[3][63]	= settr(570,2,129,258,258,"(1)", 1, 2, 0); /* m: 67 -> 129,0 */
	reached3[67] = 1;
	trans[3][67]	= settr(574,2,129,259,259,"tcb[2].state = 3", 1, 2, 0);
	T = trans[ 3][129] = settr(636,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(636,0,128,0,0,"sub-sequence", 1, 2, 0);
	T = trans[ 3][128] = settr(635,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(635,0,68,0,0,"sub-sequence", 1, 2, 0);
	trans[3][68]	= settr(575,2,86,260,260,"insertPos = 0", 1, 2, 0); /* m: 69 -> 0,86 */
	reached3[69] = 1;
	trans[3][69]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[3][70]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[3][71]	= settr(0,0,0,0,0,"tmpId = 0",0,0,0);
	trans[3][72]	= settr(0,0,0,0,0,"tmpTime = 0",0,0,0);
	trans[3][73]	= settr(0,0,0,0,0,"assert((g_taskSortLinkTail<(2+1)))",0,0,0);
	trans[3][74]	= settr(0,0,0,0,0,"assert((g_taskSortLinkTail>=0))",0,0,0);
	trans[3][75]	= settr(0,0,0,0,0,"insertPos = 0",0,0,0);
	trans[3][76]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[3][87]	= settr(594,2,86,1,0,".(goto)", 1, 2, 0);
	T = trans[3][86] = settr(593,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(593,2,77,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(593,2,84,0,0,"DO", 1, 2, 0);
	trans[3][77]	= settr(584,2,82,261,0,"(((insertPos<g_taskSortLinkTail)&&(found==0)))", 1, 2, 0);
	T = trans[3][82] = settr(589,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(589,2,78,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(589,2,80,0,0,"IF", 1, 2, 0);
	trans[3][78]	= settr(585,2,86,262,262,"((255<g_taskSortLink[insertPos].responseTime))", 1, 2, 0); /* m: 79 -> 86,0 */
	reached3[79] = 1;
	trans[3][79]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[3][83]	= settr(590,2,86,1,0,".(goto)", 1, 2, 0);
	trans[3][80]	= settr(587,2,86,263,263,"((255>=g_taskSortLink[insertPos].responseTime))", 1, 2, 0); /* m: 81 -> 86,0 */
	reached3[81] = 1;
	trans[3][81]	= settr(0,0,0,0,0,"insertPos = (insertPos+1)",0,0,0);
	trans[3][84]	= settr(591,2,89,2,0,"else", 1, 2, 0);
	trans[3][85]	= settr(592,2,89,1,0,"goto :b16", 1, 2, 0); /* m: 89 -> 0,104 */
	reached3[89] = 1;
	trans[3][88]	= settr(595,2,89,1,0,"break", 1, 2, 0);
	trans[3][89]	= settr(596,2,104,264,264,"idx = g_taskSortLinkTail", 1, 2, 0);
	trans[3][105]	= settr(612,2,104,1,0,".(goto)", 1, 2, 0);
	T = trans[3][104] = settr(611,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(611,2,90,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(611,2,102,0,0,"DO", 1, 2, 0);
	trans[3][90]	= settr(597,2,99,265,265,"((idx>insertPos))", 1, 2, 0); /* m: 91 -> 99,0 */
	reached3[91] = 1;
	trans[3][91]	= settr(0,0,0,0,0,"tmpId = g_taskSortLink[(idx-1)].taskId",0,0,0);
	trans[3][92]	= settr(0,0,0,0,0,"tmpTime = g_taskSortLink[(idx-1)].responseTime",0,0,0);
	trans[3][93]	= settr(0,0,0,0,0,"g_taskSortLink[idx].taskId = tmpId",0,0,0);
	trans[3][94]	= settr(0,0,0,0,0,"g_taskSortLink[idx].responseTime = tmpTime",0,0,0);
	T = trans[3][99] = settr(606,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(606,2,95,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(606,2,97,0,0,"IF", 1, 2, 0);
	trans[3][95]	= settr(602,2,104,266,266,"((tmpId!=255))", 1, 2, 0); /* m: 96 -> 104,0 */
	reached3[96] = 1;
	trans[3][96]	= settr(0,0,0,0,0,"tcb[tmpId].pendList = idx",0,0,0);
	trans[3][100]	= settr(607,2,101,1,0,".(goto)", 1, 2, 0); /* m: 101 -> 0,104 */
	reached3[101] = 1;
	trans[3][97]	= settr(604,2,98,267,267,"((tmpId==255))", 1, 2, 0);
	trans[3][98]	= settr(605,2,104,268,268,"(1)", 1, 2, 0); /* m: 101 -> 104,0 */
	reached3[101] = 1;
	trans[3][101]	= settr(608,2,104,269,269,"idx = (idx-1)", 1, 2, 0);
	trans[3][102]	= settr(609,2,115,270,270,"((idx<=insertPos))", 1, 2, 0); /* m: 107 -> 115,0 */
	reached3[107] = 1;
	trans[3][103]	= settr(610,2,107,1,0,"goto :b17", 1, 2, 0); /* m: 107 -> 0,115 */
	reached3[107] = 1;
	trans[3][106]	= settr(613,2,107,1,0,"break", 1, 2, 0);
	trans[3][107]	= settr(614,2,115,271,271,"g_taskSortLink[insertPos].taskId = 2", 1, 2, 0); /* m: 108 -> 0,115 */
	reached3[108] = 1;
	trans[3][108]	= settr(0,0,0,0,0,"g_taskSortLink[insertPos].responseTime = 255",0,0,0);
	trans[3][109]	= settr(0,0,0,0,0,"tcb[2].pendList = insertPos",0,0,0);
	trans[3][110]	= settr(0,0,0,0,0,"g_taskSortLinkTail = (g_taskSortLinkTail+1)",0,0,0);
	T = trans[3][115] = settr(622,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(622,2,111,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(622,2,113,0,0,"IF", 1, 2, 0);
	trans[3][111]	= settr(618,2,127,272,272,"(((insertPos==0)&&(255<255)))", 1, 2, 0); /* m: 112 -> 127,0 */
	reached3[112] = 1;
	trans[3][112]	= settr(0,0,0,0,0,"g_schedResponseTime = 255",0,0,0);
	trans[3][116]	= settr(623,2,127,1,0,".(goto)", 1, 2, 0);
	trans[3][113]	= settr(620,2,114,2,0,"else", 1, 2, 0);
	trans[3][114]	= settr(621,2,127,1,0,"(1)", 1, 2, 0);
	T = trans[ 3][127] = settr(634,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(634,0,117,0,0,"sub-sequence", 1, 2, 0);
	trans[3][117]	= settr(624,2,124,273,273,"checkIdx = 0", 1, 2, 0); /* m: 118 -> 0,124 */
	reached3[118] = 1;
	trans[3][118]	= settr(0,0,0,0,0,"isValid = 1",0,0,0);
	trans[3][125]	= settr(632,2,124,1,0,".(goto)", 1, 2, 0);
	T = trans[3][124] = settr(631,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(631,2,119,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(631,2,122,0,0,"DO", 1, 2, 0);
	trans[3][119]	= settr(626,2,124,274,274,"((checkIdx<(g_taskSortLinkTail-1)))", 1, 2, 0); /* m: 120 -> 124,0 */
	reached3[120] = 1;
	trans[3][120]	= settr(0,0,0,0,0,"assert((g_taskSortLink[checkIdx].responseTime<=g_taskSortLink[(checkIdx+1)].responseTime))",0,0,0);
	trans[3][121]	= settr(0,0,0,0,0,"checkIdx = (checkIdx+1)",0,0,0);
	trans[3][122]	= settr(629,2,145,2,0,"else", 1, 2, 0);
	trans[3][123]	= settr(630,2,145,1,0,"goto :b18", 1, 2, 0);
	trans[3][126]	= settr(633,2,145,1,0,"break", 1, 2, 0);
	trans[3][135]	= settr(642,2,145,1,0,".(goto)", 1, 2, 0);
	trans[3][131]	= settr(638,2,145,275,275,"((tcb[2].state==2))", 1, 2, 0); /* m: 132 -> 145,0 */
	reached3[132] = 1;
	trans[3][132]	= settr(0,0,0,0,0,"needSched = 1",0,0,0);
	trans[3][133]	= settr(0,0,0,0,0,"tcb[2].state = 3",0,0,0);
	T = trans[3][145] = settr(652,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(652,2,136,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(652,2,143,0,0,"IF", 1, 2, 0);
	trans[3][136]	= settr(643,2,138,276,276,"((needSched&&g_taskScheduled))", 1, 2, 0);
	T = trans[ 3][138] = settr(645,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(645,0,137,0,0,"sub-sequence", 1, 2, 0);
	trans[3][137]	= settr(644,2,142,277,277,"intSave = 0", 1, 2, 0);
	T = trans[ 3][142] = settr(649,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(649,0,141,0,0,"sub-sequence", 1, 2, 0);
	T = trans[ 3][141] = settr(648,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(648,0,139,0,0,"sub-sequence", 1, 2, 0);
	trans[3][139]	= settr(646,2,153,278,278,"assert(((0<2)&&(0<8)))", 1, 2, 0); /* m: 140 -> 0,153 */
	reached3[140] = 1;
	trans[3][140]	= settr(0,0,0,0,0,"pending_exp = (pending_exp|(1<<0))",0,0,0);
	trans[3][146]	= settr(653,2,153,1,0,".(goto)", 1, 2, 0);
	trans[3][143]	= settr(650,2,144,2,0,"else", 1, 2, 0);
	trans[3][144]	= settr(651,2,153,1,0,"(1)", 1, 2, 0);
	T = trans[3][153] = settr(660,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(660,2,148,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(660,2,152,0,0,"IF", 1, 2, 0);
	trans[3][148]	= settr(655,2,151,1,0,"(1)", 1, 2, 0);
	T = trans[ 3][151] = settr(658,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(658,0,149,0,0,"sub-sequence", 1, 2, 0);
	trans[3][149]	= settr(656,2,168,279,279,"assert(((1<2)&&(1<8)))", 1, 2, 0); /* m: 150 -> 0,168 */
	reached3[150] = 1;
	trans[3][150]	= settr(0,0,0,0,0,"pending_exp = (pending_exp|(1<<1))",0,0,0);
	trans[3][154]	= settr(661,2,168,1,0,".(goto)", 1, 2, 0);
	trans[3][152]	= settr(659,2,168,1,0,"(1)", 1, 2, 0);
	T = trans[3][168] = settr(675,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(675,2,155,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(675,2,166,0,0,"IF", 1, 2, 0);
	trans[3][155]	= settr(662,2,160,280,0,"((((((pending_exp>>0)&1)&&((BASEPRI==0)||(15<BASEPRI)))||(((pending_exp>>1)&1)&&((BASEPRI==0)||(15<BASEPRI))))&&(EP>=2)))", 1, 2, 0);
	T = trans[3][160] = settr(667,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(667,2,156,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(667,2,158,0,0,"IF", 1, 2, 0);
	trans[3][156]	= settr(663,2,164,281,281,"((EP>=2))", 1, 2, 0); /* m: 157 -> 164,0 */
	reached3[157] = 1;
	trans[3][157]	= settr(0,0,0,0,0,"chain_tick_used = 0",0,0,0);
	trans[3][161]	= settr(668,2,164,1,0,".(goto)", 1, 2, 0);
	trans[3][158]	= settr(665,2,159,2,0,"else", 1, 2, 0);
	trans[3][159]	= settr(666,2,164,1,0,"(1)", 1, 2, 0);
	T = trans[ 3][164] = settr(671,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(671,0,162,0,0,"sub-sequence", 1, 2, 0);
	trans[3][162]	= settr(669,4,265,282,282,"assert((EP_Stack==255))", 1, 2, 0); /* m: 163 -> 0,265 */
	reached3[163] = 1;
	trans[3][163]	= settr(0,0,0,0,0,"EP_Stack = EP",0,0,0);
	trans[3][165]	= settr(0,0,0,0,0,"EP = ( (((pending_exp>>0)&1)) -> (0) : (1) )",0,0,0);
	trans[3][169]	= settr(676,0,265,283,283,".(goto)", 1, 2, 0);
	trans[3][166]	= settr(673,2,167,2,0,"else", 1, 2, 0);
	trans[3][167]	= settr(674,4,265,284,284,"(1)", 1, 2, 0); /* m: 169 -> 265,0 */
	reached3[169] = 1;
	T = trans[ 3][265] = settr(772,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(772,2,171,0,0,"ATOMIC", 1, 2, 0);
	trans[3][171]	= settr(678,2,242,285,0,"(((2+1)==EP))", 1, 2, 0);
	T = trans[ 3][242] = settr(749,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(749,0,172,0,0,"sub-sequence", 1, 2, 0);
	trans[3][172]	= settr(679,2,176,286,286,"intSave = 0", 1, 2, 0); /* m: 173 -> 0,176 */
	reached3[173] = 1;
	trans[3][173]	= settr(0,0,0,0,0,"tempStatus = 0",0,0,0);
	trans[3][174]	= settr(0,0,0,0,0,"needSched = 0",0,0,0);
	T = trans[ 3][176] = settr(683,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(683,0,175,0,0,"sub-sequence", 1, 2, 0);
	trans[3][175]	= settr(682,2,230,287,287,"intSave = 0", 1, 2, 0); /* m: 177 -> 0,230 */
	reached3[177] = 1;
	trans[3][177]	= settr(0,0,0,0,0,"tempStatus = tcb[2].state",0,0,0);
	trans[3][178]	= settr(0,0,0,0,0,"assert((tempStatus==3))",0,0,0);
	T = trans[ 3][230] = settr(737,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(737,0,179,0,0,"sub-sequence", 1, 2, 0);
	trans[3][179]	= settr(686,2,221,288,288,"assert((tcb[2].state==3))", 1, 2, 0); /* m: 180 -> 0,221 */
	reached3[180] = 1;
	trans[3][180]	= settr(0,0,0,0,0,"needSched = 1",0,0,0);
	trans[3][181]	= settr(0,0,0,0,0,"tcb[2].state = 1",0,0,0);
	T = trans[ 3][221] = settr(728,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(728,0,182,0,0,"sub-sequence", 1, 2, 0);
	trans[3][182]	= settr(689,2,190,289,289,"idx = tcb[2].pendList", 1, 2, 0); /* m: 183 -> 0,190 */
	reached3[183] = 1;
	trans[3][183]	= settr(0,0,0,0,0,"removedIdx = idx",0,0,0);
	trans[3][191]	= settr(698,2,190,1,0,".(goto)", 1, 2, 0);
	T = trans[3][190] = settr(697,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(697,2,184,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(697,2,188,0,0,"DO", 1, 2, 0);
	trans[3][184]	= settr(691,2,190,290,290,"((idx<(g_taskSortLinkTail-1)))", 1, 2, 0); /* m: 185 -> 190,0 */
	reached3[185] = 1;
	trans[3][185]	= settr(0,0,0,0,0,"g_taskSortLink[idx].taskId = g_taskSortLink[(idx+1)].taskId",0,0,0);
	trans[3][186]	= settr(0,0,0,0,0,"g_taskSortLink[idx].responseTime = g_taskSortLink[(idx+1)].responseTime",0,0,0);
	trans[3][187]	= settr(0,0,0,0,0,"idx = (idx+1)",0,0,0);
	trans[3][188]	= settr(695,2,193,2,0,"else", 1, 2, 0);
	trans[3][189]	= settr(696,2,193,1,0,"goto :b19", 1, 2, 0); /* m: 193 -> 0,208 */
	reached3[193] = 1;
	trans[3][192]	= settr(699,2,193,1,0,"break", 1, 2, 0);
	trans[3][193]	= settr(700,2,208,291,291,"g_taskSortLink[(g_taskSortLinkTail-1)].taskId = 255", 1, 2, 0); /* m: 194 -> 0,208 */
	reached3[194] = 1;
	trans[3][194]	= settr(0,0,0,0,0,"g_taskSortLink[(g_taskSortLinkTail-1)].responseTime = 255",0,0,0);
	trans[3][195]	= settr(0,0,0,0,0,"g_taskSortLinkTail = (g_taskSortLinkTail-1)",0,0,0);
	T = trans[3][208] = settr(715,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(715,2,196,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(715,2,198,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(715,2,206,0,0,"IF", 1, 2, 0);
	trans[3][196]	= settr(703,2,220,292,292,"((g_taskSortLinkTail==0))", 1, 2, 0); /* m: 197 -> 220,0 */
	reached3[197] = 1;
	trans[3][197]	= settr(0,0,0,0,0,"g_schedResponseTime = 255",0,0,0);
	trans[3][209]	= settr(716,2,220,1,0,".(goto)", 1, 2, 0);
	trans[3][198]	= settr(705,2,204,293,293,"(((removedIdx==0)&&(g_taskSortLinkTail>0)))", 1, 2, 0); /* m: 199 -> 204,0 */
	reached3[199] = 1;
	trans[3][199]	= settr(0,0,0,0,0,"newFirstTime = g_taskSortLink[0].responseTime",0,0,0);
	T = trans[3][204] = settr(711,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(711,2,200,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(711,2,202,0,0,"IF", 1, 2, 0);
	trans[3][200]	= settr(707,2,220,294,294,"((newFirstTime<255))", 1, 2, 0); /* m: 201 -> 220,0 */
	reached3[201] = 1;
	trans[3][201]	= settr(0,0,0,0,0,"g_schedResponseTime = newFirstTime",0,0,0);
	trans[3][205]	= settr(712,2,220,1,0,".(goto)", 1, 2, 0);
	trans[3][202]	= settr(709,2,203,2,0,"else", 1, 2, 0);
	trans[3][203]	= settr(710,2,220,295,295,"g_schedResponseTime = 255", 1, 2, 0);
	trans[3][206]	= settr(713,2,207,2,0,"else", 1, 2, 0);
	trans[3][207]	= settr(714,2,220,1,0,"(1)", 1, 2, 0);
	T = trans[ 3][220] = settr(727,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(727,0,210,0,0,"sub-sequence", 1, 2, 0);
	trans[3][210]	= settr(717,2,217,296,296,"checkIdx = 0", 1, 2, 0); /* m: 211 -> 0,217 */
	reached3[211] = 1;
	trans[3][211]	= settr(0,0,0,0,0,"isValid = 1",0,0,0);
	trans[3][218]	= settr(725,2,217,1,0,".(goto)", 1, 2, 0);
	T = trans[3][217] = settr(724,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(724,2,212,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(724,2,215,0,0,"DO", 1, 2, 0);
	trans[3][212]	= settr(719,2,217,297,297,"((checkIdx<(g_taskSortLinkTail-1)))", 1, 2, 0); /* m: 213 -> 217,0 */
	reached3[213] = 1;
	trans[3][213]	= settr(0,0,0,0,0,"assert((g_taskSortLink[checkIdx].responseTime<=g_taskSortLink[(checkIdx+1)].responseTime))",0,0,0);
	trans[3][214]	= settr(0,0,0,0,0,"checkIdx = (checkIdx+1)",0,0,0);
	trans[3][215]	= settr(722,2,229,2,0,"else", 1, 2, 0);
	trans[3][216]	= settr(723,2,229,1,0,"goto :b20", 1, 2, 0);
	trans[3][219]	= settr(726,2,229,1,0,"break", 1, 2, 0);
	T = trans[ 3][229] = settr(736,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(736,0,227,0,0,"sub-sequence", 1, 2, 0);
	T = trans[3][227] = settr(734,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(734,2,222,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(734,2,225,0,0,"IF", 1, 2, 0);
	trans[3][222]	= settr(729,2,240,298,298,"((readyQueue[tcb[2].prio].tailIndex<5))", 1, 2, 0); /* m: 223 -> 240,0 */
	reached3[223] = 1;
	trans[3][223]	= settr(0,0,0,0,0,"readyQueue[tcb[2].prio].tasks[readyQueue[tcb[2].prio].tailIndex] = 2",0,0,0);
	trans[3][224]	= settr(0,0,0,0,0,"readyQueue[tcb[2].prio].tailIndex = (readyQueue[tcb[2].prio].tailIndex+1)",0,0,0);
	trans[3][228]	= settr(735,2,240,1,0,".(goto)", 1, 2, 0);
	trans[3][225]	= settr(732,2,226,2,0,"else", 1, 2, 0);
	trans[3][226]	= settr(733,2,240,299,0,"assert(0)", 1, 2, 0);
	T = trans[3][240] = settr(747,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(747,2,231,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(747,2,238,0,0,"IF", 1, 2, 0);
	trans[3][231]	= settr(738,2,233,300,300,"((needSched&&g_taskScheduled))", 1, 2, 0);
	T = trans[ 3][233] = settr(740,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(740,0,232,0,0,"sub-sequence", 1, 2, 0);
	trans[3][232]	= settr(739,2,237,301,301,"intSave = 0", 1, 2, 0);
	T = trans[ 3][237] = settr(744,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(744,0,236,0,0,"sub-sequence", 1, 2, 0);
	T = trans[ 3][236] = settr(743,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(743,0,234,0,0,"sub-sequence", 1, 2, 0);
	trans[3][234]	= settr(741,2,248,302,302,"assert(((0<2)&&(0<8)))", 1, 2, 0); /* m: 235 -> 0,248 */
	reached3[235] = 1;
	trans[3][235]	= settr(0,0,0,0,0,"pending_exp = (pending_exp|(1<<0))",0,0,0);
	trans[3][241]	= settr(748,2,248,1,0,".(goto)", 1, 2, 0);
	trans[3][238]	= settr(745,2,239,2,0,"else", 1, 2, 0);
	trans[3][239]	= settr(746,2,248,1,0,"(1)", 1, 2, 0);
	T = trans[3][248] = settr(755,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(755,2,243,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(755,2,247,0,0,"IF", 1, 2, 0);
	trans[3][243]	= settr(750,2,246,1,0,"(1)", 1, 2, 0);
	T = trans[ 3][246] = settr(753,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(753,0,244,0,0,"sub-sequence", 1, 2, 0);
	trans[3][244]	= settr(751,2,263,303,303,"assert(((1<2)&&(1<8)))", 1, 2, 0); /* m: 245 -> 0,263 */
	reached3[245] = 1;
	trans[3][245]	= settr(0,0,0,0,0,"pending_exp = (pending_exp|(1<<1))",0,0,0);
	trans[3][249]	= settr(756,2,263,1,0,".(goto)", 1, 2, 0);
	trans[3][247]	= settr(754,2,263,1,0,"(1)", 1, 2, 0);
	T = trans[3][263] = settr(770,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(770,2,250,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(770,2,261,0,0,"IF", 1, 2, 0);
	trans[3][250]	= settr(757,2,255,304,0,"((((((pending_exp>>0)&1)&&((BASEPRI==0)||(15<BASEPRI)))||(((pending_exp>>1)&1)&&((BASEPRI==0)||(15<BASEPRI))))&&(EP>=2)))", 1, 2, 0);
	T = trans[3][255] = settr(762,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(762,2,251,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(762,2,253,0,0,"IF", 1, 2, 0);
	trans[3][251]	= settr(758,2,259,305,305,"((EP>=2))", 1, 2, 0); /* m: 252 -> 259,0 */
	reached3[252] = 1;
	trans[3][252]	= settr(0,0,0,0,0,"chain_tick_used = 0",0,0,0);
	trans[3][256]	= settr(763,2,259,1,0,".(goto)", 1, 2, 0);
	trans[3][253]	= settr(760,2,254,2,0,"else", 1, 2, 0);
	trans[3][254]	= settr(761,2,259,1,0,"(1)", 1, 2, 0);
	T = trans[ 3][259] = settr(766,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(766,0,257,0,0,"sub-sequence", 1, 2, 0);
	trans[3][257]	= settr(764,4,290,306,306,"assert((EP_Stack==255))", 1, 2, 0); /* m: 258 -> 0,290 */
	reached3[258] = 1;
	trans[3][258]	= settr(0,0,0,0,0,"EP_Stack = EP",0,0,0);
	trans[3][260]	= settr(0,0,0,0,0,"EP = ( (((pending_exp>>0)&1)) -> (0) : (1) )",0,0,0);
	trans[3][264]	= settr(771,0,290,307,307,".(goto)", 1, 2, 0);
	trans[3][261]	= settr(768,2,262,2,0,"else", 1, 2, 0);
	trans[3][262]	= settr(769,4,290,308,308,"(1)", 1, 2, 0); /* m: 264 -> 290,0 */
	reached3[264] = 1;
	T = trans[ 3][290] = settr(797,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(797,2,266,0,0,"ATOMIC", 1, 2, 0);
	trans[3][266]	= settr(773,2,273,309,309,"(((2+1)==EP))", 1, 2, 0); /* m: 267 -> 273,0 */
	reached3[267] = 1;
	trans[3][267]	= settr(0,0,0,0,0,"assert((EP==(2+1)))",0,0,0);
	T = trans[3][273] = settr(780,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(780,2,268,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(780,2,272,0,0,"IF", 1, 2, 0);
	trans[3][268]	= settr(775,2,271,1,0,"(1)", 1, 2, 0);
	T = trans[ 3][271] = settr(778,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(778,0,269,0,0,"sub-sequence", 1, 2, 0);
	trans[3][269]	= settr(776,2,288,310,310,"assert(((1<2)&&(1<8)))", 1, 2, 0); /* m: 270 -> 0,288 */
	reached3[270] = 1;
	trans[3][270]	= settr(0,0,0,0,0,"pending_exp = (pending_exp|(1<<1))",0,0,0);
	trans[3][274]	= settr(781,2,288,1,0,".(goto)", 1, 2, 0);
	trans[3][272]	= settr(779,2,288,1,0,"(1)", 1, 2, 0);
	T = trans[3][288] = settr(795,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(795,2,275,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(795,2,286,0,0,"IF", 1, 2, 0);
	trans[3][275]	= settr(782,2,280,311,0,"((((((pending_exp>>0)&1)&&((BASEPRI==0)||(15<BASEPRI)))||(((pending_exp>>1)&1)&&((BASEPRI==0)||(15<BASEPRI))))&&(EP>=2)))", 1, 2, 0);
	T = trans[3][280] = settr(787,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(787,2,276,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(787,2,278,0,0,"IF", 1, 2, 0);
	trans[3][276]	= settr(783,2,284,312,312,"((EP>=2))", 1, 2, 0); /* m: 277 -> 284,0 */
	reached3[277] = 1;
	trans[3][277]	= settr(0,0,0,0,0,"chain_tick_used = 0",0,0,0);
	trans[3][281]	= settr(788,2,284,1,0,".(goto)", 1, 2, 0);
	trans[3][278]	= settr(785,2,279,2,0,"else", 1, 2, 0);
	trans[3][279]	= settr(786,2,284,1,0,"(1)", 1, 2, 0);
	T = trans[ 3][284] = settr(791,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(791,0,282,0,0,"sub-sequence", 1, 2, 0);
	trans[3][282]	= settr(789,4,444,313,313,"assert((EP_Stack==255))", 1, 2, 0); /* m: 283 -> 0,444 */
	reached3[283] = 1;
	trans[3][283]	= settr(0,0,0,0,0,"EP_Stack = EP",0,0,0);
	trans[3][285]	= settr(0,0,0,0,0,"EP = ( (((pending_exp>>0)&1)) -> (0) : (1) )",0,0,0);
	trans[3][289]	= settr(796,0,444,314,314,".(goto)", 1, 2, 0);
	trans[3][286]	= settr(793,2,287,2,0,"else", 1, 2, 0);
	trans[3][287]	= settr(794,4,444,315,315,"(1)", 1, 2, 0); /* m: 289 -> 444,0 */
	reached3[289] = 1;
	T = trans[ 3][444] = settr(951,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(951,2,291,0,0,"ATOMIC", 1, 2, 0);
	trans[3][291]	= settr(798,2,421,316,0,"(((2+1)==EP))", 1, 2, 0);
	T = trans[ 3][421] = settr(928,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(928,0,292,0,0,"sub-sequence", 1, 2, 0);
	trans[3][292]	= settr(799,2,296,317,317,"intSave = 0", 1, 2, 0); /* m: 293 -> 0,296 */
	reached3[293] = 1;
	trans[3][293]	= settr(0,0,0,0,0,"needSched = 0",0,0,0);
	trans[3][294]	= settr(0,0,0,0,0,"currentTask = EP",0,0,0);
	T = trans[ 3][296] = settr(803,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(803,0,295,0,0,"sub-sequence", 1, 2, 0);
	trans[3][295]	= settr(802,2,419,318,318,"intSave = 0", 1, 2, 0);
	T = trans[3][419] = settr(926,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(926,2,297,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(926,2,303,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(926,2,417,0,0,"IF", 1, 2, 0);
	trans[3][297]	= settr(804,2,302,319,0,"((0==0))", 1, 2, 0);
	T = trans[ 3][302] = settr(809,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(809,0,301,0,0,"sub-sequence", 1, 2, 0);
	T = trans[ 3][301] = settr(808,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(808,0,300,0,0,"sub-sequence", 1, 2, 0);
	T = trans[ 3][300] = settr(807,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(807,0,298,0,0,"sub-sequence", 1, 2, 0);
	trans[3][298]	= settr(805,2,427,320,320,"assert(((0<2)&&(0<8)))", 1, 2, 0); /* m: 299 -> 0,427 */
	reached3[299] = 1;
	trans[3][299]	= settr(0,0,0,0,0,"pending_exp = (pending_exp|(1<<0))",0,0,0);
	trans[3][420]	= settr(927,2,427,1,0,".(goto)", 1, 2, 0);
	trans[3][303]	= settr(810,2,405,321,0,"((0>0))", 1, 2, 0);
	T = trans[ 3][405] = settr(912,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(912,0,304,0,0,"sub-sequence", 1, 2, 0);
	trans[3][304]	= settr(811,2,341,322,322,"assert(((tcb[currentTask].state==1)||(tcb[currentTask].state==4)))", 1, 2, 0); /* m: 305 -> 0,341 */
	reached3[305] = 1;
	trans[3][305]	= settr(0,0,0,0,0,"needSched = 1",0,0,0);
	T = trans[3][341] = settr(848,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(848,2,306,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(848,2,339,0,0,"IF", 1, 2, 0);
	trans[3][306]	= settr(813,2,338,323,0,"((tcb[currentTask].state==1))", 1, 2, 0);
	T = trans[ 3][338] = settr(845,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(845,0,307,0,0,"sub-sequence", 1, 2, 0);
	trans[3][307]	= settr(814,2,319,324,324,"idx = 0", 1, 2, 0); /* m: 308 -> 0,319 */
	reached3[308] = 1;
	trans[3][308]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[3][309]	= settr(0,0,0,0,0,"prioLevel = tcb[currentTask].prio",0,0,0);
	trans[3][320]	= settr(827,2,319,1,0,".(goto)", 1, 2, 0);
	T = trans[3][319] = settr(826,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(826,2,310,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(826,2,317,0,0,"DO", 1, 2, 0);
	trans[3][310]	= settr(817,2,315,325,0,"(((idx<readyQueue[prioLevel].tailIndex)&&!(found)))", 1, 2, 0);
	T = trans[3][315] = settr(822,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(822,2,311,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(822,2,313,0,0,"IF", 1, 2, 0);
	trans[3][311]	= settr(818,2,319,326,326,"((readyQueue[prioLevel].tasks[idx]==currentTask))", 1, 2, 0); /* m: 312 -> 319,0 */
	reached3[312] = 1;
	trans[3][312]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[3][316]	= settr(823,2,319,1,0,".(goto)", 1, 2, 0);
	trans[3][313]	= settr(820,2,314,2,0,"else", 1, 2, 0);
	trans[3][314]	= settr(821,2,319,327,327,"idx = (idx+1)", 1, 2, 0);
	trans[3][317]	= settr(824,2,322,2,0,"else", 1, 2, 0);
	trans[3][318]	= settr(825,2,322,1,0,"goto :b21", 1, 2, 0); /* m: 322 -> 0,328 */
	reached3[322] = 1;
	trans[3][321]	= settr(828,2,322,1,0,"break", 1, 2, 0);
	trans[3][322]	= settr(829,2,328,328,328,"assert((found==1))", 1, 2, 0);
	trans[3][329]	= settr(836,2,328,1,0,".(goto)", 1, 2, 0);
	T = trans[3][328] = settr(835,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(835,2,323,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(835,2,326,0,0,"DO", 1, 2, 0);
	trans[3][323]	= settr(830,2,328,329,329,"((idx<(readyQueue[prioLevel].tailIndex-1)))", 1, 2, 0); /* m: 324 -> 328,0 */
	reached3[324] = 1;
	trans[3][324]	= settr(0,0,0,0,0,"readyQueue[prioLevel].tasks[idx] = readyQueue[prioLevel].tasks[(idx+1)]",0,0,0);
	trans[3][325]	= settr(0,0,0,0,0,"idx = (idx+1)",0,0,0);
	trans[3][326]	= settr(833,2,336,2,0,"else", 1, 2, 0);
	trans[3][327]	= settr(834,2,336,1,0,"goto :b22", 1, 2, 0);
	trans[3][330]	= settr(837,2,336,1,0,"break", 1, 2, 0);
	T = trans[3][336] = settr(843,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(843,2,331,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(843,2,334,0,0,"IF", 1, 2, 0);
	trans[3][331]	= settr(838,2,404,330,330,"((readyQueue[prioLevel].tailIndex>0))", 1, 2, 0); /* m: 332 -> 404,0 */
	reached3[332] = 1;
	trans[3][332]	= settr(0,0,0,0,0,"readyQueue[prioLevel].tasks[(readyQueue[prioLevel].tailIndex-1)] = 255",0,0,0);
	trans[3][333]	= settr(0,0,0,0,0,"readyQueue[prioLevel].tailIndex = (readyQueue[prioLevel].tailIndex-1)",0,0,0);
	trans[3][337]	= settr(844,2,343,1,0,".(goto)", 1, 2, 0); /* m: 343 -> 0,404 */
	reached3[343] = 1;
	trans[3][334]	= settr(841,2,335,2,0,"else", 1, 2, 0);
	trans[3][335]	= settr(842,2,404,331,331,"(1)", 1, 2, 0); /* m: 343 -> 404,0 */
	reached3[343] = 1;
	trans[3][342]	= settr(849,2,343,1,0,".(goto)", 1, 2, 0); /* m: 343 -> 0,404 */
	reached3[343] = 1;
	trans[3][339]	= settr(846,2,340,2,0,"else", 1, 2, 0);
	trans[3][340]	= settr(847,2,404,332,332,"(1)", 1, 2, 0); /* m: 343 -> 404,0 */
	reached3[343] = 1;
	trans[3][343]	= settr(850,2,404,333,333,"tcb[currentTask].state = 2", 1, 2, 0);
	T = trans[ 3][404] = settr(911,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(911,0,344,0,0,"sub-sequence", 1, 2, 0);
	trans[3][344]	= settr(851,2,362,334,334,"insertPos = 0", 1, 2, 0); /* m: 345 -> 0,362 */
	reached3[345] = 1;
	trans[3][345]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[3][346]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[3][347]	= settr(0,0,0,0,0,"tmpId = 0",0,0,0);
	trans[3][348]	= settr(0,0,0,0,0,"tmpTime = 0",0,0,0);
	trans[3][349]	= settr(0,0,0,0,0,"assert((g_taskSortLinkTail<(2+1)))",0,0,0);
	trans[3][350]	= settr(0,0,0,0,0,"assert((g_taskSortLinkTail>=0))",0,0,0);
	trans[3][351]	= settr(0,0,0,0,0,"insertPos = 0",0,0,0);
	trans[3][352]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[3][363]	= settr(870,2,362,1,0,".(goto)", 1, 2, 0);
	T = trans[3][362] = settr(869,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(869,2,353,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(869,2,360,0,0,"DO", 1, 2, 0);
	trans[3][353]	= settr(860,2,358,335,0,"(((insertPos<g_taskSortLinkTail)&&(found==0)))", 1, 2, 0);
	T = trans[3][358] = settr(865,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(865,2,354,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(865,2,356,0,0,"IF", 1, 2, 0);
	trans[3][354]	= settr(861,2,362,336,336,"(((g_tickCount+0)<g_taskSortLink[insertPos].responseTime))", 1, 2, 0); /* m: 355 -> 362,0 */
	reached3[355] = 1;
	trans[3][355]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[3][359]	= settr(866,2,362,1,0,".(goto)", 1, 2, 0);
	trans[3][356]	= settr(863,2,362,337,337,"(((g_tickCount+0)>=g_taskSortLink[insertPos].responseTime))", 1, 2, 0); /* m: 357 -> 362,0 */
	reached3[357] = 1;
	trans[3][357]	= settr(0,0,0,0,0,"insertPos = (insertPos+1)",0,0,0);
	trans[3][360]	= settr(867,2,365,2,0,"else", 1, 2, 0);
	trans[3][361]	= settr(868,2,365,1,0,"goto :b23", 1, 2, 0); /* m: 365 -> 0,380 */
	reached3[365] = 1;
	trans[3][364]	= settr(871,2,365,1,0,"break", 1, 2, 0);
	trans[3][365]	= settr(872,2,380,338,338,"idx = g_taskSortLinkTail", 1, 2, 0);
	trans[3][381]	= settr(888,2,380,1,0,".(goto)", 1, 2, 0);
	T = trans[3][380] = settr(887,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(887,2,366,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(887,2,378,0,0,"DO", 1, 2, 0);
	trans[3][366]	= settr(873,2,375,339,339,"((idx>insertPos))", 1, 2, 0); /* m: 367 -> 375,0 */
	reached3[367] = 1;
	trans[3][367]	= settr(0,0,0,0,0,"tmpId = g_taskSortLink[(idx-1)].taskId",0,0,0);
	trans[3][368]	= settr(0,0,0,0,0,"tmpTime = g_taskSortLink[(idx-1)].responseTime",0,0,0);
	trans[3][369]	= settr(0,0,0,0,0,"g_taskSortLink[idx].taskId = tmpId",0,0,0);
	trans[3][370]	= settr(0,0,0,0,0,"g_taskSortLink[idx].responseTime = tmpTime",0,0,0);
	T = trans[3][375] = settr(882,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(882,2,371,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(882,2,373,0,0,"IF", 1, 2, 0);
	trans[3][371]	= settr(878,2,380,340,340,"((tmpId!=255))", 1, 2, 0); /* m: 372 -> 380,0 */
	reached3[372] = 1;
	trans[3][372]	= settr(0,0,0,0,0,"tcb[tmpId].pendList = idx",0,0,0);
	trans[3][376]	= settr(883,2,377,1,0,".(goto)", 1, 2, 0); /* m: 377 -> 0,380 */
	reached3[377] = 1;
	trans[3][373]	= settr(880,2,374,341,341,"((tmpId==255))", 1, 2, 0);
	trans[3][374]	= settr(881,2,380,342,342,"(1)", 1, 2, 0); /* m: 377 -> 380,0 */
	reached3[377] = 1;
	trans[3][377]	= settr(884,2,380,343,343,"idx = (idx-1)", 1, 2, 0);
	trans[3][378]	= settr(885,2,391,344,344,"((idx<=insertPos))", 1, 2, 0); /* m: 383 -> 391,0 */
	reached3[383] = 1;
	trans[3][379]	= settr(886,2,383,1,0,"goto :b24", 1, 2, 0); /* m: 383 -> 0,391 */
	reached3[383] = 1;
	trans[3][382]	= settr(889,2,383,1,0,"break", 1, 2, 0);
	trans[3][383]	= settr(890,2,391,345,345,"g_taskSortLink[insertPos].taskId = currentTask", 1, 2, 0); /* m: 384 -> 0,391 */
	reached3[384] = 1;
	trans[3][384]	= settr(0,0,0,0,0,"g_taskSortLink[insertPos].responseTime = (g_tickCount+0)",0,0,0);
	trans[3][385]	= settr(0,0,0,0,0,"tcb[currentTask].pendList = insertPos",0,0,0);
	trans[3][386]	= settr(0,0,0,0,0,"g_taskSortLinkTail = (g_taskSortLinkTail+1)",0,0,0);
	T = trans[3][391] = settr(898,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(898,2,387,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(898,2,389,0,0,"IF", 1, 2, 0);
	trans[3][387]	= settr(894,2,403,346,346,"(((insertPos==0)&&((g_tickCount+0)<255)))", 1, 2, 0); /* m: 388 -> 403,0 */
	reached3[388] = 1;
	trans[3][388]	= settr(0,0,0,0,0,"g_schedResponseTime = (g_tickCount+0)",0,0,0);
	trans[3][392]	= settr(899,2,403,1,0,".(goto)", 1, 2, 0);
	trans[3][389]	= settr(896,2,390,2,0,"else", 1, 2, 0);
	trans[3][390]	= settr(897,2,403,1,0,"(1)", 1, 2, 0);
	T = trans[ 3][403] = settr(910,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(910,0,393,0,0,"sub-sequence", 1, 2, 0);
	trans[3][393]	= settr(900,2,400,347,347,"checkIdx = 0", 1, 2, 0); /* m: 394 -> 0,400 */
	reached3[394] = 1;
	trans[3][394]	= settr(0,0,0,0,0,"isValid = 1",0,0,0);
	trans[3][401]	= settr(908,2,400,1,0,".(goto)", 1, 2, 0);
	T = trans[3][400] = settr(907,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(907,2,395,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(907,2,398,0,0,"DO", 1, 2, 0);
	trans[3][395]	= settr(902,2,400,348,348,"((checkIdx<(g_taskSortLinkTail-1)))", 1, 2, 0); /* m: 396 -> 400,0 */
	reached3[396] = 1;
	trans[3][396]	= settr(0,0,0,0,0,"assert((g_taskSortLink[checkIdx].responseTime<=g_taskSortLink[(checkIdx+1)].responseTime))",0,0,0);
	trans[3][397]	= settr(0,0,0,0,0,"checkIdx = (checkIdx+1)",0,0,0);
	trans[3][398]	= settr(905,2,415,2,0,"else", 1, 2, 0);
	trans[3][399]	= settr(906,2,415,1,0,"goto :b25", 1, 2, 0);
	trans[3][402]	= settr(909,2,415,1,0,"break", 1, 2, 0);
	T = trans[3][415] = settr(922,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(922,2,406,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(922,2,413,0,0,"IF", 1, 2, 0);
	trans[3][406]	= settr(913,2,408,349,349,"((needSched&&g_taskScheduled))", 1, 2, 0);
	T = trans[ 3][408] = settr(915,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(915,0,407,0,0,"sub-sequence", 1, 2, 0);
	trans[3][407]	= settr(914,2,412,350,350,"intSave = 0", 1, 2, 0);
	T = trans[ 3][412] = settr(919,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(919,0,411,0,0,"sub-sequence", 1, 2, 0);
	T = trans[ 3][411] = settr(918,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(918,0,409,0,0,"sub-sequence", 1, 2, 0);
	trans[3][409]	= settr(916,2,427,351,351,"assert(((0<2)&&(0<8)))", 1, 2, 0); /* m: 410 -> 0,427 */
	reached3[410] = 1;
	trans[3][410]	= settr(0,0,0,0,0,"pending_exp = (pending_exp|(1<<0))",0,0,0);
	trans[3][416]	= settr(923,2,427,1,0,".(goto)", 1, 2, 0);
	trans[3][413]	= settr(920,2,414,2,0,"else", 1, 2, 0);
	trans[3][414]	= settr(921,2,427,1,0,"(1)", 1, 2, 0);
	trans[3][417]	= settr(924,2,418,2,0,"else", 1, 2, 0);
	trans[3][418]	= settr(925,2,427,1,0,"(1)", 1, 2, 0);
	T = trans[3][427] = settr(934,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(934,2,422,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(934,2,426,0,0,"IF", 1, 2, 0);
	trans[3][422]	= settr(929,2,425,1,0,"(1)", 1, 2, 0);
	T = trans[ 3][425] = settr(932,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(932,0,423,0,0,"sub-sequence", 1, 2, 0);
	trans[3][423]	= settr(930,2,442,352,352,"assert(((1<2)&&(1<8)))", 1, 2, 0); /* m: 424 -> 0,442 */
	reached3[424] = 1;
	trans[3][424]	= settr(0,0,0,0,0,"pending_exp = (pending_exp|(1<<1))",0,0,0);
	trans[3][428]	= settr(935,2,442,1,0,".(goto)", 1, 2, 0);
	trans[3][426]	= settr(933,2,442,1,0,"(1)", 1, 2, 0);
	T = trans[3][442] = settr(949,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(949,2,429,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(949,2,440,0,0,"IF", 1, 2, 0);
	trans[3][429]	= settr(936,2,434,353,0,"((((((pending_exp>>0)&1)&&((BASEPRI==0)||(15<BASEPRI)))||(((pending_exp>>1)&1)&&((BASEPRI==0)||(15<BASEPRI))))&&(EP>=2)))", 1, 2, 0);
	T = trans[3][434] = settr(941,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(941,2,430,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(941,2,432,0,0,"IF", 1, 2, 0);
	trans[3][430]	= settr(937,2,438,354,354,"((EP>=2))", 1, 2, 0); /* m: 431 -> 438,0 */
	reached3[431] = 1;
	trans[3][431]	= settr(0,0,0,0,0,"chain_tick_used = 0",0,0,0);
	trans[3][435]	= settr(942,2,438,1,0,".(goto)", 1, 2, 0);
	trans[3][432]	= settr(939,2,433,2,0,"else", 1, 2, 0);
	trans[3][433]	= settr(940,2,438,1,0,"(1)", 1, 2, 0);
	T = trans[ 3][438] = settr(945,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(945,0,436,0,0,"sub-sequence", 1, 2, 0);
	trans[3][436]	= settr(943,0,445,355,355,"assert((EP_Stack==255))", 1, 2, 0); /* m: 437 -> 0,445 */
	reached3[437] = 1;
	trans[3][437]	= settr(0,0,0,0,0,"EP_Stack = EP",0,0,0);
	trans[3][439]	= settr(0,0,0,0,0,"EP = ( (((pending_exp>>0)&1)) -> (0) : (1) )",0,0,0);
	trans[3][443]	= settr(950,0,445,356,356,".(goto)", 1, 2, 0);
	trans[3][440]	= settr(947,2,441,2,0,"else", 1, 2, 0);
	trans[3][441]	= settr(948,0,445,357,357,"(1)", 1, 2, 0); /* m: 443 -> 445,0 */
	reached3[443] = 1;
	trans[3][447]	= settr(954,0,448,1,0,"break", 0, 2, 0);
	trans[3][448]	= settr(955,0,0,358,358,"-end-", 0, 3500, 0);

	/* proctype 2: Process1 */

	trans[2] = (Trans **) emalloc(209*sizeof(Trans *));

	trans[2][206]	= settr(505,0,205,1,0,".(goto)", 0, 2, 0);
	T = trans[2][205] = settr(504,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(504,0,25,0,0,"DO", 0, 2, 0);
	T = trans[ 2][25] = settr(324,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(324,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[2][1]	= settr(300,2,8,359,359,"((2==EP))", 1, 2, 0); /* m: 2 -> 8,0 */
	reached2[2] = 1;
	trans[2][2]	= settr(0,0,0,0,0,"printf('Process1 running\\\\n')",0,0,0);
	T = trans[2][8] = settr(307,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(307,2,3,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(307,2,7,0,0,"IF", 1, 2, 0);
	trans[2][3]	= settr(302,2,6,1,0,"(1)", 1, 2, 0);
	T = trans[ 2][6] = settr(305,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(305,0,4,0,0,"sub-sequence", 1, 2, 0);
	trans[2][4]	= settr(303,2,23,360,360,"assert(((1<2)&&(1<8)))", 1, 2, 0); /* m: 5 -> 0,23 */
	reached2[5] = 1;
	trans[2][5]	= settr(0,0,0,0,0,"pending_exp = (pending_exp|(1<<1))",0,0,0);
	trans[2][9]	= settr(308,2,23,1,0,".(goto)", 1, 2, 0);
	trans[2][7]	= settr(306,2,23,1,0,"(1)", 1, 2, 0);
	T = trans[2][23] = settr(322,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(322,2,10,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(322,2,21,0,0,"IF", 1, 2, 0);
	trans[2][10]	= settr(309,2,15,361,0,"((((((pending_exp>>0)&1)&&((BASEPRI==0)||(15<BASEPRI)))||(((pending_exp>>1)&1)&&((BASEPRI==0)||(15<BASEPRI))))&&(EP>=2)))", 1, 2, 0);
	T = trans[2][15] = settr(314,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(314,2,11,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(314,2,13,0,0,"IF", 1, 2, 0);
	trans[2][11]	= settr(310,2,19,362,362,"((EP>=2))", 1, 2, 0); /* m: 12 -> 19,0 */
	reached2[12] = 1;
	trans[2][12]	= settr(0,0,0,0,0,"chain_tick_used = 0",0,0,0);
	trans[2][16]	= settr(315,2,19,1,0,".(goto)", 1, 2, 0);
	trans[2][13]	= settr(312,2,14,2,0,"else", 1, 2, 0);
	trans[2][14]	= settr(313,2,19,1,0,"(1)", 1, 2, 0);
	T = trans[ 2][19] = settr(318,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(318,0,17,0,0,"sub-sequence", 1, 2, 0);
	trans[2][17]	= settr(316,4,50,363,363,"assert((EP_Stack==255))", 1, 2, 0); /* m: 18 -> 0,50 */
	reached2[18] = 1;
	trans[2][18]	= settr(0,0,0,0,0,"EP_Stack = EP",0,0,0);
	trans[2][20]	= settr(0,0,0,0,0,"EP = ( (((pending_exp>>0)&1)) -> (0) : (1) )",0,0,0);
	trans[2][24]	= settr(323,0,50,364,364,".(goto)", 1, 2, 0);
	trans[2][21]	= settr(320,2,22,2,0,"else", 1, 2, 0);
	trans[2][22]	= settr(321,4,50,365,365,"(1)", 1, 2, 0); /* m: 24 -> 50,0 */
	reached2[24] = 1;
	T = trans[ 2][50] = settr(349,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(349,2,26,0,0,"ATOMIC", 1, 2, 0);
	trans[2][26]	= settr(325,2,33,366,366,"((2==EP))", 1, 2, 0); /* m: 27 -> 33,0 */
	reached2[27] = 1;
	trans[2][27]	= settr(0,0,0,0,0,"assert((EP==2))",0,0,0);
	T = trans[2][33] = settr(332,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(332,2,28,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(332,2,32,0,0,"IF", 1, 2, 0);
	trans[2][28]	= settr(327,2,31,1,0,"(1)", 1, 2, 0);
	T = trans[ 2][31] = settr(330,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(330,0,29,0,0,"sub-sequence", 1, 2, 0);
	trans[2][29]	= settr(328,2,48,367,367,"assert(((1<2)&&(1<8)))", 1, 2, 0); /* m: 30 -> 0,48 */
	reached2[30] = 1;
	trans[2][30]	= settr(0,0,0,0,0,"pending_exp = (pending_exp|(1<<1))",0,0,0);
	trans[2][34]	= settr(333,2,48,1,0,".(goto)", 1, 2, 0);
	trans[2][32]	= settr(331,2,48,1,0,"(1)", 1, 2, 0);
	T = trans[2][48] = settr(347,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(347,2,35,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(347,2,46,0,0,"IF", 1, 2, 0);
	trans[2][35]	= settr(334,2,40,368,0,"((((((pending_exp>>0)&1)&&((BASEPRI==0)||(15<BASEPRI)))||(((pending_exp>>1)&1)&&((BASEPRI==0)||(15<BASEPRI))))&&(EP>=2)))", 1, 2, 0);
	T = trans[2][40] = settr(339,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(339,2,36,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(339,2,38,0,0,"IF", 1, 2, 0);
	trans[2][36]	= settr(335,2,44,369,369,"((EP>=2))", 1, 2, 0); /* m: 37 -> 44,0 */
	reached2[37] = 1;
	trans[2][37]	= settr(0,0,0,0,0,"chain_tick_used = 0",0,0,0);
	trans[2][41]	= settr(340,2,44,1,0,".(goto)", 1, 2, 0);
	trans[2][38]	= settr(337,2,39,2,0,"else", 1, 2, 0);
	trans[2][39]	= settr(338,2,44,1,0,"(1)", 1, 2, 0);
	T = trans[ 2][44] = settr(343,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(343,0,42,0,0,"sub-sequence", 1, 2, 0);
	trans[2][42]	= settr(341,4,204,370,370,"assert((EP_Stack==255))", 1, 2, 0); /* m: 43 -> 0,204 */
	reached2[43] = 1;
	trans[2][43]	= settr(0,0,0,0,0,"EP_Stack = EP",0,0,0);
	trans[2][45]	= settr(0,0,0,0,0,"EP = ( (((pending_exp>>0)&1)) -> (0) : (1) )",0,0,0);
	trans[2][49]	= settr(348,0,204,371,371,".(goto)", 1, 2, 0);
	trans[2][46]	= settr(345,2,47,2,0,"else", 1, 2, 0);
	trans[2][47]	= settr(346,4,204,372,372,"(1)", 1, 2, 0); /* m: 49 -> 204,0 */
	reached2[49] = 1;
	T = trans[ 2][204] = settr(503,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(503,2,51,0,0,"ATOMIC", 1, 2, 0);
	trans[2][51]	= settr(350,2,181,373,0,"((2==EP))", 1, 2, 0);
	T = trans[ 2][181] = settr(480,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(480,0,52,0,0,"sub-sequence", 1, 2, 0);
	trans[2][52]	= settr(351,2,56,374,374,"intSave = 0", 1, 2, 0); /* m: 53 -> 0,56 */
	reached2[53] = 1;
	trans[2][53]	= settr(0,0,0,0,0,"needSched = 0",0,0,0);
	trans[2][54]	= settr(0,0,0,0,0,"currentTask = EP",0,0,0);
	T = trans[ 2][56] = settr(355,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(355,0,55,0,0,"sub-sequence", 1, 2, 0);
	trans[2][55]	= settr(354,2,179,375,375,"intSave = 0", 1, 2, 0);
	T = trans[2][179] = settr(478,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(478,2,57,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(478,2,63,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(478,2,177,0,0,"IF", 1, 2, 0);
	trans[2][57]	= settr(356,2,62,376,0,"((5==0))", 1, 2, 0);
	T = trans[ 2][62] = settr(361,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(361,0,61,0,0,"sub-sequence", 1, 2, 0);
	T = trans[ 2][61] = settr(360,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(360,0,60,0,0,"sub-sequence", 1, 2, 0);
	T = trans[ 2][60] = settr(359,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(359,0,58,0,0,"sub-sequence", 1, 2, 0);
	trans[2][58]	= settr(357,2,187,377,377,"assert(((0<2)&&(0<8)))", 1, 2, 0); /* m: 59 -> 0,187 */
	reached2[59] = 1;
	trans[2][59]	= settr(0,0,0,0,0,"pending_exp = (pending_exp|(1<<0))",0,0,0);
	trans[2][180]	= settr(479,2,187,1,0,".(goto)", 1, 2, 0);
	trans[2][63]	= settr(362,2,165,378,0,"((5>0))", 1, 2, 0);
	T = trans[ 2][165] = settr(464,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(464,0,64,0,0,"sub-sequence", 1, 2, 0);
	trans[2][64]	= settr(363,2,101,379,379,"assert(((tcb[currentTask].state==1)||(tcb[currentTask].state==4)))", 1, 2, 0); /* m: 65 -> 0,101 */
	reached2[65] = 1;
	trans[2][65]	= settr(0,0,0,0,0,"needSched = 1",0,0,0);
	T = trans[2][101] = settr(400,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(400,2,66,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(400,2,99,0,0,"IF", 1, 2, 0);
	trans[2][66]	= settr(365,2,98,380,0,"((tcb[currentTask].state==1))", 1, 2, 0);
	T = trans[ 2][98] = settr(397,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(397,0,67,0,0,"sub-sequence", 1, 2, 0);
	trans[2][67]	= settr(366,2,79,381,381,"idx = 0", 1, 2, 0); /* m: 68 -> 0,79 */
	reached2[68] = 1;
	trans[2][68]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[2][69]	= settr(0,0,0,0,0,"prioLevel = tcb[currentTask].prio",0,0,0);
	trans[2][80]	= settr(379,2,79,1,0,".(goto)", 1, 2, 0);
	T = trans[2][79] = settr(378,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(378,2,70,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(378,2,77,0,0,"DO", 1, 2, 0);
	trans[2][70]	= settr(369,2,75,382,0,"(((idx<readyQueue[prioLevel].tailIndex)&&!(found)))", 1, 2, 0);
	T = trans[2][75] = settr(374,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(374,2,71,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(374,2,73,0,0,"IF", 1, 2, 0);
	trans[2][71]	= settr(370,2,79,383,383,"((readyQueue[prioLevel].tasks[idx]==currentTask))", 1, 2, 0); /* m: 72 -> 79,0 */
	reached2[72] = 1;
	trans[2][72]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[2][76]	= settr(375,2,79,1,0,".(goto)", 1, 2, 0);
	trans[2][73]	= settr(372,2,74,2,0,"else", 1, 2, 0);
	trans[2][74]	= settr(373,2,79,384,384,"idx = (idx+1)", 1, 2, 0);
	trans[2][77]	= settr(376,2,82,2,0,"else", 1, 2, 0);
	trans[2][78]	= settr(377,2,82,1,0,"goto :b8", 1, 2, 0); /* m: 82 -> 0,88 */
	reached2[82] = 1;
	trans[2][81]	= settr(380,2,82,1,0,"break", 1, 2, 0);
	trans[2][82]	= settr(381,2,88,385,385,"assert((found==1))", 1, 2, 0);
	trans[2][89]	= settr(388,2,88,1,0,".(goto)", 1, 2, 0);
	T = trans[2][88] = settr(387,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(387,2,83,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(387,2,86,0,0,"DO", 1, 2, 0);
	trans[2][83]	= settr(382,2,88,386,386,"((idx<(readyQueue[prioLevel].tailIndex-1)))", 1, 2, 0); /* m: 84 -> 88,0 */
	reached2[84] = 1;
	trans[2][84]	= settr(0,0,0,0,0,"readyQueue[prioLevel].tasks[idx] = readyQueue[prioLevel].tasks[(idx+1)]",0,0,0);
	trans[2][85]	= settr(0,0,0,0,0,"idx = (idx+1)",0,0,0);
	trans[2][86]	= settr(385,2,96,2,0,"else", 1, 2, 0);
	trans[2][87]	= settr(386,2,96,1,0,"goto :b9", 1, 2, 0);
	trans[2][90]	= settr(389,2,96,1,0,"break", 1, 2, 0);
	T = trans[2][96] = settr(395,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(395,2,91,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(395,2,94,0,0,"IF", 1, 2, 0);
	trans[2][91]	= settr(390,2,164,387,387,"((readyQueue[prioLevel].tailIndex>0))", 1, 2, 0); /* m: 92 -> 164,0 */
	reached2[92] = 1;
	trans[2][92]	= settr(0,0,0,0,0,"readyQueue[prioLevel].tasks[(readyQueue[prioLevel].tailIndex-1)] = 255",0,0,0);
	trans[2][93]	= settr(0,0,0,0,0,"readyQueue[prioLevel].tailIndex = (readyQueue[prioLevel].tailIndex-1)",0,0,0);
	trans[2][97]	= settr(396,2,103,1,0,".(goto)", 1, 2, 0); /* m: 103 -> 0,164 */
	reached2[103] = 1;
	trans[2][94]	= settr(393,2,95,2,0,"else", 1, 2, 0);
	trans[2][95]	= settr(394,2,164,388,388,"(1)", 1, 2, 0); /* m: 103 -> 164,0 */
	reached2[103] = 1;
	trans[2][102]	= settr(401,2,103,1,0,".(goto)", 1, 2, 0); /* m: 103 -> 0,164 */
	reached2[103] = 1;
	trans[2][99]	= settr(398,2,100,2,0,"else", 1, 2, 0);
	trans[2][100]	= settr(399,2,164,389,389,"(1)", 1, 2, 0); /* m: 103 -> 164,0 */
	reached2[103] = 1;
	trans[2][103]	= settr(402,2,164,390,390,"tcb[currentTask].state = 2", 1, 2, 0);
	T = trans[ 2][164] = settr(463,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(463,0,104,0,0,"sub-sequence", 1, 2, 0);
	trans[2][104]	= settr(403,2,122,391,391,"insertPos = 0", 1, 2, 0); /* m: 105 -> 0,122 */
	reached2[105] = 1;
	trans[2][105]	= settr(0,0,0,0,0,"idx = 0",0,0,0);
	trans[2][106]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[2][107]	= settr(0,0,0,0,0,"tmpId = 0",0,0,0);
	trans[2][108]	= settr(0,0,0,0,0,"tmpTime = 0",0,0,0);
	trans[2][109]	= settr(0,0,0,0,0,"assert((g_taskSortLinkTail<(2+1)))",0,0,0);
	trans[2][110]	= settr(0,0,0,0,0,"assert((g_taskSortLinkTail>=0))",0,0,0);
	trans[2][111]	= settr(0,0,0,0,0,"insertPos = 0",0,0,0);
	trans[2][112]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[2][123]	= settr(422,2,122,1,0,".(goto)", 1, 2, 0);
	T = trans[2][122] = settr(421,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(421,2,113,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(421,2,120,0,0,"DO", 1, 2, 0);
	trans[2][113]	= settr(412,2,118,392,0,"(((insertPos<g_taskSortLinkTail)&&(found==0)))", 1, 2, 0);
	T = trans[2][118] = settr(417,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(417,2,114,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(417,2,116,0,0,"IF", 1, 2, 0);
	trans[2][114]	= settr(413,2,122,393,393,"(((g_tickCount+5)<g_taskSortLink[insertPos].responseTime))", 1, 2, 0); /* m: 115 -> 122,0 */
	reached2[115] = 1;
	trans[2][115]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[2][119]	= settr(418,2,122,1,0,".(goto)", 1, 2, 0);
	trans[2][116]	= settr(415,2,122,394,394,"(((g_tickCount+5)>=g_taskSortLink[insertPos].responseTime))", 1, 2, 0); /* m: 117 -> 122,0 */
	reached2[117] = 1;
	trans[2][117]	= settr(0,0,0,0,0,"insertPos = (insertPos+1)",0,0,0);
	trans[2][120]	= settr(419,2,125,2,0,"else", 1, 2, 0);
	trans[2][121]	= settr(420,2,125,1,0,"goto :b10", 1, 2, 0); /* m: 125 -> 0,140 */
	reached2[125] = 1;
	trans[2][124]	= settr(423,2,125,1,0,"break", 1, 2, 0);
	trans[2][125]	= settr(424,2,140,395,395,"idx = g_taskSortLinkTail", 1, 2, 0);
	trans[2][141]	= settr(440,2,140,1,0,".(goto)", 1, 2, 0);
	T = trans[2][140] = settr(439,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(439,2,126,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(439,2,138,0,0,"DO", 1, 2, 0);
	trans[2][126]	= settr(425,2,135,396,396,"((idx>insertPos))", 1, 2, 0); /* m: 127 -> 135,0 */
	reached2[127] = 1;
	trans[2][127]	= settr(0,0,0,0,0,"tmpId = g_taskSortLink[(idx-1)].taskId",0,0,0);
	trans[2][128]	= settr(0,0,0,0,0,"tmpTime = g_taskSortLink[(idx-1)].responseTime",0,0,0);
	trans[2][129]	= settr(0,0,0,0,0,"g_taskSortLink[idx].taskId = tmpId",0,0,0);
	trans[2][130]	= settr(0,0,0,0,0,"g_taskSortLink[idx].responseTime = tmpTime",0,0,0);
	T = trans[2][135] = settr(434,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(434,2,131,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(434,2,133,0,0,"IF", 1, 2, 0);
	trans[2][131]	= settr(430,2,140,397,397,"((tmpId!=255))", 1, 2, 0); /* m: 132 -> 140,0 */
	reached2[132] = 1;
	trans[2][132]	= settr(0,0,0,0,0,"tcb[tmpId].pendList = idx",0,0,0);
	trans[2][136]	= settr(435,2,137,1,0,".(goto)", 1, 2, 0); /* m: 137 -> 0,140 */
	reached2[137] = 1;
	trans[2][133]	= settr(432,2,134,398,398,"((tmpId==255))", 1, 2, 0);
	trans[2][134]	= settr(433,2,140,399,399,"(1)", 1, 2, 0); /* m: 137 -> 140,0 */
	reached2[137] = 1;
	trans[2][137]	= settr(436,2,140,400,400,"idx = (idx-1)", 1, 2, 0);
	trans[2][138]	= settr(437,2,151,401,401,"((idx<=insertPos))", 1, 2, 0); /* m: 143 -> 151,0 */
	reached2[143] = 1;
	trans[2][139]	= settr(438,2,143,1,0,"goto :b11", 1, 2, 0); /* m: 143 -> 0,151 */
	reached2[143] = 1;
	trans[2][142]	= settr(441,2,143,1,0,"break", 1, 2, 0);
	trans[2][143]	= settr(442,2,151,402,402,"g_taskSortLink[insertPos].taskId = currentTask", 1, 2, 0); /* m: 144 -> 0,151 */
	reached2[144] = 1;
	trans[2][144]	= settr(0,0,0,0,0,"g_taskSortLink[insertPos].responseTime = (g_tickCount+5)",0,0,0);
	trans[2][145]	= settr(0,0,0,0,0,"tcb[currentTask].pendList = insertPos",0,0,0);
	trans[2][146]	= settr(0,0,0,0,0,"g_taskSortLinkTail = (g_taskSortLinkTail+1)",0,0,0);
	T = trans[2][151] = settr(450,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(450,2,147,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(450,2,149,0,0,"IF", 1, 2, 0);
	trans[2][147]	= settr(446,2,163,403,403,"(((insertPos==0)&&((g_tickCount+5)<255)))", 1, 2, 0); /* m: 148 -> 163,0 */
	reached2[148] = 1;
	trans[2][148]	= settr(0,0,0,0,0,"g_schedResponseTime = (g_tickCount+5)",0,0,0);
	trans[2][152]	= settr(451,2,163,1,0,".(goto)", 1, 2, 0);
	trans[2][149]	= settr(448,2,150,2,0,"else", 1, 2, 0);
	trans[2][150]	= settr(449,2,163,1,0,"(1)", 1, 2, 0);
	T = trans[ 2][163] = settr(462,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(462,0,153,0,0,"sub-sequence", 1, 2, 0);
	trans[2][153]	= settr(452,2,160,404,404,"checkIdx = 0", 1, 2, 0); /* m: 154 -> 0,160 */
	reached2[154] = 1;
	trans[2][154]	= settr(0,0,0,0,0,"isValid = 1",0,0,0);
	trans[2][161]	= settr(460,2,160,1,0,".(goto)", 1, 2, 0);
	T = trans[2][160] = settr(459,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(459,2,155,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(459,2,158,0,0,"DO", 1, 2, 0);
	trans[2][155]	= settr(454,2,160,405,405,"((checkIdx<(g_taskSortLinkTail-1)))", 1, 2, 0); /* m: 156 -> 160,0 */
	reached2[156] = 1;
	trans[2][156]	= settr(0,0,0,0,0,"assert((g_taskSortLink[checkIdx].responseTime<=g_taskSortLink[(checkIdx+1)].responseTime))",0,0,0);
	trans[2][157]	= settr(0,0,0,0,0,"checkIdx = (checkIdx+1)",0,0,0);
	trans[2][158]	= settr(457,2,175,2,0,"else", 1, 2, 0);
	trans[2][159]	= settr(458,2,175,1,0,"goto :b12", 1, 2, 0);
	trans[2][162]	= settr(461,2,175,1,0,"break", 1, 2, 0);
	T = trans[2][175] = settr(474,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(474,2,166,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(474,2,173,0,0,"IF", 1, 2, 0);
	trans[2][166]	= settr(465,2,168,406,406,"((needSched&&g_taskScheduled))", 1, 2, 0);
	T = trans[ 2][168] = settr(467,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(467,0,167,0,0,"sub-sequence", 1, 2, 0);
	trans[2][167]	= settr(466,2,172,407,407,"intSave = 0", 1, 2, 0);
	T = trans[ 2][172] = settr(471,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(471,0,171,0,0,"sub-sequence", 1, 2, 0);
	T = trans[ 2][171] = settr(470,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(470,0,169,0,0,"sub-sequence", 1, 2, 0);
	trans[2][169]	= settr(468,2,187,408,408,"assert(((0<2)&&(0<8)))", 1, 2, 0); /* m: 170 -> 0,187 */
	reached2[170] = 1;
	trans[2][170]	= settr(0,0,0,0,0,"pending_exp = (pending_exp|(1<<0))",0,0,0);
	trans[2][176]	= settr(475,2,187,1,0,".(goto)", 1, 2, 0);
	trans[2][173]	= settr(472,2,174,2,0,"else", 1, 2, 0);
	trans[2][174]	= settr(473,2,187,1,0,"(1)", 1, 2, 0);
	trans[2][177]	= settr(476,2,178,2,0,"else", 1, 2, 0);
	trans[2][178]	= settr(477,2,187,1,0,"(1)", 1, 2, 0);
	T = trans[2][187] = settr(486,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(486,2,182,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(486,2,186,0,0,"IF", 1, 2, 0);
	trans[2][182]	= settr(481,2,185,1,0,"(1)", 1, 2, 0);
	T = trans[ 2][185] = settr(484,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(484,0,183,0,0,"sub-sequence", 1, 2, 0);
	trans[2][183]	= settr(482,2,202,409,409,"assert(((1<2)&&(1<8)))", 1, 2, 0); /* m: 184 -> 0,202 */
	reached2[184] = 1;
	trans[2][184]	= settr(0,0,0,0,0,"pending_exp = (pending_exp|(1<<1))",0,0,0);
	trans[2][188]	= settr(487,2,202,1,0,".(goto)", 1, 2, 0);
	trans[2][186]	= settr(485,2,202,1,0,"(1)", 1, 2, 0);
	T = trans[2][202] = settr(501,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(501,2,189,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(501,2,200,0,0,"IF", 1, 2, 0);
	trans[2][189]	= settr(488,2,194,410,0,"((((((pending_exp>>0)&1)&&((BASEPRI==0)||(15<BASEPRI)))||(((pending_exp>>1)&1)&&((BASEPRI==0)||(15<BASEPRI))))&&(EP>=2)))", 1, 2, 0);
	T = trans[2][194] = settr(493,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(493,2,190,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(493,2,192,0,0,"IF", 1, 2, 0);
	trans[2][190]	= settr(489,2,198,411,411,"((EP>=2))", 1, 2, 0); /* m: 191 -> 198,0 */
	reached2[191] = 1;
	trans[2][191]	= settr(0,0,0,0,0,"chain_tick_used = 0",0,0,0);
	trans[2][195]	= settr(494,2,198,1,0,".(goto)", 1, 2, 0);
	trans[2][192]	= settr(491,2,193,2,0,"else", 1, 2, 0);
	trans[2][193]	= settr(492,2,198,1,0,"(1)", 1, 2, 0);
	T = trans[ 2][198] = settr(497,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(497,0,196,0,0,"sub-sequence", 1, 2, 0);
	trans[2][196]	= settr(495,0,205,412,412,"assert((EP_Stack==255))", 1, 2, 0); /* m: 197 -> 0,205 */
	reached2[197] = 1;
	trans[2][197]	= settr(0,0,0,0,0,"EP_Stack = EP",0,0,0);
	trans[2][199]	= settr(0,0,0,0,0,"EP = ( (((pending_exp>>0)&1)) -> (0) : (1) )",0,0,0);
	trans[2][203]	= settr(502,0,205,413,413,".(goto)", 1, 2, 0);
	trans[2][200]	= settr(499,2,201,2,0,"else", 1, 2, 0);
	trans[2][201]	= settr(500,0,205,414,414,"(1)", 1, 2, 0); /* m: 203 -> 205,0 */
	reached2[203] = 1;
	trans[2][207]	= settr(506,0,208,1,0,"break", 0, 2, 0);
	trans[2][208]	= settr(507,0,0,415,415,"-end-", 0, 3500, 0);

	/* proctype 1: SysTick_Handler */

	trans[1] = (Trans **) emalloc(155*sizeof(Trans *));

	trans[1][152]	= settr(297,0,151,1,0,".(goto)", 0, 2, 0);
	T = trans[1][151] = settr(296,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(296,0,1,0,0,"DO", 0, 2, 0);
	trans[1][1]	= settr(146,0,7,416,0,"((EP==1))", 1, 2, 0);
	T = trans[ 1][7] = settr(152,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(152,0,6,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][6] = settr(151,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(151,2,2,0,0,"ATOMIC", 1, 2, 0);
	trans[1][2]	= settr(147,2,5,417,0,"((EP==1))", 1, 2, 0);
	T = trans[ 1][5] = settr(150,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(150,0,3,0,0,"sub-sequence", 1, 2, 0);
	trans[1][3]	= settr(148,4,110,418,418,"assert(((1<2)&&(1<8)))", 1, 2, 0); /* m: 4 -> 0,110 */
	reached1[4] = 1;
	trans[1][4]	= settr(0,0,0,0,0,"pending_exp = (pending_exp&~((1<<1)))",0,0,0);
	T = trans[ 1][110] = settr(255,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(255,2,8,0,0,"ATOMIC", 1, 2, 0);
	trans[1][8]	= settr(153,2,100,419,0,"((1==EP))", 1, 2, 0);
	T = trans[ 1][100] = settr(245,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(245,0,9,0,0,"sub-sequence", 1, 2, 0);
	trans[1][9]	= settr(154,2,90,420,420,"idx = 0", 1, 2, 0); /* m: 10 -> 0,90 */
	reached1[10] = 1;
	trans[1][10]	= settr(0,0,0,0,0,"taskId = 0",0,0,0);
	trans[1][11]	= settr(0,0,0,0,0,"needSched = 0",0,0,0);
	trans[1][12]	= settr(0,0,0,0,0,"g_tickCount = (g_tickCount+1)",0,0,0);
	T = trans[1][90] = settr(235,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(235,2,13,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(235,2,15,0,0,"IF", 1, 2, 0);
	trans[1][13]	= settr(158,2,14,421,0,"((g_tickCount<g_schedResponseTime))", 1, 2, 0);
	trans[1][14]	= settr(159,2,98,1,0,"(1)", 1, 2, 0);
	trans[1][91]	= settr(236,2,98,1,0,".(goto)", 1, 2, 0);
	trans[1][15]	= settr(160,2,70,2,0,"else", 1, 2, 0);
	trans[1][71]	= settr(216,2,70,1,0,".(goto)", 1, 2, 0);
	T = trans[1][70] = settr(215,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(215,2,16,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(215,2,68,0,0,"DO", 1, 2, 0);
	trans[1][16]	= settr(161,2,66,422,422,"((idx<g_taskSortLinkTail))", 1, 2, 0); /* m: 17 -> 66,0 */
	reached1[17] = 1;
	trans[1][17]	= settr(0,0,0,0,0,"taskId = g_taskSortLink[idx].taskId",0,0,0);
	trans[1][18]	= settr(0,0,0,0,0,"taskResponseTime = g_taskSortLink[idx].responseTime",0,0,0);
	T = trans[1][66] = settr(211,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(211,2,19,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(211,2,21,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(211,2,62,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(211,2,64,0,0,"IF", 1, 2, 0);
	trans[1][19]	= settr(164,2,88,423,423,"((taskResponseTime>=255))", 1, 2, 0);
	trans[1][20]	= settr(165,2,88,1,0,"goto :b4", 1, 2, 0);
	trans[1][67]	= settr(212,2,70,1,0,".(goto)", 1, 2, 0);
	trans[1][21]	= settr(166,2,30,424,424,"(((tcb[taskId].state==2)&&(g_tickCount>=taskResponseTime)))", 1, 2, 0); /* m: 22 -> 30,0 */
	reached1[22] = 1;
	trans[1][22]	= settr(0,0,0,0,0,"tcb[taskId].state = 1",0,0,0);
	T = trans[ 1][30] = settr(175,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(175,0,28,0,0,"sub-sequence", 1, 2, 0);
	T = trans[1][28] = settr(173,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(173,2,23,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(173,2,26,0,0,"IF", 1, 2, 0);
	trans[1][23]	= settr(168,2,44,425,425,"((readyQueue[tcb[taskId].prio].tailIndex<5))", 1, 2, 0); /* m: 24 -> 44,0 */
	reached1[24] = 1;
	trans[1][24]	= settr(0,0,0,0,0,"readyQueue[tcb[taskId].prio].tasks[readyQueue[tcb[taskId].prio].tailIndex] = taskId",0,0,0);
	trans[1][25]	= settr(0,0,0,0,0,"readyQueue[tcb[taskId].prio].tailIndex = (readyQueue[tcb[taskId].prio].tailIndex+1)",0,0,0);
	trans[1][29]	= settr(174,2,31,1,0,".(goto)", 1, 2, 0); /* m: 31 -> 0,44 */
	reached1[31] = 1;
	trans[1][26]	= settr(171,2,27,2,0,"else", 1, 2, 0);
	trans[1][27]	= settr(172,2,44,426,426,"assert(0)", 1, 2, 0); /* m: 31 -> 0,44 */
	reached1[31] = 1;
	trans[1][31]	= settr(176,2,44,427,427,"shiftIdx = idx", 1, 2, 0);
	trans[1][45]	= settr(190,2,44,1,0,".(goto)", 1, 2, 0);
	T = trans[1][44] = settr(189,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(189,2,32,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(189,2,42,0,0,"DO", 1, 2, 0);
	trans[1][32]	= settr(177,2,39,428,428,"((shiftIdx<(g_taskSortLinkTail-1)))", 1, 2, 0); /* m: 33 -> 39,0 */
	reached1[33] = 1;
	trans[1][33]	= settr(0,0,0,0,0,"g_taskSortLink[shiftIdx].taskId = g_taskSortLink[(shiftIdx+1)].taskId",0,0,0);
	trans[1][34]	= settr(0,0,0,0,0,"g_taskSortLink[shiftIdx].responseTime = g_taskSortLink[(shiftIdx+1)].responseTime",0,0,0);
	T = trans[1][39] = settr(184,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(184,2,35,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(184,2,37,0,0,"IF", 1, 2, 0);
	trans[1][35]	= settr(180,2,44,429,429,"((g_taskSortLink[shiftIdx].taskId!=255))", 1, 2, 0); /* m: 36 -> 44,0 */
	reached1[36] = 1;
	trans[1][36]	= settr(0,0,0,0,0,"tcb[g_taskSortLink[shiftIdx].taskId].pendList = shiftIdx",0,0,0);
	trans[1][40]	= settr(185,2,41,1,0,".(goto)", 1, 2, 0); /* m: 41 -> 0,44 */
	reached1[41] = 1;
	trans[1][37]	= settr(182,2,38,2,0,"else", 1, 2, 0);
	trans[1][38]	= settr(183,2,44,430,430,"(1)", 1, 2, 0); /* m: 41 -> 44,0 */
	reached1[41] = 1;
	trans[1][41]	= settr(186,2,44,431,431,"shiftIdx = (shiftIdx+1)", 1, 2, 0);
	trans[1][42]	= settr(187,2,47,2,0,"else", 1, 2, 0);
	trans[1][43]	= settr(188,2,47,1,0,"goto :b5", 1, 2, 0); /* m: 47 -> 0,60 */
	reached1[47] = 1;
	trans[1][46]	= settr(191,2,47,1,0,"break", 1, 2, 0);
	trans[1][47]	= settr(192,2,60,432,432,"g_taskSortLink[(g_taskSortLinkTail-1)].taskId = 255", 1, 2, 0); /* m: 48 -> 0,60 */
	reached1[48] = 1;
	trans[1][48]	= settr(0,0,0,0,0,"g_taskSortLink[(g_taskSortLinkTail-1)].responseTime = 255",0,0,0);
	trans[1][49]	= settr(0,0,0,0,0,"g_taskSortLinkTail = (g_taskSortLinkTail-1)",0,0,0);
	T = trans[ 1][60] = settr(205,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(205,0,50,0,0,"sub-sequence", 1, 2, 0);
	trans[1][50]	= settr(195,2,57,433,433,"checkIdx = 0", 1, 2, 0); /* m: 51 -> 0,57 */
	reached1[51] = 1;
	trans[1][51]	= settr(0,0,0,0,0,"isValid = 1",0,0,0);
	trans[1][58]	= settr(203,2,57,1,0,".(goto)", 1, 2, 0);
	T = trans[1][57] = settr(202,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(202,2,52,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(202,2,55,0,0,"DO", 1, 2, 0);
	trans[1][52]	= settr(197,2,57,434,434,"((checkIdx<(g_taskSortLinkTail-1)))", 1, 2, 0); /* m: 53 -> 57,0 */
	reached1[53] = 1;
	trans[1][53]	= settr(0,0,0,0,0,"assert((g_taskSortLink[checkIdx].responseTime<=g_taskSortLink[(checkIdx+1)].responseTime))",0,0,0);
	trans[1][54]	= settr(0,0,0,0,0,"checkIdx = (checkIdx+1)",0,0,0);
	trans[1][55]	= settr(200,2,61,2,0,"else", 1, 2, 0);
	trans[1][56]	= settr(201,2,61,1,0,"goto :b6", 1, 2, 0); /* m: 61 -> 0,70 */
	reached1[61] = 1;
	trans[1][59]	= settr(204,2,61,1,0,"break", 1, 2, 0);
	trans[1][61]	= settr(206,2,70,435,435,"needSched = 1", 1, 2, 0);
	trans[1][62]	= settr(207,2,88,436,436,"((tcb[taskId].state==2))", 1, 2, 0);
	trans[1][63]	= settr(208,2,88,1,0,"goto :b4", 1, 2, 0);
	trans[1][64]	= settr(209,2,65,2,0,"else", 1, 2, 0);
	trans[1][65]	= settr(210,2,70,437,437,"idx = (idx+1)", 1, 2, 0);
	trans[1][68]	= settr(213,2,88,2,0,"else", 1, 2, 0);
	trans[1][69]	= settr(214,2,88,1,0,"goto :b4", 1, 2, 0);
	trans[1][72]	= settr(217,2,88,1,0,"break", 1, 2, 0);
	T = trans[1][88] = settr(233,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(233,2,73,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(233,2,86,0,0,"IF", 1, 2, 0);
	trans[1][73]	= settr(218,2,84,438,0,"(needSched)", 1, 2, 0);
	T = trans[1][84] = settr(229,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(229,2,74,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(229,2,76,0,0,"IF", 1, 2, 0);
	trans[1][74]	= settr(219,2,98,439,439,"((g_taskSortLinkTail==0))", 1, 2, 0); /* m: 75 -> 98,0 */
	reached1[75] = 1;
	trans[1][75]	= settr(0,0,0,0,0,"g_schedResponseTime = 255",0,0,0);
	trans[1][85]	= settr(230,2,98,1,0,".(goto)", 1, 2, 0);
	trans[1][76]	= settr(221,2,82,440,440,"((g_taskSortLinkTail>0))", 1, 2, 0); /* m: 77 -> 82,0 */
	reached1[77] = 1;
	trans[1][77]	= settr(0,0,0,0,0,"firstTime = g_taskSortLink[0].responseTime",0,0,0);
	T = trans[1][82] = settr(227,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(227,2,78,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(227,2,80,0,0,"IF", 1, 2, 0);
	trans[1][78]	= settr(223,2,98,441,441,"((firstTime<255))", 1, 2, 0); /* m: 79 -> 98,0 */
	reached1[79] = 1;
	trans[1][79]	= settr(0,0,0,0,0,"g_schedResponseTime = firstTime",0,0,0);
	trans[1][83]	= settr(228,2,98,1,0,".(goto)", 1, 2, 0);
	trans[1][80]	= settr(225,2,81,2,0,"else", 1, 2, 0);
	trans[1][81]	= settr(226,2,98,442,442,"g_schedResponseTime = 255", 1, 2, 0);
	trans[1][89]	= settr(234,2,98,1,0,".(goto)", 1, 2, 0);
	trans[1][86]	= settr(231,2,87,2,0,"else", 1, 2, 0);
	trans[1][87]	= settr(232,2,98,1,0,"(1)", 1, 2, 0);
	T = trans[1][98] = settr(243,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(243,2,92,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(243,2,96,0,0,"IF", 1, 2, 0);
	trans[1][92]	= settr(237,2,95,443,443,"((needSched&&g_taskScheduled))", 1, 2, 0);
	T = trans[ 1][95] = settr(240,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(240,0,93,0,0,"sub-sequence", 1, 2, 0);
	trans[1][93]	= settr(238,2,109,444,444,"assert(((0<2)&&(0<8)))", 1, 2, 0); /* m: 94 -> 0,109 */
	reached1[94] = 1;
	trans[1][94]	= settr(0,0,0,0,0,"pending_exp = (pending_exp|(1<<0))",0,0,0);
	trans[1][99]	= settr(244,2,109,1,0,".(goto)", 1, 2, 0);
	trans[1][96]	= settr(241,2,97,2,0,"else", 1, 2, 0);
	trans[1][97]	= settr(242,2,109,1,0,"(1)", 1, 2, 0);
	T = trans[ 1][109] = settr(254,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(254,0,107,0,0,"sub-sequence", 1, 2, 0);
	T = trans[1][107] = settr(252,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(252,2,101,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(252,2,106,0,0,"IF", 1, 2, 0);
	trans[1][101]	= settr(246,2,104,445,0,"(((chain_tick_used==0)&&(((pending_exp>>1)&1)==0)))", 1, 2, 0);
	T = trans[ 1][104] = settr(249,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(249,0,102,0,0,"sub-sequence", 1, 2, 0);
	trans[1][102]	= settr(247,4,124,446,446,"assert(((1<2)&&(1<8)))", 1, 2, 0); /* m: 103 -> 0,124 */
	reached1[103] = 1;
	trans[1][103]	= settr(0,0,0,0,0,"pending_exp = (pending_exp|(1<<1))",0,0,0);
	trans[1][105]	= settr(0,0,0,0,0,"chain_tick_used = 1",0,0,0);
	trans[1][108]	= settr(253,0,124,447,447,".(goto)", 1, 2, 0);
	trans[1][106]	= settr(251,4,124,448,448,"(1)", 1, 2, 0); /* m: 108 -> 124,0 */
	reached1[108] = 1;
	T = trans[ 1][124] = settr(269,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(269,2,111,0,0,"ATOMIC", 1, 2, 0);
	trans[1][111]	= settr(256,2,114,449,0,"((1==EP))", 1, 2, 0);
	T = trans[ 1][114] = settr(259,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(259,0,112,0,0,"sub-sequence", 1, 2, 0);
	trans[1][112]	= settr(257,2,123,450,450,"assert(((0<2)&&(0<8)))", 1, 2, 0); /* m: 113 -> 0,123 */
	reached1[113] = 1;
	trans[1][113]	= settr(0,0,0,0,0,"pending_exp = (pending_exp|(1<<0))",0,0,0);
	T = trans[ 1][123] = settr(268,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(268,0,121,0,0,"sub-sequence", 1, 2, 0);
	T = trans[1][121] = settr(266,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(266,2,115,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(266,2,120,0,0,"IF", 1, 2, 0);
	trans[1][115]	= settr(260,2,118,451,0,"(((chain_tick_used==0)&&(((pending_exp>>1)&1)==0)))", 1, 2, 0);
	T = trans[ 1][118] = settr(263,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(263,0,116,0,0,"sub-sequence", 1, 2, 0);
	trans[1][116]	= settr(261,4,150,452,452,"assert(((1<2)&&(1<8)))", 1, 2, 0); /* m: 117 -> 0,150 */
	reached1[117] = 1;
	trans[1][117]	= settr(0,0,0,0,0,"pending_exp = (pending_exp|(1<<1))",0,0,0);
	trans[1][119]	= settr(0,0,0,0,0,"chain_tick_used = 1",0,0,0);
	trans[1][122]	= settr(267,0,150,453,453,".(goto)", 1, 2, 0);
	trans[1][120]	= settr(265,4,150,454,454,"(1)", 1, 2, 0); /* m: 122 -> 150,0 */
	reached1[122] = 1;
	T = trans[ 1][150] = settr(295,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(295,2,125,0,0,"ATOMIC", 1, 2, 0);
	trans[1][125]	= settr(270,2,140,455,0,"((1==EP))", 1, 2, 0);
	T = trans[ 1][140] = settr(285,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(285,0,138,0,0,"sub-sequence", 1, 2, 0);
	T = trans[1][138] = settr(283,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(283,2,126,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(283,2,133,0,0,"IF", 1, 2, 0);
	trans[1][126]	= settr(271,2,132,456,0,"((pending_exp>0))", 1, 2, 0);
	T = trans[ 1][132] = settr(277,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(277,0,128,0,0,"sub-sequence", 1, 2, 0);
	T = trans[ 1][128] = settr(273,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(273,0,127,0,0,"sub-sequence", 1, 2, 0);
	trans[1][127]	= settr(272,2,149,457,457,"tmp = ( (((pending_exp>>0)&1)) -> (0) : (1) )", 1, 2, 0); /* m: 129 -> 0,149 */
	reached1[129] = 1;
	trans[1][129]	= settr(0,0,0,0,0,"assert((((BASEPRI==0)||(15<BASEPRI))&&(EP_Stack>=2)))",0,0,0);
	trans[1][130]	= settr(0,0,0,0,0,"EP = tmp",0,0,0);
	trans[1][131]	= settr(0,0,0,0,0,"tmp = 255",0,0,0);
	trans[1][139]	= settr(284,2,149,1,0,".(goto)", 1, 2, 0);
	trans[1][133]	= settr(278,2,137,2,0,"else", 1, 2, 0);
	T = trans[ 1][137] = settr(282,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(282,0,134,0,0,"sub-sequence", 1, 2, 0);
	trans[1][134]	= settr(279,2,149,458,458,"assert((EP_Stack!=255))", 1, 2, 0); /* m: 135 -> 0,149 */
	reached1[135] = 1;
	trans[1][135]	= settr(0,0,0,0,0,"EP = EP_Stack",0,0,0);
	trans[1][136]	= settr(0,0,0,0,0,"EP_Stack = 255",0,0,0);
	T = trans[ 1][149] = settr(294,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(294,0,147,0,0,"sub-sequence", 1, 2, 0);
	T = trans[1][147] = settr(292,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(292,2,141,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(292,2,146,0,0,"IF", 1, 2, 0);
	trans[1][141]	= settr(286,2,144,459,0,"(((chain_tick_used==0)&&(((pending_exp>>1)&1)==0)))", 1, 2, 0);
	T = trans[ 1][144] = settr(289,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(289,0,142,0,0,"sub-sequence", 1, 2, 0);
	trans[1][142]	= settr(287,0,151,460,460,"assert(((1<2)&&(1<8)))", 1, 2, 0); /* m: 143 -> 0,151 */
	reached1[143] = 1;
	trans[1][143]	= settr(0,0,0,0,0,"pending_exp = (pending_exp|(1<<1))",0,0,0);
	trans[1][145]	= settr(0,0,0,0,0,"chain_tick_used = 1",0,0,0);
	trans[1][148]	= settr(293,0,151,461,461,".(goto)", 1, 2, 0);
	trans[1][146]	= settr(291,0,151,462,462,"(1)", 1, 2, 0); /* m: 148 -> 151,0 */
	reached1[148] = 1;
	trans[1][153]	= settr(298,0,154,1,0,"break", 0, 2, 0);
	trans[1][154]	= settr(299,0,0,463,463,"-end-", 0, 3500, 0);

	/* proctype 0: PendSV_Handler */

	trans[0] = (Trans **) emalloc(147*sizeof(Trans *));

	trans[0][144]	= settr(143,0,143,1,0,".(goto)", 0, 2, 0);
	T = trans[0][143] = settr(142,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(142,0,1,0,0,"DO", 0, 2, 0);
	trans[0][1]	= settr(0,0,7,464,0,"((EP==0))", 1, 2, 0);
	T = trans[ 0][7] = settr(6,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(6,0,6,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][6] = settr(5,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(5,2,2,0,0,"ATOMIC", 1, 2, 0);
	trans[0][2]	= settr(1,2,5,465,0,"((EP==0))", 1, 2, 0);
	T = trans[ 0][5] = settr(4,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(4,0,3,0,0,"sub-sequence", 1, 2, 0);
	trans[0][3]	= settr(2,4,32,466,466,"assert(((0<2)&&(0<8)))", 1, 2, 0); /* m: 4 -> 0,32 */
	reached0[4] = 1;
	trans[0][4]	= settr(0,0,0,0,0,"pending_exp = (pending_exp&~((1<<0)))",0,0,0);
	T = trans[ 0][32] = settr(31,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(31,2,8,0,0,"ATOMIC", 1, 2, 0);
	trans[0][8]	= settr(7,2,21,467,0,"((0==EP))", 1, 2, 0);
	T = trans[0][21] = settr(20,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(20,2,9,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(20,2,19,0,0,"IF", 1, 2, 0);
	trans[0][9]	= settr(8,2,18,468,468,"((tcb[EP_Stack].state==4))", 1, 2, 0); /* m: 10 -> 18,0 */
	reached0[10] = 1;
	trans[0][10]	= settr(0,0,0,0,0,"tcb[EP_Stack].state = 1",0,0,0);
	T = trans[ 0][18] = settr(17,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(17,0,16,0,0,"sub-sequence", 1, 2, 0);
	T = trans[0][16] = settr(15,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(15,2,11,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(15,2,14,0,0,"IF", 1, 2, 0);
	trans[0][11]	= settr(10,2,31,469,469,"((readyQueue[tcb[EP_Stack].prio].tailIndex<5))", 1, 2, 0); /* m: 12 -> 31,0 */
	reached0[12] = 1;
	trans[0][12]	= settr(0,0,0,0,0,"readyQueue[tcb[EP_Stack].prio].tasks[readyQueue[tcb[EP_Stack].prio].tailIndex] = EP_Stack",0,0,0);
	trans[0][13]	= settr(0,0,0,0,0,"readyQueue[tcb[EP_Stack].prio].tailIndex = (readyQueue[tcb[EP_Stack].prio].tailIndex+1)",0,0,0);
	trans[0][17]	= settr(16,2,31,1,0,".(goto)", 1, 2, 0);
	trans[0][14]	= settr(13,2,15,2,0,"else", 1, 2, 0);
	trans[0][15]	= settr(14,2,31,470,0,"assert(0)", 1, 2, 0);
	trans[0][22]	= settr(21,2,31,1,0,".(goto)", 1, 2, 0);
	trans[0][19]	= settr(18,2,20,2,0,"else", 1, 2, 0);
	trans[0][20]	= settr(19,2,31,1,0,"(1)", 1, 2, 0);
	T = trans[ 0][31] = settr(30,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(30,0,29,0,0,"sub-sequence", 1, 2, 0);
	T = trans[0][29] = settr(28,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(28,2,23,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(28,2,28,0,0,"IF", 1, 2, 0);
	trans[0][23]	= settr(22,2,26,471,0,"(((chain_tick_used==0)&&(((pending_exp>>1)&1)==0)))", 1, 2, 0);
	T = trans[ 0][26] = settr(25,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(25,0,24,0,0,"sub-sequence", 1, 2, 0);
	trans[0][24]	= settr(23,4,62,472,472,"assert(((1<2)&&(1<8)))", 1, 2, 0); /* m: 25 -> 0,62 */
	reached0[25] = 1;
	trans[0][25]	= settr(0,0,0,0,0,"pending_exp = (pending_exp|(1<<1))",0,0,0);
	trans[0][27]	= settr(0,0,0,0,0,"chain_tick_used = 1",0,0,0);
	trans[0][30]	= settr(29,0,62,473,473,".(goto)", 1, 2, 0);
	trans[0][28]	= settr(27,4,62,474,474,"(1)", 1, 2, 0); /* m: 30 -> 62,0 */
	reached0[30] = 1;
	T = trans[ 0][62] = settr(61,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(61,2,33,0,0,"ATOMIC", 1, 2, 0);
	trans[0][33]	= settr(32,2,52,475,0,"((0==EP))", 1, 2, 0);
	T = trans[ 0][52] = settr(51,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(51,0,34,0,0,"sub-sequence", 1, 2, 0);
	trans[0][34]	= settr(33,2,47,476,476,"prio = 0", 1, 2, 0); /* m: 35 -> 0,47 */
	reached0[35] = 1;
	trans[0][35]	= settr(0,0,0,0,0,"top_task = 0",0,0,0);
	trans[0][36]	= settr(0,0,0,0,0,"found = 0",0,0,0);
	trans[0][48]	= settr(47,2,47,1,0,".(goto)", 1, 2, 0);
	T = trans[0][47] = settr(46,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(46,2,37,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(46,2,45,0,0,"DO", 1, 2, 0);
	trans[0][37]	= settr(36,2,43,477,0,"(((prio<4)&&!(found)))", 1, 2, 0);
	T = trans[0][43] = settr(42,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(42,2,38,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(42,2,41,0,0,"IF", 1, 2, 0);
	trans[0][38]	= settr(37,2,47,478,478,"((readyQueue[prio].tailIndex>0))", 1, 2, 0); /* m: 39 -> 47,0 */
	reached0[39] = 1;
	trans[0][39]	= settr(0,0,0,0,0,"top_task = readyQueue[prio].tasks[0]",0,0,0);
	trans[0][40]	= settr(0,0,0,0,0,"found = 1",0,0,0);
	trans[0][44]	= settr(43,2,47,1,0,".(goto)", 1, 2, 0);
	trans[0][41]	= settr(40,2,42,2,0,"else", 1, 2, 0);
	trans[0][42]	= settr(41,2,47,479,479,"prio = (prio+1)", 1, 2, 0);
	trans[0][45]	= settr(44,2,50,2,0,"else", 1, 2, 0);
	trans[0][46]	= settr(45,2,50,1,0,"goto :b1", 1, 2, 0); /* m: 50 -> 0,61 */
	reached0[50] = 1;
	trans[0][49]	= settr(48,2,50,1,0,"break", 1, 2, 0);
	trans[0][50]	= settr(49,2,61,480,480,"tmp = top_task", 1, 2, 0); /* m: 51 -> 0,61 */
	reached0[51] = 1;
	trans[0][51]	= settr(0,0,0,0,0,"topPrio = prio",0,0,0);
	T = trans[ 0][61] = settr(60,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(60,0,59,0,0,"sub-sequence", 1, 2, 0);
	T = trans[0][59] = settr(58,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(58,2,53,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(58,2,58,0,0,"IF", 1, 2, 0);
	trans[0][53]	= settr(52,2,56,481,0,"(((chain_tick_used==0)&&(((pending_exp>>1)&1)==0)))", 1, 2, 0);
	T = trans[ 0][56] = settr(55,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(55,0,54,0,0,"sub-sequence", 1, 2, 0);
	trans[0][54]	= settr(53,4,90,482,482,"assert(((1<2)&&(1<8)))", 1, 2, 0); /* m: 55 -> 0,90 */
	reached0[55] = 1;
	trans[0][55]	= settr(0,0,0,0,0,"pending_exp = (pending_exp|(1<<1))",0,0,0);
	trans[0][57]	= settr(0,0,0,0,0,"chain_tick_used = 1",0,0,0);
	trans[0][60]	= settr(59,0,90,483,483,".(goto)", 1, 2, 0);
	trans[0][58]	= settr(57,4,90,484,484,"(1)", 1, 2, 0); /* m: 60 -> 90,0 */
	reached0[60] = 1;
	T = trans[ 0][90] = settr(89,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(89,2,63,0,0,"ATOMIC", 1, 2, 0);
	trans[0][63]	= settr(62,2,80,485,0,"((0==EP))", 1, 2, 0);
	T = trans[ 0][80] = settr(79,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(79,0,64,0,0,"sub-sequence", 1, 2, 0);
	trans[0][64]	= settr(63,2,70,486,486,"idx = 0", 1, 2, 0);
	trans[0][71]	= settr(70,2,70,1,0,".(goto)", 1, 2, 0);
	T = trans[0][70] = settr(69,2,0,0,0,"DO", 1, 2, 0);
	T = T->nxt	= settr(69,2,65,0,0,"DO", 1, 2, 0);
	    T->nxt	= settr(69,2,68,0,0,"DO", 1, 2, 0);
	trans[0][65]	= settr(64,2,70,487,487,"((idx<(readyQueue[topPrio].tailIndex-1)))", 1, 2, 0); /* m: 66 -> 70,0 */
	reached0[66] = 1;
	trans[0][66]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[idx] = readyQueue[topPrio].tasks[(idx+1)]",0,0,0);
	trans[0][67]	= settr(0,0,0,0,0,"idx = (idx+1)",0,0,0);
	trans[0][68]	= settr(67,2,78,2,0,"else", 1, 2, 0);
	trans[0][69]	= settr(68,2,78,1,0,"goto :b2", 1, 2, 0);
	trans[0][72]	= settr(71,2,78,1,0,"break", 1, 2, 0);
	T = trans[0][78] = settr(77,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(77,2,73,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(77,2,76,0,0,"IF", 1, 2, 0);
	trans[0][73]	= settr(72,2,89,488,488,"((readyQueue[topPrio].tailIndex>0))", 1, 2, 0); /* m: 74 -> 89,0 */
	reached0[74] = 1;
	trans[0][74]	= settr(0,0,0,0,0,"readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)] = 255",0,0,0);
	trans[0][75]	= settr(0,0,0,0,0,"readyQueue[topPrio].tailIndex = (readyQueue[topPrio].tailIndex-1)",0,0,0);
	trans[0][79]	= settr(78,2,89,1,0,".(goto)", 1, 2, 0);
	trans[0][76]	= settr(75,2,77,2,0,"else", 1, 2, 0);
	trans[0][77]	= settr(76,2,89,1,0,"(1)", 1, 2, 0);
	T = trans[ 0][89] = settr(88,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(88,0,87,0,0,"sub-sequence", 1, 2, 0);
	T = trans[0][87] = settr(86,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(86,2,81,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(86,2,86,0,0,"IF", 1, 2, 0);
	trans[0][81]	= settr(80,2,84,489,0,"(((chain_tick_used==0)&&(((pending_exp>>1)&1)==0)))", 1, 2, 0);
	T = trans[ 0][84] = settr(83,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(83,0,82,0,0,"sub-sequence", 1, 2, 0);
	trans[0][82]	= settr(81,4,102,490,490,"assert(((1<2)&&(1<8)))", 1, 2, 0); /* m: 83 -> 0,102 */
	reached0[83] = 1;
	trans[0][83]	= settr(0,0,0,0,0,"pending_exp = (pending_exp|(1<<1))",0,0,0);
	trans[0][85]	= settr(0,0,0,0,0,"chain_tick_used = 1",0,0,0);
	trans[0][88]	= settr(87,0,102,491,491,".(goto)", 1, 2, 0);
	trans[0][86]	= settr(85,4,102,492,492,"(1)", 1, 2, 0); /* m: 88 -> 102,0 */
	reached0[88] = 1;
	T = trans[ 0][102] = settr(101,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(101,2,91,0,0,"ATOMIC", 1, 2, 0);
	trans[0][91]	= settr(90,2,101,493,493,"((0==EP))", 1, 2, 0); /* m: 92 -> 101,0 */
	reached0[92] = 1;
	trans[0][92]	= settr(0,0,0,0,0,"tcb[tmp].state = 4",0,0,0);
	T = trans[ 0][101] = settr(100,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(100,0,99,0,0,"sub-sequence", 1, 2, 0);
	T = trans[0][99] = settr(98,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(98,2,93,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(98,2,98,0,0,"IF", 1, 2, 0);
	trans[0][93]	= settr(92,2,96,494,0,"(((chain_tick_used==0)&&(((pending_exp>>1)&1)==0)))", 1, 2, 0);
	T = trans[ 0][96] = settr(95,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(95,0,94,0,0,"sub-sequence", 1, 2, 0);
	trans[0][94]	= settr(93,4,116,495,495,"assert(((1<2)&&(1<8)))", 1, 2, 0); /* m: 95 -> 0,116 */
	reached0[95] = 1;
	trans[0][95]	= settr(0,0,0,0,0,"pending_exp = (pending_exp|(1<<1))",0,0,0);
	trans[0][97]	= settr(0,0,0,0,0,"chain_tick_used = 1",0,0,0);
	trans[0][100]	= settr(99,0,116,496,496,".(goto)", 1, 2, 0);
	trans[0][98]	= settr(97,4,116,497,497,"(1)", 1, 2, 0); /* m: 100 -> 116,0 */
	reached0[100] = 1;
	T = trans[ 0][116] = settr(115,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(115,2,103,0,0,"ATOMIC", 1, 2, 0);
	trans[0][103]	= settr(102,2,106,498,0,"((0==EP))", 1, 2, 0);
	T = trans[ 0][106] = settr(105,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(105,0,104,0,0,"sub-sequence", 1, 2, 0);
	trans[0][104]	= settr(103,2,115,499,499,"assert((((EP_Stack!=255)&&(EP_Stack>=2))&&(tmp>=2)))", 1, 2, 0); /* m: 105 -> 0,115 */
	reached0[105] = 1;
	trans[0][105]	= settr(0,0,0,0,0,"EP_Stack = tmp",0,0,0);
	T = trans[ 0][115] = settr(114,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(114,0,113,0,0,"sub-sequence", 1, 2, 0);
	T = trans[0][113] = settr(112,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(112,2,107,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(112,2,112,0,0,"IF", 1, 2, 0);
	trans[0][107]	= settr(106,2,110,500,0,"(((chain_tick_used==0)&&(((pending_exp>>1)&1)==0)))", 1, 2, 0);
	T = trans[ 0][110] = settr(109,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(109,0,108,0,0,"sub-sequence", 1, 2, 0);
	trans[0][108]	= settr(107,4,142,501,501,"assert(((1<2)&&(1<8)))", 1, 2, 0); /* m: 109 -> 0,142 */
	reached0[109] = 1;
	trans[0][109]	= settr(0,0,0,0,0,"pending_exp = (pending_exp|(1<<1))",0,0,0);
	trans[0][111]	= settr(0,0,0,0,0,"chain_tick_used = 1",0,0,0);
	trans[0][114]	= settr(113,0,142,502,502,".(goto)", 1, 2, 0);
	trans[0][112]	= settr(111,4,142,503,503,"(1)", 1, 2, 0); /* m: 114 -> 142,0 */
	reached0[114] = 1;
	T = trans[ 0][142] = settr(141,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(141,2,117,0,0,"ATOMIC", 1, 2, 0);
	trans[0][117]	= settr(116,2,132,504,0,"((0==EP))", 1, 2, 0);
	T = trans[ 0][132] = settr(131,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(131,0,130,0,0,"sub-sequence", 1, 2, 0);
	T = trans[0][130] = settr(129,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(129,2,118,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(129,2,125,0,0,"IF", 1, 2, 0);
	trans[0][118]	= settr(117,2,124,505,0,"((pending_exp>0))", 1, 2, 0);
	T = trans[ 0][124] = settr(123,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(123,0,120,0,0,"sub-sequence", 1, 2, 0);
	T = trans[ 0][120] = settr(119,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(119,0,119,0,0,"sub-sequence", 1, 2, 0);
	trans[0][119]	= settr(118,2,141,506,506,"tmp = ( (((pending_exp>>0)&1)) -> (0) : (1) )", 1, 2, 0); /* m: 121 -> 0,141 */
	reached0[121] = 1;
	trans[0][121]	= settr(0,0,0,0,0,"assert((((BASEPRI==0)||(15<BASEPRI))&&(EP_Stack>=2)))",0,0,0);
	trans[0][122]	= settr(0,0,0,0,0,"EP = tmp",0,0,0);
	trans[0][123]	= settr(0,0,0,0,0,"tmp = 255",0,0,0);
	trans[0][131]	= settr(130,2,141,1,0,".(goto)", 1, 2, 0);
	trans[0][125]	= settr(124,2,129,2,0,"else", 1, 2, 0);
	T = trans[ 0][129] = settr(128,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(128,0,126,0,0,"sub-sequence", 1, 2, 0);
	trans[0][126]	= settr(125,2,141,507,507,"assert((EP_Stack!=255))", 1, 2, 0); /* m: 127 -> 0,141 */
	reached0[127] = 1;
	trans[0][127]	= settr(0,0,0,0,0,"EP = EP_Stack",0,0,0);
	trans[0][128]	= settr(0,0,0,0,0,"EP_Stack = 255",0,0,0);
	T = trans[ 0][141] = settr(140,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(140,0,139,0,0,"sub-sequence", 1, 2, 0);
	T = trans[0][139] = settr(138,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(138,2,133,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(138,2,138,0,0,"IF", 1, 2, 0);
	trans[0][133]	= settr(132,2,136,508,0,"(((chain_tick_used==0)&&(((pending_exp>>1)&1)==0)))", 1, 2, 0);
	T = trans[ 0][136] = settr(135,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(135,0,134,0,0,"sub-sequence", 1, 2, 0);
	trans[0][134]	= settr(133,0,143,509,509,"assert(((1<2)&&(1<8)))", 1, 2, 0); /* m: 135 -> 0,143 */
	reached0[135] = 1;
	trans[0][135]	= settr(0,0,0,0,0,"pending_exp = (pending_exp|(1<<1))",0,0,0);
	trans[0][137]	= settr(0,0,0,0,0,"chain_tick_used = 1",0,0,0);
	trans[0][140]	= settr(139,0,143,510,510,".(goto)", 1, 2, 0);
	trans[0][138]	= settr(137,0,143,511,511,"(1)", 1, 2, 0); /* m: 140 -> 143,0 */
	reached0[140] = 1;
	trans[0][145]	= settr(144,0,146,1,0,"break", 0, 2, 0);
	trans[0][146]	= settr(145,0,0,512,512,"-end-", 0, 3500, 0);
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
