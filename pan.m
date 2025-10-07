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
	case 3: // STATE 1 - control.pml:80 - [tcb[1].prio = 10] (0:0:1 - 1)
		IfNotBlocked
		reached[2][1] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[1].prio);
		now.tcb[1].prio = 10;
#ifdef VAR_RANGES
		logval("tcb[1].prio", ((int)now.tcb[1].prio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 2 - control.pml:81 - [tcb[1].state = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[2][2] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[1].state);
		now.tcb[1].state = 1;
#ifdef VAR_RANGES
		logval("tcb[1].state", ((int)now.tcb[1].state));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 3 - control.pml:83 - [tcb[2].prio = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[2][3] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[2].prio);
		now.tcb[2].prio = 20;
#ifdef VAR_RANGES
		logval("tcb[2].prio", ((int)now.tcb[2].prio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 4 - control.pml:84 - [tcb[2].state = 1] (0:0:1 - 1)
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
	case 19: // STATE 24 - control.pml:87 - [(run Process1())] (0:0:0 - 9)
		IfNotBlocked
		reached[2][24] = 1;
		if (!(addproc(II, 1, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 25 - control.pml:88 - [(run Process2())] (0:0:0 - 1)
		IfNotBlocked
		reached[2][25] = 1;
		if (!(addproc(II, 1, 1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 26 - control.pml:89 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][26] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Process2 */
	case 22: // STATE 1 - control.pml:73 - [((EP==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		if (!((((int)now.EP)==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 2 - control.pml:73 - [printf('Process 2 is running\\n')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		Printf("Process 2 is running\n");
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 4 - control.pml:73 - [tcb[1].prio = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[1].prio);
		now.tcb[1].prio = 0;
#ifdef VAR_RANGES
		logval("tcb[1].prio", ((int)now.tcb[1].prio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 5 - control.pml:24 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][5] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)!=1)&&(((int)now.tcb[2].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 6 - control.pml:25 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][6] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 7 - control.pml:27 - [((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][7] = 1;
		if (!((((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4))&&((((int)now.tcb[1].state)!=1)&&(((int)now.tcb[1].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 28: // STATE 8 - control.pml:28 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[1][8] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 9 - control.pml:30 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][9] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 30: // STATE 10 - control.pml:32 - [((tcb[1].prio<tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][10] = 1;
		if (!((((int)now.tcb[1].prio)<((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 11 - control.pml:32 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][11] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 12 - control.pml:33 - [((tcb[1].prio>tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][12] = 1;
		if (!((((int)now.tcb[1].prio)>((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 33: // STATE 13 - control.pml:33 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[1][13] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 14 - control.pml:34 - [((tcb[1].prio==tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][14] = 1;
		if (!((((int)now.tcb[1].prio)==((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 15 - control.pml:36 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][15] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 36: // STATE 16 - control.pml:37 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[1][16] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 37: // STATE 24 - control.pml:73 - [tcb[1].prio = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[1][24] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[1].prio);
		now.tcb[1].prio = 15;
#ifdef VAR_RANGES
		logval("tcb[1].prio", ((int)now.tcb[1].prio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 38: // STATE 25 - control.pml:24 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][25] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)!=1)&&(((int)now.tcb[2].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 39: // STATE 26 - control.pml:25 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][26] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 40: // STATE 27 - control.pml:27 - [((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][27] = 1;
		if (!((((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4))&&((((int)now.tcb[1].state)!=1)&&(((int)now.tcb[1].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 41: // STATE 28 - control.pml:28 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[1][28] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 42: // STATE 29 - control.pml:30 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][29] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 43: // STATE 30 - control.pml:32 - [((tcb[1].prio<tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][30] = 1;
		if (!((((int)now.tcb[1].prio)<((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 44: // STATE 31 - control.pml:32 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][31] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 45: // STATE 32 - control.pml:33 - [((tcb[1].prio>tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][32] = 1;
		if (!((((int)now.tcb[1].prio)>((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 46: // STATE 33 - control.pml:33 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[1][33] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 47: // STATE 34 - control.pml:34 - [((tcb[1].prio==tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][34] = 1;
		if (!((((int)now.tcb[1].prio)==((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 48: // STATE 35 - control.pml:36 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][35] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 49: // STATE 36 - control.pml:37 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[1][36] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 50: // STATE 44 - control.pml:73 - [tcb[1].prio = 31] (0:0:1 - 1)
		IfNotBlocked
		reached[1][44] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[1].prio);
		now.tcb[1].prio = 31;
#ifdef VAR_RANGES
		logval("tcb[1].prio", ((int)now.tcb[1].prio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 51: // STATE 45 - control.pml:24 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][45] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)!=1)&&(((int)now.tcb[2].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 52: // STATE 46 - control.pml:25 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][46] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 53: // STATE 47 - control.pml:27 - [((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][47] = 1;
		if (!((((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4))&&((((int)now.tcb[1].state)!=1)&&(((int)now.tcb[1].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 54: // STATE 48 - control.pml:28 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[1][48] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 55: // STATE 49 - control.pml:30 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][49] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 56: // STATE 50 - control.pml:32 - [((tcb[1].prio<tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][50] = 1;
		if (!((((int)now.tcb[1].prio)<((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 57: // STATE 51 - control.pml:32 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][51] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 58: // STATE 52 - control.pml:33 - [((tcb[1].prio>tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][52] = 1;
		if (!((((int)now.tcb[1].prio)>((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 59: // STATE 53 - control.pml:33 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[1][53] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 60: // STATE 54 - control.pml:34 - [((tcb[1].prio==tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][54] = 1;
		if (!((((int)now.tcb[1].prio)==((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 61: // STATE 55 - control.pml:36 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][55] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 62: // STATE 56 - control.pml:37 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[1][56] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 63: // STATE 64 - control.pml:73 - [tcb[2].prio = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][64] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[2].prio);
		now.tcb[2].prio = 0;
#ifdef VAR_RANGES
		logval("tcb[2].prio", ((int)now.tcb[2].prio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 64: // STATE 65 - control.pml:24 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][65] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)!=1)&&(((int)now.tcb[2].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 65: // STATE 66 - control.pml:25 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][66] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 66: // STATE 67 - control.pml:27 - [((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][67] = 1;
		if (!((((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4))&&((((int)now.tcb[1].state)!=1)&&(((int)now.tcb[1].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 67: // STATE 68 - control.pml:28 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[1][68] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 68: // STATE 69 - control.pml:30 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][69] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 69: // STATE 70 - control.pml:32 - [((tcb[1].prio<tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][70] = 1;
		if (!((((int)now.tcb[1].prio)<((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 70: // STATE 71 - control.pml:32 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][71] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 71: // STATE 72 - control.pml:33 - [((tcb[1].prio>tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][72] = 1;
		if (!((((int)now.tcb[1].prio)>((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 72: // STATE 73 - control.pml:33 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[1][73] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 73: // STATE 74 - control.pml:34 - [((tcb[1].prio==tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][74] = 1;
		if (!((((int)now.tcb[1].prio)==((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 74: // STATE 75 - control.pml:36 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][75] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 75: // STATE 76 - control.pml:37 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[1][76] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 76: // STATE 84 - control.pml:73 - [tcb[2].prio = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[1][84] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[2].prio);
		now.tcb[2].prio = 15;
#ifdef VAR_RANGES
		logval("tcb[2].prio", ((int)now.tcb[2].prio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 77: // STATE 85 - control.pml:24 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][85] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)!=1)&&(((int)now.tcb[2].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 78: // STATE 86 - control.pml:25 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][86] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 79: // STATE 87 - control.pml:27 - [((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][87] = 1;
		if (!((((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4))&&((((int)now.tcb[1].state)!=1)&&(((int)now.tcb[1].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 80: // STATE 88 - control.pml:28 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[1][88] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 81: // STATE 89 - control.pml:30 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][89] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 82: // STATE 90 - control.pml:32 - [((tcb[1].prio<tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][90] = 1;
		if (!((((int)now.tcb[1].prio)<((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 83: // STATE 91 - control.pml:32 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][91] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 84: // STATE 92 - control.pml:33 - [((tcb[1].prio>tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][92] = 1;
		if (!((((int)now.tcb[1].prio)>((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 85: // STATE 93 - control.pml:33 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[1][93] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 86: // STATE 94 - control.pml:34 - [((tcb[1].prio==tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][94] = 1;
		if (!((((int)now.tcb[1].prio)==((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 87: // STATE 95 - control.pml:36 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][95] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 88: // STATE 96 - control.pml:37 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[1][96] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 89: // STATE 104 - control.pml:73 - [tcb[2].prio = 31] (0:0:1 - 1)
		IfNotBlocked
		reached[1][104] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[2].prio);
		now.tcb[2].prio = 31;
#ifdef VAR_RANGES
		logval("tcb[2].prio", ((int)now.tcb[2].prio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 90: // STATE 105 - control.pml:24 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][105] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)!=1)&&(((int)now.tcb[2].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 91: // STATE 106 - control.pml:25 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][106] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 92: // STATE 107 - control.pml:27 - [((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][107] = 1;
		if (!((((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4))&&((((int)now.tcb[1].state)!=1)&&(((int)now.tcb[1].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 93: // STATE 108 - control.pml:28 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[1][108] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 94: // STATE 109 - control.pml:30 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][109] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 95: // STATE 110 - control.pml:32 - [((tcb[1].prio<tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][110] = 1;
		if (!((((int)now.tcb[1].prio)<((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 96: // STATE 111 - control.pml:32 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][111] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 97: // STATE 112 - control.pml:33 - [((tcb[1].prio>tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][112] = 1;
		if (!((((int)now.tcb[1].prio)>((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 98: // STATE 113 - control.pml:33 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[1][113] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 99: // STATE 114 - control.pml:34 - [((tcb[1].prio==tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][114] = 1;
		if (!((((int)now.tcb[1].prio)==((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 100: // STATE 115 - control.pml:36 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][115] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 101: // STATE 116 - control.pml:37 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[1][116] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 102: // STATE 124 - control.pml:73 - [tcb[1].state = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][124] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[1].state);
		now.tcb[1].state = 1;
#ifdef VAR_RANGES
		logval("tcb[1].state", ((int)now.tcb[1].state));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 103: // STATE 125 - control.pml:24 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][125] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)!=1)&&(((int)now.tcb[2].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 104: // STATE 126 - control.pml:25 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][126] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 105: // STATE 127 - control.pml:27 - [((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][127] = 1;
		if (!((((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4))&&((((int)now.tcb[1].state)!=1)&&(((int)now.tcb[1].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 106: // STATE 128 - control.pml:28 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[1][128] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 107: // STATE 129 - control.pml:30 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][129] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 108: // STATE 130 - control.pml:32 - [((tcb[1].prio<tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][130] = 1;
		if (!((((int)now.tcb[1].prio)<((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 109: // STATE 131 - control.pml:32 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][131] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 110: // STATE 132 - control.pml:33 - [((tcb[1].prio>tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][132] = 1;
		if (!((((int)now.tcb[1].prio)>((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 111: // STATE 133 - control.pml:33 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[1][133] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 112: // STATE 134 - control.pml:34 - [((tcb[1].prio==tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][134] = 1;
		if (!((((int)now.tcb[1].prio)==((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 113: // STATE 135 - control.pml:36 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][135] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 114: // STATE 136 - control.pml:37 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[1][136] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 115: // STATE 144 - control.pml:73 - [tcb[1].state = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[1][144] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[1].state);
		now.tcb[1].state = 3;
#ifdef VAR_RANGES
		logval("tcb[1].state", ((int)now.tcb[1].state));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 116: // STATE 145 - control.pml:24 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][145] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)!=1)&&(((int)now.tcb[2].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 117: // STATE 146 - control.pml:25 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][146] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 118: // STATE 147 - control.pml:27 - [((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][147] = 1;
		if (!((((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4))&&((((int)now.tcb[1].state)!=1)&&(((int)now.tcb[1].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 119: // STATE 148 - control.pml:28 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[1][148] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 120: // STATE 149 - control.pml:30 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][149] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 121: // STATE 150 - control.pml:32 - [((tcb[1].prio<tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][150] = 1;
		if (!((((int)now.tcb[1].prio)<((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 122: // STATE 151 - control.pml:32 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][151] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 123: // STATE 152 - control.pml:33 - [((tcb[1].prio>tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][152] = 1;
		if (!((((int)now.tcb[1].prio)>((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 124: // STATE 153 - control.pml:33 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[1][153] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 125: // STATE 154 - control.pml:34 - [((tcb[1].prio==tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][154] = 1;
		if (!((((int)now.tcb[1].prio)==((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 126: // STATE 155 - control.pml:36 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][155] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 127: // STATE 156 - control.pml:37 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[1][156] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 128: // STATE 164 - control.pml:73 - [tcb[2].state = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][164] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[2].state);
		now.tcb[2].state = 1;
#ifdef VAR_RANGES
		logval("tcb[2].state", ((int)now.tcb[2].state));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 129: // STATE 165 - control.pml:24 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][165] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)!=1)&&(((int)now.tcb[2].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 130: // STATE 166 - control.pml:25 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][166] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 131: // STATE 167 - control.pml:27 - [((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][167] = 1;
		if (!((((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4))&&((((int)now.tcb[1].state)!=1)&&(((int)now.tcb[1].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 132: // STATE 168 - control.pml:28 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[1][168] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 133: // STATE 169 - control.pml:30 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][169] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 134: // STATE 170 - control.pml:32 - [((tcb[1].prio<tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][170] = 1;
		if (!((((int)now.tcb[1].prio)<((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 135: // STATE 171 - control.pml:32 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][171] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 136: // STATE 172 - control.pml:33 - [((tcb[1].prio>tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][172] = 1;
		if (!((((int)now.tcb[1].prio)>((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 137: // STATE 173 - control.pml:33 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[1][173] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 138: // STATE 174 - control.pml:34 - [((tcb[1].prio==tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][174] = 1;
		if (!((((int)now.tcb[1].prio)==((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 139: // STATE 175 - control.pml:36 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][175] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 140: // STATE 176 - control.pml:37 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[1][176] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 141: // STATE 184 - control.pml:73 - [tcb[2].state = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[1][184] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[2].state);
		now.tcb[2].state = 3;
#ifdef VAR_RANGES
		logval("tcb[2].state", ((int)now.tcb[2].state));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 142: // STATE 185 - control.pml:24 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][185] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)!=1)&&(((int)now.tcb[2].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 143: // STATE 186 - control.pml:25 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][186] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 144: // STATE 187 - control.pml:27 - [((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][187] = 1;
		if (!((((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4))&&((((int)now.tcb[1].state)!=1)&&(((int)now.tcb[1].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 145: // STATE 188 - control.pml:28 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[1][188] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 146: // STATE 189 - control.pml:30 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][189] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 147: // STATE 190 - control.pml:32 - [((tcb[1].prio<tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][190] = 1;
		if (!((((int)now.tcb[1].prio)<((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 148: // STATE 191 - control.pml:32 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][191] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 149: // STATE 192 - control.pml:33 - [((tcb[1].prio>tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][192] = 1;
		if (!((((int)now.tcb[1].prio)>((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 150: // STATE 193 - control.pml:33 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[1][193] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 151: // STATE 194 - control.pml:34 - [((tcb[1].prio==tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][194] = 1;
		if (!((((int)now.tcb[1].prio)==((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 152: // STATE 195 - control.pml:36 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][195] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 153: // STATE 196 - control.pml:37 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[1][196] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 154: // STATE 206 - control.pml:74 - [((EP==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][206] = 1;
		if (!((((int)now.EP)==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 155: // STATE 207 - control.pml:74 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][207] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 156: // STATE 209 - control.pml:74 - [tcb[1].prio = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][209] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[1].prio);
		now.tcb[1].prio = 0;
#ifdef VAR_RANGES
		logval("tcb[1].prio", ((int)now.tcb[1].prio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 157: // STATE 210 - control.pml:24 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][210] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)!=1)&&(((int)now.tcb[2].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 158: // STATE 211 - control.pml:25 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][211] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 159: // STATE 212 - control.pml:27 - [((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][212] = 1;
		if (!((((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4))&&((((int)now.tcb[1].state)!=1)&&(((int)now.tcb[1].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 160: // STATE 213 - control.pml:28 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[1][213] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 161: // STATE 214 - control.pml:30 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][214] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 162: // STATE 215 - control.pml:32 - [((tcb[1].prio<tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][215] = 1;
		if (!((((int)now.tcb[1].prio)<((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 163: // STATE 216 - control.pml:32 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][216] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 164: // STATE 217 - control.pml:33 - [((tcb[1].prio>tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][217] = 1;
		if (!((((int)now.tcb[1].prio)>((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 165: // STATE 218 - control.pml:33 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[1][218] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 166: // STATE 219 - control.pml:34 - [((tcb[1].prio==tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][219] = 1;
		if (!((((int)now.tcb[1].prio)==((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 167: // STATE 220 - control.pml:36 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][220] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 168: // STATE 221 - control.pml:37 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[1][221] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 169: // STATE 229 - control.pml:74 - [tcb[1].prio = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[1][229] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[1].prio);
		now.tcb[1].prio = 15;
#ifdef VAR_RANGES
		logval("tcb[1].prio", ((int)now.tcb[1].prio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 170: // STATE 230 - control.pml:24 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][230] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)!=1)&&(((int)now.tcb[2].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 171: // STATE 231 - control.pml:25 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][231] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 172: // STATE 232 - control.pml:27 - [((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][232] = 1;
		if (!((((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4))&&((((int)now.tcb[1].state)!=1)&&(((int)now.tcb[1].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 173: // STATE 233 - control.pml:28 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[1][233] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 174: // STATE 234 - control.pml:30 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][234] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 175: // STATE 235 - control.pml:32 - [((tcb[1].prio<tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][235] = 1;
		if (!((((int)now.tcb[1].prio)<((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 176: // STATE 236 - control.pml:32 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][236] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 177: // STATE 237 - control.pml:33 - [((tcb[1].prio>tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][237] = 1;
		if (!((((int)now.tcb[1].prio)>((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 178: // STATE 238 - control.pml:33 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[1][238] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 179: // STATE 239 - control.pml:34 - [((tcb[1].prio==tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][239] = 1;
		if (!((((int)now.tcb[1].prio)==((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 180: // STATE 240 - control.pml:36 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][240] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 181: // STATE 241 - control.pml:37 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[1][241] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 182: // STATE 249 - control.pml:74 - [tcb[1].prio = 31] (0:0:1 - 1)
		IfNotBlocked
		reached[1][249] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[1].prio);
		now.tcb[1].prio = 31;
#ifdef VAR_RANGES
		logval("tcb[1].prio", ((int)now.tcb[1].prio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 183: // STATE 250 - control.pml:24 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][250] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)!=1)&&(((int)now.tcb[2].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 184: // STATE 251 - control.pml:25 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][251] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 185: // STATE 252 - control.pml:27 - [((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][252] = 1;
		if (!((((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4))&&((((int)now.tcb[1].state)!=1)&&(((int)now.tcb[1].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 186: // STATE 253 - control.pml:28 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[1][253] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 187: // STATE 254 - control.pml:30 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][254] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 188: // STATE 255 - control.pml:32 - [((tcb[1].prio<tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][255] = 1;
		if (!((((int)now.tcb[1].prio)<((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 189: // STATE 256 - control.pml:32 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][256] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 190: // STATE 257 - control.pml:33 - [((tcb[1].prio>tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][257] = 1;
		if (!((((int)now.tcb[1].prio)>((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 191: // STATE 258 - control.pml:33 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[1][258] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 192: // STATE 259 - control.pml:34 - [((tcb[1].prio==tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][259] = 1;
		if (!((((int)now.tcb[1].prio)==((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 193: // STATE 260 - control.pml:36 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][260] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 194: // STATE 261 - control.pml:37 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[1][261] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 195: // STATE 269 - control.pml:74 - [tcb[2].prio = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][269] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[2].prio);
		now.tcb[2].prio = 0;
#ifdef VAR_RANGES
		logval("tcb[2].prio", ((int)now.tcb[2].prio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 196: // STATE 270 - control.pml:24 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][270] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)!=1)&&(((int)now.tcb[2].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 197: // STATE 271 - control.pml:25 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][271] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 198: // STATE 272 - control.pml:27 - [((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][272] = 1;
		if (!((((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4))&&((((int)now.tcb[1].state)!=1)&&(((int)now.tcb[1].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 199: // STATE 273 - control.pml:28 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[1][273] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 200: // STATE 274 - control.pml:30 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][274] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 201: // STATE 275 - control.pml:32 - [((tcb[1].prio<tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][275] = 1;
		if (!((((int)now.tcb[1].prio)<((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 202: // STATE 276 - control.pml:32 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][276] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 203: // STATE 277 - control.pml:33 - [((tcb[1].prio>tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][277] = 1;
		if (!((((int)now.tcb[1].prio)>((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 204: // STATE 278 - control.pml:33 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[1][278] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 205: // STATE 279 - control.pml:34 - [((tcb[1].prio==tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][279] = 1;
		if (!((((int)now.tcb[1].prio)==((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 206: // STATE 280 - control.pml:36 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][280] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 207: // STATE 281 - control.pml:37 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[1][281] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 208: // STATE 289 - control.pml:74 - [tcb[2].prio = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[1][289] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[2].prio);
		now.tcb[2].prio = 15;
#ifdef VAR_RANGES
		logval("tcb[2].prio", ((int)now.tcb[2].prio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 209: // STATE 290 - control.pml:24 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][290] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)!=1)&&(((int)now.tcb[2].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 210: // STATE 291 - control.pml:25 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][291] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 211: // STATE 292 - control.pml:27 - [((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][292] = 1;
		if (!((((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4))&&((((int)now.tcb[1].state)!=1)&&(((int)now.tcb[1].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 212: // STATE 293 - control.pml:28 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[1][293] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 213: // STATE 294 - control.pml:30 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][294] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 214: // STATE 295 - control.pml:32 - [((tcb[1].prio<tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][295] = 1;
		if (!((((int)now.tcb[1].prio)<((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 215: // STATE 296 - control.pml:32 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][296] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 216: // STATE 297 - control.pml:33 - [((tcb[1].prio>tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][297] = 1;
		if (!((((int)now.tcb[1].prio)>((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 217: // STATE 298 - control.pml:33 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[1][298] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 218: // STATE 299 - control.pml:34 - [((tcb[1].prio==tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][299] = 1;
		if (!((((int)now.tcb[1].prio)==((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 219: // STATE 300 - control.pml:36 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][300] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 220: // STATE 301 - control.pml:37 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[1][301] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 221: // STATE 309 - control.pml:74 - [tcb[2].prio = 31] (0:0:1 - 1)
		IfNotBlocked
		reached[1][309] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[2].prio);
		now.tcb[2].prio = 31;
#ifdef VAR_RANGES
		logval("tcb[2].prio", ((int)now.tcb[2].prio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 222: // STATE 310 - control.pml:24 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][310] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)!=1)&&(((int)now.tcb[2].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 223: // STATE 311 - control.pml:25 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][311] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 224: // STATE 312 - control.pml:27 - [((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][312] = 1;
		if (!((((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4))&&((((int)now.tcb[1].state)!=1)&&(((int)now.tcb[1].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 225: // STATE 313 - control.pml:28 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[1][313] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 226: // STATE 314 - control.pml:30 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][314] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 227: // STATE 315 - control.pml:32 - [((tcb[1].prio<tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][315] = 1;
		if (!((((int)now.tcb[1].prio)<((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 228: // STATE 316 - control.pml:32 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][316] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 229: // STATE 317 - control.pml:33 - [((tcb[1].prio>tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][317] = 1;
		if (!((((int)now.tcb[1].prio)>((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 230: // STATE 318 - control.pml:33 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[1][318] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 231: // STATE 319 - control.pml:34 - [((tcb[1].prio==tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][319] = 1;
		if (!((((int)now.tcb[1].prio)==((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 232: // STATE 320 - control.pml:36 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][320] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 233: // STATE 321 - control.pml:37 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[1][321] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 234: // STATE 329 - control.pml:74 - [tcb[1].state = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][329] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[1].state);
		now.tcb[1].state = 1;
#ifdef VAR_RANGES
		logval("tcb[1].state", ((int)now.tcb[1].state));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 235: // STATE 330 - control.pml:24 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][330] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)!=1)&&(((int)now.tcb[2].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 236: // STATE 331 - control.pml:25 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][331] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 237: // STATE 332 - control.pml:27 - [((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][332] = 1;
		if (!((((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4))&&((((int)now.tcb[1].state)!=1)&&(((int)now.tcb[1].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 238: // STATE 333 - control.pml:28 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[1][333] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 239: // STATE 334 - control.pml:30 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][334] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 240: // STATE 335 - control.pml:32 - [((tcb[1].prio<tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][335] = 1;
		if (!((((int)now.tcb[1].prio)<((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 241: // STATE 336 - control.pml:32 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][336] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 242: // STATE 337 - control.pml:33 - [((tcb[1].prio>tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][337] = 1;
		if (!((((int)now.tcb[1].prio)>((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 243: // STATE 338 - control.pml:33 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[1][338] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 244: // STATE 339 - control.pml:34 - [((tcb[1].prio==tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][339] = 1;
		if (!((((int)now.tcb[1].prio)==((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 245: // STATE 340 - control.pml:36 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][340] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 246: // STATE 341 - control.pml:37 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[1][341] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 247: // STATE 349 - control.pml:74 - [tcb[1].state = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[1][349] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[1].state);
		now.tcb[1].state = 3;
#ifdef VAR_RANGES
		logval("tcb[1].state", ((int)now.tcb[1].state));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 248: // STATE 350 - control.pml:24 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][350] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)!=1)&&(((int)now.tcb[2].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 249: // STATE 351 - control.pml:25 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][351] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 250: // STATE 352 - control.pml:27 - [((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][352] = 1;
		if (!((((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4))&&((((int)now.tcb[1].state)!=1)&&(((int)now.tcb[1].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 251: // STATE 353 - control.pml:28 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[1][353] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 252: // STATE 354 - control.pml:30 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][354] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 253: // STATE 355 - control.pml:32 - [((tcb[1].prio<tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][355] = 1;
		if (!((((int)now.tcb[1].prio)<((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 254: // STATE 356 - control.pml:32 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][356] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 255: // STATE 357 - control.pml:33 - [((tcb[1].prio>tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][357] = 1;
		if (!((((int)now.tcb[1].prio)>((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 256: // STATE 358 - control.pml:33 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[1][358] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 257: // STATE 359 - control.pml:34 - [((tcb[1].prio==tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][359] = 1;
		if (!((((int)now.tcb[1].prio)==((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 258: // STATE 360 - control.pml:36 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][360] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 259: // STATE 361 - control.pml:37 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[1][361] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 260: // STATE 369 - control.pml:74 - [tcb[2].state = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][369] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[2].state);
		now.tcb[2].state = 1;
#ifdef VAR_RANGES
		logval("tcb[2].state", ((int)now.tcb[2].state));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 261: // STATE 370 - control.pml:24 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][370] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)!=1)&&(((int)now.tcb[2].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 262: // STATE 371 - control.pml:25 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][371] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 263: // STATE 372 - control.pml:27 - [((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][372] = 1;
		if (!((((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4))&&((((int)now.tcb[1].state)!=1)&&(((int)now.tcb[1].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 264: // STATE 373 - control.pml:28 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[1][373] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 265: // STATE 374 - control.pml:30 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][374] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 266: // STATE 375 - control.pml:32 - [((tcb[1].prio<tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][375] = 1;
		if (!((((int)now.tcb[1].prio)<((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 267: // STATE 376 - control.pml:32 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][376] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 268: // STATE 377 - control.pml:33 - [((tcb[1].prio>tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][377] = 1;
		if (!((((int)now.tcb[1].prio)>((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 269: // STATE 378 - control.pml:33 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[1][378] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 270: // STATE 379 - control.pml:34 - [((tcb[1].prio==tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][379] = 1;
		if (!((((int)now.tcb[1].prio)==((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 271: // STATE 380 - control.pml:36 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][380] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 272: // STATE 381 - control.pml:37 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[1][381] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 273: // STATE 389 - control.pml:74 - [tcb[2].state = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[1][389] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[2].state);
		now.tcb[2].state = 3;
#ifdef VAR_RANGES
		logval("tcb[2].state", ((int)now.tcb[2].state));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 274: // STATE 390 - control.pml:24 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][390] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)!=1)&&(((int)now.tcb[2].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 275: // STATE 391 - control.pml:25 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][391] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 276: // STATE 392 - control.pml:27 - [((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][392] = 1;
		if (!((((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4))&&((((int)now.tcb[1].state)!=1)&&(((int)now.tcb[1].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 277: // STATE 393 - control.pml:28 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[1][393] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 278: // STATE 394 - control.pml:30 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][394] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 279: // STATE 395 - control.pml:32 - [((tcb[1].prio<tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][395] = 1;
		if (!((((int)now.tcb[1].prio)<((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 280: // STATE 396 - control.pml:32 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][396] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 281: // STATE 397 - control.pml:33 - [((tcb[1].prio>tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][397] = 1;
		if (!((((int)now.tcb[1].prio)>((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 282: // STATE 398 - control.pml:33 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[1][398] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 283: // STATE 399 - control.pml:34 - [((tcb[1].prio==tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][399] = 1;
		if (!((((int)now.tcb[1].prio)==((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 284: // STATE 400 - control.pml:36 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][400] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 285: // STATE 401 - control.pml:37 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[1][401] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 286: // STATE 414 - control.pml:76 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][414] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Process1 */
	case 287: // STATE 1 - control.pml:65 - [((EP==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		if (!((((int)now.EP)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 288: // STATE 2 - control.pml:65 - [printf('Process 1 is running\\n')] (0:0:0 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		Printf("Process 1 is running\n");
		_m = 3; goto P999; /* 0 */
	case 289: // STATE 4 - control.pml:65 - [tcb[1].prio = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[1].prio);
		now.tcb[1].prio = 0;
#ifdef VAR_RANGES
		logval("tcb[1].prio", ((int)now.tcb[1].prio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 290: // STATE 5 - control.pml:24 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][5] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)!=1)&&(((int)now.tcb[2].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 291: // STATE 6 - control.pml:25 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][6] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 292: // STATE 7 - control.pml:27 - [((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][7] = 1;
		if (!((((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4))&&((((int)now.tcb[1].state)!=1)&&(((int)now.tcb[1].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 293: // STATE 8 - control.pml:28 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][8] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 294: // STATE 9 - control.pml:30 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][9] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 295: // STATE 10 - control.pml:32 - [((tcb[1].prio<tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][10] = 1;
		if (!((((int)now.tcb[1].prio)<((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 296: // STATE 11 - control.pml:32 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][11] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 297: // STATE 12 - control.pml:33 - [((tcb[1].prio>tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][12] = 1;
		if (!((((int)now.tcb[1].prio)>((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 298: // STATE 13 - control.pml:33 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][13] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 299: // STATE 14 - control.pml:34 - [((tcb[1].prio==tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][14] = 1;
		if (!((((int)now.tcb[1].prio)==((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 300: // STATE 15 - control.pml:36 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][15] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 301: // STATE 16 - control.pml:37 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][16] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 302: // STATE 24 - control.pml:65 - [tcb[1].prio = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][24] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[1].prio);
		now.tcb[1].prio = 15;
#ifdef VAR_RANGES
		logval("tcb[1].prio", ((int)now.tcb[1].prio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 303: // STATE 25 - control.pml:24 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][25] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)!=1)&&(((int)now.tcb[2].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 304: // STATE 26 - control.pml:25 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][26] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 305: // STATE 27 - control.pml:27 - [((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][27] = 1;
		if (!((((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4))&&((((int)now.tcb[1].state)!=1)&&(((int)now.tcb[1].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 306: // STATE 28 - control.pml:28 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][28] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 307: // STATE 29 - control.pml:30 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][29] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 308: // STATE 30 - control.pml:32 - [((tcb[1].prio<tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][30] = 1;
		if (!((((int)now.tcb[1].prio)<((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 309: // STATE 31 - control.pml:32 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][31] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 310: // STATE 32 - control.pml:33 - [((tcb[1].prio>tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][32] = 1;
		if (!((((int)now.tcb[1].prio)>((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 311: // STATE 33 - control.pml:33 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][33] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 312: // STATE 34 - control.pml:34 - [((tcb[1].prio==tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][34] = 1;
		if (!((((int)now.tcb[1].prio)==((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 313: // STATE 35 - control.pml:36 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][35] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 314: // STATE 36 - control.pml:37 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][36] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 315: // STATE 44 - control.pml:65 - [tcb[1].prio = 31] (0:0:1 - 1)
		IfNotBlocked
		reached[0][44] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[1].prio);
		now.tcb[1].prio = 31;
#ifdef VAR_RANGES
		logval("tcb[1].prio", ((int)now.tcb[1].prio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 316: // STATE 45 - control.pml:24 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][45] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)!=1)&&(((int)now.tcb[2].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 317: // STATE 46 - control.pml:25 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][46] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 318: // STATE 47 - control.pml:27 - [((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][47] = 1;
		if (!((((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4))&&((((int)now.tcb[1].state)!=1)&&(((int)now.tcb[1].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 319: // STATE 48 - control.pml:28 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][48] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 320: // STATE 49 - control.pml:30 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][49] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 321: // STATE 50 - control.pml:32 - [((tcb[1].prio<tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][50] = 1;
		if (!((((int)now.tcb[1].prio)<((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 322: // STATE 51 - control.pml:32 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][51] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 323: // STATE 52 - control.pml:33 - [((tcb[1].prio>tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][52] = 1;
		if (!((((int)now.tcb[1].prio)>((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 324: // STATE 53 - control.pml:33 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][53] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 325: // STATE 54 - control.pml:34 - [((tcb[1].prio==tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][54] = 1;
		if (!((((int)now.tcb[1].prio)==((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 326: // STATE 55 - control.pml:36 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][55] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 327: // STATE 56 - control.pml:37 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][56] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 328: // STATE 64 - control.pml:65 - [tcb[2].prio = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][64] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[2].prio);
		now.tcb[2].prio = 0;
#ifdef VAR_RANGES
		logval("tcb[2].prio", ((int)now.tcb[2].prio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 329: // STATE 65 - control.pml:24 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][65] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)!=1)&&(((int)now.tcb[2].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 330: // STATE 66 - control.pml:25 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][66] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 331: // STATE 67 - control.pml:27 - [((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][67] = 1;
		if (!((((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4))&&((((int)now.tcb[1].state)!=1)&&(((int)now.tcb[1].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 332: // STATE 68 - control.pml:28 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][68] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 333: // STATE 69 - control.pml:30 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][69] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 334: // STATE 70 - control.pml:32 - [((tcb[1].prio<tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][70] = 1;
		if (!((((int)now.tcb[1].prio)<((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 335: // STATE 71 - control.pml:32 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][71] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 336: // STATE 72 - control.pml:33 - [((tcb[1].prio>tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][72] = 1;
		if (!((((int)now.tcb[1].prio)>((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 337: // STATE 73 - control.pml:33 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][73] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 338: // STATE 74 - control.pml:34 - [((tcb[1].prio==tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][74] = 1;
		if (!((((int)now.tcb[1].prio)==((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 339: // STATE 75 - control.pml:36 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][75] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 340: // STATE 76 - control.pml:37 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][76] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 341: // STATE 84 - control.pml:65 - [tcb[2].prio = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][84] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[2].prio);
		now.tcb[2].prio = 15;
#ifdef VAR_RANGES
		logval("tcb[2].prio", ((int)now.tcb[2].prio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 342: // STATE 85 - control.pml:24 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][85] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)!=1)&&(((int)now.tcb[2].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 343: // STATE 86 - control.pml:25 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][86] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 344: // STATE 87 - control.pml:27 - [((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][87] = 1;
		if (!((((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4))&&((((int)now.tcb[1].state)!=1)&&(((int)now.tcb[1].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 345: // STATE 88 - control.pml:28 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][88] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 346: // STATE 89 - control.pml:30 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][89] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 347: // STATE 90 - control.pml:32 - [((tcb[1].prio<tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][90] = 1;
		if (!((((int)now.tcb[1].prio)<((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 348: // STATE 91 - control.pml:32 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][91] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 349: // STATE 92 - control.pml:33 - [((tcb[1].prio>tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][92] = 1;
		if (!((((int)now.tcb[1].prio)>((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 350: // STATE 93 - control.pml:33 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][93] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 351: // STATE 94 - control.pml:34 - [((tcb[1].prio==tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][94] = 1;
		if (!((((int)now.tcb[1].prio)==((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 352: // STATE 95 - control.pml:36 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][95] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 353: // STATE 96 - control.pml:37 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][96] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 354: // STATE 104 - control.pml:65 - [tcb[2].prio = 31] (0:0:1 - 1)
		IfNotBlocked
		reached[0][104] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[2].prio);
		now.tcb[2].prio = 31;
#ifdef VAR_RANGES
		logval("tcb[2].prio", ((int)now.tcb[2].prio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 355: // STATE 105 - control.pml:24 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][105] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)!=1)&&(((int)now.tcb[2].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 356: // STATE 106 - control.pml:25 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][106] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 357: // STATE 107 - control.pml:27 - [((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][107] = 1;
		if (!((((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4))&&((((int)now.tcb[1].state)!=1)&&(((int)now.tcb[1].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 358: // STATE 108 - control.pml:28 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][108] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 359: // STATE 109 - control.pml:30 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][109] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 360: // STATE 110 - control.pml:32 - [((tcb[1].prio<tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][110] = 1;
		if (!((((int)now.tcb[1].prio)<((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 361: // STATE 111 - control.pml:32 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][111] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 362: // STATE 112 - control.pml:33 - [((tcb[1].prio>tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][112] = 1;
		if (!((((int)now.tcb[1].prio)>((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 363: // STATE 113 - control.pml:33 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][113] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 364: // STATE 114 - control.pml:34 - [((tcb[1].prio==tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][114] = 1;
		if (!((((int)now.tcb[1].prio)==((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 365: // STATE 115 - control.pml:36 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][115] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 366: // STATE 116 - control.pml:37 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][116] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 367: // STATE 124 - control.pml:65 - [tcb[1].state = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][124] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[1].state);
		now.tcb[1].state = 1;
#ifdef VAR_RANGES
		logval("tcb[1].state", ((int)now.tcb[1].state));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 368: // STATE 125 - control.pml:24 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][125] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)!=1)&&(((int)now.tcb[2].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 369: // STATE 126 - control.pml:25 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][126] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 370: // STATE 127 - control.pml:27 - [((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][127] = 1;
		if (!((((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4))&&((((int)now.tcb[1].state)!=1)&&(((int)now.tcb[1].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 371: // STATE 128 - control.pml:28 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][128] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 372: // STATE 129 - control.pml:30 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][129] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 373: // STATE 130 - control.pml:32 - [((tcb[1].prio<tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][130] = 1;
		if (!((((int)now.tcb[1].prio)<((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 374: // STATE 131 - control.pml:32 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][131] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 375: // STATE 132 - control.pml:33 - [((tcb[1].prio>tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][132] = 1;
		if (!((((int)now.tcb[1].prio)>((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 376: // STATE 133 - control.pml:33 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][133] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 377: // STATE 134 - control.pml:34 - [((tcb[1].prio==tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][134] = 1;
		if (!((((int)now.tcb[1].prio)==((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 378: // STATE 135 - control.pml:36 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][135] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 379: // STATE 136 - control.pml:37 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][136] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 380: // STATE 144 - control.pml:65 - [tcb[1].state = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][144] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[1].state);
		now.tcb[1].state = 3;
#ifdef VAR_RANGES
		logval("tcb[1].state", ((int)now.tcb[1].state));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 381: // STATE 145 - control.pml:24 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][145] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)!=1)&&(((int)now.tcb[2].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 382: // STATE 146 - control.pml:25 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][146] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 383: // STATE 147 - control.pml:27 - [((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][147] = 1;
		if (!((((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4))&&((((int)now.tcb[1].state)!=1)&&(((int)now.tcb[1].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 384: // STATE 148 - control.pml:28 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][148] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 385: // STATE 149 - control.pml:30 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][149] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 386: // STATE 150 - control.pml:32 - [((tcb[1].prio<tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][150] = 1;
		if (!((((int)now.tcb[1].prio)<((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 387: // STATE 151 - control.pml:32 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][151] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 388: // STATE 152 - control.pml:33 - [((tcb[1].prio>tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][152] = 1;
		if (!((((int)now.tcb[1].prio)>((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 389: // STATE 153 - control.pml:33 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][153] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 390: // STATE 154 - control.pml:34 - [((tcb[1].prio==tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][154] = 1;
		if (!((((int)now.tcb[1].prio)==((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 391: // STATE 155 - control.pml:36 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][155] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 392: // STATE 156 - control.pml:37 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][156] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 393: // STATE 164 - control.pml:65 - [tcb[2].state = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][164] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[2].state);
		now.tcb[2].state = 1;
#ifdef VAR_RANGES
		logval("tcb[2].state", ((int)now.tcb[2].state));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 394: // STATE 165 - control.pml:24 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][165] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)!=1)&&(((int)now.tcb[2].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 395: // STATE 166 - control.pml:25 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][166] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 396: // STATE 167 - control.pml:27 - [((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][167] = 1;
		if (!((((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4))&&((((int)now.tcb[1].state)!=1)&&(((int)now.tcb[1].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 397: // STATE 168 - control.pml:28 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][168] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 398: // STATE 169 - control.pml:30 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][169] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 399: // STATE 170 - control.pml:32 - [((tcb[1].prio<tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][170] = 1;
		if (!((((int)now.tcb[1].prio)<((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 400: // STATE 171 - control.pml:32 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][171] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 401: // STATE 172 - control.pml:33 - [((tcb[1].prio>tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][172] = 1;
		if (!((((int)now.tcb[1].prio)>((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 402: // STATE 173 - control.pml:33 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][173] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 403: // STATE 174 - control.pml:34 - [((tcb[1].prio==tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][174] = 1;
		if (!((((int)now.tcb[1].prio)==((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 404: // STATE 175 - control.pml:36 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][175] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 405: // STATE 176 - control.pml:37 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][176] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 406: // STATE 184 - control.pml:65 - [tcb[2].state = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][184] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[2].state);
		now.tcb[2].state = 3;
#ifdef VAR_RANGES
		logval("tcb[2].state", ((int)now.tcb[2].state));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 407: // STATE 185 - control.pml:24 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][185] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)!=1)&&(((int)now.tcb[2].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 408: // STATE 186 - control.pml:25 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][186] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 409: // STATE 187 - control.pml:27 - [((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][187] = 1;
		if (!((((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4))&&((((int)now.tcb[1].state)!=1)&&(((int)now.tcb[1].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 410: // STATE 188 - control.pml:28 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][188] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 411: // STATE 189 - control.pml:30 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][189] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 412: // STATE 190 - control.pml:32 - [((tcb[1].prio<tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][190] = 1;
		if (!((((int)now.tcb[1].prio)<((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 413: // STATE 191 - control.pml:32 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][191] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 414: // STATE 192 - control.pml:33 - [((tcb[1].prio>tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][192] = 1;
		if (!((((int)now.tcb[1].prio)>((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 415: // STATE 193 - control.pml:33 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][193] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 416: // STATE 194 - control.pml:34 - [((tcb[1].prio==tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][194] = 1;
		if (!((((int)now.tcb[1].prio)==((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 417: // STATE 195 - control.pml:36 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][195] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 418: // STATE 196 - control.pml:37 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][196] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 419: // STATE 206 - control.pml:66 - [((EP==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][206] = 1;
		if (!((((int)now.EP)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 420: // STATE 207 - control.pml:66 - [assert((EP==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][207] = 1;
		spin_assert((((int)now.EP)==1), "(EP==1)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 421: // STATE 209 - control.pml:66 - [tcb[1].prio = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][209] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[1].prio);
		now.tcb[1].prio = 0;
#ifdef VAR_RANGES
		logval("tcb[1].prio", ((int)now.tcb[1].prio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 422: // STATE 210 - control.pml:24 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][210] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)!=1)&&(((int)now.tcb[2].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 423: // STATE 211 - control.pml:25 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][211] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 424: // STATE 212 - control.pml:27 - [((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][212] = 1;
		if (!((((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4))&&((((int)now.tcb[1].state)!=1)&&(((int)now.tcb[1].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 425: // STATE 213 - control.pml:28 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][213] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 426: // STATE 214 - control.pml:30 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][214] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 427: // STATE 215 - control.pml:32 - [((tcb[1].prio<tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][215] = 1;
		if (!((((int)now.tcb[1].prio)<((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 428: // STATE 216 - control.pml:32 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][216] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 429: // STATE 217 - control.pml:33 - [((tcb[1].prio>tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][217] = 1;
		if (!((((int)now.tcb[1].prio)>((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 430: // STATE 218 - control.pml:33 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][218] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 431: // STATE 219 - control.pml:34 - [((tcb[1].prio==tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][219] = 1;
		if (!((((int)now.tcb[1].prio)==((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 432: // STATE 220 - control.pml:36 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][220] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 433: // STATE 221 - control.pml:37 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][221] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 434: // STATE 229 - control.pml:66 - [tcb[1].prio = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][229] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[1].prio);
		now.tcb[1].prio = 15;
#ifdef VAR_RANGES
		logval("tcb[1].prio", ((int)now.tcb[1].prio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 435: // STATE 230 - control.pml:24 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][230] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)!=1)&&(((int)now.tcb[2].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 436: // STATE 231 - control.pml:25 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][231] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 437: // STATE 232 - control.pml:27 - [((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][232] = 1;
		if (!((((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4))&&((((int)now.tcb[1].state)!=1)&&(((int)now.tcb[1].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 438: // STATE 233 - control.pml:28 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][233] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 439: // STATE 234 - control.pml:30 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][234] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 440: // STATE 235 - control.pml:32 - [((tcb[1].prio<tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][235] = 1;
		if (!((((int)now.tcb[1].prio)<((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 441: // STATE 236 - control.pml:32 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][236] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 442: // STATE 237 - control.pml:33 - [((tcb[1].prio>tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][237] = 1;
		if (!((((int)now.tcb[1].prio)>((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 443: // STATE 238 - control.pml:33 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][238] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 444: // STATE 239 - control.pml:34 - [((tcb[1].prio==tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][239] = 1;
		if (!((((int)now.tcb[1].prio)==((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 445: // STATE 240 - control.pml:36 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][240] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 446: // STATE 241 - control.pml:37 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][241] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 447: // STATE 249 - control.pml:66 - [tcb[1].prio = 31] (0:0:1 - 1)
		IfNotBlocked
		reached[0][249] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[1].prio);
		now.tcb[1].prio = 31;
#ifdef VAR_RANGES
		logval("tcb[1].prio", ((int)now.tcb[1].prio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 448: // STATE 250 - control.pml:24 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][250] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)!=1)&&(((int)now.tcb[2].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 449: // STATE 251 - control.pml:25 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][251] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 450: // STATE 252 - control.pml:27 - [((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][252] = 1;
		if (!((((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4))&&((((int)now.tcb[1].state)!=1)&&(((int)now.tcb[1].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 451: // STATE 253 - control.pml:28 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][253] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 452: // STATE 254 - control.pml:30 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][254] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 453: // STATE 255 - control.pml:32 - [((tcb[1].prio<tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][255] = 1;
		if (!((((int)now.tcb[1].prio)<((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 454: // STATE 256 - control.pml:32 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][256] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 455: // STATE 257 - control.pml:33 - [((tcb[1].prio>tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][257] = 1;
		if (!((((int)now.tcb[1].prio)>((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 456: // STATE 258 - control.pml:33 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][258] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 457: // STATE 259 - control.pml:34 - [((tcb[1].prio==tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][259] = 1;
		if (!((((int)now.tcb[1].prio)==((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 458: // STATE 260 - control.pml:36 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][260] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 459: // STATE 261 - control.pml:37 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][261] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 460: // STATE 269 - control.pml:66 - [tcb[2].prio = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][269] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[2].prio);
		now.tcb[2].prio = 0;
#ifdef VAR_RANGES
		logval("tcb[2].prio", ((int)now.tcb[2].prio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 461: // STATE 270 - control.pml:24 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][270] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)!=1)&&(((int)now.tcb[2].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 462: // STATE 271 - control.pml:25 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][271] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 463: // STATE 272 - control.pml:27 - [((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][272] = 1;
		if (!((((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4))&&((((int)now.tcb[1].state)!=1)&&(((int)now.tcb[1].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 464: // STATE 273 - control.pml:28 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][273] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 465: // STATE 274 - control.pml:30 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][274] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 466: // STATE 275 - control.pml:32 - [((tcb[1].prio<tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][275] = 1;
		if (!((((int)now.tcb[1].prio)<((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 467: // STATE 276 - control.pml:32 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][276] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 468: // STATE 277 - control.pml:33 - [((tcb[1].prio>tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][277] = 1;
		if (!((((int)now.tcb[1].prio)>((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 469: // STATE 278 - control.pml:33 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][278] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 470: // STATE 279 - control.pml:34 - [((tcb[1].prio==tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][279] = 1;
		if (!((((int)now.tcb[1].prio)==((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 471: // STATE 280 - control.pml:36 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][280] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 472: // STATE 281 - control.pml:37 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][281] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 473: // STATE 289 - control.pml:66 - [tcb[2].prio = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][289] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[2].prio);
		now.tcb[2].prio = 15;
#ifdef VAR_RANGES
		logval("tcb[2].prio", ((int)now.tcb[2].prio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 474: // STATE 290 - control.pml:24 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][290] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)!=1)&&(((int)now.tcb[2].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 475: // STATE 291 - control.pml:25 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][291] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 476: // STATE 292 - control.pml:27 - [((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][292] = 1;
		if (!((((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4))&&((((int)now.tcb[1].state)!=1)&&(((int)now.tcb[1].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 477: // STATE 293 - control.pml:28 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][293] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 478: // STATE 294 - control.pml:30 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][294] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 479: // STATE 295 - control.pml:32 - [((tcb[1].prio<tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][295] = 1;
		if (!((((int)now.tcb[1].prio)<((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 480: // STATE 296 - control.pml:32 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][296] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 481: // STATE 297 - control.pml:33 - [((tcb[1].prio>tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][297] = 1;
		if (!((((int)now.tcb[1].prio)>((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 482: // STATE 298 - control.pml:33 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][298] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 483: // STATE 299 - control.pml:34 - [((tcb[1].prio==tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][299] = 1;
		if (!((((int)now.tcb[1].prio)==((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 484: // STATE 300 - control.pml:36 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][300] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 485: // STATE 301 - control.pml:37 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][301] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 486: // STATE 309 - control.pml:66 - [tcb[2].prio = 31] (0:0:1 - 1)
		IfNotBlocked
		reached[0][309] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[2].prio);
		now.tcb[2].prio = 31;
#ifdef VAR_RANGES
		logval("tcb[2].prio", ((int)now.tcb[2].prio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 487: // STATE 310 - control.pml:24 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][310] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)!=1)&&(((int)now.tcb[2].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 488: // STATE 311 - control.pml:25 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][311] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 489: // STATE 312 - control.pml:27 - [((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][312] = 1;
		if (!((((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4))&&((((int)now.tcb[1].state)!=1)&&(((int)now.tcb[1].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 490: // STATE 313 - control.pml:28 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][313] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 491: // STATE 314 - control.pml:30 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][314] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 492: // STATE 315 - control.pml:32 - [((tcb[1].prio<tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][315] = 1;
		if (!((((int)now.tcb[1].prio)<((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 493: // STATE 316 - control.pml:32 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][316] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 494: // STATE 317 - control.pml:33 - [((tcb[1].prio>tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][317] = 1;
		if (!((((int)now.tcb[1].prio)>((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 495: // STATE 318 - control.pml:33 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][318] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 496: // STATE 319 - control.pml:34 - [((tcb[1].prio==tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][319] = 1;
		if (!((((int)now.tcb[1].prio)==((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 497: // STATE 320 - control.pml:36 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][320] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 498: // STATE 321 - control.pml:37 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][321] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 499: // STATE 329 - control.pml:66 - [tcb[1].state = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][329] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[1].state);
		now.tcb[1].state = 1;
#ifdef VAR_RANGES
		logval("tcb[1].state", ((int)now.tcb[1].state));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 500: // STATE 330 - control.pml:24 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][330] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)!=1)&&(((int)now.tcb[2].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 501: // STATE 331 - control.pml:25 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][331] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 502: // STATE 332 - control.pml:27 - [((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][332] = 1;
		if (!((((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4))&&((((int)now.tcb[1].state)!=1)&&(((int)now.tcb[1].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 503: // STATE 333 - control.pml:28 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][333] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 504: // STATE 334 - control.pml:30 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][334] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 505: // STATE 335 - control.pml:32 - [((tcb[1].prio<tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][335] = 1;
		if (!((((int)now.tcb[1].prio)<((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 506: // STATE 336 - control.pml:32 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][336] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 507: // STATE 337 - control.pml:33 - [((tcb[1].prio>tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][337] = 1;
		if (!((((int)now.tcb[1].prio)>((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 508: // STATE 338 - control.pml:33 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][338] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 509: // STATE 339 - control.pml:34 - [((tcb[1].prio==tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][339] = 1;
		if (!((((int)now.tcb[1].prio)==((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 510: // STATE 340 - control.pml:36 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][340] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 511: // STATE 341 - control.pml:37 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][341] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 512: // STATE 349 - control.pml:66 - [tcb[1].state = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][349] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[1].state);
		now.tcb[1].state = 3;
#ifdef VAR_RANGES
		logval("tcb[1].state", ((int)now.tcb[1].state));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 513: // STATE 350 - control.pml:24 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][350] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)!=1)&&(((int)now.tcb[2].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 514: // STATE 351 - control.pml:25 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][351] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 515: // STATE 352 - control.pml:27 - [((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][352] = 1;
		if (!((((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4))&&((((int)now.tcb[1].state)!=1)&&(((int)now.tcb[1].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 516: // STATE 353 - control.pml:28 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][353] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 517: // STATE 354 - control.pml:30 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][354] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 518: // STATE 355 - control.pml:32 - [((tcb[1].prio<tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][355] = 1;
		if (!((((int)now.tcb[1].prio)<((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 519: // STATE 356 - control.pml:32 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][356] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 520: // STATE 357 - control.pml:33 - [((tcb[1].prio>tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][357] = 1;
		if (!((((int)now.tcb[1].prio)>((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 521: // STATE 358 - control.pml:33 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][358] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 522: // STATE 359 - control.pml:34 - [((tcb[1].prio==tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][359] = 1;
		if (!((((int)now.tcb[1].prio)==((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 523: // STATE 360 - control.pml:36 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][360] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 524: // STATE 361 - control.pml:37 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][361] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 525: // STATE 369 - control.pml:66 - [tcb[2].state = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][369] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[2].state);
		now.tcb[2].state = 1;
#ifdef VAR_RANGES
		logval("tcb[2].state", ((int)now.tcb[2].state));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 526: // STATE 370 - control.pml:24 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][370] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)!=1)&&(((int)now.tcb[2].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 527: // STATE 371 - control.pml:25 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][371] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 528: // STATE 372 - control.pml:27 - [((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][372] = 1;
		if (!((((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4))&&((((int)now.tcb[1].state)!=1)&&(((int)now.tcb[1].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 529: // STATE 373 - control.pml:28 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][373] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 530: // STATE 374 - control.pml:30 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][374] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 531: // STATE 375 - control.pml:32 - [((tcb[1].prio<tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][375] = 1;
		if (!((((int)now.tcb[1].prio)<((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 532: // STATE 376 - control.pml:32 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][376] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 533: // STATE 377 - control.pml:33 - [((tcb[1].prio>tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][377] = 1;
		if (!((((int)now.tcb[1].prio)>((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 534: // STATE 378 - control.pml:33 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][378] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 535: // STATE 379 - control.pml:34 - [((tcb[1].prio==tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][379] = 1;
		if (!((((int)now.tcb[1].prio)==((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 536: // STATE 380 - control.pml:36 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][380] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 537: // STATE 381 - control.pml:37 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][381] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 538: // STATE 389 - control.pml:66 - [tcb[2].state = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][389] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[2].state);
		now.tcb[2].state = 3;
#ifdef VAR_RANGES
		logval("tcb[2].state", ((int)now.tcb[2].state));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 539: // STATE 390 - control.pml:24 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][390] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)!=1)&&(((int)now.tcb[2].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 540: // STATE 391 - control.pml:25 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][391] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 541: // STATE 392 - control.pml:27 - [((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][392] = 1;
		if (!((((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4))&&((((int)now.tcb[1].state)!=1)&&(((int)now.tcb[1].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 542: // STATE 393 - control.pml:28 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][393] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 543: // STATE 394 - control.pml:30 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][394] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 544: // STATE 395 - control.pml:32 - [((tcb[1].prio<tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][395] = 1;
		if (!((((int)now.tcb[1].prio)<((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 545: // STATE 396 - control.pml:32 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][396] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 546: // STATE 397 - control.pml:33 - [((tcb[1].prio>tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][397] = 1;
		if (!((((int)now.tcb[1].prio)>((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 547: // STATE 398 - control.pml:33 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][398] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 548: // STATE 399 - control.pml:34 - [((tcb[1].prio==tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][399] = 1;
		if (!((((int)now.tcb[1].prio)==((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 549: // STATE 400 - control.pml:36 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][400] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 550: // STATE 401 - control.pml:37 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][401] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 551: // STATE 411 - control.pml:67 - [((EP==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][411] = 1;
		if (!((((int)now.EP)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 552: // STATE 412 - control.pml:67 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][412] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 553: // STATE 414 - control.pml:67 - [tcb[1].prio = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][414] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[1].prio);
		now.tcb[1].prio = 0;
#ifdef VAR_RANGES
		logval("tcb[1].prio", ((int)now.tcb[1].prio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 554: // STATE 415 - control.pml:24 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][415] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)!=1)&&(((int)now.tcb[2].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 555: // STATE 416 - control.pml:25 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][416] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 556: // STATE 417 - control.pml:27 - [((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][417] = 1;
		if (!((((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4))&&((((int)now.tcb[1].state)!=1)&&(((int)now.tcb[1].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 557: // STATE 418 - control.pml:28 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][418] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 558: // STATE 419 - control.pml:30 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][419] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 559: // STATE 420 - control.pml:32 - [((tcb[1].prio<tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][420] = 1;
		if (!((((int)now.tcb[1].prio)<((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 560: // STATE 421 - control.pml:32 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][421] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 561: // STATE 422 - control.pml:33 - [((tcb[1].prio>tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][422] = 1;
		if (!((((int)now.tcb[1].prio)>((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 562: // STATE 423 - control.pml:33 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][423] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 563: // STATE 424 - control.pml:34 - [((tcb[1].prio==tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][424] = 1;
		if (!((((int)now.tcb[1].prio)==((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 564: // STATE 425 - control.pml:36 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][425] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 565: // STATE 426 - control.pml:37 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][426] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 566: // STATE 434 - control.pml:67 - [tcb[1].prio = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][434] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[1].prio);
		now.tcb[1].prio = 15;
#ifdef VAR_RANGES
		logval("tcb[1].prio", ((int)now.tcb[1].prio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 567: // STATE 435 - control.pml:24 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][435] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)!=1)&&(((int)now.tcb[2].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 568: // STATE 436 - control.pml:25 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][436] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 569: // STATE 437 - control.pml:27 - [((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][437] = 1;
		if (!((((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4))&&((((int)now.tcb[1].state)!=1)&&(((int)now.tcb[1].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 570: // STATE 438 - control.pml:28 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][438] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 571: // STATE 439 - control.pml:30 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][439] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 572: // STATE 440 - control.pml:32 - [((tcb[1].prio<tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][440] = 1;
		if (!((((int)now.tcb[1].prio)<((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 573: // STATE 441 - control.pml:32 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][441] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 574: // STATE 442 - control.pml:33 - [((tcb[1].prio>tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][442] = 1;
		if (!((((int)now.tcb[1].prio)>((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 575: // STATE 443 - control.pml:33 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][443] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 576: // STATE 444 - control.pml:34 - [((tcb[1].prio==tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][444] = 1;
		if (!((((int)now.tcb[1].prio)==((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 577: // STATE 445 - control.pml:36 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][445] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 578: // STATE 446 - control.pml:37 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][446] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 579: // STATE 454 - control.pml:67 - [tcb[1].prio = 31] (0:0:1 - 1)
		IfNotBlocked
		reached[0][454] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[1].prio);
		now.tcb[1].prio = 31;
#ifdef VAR_RANGES
		logval("tcb[1].prio", ((int)now.tcb[1].prio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 580: // STATE 455 - control.pml:24 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][455] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)!=1)&&(((int)now.tcb[2].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 581: // STATE 456 - control.pml:25 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][456] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 582: // STATE 457 - control.pml:27 - [((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][457] = 1;
		if (!((((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4))&&((((int)now.tcb[1].state)!=1)&&(((int)now.tcb[1].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 583: // STATE 458 - control.pml:28 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][458] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 584: // STATE 459 - control.pml:30 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][459] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 585: // STATE 460 - control.pml:32 - [((tcb[1].prio<tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][460] = 1;
		if (!((((int)now.tcb[1].prio)<((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 586: // STATE 461 - control.pml:32 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][461] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 587: // STATE 462 - control.pml:33 - [((tcb[1].prio>tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][462] = 1;
		if (!((((int)now.tcb[1].prio)>((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 588: // STATE 463 - control.pml:33 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][463] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 589: // STATE 464 - control.pml:34 - [((tcb[1].prio==tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][464] = 1;
		if (!((((int)now.tcb[1].prio)==((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 590: // STATE 465 - control.pml:36 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][465] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 591: // STATE 466 - control.pml:37 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][466] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 592: // STATE 474 - control.pml:67 - [tcb[2].prio = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][474] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[2].prio);
		now.tcb[2].prio = 0;
#ifdef VAR_RANGES
		logval("tcb[2].prio", ((int)now.tcb[2].prio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 593: // STATE 475 - control.pml:24 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][475] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)!=1)&&(((int)now.tcb[2].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 594: // STATE 476 - control.pml:25 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][476] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 595: // STATE 477 - control.pml:27 - [((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][477] = 1;
		if (!((((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4))&&((((int)now.tcb[1].state)!=1)&&(((int)now.tcb[1].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 596: // STATE 478 - control.pml:28 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][478] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 597: // STATE 479 - control.pml:30 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][479] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 598: // STATE 480 - control.pml:32 - [((tcb[1].prio<tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][480] = 1;
		if (!((((int)now.tcb[1].prio)<((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 599: // STATE 481 - control.pml:32 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][481] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 600: // STATE 482 - control.pml:33 - [((tcb[1].prio>tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][482] = 1;
		if (!((((int)now.tcb[1].prio)>((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 601: // STATE 483 - control.pml:33 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][483] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 602: // STATE 484 - control.pml:34 - [((tcb[1].prio==tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][484] = 1;
		if (!((((int)now.tcb[1].prio)==((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 603: // STATE 485 - control.pml:36 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][485] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 604: // STATE 486 - control.pml:37 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][486] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 605: // STATE 494 - control.pml:67 - [tcb[2].prio = 15] (0:0:1 - 1)
		IfNotBlocked
		reached[0][494] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[2].prio);
		now.tcb[2].prio = 15;
#ifdef VAR_RANGES
		logval("tcb[2].prio", ((int)now.tcb[2].prio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 606: // STATE 495 - control.pml:24 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][495] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)!=1)&&(((int)now.tcb[2].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 607: // STATE 496 - control.pml:25 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][496] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 608: // STATE 497 - control.pml:27 - [((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][497] = 1;
		if (!((((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4))&&((((int)now.tcb[1].state)!=1)&&(((int)now.tcb[1].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 609: // STATE 498 - control.pml:28 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][498] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 610: // STATE 499 - control.pml:30 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][499] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 611: // STATE 500 - control.pml:32 - [((tcb[1].prio<tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][500] = 1;
		if (!((((int)now.tcb[1].prio)<((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 612: // STATE 501 - control.pml:32 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][501] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 613: // STATE 502 - control.pml:33 - [((tcb[1].prio>tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][502] = 1;
		if (!((((int)now.tcb[1].prio)>((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 614: // STATE 503 - control.pml:33 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][503] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 615: // STATE 504 - control.pml:34 - [((tcb[1].prio==tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][504] = 1;
		if (!((((int)now.tcb[1].prio)==((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 616: // STATE 505 - control.pml:36 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][505] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 617: // STATE 506 - control.pml:37 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][506] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 618: // STATE 514 - control.pml:67 - [tcb[2].prio = 31] (0:0:1 - 1)
		IfNotBlocked
		reached[0][514] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[2].prio);
		now.tcb[2].prio = 31;
#ifdef VAR_RANGES
		logval("tcb[2].prio", ((int)now.tcb[2].prio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 619: // STATE 515 - control.pml:24 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][515] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)!=1)&&(((int)now.tcb[2].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 620: // STATE 516 - control.pml:25 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][516] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 621: // STATE 517 - control.pml:27 - [((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][517] = 1;
		if (!((((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4))&&((((int)now.tcb[1].state)!=1)&&(((int)now.tcb[1].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 622: // STATE 518 - control.pml:28 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][518] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 623: // STATE 519 - control.pml:30 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][519] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 624: // STATE 520 - control.pml:32 - [((tcb[1].prio<tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][520] = 1;
		if (!((((int)now.tcb[1].prio)<((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 625: // STATE 521 - control.pml:32 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][521] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 626: // STATE 522 - control.pml:33 - [((tcb[1].prio>tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][522] = 1;
		if (!((((int)now.tcb[1].prio)>((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 627: // STATE 523 - control.pml:33 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][523] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 628: // STATE 524 - control.pml:34 - [((tcb[1].prio==tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][524] = 1;
		if (!((((int)now.tcb[1].prio)==((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 629: // STATE 525 - control.pml:36 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][525] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 630: // STATE 526 - control.pml:37 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][526] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 631: // STATE 534 - control.pml:67 - [tcb[1].state = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][534] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[1].state);
		now.tcb[1].state = 1;
#ifdef VAR_RANGES
		logval("tcb[1].state", ((int)now.tcb[1].state));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 632: // STATE 535 - control.pml:24 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][535] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)!=1)&&(((int)now.tcb[2].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 633: // STATE 536 - control.pml:25 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][536] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 634: // STATE 537 - control.pml:27 - [((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][537] = 1;
		if (!((((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4))&&((((int)now.tcb[1].state)!=1)&&(((int)now.tcb[1].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 635: // STATE 538 - control.pml:28 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][538] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 636: // STATE 539 - control.pml:30 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][539] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 637: // STATE 540 - control.pml:32 - [((tcb[1].prio<tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][540] = 1;
		if (!((((int)now.tcb[1].prio)<((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 638: // STATE 541 - control.pml:32 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][541] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 639: // STATE 542 - control.pml:33 - [((tcb[1].prio>tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][542] = 1;
		if (!((((int)now.tcb[1].prio)>((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 640: // STATE 543 - control.pml:33 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][543] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 641: // STATE 544 - control.pml:34 - [((tcb[1].prio==tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][544] = 1;
		if (!((((int)now.tcb[1].prio)==((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 642: // STATE 545 - control.pml:36 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][545] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 643: // STATE 546 - control.pml:37 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][546] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 644: // STATE 554 - control.pml:67 - [tcb[1].state = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][554] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[1].state);
		now.tcb[1].state = 3;
#ifdef VAR_RANGES
		logval("tcb[1].state", ((int)now.tcb[1].state));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 645: // STATE 555 - control.pml:24 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][555] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)!=1)&&(((int)now.tcb[2].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 646: // STATE 556 - control.pml:25 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][556] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 647: // STATE 557 - control.pml:27 - [((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][557] = 1;
		if (!((((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4))&&((((int)now.tcb[1].state)!=1)&&(((int)now.tcb[1].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 648: // STATE 558 - control.pml:28 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][558] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 649: // STATE 559 - control.pml:30 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][559] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 650: // STATE 560 - control.pml:32 - [((tcb[1].prio<tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][560] = 1;
		if (!((((int)now.tcb[1].prio)<((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 651: // STATE 561 - control.pml:32 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][561] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 652: // STATE 562 - control.pml:33 - [((tcb[1].prio>tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][562] = 1;
		if (!((((int)now.tcb[1].prio)>((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 653: // STATE 563 - control.pml:33 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][563] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 654: // STATE 564 - control.pml:34 - [((tcb[1].prio==tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][564] = 1;
		if (!((((int)now.tcb[1].prio)==((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 655: // STATE 565 - control.pml:36 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][565] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 656: // STATE 566 - control.pml:37 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][566] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 657: // STATE 574 - control.pml:67 - [tcb[2].state = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][574] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[2].state);
		now.tcb[2].state = 1;
#ifdef VAR_RANGES
		logval("tcb[2].state", ((int)now.tcb[2].state));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 658: // STATE 575 - control.pml:24 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][575] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)!=1)&&(((int)now.tcb[2].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 659: // STATE 576 - control.pml:25 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][576] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 660: // STATE 577 - control.pml:27 - [((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][577] = 1;
		if (!((((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4))&&((((int)now.tcb[1].state)!=1)&&(((int)now.tcb[1].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 661: // STATE 578 - control.pml:28 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][578] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 662: // STATE 579 - control.pml:30 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][579] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 663: // STATE 580 - control.pml:32 - [((tcb[1].prio<tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][580] = 1;
		if (!((((int)now.tcb[1].prio)<((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 664: // STATE 581 - control.pml:32 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][581] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 665: // STATE 582 - control.pml:33 - [((tcb[1].prio>tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][582] = 1;
		if (!((((int)now.tcb[1].prio)>((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 666: // STATE 583 - control.pml:33 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][583] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 667: // STATE 584 - control.pml:34 - [((tcb[1].prio==tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][584] = 1;
		if (!((((int)now.tcb[1].prio)==((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 668: // STATE 585 - control.pml:36 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][585] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 669: // STATE 586 - control.pml:37 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][586] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 670: // STATE 594 - control.pml:67 - [tcb[2].state = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[0][594] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[2].state);
		now.tcb[2].state = 3;
#ifdef VAR_RANGES
		logval("tcb[2].state", ((int)now.tcb[2].state));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 671: // STATE 595 - control.pml:24 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state!=1)&&(tcb[2].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][595] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)!=1)&&(((int)now.tcb[2].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 672: // STATE 596 - control.pml:25 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][596] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 673: // STATE 597 - control.pml:27 - [((((tcb[2].state==1)||(tcb[2].state==4))&&((tcb[1].state!=1)&&(tcb[1].state!=4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][597] = 1;
		if (!((((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4))&&((((int)now.tcb[1].state)!=1)&&(((int)now.tcb[1].state)!=4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 674: // STATE 598 - control.pml:28 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][598] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 675: // STATE 599 - control.pml:30 - [((((tcb[1].state==1)||(tcb[1].state==4))&&((tcb[2].state==1)||(tcb[2].state==4))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][599] = 1;
		if (!((((((int)now.tcb[1].state)==1)||(((int)now.tcb[1].state)==4))&&((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 676: // STATE 600 - control.pml:32 - [((tcb[1].prio<tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][600] = 1;
		if (!((((int)now.tcb[1].prio)<((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 677: // STATE 601 - control.pml:32 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][601] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 678: // STATE 602 - control.pml:33 - [((tcb[1].prio>tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][602] = 1;
		if (!((((int)now.tcb[1].prio)>((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 679: // STATE 603 - control.pml:33 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][603] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 680: // STATE 604 - control.pml:34 - [((tcb[1].prio==tcb[2].prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][604] = 1;
		if (!((((int)now.tcb[1].prio)==((int)now.tcb[2].prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 681: // STATE 605 - control.pml:36 - [EP = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][605] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 682: // STATE 606 - control.pml:37 - [EP = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][606] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 683: // STATE 619 - control.pml:69 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][619] = 1;
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

