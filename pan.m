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
	case 14: // STATE 1 - control.pml:230 - [i = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[2][1] = 1;
		(trpt+1)->bup.oval = ((int)((P2 *)_this)->i);
		((P2 *)_this)->i = 0;
#ifdef VAR_RANGES
		logval(":init::i", ((int)((P2 *)_this)->i));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 2 - control.pml:232 - [((i<4))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][2] = 1;
		if (!((((int)((P2 *)_this)->i)<4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 3 - control.pml:44 - [idx = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[2][3] = 1;
		(trpt+1)->bup.oval = ((int)((P2 *)_this)->_5_6_idx);
		((P2 *)_this)->_5_6_idx = 0;
#ifdef VAR_RANGES
		logval(":init::idx", ((int)((P2 *)_this)->_5_6_idx));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 4 - control.pml:45 - [((idx<5))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][4] = 1;
		if (!((((int)((P2 *)_this)->_5_6_idx)<5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 5 - control.pml:46 - [readyQueue[i].tasks[idx] = 255] (0:0:1 - 1)
		IfNotBlocked
		reached[2][5] = 1;
		(trpt+1)->bup.oval = ((int)now.readyQueue[ Index(((int)((P2 *)_this)->i), 4) ].tasks[ Index(((int)((P2 *)_this)->_5_6_idx), 5) ]);
		now.readyQueue[ Index(((P2 *)_this)->i, 4) ].tasks[ Index(((P2 *)_this)->_5_6_idx, 5) ] = 255;
#ifdef VAR_RANGES
		logval("readyQueue[:init::i].tasks[:init::idx]", ((int)now.readyQueue[ Index(((int)((P2 *)_this)->i), 4) ].tasks[ Index(((int)((P2 *)_this)->_5_6_idx), 5) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 6 - control.pml:47 - [idx = (idx+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[2][6] = 1;
		(trpt+1)->bup.oval = ((int)((P2 *)_this)->_5_6_idx);
		((P2 *)_this)->_5_6_idx = (((int)((P2 *)_this)->_5_6_idx)+1);
#ifdef VAR_RANGES
		logval(":init::idx", ((int)((P2 *)_this)->_5_6_idx));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 7 - control.pml:48 - [((idx>=5))] (0:0:1 - 1)
		IfNotBlocked
		reached[2][7] = 1;
		if (!((((int)((P2 *)_this)->_5_6_idx)>=5)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _5_6_idx */  (trpt+1)->bup.oval = ((P2 *)_this)->_5_6_idx;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P2 *)_this)->_5_6_idx = 0;
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 12 - control.pml:50 - [readyQueue[i].tailIndex = 0] (0:0:1 - 3)
		IfNotBlocked
		reached[2][12] = 1;
		(trpt+1)->bup.oval = ((int)now.readyQueue[ Index(((int)((P2 *)_this)->i), 4) ].tailIndex);
		now.readyQueue[ Index(((P2 *)_this)->i, 4) ].tailIndex = 0;
#ifdef VAR_RANGES
		logval("readyQueue[:init::i].tailIndex", ((int)now.readyQueue[ Index(((int)((P2 *)_this)->i), 4) ].tailIndex));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 14 - control.pml:234 - [i = (i+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[2][14] = 1;
		(trpt+1)->bup.oval = ((int)((P2 *)_this)->i);
		((P2 *)_this)->i = (((int)((P2 *)_this)->i)+1);
#ifdef VAR_RANGES
		logval(":init::i", ((int)((P2 *)_this)->i));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 15 - control.pml:235 - [((i>=4))] (0:0:1 - 1)
		IfNotBlocked
		reached[2][15] = 1;
		if (!((((int)((P2 *)_this)->i)>=4)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: i */  (trpt+1)->bup.oval = ((P2 *)_this)->i;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P2 *)_this)->i = 0;
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 20 - control.pml:239 - [tcb[1].prio = 2] (0:0:1 - 3)
		IfNotBlocked
		reached[2][20] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[1].prio);
		now.tcb[1].prio = 2;
#ifdef VAR_RANGES
		logval("tcb[1].prio", ((int)now.tcb[1].prio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 21 - control.pml:240 - [tcb[1].state = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[2][21] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[1].state);
		now.tcb[1].state = 1;
#ifdef VAR_RANGES
		logval("tcb[1].state", ((int)now.tcb[1].state));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 22 - control.pml:59 - [((readyQueue[tcb[1].prio].tailIndex<5))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][22] = 1;
		if (!((((int)now.readyQueue[ Index(((int)now.tcb[1].prio), 4) ].tailIndex)<5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 23 - control.pml:60 - [readyQueue[tcb[1].prio].tasks[readyQueue[tcb[1].prio].tailIndex] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[2][23] = 1;
		(trpt+1)->bup.oval = ((int)now.readyQueue[ Index(((int)now.tcb[1].prio), 4) ].tasks[ Index(((int)now.readyQueue[ Index(((int)now.tcb[1].prio), 4) ].tailIndex), 5) ]);
		now.readyQueue[ Index(now.tcb[1].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[1].prio, 4) ].tailIndex, 5) ] = 1;
#ifdef VAR_RANGES
		logval("readyQueue[tcb[1].prio].tasks[readyQueue[tcb[1].prio].tailIndex]", ((int)now.readyQueue[ Index(((int)now.tcb[1].prio), 4) ].tasks[ Index(((int)now.readyQueue[ Index(((int)now.tcb[1].prio), 4) ].tailIndex), 5) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 28: // STATE 24 - control.pml:61 - [readyQueue[tcb[1].prio].tailIndex = (readyQueue[tcb[1].prio].tailIndex+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[2][24] = 1;
		(trpt+1)->bup.oval = ((int)now.readyQueue[ Index(((int)now.tcb[1].prio), 4) ].tailIndex);
		now.readyQueue[ Index(now.tcb[1].prio, 4) ].tailIndex = (((int)now.readyQueue[ Index(((int)now.tcb[1].prio), 4) ].tailIndex)+1);
#ifdef VAR_RANGES
		logval("readyQueue[tcb[1].prio].tailIndex", ((int)now.readyQueue[ Index(((int)now.tcb[1].prio), 4) ].tailIndex));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 26 - control.pml:62 - [assert(0)] (0:0:0 - 1)
		IfNotBlocked
		reached[2][26] = 1;
		spin_assert(0, "0", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 30: // STATE 30 - control.pml:243 - [tcb[2].prio = 2] (0:0:1 - 3)
		IfNotBlocked
		reached[2][30] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[2].prio);
		now.tcb[2].prio = 2;
#ifdef VAR_RANGES
		logval("tcb[2].prio", ((int)now.tcb[2].prio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 31 - control.pml:244 - [tcb[2].state = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[2][31] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[2].state);
		now.tcb[2].state = 1;
#ifdef VAR_RANGES
		logval("tcb[2].state", ((int)now.tcb[2].state));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 32 - control.pml:59 - [((readyQueue[tcb[2].prio].tailIndex<5))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][32] = 1;
		if (!((((int)now.readyQueue[ Index(((int)now.tcb[2].prio), 4) ].tailIndex)<5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 33: // STATE 33 - control.pml:60 - [readyQueue[tcb[2].prio].tasks[readyQueue[tcb[2].prio].tailIndex] = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[2][33] = 1;
		(trpt+1)->bup.oval = ((int)now.readyQueue[ Index(((int)now.tcb[2].prio), 4) ].tasks[ Index(((int)now.readyQueue[ Index(((int)now.tcb[2].prio), 4) ].tailIndex), 5) ]);
		now.readyQueue[ Index(now.tcb[2].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[2].prio, 4) ].tailIndex, 5) ] = 2;
#ifdef VAR_RANGES
		logval("readyQueue[tcb[2].prio].tasks[readyQueue[tcb[2].prio].tailIndex]", ((int)now.readyQueue[ Index(((int)now.tcb[2].prio), 4) ].tasks[ Index(((int)now.readyQueue[ Index(((int)now.tcb[2].prio), 4) ].tailIndex), 5) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 34 - control.pml:61 - [readyQueue[tcb[2].prio].tailIndex = (readyQueue[tcb[2].prio].tailIndex+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[2][34] = 1;
		(trpt+1)->bup.oval = ((int)now.readyQueue[ Index(((int)now.tcb[2].prio), 4) ].tailIndex);
		now.readyQueue[ Index(now.tcb[2].prio, 4) ].tailIndex = (((int)now.readyQueue[ Index(((int)now.tcb[2].prio), 4) ].tailIndex)+1);
#ifdef VAR_RANGES
		logval("readyQueue[tcb[2].prio].tailIndex", ((int)now.readyQueue[ Index(((int)now.tcb[2].prio), 4) ].tailIndex));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 36 - control.pml:62 - [assert(0)] (0:0:0 - 1)
		IfNotBlocked
		reached[2][36] = 1;
		spin_assert(0, "0", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 36: // STATE 40 - control.pml:126 - [prio = 0] (0:53:3 - 1)
		IfNotBlocked
		reached[2][40] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)((P2 *)_this)->_5_9_prio);
		((P2 *)_this)->_5_9_prio = 0;
#ifdef VAR_RANGES
		logval(":init::prio", ((int)((P2 *)_this)->_5_9_prio));
#endif
		;
		/* merge: top_task = 0(53, 41, 53) */
		reached[2][41] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P2 *)_this)->_5_9_top_task);
		((P2 *)_this)->_5_9_top_task = 0;
#ifdef VAR_RANGES
		logval(":init::top_task", ((int)((P2 *)_this)->_5_9_top_task));
#endif
		;
		/* merge: found = 0(53, 42, 53) */
		reached[2][42] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P2 *)_this)->_5_9_found);
		((P2 *)_this)->_5_9_found = 0;
#ifdef VAR_RANGES
		logval(":init::found", ((int)((P2 *)_this)->_5_9_found));
#endif
		;
		/* merge: .(goto)(0, 54, 53) */
		reached[2][54] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 37: // STATE 43 - control.pml:131 - [(((prio<4)&&!(found)))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][43] = 1;
		if (!(((((int)((P2 *)_this)->_5_9_prio)<4)&& !(((int)((P2 *)_this)->_5_9_found)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 38: // STATE 44 - control.pml:133 - [((readyQueue[prio].tailIndex>0))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][44] = 1;
		if (!((((int)now.readyQueue[ Index(((int)((P2 *)_this)->_5_9_prio), 4) ].tailIndex)>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 39: // STATE 45 - control.pml:135 - [top_task = readyQueue[prio].tasks[0]] (0:0:1 - 1)
		IfNotBlocked
		reached[2][45] = 1;
		(trpt+1)->bup.oval = ((int)((P2 *)_this)->_5_9_top_task);
		((P2 *)_this)->_5_9_top_task = ((int)now.readyQueue[ Index(((int)((P2 *)_this)->_5_9_prio), 4) ].tasks[0]);
#ifdef VAR_RANGES
		logval(":init::top_task", ((int)((P2 *)_this)->_5_9_top_task));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 40: // STATE 46 - control.pml:138 - [found = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[2][46] = 1;
		(trpt+1)->bup.oval = ((int)((P2 *)_this)->_5_9_found);
		((P2 *)_this)->_5_9_found = 1;
#ifdef VAR_RANGES
		logval(":init::found", ((int)((P2 *)_this)->_5_9_found));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 41: // STATE 48 - control.pml:139 - [prio = (prio+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[2][48] = 1;
		(trpt+1)->bup.oval = ((int)((P2 *)_this)->_5_9_prio);
		((P2 *)_this)->_5_9_prio = (((int)((P2 *)_this)->_5_9_prio)+1);
#ifdef VAR_RANGES
		logval(":init::prio", ((int)((P2 *)_this)->_5_9_prio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 42: // STATE 51 - control.pml:141 - [(((prio>=4)||found))] (0:0:1 - 1)
		IfNotBlocked
		reached[2][51] = 1;
		if (!(((((int)((P2 *)_this)->_5_9_prio)>=4)||((int)((P2 *)_this)->_5_9_found))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _5_9_found */  (trpt+1)->bup.oval = ((P2 *)_this)->_5_9_found;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P2 *)_this)->_5_9_found = 0;
		_m = 3; goto P999; /* 0 */
	case 43: // STATE 56 - control.pml:145 - [EP = top_task] (0:0:1 - 3)
		IfNotBlocked
		reached[2][56] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = ((int)((P2 *)_this)->_5_9_top_task);
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 44: // STATE 57 - control.pml:146 - [topPrio = prio] (0:0:1 - 1)
		IfNotBlocked
		reached[2][57] = 1;
		(trpt+1)->bup.oval = ((int)now.topPrio);
		now.topPrio = ((int)((P2 *)_this)->_5_9_prio);
#ifdef VAR_RANGES
		logval("topPrio", ((int)now.topPrio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 45: // STATE 59 - control.pml:98 - [idx = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[2][59] = 1;
		(trpt+1)->bup.oval = ((int)((P2 *)_this)->_5_10_idx);
		((P2 *)_this)->_5_10_idx = 0;
#ifdef VAR_RANGES
		logval(":init::idx", ((int)((P2 *)_this)->_5_10_idx));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 46: // STATE 60 - control.pml:99 - [((idx<(readyQueue[topPrio].tailIndex-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][60] = 1;
		if (!((((int)((P2 *)_this)->_5_10_idx)<(((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 47: // STATE 61 - control.pml:100 - [readyQueue[topPrio].tasks[idx] = readyQueue[topPrio].tasks[(idx+1)]] (0:0:1 - 1)
		IfNotBlocked
		reached[2][61] = 1;
		(trpt+1)->bup.oval = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index(((int)((P2 *)_this)->_5_10_idx), 5) ]);
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index(((P2 *)_this)->_5_10_idx, 5) ] = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index((((int)((P2 *)_this)->_5_10_idx)+1), 5) ]);
#ifdef VAR_RANGES
		logval("readyQueue[topPrio].tasks[:init::idx]", ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index(((int)((P2 *)_this)->_5_10_idx), 5) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 48: // STATE 62 - control.pml:101 - [idx = (idx+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[2][62] = 1;
		(trpt+1)->bup.oval = ((int)((P2 *)_this)->_5_10_idx);
		((P2 *)_this)->_5_10_idx = (((int)((P2 *)_this)->_5_10_idx)+1);
#ifdef VAR_RANGES
		logval(":init::idx", ((int)((P2 *)_this)->_5_10_idx));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 49: // STATE 63 - control.pml:102 - [((idx>=(readyQueue[topPrio].tailIndex-1)))] (0:0:1 - 1)
		IfNotBlocked
		reached[2][63] = 1;
		if (!((((int)((P2 *)_this)->_5_10_idx)>=(((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _5_10_idx */  (trpt+1)->bup.oval = ((P2 *)_this)->_5_10_idx;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P2 *)_this)->_5_10_idx = 0;
		_m = 3; goto P999; /* 0 */
	case 50: // STATE 68 - control.pml:107 - [((readyQueue[topPrio].tailIndex>0))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][68] = 1;
		if (!((((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 51: // STATE 69 - control.pml:108 - [readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)] = 255] (0:0:1 - 1)
		IfNotBlocked
		reached[2][69] = 1;
		(trpt+1)->bup.oval = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index((((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1), 5) ]);
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index((now.readyQueue[ Index(now.topPrio, 4) ].tailIndex-1), 5) ] = 255;
#ifdef VAR_RANGES
		logval("readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)]", ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index((((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1), 5) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 52: // STATE 70 - control.pml:109 - [readyQueue[topPrio].tailIndex = (readyQueue[topPrio].tailIndex-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[2][70] = 1;
		(trpt+1)->bup.oval = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex);
		now.readyQueue[ Index(now.topPrio, 4) ].tailIndex = (((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1);
#ifdef VAR_RANGES
		logval("readyQueue[topPrio].tailIndex", ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 53: // STATE 76 - control.pml:250 - [tcb[EP].state = 4] (0:0:1 - 3)
		IfNotBlocked
		reached[2][76] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[ Index(((int)now.EP), 3) ].state);
		now.tcb[ Index(now.EP, 3) ].state = 4;
#ifdef VAR_RANGES
		logval("tcb[EP].state", ((int)now.tcb[ Index(((int)now.EP), 3) ].state));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 54: // STATE 77 - control.pml:252 - [(run Process1())] (0:0:0 - 1)
		IfNotBlocked
		reached[2][77] = 1;
		if (!(addproc(II, 1, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 55: // STATE 78 - control.pml:253 - [(run Process2())] (0:0:0 - 1)
		IfNotBlocked
		reached[2][78] = 1;
		if (!(addproc(II, 1, 1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 56: // STATE 79 - control.pml:254 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][79] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Process2 */
	case 57: // STATE 1 - control.pml:208 - [((EP==2))] (62:0:0 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		if (!((((int)now.EP)==2)))
			continue;
		/* merge: printf('Process 2 is running\\n')(0, 2, 62) */
		reached[1][2] = 1;
		Printf("Process 2 is running\n");
		_m = 3; goto P999; /* 1 */
	case 58: // STATE 3 - control.pml:169 - [interrupted_task = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)_this)->_4_4_4_interrupted_task);
		((P1 *)_this)->_4_4_4_interrupted_task = 0;
#ifdef VAR_RANGES
		logval("Process2:interrupted_task", ((int)((P1 *)_this)->_4_4_4_interrupted_task));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 59: // STATE 4 - control.pml:152 - [int_save = int_ctrl_reg] (0:20:3 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.int_save);
		now.int_save = ((int)now.int_ctrl_reg);
#ifdef VAR_RANGES
		logval("int_save", ((int)now.int_save));
#endif
		;
		/* merge: int_ctrl_reg = 1(20, 5, 20) */
		reached[1][5] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.int_ctrl_reg);
		now.int_ctrl_reg = 1;
#ifdef VAR_RANGES
		logval("int_ctrl_reg", ((int)now.int_ctrl_reg));
#endif
		;
		/* merge: interrupted_task = EP(20, 7, 20) */
		reached[1][7] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P1 *)_this)->_4_4_4_interrupted_task);
		((P1 *)_this)->_4_4_4_interrupted_task = ((int)now.EP);
#ifdef VAR_RANGES
		logval("Process2:interrupted_task", ((int)((P1 *)_this)->_4_4_4_interrupted_task));
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 60: // STATE 8 - control.pml:176 - [(((interrupted_task>=1)&&(interrupted_task<=2)))] (17:0:1 - 1)
		IfNotBlocked
		reached[1][8] = 1;
		if (!(((((int)((P1 *)_this)->_4_4_4_interrupted_task)>=1)&&(((int)((P1 *)_this)->_4_4_4_interrupted_task)<=2))))
			continue;
		/* merge: tcb[interrupted_task].state = 1(0, 9, 17) */
		reached[1][9] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[ Index(((int)((P1 *)_this)->_4_4_4_interrupted_task), 3) ].state);
		now.tcb[ Index(((P1 *)_this)->_4_4_4_interrupted_task, 3) ].state = 1;
#ifdef VAR_RANGES
		logval("tcb[Process2:interrupted_task].state", ((int)now.tcb[ Index(((int)((P1 *)_this)->_4_4_4_interrupted_task), 3) ].state));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 61: // STATE 10 - control.pml:59 - [((readyQueue[tcb[interrupted_task].prio].tailIndex<5))] (40:0:2 - 1)
		IfNotBlocked
		reached[1][10] = 1;
		if (!((((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P1 *)_this)->_4_4_4_interrupted_task), 3) ].prio), 4) ].tailIndex)<5)))
			continue;
		/* merge: readyQueue[tcb[interrupted_task].prio].tasks[readyQueue[tcb[interrupted_task].prio].tailIndex] = interrupted_task(40, 11, 40) */
		reached[1][11] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P1 *)_this)->_4_4_4_interrupted_task), 3) ].prio), 4) ].tasks[ Index(((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P1 *)_this)->_4_4_4_interrupted_task), 3) ].prio), 4) ].tailIndex), 5) ]);
		now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_4_4_4_interrupted_task, 3) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_4_4_4_interrupted_task, 3) ].prio, 4) ].tailIndex, 5) ] = ((int)((P1 *)_this)->_4_4_4_interrupted_task);
#ifdef VAR_RANGES
		logval("readyQueue[tcb[Process2:interrupted_task].prio].tasks[readyQueue[tcb[Process2:interrupted_task].prio].tailIndex]", ((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P1 *)_this)->_4_4_4_interrupted_task), 3) ].prio), 4) ].tasks[ Index(((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P1 *)_this)->_4_4_4_interrupted_task), 3) ].prio), 4) ].tailIndex), 5) ]));
#endif
		;
		/* merge: readyQueue[tcb[interrupted_task].prio].tailIndex = (readyQueue[tcb[interrupted_task].prio].tailIndex+1)(40, 12, 40) */
		reached[1][12] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P1 *)_this)->_4_4_4_interrupted_task), 3) ].prio), 4) ].tailIndex);
		now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_4_4_4_interrupted_task, 3) ].prio, 4) ].tailIndex = (((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P1 *)_this)->_4_4_4_interrupted_task), 3) ].prio), 4) ].tailIndex)+1);
#ifdef VAR_RANGES
		logval("readyQueue[tcb[Process2:interrupted_task].prio].tailIndex", ((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P1 *)_this)->_4_4_4_interrupted_task), 3) ].prio), 4) ].tailIndex));
#endif
		;
		/* merge: .(goto)(0, 16, 40) */
		reached[1][16] = 1;
		;
		/* merge: .(goto)(0, 21, 40) */
		reached[1][21] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 62: // STATE 14 - control.pml:62 - [assert(0)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][14] = 1;
		spin_assert(0, "0", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 63: // STATE 22 - control.pml:126 - [prio = 0] (0:35:3 - 1)
		IfNotBlocked
		reached[1][22] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)_this)->_4_4_4_18_prio);
		((P1 *)_this)->_4_4_4_18_prio = 0;
#ifdef VAR_RANGES
		logval("Process2:prio", ((int)((P1 *)_this)->_4_4_4_18_prio));
#endif
		;
		/* merge: top_task = 0(35, 23, 35) */
		reached[1][23] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)_this)->_4_4_4_18_top_task);
		((P1 *)_this)->_4_4_4_18_top_task = 0;
#ifdef VAR_RANGES
		logval("Process2:top_task", ((int)((P1 *)_this)->_4_4_4_18_top_task));
#endif
		;
		/* merge: found = 0(35, 24, 35) */
		reached[1][24] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P1 *)_this)->_4_4_4_18_found);
		((P1 *)_this)->_4_4_4_18_found = 0;
#ifdef VAR_RANGES
		logval("Process2:found", ((int)((P1 *)_this)->_4_4_4_18_found));
#endif
		;
		/* merge: .(goto)(0, 36, 35) */
		reached[1][36] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 64: // STATE 25 - control.pml:131 - [(((prio<4)&&!(found)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][25] = 1;
		if (!(((((int)((P1 *)_this)->_4_4_4_18_prio)<4)&& !(((int)((P1 *)_this)->_4_4_4_18_found)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 65: // STATE 26 - control.pml:133 - [((readyQueue[prio].tailIndex>0))] (35:0:2 - 1)
		IfNotBlocked
		reached[1][26] = 1;
		if (!((((int)now.readyQueue[ Index(((int)((P1 *)_this)->_4_4_4_18_prio), 4) ].tailIndex)>0)))
			continue;
		/* merge: top_task = readyQueue[prio].tasks[0](35, 27, 35) */
		reached[1][27] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)_this)->_4_4_4_18_top_task);
		((P1 *)_this)->_4_4_4_18_top_task = ((int)now.readyQueue[ Index(((int)((P1 *)_this)->_4_4_4_18_prio), 4) ].tasks[0]);
#ifdef VAR_RANGES
		logval("Process2:top_task", ((int)((P1 *)_this)->_4_4_4_18_top_task));
#endif
		;
		/* merge: found = 1(35, 28, 35) */
		reached[1][28] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)_this)->_4_4_4_18_found);
		((P1 *)_this)->_4_4_4_18_found = 1;
#ifdef VAR_RANGES
		logval("Process2:found", ((int)((P1 *)_this)->_4_4_4_18_found));
#endif
		;
		/* merge: .(goto)(0, 32, 35) */
		reached[1][32] = 1;
		;
		/* merge: .(goto)(0, 36, 35) */
		reached[1][36] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 66: // STATE 30 - control.pml:139 - [prio = (prio+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][30] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)_this)->_4_4_4_18_prio);
		((P1 *)_this)->_4_4_4_18_prio = (((int)((P1 *)_this)->_4_4_4_18_prio)+1);
#ifdef VAR_RANGES
		logval("Process2:prio", ((int)((P1 *)_this)->_4_4_4_18_prio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 67: // STATE 33 - control.pml:141 - [(((prio>=4)||found))] (57:0:3 - 1)
		IfNotBlocked
		reached[1][33] = 1;
		if (!(((((int)((P1 *)_this)->_4_4_4_18_prio)>=4)||((int)((P1 *)_this)->_4_4_4_18_found))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _4_4_4_18_found */  (trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->_4_4_4_18_found;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->_4_4_4_18_found = 0;
		/* merge: goto :b8(57, 34, 57) */
		reached[1][34] = 1;
		;
		/* merge: newTask = top_task(57, 38, 57) */
		reached[1][38] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.newTask);
		now.newTask = ((int)((P1 *)_this)->_4_4_4_18_top_task);
#ifdef VAR_RANGES
		logval("newTask", ((int)now.newTask));
#endif
		;
		/* merge: topPrio = prio(57, 39, 57) */
		reached[1][39] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.topPrio);
		now.topPrio = ((int)((P1 *)_this)->_4_4_4_18_prio);
#ifdef VAR_RANGES
		logval("topPrio", ((int)now.topPrio));
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 68: // STATE 38 - control.pml:145 - [newTask = top_task] (0:57:2 - 3)
		IfNotBlocked
		reached[1][38] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.newTask);
		now.newTask = ((int)((P1 *)_this)->_4_4_4_18_top_task);
#ifdef VAR_RANGES
		logval("newTask", ((int)now.newTask));
#endif
		;
		/* merge: topPrio = prio(57, 39, 57) */
		reached[1][39] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.topPrio);
		now.topPrio = ((int)((P1 *)_this)->_4_4_4_18_prio);
#ifdef VAR_RANGES
		logval("topPrio", ((int)now.topPrio));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 69: // STATE 41 - control.pml:98 - [idx = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][41] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)_this)->_4_4_4_19_idx);
		((P1 *)_this)->_4_4_4_19_idx = 0;
#ifdef VAR_RANGES
		logval("Process2:idx", ((int)((P1 *)_this)->_4_4_4_19_idx));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 70: // STATE 42 - control.pml:99 - [((idx<(readyQueue[topPrio].tailIndex-1)))] (47:0:2 - 1)
		IfNotBlocked
		reached[1][42] = 1;
		if (!((((int)((P1 *)_this)->_4_4_4_19_idx)<(((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1))))
			continue;
		/* merge: readyQueue[topPrio].tasks[idx] = readyQueue[topPrio].tasks[(idx+1)](47, 43, 47) */
		reached[1][43] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index(((int)((P1 *)_this)->_4_4_4_19_idx), 5) ]);
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index(((P1 *)_this)->_4_4_4_19_idx, 5) ] = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index((((int)((P1 *)_this)->_4_4_4_19_idx)+1), 5) ]);
#ifdef VAR_RANGES
		logval("readyQueue[topPrio].tasks[Process2:idx]", ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index(((int)((P1 *)_this)->_4_4_4_19_idx), 5) ]));
#endif
		;
		/* merge: idx = (idx+1)(47, 44, 47) */
		reached[1][44] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)_this)->_4_4_4_19_idx);
		((P1 *)_this)->_4_4_4_19_idx = (((int)((P1 *)_this)->_4_4_4_19_idx)+1);
#ifdef VAR_RANGES
		logval("Process2:idx", ((int)((P1 *)_this)->_4_4_4_19_idx));
#endif
		;
		/* merge: .(goto)(0, 48, 47) */
		reached[1][48] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 71: // STATE 45 - control.pml:102 - [((idx>=(readyQueue[topPrio].tailIndex-1)))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][45] = 1;
		if (!((((int)((P1 *)_this)->_4_4_4_19_idx)>=(((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _4_4_4_19_idx */  (trpt+1)->bup.oval = ((P1 *)_this)->_4_4_4_19_idx;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->_4_4_4_19_idx = 0;
		_m = 3; goto P999; /* 0 */
	case 72: // STATE 50 - control.pml:107 - [((readyQueue[topPrio].tailIndex>0))] (61:0:4 - 1)
		IfNotBlocked
		reached[1][50] = 1;
		if (!((((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)>0)))
			continue;
		/* merge: readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)] = 255(61, 51, 61) */
		reached[1][51] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index((((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1), 5) ]);
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index((now.readyQueue[ Index(now.topPrio, 4) ].tailIndex-1), 5) ] = 255;
#ifdef VAR_RANGES
		logval("readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)]", ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index((((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1), 5) ]));
#endif
		;
		/* merge: readyQueue[topPrio].tailIndex = (readyQueue[topPrio].tailIndex-1)(61, 52, 61) */
		reached[1][52] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex);
		now.readyQueue[ Index(now.topPrio, 4) ].tailIndex = (((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1);
#ifdef VAR_RANGES
		logval("readyQueue[topPrio].tailIndex", ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex));
#endif
		;
		/* merge: .(goto)(61, 56, 61) */
		reached[1][56] = 1;
		;
		/* merge: tcb[newTask].state = 4(61, 58, 61) */
		reached[1][58] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.tcb[ Index(((int)now.newTask), 3) ].state);
		now.tcb[ Index(now.newTask, 3) ].state = 4;
#ifdef VAR_RANGES
		logval("tcb[newTask].state", ((int)now.tcb[ Index(((int)now.newTask), 3) ].state));
#endif
		;
		/* merge: EP = newTask(61, 59, 61) */
		reached[1][59] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.EP);
		now.EP = ((int)now.newTask);
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 5 */
	case 73: // STATE 54 - control.pml:110 - [(1)] (61:0:2 - 1)
		IfNotBlocked
		reached[1][54] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(61, 56, 61) */
		reached[1][56] = 1;
		;
		/* merge: tcb[newTask].state = 4(61, 58, 61) */
		reached[1][58] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.tcb[ Index(((int)now.newTask), 3) ].state);
		now.tcb[ Index(now.newTask, 3) ].state = 4;
#ifdef VAR_RANGES
		logval("tcb[newTask].state", ((int)now.tcb[ Index(((int)now.newTask), 3) ].state));
#endif
		;
		/* merge: EP = newTask(61, 59, 61) */
		reached[1][59] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.EP);
		now.EP = ((int)now.newTask);
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 74: // STATE 58 - control.pml:187 - [tcb[newTask].state = 4] (0:61:2 - 3)
		IfNotBlocked
		reached[1][58] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.tcb[ Index(((int)now.newTask), 3) ].state);
		now.tcb[ Index(now.newTask, 3) ].state = 4;
#ifdef VAR_RANGES
		logval("tcb[newTask].state", ((int)now.tcb[ Index(((int)now.newTask), 3) ].state));
#endif
		;
		/* merge: EP = newTask(61, 59, 61) */
		reached[1][59] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.EP);
		now.EP = ((int)now.newTask);
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 75: // STATE 60 - control.pml:156 - [int_ctrl_reg = int_save] (0:0:1 - 1)
		IfNotBlocked
		reached[1][60] = 1;
		(trpt+1)->bup.oval = ((int)now.int_ctrl_reg);
		now.int_ctrl_reg = ((int)now.int_save);
#ifdef VAR_RANGES
		logval("int_ctrl_reg", ((int)now.int_ctrl_reg));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 76: // STATE 64 - control.pml:209 - [((EP==2))] (125:0:1 - 1)
		IfNotBlocked
		reached[1][64] = 1;
		if (!((((int)now.EP)==2)))
			continue;
		/* merge: EP = 1(0, 65, 125) */
		reached[1][65] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 77: // STATE 66 - control.pml:169 - [interrupted_task = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][66] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)_this)->_4_5_5_interrupted_task);
		((P1 *)_this)->_4_5_5_interrupted_task = 0;
#ifdef VAR_RANGES
		logval("Process2:interrupted_task", ((int)((P1 *)_this)->_4_5_5_interrupted_task));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 78: // STATE 67 - control.pml:152 - [int_save = int_ctrl_reg] (0:83:3 - 1)
		IfNotBlocked
		reached[1][67] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.int_save);
		now.int_save = ((int)now.int_ctrl_reg);
#ifdef VAR_RANGES
		logval("int_save", ((int)now.int_save));
#endif
		;
		/* merge: int_ctrl_reg = 1(83, 68, 83) */
		reached[1][68] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.int_ctrl_reg);
		now.int_ctrl_reg = 1;
#ifdef VAR_RANGES
		logval("int_ctrl_reg", ((int)now.int_ctrl_reg));
#endif
		;
		/* merge: interrupted_task = EP(83, 70, 83) */
		reached[1][70] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P1 *)_this)->_4_5_5_interrupted_task);
		((P1 *)_this)->_4_5_5_interrupted_task = ((int)now.EP);
#ifdef VAR_RANGES
		logval("Process2:interrupted_task", ((int)((P1 *)_this)->_4_5_5_interrupted_task));
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 79: // STATE 71 - control.pml:176 - [(((interrupted_task>=1)&&(interrupted_task<=2)))] (80:0:1 - 1)
		IfNotBlocked
		reached[1][71] = 1;
		if (!(((((int)((P1 *)_this)->_4_5_5_interrupted_task)>=1)&&(((int)((P1 *)_this)->_4_5_5_interrupted_task)<=2))))
			continue;
		/* merge: tcb[interrupted_task].state = 1(0, 72, 80) */
		reached[1][72] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[ Index(((int)((P1 *)_this)->_4_5_5_interrupted_task), 3) ].state);
		now.tcb[ Index(((P1 *)_this)->_4_5_5_interrupted_task, 3) ].state = 1;
#ifdef VAR_RANGES
		logval("tcb[Process2:interrupted_task].state", ((int)now.tcb[ Index(((int)((P1 *)_this)->_4_5_5_interrupted_task), 3) ].state));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 80: // STATE 73 - control.pml:59 - [((readyQueue[tcb[interrupted_task].prio].tailIndex<5))] (103:0:2 - 1)
		IfNotBlocked
		reached[1][73] = 1;
		if (!((((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P1 *)_this)->_4_5_5_interrupted_task), 3) ].prio), 4) ].tailIndex)<5)))
			continue;
		/* merge: readyQueue[tcb[interrupted_task].prio].tasks[readyQueue[tcb[interrupted_task].prio].tailIndex] = interrupted_task(103, 74, 103) */
		reached[1][74] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P1 *)_this)->_4_5_5_interrupted_task), 3) ].prio), 4) ].tasks[ Index(((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P1 *)_this)->_4_5_5_interrupted_task), 3) ].prio), 4) ].tailIndex), 5) ]);
		now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_4_5_5_interrupted_task, 3) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_4_5_5_interrupted_task, 3) ].prio, 4) ].tailIndex, 5) ] = ((int)((P1 *)_this)->_4_5_5_interrupted_task);
#ifdef VAR_RANGES
		logval("readyQueue[tcb[Process2:interrupted_task].prio].tasks[readyQueue[tcb[Process2:interrupted_task].prio].tailIndex]", ((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P1 *)_this)->_4_5_5_interrupted_task), 3) ].prio), 4) ].tasks[ Index(((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P1 *)_this)->_4_5_5_interrupted_task), 3) ].prio), 4) ].tailIndex), 5) ]));
#endif
		;
		/* merge: readyQueue[tcb[interrupted_task].prio].tailIndex = (readyQueue[tcb[interrupted_task].prio].tailIndex+1)(103, 75, 103) */
		reached[1][75] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P1 *)_this)->_4_5_5_interrupted_task), 3) ].prio), 4) ].tailIndex);
		now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_4_5_5_interrupted_task, 3) ].prio, 4) ].tailIndex = (((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P1 *)_this)->_4_5_5_interrupted_task), 3) ].prio), 4) ].tailIndex)+1);
#ifdef VAR_RANGES
		logval("readyQueue[tcb[Process2:interrupted_task].prio].tailIndex", ((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P1 *)_this)->_4_5_5_interrupted_task), 3) ].prio), 4) ].tailIndex));
#endif
		;
		/* merge: .(goto)(0, 79, 103) */
		reached[1][79] = 1;
		;
		/* merge: .(goto)(0, 84, 103) */
		reached[1][84] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 81: // STATE 77 - control.pml:62 - [assert(0)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][77] = 1;
		spin_assert(0, "0", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 82: // STATE 85 - control.pml:126 - [prio = 0] (0:98:3 - 1)
		IfNotBlocked
		reached[1][85] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)_this)->_4_5_5_23_prio);
		((P1 *)_this)->_4_5_5_23_prio = 0;
#ifdef VAR_RANGES
		logval("Process2:prio", ((int)((P1 *)_this)->_4_5_5_23_prio));
#endif
		;
		/* merge: top_task = 0(98, 86, 98) */
		reached[1][86] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)_this)->_4_5_5_23_top_task);
		((P1 *)_this)->_4_5_5_23_top_task = 0;
#ifdef VAR_RANGES
		logval("Process2:top_task", ((int)((P1 *)_this)->_4_5_5_23_top_task));
#endif
		;
		/* merge: found = 0(98, 87, 98) */
		reached[1][87] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P1 *)_this)->_4_5_5_23_found);
		((P1 *)_this)->_4_5_5_23_found = 0;
#ifdef VAR_RANGES
		logval("Process2:found", ((int)((P1 *)_this)->_4_5_5_23_found));
#endif
		;
		/* merge: .(goto)(0, 99, 98) */
		reached[1][99] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 83: // STATE 88 - control.pml:131 - [(((prio<4)&&!(found)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][88] = 1;
		if (!(((((int)((P1 *)_this)->_4_5_5_23_prio)<4)&& !(((int)((P1 *)_this)->_4_5_5_23_found)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 84: // STATE 89 - control.pml:133 - [((readyQueue[prio].tailIndex>0))] (98:0:2 - 1)
		IfNotBlocked
		reached[1][89] = 1;
		if (!((((int)now.readyQueue[ Index(((int)((P1 *)_this)->_4_5_5_23_prio), 4) ].tailIndex)>0)))
			continue;
		/* merge: top_task = readyQueue[prio].tasks[0](98, 90, 98) */
		reached[1][90] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)_this)->_4_5_5_23_top_task);
		((P1 *)_this)->_4_5_5_23_top_task = ((int)now.readyQueue[ Index(((int)((P1 *)_this)->_4_5_5_23_prio), 4) ].tasks[0]);
#ifdef VAR_RANGES
		logval("Process2:top_task", ((int)((P1 *)_this)->_4_5_5_23_top_task));
#endif
		;
		/* merge: found = 1(98, 91, 98) */
		reached[1][91] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)_this)->_4_5_5_23_found);
		((P1 *)_this)->_4_5_5_23_found = 1;
#ifdef VAR_RANGES
		logval("Process2:found", ((int)((P1 *)_this)->_4_5_5_23_found));
#endif
		;
		/* merge: .(goto)(0, 95, 98) */
		reached[1][95] = 1;
		;
		/* merge: .(goto)(0, 99, 98) */
		reached[1][99] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 85: // STATE 93 - control.pml:139 - [prio = (prio+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][93] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)_this)->_4_5_5_23_prio);
		((P1 *)_this)->_4_5_5_23_prio = (((int)((P1 *)_this)->_4_5_5_23_prio)+1);
#ifdef VAR_RANGES
		logval("Process2:prio", ((int)((P1 *)_this)->_4_5_5_23_prio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 86: // STATE 96 - control.pml:141 - [(((prio>=4)||found))] (120:0:3 - 1)
		IfNotBlocked
		reached[1][96] = 1;
		if (!(((((int)((P1 *)_this)->_4_5_5_23_prio)>=4)||((int)((P1 *)_this)->_4_5_5_23_found))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _4_5_5_23_found */  (trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->_4_5_5_23_found;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->_4_5_5_23_found = 0;
		/* merge: goto :b10(120, 97, 120) */
		reached[1][97] = 1;
		;
		/* merge: newTask = top_task(120, 101, 120) */
		reached[1][101] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.newTask);
		now.newTask = ((int)((P1 *)_this)->_4_5_5_23_top_task);
#ifdef VAR_RANGES
		logval("newTask", ((int)now.newTask));
#endif
		;
		/* merge: topPrio = prio(120, 102, 120) */
		reached[1][102] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.topPrio);
		now.topPrio = ((int)((P1 *)_this)->_4_5_5_23_prio);
#ifdef VAR_RANGES
		logval("topPrio", ((int)now.topPrio));
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 87: // STATE 101 - control.pml:145 - [newTask = top_task] (0:120:2 - 3)
		IfNotBlocked
		reached[1][101] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.newTask);
		now.newTask = ((int)((P1 *)_this)->_4_5_5_23_top_task);
#ifdef VAR_RANGES
		logval("newTask", ((int)now.newTask));
#endif
		;
		/* merge: topPrio = prio(120, 102, 120) */
		reached[1][102] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.topPrio);
		now.topPrio = ((int)((P1 *)_this)->_4_5_5_23_prio);
#ifdef VAR_RANGES
		logval("topPrio", ((int)now.topPrio));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 88: // STATE 104 - control.pml:98 - [idx = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][104] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)_this)->_4_5_5_24_idx);
		((P1 *)_this)->_4_5_5_24_idx = 0;
#ifdef VAR_RANGES
		logval("Process2:idx", ((int)((P1 *)_this)->_4_5_5_24_idx));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 89: // STATE 105 - control.pml:99 - [((idx<(readyQueue[topPrio].tailIndex-1)))] (110:0:2 - 1)
		IfNotBlocked
		reached[1][105] = 1;
		if (!((((int)((P1 *)_this)->_4_5_5_24_idx)<(((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1))))
			continue;
		/* merge: readyQueue[topPrio].tasks[idx] = readyQueue[topPrio].tasks[(idx+1)](110, 106, 110) */
		reached[1][106] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index(((int)((P1 *)_this)->_4_5_5_24_idx), 5) ]);
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index(((P1 *)_this)->_4_5_5_24_idx, 5) ] = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index((((int)((P1 *)_this)->_4_5_5_24_idx)+1), 5) ]);
#ifdef VAR_RANGES
		logval("readyQueue[topPrio].tasks[Process2:idx]", ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index(((int)((P1 *)_this)->_4_5_5_24_idx), 5) ]));
#endif
		;
		/* merge: idx = (idx+1)(110, 107, 110) */
		reached[1][107] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)_this)->_4_5_5_24_idx);
		((P1 *)_this)->_4_5_5_24_idx = (((int)((P1 *)_this)->_4_5_5_24_idx)+1);
#ifdef VAR_RANGES
		logval("Process2:idx", ((int)((P1 *)_this)->_4_5_5_24_idx));
#endif
		;
		/* merge: .(goto)(0, 111, 110) */
		reached[1][111] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 90: // STATE 108 - control.pml:102 - [((idx>=(readyQueue[topPrio].tailIndex-1)))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][108] = 1;
		if (!((((int)((P1 *)_this)->_4_5_5_24_idx)>=(((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _4_5_5_24_idx */  (trpt+1)->bup.oval = ((P1 *)_this)->_4_5_5_24_idx;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->_4_5_5_24_idx = 0;
		_m = 3; goto P999; /* 0 */
	case 91: // STATE 113 - control.pml:107 - [((readyQueue[topPrio].tailIndex>0))] (124:0:4 - 1)
		IfNotBlocked
		reached[1][113] = 1;
		if (!((((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)>0)))
			continue;
		/* merge: readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)] = 255(124, 114, 124) */
		reached[1][114] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index((((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1), 5) ]);
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index((now.readyQueue[ Index(now.topPrio, 4) ].tailIndex-1), 5) ] = 255;
#ifdef VAR_RANGES
		logval("readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)]", ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index((((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1), 5) ]));
#endif
		;
		/* merge: readyQueue[topPrio].tailIndex = (readyQueue[topPrio].tailIndex-1)(124, 115, 124) */
		reached[1][115] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex);
		now.readyQueue[ Index(now.topPrio, 4) ].tailIndex = (((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1);
#ifdef VAR_RANGES
		logval("readyQueue[topPrio].tailIndex", ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex));
#endif
		;
		/* merge: .(goto)(124, 119, 124) */
		reached[1][119] = 1;
		;
		/* merge: tcb[newTask].state = 4(124, 121, 124) */
		reached[1][121] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.tcb[ Index(((int)now.newTask), 3) ].state);
		now.tcb[ Index(now.newTask, 3) ].state = 4;
#ifdef VAR_RANGES
		logval("tcb[newTask].state", ((int)now.tcb[ Index(((int)now.newTask), 3) ].state));
#endif
		;
		/* merge: EP = newTask(124, 122, 124) */
		reached[1][122] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.EP);
		now.EP = ((int)now.newTask);
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 5 */
	case 92: // STATE 117 - control.pml:110 - [(1)] (124:0:2 - 1)
		IfNotBlocked
		reached[1][117] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(124, 119, 124) */
		reached[1][119] = 1;
		;
		/* merge: tcb[newTask].state = 4(124, 121, 124) */
		reached[1][121] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.tcb[ Index(((int)now.newTask), 3) ].state);
		now.tcb[ Index(now.newTask, 3) ].state = 4;
#ifdef VAR_RANGES
		logval("tcb[newTask].state", ((int)now.tcb[ Index(((int)now.newTask), 3) ].state));
#endif
		;
		/* merge: EP = newTask(124, 122, 124) */
		reached[1][122] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.EP);
		now.EP = ((int)now.newTask);
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 93: // STATE 121 - control.pml:187 - [tcb[newTask].state = 4] (0:124:2 - 3)
		IfNotBlocked
		reached[1][121] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.tcb[ Index(((int)now.newTask), 3) ].state);
		now.tcb[ Index(now.newTask, 3) ].state = 4;
#ifdef VAR_RANGES
		logval("tcb[newTask].state", ((int)now.tcb[ Index(((int)now.newTask), 3) ].state));
#endif
		;
		/* merge: EP = newTask(124, 122, 124) */
		reached[1][122] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.EP);
		now.EP = ((int)now.newTask);
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 94: // STATE 123 - control.pml:156 - [int_ctrl_reg = int_save] (0:0:1 - 1)
		IfNotBlocked
		reached[1][123] = 1;
		(trpt+1)->bup.oval = ((int)now.int_ctrl_reg);
		now.int_ctrl_reg = ((int)now.int_save);
#ifdef VAR_RANGES
		logval("int_ctrl_reg", ((int)now.int_ctrl_reg));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 95: // STATE 130 - control.pml:211 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][130] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Process1 */
	case 96: // STATE 1 - control.pml:200 - [((EP==1))] (62:0:0 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		if (!((((int)now.EP)==1)))
			continue;
		/* merge: printf('Process 1 is running\\n')(0, 2, 62) */
		reached[0][2] = 1;
		Printf("Process 1 is running\n");
		_m = 3; goto P999; /* 1 */
	case 97: // STATE 3 - control.pml:169 - [interrupted_task = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->_3_1_1_interrupted_task);
		((P0 *)_this)->_3_1_1_interrupted_task = 0;
#ifdef VAR_RANGES
		logval("Process1:interrupted_task", ((int)((P0 *)_this)->_3_1_1_interrupted_task));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 98: // STATE 4 - control.pml:152 - [int_save = int_ctrl_reg] (0:20:3 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.int_save);
		now.int_save = ((int)now.int_ctrl_reg);
#ifdef VAR_RANGES
		logval("int_save", ((int)now.int_save));
#endif
		;
		/* merge: int_ctrl_reg = 1(20, 5, 20) */
		reached[0][5] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.int_ctrl_reg);
		now.int_ctrl_reg = 1;
#ifdef VAR_RANGES
		logval("int_ctrl_reg", ((int)now.int_ctrl_reg));
#endif
		;
		/* merge: interrupted_task = EP(20, 7, 20) */
		reached[0][7] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P0 *)_this)->_3_1_1_interrupted_task);
		((P0 *)_this)->_3_1_1_interrupted_task = ((int)now.EP);
#ifdef VAR_RANGES
		logval("Process1:interrupted_task", ((int)((P0 *)_this)->_3_1_1_interrupted_task));
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 99: // STATE 8 - control.pml:176 - [(((interrupted_task>=1)&&(interrupted_task<=2)))] (17:0:1 - 1)
		IfNotBlocked
		reached[0][8] = 1;
		if (!(((((int)((P0 *)_this)->_3_1_1_interrupted_task)>=1)&&(((int)((P0 *)_this)->_3_1_1_interrupted_task)<=2))))
			continue;
		/* merge: tcb[interrupted_task].state = 1(0, 9, 17) */
		reached[0][9] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[ Index(((int)((P0 *)_this)->_3_1_1_interrupted_task), 3) ].state);
		now.tcb[ Index(((P0 *)_this)->_3_1_1_interrupted_task, 3) ].state = 1;
#ifdef VAR_RANGES
		logval("tcb[Process1:interrupted_task].state", ((int)now.tcb[ Index(((int)((P0 *)_this)->_3_1_1_interrupted_task), 3) ].state));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 100: // STATE 10 - control.pml:59 - [((readyQueue[tcb[interrupted_task].prio].tailIndex<5))] (40:0:2 - 1)
		IfNotBlocked
		reached[0][10] = 1;
		if (!((((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P0 *)_this)->_3_1_1_interrupted_task), 3) ].prio), 4) ].tailIndex)<5)))
			continue;
		/* merge: readyQueue[tcb[interrupted_task].prio].tasks[readyQueue[tcb[interrupted_task].prio].tailIndex] = interrupted_task(40, 11, 40) */
		reached[0][11] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P0 *)_this)->_3_1_1_interrupted_task), 3) ].prio), 4) ].tasks[ Index(((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P0 *)_this)->_3_1_1_interrupted_task), 3) ].prio), 4) ].tailIndex), 5) ]);
		now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_3_1_1_interrupted_task, 3) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_3_1_1_interrupted_task, 3) ].prio, 4) ].tailIndex, 5) ] = ((int)((P0 *)_this)->_3_1_1_interrupted_task);
#ifdef VAR_RANGES
		logval("readyQueue[tcb[Process1:interrupted_task].prio].tasks[readyQueue[tcb[Process1:interrupted_task].prio].tailIndex]", ((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P0 *)_this)->_3_1_1_interrupted_task), 3) ].prio), 4) ].tasks[ Index(((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P0 *)_this)->_3_1_1_interrupted_task), 3) ].prio), 4) ].tailIndex), 5) ]));
#endif
		;
		/* merge: readyQueue[tcb[interrupted_task].prio].tailIndex = (readyQueue[tcb[interrupted_task].prio].tailIndex+1)(40, 12, 40) */
		reached[0][12] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P0 *)_this)->_3_1_1_interrupted_task), 3) ].prio), 4) ].tailIndex);
		now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_3_1_1_interrupted_task, 3) ].prio, 4) ].tailIndex = (((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P0 *)_this)->_3_1_1_interrupted_task), 3) ].prio), 4) ].tailIndex)+1);
#ifdef VAR_RANGES
		logval("readyQueue[tcb[Process1:interrupted_task].prio].tailIndex", ((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P0 *)_this)->_3_1_1_interrupted_task), 3) ].prio), 4) ].tailIndex));
#endif
		;
		/* merge: .(goto)(0, 16, 40) */
		reached[0][16] = 1;
		;
		/* merge: .(goto)(0, 21, 40) */
		reached[0][21] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 101: // STATE 14 - control.pml:62 - [assert(0)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][14] = 1;
		spin_assert(0, "0", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 102: // STATE 22 - control.pml:126 - [prio = 0] (0:35:3 - 1)
		IfNotBlocked
		reached[0][22] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->_3_1_1_3_prio);
		((P0 *)_this)->_3_1_1_3_prio = 0;
#ifdef VAR_RANGES
		logval("Process1:prio", ((int)((P0 *)_this)->_3_1_1_3_prio));
#endif
		;
		/* merge: top_task = 0(35, 23, 35) */
		reached[0][23] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->_3_1_1_3_top_task);
		((P0 *)_this)->_3_1_1_3_top_task = 0;
#ifdef VAR_RANGES
		logval("Process1:top_task", ((int)((P0 *)_this)->_3_1_1_3_top_task));
#endif
		;
		/* merge: found = 0(35, 24, 35) */
		reached[0][24] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P0 *)_this)->_3_1_1_3_found);
		((P0 *)_this)->_3_1_1_3_found = 0;
#ifdef VAR_RANGES
		logval("Process1:found", ((int)((P0 *)_this)->_3_1_1_3_found));
#endif
		;
		/* merge: .(goto)(0, 36, 35) */
		reached[0][36] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 103: // STATE 25 - control.pml:131 - [(((prio<4)&&!(found)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][25] = 1;
		if (!(((((int)((P0 *)_this)->_3_1_1_3_prio)<4)&& !(((int)((P0 *)_this)->_3_1_1_3_found)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 104: // STATE 26 - control.pml:133 - [((readyQueue[prio].tailIndex>0))] (35:0:2 - 1)
		IfNotBlocked
		reached[0][26] = 1;
		if (!((((int)now.readyQueue[ Index(((int)((P0 *)_this)->_3_1_1_3_prio), 4) ].tailIndex)>0)))
			continue;
		/* merge: top_task = readyQueue[prio].tasks[0](35, 27, 35) */
		reached[0][27] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->_3_1_1_3_top_task);
		((P0 *)_this)->_3_1_1_3_top_task = ((int)now.readyQueue[ Index(((int)((P0 *)_this)->_3_1_1_3_prio), 4) ].tasks[0]);
#ifdef VAR_RANGES
		logval("Process1:top_task", ((int)((P0 *)_this)->_3_1_1_3_top_task));
#endif
		;
		/* merge: found = 1(35, 28, 35) */
		reached[0][28] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->_3_1_1_3_found);
		((P0 *)_this)->_3_1_1_3_found = 1;
#ifdef VAR_RANGES
		logval("Process1:found", ((int)((P0 *)_this)->_3_1_1_3_found));
#endif
		;
		/* merge: .(goto)(0, 32, 35) */
		reached[0][32] = 1;
		;
		/* merge: .(goto)(0, 36, 35) */
		reached[0][36] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 105: // STATE 30 - control.pml:139 - [prio = (prio+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][30] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->_3_1_1_3_prio);
		((P0 *)_this)->_3_1_1_3_prio = (((int)((P0 *)_this)->_3_1_1_3_prio)+1);
#ifdef VAR_RANGES
		logval("Process1:prio", ((int)((P0 *)_this)->_3_1_1_3_prio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 106: // STATE 33 - control.pml:141 - [(((prio>=4)||found))] (57:0:3 - 1)
		IfNotBlocked
		reached[0][33] = 1;
		if (!(((((int)((P0 *)_this)->_3_1_1_3_prio)>=4)||((int)((P0 *)_this)->_3_1_1_3_found))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _3_1_1_3_found */  (trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->_3_1_1_3_found;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->_3_1_1_3_found = 0;
		/* merge: goto :b1(57, 34, 57) */
		reached[0][34] = 1;
		;
		/* merge: newTask = top_task(57, 38, 57) */
		reached[0][38] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.newTask);
		now.newTask = ((int)((P0 *)_this)->_3_1_1_3_top_task);
#ifdef VAR_RANGES
		logval("newTask", ((int)now.newTask));
#endif
		;
		/* merge: topPrio = prio(57, 39, 57) */
		reached[0][39] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.topPrio);
		now.topPrio = ((int)((P0 *)_this)->_3_1_1_3_prio);
#ifdef VAR_RANGES
		logval("topPrio", ((int)now.topPrio));
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 107: // STATE 38 - control.pml:145 - [newTask = top_task] (0:57:2 - 3)
		IfNotBlocked
		reached[0][38] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.newTask);
		now.newTask = ((int)((P0 *)_this)->_3_1_1_3_top_task);
#ifdef VAR_RANGES
		logval("newTask", ((int)now.newTask));
#endif
		;
		/* merge: topPrio = prio(57, 39, 57) */
		reached[0][39] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.topPrio);
		now.topPrio = ((int)((P0 *)_this)->_3_1_1_3_prio);
#ifdef VAR_RANGES
		logval("topPrio", ((int)now.topPrio));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 108: // STATE 41 - control.pml:98 - [idx = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][41] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->_3_1_1_4_idx);
		((P0 *)_this)->_3_1_1_4_idx = 0;
#ifdef VAR_RANGES
		logval("Process1:idx", ((int)((P0 *)_this)->_3_1_1_4_idx));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 109: // STATE 42 - control.pml:99 - [((idx<(readyQueue[topPrio].tailIndex-1)))] (47:0:2 - 1)
		IfNotBlocked
		reached[0][42] = 1;
		if (!((((int)((P0 *)_this)->_3_1_1_4_idx)<(((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1))))
			continue;
		/* merge: readyQueue[topPrio].tasks[idx] = readyQueue[topPrio].tasks[(idx+1)](47, 43, 47) */
		reached[0][43] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index(((int)((P0 *)_this)->_3_1_1_4_idx), 5) ]);
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index(((P0 *)_this)->_3_1_1_4_idx, 5) ] = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index((((int)((P0 *)_this)->_3_1_1_4_idx)+1), 5) ]);
#ifdef VAR_RANGES
		logval("readyQueue[topPrio].tasks[Process1:idx]", ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index(((int)((P0 *)_this)->_3_1_1_4_idx), 5) ]));
#endif
		;
		/* merge: idx = (idx+1)(47, 44, 47) */
		reached[0][44] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->_3_1_1_4_idx);
		((P0 *)_this)->_3_1_1_4_idx = (((int)((P0 *)_this)->_3_1_1_4_idx)+1);
#ifdef VAR_RANGES
		logval("Process1:idx", ((int)((P0 *)_this)->_3_1_1_4_idx));
#endif
		;
		/* merge: .(goto)(0, 48, 47) */
		reached[0][48] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 110: // STATE 45 - control.pml:102 - [((idx>=(readyQueue[topPrio].tailIndex-1)))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][45] = 1;
		if (!((((int)((P0 *)_this)->_3_1_1_4_idx)>=(((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _3_1_1_4_idx */  (trpt+1)->bup.oval = ((P0 *)_this)->_3_1_1_4_idx;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->_3_1_1_4_idx = 0;
		_m = 3; goto P999; /* 0 */
	case 111: // STATE 50 - control.pml:107 - [((readyQueue[topPrio].tailIndex>0))] (61:0:4 - 1)
		IfNotBlocked
		reached[0][50] = 1;
		if (!((((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)>0)))
			continue;
		/* merge: readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)] = 255(61, 51, 61) */
		reached[0][51] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index((((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1), 5) ]);
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index((now.readyQueue[ Index(now.topPrio, 4) ].tailIndex-1), 5) ] = 255;
#ifdef VAR_RANGES
		logval("readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)]", ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index((((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1), 5) ]));
#endif
		;
		/* merge: readyQueue[topPrio].tailIndex = (readyQueue[topPrio].tailIndex-1)(61, 52, 61) */
		reached[0][52] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex);
		now.readyQueue[ Index(now.topPrio, 4) ].tailIndex = (((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1);
#ifdef VAR_RANGES
		logval("readyQueue[topPrio].tailIndex", ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex));
#endif
		;
		/* merge: .(goto)(61, 56, 61) */
		reached[0][56] = 1;
		;
		/* merge: tcb[newTask].state = 4(61, 58, 61) */
		reached[0][58] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.tcb[ Index(((int)now.newTask), 3) ].state);
		now.tcb[ Index(now.newTask, 3) ].state = 4;
#ifdef VAR_RANGES
		logval("tcb[newTask].state", ((int)now.tcb[ Index(((int)now.newTask), 3) ].state));
#endif
		;
		/* merge: EP = newTask(61, 59, 61) */
		reached[0][59] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.EP);
		now.EP = ((int)now.newTask);
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 5 */
	case 112: // STATE 54 - control.pml:110 - [(1)] (61:0:2 - 1)
		IfNotBlocked
		reached[0][54] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(61, 56, 61) */
		reached[0][56] = 1;
		;
		/* merge: tcb[newTask].state = 4(61, 58, 61) */
		reached[0][58] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.tcb[ Index(((int)now.newTask), 3) ].state);
		now.tcb[ Index(now.newTask, 3) ].state = 4;
#ifdef VAR_RANGES
		logval("tcb[newTask].state", ((int)now.tcb[ Index(((int)now.newTask), 3) ].state));
#endif
		;
		/* merge: EP = newTask(61, 59, 61) */
		reached[0][59] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.EP);
		now.EP = ((int)now.newTask);
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 113: // STATE 58 - control.pml:187 - [tcb[newTask].state = 4] (0:61:2 - 3)
		IfNotBlocked
		reached[0][58] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.tcb[ Index(((int)now.newTask), 3) ].state);
		now.tcb[ Index(now.newTask, 3) ].state = 4;
#ifdef VAR_RANGES
		logval("tcb[newTask].state", ((int)now.tcb[ Index(((int)now.newTask), 3) ].state));
#endif
		;
		/* merge: EP = newTask(61, 59, 61) */
		reached[0][59] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.EP);
		now.EP = ((int)now.newTask);
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 114: // STATE 60 - control.pml:156 - [int_ctrl_reg = int_save] (0:0:1 - 1)
		IfNotBlocked
		reached[0][60] = 1;
		(trpt+1)->bup.oval = ((int)now.int_ctrl_reg);
		now.int_ctrl_reg = ((int)now.int_save);
#ifdef VAR_RANGES
		logval("int_ctrl_reg", ((int)now.int_ctrl_reg));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 115: // STATE 64 - control.pml:201 - [((EP==1))] (125:0:0 - 1)
		IfNotBlocked
		reached[0][64] = 1;
		if (!((((int)now.EP)==1)))
			continue;
		/* merge: assert((EP==1))(0, 65, 125) */
		reached[0][65] = 1;
		spin_assert((((int)now.EP)==1), "(EP==1)", II, tt, t);
		_m = 3; goto P999; /* 1 */
	case 116: // STATE 66 - control.pml:169 - [interrupted_task = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][66] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->_3_2_2_interrupted_task);
		((P0 *)_this)->_3_2_2_interrupted_task = 0;
#ifdef VAR_RANGES
		logval("Process1:interrupted_task", ((int)((P0 *)_this)->_3_2_2_interrupted_task));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 117: // STATE 67 - control.pml:152 - [int_save = int_ctrl_reg] (0:83:3 - 1)
		IfNotBlocked
		reached[0][67] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.int_save);
		now.int_save = ((int)now.int_ctrl_reg);
#ifdef VAR_RANGES
		logval("int_save", ((int)now.int_save));
#endif
		;
		/* merge: int_ctrl_reg = 1(83, 68, 83) */
		reached[0][68] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.int_ctrl_reg);
		now.int_ctrl_reg = 1;
#ifdef VAR_RANGES
		logval("int_ctrl_reg", ((int)now.int_ctrl_reg));
#endif
		;
		/* merge: interrupted_task = EP(83, 70, 83) */
		reached[0][70] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P0 *)_this)->_3_2_2_interrupted_task);
		((P0 *)_this)->_3_2_2_interrupted_task = ((int)now.EP);
#ifdef VAR_RANGES
		logval("Process1:interrupted_task", ((int)((P0 *)_this)->_3_2_2_interrupted_task));
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 118: // STATE 71 - control.pml:176 - [(((interrupted_task>=1)&&(interrupted_task<=2)))] (80:0:1 - 1)
		IfNotBlocked
		reached[0][71] = 1;
		if (!(((((int)((P0 *)_this)->_3_2_2_interrupted_task)>=1)&&(((int)((P0 *)_this)->_3_2_2_interrupted_task)<=2))))
			continue;
		/* merge: tcb[interrupted_task].state = 1(0, 72, 80) */
		reached[0][72] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[ Index(((int)((P0 *)_this)->_3_2_2_interrupted_task), 3) ].state);
		now.tcb[ Index(((P0 *)_this)->_3_2_2_interrupted_task, 3) ].state = 1;
#ifdef VAR_RANGES
		logval("tcb[Process1:interrupted_task].state", ((int)now.tcb[ Index(((int)((P0 *)_this)->_3_2_2_interrupted_task), 3) ].state));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 119: // STATE 73 - control.pml:59 - [((readyQueue[tcb[interrupted_task].prio].tailIndex<5))] (103:0:2 - 1)
		IfNotBlocked
		reached[0][73] = 1;
		if (!((((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P0 *)_this)->_3_2_2_interrupted_task), 3) ].prio), 4) ].tailIndex)<5)))
			continue;
		/* merge: readyQueue[tcb[interrupted_task].prio].tasks[readyQueue[tcb[interrupted_task].prio].tailIndex] = interrupted_task(103, 74, 103) */
		reached[0][74] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P0 *)_this)->_3_2_2_interrupted_task), 3) ].prio), 4) ].tasks[ Index(((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P0 *)_this)->_3_2_2_interrupted_task), 3) ].prio), 4) ].tailIndex), 5) ]);
		now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_3_2_2_interrupted_task, 3) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_3_2_2_interrupted_task, 3) ].prio, 4) ].tailIndex, 5) ] = ((int)((P0 *)_this)->_3_2_2_interrupted_task);
#ifdef VAR_RANGES
		logval("readyQueue[tcb[Process1:interrupted_task].prio].tasks[readyQueue[tcb[Process1:interrupted_task].prio].tailIndex]", ((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P0 *)_this)->_3_2_2_interrupted_task), 3) ].prio), 4) ].tasks[ Index(((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P0 *)_this)->_3_2_2_interrupted_task), 3) ].prio), 4) ].tailIndex), 5) ]));
#endif
		;
		/* merge: readyQueue[tcb[interrupted_task].prio].tailIndex = (readyQueue[tcb[interrupted_task].prio].tailIndex+1)(103, 75, 103) */
		reached[0][75] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P0 *)_this)->_3_2_2_interrupted_task), 3) ].prio), 4) ].tailIndex);
		now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_3_2_2_interrupted_task, 3) ].prio, 4) ].tailIndex = (((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P0 *)_this)->_3_2_2_interrupted_task), 3) ].prio), 4) ].tailIndex)+1);
#ifdef VAR_RANGES
		logval("readyQueue[tcb[Process1:interrupted_task].prio].tailIndex", ((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P0 *)_this)->_3_2_2_interrupted_task), 3) ].prio), 4) ].tailIndex));
#endif
		;
		/* merge: .(goto)(0, 79, 103) */
		reached[0][79] = 1;
		;
		/* merge: .(goto)(0, 84, 103) */
		reached[0][84] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 120: // STATE 77 - control.pml:62 - [assert(0)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][77] = 1;
		spin_assert(0, "0", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 121: // STATE 85 - control.pml:126 - [prio = 0] (0:98:3 - 1)
		IfNotBlocked
		reached[0][85] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->_3_2_2_8_prio);
		((P0 *)_this)->_3_2_2_8_prio = 0;
#ifdef VAR_RANGES
		logval("Process1:prio", ((int)((P0 *)_this)->_3_2_2_8_prio));
#endif
		;
		/* merge: top_task = 0(98, 86, 98) */
		reached[0][86] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->_3_2_2_8_top_task);
		((P0 *)_this)->_3_2_2_8_top_task = 0;
#ifdef VAR_RANGES
		logval("Process1:top_task", ((int)((P0 *)_this)->_3_2_2_8_top_task));
#endif
		;
		/* merge: found = 0(98, 87, 98) */
		reached[0][87] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P0 *)_this)->_3_2_2_8_found);
		((P0 *)_this)->_3_2_2_8_found = 0;
#ifdef VAR_RANGES
		logval("Process1:found", ((int)((P0 *)_this)->_3_2_2_8_found));
#endif
		;
		/* merge: .(goto)(0, 99, 98) */
		reached[0][99] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 122: // STATE 88 - control.pml:131 - [(((prio<4)&&!(found)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][88] = 1;
		if (!(((((int)((P0 *)_this)->_3_2_2_8_prio)<4)&& !(((int)((P0 *)_this)->_3_2_2_8_found)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 123: // STATE 89 - control.pml:133 - [((readyQueue[prio].tailIndex>0))] (98:0:2 - 1)
		IfNotBlocked
		reached[0][89] = 1;
		if (!((((int)now.readyQueue[ Index(((int)((P0 *)_this)->_3_2_2_8_prio), 4) ].tailIndex)>0)))
			continue;
		/* merge: top_task = readyQueue[prio].tasks[0](98, 90, 98) */
		reached[0][90] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->_3_2_2_8_top_task);
		((P0 *)_this)->_3_2_2_8_top_task = ((int)now.readyQueue[ Index(((int)((P0 *)_this)->_3_2_2_8_prio), 4) ].tasks[0]);
#ifdef VAR_RANGES
		logval("Process1:top_task", ((int)((P0 *)_this)->_3_2_2_8_top_task));
#endif
		;
		/* merge: found = 1(98, 91, 98) */
		reached[0][91] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->_3_2_2_8_found);
		((P0 *)_this)->_3_2_2_8_found = 1;
#ifdef VAR_RANGES
		logval("Process1:found", ((int)((P0 *)_this)->_3_2_2_8_found));
#endif
		;
		/* merge: .(goto)(0, 95, 98) */
		reached[0][95] = 1;
		;
		/* merge: .(goto)(0, 99, 98) */
		reached[0][99] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 124: // STATE 93 - control.pml:139 - [prio = (prio+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][93] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->_3_2_2_8_prio);
		((P0 *)_this)->_3_2_2_8_prio = (((int)((P0 *)_this)->_3_2_2_8_prio)+1);
#ifdef VAR_RANGES
		logval("Process1:prio", ((int)((P0 *)_this)->_3_2_2_8_prio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 125: // STATE 96 - control.pml:141 - [(((prio>=4)||found))] (120:0:3 - 1)
		IfNotBlocked
		reached[0][96] = 1;
		if (!(((((int)((P0 *)_this)->_3_2_2_8_prio)>=4)||((int)((P0 *)_this)->_3_2_2_8_found))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _3_2_2_8_found */  (trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->_3_2_2_8_found;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->_3_2_2_8_found = 0;
		/* merge: goto :b3(120, 97, 120) */
		reached[0][97] = 1;
		;
		/* merge: newTask = top_task(120, 101, 120) */
		reached[0][101] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.newTask);
		now.newTask = ((int)((P0 *)_this)->_3_2_2_8_top_task);
#ifdef VAR_RANGES
		logval("newTask", ((int)now.newTask));
#endif
		;
		/* merge: topPrio = prio(120, 102, 120) */
		reached[0][102] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.topPrio);
		now.topPrio = ((int)((P0 *)_this)->_3_2_2_8_prio);
#ifdef VAR_RANGES
		logval("topPrio", ((int)now.topPrio));
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 126: // STATE 101 - control.pml:145 - [newTask = top_task] (0:120:2 - 3)
		IfNotBlocked
		reached[0][101] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.newTask);
		now.newTask = ((int)((P0 *)_this)->_3_2_2_8_top_task);
#ifdef VAR_RANGES
		logval("newTask", ((int)now.newTask));
#endif
		;
		/* merge: topPrio = prio(120, 102, 120) */
		reached[0][102] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.topPrio);
		now.topPrio = ((int)((P0 *)_this)->_3_2_2_8_prio);
#ifdef VAR_RANGES
		logval("topPrio", ((int)now.topPrio));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 127: // STATE 104 - control.pml:98 - [idx = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][104] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->_3_2_2_9_idx);
		((P0 *)_this)->_3_2_2_9_idx = 0;
#ifdef VAR_RANGES
		logval("Process1:idx", ((int)((P0 *)_this)->_3_2_2_9_idx));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 128: // STATE 105 - control.pml:99 - [((idx<(readyQueue[topPrio].tailIndex-1)))] (110:0:2 - 1)
		IfNotBlocked
		reached[0][105] = 1;
		if (!((((int)((P0 *)_this)->_3_2_2_9_idx)<(((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1))))
			continue;
		/* merge: readyQueue[topPrio].tasks[idx] = readyQueue[topPrio].tasks[(idx+1)](110, 106, 110) */
		reached[0][106] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index(((int)((P0 *)_this)->_3_2_2_9_idx), 5) ]);
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index(((P0 *)_this)->_3_2_2_9_idx, 5) ] = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index((((int)((P0 *)_this)->_3_2_2_9_idx)+1), 5) ]);
#ifdef VAR_RANGES
		logval("readyQueue[topPrio].tasks[Process1:idx]", ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index(((int)((P0 *)_this)->_3_2_2_9_idx), 5) ]));
#endif
		;
		/* merge: idx = (idx+1)(110, 107, 110) */
		reached[0][107] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->_3_2_2_9_idx);
		((P0 *)_this)->_3_2_2_9_idx = (((int)((P0 *)_this)->_3_2_2_9_idx)+1);
#ifdef VAR_RANGES
		logval("Process1:idx", ((int)((P0 *)_this)->_3_2_2_9_idx));
#endif
		;
		/* merge: .(goto)(0, 111, 110) */
		reached[0][111] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 129: // STATE 108 - control.pml:102 - [((idx>=(readyQueue[topPrio].tailIndex-1)))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][108] = 1;
		if (!((((int)((P0 *)_this)->_3_2_2_9_idx)>=(((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _3_2_2_9_idx */  (trpt+1)->bup.oval = ((P0 *)_this)->_3_2_2_9_idx;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->_3_2_2_9_idx = 0;
		_m = 3; goto P999; /* 0 */
	case 130: // STATE 113 - control.pml:107 - [((readyQueue[topPrio].tailIndex>0))] (124:0:4 - 1)
		IfNotBlocked
		reached[0][113] = 1;
		if (!((((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)>0)))
			continue;
		/* merge: readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)] = 255(124, 114, 124) */
		reached[0][114] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index((((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1), 5) ]);
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index((now.readyQueue[ Index(now.topPrio, 4) ].tailIndex-1), 5) ] = 255;
#ifdef VAR_RANGES
		logval("readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)]", ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index((((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1), 5) ]));
#endif
		;
		/* merge: readyQueue[topPrio].tailIndex = (readyQueue[topPrio].tailIndex-1)(124, 115, 124) */
		reached[0][115] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex);
		now.readyQueue[ Index(now.topPrio, 4) ].tailIndex = (((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1);
#ifdef VAR_RANGES
		logval("readyQueue[topPrio].tailIndex", ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex));
#endif
		;
		/* merge: .(goto)(124, 119, 124) */
		reached[0][119] = 1;
		;
		/* merge: tcb[newTask].state = 4(124, 121, 124) */
		reached[0][121] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.tcb[ Index(((int)now.newTask), 3) ].state);
		now.tcb[ Index(now.newTask, 3) ].state = 4;
#ifdef VAR_RANGES
		logval("tcb[newTask].state", ((int)now.tcb[ Index(((int)now.newTask), 3) ].state));
#endif
		;
		/* merge: EP = newTask(124, 122, 124) */
		reached[0][122] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.EP);
		now.EP = ((int)now.newTask);
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 5 */
	case 131: // STATE 117 - control.pml:110 - [(1)] (124:0:2 - 1)
		IfNotBlocked
		reached[0][117] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(124, 119, 124) */
		reached[0][119] = 1;
		;
		/* merge: tcb[newTask].state = 4(124, 121, 124) */
		reached[0][121] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.tcb[ Index(((int)now.newTask), 3) ].state);
		now.tcb[ Index(now.newTask, 3) ].state = 4;
#ifdef VAR_RANGES
		logval("tcb[newTask].state", ((int)now.tcb[ Index(((int)now.newTask), 3) ].state));
#endif
		;
		/* merge: EP = newTask(124, 122, 124) */
		reached[0][122] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.EP);
		now.EP = ((int)now.newTask);
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 132: // STATE 121 - control.pml:187 - [tcb[newTask].state = 4] (0:124:2 - 3)
		IfNotBlocked
		reached[0][121] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.tcb[ Index(((int)now.newTask), 3) ].state);
		now.tcb[ Index(now.newTask, 3) ].state = 4;
#ifdef VAR_RANGES
		logval("tcb[newTask].state", ((int)now.tcb[ Index(((int)now.newTask), 3) ].state));
#endif
		;
		/* merge: EP = newTask(124, 122, 124) */
		reached[0][122] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.EP);
		now.EP = ((int)now.newTask);
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 133: // STATE 123 - control.pml:156 - [int_ctrl_reg = int_save] (0:0:1 - 1)
		IfNotBlocked
		reached[0][123] = 1;
		(trpt+1)->bup.oval = ((int)now.int_ctrl_reg);
		now.int_ctrl_reg = ((int)now.int_save);
#ifdef VAR_RANGES
		logval("int_ctrl_reg", ((int)now.int_ctrl_reg));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 134: // STATE 127 - control.pml:202 - [((EP==1))] (188:0:1 - 1)
		IfNotBlocked
		reached[0][127] = 1;
		if (!((((int)now.EP)==1)))
			continue;
		/* merge: EP = 2(0, 128, 188) */
		reached[0][128] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 135: // STATE 129 - control.pml:169 - [interrupted_task = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][129] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->_3_3_3_interrupted_task);
		((P0 *)_this)->_3_3_3_interrupted_task = 0;
#ifdef VAR_RANGES
		logval("Process1:interrupted_task", ((int)((P0 *)_this)->_3_3_3_interrupted_task));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 136: // STATE 130 - control.pml:152 - [int_save = int_ctrl_reg] (0:146:3 - 1)
		IfNotBlocked
		reached[0][130] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.int_save);
		now.int_save = ((int)now.int_ctrl_reg);
#ifdef VAR_RANGES
		logval("int_save", ((int)now.int_save));
#endif
		;
		/* merge: int_ctrl_reg = 1(146, 131, 146) */
		reached[0][131] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.int_ctrl_reg);
		now.int_ctrl_reg = 1;
#ifdef VAR_RANGES
		logval("int_ctrl_reg", ((int)now.int_ctrl_reg));
#endif
		;
		/* merge: interrupted_task = EP(146, 133, 146) */
		reached[0][133] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P0 *)_this)->_3_3_3_interrupted_task);
		((P0 *)_this)->_3_3_3_interrupted_task = ((int)now.EP);
#ifdef VAR_RANGES
		logval("Process1:interrupted_task", ((int)((P0 *)_this)->_3_3_3_interrupted_task));
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 137: // STATE 134 - control.pml:176 - [(((interrupted_task>=1)&&(interrupted_task<=2)))] (143:0:1 - 1)
		IfNotBlocked
		reached[0][134] = 1;
		if (!(((((int)((P0 *)_this)->_3_3_3_interrupted_task)>=1)&&(((int)((P0 *)_this)->_3_3_3_interrupted_task)<=2))))
			continue;
		/* merge: tcb[interrupted_task].state = 1(0, 135, 143) */
		reached[0][135] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[ Index(((int)((P0 *)_this)->_3_3_3_interrupted_task), 3) ].state);
		now.tcb[ Index(((P0 *)_this)->_3_3_3_interrupted_task, 3) ].state = 1;
#ifdef VAR_RANGES
		logval("tcb[Process1:interrupted_task].state", ((int)now.tcb[ Index(((int)((P0 *)_this)->_3_3_3_interrupted_task), 3) ].state));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 138: // STATE 136 - control.pml:59 - [((readyQueue[tcb[interrupted_task].prio].tailIndex<5))] (166:0:2 - 1)
		IfNotBlocked
		reached[0][136] = 1;
		if (!((((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P0 *)_this)->_3_3_3_interrupted_task), 3) ].prio), 4) ].tailIndex)<5)))
			continue;
		/* merge: readyQueue[tcb[interrupted_task].prio].tasks[readyQueue[tcb[interrupted_task].prio].tailIndex] = interrupted_task(166, 137, 166) */
		reached[0][137] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P0 *)_this)->_3_3_3_interrupted_task), 3) ].prio), 4) ].tasks[ Index(((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P0 *)_this)->_3_3_3_interrupted_task), 3) ].prio), 4) ].tailIndex), 5) ]);
		now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_3_3_3_interrupted_task, 3) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_3_3_3_interrupted_task, 3) ].prio, 4) ].tailIndex, 5) ] = ((int)((P0 *)_this)->_3_3_3_interrupted_task);
#ifdef VAR_RANGES
		logval("readyQueue[tcb[Process1:interrupted_task].prio].tasks[readyQueue[tcb[Process1:interrupted_task].prio].tailIndex]", ((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P0 *)_this)->_3_3_3_interrupted_task), 3) ].prio), 4) ].tasks[ Index(((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P0 *)_this)->_3_3_3_interrupted_task), 3) ].prio), 4) ].tailIndex), 5) ]));
#endif
		;
		/* merge: readyQueue[tcb[interrupted_task].prio].tailIndex = (readyQueue[tcb[interrupted_task].prio].tailIndex+1)(166, 138, 166) */
		reached[0][138] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P0 *)_this)->_3_3_3_interrupted_task), 3) ].prio), 4) ].tailIndex);
		now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_3_3_3_interrupted_task, 3) ].prio, 4) ].tailIndex = (((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P0 *)_this)->_3_3_3_interrupted_task), 3) ].prio), 4) ].tailIndex)+1);
#ifdef VAR_RANGES
		logval("readyQueue[tcb[Process1:interrupted_task].prio].tailIndex", ((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P0 *)_this)->_3_3_3_interrupted_task), 3) ].prio), 4) ].tailIndex));
#endif
		;
		/* merge: .(goto)(0, 142, 166) */
		reached[0][142] = 1;
		;
		/* merge: .(goto)(0, 147, 166) */
		reached[0][147] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 139: // STATE 140 - control.pml:62 - [assert(0)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][140] = 1;
		spin_assert(0, "0", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 140: // STATE 148 - control.pml:126 - [prio = 0] (0:161:3 - 1)
		IfNotBlocked
		reached[0][148] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->_3_3_3_13_prio);
		((P0 *)_this)->_3_3_3_13_prio = 0;
#ifdef VAR_RANGES
		logval("Process1:prio", ((int)((P0 *)_this)->_3_3_3_13_prio));
#endif
		;
		/* merge: top_task = 0(161, 149, 161) */
		reached[0][149] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->_3_3_3_13_top_task);
		((P0 *)_this)->_3_3_3_13_top_task = 0;
#ifdef VAR_RANGES
		logval("Process1:top_task", ((int)((P0 *)_this)->_3_3_3_13_top_task));
#endif
		;
		/* merge: found = 0(161, 150, 161) */
		reached[0][150] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P0 *)_this)->_3_3_3_13_found);
		((P0 *)_this)->_3_3_3_13_found = 0;
#ifdef VAR_RANGES
		logval("Process1:found", ((int)((P0 *)_this)->_3_3_3_13_found));
#endif
		;
		/* merge: .(goto)(0, 162, 161) */
		reached[0][162] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 141: // STATE 151 - control.pml:131 - [(((prio<4)&&!(found)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][151] = 1;
		if (!(((((int)((P0 *)_this)->_3_3_3_13_prio)<4)&& !(((int)((P0 *)_this)->_3_3_3_13_found)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 142: // STATE 152 - control.pml:133 - [((readyQueue[prio].tailIndex>0))] (161:0:2 - 1)
		IfNotBlocked
		reached[0][152] = 1;
		if (!((((int)now.readyQueue[ Index(((int)((P0 *)_this)->_3_3_3_13_prio), 4) ].tailIndex)>0)))
			continue;
		/* merge: top_task = readyQueue[prio].tasks[0](161, 153, 161) */
		reached[0][153] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->_3_3_3_13_top_task);
		((P0 *)_this)->_3_3_3_13_top_task = ((int)now.readyQueue[ Index(((int)((P0 *)_this)->_3_3_3_13_prio), 4) ].tasks[0]);
#ifdef VAR_RANGES
		logval("Process1:top_task", ((int)((P0 *)_this)->_3_3_3_13_top_task));
#endif
		;
		/* merge: found = 1(161, 154, 161) */
		reached[0][154] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->_3_3_3_13_found);
		((P0 *)_this)->_3_3_3_13_found = 1;
#ifdef VAR_RANGES
		logval("Process1:found", ((int)((P0 *)_this)->_3_3_3_13_found));
#endif
		;
		/* merge: .(goto)(0, 158, 161) */
		reached[0][158] = 1;
		;
		/* merge: .(goto)(0, 162, 161) */
		reached[0][162] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 143: // STATE 156 - control.pml:139 - [prio = (prio+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][156] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->_3_3_3_13_prio);
		((P0 *)_this)->_3_3_3_13_prio = (((int)((P0 *)_this)->_3_3_3_13_prio)+1);
#ifdef VAR_RANGES
		logval("Process1:prio", ((int)((P0 *)_this)->_3_3_3_13_prio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 144: // STATE 159 - control.pml:141 - [(((prio>=4)||found))] (183:0:3 - 1)
		IfNotBlocked
		reached[0][159] = 1;
		if (!(((((int)((P0 *)_this)->_3_3_3_13_prio)>=4)||((int)((P0 *)_this)->_3_3_3_13_found))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _3_3_3_13_found */  (trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->_3_3_3_13_found;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->_3_3_3_13_found = 0;
		/* merge: goto :b5(183, 160, 183) */
		reached[0][160] = 1;
		;
		/* merge: newTask = top_task(183, 164, 183) */
		reached[0][164] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.newTask);
		now.newTask = ((int)((P0 *)_this)->_3_3_3_13_top_task);
#ifdef VAR_RANGES
		logval("newTask", ((int)now.newTask));
#endif
		;
		/* merge: topPrio = prio(183, 165, 183) */
		reached[0][165] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.topPrio);
		now.topPrio = ((int)((P0 *)_this)->_3_3_3_13_prio);
#ifdef VAR_RANGES
		logval("topPrio", ((int)now.topPrio));
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 145: // STATE 164 - control.pml:145 - [newTask = top_task] (0:183:2 - 3)
		IfNotBlocked
		reached[0][164] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.newTask);
		now.newTask = ((int)((P0 *)_this)->_3_3_3_13_top_task);
#ifdef VAR_RANGES
		logval("newTask", ((int)now.newTask));
#endif
		;
		/* merge: topPrio = prio(183, 165, 183) */
		reached[0][165] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.topPrio);
		now.topPrio = ((int)((P0 *)_this)->_3_3_3_13_prio);
#ifdef VAR_RANGES
		logval("topPrio", ((int)now.topPrio));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 146: // STATE 167 - control.pml:98 - [idx = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][167] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->_3_3_3_14_idx);
		((P0 *)_this)->_3_3_3_14_idx = 0;
#ifdef VAR_RANGES
		logval("Process1:idx", ((int)((P0 *)_this)->_3_3_3_14_idx));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 147: // STATE 168 - control.pml:99 - [((idx<(readyQueue[topPrio].tailIndex-1)))] (173:0:2 - 1)
		IfNotBlocked
		reached[0][168] = 1;
		if (!((((int)((P0 *)_this)->_3_3_3_14_idx)<(((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1))))
			continue;
		/* merge: readyQueue[topPrio].tasks[idx] = readyQueue[topPrio].tasks[(idx+1)](173, 169, 173) */
		reached[0][169] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index(((int)((P0 *)_this)->_3_3_3_14_idx), 5) ]);
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index(((P0 *)_this)->_3_3_3_14_idx, 5) ] = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index((((int)((P0 *)_this)->_3_3_3_14_idx)+1), 5) ]);
#ifdef VAR_RANGES
		logval("readyQueue[topPrio].tasks[Process1:idx]", ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index(((int)((P0 *)_this)->_3_3_3_14_idx), 5) ]));
#endif
		;
		/* merge: idx = (idx+1)(173, 170, 173) */
		reached[0][170] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->_3_3_3_14_idx);
		((P0 *)_this)->_3_3_3_14_idx = (((int)((P0 *)_this)->_3_3_3_14_idx)+1);
#ifdef VAR_RANGES
		logval("Process1:idx", ((int)((P0 *)_this)->_3_3_3_14_idx));
#endif
		;
		/* merge: .(goto)(0, 174, 173) */
		reached[0][174] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 148: // STATE 171 - control.pml:102 - [((idx>=(readyQueue[topPrio].tailIndex-1)))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][171] = 1;
		if (!((((int)((P0 *)_this)->_3_3_3_14_idx)>=(((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _3_3_3_14_idx */  (trpt+1)->bup.oval = ((P0 *)_this)->_3_3_3_14_idx;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->_3_3_3_14_idx = 0;
		_m = 3; goto P999; /* 0 */
	case 149: // STATE 176 - control.pml:107 - [((readyQueue[topPrio].tailIndex>0))] (187:0:4 - 1)
		IfNotBlocked
		reached[0][176] = 1;
		if (!((((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)>0)))
			continue;
		/* merge: readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)] = 255(187, 177, 187) */
		reached[0][177] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index((((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1), 5) ]);
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index((now.readyQueue[ Index(now.topPrio, 4) ].tailIndex-1), 5) ] = 255;
#ifdef VAR_RANGES
		logval("readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)]", ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index((((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1), 5) ]));
#endif
		;
		/* merge: readyQueue[topPrio].tailIndex = (readyQueue[topPrio].tailIndex-1)(187, 178, 187) */
		reached[0][178] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex);
		now.readyQueue[ Index(now.topPrio, 4) ].tailIndex = (((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1);
#ifdef VAR_RANGES
		logval("readyQueue[topPrio].tailIndex", ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex));
#endif
		;
		/* merge: .(goto)(187, 182, 187) */
		reached[0][182] = 1;
		;
		/* merge: tcb[newTask].state = 4(187, 184, 187) */
		reached[0][184] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.tcb[ Index(((int)now.newTask), 3) ].state);
		now.tcb[ Index(now.newTask, 3) ].state = 4;
#ifdef VAR_RANGES
		logval("tcb[newTask].state", ((int)now.tcb[ Index(((int)now.newTask), 3) ].state));
#endif
		;
		/* merge: EP = newTask(187, 185, 187) */
		reached[0][185] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.EP);
		now.EP = ((int)now.newTask);
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 5 */
	case 150: // STATE 180 - control.pml:110 - [(1)] (187:0:2 - 1)
		IfNotBlocked
		reached[0][180] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(187, 182, 187) */
		reached[0][182] = 1;
		;
		/* merge: tcb[newTask].state = 4(187, 184, 187) */
		reached[0][184] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.tcb[ Index(((int)now.newTask), 3) ].state);
		now.tcb[ Index(now.newTask, 3) ].state = 4;
#ifdef VAR_RANGES
		logval("tcb[newTask].state", ((int)now.tcb[ Index(((int)now.newTask), 3) ].state));
#endif
		;
		/* merge: EP = newTask(187, 185, 187) */
		reached[0][185] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.EP);
		now.EP = ((int)now.newTask);
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 151: // STATE 184 - control.pml:187 - [tcb[newTask].state = 4] (0:187:2 - 3)
		IfNotBlocked
		reached[0][184] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.tcb[ Index(((int)now.newTask), 3) ].state);
		now.tcb[ Index(now.newTask, 3) ].state = 4;
#ifdef VAR_RANGES
		logval("tcb[newTask].state", ((int)now.tcb[ Index(((int)now.newTask), 3) ].state));
#endif
		;
		/* merge: EP = newTask(187, 185, 187) */
		reached[0][185] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.EP);
		now.EP = ((int)now.newTask);
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 152: // STATE 186 - control.pml:156 - [int_ctrl_reg = int_save] (0:0:1 - 1)
		IfNotBlocked
		reached[0][186] = 1;
		(trpt+1)->bup.oval = ((int)now.int_ctrl_reg);
		now.int_ctrl_reg = ((int)now.int_save);
#ifdef VAR_RANGES
		logval("int_ctrl_reg", ((int)now.int_ctrl_reg));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 153: // STATE 193 - control.pml:204 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][193] = 1;
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

