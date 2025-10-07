#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* PROC :init: */
	case 3: // STATE 1 - control.pml:71 - [tcb[1].prio = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[2][1] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[1].prio);
		now.tcb[1].prio = 20;
#ifdef VAR_RANGES
		logval("tcb[1].prio", ((int)now.tcb[1].prio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 2 - control.pml:72 - [tcb[1].state = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[2][2] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[1].state);
		now.tcb[1].state = 1;
#ifdef VAR_RANGES
		logval("tcb[1].state", ((int)now.tcb[1].state));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 3 - control.pml:74 - [tcb[2].prio = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[2][3] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[2].prio);
		now.tcb[2].prio = 20;
#ifdef VAR_RANGES
		logval("tcb[2].prio", ((int)now.tcb[2].prio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 4 - control.pml:75 - [tcb[2].state = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[2][4] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[2].state);
		now.tcb[2].state = 1;
#ifdef VAR_RANGES
		logval("tcb[2].state", ((int)now.tcb[2].state));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 5 - control.pml:24 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][5] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)!=1)&&(((int)now.tcb[2].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 6 - control.pml:25 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[2][6] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 7 - control.pml:27 - [((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][7] = 1;
		if (!((((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4))&&((((int)now.tcb[1].state)!=1)&&(((int)now.tcb[1].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 8 - control.pml:28 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[2][8] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 9 - control.pml:30 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][9] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 10 - control.pml:32 - [((tcb[1].prio<tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][10] = 1;
		if (!((((int)now.tcb[1].prio)<((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 11 - control.pml:32 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[2][11] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 12 - control.pml:33 - [((tcb[1].prio>tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][12] = 1;
		if (!((((int)now.tcb[1].prio)>((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 13 - control.pml:33 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[2][13] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 14 - control.pml:34 - [((tcb[1].prio==tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][14] = 1;
		if (!((((int)now.tcb[1].prio)==((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 15 - control.pml:36 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[2][15] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 16 - control.pml:37 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[2][16] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 24 - control.pml:78 - [(run Process1())] (0:0:0 - 9)
		IfNotBlocked
		reached[2][24] = 1;
		if (!(addproc(II, 1, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 25 - control.pml:79 - [(run Process2())] (0:0:0 - 1)
		IfNotBlocked
		reached[2][25] = 1;
		if (!(addproc(II, 1, 1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 26 - control.pml:80 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][26] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Process2 */
	case 22: // STATE 1 - control.pml:64 - [((EP==2))] (23:0:0 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		if (!((((int)now.EP)==2)))
			continue;
		/* merge: printf('Process 2 is running\\n')(0, 2, 23) */
		reached[1][2] = 1;
		Printf("Process 2 is running\n");
		_m = 3; goto P999; /* 1 */
	case 23: // STATE 3 - control.pml:64 - [(1)] (51:0:0 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(51, 24, 51) */
		reached[1][24] = 1;
		;
		/* merge: .(goto)(0, 52, 51) */
		reached[1][52] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 24: // STATE 24 - control.pml:64 - [.(goto)] (0:51:0 - 2)
		IfNotBlocked
		reached[1][24] = 1;
		;
		/* merge: .(goto)(0, 52, 51) */
		reached[1][52] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 25: // STATE 4 - control.pml:24 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))] (51:0:1 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)!=1)&&(((int)now.tcb[2].state)!=4)))))
			continue;
		/* merge: EP = 1(51, 5, 51) */
		reached[1][5] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: .(goto)(51, 21, 51) */
		reached[1][21] = 1;
		;
		/* merge: .(goto)(51, 24, 51) */
		reached[1][24] = 1;
		;
		/* merge: .(goto)(0, 52, 51) */
		reached[1][52] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 26: // STATE 21 - control.pml:41 - [.(goto)] (0:51:0 - 8)
		IfNotBlocked
		reached[1][21] = 1;
		;
		/* merge: .(goto)(51, 24, 51) */
		reached[1][24] = 1;
		;
		/* merge: .(goto)(0, 52, 51) */
		reached[1][52] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 27: // STATE 6 - control.pml:27 - [((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))] (51:0:1 - 1)
		IfNotBlocked
		reached[1][6] = 1;
		if (!((((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4))&&((((int)now.tcb[1].state)!=1)&&(((int)now.tcb[1].state)!=4)))))
			continue;
		/* merge: EP = 2(51, 7, 51) */
		reached[1][7] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: .(goto)(51, 21, 51) */
		reached[1][21] = 1;
		;
		/* merge: .(goto)(51, 24, 51) */
		reached[1][24] = 1;
		;
		/* merge: .(goto)(0, 52, 51) */
		reached[1][52] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 28: // STATE 8 - control.pml:30 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][8] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 9 - control.pml:32 - [((tcb[1].prio<tcb[2].prio))] (51:0:1 - 1)
		IfNotBlocked
		reached[1][9] = 1;
		if (!((((int)now.tcb[1].prio)<((int)now.tcb[2].prio))))
			continue;
		/* merge: EP = 1(51, 10, 51) */
		reached[1][10] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: .(goto)(51, 19, 51) */
		reached[1][19] = 1;
		;
		/* merge: .(goto)(51, 21, 51) */
		reached[1][21] = 1;
		;
		/* merge: .(goto)(51, 24, 51) */
		reached[1][24] = 1;
		;
		/* merge: .(goto)(0, 52, 51) */
		reached[1][52] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 30: // STATE 11 - control.pml:33 - [((tcb[1].prio>tcb[2].prio))] (51:0:1 - 1)
		IfNotBlocked
		reached[1][11] = 1;
		if (!((((int)now.tcb[1].prio)>((int)now.tcb[2].prio))))
			continue;
		/* merge: EP = 2(51, 12, 51) */
		reached[1][12] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: .(goto)(51, 19, 51) */
		reached[1][19] = 1;
		;
		/* merge: .(goto)(51, 21, 51) */
		reached[1][21] = 1;
		;
		/* merge: .(goto)(51, 24, 51) */
		reached[1][24] = 1;
		;
		/* merge: .(goto)(0, 52, 51) */
		reached[1][52] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 31: // STATE 13 - control.pml:34 - [((tcb[1].prio==tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][13] = 1;
		if (!((((int)now.tcb[1].prio)==((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 14 - control.pml:36 - [EP = 1] (0:51:1 - 1)
		IfNotBlocked
		reached[1][14] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: .(goto)(51, 17, 51) */
		reached[1][17] = 1;
		;
		/* merge: .(goto)(51, 19, 51) */
		reached[1][19] = 1;
		;
		/* merge: .(goto)(51, 21, 51) */
		reached[1][21] = 1;
		;
		/* merge: .(goto)(51, 24, 51) */
		reached[1][24] = 1;
		;
		/* merge: .(goto)(0, 52, 51) */
		reached[1][52] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 33: // STATE 15 - control.pml:37 - [EP = 2] (0:51:1 - 1)
		IfNotBlocked
		reached[1][15] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: .(goto)(51, 17, 51) */
		reached[1][17] = 1;
		;
		/* merge: .(goto)(51, 19, 51) */
		reached[1][19] = 1;
		;
		/* merge: .(goto)(51, 21, 51) */
		reached[1][21] = 1;
		;
		/* merge: .(goto)(51, 24, 51) */
		reached[1][24] = 1;
		;
		/* merge: .(goto)(0, 52, 51) */
		reached[1][52] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 34: // STATE 26 - control.pml:65 - [((EP==2))] (48:0:1 - 1)
		IfNotBlocked
		reached[1][26] = 1;
		if (!((((int)now.EP)==2)))
			continue;
		/* merge: EP = 1(0, 27, 48) */
		reached[1][27] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 35: // STATE 28 - control.pml:65 - [(1)] (51:0:0 - 1)
		IfNotBlocked
		reached[1][28] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(51, 49, 51) */
		reached[1][49] = 1;
		;
		/* merge: .(goto)(0, 52, 51) */
		reached[1][52] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 36: // STATE 49 - control.pml:65 - [.(goto)] (0:51:0 - 2)
		IfNotBlocked
		reached[1][49] = 1;
		;
		/* merge: .(goto)(0, 52, 51) */
		reached[1][52] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 37: // STATE 29 - control.pml:24 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))] (51:0:1 - 1)
		IfNotBlocked
		reached[1][29] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)!=1)&&(((int)now.tcb[2].state)!=4)))))
			continue;
		/* merge: EP = 1(51, 30, 51) */
		reached[1][30] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: .(goto)(51, 46, 51) */
		reached[1][46] = 1;
		;
		/* merge: .(goto)(51, 49, 51) */
		reached[1][49] = 1;
		;
		/* merge: .(goto)(0, 52, 51) */
		reached[1][52] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 38: // STATE 46 - control.pml:41 - [.(goto)] (0:51:0 - 8)
		IfNotBlocked
		reached[1][46] = 1;
		;
		/* merge: .(goto)(51, 49, 51) */
		reached[1][49] = 1;
		;
		/* merge: .(goto)(0, 52, 51) */
		reached[1][52] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 39: // STATE 31 - control.pml:27 - [((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))] (51:0:1 - 1)
		IfNotBlocked
		reached[1][31] = 1;
		if (!((((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4))&&((((int)now.tcb[1].state)!=1)&&(((int)now.tcb[1].state)!=4)))))
			continue;
		/* merge: EP = 2(51, 32, 51) */
		reached[1][32] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: .(goto)(51, 46, 51) */
		reached[1][46] = 1;
		;
		/* merge: .(goto)(51, 49, 51) */
		reached[1][49] = 1;
		;
		/* merge: .(goto)(0, 52, 51) */
		reached[1][52] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 40: // STATE 33 - control.pml:30 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][33] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 41: // STATE 34 - control.pml:32 - [((tcb[1].prio<tcb[2].prio))] (51:0:1 - 1)
		IfNotBlocked
		reached[1][34] = 1;
		if (!((((int)now.tcb[1].prio)<((int)now.tcb[2].prio))))
			continue;
		/* merge: EP = 1(51, 35, 51) */
		reached[1][35] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: .(goto)(51, 44, 51) */
		reached[1][44] = 1;
		;
		/* merge: .(goto)(51, 46, 51) */
		reached[1][46] = 1;
		;
		/* merge: .(goto)(51, 49, 51) */
		reached[1][49] = 1;
		;
		/* merge: .(goto)(0, 52, 51) */
		reached[1][52] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 42: // STATE 36 - control.pml:33 - [((tcb[1].prio>tcb[2].prio))] (51:0:1 - 1)
		IfNotBlocked
		reached[1][36] = 1;
		if (!((((int)now.tcb[1].prio)>((int)now.tcb[2].prio))))
			continue;
		/* merge: EP = 2(51, 37, 51) */
		reached[1][37] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: .(goto)(51, 44, 51) */
		reached[1][44] = 1;
		;
		/* merge: .(goto)(51, 46, 51) */
		reached[1][46] = 1;
		;
		/* merge: .(goto)(51, 49, 51) */
		reached[1][49] = 1;
		;
		/* merge: .(goto)(0, 52, 51) */
		reached[1][52] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 43: // STATE 38 - control.pml:34 - [((tcb[1].prio==tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][38] = 1;
		if (!((((int)now.tcb[1].prio)==((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 44: // STATE 39 - control.pml:36 - [EP = 1] (0:51:1 - 1)
		IfNotBlocked
		reached[1][39] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: .(goto)(51, 42, 51) */
		reached[1][42] = 1;
		;
		/* merge: .(goto)(51, 44, 51) */
		reached[1][44] = 1;
		;
		/* merge: .(goto)(51, 46, 51) */
		reached[1][46] = 1;
		;
		/* merge: .(goto)(51, 49, 51) */
		reached[1][49] = 1;
		;
		/* merge: .(goto)(0, 52, 51) */
		reached[1][52] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 45: // STATE 40 - control.pml:37 - [EP = 2] (0:51:1 - 1)
		IfNotBlocked
		reached[1][40] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: .(goto)(51, 42, 51) */
		reached[1][42] = 1;
		;
		/* merge: .(goto)(51, 44, 51) */
		reached[1][44] = 1;
		;
		/* merge: .(goto)(51, 46, 51) */
		reached[1][46] = 1;
		;
		/* merge: .(goto)(51, 49, 51) */
		reached[1][49] = 1;
		;
		/* merge: .(goto)(0, 52, 51) */
		reached[1][52] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 46: // STATE 54 - control.pml:67 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][54] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Process1 */
	case 47: // STATE 1 - control.pml:56 - [((EP==1))] (23:0:0 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		if (!((((int)now.EP)==1)))
			continue;
		/* merge: printf('Process 1 is running\\n')(0, 2, 23) */
		reached[0][2] = 1;
		Printf("Process 1 is running\n");
		_m = 3; goto P999; /* 1 */
	case 48: // STATE 3 - control.pml:56 - [(1)] (76:0:0 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(76, 24, 76) */
		reached[0][24] = 1;
		;
		/* merge: .(goto)(0, 77, 76) */
		reached[0][77] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 49: // STATE 24 - control.pml:56 - [.(goto)] (0:76:0 - 2)
		IfNotBlocked
		reached[0][24] = 1;
		;
		/* merge: .(goto)(0, 77, 76) */
		reached[0][77] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 50: // STATE 4 - control.pml:24 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))] (76:0:1 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)!=1)&&(((int)now.tcb[2].state)!=4)))))
			continue;
		/* merge: EP = 1(76, 5, 76) */
		reached[0][5] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: .(goto)(76, 21, 76) */
		reached[0][21] = 1;
		;
		/* merge: .(goto)(76, 24, 76) */
		reached[0][24] = 1;
		;
		/* merge: .(goto)(0, 77, 76) */
		reached[0][77] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 51: // STATE 21 - control.pml:41 - [.(goto)] (0:76:0 - 8)
		IfNotBlocked
		reached[0][21] = 1;
		;
		/* merge: .(goto)(76, 24, 76) */
		reached[0][24] = 1;
		;
		/* merge: .(goto)(0, 77, 76) */
		reached[0][77] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 52: // STATE 6 - control.pml:27 - [((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))] (76:0:1 - 1)
		IfNotBlocked
		reached[0][6] = 1;
		if (!((((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4))&&((((int)now.tcb[1].state)!=1)&&(((int)now.tcb[1].state)!=4)))))
			continue;
		/* merge: EP = 2(76, 7, 76) */
		reached[0][7] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: .(goto)(76, 21, 76) */
		reached[0][21] = 1;
		;
		/* merge: .(goto)(76, 24, 76) */
		reached[0][24] = 1;
		;
		/* merge: .(goto)(0, 77, 76) */
		reached[0][77] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 53: // STATE 8 - control.pml:30 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][8] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 54: // STATE 9 - control.pml:32 - [((tcb[1].prio<tcb[2].prio))] (76:0:1 - 1)
		IfNotBlocked
		reached[0][9] = 1;
		if (!((((int)now.tcb[1].prio)<((int)now.tcb[2].prio))))
			continue;
		/* merge: EP = 1(76, 10, 76) */
		reached[0][10] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: .(goto)(76, 19, 76) */
		reached[0][19] = 1;
		;
		/* merge: .(goto)(76, 21, 76) */
		reached[0][21] = 1;
		;
		/* merge: .(goto)(76, 24, 76) */
		reached[0][24] = 1;
		;
		/* merge: .(goto)(0, 77, 76) */
		reached[0][77] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 55: // STATE 11 - control.pml:33 - [((tcb[1].prio>tcb[2].prio))] (76:0:1 - 1)
		IfNotBlocked
		reached[0][11] = 1;
		if (!((((int)now.tcb[1].prio)>((int)now.tcb[2].prio))))
			continue;
		/* merge: EP = 2(76, 12, 76) */
		reached[0][12] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: .(goto)(76, 19, 76) */
		reached[0][19] = 1;
		;
		/* merge: .(goto)(76, 21, 76) */
		reached[0][21] = 1;
		;
		/* merge: .(goto)(76, 24, 76) */
		reached[0][24] = 1;
		;
		/* merge: .(goto)(0, 77, 76) */
		reached[0][77] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 56: // STATE 13 - control.pml:34 - [((tcb[1].prio==tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][13] = 1;
		if (!((((int)now.tcb[1].prio)==((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 57: // STATE 14 - control.pml:36 - [EP = 1] (0:76:1 - 1)
		IfNotBlocked
		reached[0][14] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: .(goto)(76, 17, 76) */
		reached[0][17] = 1;
		;
		/* merge: .(goto)(76, 19, 76) */
		reached[0][19] = 1;
		;
		/* merge: .(goto)(76, 21, 76) */
		reached[0][21] = 1;
		;
		/* merge: .(goto)(76, 24, 76) */
		reached[0][24] = 1;
		;
		/* merge: .(goto)(0, 77, 76) */
		reached[0][77] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 58: // STATE 15 - control.pml:37 - [EP = 2] (0:76:1 - 1)
		IfNotBlocked
		reached[0][15] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: .(goto)(76, 17, 76) */
		reached[0][17] = 1;
		;
		/* merge: .(goto)(76, 19, 76) */
		reached[0][19] = 1;
		;
		/* merge: .(goto)(76, 21, 76) */
		reached[0][21] = 1;
		;
		/* merge: .(goto)(76, 24, 76) */
		reached[0][24] = 1;
		;
		/* merge: .(goto)(0, 77, 76) */
		reached[0][77] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 59: // STATE 26 - control.pml:57 - [((EP==1))] (48:0:0 - 1)
		IfNotBlocked
		reached[0][26] = 1;
		if (!((((int)now.EP)==1)))
			continue;
		/* merge: assert((EP==1))(0, 27, 48) */
		reached[0][27] = 1;
		spin_assert((((int)now.EP)==1), "(EP==1)", II, tt, t);
		_m = 3; goto P999; /* 1 */
	case 60: // STATE 28 - control.pml:57 - [(1)] (76:0:0 - 1)
		IfNotBlocked
		reached[0][28] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(76, 49, 76) */
		reached[0][49] = 1;
		;
		/* merge: .(goto)(0, 77, 76) */
		reached[0][77] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 61: // STATE 49 - control.pml:57 - [.(goto)] (0:76:0 - 2)
		IfNotBlocked
		reached[0][49] = 1;
		;
		/* merge: .(goto)(0, 77, 76) */
		reached[0][77] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 62: // STATE 29 - control.pml:24 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))] (76:0:1 - 1)
		IfNotBlocked
		reached[0][29] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)!=1)&&(((int)now.tcb[2].state)!=4)))))
			continue;
		/* merge: EP = 1(76, 30, 76) */
		reached[0][30] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: .(goto)(76, 46, 76) */
		reached[0][46] = 1;
		;
		/* merge: .(goto)(76, 49, 76) */
		reached[0][49] = 1;
		;
		/* merge: .(goto)(0, 77, 76) */
		reached[0][77] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 63: // STATE 46 - control.pml:41 - [.(goto)] (0:76:0 - 8)
		IfNotBlocked
		reached[0][46] = 1;
		;
		/* merge: .(goto)(76, 49, 76) */
		reached[0][49] = 1;
		;
		/* merge: .(goto)(0, 77, 76) */
		reached[0][77] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 64: // STATE 31 - control.pml:27 - [((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))] (76:0:1 - 1)
		IfNotBlocked
		reached[0][31] = 1;
		if (!((((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4))&&((((int)now.tcb[1].state)!=1)&&(((int)now.tcb[1].state)!=4)))))
			continue;
		/* merge: EP = 2(76, 32, 76) */
		reached[0][32] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: .(goto)(76, 46, 76) */
		reached[0][46] = 1;
		;
		/* merge: .(goto)(76, 49, 76) */
		reached[0][49] = 1;
		;
		/* merge: .(goto)(0, 77, 76) */
		reached[0][77] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 65: // STATE 33 - control.pml:30 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][33] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 66: // STATE 34 - control.pml:32 - [((tcb[1].prio<tcb[2].prio))] (76:0:1 - 1)
		IfNotBlocked
		reached[0][34] = 1;
		if (!((((int)now.tcb[1].prio)<((int)now.tcb[2].prio))))
			continue;
		/* merge: EP = 1(76, 35, 76) */
		reached[0][35] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: .(goto)(76, 44, 76) */
		reached[0][44] = 1;
		;
		/* merge: .(goto)(76, 46, 76) */
		reached[0][46] = 1;
		;
		/* merge: .(goto)(76, 49, 76) */
		reached[0][49] = 1;
		;
		/* merge: .(goto)(0, 77, 76) */
		reached[0][77] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 67: // STATE 36 - control.pml:33 - [((tcb[1].prio>tcb[2].prio))] (76:0:1 - 1)
		IfNotBlocked
		reached[0][36] = 1;
		if (!((((int)now.tcb[1].prio)>((int)now.tcb[2].prio))))
			continue;
		/* merge: EP = 2(76, 37, 76) */
		reached[0][37] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: .(goto)(76, 44, 76) */
		reached[0][44] = 1;
		;
		/* merge: .(goto)(76, 46, 76) */
		reached[0][46] = 1;
		;
		/* merge: .(goto)(76, 49, 76) */
		reached[0][49] = 1;
		;
		/* merge: .(goto)(0, 77, 76) */
		reached[0][77] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 68: // STATE 38 - control.pml:34 - [((tcb[1].prio==tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][38] = 1;
		if (!((((int)now.tcb[1].prio)==((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 69: // STATE 39 - control.pml:36 - [EP = 1] (0:76:1 - 1)
		IfNotBlocked
		reached[0][39] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: .(goto)(76, 42, 76) */
		reached[0][42] = 1;
		;
		/* merge: .(goto)(76, 44, 76) */
		reached[0][44] = 1;
		;
		/* merge: .(goto)(76, 46, 76) */
		reached[0][46] = 1;
		;
		/* merge: .(goto)(76, 49, 76) */
		reached[0][49] = 1;
		;
		/* merge: .(goto)(0, 77, 76) */
		reached[0][77] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 70: // STATE 40 - control.pml:37 - [EP = 2] (0:76:1 - 1)
		IfNotBlocked
		reached[0][40] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: .(goto)(76, 42, 76) */
		reached[0][42] = 1;
		;
		/* merge: .(goto)(76, 44, 76) */
		reached[0][44] = 1;
		;
		/* merge: .(goto)(76, 46, 76) */
		reached[0][46] = 1;
		;
		/* merge: .(goto)(76, 49, 76) */
		reached[0][49] = 1;
		;
		/* merge: .(goto)(0, 77, 76) */
		reached[0][77] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 71: // STATE 51 - control.pml:58 - [((EP==1))] (73:0:1 - 1)
		IfNotBlocked
		reached[0][51] = 1;
		if (!((((int)now.EP)==1)))
			continue;
		/* merge: EP = 2(0, 52, 73) */
		reached[0][52] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 72: // STATE 53 - control.pml:58 - [(1)] (76:0:0 - 1)
		IfNotBlocked
		reached[0][53] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(76, 74, 76) */
		reached[0][74] = 1;
		;
		/* merge: .(goto)(0, 77, 76) */
		reached[0][77] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 73: // STATE 74 - control.pml:58 - [.(goto)] (0:76:0 - 2)
		IfNotBlocked
		reached[0][74] = 1;
		;
		/* merge: .(goto)(0, 77, 76) */
		reached[0][77] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 74: // STATE 54 - control.pml:24 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))] (76:0:1 - 1)
		IfNotBlocked
		reached[0][54] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)!=1)&&(((int)now.tcb[2].state)!=4)))))
			continue;
		/* merge: EP = 1(76, 55, 76) */
		reached[0][55] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: .(goto)(76, 71, 76) */
		reached[0][71] = 1;
		;
		/* merge: .(goto)(76, 74, 76) */
		reached[0][74] = 1;
		;
		/* merge: .(goto)(0, 77, 76) */
		reached[0][77] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 75: // STATE 71 - control.pml:41 - [.(goto)] (0:76:0 - 8)
		IfNotBlocked
		reached[0][71] = 1;
		;
		/* merge: .(goto)(76, 74, 76) */
		reached[0][74] = 1;
		;
		/* merge: .(goto)(0, 77, 76) */
		reached[0][77] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 76: // STATE 56 - control.pml:27 - [((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))] (76:0:1 - 1)
		IfNotBlocked
		reached[0][56] = 1;
		if (!((((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4))&&((((int)now.tcb[1].state)!=1)&&(((int)now.tcb[1].state)!=4)))))
			continue;
		/* merge: EP = 2(76, 57, 76) */
		reached[0][57] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: .(goto)(76, 71, 76) */
		reached[0][71] = 1;
		;
		/* merge: .(goto)(76, 74, 76) */
		reached[0][74] = 1;
		;
		/* merge: .(goto)(0, 77, 76) */
		reached[0][77] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 77: // STATE 58 - control.pml:30 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][58] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 78: // STATE 59 - control.pml:32 - [((tcb[1].prio<tcb[2].prio))] (76:0:1 - 1)
		IfNotBlocked
		reached[0][59] = 1;
		if (!((((int)now.tcb[1].prio)<((int)now.tcb[2].prio))))
			continue;
		/* merge: EP = 1(76, 60, 76) */
		reached[0][60] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: .(goto)(76, 69, 76) */
		reached[0][69] = 1;
		;
		/* merge: .(goto)(76, 71, 76) */
		reached[0][71] = 1;
		;
		/* merge: .(goto)(76, 74, 76) */
		reached[0][74] = 1;
		;
		/* merge: .(goto)(0, 77, 76) */
		reached[0][77] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 79: // STATE 61 - control.pml:33 - [((tcb[1].prio>tcb[2].prio))] (76:0:1 - 1)
		IfNotBlocked
		reached[0][61] = 1;
		if (!((((int)now.tcb[1].prio)>((int)now.tcb[2].prio))))
			continue;
		/* merge: EP = 2(76, 62, 76) */
		reached[0][62] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: .(goto)(76, 69, 76) */
		reached[0][69] = 1;
		;
		/* merge: .(goto)(76, 71, 76) */
		reached[0][71] = 1;
		;
		/* merge: .(goto)(76, 74, 76) */
		reached[0][74] = 1;
		;
		/* merge: .(goto)(0, 77, 76) */
		reached[0][77] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 80: // STATE 63 - control.pml:34 - [((tcb[1].prio==tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][63] = 1;
		if (!((((int)now.tcb[1].prio)==((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 81: // STATE 64 - control.pml:36 - [EP = 1] (0:76:1 - 1)
		IfNotBlocked
		reached[0][64] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: .(goto)(76, 67, 76) */
		reached[0][67] = 1;
		;
		/* merge: .(goto)(76, 69, 76) */
		reached[0][69] = 1;
		;
		/* merge: .(goto)(76, 71, 76) */
		reached[0][71] = 1;
		;
		/* merge: .(goto)(76, 74, 76) */
		reached[0][74] = 1;
		;
		/* merge: .(goto)(0, 77, 76) */
		reached[0][77] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 82: // STATE 65 - control.pml:37 - [EP = 2] (0:76:1 - 1)
		IfNotBlocked
		reached[0][65] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: .(goto)(76, 67, 76) */
		reached[0][67] = 1;
		;
		/* merge: .(goto)(76, 69, 76) */
		reached[0][69] = 1;
		;
		/* merge: .(goto)(76, 71, 76) */
		reached[0][71] = 1;
		;
		/* merge: .(goto)(76, 74, 76) */
		reached[0][74] = 1;
		;
		/* merge: .(goto)(0, 77, 76) */
		reached[0][77] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 83: // STATE 79 - control.pml:60 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][79] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

