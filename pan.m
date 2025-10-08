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
	case 14: // STATE 1 - control.pml:182 - [i = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[2][1] = 1;
		(trpt+1)->bup.oval = ((int)((P2 *)_this)->i);
		((P2 *)_this)->i = 0;
#ifdef VAR_RANGES
		logval(":init::i", ((int)((P2 *)_this)->i));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 2 - control.pml:184 - [((i<4))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][2] = 1;
		if (!((((int)((P2 *)_this)->i)<4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 3 - control.pml:35 - [idx = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[2][3] = 1;
		(trpt+1)->bup.oval = ((int)((P2 *)_this)->_5_6_idx);
		((P2 *)_this)->_5_6_idx = 0;
#ifdef VAR_RANGES
		logval(":init::idx", ((int)((P2 *)_this)->_5_6_idx));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 4 - control.pml:36 - [((idx<5))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][4] = 1;
		if (!((((int)((P2 *)_this)->_5_6_idx)<5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 5 - control.pml:37 - [readyQueue[i].tasks[idx] = 255] (0:0:1 - 1)
		IfNotBlocked
		reached[2][5] = 1;
		(trpt+1)->bup.oval = ((int)now.readyQueue[ Index(((int)((P2 *)_this)->i), 4) ].tasks[ Index(((int)((P2 *)_this)->_5_6_idx), 5) ]);
		now.readyQueue[ Index(((P2 *)_this)->i, 4) ].tasks[ Index(((P2 *)_this)->_5_6_idx, 5) ] = 255;
#ifdef VAR_RANGES
		logval("readyQueue[:init::i].tasks[:init::idx]", ((int)now.readyQueue[ Index(((int)((P2 *)_this)->i), 4) ].tasks[ Index(((int)((P2 *)_this)->_5_6_idx), 5) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 6 - control.pml:38 - [idx = (idx+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[2][6] = 1;
		(trpt+1)->bup.oval = ((int)((P2 *)_this)->_5_6_idx);
		((P2 *)_this)->_5_6_idx = (((int)((P2 *)_this)->_5_6_idx)+1);
#ifdef VAR_RANGES
		logval(":init::idx", ((int)((P2 *)_this)->_5_6_idx));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 7 - control.pml:39 - [((idx>=5))] (0:0:1 - 1)
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
	case 21: // STATE 12 - control.pml:41 - [readyQueue[i].tailIndex = 0] (0:0:1 - 3)
		IfNotBlocked
		reached[2][12] = 1;
		(trpt+1)->bup.oval = ((int)now.readyQueue[ Index(((int)((P2 *)_this)->i), 4) ].tailIndex);
		now.readyQueue[ Index(((P2 *)_this)->i, 4) ].tailIndex = 0;
#ifdef VAR_RANGES
		logval("readyQueue[:init::i].tailIndex", ((int)now.readyQueue[ Index(((int)((P2 *)_this)->i), 4) ].tailIndex));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 14 - control.pml:186 - [i = (i+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[2][14] = 1;
		(trpt+1)->bup.oval = ((int)((P2 *)_this)->i);
		((P2 *)_this)->i = (((int)((P2 *)_this)->i)+1);
#ifdef VAR_RANGES
		logval(":init::i", ((int)((P2 *)_this)->i));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 15 - control.pml:187 - [((i>=4))] (0:0:1 - 1)
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
	case 24: // STATE 20 - control.pml:191 - [tcb[1].prio = 2] (0:0:1 - 3)
		IfNotBlocked
		reached[2][20] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[1].prio);
		now.tcb[1].prio = 2;
#ifdef VAR_RANGES
		logval("tcb[1].prio", ((int)now.tcb[1].prio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 21 - control.pml:192 - [tcb[1].state = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[2][21] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[1].state);
		now.tcb[1].state = 1;
#ifdef VAR_RANGES
		logval("tcb[1].state", ((int)now.tcb[1].state));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 22 - control.pml:50 - [((readyQueue[tcb[1].prio].tailIndex<5))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][22] = 1;
		if (!((((int)now.readyQueue[ Index(((int)now.tcb[1].prio), 4) ].tailIndex)<5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 23 - control.pml:51 - [readyQueue[tcb[1].prio].tasks[readyQueue[tcb[1].prio].tailIndex] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[2][23] = 1;
		(trpt+1)->bup.oval = ((int)now.readyQueue[ Index(((int)now.tcb[1].prio), 4) ].tasks[ Index(((int)now.readyQueue[ Index(((int)now.tcb[1].prio), 4) ].tailIndex), 5) ]);
		now.readyQueue[ Index(now.tcb[1].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[1].prio, 4) ].tailIndex, 5) ] = 1;
#ifdef VAR_RANGES
		logval("readyQueue[tcb[1].prio].tasks[readyQueue[tcb[1].prio].tailIndex]", ((int)now.readyQueue[ Index(((int)now.tcb[1].prio), 4) ].tasks[ Index(((int)now.readyQueue[ Index(((int)now.tcb[1].prio), 4) ].tailIndex), 5) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 28: // STATE 24 - control.pml:52 - [readyQueue[tcb[1].prio].tailIndex = (readyQueue[tcb[1].prio].tailIndex+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[2][24] = 1;
		(trpt+1)->bup.oval = ((int)now.readyQueue[ Index(((int)now.tcb[1].prio), 4) ].tailIndex);
		now.readyQueue[ Index(now.tcb[1].prio, 4) ].tailIndex = (((int)now.readyQueue[ Index(((int)now.tcb[1].prio), 4) ].tailIndex)+1);
#ifdef VAR_RANGES
		logval("readyQueue[tcb[1].prio].tailIndex", ((int)now.readyQueue[ Index(((int)now.tcb[1].prio), 4) ].tailIndex));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 30 - control.pml:195 - [tcb[2].prio = 2] (0:0:1 - 3)
		IfNotBlocked
		reached[2][30] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[2].prio);
		now.tcb[2].prio = 2;
#ifdef VAR_RANGES
		logval("tcb[2].prio", ((int)now.tcb[2].prio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 30: // STATE 31 - control.pml:196 - [tcb[2].state = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[2][31] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[2].state);
		now.tcb[2].state = 1;
#ifdef VAR_RANGES
		logval("tcb[2].state", ((int)now.tcb[2].state));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 32 - control.pml:50 - [((readyQueue[tcb[2].prio].tailIndex<5))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][32] = 1;
		if (!((((int)now.readyQueue[ Index(((int)now.tcb[2].prio), 4) ].tailIndex)<5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 33 - control.pml:51 - [readyQueue[tcb[2].prio].tasks[readyQueue[tcb[2].prio].tailIndex] = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[2][33] = 1;
		(trpt+1)->bup.oval = ((int)now.readyQueue[ Index(((int)now.tcb[2].prio), 4) ].tasks[ Index(((int)now.readyQueue[ Index(((int)now.tcb[2].prio), 4) ].tailIndex), 5) ]);
		now.readyQueue[ Index(now.tcb[2].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[2].prio, 4) ].tailIndex, 5) ] = 2;
#ifdef VAR_RANGES
		logval("readyQueue[tcb[2].prio].tasks[readyQueue[tcb[2].prio].tailIndex]", ((int)now.readyQueue[ Index(((int)now.tcb[2].prio), 4) ].tasks[ Index(((int)now.readyQueue[ Index(((int)now.tcb[2].prio), 4) ].tailIndex), 5) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 33: // STATE 34 - control.pml:52 - [readyQueue[tcb[2].prio].tailIndex = (readyQueue[tcb[2].prio].tailIndex+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[2][34] = 1;
		(trpt+1)->bup.oval = ((int)now.readyQueue[ Index(((int)now.tcb[2].prio), 4) ].tailIndex);
		now.readyQueue[ Index(now.tcb[2].prio, 4) ].tailIndex = (((int)now.readyQueue[ Index(((int)now.tcb[2].prio), 4) ].tailIndex)+1);
#ifdef VAR_RANGES
		logval("readyQueue[tcb[2].prio].tailIndex", ((int)now.readyQueue[ Index(((int)now.tcb[2].prio), 4) ].tailIndex));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 40 - control.pml:117 - [prio = 0] (0:53:3 - 1)
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
	case 35: // STATE 43 - control.pml:122 - [(((prio<4)&&!(found)))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][43] = 1;
		if (!(((((int)((P2 *)_this)->_5_9_prio)<4)&& !(((int)((P2 *)_this)->_5_9_found)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 36: // STATE 44 - control.pml:124 - [((readyQueue[prio].tailIndex>0))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][44] = 1;
		if (!((((int)now.readyQueue[ Index(((int)((P2 *)_this)->_5_9_prio), 4) ].tailIndex)>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 37: // STATE 45 - control.pml:126 - [top_task = readyQueue[prio].tasks[0]] (0:0:1 - 1)
		IfNotBlocked
		reached[2][45] = 1;
		(trpt+1)->bup.oval = ((int)((P2 *)_this)->_5_9_top_task);
		((P2 *)_this)->_5_9_top_task = ((int)now.readyQueue[ Index(((int)((P2 *)_this)->_5_9_prio), 4) ].tasks[0]);
#ifdef VAR_RANGES
		logval(":init::top_task", ((int)((P2 *)_this)->_5_9_top_task));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 38: // STATE 46 - control.pml:129 - [found = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[2][46] = 1;
		(trpt+1)->bup.oval = ((int)((P2 *)_this)->_5_9_found);
		((P2 *)_this)->_5_9_found = 1;
#ifdef VAR_RANGES
		logval(":init::found", ((int)((P2 *)_this)->_5_9_found));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 39: // STATE 48 - control.pml:130 - [prio = (prio+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[2][48] = 1;
		(trpt+1)->bup.oval = ((int)((P2 *)_this)->_5_9_prio);
		((P2 *)_this)->_5_9_prio = (((int)((P2 *)_this)->_5_9_prio)+1);
#ifdef VAR_RANGES
		logval(":init::prio", ((int)((P2 *)_this)->_5_9_prio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 40: // STATE 51 - control.pml:132 - [(((prio>=4)||found))] (0:0:2 - 1)
		IfNotBlocked
		reached[2][51] = 1;
		if (!(((((int)((P2 *)_this)->_5_9_prio)>=4)||((int)((P2 *)_this)->_5_9_found))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _5_9_prio */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P2 *)_this)->_5_9_prio;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P2 *)_this)->_5_9_prio = 0;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _5_9_found */  (trpt+1)->bup.ovals[1] = ((P2 *)_this)->_5_9_found;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P2 *)_this)->_5_9_found = 0;
		_m = 3; goto P999; /* 0 */
	case 41: // STATE 56 - control.pml:136 - [EP = top_task] (0:0:1 - 3)
		IfNotBlocked
		reached[2][56] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = ((int)((P2 *)_this)->_5_9_top_task);
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 42: // STATE 58 - control.pml:200 - [(run Process1())] (0:0:0 - 1)
		IfNotBlocked
		reached[2][58] = 1;
		if (!(addproc(II, 1, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 43: // STATE 59 - control.pml:201 - [(run Process2())] (0:0:0 - 1)
		IfNotBlocked
		reached[2][59] = 1;
		if (!(addproc(II, 1, 1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 44: // STATE 60 - control.pml:202 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][60] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Process2 */
	case 45: // STATE 1 - control.pml:160 - [((EP==2))] (22:0:0 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		if (!((((int)now.EP)==2)))
			continue;
		/* merge: printf('Process 2 is running\\n')(0, 2, 22) */
		reached[1][2] = 1;
		Printf("Process 2 is running\n");
		_m = 3; goto P999; /* 1 */
	case 46: // STATE 3 - control.pml:160 - [(1)] (49:0:0 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(49, 23, 49) */
		reached[1][23] = 1;
		;
		/* merge: .(goto)(0, 50, 49) */
		reached[1][50] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 47: // STATE 23 - control.pml:160 - [.(goto)] (0:49:0 - 2)
		IfNotBlocked
		reached[1][23] = 1;
		;
		/* merge: .(goto)(0, 50, 49) */
		reached[1][50] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 48: // STATE 4 - control.pml:117 - [prio = 0] (0:17:3 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)_this)->_4_4_4_prio);
		((P1 *)_this)->_4_4_4_prio = 0;
#ifdef VAR_RANGES
		logval("Process2:prio", ((int)((P1 *)_this)->_4_4_4_prio));
#endif
		;
		/* merge: top_task = 0(17, 5, 17) */
		reached[1][5] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)_this)->_4_4_4_top_task);
		((P1 *)_this)->_4_4_4_top_task = 0;
#ifdef VAR_RANGES
		logval("Process2:top_task", ((int)((P1 *)_this)->_4_4_4_top_task));
#endif
		;
		/* merge: found = 0(17, 6, 17) */
		reached[1][6] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P1 *)_this)->_4_4_4_found);
		((P1 *)_this)->_4_4_4_found = 0;
#ifdef VAR_RANGES
		logval("Process2:found", ((int)((P1 *)_this)->_4_4_4_found));
#endif
		;
		/* merge: .(goto)(0, 18, 17) */
		reached[1][18] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 49: // STATE 7 - control.pml:122 - [(((prio<4)&&!(found)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][7] = 1;
		if (!(((((int)((P1 *)_this)->_4_4_4_prio)<4)&& !(((int)((P1 *)_this)->_4_4_4_found)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 50: // STATE 8 - control.pml:124 - [((readyQueue[prio].tailIndex>0))] (17:0:2 - 1)
		IfNotBlocked
		reached[1][8] = 1;
		if (!((((int)now.readyQueue[ Index(((int)((P1 *)_this)->_4_4_4_prio), 4) ].tailIndex)>0)))
			continue;
		/* merge: top_task = readyQueue[prio].tasks[0](17, 9, 17) */
		reached[1][9] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)_this)->_4_4_4_top_task);
		((P1 *)_this)->_4_4_4_top_task = ((int)now.readyQueue[ Index(((int)((P1 *)_this)->_4_4_4_prio), 4) ].tasks[0]);
#ifdef VAR_RANGES
		logval("Process2:top_task", ((int)((P1 *)_this)->_4_4_4_top_task));
#endif
		;
		/* merge: found = 1(17, 10, 17) */
		reached[1][10] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)_this)->_4_4_4_found);
		((P1 *)_this)->_4_4_4_found = 1;
#ifdef VAR_RANGES
		logval("Process2:found", ((int)((P1 *)_this)->_4_4_4_found));
#endif
		;
		/* merge: .(goto)(0, 14, 17) */
		reached[1][14] = 1;
		;
		/* merge: .(goto)(0, 18, 17) */
		reached[1][18] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 51: // STATE 12 - control.pml:130 - [prio = (prio+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][12] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)_this)->_4_4_4_prio);
		((P1 *)_this)->_4_4_4_prio = (((int)((P1 *)_this)->_4_4_4_prio)+1);
#ifdef VAR_RANGES
		logval("Process2:prio", ((int)((P1 *)_this)->_4_4_4_prio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 52: // STATE 15 - control.pml:132 - [(((prio>=4)||found))] (49:0:3 - 1)
		IfNotBlocked
		reached[1][15] = 1;
		if (!(((((int)((P1 *)_this)->_4_4_4_prio)>=4)||((int)((P1 *)_this)->_4_4_4_found))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _4_4_4_prio */  (trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->_4_4_4_prio;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->_4_4_4_prio = 0;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _4_4_4_found */  (trpt+1)->bup.ovals[1] = ((P1 *)_this)->_4_4_4_found;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->_4_4_4_found = 0;
		/* merge: goto :b5(49, 16, 49) */
		reached[1][16] = 1;
		;
		/* merge: EP = top_task(49, 20, 49) */
		reached[1][20] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.EP);
		now.EP = ((int)((P1 *)_this)->_4_4_4_top_task);
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: .(goto)(49, 23, 49) */
		reached[1][23] = 1;
		;
		/* merge: .(goto)(0, 50, 49) */
		reached[1][50] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 53: // STATE 20 - control.pml:136 - [EP = top_task] (0:49:1 - 3)
		IfNotBlocked
		reached[1][20] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = ((int)((P1 *)_this)->_4_4_4_top_task);
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: .(goto)(49, 23, 49) */
		reached[1][23] = 1;
		;
		/* merge: .(goto)(0, 50, 49) */
		reached[1][50] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 54: // STATE 25 - control.pml:161 - [((EP==2))] (46:0:1 - 1)
		IfNotBlocked
		reached[1][25] = 1;
		if (!((((int)now.EP)==2)))
			continue;
		/* merge: EP = 1(0, 26, 46) */
		reached[1][26] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 1;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 55: // STATE 27 - control.pml:161 - [(1)] (49:0:0 - 1)
		IfNotBlocked
		reached[1][27] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(49, 47, 49) */
		reached[1][47] = 1;
		;
		/* merge: .(goto)(0, 50, 49) */
		reached[1][50] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 56: // STATE 47 - control.pml:161 - [.(goto)] (0:49:0 - 2)
		IfNotBlocked
		reached[1][47] = 1;
		;
		/* merge: .(goto)(0, 50, 49) */
		reached[1][50] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 57: // STATE 28 - control.pml:117 - [prio = 0] (0:41:3 - 1)
		IfNotBlocked
		reached[1][28] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)_this)->_4_5_5_prio);
		((P1 *)_this)->_4_5_5_prio = 0;
#ifdef VAR_RANGES
		logval("Process2:prio", ((int)((P1 *)_this)->_4_5_5_prio));
#endif
		;
		/* merge: top_task = 0(41, 29, 41) */
		reached[1][29] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)_this)->_4_5_5_top_task);
		((P1 *)_this)->_4_5_5_top_task = 0;
#ifdef VAR_RANGES
		logval("Process2:top_task", ((int)((P1 *)_this)->_4_5_5_top_task));
#endif
		;
		/* merge: found = 0(41, 30, 41) */
		reached[1][30] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P1 *)_this)->_4_5_5_found);
		((P1 *)_this)->_4_5_5_found = 0;
#ifdef VAR_RANGES
		logval("Process2:found", ((int)((P1 *)_this)->_4_5_5_found));
#endif
		;
		/* merge: .(goto)(0, 42, 41) */
		reached[1][42] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 58: // STATE 31 - control.pml:122 - [(((prio<4)&&!(found)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][31] = 1;
		if (!(((((int)((P1 *)_this)->_4_5_5_prio)<4)&& !(((int)((P1 *)_this)->_4_5_5_found)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 59: // STATE 32 - control.pml:124 - [((readyQueue[prio].tailIndex>0))] (41:0:2 - 1)
		IfNotBlocked
		reached[1][32] = 1;
		if (!((((int)now.readyQueue[ Index(((int)((P1 *)_this)->_4_5_5_prio), 4) ].tailIndex)>0)))
			continue;
		/* merge: top_task = readyQueue[prio].tasks[0](41, 33, 41) */
		reached[1][33] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)_this)->_4_5_5_top_task);
		((P1 *)_this)->_4_5_5_top_task = ((int)now.readyQueue[ Index(((int)((P1 *)_this)->_4_5_5_prio), 4) ].tasks[0]);
#ifdef VAR_RANGES
		logval("Process2:top_task", ((int)((P1 *)_this)->_4_5_5_top_task));
#endif
		;
		/* merge: found = 1(41, 34, 41) */
		reached[1][34] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)_this)->_4_5_5_found);
		((P1 *)_this)->_4_5_5_found = 1;
#ifdef VAR_RANGES
		logval("Process2:found", ((int)((P1 *)_this)->_4_5_5_found));
#endif
		;
		/* merge: .(goto)(0, 38, 41) */
		reached[1][38] = 1;
		;
		/* merge: .(goto)(0, 42, 41) */
		reached[1][42] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 60: // STATE 36 - control.pml:130 - [prio = (prio+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][36] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)_this)->_4_5_5_prio);
		((P1 *)_this)->_4_5_5_prio = (((int)((P1 *)_this)->_4_5_5_prio)+1);
#ifdef VAR_RANGES
		logval("Process2:prio", ((int)((P1 *)_this)->_4_5_5_prio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 61: // STATE 39 - control.pml:132 - [(((prio>=4)||found))] (49:0:3 - 1)
		IfNotBlocked
		reached[1][39] = 1;
		if (!(((((int)((P1 *)_this)->_4_5_5_prio)>=4)||((int)((P1 *)_this)->_4_5_5_found))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _4_5_5_prio */  (trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->_4_5_5_prio;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->_4_5_5_prio = 0;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _4_5_5_found */  (trpt+1)->bup.ovals[1] = ((P1 *)_this)->_4_5_5_found;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->_4_5_5_found = 0;
		/* merge: goto :b6(49, 40, 49) */
		reached[1][40] = 1;
		;
		/* merge: EP = top_task(49, 44, 49) */
		reached[1][44] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.EP);
		now.EP = ((int)((P1 *)_this)->_4_5_5_top_task);
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: .(goto)(49, 47, 49) */
		reached[1][47] = 1;
		;
		/* merge: .(goto)(0, 50, 49) */
		reached[1][50] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 62: // STATE 44 - control.pml:136 - [EP = top_task] (0:49:1 - 3)
		IfNotBlocked
		reached[1][44] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = ((int)((P1 *)_this)->_4_5_5_top_task);
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: .(goto)(49, 47, 49) */
		reached[1][47] = 1;
		;
		/* merge: .(goto)(0, 50, 49) */
		reached[1][50] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 63: // STATE 52 - control.pml:163 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][52] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Process1 */
	case 64: // STATE 1 - control.pml:152 - [((EP==1))] (22:0:0 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		if (!((((int)now.EP)==1)))
			continue;
		/* merge: printf('Process 1 is running\\n')(0, 2, 22) */
		reached[0][2] = 1;
		Printf("Process 1 is running\n");
		_m = 3; goto P999; /* 1 */
	case 65: // STATE 3 - control.pml:152 - [(1)] (73:0:0 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(73, 23, 73) */
		reached[0][23] = 1;
		;
		/* merge: .(goto)(0, 74, 73) */
		reached[0][74] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 66: // STATE 23 - control.pml:152 - [.(goto)] (0:73:0 - 2)
		IfNotBlocked
		reached[0][23] = 1;
		;
		/* merge: .(goto)(0, 74, 73) */
		reached[0][74] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 67: // STATE 4 - control.pml:117 - [prio = 0] (0:17:3 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->_3_1_1_prio);
		((P0 *)_this)->_3_1_1_prio = 0;
#ifdef VAR_RANGES
		logval("Process1:prio", ((int)((P0 *)_this)->_3_1_1_prio));
#endif
		;
		/* merge: top_task = 0(17, 5, 17) */
		reached[0][5] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->_3_1_1_top_task);
		((P0 *)_this)->_3_1_1_top_task = 0;
#ifdef VAR_RANGES
		logval("Process1:top_task", ((int)((P0 *)_this)->_3_1_1_top_task));
#endif
		;
		/* merge: found = 0(17, 6, 17) */
		reached[0][6] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P0 *)_this)->_3_1_1_found);
		((P0 *)_this)->_3_1_1_found = 0;
#ifdef VAR_RANGES
		logval("Process1:found", ((int)((P0 *)_this)->_3_1_1_found));
#endif
		;
		/* merge: .(goto)(0, 18, 17) */
		reached[0][18] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 68: // STATE 7 - control.pml:122 - [(((prio<4)&&!(found)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][7] = 1;
		if (!(((((int)((P0 *)_this)->_3_1_1_prio)<4)&& !(((int)((P0 *)_this)->_3_1_1_found)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 69: // STATE 8 - control.pml:124 - [((readyQueue[prio].tailIndex>0))] (17:0:2 - 1)
		IfNotBlocked
		reached[0][8] = 1;
		if (!((((int)now.readyQueue[ Index(((int)((P0 *)_this)->_3_1_1_prio), 4) ].tailIndex)>0)))
			continue;
		/* merge: top_task = readyQueue[prio].tasks[0](17, 9, 17) */
		reached[0][9] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->_3_1_1_top_task);
		((P0 *)_this)->_3_1_1_top_task = ((int)now.readyQueue[ Index(((int)((P0 *)_this)->_3_1_1_prio), 4) ].tasks[0]);
#ifdef VAR_RANGES
		logval("Process1:top_task", ((int)((P0 *)_this)->_3_1_1_top_task));
#endif
		;
		/* merge: found = 1(17, 10, 17) */
		reached[0][10] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->_3_1_1_found);
		((P0 *)_this)->_3_1_1_found = 1;
#ifdef VAR_RANGES
		logval("Process1:found", ((int)((P0 *)_this)->_3_1_1_found));
#endif
		;
		/* merge: .(goto)(0, 14, 17) */
		reached[0][14] = 1;
		;
		/* merge: .(goto)(0, 18, 17) */
		reached[0][18] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 70: // STATE 12 - control.pml:130 - [prio = (prio+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][12] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->_3_1_1_prio);
		((P0 *)_this)->_3_1_1_prio = (((int)((P0 *)_this)->_3_1_1_prio)+1);
#ifdef VAR_RANGES
		logval("Process1:prio", ((int)((P0 *)_this)->_3_1_1_prio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 71: // STATE 15 - control.pml:132 - [(((prio>=4)||found))] (73:0:3 - 1)
		IfNotBlocked
		reached[0][15] = 1;
		if (!(((((int)((P0 *)_this)->_3_1_1_prio)>=4)||((int)((P0 *)_this)->_3_1_1_found))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _3_1_1_prio */  (trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->_3_1_1_prio;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->_3_1_1_prio = 0;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _3_1_1_found */  (trpt+1)->bup.ovals[1] = ((P0 *)_this)->_3_1_1_found;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->_3_1_1_found = 0;
		/* merge: goto :b1(73, 16, 73) */
		reached[0][16] = 1;
		;
		/* merge: EP = top_task(73, 20, 73) */
		reached[0][20] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.EP);
		now.EP = ((int)((P0 *)_this)->_3_1_1_top_task);
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: .(goto)(73, 23, 73) */
		reached[0][23] = 1;
		;
		/* merge: .(goto)(0, 74, 73) */
		reached[0][74] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 72: // STATE 20 - control.pml:136 - [EP = top_task] (0:73:1 - 3)
		IfNotBlocked
		reached[0][20] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = ((int)((P0 *)_this)->_3_1_1_top_task);
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: .(goto)(73, 23, 73) */
		reached[0][23] = 1;
		;
		/* merge: .(goto)(0, 74, 73) */
		reached[0][74] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 73: // STATE 25 - control.pml:153 - [((EP==1))] (46:0:0 - 1)
		IfNotBlocked
		reached[0][25] = 1;
		if (!((((int)now.EP)==1)))
			continue;
		/* merge: assert((EP==1))(0, 26, 46) */
		reached[0][26] = 1;
		spin_assert((((int)now.EP)==1), "(EP==1)", II, tt, t);
		_m = 3; goto P999; /* 1 */
	case 74: // STATE 27 - control.pml:153 - [(1)] (73:0:0 - 1)
		IfNotBlocked
		reached[0][27] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(73, 47, 73) */
		reached[0][47] = 1;
		;
		/* merge: .(goto)(0, 74, 73) */
		reached[0][74] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 75: // STATE 47 - control.pml:153 - [.(goto)] (0:73:0 - 2)
		IfNotBlocked
		reached[0][47] = 1;
		;
		/* merge: .(goto)(0, 74, 73) */
		reached[0][74] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 76: // STATE 28 - control.pml:117 - [prio = 0] (0:41:3 - 1)
		IfNotBlocked
		reached[0][28] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->_3_2_2_prio);
		((P0 *)_this)->_3_2_2_prio = 0;
#ifdef VAR_RANGES
		logval("Process1:prio", ((int)((P0 *)_this)->_3_2_2_prio));
#endif
		;
		/* merge: top_task = 0(41, 29, 41) */
		reached[0][29] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->_3_2_2_top_task);
		((P0 *)_this)->_3_2_2_top_task = 0;
#ifdef VAR_RANGES
		logval("Process1:top_task", ((int)((P0 *)_this)->_3_2_2_top_task));
#endif
		;
		/* merge: found = 0(41, 30, 41) */
		reached[0][30] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P0 *)_this)->_3_2_2_found);
		((P0 *)_this)->_3_2_2_found = 0;
#ifdef VAR_RANGES
		logval("Process1:found", ((int)((P0 *)_this)->_3_2_2_found));
#endif
		;
		/* merge: .(goto)(0, 42, 41) */
		reached[0][42] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 77: // STATE 31 - control.pml:122 - [(((prio<4)&&!(found)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][31] = 1;
		if (!(((((int)((P0 *)_this)->_3_2_2_prio)<4)&& !(((int)((P0 *)_this)->_3_2_2_found)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 78: // STATE 32 - control.pml:124 - [((readyQueue[prio].tailIndex>0))] (41:0:2 - 1)
		IfNotBlocked
		reached[0][32] = 1;
		if (!((((int)now.readyQueue[ Index(((int)((P0 *)_this)->_3_2_2_prio), 4) ].tailIndex)>0)))
			continue;
		/* merge: top_task = readyQueue[prio].tasks[0](41, 33, 41) */
		reached[0][33] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->_3_2_2_top_task);
		((P0 *)_this)->_3_2_2_top_task = ((int)now.readyQueue[ Index(((int)((P0 *)_this)->_3_2_2_prio), 4) ].tasks[0]);
#ifdef VAR_RANGES
		logval("Process1:top_task", ((int)((P0 *)_this)->_3_2_2_top_task));
#endif
		;
		/* merge: found = 1(41, 34, 41) */
		reached[0][34] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->_3_2_2_found);
		((P0 *)_this)->_3_2_2_found = 1;
#ifdef VAR_RANGES
		logval("Process1:found", ((int)((P0 *)_this)->_3_2_2_found));
#endif
		;
		/* merge: .(goto)(0, 38, 41) */
		reached[0][38] = 1;
		;
		/* merge: .(goto)(0, 42, 41) */
		reached[0][42] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 79: // STATE 36 - control.pml:130 - [prio = (prio+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][36] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->_3_2_2_prio);
		((P0 *)_this)->_3_2_2_prio = (((int)((P0 *)_this)->_3_2_2_prio)+1);
#ifdef VAR_RANGES
		logval("Process1:prio", ((int)((P0 *)_this)->_3_2_2_prio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 80: // STATE 39 - control.pml:132 - [(((prio>=4)||found))] (73:0:3 - 1)
		IfNotBlocked
		reached[0][39] = 1;
		if (!(((((int)((P0 *)_this)->_3_2_2_prio)>=4)||((int)((P0 *)_this)->_3_2_2_found))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _3_2_2_prio */  (trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->_3_2_2_prio;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->_3_2_2_prio = 0;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _3_2_2_found */  (trpt+1)->bup.ovals[1] = ((P0 *)_this)->_3_2_2_found;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->_3_2_2_found = 0;
		/* merge: goto :b2(73, 40, 73) */
		reached[0][40] = 1;
		;
		/* merge: EP = top_task(73, 44, 73) */
		reached[0][44] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.EP);
		now.EP = ((int)((P0 *)_this)->_3_2_2_top_task);
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: .(goto)(73, 47, 73) */
		reached[0][47] = 1;
		;
		/* merge: .(goto)(0, 74, 73) */
		reached[0][74] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 81: // STATE 44 - control.pml:136 - [EP = top_task] (0:73:1 - 3)
		IfNotBlocked
		reached[0][44] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = ((int)((P0 *)_this)->_3_2_2_top_task);
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: .(goto)(73, 47, 73) */
		reached[0][47] = 1;
		;
		/* merge: .(goto)(0, 74, 73) */
		reached[0][74] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 82: // STATE 49 - control.pml:154 - [((EP==1))] (70:0:1 - 1)
		IfNotBlocked
		reached[0][49] = 1;
		if (!((((int)now.EP)==1)))
			continue;
		/* merge: EP = 2(0, 50, 70) */
		reached[0][50] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 83: // STATE 51 - control.pml:154 - [(1)] (73:0:0 - 1)
		IfNotBlocked
		reached[0][51] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(73, 71, 73) */
		reached[0][71] = 1;
		;
		/* merge: .(goto)(0, 74, 73) */
		reached[0][74] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 84: // STATE 71 - control.pml:154 - [.(goto)] (0:73:0 - 2)
		IfNotBlocked
		reached[0][71] = 1;
		;
		/* merge: .(goto)(0, 74, 73) */
		reached[0][74] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 85: // STATE 52 - control.pml:117 - [prio = 0] (0:65:3 - 1)
		IfNotBlocked
		reached[0][52] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->_3_3_3_prio);
		((P0 *)_this)->_3_3_3_prio = 0;
#ifdef VAR_RANGES
		logval("Process1:prio", ((int)((P0 *)_this)->_3_3_3_prio));
#endif
		;
		/* merge: top_task = 0(65, 53, 65) */
		reached[0][53] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->_3_3_3_top_task);
		((P0 *)_this)->_3_3_3_top_task = 0;
#ifdef VAR_RANGES
		logval("Process1:top_task", ((int)((P0 *)_this)->_3_3_3_top_task));
#endif
		;
		/* merge: found = 0(65, 54, 65) */
		reached[0][54] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P0 *)_this)->_3_3_3_found);
		((P0 *)_this)->_3_3_3_found = 0;
#ifdef VAR_RANGES
		logval("Process1:found", ((int)((P0 *)_this)->_3_3_3_found));
#endif
		;
		/* merge: .(goto)(0, 66, 65) */
		reached[0][66] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 86: // STATE 55 - control.pml:122 - [(((prio<4)&&!(found)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][55] = 1;
		if (!(((((int)((P0 *)_this)->_3_3_3_prio)<4)&& !(((int)((P0 *)_this)->_3_3_3_found)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 87: // STATE 56 - control.pml:124 - [((readyQueue[prio].tailIndex>0))] (65:0:2 - 1)
		IfNotBlocked
		reached[0][56] = 1;
		if (!((((int)now.readyQueue[ Index(((int)((P0 *)_this)->_3_3_3_prio), 4) ].tailIndex)>0)))
			continue;
		/* merge: top_task = readyQueue[prio].tasks[0](65, 57, 65) */
		reached[0][57] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->_3_3_3_top_task);
		((P0 *)_this)->_3_3_3_top_task = ((int)now.readyQueue[ Index(((int)((P0 *)_this)->_3_3_3_prio), 4) ].tasks[0]);
#ifdef VAR_RANGES
		logval("Process1:top_task", ((int)((P0 *)_this)->_3_3_3_top_task));
#endif
		;
		/* merge: found = 1(65, 58, 65) */
		reached[0][58] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->_3_3_3_found);
		((P0 *)_this)->_3_3_3_found = 1;
#ifdef VAR_RANGES
		logval("Process1:found", ((int)((P0 *)_this)->_3_3_3_found));
#endif
		;
		/* merge: .(goto)(0, 62, 65) */
		reached[0][62] = 1;
		;
		/* merge: .(goto)(0, 66, 65) */
		reached[0][66] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 88: // STATE 60 - control.pml:130 - [prio = (prio+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][60] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->_3_3_3_prio);
		((P0 *)_this)->_3_3_3_prio = (((int)((P0 *)_this)->_3_3_3_prio)+1);
#ifdef VAR_RANGES
		logval("Process1:prio", ((int)((P0 *)_this)->_3_3_3_prio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 89: // STATE 63 - control.pml:132 - [(((prio>=4)||found))] (73:0:3 - 1)
		IfNotBlocked
		reached[0][63] = 1;
		if (!(((((int)((P0 *)_this)->_3_3_3_prio)>=4)||((int)((P0 *)_this)->_3_3_3_found))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _3_3_3_prio */  (trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->_3_3_3_prio;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->_3_3_3_prio = 0;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _3_3_3_found */  (trpt+1)->bup.ovals[1] = ((P0 *)_this)->_3_3_3_found;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->_3_3_3_found = 0;
		/* merge: goto :b3(73, 64, 73) */
		reached[0][64] = 1;
		;
		/* merge: EP = top_task(73, 68, 73) */
		reached[0][68] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.EP);
		now.EP = ((int)((P0 *)_this)->_3_3_3_top_task);
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: .(goto)(73, 71, 73) */
		reached[0][71] = 1;
		;
		/* merge: .(goto)(0, 74, 73) */
		reached[0][74] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 90: // STATE 68 - control.pml:136 - [EP = top_task] (0:73:1 - 3)
		IfNotBlocked
		reached[0][68] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = ((int)((P0 *)_this)->_3_3_3_top_task);
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: .(goto)(73, 71, 73) */
		reached[0][71] = 1;
		;
		/* merge: .(goto)(0, 74, 73) */
		reached[0][74] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 91: // STATE 76 - control.pml:156 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][76] = 1;
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

