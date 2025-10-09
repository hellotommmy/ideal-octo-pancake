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

		 /* CLAIM all_starvation_free */
	case 3: // STATE 1 - _spin_nvr.tmp:25 - [((!(!((tcb[2].state==1)))&&!((EP==2))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][1] = 1;
		if (!(( !( !((((int)now.tcb[2].state)==1)))&& !((((int)now.EP)==2)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 3 - _spin_nvr.tmp:26 - [((!(!((tcb[1].state==1)))&&!((EP==1))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][3] = 1;
		if (!(( !( !((((int)now.tcb[1].state)==1)))&& !((((int)now.EP)==1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 10 - _spin_nvr.tmp:31 - [(!((EP==2)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][10] = 1;
		if (!( !((((int)now.EP)==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 15 - _spin_nvr.tmp:35 - [(!((EP==1)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported15 = 0;
			if (verbose && !reported15)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported15 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported15 = 0;
			if (verbose && !reported15)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported15 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][15] = 1;
		if (!( !((((int)now.EP)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 20 - _spin_nvr.tmp:37 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported20 = 0;
			if (verbose && !reported20)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported20 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported20 = 0;
			if (verbose && !reported20)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported20 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][20] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM starvation_free_task2 */
	case 8: // STATE 1 - _spin_nvr.tmp:14 - [((!(!((tcb[2].state==1)))&&!((EP==2))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][1] = 1;
		if (!(( !( !((((int)now.tcb[2].state)==1)))&& !((((int)now.EP)==2)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 8 - _spin_nvr.tmp:19 - [(!((EP==2)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][8] = 1;
		if (!( !((((int)now.EP)==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 13 - _spin_nvr.tmp:21 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM starvation_free_task1 */
	case 11: // STATE 1 - _spin_nvr.tmp:3 - [((!(!((tcb[1].state==1)))&&!((EP==1))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][1] = 1;
		if (!(( !( !((((int)now.tcb[1].state)==1)))&& !((((int)now.EP)==1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 8 - _spin_nvr.tmp:8 - [(!((EP==1)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][8] = 1;
		if (!( !((((int)now.EP)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 13 - _spin_nvr.tmp:10 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC :init: */
	case 14: // STATE 1 - resume_suspend.pml:435 - [i = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[2][1] = 1;
		(trpt+1)->bup.oval = ((int)((P2 *)_this)->i);
		((P2 *)_this)->i = 0;
#ifdef VAR_RANGES
		logval(":init::i", ((int)((P2 *)_this)->i));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 2 - resume_suspend.pml:437 - [((i<4))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][2] = 1;
		if (!((((int)((P2 *)_this)->i)<4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 3 - resume_suspend.pml:117 - [idx = 0] (0:10:2 - 1)
		IfNotBlocked
		reached[2][3] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P2 *)_this)->_6_6_idx);
		((P2 *)_this)->_6_6_idx = 0;
#ifdef VAR_RANGES
		logval(":init::idx", ((int)((P2 *)_this)->_6_6_idx));
#endif
		;
		/* merge: idx = 0(10, 4, 10) */
		reached[2][4] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P2 *)_this)->_6_6_idx);
		((P2 *)_this)->_6_6_idx = 0;
#ifdef VAR_RANGES
		logval(":init::idx", ((int)((P2 *)_this)->_6_6_idx));
#endif
		;
		/* merge: .(goto)(0, 11, 10) */
		reached[2][11] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 17: // STATE 5 - resume_suspend.pml:119 - [((idx<5))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][5] = 1;
		if (!((((int)((P2 *)_this)->_6_6_idx)<5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 6 - resume_suspend.pml:120 - [readyQueue[i].tasks[idx] = 255] (0:0:1 - 1)
		IfNotBlocked
		reached[2][6] = 1;
		(trpt+1)->bup.oval = ((int)now.readyQueue[ Index(((int)((P2 *)_this)->i), 4) ].tasks[ Index(((int)((P2 *)_this)->_6_6_idx), 5) ]);
		now.readyQueue[ Index(((P2 *)_this)->i, 4) ].tasks[ Index(((P2 *)_this)->_6_6_idx, 5) ] = 255;
#ifdef VAR_RANGES
		logval("readyQueue[:init::i].tasks[:init::idx]", ((int)now.readyQueue[ Index(((int)((P2 *)_this)->i), 4) ].tasks[ Index(((int)((P2 *)_this)->_6_6_idx), 5) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 7 - resume_suspend.pml:121 - [idx = (idx+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[2][7] = 1;
		(trpt+1)->bup.oval = ((int)((P2 *)_this)->_6_6_idx);
		((P2 *)_this)->_6_6_idx = (((int)((P2 *)_this)->_6_6_idx)+1);
#ifdef VAR_RANGES
		logval(":init::idx", ((int)((P2 *)_this)->_6_6_idx));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 8 - resume_suspend.pml:122 - [((idx>=5))] (0:0:1 - 1)
		IfNotBlocked
		reached[2][8] = 1;
		if (!((((int)((P2 *)_this)->_6_6_idx)>=5)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _6_6_idx */  (trpt+1)->bup.oval = ((P2 *)_this)->_6_6_idx;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P2 *)_this)->_6_6_idx = 0;
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 13 - resume_suspend.pml:124 - [readyQueue[i].tailIndex = 0] (0:0:1 - 3)
		IfNotBlocked
		reached[2][13] = 1;
		(trpt+1)->bup.oval = ((int)now.readyQueue[ Index(((int)((P2 *)_this)->i), 4) ].tailIndex);
		now.readyQueue[ Index(((P2 *)_this)->i, 4) ].tailIndex = 0;
#ifdef VAR_RANGES
		logval("readyQueue[:init::i].tailIndex", ((int)now.readyQueue[ Index(((int)((P2 *)_this)->i), 4) ].tailIndex));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 15 - resume_suspend.pml:439 - [i = (i+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[2][15] = 1;
		(trpt+1)->bup.oval = ((int)((P2 *)_this)->i);
		((P2 *)_this)->i = (((int)((P2 *)_this)->i)+1);
#ifdef VAR_RANGES
		logval(":init::i", ((int)((P2 *)_this)->i));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 16 - resume_suspend.pml:440 - [((i>=4))] (0:0:1 - 1)
		IfNotBlocked
		reached[2][16] = 1;
		if (!((((int)((P2 *)_this)->i)>=4)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: i */  (trpt+1)->bup.oval = ((P2 *)_this)->i;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P2 *)_this)->i = 0;
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 21 - resume_suspend.pml:53 - [idx = 0] (0:28:2 - 1)
		IfNotBlocked
		reached[2][21] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P2 *)_this)->_6_7_idx);
		((P2 *)_this)->_6_7_idx = 0;
#ifdef VAR_RANGES
		logval(":init::idx", ((int)((P2 *)_this)->_6_7_idx));
#endif
		;
		/* merge: idx = 0(28, 22, 28) */
		reached[2][22] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P2 *)_this)->_6_7_idx);
		((P2 *)_this)->_6_7_idx = 0;
#ifdef VAR_RANGES
		logval(":init::idx", ((int)((P2 *)_this)->_6_7_idx));
#endif
		;
		/* merge: .(goto)(0, 29, 28) */
		reached[2][29] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 25: // STATE 23 - resume_suspend.pml:55 - [((idx<5))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][23] = 1;
		if (!((((int)((P2 *)_this)->_6_7_idx)<5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 24 - resume_suspend.pml:56 - [sortLink.tasks[idx] = 255] (0:0:1 - 1)
		IfNotBlocked
		reached[2][24] = 1;
		(trpt+1)->bup.oval = ((int)now.sortLink.tasks[ Index(((int)((P2 *)_this)->_6_7_idx), 5) ]);
		now.sortLink.tasks[ Index(((P2 *)_this)->_6_7_idx, 5) ] = 255;
#ifdef VAR_RANGES
		logval("sortLink.tasks[:init::idx]", ((int)now.sortLink.tasks[ Index(((int)((P2 *)_this)->_6_7_idx), 5) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 25 - resume_suspend.pml:57 - [idx = (idx+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[2][25] = 1;
		(trpt+1)->bup.oval = ((int)((P2 *)_this)->_6_7_idx);
		((P2 *)_this)->_6_7_idx = (((int)((P2 *)_this)->_6_7_idx)+1);
#ifdef VAR_RANGES
		logval(":init::idx", ((int)((P2 *)_this)->_6_7_idx));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 28: // STATE 26 - resume_suspend.pml:58 - [((idx>=5))] (0:0:1 - 1)
		IfNotBlocked
		reached[2][26] = 1;
		if (!((((int)((P2 *)_this)->_6_7_idx)>=5)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _6_7_idx */  (trpt+1)->bup.oval = ((P2 *)_this)->_6_7_idx;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P2 *)_this)->_6_7_idx = 0;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 31 - resume_suspend.pml:60 - [sortLink.count = 0] (0:0:1 - 3)
		IfNotBlocked
		reached[2][31] = 1;
		(trpt+1)->bup.oval = ((int)now.sortLink.count);
		now.sortLink.count = 0;
#ifdef VAR_RANGES
		logval("sortLink.count", ((int)now.sortLink.count));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 30: // STATE 33 - resume_suspend.pml:447 - [tcb[1].prio = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[2][33] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[1].prio);
		now.tcb[1].prio = 2;
#ifdef VAR_RANGES
		logval("tcb[1].prio", ((int)now.tcb[1].prio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 34 - resume_suspend.pml:448 - [tcb[1].state = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[2][34] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[1].state);
		now.tcb[1].state = 1;
#ifdef VAR_RANGES
		logval("tcb[1].state", ((int)now.tcb[1].state));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 35 - resume_suspend.pml:449 - [tcb[1].responseTime = 10] (0:0:1 - 1)
		IfNotBlocked
		reached[2][35] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[1].responseTime);
		now.tcb[1].responseTime = 10;
#ifdef VAR_RANGES
		logval("tcb[1].responseTime", ((int)now.tcb[1].responseTime));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 33: // STATE 36 - resume_suspend.pml:133 - [((readyQueue[tcb[1].prio].tailIndex<5))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][36] = 1;
		if (!((((int)now.readyQueue[ Index(((int)now.tcb[1].prio), 4) ].tailIndex)<5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 37 - resume_suspend.pml:134 - [readyQueue[tcb[1].prio].tasks[readyQueue[tcb[1].prio].tailIndex] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[2][37] = 1;
		(trpt+1)->bup.oval = ((int)now.readyQueue[ Index(((int)now.tcb[1].prio), 4) ].tasks[ Index(((int)now.readyQueue[ Index(((int)now.tcb[1].prio), 4) ].tailIndex), 5) ]);
		now.readyQueue[ Index(now.tcb[1].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[1].prio, 4) ].tailIndex, 5) ] = 1;
#ifdef VAR_RANGES
		logval("readyQueue[tcb[1].prio].tasks[readyQueue[tcb[1].prio].tailIndex]", ((int)now.readyQueue[ Index(((int)now.tcb[1].prio), 4) ].tasks[ Index(((int)now.readyQueue[ Index(((int)now.tcb[1].prio), 4) ].tailIndex), 5) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 38 - resume_suspend.pml:135 - [readyQueue[tcb[1].prio].tailIndex = (readyQueue[tcb[1].prio].tailIndex+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[2][38] = 1;
		(trpt+1)->bup.oval = ((int)now.readyQueue[ Index(((int)now.tcb[1].prio), 4) ].tailIndex);
		now.readyQueue[ Index(now.tcb[1].prio, 4) ].tailIndex = (((int)now.readyQueue[ Index(((int)now.tcb[1].prio), 4) ].tailIndex)+1);
#ifdef VAR_RANGES
		logval("readyQueue[tcb[1].prio].tailIndex", ((int)now.readyQueue[ Index(((int)now.tcb[1].prio), 4) ].tailIndex));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 36: // STATE 40 - resume_suspend.pml:136 - [assert(0)] (0:0:0 - 1)
		IfNotBlocked
		reached[2][40] = 1;
		spin_assert(0, "0", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 37: // STATE 44 - resume_suspend.pml:452 - [tcb[2].prio = 2] (0:0:1 - 3)
		IfNotBlocked
		reached[2][44] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[2].prio);
		now.tcb[2].prio = 2;
#ifdef VAR_RANGES
		logval("tcb[2].prio", ((int)now.tcb[2].prio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 38: // STATE 45 - resume_suspend.pml:453 - [tcb[2].state = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[2][45] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[2].state);
		now.tcb[2].state = 1;
#ifdef VAR_RANGES
		logval("tcb[2].state", ((int)now.tcb[2].state));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 39: // STATE 46 - resume_suspend.pml:454 - [tcb[2].responseTime = 20] (0:0:1 - 1)
		IfNotBlocked
		reached[2][46] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[2].responseTime);
		now.tcb[2].responseTime = 20;
#ifdef VAR_RANGES
		logval("tcb[2].responseTime", ((int)now.tcb[2].responseTime));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 40: // STATE 47 - resume_suspend.pml:133 - [((readyQueue[tcb[2].prio].tailIndex<5))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][47] = 1;
		if (!((((int)now.readyQueue[ Index(((int)now.tcb[2].prio), 4) ].tailIndex)<5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 41: // STATE 48 - resume_suspend.pml:134 - [readyQueue[tcb[2].prio].tasks[readyQueue[tcb[2].prio].tailIndex] = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[2][48] = 1;
		(trpt+1)->bup.oval = ((int)now.readyQueue[ Index(((int)now.tcb[2].prio), 4) ].tasks[ Index(((int)now.readyQueue[ Index(((int)now.tcb[2].prio), 4) ].tailIndex), 5) ]);
		now.readyQueue[ Index(now.tcb[2].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[2].prio, 4) ].tailIndex, 5) ] = 2;
#ifdef VAR_RANGES
		logval("readyQueue[tcb[2].prio].tasks[readyQueue[tcb[2].prio].tailIndex]", ((int)now.readyQueue[ Index(((int)now.tcb[2].prio), 4) ].tasks[ Index(((int)now.readyQueue[ Index(((int)now.tcb[2].prio), 4) ].tailIndex), 5) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 42: // STATE 49 - resume_suspend.pml:135 - [readyQueue[tcb[2].prio].tailIndex = (readyQueue[tcb[2].prio].tailIndex+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[2][49] = 1;
		(trpt+1)->bup.oval = ((int)now.readyQueue[ Index(((int)now.tcb[2].prio), 4) ].tailIndex);
		now.readyQueue[ Index(now.tcb[2].prio, 4) ].tailIndex = (((int)now.readyQueue[ Index(((int)now.tcb[2].prio), 4) ].tailIndex)+1);
#ifdef VAR_RANGES
		logval("readyQueue[tcb[2].prio].tailIndex", ((int)now.readyQueue[ Index(((int)now.tcb[2].prio), 4) ].tailIndex));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 43: // STATE 51 - resume_suspend.pml:136 - [assert(0)] (0:0:0 - 1)
		IfNotBlocked
		reached[2][51] = 1;
		spin_assert(0, "0", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 44: // STATE 55 - resume_suspend.pml:204 - [prio = 0] (0:71:6 - 1)
		IfNotBlocked
		reached[2][55] = 1;
		(trpt+1)->bup.ovals = grab_ints(6);
		(trpt+1)->bup.ovals[0] = ((int)((P2 *)_this)->_6_10_prio);
		((P2 *)_this)->_6_10_prio = 0;
#ifdef VAR_RANGES
		logval(":init::prio", ((int)((P2 *)_this)->_6_10_prio));
#endif
		;
		/* merge: top_task = 0(71, 56, 71) */
		reached[2][56] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P2 *)_this)->_6_10_top_task);
		((P2 *)_this)->_6_10_top_task = 0;
#ifdef VAR_RANGES
		logval(":init::top_task", ((int)((P2 *)_this)->_6_10_top_task));
#endif
		;
		/* merge: found = 0(71, 57, 71) */
		reached[2][57] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P2 *)_this)->_6_10_found);
		((P2 *)_this)->_6_10_found = 0;
#ifdef VAR_RANGES
		logval(":init::found", ((int)((P2 *)_this)->_6_10_found));
#endif
		;
		/* merge: prio = 0(71, 58, 71) */
		reached[2][58] = 1;
		(trpt+1)->bup.ovals[3] = ((int)((P2 *)_this)->_6_10_prio);
		((P2 *)_this)->_6_10_prio = 0;
#ifdef VAR_RANGES
		logval(":init::prio", ((int)((P2 *)_this)->_6_10_prio));
#endif
		;
		/* merge: top_task = 0(71, 59, 71) */
		reached[2][59] = 1;
		(trpt+1)->bup.ovals[4] = ((int)((P2 *)_this)->_6_10_top_task);
		((P2 *)_this)->_6_10_top_task = 0;
#ifdef VAR_RANGES
		logval(":init::top_task", ((int)((P2 *)_this)->_6_10_top_task));
#endif
		;
		/* merge: found = 0(71, 60, 71) */
		reached[2][60] = 1;
		(trpt+1)->bup.ovals[5] = ((int)((P2 *)_this)->_6_10_found);
		((P2 *)_this)->_6_10_found = 0;
#ifdef VAR_RANGES
		logval(":init::found", ((int)((P2 *)_this)->_6_10_found));
#endif
		;
		/* merge: .(goto)(0, 72, 71) */
		reached[2][72] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 45: // STATE 61 - resume_suspend.pml:213 - [(((prio<4)&&!(found)))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][61] = 1;
		if (!(((((int)((P2 *)_this)->_6_10_prio)<4)&& !(((int)((P2 *)_this)->_6_10_found)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 46: // STATE 62 - resume_suspend.pml:215 - [((readyQueue[prio].tailIndex>0))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][62] = 1;
		if (!((((int)now.readyQueue[ Index(((int)((P2 *)_this)->_6_10_prio), 4) ].tailIndex)>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 47: // STATE 63 - resume_suspend.pml:217 - [top_task = readyQueue[prio].tasks[0]] (0:0:1 - 1)
		IfNotBlocked
		reached[2][63] = 1;
		(trpt+1)->bup.oval = ((int)((P2 *)_this)->_6_10_top_task);
		((P2 *)_this)->_6_10_top_task = ((int)now.readyQueue[ Index(((int)((P2 *)_this)->_6_10_prio), 4) ].tasks[0]);
#ifdef VAR_RANGES
		logval(":init::top_task", ((int)((P2 *)_this)->_6_10_top_task));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 48: // STATE 64 - resume_suspend.pml:220 - [found = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[2][64] = 1;
		(trpt+1)->bup.oval = ((int)((P2 *)_this)->_6_10_found);
		((P2 *)_this)->_6_10_found = 1;
#ifdef VAR_RANGES
		logval(":init::found", ((int)((P2 *)_this)->_6_10_found));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 49: // STATE 66 - resume_suspend.pml:221 - [prio = (prio+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[2][66] = 1;
		(trpt+1)->bup.oval = ((int)((P2 *)_this)->_6_10_prio);
		((P2 *)_this)->_6_10_prio = (((int)((P2 *)_this)->_6_10_prio)+1);
#ifdef VAR_RANGES
		logval(":init::prio", ((int)((P2 *)_this)->_6_10_prio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 50: // STATE 69 - resume_suspend.pml:223 - [(((prio>=4)||found))] (0:0:1 - 1)
		IfNotBlocked
		reached[2][69] = 1;
		if (!(((((int)((P2 *)_this)->_6_10_prio)>=4)||((int)((P2 *)_this)->_6_10_found))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _6_10_found */  (trpt+1)->bup.oval = ((P2 *)_this)->_6_10_found;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P2 *)_this)->_6_10_found = 0;
		_m = 3; goto P999; /* 0 */
	case 51: // STATE 74 - resume_suspend.pml:227 - [EP = top_task] (0:0:1 - 3)
		IfNotBlocked
		reached[2][74] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = ((int)((P2 *)_this)->_6_10_top_task);
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 52: // STATE 75 - resume_suspend.pml:228 - [topPrio = prio] (0:0:1 - 1)
		IfNotBlocked
		reached[2][75] = 1;
		(trpt+1)->bup.oval = ((int)now.topPrio);
		now.topPrio = ((int)((P2 *)_this)->_6_10_prio);
#ifdef VAR_RANGES
		logval("topPrio", ((int)now.topPrio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 53: // STATE 77 - resume_suspend.pml:173 - [idx = 0] (0:84:2 - 1)
		IfNotBlocked
		reached[2][77] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P2 *)_this)->_6_11_idx);
		((P2 *)_this)->_6_11_idx = 0;
#ifdef VAR_RANGES
		logval(":init::idx", ((int)((P2 *)_this)->_6_11_idx));
#endif
		;
		/* merge: idx = 0(84, 78, 84) */
		reached[2][78] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P2 *)_this)->_6_11_idx);
		((P2 *)_this)->_6_11_idx = 0;
#ifdef VAR_RANGES
		logval(":init::idx", ((int)((P2 *)_this)->_6_11_idx));
#endif
		;
		/* merge: .(goto)(0, 85, 84) */
		reached[2][85] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 54: // STATE 79 - resume_suspend.pml:177 - [((idx<(readyQueue[topPrio].tailIndex-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][79] = 1;
		if (!((((int)((P2 *)_this)->_6_11_idx)<(((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 55: // STATE 80 - resume_suspend.pml:178 - [readyQueue[topPrio].tasks[idx] = readyQueue[topPrio].tasks[(idx+1)]] (0:0:1 - 1)
		IfNotBlocked
		reached[2][80] = 1;
		(trpt+1)->bup.oval = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index(((int)((P2 *)_this)->_6_11_idx), 5) ]);
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index(((P2 *)_this)->_6_11_idx, 5) ] = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index((((int)((P2 *)_this)->_6_11_idx)+1), 5) ]);
#ifdef VAR_RANGES
		logval("readyQueue[topPrio].tasks[:init::idx]", ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index(((int)((P2 *)_this)->_6_11_idx), 5) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 56: // STATE 81 - resume_suspend.pml:179 - [idx = (idx+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[2][81] = 1;
		(trpt+1)->bup.oval = ((int)((P2 *)_this)->_6_11_idx);
		((P2 *)_this)->_6_11_idx = (((int)((P2 *)_this)->_6_11_idx)+1);
#ifdef VAR_RANGES
		logval(":init::idx", ((int)((P2 *)_this)->_6_11_idx));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 57: // STATE 82 - resume_suspend.pml:180 - [((idx>=(readyQueue[topPrio].tailIndex-1)))] (0:0:1 - 1)
		IfNotBlocked
		reached[2][82] = 1;
		if (!((((int)((P2 *)_this)->_6_11_idx)>=(((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _6_11_idx */  (trpt+1)->bup.oval = ((P2 *)_this)->_6_11_idx;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P2 *)_this)->_6_11_idx = 0;
		_m = 3; goto P999; /* 0 */
	case 58: // STATE 87 - resume_suspend.pml:185 - [((readyQueue[topPrio].tailIndex>0))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][87] = 1;
		if (!((((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 59: // STATE 88 - resume_suspend.pml:186 - [readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)] = 255] (0:0:1 - 1)
		IfNotBlocked
		reached[2][88] = 1;
		(trpt+1)->bup.oval = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index((((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1), 5) ]);
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index((now.readyQueue[ Index(now.topPrio, 4) ].tailIndex-1), 5) ] = 255;
#ifdef VAR_RANGES
		logval("readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)]", ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index((((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1), 5) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 60: // STATE 89 - resume_suspend.pml:187 - [readyQueue[topPrio].tailIndex = (readyQueue[topPrio].tailIndex-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[2][89] = 1;
		(trpt+1)->bup.oval = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex);
		now.readyQueue[ Index(now.topPrio, 4) ].tailIndex = (((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1);
#ifdef VAR_RANGES
		logval("readyQueue[topPrio].tailIndex", ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 61: // STATE 95 - resume_suspend.pml:460 - [tcb[EP].state = 4] (0:0:1 - 3)
		IfNotBlocked
		reached[2][95] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[ Index(((int)now.EP), 3) ].state);
		now.tcb[ Index(now.EP, 3) ].state = 4;
#ifdef VAR_RANGES
		logval("tcb[EP].state", ((int)now.tcb[ Index(((int)now.EP), 3) ].state));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 62: // STATE 96 - resume_suspend.pml:462 - [(run Process1())] (0:0:0 - 1)
		IfNotBlocked
		reached[2][96] = 1;
		if (!(addproc(II, 1, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 63: // STATE 97 - resume_suspend.pml:463 - [(run Process2())] (0:0:0 - 1)
		IfNotBlocked
		reached[2][97] = 1;
		if (!(addproc(II, 1, 1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 64: // STATE 98 - resume_suspend.pml:464 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][98] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Process2 */
	case 65: // STATE 1 - resume_suspend.pml:413 - [((EP==2))] (67:0:0 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		if (!((((int)now.EP)==2)))
			continue;
		/* merge: printf('Process 2 is running\\n')(0, 2, 67) */
		reached[1][2] = 1;
		Printf("Process 2 is running\n");
		_m = 3; goto P999; /* 1 */
	case 66: // STATE 3 - resume_suspend.pml:372 - [interrupted_task = 0] (0:7:2 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)_this)->_5_4_5_interrupted_task);
		((P1 *)_this)->_5_4_5_interrupted_task = 0;
#ifdef VAR_RANGES
		logval("Process2:interrupted_task", ((int)((P1 *)_this)->_5_4_5_interrupted_task));
#endif
		;
		/* merge: interrupted_task = 0(7, 4, 7) */
		reached[1][4] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)_this)->_5_4_5_interrupted_task);
		((P1 *)_this)->_5_4_5_interrupted_task = 0;
#ifdef VAR_RANGES
		logval("Process2:interrupted_task", ((int)((P1 *)_this)->_5_4_5_interrupted_task));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 67: // STATE 5 - resume_suspend.pml:234 - [int_save = int_ctrl_reg] (0:21:3 - 1)
		IfNotBlocked
		reached[1][5] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.int_save);
		now.int_save = ((int)now.int_ctrl_reg);
#ifdef VAR_RANGES
		logval("int_save", ((int)now.int_save));
#endif
		;
		/* merge: int_ctrl_reg = 1(21, 6, 21) */
		reached[1][6] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.int_ctrl_reg);
		now.int_ctrl_reg = 1;
#ifdef VAR_RANGES
		logval("int_ctrl_reg", ((int)now.int_ctrl_reg));
#endif
		;
		/* merge: interrupted_task = EP(21, 8, 21) */
		reached[1][8] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P1 *)_this)->_5_4_5_interrupted_task);
		((P1 *)_this)->_5_4_5_interrupted_task = ((int)now.EP);
#ifdef VAR_RANGES
		logval("Process2:interrupted_task", ((int)((P1 *)_this)->_5_4_5_interrupted_task));
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 68: // STATE 9 - resume_suspend.pml:381 - [(((interrupted_task>=1)&&(interrupted_task<=2)))] (18:0:1 - 1)
		IfNotBlocked
		reached[1][9] = 1;
		if (!(((((int)((P1 *)_this)->_5_4_5_interrupted_task)>=1)&&(((int)((P1 *)_this)->_5_4_5_interrupted_task)<=2))))
			continue;
		/* merge: tcb[interrupted_task].state = 1(0, 10, 18) */
		reached[1][10] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[ Index(((int)((P1 *)_this)->_5_4_5_interrupted_task), 3) ].state);
		now.tcb[ Index(((P1 *)_this)->_5_4_5_interrupted_task, 3) ].state = 1;
#ifdef VAR_RANGES
		logval("tcb[Process2:interrupted_task].state", ((int)now.tcb[ Index(((int)((P1 *)_this)->_5_4_5_interrupted_task), 3) ].state));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 69: // STATE 11 - resume_suspend.pml:133 - [((readyQueue[tcb[interrupted_task].prio].tailIndex<5))] (44:0:2 - 1)
		IfNotBlocked
		reached[1][11] = 1;
		if (!((((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P1 *)_this)->_5_4_5_interrupted_task), 3) ].prio), 4) ].tailIndex)<5)))
			continue;
		/* merge: readyQueue[tcb[interrupted_task].prio].tasks[readyQueue[tcb[interrupted_task].prio].tailIndex] = interrupted_task(44, 12, 44) */
		reached[1][12] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P1 *)_this)->_5_4_5_interrupted_task), 3) ].prio), 4) ].tasks[ Index(((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P1 *)_this)->_5_4_5_interrupted_task), 3) ].prio), 4) ].tailIndex), 5) ]);
		now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_5_4_5_interrupted_task, 3) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_5_4_5_interrupted_task, 3) ].prio, 4) ].tailIndex, 5) ] = ((int)((P1 *)_this)->_5_4_5_interrupted_task);
#ifdef VAR_RANGES
		logval("readyQueue[tcb[Process2:interrupted_task].prio].tasks[readyQueue[tcb[Process2:interrupted_task].prio].tailIndex]", ((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P1 *)_this)->_5_4_5_interrupted_task), 3) ].prio), 4) ].tasks[ Index(((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P1 *)_this)->_5_4_5_interrupted_task), 3) ].prio), 4) ].tailIndex), 5) ]));
#endif
		;
		/* merge: readyQueue[tcb[interrupted_task].prio].tailIndex = (readyQueue[tcb[interrupted_task].prio].tailIndex+1)(44, 13, 44) */
		reached[1][13] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P1 *)_this)->_5_4_5_interrupted_task), 3) ].prio), 4) ].tailIndex);
		now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_5_4_5_interrupted_task, 3) ].prio, 4) ].tailIndex = (((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P1 *)_this)->_5_4_5_interrupted_task), 3) ].prio), 4) ].tailIndex)+1);
#ifdef VAR_RANGES
		logval("readyQueue[tcb[Process2:interrupted_task].prio].tailIndex", ((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P1 *)_this)->_5_4_5_interrupted_task), 3) ].prio), 4) ].tailIndex));
#endif
		;
		/* merge: .(goto)(0, 17, 44) */
		reached[1][17] = 1;
		;
		/* merge: .(goto)(0, 22, 44) */
		reached[1][22] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 70: // STATE 15 - resume_suspend.pml:136 - [assert(0)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][15] = 1;
		spin_assert(0, "0", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 71: // STATE 23 - resume_suspend.pml:204 - [prio = 0] (0:39:6 - 1)
		IfNotBlocked
		reached[1][23] = 1;
		(trpt+1)->bup.ovals = grab_ints(6);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)_this)->_5_4_5_22_prio);
		((P1 *)_this)->_5_4_5_22_prio = 0;
#ifdef VAR_RANGES
		logval("Process2:prio", ((int)((P1 *)_this)->_5_4_5_22_prio));
#endif
		;
		/* merge: top_task = 0(39, 24, 39) */
		reached[1][24] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)_this)->_5_4_5_22_top_task);
		((P1 *)_this)->_5_4_5_22_top_task = 0;
#ifdef VAR_RANGES
		logval("Process2:top_task", ((int)((P1 *)_this)->_5_4_5_22_top_task));
#endif
		;
		/* merge: found = 0(39, 25, 39) */
		reached[1][25] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P1 *)_this)->_5_4_5_22_found);
		((P1 *)_this)->_5_4_5_22_found = 0;
#ifdef VAR_RANGES
		logval("Process2:found", ((int)((P1 *)_this)->_5_4_5_22_found));
#endif
		;
		/* merge: prio = 0(39, 26, 39) */
		reached[1][26] = 1;
		(trpt+1)->bup.ovals[3] = ((int)((P1 *)_this)->_5_4_5_22_prio);
		((P1 *)_this)->_5_4_5_22_prio = 0;
#ifdef VAR_RANGES
		logval("Process2:prio", ((int)((P1 *)_this)->_5_4_5_22_prio));
#endif
		;
		/* merge: top_task = 0(39, 27, 39) */
		reached[1][27] = 1;
		(trpt+1)->bup.ovals[4] = ((int)((P1 *)_this)->_5_4_5_22_top_task);
		((P1 *)_this)->_5_4_5_22_top_task = 0;
#ifdef VAR_RANGES
		logval("Process2:top_task", ((int)((P1 *)_this)->_5_4_5_22_top_task));
#endif
		;
		/* merge: found = 0(39, 28, 39) */
		reached[1][28] = 1;
		(trpt+1)->bup.ovals[5] = ((int)((P1 *)_this)->_5_4_5_22_found);
		((P1 *)_this)->_5_4_5_22_found = 0;
#ifdef VAR_RANGES
		logval("Process2:found", ((int)((P1 *)_this)->_5_4_5_22_found));
#endif
		;
		/* merge: .(goto)(0, 40, 39) */
		reached[1][40] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 72: // STATE 29 - resume_suspend.pml:213 - [(((prio<4)&&!(found)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][29] = 1;
		if (!(((((int)((P1 *)_this)->_5_4_5_22_prio)<4)&& !(((int)((P1 *)_this)->_5_4_5_22_found)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 73: // STATE 30 - resume_suspend.pml:215 - [((readyQueue[prio].tailIndex>0))] (39:0:2 - 1)
		IfNotBlocked
		reached[1][30] = 1;
		if (!((((int)now.readyQueue[ Index(((int)((P1 *)_this)->_5_4_5_22_prio), 4) ].tailIndex)>0)))
			continue;
		/* merge: top_task = readyQueue[prio].tasks[0](39, 31, 39) */
		reached[1][31] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)_this)->_5_4_5_22_top_task);
		((P1 *)_this)->_5_4_5_22_top_task = ((int)now.readyQueue[ Index(((int)((P1 *)_this)->_5_4_5_22_prio), 4) ].tasks[0]);
#ifdef VAR_RANGES
		logval("Process2:top_task", ((int)((P1 *)_this)->_5_4_5_22_top_task));
#endif
		;
		/* merge: found = 1(39, 32, 39) */
		reached[1][32] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)_this)->_5_4_5_22_found);
		((P1 *)_this)->_5_4_5_22_found = 1;
#ifdef VAR_RANGES
		logval("Process2:found", ((int)((P1 *)_this)->_5_4_5_22_found));
#endif
		;
		/* merge: .(goto)(0, 36, 39) */
		reached[1][36] = 1;
		;
		/* merge: .(goto)(0, 40, 39) */
		reached[1][40] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 74: // STATE 34 - resume_suspend.pml:221 - [prio = (prio+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][34] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)_this)->_5_4_5_22_prio);
		((P1 *)_this)->_5_4_5_22_prio = (((int)((P1 *)_this)->_5_4_5_22_prio)+1);
#ifdef VAR_RANGES
		logval("Process2:prio", ((int)((P1 *)_this)->_5_4_5_22_prio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 75: // STATE 37 - resume_suspend.pml:223 - [(((prio>=4)||found))] (62:0:3 - 1)
		IfNotBlocked
		reached[1][37] = 1;
		if (!(((((int)((P1 *)_this)->_5_4_5_22_prio)>=4)||((int)((P1 *)_this)->_5_4_5_22_found))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _5_4_5_22_found */  (trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->_5_4_5_22_found;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->_5_4_5_22_found = 0;
		/* merge: goto :b12(62, 38, 62) */
		reached[1][38] = 1;
		;
		/* merge: newTask = top_task(62, 42, 62) */
		reached[1][42] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.newTask);
		now.newTask = ((int)((P1 *)_this)->_5_4_5_22_top_task);
#ifdef VAR_RANGES
		logval("newTask", ((int)now.newTask));
#endif
		;
		/* merge: topPrio = prio(62, 43, 62) */
		reached[1][43] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.topPrio);
		now.topPrio = ((int)((P1 *)_this)->_5_4_5_22_prio);
#ifdef VAR_RANGES
		logval("topPrio", ((int)now.topPrio));
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 76: // STATE 42 - resume_suspend.pml:227 - [newTask = top_task] (0:62:2 - 3)
		IfNotBlocked
		reached[1][42] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.newTask);
		now.newTask = ((int)((P1 *)_this)->_5_4_5_22_top_task);
#ifdef VAR_RANGES
		logval("newTask", ((int)now.newTask));
#endif
		;
		/* merge: topPrio = prio(62, 43, 62) */
		reached[1][43] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.topPrio);
		now.topPrio = ((int)((P1 *)_this)->_5_4_5_22_prio);
#ifdef VAR_RANGES
		logval("topPrio", ((int)now.topPrio));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 77: // STATE 45 - resume_suspend.pml:173 - [idx = 0] (0:52:2 - 1)
		IfNotBlocked
		reached[1][45] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)_this)->_5_4_5_23_idx);
		((P1 *)_this)->_5_4_5_23_idx = 0;
#ifdef VAR_RANGES
		logval("Process2:idx", ((int)((P1 *)_this)->_5_4_5_23_idx));
#endif
		;
		/* merge: idx = 0(52, 46, 52) */
		reached[1][46] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)_this)->_5_4_5_23_idx);
		((P1 *)_this)->_5_4_5_23_idx = 0;
#ifdef VAR_RANGES
		logval("Process2:idx", ((int)((P1 *)_this)->_5_4_5_23_idx));
#endif
		;
		/* merge: .(goto)(0, 53, 52) */
		reached[1][53] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 78: // STATE 47 - resume_suspend.pml:177 - [((idx<(readyQueue[topPrio].tailIndex-1)))] (52:0:2 - 1)
		IfNotBlocked
		reached[1][47] = 1;
		if (!((((int)((P1 *)_this)->_5_4_5_23_idx)<(((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1))))
			continue;
		/* merge: readyQueue[topPrio].tasks[idx] = readyQueue[topPrio].tasks[(idx+1)](52, 48, 52) */
		reached[1][48] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index(((int)((P1 *)_this)->_5_4_5_23_idx), 5) ]);
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index(((P1 *)_this)->_5_4_5_23_idx, 5) ] = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index((((int)((P1 *)_this)->_5_4_5_23_idx)+1), 5) ]);
#ifdef VAR_RANGES
		logval("readyQueue[topPrio].tasks[Process2:idx]", ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index(((int)((P1 *)_this)->_5_4_5_23_idx), 5) ]));
#endif
		;
		/* merge: idx = (idx+1)(52, 49, 52) */
		reached[1][49] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)_this)->_5_4_5_23_idx);
		((P1 *)_this)->_5_4_5_23_idx = (((int)((P1 *)_this)->_5_4_5_23_idx)+1);
#ifdef VAR_RANGES
		logval("Process2:idx", ((int)((P1 *)_this)->_5_4_5_23_idx));
#endif
		;
		/* merge: .(goto)(0, 53, 52) */
		reached[1][53] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 79: // STATE 50 - resume_suspend.pml:180 - [((idx>=(readyQueue[topPrio].tailIndex-1)))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][50] = 1;
		if (!((((int)((P1 *)_this)->_5_4_5_23_idx)>=(((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _5_4_5_23_idx */  (trpt+1)->bup.oval = ((P1 *)_this)->_5_4_5_23_idx;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->_5_4_5_23_idx = 0;
		_m = 3; goto P999; /* 0 */
	case 80: // STATE 55 - resume_suspend.pml:185 - [((readyQueue[topPrio].tailIndex>0))] (66:0:4 - 1)
		IfNotBlocked
		reached[1][55] = 1;
		if (!((((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)>0)))
			continue;
		/* merge: readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)] = 255(66, 56, 66) */
		reached[1][56] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index((((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1), 5) ]);
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index((now.readyQueue[ Index(now.topPrio, 4) ].tailIndex-1), 5) ] = 255;
#ifdef VAR_RANGES
		logval("readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)]", ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index((((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1), 5) ]));
#endif
		;
		/* merge: readyQueue[topPrio].tailIndex = (readyQueue[topPrio].tailIndex-1)(66, 57, 66) */
		reached[1][57] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex);
		now.readyQueue[ Index(now.topPrio, 4) ].tailIndex = (((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1);
#ifdef VAR_RANGES
		logval("readyQueue[topPrio].tailIndex", ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex));
#endif
		;
		/* merge: .(goto)(66, 61, 66) */
		reached[1][61] = 1;
		;
		/* merge: tcb[newTask].state = 4(66, 63, 66) */
		reached[1][63] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.tcb[ Index(((int)now.newTask), 3) ].state);
		now.tcb[ Index(now.newTask, 3) ].state = 4;
#ifdef VAR_RANGES
		logval("tcb[newTask].state", ((int)now.tcb[ Index(((int)now.newTask), 3) ].state));
#endif
		;
		/* merge: EP = newTask(66, 64, 66) */
		reached[1][64] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.EP);
		now.EP = ((int)now.newTask);
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 5 */
	case 81: // STATE 59 - resume_suspend.pml:188 - [(1)] (66:0:2 - 1)
		IfNotBlocked
		reached[1][59] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(66, 61, 66) */
		reached[1][61] = 1;
		;
		/* merge: tcb[newTask].state = 4(66, 63, 66) */
		reached[1][63] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.tcb[ Index(((int)now.newTask), 3) ].state);
		now.tcb[ Index(now.newTask, 3) ].state = 4;
#ifdef VAR_RANGES
		logval("tcb[newTask].state", ((int)now.tcb[ Index(((int)now.newTask), 3) ].state));
#endif
		;
		/* merge: EP = newTask(66, 64, 66) */
		reached[1][64] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.EP);
		now.EP = ((int)now.newTask);
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 82: // STATE 63 - resume_suspend.pml:392 - [tcb[newTask].state = 4] (0:66:2 - 3)
		IfNotBlocked
		reached[1][63] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.tcb[ Index(((int)now.newTask), 3) ].state);
		now.tcb[ Index(now.newTask, 3) ].state = 4;
#ifdef VAR_RANGES
		logval("tcb[newTask].state", ((int)now.tcb[ Index(((int)now.newTask), 3) ].state));
#endif
		;
		/* merge: EP = newTask(66, 64, 66) */
		reached[1][64] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.EP);
		now.EP = ((int)now.newTask);
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 83: // STATE 65 - resume_suspend.pml:238 - [int_ctrl_reg = int_save] (0:0:1 - 1)
		IfNotBlocked
		reached[1][65] = 1;
		(trpt+1)->bup.oval = ((int)now.int_ctrl_reg);
		now.int_ctrl_reg = ((int)now.int_save);
#ifdef VAR_RANGES
		logval("int_ctrl_reg", ((int)now.int_ctrl_reg));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 84: // STATE 69 - resume_suspend.pml:414 - [((EP==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][69] = 1;
		if (!((((int)now.EP)==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 85: // STATE 70 - resume_suspend.pml:342 - [needSched = 0] (0:210:2 - 1)
		IfNotBlocked
		reached[1][70] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)_this)->_5_5_6_needSched);
		((P1 *)_this)->_5_5_6_needSched = 0;
#ifdef VAR_RANGES
		logval("Process2:needSched", ((int)((P1 *)_this)->_5_5_6_needSched));
#endif
		;
		/* merge: needSched = 0(210, 71, 210) */
		reached[1][71] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)_this)->_5_5_6_needSched);
		((P1 *)_this)->_5_5_6_needSched = 0;
#ifdef VAR_RANGES
		logval("Process2:needSched", ((int)((P1 *)_this)->_5_5_6_needSched));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 86: // STATE 72 - resume_suspend.pml:345 - [((((1>=1)&&(1<=2))&&(1!=EP)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][72] = 1;
		if (!((((1>=1)&&(1<=2))&&(1!=((int)now.EP)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 87: // STATE 73 - resume_suspend.pml:234 - [int_save = int_ctrl_reg] (0:204:2 - 1)
		IfNotBlocked
		reached[1][73] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.int_save);
		now.int_save = ((int)now.int_ctrl_reg);
#ifdef VAR_RANGES
		logval("int_save", ((int)now.int_save));
#endif
		;
		/* merge: int_ctrl_reg = 1(204, 74, 204) */
		reached[1][74] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.int_ctrl_reg);
		now.int_ctrl_reg = 1;
#ifdef VAR_RANGES
		logval("int_ctrl_reg", ((int)now.int_ctrl_reg));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 88: // STATE 76 - resume_suspend.pml:350 - [((tcb[1].state==3))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][76] = 1;
		if (!((((int)now.tcb[1].state)==3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 89: // STATE 77 - resume_suspend.pml:299 - [((tcb[1].state==3))] (112:0:1 - 1)
		IfNotBlocked
		reached[1][77] = 1;
		if (!((((int)now.tcb[1].state)==3)))
			continue;
		/* merge: tcb[1].state = 1(0, 78, 112) */
		reached[1][78] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[1].state);
		now.tcb[1].state = 1;
#ifdef VAR_RANGES
		logval("tcb[1].state", ((int)now.tcb[1].state));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 90: // STATE 79 - resume_suspend.pml:77 - [removePos = 0] (0:93:5 - 1)
		IfNotBlocked
		reached[1][79] = 1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)_this)->_5_5_6_26_8_removePos);
		((P1 *)_this)->_5_5_6_26_8_removePos = 0;
#ifdef VAR_RANGES
		logval("Process2:removePos", ((int)((P1 *)_this)->_5_5_6_26_8_removePos));
#endif
		;
		/* merge: found = 0(93, 80, 93) */
		reached[1][80] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)_this)->_5_5_6_26_8_found);
		((P1 *)_this)->_5_5_6_26_8_found = 0;
#ifdef VAR_RANGES
		logval("Process2:found", ((int)((P1 *)_this)->_5_5_6_26_8_found));
#endif
		;
		/* merge: shiftIdx = 0(93, 81, 93) */
		reached[1][81] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P1 *)_this)->_5_5_6_26_8_shiftIdx);
		((P1 *)_this)->_5_5_6_26_8_shiftIdx = 0;
#ifdef VAR_RANGES
		logval("Process2:shiftIdx", ((int)((P1 *)_this)->_5_5_6_26_8_shiftIdx));
#endif
		;
		/* merge: removePos = 0(93, 82, 93) */
		reached[1][82] = 1;
		(trpt+1)->bup.ovals[3] = ((int)((P1 *)_this)->_5_5_6_26_8_removePos);
		((P1 *)_this)->_5_5_6_26_8_removePos = 0;
#ifdef VAR_RANGES
		logval("Process2:removePos", ((int)((P1 *)_this)->_5_5_6_26_8_removePos));
#endif
		;
		/* merge: found = 0(93, 83, 93) */
		reached[1][83] = 1;
		(trpt+1)->bup.ovals[4] = ((int)((P1 *)_this)->_5_5_6_26_8_found);
		((P1 *)_this)->_5_5_6_26_8_found = 0;
#ifdef VAR_RANGES
		logval("Process2:found", ((int)((P1 *)_this)->_5_5_6_26_8_found));
#endif
		;
		/* merge: .(goto)(0, 94, 93) */
		reached[1][94] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 91: // STATE 84 - resume_suspend.pml:85 - [(((removePos<sortLink.count)&&!(found)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][84] = 1;
		if (!(((((int)((P1 *)_this)->_5_5_6_26_8_removePos)<((int)now.sortLink.count))&& !(((int)((P1 *)_this)->_5_5_6_26_8_found)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 92: // STATE 85 - resume_suspend.pml:87 - [((sortLink.tasks[removePos]==1))] (93:0:1 - 1)
		IfNotBlocked
		reached[1][85] = 1;
		if (!((((int)now.sortLink.tasks[ Index(((int)((P1 *)_this)->_5_5_6_26_8_removePos), 5) ])==1)))
			continue;
		/* merge: found = 1(0, 86, 93) */
		reached[1][86] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)_this)->_5_5_6_26_8_found);
		((P1 *)_this)->_5_5_6_26_8_found = 1;
#ifdef VAR_RANGES
		logval("Process2:found", ((int)((P1 *)_this)->_5_5_6_26_8_found));
#endif
		;
		/* merge: .(goto)(0, 90, 93) */
		reached[1][90] = 1;
		;
		/* merge: .(goto)(0, 94, 93) */
		reached[1][94] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 93: // STATE 88 - resume_suspend.pml:90 - [removePos = (removePos+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][88] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)_this)->_5_5_6_26_8_removePos);
		((P1 *)_this)->_5_5_6_26_8_removePos = (((int)((P1 *)_this)->_5_5_6_26_8_removePos)+1);
#ifdef VAR_RANGES
		logval("Process2:removePos", ((int)((P1 *)_this)->_5_5_6_26_8_removePos));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 94: // STATE 96 - resume_suspend.pml:96 - [((found==1))] (103:0:2 - 1)
		IfNotBlocked
		reached[1][96] = 1;
		if (!((((int)((P1 *)_this)->_5_5_6_26_8_found)==1)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _5_5_6_26_8_found */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->_5_5_6_26_8_found;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->_5_5_6_26_8_found = 0;
		/* merge: shiftIdx = removePos(0, 97, 103) */
		reached[1][97] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)_this)->_5_5_6_26_8_shiftIdx);
		((P1 *)_this)->_5_5_6_26_8_shiftIdx = ((int)((P1 *)_this)->_5_5_6_26_8_removePos);
#ifdef VAR_RANGES
		logval("Process2:shiftIdx", ((int)((P1 *)_this)->_5_5_6_26_8_shiftIdx));
#endif
		;
		/* merge: .(goto)(0, 104, 103) */
		reached[1][104] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 95: // STATE 98 - resume_suspend.pml:100 - [((shiftIdx<(sortLink.count-1)))] (103:0:2 - 1)
		IfNotBlocked
		reached[1][98] = 1;
		if (!((((int)((P1 *)_this)->_5_5_6_26_8_shiftIdx)<(((int)now.sortLink.count)-1))))
			continue;
		/* merge: sortLink.tasks[shiftIdx] = sortLink.tasks[(shiftIdx+1)](103, 99, 103) */
		reached[1][99] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.sortLink.tasks[ Index(((int)((P1 *)_this)->_5_5_6_26_8_shiftIdx), 5) ]);
		now.sortLink.tasks[ Index(((P1 *)_this)->_5_5_6_26_8_shiftIdx, 5) ] = ((int)now.sortLink.tasks[ Index((((int)((P1 *)_this)->_5_5_6_26_8_shiftIdx)+1), 5) ]);
#ifdef VAR_RANGES
		logval("sortLink.tasks[Process2:shiftIdx]", ((int)now.sortLink.tasks[ Index(((int)((P1 *)_this)->_5_5_6_26_8_shiftIdx), 5) ]));
#endif
		;
		/* merge: shiftIdx = (shiftIdx+1)(103, 100, 103) */
		reached[1][100] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)_this)->_5_5_6_26_8_shiftIdx);
		((P1 *)_this)->_5_5_6_26_8_shiftIdx = (((int)((P1 *)_this)->_5_5_6_26_8_shiftIdx)+1);
#ifdef VAR_RANGES
		logval("Process2:shiftIdx", ((int)((P1 *)_this)->_5_5_6_26_8_shiftIdx));
#endif
		;
		/* merge: .(goto)(0, 104, 103) */
		reached[1][104] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 96: // STATE 101 - resume_suspend.pml:103 - [((shiftIdx>=(sortLink.count-1)))] (120:0:3 - 1)
		IfNotBlocked
		reached[1][101] = 1;
		if (!((((int)((P1 *)_this)->_5_5_6_26_8_shiftIdx)>=(((int)now.sortLink.count)-1))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _5_5_6_26_8_shiftIdx */  (trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->_5_5_6_26_8_shiftIdx;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->_5_5_6_26_8_shiftIdx = 0;
		/* merge: goto :b15(120, 102, 120) */
		reached[1][102] = 1;
		;
		/* merge: sortLink.tasks[(sortLink.count-1)] = 255(120, 106, 120) */
		reached[1][106] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.sortLink.tasks[ Index((((int)now.sortLink.count)-1), 5) ]);
		now.sortLink.tasks[ Index((now.sortLink.count-1), 5) ] = 255;
#ifdef VAR_RANGES
		logval("sortLink.tasks[(sortLink.count-1)]", ((int)now.sortLink.tasks[ Index((((int)now.sortLink.count)-1), 5) ]));
#endif
		;
		/* merge: sortLink.count = (sortLink.count-1)(120, 107, 120) */
		reached[1][107] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.sortLink.count);
		now.sortLink.count = (((int)now.sortLink.count)-1);
#ifdef VAR_RANGES
		logval("sortLink.count", ((int)now.sortLink.count));
#endif
		;
		/* merge: .(goto)(0, 111, 120) */
		reached[1][111] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 97: // STATE 106 - resume_suspend.pml:107 - [sortLink.tasks[(sortLink.count-1)] = 255] (0:120:2 - 3)
		IfNotBlocked
		reached[1][106] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.sortLink.tasks[ Index((((int)now.sortLink.count)-1), 5) ]);
		now.sortLink.tasks[ Index((now.sortLink.count-1), 5) ] = 255;
#ifdef VAR_RANGES
		logval("sortLink.tasks[(sortLink.count-1)]", ((int)now.sortLink.tasks[ Index((((int)now.sortLink.count)-1), 5) ]));
#endif
		;
		/* merge: sortLink.count = (sortLink.count-1)(120, 107, 120) */
		reached[1][107] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.sortLink.count);
		now.sortLink.count = (((int)now.sortLink.count)-1);
#ifdef VAR_RANGES
		logval("sortLink.count", ((int)now.sortLink.count));
#endif
		;
		/* merge: .(goto)(0, 111, 120) */
		reached[1][111] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 98: // STATE 113 - resume_suspend.pml:133 - [((readyQueue[tcb[1].prio].tailIndex<5))] (125:0:2 - 1)
		IfNotBlocked
		reached[1][113] = 1;
		if (!((((int)now.readyQueue[ Index(((int)now.tcb[1].prio), 4) ].tailIndex)<5)))
			continue;
		/* merge: readyQueue[tcb[1].prio].tasks[readyQueue[tcb[1].prio].tailIndex] = 1(125, 114, 125) */
		reached[1][114] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.readyQueue[ Index(((int)now.tcb[1].prio), 4) ].tasks[ Index(((int)now.readyQueue[ Index(((int)now.tcb[1].prio), 4) ].tailIndex), 5) ]);
		now.readyQueue[ Index(now.tcb[1].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[1].prio, 4) ].tailIndex, 5) ] = 1;
#ifdef VAR_RANGES
		logval("readyQueue[tcb[1].prio].tasks[readyQueue[tcb[1].prio].tailIndex]", ((int)now.readyQueue[ Index(((int)now.tcb[1].prio), 4) ].tasks[ Index(((int)now.readyQueue[ Index(((int)now.tcb[1].prio), 4) ].tailIndex), 5) ]));
#endif
		;
		/* merge: readyQueue[tcb[1].prio].tailIndex = (readyQueue[tcb[1].prio].tailIndex+1)(125, 115, 125) */
		reached[1][115] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.readyQueue[ Index(((int)now.tcb[1].prio), 4) ].tailIndex);
		now.readyQueue[ Index(now.tcb[1].prio, 4) ].tailIndex = (((int)now.readyQueue[ Index(((int)now.tcb[1].prio), 4) ].tailIndex)+1);
#ifdef VAR_RANGES
		logval("readyQueue[tcb[1].prio].tailIndex", ((int)now.readyQueue[ Index(((int)now.tcb[1].prio), 4) ].tailIndex));
#endif
		;
		/* merge: .(goto)(0, 119, 125) */
		reached[1][119] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 99: // STATE 117 - resume_suspend.pml:136 - [assert(0)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][117] = 1;
		spin_assert(0, "0", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 100: // STATE 121 - resume_suspend.pml:310 - [((tcb[1].prio<tcb[EP].prio))] (200:0:1 - 1)
		IfNotBlocked
		reached[1][121] = 1;
		if (!((((int)now.tcb[1].prio)<((int)now.tcb[ Index(((int)now.EP), 3) ].prio))))
			continue;
		/* merge: needSched = 1(0, 122, 200) */
		reached[1][122] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)_this)->_5_5_6_needSched);
		((P1 *)_this)->_5_5_6_needSched = 1;
#ifdef VAR_RANGES
		logval("Process2:needSched", ((int)((P1 *)_this)->_5_5_6_needSched));
#endif
		;
		/* merge: .(goto)(0, 126, 200) */
		reached[1][126] = 1;
		;
		/* merge: .(goto)(0, 130, 200) */
		reached[1][130] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 101: // STATE 124 - resume_suspend.pml:313 - [needSched = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][124] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)_this)->_5_5_6_needSched);
		((P1 *)_this)->_5_5_6_needSched = 0;
#ifdef VAR_RANGES
		logval("Process2:needSched", ((int)((P1 *)_this)->_5_5_6_needSched));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 102: // STATE 128 - resume_suspend.pml:316 - [needSched = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][128] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)_this)->_5_5_6_needSched);
		((P1 *)_this)->_5_5_6_needSched = 0;
#ifdef VAR_RANGES
		logval("Process2:needSched", ((int)((P1 *)_this)->_5_5_6_needSched));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 103: // STATE 132 - resume_suspend.pml:355 - [((needSched==1))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][132] = 1;
		if (!((((int)((P1 *)_this)->_5_5_6_needSched)==1)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _5_5_6_needSched */  (trpt+1)->bup.oval = ((P1 *)_this)->_5_5_6_needSched;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->_5_5_6_needSched = 0;
		_m = 3; goto P999; /* 0 */
	case 104: // STATE 133 - resume_suspend.pml:372 - [interrupted_task = 0] (0:137:2 - 1)
		IfNotBlocked
		reached[1][133] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)_this)->_5_5_6_27_interrupted_task);
		((P1 *)_this)->_5_5_6_27_interrupted_task = 0;
#ifdef VAR_RANGES
		logval("Process2:interrupted_task", ((int)((P1 *)_this)->_5_5_6_27_interrupted_task));
#endif
		;
		/* merge: interrupted_task = 0(137, 134, 137) */
		reached[1][134] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)_this)->_5_5_6_27_interrupted_task);
		((P1 *)_this)->_5_5_6_27_interrupted_task = 0;
#ifdef VAR_RANGES
		logval("Process2:interrupted_task", ((int)((P1 *)_this)->_5_5_6_27_interrupted_task));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 105: // STATE 135 - resume_suspend.pml:234 - [int_save = int_ctrl_reg] (0:151:3 - 1)
		IfNotBlocked
		reached[1][135] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.int_save);
		now.int_save = ((int)now.int_ctrl_reg);
#ifdef VAR_RANGES
		logval("int_save", ((int)now.int_save));
#endif
		;
		/* merge: int_ctrl_reg = 1(151, 136, 151) */
		reached[1][136] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.int_ctrl_reg);
		now.int_ctrl_reg = 1;
#ifdef VAR_RANGES
		logval("int_ctrl_reg", ((int)now.int_ctrl_reg));
#endif
		;
		/* merge: interrupted_task = EP(151, 138, 151) */
		reached[1][138] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P1 *)_this)->_5_5_6_27_interrupted_task);
		((P1 *)_this)->_5_5_6_27_interrupted_task = ((int)now.EP);
#ifdef VAR_RANGES
		logval("Process2:interrupted_task", ((int)((P1 *)_this)->_5_5_6_27_interrupted_task));
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 106: // STATE 139 - resume_suspend.pml:381 - [(((interrupted_task>=1)&&(interrupted_task<=2)))] (148:0:1 - 1)
		IfNotBlocked
		reached[1][139] = 1;
		if (!(((((int)((P1 *)_this)->_5_5_6_27_interrupted_task)>=1)&&(((int)((P1 *)_this)->_5_5_6_27_interrupted_task)<=2))))
			continue;
		/* merge: tcb[interrupted_task].state = 1(0, 140, 148) */
		reached[1][140] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[ Index(((int)((P1 *)_this)->_5_5_6_27_interrupted_task), 3) ].state);
		now.tcb[ Index(((P1 *)_this)->_5_5_6_27_interrupted_task, 3) ].state = 1;
#ifdef VAR_RANGES
		logval("tcb[Process2:interrupted_task].state", ((int)now.tcb[ Index(((int)((P1 *)_this)->_5_5_6_27_interrupted_task), 3) ].state));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 107: // STATE 141 - resume_suspend.pml:133 - [((readyQueue[tcb[interrupted_task].prio].tailIndex<5))] (174:0:2 - 1)
		IfNotBlocked
		reached[1][141] = 1;
		if (!((((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P1 *)_this)->_5_5_6_27_interrupted_task), 3) ].prio), 4) ].tailIndex)<5)))
			continue;
		/* merge: readyQueue[tcb[interrupted_task].prio].tasks[readyQueue[tcb[interrupted_task].prio].tailIndex] = interrupted_task(174, 142, 174) */
		reached[1][142] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P1 *)_this)->_5_5_6_27_interrupted_task), 3) ].prio), 4) ].tasks[ Index(((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P1 *)_this)->_5_5_6_27_interrupted_task), 3) ].prio), 4) ].tailIndex), 5) ]);
		now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_5_5_6_27_interrupted_task, 3) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_5_5_6_27_interrupted_task, 3) ].prio, 4) ].tailIndex, 5) ] = ((int)((P1 *)_this)->_5_5_6_27_interrupted_task);
#ifdef VAR_RANGES
		logval("readyQueue[tcb[Process2:interrupted_task].prio].tasks[readyQueue[tcb[Process2:interrupted_task].prio].tailIndex]", ((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P1 *)_this)->_5_5_6_27_interrupted_task), 3) ].prio), 4) ].tasks[ Index(((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P1 *)_this)->_5_5_6_27_interrupted_task), 3) ].prio), 4) ].tailIndex), 5) ]));
#endif
		;
		/* merge: readyQueue[tcb[interrupted_task].prio].tailIndex = (readyQueue[tcb[interrupted_task].prio].tailIndex+1)(174, 143, 174) */
		reached[1][143] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P1 *)_this)->_5_5_6_27_interrupted_task), 3) ].prio), 4) ].tailIndex);
		now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_5_5_6_27_interrupted_task, 3) ].prio, 4) ].tailIndex = (((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P1 *)_this)->_5_5_6_27_interrupted_task), 3) ].prio), 4) ].tailIndex)+1);
#ifdef VAR_RANGES
		logval("readyQueue[tcb[Process2:interrupted_task].prio].tailIndex", ((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P1 *)_this)->_5_5_6_27_interrupted_task), 3) ].prio), 4) ].tailIndex));
#endif
		;
		/* merge: .(goto)(0, 147, 174) */
		reached[1][147] = 1;
		;
		/* merge: .(goto)(0, 152, 174) */
		reached[1][152] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 108: // STATE 145 - resume_suspend.pml:136 - [assert(0)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][145] = 1;
		spin_assert(0, "0", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 109: // STATE 153 - resume_suspend.pml:204 - [prio = 0] (0:169:6 - 1)
		IfNotBlocked
		reached[1][153] = 1;
		(trpt+1)->bup.ovals = grab_ints(6);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)_this)->_5_5_6_27_12_prio);
		((P1 *)_this)->_5_5_6_27_12_prio = 0;
#ifdef VAR_RANGES
		logval("Process2:prio", ((int)((P1 *)_this)->_5_5_6_27_12_prio));
#endif
		;
		/* merge: top_task = 0(169, 154, 169) */
		reached[1][154] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)_this)->_5_5_6_27_12_top_task);
		((P1 *)_this)->_5_5_6_27_12_top_task = 0;
#ifdef VAR_RANGES
		logval("Process2:top_task", ((int)((P1 *)_this)->_5_5_6_27_12_top_task));
#endif
		;
		/* merge: found = 0(169, 155, 169) */
		reached[1][155] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P1 *)_this)->_5_5_6_27_12_found);
		((P1 *)_this)->_5_5_6_27_12_found = 0;
#ifdef VAR_RANGES
		logval("Process2:found", ((int)((P1 *)_this)->_5_5_6_27_12_found));
#endif
		;
		/* merge: prio = 0(169, 156, 169) */
		reached[1][156] = 1;
		(trpt+1)->bup.ovals[3] = ((int)((P1 *)_this)->_5_5_6_27_12_prio);
		((P1 *)_this)->_5_5_6_27_12_prio = 0;
#ifdef VAR_RANGES
		logval("Process2:prio", ((int)((P1 *)_this)->_5_5_6_27_12_prio));
#endif
		;
		/* merge: top_task = 0(169, 157, 169) */
		reached[1][157] = 1;
		(trpt+1)->bup.ovals[4] = ((int)((P1 *)_this)->_5_5_6_27_12_top_task);
		((P1 *)_this)->_5_5_6_27_12_top_task = 0;
#ifdef VAR_RANGES
		logval("Process2:top_task", ((int)((P1 *)_this)->_5_5_6_27_12_top_task));
#endif
		;
		/* merge: found = 0(169, 158, 169) */
		reached[1][158] = 1;
		(trpt+1)->bup.ovals[5] = ((int)((P1 *)_this)->_5_5_6_27_12_found);
		((P1 *)_this)->_5_5_6_27_12_found = 0;
#ifdef VAR_RANGES
		logval("Process2:found", ((int)((P1 *)_this)->_5_5_6_27_12_found));
#endif
		;
		/* merge: .(goto)(0, 170, 169) */
		reached[1][170] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 110: // STATE 159 - resume_suspend.pml:213 - [(((prio<4)&&!(found)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][159] = 1;
		if (!(((((int)((P1 *)_this)->_5_5_6_27_12_prio)<4)&& !(((int)((P1 *)_this)->_5_5_6_27_12_found)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 111: // STATE 160 - resume_suspend.pml:215 - [((readyQueue[prio].tailIndex>0))] (169:0:2 - 1)
		IfNotBlocked
		reached[1][160] = 1;
		if (!((((int)now.readyQueue[ Index(((int)((P1 *)_this)->_5_5_6_27_12_prio), 4) ].tailIndex)>0)))
			continue;
		/* merge: top_task = readyQueue[prio].tasks[0](169, 161, 169) */
		reached[1][161] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)_this)->_5_5_6_27_12_top_task);
		((P1 *)_this)->_5_5_6_27_12_top_task = ((int)now.readyQueue[ Index(((int)((P1 *)_this)->_5_5_6_27_12_prio), 4) ].tasks[0]);
#ifdef VAR_RANGES
		logval("Process2:top_task", ((int)((P1 *)_this)->_5_5_6_27_12_top_task));
#endif
		;
		/* merge: found = 1(169, 162, 169) */
		reached[1][162] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)_this)->_5_5_6_27_12_found);
		((P1 *)_this)->_5_5_6_27_12_found = 1;
#ifdef VAR_RANGES
		logval("Process2:found", ((int)((P1 *)_this)->_5_5_6_27_12_found));
#endif
		;
		/* merge: .(goto)(0, 166, 169) */
		reached[1][166] = 1;
		;
		/* merge: .(goto)(0, 170, 169) */
		reached[1][170] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 112: // STATE 164 - resume_suspend.pml:221 - [prio = (prio+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][164] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)_this)->_5_5_6_27_12_prio);
		((P1 *)_this)->_5_5_6_27_12_prio = (((int)((P1 *)_this)->_5_5_6_27_12_prio)+1);
#ifdef VAR_RANGES
		logval("Process2:prio", ((int)((P1 *)_this)->_5_5_6_27_12_prio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 113: // STATE 167 - resume_suspend.pml:223 - [(((prio>=4)||found))] (192:0:3 - 1)
		IfNotBlocked
		reached[1][167] = 1;
		if (!(((((int)((P1 *)_this)->_5_5_6_27_12_prio)>=4)||((int)((P1 *)_this)->_5_5_6_27_12_found))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _5_5_6_27_12_found */  (trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->_5_5_6_27_12_found;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->_5_5_6_27_12_found = 0;
		/* merge: goto :b16(192, 168, 192) */
		reached[1][168] = 1;
		;
		/* merge: newTask = top_task(192, 172, 192) */
		reached[1][172] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.newTask);
		now.newTask = ((int)((P1 *)_this)->_5_5_6_27_12_top_task);
#ifdef VAR_RANGES
		logval("newTask", ((int)now.newTask));
#endif
		;
		/* merge: topPrio = prio(192, 173, 192) */
		reached[1][173] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.topPrio);
		now.topPrio = ((int)((P1 *)_this)->_5_5_6_27_12_prio);
#ifdef VAR_RANGES
		logval("topPrio", ((int)now.topPrio));
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 114: // STATE 172 - resume_suspend.pml:227 - [newTask = top_task] (0:192:2 - 3)
		IfNotBlocked
		reached[1][172] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.newTask);
		now.newTask = ((int)((P1 *)_this)->_5_5_6_27_12_top_task);
#ifdef VAR_RANGES
		logval("newTask", ((int)now.newTask));
#endif
		;
		/* merge: topPrio = prio(192, 173, 192) */
		reached[1][173] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.topPrio);
		now.topPrio = ((int)((P1 *)_this)->_5_5_6_27_12_prio);
#ifdef VAR_RANGES
		logval("topPrio", ((int)now.topPrio));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 115: // STATE 175 - resume_suspend.pml:173 - [idx = 0] (0:182:2 - 1)
		IfNotBlocked
		reached[1][175] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)_this)->_5_5_6_27_13_idx);
		((P1 *)_this)->_5_5_6_27_13_idx = 0;
#ifdef VAR_RANGES
		logval("Process2:idx", ((int)((P1 *)_this)->_5_5_6_27_13_idx));
#endif
		;
		/* merge: idx = 0(182, 176, 182) */
		reached[1][176] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)_this)->_5_5_6_27_13_idx);
		((P1 *)_this)->_5_5_6_27_13_idx = 0;
#ifdef VAR_RANGES
		logval("Process2:idx", ((int)((P1 *)_this)->_5_5_6_27_13_idx));
#endif
		;
		/* merge: .(goto)(0, 183, 182) */
		reached[1][183] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 116: // STATE 177 - resume_suspend.pml:177 - [((idx<(readyQueue[topPrio].tailIndex-1)))] (182:0:2 - 1)
		IfNotBlocked
		reached[1][177] = 1;
		if (!((((int)((P1 *)_this)->_5_5_6_27_13_idx)<(((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1))))
			continue;
		/* merge: readyQueue[topPrio].tasks[idx] = readyQueue[topPrio].tasks[(idx+1)](182, 178, 182) */
		reached[1][178] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index(((int)((P1 *)_this)->_5_5_6_27_13_idx), 5) ]);
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index(((P1 *)_this)->_5_5_6_27_13_idx, 5) ] = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index((((int)((P1 *)_this)->_5_5_6_27_13_idx)+1), 5) ]);
#ifdef VAR_RANGES
		logval("readyQueue[topPrio].tasks[Process2:idx]", ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index(((int)((P1 *)_this)->_5_5_6_27_13_idx), 5) ]));
#endif
		;
		/* merge: idx = (idx+1)(182, 179, 182) */
		reached[1][179] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)_this)->_5_5_6_27_13_idx);
		((P1 *)_this)->_5_5_6_27_13_idx = (((int)((P1 *)_this)->_5_5_6_27_13_idx)+1);
#ifdef VAR_RANGES
		logval("Process2:idx", ((int)((P1 *)_this)->_5_5_6_27_13_idx));
#endif
		;
		/* merge: .(goto)(0, 183, 182) */
		reached[1][183] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 117: // STATE 180 - resume_suspend.pml:180 - [((idx>=(readyQueue[topPrio].tailIndex-1)))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][180] = 1;
		if (!((((int)((P1 *)_this)->_5_5_6_27_13_idx)>=(((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _5_5_6_27_13_idx */  (trpt+1)->bup.oval = ((P1 *)_this)->_5_5_6_27_13_idx;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->_5_5_6_27_13_idx = 0;
		_m = 3; goto P999; /* 0 */
	case 118: // STATE 185 - resume_suspend.pml:185 - [((readyQueue[topPrio].tailIndex>0))] (196:0:4 - 1)
		IfNotBlocked
		reached[1][185] = 1;
		if (!((((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)>0)))
			continue;
		/* merge: readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)] = 255(196, 186, 196) */
		reached[1][186] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index((((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1), 5) ]);
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index((now.readyQueue[ Index(now.topPrio, 4) ].tailIndex-1), 5) ] = 255;
#ifdef VAR_RANGES
		logval("readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)]", ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index((((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1), 5) ]));
#endif
		;
		/* merge: readyQueue[topPrio].tailIndex = (readyQueue[topPrio].tailIndex-1)(196, 187, 196) */
		reached[1][187] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex);
		now.readyQueue[ Index(now.topPrio, 4) ].tailIndex = (((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1);
#ifdef VAR_RANGES
		logval("readyQueue[topPrio].tailIndex", ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex));
#endif
		;
		/* merge: .(goto)(196, 191, 196) */
		reached[1][191] = 1;
		;
		/* merge: tcb[newTask].state = 4(196, 193, 196) */
		reached[1][193] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.tcb[ Index(((int)now.newTask), 3) ].state);
		now.tcb[ Index(now.newTask, 3) ].state = 4;
#ifdef VAR_RANGES
		logval("tcb[newTask].state", ((int)now.tcb[ Index(((int)now.newTask), 3) ].state));
#endif
		;
		/* merge: EP = newTask(196, 194, 196) */
		reached[1][194] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.EP);
		now.EP = ((int)now.newTask);
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 5 */
	case 119: // STATE 189 - resume_suspend.pml:188 - [(1)] (196:0:2 - 1)
		IfNotBlocked
		reached[1][189] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(196, 191, 196) */
		reached[1][191] = 1;
		;
		/* merge: tcb[newTask].state = 4(196, 193, 196) */
		reached[1][193] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.tcb[ Index(((int)now.newTask), 3) ].state);
		now.tcb[ Index(now.newTask, 3) ].state = 4;
#ifdef VAR_RANGES
		logval("tcb[newTask].state", ((int)now.tcb[ Index(((int)now.newTask), 3) ].state));
#endif
		;
		/* merge: EP = newTask(196, 194, 196) */
		reached[1][194] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.EP);
		now.EP = ((int)now.newTask);
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 120: // STATE 193 - resume_suspend.pml:392 - [tcb[newTask].state = 4] (0:196:2 - 3)
		IfNotBlocked
		reached[1][193] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.tcb[ Index(((int)now.newTask), 3) ].state);
		now.tcb[ Index(now.newTask, 3) ].state = 4;
#ifdef VAR_RANGES
		logval("tcb[newTask].state", ((int)now.tcb[ Index(((int)now.newTask), 3) ].state));
#endif
		;
		/* merge: EP = newTask(196, 194, 196) */
		reached[1][194] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.EP);
		now.EP = ((int)now.newTask);
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 121: // STATE 195 - resume_suspend.pml:238 - [int_ctrl_reg = int_save] (0:0:1 - 1)
		IfNotBlocked
		reached[1][195] = 1;
		(trpt+1)->bup.oval = ((int)now.int_ctrl_reg);
		now.int_ctrl_reg = ((int)now.int_save);
#ifdef VAR_RANGES
		logval("int_ctrl_reg", ((int)now.int_ctrl_reg));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 122: // STATE 206 - resume_suspend.pml:238 - [int_ctrl_reg = int_save] (0:0:1 - 1)
		IfNotBlocked
		reached[1][206] = 1;
		(trpt+1)->bup.oval = ((int)now.int_ctrl_reg);
		now.int_ctrl_reg = ((int)now.int_save);
#ifdef VAR_RANGES
		logval("int_ctrl_reg", ((int)now.int_ctrl_reg));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 123: // STATE 213 - resume_suspend.pml:372 - [interrupted_task = 0] (0:217:2 - 1)
		IfNotBlocked
		reached[1][213] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)_this)->_5_5_7_interrupted_task);
		((P1 *)_this)->_5_5_7_interrupted_task = 0;
#ifdef VAR_RANGES
		logval("Process2:interrupted_task", ((int)((P1 *)_this)->_5_5_7_interrupted_task));
#endif
		;
		/* merge: interrupted_task = 0(217, 214, 217) */
		reached[1][214] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)_this)->_5_5_7_interrupted_task);
		((P1 *)_this)->_5_5_7_interrupted_task = 0;
#ifdef VAR_RANGES
		logval("Process2:interrupted_task", ((int)((P1 *)_this)->_5_5_7_interrupted_task));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 124: // STATE 215 - resume_suspend.pml:234 - [int_save = int_ctrl_reg] (0:231:3 - 1)
		IfNotBlocked
		reached[1][215] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.int_save);
		now.int_save = ((int)now.int_ctrl_reg);
#ifdef VAR_RANGES
		logval("int_save", ((int)now.int_save));
#endif
		;
		/* merge: int_ctrl_reg = 1(231, 216, 231) */
		reached[1][216] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.int_ctrl_reg);
		now.int_ctrl_reg = 1;
#ifdef VAR_RANGES
		logval("int_ctrl_reg", ((int)now.int_ctrl_reg));
#endif
		;
		/* merge: interrupted_task = EP(231, 218, 231) */
		reached[1][218] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P1 *)_this)->_5_5_7_interrupted_task);
		((P1 *)_this)->_5_5_7_interrupted_task = ((int)now.EP);
#ifdef VAR_RANGES
		logval("Process2:interrupted_task", ((int)((P1 *)_this)->_5_5_7_interrupted_task));
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 125: // STATE 219 - resume_suspend.pml:381 - [(((interrupted_task>=1)&&(interrupted_task<=2)))] (228:0:1 - 1)
		IfNotBlocked
		reached[1][219] = 1;
		if (!(((((int)((P1 *)_this)->_5_5_7_interrupted_task)>=1)&&(((int)((P1 *)_this)->_5_5_7_interrupted_task)<=2))))
			continue;
		/* merge: tcb[interrupted_task].state = 1(0, 220, 228) */
		reached[1][220] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[ Index(((int)((P1 *)_this)->_5_5_7_interrupted_task), 3) ].state);
		now.tcb[ Index(((P1 *)_this)->_5_5_7_interrupted_task, 3) ].state = 1;
#ifdef VAR_RANGES
		logval("tcb[Process2:interrupted_task].state", ((int)now.tcb[ Index(((int)((P1 *)_this)->_5_5_7_interrupted_task), 3) ].state));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 126: // STATE 221 - resume_suspend.pml:133 - [((readyQueue[tcb[interrupted_task].prio].tailIndex<5))] (254:0:2 - 1)
		IfNotBlocked
		reached[1][221] = 1;
		if (!((((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P1 *)_this)->_5_5_7_interrupted_task), 3) ].prio), 4) ].tailIndex)<5)))
			continue;
		/* merge: readyQueue[tcb[interrupted_task].prio].tasks[readyQueue[tcb[interrupted_task].prio].tailIndex] = interrupted_task(254, 222, 254) */
		reached[1][222] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P1 *)_this)->_5_5_7_interrupted_task), 3) ].prio), 4) ].tasks[ Index(((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P1 *)_this)->_5_5_7_interrupted_task), 3) ].prio), 4) ].tailIndex), 5) ]);
		now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_5_5_7_interrupted_task, 3) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_5_5_7_interrupted_task, 3) ].prio, 4) ].tailIndex, 5) ] = ((int)((P1 *)_this)->_5_5_7_interrupted_task);
#ifdef VAR_RANGES
		logval("readyQueue[tcb[Process2:interrupted_task].prio].tasks[readyQueue[tcb[Process2:interrupted_task].prio].tailIndex]", ((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P1 *)_this)->_5_5_7_interrupted_task), 3) ].prio), 4) ].tasks[ Index(((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P1 *)_this)->_5_5_7_interrupted_task), 3) ].prio), 4) ].tailIndex), 5) ]));
#endif
		;
		/* merge: readyQueue[tcb[interrupted_task].prio].tailIndex = (readyQueue[tcb[interrupted_task].prio].tailIndex+1)(254, 223, 254) */
		reached[1][223] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P1 *)_this)->_5_5_7_interrupted_task), 3) ].prio), 4) ].tailIndex);
		now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_5_5_7_interrupted_task, 3) ].prio, 4) ].tailIndex = (((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P1 *)_this)->_5_5_7_interrupted_task), 3) ].prio), 4) ].tailIndex)+1);
#ifdef VAR_RANGES
		logval("readyQueue[tcb[Process2:interrupted_task].prio].tailIndex", ((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P1 *)_this)->_5_5_7_interrupted_task), 3) ].prio), 4) ].tailIndex));
#endif
		;
		/* merge: .(goto)(0, 227, 254) */
		reached[1][227] = 1;
		;
		/* merge: .(goto)(0, 232, 254) */
		reached[1][232] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 127: // STATE 225 - resume_suspend.pml:136 - [assert(0)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][225] = 1;
		spin_assert(0, "0", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 128: // STATE 233 - resume_suspend.pml:204 - [prio = 0] (0:249:6 - 1)
		IfNotBlocked
		reached[1][233] = 1;
		(trpt+1)->bup.ovals = grab_ints(6);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)_this)->_5_5_7_31_prio);
		((P1 *)_this)->_5_5_7_31_prio = 0;
#ifdef VAR_RANGES
		logval("Process2:prio", ((int)((P1 *)_this)->_5_5_7_31_prio));
#endif
		;
		/* merge: top_task = 0(249, 234, 249) */
		reached[1][234] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)_this)->_5_5_7_31_top_task);
		((P1 *)_this)->_5_5_7_31_top_task = 0;
#ifdef VAR_RANGES
		logval("Process2:top_task", ((int)((P1 *)_this)->_5_5_7_31_top_task));
#endif
		;
		/* merge: found = 0(249, 235, 249) */
		reached[1][235] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P1 *)_this)->_5_5_7_31_found);
		((P1 *)_this)->_5_5_7_31_found = 0;
#ifdef VAR_RANGES
		logval("Process2:found", ((int)((P1 *)_this)->_5_5_7_31_found));
#endif
		;
		/* merge: prio = 0(249, 236, 249) */
		reached[1][236] = 1;
		(trpt+1)->bup.ovals[3] = ((int)((P1 *)_this)->_5_5_7_31_prio);
		((P1 *)_this)->_5_5_7_31_prio = 0;
#ifdef VAR_RANGES
		logval("Process2:prio", ((int)((P1 *)_this)->_5_5_7_31_prio));
#endif
		;
		/* merge: top_task = 0(249, 237, 249) */
		reached[1][237] = 1;
		(trpt+1)->bup.ovals[4] = ((int)((P1 *)_this)->_5_5_7_31_top_task);
		((P1 *)_this)->_5_5_7_31_top_task = 0;
#ifdef VAR_RANGES
		logval("Process2:top_task", ((int)((P1 *)_this)->_5_5_7_31_top_task));
#endif
		;
		/* merge: found = 0(249, 238, 249) */
		reached[1][238] = 1;
		(trpt+1)->bup.ovals[5] = ((int)((P1 *)_this)->_5_5_7_31_found);
		((P1 *)_this)->_5_5_7_31_found = 0;
#ifdef VAR_RANGES
		logval("Process2:found", ((int)((P1 *)_this)->_5_5_7_31_found));
#endif
		;
		/* merge: .(goto)(0, 250, 249) */
		reached[1][250] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 129: // STATE 239 - resume_suspend.pml:213 - [(((prio<4)&&!(found)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][239] = 1;
		if (!(((((int)((P1 *)_this)->_5_5_7_31_prio)<4)&& !(((int)((P1 *)_this)->_5_5_7_31_found)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 130: // STATE 240 - resume_suspend.pml:215 - [((readyQueue[prio].tailIndex>0))] (249:0:2 - 1)
		IfNotBlocked
		reached[1][240] = 1;
		if (!((((int)now.readyQueue[ Index(((int)((P1 *)_this)->_5_5_7_31_prio), 4) ].tailIndex)>0)))
			continue;
		/* merge: top_task = readyQueue[prio].tasks[0](249, 241, 249) */
		reached[1][241] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)_this)->_5_5_7_31_top_task);
		((P1 *)_this)->_5_5_7_31_top_task = ((int)now.readyQueue[ Index(((int)((P1 *)_this)->_5_5_7_31_prio), 4) ].tasks[0]);
#ifdef VAR_RANGES
		logval("Process2:top_task", ((int)((P1 *)_this)->_5_5_7_31_top_task));
#endif
		;
		/* merge: found = 1(249, 242, 249) */
		reached[1][242] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)_this)->_5_5_7_31_found);
		((P1 *)_this)->_5_5_7_31_found = 1;
#ifdef VAR_RANGES
		logval("Process2:found", ((int)((P1 *)_this)->_5_5_7_31_found));
#endif
		;
		/* merge: .(goto)(0, 246, 249) */
		reached[1][246] = 1;
		;
		/* merge: .(goto)(0, 250, 249) */
		reached[1][250] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 131: // STATE 244 - resume_suspend.pml:221 - [prio = (prio+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][244] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)_this)->_5_5_7_31_prio);
		((P1 *)_this)->_5_5_7_31_prio = (((int)((P1 *)_this)->_5_5_7_31_prio)+1);
#ifdef VAR_RANGES
		logval("Process2:prio", ((int)((P1 *)_this)->_5_5_7_31_prio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 132: // STATE 247 - resume_suspend.pml:223 - [(((prio>=4)||found))] (272:0:3 - 1)
		IfNotBlocked
		reached[1][247] = 1;
		if (!(((((int)((P1 *)_this)->_5_5_7_31_prio)>=4)||((int)((P1 *)_this)->_5_5_7_31_found))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _5_5_7_31_found */  (trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->_5_5_7_31_found;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->_5_5_7_31_found = 0;
		/* merge: goto :b18(272, 248, 272) */
		reached[1][248] = 1;
		;
		/* merge: newTask = top_task(272, 252, 272) */
		reached[1][252] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.newTask);
		now.newTask = ((int)((P1 *)_this)->_5_5_7_31_top_task);
#ifdef VAR_RANGES
		logval("newTask", ((int)now.newTask));
#endif
		;
		/* merge: topPrio = prio(272, 253, 272) */
		reached[1][253] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.topPrio);
		now.topPrio = ((int)((P1 *)_this)->_5_5_7_31_prio);
#ifdef VAR_RANGES
		logval("topPrio", ((int)now.topPrio));
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 133: // STATE 252 - resume_suspend.pml:227 - [newTask = top_task] (0:272:2 - 3)
		IfNotBlocked
		reached[1][252] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.newTask);
		now.newTask = ((int)((P1 *)_this)->_5_5_7_31_top_task);
#ifdef VAR_RANGES
		logval("newTask", ((int)now.newTask));
#endif
		;
		/* merge: topPrio = prio(272, 253, 272) */
		reached[1][253] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.topPrio);
		now.topPrio = ((int)((P1 *)_this)->_5_5_7_31_prio);
#ifdef VAR_RANGES
		logval("topPrio", ((int)now.topPrio));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 134: // STATE 255 - resume_suspend.pml:173 - [idx = 0] (0:262:2 - 1)
		IfNotBlocked
		reached[1][255] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)_this)->_5_5_7_32_idx);
		((P1 *)_this)->_5_5_7_32_idx = 0;
#ifdef VAR_RANGES
		logval("Process2:idx", ((int)((P1 *)_this)->_5_5_7_32_idx));
#endif
		;
		/* merge: idx = 0(262, 256, 262) */
		reached[1][256] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)_this)->_5_5_7_32_idx);
		((P1 *)_this)->_5_5_7_32_idx = 0;
#ifdef VAR_RANGES
		logval("Process2:idx", ((int)((P1 *)_this)->_5_5_7_32_idx));
#endif
		;
		/* merge: .(goto)(0, 263, 262) */
		reached[1][263] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 135: // STATE 257 - resume_suspend.pml:177 - [((idx<(readyQueue[topPrio].tailIndex-1)))] (262:0:2 - 1)
		IfNotBlocked
		reached[1][257] = 1;
		if (!((((int)((P1 *)_this)->_5_5_7_32_idx)<(((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1))))
			continue;
		/* merge: readyQueue[topPrio].tasks[idx] = readyQueue[topPrio].tasks[(idx+1)](262, 258, 262) */
		reached[1][258] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index(((int)((P1 *)_this)->_5_5_7_32_idx), 5) ]);
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index(((P1 *)_this)->_5_5_7_32_idx, 5) ] = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index((((int)((P1 *)_this)->_5_5_7_32_idx)+1), 5) ]);
#ifdef VAR_RANGES
		logval("readyQueue[topPrio].tasks[Process2:idx]", ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index(((int)((P1 *)_this)->_5_5_7_32_idx), 5) ]));
#endif
		;
		/* merge: idx = (idx+1)(262, 259, 262) */
		reached[1][259] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)_this)->_5_5_7_32_idx);
		((P1 *)_this)->_5_5_7_32_idx = (((int)((P1 *)_this)->_5_5_7_32_idx)+1);
#ifdef VAR_RANGES
		logval("Process2:idx", ((int)((P1 *)_this)->_5_5_7_32_idx));
#endif
		;
		/* merge: .(goto)(0, 263, 262) */
		reached[1][263] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 136: // STATE 260 - resume_suspend.pml:180 - [((idx>=(readyQueue[topPrio].tailIndex-1)))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][260] = 1;
		if (!((((int)((P1 *)_this)->_5_5_7_32_idx)>=(((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _5_5_7_32_idx */  (trpt+1)->bup.oval = ((P1 *)_this)->_5_5_7_32_idx;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->_5_5_7_32_idx = 0;
		_m = 3; goto P999; /* 0 */
	case 137: // STATE 265 - resume_suspend.pml:185 - [((readyQueue[topPrio].tailIndex>0))] (276:0:4 - 1)
		IfNotBlocked
		reached[1][265] = 1;
		if (!((((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)>0)))
			continue;
		/* merge: readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)] = 255(276, 266, 276) */
		reached[1][266] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index((((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1), 5) ]);
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index((now.readyQueue[ Index(now.topPrio, 4) ].tailIndex-1), 5) ] = 255;
#ifdef VAR_RANGES
		logval("readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)]", ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index((((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1), 5) ]));
#endif
		;
		/* merge: readyQueue[topPrio].tailIndex = (readyQueue[topPrio].tailIndex-1)(276, 267, 276) */
		reached[1][267] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex);
		now.readyQueue[ Index(now.topPrio, 4) ].tailIndex = (((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1);
#ifdef VAR_RANGES
		logval("readyQueue[topPrio].tailIndex", ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex));
#endif
		;
		/* merge: .(goto)(276, 271, 276) */
		reached[1][271] = 1;
		;
		/* merge: tcb[newTask].state = 4(276, 273, 276) */
		reached[1][273] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.tcb[ Index(((int)now.newTask), 3) ].state);
		now.tcb[ Index(now.newTask, 3) ].state = 4;
#ifdef VAR_RANGES
		logval("tcb[newTask].state", ((int)now.tcb[ Index(((int)now.newTask), 3) ].state));
#endif
		;
		/* merge: EP = newTask(276, 274, 276) */
		reached[1][274] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.EP);
		now.EP = ((int)now.newTask);
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 5 */
	case 138: // STATE 269 - resume_suspend.pml:188 - [(1)] (276:0:2 - 1)
		IfNotBlocked
		reached[1][269] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(276, 271, 276) */
		reached[1][271] = 1;
		;
		/* merge: tcb[newTask].state = 4(276, 273, 276) */
		reached[1][273] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.tcb[ Index(((int)now.newTask), 3) ].state);
		now.tcb[ Index(now.newTask, 3) ].state = 4;
#ifdef VAR_RANGES
		logval("tcb[newTask].state", ((int)now.tcb[ Index(((int)now.newTask), 3) ].state));
#endif
		;
		/* merge: EP = newTask(276, 274, 276) */
		reached[1][274] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.EP);
		now.EP = ((int)now.newTask);
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 139: // STATE 273 - resume_suspend.pml:392 - [tcb[newTask].state = 4] (0:276:2 - 3)
		IfNotBlocked
		reached[1][273] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.tcb[ Index(((int)now.newTask), 3) ].state);
		now.tcb[ Index(now.newTask, 3) ].state = 4;
#ifdef VAR_RANGES
		logval("tcb[newTask].state", ((int)now.tcb[ Index(((int)now.newTask), 3) ].state));
#endif
		;
		/* merge: EP = newTask(276, 274, 276) */
		reached[1][274] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.EP);
		now.EP = ((int)now.newTask);
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 140: // STATE 275 - resume_suspend.pml:238 - [int_ctrl_reg = int_save] (0:0:1 - 1)
		IfNotBlocked
		reached[1][275] = 1;
		(trpt+1)->bup.oval = ((int)now.int_ctrl_reg);
		now.int_ctrl_reg = ((int)now.int_save);
#ifdef VAR_RANGES
		logval("int_ctrl_reg", ((int)now.int_ctrl_reg));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 141: // STATE 282 - resume_suspend.pml:416 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][282] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Process1 */
	case 142: // STATE 1 - resume_suspend.pml:405 - [((EP==1))] (67:0:0 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		if (!((((int)now.EP)==1)))
			continue;
		/* merge: printf('Process 1 is running\\n')(0, 2, 67) */
		reached[0][2] = 1;
		Printf("Process 1 is running\n");
		_m = 3; goto P999; /* 1 */
	case 143: // STATE 3 - resume_suspend.pml:372 - [interrupted_task = 0] (0:7:2 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->_4_1_1_interrupted_task);
		((P0 *)_this)->_4_1_1_interrupted_task = 0;
#ifdef VAR_RANGES
		logval("Process1:interrupted_task", ((int)((P0 *)_this)->_4_1_1_interrupted_task));
#endif
		;
		/* merge: interrupted_task = 0(7, 4, 7) */
		reached[0][4] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->_4_1_1_interrupted_task);
		((P0 *)_this)->_4_1_1_interrupted_task = 0;
#ifdef VAR_RANGES
		logval("Process1:interrupted_task", ((int)((P0 *)_this)->_4_1_1_interrupted_task));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 144: // STATE 5 - resume_suspend.pml:234 - [int_save = int_ctrl_reg] (0:21:3 - 1)
		IfNotBlocked
		reached[0][5] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.int_save);
		now.int_save = ((int)now.int_ctrl_reg);
#ifdef VAR_RANGES
		logval("int_save", ((int)now.int_save));
#endif
		;
		/* merge: int_ctrl_reg = 1(21, 6, 21) */
		reached[0][6] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.int_ctrl_reg);
		now.int_ctrl_reg = 1;
#ifdef VAR_RANGES
		logval("int_ctrl_reg", ((int)now.int_ctrl_reg));
#endif
		;
		/* merge: interrupted_task = EP(21, 8, 21) */
		reached[0][8] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P0 *)_this)->_4_1_1_interrupted_task);
		((P0 *)_this)->_4_1_1_interrupted_task = ((int)now.EP);
#ifdef VAR_RANGES
		logval("Process1:interrupted_task", ((int)((P0 *)_this)->_4_1_1_interrupted_task));
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 145: // STATE 9 - resume_suspend.pml:381 - [(((interrupted_task>=1)&&(interrupted_task<=2)))] (18:0:1 - 1)
		IfNotBlocked
		reached[0][9] = 1;
		if (!(((((int)((P0 *)_this)->_4_1_1_interrupted_task)>=1)&&(((int)((P0 *)_this)->_4_1_1_interrupted_task)<=2))))
			continue;
		/* merge: tcb[interrupted_task].state = 1(0, 10, 18) */
		reached[0][10] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[ Index(((int)((P0 *)_this)->_4_1_1_interrupted_task), 3) ].state);
		now.tcb[ Index(((P0 *)_this)->_4_1_1_interrupted_task, 3) ].state = 1;
#ifdef VAR_RANGES
		logval("tcb[Process1:interrupted_task].state", ((int)now.tcb[ Index(((int)((P0 *)_this)->_4_1_1_interrupted_task), 3) ].state));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 146: // STATE 11 - resume_suspend.pml:133 - [((readyQueue[tcb[interrupted_task].prio].tailIndex<5))] (44:0:2 - 1)
		IfNotBlocked
		reached[0][11] = 1;
		if (!((((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P0 *)_this)->_4_1_1_interrupted_task), 3) ].prio), 4) ].tailIndex)<5)))
			continue;
		/* merge: readyQueue[tcb[interrupted_task].prio].tasks[readyQueue[tcb[interrupted_task].prio].tailIndex] = interrupted_task(44, 12, 44) */
		reached[0][12] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P0 *)_this)->_4_1_1_interrupted_task), 3) ].prio), 4) ].tasks[ Index(((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P0 *)_this)->_4_1_1_interrupted_task), 3) ].prio), 4) ].tailIndex), 5) ]);
		now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_4_1_1_interrupted_task, 3) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_4_1_1_interrupted_task, 3) ].prio, 4) ].tailIndex, 5) ] = ((int)((P0 *)_this)->_4_1_1_interrupted_task);
#ifdef VAR_RANGES
		logval("readyQueue[tcb[Process1:interrupted_task].prio].tasks[readyQueue[tcb[Process1:interrupted_task].prio].tailIndex]", ((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P0 *)_this)->_4_1_1_interrupted_task), 3) ].prio), 4) ].tasks[ Index(((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P0 *)_this)->_4_1_1_interrupted_task), 3) ].prio), 4) ].tailIndex), 5) ]));
#endif
		;
		/* merge: readyQueue[tcb[interrupted_task].prio].tailIndex = (readyQueue[tcb[interrupted_task].prio].tailIndex+1)(44, 13, 44) */
		reached[0][13] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P0 *)_this)->_4_1_1_interrupted_task), 3) ].prio), 4) ].tailIndex);
		now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_4_1_1_interrupted_task, 3) ].prio, 4) ].tailIndex = (((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P0 *)_this)->_4_1_1_interrupted_task), 3) ].prio), 4) ].tailIndex)+1);
#ifdef VAR_RANGES
		logval("readyQueue[tcb[Process1:interrupted_task].prio].tailIndex", ((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P0 *)_this)->_4_1_1_interrupted_task), 3) ].prio), 4) ].tailIndex));
#endif
		;
		/* merge: .(goto)(0, 17, 44) */
		reached[0][17] = 1;
		;
		/* merge: .(goto)(0, 22, 44) */
		reached[0][22] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 147: // STATE 15 - resume_suspend.pml:136 - [assert(0)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][15] = 1;
		spin_assert(0, "0", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 148: // STATE 23 - resume_suspend.pml:204 - [prio = 0] (0:39:6 - 1)
		IfNotBlocked
		reached[0][23] = 1;
		(trpt+1)->bup.ovals = grab_ints(6);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->_4_1_1_3_prio);
		((P0 *)_this)->_4_1_1_3_prio = 0;
#ifdef VAR_RANGES
		logval("Process1:prio", ((int)((P0 *)_this)->_4_1_1_3_prio));
#endif
		;
		/* merge: top_task = 0(39, 24, 39) */
		reached[0][24] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->_4_1_1_3_top_task);
		((P0 *)_this)->_4_1_1_3_top_task = 0;
#ifdef VAR_RANGES
		logval("Process1:top_task", ((int)((P0 *)_this)->_4_1_1_3_top_task));
#endif
		;
		/* merge: found = 0(39, 25, 39) */
		reached[0][25] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P0 *)_this)->_4_1_1_3_found);
		((P0 *)_this)->_4_1_1_3_found = 0;
#ifdef VAR_RANGES
		logval("Process1:found", ((int)((P0 *)_this)->_4_1_1_3_found));
#endif
		;
		/* merge: prio = 0(39, 26, 39) */
		reached[0][26] = 1;
		(trpt+1)->bup.ovals[3] = ((int)((P0 *)_this)->_4_1_1_3_prio);
		((P0 *)_this)->_4_1_1_3_prio = 0;
#ifdef VAR_RANGES
		logval("Process1:prio", ((int)((P0 *)_this)->_4_1_1_3_prio));
#endif
		;
		/* merge: top_task = 0(39, 27, 39) */
		reached[0][27] = 1;
		(trpt+1)->bup.ovals[4] = ((int)((P0 *)_this)->_4_1_1_3_top_task);
		((P0 *)_this)->_4_1_1_3_top_task = 0;
#ifdef VAR_RANGES
		logval("Process1:top_task", ((int)((P0 *)_this)->_4_1_1_3_top_task));
#endif
		;
		/* merge: found = 0(39, 28, 39) */
		reached[0][28] = 1;
		(trpt+1)->bup.ovals[5] = ((int)((P0 *)_this)->_4_1_1_3_found);
		((P0 *)_this)->_4_1_1_3_found = 0;
#ifdef VAR_RANGES
		logval("Process1:found", ((int)((P0 *)_this)->_4_1_1_3_found));
#endif
		;
		/* merge: .(goto)(0, 40, 39) */
		reached[0][40] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 149: // STATE 29 - resume_suspend.pml:213 - [(((prio<4)&&!(found)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][29] = 1;
		if (!(((((int)((P0 *)_this)->_4_1_1_3_prio)<4)&& !(((int)((P0 *)_this)->_4_1_1_3_found)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 150: // STATE 30 - resume_suspend.pml:215 - [((readyQueue[prio].tailIndex>0))] (39:0:2 - 1)
		IfNotBlocked
		reached[0][30] = 1;
		if (!((((int)now.readyQueue[ Index(((int)((P0 *)_this)->_4_1_1_3_prio), 4) ].tailIndex)>0)))
			continue;
		/* merge: top_task = readyQueue[prio].tasks[0](39, 31, 39) */
		reached[0][31] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->_4_1_1_3_top_task);
		((P0 *)_this)->_4_1_1_3_top_task = ((int)now.readyQueue[ Index(((int)((P0 *)_this)->_4_1_1_3_prio), 4) ].tasks[0]);
#ifdef VAR_RANGES
		logval("Process1:top_task", ((int)((P0 *)_this)->_4_1_1_3_top_task));
#endif
		;
		/* merge: found = 1(39, 32, 39) */
		reached[0][32] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->_4_1_1_3_found);
		((P0 *)_this)->_4_1_1_3_found = 1;
#ifdef VAR_RANGES
		logval("Process1:found", ((int)((P0 *)_this)->_4_1_1_3_found));
#endif
		;
		/* merge: .(goto)(0, 36, 39) */
		reached[0][36] = 1;
		;
		/* merge: .(goto)(0, 40, 39) */
		reached[0][40] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 151: // STATE 34 - resume_suspend.pml:221 - [prio = (prio+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][34] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->_4_1_1_3_prio);
		((P0 *)_this)->_4_1_1_3_prio = (((int)((P0 *)_this)->_4_1_1_3_prio)+1);
#ifdef VAR_RANGES
		logval("Process1:prio", ((int)((P0 *)_this)->_4_1_1_3_prio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 152: // STATE 37 - resume_suspend.pml:223 - [(((prio>=4)||found))] (62:0:3 - 1)
		IfNotBlocked
		reached[0][37] = 1;
		if (!(((((int)((P0 *)_this)->_4_1_1_3_prio)>=4)||((int)((P0 *)_this)->_4_1_1_3_found))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _4_1_1_3_found */  (trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->_4_1_1_3_found;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->_4_1_1_3_found = 0;
		/* merge: goto :b1(62, 38, 62) */
		reached[0][38] = 1;
		;
		/* merge: newTask = top_task(62, 42, 62) */
		reached[0][42] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.newTask);
		now.newTask = ((int)((P0 *)_this)->_4_1_1_3_top_task);
#ifdef VAR_RANGES
		logval("newTask", ((int)now.newTask));
#endif
		;
		/* merge: topPrio = prio(62, 43, 62) */
		reached[0][43] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.topPrio);
		now.topPrio = ((int)((P0 *)_this)->_4_1_1_3_prio);
#ifdef VAR_RANGES
		logval("topPrio", ((int)now.topPrio));
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 153: // STATE 42 - resume_suspend.pml:227 - [newTask = top_task] (0:62:2 - 3)
		IfNotBlocked
		reached[0][42] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.newTask);
		now.newTask = ((int)((P0 *)_this)->_4_1_1_3_top_task);
#ifdef VAR_RANGES
		logval("newTask", ((int)now.newTask));
#endif
		;
		/* merge: topPrio = prio(62, 43, 62) */
		reached[0][43] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.topPrio);
		now.topPrio = ((int)((P0 *)_this)->_4_1_1_3_prio);
#ifdef VAR_RANGES
		logval("topPrio", ((int)now.topPrio));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 154: // STATE 45 - resume_suspend.pml:173 - [idx = 0] (0:52:2 - 1)
		IfNotBlocked
		reached[0][45] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->_4_1_1_4_idx);
		((P0 *)_this)->_4_1_1_4_idx = 0;
#ifdef VAR_RANGES
		logval("Process1:idx", ((int)((P0 *)_this)->_4_1_1_4_idx));
#endif
		;
		/* merge: idx = 0(52, 46, 52) */
		reached[0][46] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->_4_1_1_4_idx);
		((P0 *)_this)->_4_1_1_4_idx = 0;
#ifdef VAR_RANGES
		logval("Process1:idx", ((int)((P0 *)_this)->_4_1_1_4_idx));
#endif
		;
		/* merge: .(goto)(0, 53, 52) */
		reached[0][53] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 155: // STATE 47 - resume_suspend.pml:177 - [((idx<(readyQueue[topPrio].tailIndex-1)))] (52:0:2 - 1)
		IfNotBlocked
		reached[0][47] = 1;
		if (!((((int)((P0 *)_this)->_4_1_1_4_idx)<(((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1))))
			continue;
		/* merge: readyQueue[topPrio].tasks[idx] = readyQueue[topPrio].tasks[(idx+1)](52, 48, 52) */
		reached[0][48] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index(((int)((P0 *)_this)->_4_1_1_4_idx), 5) ]);
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index(((P0 *)_this)->_4_1_1_4_idx, 5) ] = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index((((int)((P0 *)_this)->_4_1_1_4_idx)+1), 5) ]);
#ifdef VAR_RANGES
		logval("readyQueue[topPrio].tasks[Process1:idx]", ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index(((int)((P0 *)_this)->_4_1_1_4_idx), 5) ]));
#endif
		;
		/* merge: idx = (idx+1)(52, 49, 52) */
		reached[0][49] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->_4_1_1_4_idx);
		((P0 *)_this)->_4_1_1_4_idx = (((int)((P0 *)_this)->_4_1_1_4_idx)+1);
#ifdef VAR_RANGES
		logval("Process1:idx", ((int)((P0 *)_this)->_4_1_1_4_idx));
#endif
		;
		/* merge: .(goto)(0, 53, 52) */
		reached[0][53] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 156: // STATE 50 - resume_suspend.pml:180 - [((idx>=(readyQueue[topPrio].tailIndex-1)))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][50] = 1;
		if (!((((int)((P0 *)_this)->_4_1_1_4_idx)>=(((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _4_1_1_4_idx */  (trpt+1)->bup.oval = ((P0 *)_this)->_4_1_1_4_idx;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->_4_1_1_4_idx = 0;
		_m = 3; goto P999; /* 0 */
	case 157: // STATE 55 - resume_suspend.pml:185 - [((readyQueue[topPrio].tailIndex>0))] (66:0:4 - 1)
		IfNotBlocked
		reached[0][55] = 1;
		if (!((((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)>0)))
			continue;
		/* merge: readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)] = 255(66, 56, 66) */
		reached[0][56] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index((((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1), 5) ]);
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index((now.readyQueue[ Index(now.topPrio, 4) ].tailIndex-1), 5) ] = 255;
#ifdef VAR_RANGES
		logval("readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)]", ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index((((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1), 5) ]));
#endif
		;
		/* merge: readyQueue[topPrio].tailIndex = (readyQueue[topPrio].tailIndex-1)(66, 57, 66) */
		reached[0][57] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex);
		now.readyQueue[ Index(now.topPrio, 4) ].tailIndex = (((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1);
#ifdef VAR_RANGES
		logval("readyQueue[topPrio].tailIndex", ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex));
#endif
		;
		/* merge: .(goto)(66, 61, 66) */
		reached[0][61] = 1;
		;
		/* merge: tcb[newTask].state = 4(66, 63, 66) */
		reached[0][63] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.tcb[ Index(((int)now.newTask), 3) ].state);
		now.tcb[ Index(now.newTask, 3) ].state = 4;
#ifdef VAR_RANGES
		logval("tcb[newTask].state", ((int)now.tcb[ Index(((int)now.newTask), 3) ].state));
#endif
		;
		/* merge: EP = newTask(66, 64, 66) */
		reached[0][64] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.EP);
		now.EP = ((int)now.newTask);
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 5 */
	case 158: // STATE 59 - resume_suspend.pml:188 - [(1)] (66:0:2 - 1)
		IfNotBlocked
		reached[0][59] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(66, 61, 66) */
		reached[0][61] = 1;
		;
		/* merge: tcb[newTask].state = 4(66, 63, 66) */
		reached[0][63] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.tcb[ Index(((int)now.newTask), 3) ].state);
		now.tcb[ Index(now.newTask, 3) ].state = 4;
#ifdef VAR_RANGES
		logval("tcb[newTask].state", ((int)now.tcb[ Index(((int)now.newTask), 3) ].state));
#endif
		;
		/* merge: EP = newTask(66, 64, 66) */
		reached[0][64] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.EP);
		now.EP = ((int)now.newTask);
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 159: // STATE 63 - resume_suspend.pml:392 - [tcb[newTask].state = 4] (0:66:2 - 3)
		IfNotBlocked
		reached[0][63] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.tcb[ Index(((int)now.newTask), 3) ].state);
		now.tcb[ Index(now.newTask, 3) ].state = 4;
#ifdef VAR_RANGES
		logval("tcb[newTask].state", ((int)now.tcb[ Index(((int)now.newTask), 3) ].state));
#endif
		;
		/* merge: EP = newTask(66, 64, 66) */
		reached[0][64] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.EP);
		now.EP = ((int)now.newTask);
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 160: // STATE 65 - resume_suspend.pml:238 - [int_ctrl_reg = int_save] (0:0:1 - 1)
		IfNotBlocked
		reached[0][65] = 1;
		(trpt+1)->bup.oval = ((int)now.int_ctrl_reg);
		now.int_ctrl_reg = ((int)now.int_save);
#ifdef VAR_RANGES
		logval("int_ctrl_reg", ((int)now.int_ctrl_reg));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 161: // STATE 69 - resume_suspend.pml:406 - [((EP==1))] (135:0:0 - 1)
		IfNotBlocked
		reached[0][69] = 1;
		if (!((((int)now.EP)==1)))
			continue;
		/* merge: assert((EP==1))(0, 70, 135) */
		reached[0][70] = 1;
		spin_assert((((int)now.EP)==1), "(EP==1)", II, tt, t);
		_m = 3; goto P999; /* 1 */
	case 162: // STATE 71 - resume_suspend.pml:372 - [interrupted_task = 0] (0:75:2 - 1)
		IfNotBlocked
		reached[0][71] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->_4_2_2_interrupted_task);
		((P0 *)_this)->_4_2_2_interrupted_task = 0;
#ifdef VAR_RANGES
		logval("Process1:interrupted_task", ((int)((P0 *)_this)->_4_2_2_interrupted_task));
#endif
		;
		/* merge: interrupted_task = 0(75, 72, 75) */
		reached[0][72] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->_4_2_2_interrupted_task);
		((P0 *)_this)->_4_2_2_interrupted_task = 0;
#ifdef VAR_RANGES
		logval("Process1:interrupted_task", ((int)((P0 *)_this)->_4_2_2_interrupted_task));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 163: // STATE 73 - resume_suspend.pml:234 - [int_save = int_ctrl_reg] (0:89:3 - 1)
		IfNotBlocked
		reached[0][73] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.int_save);
		now.int_save = ((int)now.int_ctrl_reg);
#ifdef VAR_RANGES
		logval("int_save", ((int)now.int_save));
#endif
		;
		/* merge: int_ctrl_reg = 1(89, 74, 89) */
		reached[0][74] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.int_ctrl_reg);
		now.int_ctrl_reg = 1;
#ifdef VAR_RANGES
		logval("int_ctrl_reg", ((int)now.int_ctrl_reg));
#endif
		;
		/* merge: interrupted_task = EP(89, 76, 89) */
		reached[0][76] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P0 *)_this)->_4_2_2_interrupted_task);
		((P0 *)_this)->_4_2_2_interrupted_task = ((int)now.EP);
#ifdef VAR_RANGES
		logval("Process1:interrupted_task", ((int)((P0 *)_this)->_4_2_2_interrupted_task));
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 164: // STATE 77 - resume_suspend.pml:381 - [(((interrupted_task>=1)&&(interrupted_task<=2)))] (86:0:1 - 1)
		IfNotBlocked
		reached[0][77] = 1;
		if (!(((((int)((P0 *)_this)->_4_2_2_interrupted_task)>=1)&&(((int)((P0 *)_this)->_4_2_2_interrupted_task)<=2))))
			continue;
		/* merge: tcb[interrupted_task].state = 1(0, 78, 86) */
		reached[0][78] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[ Index(((int)((P0 *)_this)->_4_2_2_interrupted_task), 3) ].state);
		now.tcb[ Index(((P0 *)_this)->_4_2_2_interrupted_task, 3) ].state = 1;
#ifdef VAR_RANGES
		logval("tcb[Process1:interrupted_task].state", ((int)now.tcb[ Index(((int)((P0 *)_this)->_4_2_2_interrupted_task), 3) ].state));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 165: // STATE 79 - resume_suspend.pml:133 - [((readyQueue[tcb[interrupted_task].prio].tailIndex<5))] (112:0:2 - 1)
		IfNotBlocked
		reached[0][79] = 1;
		if (!((((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P0 *)_this)->_4_2_2_interrupted_task), 3) ].prio), 4) ].tailIndex)<5)))
			continue;
		/* merge: readyQueue[tcb[interrupted_task].prio].tasks[readyQueue[tcb[interrupted_task].prio].tailIndex] = interrupted_task(112, 80, 112) */
		reached[0][80] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P0 *)_this)->_4_2_2_interrupted_task), 3) ].prio), 4) ].tasks[ Index(((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P0 *)_this)->_4_2_2_interrupted_task), 3) ].prio), 4) ].tailIndex), 5) ]);
		now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_4_2_2_interrupted_task, 3) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_4_2_2_interrupted_task, 3) ].prio, 4) ].tailIndex, 5) ] = ((int)((P0 *)_this)->_4_2_2_interrupted_task);
#ifdef VAR_RANGES
		logval("readyQueue[tcb[Process1:interrupted_task].prio].tasks[readyQueue[tcb[Process1:interrupted_task].prio].tailIndex]", ((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P0 *)_this)->_4_2_2_interrupted_task), 3) ].prio), 4) ].tasks[ Index(((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P0 *)_this)->_4_2_2_interrupted_task), 3) ].prio), 4) ].tailIndex), 5) ]));
#endif
		;
		/* merge: readyQueue[tcb[interrupted_task].prio].tailIndex = (readyQueue[tcb[interrupted_task].prio].tailIndex+1)(112, 81, 112) */
		reached[0][81] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P0 *)_this)->_4_2_2_interrupted_task), 3) ].prio), 4) ].tailIndex);
		now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_4_2_2_interrupted_task, 3) ].prio, 4) ].tailIndex = (((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P0 *)_this)->_4_2_2_interrupted_task), 3) ].prio), 4) ].tailIndex)+1);
#ifdef VAR_RANGES
		logval("readyQueue[tcb[Process1:interrupted_task].prio].tailIndex", ((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P0 *)_this)->_4_2_2_interrupted_task), 3) ].prio), 4) ].tailIndex));
#endif
		;
		/* merge: .(goto)(0, 85, 112) */
		reached[0][85] = 1;
		;
		/* merge: .(goto)(0, 90, 112) */
		reached[0][90] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 166: // STATE 83 - resume_suspend.pml:136 - [assert(0)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][83] = 1;
		spin_assert(0, "0", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 167: // STATE 91 - resume_suspend.pml:204 - [prio = 0] (0:107:6 - 1)
		IfNotBlocked
		reached[0][91] = 1;
		(trpt+1)->bup.ovals = grab_ints(6);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->_4_2_2_8_prio);
		((P0 *)_this)->_4_2_2_8_prio = 0;
#ifdef VAR_RANGES
		logval("Process1:prio", ((int)((P0 *)_this)->_4_2_2_8_prio));
#endif
		;
		/* merge: top_task = 0(107, 92, 107) */
		reached[0][92] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->_4_2_2_8_top_task);
		((P0 *)_this)->_4_2_2_8_top_task = 0;
#ifdef VAR_RANGES
		logval("Process1:top_task", ((int)((P0 *)_this)->_4_2_2_8_top_task));
#endif
		;
		/* merge: found = 0(107, 93, 107) */
		reached[0][93] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P0 *)_this)->_4_2_2_8_found);
		((P0 *)_this)->_4_2_2_8_found = 0;
#ifdef VAR_RANGES
		logval("Process1:found", ((int)((P0 *)_this)->_4_2_2_8_found));
#endif
		;
		/* merge: prio = 0(107, 94, 107) */
		reached[0][94] = 1;
		(trpt+1)->bup.ovals[3] = ((int)((P0 *)_this)->_4_2_2_8_prio);
		((P0 *)_this)->_4_2_2_8_prio = 0;
#ifdef VAR_RANGES
		logval("Process1:prio", ((int)((P0 *)_this)->_4_2_2_8_prio));
#endif
		;
		/* merge: top_task = 0(107, 95, 107) */
		reached[0][95] = 1;
		(trpt+1)->bup.ovals[4] = ((int)((P0 *)_this)->_4_2_2_8_top_task);
		((P0 *)_this)->_4_2_2_8_top_task = 0;
#ifdef VAR_RANGES
		logval("Process1:top_task", ((int)((P0 *)_this)->_4_2_2_8_top_task));
#endif
		;
		/* merge: found = 0(107, 96, 107) */
		reached[0][96] = 1;
		(trpt+1)->bup.ovals[5] = ((int)((P0 *)_this)->_4_2_2_8_found);
		((P0 *)_this)->_4_2_2_8_found = 0;
#ifdef VAR_RANGES
		logval("Process1:found", ((int)((P0 *)_this)->_4_2_2_8_found));
#endif
		;
		/* merge: .(goto)(0, 108, 107) */
		reached[0][108] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 168: // STATE 97 - resume_suspend.pml:213 - [(((prio<4)&&!(found)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][97] = 1;
		if (!(((((int)((P0 *)_this)->_4_2_2_8_prio)<4)&& !(((int)((P0 *)_this)->_4_2_2_8_found)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 169: // STATE 98 - resume_suspend.pml:215 - [((readyQueue[prio].tailIndex>0))] (107:0:2 - 1)
		IfNotBlocked
		reached[0][98] = 1;
		if (!((((int)now.readyQueue[ Index(((int)((P0 *)_this)->_4_2_2_8_prio), 4) ].tailIndex)>0)))
			continue;
		/* merge: top_task = readyQueue[prio].tasks[0](107, 99, 107) */
		reached[0][99] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->_4_2_2_8_top_task);
		((P0 *)_this)->_4_2_2_8_top_task = ((int)now.readyQueue[ Index(((int)((P0 *)_this)->_4_2_2_8_prio), 4) ].tasks[0]);
#ifdef VAR_RANGES
		logval("Process1:top_task", ((int)((P0 *)_this)->_4_2_2_8_top_task));
#endif
		;
		/* merge: found = 1(107, 100, 107) */
		reached[0][100] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->_4_2_2_8_found);
		((P0 *)_this)->_4_2_2_8_found = 1;
#ifdef VAR_RANGES
		logval("Process1:found", ((int)((P0 *)_this)->_4_2_2_8_found));
#endif
		;
		/* merge: .(goto)(0, 104, 107) */
		reached[0][104] = 1;
		;
		/* merge: .(goto)(0, 108, 107) */
		reached[0][108] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 170: // STATE 102 - resume_suspend.pml:221 - [prio = (prio+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][102] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->_4_2_2_8_prio);
		((P0 *)_this)->_4_2_2_8_prio = (((int)((P0 *)_this)->_4_2_2_8_prio)+1);
#ifdef VAR_RANGES
		logval("Process1:prio", ((int)((P0 *)_this)->_4_2_2_8_prio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 171: // STATE 105 - resume_suspend.pml:223 - [(((prio>=4)||found))] (130:0:3 - 1)
		IfNotBlocked
		reached[0][105] = 1;
		if (!(((((int)((P0 *)_this)->_4_2_2_8_prio)>=4)||((int)((P0 *)_this)->_4_2_2_8_found))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _4_2_2_8_found */  (trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->_4_2_2_8_found;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->_4_2_2_8_found = 0;
		/* merge: goto :b3(130, 106, 130) */
		reached[0][106] = 1;
		;
		/* merge: newTask = top_task(130, 110, 130) */
		reached[0][110] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.newTask);
		now.newTask = ((int)((P0 *)_this)->_4_2_2_8_top_task);
#ifdef VAR_RANGES
		logval("newTask", ((int)now.newTask));
#endif
		;
		/* merge: topPrio = prio(130, 111, 130) */
		reached[0][111] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.topPrio);
		now.topPrio = ((int)((P0 *)_this)->_4_2_2_8_prio);
#ifdef VAR_RANGES
		logval("topPrio", ((int)now.topPrio));
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 172: // STATE 110 - resume_suspend.pml:227 - [newTask = top_task] (0:130:2 - 3)
		IfNotBlocked
		reached[0][110] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.newTask);
		now.newTask = ((int)((P0 *)_this)->_4_2_2_8_top_task);
#ifdef VAR_RANGES
		logval("newTask", ((int)now.newTask));
#endif
		;
		/* merge: topPrio = prio(130, 111, 130) */
		reached[0][111] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.topPrio);
		now.topPrio = ((int)((P0 *)_this)->_4_2_2_8_prio);
#ifdef VAR_RANGES
		logval("topPrio", ((int)now.topPrio));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 173: // STATE 113 - resume_suspend.pml:173 - [idx = 0] (0:120:2 - 1)
		IfNotBlocked
		reached[0][113] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->_4_2_2_9_idx);
		((P0 *)_this)->_4_2_2_9_idx = 0;
#ifdef VAR_RANGES
		logval("Process1:idx", ((int)((P0 *)_this)->_4_2_2_9_idx));
#endif
		;
		/* merge: idx = 0(120, 114, 120) */
		reached[0][114] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->_4_2_2_9_idx);
		((P0 *)_this)->_4_2_2_9_idx = 0;
#ifdef VAR_RANGES
		logval("Process1:idx", ((int)((P0 *)_this)->_4_2_2_9_idx));
#endif
		;
		/* merge: .(goto)(0, 121, 120) */
		reached[0][121] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 174: // STATE 115 - resume_suspend.pml:177 - [((idx<(readyQueue[topPrio].tailIndex-1)))] (120:0:2 - 1)
		IfNotBlocked
		reached[0][115] = 1;
		if (!((((int)((P0 *)_this)->_4_2_2_9_idx)<(((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1))))
			continue;
		/* merge: readyQueue[topPrio].tasks[idx] = readyQueue[topPrio].tasks[(idx+1)](120, 116, 120) */
		reached[0][116] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index(((int)((P0 *)_this)->_4_2_2_9_idx), 5) ]);
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index(((P0 *)_this)->_4_2_2_9_idx, 5) ] = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index((((int)((P0 *)_this)->_4_2_2_9_idx)+1), 5) ]);
#ifdef VAR_RANGES
		logval("readyQueue[topPrio].tasks[Process1:idx]", ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index(((int)((P0 *)_this)->_4_2_2_9_idx), 5) ]));
#endif
		;
		/* merge: idx = (idx+1)(120, 117, 120) */
		reached[0][117] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->_4_2_2_9_idx);
		((P0 *)_this)->_4_2_2_9_idx = (((int)((P0 *)_this)->_4_2_2_9_idx)+1);
#ifdef VAR_RANGES
		logval("Process1:idx", ((int)((P0 *)_this)->_4_2_2_9_idx));
#endif
		;
		/* merge: .(goto)(0, 121, 120) */
		reached[0][121] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 175: // STATE 118 - resume_suspend.pml:180 - [((idx>=(readyQueue[topPrio].tailIndex-1)))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][118] = 1;
		if (!((((int)((P0 *)_this)->_4_2_2_9_idx)>=(((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _4_2_2_9_idx */  (trpt+1)->bup.oval = ((P0 *)_this)->_4_2_2_9_idx;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->_4_2_2_9_idx = 0;
		_m = 3; goto P999; /* 0 */
	case 176: // STATE 123 - resume_suspend.pml:185 - [((readyQueue[topPrio].tailIndex>0))] (134:0:4 - 1)
		IfNotBlocked
		reached[0][123] = 1;
		if (!((((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)>0)))
			continue;
		/* merge: readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)] = 255(134, 124, 134) */
		reached[0][124] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index((((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1), 5) ]);
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index((now.readyQueue[ Index(now.topPrio, 4) ].tailIndex-1), 5) ] = 255;
#ifdef VAR_RANGES
		logval("readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)]", ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index((((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1), 5) ]));
#endif
		;
		/* merge: readyQueue[topPrio].tailIndex = (readyQueue[topPrio].tailIndex-1)(134, 125, 134) */
		reached[0][125] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex);
		now.readyQueue[ Index(now.topPrio, 4) ].tailIndex = (((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1);
#ifdef VAR_RANGES
		logval("readyQueue[topPrio].tailIndex", ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex));
#endif
		;
		/* merge: .(goto)(134, 129, 134) */
		reached[0][129] = 1;
		;
		/* merge: tcb[newTask].state = 4(134, 131, 134) */
		reached[0][131] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.tcb[ Index(((int)now.newTask), 3) ].state);
		now.tcb[ Index(now.newTask, 3) ].state = 4;
#ifdef VAR_RANGES
		logval("tcb[newTask].state", ((int)now.tcb[ Index(((int)now.newTask), 3) ].state));
#endif
		;
		/* merge: EP = newTask(134, 132, 134) */
		reached[0][132] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.EP);
		now.EP = ((int)now.newTask);
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 5 */
	case 177: // STATE 127 - resume_suspend.pml:188 - [(1)] (134:0:2 - 1)
		IfNotBlocked
		reached[0][127] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(134, 129, 134) */
		reached[0][129] = 1;
		;
		/* merge: tcb[newTask].state = 4(134, 131, 134) */
		reached[0][131] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.tcb[ Index(((int)now.newTask), 3) ].state);
		now.tcb[ Index(now.newTask, 3) ].state = 4;
#ifdef VAR_RANGES
		logval("tcb[newTask].state", ((int)now.tcb[ Index(((int)now.newTask), 3) ].state));
#endif
		;
		/* merge: EP = newTask(134, 132, 134) */
		reached[0][132] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.EP);
		now.EP = ((int)now.newTask);
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 178: // STATE 131 - resume_suspend.pml:392 - [tcb[newTask].state = 4] (0:134:2 - 3)
		IfNotBlocked
		reached[0][131] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.tcb[ Index(((int)now.newTask), 3) ].state);
		now.tcb[ Index(now.newTask, 3) ].state = 4;
#ifdef VAR_RANGES
		logval("tcb[newTask].state", ((int)now.tcb[ Index(((int)now.newTask), 3) ].state));
#endif
		;
		/* merge: EP = newTask(134, 132, 134) */
		reached[0][132] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.EP);
		now.EP = ((int)now.newTask);
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 179: // STATE 133 - resume_suspend.pml:238 - [int_ctrl_reg = int_save] (0:0:1 - 1)
		IfNotBlocked
		reached[0][133] = 1;
		(trpt+1)->bup.oval = ((int)now.int_ctrl_reg);
		now.int_ctrl_reg = ((int)now.int_save);
#ifdef VAR_RANGES
		logval("int_ctrl_reg", ((int)now.int_ctrl_reg));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 180: // STATE 137 - resume_suspend.pml:407 - [((EP==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][137] = 1;
		if (!((((int)now.EP)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 181: // STATE 138 - resume_suspend.pml:342 - [needSched = 0] (0:278:2 - 1)
		IfNotBlocked
		reached[0][138] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->_4_3_3_needSched);
		((P0 *)_this)->_4_3_3_needSched = 0;
#ifdef VAR_RANGES
		logval("Process1:needSched", ((int)((P0 *)_this)->_4_3_3_needSched));
#endif
		;
		/* merge: needSched = 0(278, 139, 278) */
		reached[0][139] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->_4_3_3_needSched);
		((P0 *)_this)->_4_3_3_needSched = 0;
#ifdef VAR_RANGES
		logval("Process1:needSched", ((int)((P0 *)_this)->_4_3_3_needSched));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 182: // STATE 140 - resume_suspend.pml:345 - [((((2>=1)&&(2<=2))&&(2!=EP)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][140] = 1;
		if (!((((2>=1)&&(2<=2))&&(2!=((int)now.EP)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 183: // STATE 141 - resume_suspend.pml:234 - [int_save = int_ctrl_reg] (0:272:2 - 1)
		IfNotBlocked
		reached[0][141] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.int_save);
		now.int_save = ((int)now.int_ctrl_reg);
#ifdef VAR_RANGES
		logval("int_save", ((int)now.int_save));
#endif
		;
		/* merge: int_ctrl_reg = 1(272, 142, 272) */
		reached[0][142] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.int_ctrl_reg);
		now.int_ctrl_reg = 1;
#ifdef VAR_RANGES
		logval("int_ctrl_reg", ((int)now.int_ctrl_reg));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 184: // STATE 144 - resume_suspend.pml:350 - [((tcb[2].state==3))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][144] = 1;
		if (!((((int)now.tcb[2].state)==3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 185: // STATE 145 - resume_suspend.pml:299 - [((tcb[2].state==3))] (180:0:1 - 1)
		IfNotBlocked
		reached[0][145] = 1;
		if (!((((int)now.tcb[2].state)==3)))
			continue;
		/* merge: tcb[2].state = 1(0, 146, 180) */
		reached[0][146] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[2].state);
		now.tcb[2].state = 1;
#ifdef VAR_RANGES
		logval("tcb[2].state", ((int)now.tcb[2].state));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 186: // STATE 147 - resume_suspend.pml:77 - [removePos = 0] (0:161:5 - 1)
		IfNotBlocked
		reached[0][147] = 1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->_4_3_3_12_1_removePos);
		((P0 *)_this)->_4_3_3_12_1_removePos = 0;
#ifdef VAR_RANGES
		logval("Process1:removePos", ((int)((P0 *)_this)->_4_3_3_12_1_removePos));
#endif
		;
		/* merge: found = 0(161, 148, 161) */
		reached[0][148] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->_4_3_3_12_1_found);
		((P0 *)_this)->_4_3_3_12_1_found = 0;
#ifdef VAR_RANGES
		logval("Process1:found", ((int)((P0 *)_this)->_4_3_3_12_1_found));
#endif
		;
		/* merge: shiftIdx = 0(161, 149, 161) */
		reached[0][149] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P0 *)_this)->_4_3_3_12_1_shiftIdx);
		((P0 *)_this)->_4_3_3_12_1_shiftIdx = 0;
#ifdef VAR_RANGES
		logval("Process1:shiftIdx", ((int)((P0 *)_this)->_4_3_3_12_1_shiftIdx));
#endif
		;
		/* merge: removePos = 0(161, 150, 161) */
		reached[0][150] = 1;
		(trpt+1)->bup.ovals[3] = ((int)((P0 *)_this)->_4_3_3_12_1_removePos);
		((P0 *)_this)->_4_3_3_12_1_removePos = 0;
#ifdef VAR_RANGES
		logval("Process1:removePos", ((int)((P0 *)_this)->_4_3_3_12_1_removePos));
#endif
		;
		/* merge: found = 0(161, 151, 161) */
		reached[0][151] = 1;
		(trpt+1)->bup.ovals[4] = ((int)((P0 *)_this)->_4_3_3_12_1_found);
		((P0 *)_this)->_4_3_3_12_1_found = 0;
#ifdef VAR_RANGES
		logval("Process1:found", ((int)((P0 *)_this)->_4_3_3_12_1_found));
#endif
		;
		/* merge: .(goto)(0, 162, 161) */
		reached[0][162] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 187: // STATE 152 - resume_suspend.pml:85 - [(((removePos<sortLink.count)&&!(found)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][152] = 1;
		if (!(((((int)((P0 *)_this)->_4_3_3_12_1_removePos)<((int)now.sortLink.count))&& !(((int)((P0 *)_this)->_4_3_3_12_1_found)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 188: // STATE 153 - resume_suspend.pml:87 - [((sortLink.tasks[removePos]==2))] (161:0:1 - 1)
		IfNotBlocked
		reached[0][153] = 1;
		if (!((((int)now.sortLink.tasks[ Index(((int)((P0 *)_this)->_4_3_3_12_1_removePos), 5) ])==2)))
			continue;
		/* merge: found = 1(0, 154, 161) */
		reached[0][154] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->_4_3_3_12_1_found);
		((P0 *)_this)->_4_3_3_12_1_found = 1;
#ifdef VAR_RANGES
		logval("Process1:found", ((int)((P0 *)_this)->_4_3_3_12_1_found));
#endif
		;
		/* merge: .(goto)(0, 158, 161) */
		reached[0][158] = 1;
		;
		/* merge: .(goto)(0, 162, 161) */
		reached[0][162] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 189: // STATE 156 - resume_suspend.pml:90 - [removePos = (removePos+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][156] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->_4_3_3_12_1_removePos);
		((P0 *)_this)->_4_3_3_12_1_removePos = (((int)((P0 *)_this)->_4_3_3_12_1_removePos)+1);
#ifdef VAR_RANGES
		logval("Process1:removePos", ((int)((P0 *)_this)->_4_3_3_12_1_removePos));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 190: // STATE 164 - resume_suspend.pml:96 - [((found==1))] (171:0:2 - 1)
		IfNotBlocked
		reached[0][164] = 1;
		if (!((((int)((P0 *)_this)->_4_3_3_12_1_found)==1)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _4_3_3_12_1_found */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->_4_3_3_12_1_found;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->_4_3_3_12_1_found = 0;
		/* merge: shiftIdx = removePos(0, 165, 171) */
		reached[0][165] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->_4_3_3_12_1_shiftIdx);
		((P0 *)_this)->_4_3_3_12_1_shiftIdx = ((int)((P0 *)_this)->_4_3_3_12_1_removePos);
#ifdef VAR_RANGES
		logval("Process1:shiftIdx", ((int)((P0 *)_this)->_4_3_3_12_1_shiftIdx));
#endif
		;
		/* merge: .(goto)(0, 172, 171) */
		reached[0][172] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 191: // STATE 166 - resume_suspend.pml:100 - [((shiftIdx<(sortLink.count-1)))] (171:0:2 - 1)
		IfNotBlocked
		reached[0][166] = 1;
		if (!((((int)((P0 *)_this)->_4_3_3_12_1_shiftIdx)<(((int)now.sortLink.count)-1))))
			continue;
		/* merge: sortLink.tasks[shiftIdx] = sortLink.tasks[(shiftIdx+1)](171, 167, 171) */
		reached[0][167] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.sortLink.tasks[ Index(((int)((P0 *)_this)->_4_3_3_12_1_shiftIdx), 5) ]);
		now.sortLink.tasks[ Index(((P0 *)_this)->_4_3_3_12_1_shiftIdx, 5) ] = ((int)now.sortLink.tasks[ Index((((int)((P0 *)_this)->_4_3_3_12_1_shiftIdx)+1), 5) ]);
#ifdef VAR_RANGES
		logval("sortLink.tasks[Process1:shiftIdx]", ((int)now.sortLink.tasks[ Index(((int)((P0 *)_this)->_4_3_3_12_1_shiftIdx), 5) ]));
#endif
		;
		/* merge: shiftIdx = (shiftIdx+1)(171, 168, 171) */
		reached[0][168] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->_4_3_3_12_1_shiftIdx);
		((P0 *)_this)->_4_3_3_12_1_shiftIdx = (((int)((P0 *)_this)->_4_3_3_12_1_shiftIdx)+1);
#ifdef VAR_RANGES
		logval("Process1:shiftIdx", ((int)((P0 *)_this)->_4_3_3_12_1_shiftIdx));
#endif
		;
		/* merge: .(goto)(0, 172, 171) */
		reached[0][172] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 192: // STATE 169 - resume_suspend.pml:103 - [((shiftIdx>=(sortLink.count-1)))] (188:0:3 - 1)
		IfNotBlocked
		reached[0][169] = 1;
		if (!((((int)((P0 *)_this)->_4_3_3_12_1_shiftIdx)>=(((int)now.sortLink.count)-1))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _4_3_3_12_1_shiftIdx */  (trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->_4_3_3_12_1_shiftIdx;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->_4_3_3_12_1_shiftIdx = 0;
		/* merge: goto :b6(188, 170, 188) */
		reached[0][170] = 1;
		;
		/* merge: sortLink.tasks[(sortLink.count-1)] = 255(188, 174, 188) */
		reached[0][174] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.sortLink.tasks[ Index((((int)now.sortLink.count)-1), 5) ]);
		now.sortLink.tasks[ Index((now.sortLink.count-1), 5) ] = 255;
#ifdef VAR_RANGES
		logval("sortLink.tasks[(sortLink.count-1)]", ((int)now.sortLink.tasks[ Index((((int)now.sortLink.count)-1), 5) ]));
#endif
		;
		/* merge: sortLink.count = (sortLink.count-1)(188, 175, 188) */
		reached[0][175] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.sortLink.count);
		now.sortLink.count = (((int)now.sortLink.count)-1);
#ifdef VAR_RANGES
		logval("sortLink.count", ((int)now.sortLink.count));
#endif
		;
		/* merge: .(goto)(0, 179, 188) */
		reached[0][179] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 193: // STATE 174 - resume_suspend.pml:107 - [sortLink.tasks[(sortLink.count-1)] = 255] (0:188:2 - 3)
		IfNotBlocked
		reached[0][174] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.sortLink.tasks[ Index((((int)now.sortLink.count)-1), 5) ]);
		now.sortLink.tasks[ Index((now.sortLink.count-1), 5) ] = 255;
#ifdef VAR_RANGES
		logval("sortLink.tasks[(sortLink.count-1)]", ((int)now.sortLink.tasks[ Index((((int)now.sortLink.count)-1), 5) ]));
#endif
		;
		/* merge: sortLink.count = (sortLink.count-1)(188, 175, 188) */
		reached[0][175] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.sortLink.count);
		now.sortLink.count = (((int)now.sortLink.count)-1);
#ifdef VAR_RANGES
		logval("sortLink.count", ((int)now.sortLink.count));
#endif
		;
		/* merge: .(goto)(0, 179, 188) */
		reached[0][179] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 194: // STATE 181 - resume_suspend.pml:133 - [((readyQueue[tcb[2].prio].tailIndex<5))] (193:0:2 - 1)
		IfNotBlocked
		reached[0][181] = 1;
		if (!((((int)now.readyQueue[ Index(((int)now.tcb[2].prio), 4) ].tailIndex)<5)))
			continue;
		/* merge: readyQueue[tcb[2].prio].tasks[readyQueue[tcb[2].prio].tailIndex] = 2(193, 182, 193) */
		reached[0][182] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.readyQueue[ Index(((int)now.tcb[2].prio), 4) ].tasks[ Index(((int)now.readyQueue[ Index(((int)now.tcb[2].prio), 4) ].tailIndex), 5) ]);
		now.readyQueue[ Index(now.tcb[2].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[2].prio, 4) ].tailIndex, 5) ] = 2;
#ifdef VAR_RANGES
		logval("readyQueue[tcb[2].prio].tasks[readyQueue[tcb[2].prio].tailIndex]", ((int)now.readyQueue[ Index(((int)now.tcb[2].prio), 4) ].tasks[ Index(((int)now.readyQueue[ Index(((int)now.tcb[2].prio), 4) ].tailIndex), 5) ]));
#endif
		;
		/* merge: readyQueue[tcb[2].prio].tailIndex = (readyQueue[tcb[2].prio].tailIndex+1)(193, 183, 193) */
		reached[0][183] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.readyQueue[ Index(((int)now.tcb[2].prio), 4) ].tailIndex);
		now.readyQueue[ Index(now.tcb[2].prio, 4) ].tailIndex = (((int)now.readyQueue[ Index(((int)now.tcb[2].prio), 4) ].tailIndex)+1);
#ifdef VAR_RANGES
		logval("readyQueue[tcb[2].prio].tailIndex", ((int)now.readyQueue[ Index(((int)now.tcb[2].prio), 4) ].tailIndex));
#endif
		;
		/* merge: .(goto)(0, 187, 193) */
		reached[0][187] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 195: // STATE 185 - resume_suspend.pml:136 - [assert(0)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][185] = 1;
		spin_assert(0, "0", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 196: // STATE 189 - resume_suspend.pml:310 - [((tcb[2].prio<tcb[EP].prio))] (268:0:1 - 1)
		IfNotBlocked
		reached[0][189] = 1;
		if (!((((int)now.tcb[2].prio)<((int)now.tcb[ Index(((int)now.EP), 3) ].prio))))
			continue;
		/* merge: needSched = 1(0, 190, 268) */
		reached[0][190] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->_4_3_3_needSched);
		((P0 *)_this)->_4_3_3_needSched = 1;
#ifdef VAR_RANGES
		logval("Process1:needSched", ((int)((P0 *)_this)->_4_3_3_needSched));
#endif
		;
		/* merge: .(goto)(0, 194, 268) */
		reached[0][194] = 1;
		;
		/* merge: .(goto)(0, 198, 268) */
		reached[0][198] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 197: // STATE 192 - resume_suspend.pml:313 - [needSched = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][192] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->_4_3_3_needSched);
		((P0 *)_this)->_4_3_3_needSched = 0;
#ifdef VAR_RANGES
		logval("Process1:needSched", ((int)((P0 *)_this)->_4_3_3_needSched));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 198: // STATE 196 - resume_suspend.pml:316 - [needSched = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][196] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->_4_3_3_needSched);
		((P0 *)_this)->_4_3_3_needSched = 0;
#ifdef VAR_RANGES
		logval("Process1:needSched", ((int)((P0 *)_this)->_4_3_3_needSched));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 199: // STATE 200 - resume_suspend.pml:355 - [((needSched==1))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][200] = 1;
		if (!((((int)((P0 *)_this)->_4_3_3_needSched)==1)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _4_3_3_needSched */  (trpt+1)->bup.oval = ((P0 *)_this)->_4_3_3_needSched;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->_4_3_3_needSched = 0;
		_m = 3; goto P999; /* 0 */
	case 200: // STATE 201 - resume_suspend.pml:372 - [interrupted_task = 0] (0:205:2 - 1)
		IfNotBlocked
		reached[0][201] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->_4_3_3_13_interrupted_task);
		((P0 *)_this)->_4_3_3_13_interrupted_task = 0;
#ifdef VAR_RANGES
		logval("Process1:interrupted_task", ((int)((P0 *)_this)->_4_3_3_13_interrupted_task));
#endif
		;
		/* merge: interrupted_task = 0(205, 202, 205) */
		reached[0][202] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->_4_3_3_13_interrupted_task);
		((P0 *)_this)->_4_3_3_13_interrupted_task = 0;
#ifdef VAR_RANGES
		logval("Process1:interrupted_task", ((int)((P0 *)_this)->_4_3_3_13_interrupted_task));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 201: // STATE 203 - resume_suspend.pml:234 - [int_save = int_ctrl_reg] (0:219:3 - 1)
		IfNotBlocked
		reached[0][203] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.int_save);
		now.int_save = ((int)now.int_ctrl_reg);
#ifdef VAR_RANGES
		logval("int_save", ((int)now.int_save));
#endif
		;
		/* merge: int_ctrl_reg = 1(219, 204, 219) */
		reached[0][204] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.int_ctrl_reg);
		now.int_ctrl_reg = 1;
#ifdef VAR_RANGES
		logval("int_ctrl_reg", ((int)now.int_ctrl_reg));
#endif
		;
		/* merge: interrupted_task = EP(219, 206, 219) */
		reached[0][206] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P0 *)_this)->_4_3_3_13_interrupted_task);
		((P0 *)_this)->_4_3_3_13_interrupted_task = ((int)now.EP);
#ifdef VAR_RANGES
		logval("Process1:interrupted_task", ((int)((P0 *)_this)->_4_3_3_13_interrupted_task));
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 202: // STATE 207 - resume_suspend.pml:381 - [(((interrupted_task>=1)&&(interrupted_task<=2)))] (216:0:1 - 1)
		IfNotBlocked
		reached[0][207] = 1;
		if (!(((((int)((P0 *)_this)->_4_3_3_13_interrupted_task)>=1)&&(((int)((P0 *)_this)->_4_3_3_13_interrupted_task)<=2))))
			continue;
		/* merge: tcb[interrupted_task].state = 1(0, 208, 216) */
		reached[0][208] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[ Index(((int)((P0 *)_this)->_4_3_3_13_interrupted_task), 3) ].state);
		now.tcb[ Index(((P0 *)_this)->_4_3_3_13_interrupted_task, 3) ].state = 1;
#ifdef VAR_RANGES
		logval("tcb[Process1:interrupted_task].state", ((int)now.tcb[ Index(((int)((P0 *)_this)->_4_3_3_13_interrupted_task), 3) ].state));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 203: // STATE 209 - resume_suspend.pml:133 - [((readyQueue[tcb[interrupted_task].prio].tailIndex<5))] (242:0:2 - 1)
		IfNotBlocked
		reached[0][209] = 1;
		if (!((((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P0 *)_this)->_4_3_3_13_interrupted_task), 3) ].prio), 4) ].tailIndex)<5)))
			continue;
		/* merge: readyQueue[tcb[interrupted_task].prio].tasks[readyQueue[tcb[interrupted_task].prio].tailIndex] = interrupted_task(242, 210, 242) */
		reached[0][210] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P0 *)_this)->_4_3_3_13_interrupted_task), 3) ].prio), 4) ].tasks[ Index(((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P0 *)_this)->_4_3_3_13_interrupted_task), 3) ].prio), 4) ].tailIndex), 5) ]);
		now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_4_3_3_13_interrupted_task, 3) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_4_3_3_13_interrupted_task, 3) ].prio, 4) ].tailIndex, 5) ] = ((int)((P0 *)_this)->_4_3_3_13_interrupted_task);
#ifdef VAR_RANGES
		logval("readyQueue[tcb[Process1:interrupted_task].prio].tasks[readyQueue[tcb[Process1:interrupted_task].prio].tailIndex]", ((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P0 *)_this)->_4_3_3_13_interrupted_task), 3) ].prio), 4) ].tasks[ Index(((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P0 *)_this)->_4_3_3_13_interrupted_task), 3) ].prio), 4) ].tailIndex), 5) ]));
#endif
		;
		/* merge: readyQueue[tcb[interrupted_task].prio].tailIndex = (readyQueue[tcb[interrupted_task].prio].tailIndex+1)(242, 211, 242) */
		reached[0][211] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P0 *)_this)->_4_3_3_13_interrupted_task), 3) ].prio), 4) ].tailIndex);
		now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_4_3_3_13_interrupted_task, 3) ].prio, 4) ].tailIndex = (((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P0 *)_this)->_4_3_3_13_interrupted_task), 3) ].prio), 4) ].tailIndex)+1);
#ifdef VAR_RANGES
		logval("readyQueue[tcb[Process1:interrupted_task].prio].tailIndex", ((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P0 *)_this)->_4_3_3_13_interrupted_task), 3) ].prio), 4) ].tailIndex));
#endif
		;
		/* merge: .(goto)(0, 215, 242) */
		reached[0][215] = 1;
		;
		/* merge: .(goto)(0, 220, 242) */
		reached[0][220] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 204: // STATE 213 - resume_suspend.pml:136 - [assert(0)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][213] = 1;
		spin_assert(0, "0", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 205: // STATE 221 - resume_suspend.pml:204 - [prio = 0] (0:237:6 - 1)
		IfNotBlocked
		reached[0][221] = 1;
		(trpt+1)->bup.ovals = grab_ints(6);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->_4_3_3_13_5_prio);
		((P0 *)_this)->_4_3_3_13_5_prio = 0;
#ifdef VAR_RANGES
		logval("Process1:prio", ((int)((P0 *)_this)->_4_3_3_13_5_prio));
#endif
		;
		/* merge: top_task = 0(237, 222, 237) */
		reached[0][222] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->_4_3_3_13_5_top_task);
		((P0 *)_this)->_4_3_3_13_5_top_task = 0;
#ifdef VAR_RANGES
		logval("Process1:top_task", ((int)((P0 *)_this)->_4_3_3_13_5_top_task));
#endif
		;
		/* merge: found = 0(237, 223, 237) */
		reached[0][223] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P0 *)_this)->_4_3_3_13_5_found);
		((P0 *)_this)->_4_3_3_13_5_found = 0;
#ifdef VAR_RANGES
		logval("Process1:found", ((int)((P0 *)_this)->_4_3_3_13_5_found));
#endif
		;
		/* merge: prio = 0(237, 224, 237) */
		reached[0][224] = 1;
		(trpt+1)->bup.ovals[3] = ((int)((P0 *)_this)->_4_3_3_13_5_prio);
		((P0 *)_this)->_4_3_3_13_5_prio = 0;
#ifdef VAR_RANGES
		logval("Process1:prio", ((int)((P0 *)_this)->_4_3_3_13_5_prio));
#endif
		;
		/* merge: top_task = 0(237, 225, 237) */
		reached[0][225] = 1;
		(trpt+1)->bup.ovals[4] = ((int)((P0 *)_this)->_4_3_3_13_5_top_task);
		((P0 *)_this)->_4_3_3_13_5_top_task = 0;
#ifdef VAR_RANGES
		logval("Process1:top_task", ((int)((P0 *)_this)->_4_3_3_13_5_top_task));
#endif
		;
		/* merge: found = 0(237, 226, 237) */
		reached[0][226] = 1;
		(trpt+1)->bup.ovals[5] = ((int)((P0 *)_this)->_4_3_3_13_5_found);
		((P0 *)_this)->_4_3_3_13_5_found = 0;
#ifdef VAR_RANGES
		logval("Process1:found", ((int)((P0 *)_this)->_4_3_3_13_5_found));
#endif
		;
		/* merge: .(goto)(0, 238, 237) */
		reached[0][238] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 206: // STATE 227 - resume_suspend.pml:213 - [(((prio<4)&&!(found)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][227] = 1;
		if (!(((((int)((P0 *)_this)->_4_3_3_13_5_prio)<4)&& !(((int)((P0 *)_this)->_4_3_3_13_5_found)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 207: // STATE 228 - resume_suspend.pml:215 - [((readyQueue[prio].tailIndex>0))] (237:0:2 - 1)
		IfNotBlocked
		reached[0][228] = 1;
		if (!((((int)now.readyQueue[ Index(((int)((P0 *)_this)->_4_3_3_13_5_prio), 4) ].tailIndex)>0)))
			continue;
		/* merge: top_task = readyQueue[prio].tasks[0](237, 229, 237) */
		reached[0][229] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->_4_3_3_13_5_top_task);
		((P0 *)_this)->_4_3_3_13_5_top_task = ((int)now.readyQueue[ Index(((int)((P0 *)_this)->_4_3_3_13_5_prio), 4) ].tasks[0]);
#ifdef VAR_RANGES
		logval("Process1:top_task", ((int)((P0 *)_this)->_4_3_3_13_5_top_task));
#endif
		;
		/* merge: found = 1(237, 230, 237) */
		reached[0][230] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->_4_3_3_13_5_found);
		((P0 *)_this)->_4_3_3_13_5_found = 1;
#ifdef VAR_RANGES
		logval("Process1:found", ((int)((P0 *)_this)->_4_3_3_13_5_found));
#endif
		;
		/* merge: .(goto)(0, 234, 237) */
		reached[0][234] = 1;
		;
		/* merge: .(goto)(0, 238, 237) */
		reached[0][238] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 208: // STATE 232 - resume_suspend.pml:221 - [prio = (prio+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][232] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->_4_3_3_13_5_prio);
		((P0 *)_this)->_4_3_3_13_5_prio = (((int)((P0 *)_this)->_4_3_3_13_5_prio)+1);
#ifdef VAR_RANGES
		logval("Process1:prio", ((int)((P0 *)_this)->_4_3_3_13_5_prio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 209: // STATE 235 - resume_suspend.pml:223 - [(((prio>=4)||found))] (260:0:3 - 1)
		IfNotBlocked
		reached[0][235] = 1;
		if (!(((((int)((P0 *)_this)->_4_3_3_13_5_prio)>=4)||((int)((P0 *)_this)->_4_3_3_13_5_found))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _4_3_3_13_5_found */  (trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->_4_3_3_13_5_found;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->_4_3_3_13_5_found = 0;
		/* merge: goto :b7(260, 236, 260) */
		reached[0][236] = 1;
		;
		/* merge: newTask = top_task(260, 240, 260) */
		reached[0][240] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.newTask);
		now.newTask = ((int)((P0 *)_this)->_4_3_3_13_5_top_task);
#ifdef VAR_RANGES
		logval("newTask", ((int)now.newTask));
#endif
		;
		/* merge: topPrio = prio(260, 241, 260) */
		reached[0][241] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.topPrio);
		now.topPrio = ((int)((P0 *)_this)->_4_3_3_13_5_prio);
#ifdef VAR_RANGES
		logval("topPrio", ((int)now.topPrio));
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 210: // STATE 240 - resume_suspend.pml:227 - [newTask = top_task] (0:260:2 - 3)
		IfNotBlocked
		reached[0][240] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.newTask);
		now.newTask = ((int)((P0 *)_this)->_4_3_3_13_5_top_task);
#ifdef VAR_RANGES
		logval("newTask", ((int)now.newTask));
#endif
		;
		/* merge: topPrio = prio(260, 241, 260) */
		reached[0][241] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.topPrio);
		now.topPrio = ((int)((P0 *)_this)->_4_3_3_13_5_prio);
#ifdef VAR_RANGES
		logval("topPrio", ((int)now.topPrio));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 211: // STATE 243 - resume_suspend.pml:173 - [idx = 0] (0:250:2 - 1)
		IfNotBlocked
		reached[0][243] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->_4_3_3_13_6_idx);
		((P0 *)_this)->_4_3_3_13_6_idx = 0;
#ifdef VAR_RANGES
		logval("Process1:idx", ((int)((P0 *)_this)->_4_3_3_13_6_idx));
#endif
		;
		/* merge: idx = 0(250, 244, 250) */
		reached[0][244] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->_4_3_3_13_6_idx);
		((P0 *)_this)->_4_3_3_13_6_idx = 0;
#ifdef VAR_RANGES
		logval("Process1:idx", ((int)((P0 *)_this)->_4_3_3_13_6_idx));
#endif
		;
		/* merge: .(goto)(0, 251, 250) */
		reached[0][251] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 212: // STATE 245 - resume_suspend.pml:177 - [((idx<(readyQueue[topPrio].tailIndex-1)))] (250:0:2 - 1)
		IfNotBlocked
		reached[0][245] = 1;
		if (!((((int)((P0 *)_this)->_4_3_3_13_6_idx)<(((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1))))
			continue;
		/* merge: readyQueue[topPrio].tasks[idx] = readyQueue[topPrio].tasks[(idx+1)](250, 246, 250) */
		reached[0][246] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index(((int)((P0 *)_this)->_4_3_3_13_6_idx), 5) ]);
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index(((P0 *)_this)->_4_3_3_13_6_idx, 5) ] = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index((((int)((P0 *)_this)->_4_3_3_13_6_idx)+1), 5) ]);
#ifdef VAR_RANGES
		logval("readyQueue[topPrio].tasks[Process1:idx]", ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index(((int)((P0 *)_this)->_4_3_3_13_6_idx), 5) ]));
#endif
		;
		/* merge: idx = (idx+1)(250, 247, 250) */
		reached[0][247] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->_4_3_3_13_6_idx);
		((P0 *)_this)->_4_3_3_13_6_idx = (((int)((P0 *)_this)->_4_3_3_13_6_idx)+1);
#ifdef VAR_RANGES
		logval("Process1:idx", ((int)((P0 *)_this)->_4_3_3_13_6_idx));
#endif
		;
		/* merge: .(goto)(0, 251, 250) */
		reached[0][251] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 213: // STATE 248 - resume_suspend.pml:180 - [((idx>=(readyQueue[topPrio].tailIndex-1)))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][248] = 1;
		if (!((((int)((P0 *)_this)->_4_3_3_13_6_idx)>=(((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _4_3_3_13_6_idx */  (trpt+1)->bup.oval = ((P0 *)_this)->_4_3_3_13_6_idx;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->_4_3_3_13_6_idx = 0;
		_m = 3; goto P999; /* 0 */
	case 214: // STATE 253 - resume_suspend.pml:185 - [((readyQueue[topPrio].tailIndex>0))] (264:0:4 - 1)
		IfNotBlocked
		reached[0][253] = 1;
		if (!((((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)>0)))
			continue;
		/* merge: readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)] = 255(264, 254, 264) */
		reached[0][254] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index((((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1), 5) ]);
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index((now.readyQueue[ Index(now.topPrio, 4) ].tailIndex-1), 5) ] = 255;
#ifdef VAR_RANGES
		logval("readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)]", ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index((((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1), 5) ]));
#endif
		;
		/* merge: readyQueue[topPrio].tailIndex = (readyQueue[topPrio].tailIndex-1)(264, 255, 264) */
		reached[0][255] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex);
		now.readyQueue[ Index(now.topPrio, 4) ].tailIndex = (((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1);
#ifdef VAR_RANGES
		logval("readyQueue[topPrio].tailIndex", ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex));
#endif
		;
		/* merge: .(goto)(264, 259, 264) */
		reached[0][259] = 1;
		;
		/* merge: tcb[newTask].state = 4(264, 261, 264) */
		reached[0][261] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.tcb[ Index(((int)now.newTask), 3) ].state);
		now.tcb[ Index(now.newTask, 3) ].state = 4;
#ifdef VAR_RANGES
		logval("tcb[newTask].state", ((int)now.tcb[ Index(((int)now.newTask), 3) ].state));
#endif
		;
		/* merge: EP = newTask(264, 262, 264) */
		reached[0][262] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.EP);
		now.EP = ((int)now.newTask);
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 5 */
	case 215: // STATE 257 - resume_suspend.pml:188 - [(1)] (264:0:2 - 1)
		IfNotBlocked
		reached[0][257] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(264, 259, 264) */
		reached[0][259] = 1;
		;
		/* merge: tcb[newTask].state = 4(264, 261, 264) */
		reached[0][261] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.tcb[ Index(((int)now.newTask), 3) ].state);
		now.tcb[ Index(now.newTask, 3) ].state = 4;
#ifdef VAR_RANGES
		logval("tcb[newTask].state", ((int)now.tcb[ Index(((int)now.newTask), 3) ].state));
#endif
		;
		/* merge: EP = newTask(264, 262, 264) */
		reached[0][262] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.EP);
		now.EP = ((int)now.newTask);
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 216: // STATE 261 - resume_suspend.pml:392 - [tcb[newTask].state = 4] (0:264:2 - 3)
		IfNotBlocked
		reached[0][261] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.tcb[ Index(((int)now.newTask), 3) ].state);
		now.tcb[ Index(now.newTask, 3) ].state = 4;
#ifdef VAR_RANGES
		logval("tcb[newTask].state", ((int)now.tcb[ Index(((int)now.newTask), 3) ].state));
#endif
		;
		/* merge: EP = newTask(264, 262, 264) */
		reached[0][262] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.EP);
		now.EP = ((int)now.newTask);
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 217: // STATE 263 - resume_suspend.pml:238 - [int_ctrl_reg = int_save] (0:0:1 - 1)
		IfNotBlocked
		reached[0][263] = 1;
		(trpt+1)->bup.oval = ((int)now.int_ctrl_reg);
		now.int_ctrl_reg = ((int)now.int_save);
#ifdef VAR_RANGES
		logval("int_ctrl_reg", ((int)now.int_ctrl_reg));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 218: // STATE 274 - resume_suspend.pml:238 - [int_ctrl_reg = int_save] (0:0:1 - 1)
		IfNotBlocked
		reached[0][274] = 1;
		(trpt+1)->bup.oval = ((int)now.int_ctrl_reg);
		now.int_ctrl_reg = ((int)now.int_save);
#ifdef VAR_RANGES
		logval("int_ctrl_reg", ((int)now.int_ctrl_reg));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 219: // STATE 281 - resume_suspend.pml:372 - [interrupted_task = 0] (0:285:2 - 1)
		IfNotBlocked
		reached[0][281] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->_4_3_4_interrupted_task);
		((P0 *)_this)->_4_3_4_interrupted_task = 0;
#ifdef VAR_RANGES
		logval("Process1:interrupted_task", ((int)((P0 *)_this)->_4_3_4_interrupted_task));
#endif
		;
		/* merge: interrupted_task = 0(285, 282, 285) */
		reached[0][282] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->_4_3_4_interrupted_task);
		((P0 *)_this)->_4_3_4_interrupted_task = 0;
#ifdef VAR_RANGES
		logval("Process1:interrupted_task", ((int)((P0 *)_this)->_4_3_4_interrupted_task));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 220: // STATE 283 - resume_suspend.pml:234 - [int_save = int_ctrl_reg] (0:299:3 - 1)
		IfNotBlocked
		reached[0][283] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.int_save);
		now.int_save = ((int)now.int_ctrl_reg);
#ifdef VAR_RANGES
		logval("int_save", ((int)now.int_save));
#endif
		;
		/* merge: int_ctrl_reg = 1(299, 284, 299) */
		reached[0][284] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.int_ctrl_reg);
		now.int_ctrl_reg = 1;
#ifdef VAR_RANGES
		logval("int_ctrl_reg", ((int)now.int_ctrl_reg));
#endif
		;
		/* merge: interrupted_task = EP(299, 286, 299) */
		reached[0][286] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P0 *)_this)->_4_3_4_interrupted_task);
		((P0 *)_this)->_4_3_4_interrupted_task = ((int)now.EP);
#ifdef VAR_RANGES
		logval("Process1:interrupted_task", ((int)((P0 *)_this)->_4_3_4_interrupted_task));
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 221: // STATE 287 - resume_suspend.pml:381 - [(((interrupted_task>=1)&&(interrupted_task<=2)))] (296:0:1 - 1)
		IfNotBlocked
		reached[0][287] = 1;
		if (!(((((int)((P0 *)_this)->_4_3_4_interrupted_task)>=1)&&(((int)((P0 *)_this)->_4_3_4_interrupted_task)<=2))))
			continue;
		/* merge: tcb[interrupted_task].state = 1(0, 288, 296) */
		reached[0][288] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[ Index(((int)((P0 *)_this)->_4_3_4_interrupted_task), 3) ].state);
		now.tcb[ Index(((P0 *)_this)->_4_3_4_interrupted_task, 3) ].state = 1;
#ifdef VAR_RANGES
		logval("tcb[Process1:interrupted_task].state", ((int)now.tcb[ Index(((int)((P0 *)_this)->_4_3_4_interrupted_task), 3) ].state));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 222: // STATE 289 - resume_suspend.pml:133 - [((readyQueue[tcb[interrupted_task].prio].tailIndex<5))] (322:0:2 - 1)
		IfNotBlocked
		reached[0][289] = 1;
		if (!((((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P0 *)_this)->_4_3_4_interrupted_task), 3) ].prio), 4) ].tailIndex)<5)))
			continue;
		/* merge: readyQueue[tcb[interrupted_task].prio].tasks[readyQueue[tcb[interrupted_task].prio].tailIndex] = interrupted_task(322, 290, 322) */
		reached[0][290] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P0 *)_this)->_4_3_4_interrupted_task), 3) ].prio), 4) ].tasks[ Index(((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P0 *)_this)->_4_3_4_interrupted_task), 3) ].prio), 4) ].tailIndex), 5) ]);
		now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_4_3_4_interrupted_task, 3) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_4_3_4_interrupted_task, 3) ].prio, 4) ].tailIndex, 5) ] = ((int)((P0 *)_this)->_4_3_4_interrupted_task);
#ifdef VAR_RANGES
		logval("readyQueue[tcb[Process1:interrupted_task].prio].tasks[readyQueue[tcb[Process1:interrupted_task].prio].tailIndex]", ((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P0 *)_this)->_4_3_4_interrupted_task), 3) ].prio), 4) ].tasks[ Index(((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P0 *)_this)->_4_3_4_interrupted_task), 3) ].prio), 4) ].tailIndex), 5) ]));
#endif
		;
		/* merge: readyQueue[tcb[interrupted_task].prio].tailIndex = (readyQueue[tcb[interrupted_task].prio].tailIndex+1)(322, 291, 322) */
		reached[0][291] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P0 *)_this)->_4_3_4_interrupted_task), 3) ].prio), 4) ].tailIndex);
		now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_4_3_4_interrupted_task, 3) ].prio, 4) ].tailIndex = (((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P0 *)_this)->_4_3_4_interrupted_task), 3) ].prio), 4) ].tailIndex)+1);
#ifdef VAR_RANGES
		logval("readyQueue[tcb[Process1:interrupted_task].prio].tailIndex", ((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P0 *)_this)->_4_3_4_interrupted_task), 3) ].prio), 4) ].tailIndex));
#endif
		;
		/* merge: .(goto)(0, 295, 322) */
		reached[0][295] = 1;
		;
		/* merge: .(goto)(0, 300, 322) */
		reached[0][300] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 223: // STATE 293 - resume_suspend.pml:136 - [assert(0)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][293] = 1;
		spin_assert(0, "0", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 224: // STATE 301 - resume_suspend.pml:204 - [prio = 0] (0:317:6 - 1)
		IfNotBlocked
		reached[0][301] = 1;
		(trpt+1)->bup.ovals = grab_ints(6);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->_4_3_4_17_prio);
		((P0 *)_this)->_4_3_4_17_prio = 0;
#ifdef VAR_RANGES
		logval("Process1:prio", ((int)((P0 *)_this)->_4_3_4_17_prio));
#endif
		;
		/* merge: top_task = 0(317, 302, 317) */
		reached[0][302] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->_4_3_4_17_top_task);
		((P0 *)_this)->_4_3_4_17_top_task = 0;
#ifdef VAR_RANGES
		logval("Process1:top_task", ((int)((P0 *)_this)->_4_3_4_17_top_task));
#endif
		;
		/* merge: found = 0(317, 303, 317) */
		reached[0][303] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P0 *)_this)->_4_3_4_17_found);
		((P0 *)_this)->_4_3_4_17_found = 0;
#ifdef VAR_RANGES
		logval("Process1:found", ((int)((P0 *)_this)->_4_3_4_17_found));
#endif
		;
		/* merge: prio = 0(317, 304, 317) */
		reached[0][304] = 1;
		(trpt+1)->bup.ovals[3] = ((int)((P0 *)_this)->_4_3_4_17_prio);
		((P0 *)_this)->_4_3_4_17_prio = 0;
#ifdef VAR_RANGES
		logval("Process1:prio", ((int)((P0 *)_this)->_4_3_4_17_prio));
#endif
		;
		/* merge: top_task = 0(317, 305, 317) */
		reached[0][305] = 1;
		(trpt+1)->bup.ovals[4] = ((int)((P0 *)_this)->_4_3_4_17_top_task);
		((P0 *)_this)->_4_3_4_17_top_task = 0;
#ifdef VAR_RANGES
		logval("Process1:top_task", ((int)((P0 *)_this)->_4_3_4_17_top_task));
#endif
		;
		/* merge: found = 0(317, 306, 317) */
		reached[0][306] = 1;
		(trpt+1)->bup.ovals[5] = ((int)((P0 *)_this)->_4_3_4_17_found);
		((P0 *)_this)->_4_3_4_17_found = 0;
#ifdef VAR_RANGES
		logval("Process1:found", ((int)((P0 *)_this)->_4_3_4_17_found));
#endif
		;
		/* merge: .(goto)(0, 318, 317) */
		reached[0][318] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 225: // STATE 307 - resume_suspend.pml:213 - [(((prio<4)&&!(found)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][307] = 1;
		if (!(((((int)((P0 *)_this)->_4_3_4_17_prio)<4)&& !(((int)((P0 *)_this)->_4_3_4_17_found)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 226: // STATE 308 - resume_suspend.pml:215 - [((readyQueue[prio].tailIndex>0))] (317:0:2 - 1)
		IfNotBlocked
		reached[0][308] = 1;
		if (!((((int)now.readyQueue[ Index(((int)((P0 *)_this)->_4_3_4_17_prio), 4) ].tailIndex)>0)))
			continue;
		/* merge: top_task = readyQueue[prio].tasks[0](317, 309, 317) */
		reached[0][309] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->_4_3_4_17_top_task);
		((P0 *)_this)->_4_3_4_17_top_task = ((int)now.readyQueue[ Index(((int)((P0 *)_this)->_4_3_4_17_prio), 4) ].tasks[0]);
#ifdef VAR_RANGES
		logval("Process1:top_task", ((int)((P0 *)_this)->_4_3_4_17_top_task));
#endif
		;
		/* merge: found = 1(317, 310, 317) */
		reached[0][310] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->_4_3_4_17_found);
		((P0 *)_this)->_4_3_4_17_found = 1;
#ifdef VAR_RANGES
		logval("Process1:found", ((int)((P0 *)_this)->_4_3_4_17_found));
#endif
		;
		/* merge: .(goto)(0, 314, 317) */
		reached[0][314] = 1;
		;
		/* merge: .(goto)(0, 318, 317) */
		reached[0][318] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 227: // STATE 312 - resume_suspend.pml:221 - [prio = (prio+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][312] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->_4_3_4_17_prio);
		((P0 *)_this)->_4_3_4_17_prio = (((int)((P0 *)_this)->_4_3_4_17_prio)+1);
#ifdef VAR_RANGES
		logval("Process1:prio", ((int)((P0 *)_this)->_4_3_4_17_prio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 228: // STATE 315 - resume_suspend.pml:223 - [(((prio>=4)||found))] (340:0:3 - 1)
		IfNotBlocked
		reached[0][315] = 1;
		if (!(((((int)((P0 *)_this)->_4_3_4_17_prio)>=4)||((int)((P0 *)_this)->_4_3_4_17_found))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _4_3_4_17_found */  (trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->_4_3_4_17_found;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->_4_3_4_17_found = 0;
		/* merge: goto :b9(340, 316, 340) */
		reached[0][316] = 1;
		;
		/* merge: newTask = top_task(340, 320, 340) */
		reached[0][320] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.newTask);
		now.newTask = ((int)((P0 *)_this)->_4_3_4_17_top_task);
#ifdef VAR_RANGES
		logval("newTask", ((int)now.newTask));
#endif
		;
		/* merge: topPrio = prio(340, 321, 340) */
		reached[0][321] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.topPrio);
		now.topPrio = ((int)((P0 *)_this)->_4_3_4_17_prio);
#ifdef VAR_RANGES
		logval("topPrio", ((int)now.topPrio));
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 229: // STATE 320 - resume_suspend.pml:227 - [newTask = top_task] (0:340:2 - 3)
		IfNotBlocked
		reached[0][320] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.newTask);
		now.newTask = ((int)((P0 *)_this)->_4_3_4_17_top_task);
#ifdef VAR_RANGES
		logval("newTask", ((int)now.newTask));
#endif
		;
		/* merge: topPrio = prio(340, 321, 340) */
		reached[0][321] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.topPrio);
		now.topPrio = ((int)((P0 *)_this)->_4_3_4_17_prio);
#ifdef VAR_RANGES
		logval("topPrio", ((int)now.topPrio));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 230: // STATE 323 - resume_suspend.pml:173 - [idx = 0] (0:330:2 - 1)
		IfNotBlocked
		reached[0][323] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->_4_3_4_18_idx);
		((P0 *)_this)->_4_3_4_18_idx = 0;
#ifdef VAR_RANGES
		logval("Process1:idx", ((int)((P0 *)_this)->_4_3_4_18_idx));
#endif
		;
		/* merge: idx = 0(330, 324, 330) */
		reached[0][324] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->_4_3_4_18_idx);
		((P0 *)_this)->_4_3_4_18_idx = 0;
#ifdef VAR_RANGES
		logval("Process1:idx", ((int)((P0 *)_this)->_4_3_4_18_idx));
#endif
		;
		/* merge: .(goto)(0, 331, 330) */
		reached[0][331] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 231: // STATE 325 - resume_suspend.pml:177 - [((idx<(readyQueue[topPrio].tailIndex-1)))] (330:0:2 - 1)
		IfNotBlocked
		reached[0][325] = 1;
		if (!((((int)((P0 *)_this)->_4_3_4_18_idx)<(((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1))))
			continue;
		/* merge: readyQueue[topPrio].tasks[idx] = readyQueue[topPrio].tasks[(idx+1)](330, 326, 330) */
		reached[0][326] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index(((int)((P0 *)_this)->_4_3_4_18_idx), 5) ]);
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index(((P0 *)_this)->_4_3_4_18_idx, 5) ] = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index((((int)((P0 *)_this)->_4_3_4_18_idx)+1), 5) ]);
#ifdef VAR_RANGES
		logval("readyQueue[topPrio].tasks[Process1:idx]", ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index(((int)((P0 *)_this)->_4_3_4_18_idx), 5) ]));
#endif
		;
		/* merge: idx = (idx+1)(330, 327, 330) */
		reached[0][327] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->_4_3_4_18_idx);
		((P0 *)_this)->_4_3_4_18_idx = (((int)((P0 *)_this)->_4_3_4_18_idx)+1);
#ifdef VAR_RANGES
		logval("Process1:idx", ((int)((P0 *)_this)->_4_3_4_18_idx));
#endif
		;
		/* merge: .(goto)(0, 331, 330) */
		reached[0][331] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 232: // STATE 328 - resume_suspend.pml:180 - [((idx>=(readyQueue[topPrio].tailIndex-1)))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][328] = 1;
		if (!((((int)((P0 *)_this)->_4_3_4_18_idx)>=(((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _4_3_4_18_idx */  (trpt+1)->bup.oval = ((P0 *)_this)->_4_3_4_18_idx;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->_4_3_4_18_idx = 0;
		_m = 3; goto P999; /* 0 */
	case 233: // STATE 333 - resume_suspend.pml:185 - [((readyQueue[topPrio].tailIndex>0))] (344:0:4 - 1)
		IfNotBlocked
		reached[0][333] = 1;
		if (!((((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)>0)))
			continue;
		/* merge: readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)] = 255(344, 334, 344) */
		reached[0][334] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index((((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1), 5) ]);
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index((now.readyQueue[ Index(now.topPrio, 4) ].tailIndex-1), 5) ] = 255;
#ifdef VAR_RANGES
		logval("readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)]", ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index((((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1), 5) ]));
#endif
		;
		/* merge: readyQueue[topPrio].tailIndex = (readyQueue[topPrio].tailIndex-1)(344, 335, 344) */
		reached[0][335] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex);
		now.readyQueue[ Index(now.topPrio, 4) ].tailIndex = (((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1);
#ifdef VAR_RANGES
		logval("readyQueue[topPrio].tailIndex", ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex));
#endif
		;
		/* merge: .(goto)(344, 339, 344) */
		reached[0][339] = 1;
		;
		/* merge: tcb[newTask].state = 4(344, 341, 344) */
		reached[0][341] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.tcb[ Index(((int)now.newTask), 3) ].state);
		now.tcb[ Index(now.newTask, 3) ].state = 4;
#ifdef VAR_RANGES
		logval("tcb[newTask].state", ((int)now.tcb[ Index(((int)now.newTask), 3) ].state));
#endif
		;
		/* merge: EP = newTask(344, 342, 344) */
		reached[0][342] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.EP);
		now.EP = ((int)now.newTask);
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 5 */
	case 234: // STATE 337 - resume_suspend.pml:188 - [(1)] (344:0:2 - 1)
		IfNotBlocked
		reached[0][337] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(344, 339, 344) */
		reached[0][339] = 1;
		;
		/* merge: tcb[newTask].state = 4(344, 341, 344) */
		reached[0][341] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.tcb[ Index(((int)now.newTask), 3) ].state);
		now.tcb[ Index(now.newTask, 3) ].state = 4;
#ifdef VAR_RANGES
		logval("tcb[newTask].state", ((int)now.tcb[ Index(((int)now.newTask), 3) ].state));
#endif
		;
		/* merge: EP = newTask(344, 342, 344) */
		reached[0][342] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.EP);
		now.EP = ((int)now.newTask);
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 235: // STATE 341 - resume_suspend.pml:392 - [tcb[newTask].state = 4] (0:344:2 - 3)
		IfNotBlocked
		reached[0][341] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.tcb[ Index(((int)now.newTask), 3) ].state);
		now.tcb[ Index(now.newTask, 3) ].state = 4;
#ifdef VAR_RANGES
		logval("tcb[newTask].state", ((int)now.tcb[ Index(((int)now.newTask), 3) ].state));
#endif
		;
		/* merge: EP = newTask(344, 342, 344) */
		reached[0][342] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.EP);
		now.EP = ((int)now.newTask);
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 236: // STATE 343 - resume_suspend.pml:238 - [int_ctrl_reg = int_save] (0:0:1 - 1)
		IfNotBlocked
		reached[0][343] = 1;
		(trpt+1)->bup.oval = ((int)now.int_ctrl_reg);
		now.int_ctrl_reg = ((int)now.int_save);
#ifdef VAR_RANGES
		logval("int_ctrl_reg", ((int)now.int_ctrl_reg));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 237: // STATE 350 - resume_suspend.pml:409 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][350] = 1;
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

