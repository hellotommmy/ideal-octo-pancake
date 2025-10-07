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
	case 3: // STATE 1 - control.pml:81 - [tcb[1].prio = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[2][1] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[1].prio);
		now.tcb[1].prio = 20;
#ifdef VAR_RANGES
		logval("tcb[1].prio", ((int)now.tcb[1].prio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 2 - control.pml:82 - [tcb[1].state = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[2][2] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[1].state);
		now.tcb[1].state = 1;
#ifdef VAR_RANGES
		logval("tcb[1].state", ((int)now.tcb[1].state));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 3 - control.pml:84 - [tcb[2].prio = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[2][3] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[2].prio);
		now.tcb[2].prio = 20;
#ifdef VAR_RANGES
		logval("tcb[2].prio", ((int)now.tcb[2].prio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 4 - control.pml:85 - [tcb[2].state = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[2][4] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[2].state);
		now.tcb[2].state = 1;
#ifdef VAR_RANGES
		logval("tcb[2].state", ((int)now.tcb[2].state));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 5 - control.pml:22 - [i = 0] (0:30:4 - 1)
		IfNotBlocked
		reached[2][5] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((int)((P2 *)_this)->_4_6_i);
		((P2 *)_this)->_4_6_i = 0;
#ifdef VAR_RANGES
		logval(":init::i", ((int)((P2 *)_this)->_4_6_i));
#endif
		;
		/* merge: highest_prio = 255(30, 6, 30) */
		reached[2][6] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P2 *)_this)->_4_6_highest_prio);
		((P2 *)_this)->_4_6_highest_prio = 255;
#ifdef VAR_RANGES
		logval(":init::highest_prio", ((int)((P2 *)_this)->_4_6_highest_prio));
#endif
		;
		/* merge: top_task = 0(30, 7, 30) */
		reached[2][7] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P2 *)_this)->_4_6_top_task);
		((P2 *)_this)->_4_6_top_task = 0;
#ifdef VAR_RANGES
		logval(":init::top_task", ((int)((P2 *)_this)->_4_6_top_task));
#endif
		;
		/* merge: i = 1(30, 8, 30) */
		reached[2][8] = 1;
		(trpt+1)->bup.ovals[3] = ((int)((P2 *)_this)->_4_6_i);
		((P2 *)_this)->_4_6_i = 1;
#ifdef VAR_RANGES
		logval(":init::i", ((int)((P2 *)_this)->_4_6_i));
#endif
		;
		/* merge: .(goto)(0, 31, 30) */
		reached[2][31] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 8: // STATE 9 - control.pml:28 - [((i<=2))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][9] = 1;
		if (!((((int)((P2 *)_this)->_4_6_i)<=2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 10 - control.pml:30 - [(((tcb[i].state==1)||(tcb[i].state==4)))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][10] = 1;
		if (!(((((int)now.tcb[ Index(((int)((P2 *)_this)->_4_6_i), 3) ].state)==1)||(((int)now.tcb[ Index(((int)((P2 *)_this)->_4_6_i), 3) ].state)==4))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 11 - control.pml:32 - [((tcb[i].prio<highest_prio))] (0:0:1 - 1)
		IfNotBlocked
		reached[2][11] = 1;
		if (!((((int)now.tcb[ Index(((int)((P2 *)_this)->_4_6_i), 3) ].prio)<((int)((P2 *)_this)->_4_6_highest_prio))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _4_6_highest_prio */  (trpt+1)->bup.oval = ((P2 *)_this)->_4_6_highest_prio;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P2 *)_this)->_4_6_highest_prio = 0;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 12 - control.pml:33 - [highest_prio = tcb[i].prio] (0:0:1 - 1)
		IfNotBlocked
		reached[2][12] = 1;
		(trpt+1)->bup.oval = ((int)((P2 *)_this)->_4_6_highest_prio);
		((P2 *)_this)->_4_6_highest_prio = ((int)now.tcb[ Index(((int)((P2 *)_this)->_4_6_i), 3) ].prio);
#ifdef VAR_RANGES
		logval(":init::highest_prio", ((int)((P2 *)_this)->_4_6_highest_prio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 13 - control.pml:34 - [top_task = i] (0:30:2 - 1)
		IfNotBlocked
		reached[2][13] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P2 *)_this)->_4_6_top_task);
		((P2 *)_this)->_4_6_top_task = ((int)((P2 *)_this)->_4_6_i);
#ifdef VAR_RANGES
		logval(":init::top_task", ((int)((P2 *)_this)->_4_6_top_task));
#endif
		;
		/* merge: .(goto)(30, 22, 30) */
		reached[2][22] = 1;
		;
		/* merge: .(goto)(30, 26, 30) */
		reached[2][26] = 1;
		;
		/* merge: i = (i+1)(30, 27, 30) */
		reached[2][27] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P2 *)_this)->_4_6_i);
		((P2 *)_this)->_4_6_i = (((int)((P2 *)_this)->_4_6_i)+1);
#ifdef VAR_RANGES
		logval(":init::i", ((int)((P2 *)_this)->_4_6_i));
#endif
		;
		/* merge: .(goto)(0, 31, 30) */
		reached[2][31] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 13: // STATE 14 - control.pml:35 - [((tcb[i].prio==highest_prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][14] = 1;
		if (!((((int)now.tcb[ Index(((int)((P2 *)_this)->_4_6_i), 3) ].prio)==((int)((P2 *)_this)->_4_6_highest_prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 15 - control.pml:38 - [top_task = i] (0:30:2 - 1)
		IfNotBlocked
		reached[2][15] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P2 *)_this)->_4_6_top_task);
		((P2 *)_this)->_4_6_top_task = ((int)((P2 *)_this)->_4_6_i);
#ifdef VAR_RANGES
		logval(":init::top_task", ((int)((P2 *)_this)->_4_6_top_task));
#endif
		;
		/* merge: .(goto)(30, 18, 30) */
		reached[2][18] = 1;
		;
		/* merge: .(goto)(30, 22, 30) */
		reached[2][22] = 1;
		;
		/* merge: .(goto)(30, 26, 30) */
		reached[2][26] = 1;
		;
		/* merge: i = (i+1)(30, 27, 30) */
		reached[2][27] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P2 *)_this)->_4_6_i);
		((P2 *)_this)->_4_6_i = (((int)((P2 *)_this)->_4_6_i)+1);
#ifdef VAR_RANGES
		logval(":init::i", ((int)((P2 *)_this)->_4_6_i));
#endif
		;
		/* merge: .(goto)(0, 31, 30) */
		reached[2][31] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 15: // STATE 16 - control.pml:39 - [(1)] (30:0:1 - 1)
		IfNotBlocked
		reached[2][16] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(30, 18, 30) */
		reached[2][18] = 1;
		;
		/* merge: .(goto)(30, 22, 30) */
		reached[2][22] = 1;
		;
		/* merge: .(goto)(30, 26, 30) */
		reached[2][26] = 1;
		;
		/* merge: i = (i+1)(30, 27, 30) */
		reached[2][27] = 1;
		(trpt+1)->bup.oval = ((int)((P2 *)_this)->_4_6_i);
		((P2 *)_this)->_4_6_i = (((int)((P2 *)_this)->_4_6_i)+1);
#ifdef VAR_RANGES
		logval(":init::i", ((int)((P2 *)_this)->_4_6_i));
#endif
		;
		/* merge: .(goto)(0, 31, 30) */
		reached[2][31] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 16: // STATE 20 - control.pml:41 - [(1)] (30:0:1 - 1)
		IfNotBlocked
		reached[2][20] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(30, 22, 30) */
		reached[2][22] = 1;
		;
		/* merge: .(goto)(30, 26, 30) */
		reached[2][26] = 1;
		;
		/* merge: i = (i+1)(30, 27, 30) */
		reached[2][27] = 1;
		(trpt+1)->bup.oval = ((int)((P2 *)_this)->_4_6_i);
		((P2 *)_this)->_4_6_i = (((int)((P2 *)_this)->_4_6_i)+1);
#ifdef VAR_RANGES
		logval(":init::i", ((int)((P2 *)_this)->_4_6_i));
#endif
		;
		/* merge: .(goto)(0, 31, 30) */
		reached[2][31] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 17: // STATE 24 - control.pml:43 - [(1)] (30:0:1 - 1)
		IfNotBlocked
		reached[2][24] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(30, 26, 30) */
		reached[2][26] = 1;
		;
		/* merge: i = (i+1)(30, 27, 30) */
		reached[2][27] = 1;
		(trpt+1)->bup.oval = ((int)((P2 *)_this)->_4_6_i);
		((P2 *)_this)->_4_6_i = (((int)((P2 *)_this)->_4_6_i)+1);
#ifdef VAR_RANGES
		logval(":init::i", ((int)((P2 *)_this)->_4_6_i));
#endif
		;
		/* merge: .(goto)(0, 31, 30) */
		reached[2][31] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 18: // STATE 27 - control.pml:45 - [i = (i+1)] (0:30:1 - 8)
		IfNotBlocked
		reached[2][27] = 1;
		(trpt+1)->bup.oval = ((int)((P2 *)_this)->_4_6_i);
		((P2 *)_this)->_4_6_i = (((int)((P2 *)_this)->_4_6_i)+1);
#ifdef VAR_RANGES
		logval(":init::i", ((int)((P2 *)_this)->_4_6_i));
#endif
		;
		/* merge: .(goto)(0, 31, 30) */
		reached[2][31] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 19: // STATE 28 - control.pml:46 - [((i>2))] (0:0:1 - 1)
		IfNotBlocked
		reached[2][28] = 1;
		if (!((((int)((P2 *)_this)->_4_6_i)>2)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _4_6_i */  (trpt+1)->bup.oval = ((P2 *)_this)->_4_6_i;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P2 *)_this)->_4_6_i = 0;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 33 - control.pml:50 - [EP = top_task] (0:0:1 - 3)
		IfNotBlocked
		reached[2][33] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = ((int)((P2 *)_this)->_4_6_top_task);
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 35 - control.pml:88 - [(run Process1())] (0:0:0 - 1)
		IfNotBlocked
		reached[2][35] = 1;
		if (!(addproc(II, 1, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 36 - control.pml:89 - [(run Process2())] (0:0:0 - 1)
		IfNotBlocked
		reached[2][36] = 1;
		if (!(addproc(II, 1, 1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 37 - control.pml:90 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][37] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Process2 */
	case 24: // STATE 1 - control.pml:74 - [((EP==2))] (34:0:0 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		if (!((((int)now.EP)==2)))
			continue;
		/* merge: printf('Process 2 is running\\n')(0, 2, 34) */
		reached[1][2] = 1;
		Printf("Process 2 is running\n");
		_m = 3; goto P999; /* 1 */
	case 25: // STATE 3 - control.pml:74 - [(1)] (73:0:0 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(73, 35, 73) */
		reached[1][35] = 1;
		;
		/* merge: .(goto)(0, 74, 73) */
		reached[1][74] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 26: // STATE 35 - control.pml:74 - [.(goto)] (0:73:0 - 2)
		IfNotBlocked
		reached[1][35] = 1;
		;
		/* merge: .(goto)(0, 74, 73) */
		reached[1][74] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 27: // STATE 4 - control.pml:22 - [i = 0] (0:29:4 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)_this)->_3_4_4_i);
		((P1 *)_this)->_3_4_4_i = 0;
#ifdef VAR_RANGES
		logval("Process2:i", ((int)((P1 *)_this)->_3_4_4_i));
#endif
		;
		/* merge: highest_prio = 255(29, 5, 29) */
		reached[1][5] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)_this)->_3_4_4_highest_prio);
		((P1 *)_this)->_3_4_4_highest_prio = 255;
#ifdef VAR_RANGES
		logval("Process2:highest_prio", ((int)((P1 *)_this)->_3_4_4_highest_prio));
#endif
		;
		/* merge: top_task = 0(29, 6, 29) */
		reached[1][6] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P1 *)_this)->_3_4_4_top_task);
		((P1 *)_this)->_3_4_4_top_task = 0;
#ifdef VAR_RANGES
		logval("Process2:top_task", ((int)((P1 *)_this)->_3_4_4_top_task));
#endif
		;
		/* merge: i = 1(29, 7, 29) */
		reached[1][7] = 1;
		(trpt+1)->bup.ovals[3] = ((int)((P1 *)_this)->_3_4_4_i);
		((P1 *)_this)->_3_4_4_i = 1;
#ifdef VAR_RANGES
		logval("Process2:i", ((int)((P1 *)_this)->_3_4_4_i));
#endif
		;
		/* merge: .(goto)(0, 30, 29) */
		reached[1][30] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 28: // STATE 8 - control.pml:28 - [((i<=2))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][8] = 1;
		if (!((((int)((P1 *)_this)->_3_4_4_i)<=2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 9 - control.pml:30 - [(((tcb[i].state==1)||(tcb[i].state==4)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][9] = 1;
		if (!(((((int)now.tcb[ Index(((int)((P1 *)_this)->_3_4_4_i), 3) ].state)==1)||(((int)now.tcb[ Index(((int)((P1 *)_this)->_3_4_4_i), 3) ].state)==4))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 30: // STATE 10 - control.pml:32 - [((tcb[i].prio<highest_prio))] (29:0:4 - 1)
		IfNotBlocked
		reached[1][10] = 1;
		if (!((((int)now.tcb[ Index(((int)((P1 *)_this)->_3_4_4_i), 3) ].prio)<((int)((P1 *)_this)->_3_4_4_highest_prio))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _3_4_4_highest_prio */  (trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->_3_4_4_highest_prio;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->_3_4_4_highest_prio = 0;
		/* merge: highest_prio = tcb[i].prio(29, 11, 29) */
		reached[1][11] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)_this)->_3_4_4_highest_prio);
		((P1 *)_this)->_3_4_4_highest_prio = ((int)now.tcb[ Index(((int)((P1 *)_this)->_3_4_4_i), 3) ].prio);
#ifdef VAR_RANGES
		logval("Process2:highest_prio", ((int)((P1 *)_this)->_3_4_4_highest_prio));
#endif
		;
		/* merge: top_task = i(29, 12, 29) */
		reached[1][12] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P1 *)_this)->_3_4_4_top_task);
		((P1 *)_this)->_3_4_4_top_task = ((int)((P1 *)_this)->_3_4_4_i);
#ifdef VAR_RANGES
		logval("Process2:top_task", ((int)((P1 *)_this)->_3_4_4_top_task));
#endif
		;
		/* merge: .(goto)(29, 21, 29) */
		reached[1][21] = 1;
		;
		/* merge: .(goto)(29, 25, 29) */
		reached[1][25] = 1;
		;
		/* merge: i = (i+1)(29, 26, 29) */
		reached[1][26] = 1;
		(trpt+1)->bup.ovals[3] = ((int)((P1 *)_this)->_3_4_4_i);
		((P1 *)_this)->_3_4_4_i = (((int)((P1 *)_this)->_3_4_4_i)+1);
#ifdef VAR_RANGES
		logval("Process2:i", ((int)((P1 *)_this)->_3_4_4_i));
#endif
		;
		/* merge: .(goto)(0, 30, 29) */
		reached[1][30] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 31: // STATE 13 - control.pml:35 - [((tcb[i].prio==highest_prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][13] = 1;
		if (!((((int)now.tcb[ Index(((int)((P1 *)_this)->_3_4_4_i), 3) ].prio)==((int)((P1 *)_this)->_3_4_4_highest_prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 14 - control.pml:38 - [top_task = i] (0:29:2 - 1)
		IfNotBlocked
		reached[1][14] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)_this)->_3_4_4_top_task);
		((P1 *)_this)->_3_4_4_top_task = ((int)((P1 *)_this)->_3_4_4_i);
#ifdef VAR_RANGES
		logval("Process2:top_task", ((int)((P1 *)_this)->_3_4_4_top_task));
#endif
		;
		/* merge: .(goto)(29, 17, 29) */
		reached[1][17] = 1;
		;
		/* merge: .(goto)(29, 21, 29) */
		reached[1][21] = 1;
		;
		/* merge: .(goto)(29, 25, 29) */
		reached[1][25] = 1;
		;
		/* merge: i = (i+1)(29, 26, 29) */
		reached[1][26] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)_this)->_3_4_4_i);
		((P1 *)_this)->_3_4_4_i = (((int)((P1 *)_this)->_3_4_4_i)+1);
#ifdef VAR_RANGES
		logval("Process2:i", ((int)((P1 *)_this)->_3_4_4_i));
#endif
		;
		/* merge: .(goto)(0, 30, 29) */
		reached[1][30] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 33: // STATE 15 - control.pml:39 - [(1)] (29:0:1 - 1)
		IfNotBlocked
		reached[1][15] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(29, 17, 29) */
		reached[1][17] = 1;
		;
		/* merge: .(goto)(29, 21, 29) */
		reached[1][21] = 1;
		;
		/* merge: .(goto)(29, 25, 29) */
		reached[1][25] = 1;
		;
		/* merge: i = (i+1)(29, 26, 29) */
		reached[1][26] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)_this)->_3_4_4_i);
		((P1 *)_this)->_3_4_4_i = (((int)((P1 *)_this)->_3_4_4_i)+1);
#ifdef VAR_RANGES
		logval("Process2:i", ((int)((P1 *)_this)->_3_4_4_i));
#endif
		;
		/* merge: .(goto)(0, 30, 29) */
		reached[1][30] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 34: // STATE 19 - control.pml:41 - [(1)] (29:0:1 - 1)
		IfNotBlocked
		reached[1][19] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(29, 21, 29) */
		reached[1][21] = 1;
		;
		/* merge: .(goto)(29, 25, 29) */
		reached[1][25] = 1;
		;
		/* merge: i = (i+1)(29, 26, 29) */
		reached[1][26] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)_this)->_3_4_4_i);
		((P1 *)_this)->_3_4_4_i = (((int)((P1 *)_this)->_3_4_4_i)+1);
#ifdef VAR_RANGES
		logval("Process2:i", ((int)((P1 *)_this)->_3_4_4_i));
#endif
		;
		/* merge: .(goto)(0, 30, 29) */
		reached[1][30] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 35: // STATE 23 - control.pml:43 - [(1)] (29:0:1 - 1)
		IfNotBlocked
		reached[1][23] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(29, 25, 29) */
		reached[1][25] = 1;
		;
		/* merge: i = (i+1)(29, 26, 29) */
		reached[1][26] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)_this)->_3_4_4_i);
		((P1 *)_this)->_3_4_4_i = (((int)((P1 *)_this)->_3_4_4_i)+1);
#ifdef VAR_RANGES
		logval("Process2:i", ((int)((P1 *)_this)->_3_4_4_i));
#endif
		;
		/* merge: .(goto)(0, 30, 29) */
		reached[1][30] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 36: // STATE 26 - control.pml:45 - [i = (i+1)] (0:29:1 - 8)
		IfNotBlocked
		reached[1][26] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)_this)->_3_4_4_i);
		((P1 *)_this)->_3_4_4_i = (((int)((P1 *)_this)->_3_4_4_i)+1);
#ifdef VAR_RANGES
		logval("Process2:i", ((int)((P1 *)_this)->_3_4_4_i));
#endif
		;
		/* merge: .(goto)(0, 30, 29) */
		reached[1][30] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 37: // STATE 27 - control.pml:46 - [((i>2))] (73:0:2 - 1)
		IfNotBlocked
		reached[1][27] = 1;
		if (!((((int)((P1 *)_this)->_3_4_4_i)>2)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _3_4_4_i */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->_3_4_4_i;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->_3_4_4_i = 0;
		/* merge: goto :b5(73, 28, 73) */
		reached[1][28] = 1;
		;
		/* merge: EP = top_task(73, 32, 73) */
		reached[1][32] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.EP);
		now.EP = ((int)((P1 *)_this)->_3_4_4_top_task);
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: .(goto)(73, 35, 73) */
		reached[1][35] = 1;
		;
		/* merge: .(goto)(0, 74, 73) */
		reached[1][74] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 38: // STATE 32 - control.pml:50 - [EP = top_task] (0:73:1 - 3)
		IfNotBlocked
		reached[1][32] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = ((int)((P1 *)_this)->_3_4_4_top_task);
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: .(goto)(73, 35, 73) */
		reached[1][35] = 1;
		;
		/* merge: .(goto)(0, 74, 73) */
		reached[1][74] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 39: // STATE 37 - control.pml:75 - [((EP==2))] (70:0:1 - 1)
		IfNotBlocked
		reached[1][37] = 1;
		if (!((((int)now.EP)==2)))
			continue;
		/* merge: EP = 1(0, 38, 70) */
		reached[1][38] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 40: // STATE 39 - control.pml:75 - [(1)] (73:0:0 - 1)
		IfNotBlocked
		reached[1][39] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(73, 71, 73) */
		reached[1][71] = 1;
		;
		/* merge: .(goto)(0, 74, 73) */
		reached[1][74] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 41: // STATE 71 - control.pml:75 - [.(goto)] (0:73:0 - 2)
		IfNotBlocked
		reached[1][71] = 1;
		;
		/* merge: .(goto)(0, 74, 73) */
		reached[1][74] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 42: // STATE 40 - control.pml:22 - [i = 0] (0:65:4 - 1)
		IfNotBlocked
		reached[1][40] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)_this)->_3_5_5_i);
		((P1 *)_this)->_3_5_5_i = 0;
#ifdef VAR_RANGES
		logval("Process2:i", ((int)((P1 *)_this)->_3_5_5_i));
#endif
		;
		/* merge: highest_prio = 255(65, 41, 65) */
		reached[1][41] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)_this)->_3_5_5_highest_prio);
		((P1 *)_this)->_3_5_5_highest_prio = 255;
#ifdef VAR_RANGES
		logval("Process2:highest_prio", ((int)((P1 *)_this)->_3_5_5_highest_prio));
#endif
		;
		/* merge: top_task = 0(65, 42, 65) */
		reached[1][42] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P1 *)_this)->_3_5_5_top_task);
		((P1 *)_this)->_3_5_5_top_task = 0;
#ifdef VAR_RANGES
		logval("Process2:top_task", ((int)((P1 *)_this)->_3_5_5_top_task));
#endif
		;
		/* merge: i = 1(65, 43, 65) */
		reached[1][43] = 1;
		(trpt+1)->bup.ovals[3] = ((int)((P1 *)_this)->_3_5_5_i);
		((P1 *)_this)->_3_5_5_i = 1;
#ifdef VAR_RANGES
		logval("Process2:i", ((int)((P1 *)_this)->_3_5_5_i));
#endif
		;
		/* merge: .(goto)(0, 66, 65) */
		reached[1][66] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 43: // STATE 44 - control.pml:28 - [((i<=2))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][44] = 1;
		if (!((((int)((P1 *)_this)->_3_5_5_i)<=2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 44: // STATE 45 - control.pml:30 - [(((tcb[i].state==1)||(tcb[i].state==4)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][45] = 1;
		if (!(((((int)now.tcb[ Index(((int)((P1 *)_this)->_3_5_5_i), 3) ].state)==1)||(((int)now.tcb[ Index(((int)((P1 *)_this)->_3_5_5_i), 3) ].state)==4))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 45: // STATE 46 - control.pml:32 - [((tcb[i].prio<highest_prio))] (65:0:4 - 1)
		IfNotBlocked
		reached[1][46] = 1;
		if (!((((int)now.tcb[ Index(((int)((P1 *)_this)->_3_5_5_i), 3) ].prio)<((int)((P1 *)_this)->_3_5_5_highest_prio))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _3_5_5_highest_prio */  (trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->_3_5_5_highest_prio;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->_3_5_5_highest_prio = 0;
		/* merge: highest_prio = tcb[i].prio(65, 47, 65) */
		reached[1][47] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)_this)->_3_5_5_highest_prio);
		((P1 *)_this)->_3_5_5_highest_prio = ((int)now.tcb[ Index(((int)((P1 *)_this)->_3_5_5_i), 3) ].prio);
#ifdef VAR_RANGES
		logval("Process2:highest_prio", ((int)((P1 *)_this)->_3_5_5_highest_prio));
#endif
		;
		/* merge: top_task = i(65, 48, 65) */
		reached[1][48] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P1 *)_this)->_3_5_5_top_task);
		((P1 *)_this)->_3_5_5_top_task = ((int)((P1 *)_this)->_3_5_5_i);
#ifdef VAR_RANGES
		logval("Process2:top_task", ((int)((P1 *)_this)->_3_5_5_top_task));
#endif
		;
		/* merge: .(goto)(65, 57, 65) */
		reached[1][57] = 1;
		;
		/* merge: .(goto)(65, 61, 65) */
		reached[1][61] = 1;
		;
		/* merge: i = (i+1)(65, 62, 65) */
		reached[1][62] = 1;
		(trpt+1)->bup.ovals[3] = ((int)((P1 *)_this)->_3_5_5_i);
		((P1 *)_this)->_3_5_5_i = (((int)((P1 *)_this)->_3_5_5_i)+1);
#ifdef VAR_RANGES
		logval("Process2:i", ((int)((P1 *)_this)->_3_5_5_i));
#endif
		;
		/* merge: .(goto)(0, 66, 65) */
		reached[1][66] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 46: // STATE 49 - control.pml:35 - [((tcb[i].prio==highest_prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][49] = 1;
		if (!((((int)now.tcb[ Index(((int)((P1 *)_this)->_3_5_5_i), 3) ].prio)==((int)((P1 *)_this)->_3_5_5_highest_prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 47: // STATE 50 - control.pml:38 - [top_task = i] (0:65:2 - 1)
		IfNotBlocked
		reached[1][50] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)_this)->_3_5_5_top_task);
		((P1 *)_this)->_3_5_5_top_task = ((int)((P1 *)_this)->_3_5_5_i);
#ifdef VAR_RANGES
		logval("Process2:top_task", ((int)((P1 *)_this)->_3_5_5_top_task));
#endif
		;
		/* merge: .(goto)(65, 53, 65) */
		reached[1][53] = 1;
		;
		/* merge: .(goto)(65, 57, 65) */
		reached[1][57] = 1;
		;
		/* merge: .(goto)(65, 61, 65) */
		reached[1][61] = 1;
		;
		/* merge: i = (i+1)(65, 62, 65) */
		reached[1][62] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)_this)->_3_5_5_i);
		((P1 *)_this)->_3_5_5_i = (((int)((P1 *)_this)->_3_5_5_i)+1);
#ifdef VAR_RANGES
		logval("Process2:i", ((int)((P1 *)_this)->_3_5_5_i));
#endif
		;
		/* merge: .(goto)(0, 66, 65) */
		reached[1][66] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 48: // STATE 51 - control.pml:39 - [(1)] (65:0:1 - 1)
		IfNotBlocked
		reached[1][51] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(65, 53, 65) */
		reached[1][53] = 1;
		;
		/* merge: .(goto)(65, 57, 65) */
		reached[1][57] = 1;
		;
		/* merge: .(goto)(65, 61, 65) */
		reached[1][61] = 1;
		;
		/* merge: i = (i+1)(65, 62, 65) */
		reached[1][62] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)_this)->_3_5_5_i);
		((P1 *)_this)->_3_5_5_i = (((int)((P1 *)_this)->_3_5_5_i)+1);
#ifdef VAR_RANGES
		logval("Process2:i", ((int)((P1 *)_this)->_3_5_5_i));
#endif
		;
		/* merge: .(goto)(0, 66, 65) */
		reached[1][66] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 49: // STATE 55 - control.pml:41 - [(1)] (65:0:1 - 1)
		IfNotBlocked
		reached[1][55] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(65, 57, 65) */
		reached[1][57] = 1;
		;
		/* merge: .(goto)(65, 61, 65) */
		reached[1][61] = 1;
		;
		/* merge: i = (i+1)(65, 62, 65) */
		reached[1][62] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)_this)->_3_5_5_i);
		((P1 *)_this)->_3_5_5_i = (((int)((P1 *)_this)->_3_5_5_i)+1);
#ifdef VAR_RANGES
		logval("Process2:i", ((int)((P1 *)_this)->_3_5_5_i));
#endif
		;
		/* merge: .(goto)(0, 66, 65) */
		reached[1][66] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 50: // STATE 59 - control.pml:43 - [(1)] (65:0:1 - 1)
		IfNotBlocked
		reached[1][59] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(65, 61, 65) */
		reached[1][61] = 1;
		;
		/* merge: i = (i+1)(65, 62, 65) */
		reached[1][62] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)_this)->_3_5_5_i);
		((P1 *)_this)->_3_5_5_i = (((int)((P1 *)_this)->_3_5_5_i)+1);
#ifdef VAR_RANGES
		logval("Process2:i", ((int)((P1 *)_this)->_3_5_5_i));
#endif
		;
		/* merge: .(goto)(0, 66, 65) */
		reached[1][66] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 51: // STATE 62 - control.pml:45 - [i = (i+1)] (0:65:1 - 8)
		IfNotBlocked
		reached[1][62] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)_this)->_3_5_5_i);
		((P1 *)_this)->_3_5_5_i = (((int)((P1 *)_this)->_3_5_5_i)+1);
#ifdef VAR_RANGES
		logval("Process2:i", ((int)((P1 *)_this)->_3_5_5_i));
#endif
		;
		/* merge: .(goto)(0, 66, 65) */
		reached[1][66] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 52: // STATE 63 - control.pml:46 - [((i>2))] (73:0:2 - 1)
		IfNotBlocked
		reached[1][63] = 1;
		if (!((((int)((P1 *)_this)->_3_5_5_i)>2)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _3_5_5_i */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->_3_5_5_i;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->_3_5_5_i = 0;
		/* merge: goto :b6(73, 64, 73) */
		reached[1][64] = 1;
		;
		/* merge: EP = top_task(73, 68, 73) */
		reached[1][68] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.EP);
		now.EP = ((int)((P1 *)_this)->_3_5_5_top_task);
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: .(goto)(73, 71, 73) */
		reached[1][71] = 1;
		;
		/* merge: .(goto)(0, 74, 73) */
		reached[1][74] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 53: // STATE 68 - control.pml:50 - [EP = top_task] (0:73:1 - 3)
		IfNotBlocked
		reached[1][68] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = ((int)((P1 *)_this)->_3_5_5_top_task);
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: .(goto)(73, 71, 73) */
		reached[1][71] = 1;
		;
		/* merge: .(goto)(0, 74, 73) */
		reached[1][74] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 54: // STATE 76 - control.pml:77 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][76] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Process1 */
	case 55: // STATE 1 - control.pml:66 - [((EP==1))] (34:0:0 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		if (!((((int)now.EP)==1)))
			continue;
		/* merge: printf('Process 1 is running\\n')(0, 2, 34) */
		reached[0][2] = 1;
		Printf("Process 1 is running\n");
		_m = 3; goto P999; /* 1 */
	case 56: // STATE 3 - control.pml:66 - [(1)] (109:0:0 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(109, 35, 109) */
		reached[0][35] = 1;
		;
		/* merge: .(goto)(0, 110, 109) */
		reached[0][110] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 57: // STATE 35 - control.pml:66 - [.(goto)] (0:109:0 - 2)
		IfNotBlocked
		reached[0][35] = 1;
		;
		/* merge: .(goto)(0, 110, 109) */
		reached[0][110] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 58: // STATE 4 - control.pml:22 - [i = 0] (0:29:4 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->_2_1_1_i);
		((P0 *)_this)->_2_1_1_i = 0;
#ifdef VAR_RANGES
		logval("Process1:i", ((int)((P0 *)_this)->_2_1_1_i));
#endif
		;
		/* merge: highest_prio = 255(29, 5, 29) */
		reached[0][5] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->_2_1_1_highest_prio);
		((P0 *)_this)->_2_1_1_highest_prio = 255;
#ifdef VAR_RANGES
		logval("Process1:highest_prio", ((int)((P0 *)_this)->_2_1_1_highest_prio));
#endif
		;
		/* merge: top_task = 0(29, 6, 29) */
		reached[0][6] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P0 *)_this)->_2_1_1_top_task);
		((P0 *)_this)->_2_1_1_top_task = 0;
#ifdef VAR_RANGES
		logval("Process1:top_task", ((int)((P0 *)_this)->_2_1_1_top_task));
#endif
		;
		/* merge: i = 1(29, 7, 29) */
		reached[0][7] = 1;
		(trpt+1)->bup.ovals[3] = ((int)((P0 *)_this)->_2_1_1_i);
		((P0 *)_this)->_2_1_1_i = 1;
#ifdef VAR_RANGES
		logval("Process1:i", ((int)((P0 *)_this)->_2_1_1_i));
#endif
		;
		/* merge: .(goto)(0, 30, 29) */
		reached[0][30] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 59: // STATE 8 - control.pml:28 - [((i<=2))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][8] = 1;
		if (!((((int)((P0 *)_this)->_2_1_1_i)<=2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 60: // STATE 9 - control.pml:30 - [(((tcb[i].state==1)||(tcb[i].state==4)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][9] = 1;
		if (!(((((int)now.tcb[ Index(((int)((P0 *)_this)->_2_1_1_i), 3) ].state)==1)||(((int)now.tcb[ Index(((int)((P0 *)_this)->_2_1_1_i), 3) ].state)==4))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 61: // STATE 10 - control.pml:32 - [((tcb[i].prio<highest_prio))] (29:0:4 - 1)
		IfNotBlocked
		reached[0][10] = 1;
		if (!((((int)now.tcb[ Index(((int)((P0 *)_this)->_2_1_1_i), 3) ].prio)<((int)((P0 *)_this)->_2_1_1_highest_prio))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _2_1_1_highest_prio */  (trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->_2_1_1_highest_prio;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->_2_1_1_highest_prio = 0;
		/* merge: highest_prio = tcb[i].prio(29, 11, 29) */
		reached[0][11] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->_2_1_1_highest_prio);
		((P0 *)_this)->_2_1_1_highest_prio = ((int)now.tcb[ Index(((int)((P0 *)_this)->_2_1_1_i), 3) ].prio);
#ifdef VAR_RANGES
		logval("Process1:highest_prio", ((int)((P0 *)_this)->_2_1_1_highest_prio));
#endif
		;
		/* merge: top_task = i(29, 12, 29) */
		reached[0][12] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P0 *)_this)->_2_1_1_top_task);
		((P0 *)_this)->_2_1_1_top_task = ((int)((P0 *)_this)->_2_1_1_i);
#ifdef VAR_RANGES
		logval("Process1:top_task", ((int)((P0 *)_this)->_2_1_1_top_task));
#endif
		;
		/* merge: .(goto)(29, 21, 29) */
		reached[0][21] = 1;
		;
		/* merge: .(goto)(29, 25, 29) */
		reached[0][25] = 1;
		;
		/* merge: i = (i+1)(29, 26, 29) */
		reached[0][26] = 1;
		(trpt+1)->bup.ovals[3] = ((int)((P0 *)_this)->_2_1_1_i);
		((P0 *)_this)->_2_1_1_i = (((int)((P0 *)_this)->_2_1_1_i)+1);
#ifdef VAR_RANGES
		logval("Process1:i", ((int)((P0 *)_this)->_2_1_1_i));
#endif
		;
		/* merge: .(goto)(0, 30, 29) */
		reached[0][30] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 62: // STATE 13 - control.pml:35 - [((tcb[i].prio==highest_prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][13] = 1;
		if (!((((int)now.tcb[ Index(((int)((P0 *)_this)->_2_1_1_i), 3) ].prio)==((int)((P0 *)_this)->_2_1_1_highest_prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 63: // STATE 14 - control.pml:38 - [top_task = i] (0:29:2 - 1)
		IfNotBlocked
		reached[0][14] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->_2_1_1_top_task);
		((P0 *)_this)->_2_1_1_top_task = ((int)((P0 *)_this)->_2_1_1_i);
#ifdef VAR_RANGES
		logval("Process1:top_task", ((int)((P0 *)_this)->_2_1_1_top_task));
#endif
		;
		/* merge: .(goto)(29, 17, 29) */
		reached[0][17] = 1;
		;
		/* merge: .(goto)(29, 21, 29) */
		reached[0][21] = 1;
		;
		/* merge: .(goto)(29, 25, 29) */
		reached[0][25] = 1;
		;
		/* merge: i = (i+1)(29, 26, 29) */
		reached[0][26] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->_2_1_1_i);
		((P0 *)_this)->_2_1_1_i = (((int)((P0 *)_this)->_2_1_1_i)+1);
#ifdef VAR_RANGES
		logval("Process1:i", ((int)((P0 *)_this)->_2_1_1_i));
#endif
		;
		/* merge: .(goto)(0, 30, 29) */
		reached[0][30] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 64: // STATE 15 - control.pml:39 - [(1)] (29:0:1 - 1)
		IfNotBlocked
		reached[0][15] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(29, 17, 29) */
		reached[0][17] = 1;
		;
		/* merge: .(goto)(29, 21, 29) */
		reached[0][21] = 1;
		;
		/* merge: .(goto)(29, 25, 29) */
		reached[0][25] = 1;
		;
		/* merge: i = (i+1)(29, 26, 29) */
		reached[0][26] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->_2_1_1_i);
		((P0 *)_this)->_2_1_1_i = (((int)((P0 *)_this)->_2_1_1_i)+1);
#ifdef VAR_RANGES
		logval("Process1:i", ((int)((P0 *)_this)->_2_1_1_i));
#endif
		;
		/* merge: .(goto)(0, 30, 29) */
		reached[0][30] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 65: // STATE 19 - control.pml:41 - [(1)] (29:0:1 - 1)
		IfNotBlocked
		reached[0][19] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(29, 21, 29) */
		reached[0][21] = 1;
		;
		/* merge: .(goto)(29, 25, 29) */
		reached[0][25] = 1;
		;
		/* merge: i = (i+1)(29, 26, 29) */
		reached[0][26] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->_2_1_1_i);
		((P0 *)_this)->_2_1_1_i = (((int)((P0 *)_this)->_2_1_1_i)+1);
#ifdef VAR_RANGES
		logval("Process1:i", ((int)((P0 *)_this)->_2_1_1_i));
#endif
		;
		/* merge: .(goto)(0, 30, 29) */
		reached[0][30] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 66: // STATE 23 - control.pml:43 - [(1)] (29:0:1 - 1)
		IfNotBlocked
		reached[0][23] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(29, 25, 29) */
		reached[0][25] = 1;
		;
		/* merge: i = (i+1)(29, 26, 29) */
		reached[0][26] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->_2_1_1_i);
		((P0 *)_this)->_2_1_1_i = (((int)((P0 *)_this)->_2_1_1_i)+1);
#ifdef VAR_RANGES
		logval("Process1:i", ((int)((P0 *)_this)->_2_1_1_i));
#endif
		;
		/* merge: .(goto)(0, 30, 29) */
		reached[0][30] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 67: // STATE 26 - control.pml:45 - [i = (i+1)] (0:29:1 - 8)
		IfNotBlocked
		reached[0][26] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->_2_1_1_i);
		((P0 *)_this)->_2_1_1_i = (((int)((P0 *)_this)->_2_1_1_i)+1);
#ifdef VAR_RANGES
		logval("Process1:i", ((int)((P0 *)_this)->_2_1_1_i));
#endif
		;
		/* merge: .(goto)(0, 30, 29) */
		reached[0][30] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 68: // STATE 27 - control.pml:46 - [((i>2))] (109:0:2 - 1)
		IfNotBlocked
		reached[0][27] = 1;
		if (!((((int)((P0 *)_this)->_2_1_1_i)>2)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _2_1_1_i */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->_2_1_1_i;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->_2_1_1_i = 0;
		/* merge: goto :b1(109, 28, 109) */
		reached[0][28] = 1;
		;
		/* merge: EP = top_task(109, 32, 109) */
		reached[0][32] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.EP);
		now.EP = ((int)((P0 *)_this)->_2_1_1_top_task);
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: .(goto)(109, 35, 109) */
		reached[0][35] = 1;
		;
		/* merge: .(goto)(0, 110, 109) */
		reached[0][110] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 69: // STATE 32 - control.pml:50 - [EP = top_task] (0:109:1 - 3)
		IfNotBlocked
		reached[0][32] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = ((int)((P0 *)_this)->_2_1_1_top_task);
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: .(goto)(109, 35, 109) */
		reached[0][35] = 1;
		;
		/* merge: .(goto)(0, 110, 109) */
		reached[0][110] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 70: // STATE 37 - control.pml:67 - [((EP==1))] (70:0:0 - 1)
		IfNotBlocked
		reached[0][37] = 1;
		if (!((((int)now.EP)==1)))
			continue;
		/* merge: assert((EP==1))(0, 38, 70) */
		reached[0][38] = 1;
		spin_assert((((int)now.EP)==1), "(EP==1)", II, tt, t);
		_m = 3; goto P999; /* 1 */
	case 71: // STATE 39 - control.pml:67 - [(1)] (109:0:0 - 1)
		IfNotBlocked
		reached[0][39] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(109, 71, 109) */
		reached[0][71] = 1;
		;
		/* merge: .(goto)(0, 110, 109) */
		reached[0][110] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 72: // STATE 71 - control.pml:67 - [.(goto)] (0:109:0 - 2)
		IfNotBlocked
		reached[0][71] = 1;
		;
		/* merge: .(goto)(0, 110, 109) */
		reached[0][110] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 73: // STATE 40 - control.pml:22 - [i = 0] (0:65:4 - 1)
		IfNotBlocked
		reached[0][40] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->_2_2_2_i);
		((P0 *)_this)->_2_2_2_i = 0;
#ifdef VAR_RANGES
		logval("Process1:i", ((int)((P0 *)_this)->_2_2_2_i));
#endif
		;
		/* merge: highest_prio = 255(65, 41, 65) */
		reached[0][41] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->_2_2_2_highest_prio);
		((P0 *)_this)->_2_2_2_highest_prio = 255;
#ifdef VAR_RANGES
		logval("Process1:highest_prio", ((int)((P0 *)_this)->_2_2_2_highest_prio));
#endif
		;
		/* merge: top_task = 0(65, 42, 65) */
		reached[0][42] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P0 *)_this)->_2_2_2_top_task);
		((P0 *)_this)->_2_2_2_top_task = 0;
#ifdef VAR_RANGES
		logval("Process1:top_task", ((int)((P0 *)_this)->_2_2_2_top_task));
#endif
		;
		/* merge: i = 1(65, 43, 65) */
		reached[0][43] = 1;
		(trpt+1)->bup.ovals[3] = ((int)((P0 *)_this)->_2_2_2_i);
		((P0 *)_this)->_2_2_2_i = 1;
#ifdef VAR_RANGES
		logval("Process1:i", ((int)((P0 *)_this)->_2_2_2_i));
#endif
		;
		/* merge: .(goto)(0, 66, 65) */
		reached[0][66] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 74: // STATE 44 - control.pml:28 - [((i<=2))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][44] = 1;
		if (!((((int)((P0 *)_this)->_2_2_2_i)<=2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 75: // STATE 45 - control.pml:30 - [(((tcb[i].state==1)||(tcb[i].state==4)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][45] = 1;
		if (!(((((int)now.tcb[ Index(((int)((P0 *)_this)->_2_2_2_i), 3) ].state)==1)||(((int)now.tcb[ Index(((int)((P0 *)_this)->_2_2_2_i), 3) ].state)==4))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 76: // STATE 46 - control.pml:32 - [((tcb[i].prio<highest_prio))] (65:0:4 - 1)
		IfNotBlocked
		reached[0][46] = 1;
		if (!((((int)now.tcb[ Index(((int)((P0 *)_this)->_2_2_2_i), 3) ].prio)<((int)((P0 *)_this)->_2_2_2_highest_prio))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _2_2_2_highest_prio */  (trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->_2_2_2_highest_prio;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->_2_2_2_highest_prio = 0;
		/* merge: highest_prio = tcb[i].prio(65, 47, 65) */
		reached[0][47] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->_2_2_2_highest_prio);
		((P0 *)_this)->_2_2_2_highest_prio = ((int)now.tcb[ Index(((int)((P0 *)_this)->_2_2_2_i), 3) ].prio);
#ifdef VAR_RANGES
		logval("Process1:highest_prio", ((int)((P0 *)_this)->_2_2_2_highest_prio));
#endif
		;
		/* merge: top_task = i(65, 48, 65) */
		reached[0][48] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P0 *)_this)->_2_2_2_top_task);
		((P0 *)_this)->_2_2_2_top_task = ((int)((P0 *)_this)->_2_2_2_i);
#ifdef VAR_RANGES
		logval("Process1:top_task", ((int)((P0 *)_this)->_2_2_2_top_task));
#endif
		;
		/* merge: .(goto)(65, 57, 65) */
		reached[0][57] = 1;
		;
		/* merge: .(goto)(65, 61, 65) */
		reached[0][61] = 1;
		;
		/* merge: i = (i+1)(65, 62, 65) */
		reached[0][62] = 1;
		(trpt+1)->bup.ovals[3] = ((int)((P0 *)_this)->_2_2_2_i);
		((P0 *)_this)->_2_2_2_i = (((int)((P0 *)_this)->_2_2_2_i)+1);
#ifdef VAR_RANGES
		logval("Process1:i", ((int)((P0 *)_this)->_2_2_2_i));
#endif
		;
		/* merge: .(goto)(0, 66, 65) */
		reached[0][66] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 77: // STATE 49 - control.pml:35 - [((tcb[i].prio==highest_prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][49] = 1;
		if (!((((int)now.tcb[ Index(((int)((P0 *)_this)->_2_2_2_i), 3) ].prio)==((int)((P0 *)_this)->_2_2_2_highest_prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 78: // STATE 50 - control.pml:38 - [top_task = i] (0:65:2 - 1)
		IfNotBlocked
		reached[0][50] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->_2_2_2_top_task);
		((P0 *)_this)->_2_2_2_top_task = ((int)((P0 *)_this)->_2_2_2_i);
#ifdef VAR_RANGES
		logval("Process1:top_task", ((int)((P0 *)_this)->_2_2_2_top_task));
#endif
		;
		/* merge: .(goto)(65, 53, 65) */
		reached[0][53] = 1;
		;
		/* merge: .(goto)(65, 57, 65) */
		reached[0][57] = 1;
		;
		/* merge: .(goto)(65, 61, 65) */
		reached[0][61] = 1;
		;
		/* merge: i = (i+1)(65, 62, 65) */
		reached[0][62] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->_2_2_2_i);
		((P0 *)_this)->_2_2_2_i = (((int)((P0 *)_this)->_2_2_2_i)+1);
#ifdef VAR_RANGES
		logval("Process1:i", ((int)((P0 *)_this)->_2_2_2_i));
#endif
		;
		/* merge: .(goto)(0, 66, 65) */
		reached[0][66] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 79: // STATE 51 - control.pml:39 - [(1)] (65:0:1 - 1)
		IfNotBlocked
		reached[0][51] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(65, 53, 65) */
		reached[0][53] = 1;
		;
		/* merge: .(goto)(65, 57, 65) */
		reached[0][57] = 1;
		;
		/* merge: .(goto)(65, 61, 65) */
		reached[0][61] = 1;
		;
		/* merge: i = (i+1)(65, 62, 65) */
		reached[0][62] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->_2_2_2_i);
		((P0 *)_this)->_2_2_2_i = (((int)((P0 *)_this)->_2_2_2_i)+1);
#ifdef VAR_RANGES
		logval("Process1:i", ((int)((P0 *)_this)->_2_2_2_i));
#endif
		;
		/* merge: .(goto)(0, 66, 65) */
		reached[0][66] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 80: // STATE 55 - control.pml:41 - [(1)] (65:0:1 - 1)
		IfNotBlocked
		reached[0][55] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(65, 57, 65) */
		reached[0][57] = 1;
		;
		/* merge: .(goto)(65, 61, 65) */
		reached[0][61] = 1;
		;
		/* merge: i = (i+1)(65, 62, 65) */
		reached[0][62] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->_2_2_2_i);
		((P0 *)_this)->_2_2_2_i = (((int)((P0 *)_this)->_2_2_2_i)+1);
#ifdef VAR_RANGES
		logval("Process1:i", ((int)((P0 *)_this)->_2_2_2_i));
#endif
		;
		/* merge: .(goto)(0, 66, 65) */
		reached[0][66] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 81: // STATE 59 - control.pml:43 - [(1)] (65:0:1 - 1)
		IfNotBlocked
		reached[0][59] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(65, 61, 65) */
		reached[0][61] = 1;
		;
		/* merge: i = (i+1)(65, 62, 65) */
		reached[0][62] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->_2_2_2_i);
		((P0 *)_this)->_2_2_2_i = (((int)((P0 *)_this)->_2_2_2_i)+1);
#ifdef VAR_RANGES
		logval("Process1:i", ((int)((P0 *)_this)->_2_2_2_i));
#endif
		;
		/* merge: .(goto)(0, 66, 65) */
		reached[0][66] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 82: // STATE 62 - control.pml:45 - [i = (i+1)] (0:65:1 - 8)
		IfNotBlocked
		reached[0][62] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->_2_2_2_i);
		((P0 *)_this)->_2_2_2_i = (((int)((P0 *)_this)->_2_2_2_i)+1);
#ifdef VAR_RANGES
		logval("Process1:i", ((int)((P0 *)_this)->_2_2_2_i));
#endif
		;
		/* merge: .(goto)(0, 66, 65) */
		reached[0][66] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 83: // STATE 63 - control.pml:46 - [((i>2))] (109:0:2 - 1)
		IfNotBlocked
		reached[0][63] = 1;
		if (!((((int)((P0 *)_this)->_2_2_2_i)>2)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _2_2_2_i */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->_2_2_2_i;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->_2_2_2_i = 0;
		/* merge: goto :b2(109, 64, 109) */
		reached[0][64] = 1;
		;
		/* merge: EP = top_task(109, 68, 109) */
		reached[0][68] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.EP);
		now.EP = ((int)((P0 *)_this)->_2_2_2_top_task);
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: .(goto)(109, 71, 109) */
		reached[0][71] = 1;
		;
		/* merge: .(goto)(0, 110, 109) */
		reached[0][110] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 84: // STATE 68 - control.pml:50 - [EP = top_task] (0:109:1 - 3)
		IfNotBlocked
		reached[0][68] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = ((int)((P0 *)_this)->_2_2_2_top_task);
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: .(goto)(109, 71, 109) */
		reached[0][71] = 1;
		;
		/* merge: .(goto)(0, 110, 109) */
		reached[0][110] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 85: // STATE 73 - control.pml:68 - [((EP==1))] (106:0:1 - 1)
		IfNotBlocked
		reached[0][73] = 1;
		if (!((((int)now.EP)==1)))
			continue;
		/* merge: EP = 2(0, 74, 106) */
		reached[0][74] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 86: // STATE 75 - control.pml:68 - [(1)] (109:0:0 - 1)
		IfNotBlocked
		reached[0][75] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(109, 107, 109) */
		reached[0][107] = 1;
		;
		/* merge: .(goto)(0, 110, 109) */
		reached[0][110] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 87: // STATE 107 - control.pml:68 - [.(goto)] (0:109:0 - 2)
		IfNotBlocked
		reached[0][107] = 1;
		;
		/* merge: .(goto)(0, 110, 109) */
		reached[0][110] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 88: // STATE 76 - control.pml:22 - [i = 0] (0:101:4 - 1)
		IfNotBlocked
		reached[0][76] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->_2_3_3_i);
		((P0 *)_this)->_2_3_3_i = 0;
#ifdef VAR_RANGES
		logval("Process1:i", ((int)((P0 *)_this)->_2_3_3_i));
#endif
		;
		/* merge: highest_prio = 255(101, 77, 101) */
		reached[0][77] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->_2_3_3_highest_prio);
		((P0 *)_this)->_2_3_3_highest_prio = 255;
#ifdef VAR_RANGES
		logval("Process1:highest_prio", ((int)((P0 *)_this)->_2_3_3_highest_prio));
#endif
		;
		/* merge: top_task = 0(101, 78, 101) */
		reached[0][78] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P0 *)_this)->_2_3_3_top_task);
		((P0 *)_this)->_2_3_3_top_task = 0;
#ifdef VAR_RANGES
		logval("Process1:top_task", ((int)((P0 *)_this)->_2_3_3_top_task));
#endif
		;
		/* merge: i = 1(101, 79, 101) */
		reached[0][79] = 1;
		(trpt+1)->bup.ovals[3] = ((int)((P0 *)_this)->_2_3_3_i);
		((P0 *)_this)->_2_3_3_i = 1;
#ifdef VAR_RANGES
		logval("Process1:i", ((int)((P0 *)_this)->_2_3_3_i));
#endif
		;
		/* merge: .(goto)(0, 102, 101) */
		reached[0][102] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 89: // STATE 80 - control.pml:28 - [((i<=2))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][80] = 1;
		if (!((((int)((P0 *)_this)->_2_3_3_i)<=2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 90: // STATE 81 - control.pml:30 - [(((tcb[i].state==1)||(tcb[i].state==4)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][81] = 1;
		if (!(((((int)now.tcb[ Index(((int)((P0 *)_this)->_2_3_3_i), 3) ].state)==1)||(((int)now.tcb[ Index(((int)((P0 *)_this)->_2_3_3_i), 3) ].state)==4))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 91: // STATE 82 - control.pml:32 - [((tcb[i].prio<highest_prio))] (101:0:4 - 1)
		IfNotBlocked
		reached[0][82] = 1;
		if (!((((int)now.tcb[ Index(((int)((P0 *)_this)->_2_3_3_i), 3) ].prio)<((int)((P0 *)_this)->_2_3_3_highest_prio))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _2_3_3_highest_prio */  (trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->_2_3_3_highest_prio;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->_2_3_3_highest_prio = 0;
		/* merge: highest_prio = tcb[i].prio(101, 83, 101) */
		reached[0][83] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->_2_3_3_highest_prio);
		((P0 *)_this)->_2_3_3_highest_prio = ((int)now.tcb[ Index(((int)((P0 *)_this)->_2_3_3_i), 3) ].prio);
#ifdef VAR_RANGES
		logval("Process1:highest_prio", ((int)((P0 *)_this)->_2_3_3_highest_prio));
#endif
		;
		/* merge: top_task = i(101, 84, 101) */
		reached[0][84] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P0 *)_this)->_2_3_3_top_task);
		((P0 *)_this)->_2_3_3_top_task = ((int)((P0 *)_this)->_2_3_3_i);
#ifdef VAR_RANGES
		logval("Process1:top_task", ((int)((P0 *)_this)->_2_3_3_top_task));
#endif
		;
		/* merge: .(goto)(101, 93, 101) */
		reached[0][93] = 1;
		;
		/* merge: .(goto)(101, 97, 101) */
		reached[0][97] = 1;
		;
		/* merge: i = (i+1)(101, 98, 101) */
		reached[0][98] = 1;
		(trpt+1)->bup.ovals[3] = ((int)((P0 *)_this)->_2_3_3_i);
		((P0 *)_this)->_2_3_3_i = (((int)((P0 *)_this)->_2_3_3_i)+1);
#ifdef VAR_RANGES
		logval("Process1:i", ((int)((P0 *)_this)->_2_3_3_i));
#endif
		;
		/* merge: .(goto)(0, 102, 101) */
		reached[0][102] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 92: // STATE 85 - control.pml:35 - [((tcb[i].prio==highest_prio))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][85] = 1;
		if (!((((int)now.tcb[ Index(((int)((P0 *)_this)->_2_3_3_i), 3) ].prio)==((int)((P0 *)_this)->_2_3_3_highest_prio))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 93: // STATE 86 - control.pml:38 - [top_task = i] (0:101:2 - 1)
		IfNotBlocked
		reached[0][86] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->_2_3_3_top_task);
		((P0 *)_this)->_2_3_3_top_task = ((int)((P0 *)_this)->_2_3_3_i);
#ifdef VAR_RANGES
		logval("Process1:top_task", ((int)((P0 *)_this)->_2_3_3_top_task));
#endif
		;
		/* merge: .(goto)(101, 89, 101) */
		reached[0][89] = 1;
		;
		/* merge: .(goto)(101, 93, 101) */
		reached[0][93] = 1;
		;
		/* merge: .(goto)(101, 97, 101) */
		reached[0][97] = 1;
		;
		/* merge: i = (i+1)(101, 98, 101) */
		reached[0][98] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->_2_3_3_i);
		((P0 *)_this)->_2_3_3_i = (((int)((P0 *)_this)->_2_3_3_i)+1);
#ifdef VAR_RANGES
		logval("Process1:i", ((int)((P0 *)_this)->_2_3_3_i));
#endif
		;
		/* merge: .(goto)(0, 102, 101) */
		reached[0][102] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 94: // STATE 87 - control.pml:39 - [(1)] (101:0:1 - 1)
		IfNotBlocked
		reached[0][87] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(101, 89, 101) */
		reached[0][89] = 1;
		;
		/* merge: .(goto)(101, 93, 101) */
		reached[0][93] = 1;
		;
		/* merge: .(goto)(101, 97, 101) */
		reached[0][97] = 1;
		;
		/* merge: i = (i+1)(101, 98, 101) */
		reached[0][98] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->_2_3_3_i);
		((P0 *)_this)->_2_3_3_i = (((int)((P0 *)_this)->_2_3_3_i)+1);
#ifdef VAR_RANGES
		logval("Process1:i", ((int)((P0 *)_this)->_2_3_3_i));
#endif
		;
		/* merge: .(goto)(0, 102, 101) */
		reached[0][102] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 95: // STATE 91 - control.pml:41 - [(1)] (101:0:1 - 1)
		IfNotBlocked
		reached[0][91] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(101, 93, 101) */
		reached[0][93] = 1;
		;
		/* merge: .(goto)(101, 97, 101) */
		reached[0][97] = 1;
		;
		/* merge: i = (i+1)(101, 98, 101) */
		reached[0][98] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->_2_3_3_i);
		((P0 *)_this)->_2_3_3_i = (((int)((P0 *)_this)->_2_3_3_i)+1);
#ifdef VAR_RANGES
		logval("Process1:i", ((int)((P0 *)_this)->_2_3_3_i));
#endif
		;
		/* merge: .(goto)(0, 102, 101) */
		reached[0][102] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 96: // STATE 95 - control.pml:43 - [(1)] (101:0:1 - 1)
		IfNotBlocked
		reached[0][95] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(101, 97, 101) */
		reached[0][97] = 1;
		;
		/* merge: i = (i+1)(101, 98, 101) */
		reached[0][98] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->_2_3_3_i);
		((P0 *)_this)->_2_3_3_i = (((int)((P0 *)_this)->_2_3_3_i)+1);
#ifdef VAR_RANGES
		logval("Process1:i", ((int)((P0 *)_this)->_2_3_3_i));
#endif
		;
		/* merge: .(goto)(0, 102, 101) */
		reached[0][102] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 97: // STATE 98 - control.pml:45 - [i = (i+1)] (0:101:1 - 8)
		IfNotBlocked
		reached[0][98] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->_2_3_3_i);
		((P0 *)_this)->_2_3_3_i = (((int)((P0 *)_this)->_2_3_3_i)+1);
#ifdef VAR_RANGES
		logval("Process1:i", ((int)((P0 *)_this)->_2_3_3_i));
#endif
		;
		/* merge: .(goto)(0, 102, 101) */
		reached[0][102] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 98: // STATE 99 - control.pml:46 - [((i>2))] (109:0:2 - 1)
		IfNotBlocked
		reached[0][99] = 1;
		if (!((((int)((P0 *)_this)->_2_3_3_i)>2)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _2_3_3_i */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->_2_3_3_i;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->_2_3_3_i = 0;
		/* merge: goto :b3(109, 100, 109) */
		reached[0][100] = 1;
		;
		/* merge: EP = top_task(109, 104, 109) */
		reached[0][104] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.EP);
		now.EP = ((int)((P0 *)_this)->_2_3_3_top_task);
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: .(goto)(109, 107, 109) */
		reached[0][107] = 1;
		;
		/* merge: .(goto)(0, 110, 109) */
		reached[0][110] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 99: // STATE 104 - control.pml:50 - [EP = top_task] (0:109:1 - 3)
		IfNotBlocked
		reached[0][104] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = ((int)((P0 *)_this)->_2_3_3_top_task);
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: .(goto)(109, 107, 109) */
		reached[0][107] = 1;
		;
		/* merge: .(goto)(0, 110, 109) */
		reached[0][110] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 100: // STATE 112 - control.pml:70 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][112] = 1;
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

