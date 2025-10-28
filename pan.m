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

		 /* CLAIM delayed_not_in_ready_queue */
	case 3: // STATE 1 - _spin_nvr.tmp:399 - [(!((!((tcb[2].state==2))||(readyQueue[tcb[2].prio].tasks[0]!=2))))] (6:0:0 - 1)
		
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
		reached[16][1] = 1;
		if (!( !(( !((((int)now.tcb[2].state)==2))||(((int)now.readyQueue[ Index(((int)now.tcb[2].prio), 4) ].tasks[0])!=2)))))
			continue;
		/* merge: assert(!(!((!((tcb[2].state==2))||(readyQueue[tcb[2].prio].tasks[0]!=2)))))(0, 2, 6) */
		reached[16][2] = 1;
		spin_assert( !( !(( !((((int)now.tcb[2].state)==2))||(((int)now.readyQueue[ Index(((int)now.tcb[2].prio), 4) ].tasks[0])!=2)))), " !( !(( !((tcb[2].state==2))||(readyQueue[tcb[2].prio].tasks[0]!=2))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[16][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 4: // STATE 10 - _spin_nvr.tmp:404 - [-end-] (0:0:0 - 1)
		
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
		reached[16][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM tick_monotonic */
	case 5: // STATE 1 - _spin_nvr.tmp:390 - [(!((g_tickCount<255)))] (6:0:0 - 1)
		
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
		reached[15][1] = 1;
		if (!( !((((int)now.g_tickCount)<255))))
			continue;
		/* merge: assert(!(!((g_tickCount<255))))(0, 2, 6) */
		reached[15][2] = 1;
		spin_assert( !( !((((int)now.g_tickCount)<255))), " !( !((g_tickCount<255)))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[15][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 6: // STATE 10 - _spin_nvr.tmp:395 - [-end-] (0:0:0 - 1)
		
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
		reached[15][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM delayed_become_ready */
	case 7: // STATE 1 - _spin_nvr.tmp:379 - [((!(!((tcb[2].state==2)))&&!((tcb[2].state==1))))] (0:0:0 - 1)
		
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
		reached[14][1] = 1;
		if (!(( !( !((((int)now.tcb[2].state)==2)))&& !((((int)now.tcb[2].state)==1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 8 - _spin_nvr.tmp:384 - [(!((tcb[2].state==1)))] (0:0:0 - 1)
		
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
		reached[14][8] = 1;
		if (!( !((((int)now.tcb[2].state)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 13 - _spin_nvr.tmp:386 - [-end-] (0:0:0 - 1)
		
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
		reached[14][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM smoke_P1_user_no_pending */
	case 10: // STATE 1 - _spin_nvr.tmp:370 - [(!(!((((EP==2)&&(pending_exp==0))&&(chain_tick_used==1)))))] (6:0:0 - 1)
		
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
		reached[13][1] = 1;
		if (!( !( !((((((int)now.EP)==2)&&(((int)now.pending_exp)==0))&&(((int)now.chain_tick_used)==1))))))
			continue;
		/* merge: assert(!(!(!((((EP==2)&&(pending_exp==0))&&(chain_tick_used==1))))))(0, 2, 6) */
		reached[13][2] = 1;
		spin_assert( !( !( !((((((int)now.EP)==2)&&(((int)now.pending_exp)==0))&&(((int)now.chain_tick_used)==1))))), " !( !( !((((EP==2)&&(pending_exp==0))&&(chain_tick_used==1)))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[13][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 11: // STATE 10 - _spin_nvr.tmp:375 - [-end-] (0:0:0 - 1)
		
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
		reached[13][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM smoke_P2_user_no_pending */
	case 12: // STATE 1 - _spin_nvr.tmp:361 - [(!(!((((EP==(2+1))&&(pending_exp==0))&&(chain_tick_used==1)))))] (6:0:0 - 1)
		
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
		reached[12][1] = 1;
		if (!( !( !((((((int)now.EP)==(2+1))&&(((int)now.pending_exp)==0))&&(((int)now.chain_tick_used)==1))))))
			continue;
		/* merge: assert(!(!(!((((EP==(2+1))&&(pending_exp==0))&&(chain_tick_used==1))))))(0, 2, 6) */
		reached[12][2] = 1;
		spin_assert( !( !( !((((((int)now.EP)==(2+1))&&(((int)now.pending_exp)==0))&&(((int)now.chain_tick_used)==1))))), " !( !( !((((EP==(2+1))&&(pending_exp==0))&&(chain_tick_used==1)))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[12][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 13: // STATE 10 - _spin_nvr.tmp:366 - [-end-] (0:0:0 - 1)
		
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
		reached[12][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM p2_double_context_switch */
	case 14: // STATE 1 - _spin_nvr.tmp:289 - [((((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==3)))&&((EP==3)&&(((pending_exp>>1)&1)==1)))&&(EP==3)))] (20:0:0 - 1)
		
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
		reached[11][1] = 1;
		if (!((((((((((int)now.EP)==0)&&(((int)now.EP_Stack)==2))&&((((int)now.EP)==0)&&(((int)now.EP_Stack)==3)))&&((((int)now.EP)==1)&&(((int)now.EP_Stack)==2)))&&((((int)now.EP)==1)&&(((int)now.EP_Stack)==3)))&&((((int)now.EP)==3)&&(((((int)now.pending_exp)>>1)&1)==1)))&&(((int)now.EP)==3))))
			continue;
		/* merge: assert(!((((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==3)))&&((EP==3)&&(((pending_exp>>1)&1)==1)))&&(EP==3))))(0, 2, 20) */
		reached[11][2] = 1;
		spin_assert( !((((((((((int)now.EP)==0)&&(((int)now.EP_Stack)==2))&&((((int)now.EP)==0)&&(((int)now.EP_Stack)==3)))&&((((int)now.EP)==1)&&(((int)now.EP_Stack)==2)))&&((((int)now.EP)==1)&&(((int)now.EP_Stack)==3)))&&((((int)now.EP)==3)&&(((((int)now.pending_exp)>>1)&1)==1)))&&(((int)now.EP)==3))), " !((((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==3)))&&((EP==3)&&(((pending_exp>>1)&1)==1)))&&(EP==3)))", II, tt, t);
		/* merge: .(goto)(0, 21, 20) */
		reached[11][21] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 15: // STATE 4 - _spin_nvr.tmp:290 - [(((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==3)))&&((EP==3)&&(((pending_exp>>1)&1)==1))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported4 = 0;
			if (verbose && !reported4)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported4 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported4 = 0;
			if (verbose && !reported4)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported4 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][4] = 1;
		if (!(((((((((int)now.EP)==0)&&(((int)now.EP_Stack)==2))&&((((int)now.EP)==0)&&(((int)now.EP_Stack)==3)))&&((((int)now.EP)==1)&&(((int)now.EP_Stack)==2)))&&((((int)now.EP)==1)&&(((int)now.EP_Stack)==3)))&&((((int)now.EP)==3)&&(((((int)now.pending_exp)>>1)&1)==1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 6 - _spin_nvr.tmp:291 - [(((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==3)))&&((EP==3)&&(((pending_exp>>1)&1)==1))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported6 = 0;
			if (verbose && !reported6)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported6 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported6 = 0;
			if (verbose && !reported6)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported6 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][6] = 1;
		if (!(((((((((int)now.EP)==0)&&(((int)now.EP_Stack)==2))&&((((int)now.EP)==0)&&(((int)now.EP_Stack)==3)))&&((((int)now.EP)==1)&&(((int)now.EP_Stack)==2)))&&((((int)now.EP)==1)&&(((int)now.EP_Stack)==3)))&&((((int)now.EP)==3)&&(((((int)now.pending_exp)>>1)&1)==1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 8 - _spin_nvr.tmp:292 - [(((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==3)))&&((EP==3)&&(((pending_exp>>1)&1)==1))))] (0:0:0 - 1)
		
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
		reached[11][8] = 1;
		if (!(((((((((int)now.EP)==0)&&(((int)now.EP_Stack)==2))&&((((int)now.EP)==0)&&(((int)now.EP_Stack)==3)))&&((((int)now.EP)==1)&&(((int)now.EP_Stack)==2)))&&((((int)now.EP)==1)&&(((int)now.EP_Stack)==3)))&&((((int)now.EP)==3)&&(((((int)now.pending_exp)>>1)&1)==1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 10 - _spin_nvr.tmp:293 - [((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==3)))&&((EP==3)&&(((pending_exp>>1)&1)==1))))] (0:0:0 - 1)
		
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
		reached[11][10] = 1;
		if (!((((((((int)now.EP)==0)&&(((int)now.EP_Stack)==2))&&((((int)now.EP)==0)&&(((int)now.EP_Stack)==3)))&&((((int)now.EP)==1)&&(((int)now.EP_Stack)==3)))&&((((int)now.EP)==3)&&(((((int)now.pending_exp)>>1)&1)==1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 12 - _spin_nvr.tmp:294 - [(((((EP==0)&&(EP_Stack==3))&&((EP==1)&&(EP_Stack==3)))&&((EP==3)&&(((pending_exp>>1)&1)==1))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported12 = 0;
			if (verbose && !reported12)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported12 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported12 = 0;
			if (verbose && !reported12)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported12 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][12] = 1;
		if (!(((((((int)now.EP)==0)&&(((int)now.EP_Stack)==3))&&((((int)now.EP)==1)&&(((int)now.EP_Stack)==3)))&&((((int)now.EP)==3)&&(((((int)now.pending_exp)>>1)&1)==1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 14 - _spin_nvr.tmp:295 - [((((EP==1)&&(EP_Stack==3))&&((EP==3)&&(((pending_exp>>1)&1)==1))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported14 = 0;
			if (verbose && !reported14)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported14 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported14 = 0;
			if (verbose && !reported14)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported14 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][14] = 1;
		if (!((((((int)now.EP)==1)&&(((int)now.EP_Stack)==3))&&((((int)now.EP)==3)&&(((((int)now.pending_exp)>>1)&1)==1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 16 - _spin_nvr.tmp:296 - [(((EP==3)&&(((pending_exp>>1)&1)==1)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported16 = 0;
			if (verbose && !reported16)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported16 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported16 = 0;
			if (verbose && !reported16)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported16 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][16] = 1;
		if (!(((((int)now.EP)==3)&&(((((int)now.pending_exp)>>1)&1)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 23 - _spin_nvr.tmp:301 - [((EP==3))] (28:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported23 = 0;
			if (verbose && !reported23)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported23 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported23 = 0;
			if (verbose && !reported23)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported23 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][23] = 1;
		if (!((((int)now.EP)==3)))
			continue;
		/* merge: assert(!((EP==3)))(0, 24, 28) */
		reached[11][24] = 1;
		spin_assert( !((((int)now.EP)==3)), " !((EP==3))", II, tt, t);
		/* merge: .(goto)(0, 29, 28) */
		reached[11][29] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 23: // STATE 26 - _spin_nvr.tmp:302 - [(((EP==0)&&(EP_Stack==3)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported26 = 0;
			if (verbose && !reported26)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported26 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported26 = 0;
			if (verbose && !reported26)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported26 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][26] = 1;
		if (!(((((int)now.EP)==0)&&(((int)now.EP_Stack)==3))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 31 - _spin_nvr.tmp:306 - [((((EP==0)&&(EP_Stack==3))&&(EP==3)))] (38:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported31 = 0;
			if (verbose && !reported31)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported31 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported31 = 0;
			if (verbose && !reported31)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported31 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][31] = 1;
		if (!((((((int)now.EP)==0)&&(((int)now.EP_Stack)==3))&&(((int)now.EP)==3))))
			continue;
		/* merge: assert(!((((EP==0)&&(EP_Stack==3))&&(EP==3))))(0, 32, 38) */
		reached[11][32] = 1;
		spin_assert( !((((((int)now.EP)==0)&&(((int)now.EP_Stack)==3))&&(((int)now.EP)==3))), " !((((EP==0)&&(EP_Stack==3))&&(EP==3)))", II, tt, t);
		/* merge: .(goto)(0, 39, 38) */
		reached[11][39] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 25: // STATE 34 - _spin_nvr.tmp:307 - [(((EP==0)&&(EP_Stack==3)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported34 = 0;
			if (verbose && !reported34)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported34 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported34 = 0;
			if (verbose && !reported34)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported34 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][34] = 1;
		if (!(((((int)now.EP)==0)&&(((int)now.EP_Stack)==3))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 36 - _spin_nvr.tmp:308 - [(((EP==0)&&(EP_Stack==2)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported36 = 0;
			if (verbose && !reported36)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported36 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported36 = 0;
			if (verbose && !reported36)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported36 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][36] = 1;
		if (!(((((int)now.EP)==0)&&(((int)now.EP_Stack)==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 41 - _spin_nvr.tmp:312 - [(((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&(EP==3)))] (50:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported41 = 0;
			if (verbose && !reported41)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported41 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported41 = 0;
			if (verbose && !reported41)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported41 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][41] = 1;
		if (!(((((((int)now.EP)==0)&&(((int)now.EP_Stack)==2))&&((((int)now.EP)==0)&&(((int)now.EP_Stack)==3)))&&(((int)now.EP)==3))))
			continue;
		/* merge: assert(!(((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&(EP==3))))(0, 42, 50) */
		reached[11][42] = 1;
		spin_assert( !(((((((int)now.EP)==0)&&(((int)now.EP_Stack)==2))&&((((int)now.EP)==0)&&(((int)now.EP_Stack)==3)))&&(((int)now.EP)==3))), " !(((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&(EP==3)))", II, tt, t);
		/* merge: .(goto)(0, 51, 50) */
		reached[11][51] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 28: // STATE 44 - _spin_nvr.tmp:313 - [((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported44 = 0;
			if (verbose && !reported44)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported44 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported44 = 0;
			if (verbose && !reported44)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported44 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][44] = 1;
		if (!((((((int)now.EP)==0)&&(((int)now.EP_Stack)==2))&&((((int)now.EP)==0)&&(((int)now.EP_Stack)==3)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 46 - _spin_nvr.tmp:314 - [(((EP==0)&&(EP_Stack==2)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported46 = 0;
			if (verbose && !reported46)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported46 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported46 = 0;
			if (verbose && !reported46)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported46 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][46] = 1;
		if (!(((((int)now.EP)==0)&&(((int)now.EP_Stack)==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 30: // STATE 48 - _spin_nvr.tmp:315 - [(((EP==1)&&(EP_Stack==2)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported48 = 0;
			if (verbose && !reported48)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported48 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported48 = 0;
			if (verbose && !reported48)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported48 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][48] = 1;
		if (!(((((int)now.EP)==1)&&(((int)now.EP_Stack)==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 53 - _spin_nvr.tmp:319 - [((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2)))&&(EP==3)))] (64:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported53 = 0;
			if (verbose && !reported53)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported53 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported53 = 0;
			if (verbose && !reported53)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported53 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][53] = 1;
		if (!((((((((int)now.EP)==0)&&(((int)now.EP_Stack)==2))&&((((int)now.EP)==0)&&(((int)now.EP_Stack)==3)))&&((((int)now.EP)==1)&&(((int)now.EP_Stack)==2)))&&(((int)now.EP)==3))))
			continue;
		/* merge: assert(!((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2)))&&(EP==3))))(0, 54, 64) */
		reached[11][54] = 1;
		spin_assert( !((((((((int)now.EP)==0)&&(((int)now.EP_Stack)==2))&&((((int)now.EP)==0)&&(((int)now.EP_Stack)==3)))&&((((int)now.EP)==1)&&(((int)now.EP_Stack)==2)))&&(((int)now.EP)==3))), " !((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2)))&&(EP==3)))", II, tt, t);
		/* merge: .(goto)(0, 65, 64) */
		reached[11][65] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 32: // STATE 56 - _spin_nvr.tmp:320 - [(((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported56 = 0;
			if (verbose && !reported56)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported56 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported56 = 0;
			if (verbose && !reported56)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported56 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][56] = 1;
		if (!(((((((int)now.EP)==0)&&(((int)now.EP_Stack)==2))&&((((int)now.EP)==0)&&(((int)now.EP_Stack)==3)))&&((((int)now.EP)==1)&&(((int)now.EP_Stack)==2)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 33: // STATE 58 - _spin_nvr.tmp:321 - [((((EP==0)&&(EP_Stack==2))&&((EP==1)&&(EP_Stack==2))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported58 = 0;
			if (verbose && !reported58)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported58 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported58 = 0;
			if (verbose && !reported58)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported58 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][58] = 1;
		if (!((((((int)now.EP)==0)&&(((int)now.EP_Stack)==2))&&((((int)now.EP)==1)&&(((int)now.EP_Stack)==2)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 60 - _spin_nvr.tmp:322 - [(((EP==1)&&(EP_Stack==2)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported60 = 0;
			if (verbose && !reported60)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported60 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported60 = 0;
			if (verbose && !reported60)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported60 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][60] = 1;
		if (!(((((int)now.EP)==1)&&(((int)now.EP_Stack)==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 62 - _spin_nvr.tmp:323 - [(((EP==0)&&(EP_Stack==2)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported62 = 0;
			if (verbose && !reported62)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported62 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported62 = 0;
			if (verbose && !reported62)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported62 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][62] = 1;
		if (!(((((int)now.EP)==0)&&(((int)now.EP_Stack)==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 36: // STATE 67 - _spin_nvr.tmp:327 - [((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2)))&&(EP==3)))] (80:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported67 = 0;
			if (verbose && !reported67)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported67 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported67 = 0;
			if (verbose && !reported67)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported67 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][67] = 1;
		if (!((((((((int)now.EP)==0)&&(((int)now.EP_Stack)==2))&&((((int)now.EP)==0)&&(((int)now.EP_Stack)==3)))&&((((int)now.EP)==1)&&(((int)now.EP_Stack)==2)))&&(((int)now.EP)==3))))
			continue;
		/* merge: assert(!((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2)))&&(EP==3))))(0, 68, 80) */
		reached[11][68] = 1;
		spin_assert( !((((((((int)now.EP)==0)&&(((int)now.EP_Stack)==2))&&((((int)now.EP)==0)&&(((int)now.EP_Stack)==3)))&&((((int)now.EP)==1)&&(((int)now.EP_Stack)==2)))&&(((int)now.EP)==3))), " !((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2)))&&(EP==3)))", II, tt, t);
		/* merge: .(goto)(0, 81, 80) */
		reached[11][81] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 37: // STATE 70 - _spin_nvr.tmp:328 - [(((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported70 = 0;
			if (verbose && !reported70)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported70 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported70 = 0;
			if (verbose && !reported70)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported70 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][70] = 1;
		if (!(((((((int)now.EP)==0)&&(((int)now.EP_Stack)==2))&&((((int)now.EP)==0)&&(((int)now.EP_Stack)==3)))&&((((int)now.EP)==1)&&(((int)now.EP_Stack)==2)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 38: // STATE 72 - _spin_nvr.tmp:329 - [((((EP==0)&&(EP_Stack==2))&&((EP==1)&&(EP_Stack==2))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported72 = 0;
			if (verbose && !reported72)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported72 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported72 = 0;
			if (verbose && !reported72)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported72 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][72] = 1;
		if (!((((((int)now.EP)==0)&&(((int)now.EP_Stack)==2))&&((((int)now.EP)==1)&&(((int)now.EP_Stack)==2)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 39: // STATE 74 - _spin_nvr.tmp:330 - [((((EP==0)&&(EP_Stack==2))&&((EP==1)&&(EP_Stack==2))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported74 = 0;
			if (verbose && !reported74)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported74 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported74 = 0;
			if (verbose && !reported74)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported74 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][74] = 1;
		if (!((((((int)now.EP)==0)&&(((int)now.EP_Stack)==2))&&((((int)now.EP)==1)&&(((int)now.EP_Stack)==2)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 40: // STATE 76 - _spin_nvr.tmp:331 - [(((EP==0)&&(EP_Stack==2)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported76 = 0;
			if (verbose && !reported76)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported76 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported76 = 0;
			if (verbose && !reported76)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported76 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][76] = 1;
		if (!(((((int)now.EP)==0)&&(((int)now.EP_Stack)==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 41: // STATE 78 - _spin_nvr.tmp:332 - [(((EP==0)&&(EP_Stack==3)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported78 = 0;
			if (verbose && !reported78)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported78 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported78 = 0;
			if (verbose && !reported78)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported78 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][78] = 1;
		if (!(((((int)now.EP)==0)&&(((int)now.EP_Stack)==3))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 42: // STATE 83 - _spin_nvr.tmp:336 - [((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2)))&&(EP==3)))] (98:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported83 = 0;
			if (verbose && !reported83)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported83 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported83 = 0;
			if (verbose && !reported83)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported83 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][83] = 1;
		if (!((((((((int)now.EP)==0)&&(((int)now.EP_Stack)==2))&&((((int)now.EP)==0)&&(((int)now.EP_Stack)==3)))&&((((int)now.EP)==1)&&(((int)now.EP_Stack)==2)))&&(((int)now.EP)==3))))
			continue;
		/* merge: assert(!((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2)))&&(EP==3))))(0, 84, 98) */
		reached[11][84] = 1;
		spin_assert( !((((((((int)now.EP)==0)&&(((int)now.EP_Stack)==2))&&((((int)now.EP)==0)&&(((int)now.EP_Stack)==3)))&&((((int)now.EP)==1)&&(((int)now.EP_Stack)==2)))&&(((int)now.EP)==3))), " !((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2)))&&(EP==3)))", II, tt, t);
		/* merge: .(goto)(0, 99, 98) */
		reached[11][99] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 43: // STATE 86 - _spin_nvr.tmp:337 - [(((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported86 = 0;
			if (verbose && !reported86)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported86 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported86 = 0;
			if (verbose && !reported86)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported86 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][86] = 1;
		if (!(((((((int)now.EP)==0)&&(((int)now.EP_Stack)==2))&&((((int)now.EP)==0)&&(((int)now.EP_Stack)==3)))&&((((int)now.EP)==1)&&(((int)now.EP_Stack)==2)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 44: // STATE 88 - _spin_nvr.tmp:338 - [(((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported88 = 0;
			if (verbose && !reported88)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported88 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported88 = 0;
			if (verbose && !reported88)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported88 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][88] = 1;
		if (!(((((((int)now.EP)==0)&&(((int)now.EP_Stack)==2))&&((((int)now.EP)==0)&&(((int)now.EP_Stack)==3)))&&((((int)now.EP)==1)&&(((int)now.EP_Stack)==2)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 45: // STATE 90 - _spin_nvr.tmp:339 - [(((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported90 = 0;
			if (verbose && !reported90)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported90 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported90 = 0;
			if (verbose && !reported90)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported90 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][90] = 1;
		if (!(((((((int)now.EP)==0)&&(((int)now.EP_Stack)==2))&&((((int)now.EP)==0)&&(((int)now.EP_Stack)==3)))&&((((int)now.EP)==1)&&(((int)now.EP_Stack)==2)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 46: // STATE 92 - _spin_nvr.tmp:340 - [((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported92 = 0;
			if (verbose && !reported92)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported92 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported92 = 0;
			if (verbose && !reported92)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported92 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][92] = 1;
		if (!((((((int)now.EP)==0)&&(((int)now.EP_Stack)==2))&&((((int)now.EP)==0)&&(((int)now.EP_Stack)==3)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 47: // STATE 94 - _spin_nvr.tmp:341 - [(((EP==0)&&(EP_Stack==3)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported94 = 0;
			if (verbose && !reported94)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported94 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported94 = 0;
			if (verbose && !reported94)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported94 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][94] = 1;
		if (!(((((int)now.EP)==0)&&(((int)now.EP_Stack)==3))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 48: // STATE 96 - _spin_nvr.tmp:342 - [(((EP==1)&&(EP_Stack==3)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported96 = 0;
			if (verbose && !reported96)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported96 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported96 = 0;
			if (verbose && !reported96)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported96 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][96] = 1;
		if (!(((((int)now.EP)==1)&&(((int)now.EP_Stack)==3))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 49: // STATE 101 - _spin_nvr.tmp:346 - [(((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==3)))&&(EP==3)))] (118:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported101 = 0;
			if (verbose && !reported101)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported101 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported101 = 0;
			if (verbose && !reported101)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported101 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][101] = 1;
		if (!(((((((((int)now.EP)==0)&&(((int)now.EP_Stack)==2))&&((((int)now.EP)==0)&&(((int)now.EP_Stack)==3)))&&((((int)now.EP)==1)&&(((int)now.EP_Stack)==2)))&&((((int)now.EP)==1)&&(((int)now.EP_Stack)==3)))&&(((int)now.EP)==3))))
			continue;
		/* merge: assert(!(((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==3)))&&(EP==3))))(0, 102, 118) */
		reached[11][102] = 1;
		spin_assert( !(((((((((int)now.EP)==0)&&(((int)now.EP_Stack)==2))&&((((int)now.EP)==0)&&(((int)now.EP_Stack)==3)))&&((((int)now.EP)==1)&&(((int)now.EP_Stack)==2)))&&((((int)now.EP)==1)&&(((int)now.EP_Stack)==3)))&&(((int)now.EP)==3))), " !(((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==3)))&&(EP==3)))", II, tt, t);
		/* merge: .(goto)(0, 119, 118) */
		reached[11][119] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 50: // STATE 104 - _spin_nvr.tmp:347 - [((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==3))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported104 = 0;
			if (verbose && !reported104)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported104 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported104 = 0;
			if (verbose && !reported104)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported104 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][104] = 1;
		if (!((((((((int)now.EP)==0)&&(((int)now.EP_Stack)==2))&&((((int)now.EP)==0)&&(((int)now.EP_Stack)==3)))&&((((int)now.EP)==1)&&(((int)now.EP_Stack)==2)))&&((((int)now.EP)==1)&&(((int)now.EP_Stack)==3)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 51: // STATE 106 - _spin_nvr.tmp:348 - [((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==3))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported106 = 0;
			if (verbose && !reported106)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported106 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported106 = 0;
			if (verbose && !reported106)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported106 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][106] = 1;
		if (!((((((((int)now.EP)==0)&&(((int)now.EP_Stack)==2))&&((((int)now.EP)==0)&&(((int)now.EP_Stack)==3)))&&((((int)now.EP)==1)&&(((int)now.EP_Stack)==2)))&&((((int)now.EP)==1)&&(((int)now.EP_Stack)==3)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 52: // STATE 108 - _spin_nvr.tmp:349 - [((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==3))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported108 = 0;
			if (verbose && !reported108)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported108 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported108 = 0;
			if (verbose && !reported108)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported108 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][108] = 1;
		if (!((((((((int)now.EP)==0)&&(((int)now.EP_Stack)==2))&&((((int)now.EP)==0)&&(((int)now.EP_Stack)==3)))&&((((int)now.EP)==1)&&(((int)now.EP_Stack)==2)))&&((((int)now.EP)==1)&&(((int)now.EP_Stack)==3)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 53: // STATE 110 - _spin_nvr.tmp:350 - [(((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==3))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported110 = 0;
			if (verbose && !reported110)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported110 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported110 = 0;
			if (verbose && !reported110)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported110 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][110] = 1;
		if (!(((((((int)now.EP)==0)&&(((int)now.EP_Stack)==2))&&((((int)now.EP)==0)&&(((int)now.EP_Stack)==3)))&&((((int)now.EP)==1)&&(((int)now.EP_Stack)==3)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 54: // STATE 112 - _spin_nvr.tmp:351 - [((((EP==0)&&(EP_Stack==3))&&((EP==1)&&(EP_Stack==3))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported112 = 0;
			if (verbose && !reported112)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported112 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported112 = 0;
			if (verbose && !reported112)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported112 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][112] = 1;
		if (!((((((int)now.EP)==0)&&(((int)now.EP_Stack)==3))&&((((int)now.EP)==1)&&(((int)now.EP_Stack)==3)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 55: // STATE 114 - _spin_nvr.tmp:352 - [(((EP==1)&&(EP_Stack==3)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported114 = 0;
			if (verbose && !reported114)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported114 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported114 = 0;
			if (verbose && !reported114)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported114 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][114] = 1;
		if (!(((((int)now.EP)==1)&&(((int)now.EP_Stack)==3))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 56: // STATE 116 - _spin_nvr.tmp:353 - [(((EP==3)&&(((pending_exp>>1)&1)==1)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported116 = 0;
			if (verbose && !reported116)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported116 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported116 = 0;
			if (verbose && !reported116)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported116 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][116] = 1;
		if (!(((((int)now.EP)==3)&&(((((int)now.pending_exp)>>1)&1)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 57: // STATE 122 - _spin_nvr.tmp:357 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported122 = 0;
			if (verbose && !reported122)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported122 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported122 = 0;
			if (verbose && !reported122)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported122 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][122] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM P2_switching_not_P1_witness_unfolded */
	case 58: // STATE 1 - _spin_nvr.tmp:229 - [(((((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==(2+1))))&&((EP==1)&&(EP_Stack==2)))&&(EP==(2+1))))] (18:0:0 - 1)
		
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
		reached[10][1] = 1;
		if (!(((((((((int)now.EP)==0)&&(((int)now.EP_Stack)==(2+1)))&&((((int)now.EP)==0)&&(((int)now.EP_Stack)==2)))&&((((int)now.EP)==1)&&(((int)now.EP_Stack)==(2+1))))&&((((int)now.EP)==1)&&(((int)now.EP_Stack)==2)))&&(((int)now.EP)==(2+1)))))
			continue;
		/* merge: assert(!(((((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==(2+1))))&&((EP==1)&&(EP_Stack==2)))&&(EP==(2+1)))))(0, 2, 18) */
		reached[10][2] = 1;
		spin_assert( !(((((((((int)now.EP)==0)&&(((int)now.EP_Stack)==(2+1)))&&((((int)now.EP)==0)&&(((int)now.EP_Stack)==2)))&&((((int)now.EP)==1)&&(((int)now.EP_Stack)==(2+1))))&&((((int)now.EP)==1)&&(((int)now.EP_Stack)==2)))&&(((int)now.EP)==(2+1)))), " !(((((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==(2+1))))&&((EP==1)&&(EP_Stack==2)))&&(EP==(2+1))))", II, tt, t);
		/* merge: .(goto)(0, 19, 18) */
		reached[10][19] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 59: // STATE 4 - _spin_nvr.tmp:230 - [((((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==(2+1))))&&((EP==1)&&(EP_Stack==2))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported4 = 0;
			if (verbose && !reported4)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported4 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported4 = 0;
			if (verbose && !reported4)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported4 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[10][4] = 1;
		if (!((((((((int)now.EP)==0)&&(((int)now.EP_Stack)==(2+1)))&&((((int)now.EP)==0)&&(((int)now.EP_Stack)==2)))&&((((int)now.EP)==1)&&(((int)now.EP_Stack)==(2+1))))&&((((int)now.EP)==1)&&(((int)now.EP_Stack)==2)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 60: // STATE 6 - _spin_nvr.tmp:231 - [((((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==(2+1))))&&((EP==1)&&(EP_Stack==2))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported6 = 0;
			if (verbose && !reported6)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported6 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported6 = 0;
			if (verbose && !reported6)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported6 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[10][6] = 1;
		if (!((((((((int)now.EP)==0)&&(((int)now.EP_Stack)==(2+1)))&&((((int)now.EP)==0)&&(((int)now.EP_Stack)==2)))&&((((int)now.EP)==1)&&(((int)now.EP_Stack)==(2+1))))&&((((int)now.EP)==1)&&(((int)now.EP_Stack)==2)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 61: // STATE 8 - _spin_nvr.tmp:232 - [((((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==(2+1))))&&((EP==1)&&(EP_Stack==2))))] (0:0:0 - 1)
		
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
		reached[10][8] = 1;
		if (!((((((((int)now.EP)==0)&&(((int)now.EP_Stack)==(2+1)))&&((((int)now.EP)==0)&&(((int)now.EP_Stack)==2)))&&((((int)now.EP)==1)&&(((int)now.EP_Stack)==(2+1))))&&((((int)now.EP)==1)&&(((int)now.EP_Stack)==2)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 62: // STATE 10 - _spin_nvr.tmp:233 - [(((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==(2+1)))))] (0:0:0 - 1)
		
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
		reached[10][10] = 1;
		if (!(((((((int)now.EP)==0)&&(((int)now.EP_Stack)==(2+1)))&&((((int)now.EP)==0)&&(((int)now.EP_Stack)==2)))&&((((int)now.EP)==1)&&(((int)now.EP_Stack)==(2+1))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 63: // STATE 12 - _spin_nvr.tmp:234 - [((((EP==0)&&(EP_Stack==(2+1)))&&((EP==1)&&(EP_Stack==(2+1)))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported12 = 0;
			if (verbose && !reported12)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported12 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported12 = 0;
			if (verbose && !reported12)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported12 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[10][12] = 1;
		if (!((((((int)now.EP)==0)&&(((int)now.EP_Stack)==(2+1)))&&((((int)now.EP)==1)&&(((int)now.EP_Stack)==(2+1))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 64: // STATE 14 - _spin_nvr.tmp:235 - [(((EP==1)&&(EP_Stack==(2+1))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported14 = 0;
			if (verbose && !reported14)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported14 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported14 = 0;
			if (verbose && !reported14)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported14 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[10][14] = 1;
		if (!(((((int)now.EP)==1)&&(((int)now.EP_Stack)==(2+1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 65: // STATE 21 - _spin_nvr.tmp:240 - [((EP==(2+1)))] (26:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported21 = 0;
			if (verbose && !reported21)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported21 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported21 = 0;
			if (verbose && !reported21)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported21 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[10][21] = 1;
		if (!((((int)now.EP)==(2+1))))
			continue;
		/* merge: assert(!((EP==(2+1))))(0, 22, 26) */
		reached[10][22] = 1;
		spin_assert( !((((int)now.EP)==(2+1))), " !((EP==(2+1)))", II, tt, t);
		/* merge: .(goto)(0, 27, 26) */
		reached[10][27] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 66: // STATE 24 - _spin_nvr.tmp:241 - [(((EP==0)&&(EP_Stack==(2+1))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported24 = 0;
			if (verbose && !reported24)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported24 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported24 = 0;
			if (verbose && !reported24)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported24 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[10][24] = 1;
		if (!(((((int)now.EP)==0)&&(((int)now.EP_Stack)==(2+1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 67: // STATE 29 - _spin_nvr.tmp:245 - [((((EP==0)&&(EP_Stack==(2+1)))&&(EP==(2+1))))] (36:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported29 = 0;
			if (verbose && !reported29)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported29 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported29 = 0;
			if (verbose && !reported29)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported29 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[10][29] = 1;
		if (!((((((int)now.EP)==0)&&(((int)now.EP_Stack)==(2+1)))&&(((int)now.EP)==(2+1)))))
			continue;
		/* merge: assert(!((((EP==0)&&(EP_Stack==(2+1)))&&(EP==(2+1)))))(0, 30, 36) */
		reached[10][30] = 1;
		spin_assert( !((((((int)now.EP)==0)&&(((int)now.EP_Stack)==(2+1)))&&(((int)now.EP)==(2+1)))), " !((((EP==0)&&(EP_Stack==(2+1)))&&(EP==(2+1))))", II, tt, t);
		/* merge: .(goto)(0, 37, 36) */
		reached[10][37] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 68: // STATE 32 - _spin_nvr.tmp:246 - [(((EP==0)&&(EP_Stack==(2+1))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported32 = 0;
			if (verbose && !reported32)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported32 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported32 = 0;
			if (verbose && !reported32)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported32 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[10][32] = 1;
		if (!(((((int)now.EP)==0)&&(((int)now.EP_Stack)==(2+1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 69: // STATE 34 - _spin_nvr.tmp:247 - [(((EP==0)&&(EP_Stack==2)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported34 = 0;
			if (verbose && !reported34)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported34 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported34 = 0;
			if (verbose && !reported34)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported34 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[10][34] = 1;
		if (!(((((int)now.EP)==0)&&(((int)now.EP_Stack)==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 70: // STATE 39 - _spin_nvr.tmp:251 - [(((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&(EP==(2+1))))] (48:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported39 = 0;
			if (verbose && !reported39)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported39 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported39 = 0;
			if (verbose && !reported39)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported39 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[10][39] = 1;
		if (!(((((((int)now.EP)==0)&&(((int)now.EP_Stack)==(2+1)))&&((((int)now.EP)==0)&&(((int)now.EP_Stack)==2)))&&(((int)now.EP)==(2+1)))))
			continue;
		/* merge: assert(!(((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&(EP==(2+1)))))(0, 40, 48) */
		reached[10][40] = 1;
		spin_assert( !(((((((int)now.EP)==0)&&(((int)now.EP_Stack)==(2+1)))&&((((int)now.EP)==0)&&(((int)now.EP_Stack)==2)))&&(((int)now.EP)==(2+1)))), " !(((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&(EP==(2+1))))", II, tt, t);
		/* merge: .(goto)(0, 49, 48) */
		reached[10][49] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 71: // STATE 42 - _spin_nvr.tmp:252 - [((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported42 = 0;
			if (verbose && !reported42)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported42 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported42 = 0;
			if (verbose && !reported42)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported42 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[10][42] = 1;
		if (!((((((int)now.EP)==0)&&(((int)now.EP_Stack)==(2+1)))&&((((int)now.EP)==0)&&(((int)now.EP_Stack)==2)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 72: // STATE 44 - _spin_nvr.tmp:253 - [(((EP==0)&&(EP_Stack==2)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported44 = 0;
			if (verbose && !reported44)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported44 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported44 = 0;
			if (verbose && !reported44)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported44 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[10][44] = 1;
		if (!(((((int)now.EP)==0)&&(((int)now.EP_Stack)==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 73: // STATE 46 - _spin_nvr.tmp:254 - [(((EP==1)&&(EP_Stack==2)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported46 = 0;
			if (verbose && !reported46)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported46 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported46 = 0;
			if (verbose && !reported46)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported46 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[10][46] = 1;
		if (!(((((int)now.EP)==1)&&(((int)now.EP_Stack)==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 74: // STATE 51 - _spin_nvr.tmp:258 - [((((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==2)))&&(EP==(2+1))))] (62:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported51 = 0;
			if (verbose && !reported51)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported51 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported51 = 0;
			if (verbose && !reported51)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported51 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[10][51] = 1;
		if (!((((((((int)now.EP)==0)&&(((int)now.EP_Stack)==(2+1)))&&((((int)now.EP)==0)&&(((int)now.EP_Stack)==2)))&&((((int)now.EP)==1)&&(((int)now.EP_Stack)==2)))&&(((int)now.EP)==(2+1)))))
			continue;
		/* merge: assert(!((((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==2)))&&(EP==(2+1)))))(0, 52, 62) */
		reached[10][52] = 1;
		spin_assert( !((((((((int)now.EP)==0)&&(((int)now.EP_Stack)==(2+1)))&&((((int)now.EP)==0)&&(((int)now.EP_Stack)==2)))&&((((int)now.EP)==1)&&(((int)now.EP_Stack)==2)))&&(((int)now.EP)==(2+1)))), " !((((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==2)))&&(EP==(2+1))))", II, tt, t);
		/* merge: .(goto)(0, 63, 62) */
		reached[10][63] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 75: // STATE 54 - _spin_nvr.tmp:259 - [(((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==2))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported54 = 0;
			if (verbose && !reported54)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported54 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported54 = 0;
			if (verbose && !reported54)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported54 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[10][54] = 1;
		if (!(((((((int)now.EP)==0)&&(((int)now.EP_Stack)==(2+1)))&&((((int)now.EP)==0)&&(((int)now.EP_Stack)==2)))&&((((int)now.EP)==1)&&(((int)now.EP_Stack)==2)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 76: // STATE 56 - _spin_nvr.tmp:260 - [((((EP==0)&&(EP_Stack==2))&&((EP==1)&&(EP_Stack==2))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported56 = 0;
			if (verbose && !reported56)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported56 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported56 = 0;
			if (verbose && !reported56)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported56 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[10][56] = 1;
		if (!((((((int)now.EP)==0)&&(((int)now.EP_Stack)==2))&&((((int)now.EP)==1)&&(((int)now.EP_Stack)==2)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 77: // STATE 58 - _spin_nvr.tmp:261 - [(((EP==1)&&(EP_Stack==2)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported58 = 0;
			if (verbose && !reported58)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported58 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported58 = 0;
			if (verbose && !reported58)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported58 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[10][58] = 1;
		if (!(((((int)now.EP)==1)&&(((int)now.EP_Stack)==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 78: // STATE 60 - _spin_nvr.tmp:262 - [(((EP==0)&&(EP_Stack==2)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported60 = 0;
			if (verbose && !reported60)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported60 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported60 = 0;
			if (verbose && !reported60)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported60 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[10][60] = 1;
		if (!(((((int)now.EP)==0)&&(((int)now.EP_Stack)==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 79: // STATE 65 - _spin_nvr.tmp:266 - [((((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==2)))&&(EP==(2+1))))] (78:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported65 = 0;
			if (verbose && !reported65)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported65 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported65 = 0;
			if (verbose && !reported65)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported65 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[10][65] = 1;
		if (!((((((((int)now.EP)==0)&&(((int)now.EP_Stack)==(2+1)))&&((((int)now.EP)==0)&&(((int)now.EP_Stack)==2)))&&((((int)now.EP)==1)&&(((int)now.EP_Stack)==2)))&&(((int)now.EP)==(2+1)))))
			continue;
		/* merge: assert(!((((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==2)))&&(EP==(2+1)))))(0, 66, 78) */
		reached[10][66] = 1;
		spin_assert( !((((((((int)now.EP)==0)&&(((int)now.EP_Stack)==(2+1)))&&((((int)now.EP)==0)&&(((int)now.EP_Stack)==2)))&&((((int)now.EP)==1)&&(((int)now.EP_Stack)==2)))&&(((int)now.EP)==(2+1)))), " !((((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==2)))&&(EP==(2+1))))", II, tt, t);
		/* merge: .(goto)(0, 79, 78) */
		reached[10][79] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 80: // STATE 68 - _spin_nvr.tmp:267 - [(((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==2))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported68 = 0;
			if (verbose && !reported68)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported68 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported68 = 0;
			if (verbose && !reported68)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported68 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[10][68] = 1;
		if (!(((((((int)now.EP)==0)&&(((int)now.EP_Stack)==(2+1)))&&((((int)now.EP)==0)&&(((int)now.EP_Stack)==2)))&&((((int)now.EP)==1)&&(((int)now.EP_Stack)==2)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 81: // STATE 70 - _spin_nvr.tmp:268 - [((((EP==0)&&(EP_Stack==2))&&((EP==1)&&(EP_Stack==2))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported70 = 0;
			if (verbose && !reported70)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported70 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported70 = 0;
			if (verbose && !reported70)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported70 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[10][70] = 1;
		if (!((((((int)now.EP)==0)&&(((int)now.EP_Stack)==2))&&((((int)now.EP)==1)&&(((int)now.EP_Stack)==2)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 82: // STATE 72 - _spin_nvr.tmp:269 - [((((EP==0)&&(EP_Stack==2))&&((EP==1)&&(EP_Stack==2))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported72 = 0;
			if (verbose && !reported72)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported72 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported72 = 0;
			if (verbose && !reported72)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported72 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[10][72] = 1;
		if (!((((((int)now.EP)==0)&&(((int)now.EP_Stack)==2))&&((((int)now.EP)==1)&&(((int)now.EP_Stack)==2)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 83: // STATE 74 - _spin_nvr.tmp:270 - [(((EP==0)&&(EP_Stack==2)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported74 = 0;
			if (verbose && !reported74)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported74 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported74 = 0;
			if (verbose && !reported74)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported74 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[10][74] = 1;
		if (!(((((int)now.EP)==0)&&(((int)now.EP_Stack)==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 84: // STATE 76 - _spin_nvr.tmp:271 - [(((EP==0)&&(EP_Stack==(2+1))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported76 = 0;
			if (verbose && !reported76)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported76 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported76 = 0;
			if (verbose && !reported76)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported76 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[10][76] = 1;
		if (!(((((int)now.EP)==0)&&(((int)now.EP_Stack)==(2+1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 85: // STATE 81 - _spin_nvr.tmp:275 - [((((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==2)))&&(EP==(2+1))))] (96:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported81 = 0;
			if (verbose && !reported81)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported81 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported81 = 0;
			if (verbose && !reported81)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported81 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[10][81] = 1;
		if (!((((((((int)now.EP)==0)&&(((int)now.EP_Stack)==(2+1)))&&((((int)now.EP)==0)&&(((int)now.EP_Stack)==2)))&&((((int)now.EP)==1)&&(((int)now.EP_Stack)==2)))&&(((int)now.EP)==(2+1)))))
			continue;
		/* merge: assert(!((((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==2)))&&(EP==(2+1)))))(0, 82, 96) */
		reached[10][82] = 1;
		spin_assert( !((((((((int)now.EP)==0)&&(((int)now.EP_Stack)==(2+1)))&&((((int)now.EP)==0)&&(((int)now.EP_Stack)==2)))&&((((int)now.EP)==1)&&(((int)now.EP_Stack)==2)))&&(((int)now.EP)==(2+1)))), " !((((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==2)))&&(EP==(2+1))))", II, tt, t);
		/* merge: .(goto)(0, 97, 96) */
		reached[10][97] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 86: // STATE 84 - _spin_nvr.tmp:276 - [(((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==2))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported84 = 0;
			if (verbose && !reported84)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported84 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported84 = 0;
			if (verbose && !reported84)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported84 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[10][84] = 1;
		if (!(((((((int)now.EP)==0)&&(((int)now.EP_Stack)==(2+1)))&&((((int)now.EP)==0)&&(((int)now.EP_Stack)==2)))&&((((int)now.EP)==1)&&(((int)now.EP_Stack)==2)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 87: // STATE 86 - _spin_nvr.tmp:277 - [(((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==2))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported86 = 0;
			if (verbose && !reported86)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported86 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported86 = 0;
			if (verbose && !reported86)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported86 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[10][86] = 1;
		if (!(((((((int)now.EP)==0)&&(((int)now.EP_Stack)==(2+1)))&&((((int)now.EP)==0)&&(((int)now.EP_Stack)==2)))&&((((int)now.EP)==1)&&(((int)now.EP_Stack)==2)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 88: // STATE 88 - _spin_nvr.tmp:278 - [(((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==2))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported88 = 0;
			if (verbose && !reported88)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported88 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported88 = 0;
			if (verbose && !reported88)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported88 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[10][88] = 1;
		if (!(((((((int)now.EP)==0)&&(((int)now.EP_Stack)==(2+1)))&&((((int)now.EP)==0)&&(((int)now.EP_Stack)==2)))&&((((int)now.EP)==1)&&(((int)now.EP_Stack)==2)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 89: // STATE 90 - _spin_nvr.tmp:279 - [((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported90 = 0;
			if (verbose && !reported90)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported90 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported90 = 0;
			if (verbose && !reported90)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported90 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[10][90] = 1;
		if (!((((((int)now.EP)==0)&&(((int)now.EP_Stack)==(2+1)))&&((((int)now.EP)==0)&&(((int)now.EP_Stack)==2)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 90: // STATE 92 - _spin_nvr.tmp:280 - [(((EP==0)&&(EP_Stack==(2+1))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported92 = 0;
			if (verbose && !reported92)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported92 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported92 = 0;
			if (verbose && !reported92)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported92 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[10][92] = 1;
		if (!(((((int)now.EP)==0)&&(((int)now.EP_Stack)==(2+1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 91: // STATE 94 - _spin_nvr.tmp:281 - [(((EP==1)&&(EP_Stack==(2+1))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported94 = 0;
			if (verbose && !reported94)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported94 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported94 = 0;
			if (verbose && !reported94)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported94 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[10][94] = 1;
		if (!(((((int)now.EP)==1)&&(((int)now.EP_Stack)==(2+1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 92: // STATE 100 - _spin_nvr.tmp:285 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported100 = 0;
			if (verbose && !reported100)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported100 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported100 = 0;
			if (verbose && !reported100)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported100 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[10][100] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM all_starvation_free */
	case 93: // STATE 1 - _spin_nvr.tmp:127 - [(((!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==2)))&&(EP>=2)))] (0:0:0 - 1)
		
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
		reached[9][1] = 1;
		if (!((( !( !(((((int)now.tcb[2].state)==1)&&(((((int)now.pending_exp)>>1)&1)==1))))&& !((((int)now.EP)==2)))&&(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 94: // STATE 3 - _spin_nvr.tmp:128 - [((!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==2))))] (0:0:0 - 1)
		
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
		reached[9][3] = 1;
		if (!(( !( !(((((int)now.tcb[2].state)==1)&&(((((int)now.pending_exp)>>1)&1)==1))))&& !((((int)now.EP)==2)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 95: // STATE 5 - _spin_nvr.tmp:129 - [(((!((pending_exp>0))&&!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1)))))&&!((EP==2))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported5 = 0;
			if (verbose && !reported5)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported5 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported5 = 0;
			if (verbose && !reported5)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported5 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][5] = 1;
		if (!((( !((((int)now.pending_exp)>0))&& !( !(((((int)now.tcb[2].state)==1)&&(((((int)now.pending_exp)>>1)&1)==1)))))&& !((((int)now.EP)==2)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 96: // STATE 7 - _spin_nvr.tmp:130 - [(((!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==(2+1))))&&(EP>=2)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported7 = 0;
			if (verbose && !reported7)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported7 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported7 = 0;
			if (verbose && !reported7)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported7 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][7] = 1;
		if (!((( !( !(((((int)now.tcb[ Index((2+1), 4) ].state)==1)&&(((((int)now.pending_exp)>>1)&1)==1))))&& !((((int)now.EP)==(2+1))))&&(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 97: // STATE 9 - _spin_nvr.tmp:131 - [((!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==(2+1)))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported9 = 0;
			if (verbose && !reported9)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported9 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported9 = 0;
			if (verbose && !reported9)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported9 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][9] = 1;
		if (!(( !( !(((((int)now.tcb[ Index((2+1), 4) ].state)==1)&&(((((int)now.pending_exp)>>1)&1)==1))))&& !((((int)now.EP)==(2+1))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 98: // STATE 11 - _spin_nvr.tmp:132 - [(((!((pending_exp>0))&&!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1)))))&&!((EP==(2+1)))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported11 = 0;
			if (verbose && !reported11)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported11 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported11 = 0;
			if (verbose && !reported11)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported11 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][11] = 1;
		if (!((( !((((int)now.pending_exp)>0))&& !( !(((((int)now.tcb[ Index((2+1), 4) ].state)==1)&&(((((int)now.pending_exp)>>1)&1)==1)))))&& !((((int)now.EP)==(2+1))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 99: // STATE 13 - _spin_nvr.tmp:133 - [((EP>=2))] (0:0:0 - 1)
		
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
		reached[9][13] = 1;
		if (!((((int)now.EP)>=2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 100: // STATE 17 - _spin_nvr.tmp:135 - [(!((pending_exp>0)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported17 = 0;
			if (verbose && !reported17)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported17 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported17 = 0;
			if (verbose && !reported17)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported17 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][17] = 1;
		if (!( !((((int)now.pending_exp)>0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 101: // STATE 22 - _spin_nvr.tmp:139 - [((!((EP==2))&&(EP>=2)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported22 = 0;
			if (verbose && !reported22)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported22 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported22 = 0;
			if (verbose && !reported22)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported22 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][22] = 1;
		if (!(( !((((int)now.EP)==2))&&(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 102: // STATE 24 - _spin_nvr.tmp:140 - [(!((EP==2)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported24 = 0;
			if (verbose && !reported24)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported24 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported24 = 0;
			if (verbose && !reported24)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported24 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][24] = 1;
		if (!( !((((int)now.EP)==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 103: // STATE 26 - _spin_nvr.tmp:141 - [((!((pending_exp>0))&&!((EP==2))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported26 = 0;
			if (verbose && !reported26)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported26 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported26 = 0;
			if (verbose && !reported26)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported26 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][26] = 1;
		if (!(( !((((int)now.pending_exp)>0))&& !((((int)now.EP)==2)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 104: // STATE 31 - _spin_nvr.tmp:145 - [((!((EP==(2+1)))&&(EP>=2)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported31 = 0;
			if (verbose && !reported31)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported31 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported31 = 0;
			if (verbose && !reported31)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported31 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][31] = 1;
		if (!(( !((((int)now.EP)==(2+1)))&&(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 105: // STATE 33 - _spin_nvr.tmp:146 - [(!((EP==(2+1))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported33 = 0;
			if (verbose && !reported33)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported33 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported33 = 0;
			if (verbose && !reported33)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported33 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][33] = 1;
		if (!( !((((int)now.EP)==(2+1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 106: // STATE 35 - _spin_nvr.tmp:147 - [((!((pending_exp>0))&&!((EP==(2+1)))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported35 = 0;
			if (verbose && !reported35)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported35 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported35 = 0;
			if (verbose && !reported35)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported35 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][35] = 1;
		if (!(( !((((int)now.pending_exp)>0))&& !((((int)now.EP)==(2+1))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 107: // STATE 40 - _spin_nvr.tmp:151 - [(!((EP==2)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported40 = 0;
			if (verbose && !reported40)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported40 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported40 = 0;
			if (verbose && !reported40)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported40 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][40] = 1;
		if (!( !((((int)now.EP)==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 108: // STATE 42 - _spin_nvr.tmp:152 - [(((!((pending_exp>0))&&!((EP==2)))||(!((EP==2))&&(EP>=2))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported42 = 0;
			if (verbose && !reported42)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported42 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported42 = 0;
			if (verbose && !reported42)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported42 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][42] = 1;
		if (!((( !((((int)now.pending_exp)>0))&& !((((int)now.EP)==2)))||( !((((int)now.EP)==2))&&(((int)now.EP)>=2)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 109: // STATE 47 - _spin_nvr.tmp:156 - [(!((EP==(2+1))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported47 = 0;
			if (verbose && !reported47)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported47 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported47 = 0;
			if (verbose && !reported47)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported47 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][47] = 1;
		if (!( !((((int)now.EP)==(2+1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 110: // STATE 49 - _spin_nvr.tmp:157 - [(((!((pending_exp>0))&&!((EP==(2+1))))||(!((EP==(2+1)))&&(EP>=2))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported49 = 0;
			if (verbose && !reported49)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported49 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported49 = 0;
			if (verbose && !reported49)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported49 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][49] = 1;
		if (!((( !((((int)now.pending_exp)>0))&& !((((int)now.EP)==(2+1))))||( !((((int)now.EP)==(2+1)))&&(((int)now.EP)>=2)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 111: // STATE 54 - _spin_nvr.tmp:161 - [(!((EP==2)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported54 = 0;
			if (verbose && !reported54)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported54 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported54 = 0;
			if (verbose && !reported54)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported54 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][54] = 1;
		if (!( !((((int)now.EP)==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 112: // STATE 56 - _spin_nvr.tmp:162 - [((!((EP==2))&&(EP>=2)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported56 = 0;
			if (verbose && !reported56)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported56 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported56 = 0;
			if (verbose && !reported56)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported56 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][56] = 1;
		if (!(( !((((int)now.EP)==2))&&(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 113: // STATE 61 - _spin_nvr.tmp:166 - [(!((EP==(2+1))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported61 = 0;
			if (verbose && !reported61)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported61 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported61 = 0;
			if (verbose && !reported61)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported61 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][61] = 1;
		if (!( !((((int)now.EP)==(2+1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 114: // STATE 63 - _spin_nvr.tmp:167 - [((!((EP==(2+1)))&&(EP>=2)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported63 = 0;
			if (verbose && !reported63)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported63 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported63 = 0;
			if (verbose && !reported63)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported63 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][63] = 1;
		if (!(( !((((int)now.EP)==(2+1)))&&(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 115: // STATE 68 - _spin_nvr.tmp:171 - [((!((EP==2))&&(EP>=2)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported68 = 0;
			if (verbose && !reported68)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported68 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported68 = 0;
			if (verbose && !reported68)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported68 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][68] = 1;
		if (!(( !((((int)now.EP)==2))&&(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 116: // STATE 70 - _spin_nvr.tmp:172 - [(!((EP==2)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported70 = 0;
			if (verbose && !reported70)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported70 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported70 = 0;
			if (verbose && !reported70)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported70 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][70] = 1;
		if (!( !((((int)now.EP)==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 117: // STATE 72 - _spin_nvr.tmp:173 - [((!((pending_exp>0))&&!((EP==2))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported72 = 0;
			if (verbose && !reported72)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported72 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported72 = 0;
			if (verbose && !reported72)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported72 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][72] = 1;
		if (!(( !((((int)now.pending_exp)>0))&& !((((int)now.EP)==2)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 118: // STATE 77 - _spin_nvr.tmp:177 - [((!((EP==(2+1)))&&(EP>=2)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported77 = 0;
			if (verbose && !reported77)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported77 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported77 = 0;
			if (verbose && !reported77)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported77 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][77] = 1;
		if (!(( !((((int)now.EP)==(2+1)))&&(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 119: // STATE 79 - _spin_nvr.tmp:178 - [(!((EP==(2+1))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported79 = 0;
			if (verbose && !reported79)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported79 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported79 = 0;
			if (verbose && !reported79)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported79 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][79] = 1;
		if (!( !((((int)now.EP)==(2+1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 120: // STATE 81 - _spin_nvr.tmp:179 - [((!((pending_exp>0))&&!((EP==(2+1)))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported81 = 0;
			if (verbose && !reported81)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported81 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported81 = 0;
			if (verbose && !reported81)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported81 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][81] = 1;
		if (!(( !((((int)now.pending_exp)>0))&& !((((int)now.EP)==(2+1))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 121: // STATE 86 - _spin_nvr.tmp:183 - [(!((EP==2)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported86 = 0;
			if (verbose && !reported86)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported86 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported86 = 0;
			if (verbose && !reported86)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported86 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][86] = 1;
		if (!( !((((int)now.EP)==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 122: // STATE 88 - _spin_nvr.tmp:184 - [(((!((pending_exp>0))&&!((EP==2)))||(!((EP==2))&&(EP>=2))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported88 = 0;
			if (verbose && !reported88)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported88 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported88 = 0;
			if (verbose && !reported88)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported88 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][88] = 1;
		if (!((( !((((int)now.pending_exp)>0))&& !((((int)now.EP)==2)))||( !((((int)now.EP)==2))&&(((int)now.EP)>=2)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 123: // STATE 93 - _spin_nvr.tmp:188 - [(!((EP==(2+1))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported93 = 0;
			if (verbose && !reported93)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported93 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported93 = 0;
			if (verbose && !reported93)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported93 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][93] = 1;
		if (!( !((((int)now.EP)==(2+1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 124: // STATE 95 - _spin_nvr.tmp:189 - [(((!((pending_exp>0))&&!((EP==(2+1))))||(!((EP==(2+1)))&&(EP>=2))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported95 = 0;
			if (verbose && !reported95)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported95 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported95 = 0;
			if (verbose && !reported95)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported95 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][95] = 1;
		if (!((( !((((int)now.pending_exp)>0))&& !((((int)now.EP)==(2+1))))||( !((((int)now.EP)==(2+1)))&&(((int)now.EP)>=2)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 125: // STATE 100 - _spin_nvr.tmp:193 - [((!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==2))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported100 = 0;
			if (verbose && !reported100)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported100 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported100 = 0;
			if (verbose && !reported100)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported100 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][100] = 1;
		if (!(( !( !(((((int)now.tcb[2].state)==1)&&(((((int)now.pending_exp)>>1)&1)==1))))&& !((((int)now.EP)==2)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 126: // STATE 102 - _spin_nvr.tmp:194 - [(((!((pending_exp>0))&&(!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==2))))||(!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&(!((EP==2))&&(EP>=2)))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported102 = 0;
			if (verbose && !reported102)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported102 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported102 = 0;
			if (verbose && !reported102)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported102 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][102] = 1;
		if (!((( !((((int)now.pending_exp)>0))&&( !( !(((((int)now.tcb[2].state)==1)&&(((((int)now.pending_exp)>>1)&1)==1))))&& !((((int)now.EP)==2))))||( !( !(((((int)now.tcb[2].state)==1)&&(((((int)now.pending_exp)>>1)&1)==1))))&&( !((((int)now.EP)==2))&&(((int)now.EP)>=2))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 127: // STATE 104 - _spin_nvr.tmp:195 - [((!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==(2+1)))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported104 = 0;
			if (verbose && !reported104)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported104 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported104 = 0;
			if (verbose && !reported104)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported104 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][104] = 1;
		if (!(( !( !(((((int)now.tcb[ Index((2+1), 4) ].state)==1)&&(((((int)now.pending_exp)>>1)&1)==1))))&& !((((int)now.EP)==(2+1))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 128: // STATE 106 - _spin_nvr.tmp:196 - [(((!((pending_exp>0))&&(!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==(2+1)))))||(!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&(!((EP==(2+1)))&&(EP>=2)))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported106 = 0;
			if (verbose && !reported106)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported106 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported106 = 0;
			if (verbose && !reported106)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported106 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][106] = 1;
		if (!((( !((((int)now.pending_exp)>0))&&( !( !(((((int)now.tcb[ Index((2+1), 4) ].state)==1)&&(((((int)now.pending_exp)>>1)&1)==1))))&& !((((int)now.EP)==(2+1)))))||( !( !(((((int)now.tcb[ Index((2+1), 4) ].state)==1)&&(((((int)now.pending_exp)>>1)&1)==1))))&&( !((((int)now.EP)==(2+1)))&&(((int)now.EP)>=2))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 129: // STATE 108 - _spin_nvr.tmp:197 - [((EP>=2))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported108 = 0;
			if (verbose && !reported108)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported108 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported108 = 0;
			if (verbose && !reported108)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported108 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][108] = 1;
		if (!((((int)now.EP)>=2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 130: // STATE 112 - _spin_nvr.tmp:199 - [(!((pending_exp>0)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported112 = 0;
			if (verbose && !reported112)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported112 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported112 = 0;
			if (verbose && !reported112)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported112 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][112] = 1;
		if (!( !((((int)now.pending_exp)>0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 131: // STATE 117 - _spin_nvr.tmp:203 - [(!((EP==2)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported117 = 0;
			if (verbose && !reported117)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported117 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported117 = 0;
			if (verbose && !reported117)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported117 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][117] = 1;
		if (!( !((((int)now.EP)==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 132: // STATE 119 - _spin_nvr.tmp:204 - [((!((EP==2))&&(EP>=2)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported119 = 0;
			if (verbose && !reported119)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported119 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported119 = 0;
			if (verbose && !reported119)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported119 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][119] = 1;
		if (!(( !((((int)now.EP)==2))&&(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 133: // STATE 121 - _spin_nvr.tmp:205 - [((!((EP==2))&&(EP>=2)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported121 = 0;
			if (verbose && !reported121)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported121 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported121 = 0;
			if (verbose && !reported121)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported121 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][121] = 1;
		if (!(( !((((int)now.EP)==2))&&(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 134: // STATE 126 - _spin_nvr.tmp:209 - [(!((EP==(2+1))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported126 = 0;
			if (verbose && !reported126)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported126 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported126 = 0;
			if (verbose && !reported126)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported126 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][126] = 1;
		if (!( !((((int)now.EP)==(2+1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 135: // STATE 128 - _spin_nvr.tmp:210 - [((!((EP==(2+1)))&&(EP>=2)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported128 = 0;
			if (verbose && !reported128)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported128 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported128 = 0;
			if (verbose && !reported128)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported128 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][128] = 1;
		if (!(( !((((int)now.EP)==(2+1)))&&(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 136: // STATE 130 - _spin_nvr.tmp:211 - [((!((EP==(2+1)))&&(EP>=2)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported130 = 0;
			if (verbose && !reported130)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported130 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported130 = 0;
			if (verbose && !reported130)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported130 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][130] = 1;
		if (!(( !((((int)now.EP)==(2+1)))&&(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 137: // STATE 135 - _spin_nvr.tmp:215 - [((!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==2))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported135 = 0;
			if (verbose && !reported135)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported135 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported135 = 0;
			if (verbose && !reported135)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported135 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][135] = 1;
		if (!(( !( !(((((int)now.tcb[2].state)==1)&&(((((int)now.pending_exp)>>1)&1)==1))))&& !((((int)now.EP)==2)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 138: // STATE 137 - _spin_nvr.tmp:216 - [((!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==(2+1)))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported137 = 0;
			if (verbose && !reported137)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported137 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported137 = 0;
			if (verbose && !reported137)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported137 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][137] = 1;
		if (!(( !( !(((((int)now.tcb[ Index((2+1), 4) ].state)==1)&&(((((int)now.pending_exp)>>1)&1)==1))))&& !((((int)now.EP)==(2+1))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 139: // STATE 139 - _spin_nvr.tmp:217 - [((EP>=2))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported139 = 0;
			if (verbose && !reported139)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported139 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported139 = 0;
			if (verbose && !reported139)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported139 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][139] = 1;
		if (!((((int)now.EP)>=2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 140: // STATE 143 - _spin_nvr.tmp:219 - [(((!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==2)))&&(EP>=2)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported143 = 0;
			if (verbose && !reported143)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported143 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported143 = 0;
			if (verbose && !reported143)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported143 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][143] = 1;
		if (!((( !( !(((((int)now.tcb[2].state)==1)&&(((((int)now.pending_exp)>>1)&1)==1))))&& !((((int)now.EP)==2)))&&(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 141: // STATE 145 - _spin_nvr.tmp:220 - [(((!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==2)))&&(EP>=2)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported145 = 0;
			if (verbose && !reported145)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported145 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported145 = 0;
			if (verbose && !reported145)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported145 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][145] = 1;
		if (!((( !( !(((((int)now.tcb[2].state)==1)&&(((((int)now.pending_exp)>>1)&1)==1))))&& !((((int)now.EP)==2)))&&(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 142: // STATE 147 - _spin_nvr.tmp:221 - [(((!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==(2+1))))&&(EP>=2)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported147 = 0;
			if (verbose && !reported147)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported147 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported147 = 0;
			if (verbose && !reported147)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported147 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][147] = 1;
		if (!((( !( !(((((int)now.tcb[ Index((2+1), 4) ].state)==1)&&(((((int)now.pending_exp)>>1)&1)==1))))&& !((((int)now.EP)==(2+1))))&&(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 143: // STATE 149 - _spin_nvr.tmp:222 - [(((!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==(2+1))))&&(EP>=2)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported149 = 0;
			if (verbose && !reported149)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported149 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported149 = 0;
			if (verbose && !reported149)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported149 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][149] = 1;
		if (!((( !( !(((((int)now.tcb[ Index((2+1), 4) ].state)==1)&&(((((int)now.pending_exp)>>1)&1)==1))))&& !((((int)now.EP)==(2+1))))&&(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 144: // STATE 151 - _spin_nvr.tmp:223 - [((!((pending_exp>0))&&(EP>=2)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported151 = 0;
			if (verbose && !reported151)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported151 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported151 = 0;
			if (verbose && !reported151)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported151 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][151] = 1;
		if (!(( !((((int)now.pending_exp)>0))&&(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 145: // STATE 156 - _spin_nvr.tmp:225 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported156 = 0;
			if (verbose && !reported156)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported156 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported156 = 0;
			if (verbose && !reported156)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported156 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][156] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM starvation_free_task2 */
	case 146: // STATE 1 - _spin_nvr.tmp:76 - [(((!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==(2+1))))&&(EP>=2)))] (0:0:0 - 1)
		
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
		reached[8][1] = 1;
		if (!((( !( !(((((int)now.tcb[ Index((2+1), 4) ].state)==1)&&(((((int)now.pending_exp)>>1)&1)==1))))&& !((((int)now.EP)==(2+1))))&&(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 147: // STATE 3 - _spin_nvr.tmp:77 - [((!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==(2+1)))))] (0:0:0 - 1)
		
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
		reached[8][3] = 1;
		if (!(( !( !(((((int)now.tcb[ Index((2+1), 4) ].state)==1)&&(((((int)now.pending_exp)>>1)&1)==1))))&& !((((int)now.EP)==(2+1))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 148: // STATE 5 - _spin_nvr.tmp:78 - [(((!((pending_exp>0))&&!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1)))))&&!((EP==(2+1)))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported5 = 0;
			if (verbose && !reported5)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported5 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported5 = 0;
			if (verbose && !reported5)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported5 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][5] = 1;
		if (!((( !((((int)now.pending_exp)>0))&& !( !(((((int)now.tcb[ Index((2+1), 4) ].state)==1)&&(((((int)now.pending_exp)>>1)&1)==1)))))&& !((((int)now.EP)==(2+1))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 149: // STATE 7 - _spin_nvr.tmp:79 - [((!((pending_exp>0))||(EP>=2)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported7 = 0;
			if (verbose && !reported7)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported7 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported7 = 0;
			if (verbose && !reported7)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported7 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][7] = 1;
		if (!(( !((((int)now.pending_exp)>0))||(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 150: // STATE 14 - _spin_nvr.tmp:84 - [((!((EP==(2+1)))&&(EP>=2)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported14 = 0;
			if (verbose && !reported14)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported14 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported14 = 0;
			if (verbose && !reported14)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported14 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][14] = 1;
		if (!(( !((((int)now.EP)==(2+1)))&&(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 151: // STATE 16 - _spin_nvr.tmp:85 - [(!((EP==(2+1))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported16 = 0;
			if (verbose && !reported16)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported16 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported16 = 0;
			if (verbose && !reported16)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported16 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][16] = 1;
		if (!( !((((int)now.EP)==(2+1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 152: // STATE 18 - _spin_nvr.tmp:86 - [((!((pending_exp>0))&&!((EP==(2+1)))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported18 = 0;
			if (verbose && !reported18)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported18 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported18 = 0;
			if (verbose && !reported18)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported18 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][18] = 1;
		if (!(( !((((int)now.pending_exp)>0))&& !((((int)now.EP)==(2+1))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 153: // STATE 23 - _spin_nvr.tmp:90 - [(!((EP==(2+1))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported23 = 0;
			if (verbose && !reported23)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported23 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported23 = 0;
			if (verbose && !reported23)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported23 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][23] = 1;
		if (!( !((((int)now.EP)==(2+1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 154: // STATE 25 - _spin_nvr.tmp:91 - [(((!((pending_exp>0))&&!((EP==(2+1))))||(!((EP==(2+1)))&&(EP>=2))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported25 = 0;
			if (verbose && !reported25)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported25 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported25 = 0;
			if (verbose && !reported25)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported25 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][25] = 1;
		if (!((( !((((int)now.pending_exp)>0))&& !((((int)now.EP)==(2+1))))||( !((((int)now.EP)==(2+1)))&&(((int)now.EP)>=2)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 155: // STATE 30 - _spin_nvr.tmp:95 - [(!((EP==(2+1))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported30 = 0;
			if (verbose && !reported30)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported30 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported30 = 0;
			if (verbose && !reported30)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported30 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][30] = 1;
		if (!( !((((int)now.EP)==(2+1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 156: // STATE 32 - _spin_nvr.tmp:96 - [((!((EP==(2+1)))&&(EP>=2)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported32 = 0;
			if (verbose && !reported32)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported32 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported32 = 0;
			if (verbose && !reported32)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported32 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][32] = 1;
		if (!(( !((((int)now.EP)==(2+1)))&&(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 157: // STATE 37 - _spin_nvr.tmp:100 - [((!((EP==(2+1)))&&(EP>=2)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported37 = 0;
			if (verbose && !reported37)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported37 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported37 = 0;
			if (verbose && !reported37)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported37 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][37] = 1;
		if (!(( !((((int)now.EP)==(2+1)))&&(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 158: // STATE 39 - _spin_nvr.tmp:101 - [(!((EP==(2+1))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported39 = 0;
			if (verbose && !reported39)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported39 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported39 = 0;
			if (verbose && !reported39)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported39 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][39] = 1;
		if (!( !((((int)now.EP)==(2+1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 159: // STATE 41 - _spin_nvr.tmp:102 - [((!((pending_exp>0))&&!((EP==(2+1)))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported41 = 0;
			if (verbose && !reported41)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported41 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported41 = 0;
			if (verbose && !reported41)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported41 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][41] = 1;
		if (!(( !((((int)now.pending_exp)>0))&& !((((int)now.EP)==(2+1))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 160: // STATE 46 - _spin_nvr.tmp:106 - [(!((EP==(2+1))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported46 = 0;
			if (verbose && !reported46)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported46 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported46 = 0;
			if (verbose && !reported46)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported46 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][46] = 1;
		if (!( !((((int)now.EP)==(2+1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 161: // STATE 48 - _spin_nvr.tmp:107 - [(((!((pending_exp>0))&&!((EP==(2+1))))||(!((EP==(2+1)))&&(EP>=2))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported48 = 0;
			if (verbose && !reported48)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported48 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported48 = 0;
			if (verbose && !reported48)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported48 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][48] = 1;
		if (!((( !((((int)now.pending_exp)>0))&& !((((int)now.EP)==(2+1))))||( !((((int)now.EP)==(2+1)))&&(((int)now.EP)>=2)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 162: // STATE 53 - _spin_nvr.tmp:111 - [(!((EP==(2+1))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported53 = 0;
			if (verbose && !reported53)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported53 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported53 = 0;
			if (verbose && !reported53)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported53 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][53] = 1;
		if (!( !((((int)now.EP)==(2+1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 163: // STATE 55 - _spin_nvr.tmp:112 - [((!((EP==(2+1)))&&(EP>=2)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported55 = 0;
			if (verbose && !reported55)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported55 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported55 = 0;
			if (verbose && !reported55)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported55 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][55] = 1;
		if (!(( !((((int)now.EP)==(2+1)))&&(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 164: // STATE 57 - _spin_nvr.tmp:113 - [((!((EP==(2+1)))&&(EP>=2)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported57 = 0;
			if (verbose && !reported57)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported57 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported57 = 0;
			if (verbose && !reported57)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported57 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][57] = 1;
		if (!(( !((((int)now.EP)==(2+1)))&&(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 165: // STATE 62 - _spin_nvr.tmp:117 - [((!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==(2+1)))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported62 = 0;
			if (verbose && !reported62)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported62 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported62 = 0;
			if (verbose && !reported62)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported62 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][62] = 1;
		if (!(( !( !(((((int)now.tcb[ Index((2+1), 4) ].state)==1)&&(((((int)now.pending_exp)>>1)&1)==1))))&& !((((int)now.EP)==(2+1))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 166: // STATE 64 - _spin_nvr.tmp:118 - [((EP>=2))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported64 = 0;
			if (verbose && !reported64)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported64 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported64 = 0;
			if (verbose && !reported64)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported64 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][64] = 1;
		if (!((((int)now.EP)>=2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 167: // STATE 68 - _spin_nvr.tmp:120 - [(((!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==(2+1))))&&(EP>=2)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported68 = 0;
			if (verbose && !reported68)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported68 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported68 = 0;
			if (verbose && !reported68)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported68 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][68] = 1;
		if (!((( !( !(((((int)now.tcb[ Index((2+1), 4) ].state)==1)&&(((((int)now.pending_exp)>>1)&1)==1))))&& !((((int)now.EP)==(2+1))))&&(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 168: // STATE 70 - _spin_nvr.tmp:121 - [(((!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==(2+1))))&&(EP>=2)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported70 = 0;
			if (verbose && !reported70)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported70 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported70 = 0;
			if (verbose && !reported70)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported70 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][70] = 1;
		if (!((( !( !(((((int)now.tcb[ Index((2+1), 4) ].state)==1)&&(((((int)now.pending_exp)>>1)&1)==1))))&& !((((int)now.EP)==(2+1))))&&(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 169: // STATE 75 - _spin_nvr.tmp:123 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported75 = 0;
			if (verbose && !reported75)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported75 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported75 = 0;
			if (verbose && !reported75)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported75 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][75] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM starvation_free_task1 */
	case 170: // STATE 1 - _spin_nvr.tmp:25 - [(((!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==2)))&&(EP>=2)))] (0:0:0 - 1)
		
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
		reached[7][1] = 1;
		if (!((( !( !(((((int)now.tcb[2].state)==1)&&(((((int)now.pending_exp)>>1)&1)==1))))&& !((((int)now.EP)==2)))&&(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 171: // STATE 3 - _spin_nvr.tmp:26 - [((!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==2))))] (0:0:0 - 1)
		
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
		reached[7][3] = 1;
		if (!(( !( !(((((int)now.tcb[2].state)==1)&&(((((int)now.pending_exp)>>1)&1)==1))))&& !((((int)now.EP)==2)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 172: // STATE 5 - _spin_nvr.tmp:27 - [(((!((pending_exp>0))&&!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1)))))&&!((EP==2))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported5 = 0;
			if (verbose && !reported5)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported5 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported5 = 0;
			if (verbose && !reported5)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported5 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][5] = 1;
		if (!((( !((((int)now.pending_exp)>0))&& !( !(((((int)now.tcb[2].state)==1)&&(((((int)now.pending_exp)>>1)&1)==1)))))&& !((((int)now.EP)==2)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 173: // STATE 7 - _spin_nvr.tmp:28 - [((!((pending_exp>0))||(EP>=2)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported7 = 0;
			if (verbose && !reported7)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported7 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported7 = 0;
			if (verbose && !reported7)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported7 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][7] = 1;
		if (!(( !((((int)now.pending_exp)>0))||(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 174: // STATE 14 - _spin_nvr.tmp:33 - [((!((EP==2))&&(EP>=2)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported14 = 0;
			if (verbose && !reported14)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported14 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported14 = 0;
			if (verbose && !reported14)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported14 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][14] = 1;
		if (!(( !((((int)now.EP)==2))&&(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 175: // STATE 16 - _spin_nvr.tmp:34 - [(!((EP==2)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported16 = 0;
			if (verbose && !reported16)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported16 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported16 = 0;
			if (verbose && !reported16)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported16 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][16] = 1;
		if (!( !((((int)now.EP)==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 176: // STATE 18 - _spin_nvr.tmp:35 - [((!((pending_exp>0))&&!((EP==2))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported18 = 0;
			if (verbose && !reported18)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported18 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported18 = 0;
			if (verbose && !reported18)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported18 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][18] = 1;
		if (!(( !((((int)now.pending_exp)>0))&& !((((int)now.EP)==2)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 177: // STATE 23 - _spin_nvr.tmp:39 - [(!((EP==2)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported23 = 0;
			if (verbose && !reported23)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported23 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported23 = 0;
			if (verbose && !reported23)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported23 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][23] = 1;
		if (!( !((((int)now.EP)==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 178: // STATE 25 - _spin_nvr.tmp:40 - [(((!((pending_exp>0))&&!((EP==2)))||(!((EP==2))&&(EP>=2))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported25 = 0;
			if (verbose && !reported25)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported25 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported25 = 0;
			if (verbose && !reported25)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported25 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][25] = 1;
		if (!((( !((((int)now.pending_exp)>0))&& !((((int)now.EP)==2)))||( !((((int)now.EP)==2))&&(((int)now.EP)>=2)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 179: // STATE 30 - _spin_nvr.tmp:44 - [(!((EP==2)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported30 = 0;
			if (verbose && !reported30)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported30 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported30 = 0;
			if (verbose && !reported30)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported30 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][30] = 1;
		if (!( !((((int)now.EP)==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 180: // STATE 32 - _spin_nvr.tmp:45 - [((!((EP==2))&&(EP>=2)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported32 = 0;
			if (verbose && !reported32)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported32 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported32 = 0;
			if (verbose && !reported32)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported32 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][32] = 1;
		if (!(( !((((int)now.EP)==2))&&(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 181: // STATE 37 - _spin_nvr.tmp:49 - [((!((EP==2))&&(EP>=2)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported37 = 0;
			if (verbose && !reported37)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported37 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported37 = 0;
			if (verbose && !reported37)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported37 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][37] = 1;
		if (!(( !((((int)now.EP)==2))&&(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 182: // STATE 39 - _spin_nvr.tmp:50 - [(!((EP==2)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported39 = 0;
			if (verbose && !reported39)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported39 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported39 = 0;
			if (verbose && !reported39)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported39 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][39] = 1;
		if (!( !((((int)now.EP)==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 183: // STATE 41 - _spin_nvr.tmp:51 - [((!((pending_exp>0))&&!((EP==2))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported41 = 0;
			if (verbose && !reported41)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported41 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported41 = 0;
			if (verbose && !reported41)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported41 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][41] = 1;
		if (!(( !((((int)now.pending_exp)>0))&& !((((int)now.EP)==2)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 184: // STATE 46 - _spin_nvr.tmp:55 - [(!((EP==2)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported46 = 0;
			if (verbose && !reported46)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported46 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported46 = 0;
			if (verbose && !reported46)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported46 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][46] = 1;
		if (!( !((((int)now.EP)==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 185: // STATE 48 - _spin_nvr.tmp:56 - [(((!((pending_exp>0))&&!((EP==2)))||(!((EP==2))&&(EP>=2))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported48 = 0;
			if (verbose && !reported48)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported48 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported48 = 0;
			if (verbose && !reported48)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported48 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][48] = 1;
		if (!((( !((((int)now.pending_exp)>0))&& !((((int)now.EP)==2)))||( !((((int)now.EP)==2))&&(((int)now.EP)>=2)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 186: // STATE 53 - _spin_nvr.tmp:60 - [(!((EP==2)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported53 = 0;
			if (verbose && !reported53)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported53 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported53 = 0;
			if (verbose && !reported53)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported53 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][53] = 1;
		if (!( !((((int)now.EP)==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 187: // STATE 55 - _spin_nvr.tmp:61 - [((!((EP==2))&&(EP>=2)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported55 = 0;
			if (verbose && !reported55)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported55 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported55 = 0;
			if (verbose && !reported55)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported55 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][55] = 1;
		if (!(( !((((int)now.EP)==2))&&(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 188: // STATE 57 - _spin_nvr.tmp:62 - [((!((EP==2))&&(EP>=2)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported57 = 0;
			if (verbose && !reported57)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported57 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported57 = 0;
			if (verbose && !reported57)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported57 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][57] = 1;
		if (!(( !((((int)now.EP)==2))&&(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 189: // STATE 62 - _spin_nvr.tmp:66 - [((!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==2))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported62 = 0;
			if (verbose && !reported62)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported62 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported62 = 0;
			if (verbose && !reported62)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported62 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][62] = 1;
		if (!(( !( !(((((int)now.tcb[2].state)==1)&&(((((int)now.pending_exp)>>1)&1)==1))))&& !((((int)now.EP)==2)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 190: // STATE 64 - _spin_nvr.tmp:67 - [((EP>=2))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported64 = 0;
			if (verbose && !reported64)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported64 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported64 = 0;
			if (verbose && !reported64)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported64 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][64] = 1;
		if (!((((int)now.EP)>=2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 191: // STATE 68 - _spin_nvr.tmp:69 - [(((!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==2)))&&(EP>=2)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported68 = 0;
			if (verbose && !reported68)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported68 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported68 = 0;
			if (verbose && !reported68)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported68 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][68] = 1;
		if (!((( !( !(((((int)now.tcb[2].state)==1)&&(((((int)now.pending_exp)>>1)&1)==1))))&& !((((int)now.EP)==2)))&&(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 192: // STATE 70 - _spin_nvr.tmp:70 - [(((!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==2)))&&(EP>=2)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported70 = 0;
			if (verbose && !reported70)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported70 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported70 = 0;
			if (verbose && !reported70)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported70 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][70] = 1;
		if (!((( !( !(((((int)now.tcb[2].state)==1)&&(((((int)now.pending_exp)>>1)&1)==1))))&& !((((int)now.EP)==2)))&&(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 193: // STATE 75 - _spin_nvr.tmp:72 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported75 = 0;
			if (verbose && !reported75)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported75 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported75 = 0;
			if (verbose && !reported75)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported75 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][75] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM exc_leads_to_user */
	case 194: // STATE 1 - _spin_nvr.tmp:14 - [((!(!((EP<2)))&&!((EP>=2))))] (0:0:0 - 1)
		
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
		reached[6][1] = 1;
		if (!(( !( !((((int)now.EP)<2)))&& !((((int)now.EP)>=2)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 195: // STATE 8 - _spin_nvr.tmp:19 - [(!((EP>=2)))] (0:0:0 - 1)
		
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
		reached[6][8] = 1;
		if (!( !((((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 196: // STATE 13 - _spin_nvr.tmp:21 - [-end-] (0:0:0 - 1)
		
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
		reached[6][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM back_to_user */
	case 197: // STATE 1 - _spin_nvr.tmp:3 - [(!((EP>=2)))] (0:0:0 - 1)
		
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
		if (!( !((((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 198: // STATE 8 - _spin_nvr.tmp:8 - [(!((EP>=2)))] (0:0:0 - 1)
		
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
		reached[5][8] = 1;
		if (!( !((((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 199: // STATE 13 - _spin_nvr.tmp:10 - [-end-] (0:0:0 - 1)
		
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
		reached[5][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC :init: */
	case 200: // STATE 1 - processes.pml:33 - [i = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[4][1] = 1;
		(trpt+1)->bup.oval = ((int)((P4 *)_this)->i);
		((P4 *)_this)->i = 0;
#ifdef VAR_RANGES
		logval(":init::i", ((int)((P4 *)_this)->i));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 201: // STATE 2 - processes.pml:35 - [((i<4))] (0:0:0 - 1)
		IfNotBlocked
		reached[4][2] = 1;
		if (!((((int)((P4 *)_this)->i)<4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 202: // STATE 3 - data_structures.pml:123 - [idx = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[4][3] = 1;
		(trpt+1)->bup.oval = ((int)((P4 *)_this)->_8_20_idx);
		((P4 *)_this)->_8_20_idx = 0;
#ifdef VAR_RANGES
		logval(":init::idx", ((int)((P4 *)_this)->_8_20_idx));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 203: // STATE 4 - data_structures.pml:124 - [((idx<5))] (0:0:0 - 1)
		IfNotBlocked
		reached[4][4] = 1;
		if (!((((int)((P4 *)_this)->_8_20_idx)<5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 204: // STATE 5 - data_structures.pml:125 - [readyQueue[i].tasks[idx] = 255] (0:0:1 - 1)
		IfNotBlocked
		reached[4][5] = 1;
		(trpt+1)->bup.oval = ((int)now.readyQueue[ Index(((int)((P4 *)_this)->i), 4) ].tasks[ Index(((int)((P4 *)_this)->_8_20_idx), 5) ]);
		now.readyQueue[ Index(((P4 *)_this)->i, 4) ].tasks[ Index(((P4 *)_this)->_8_20_idx, 5) ] = 255;
#ifdef VAR_RANGES
		logval("readyQueue[:init::i].tasks[:init::idx]", ((int)now.readyQueue[ Index(((int)((P4 *)_this)->i), 4) ].tasks[ Index(((int)((P4 *)_this)->_8_20_idx), 5) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 205: // STATE 6 - data_structures.pml:126 - [idx = (idx+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[4][6] = 1;
		(trpt+1)->bup.oval = ((int)((P4 *)_this)->_8_20_idx);
		((P4 *)_this)->_8_20_idx = (((int)((P4 *)_this)->_8_20_idx)+1);
#ifdef VAR_RANGES
		logval(":init::idx", ((int)((P4 *)_this)->_8_20_idx));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 206: // STATE 12 - data_structures.pml:129 - [readyQueue[i].tailIndex = 0] (0:0:1 - 3)
		IfNotBlocked
		reached[4][12] = 1;
		(trpt+1)->bup.oval = ((int)now.readyQueue[ Index(((int)((P4 *)_this)->i), 4) ].tailIndex);
		now.readyQueue[ Index(((P4 *)_this)->i, 4) ].tailIndex = 0;
#ifdef VAR_RANGES
		logval("readyQueue[:init::i].tailIndex", ((int)now.readyQueue[ Index(((int)((P4 *)_this)->i), 4) ].tailIndex));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 207: // STATE 14 - processes.pml:37 - [i = (i+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[4][14] = 1;
		(trpt+1)->bup.oval = ((int)((P4 *)_this)->i);
		((P4 *)_this)->i = (((int)((P4 *)_this)->i)+1);
#ifdef VAR_RANGES
		logval(":init::i", ((int)((P4 *)_this)->i));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 208: // STATE 20 - processes.pml:42 - [tcb[2].prio = 2] (0:0:1 - 3)
		IfNotBlocked
		reached[4][20] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[2].prio);
		now.tcb[2].prio = 2;
#ifdef VAR_RANGES
		logval("tcb[2].prio", ((int)now.tcb[2].prio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 209: // STATE 21 - processes.pml:42 - [tcb[2].state = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[4][21] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[2].state);
		now.tcb[2].state = 1;
#ifdef VAR_RANGES
		logval("tcb[2].state", ((int)now.tcb[2].state));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 210: // STATE 22 - data_structures.pml:135 - [((readyQueue[2].tailIndex<5))] (0:0:0 - 1)
		IfNotBlocked
		reached[4][22] = 1;
		if (!((((int)now.readyQueue[2].tailIndex)<5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 211: // STATE 23 - data_structures.pml:136 - [readyQueue[2].tasks[readyQueue[2].tailIndex] = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[4][23] = 1;
		(trpt+1)->bup.oval = ((int)now.readyQueue[2].tasks[ Index(((int)now.readyQueue[2].tailIndex), 5) ]);
		now.readyQueue[2].tasks[ Index(now.readyQueue[2].tailIndex, 5) ] = 2;
#ifdef VAR_RANGES
		logval("readyQueue[2].tasks[readyQueue[2].tailIndex]", ((int)now.readyQueue[2].tasks[ Index(((int)now.readyQueue[2].tailIndex), 5) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 212: // STATE 24 - data_structures.pml:137 - [readyQueue[2].tailIndex = (readyQueue[2].tailIndex+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[4][24] = 1;
		(trpt+1)->bup.oval = ((int)now.readyQueue[2].tailIndex);
		now.readyQueue[2].tailIndex = (((int)now.readyQueue[2].tailIndex)+1);
#ifdef VAR_RANGES
		logval("readyQueue[2].tailIndex", ((int)now.readyQueue[2].tailIndex));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 213: // STATE 26 - data_structures.pml:138 - [assert(0)] (0:0:0 - 1)
		IfNotBlocked
		reached[4][26] = 1;
		spin_assert(0, "0", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 214: // STATE 30 - processes.pml:43 - [tcb[(2+1)].prio = 2] (0:0:1 - 3)
		IfNotBlocked
		reached[4][30] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[ Index((2+1), 4) ].prio);
		now.tcb[ Index((2+1), 4) ].prio = 2;
#ifdef VAR_RANGES
		logval("tcb[(2+1)].prio", ((int)now.tcb[ Index((2+1), 4) ].prio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 215: // STATE 31 - processes.pml:43 - [tcb[(2+1)].state = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[4][31] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[ Index((2+1), 4) ].state);
		now.tcb[ Index((2+1), 4) ].state = 1;
#ifdef VAR_RANGES
		logval("tcb[(2+1)].state", ((int)now.tcb[ Index((2+1), 4) ].state));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 216: // STATE 32 - data_structures.pml:135 - [((readyQueue[2].tailIndex<5))] (0:0:0 - 1)
		IfNotBlocked
		reached[4][32] = 1;
		if (!((((int)now.readyQueue[2].tailIndex)<5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 217: // STATE 33 - data_structures.pml:136 - [readyQueue[2].tasks[readyQueue[2].tailIndex] = (2+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[4][33] = 1;
		(trpt+1)->bup.oval = ((int)now.readyQueue[2].tasks[ Index(((int)now.readyQueue[2].tailIndex), 5) ]);
		now.readyQueue[2].tasks[ Index(now.readyQueue[2].tailIndex, 5) ] = (2+1);
#ifdef VAR_RANGES
		logval("readyQueue[2].tasks[readyQueue[2].tailIndex]", ((int)now.readyQueue[2].tasks[ Index(((int)now.readyQueue[2].tailIndex), 5) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 218: // STATE 34 - data_structures.pml:137 - [readyQueue[2].tailIndex = (readyQueue[2].tailIndex+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[4][34] = 1;
		(trpt+1)->bup.oval = ((int)now.readyQueue[2].tailIndex);
		now.readyQueue[2].tailIndex = (((int)now.readyQueue[2].tailIndex)+1);
#ifdef VAR_RANGES
		logval("readyQueue[2].tailIndex", ((int)now.readyQueue[2].tailIndex));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 219: // STATE 36 - data_structures.pml:138 - [assert(0)] (0:0:0 - 1)
		IfNotBlocked
		reached[4][36] = 1;
		spin_assert(0, "0", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 220: // STATE 40 - processes.pml:46 - [EP = 2] (0:0:1 - 3)
		IfNotBlocked
		reached[4][40] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 221: // STATE 41 - processes.pml:47 - [topPrio = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[4][41] = 1;
		(trpt+1)->bup.oval = ((int)now.topPrio);
		now.topPrio = 2;
#ifdef VAR_RANGES
		logval("topPrio", ((int)now.topPrio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 222: // STATE 42 - data_structures.pml:145 - [idx = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[4][42] = 1;
		(trpt+1)->bup.oval = ((int)((P4 *)_this)->_8_23_idx);
		((P4 *)_this)->_8_23_idx = 0;
#ifdef VAR_RANGES
		logval(":init::idx", ((int)((P4 *)_this)->_8_23_idx));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 223: // STATE 43 - data_structures.pml:146 - [((idx<(readyQueue[topPrio].tailIndex-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[4][43] = 1;
		if (!((((int)((P4 *)_this)->_8_23_idx)<(((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 224: // STATE 44 - data_structures.pml:147 - [readyQueue[topPrio].tasks[idx] = readyQueue[topPrio].tasks[(idx+1)]] (0:0:1 - 1)
		IfNotBlocked
		reached[4][44] = 1;
		(trpt+1)->bup.oval = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index(((int)((P4 *)_this)->_8_23_idx), 5) ]);
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index(((P4 *)_this)->_8_23_idx, 5) ] = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index((((int)((P4 *)_this)->_8_23_idx)+1), 5) ]);
#ifdef VAR_RANGES
		logval("readyQueue[topPrio].tasks[:init::idx]", ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index(((int)((P4 *)_this)->_8_23_idx), 5) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 225: // STATE 45 - data_structures.pml:148 - [idx = (idx+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[4][45] = 1;
		(trpt+1)->bup.oval = ((int)((P4 *)_this)->_8_23_idx);
		((P4 *)_this)->_8_23_idx = (((int)((P4 *)_this)->_8_23_idx)+1);
#ifdef VAR_RANGES
		logval(":init::idx", ((int)((P4 *)_this)->_8_23_idx));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 226: // STATE 51 - data_structures.pml:152 - [((readyQueue[topPrio].tailIndex>0))] (0:0:0 - 1)
		IfNotBlocked
		reached[4][51] = 1;
		if (!((((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 227: // STATE 52 - data_structures.pml:153 - [readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)] = 255] (0:0:1 - 1)
		IfNotBlocked
		reached[4][52] = 1;
		(trpt+1)->bup.oval = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index((((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1), 5) ]);
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index((now.readyQueue[ Index(now.topPrio, 4) ].tailIndex-1), 5) ] = 255;
#ifdef VAR_RANGES
		logval("readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)]", ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index((((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1), 5) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 228: // STATE 53 - data_structures.pml:154 - [readyQueue[topPrio].tailIndex = (readyQueue[topPrio].tailIndex-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[4][53] = 1;
		(trpt+1)->bup.oval = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex);
		now.readyQueue[ Index(now.topPrio, 4) ].tailIndex = (((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1);
#ifdef VAR_RANGES
		logval("readyQueue[topPrio].tailIndex", ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 229: // STATE 59 - processes.pml:49 - [tcb[EP].state = 4] (0:0:1 - 3)
		IfNotBlocked
		reached[4][59] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[ Index(((int)now.EP), 4) ].state);
		now.tcb[ Index(now.EP, 4) ].state = 4;
#ifdef VAR_RANGES
		logval("tcb[EP].state", ((int)now.tcb[ Index(((int)now.EP), 4) ].state));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 230: // STATE 60 - processes.pml:52 - [(run PendSV_Handler())] (0:0:0 - 1)
		IfNotBlocked
		reached[4][60] = 1;
		if (!(addproc(II, 1, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 231: // STATE 61 - processes.pml:52 - [(run SysTick_Handler())] (0:0:0 - 1)
		IfNotBlocked
		reached[4][61] = 1;
		if (!(addproc(II, 1, 1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 232: // STATE 63 - processes.pml:53 - [(run Process2())] (0:0:0 - 1)
		IfNotBlocked
		reached[4][63] = 1;
		if (!(addproc(II, 1, 3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 233: // STATE 64 - processes.pml:54 - [(run Process1())] (0:0:0 - 1)
		IfNotBlocked
		reached[4][64] = 1;
		if (!(addproc(II, 1, 2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 234: // STATE 65 - processes.pml:55 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[4][65] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Process2 */
	case 235: // STATE 1 - processes.pml:16 - [(((2+1)==EP))] (8:0:0 - 1)
		IfNotBlocked
		reached[3][1] = 1;
		if (!(((2+1)==((int)now.EP))))
			continue;
		/* merge: printf('P2 running\\n')(0, 2, 8) */
		reached[3][2] = 1;
		Printf("P2 running\n");
		_m = 3; goto P999; /* 1 */
	case 236: // STATE 4 - data_structures.pml:44 - [assert(((1<2)&&(1<8)))] (0:23:1 - 1)
		IfNotBlocked
		reached[3][4] = 1;
		spin_assert(((1<2)&&(1<8)), "((1<2)&&(1<8))", II, tt, t);
		/* merge: pending_exp = (pending_exp|(1<<1))(23, 5, 23) */
		reached[3][5] = 1;
		(trpt+1)->bup.oval = ((int)now.pending_exp);
		now.pending_exp = (((int)now.pending_exp)|(1<<1));
#ifdef VAR_RANGES
		logval("pending_exp", ((int)now.pending_exp));
#endif
		;
		/* merge: .(goto)(0, 9, 23) */
		reached[3][9] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 237: // STATE 10 - processes.pml:16 - [((((((pending_exp>>0)&1)&&((BASEPRI==0)||(15<BASEPRI)))||(((pending_exp>>1)&1)&&((BASEPRI==0)||(15<BASEPRI))))&&(EP>=2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][10] = 1;
		if (!((((((((int)now.pending_exp)>>0)&1)&&((((int)now.BASEPRI)==0)||(15<((int)now.BASEPRI))))||(((((int)now.pending_exp)>>1)&1)&&((((int)now.BASEPRI)==0)||(15<((int)now.BASEPRI)))))&&(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 238: // STATE 11 - processes.pml:16 - [((EP>=2))] (19:0:1 - 1)
		IfNotBlocked
		reached[3][11] = 1;
		if (!((((int)now.EP)>=2)))
			continue;
		/* merge: chain_tick_used = 0(0, 12, 19) */
		reached[3][12] = 1;
		(trpt+1)->bup.oval = ((int)now.chain_tick_used);
		now.chain_tick_used = 0;
#ifdef VAR_RANGES
		logval("chain_tick_used", ((int)now.chain_tick_used));
#endif
		;
		/* merge: .(goto)(0, 16, 19) */
		reached[3][16] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 239: // STATE 17 - data_structures.pml:56 - [assert((EP_Stack==255))] (0:115:2 - 1)
		IfNotBlocked
		reached[3][17] = 1;
		spin_assert((((int)now.EP_Stack)==255), "(EP_Stack==255)", II, tt, t);
		/* merge: EP_Stack = EP(115, 18, 115) */
		reached[3][18] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.EP_Stack);
		now.EP_Stack = ((int)now.EP);
#ifdef VAR_RANGES
		logval("EP_Stack", ((int)now.EP_Stack));
#endif
		;
		/* merge: EP = ( (((pending_exp>>0)&1)) -> (0) : (1) )(115, 20, 115) */
		reached[3][20] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.EP);
		now.EP = ( (((((int)now.pending_exp)>>0)&1)) ? (0) : (1) );
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: .(goto)(115, 24, 115) */
		reached[3][24] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 240: // STATE 24 - processes.pml:16 - [.(goto)] (0:115:0 - 2)
		IfNotBlocked
		reached[3][24] = 1;
		;
		_m = 3; goto P999; /* 0 */
	case 241: // STATE 22 - processes.pml:16 - [(1)] (115:0:0 - 1)
		IfNotBlocked
		reached[3][22] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(115, 24, 115) */
		reached[3][24] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 242: // STATE 26 - processes.pml:17 - [(((2+1)==EP))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][26] = 1;
		if (!(((2+1)==((int)now.EP))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 243: // STATE 27 - scheduler.pml:50 - [intSave = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[3][27] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)_this)->_7_16_29_intSave);
		((P3 *)_this)->_7_16_29_intSave = 0;
#ifdef VAR_RANGES
		logval("Process2:intSave", ((int)((P3 *)_this)->_7_16_29_intSave));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 244: // STATE 28 - data_structures.pml:101 - [intSave = 0] (0:79:2 - 1)
		IfNotBlocked
		reached[3][28] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P3 *)_this)->_7_16_29_intSave);
		((P3 *)_this)->_7_16_29_intSave = 0;
#ifdef VAR_RANGES
		logval("Process2:intSave", ((int)((P3 *)_this)->_7_16_29_intSave));
#endif
		;
		/* merge: assert(((tcb[2].state==1)||(tcb[2].state==2)))(79, 30, 79) */
		reached[3][30] = 1;
		spin_assert(((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==2)), "((tcb[2].state==1)||(tcb[2].state==2))", II, tt, t);
		/* merge: needSched = 0(79, 31, 79) */
		reached[3][31] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P3 *)_this)->_7_16_29_needSched);
		((P3 *)_this)->_7_16_29_needSched = 0;
#ifdef VAR_RANGES
		logval("Process2:needSched", ((int)((P3 *)_this)->_7_16_29_needSched));
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 245: // STATE 32 - scheduler.pml:58 - [((tcb[2].state==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][32] = 1;
		if (!((((int)now.tcb[2].state)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 246: // STATE 33 - scheduler.pml:40 - [assert((tcb[2].state==1))] (0:66:1 - 1)
		IfNotBlocked
		reached[3][33] = 1;
		spin_assert((((int)now.tcb[2].state)==1), "(tcb[2].state==1)", II, tt, t);
		/* merge: needSched = 1(66, 34, 66) */
		reached[3][34] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)_this)->_7_16_29_needSched);
		((P3 *)_this)->_7_16_29_needSched = 1;
#ifdef VAR_RANGES
		logval("Process2:needSched", ((int)((P3 *)_this)->_7_16_29_needSched));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 247: // STATE 35 - data_structures.pml:163 - [idx = 0] (0:47:3 - 1)
		IfNotBlocked
		reached[3][35] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)((P3 *)_this)->_7_16_29_24_6_idx);
		((P3 *)_this)->_7_16_29_24_6_idx = 0;
#ifdef VAR_RANGES
		logval("Process2:idx", ((int)((P3 *)_this)->_7_16_29_24_6_idx));
#endif
		;
		/* merge: found = 0(47, 36, 47) */
		reached[3][36] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P3 *)_this)->_7_16_29_24_6_found);
		((P3 *)_this)->_7_16_29_24_6_found = 0;
#ifdef VAR_RANGES
		logval("Process2:found", ((int)((P3 *)_this)->_7_16_29_24_6_found));
#endif
		;
		/* merge: prioLevel = tcb[2].prio(47, 37, 47) */
		reached[3][37] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P3 *)_this)->_7_16_29_24_6_prioLevel);
		((P3 *)_this)->_7_16_29_24_6_prioLevel = ((int)now.tcb[2].prio);
#ifdef VAR_RANGES
		logval("Process2:prioLevel", ((int)((P3 *)_this)->_7_16_29_24_6_prioLevel));
#endif
		;
		/* merge: .(goto)(0, 48, 47) */
		reached[3][48] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 248: // STATE 38 - data_structures.pml:166 - [(((idx<readyQueue[prioLevel].tailIndex)&&!(found)))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][38] = 1;
		if (!(((((int)((P3 *)_this)->_7_16_29_24_6_idx)<((int)now.readyQueue[ Index(((int)((P3 *)_this)->_7_16_29_24_6_prioLevel), 4) ].tailIndex))&& !(((int)((P3 *)_this)->_7_16_29_24_6_found)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 249: // STATE 39 - data_structures.pml:168 - [((readyQueue[prioLevel].tasks[idx]==2))] (47:0:1 - 1)
		IfNotBlocked
		reached[3][39] = 1;
		if (!((((int)now.readyQueue[ Index(((int)((P3 *)_this)->_7_16_29_24_6_prioLevel), 4) ].tasks[ Index(((int)((P3 *)_this)->_7_16_29_24_6_idx), 5) ])==2)))
			continue;
		/* merge: found = 1(0, 40, 47) */
		reached[3][40] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)_this)->_7_16_29_24_6_found);
		((P3 *)_this)->_7_16_29_24_6_found = 1;
#ifdef VAR_RANGES
		logval("Process2:found", ((int)((P3 *)_this)->_7_16_29_24_6_found));
#endif
		;
		/* merge: .(goto)(0, 44, 47) */
		reached[3][44] = 1;
		;
		/* merge: .(goto)(0, 48, 47) */
		reached[3][48] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 250: // STATE 42 - data_structures.pml:170 - [idx = (idx+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[3][42] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)_this)->_7_16_29_24_6_idx);
		((P3 *)_this)->_7_16_29_24_6_idx = (((int)((P3 *)_this)->_7_16_29_24_6_idx)+1);
#ifdef VAR_RANGES
		logval("Process2:idx", ((int)((P3 *)_this)->_7_16_29_24_6_idx));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 251: // STATE 50 - data_structures.pml:174 - [assert((found==1))] (0:56:0 - 3)
		IfNotBlocked
		reached[3][50] = 1;
		spin_assert((((int)((P3 *)_this)->_7_16_29_24_6_found)==1), "(found==1)", II, tt, t);
		/* merge: .(goto)(0, 57, 56) */
		reached[3][57] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 252: // STATE 51 - data_structures.pml:176 - [((idx<(readyQueue[prioLevel].tailIndex-1)))] (56:0:2 - 1)
		IfNotBlocked
		reached[3][51] = 1;
		if (!((((int)((P3 *)_this)->_7_16_29_24_6_idx)<(((int)now.readyQueue[ Index(((int)((P3 *)_this)->_7_16_29_24_6_prioLevel), 4) ].tailIndex)-1))))
			continue;
		/* merge: readyQueue[prioLevel].tasks[idx] = readyQueue[prioLevel].tasks[(idx+1)](56, 52, 56) */
		reached[3][52] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.readyQueue[ Index(((int)((P3 *)_this)->_7_16_29_24_6_prioLevel), 4) ].tasks[ Index(((int)((P3 *)_this)->_7_16_29_24_6_idx), 5) ]);
		now.readyQueue[ Index(((P3 *)_this)->_7_16_29_24_6_prioLevel, 4) ].tasks[ Index(((P3 *)_this)->_7_16_29_24_6_idx, 5) ] = ((int)now.readyQueue[ Index(((int)((P3 *)_this)->_7_16_29_24_6_prioLevel), 4) ].tasks[ Index((((int)((P3 *)_this)->_7_16_29_24_6_idx)+1), 5) ]);
#ifdef VAR_RANGES
		logval("readyQueue[Process2:prioLevel].tasks[Process2:idx]", ((int)now.readyQueue[ Index(((int)((P3 *)_this)->_7_16_29_24_6_prioLevel), 4) ].tasks[ Index(((int)((P3 *)_this)->_7_16_29_24_6_idx), 5) ]));
#endif
		;
		/* merge: idx = (idx+1)(56, 53, 56) */
		reached[3][53] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P3 *)_this)->_7_16_29_24_6_idx);
		((P3 *)_this)->_7_16_29_24_6_idx = (((int)((P3 *)_this)->_7_16_29_24_6_idx)+1);
#ifdef VAR_RANGES
		logval("Process2:idx", ((int)((P3 *)_this)->_7_16_29_24_6_idx));
#endif
		;
		/* merge: .(goto)(0, 57, 56) */
		reached[3][57] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 253: // STATE 59 - data_structures.pml:182 - [((readyQueue[prioLevel].tailIndex>0))] (74:0:3 - 1)
		IfNotBlocked
		reached[3][59] = 1;
		if (!((((int)now.readyQueue[ Index(((int)((P3 *)_this)->_7_16_29_24_6_prioLevel), 4) ].tailIndex)>0)))
			continue;
		/* merge: readyQueue[prioLevel].tasks[(readyQueue[prioLevel].tailIndex-1)] = 255(74, 60, 74) */
		reached[3][60] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.readyQueue[ Index(((int)((P3 *)_this)->_7_16_29_24_6_prioLevel), 4) ].tasks[ Index((((int)now.readyQueue[ Index(((int)((P3 *)_this)->_7_16_29_24_6_prioLevel), 4) ].tailIndex)-1), 5) ]);
		now.readyQueue[ Index(((P3 *)_this)->_7_16_29_24_6_prioLevel, 4) ].tasks[ Index((now.readyQueue[ Index(((P3 *)_this)->_7_16_29_24_6_prioLevel, 4) ].tailIndex-1), 5) ] = 255;
#ifdef VAR_RANGES
		logval("readyQueue[Process2:prioLevel].tasks[(readyQueue[Process2:prioLevel].tailIndex-1)]", ((int)now.readyQueue[ Index(((int)((P3 *)_this)->_7_16_29_24_6_prioLevel), 4) ].tasks[ Index((((int)now.readyQueue[ Index(((int)((P3 *)_this)->_7_16_29_24_6_prioLevel), 4) ].tailIndex)-1), 5) ]));
#endif
		;
		/* merge: readyQueue[prioLevel].tailIndex = (readyQueue[prioLevel].tailIndex-1)(74, 61, 74) */
		reached[3][61] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.readyQueue[ Index(((int)((P3 *)_this)->_7_16_29_24_6_prioLevel), 4) ].tailIndex);
		now.readyQueue[ Index(((P3 *)_this)->_7_16_29_24_6_prioLevel, 4) ].tailIndex = (((int)now.readyQueue[ Index(((int)((P3 *)_this)->_7_16_29_24_6_prioLevel), 4) ].tailIndex)-1);
#ifdef VAR_RANGES
		logval("readyQueue[Process2:prioLevel].tailIndex", ((int)now.readyQueue[ Index(((int)((P3 *)_this)->_7_16_29_24_6_prioLevel), 4) ].tailIndex));
#endif
		;
		/* merge: .(goto)(74, 65, 74) */
		reached[3][65] = 1;
		;
		/* merge: tcb[2].state = 3(74, 67, 74) */
		reached[3][67] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.tcb[2].state);
		now.tcb[2].state = 3;
#ifdef VAR_RANGES
		logval("tcb[2].state", ((int)now.tcb[2].state));
#endif
		;
		_m = 3; goto P999; /* 4 */
	case 254: // STATE 63 - data_structures.pml:185 - [(1)] (74:0:1 - 1)
		IfNotBlocked
		reached[3][63] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(74, 65, 74) */
		reached[3][65] = 1;
		;
		/* merge: tcb[2].state = 3(74, 67, 74) */
		reached[3][67] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[2].state);
		now.tcb[2].state = 3;
#ifdef VAR_RANGES
		logval("tcb[2].state", ((int)now.tcb[2].state));
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 255: // STATE 67 - scheduler.pml:43 - [tcb[2].state = 3] (0:74:1 - 3)
		IfNotBlocked
		reached[3][67] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[2].state);
		now.tcb[2].state = 3;
#ifdef VAR_RANGES
		logval("tcb[2].state", ((int)now.tcb[2].state));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 256: // STATE 68 - data_structures.pml:211 - [assert((g_taskSortLinkTail<(2+1)))] (0:90:4 - 1)
		IfNotBlocked
		reached[3][68] = 1;
		spin_assert((((int)now.g_taskSortLinkTail)<(2+1)), "(g_taskSortLinkTail<(2+1))", II, tt, t);
		/* merge: assert((g_taskSortLinkTail>=0))(90, 69, 90) */
		reached[3][69] = 1;
		spin_assert((((int)now.g_taskSortLinkTail)>=0), "(g_taskSortLinkTail>=0)", II, tt, t);
		/* merge: g_taskSortLink[g_taskSortLinkTail].taskId = 2(90, 70, 90) */
		reached[3][70] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((int)now.g_taskSortLink[ Index(((int)now.g_taskSortLinkTail), 3) ].taskId);
		now.g_taskSortLink[ Index(now.g_taskSortLinkTail, 3) ].taskId = 2;
#ifdef VAR_RANGES
		logval("g_taskSortLink[g_taskSortLinkTail].taskId", ((int)now.g_taskSortLink[ Index(((int)now.g_taskSortLinkTail), 3) ].taskId));
#endif
		;
		/* merge: g_taskSortLink[g_taskSortLinkTail].responseTime = 255(90, 71, 90) */
		reached[3][71] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.g_taskSortLink[ Index(((int)now.g_taskSortLinkTail), 3) ].responseTime);
		now.g_taskSortLink[ Index(now.g_taskSortLinkTail, 3) ].responseTime = 255;
#ifdef VAR_RANGES
		logval("g_taskSortLink[g_taskSortLinkTail].responseTime", ((int)now.g_taskSortLink[ Index(((int)now.g_taskSortLinkTail), 3) ].responseTime));
#endif
		;
		/* merge: tcb[2].pendList = g_taskSortLinkTail(90, 72, 90) */
		reached[3][72] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.tcb[2].pendList);
		now.tcb[2].pendList = ((int)now.g_taskSortLinkTail);
#ifdef VAR_RANGES
		logval("tcb[2].pendList", ((int)now.tcb[2].pendList));
#endif
		;
		/* merge: g_taskSortLinkTail = (g_taskSortLinkTail+1)(90, 73, 90) */
		reached[3][73] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.g_taskSortLinkTail);
		now.g_taskSortLinkTail = (((int)now.g_taskSortLinkTail)+1);
#ifdef VAR_RANGES
		logval("g_taskSortLinkTail", ((int)now.g_taskSortLinkTail));
#endif
		;
		/* merge: .(goto)(0, 80, 90) */
		reached[3][80] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 257: // STATE 76 - scheduler.pml:61 - [((tcb[2].state==2))] (90:0:2 - 1)
		IfNotBlocked
		reached[3][76] = 1;
		if (!((((int)now.tcb[2].state)==2)))
			continue;
		/* merge: needSched = 1(90, 77, 90) */
		reached[3][77] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P3 *)_this)->_7_16_29_needSched);
		((P3 *)_this)->_7_16_29_needSched = 1;
#ifdef VAR_RANGES
		logval("Process2:needSched", ((int)((P3 *)_this)->_7_16_29_needSched));
#endif
		;
		/* merge: tcb[2].state = 3(90, 78, 90) */
		reached[3][78] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.tcb[2].state);
		now.tcb[2].state = 3;
#ifdef VAR_RANGES
		logval("tcb[2].state", ((int)now.tcb[2].state));
#endif
		;
		/* merge: .(goto)(0, 80, 90) */
		reached[3][80] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 258: // STATE 81 - scheduler.pml:69 - [((needSched&&g_taskScheduled))] (0:0:1 - 1)
		IfNotBlocked
		reached[3][81] = 1;
		if (!((((int)((P3 *)_this)->_7_16_29_needSched)&&((int)now.g_taskScheduled))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _7_16_29_needSched */  (trpt+1)->bup.oval = ((P3 *)_this)->_7_16_29_needSched;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P3 *)_this)->_7_16_29_needSched = 0;
		_m = 3; goto P999; /* 0 */
	case 259: // STATE 82 - data_structures.pml:106 - [intSave = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[3][82] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)_this)->_7_16_29_intSave);
		((P3 *)_this)->_7_16_29_intSave = 0;
#ifdef VAR_RANGES
		logval("Process2:intSave", ((int)((P3 *)_this)->_7_16_29_intSave));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 260: // STATE 84 - data_structures.pml:44 - [assert(((0<2)&&(0<8)))] (0:98:1 - 1)
		IfNotBlocked
		reached[3][84] = 1;
		spin_assert(((0<2)&&(0<8)), "((0<2)&&(0<8))", II, tt, t);
		/* merge: pending_exp = (pending_exp|(1<<0))(98, 85, 98) */
		reached[3][85] = 1;
		(trpt+1)->bup.oval = ((int)now.pending_exp);
		now.pending_exp = (((int)now.pending_exp)|(1<<0));
#ifdef VAR_RANGES
		logval("pending_exp", ((int)now.pending_exp));
#endif
		;
		/* merge: .(goto)(0, 91, 98) */
		reached[3][91] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 261: // STATE 94 - data_structures.pml:44 - [assert(((1<2)&&(1<8)))] (0:113:1 - 1)
		IfNotBlocked
		reached[3][94] = 1;
		spin_assert(((1<2)&&(1<8)), "((1<2)&&(1<8))", II, tt, t);
		/* merge: pending_exp = (pending_exp|(1<<1))(113, 95, 113) */
		reached[3][95] = 1;
		(trpt+1)->bup.oval = ((int)now.pending_exp);
		now.pending_exp = (((int)now.pending_exp)|(1<<1));
#ifdef VAR_RANGES
		logval("pending_exp", ((int)now.pending_exp));
#endif
		;
		/* merge: .(goto)(0, 99, 113) */
		reached[3][99] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 262: // STATE 100 - processes.pml:17 - [((((((pending_exp>>0)&1)&&((BASEPRI==0)||(15<BASEPRI)))||(((pending_exp>>1)&1)&&((BASEPRI==0)||(15<BASEPRI))))&&(EP>=2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][100] = 1;
		if (!((((((((int)now.pending_exp)>>0)&1)&&((((int)now.BASEPRI)==0)||(15<((int)now.BASEPRI))))||(((((int)now.pending_exp)>>1)&1)&&((((int)now.BASEPRI)==0)||(15<((int)now.BASEPRI)))))&&(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 263: // STATE 101 - processes.pml:17 - [((EP>=2))] (109:0:1 - 1)
		IfNotBlocked
		reached[3][101] = 1;
		if (!((((int)now.EP)>=2)))
			continue;
		/* merge: chain_tick_used = 0(0, 102, 109) */
		reached[3][102] = 1;
		(trpt+1)->bup.oval = ((int)now.chain_tick_used);
		now.chain_tick_used = 0;
#ifdef VAR_RANGES
		logval("chain_tick_used", ((int)now.chain_tick_used));
#endif
		;
		/* merge: .(goto)(0, 106, 109) */
		reached[3][106] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 264: // STATE 107 - data_structures.pml:56 - [assert((EP_Stack==255))] (0:184:2 - 1)
		IfNotBlocked
		reached[3][107] = 1;
		spin_assert((((int)now.EP_Stack)==255), "(EP_Stack==255)", II, tt, t);
		/* merge: EP_Stack = EP(184, 108, 184) */
		reached[3][108] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.EP_Stack);
		now.EP_Stack = ((int)now.EP);
#ifdef VAR_RANGES
		logval("EP_Stack", ((int)now.EP_Stack));
#endif
		;
		/* merge: EP = ( (((pending_exp>>0)&1)) -> (0) : (1) )(184, 110, 184) */
		reached[3][110] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.EP);
		now.EP = ( (((((int)now.pending_exp)>>0)&1)) ? (0) : (1) );
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: .(goto)(184, 114, 184) */
		reached[3][114] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 265: // STATE 114 - processes.pml:17 - [.(goto)] (0:184:0 - 2)
		IfNotBlocked
		reached[3][114] = 1;
		;
		_m = 3; goto P999; /* 0 */
	case 266: // STATE 112 - processes.pml:17 - [(1)] (184:0:0 - 1)
		IfNotBlocked
		reached[3][112] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(184, 114, 184) */
		reached[3][114] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 267: // STATE 116 - processes.pml:18 - [(((2+1)==EP))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][116] = 1;
		if (!(((2+1)==((int)now.EP))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 268: // STATE 117 - scheduler.pml:21 - [intSave = 0] (0:121:3 - 1)
		IfNotBlocked
		reached[3][117] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)((P3 *)_this)->_7_17_32_intSave);
		((P3 *)_this)->_7_17_32_intSave = 0;
#ifdef VAR_RANGES
		logval("Process2:intSave", ((int)((P3 *)_this)->_7_17_32_intSave));
#endif
		;
		/* merge: tempStatus = 0(121, 118, 121) */
		reached[3][118] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P3 *)_this)->_7_17_32_tempStatus);
		((P3 *)_this)->_7_17_32_tempStatus = 0;
#ifdef VAR_RANGES
		logval("Process2:tempStatus", ((int)((P3 *)_this)->_7_17_32_tempStatus));
#endif
		;
		/* merge: needSched = 0(121, 119, 121) */
		reached[3][119] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P3 *)_this)->_7_17_32_needSched);
		((P3 *)_this)->_7_17_32_needSched = 0;
#ifdef VAR_RANGES
		logval("Process2:needSched", ((int)((P3 *)_this)->_7_17_32_needSched));
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 269: // STATE 120 - data_structures.pml:101 - [intSave = 0] (0:149:2 - 1)
		IfNotBlocked
		reached[3][120] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P3 *)_this)->_7_17_32_intSave);
		((P3 *)_this)->_7_17_32_intSave = 0;
#ifdef VAR_RANGES
		logval("Process2:intSave", ((int)((P3 *)_this)->_7_17_32_intSave));
#endif
		;
		/* merge: tempStatus = tcb[2].state(149, 122, 149) */
		reached[3][122] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P3 *)_this)->_7_17_32_tempStatus);
		((P3 *)_this)->_7_17_32_tempStatus = ((int)now.tcb[2].state);
#ifdef VAR_RANGES
		logval("Process2:tempStatus", ((int)((P3 *)_this)->_7_17_32_tempStatus));
#endif
		;
		/* merge: assert((tempStatus==3))(149, 123, 149) */
		reached[3][123] = 1;
		spin_assert((((int)((P3 *)_this)->_7_17_32_tempStatus)==3), "(tempStatus==3)", II, tt, t);
		_m = 3; goto P999; /* 2 */
	case 270: // STATE 124 - scheduler.pml:11 - [assert((tcb[2].state==3))] (0:140:2 - 1)
		IfNotBlocked
		reached[3][124] = 1;
		spin_assert((((int)now.tcb[2].state)==3), "(tcb[2].state==3)", II, tt, t);
		/* merge: needSched = 1(140, 125, 140) */
		reached[3][125] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P3 *)_this)->_7_17_32_needSched);
		((P3 *)_this)->_7_17_32_needSched = 1;
#ifdef VAR_RANGES
		logval("Process2:needSched", ((int)((P3 *)_this)->_7_17_32_needSched));
#endif
		;
		/* merge: tcb[2].state = 1(140, 126, 140) */
		reached[3][126] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.tcb[2].state);
		now.tcb[2].state = 1;
#ifdef VAR_RANGES
		logval("tcb[2].state", ((int)now.tcb[2].state));
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 271: // STATE 127 - data_structures.pml:222 - [idx = tcb[2].pendList] (0:0:1 - 1)
		IfNotBlocked
		reached[3][127] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)_this)->_7_17_32_28_9_idx);
		((P3 *)_this)->_7_17_32_28_9_idx = ((int)now.tcb[2].pendList);
#ifdef VAR_RANGES
		logval("Process2:idx", ((int)((P3 *)_this)->_7_17_32_28_9_idx));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 272: // STATE 128 - data_structures.pml:223 - [((idx<(g_taskSortLinkTail-1)))] (134:0:3 - 1)
		IfNotBlocked
		reached[3][128] = 1;
		if (!((((int)((P3 *)_this)->_7_17_32_28_9_idx)<(((int)now.g_taskSortLinkTail)-1))))
			continue;
		/* merge: g_taskSortLink[idx].taskId = g_taskSortLink[(idx+1)].taskId(134, 129, 134) */
		reached[3][129] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.g_taskSortLink[ Index(((int)((P3 *)_this)->_7_17_32_28_9_idx), 3) ].taskId);
		now.g_taskSortLink[ Index(((P3 *)_this)->_7_17_32_28_9_idx, 3) ].taskId = ((int)now.g_taskSortLink[ Index((((int)((P3 *)_this)->_7_17_32_28_9_idx)+1), 3) ].taskId);
#ifdef VAR_RANGES
		logval("g_taskSortLink[Process2:idx].taskId", ((int)now.g_taskSortLink[ Index(((int)((P3 *)_this)->_7_17_32_28_9_idx), 3) ].taskId));
#endif
		;
		/* merge: g_taskSortLink[idx].responseTime = g_taskSortLink[(idx+1)].responseTime(134, 130, 134) */
		reached[3][130] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.g_taskSortLink[ Index(((int)((P3 *)_this)->_7_17_32_28_9_idx), 3) ].responseTime);
		now.g_taskSortLink[ Index(((P3 *)_this)->_7_17_32_28_9_idx, 3) ].responseTime = ((int)now.g_taskSortLink[ Index((((int)((P3 *)_this)->_7_17_32_28_9_idx)+1), 3) ].responseTime);
#ifdef VAR_RANGES
		logval("g_taskSortLink[Process2:idx].responseTime", ((int)now.g_taskSortLink[ Index(((int)((P3 *)_this)->_7_17_32_28_9_idx), 3) ].responseTime));
#endif
		;
		/* merge: idx = (idx+1)(134, 131, 134) */
		reached[3][131] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P3 *)_this)->_7_17_32_28_9_idx);
		((P3 *)_this)->_7_17_32_28_9_idx = (((int)((P3 *)_this)->_7_17_32_28_9_idx)+1);
#ifdef VAR_RANGES
		logval("Process2:idx", ((int)((P3 *)_this)->_7_17_32_28_9_idx));
#endif
		;
		/* merge: .(goto)(0, 135, 134) */
		reached[3][135] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 273: // STATE 137 - data_structures.pml:229 - [g_taskSortLink[(g_taskSortLinkTail-1)].taskId = 255] (0:148:3 - 3)
		IfNotBlocked
		reached[3][137] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.g_taskSortLink[ Index((((int)now.g_taskSortLinkTail)-1), 3) ].taskId);
		now.g_taskSortLink[ Index((now.g_taskSortLinkTail-1), 3) ].taskId = 255;
#ifdef VAR_RANGES
		logval("g_taskSortLink[(g_taskSortLinkTail-1)].taskId", ((int)now.g_taskSortLink[ Index((((int)now.g_taskSortLinkTail)-1), 3) ].taskId));
#endif
		;
		/* merge: g_taskSortLink[(g_taskSortLinkTail-1)].responseTime = 255(148, 138, 148) */
		reached[3][138] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.g_taskSortLink[ Index((((int)now.g_taskSortLinkTail)-1), 3) ].responseTime);
		now.g_taskSortLink[ Index((now.g_taskSortLinkTail-1), 3) ].responseTime = 255;
#ifdef VAR_RANGES
		logval("g_taskSortLink[(g_taskSortLinkTail-1)].responseTime", ((int)now.g_taskSortLink[ Index((((int)now.g_taskSortLinkTail)-1), 3) ].responseTime));
#endif
		;
		/* merge: g_taskSortLinkTail = (g_taskSortLinkTail-1)(148, 139, 148) */
		reached[3][139] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.g_taskSortLinkTail);
		now.g_taskSortLinkTail = (((int)now.g_taskSortLinkTail)-1);
#ifdef VAR_RANGES
		logval("g_taskSortLinkTail", ((int)now.g_taskSortLinkTail));
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 274: // STATE 141 - data_structures.pml:135 - [((readyQueue[tcb[2].prio].tailIndex<5))] (159:0:2 - 1)
		IfNotBlocked
		reached[3][141] = 1;
		if (!((((int)now.readyQueue[ Index(((int)now.tcb[2].prio), 4) ].tailIndex)<5)))
			continue;
		/* merge: readyQueue[tcb[2].prio].tasks[readyQueue[tcb[2].prio].tailIndex] = 2(159, 142, 159) */
		reached[3][142] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.readyQueue[ Index(((int)now.tcb[2].prio), 4) ].tasks[ Index(((int)now.readyQueue[ Index(((int)now.tcb[2].prio), 4) ].tailIndex), 5) ]);
		now.readyQueue[ Index(now.tcb[2].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[2].prio, 4) ].tailIndex, 5) ] = 2;
#ifdef VAR_RANGES
		logval("readyQueue[tcb[2].prio].tasks[readyQueue[tcb[2].prio].tailIndex]", ((int)now.readyQueue[ Index(((int)now.tcb[2].prio), 4) ].tasks[ Index(((int)now.readyQueue[ Index(((int)now.tcb[2].prio), 4) ].tailIndex), 5) ]));
#endif
		;
		/* merge: readyQueue[tcb[2].prio].tailIndex = (readyQueue[tcb[2].prio].tailIndex+1)(159, 143, 159) */
		reached[3][143] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.readyQueue[ Index(((int)now.tcb[2].prio), 4) ].tailIndex);
		now.readyQueue[ Index(now.tcb[2].prio, 4) ].tailIndex = (((int)now.readyQueue[ Index(((int)now.tcb[2].prio), 4) ].tailIndex)+1);
#ifdef VAR_RANGES
		logval("readyQueue[tcb[2].prio].tailIndex", ((int)now.readyQueue[ Index(((int)now.tcb[2].prio), 4) ].tailIndex));
#endif
		;
		/* merge: .(goto)(0, 147, 159) */
		reached[3][147] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 275: // STATE 145 - data_structures.pml:138 - [assert(0)] (0:0:0 - 1)
		IfNotBlocked
		reached[3][145] = 1;
		spin_assert(0, "0", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 276: // STATE 150 - scheduler.pml:31 - [((needSched&&g_taskScheduled))] (0:0:1 - 1)
		IfNotBlocked
		reached[3][150] = 1;
		if (!((((int)((P3 *)_this)->_7_17_32_needSched)&&((int)now.g_taskScheduled))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _7_17_32_needSched */  (trpt+1)->bup.oval = ((P3 *)_this)->_7_17_32_needSched;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P3 *)_this)->_7_17_32_needSched = 0;
		_m = 3; goto P999; /* 0 */
	case 277: // STATE 151 - data_structures.pml:106 - [intSave = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[3][151] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)_this)->_7_17_32_intSave);
		((P3 *)_this)->_7_17_32_intSave = 0;
#ifdef VAR_RANGES
		logval("Process2:intSave", ((int)((P3 *)_this)->_7_17_32_intSave));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 278: // STATE 153 - data_structures.pml:44 - [assert(((0<2)&&(0<8)))] (0:167:1 - 1)
		IfNotBlocked
		reached[3][153] = 1;
		spin_assert(((0<2)&&(0<8)), "((0<2)&&(0<8))", II, tt, t);
		/* merge: pending_exp = (pending_exp|(1<<0))(167, 154, 167) */
		reached[3][154] = 1;
		(trpt+1)->bup.oval = ((int)now.pending_exp);
		now.pending_exp = (((int)now.pending_exp)|(1<<0));
#ifdef VAR_RANGES
		logval("pending_exp", ((int)now.pending_exp));
#endif
		;
		/* merge: .(goto)(0, 160, 167) */
		reached[3][160] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 279: // STATE 163 - data_structures.pml:44 - [assert(((1<2)&&(1<8)))] (0:182:1 - 1)
		IfNotBlocked
		reached[3][163] = 1;
		spin_assert(((1<2)&&(1<8)), "((1<2)&&(1<8))", II, tt, t);
		/* merge: pending_exp = (pending_exp|(1<<1))(182, 164, 182) */
		reached[3][164] = 1;
		(trpt+1)->bup.oval = ((int)now.pending_exp);
		now.pending_exp = (((int)now.pending_exp)|(1<<1));
#ifdef VAR_RANGES
		logval("pending_exp", ((int)now.pending_exp));
#endif
		;
		/* merge: .(goto)(0, 168, 182) */
		reached[3][168] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 280: // STATE 169 - processes.pml:18 - [((((((pending_exp>>0)&1)&&((BASEPRI==0)||(15<BASEPRI)))||(((pending_exp>>1)&1)&&((BASEPRI==0)||(15<BASEPRI))))&&(EP>=2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][169] = 1;
		if (!((((((((int)now.pending_exp)>>0)&1)&&((((int)now.BASEPRI)==0)||(15<((int)now.BASEPRI))))||(((((int)now.pending_exp)>>1)&1)&&((((int)now.BASEPRI)==0)||(15<((int)now.BASEPRI)))))&&(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 281: // STATE 170 - processes.pml:18 - [((EP>=2))] (178:0:1 - 1)
		IfNotBlocked
		reached[3][170] = 1;
		if (!((((int)now.EP)>=2)))
			continue;
		/* merge: chain_tick_used = 0(0, 171, 178) */
		reached[3][171] = 1;
		(trpt+1)->bup.oval = ((int)now.chain_tick_used);
		now.chain_tick_used = 0;
#ifdef VAR_RANGES
		logval("chain_tick_used", ((int)now.chain_tick_used));
#endif
		;
		/* merge: .(goto)(0, 175, 178) */
		reached[3][175] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 282: // STATE 176 - data_structures.pml:56 - [assert((EP_Stack==255))] (0:209:2 - 1)
		IfNotBlocked
		reached[3][176] = 1;
		spin_assert((((int)now.EP_Stack)==255), "(EP_Stack==255)", II, tt, t);
		/* merge: EP_Stack = EP(209, 177, 209) */
		reached[3][177] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.EP_Stack);
		now.EP_Stack = ((int)now.EP);
#ifdef VAR_RANGES
		logval("EP_Stack", ((int)now.EP_Stack));
#endif
		;
		/* merge: EP = ( (((pending_exp>>0)&1)) -> (0) : (1) )(209, 179, 209) */
		reached[3][179] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.EP);
		now.EP = ( (((((int)now.pending_exp)>>0)&1)) ? (0) : (1) );
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: .(goto)(209, 183, 209) */
		reached[3][183] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 283: // STATE 183 - processes.pml:18 - [.(goto)] (0:209:0 - 2)
		IfNotBlocked
		reached[3][183] = 1;
		;
		_m = 3; goto P999; /* 0 */
	case 284: // STATE 181 - processes.pml:18 - [(1)] (209:0:0 - 1)
		IfNotBlocked
		reached[3][181] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(209, 183, 209) */
		reached[3][183] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 285: // STATE 185 - processes.pml:19 - [(((2+1)==EP))] (192:0:0 - 1)
		IfNotBlocked
		reached[3][185] = 1;
		if (!(((2+1)==((int)now.EP))))
			continue;
		/* merge: assert((EP==(2+1)))(0, 186, 192) */
		reached[3][186] = 1;
		spin_assert((((int)now.EP)==(2+1)), "(EP==(2+1))", II, tt, t);
		_m = 3; goto P999; /* 1 */
	case 286: // STATE 188 - data_structures.pml:44 - [assert(((1<2)&&(1<8)))] (0:207:1 - 1)
		IfNotBlocked
		reached[3][188] = 1;
		spin_assert(((1<2)&&(1<8)), "((1<2)&&(1<8))", II, tt, t);
		/* merge: pending_exp = (pending_exp|(1<<1))(207, 189, 207) */
		reached[3][189] = 1;
		(trpt+1)->bup.oval = ((int)now.pending_exp);
		now.pending_exp = (((int)now.pending_exp)|(1<<1));
#ifdef VAR_RANGES
		logval("pending_exp", ((int)now.pending_exp));
#endif
		;
		/* merge: .(goto)(0, 193, 207) */
		reached[3][193] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 287: // STATE 194 - processes.pml:19 - [((((((pending_exp>>0)&1)&&((BASEPRI==0)||(15<BASEPRI)))||(((pending_exp>>1)&1)&&((BASEPRI==0)||(15<BASEPRI))))&&(EP>=2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][194] = 1;
		if (!((((((((int)now.pending_exp)>>0)&1)&&((((int)now.BASEPRI)==0)||(15<((int)now.BASEPRI))))||(((((int)now.pending_exp)>>1)&1)&&((((int)now.BASEPRI)==0)||(15<((int)now.BASEPRI)))))&&(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 288: // STATE 195 - processes.pml:19 - [((EP>=2))] (203:0:1 - 1)
		IfNotBlocked
		reached[3][195] = 1;
		if (!((((int)now.EP)>=2)))
			continue;
		/* merge: chain_tick_used = 0(0, 196, 203) */
		reached[3][196] = 1;
		(trpt+1)->bup.oval = ((int)now.chain_tick_used);
		now.chain_tick_used = 0;
#ifdef VAR_RANGES
		logval("chain_tick_used", ((int)now.chain_tick_used));
#endif
		;
		/* merge: .(goto)(0, 200, 203) */
		reached[3][200] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 289: // STATE 201 - data_structures.pml:56 - [assert((EP_Stack==255))] (0:307:2 - 1)
		IfNotBlocked
		reached[3][201] = 1;
		spin_assert((((int)now.EP_Stack)==255), "(EP_Stack==255)", II, tt, t);
		/* merge: EP_Stack = EP(307, 202, 307) */
		reached[3][202] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.EP_Stack);
		now.EP_Stack = ((int)now.EP);
#ifdef VAR_RANGES
		logval("EP_Stack", ((int)now.EP_Stack));
#endif
		;
		/* merge: EP = ( (((pending_exp>>0)&1)) -> (0) : (1) )(307, 204, 307) */
		reached[3][204] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.EP);
		now.EP = ( (((((int)now.pending_exp)>>0)&1)) ? (0) : (1) );
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: .(goto)(307, 208, 307) */
		reached[3][208] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 290: // STATE 208 - processes.pml:19 - [.(goto)] (0:307:0 - 2)
		IfNotBlocked
		reached[3][208] = 1;
		;
		_m = 3; goto P999; /* 0 */
	case 291: // STATE 206 - processes.pml:19 - [(1)] (307:0:0 - 1)
		IfNotBlocked
		reached[3][206] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(307, 208, 307) */
		reached[3][208] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 292: // STATE 210 - processes.pml:20 - [(((2+1)==EP))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][210] = 1;
		if (!(((2+1)==((int)now.EP))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 293: // STATE 211 - scheduler.pml:104 - [intSave = 0] (0:215:3 - 1)
		IfNotBlocked
		reached[3][211] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)((P3 *)_this)->_7_19_37_intSave);
		((P3 *)_this)->_7_19_37_intSave = 0;
#ifdef VAR_RANGES
		logval("Process2:intSave", ((int)((P3 *)_this)->_7_19_37_intSave));
#endif
		;
		/* merge: needSched = 0(215, 212, 215) */
		reached[3][212] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P3 *)_this)->_7_19_37_needSched);
		((P3 *)_this)->_7_19_37_needSched = 0;
#ifdef VAR_RANGES
		logval("Process2:needSched", ((int)((P3 *)_this)->_7_19_37_needSched));
#endif
		;
		/* merge: currentTask = EP(215, 213, 215) */
		reached[3][213] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P3 *)_this)->_7_19_37_currentTask);
		((P3 *)_this)->_7_19_37_currentTask = ((int)now.EP);
#ifdef VAR_RANGES
		logval("Process2:currentTask", ((int)((P3 *)_this)->_7_19_37_currentTask));
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 294: // STATE 214 - data_structures.pml:101 - [intSave = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[3][214] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)_this)->_7_19_37_intSave);
		((P3 *)_this)->_7_19_37_intSave = 0;
#ifdef VAR_RANGES
		logval("Process2:intSave", ((int)((P3 *)_this)->_7_19_37_intSave));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 295: // STATE 216 - scheduler.pml:110 - [((0==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][216] = 1;
		if (!((0==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 296: // STATE 217 - data_structures.pml:44 - [assert(((0<2)&&(0<8)))] (0:290:1 - 1)
		IfNotBlocked
		reached[3][217] = 1;
		spin_assert(((0<2)&&(0<8)), "((0<2)&&(0<8))", II, tt, t);
		/* merge: pending_exp = (pending_exp|(1<<0))(290, 218, 290) */
		reached[3][218] = 1;
		(trpt+1)->bup.oval = ((int)now.pending_exp);
		now.pending_exp = (((int)now.pending_exp)|(1<<0));
#ifdef VAR_RANGES
		logval("pending_exp", ((int)now.pending_exp));
#endif
		;
		/* merge: .(goto)(0, 283, 290) */
		reached[3][283] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 297: // STATE 222 - scheduler.pml:113 - [((0>0))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][222] = 1;
		if (!((0>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 298: // STATE 223 - scheduler.pml:85 - [assert(((tcb[currentTask].state==1)||(tcb[currentTask].state==4)))] (0:260:1 - 1)
		IfNotBlocked
		reached[3][223] = 1;
		spin_assert(((((int)now.tcb[ Index(((int)((P3 *)_this)->_7_19_37_currentTask), 4) ].state)==1)||(((int)now.tcb[ Index(((int)((P3 *)_this)->_7_19_37_currentTask), 4) ].state)==4)), "((tcb[currentTask].state==1)||(tcb[currentTask].state==4))", II, tt, t);
		/* merge: needSched = 1(260, 224, 260) */
		reached[3][224] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)_this)->_7_19_37_needSched);
		((P3 *)_this)->_7_19_37_needSched = 1;
#ifdef VAR_RANGES
		logval("Process2:needSched", ((int)((P3 *)_this)->_7_19_37_needSched));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 299: // STATE 225 - scheduler.pml:88 - [((tcb[currentTask].state==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][225] = 1;
		if (!((((int)now.tcb[ Index(((int)((P3 *)_this)->_7_19_37_currentTask), 4) ].state)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 300: // STATE 226 - data_structures.pml:163 - [idx = 0] (0:238:3 - 1)
		IfNotBlocked
		reached[3][226] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)((P3 *)_this)->_7_19_37_33_13_idx);
		((P3 *)_this)->_7_19_37_33_13_idx = 0;
#ifdef VAR_RANGES
		logval("Process2:idx", ((int)((P3 *)_this)->_7_19_37_33_13_idx));
#endif
		;
		/* merge: found = 0(238, 227, 238) */
		reached[3][227] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P3 *)_this)->_7_19_37_33_13_found);
		((P3 *)_this)->_7_19_37_33_13_found = 0;
#ifdef VAR_RANGES
		logval("Process2:found", ((int)((P3 *)_this)->_7_19_37_33_13_found));
#endif
		;
		/* merge: prioLevel = tcb[currentTask].prio(238, 228, 238) */
		reached[3][228] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P3 *)_this)->_7_19_37_33_13_prioLevel);
		((P3 *)_this)->_7_19_37_33_13_prioLevel = ((int)now.tcb[ Index(((int)((P3 *)_this)->_7_19_37_currentTask), 4) ].prio);
#ifdef VAR_RANGES
		logval("Process2:prioLevel", ((int)((P3 *)_this)->_7_19_37_33_13_prioLevel));
#endif
		;
		/* merge: .(goto)(0, 239, 238) */
		reached[3][239] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 301: // STATE 229 - data_structures.pml:166 - [(((idx<readyQueue[prioLevel].tailIndex)&&!(found)))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][229] = 1;
		if (!(((((int)((P3 *)_this)->_7_19_37_33_13_idx)<((int)now.readyQueue[ Index(((int)((P3 *)_this)->_7_19_37_33_13_prioLevel), 4) ].tailIndex))&& !(((int)((P3 *)_this)->_7_19_37_33_13_found)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 302: // STATE 230 - data_structures.pml:168 - [((readyQueue[prioLevel].tasks[idx]==currentTask))] (238:0:1 - 1)
		IfNotBlocked
		reached[3][230] = 1;
		if (!((((int)now.readyQueue[ Index(((int)((P3 *)_this)->_7_19_37_33_13_prioLevel), 4) ].tasks[ Index(((int)((P3 *)_this)->_7_19_37_33_13_idx), 5) ])==((int)((P3 *)_this)->_7_19_37_currentTask))))
			continue;
		/* merge: found = 1(0, 231, 238) */
		reached[3][231] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)_this)->_7_19_37_33_13_found);
		((P3 *)_this)->_7_19_37_33_13_found = 1;
#ifdef VAR_RANGES
		logval("Process2:found", ((int)((P3 *)_this)->_7_19_37_33_13_found));
#endif
		;
		/* merge: .(goto)(0, 235, 238) */
		reached[3][235] = 1;
		;
		/* merge: .(goto)(0, 239, 238) */
		reached[3][239] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 303: // STATE 233 - data_structures.pml:170 - [idx = (idx+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[3][233] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)_this)->_7_19_37_33_13_idx);
		((P3 *)_this)->_7_19_37_33_13_idx = (((int)((P3 *)_this)->_7_19_37_33_13_idx)+1);
#ifdef VAR_RANGES
		logval("Process2:idx", ((int)((P3 *)_this)->_7_19_37_33_13_idx));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 304: // STATE 241 - data_structures.pml:174 - [assert((found==1))] (0:247:0 - 3)
		IfNotBlocked
		reached[3][241] = 1;
		spin_assert((((int)((P3 *)_this)->_7_19_37_33_13_found)==1), "(found==1)", II, tt, t);
		/* merge: .(goto)(0, 248, 247) */
		reached[3][248] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 305: // STATE 242 - data_structures.pml:176 - [((idx<(readyQueue[prioLevel].tailIndex-1)))] (247:0:2 - 1)
		IfNotBlocked
		reached[3][242] = 1;
		if (!((((int)((P3 *)_this)->_7_19_37_33_13_idx)<(((int)now.readyQueue[ Index(((int)((P3 *)_this)->_7_19_37_33_13_prioLevel), 4) ].tailIndex)-1))))
			continue;
		/* merge: readyQueue[prioLevel].tasks[idx] = readyQueue[prioLevel].tasks[(idx+1)](247, 243, 247) */
		reached[3][243] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.readyQueue[ Index(((int)((P3 *)_this)->_7_19_37_33_13_prioLevel), 4) ].tasks[ Index(((int)((P3 *)_this)->_7_19_37_33_13_idx), 5) ]);
		now.readyQueue[ Index(((P3 *)_this)->_7_19_37_33_13_prioLevel, 4) ].tasks[ Index(((P3 *)_this)->_7_19_37_33_13_idx, 5) ] = ((int)now.readyQueue[ Index(((int)((P3 *)_this)->_7_19_37_33_13_prioLevel), 4) ].tasks[ Index((((int)((P3 *)_this)->_7_19_37_33_13_idx)+1), 5) ]);
#ifdef VAR_RANGES
		logval("readyQueue[Process2:prioLevel].tasks[Process2:idx]", ((int)now.readyQueue[ Index(((int)((P3 *)_this)->_7_19_37_33_13_prioLevel), 4) ].tasks[ Index(((int)((P3 *)_this)->_7_19_37_33_13_idx), 5) ]));
#endif
		;
		/* merge: idx = (idx+1)(247, 244, 247) */
		reached[3][244] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P3 *)_this)->_7_19_37_33_13_idx);
		((P3 *)_this)->_7_19_37_33_13_idx = (((int)((P3 *)_this)->_7_19_37_33_13_idx)+1);
#ifdef VAR_RANGES
		logval("Process2:idx", ((int)((P3 *)_this)->_7_19_37_33_13_idx));
#endif
		;
		/* merge: .(goto)(0, 248, 247) */
		reached[3][248] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 306: // STATE 250 - data_structures.pml:182 - [((readyQueue[prioLevel].tailIndex>0))] (278:0:7 - 1)
		IfNotBlocked
		reached[3][250] = 1;
		if (!((((int)now.readyQueue[ Index(((int)((P3 *)_this)->_7_19_37_33_13_prioLevel), 4) ].tailIndex)>0)))
			continue;
		/* merge: readyQueue[prioLevel].tasks[(readyQueue[prioLevel].tailIndex-1)] = 255(278, 251, 278) */
		reached[3][251] = 1;
		(trpt+1)->bup.ovals = grab_ints(7);
		(trpt+1)->bup.ovals[0] = ((int)now.readyQueue[ Index(((int)((P3 *)_this)->_7_19_37_33_13_prioLevel), 4) ].tasks[ Index((((int)now.readyQueue[ Index(((int)((P3 *)_this)->_7_19_37_33_13_prioLevel), 4) ].tailIndex)-1), 5) ]);
		now.readyQueue[ Index(((P3 *)_this)->_7_19_37_33_13_prioLevel, 4) ].tasks[ Index((now.readyQueue[ Index(((P3 *)_this)->_7_19_37_33_13_prioLevel, 4) ].tailIndex-1), 5) ] = 255;
#ifdef VAR_RANGES
		logval("readyQueue[Process2:prioLevel].tasks[(readyQueue[Process2:prioLevel].tailIndex-1)]", ((int)now.readyQueue[ Index(((int)((P3 *)_this)->_7_19_37_33_13_prioLevel), 4) ].tasks[ Index((((int)now.readyQueue[ Index(((int)((P3 *)_this)->_7_19_37_33_13_prioLevel), 4) ].tailIndex)-1), 5) ]));
#endif
		;
		/* merge: readyQueue[prioLevel].tailIndex = (readyQueue[prioLevel].tailIndex-1)(278, 252, 278) */
		reached[3][252] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.readyQueue[ Index(((int)((P3 *)_this)->_7_19_37_33_13_prioLevel), 4) ].tailIndex);
		now.readyQueue[ Index(((P3 *)_this)->_7_19_37_33_13_prioLevel, 4) ].tailIndex = (((int)now.readyQueue[ Index(((int)((P3 *)_this)->_7_19_37_33_13_prioLevel), 4) ].tailIndex)-1);
#ifdef VAR_RANGES
		logval("readyQueue[Process2:prioLevel].tailIndex", ((int)now.readyQueue[ Index(((int)((P3 *)_this)->_7_19_37_33_13_prioLevel), 4) ].tailIndex));
#endif
		;
		/* merge: .(goto)(278, 256, 278) */
		reached[3][256] = 1;
		;
		/* merge: .(goto)(278, 261, 278) */
		reached[3][261] = 1;
		;
		/* merge: tcb[currentTask].state = 2(278, 262, 278) */
		reached[3][262] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.tcb[ Index(((int)((P3 *)_this)->_7_19_37_currentTask), 4) ].state);
		now.tcb[ Index(((P3 *)_this)->_7_19_37_currentTask, 4) ].state = 2;
#ifdef VAR_RANGES
		logval("tcb[Process2:currentTask].state", ((int)now.tcb[ Index(((int)((P3 *)_this)->_7_19_37_currentTask), 4) ].state));
#endif
		;
		/* merge: assert((g_taskSortLinkTail<(2+1)))(278, 263, 278) */
		reached[3][263] = 1;
		spin_assert((((int)now.g_taskSortLinkTail)<(2+1)), "(g_taskSortLinkTail<(2+1))", II, tt, t);
		/* merge: g_taskSortLink[g_taskSortLinkTail].taskId = currentTask(278, 264, 278) */
		reached[3][264] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.g_taskSortLink[ Index(((int)now.g_taskSortLinkTail), 3) ].taskId);
		now.g_taskSortLink[ Index(now.g_taskSortLinkTail, 3) ].taskId = ((int)((P3 *)_this)->_7_19_37_currentTask);
#ifdef VAR_RANGES
		logval("g_taskSortLink[g_taskSortLinkTail].taskId", ((int)now.g_taskSortLink[ Index(((int)now.g_taskSortLinkTail), 3) ].taskId));
#endif
		;
		/* merge: g_taskSortLink[g_taskSortLinkTail].responseTime = 0(278, 265, 278) */
		reached[3][265] = 1;
		(trpt+1)->bup.ovals[4] = ((int)now.g_taskSortLink[ Index(((int)now.g_taskSortLinkTail), 3) ].responseTime);
		now.g_taskSortLink[ Index(now.g_taskSortLinkTail, 3) ].responseTime = 0;
#ifdef VAR_RANGES
		logval("g_taskSortLink[g_taskSortLinkTail].responseTime", ((int)now.g_taskSortLink[ Index(((int)now.g_taskSortLinkTail), 3) ].responseTime));
#endif
		;
		/* merge: tcb[currentTask].pendList = g_taskSortLinkTail(278, 266, 278) */
		reached[3][266] = 1;
		(trpt+1)->bup.ovals[5] = ((int)now.tcb[ Index(((int)((P3 *)_this)->_7_19_37_currentTask), 4) ].pendList);
		now.tcb[ Index(((P3 *)_this)->_7_19_37_currentTask, 4) ].pendList = ((int)now.g_taskSortLinkTail);
#ifdef VAR_RANGES
		logval("tcb[Process2:currentTask].pendList", ((int)now.tcb[ Index(((int)((P3 *)_this)->_7_19_37_currentTask), 4) ].pendList));
#endif
		;
		/* merge: g_taskSortLinkTail = (g_taskSortLinkTail+1)(278, 267, 278) */
		reached[3][267] = 1;
		(trpt+1)->bup.ovals[6] = ((int)now.g_taskSortLinkTail);
		now.g_taskSortLinkTail = (((int)now.g_taskSortLinkTail)+1);
#ifdef VAR_RANGES
		logval("g_taskSortLinkTail", ((int)now.g_taskSortLinkTail));
#endif
		;
		_m = 3; goto P999; /* 10 */
	case 307: // STATE 254 - data_structures.pml:185 - [(1)] (278:0:5 - 1)
		IfNotBlocked
		reached[3][254] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(278, 256, 278) */
		reached[3][256] = 1;
		;
		/* merge: .(goto)(278, 261, 278) */
		reached[3][261] = 1;
		;
		/* merge: tcb[currentTask].state = 2(278, 262, 278) */
		reached[3][262] = 1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((int)now.tcb[ Index(((int)((P3 *)_this)->_7_19_37_currentTask), 4) ].state);
		now.tcb[ Index(((P3 *)_this)->_7_19_37_currentTask, 4) ].state = 2;
#ifdef VAR_RANGES
		logval("tcb[Process2:currentTask].state", ((int)now.tcb[ Index(((int)((P3 *)_this)->_7_19_37_currentTask), 4) ].state));
#endif
		;
		/* merge: assert((g_taskSortLinkTail<(2+1)))(278, 263, 278) */
		reached[3][263] = 1;
		spin_assert((((int)now.g_taskSortLinkTail)<(2+1)), "(g_taskSortLinkTail<(2+1))", II, tt, t);
		/* merge: g_taskSortLink[g_taskSortLinkTail].taskId = currentTask(278, 264, 278) */
		reached[3][264] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.g_taskSortLink[ Index(((int)now.g_taskSortLinkTail), 3) ].taskId);
		now.g_taskSortLink[ Index(now.g_taskSortLinkTail, 3) ].taskId = ((int)((P3 *)_this)->_7_19_37_currentTask);
#ifdef VAR_RANGES
		logval("g_taskSortLink[g_taskSortLinkTail].taskId", ((int)now.g_taskSortLink[ Index(((int)now.g_taskSortLinkTail), 3) ].taskId));
#endif
		;
		/* merge: g_taskSortLink[g_taskSortLinkTail].responseTime = 0(278, 265, 278) */
		reached[3][265] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.g_taskSortLink[ Index(((int)now.g_taskSortLinkTail), 3) ].responseTime);
		now.g_taskSortLink[ Index(now.g_taskSortLinkTail, 3) ].responseTime = 0;
#ifdef VAR_RANGES
		logval("g_taskSortLink[g_taskSortLinkTail].responseTime", ((int)now.g_taskSortLink[ Index(((int)now.g_taskSortLinkTail), 3) ].responseTime));
#endif
		;
		/* merge: tcb[currentTask].pendList = g_taskSortLinkTail(278, 266, 278) */
		reached[3][266] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.tcb[ Index(((int)((P3 *)_this)->_7_19_37_currentTask), 4) ].pendList);
		now.tcb[ Index(((P3 *)_this)->_7_19_37_currentTask, 4) ].pendList = ((int)now.g_taskSortLinkTail);
#ifdef VAR_RANGES
		logval("tcb[Process2:currentTask].pendList", ((int)now.tcb[ Index(((int)((P3 *)_this)->_7_19_37_currentTask), 4) ].pendList));
#endif
		;
		/* merge: g_taskSortLinkTail = (g_taskSortLinkTail+1)(278, 267, 278) */
		reached[3][267] = 1;
		(trpt+1)->bup.ovals[4] = ((int)now.g_taskSortLinkTail);
		now.g_taskSortLinkTail = (((int)now.g_taskSortLinkTail)+1);
#ifdef VAR_RANGES
		logval("g_taskSortLinkTail", ((int)now.g_taskSortLinkTail));
#endif
		;
		_m = 3; goto P999; /* 8 */
	case 308: // STATE 259 - scheduler.pml:90 - [(1)] (278:0:5 - 1)
		IfNotBlocked
		reached[3][259] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(278, 261, 278) */
		reached[3][261] = 1;
		;
		/* merge: tcb[currentTask].state = 2(278, 262, 278) */
		reached[3][262] = 1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((int)now.tcb[ Index(((int)((P3 *)_this)->_7_19_37_currentTask), 4) ].state);
		now.tcb[ Index(((P3 *)_this)->_7_19_37_currentTask, 4) ].state = 2;
#ifdef VAR_RANGES
		logval("tcb[Process2:currentTask].state", ((int)now.tcb[ Index(((int)((P3 *)_this)->_7_19_37_currentTask), 4) ].state));
#endif
		;
		/* merge: assert((g_taskSortLinkTail<(2+1)))(278, 263, 278) */
		reached[3][263] = 1;
		spin_assert((((int)now.g_taskSortLinkTail)<(2+1)), "(g_taskSortLinkTail<(2+1))", II, tt, t);
		/* merge: g_taskSortLink[g_taskSortLinkTail].taskId = currentTask(278, 264, 278) */
		reached[3][264] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.g_taskSortLink[ Index(((int)now.g_taskSortLinkTail), 3) ].taskId);
		now.g_taskSortLink[ Index(now.g_taskSortLinkTail, 3) ].taskId = ((int)((P3 *)_this)->_7_19_37_currentTask);
#ifdef VAR_RANGES
		logval("g_taskSortLink[g_taskSortLinkTail].taskId", ((int)now.g_taskSortLink[ Index(((int)now.g_taskSortLinkTail), 3) ].taskId));
#endif
		;
		/* merge: g_taskSortLink[g_taskSortLinkTail].responseTime = 0(278, 265, 278) */
		reached[3][265] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.g_taskSortLink[ Index(((int)now.g_taskSortLinkTail), 3) ].responseTime);
		now.g_taskSortLink[ Index(now.g_taskSortLinkTail, 3) ].responseTime = 0;
#ifdef VAR_RANGES
		logval("g_taskSortLink[g_taskSortLinkTail].responseTime", ((int)now.g_taskSortLink[ Index(((int)now.g_taskSortLinkTail), 3) ].responseTime));
#endif
		;
		/* merge: tcb[currentTask].pendList = g_taskSortLinkTail(278, 266, 278) */
		reached[3][266] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.tcb[ Index(((int)((P3 *)_this)->_7_19_37_currentTask), 4) ].pendList);
		now.tcb[ Index(((P3 *)_this)->_7_19_37_currentTask, 4) ].pendList = ((int)now.g_taskSortLinkTail);
#ifdef VAR_RANGES
		logval("tcb[Process2:currentTask].pendList", ((int)now.tcb[ Index(((int)((P3 *)_this)->_7_19_37_currentTask), 4) ].pendList));
#endif
		;
		/* merge: g_taskSortLinkTail = (g_taskSortLinkTail+1)(278, 267, 278) */
		reached[3][267] = 1;
		(trpt+1)->bup.ovals[4] = ((int)now.g_taskSortLinkTail);
		now.g_taskSortLinkTail = (((int)now.g_taskSortLinkTail)+1);
#ifdef VAR_RANGES
		logval("g_taskSortLinkTail", ((int)now.g_taskSortLinkTail));
#endif
		;
		_m = 3; goto P999; /* 7 */
	case 309: // STATE 262 - scheduler.pml:92 - [tcb[currentTask].state = 2] (0:278:5 - 5)
		IfNotBlocked
		reached[3][262] = 1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((int)now.tcb[ Index(((int)((P3 *)_this)->_7_19_37_currentTask), 4) ].state);
		now.tcb[ Index(((P3 *)_this)->_7_19_37_currentTask, 4) ].state = 2;
#ifdef VAR_RANGES
		logval("tcb[Process2:currentTask].state", ((int)now.tcb[ Index(((int)((P3 *)_this)->_7_19_37_currentTask), 4) ].state));
#endif
		;
		/* merge: assert((g_taskSortLinkTail<(2+1)))(278, 263, 278) */
		reached[3][263] = 1;
		spin_assert((((int)now.g_taskSortLinkTail)<(2+1)), "(g_taskSortLinkTail<(2+1))", II, tt, t);
		/* merge: g_taskSortLink[g_taskSortLinkTail].taskId = currentTask(278, 264, 278) */
		reached[3][264] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.g_taskSortLink[ Index(((int)now.g_taskSortLinkTail), 3) ].taskId);
		now.g_taskSortLink[ Index(now.g_taskSortLinkTail, 3) ].taskId = ((int)((P3 *)_this)->_7_19_37_currentTask);
#ifdef VAR_RANGES
		logval("g_taskSortLink[g_taskSortLinkTail].taskId", ((int)now.g_taskSortLink[ Index(((int)now.g_taskSortLinkTail), 3) ].taskId));
#endif
		;
		/* merge: g_taskSortLink[g_taskSortLinkTail].responseTime = 0(278, 265, 278) */
		reached[3][265] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.g_taskSortLink[ Index(((int)now.g_taskSortLinkTail), 3) ].responseTime);
		now.g_taskSortLink[ Index(now.g_taskSortLinkTail, 3) ].responseTime = 0;
#ifdef VAR_RANGES
		logval("g_taskSortLink[g_taskSortLinkTail].responseTime", ((int)now.g_taskSortLink[ Index(((int)now.g_taskSortLinkTail), 3) ].responseTime));
#endif
		;
		/* merge: tcb[currentTask].pendList = g_taskSortLinkTail(278, 266, 278) */
		reached[3][266] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.tcb[ Index(((int)((P3 *)_this)->_7_19_37_currentTask), 4) ].pendList);
		now.tcb[ Index(((P3 *)_this)->_7_19_37_currentTask, 4) ].pendList = ((int)now.g_taskSortLinkTail);
#ifdef VAR_RANGES
		logval("tcb[Process2:currentTask].pendList", ((int)now.tcb[ Index(((int)((P3 *)_this)->_7_19_37_currentTask), 4) ].pendList));
#endif
		;
		/* merge: g_taskSortLinkTail = (g_taskSortLinkTail+1)(278, 267, 278) */
		reached[3][267] = 1;
		(trpt+1)->bup.ovals[4] = ((int)now.g_taskSortLinkTail);
		now.g_taskSortLinkTail = (((int)now.g_taskSortLinkTail)+1);
#ifdef VAR_RANGES
		logval("g_taskSortLinkTail", ((int)now.g_taskSortLinkTail));
#endif
		;
		_m = 3; goto P999; /* 5 */
	case 310: // STATE 269 - scheduler.pml:117 - [((needSched&&g_taskScheduled))] (0:0:1 - 1)
		IfNotBlocked
		reached[3][269] = 1;
		if (!((((int)((P3 *)_this)->_7_19_37_needSched)&&((int)now.g_taskScheduled))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _7_19_37_needSched */  (trpt+1)->bup.oval = ((P3 *)_this)->_7_19_37_needSched;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P3 *)_this)->_7_19_37_needSched = 0;
		_m = 3; goto P999; /* 0 */
	case 311: // STATE 270 - data_structures.pml:106 - [intSave = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[3][270] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)_this)->_7_19_37_intSave);
		((P3 *)_this)->_7_19_37_intSave = 0;
#ifdef VAR_RANGES
		logval("Process2:intSave", ((int)((P3 *)_this)->_7_19_37_intSave));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 312: // STATE 272 - data_structures.pml:44 - [assert(((0<2)&&(0<8)))] (0:290:1 - 1)
		IfNotBlocked
		reached[3][272] = 1;
		spin_assert(((0<2)&&(0<8)), "((0<2)&&(0<8))", II, tt, t);
		/* merge: pending_exp = (pending_exp|(1<<0))(290, 273, 290) */
		reached[3][273] = 1;
		(trpt+1)->bup.oval = ((int)now.pending_exp);
		now.pending_exp = (((int)now.pending_exp)|(1<<0));
#ifdef VAR_RANGES
		logval("pending_exp", ((int)now.pending_exp));
#endif
		;
		/* merge: .(goto)(0, 279, 290) */
		reached[3][279] = 1;
		;
		/* merge: .(goto)(0, 283, 290) */
		reached[3][283] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 313: // STATE 286 - data_structures.pml:44 - [assert(((1<2)&&(1<8)))] (0:305:1 - 1)
		IfNotBlocked
		reached[3][286] = 1;
		spin_assert(((1<2)&&(1<8)), "((1<2)&&(1<8))", II, tt, t);
		/* merge: pending_exp = (pending_exp|(1<<1))(305, 287, 305) */
		reached[3][287] = 1;
		(trpt+1)->bup.oval = ((int)now.pending_exp);
		now.pending_exp = (((int)now.pending_exp)|(1<<1));
#ifdef VAR_RANGES
		logval("pending_exp", ((int)now.pending_exp));
#endif
		;
		/* merge: .(goto)(0, 291, 305) */
		reached[3][291] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 314: // STATE 292 - processes.pml:20 - [((((((pending_exp>>0)&1)&&((BASEPRI==0)||(15<BASEPRI)))||(((pending_exp>>1)&1)&&((BASEPRI==0)||(15<BASEPRI))))&&(EP>=2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][292] = 1;
		if (!((((((((int)now.pending_exp)>>0)&1)&&((((int)now.BASEPRI)==0)||(15<((int)now.BASEPRI))))||(((((int)now.pending_exp)>>1)&1)&&((((int)now.BASEPRI)==0)||(15<((int)now.BASEPRI)))))&&(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 315: // STATE 293 - processes.pml:20 - [((EP>=2))] (301:0:1 - 1)
		IfNotBlocked
		reached[3][293] = 1;
		if (!((((int)now.EP)>=2)))
			continue;
		/* merge: chain_tick_used = 0(0, 294, 301) */
		reached[3][294] = 1;
		(trpt+1)->bup.oval = ((int)now.chain_tick_used);
		now.chain_tick_used = 0;
#ifdef VAR_RANGES
		logval("chain_tick_used", ((int)now.chain_tick_used));
#endif
		;
		/* merge: .(goto)(0, 298, 301) */
		reached[3][298] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 316: // STATE 299 - data_structures.pml:56 - [assert((EP_Stack==255))] (0:308:2 - 1)
		IfNotBlocked
		reached[3][299] = 1;
		spin_assert((((int)now.EP_Stack)==255), "(EP_Stack==255)", II, tt, t);
		/* merge: EP_Stack = EP(308, 300, 308) */
		reached[3][300] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.EP_Stack);
		now.EP_Stack = ((int)now.EP);
#ifdef VAR_RANGES
		logval("EP_Stack", ((int)now.EP_Stack));
#endif
		;
		/* merge: EP = ( (((pending_exp>>0)&1)) -> (0) : (1) )(308, 302, 308) */
		reached[3][302] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.EP);
		now.EP = ( (((((int)now.pending_exp)>>0)&1)) ? (0) : (1) );
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: .(goto)(308, 306, 308) */
		reached[3][306] = 1;
		;
		/* merge: .(goto)(0, 309, 308) */
		reached[3][309] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 317: // STATE 306 - processes.pml:20 - [.(goto)] (0:308:0 - 2)
		IfNotBlocked
		reached[3][306] = 1;
		;
		/* merge: .(goto)(0, 309, 308) */
		reached[3][309] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 318: // STATE 304 - processes.pml:20 - [(1)] (308:0:0 - 1)
		IfNotBlocked
		reached[3][304] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(308, 306, 308) */
		reached[3][306] = 1;
		;
		/* merge: .(goto)(0, 309, 308) */
		reached[3][309] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 319: // STATE 311 - processes.pml:22 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[3][311] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Process1 */
	case 320: // STATE 1 - processes.pml:7 - [((2==EP))] (8:0:0 - 1)
		IfNotBlocked
		reached[2][1] = 1;
		if (!((2==((int)now.EP))))
			continue;
		/* merge: printf('Process1 running\\\\n')(0, 2, 8) */
		reached[2][2] = 1;
		Printf("Process1 running\\n");
		_m = 3; goto P999; /* 1 */
	case 321: // STATE 4 - data_structures.pml:44 - [assert(((1<2)&&(1<8)))] (0:23:1 - 1)
		IfNotBlocked
		reached[2][4] = 1;
		spin_assert(((1<2)&&(1<8)), "((1<2)&&(1<8))", II, tt, t);
		/* merge: pending_exp = (pending_exp|(1<<1))(23, 5, 23) */
		reached[2][5] = 1;
		(trpt+1)->bup.oval = ((int)now.pending_exp);
		now.pending_exp = (((int)now.pending_exp)|(1<<1));
#ifdef VAR_RANGES
		logval("pending_exp", ((int)now.pending_exp));
#endif
		;
		/* merge: .(goto)(0, 9, 23) */
		reached[2][9] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 322: // STATE 10 - processes.pml:7 - [((((((pending_exp>>0)&1)&&((BASEPRI==0)||(15<BASEPRI)))||(((pending_exp>>1)&1)&&((BASEPRI==0)||(15<BASEPRI))))&&(EP>=2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][10] = 1;
		if (!((((((((int)now.pending_exp)>>0)&1)&&((((int)now.BASEPRI)==0)||(15<((int)now.BASEPRI))))||(((((int)now.pending_exp)>>1)&1)&&((((int)now.BASEPRI)==0)||(15<((int)now.BASEPRI)))))&&(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 323: // STATE 11 - processes.pml:7 - [((EP>=2))] (19:0:1 - 1)
		IfNotBlocked
		reached[2][11] = 1;
		if (!((((int)now.EP)>=2)))
			continue;
		/* merge: chain_tick_used = 0(0, 12, 19) */
		reached[2][12] = 1;
		(trpt+1)->bup.oval = ((int)now.chain_tick_used);
		now.chain_tick_used = 0;
#ifdef VAR_RANGES
		logval("chain_tick_used", ((int)now.chain_tick_used));
#endif
		;
		/* merge: .(goto)(0, 16, 19) */
		reached[2][16] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 324: // STATE 17 - data_structures.pml:56 - [assert((EP_Stack==255))] (0:50:2 - 1)
		IfNotBlocked
		reached[2][17] = 1;
		spin_assert((((int)now.EP_Stack)==255), "(EP_Stack==255)", II, tt, t);
		/* merge: EP_Stack = EP(50, 18, 50) */
		reached[2][18] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.EP_Stack);
		now.EP_Stack = ((int)now.EP);
#ifdef VAR_RANGES
		logval("EP_Stack", ((int)now.EP_Stack));
#endif
		;
		/* merge: EP = ( (((pending_exp>>0)&1)) -> (0) : (1) )(50, 20, 50) */
		reached[2][20] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.EP);
		now.EP = ( (((((int)now.pending_exp)>>0)&1)) ? (0) : (1) );
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: .(goto)(50, 24, 50) */
		reached[2][24] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 325: // STATE 24 - processes.pml:7 - [.(goto)] (0:50:0 - 2)
		IfNotBlocked
		reached[2][24] = 1;
		;
		_m = 3; goto P999; /* 0 */
	case 326: // STATE 22 - processes.pml:7 - [(1)] (50:0:0 - 1)
		IfNotBlocked
		reached[2][22] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(50, 24, 50) */
		reached[2][24] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 327: // STATE 26 - processes.pml:8 - [((2==EP))] (33:0:0 - 1)
		IfNotBlocked
		reached[2][26] = 1;
		if (!((2==((int)now.EP))))
			continue;
		/* merge: assert((EP==2))(0, 27, 33) */
		reached[2][27] = 1;
		spin_assert((((int)now.EP)==2), "(EP==2)", II, tt, t);
		_m = 3; goto P999; /* 1 */
	case 328: // STATE 29 - data_structures.pml:44 - [assert(((1<2)&&(1<8)))] (0:48:1 - 1)
		IfNotBlocked
		reached[2][29] = 1;
		spin_assert(((1<2)&&(1<8)), "((1<2)&&(1<8))", II, tt, t);
		/* merge: pending_exp = (pending_exp|(1<<1))(48, 30, 48) */
		reached[2][30] = 1;
		(trpt+1)->bup.oval = ((int)now.pending_exp);
		now.pending_exp = (((int)now.pending_exp)|(1<<1));
#ifdef VAR_RANGES
		logval("pending_exp", ((int)now.pending_exp));
#endif
		;
		/* merge: .(goto)(0, 34, 48) */
		reached[2][34] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 329: // STATE 35 - processes.pml:8 - [((((((pending_exp>>0)&1)&&((BASEPRI==0)||(15<BASEPRI)))||(((pending_exp>>1)&1)&&((BASEPRI==0)||(15<BASEPRI))))&&(EP>=2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][35] = 1;
		if (!((((((((int)now.pending_exp)>>0)&1)&&((((int)now.BASEPRI)==0)||(15<((int)now.BASEPRI))))||(((((int)now.pending_exp)>>1)&1)&&((((int)now.BASEPRI)==0)||(15<((int)now.BASEPRI)))))&&(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 330: // STATE 36 - processes.pml:8 - [((EP>=2))] (44:0:1 - 1)
		IfNotBlocked
		reached[2][36] = 1;
		if (!((((int)now.EP)>=2)))
			continue;
		/* merge: chain_tick_used = 0(0, 37, 44) */
		reached[2][37] = 1;
		(trpt+1)->bup.oval = ((int)now.chain_tick_used);
		now.chain_tick_used = 0;
#ifdef VAR_RANGES
		logval("chain_tick_used", ((int)now.chain_tick_used));
#endif
		;
		/* merge: .(goto)(0, 41, 44) */
		reached[2][41] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 331: // STATE 42 - data_structures.pml:56 - [assert((EP_Stack==255))] (0:148:2 - 1)
		IfNotBlocked
		reached[2][42] = 1;
		spin_assert((((int)now.EP_Stack)==255), "(EP_Stack==255)", II, tt, t);
		/* merge: EP_Stack = EP(148, 43, 148) */
		reached[2][43] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.EP_Stack);
		now.EP_Stack = ((int)now.EP);
#ifdef VAR_RANGES
		logval("EP_Stack", ((int)now.EP_Stack));
#endif
		;
		/* merge: EP = ( (((pending_exp>>0)&1)) -> (0) : (1) )(148, 45, 148) */
		reached[2][45] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.EP);
		now.EP = ( (((((int)now.pending_exp)>>0)&1)) ? (0) : (1) );
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: .(goto)(148, 49, 148) */
		reached[2][49] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 332: // STATE 49 - processes.pml:8 - [.(goto)] (0:148:0 - 2)
		IfNotBlocked
		reached[2][49] = 1;
		;
		_m = 3; goto P999; /* 0 */
	case 333: // STATE 47 - processes.pml:8 - [(1)] (148:0:0 - 1)
		IfNotBlocked
		reached[2][47] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(148, 49, 148) */
		reached[2][49] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 334: // STATE 51 - processes.pml:9 - [((2==EP))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][51] = 1;
		if (!((2==((int)now.EP))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 335: // STATE 52 - scheduler.pml:104 - [intSave = 0] (0:56:3 - 1)
		IfNotBlocked
		reached[2][52] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)((P2 *)_this)->_6_14_24_intSave);
		((P2 *)_this)->_6_14_24_intSave = 0;
#ifdef VAR_RANGES
		logval("Process1:intSave", ((int)((P2 *)_this)->_6_14_24_intSave));
#endif
		;
		/* merge: needSched = 0(56, 53, 56) */
		reached[2][53] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P2 *)_this)->_6_14_24_needSched);
		((P2 *)_this)->_6_14_24_needSched = 0;
#ifdef VAR_RANGES
		logval("Process1:needSched", ((int)((P2 *)_this)->_6_14_24_needSched));
#endif
		;
		/* merge: currentTask = EP(56, 54, 56) */
		reached[2][54] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P2 *)_this)->_6_14_24_currentTask);
		((P2 *)_this)->_6_14_24_currentTask = ((int)now.EP);
#ifdef VAR_RANGES
		logval("Process1:currentTask", ((int)((P2 *)_this)->_6_14_24_currentTask));
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 336: // STATE 55 - data_structures.pml:101 - [intSave = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[2][55] = 1;
		(trpt+1)->bup.oval = ((int)((P2 *)_this)->_6_14_24_intSave);
		((P2 *)_this)->_6_14_24_intSave = 0;
#ifdef VAR_RANGES
		logval("Process1:intSave", ((int)((P2 *)_this)->_6_14_24_intSave));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 337: // STATE 57 - scheduler.pml:110 - [((5==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][57] = 1;
		if (!((5==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 338: // STATE 58 - data_structures.pml:44 - [assert(((0<2)&&(0<8)))] (0:131:1 - 1)
		IfNotBlocked
		reached[2][58] = 1;
		spin_assert(((0<2)&&(0<8)), "((0<2)&&(0<8))", II, tt, t);
		/* merge: pending_exp = (pending_exp|(1<<0))(131, 59, 131) */
		reached[2][59] = 1;
		(trpt+1)->bup.oval = ((int)now.pending_exp);
		now.pending_exp = (((int)now.pending_exp)|(1<<0));
#ifdef VAR_RANGES
		logval("pending_exp", ((int)now.pending_exp));
#endif
		;
		/* merge: .(goto)(0, 124, 131) */
		reached[2][124] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 339: // STATE 63 - scheduler.pml:113 - [((5>0))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][63] = 1;
		if (!((5>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 340: // STATE 64 - scheduler.pml:85 - [assert(((tcb[currentTask].state==1)||(tcb[currentTask].state==4)))] (0:101:1 - 1)
		IfNotBlocked
		reached[2][64] = 1;
		spin_assert(((((int)now.tcb[ Index(((int)((P2 *)_this)->_6_14_24_currentTask), 4) ].state)==1)||(((int)now.tcb[ Index(((int)((P2 *)_this)->_6_14_24_currentTask), 4) ].state)==4)), "((tcb[currentTask].state==1)||(tcb[currentTask].state==4))", II, tt, t);
		/* merge: needSched = 1(101, 65, 101) */
		reached[2][65] = 1;
		(trpt+1)->bup.oval = ((int)((P2 *)_this)->_6_14_24_needSched);
		((P2 *)_this)->_6_14_24_needSched = 1;
#ifdef VAR_RANGES
		logval("Process1:needSched", ((int)((P2 *)_this)->_6_14_24_needSched));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 341: // STATE 66 - scheduler.pml:88 - [((tcb[currentTask].state==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][66] = 1;
		if (!((((int)now.tcb[ Index(((int)((P2 *)_this)->_6_14_24_currentTask), 4) ].state)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 342: // STATE 67 - data_structures.pml:163 - [idx = 0] (0:79:3 - 1)
		IfNotBlocked
		reached[2][67] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)((P2 *)_this)->_6_14_24_20_4_idx);
		((P2 *)_this)->_6_14_24_20_4_idx = 0;
#ifdef VAR_RANGES
		logval("Process1:idx", ((int)((P2 *)_this)->_6_14_24_20_4_idx));
#endif
		;
		/* merge: found = 0(79, 68, 79) */
		reached[2][68] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P2 *)_this)->_6_14_24_20_4_found);
		((P2 *)_this)->_6_14_24_20_4_found = 0;
#ifdef VAR_RANGES
		logval("Process1:found", ((int)((P2 *)_this)->_6_14_24_20_4_found));
#endif
		;
		/* merge: prioLevel = tcb[currentTask].prio(79, 69, 79) */
		reached[2][69] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P2 *)_this)->_6_14_24_20_4_prioLevel);
		((P2 *)_this)->_6_14_24_20_4_prioLevel = ((int)now.tcb[ Index(((int)((P2 *)_this)->_6_14_24_currentTask), 4) ].prio);
#ifdef VAR_RANGES
		logval("Process1:prioLevel", ((int)((P2 *)_this)->_6_14_24_20_4_prioLevel));
#endif
		;
		/* merge: .(goto)(0, 80, 79) */
		reached[2][80] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 343: // STATE 70 - data_structures.pml:166 - [(((idx<readyQueue[prioLevel].tailIndex)&&!(found)))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][70] = 1;
		if (!(((((int)((P2 *)_this)->_6_14_24_20_4_idx)<((int)now.readyQueue[ Index(((int)((P2 *)_this)->_6_14_24_20_4_prioLevel), 4) ].tailIndex))&& !(((int)((P2 *)_this)->_6_14_24_20_4_found)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 344: // STATE 71 - data_structures.pml:168 - [((readyQueue[prioLevel].tasks[idx]==currentTask))] (79:0:1 - 1)
		IfNotBlocked
		reached[2][71] = 1;
		if (!((((int)now.readyQueue[ Index(((int)((P2 *)_this)->_6_14_24_20_4_prioLevel), 4) ].tasks[ Index(((int)((P2 *)_this)->_6_14_24_20_4_idx), 5) ])==((int)((P2 *)_this)->_6_14_24_currentTask))))
			continue;
		/* merge: found = 1(0, 72, 79) */
		reached[2][72] = 1;
		(trpt+1)->bup.oval = ((int)((P2 *)_this)->_6_14_24_20_4_found);
		((P2 *)_this)->_6_14_24_20_4_found = 1;
#ifdef VAR_RANGES
		logval("Process1:found", ((int)((P2 *)_this)->_6_14_24_20_4_found));
#endif
		;
		/* merge: .(goto)(0, 76, 79) */
		reached[2][76] = 1;
		;
		/* merge: .(goto)(0, 80, 79) */
		reached[2][80] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 345: // STATE 74 - data_structures.pml:170 - [idx = (idx+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[2][74] = 1;
		(trpt+1)->bup.oval = ((int)((P2 *)_this)->_6_14_24_20_4_idx);
		((P2 *)_this)->_6_14_24_20_4_idx = (((int)((P2 *)_this)->_6_14_24_20_4_idx)+1);
#ifdef VAR_RANGES
		logval("Process1:idx", ((int)((P2 *)_this)->_6_14_24_20_4_idx));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 346: // STATE 82 - data_structures.pml:174 - [assert((found==1))] (0:88:0 - 3)
		IfNotBlocked
		reached[2][82] = 1;
		spin_assert((((int)((P2 *)_this)->_6_14_24_20_4_found)==1), "(found==1)", II, tt, t);
		/* merge: .(goto)(0, 89, 88) */
		reached[2][89] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 347: // STATE 83 - data_structures.pml:176 - [((idx<(readyQueue[prioLevel].tailIndex-1)))] (88:0:2 - 1)
		IfNotBlocked
		reached[2][83] = 1;
		if (!((((int)((P2 *)_this)->_6_14_24_20_4_idx)<(((int)now.readyQueue[ Index(((int)((P2 *)_this)->_6_14_24_20_4_prioLevel), 4) ].tailIndex)-1))))
			continue;
		/* merge: readyQueue[prioLevel].tasks[idx] = readyQueue[prioLevel].tasks[(idx+1)](88, 84, 88) */
		reached[2][84] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.readyQueue[ Index(((int)((P2 *)_this)->_6_14_24_20_4_prioLevel), 4) ].tasks[ Index(((int)((P2 *)_this)->_6_14_24_20_4_idx), 5) ]);
		now.readyQueue[ Index(((P2 *)_this)->_6_14_24_20_4_prioLevel, 4) ].tasks[ Index(((P2 *)_this)->_6_14_24_20_4_idx, 5) ] = ((int)now.readyQueue[ Index(((int)((P2 *)_this)->_6_14_24_20_4_prioLevel), 4) ].tasks[ Index((((int)((P2 *)_this)->_6_14_24_20_4_idx)+1), 5) ]);
#ifdef VAR_RANGES
		logval("readyQueue[Process1:prioLevel].tasks[Process1:idx]", ((int)now.readyQueue[ Index(((int)((P2 *)_this)->_6_14_24_20_4_prioLevel), 4) ].tasks[ Index(((int)((P2 *)_this)->_6_14_24_20_4_idx), 5) ]));
#endif
		;
		/* merge: idx = (idx+1)(88, 85, 88) */
		reached[2][85] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P2 *)_this)->_6_14_24_20_4_idx);
		((P2 *)_this)->_6_14_24_20_4_idx = (((int)((P2 *)_this)->_6_14_24_20_4_idx)+1);
#ifdef VAR_RANGES
		logval("Process1:idx", ((int)((P2 *)_this)->_6_14_24_20_4_idx));
#endif
		;
		/* merge: .(goto)(0, 89, 88) */
		reached[2][89] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 348: // STATE 91 - data_structures.pml:182 - [((readyQueue[prioLevel].tailIndex>0))] (119:0:7 - 1)
		IfNotBlocked
		reached[2][91] = 1;
		if (!((((int)now.readyQueue[ Index(((int)((P2 *)_this)->_6_14_24_20_4_prioLevel), 4) ].tailIndex)>0)))
			continue;
		/* merge: readyQueue[prioLevel].tasks[(readyQueue[prioLevel].tailIndex-1)] = 255(119, 92, 119) */
		reached[2][92] = 1;
		(trpt+1)->bup.ovals = grab_ints(7);
		(trpt+1)->bup.ovals[0] = ((int)now.readyQueue[ Index(((int)((P2 *)_this)->_6_14_24_20_4_prioLevel), 4) ].tasks[ Index((((int)now.readyQueue[ Index(((int)((P2 *)_this)->_6_14_24_20_4_prioLevel), 4) ].tailIndex)-1), 5) ]);
		now.readyQueue[ Index(((P2 *)_this)->_6_14_24_20_4_prioLevel, 4) ].tasks[ Index((now.readyQueue[ Index(((P2 *)_this)->_6_14_24_20_4_prioLevel, 4) ].tailIndex-1), 5) ] = 255;
#ifdef VAR_RANGES
		logval("readyQueue[Process1:prioLevel].tasks[(readyQueue[Process1:prioLevel].tailIndex-1)]", ((int)now.readyQueue[ Index(((int)((P2 *)_this)->_6_14_24_20_4_prioLevel), 4) ].tasks[ Index((((int)now.readyQueue[ Index(((int)((P2 *)_this)->_6_14_24_20_4_prioLevel), 4) ].tailIndex)-1), 5) ]));
#endif
		;
		/* merge: readyQueue[prioLevel].tailIndex = (readyQueue[prioLevel].tailIndex-1)(119, 93, 119) */
		reached[2][93] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.readyQueue[ Index(((int)((P2 *)_this)->_6_14_24_20_4_prioLevel), 4) ].tailIndex);
		now.readyQueue[ Index(((P2 *)_this)->_6_14_24_20_4_prioLevel, 4) ].tailIndex = (((int)now.readyQueue[ Index(((int)((P2 *)_this)->_6_14_24_20_4_prioLevel), 4) ].tailIndex)-1);
#ifdef VAR_RANGES
		logval("readyQueue[Process1:prioLevel].tailIndex", ((int)now.readyQueue[ Index(((int)((P2 *)_this)->_6_14_24_20_4_prioLevel), 4) ].tailIndex));
#endif
		;
		/* merge: .(goto)(119, 97, 119) */
		reached[2][97] = 1;
		;
		/* merge: .(goto)(119, 102, 119) */
		reached[2][102] = 1;
		;
		/* merge: tcb[currentTask].state = 2(119, 103, 119) */
		reached[2][103] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.tcb[ Index(((int)((P2 *)_this)->_6_14_24_currentTask), 4) ].state);
		now.tcb[ Index(((P2 *)_this)->_6_14_24_currentTask, 4) ].state = 2;
#ifdef VAR_RANGES
		logval("tcb[Process1:currentTask].state", ((int)now.tcb[ Index(((int)((P2 *)_this)->_6_14_24_currentTask), 4) ].state));
#endif
		;
		/* merge: assert((g_taskSortLinkTail<(2+1)))(119, 104, 119) */
		reached[2][104] = 1;
		spin_assert((((int)now.g_taskSortLinkTail)<(2+1)), "(g_taskSortLinkTail<(2+1))", II, tt, t);
		/* merge: g_taskSortLink[g_taskSortLinkTail].taskId = currentTask(119, 105, 119) */
		reached[2][105] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.g_taskSortLink[ Index(((int)now.g_taskSortLinkTail), 3) ].taskId);
		now.g_taskSortLink[ Index(now.g_taskSortLinkTail, 3) ].taskId = ((int)((P2 *)_this)->_6_14_24_currentTask);
#ifdef VAR_RANGES
		logval("g_taskSortLink[g_taskSortLinkTail].taskId", ((int)now.g_taskSortLink[ Index(((int)now.g_taskSortLinkTail), 3) ].taskId));
#endif
		;
		/* merge: g_taskSortLink[g_taskSortLinkTail].responseTime = 5(119, 106, 119) */
		reached[2][106] = 1;
		(trpt+1)->bup.ovals[4] = ((int)now.g_taskSortLink[ Index(((int)now.g_taskSortLinkTail), 3) ].responseTime);
		now.g_taskSortLink[ Index(now.g_taskSortLinkTail, 3) ].responseTime = 5;
#ifdef VAR_RANGES
		logval("g_taskSortLink[g_taskSortLinkTail].responseTime", ((int)now.g_taskSortLink[ Index(((int)now.g_taskSortLinkTail), 3) ].responseTime));
#endif
		;
		/* merge: tcb[currentTask].pendList = g_taskSortLinkTail(119, 107, 119) */
		reached[2][107] = 1;
		(trpt+1)->bup.ovals[5] = ((int)now.tcb[ Index(((int)((P2 *)_this)->_6_14_24_currentTask), 4) ].pendList);
		now.tcb[ Index(((P2 *)_this)->_6_14_24_currentTask, 4) ].pendList = ((int)now.g_taskSortLinkTail);
#ifdef VAR_RANGES
		logval("tcb[Process1:currentTask].pendList", ((int)now.tcb[ Index(((int)((P2 *)_this)->_6_14_24_currentTask), 4) ].pendList));
#endif
		;
		/* merge: g_taskSortLinkTail = (g_taskSortLinkTail+1)(119, 108, 119) */
		reached[2][108] = 1;
		(trpt+1)->bup.ovals[6] = ((int)now.g_taskSortLinkTail);
		now.g_taskSortLinkTail = (((int)now.g_taskSortLinkTail)+1);
#ifdef VAR_RANGES
		logval("g_taskSortLinkTail", ((int)now.g_taskSortLinkTail));
#endif
		;
		_m = 3; goto P999; /* 10 */
	case 349: // STATE 95 - data_structures.pml:185 - [(1)] (119:0:5 - 1)
		IfNotBlocked
		reached[2][95] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(119, 97, 119) */
		reached[2][97] = 1;
		;
		/* merge: .(goto)(119, 102, 119) */
		reached[2][102] = 1;
		;
		/* merge: tcb[currentTask].state = 2(119, 103, 119) */
		reached[2][103] = 1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((int)now.tcb[ Index(((int)((P2 *)_this)->_6_14_24_currentTask), 4) ].state);
		now.tcb[ Index(((P2 *)_this)->_6_14_24_currentTask, 4) ].state = 2;
#ifdef VAR_RANGES
		logval("tcb[Process1:currentTask].state", ((int)now.tcb[ Index(((int)((P2 *)_this)->_6_14_24_currentTask), 4) ].state));
#endif
		;
		/* merge: assert((g_taskSortLinkTail<(2+1)))(119, 104, 119) */
		reached[2][104] = 1;
		spin_assert((((int)now.g_taskSortLinkTail)<(2+1)), "(g_taskSortLinkTail<(2+1))", II, tt, t);
		/* merge: g_taskSortLink[g_taskSortLinkTail].taskId = currentTask(119, 105, 119) */
		reached[2][105] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.g_taskSortLink[ Index(((int)now.g_taskSortLinkTail), 3) ].taskId);
		now.g_taskSortLink[ Index(now.g_taskSortLinkTail, 3) ].taskId = ((int)((P2 *)_this)->_6_14_24_currentTask);
#ifdef VAR_RANGES
		logval("g_taskSortLink[g_taskSortLinkTail].taskId", ((int)now.g_taskSortLink[ Index(((int)now.g_taskSortLinkTail), 3) ].taskId));
#endif
		;
		/* merge: g_taskSortLink[g_taskSortLinkTail].responseTime = 5(119, 106, 119) */
		reached[2][106] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.g_taskSortLink[ Index(((int)now.g_taskSortLinkTail), 3) ].responseTime);
		now.g_taskSortLink[ Index(now.g_taskSortLinkTail, 3) ].responseTime = 5;
#ifdef VAR_RANGES
		logval("g_taskSortLink[g_taskSortLinkTail].responseTime", ((int)now.g_taskSortLink[ Index(((int)now.g_taskSortLinkTail), 3) ].responseTime));
#endif
		;
		/* merge: tcb[currentTask].pendList = g_taskSortLinkTail(119, 107, 119) */
		reached[2][107] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.tcb[ Index(((int)((P2 *)_this)->_6_14_24_currentTask), 4) ].pendList);
		now.tcb[ Index(((P2 *)_this)->_6_14_24_currentTask, 4) ].pendList = ((int)now.g_taskSortLinkTail);
#ifdef VAR_RANGES
		logval("tcb[Process1:currentTask].pendList", ((int)now.tcb[ Index(((int)((P2 *)_this)->_6_14_24_currentTask), 4) ].pendList));
#endif
		;
		/* merge: g_taskSortLinkTail = (g_taskSortLinkTail+1)(119, 108, 119) */
		reached[2][108] = 1;
		(trpt+1)->bup.ovals[4] = ((int)now.g_taskSortLinkTail);
		now.g_taskSortLinkTail = (((int)now.g_taskSortLinkTail)+1);
#ifdef VAR_RANGES
		logval("g_taskSortLinkTail", ((int)now.g_taskSortLinkTail));
#endif
		;
		_m = 3; goto P999; /* 8 */
	case 350: // STATE 100 - scheduler.pml:90 - [(1)] (119:0:5 - 1)
		IfNotBlocked
		reached[2][100] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(119, 102, 119) */
		reached[2][102] = 1;
		;
		/* merge: tcb[currentTask].state = 2(119, 103, 119) */
		reached[2][103] = 1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((int)now.tcb[ Index(((int)((P2 *)_this)->_6_14_24_currentTask), 4) ].state);
		now.tcb[ Index(((P2 *)_this)->_6_14_24_currentTask, 4) ].state = 2;
#ifdef VAR_RANGES
		logval("tcb[Process1:currentTask].state", ((int)now.tcb[ Index(((int)((P2 *)_this)->_6_14_24_currentTask), 4) ].state));
#endif
		;
		/* merge: assert((g_taskSortLinkTail<(2+1)))(119, 104, 119) */
		reached[2][104] = 1;
		spin_assert((((int)now.g_taskSortLinkTail)<(2+1)), "(g_taskSortLinkTail<(2+1))", II, tt, t);
		/* merge: g_taskSortLink[g_taskSortLinkTail].taskId = currentTask(119, 105, 119) */
		reached[2][105] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.g_taskSortLink[ Index(((int)now.g_taskSortLinkTail), 3) ].taskId);
		now.g_taskSortLink[ Index(now.g_taskSortLinkTail, 3) ].taskId = ((int)((P2 *)_this)->_6_14_24_currentTask);
#ifdef VAR_RANGES
		logval("g_taskSortLink[g_taskSortLinkTail].taskId", ((int)now.g_taskSortLink[ Index(((int)now.g_taskSortLinkTail), 3) ].taskId));
#endif
		;
		/* merge: g_taskSortLink[g_taskSortLinkTail].responseTime = 5(119, 106, 119) */
		reached[2][106] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.g_taskSortLink[ Index(((int)now.g_taskSortLinkTail), 3) ].responseTime);
		now.g_taskSortLink[ Index(now.g_taskSortLinkTail, 3) ].responseTime = 5;
#ifdef VAR_RANGES
		logval("g_taskSortLink[g_taskSortLinkTail].responseTime", ((int)now.g_taskSortLink[ Index(((int)now.g_taskSortLinkTail), 3) ].responseTime));
#endif
		;
		/* merge: tcb[currentTask].pendList = g_taskSortLinkTail(119, 107, 119) */
		reached[2][107] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.tcb[ Index(((int)((P2 *)_this)->_6_14_24_currentTask), 4) ].pendList);
		now.tcb[ Index(((P2 *)_this)->_6_14_24_currentTask, 4) ].pendList = ((int)now.g_taskSortLinkTail);
#ifdef VAR_RANGES
		logval("tcb[Process1:currentTask].pendList", ((int)now.tcb[ Index(((int)((P2 *)_this)->_6_14_24_currentTask), 4) ].pendList));
#endif
		;
		/* merge: g_taskSortLinkTail = (g_taskSortLinkTail+1)(119, 108, 119) */
		reached[2][108] = 1;
		(trpt+1)->bup.ovals[4] = ((int)now.g_taskSortLinkTail);
		now.g_taskSortLinkTail = (((int)now.g_taskSortLinkTail)+1);
#ifdef VAR_RANGES
		logval("g_taskSortLinkTail", ((int)now.g_taskSortLinkTail));
#endif
		;
		_m = 3; goto P999; /* 7 */
	case 351: // STATE 103 - scheduler.pml:92 - [tcb[currentTask].state = 2] (0:119:5 - 5)
		IfNotBlocked
		reached[2][103] = 1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((int)now.tcb[ Index(((int)((P2 *)_this)->_6_14_24_currentTask), 4) ].state);
		now.tcb[ Index(((P2 *)_this)->_6_14_24_currentTask, 4) ].state = 2;
#ifdef VAR_RANGES
		logval("tcb[Process1:currentTask].state", ((int)now.tcb[ Index(((int)((P2 *)_this)->_6_14_24_currentTask), 4) ].state));
#endif
		;
		/* merge: assert((g_taskSortLinkTail<(2+1)))(119, 104, 119) */
		reached[2][104] = 1;
		spin_assert((((int)now.g_taskSortLinkTail)<(2+1)), "(g_taskSortLinkTail<(2+1))", II, tt, t);
		/* merge: g_taskSortLink[g_taskSortLinkTail].taskId = currentTask(119, 105, 119) */
		reached[2][105] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.g_taskSortLink[ Index(((int)now.g_taskSortLinkTail), 3) ].taskId);
		now.g_taskSortLink[ Index(now.g_taskSortLinkTail, 3) ].taskId = ((int)((P2 *)_this)->_6_14_24_currentTask);
#ifdef VAR_RANGES
		logval("g_taskSortLink[g_taskSortLinkTail].taskId", ((int)now.g_taskSortLink[ Index(((int)now.g_taskSortLinkTail), 3) ].taskId));
#endif
		;
		/* merge: g_taskSortLink[g_taskSortLinkTail].responseTime = 5(119, 106, 119) */
		reached[2][106] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.g_taskSortLink[ Index(((int)now.g_taskSortLinkTail), 3) ].responseTime);
		now.g_taskSortLink[ Index(now.g_taskSortLinkTail, 3) ].responseTime = 5;
#ifdef VAR_RANGES
		logval("g_taskSortLink[g_taskSortLinkTail].responseTime", ((int)now.g_taskSortLink[ Index(((int)now.g_taskSortLinkTail), 3) ].responseTime));
#endif
		;
		/* merge: tcb[currentTask].pendList = g_taskSortLinkTail(119, 107, 119) */
		reached[2][107] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.tcb[ Index(((int)((P2 *)_this)->_6_14_24_currentTask), 4) ].pendList);
		now.tcb[ Index(((P2 *)_this)->_6_14_24_currentTask, 4) ].pendList = ((int)now.g_taskSortLinkTail);
#ifdef VAR_RANGES
		logval("tcb[Process1:currentTask].pendList", ((int)now.tcb[ Index(((int)((P2 *)_this)->_6_14_24_currentTask), 4) ].pendList));
#endif
		;
		/* merge: g_taskSortLinkTail = (g_taskSortLinkTail+1)(119, 108, 119) */
		reached[2][108] = 1;
		(trpt+1)->bup.ovals[4] = ((int)now.g_taskSortLinkTail);
		now.g_taskSortLinkTail = (((int)now.g_taskSortLinkTail)+1);
#ifdef VAR_RANGES
		logval("g_taskSortLinkTail", ((int)now.g_taskSortLinkTail));
#endif
		;
		_m = 3; goto P999; /* 5 */
	case 352: // STATE 110 - scheduler.pml:117 - [((needSched&&g_taskScheduled))] (0:0:1 - 1)
		IfNotBlocked
		reached[2][110] = 1;
		if (!((((int)((P2 *)_this)->_6_14_24_needSched)&&((int)now.g_taskScheduled))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _6_14_24_needSched */  (trpt+1)->bup.oval = ((P2 *)_this)->_6_14_24_needSched;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P2 *)_this)->_6_14_24_needSched = 0;
		_m = 3; goto P999; /* 0 */
	case 353: // STATE 111 - data_structures.pml:106 - [intSave = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[2][111] = 1;
		(trpt+1)->bup.oval = ((int)((P2 *)_this)->_6_14_24_intSave);
		((P2 *)_this)->_6_14_24_intSave = 0;
#ifdef VAR_RANGES
		logval("Process1:intSave", ((int)((P2 *)_this)->_6_14_24_intSave));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 354: // STATE 113 - data_structures.pml:44 - [assert(((0<2)&&(0<8)))] (0:131:1 - 1)
		IfNotBlocked
		reached[2][113] = 1;
		spin_assert(((0<2)&&(0<8)), "((0<2)&&(0<8))", II, tt, t);
		/* merge: pending_exp = (pending_exp|(1<<0))(131, 114, 131) */
		reached[2][114] = 1;
		(trpt+1)->bup.oval = ((int)now.pending_exp);
		now.pending_exp = (((int)now.pending_exp)|(1<<0));
#ifdef VAR_RANGES
		logval("pending_exp", ((int)now.pending_exp));
#endif
		;
		/* merge: .(goto)(0, 120, 131) */
		reached[2][120] = 1;
		;
		/* merge: .(goto)(0, 124, 131) */
		reached[2][124] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 355: // STATE 127 - data_structures.pml:44 - [assert(((1<2)&&(1<8)))] (0:146:1 - 1)
		IfNotBlocked
		reached[2][127] = 1;
		spin_assert(((1<2)&&(1<8)), "((1<2)&&(1<8))", II, tt, t);
		/* merge: pending_exp = (pending_exp|(1<<1))(146, 128, 146) */
		reached[2][128] = 1;
		(trpt+1)->bup.oval = ((int)now.pending_exp);
		now.pending_exp = (((int)now.pending_exp)|(1<<1));
#ifdef VAR_RANGES
		logval("pending_exp", ((int)now.pending_exp));
#endif
		;
		/* merge: .(goto)(0, 132, 146) */
		reached[2][132] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 356: // STATE 133 - processes.pml:9 - [((((((pending_exp>>0)&1)&&((BASEPRI==0)||(15<BASEPRI)))||(((pending_exp>>1)&1)&&((BASEPRI==0)||(15<BASEPRI))))&&(EP>=2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][133] = 1;
		if (!((((((((int)now.pending_exp)>>0)&1)&&((((int)now.BASEPRI)==0)||(15<((int)now.BASEPRI))))||(((((int)now.pending_exp)>>1)&1)&&((((int)now.BASEPRI)==0)||(15<((int)now.BASEPRI)))))&&(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 357: // STATE 134 - processes.pml:9 - [((EP>=2))] (142:0:1 - 1)
		IfNotBlocked
		reached[2][134] = 1;
		if (!((((int)now.EP)>=2)))
			continue;
		/* merge: chain_tick_used = 0(0, 135, 142) */
		reached[2][135] = 1;
		(trpt+1)->bup.oval = ((int)now.chain_tick_used);
		now.chain_tick_used = 0;
#ifdef VAR_RANGES
		logval("chain_tick_used", ((int)now.chain_tick_used));
#endif
		;
		/* merge: .(goto)(0, 139, 142) */
		reached[2][139] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 358: // STATE 140 - data_structures.pml:56 - [assert((EP_Stack==255))] (0:149:2 - 1)
		IfNotBlocked
		reached[2][140] = 1;
		spin_assert((((int)now.EP_Stack)==255), "(EP_Stack==255)", II, tt, t);
		/* merge: EP_Stack = EP(149, 141, 149) */
		reached[2][141] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.EP_Stack);
		now.EP_Stack = ((int)now.EP);
#ifdef VAR_RANGES
		logval("EP_Stack", ((int)now.EP_Stack));
#endif
		;
		/* merge: EP = ( (((pending_exp>>0)&1)) -> (0) : (1) )(149, 143, 149) */
		reached[2][143] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.EP);
		now.EP = ( (((((int)now.pending_exp)>>0)&1)) ? (0) : (1) );
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: .(goto)(149, 147, 149) */
		reached[2][147] = 1;
		;
		/* merge: .(goto)(0, 150, 149) */
		reached[2][150] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 359: // STATE 147 - processes.pml:9 - [.(goto)] (0:149:0 - 2)
		IfNotBlocked
		reached[2][147] = 1;
		;
		/* merge: .(goto)(0, 150, 149) */
		reached[2][150] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 360: // STATE 145 - processes.pml:9 - [(1)] (149:0:0 - 1)
		IfNotBlocked
		reached[2][145] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(149, 147, 149) */
		reached[2][147] = 1;
		;
		/* merge: .(goto)(0, 150, 149) */
		reached[2][150] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 361: // STATE 152 - processes.pml:11 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][152] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC SysTick_Handler */
	case 362: // STATE 1 - scheduler.pml:219 - [((EP==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		if (!((((int)now.EP)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 363: // STATE 2 - data_structures.pml:80 - [((EP==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!((((int)now.EP)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 364: // STATE 3 - data_structures.pml:50 - [assert(((1<2)&&(1<8)))] (0:78:1 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		spin_assert(((1<2)&&(1<8)), "((1<2)&&(1<8))", II, tt, t);
		/* merge: pending_exp = (pending_exp&~((1<<1)))(78, 4, 78) */
		reached[1][4] = 1;
		(trpt+1)->bup.oval = ((int)now.pending_exp);
		now.pending_exp = (((int)now.pending_exp)& ~((1<<1)));
#ifdef VAR_RANGES
		logval("pending_exp", ((int)now.pending_exp));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 365: // STATE 8 - scheduler.pml:223 - [((1==EP))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][8] = 1;
		if (!((1==((int)now.EP))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 366: // STATE 9 - scheduler.pml:130 - [idx = 0] (0:57:4 - 1)
		IfNotBlocked
		reached[1][9] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)_this)->_5_9_14_idx);
		((P1 *)_this)->_5_9_14_idx = 0;
#ifdef VAR_RANGES
		logval("SysTick_Handler:idx", ((int)((P1 *)_this)->_5_9_14_idx));
#endif
		;
		/* merge: taskId = 0(57, 10, 57) */
		reached[1][10] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)_this)->_5_9_14_taskId);
		((P1 *)_this)->_5_9_14_taskId = 0;
#ifdef VAR_RANGES
		logval("SysTick_Handler:taskId", ((int)((P1 *)_this)->_5_9_14_taskId));
#endif
		;
		/* merge: needSched = 0(57, 11, 57) */
		reached[1][11] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P1 *)_this)->_5_9_14_needSched);
		((P1 *)_this)->_5_9_14_needSched = 0;
#ifdef VAR_RANGES
		logval("SysTick_Handler:needSched", ((int)((P1 *)_this)->_5_9_14_needSched));
#endif
		;
		/* merge: g_tickCount = (g_tickCount+1)(57, 12, 57) */
		reached[1][12] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.g_tickCount);
		now.g_tickCount = (((int)now.g_tickCount)+1);
#ifdef VAR_RANGES
		logval("g_tickCount", ((int)now.g_tickCount));
#endif
		;
		/* merge: .(goto)(0, 58, 57) */
		reached[1][58] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 367: // STATE 13 - scheduler.pml:138 - [((idx<g_taskSortLinkTail))] (53:0:1 - 1)
		IfNotBlocked
		reached[1][13] = 1;
		if (!((((int)((P1 *)_this)->_5_9_14_idx)<((int)now.g_taskSortLinkTail))))
			continue;
		/* merge: taskId = g_taskSortLink[idx].taskId(0, 14, 53) */
		reached[1][14] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)_this)->_5_9_14_taskId);
		((P1 *)_this)->_5_9_14_taskId = ((int)now.g_taskSortLink[ Index(((int)((P1 *)_this)->_5_9_14_idx), 3) ].taskId);
#ifdef VAR_RANGES
		logval("SysTick_Handler:taskId", ((int)((P1 *)_this)->_5_9_14_taskId));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 368: // STATE 15 - scheduler.pml:141 - [(((tcb[taskId].state==2)&&(g_taskSortLink[idx].responseTime>0)))] (49:0:1 - 1)
		IfNotBlocked
		reached[1][15] = 1;
		if (!(((((int)now.tcb[ Index(((int)((P1 *)_this)->_5_9_14_taskId), 4) ].state)==2)&&(((int)now.g_taskSortLink[ Index(((int)((P1 *)_this)->_5_9_14_idx), 3) ].responseTime)>0))))
			continue;
		/* merge: g_taskSortLink[idx].responseTime = (g_taskSortLink[idx].responseTime-1)(0, 16, 49) */
		reached[1][16] = 1;
		(trpt+1)->bup.oval = ((int)now.g_taskSortLink[ Index(((int)((P1 *)_this)->_5_9_14_idx), 3) ].responseTime);
		now.g_taskSortLink[ Index(((P1 *)_this)->_5_9_14_idx, 3) ].responseTime = (((int)now.g_taskSortLink[ Index(((int)((P1 *)_this)->_5_9_14_idx), 3) ].responseTime)-1);
#ifdef VAR_RANGES
		logval("g_taskSortLink[SysTick_Handler:idx].responseTime", ((int)now.g_taskSortLink[ Index(((int)((P1 *)_this)->_5_9_14_idx), 3) ].responseTime));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 369: // STATE 17 - scheduler.pml:146 - [((g_taskSortLink[idx].responseTime==0))] (26:0:1 - 1)
		IfNotBlocked
		reached[1][17] = 1;
		if (!((((int)now.g_taskSortLink[ Index(((int)((P1 *)_this)->_5_9_14_idx), 3) ].responseTime)==0)))
			continue;
		/* merge: tcb[taskId].state = 1(0, 18, 26) */
		reached[1][18] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[ Index(((int)((P1 *)_this)->_5_9_14_taskId), 4) ].state);
		now.tcb[ Index(((P1 *)_this)->_5_9_14_taskId, 4) ].state = 1;
#ifdef VAR_RANGES
		logval("tcb[SysTick_Handler:taskId].state", ((int)now.tcb[ Index(((int)((P1 *)_this)->_5_9_14_taskId), 4) ].state));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 370: // STATE 19 - data_structures.pml:135 - [((readyQueue[tcb[taskId].prio].tailIndex<5))] (40:0:3 - 1)
		IfNotBlocked
		reached[1][19] = 1;
		if (!((((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P1 *)_this)->_5_9_14_taskId), 4) ].prio), 4) ].tailIndex)<5)))
			continue;
		/* merge: readyQueue[tcb[taskId].prio].tasks[readyQueue[tcb[taskId].prio].tailIndex] = taskId(40, 20, 40) */
		reached[1][20] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P1 *)_this)->_5_9_14_taskId), 4) ].prio), 4) ].tasks[ Index(((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P1 *)_this)->_5_9_14_taskId), 4) ].prio), 4) ].tailIndex), 5) ]);
		now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_5_9_14_taskId, 4) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_5_9_14_taskId, 4) ].prio, 4) ].tailIndex, 5) ] = ((int)((P1 *)_this)->_5_9_14_taskId);
#ifdef VAR_RANGES
		logval("readyQueue[tcb[SysTick_Handler:taskId].prio].tasks[readyQueue[tcb[SysTick_Handler:taskId].prio].tailIndex]", ((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P1 *)_this)->_5_9_14_taskId), 4) ].prio), 4) ].tasks[ Index(((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P1 *)_this)->_5_9_14_taskId), 4) ].prio), 4) ].tailIndex), 5) ]));
#endif
		;
		/* merge: readyQueue[tcb[taskId].prio].tailIndex = (readyQueue[tcb[taskId].prio].tailIndex+1)(40, 21, 40) */
		reached[1][21] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P1 *)_this)->_5_9_14_taskId), 4) ].prio), 4) ].tailIndex);
		now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_5_9_14_taskId, 4) ].prio, 4) ].tailIndex = (((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P1 *)_this)->_5_9_14_taskId), 4) ].prio), 4) ].tailIndex)+1);
#ifdef VAR_RANGES
		logval("readyQueue[tcb[SysTick_Handler:taskId].prio].tailIndex", ((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P1 *)_this)->_5_9_14_taskId), 4) ].prio), 4) ].tailIndex));
#endif
		;
		/* merge: .(goto)(40, 25, 40) */
		reached[1][25] = 1;
		;
		/* merge: shiftIdx = idx(40, 27, 40) */
		reached[1][27] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P1 *)_this)->_5_9_14_shiftIdx);
		((P1 *)_this)->_5_9_14_shiftIdx = ((int)((P1 *)_this)->_5_9_14_idx);
#ifdef VAR_RANGES
		logval("SysTick_Handler:shiftIdx", ((int)((P1 *)_this)->_5_9_14_shiftIdx));
#endif
		;
		/* merge: .(goto)(0, 41, 40) */
		reached[1][41] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 371: // STATE 23 - data_structures.pml:138 - [assert(0)] (0:40:1 - 1)
		IfNotBlocked
		reached[1][23] = 1;
		spin_assert(0, "0", II, tt, t);
		/* merge: .(goto)(40, 25, 40) */
		reached[1][25] = 1;
		;
		/* merge: shiftIdx = idx(40, 27, 40) */
		reached[1][27] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)_this)->_5_9_14_shiftIdx);
		((P1 *)_this)->_5_9_14_shiftIdx = ((int)((P1 *)_this)->_5_9_14_idx);
#ifdef VAR_RANGES
		logval("SysTick_Handler:shiftIdx", ((int)((P1 *)_this)->_5_9_14_shiftIdx));
#endif
		;
		/* merge: .(goto)(0, 41, 40) */
		reached[1][41] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 372: // STATE 27 - scheduler.pml:153 - [shiftIdx = idx] (0:40:1 - 3)
		IfNotBlocked
		reached[1][27] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)_this)->_5_9_14_shiftIdx);
		((P1 *)_this)->_5_9_14_shiftIdx = ((int)((P1 *)_this)->_5_9_14_idx);
#ifdef VAR_RANGES
		logval("SysTick_Handler:shiftIdx", ((int)((P1 *)_this)->_5_9_14_shiftIdx));
#endif
		;
		/* merge: .(goto)(0, 41, 40) */
		reached[1][41] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 373: // STATE 28 - scheduler.pml:154 - [((shiftIdx<(g_taskSortLinkTail-1)))] (35:0:2 - 1)
		IfNotBlocked
		reached[1][28] = 1;
		if (!((((int)((P1 *)_this)->_5_9_14_shiftIdx)<(((int)now.g_taskSortLinkTail)-1))))
			continue;
		/* merge: g_taskSortLink[shiftIdx].taskId = g_taskSortLink[(shiftIdx+1)].taskId(35, 29, 35) */
		reached[1][29] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.g_taskSortLink[ Index(((int)((P1 *)_this)->_5_9_14_shiftIdx), 3) ].taskId);
		now.g_taskSortLink[ Index(((P1 *)_this)->_5_9_14_shiftIdx, 3) ].taskId = ((int)now.g_taskSortLink[ Index((((int)((P1 *)_this)->_5_9_14_shiftIdx)+1), 3) ].taskId);
#ifdef VAR_RANGES
		logval("g_taskSortLink[SysTick_Handler:shiftIdx].taskId", ((int)now.g_taskSortLink[ Index(((int)((P1 *)_this)->_5_9_14_shiftIdx), 3) ].taskId));
#endif
		;
		/* merge: g_taskSortLink[shiftIdx].responseTime = g_taskSortLink[(shiftIdx+1)].responseTime(35, 30, 35) */
		reached[1][30] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.g_taskSortLink[ Index(((int)((P1 *)_this)->_5_9_14_shiftIdx), 3) ].responseTime);
		now.g_taskSortLink[ Index(((P1 *)_this)->_5_9_14_shiftIdx, 3) ].responseTime = ((int)now.g_taskSortLink[ Index((((int)((P1 *)_this)->_5_9_14_shiftIdx)+1), 3) ].responseTime);
#ifdef VAR_RANGES
		logval("g_taskSortLink[SysTick_Handler:shiftIdx].responseTime", ((int)now.g_taskSortLink[ Index(((int)((P1 *)_this)->_5_9_14_shiftIdx), 3) ].responseTime));
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 374: // STATE 31 - scheduler.pml:159 - [((g_taskSortLink[shiftIdx].taskId!=255))] (40:0:2 - 1)
		IfNotBlocked
		reached[1][31] = 1;
		if (!((((int)now.g_taskSortLink[ Index(((int)((P1 *)_this)->_5_9_14_shiftIdx), 3) ].taskId)!=255)))
			continue;
		/* merge: tcb[g_taskSortLink[shiftIdx].taskId].pendList = shiftIdx(40, 32, 40) */
		reached[1][32] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.tcb[ Index(((int)now.g_taskSortLink[ Index(((int)((P1 *)_this)->_5_9_14_shiftIdx), 3) ].taskId), 4) ].pendList);
		now.tcb[ Index(now.g_taskSortLink[ Index(((P1 *)_this)->_5_9_14_shiftIdx, 3) ].taskId, 4) ].pendList = ((int)((P1 *)_this)->_5_9_14_shiftIdx);
#ifdef VAR_RANGES
		logval("tcb[g_taskSortLink[SysTick_Handler:shiftIdx].taskId].pendList", ((int)now.tcb[ Index(((int)now.g_taskSortLink[ Index(((int)((P1 *)_this)->_5_9_14_shiftIdx), 3) ].taskId), 4) ].pendList));
#endif
		;
		/* merge: .(goto)(40, 36, 40) */
		reached[1][36] = 1;
		;
		/* merge: shiftIdx = (shiftIdx+1)(40, 37, 40) */
		reached[1][37] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)_this)->_5_9_14_shiftIdx);
		((P1 *)_this)->_5_9_14_shiftIdx = (((int)((P1 *)_this)->_5_9_14_shiftIdx)+1);
#ifdef VAR_RANGES
		logval("SysTick_Handler:shiftIdx", ((int)((P1 *)_this)->_5_9_14_shiftIdx));
#endif
		;
		/* merge: .(goto)(0, 41, 40) */
		reached[1][41] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 375: // STATE 34 - scheduler.pml:161 - [(1)] (40:0:1 - 1)
		IfNotBlocked
		reached[1][34] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(40, 36, 40) */
		reached[1][36] = 1;
		;
		/* merge: shiftIdx = (shiftIdx+1)(40, 37, 40) */
		reached[1][37] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)_this)->_5_9_14_shiftIdx);
		((P1 *)_this)->_5_9_14_shiftIdx = (((int)((P1 *)_this)->_5_9_14_shiftIdx)+1);
#ifdef VAR_RANGES
		logval("SysTick_Handler:shiftIdx", ((int)((P1 *)_this)->_5_9_14_shiftIdx));
#endif
		;
		/* merge: .(goto)(0, 41, 40) */
		reached[1][41] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 376: // STATE 37 - scheduler.pml:163 - [shiftIdx = (shiftIdx+1)] (0:40:1 - 3)
		IfNotBlocked
		reached[1][37] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)_this)->_5_9_14_shiftIdx);
		((P1 *)_this)->_5_9_14_shiftIdx = (((int)((P1 *)_this)->_5_9_14_shiftIdx)+1);
#ifdef VAR_RANGES
		logval("SysTick_Handler:shiftIdx", ((int)((P1 *)_this)->_5_9_14_shiftIdx));
#endif
		;
		/* merge: .(goto)(0, 41, 40) */
		reached[1][41] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 377: // STATE 43 - scheduler.pml:167 - [g_taskSortLink[(g_taskSortLinkTail-1)].taskId = 255] (0:57:4 - 3)
		IfNotBlocked
		reached[1][43] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((int)now.g_taskSortLink[ Index((((int)now.g_taskSortLinkTail)-1), 3) ].taskId);
		now.g_taskSortLink[ Index((now.g_taskSortLinkTail-1), 3) ].taskId = 255;
#ifdef VAR_RANGES
		logval("g_taskSortLink[(g_taskSortLinkTail-1)].taskId", ((int)now.g_taskSortLink[ Index((((int)now.g_taskSortLinkTail)-1), 3) ].taskId));
#endif
		;
		/* merge: g_taskSortLink[(g_taskSortLinkTail-1)].responseTime = 255(57, 44, 57) */
		reached[1][44] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.g_taskSortLink[ Index((((int)now.g_taskSortLinkTail)-1), 3) ].responseTime);
		now.g_taskSortLink[ Index((now.g_taskSortLinkTail-1), 3) ].responseTime = 255;
#ifdef VAR_RANGES
		logval("g_taskSortLink[(g_taskSortLinkTail-1)].responseTime", ((int)now.g_taskSortLink[ Index((((int)now.g_taskSortLinkTail)-1), 3) ].responseTime));
#endif
		;
		/* merge: g_taskSortLinkTail = (g_taskSortLinkTail-1)(57, 45, 57) */
		reached[1][45] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.g_taskSortLinkTail);
		now.g_taskSortLinkTail = (((int)now.g_taskSortLinkTail)-1);
#ifdef VAR_RANGES
		logval("g_taskSortLinkTail", ((int)now.g_taskSortLinkTail));
#endif
		;
		/* merge: needSched = 1(57, 46, 57) */
		reached[1][46] = 1;
		(trpt+1)->bup.ovals[3] = ((int)((P1 *)_this)->_5_9_14_needSched);
		((P1 *)_this)->_5_9_14_needSched = 1;
#ifdef VAR_RANGES
		logval("SysTick_Handler:needSched", ((int)((P1 *)_this)->_5_9_14_needSched));
#endif
		;
		/* merge: .(goto)(0, 50, 57) */
		reached[1][50] = 1;
		;
		/* merge: .(goto)(0, 54, 57) */
		reached[1][54] = 1;
		;
		/* merge: .(goto)(0, 58, 57) */
		reached[1][58] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 378: // STATE 48 - scheduler.pml:173 - [idx = (idx+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][48] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)_this)->_5_9_14_idx);
		((P1 *)_this)->_5_9_14_idx = (((int)((P1 *)_this)->_5_9_14_idx)+1);
#ifdef VAR_RANGES
		logval("SysTick_Handler:idx", ((int)((P1 *)_this)->_5_9_14_idx));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 379: // STATE 52 - scheduler.pml:175 - [idx = (idx+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][52] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)_this)->_5_9_14_idx);
		((P1 *)_this)->_5_9_14_idx = (((int)((P1 *)_this)->_5_9_14_idx)+1);
#ifdef VAR_RANGES
		logval("SysTick_Handler:idx", ((int)((P1 *)_this)->_5_9_14_idx));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 380: // STATE 60 - scheduler.pml:182 - [((needSched&&g_taskScheduled))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][60] = 1;
		if (!((((int)((P1 *)_this)->_5_9_14_needSched)&&((int)now.g_taskScheduled))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _5_9_14_needSched */  (trpt+1)->bup.oval = ((P1 *)_this)->_5_9_14_needSched;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->_5_9_14_needSched = 0;
		_m = 3; goto P999; /* 0 */
	case 381: // STATE 61 - data_structures.pml:44 - [assert(((0<2)&&(0<8)))] (0:77:1 - 1)
		IfNotBlocked
		reached[1][61] = 1;
		spin_assert(((0<2)&&(0<8)), "((0<2)&&(0<8))", II, tt, t);
		/* merge: pending_exp = (pending_exp|(1<<0))(77, 62, 77) */
		reached[1][62] = 1;
		(trpt+1)->bup.oval = ((int)now.pending_exp);
		now.pending_exp = (((int)now.pending_exp)|(1<<0));
#ifdef VAR_RANGES
		logval("pending_exp", ((int)now.pending_exp));
#endif
		;
		/* merge: .(goto)(0, 67, 77) */
		reached[1][67] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 382: // STATE 69 - data_structures.pml:113 - [(((chain_tick_used==0)&&(((pending_exp>>1)&1)==0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][69] = 1;
		if (!(((((int)now.chain_tick_used)==0)&&(((((int)now.pending_exp)>>1)&1)==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 383: // STATE 70 - data_structures.pml:44 - [assert(((1<2)&&(1<8)))] (0:92:2 - 1)
		IfNotBlocked
		reached[1][70] = 1;
		spin_assert(((1<2)&&(1<8)), "((1<2)&&(1<8))", II, tt, t);
		/* merge: pending_exp = (pending_exp|(1<<1))(92, 71, 92) */
		reached[1][71] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.pending_exp);
		now.pending_exp = (((int)now.pending_exp)|(1<<1));
#ifdef VAR_RANGES
		logval("pending_exp", ((int)now.pending_exp));
#endif
		;
		/* merge: chain_tick_used = 1(92, 73, 92) */
		reached[1][73] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.chain_tick_used);
		now.chain_tick_used = 1;
#ifdef VAR_RANGES
		logval("chain_tick_used", ((int)now.chain_tick_used));
#endif
		;
		/* merge: .(goto)(92, 76, 92) */
		reached[1][76] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 384: // STATE 76 - data_structures.pml:117 - [.(goto)] (0:92:0 - 2)
		IfNotBlocked
		reached[1][76] = 1;
		;
		_m = 3; goto P999; /* 0 */
	case 385: // STATE 74 - data_structures.pml:115 - [(1)] (92:0:0 - 1)
		IfNotBlocked
		reached[1][74] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(92, 76, 92) */
		reached[1][76] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 386: // STATE 79 - scheduler.pml:226 - [((1==EP))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][79] = 1;
		if (!((1==((int)now.EP))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 387: // STATE 80 - data_structures.pml:44 - [assert(((0<2)&&(0<8)))] (0:91:1 - 1)
		IfNotBlocked
		reached[1][80] = 1;
		spin_assert(((0<2)&&(0<8)), "((0<2)&&(0<8))", II, tt, t);
		/* merge: pending_exp = (pending_exp|(1<<0))(91, 81, 91) */
		reached[1][81] = 1;
		(trpt+1)->bup.oval = ((int)now.pending_exp);
		now.pending_exp = (((int)now.pending_exp)|(1<<0));
#ifdef VAR_RANGES
		logval("pending_exp", ((int)now.pending_exp));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 388: // STATE 83 - data_structures.pml:113 - [(((chain_tick_used==0)&&(((pending_exp>>1)&1)==0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][83] = 1;
		if (!(((((int)now.chain_tick_used)==0)&&(((((int)now.pending_exp)>>1)&1)==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 389: // STATE 84 - data_structures.pml:44 - [assert(((1<2)&&(1<8)))] (0:118:2 - 1)
		IfNotBlocked
		reached[1][84] = 1;
		spin_assert(((1<2)&&(1<8)), "((1<2)&&(1<8))", II, tt, t);
		/* merge: pending_exp = (pending_exp|(1<<1))(118, 85, 118) */
		reached[1][85] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.pending_exp);
		now.pending_exp = (((int)now.pending_exp)|(1<<1));
#ifdef VAR_RANGES
		logval("pending_exp", ((int)now.pending_exp));
#endif
		;
		/* merge: chain_tick_used = 1(118, 87, 118) */
		reached[1][87] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.chain_tick_used);
		now.chain_tick_used = 1;
#ifdef VAR_RANGES
		logval("chain_tick_used", ((int)now.chain_tick_used));
#endif
		;
		/* merge: .(goto)(118, 90, 118) */
		reached[1][90] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 390: // STATE 90 - data_structures.pml:117 - [.(goto)] (0:118:0 - 2)
		IfNotBlocked
		reached[1][90] = 1;
		;
		_m = 3; goto P999; /* 0 */
	case 391: // STATE 88 - data_structures.pml:115 - [(1)] (118:0:0 - 1)
		IfNotBlocked
		reached[1][88] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(118, 90, 118) */
		reached[1][90] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 392: // STATE 93 - scheduler.pml:229 - [((1==EP))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][93] = 1;
		if (!((1==((int)now.EP))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 393: // STATE 94 - data_structures.pml:94 - [((pending_exp>0))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][94] = 1;
		if (!((((int)now.pending_exp)>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 394: // STATE 95 - data_structures.pml:75 - [tmp = ( (((pending_exp>>0)&1)) -> (0) : (1) )] (0:117:4 - 1)
		IfNotBlocked
		reached[1][95] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)_this)->tmp);
		((P1 *)_this)->tmp = ( (((((int)now.pending_exp)>>0)&1)) ? (0) : (1) );
#ifdef VAR_RANGES
		logval("SysTick_Handler:tmp", ((int)((P1 *)_this)->tmp));
#endif
		;
		/* merge: assert((((BASEPRI==0)||(15<BASEPRI))&&(EP_Stack>=2)))(117, 97, 117) */
		reached[1][97] = 1;
		spin_assert((((((int)now.BASEPRI)==0)||(15<((int)now.BASEPRI)))&&(((int)now.EP_Stack)>=2)), "(((BASEPRI==0)||(15<BASEPRI))&&(EP_Stack>=2))", II, tt, t);
		/* merge: EP = tmp(117, 98, 117) */
		reached[1][98] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.EP);
		now.EP = ((int)((P1 *)_this)->tmp);
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: tmp = 255(117, 99, 117) */
		reached[1][99] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P1 *)_this)->tmp);
		((P1 *)_this)->tmp = 255;
#ifdef VAR_RANGES
		logval("SysTick_Handler:tmp", ((int)((P1 *)_this)->tmp));
#endif
		;
		if (TstOnly) return 1; /* TT */
		/* dead 2: tmp */  
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->tmp = 0;
		/* merge: .(goto)(0, 107, 117) */
		reached[1][107] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 395: // STATE 102 - data_structures.pml:62 - [assert((EP_Stack!=255))] (0:117:2 - 1)
		IfNotBlocked
		reached[1][102] = 1;
		spin_assert((((int)now.EP_Stack)!=255), "(EP_Stack!=255)", II, tt, t);
		/* merge: EP = EP_Stack(117, 103, 117) */
		reached[1][103] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.EP);
		now.EP = ((int)now.EP_Stack);
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: EP_Stack = 255(117, 104, 117) */
		reached[1][104] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.EP_Stack);
		now.EP_Stack = 255;
#ifdef VAR_RANGES
		logval("EP_Stack", ((int)now.EP_Stack));
#endif
		;
		/* merge: .(goto)(0, 107, 117) */
		reached[1][107] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 396: // STATE 109 - data_structures.pml:113 - [(((chain_tick_used==0)&&(((pending_exp>>1)&1)==0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][109] = 1;
		if (!(((((int)now.chain_tick_used)==0)&&(((((int)now.pending_exp)>>1)&1)==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 397: // STATE 110 - data_structures.pml:44 - [assert(((1<2)&&(1<8)))] (0:119:2 - 1)
		IfNotBlocked
		reached[1][110] = 1;
		spin_assert(((1<2)&&(1<8)), "((1<2)&&(1<8))", II, tt, t);
		/* merge: pending_exp = (pending_exp|(1<<1))(119, 111, 119) */
		reached[1][111] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.pending_exp);
		now.pending_exp = (((int)now.pending_exp)|(1<<1));
#ifdef VAR_RANGES
		logval("pending_exp", ((int)now.pending_exp));
#endif
		;
		/* merge: chain_tick_used = 1(119, 113, 119) */
		reached[1][113] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.chain_tick_used);
		now.chain_tick_used = 1;
#ifdef VAR_RANGES
		logval("chain_tick_used", ((int)now.chain_tick_used));
#endif
		;
		/* merge: .(goto)(119, 116, 119) */
		reached[1][116] = 1;
		;
		/* merge: .(goto)(0, 120, 119) */
		reached[1][120] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 398: // STATE 116 - data_structures.pml:117 - [.(goto)] (0:119:0 - 2)
		IfNotBlocked
		reached[1][116] = 1;
		;
		/* merge: .(goto)(0, 120, 119) */
		reached[1][120] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 399: // STATE 114 - data_structures.pml:115 - [(1)] (119:0:0 - 1)
		IfNotBlocked
		reached[1][114] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(119, 116, 119) */
		reached[1][116] = 1;
		;
		/* merge: .(goto)(0, 120, 119) */
		reached[1][120] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 400: // STATE 122 - scheduler.pml:231 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][122] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC PendSV_Handler */
	case 401: // STATE 1 - scheduler.pml:193 - [((EP==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		if (!((((int)now.EP)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 402: // STATE 2 - data_structures.pml:80 - [((EP==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		if (!((((int)now.EP)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 403: // STATE 3 - data_structures.pml:50 - [assert(((0<2)&&(0<8)))] (0:32:1 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		spin_assert(((0<2)&&(0<8)), "((0<2)&&(0<8))", II, tt, t);
		/* merge: pending_exp = (pending_exp&~((1<<0)))(32, 4, 32) */
		reached[0][4] = 1;
		(trpt+1)->bup.oval = ((int)now.pending_exp);
		now.pending_exp = (((int)now.pending_exp)& ~((1<<0)));
#ifdef VAR_RANGES
		logval("pending_exp", ((int)now.pending_exp));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 404: // STATE 8 - scheduler.pml:197 - [((0==EP))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][8] = 1;
		if (!((0==((int)now.EP))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 405: // STATE 9 - scheduler.pml:197 - [((tcb[EP_Stack].state==4))] (18:0:1 - 1)
		IfNotBlocked
		reached[0][9] = 1;
		if (!((((int)now.tcb[ Index(((int)now.EP_Stack), 4) ].state)==4)))
			continue;
		/* merge: tcb[EP_Stack].state = 1(0, 10, 18) */
		reached[0][10] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[ Index(((int)now.EP_Stack), 4) ].state);
		now.tcb[ Index(now.EP_Stack, 4) ].state = 1;
#ifdef VAR_RANGES
		logval("tcb[EP_Stack].state", ((int)now.tcb[ Index(((int)now.EP_Stack), 4) ].state));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 406: // STATE 11 - data_structures.pml:135 - [((readyQueue[tcb[EP_Stack].prio].tailIndex<5))] (31:0:2 - 1)
		IfNotBlocked
		reached[0][11] = 1;
		if (!((((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)now.EP_Stack), 4) ].prio), 4) ].tailIndex)<5)))
			continue;
		/* merge: readyQueue[tcb[EP_Stack].prio].tasks[readyQueue[tcb[EP_Stack].prio].tailIndex] = EP_Stack(31, 12, 31) */
		reached[0][12] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)now.EP_Stack), 4) ].prio), 4) ].tasks[ Index(((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)now.EP_Stack), 4) ].prio), 4) ].tailIndex), 5) ]);
		now.readyQueue[ Index(now.tcb[ Index(now.EP_Stack, 4) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(now.EP_Stack, 4) ].prio, 4) ].tailIndex, 5) ] = ((int)now.EP_Stack);
#ifdef VAR_RANGES
		logval("readyQueue[tcb[EP_Stack].prio].tasks[readyQueue[tcb[EP_Stack].prio].tailIndex]", ((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)now.EP_Stack), 4) ].prio), 4) ].tasks[ Index(((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)now.EP_Stack), 4) ].prio), 4) ].tailIndex), 5) ]));
#endif
		;
		/* merge: readyQueue[tcb[EP_Stack].prio].tailIndex = (readyQueue[tcb[EP_Stack].prio].tailIndex+1)(31, 13, 31) */
		reached[0][13] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)now.EP_Stack), 4) ].prio), 4) ].tailIndex);
		now.readyQueue[ Index(now.tcb[ Index(now.EP_Stack, 4) ].prio, 4) ].tailIndex = (((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)now.EP_Stack), 4) ].prio), 4) ].tailIndex)+1);
#ifdef VAR_RANGES
		logval("readyQueue[tcb[EP_Stack].prio].tailIndex", ((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)now.EP_Stack), 4) ].prio), 4) ].tailIndex));
#endif
		;
		/* merge: .(goto)(0, 17, 31) */
		reached[0][17] = 1;
		;
		/* merge: .(goto)(0, 22, 31) */
		reached[0][22] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 407: // STATE 15 - data_structures.pml:138 - [assert(0)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][15] = 1;
		spin_assert(0, "0", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 408: // STATE 23 - data_structures.pml:113 - [(((chain_tick_used==0)&&(((pending_exp>>1)&1)==0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][23] = 1;
		if (!(((((int)now.chain_tick_used)==0)&&(((((int)now.pending_exp)>>1)&1)==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 409: // STATE 24 - data_structures.pml:44 - [assert(((1<2)&&(1<8)))] (0:62:2 - 1)
		IfNotBlocked
		reached[0][24] = 1;
		spin_assert(((1<2)&&(1<8)), "((1<2)&&(1<8))", II, tt, t);
		/* merge: pending_exp = (pending_exp|(1<<1))(62, 25, 62) */
		reached[0][25] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.pending_exp);
		now.pending_exp = (((int)now.pending_exp)|(1<<1));
#ifdef VAR_RANGES
		logval("pending_exp", ((int)now.pending_exp));
#endif
		;
		/* merge: chain_tick_used = 1(62, 27, 62) */
		reached[0][27] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.chain_tick_used);
		now.chain_tick_used = 1;
#ifdef VAR_RANGES
		logval("chain_tick_used", ((int)now.chain_tick_used));
#endif
		;
		/* merge: .(goto)(62, 30, 62) */
		reached[0][30] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 410: // STATE 30 - data_structures.pml:117 - [.(goto)] (0:62:0 - 2)
		IfNotBlocked
		reached[0][30] = 1;
		;
		_m = 3; goto P999; /* 0 */
	case 411: // STATE 28 - data_structures.pml:115 - [(1)] (62:0:0 - 1)
		IfNotBlocked
		reached[0][28] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(62, 30, 62) */
		reached[0][30] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 412: // STATE 33 - scheduler.pml:205 - [((0==EP))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][33] = 1;
		if (!((0==((int)now.EP))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 413: // STATE 34 - data_structures.pml:192 - [prio = 0] (0:47:3 - 1)
		IfNotBlocked
		reached[0][34] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->_4_3_4_prio);
		((P0 *)_this)->_4_3_4_prio = 0;
#ifdef VAR_RANGES
		logval("PendSV_Handler:prio", ((int)((P0 *)_this)->_4_3_4_prio));
#endif
		;
		/* merge: top_task = 0(47, 35, 47) */
		reached[0][35] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->_4_3_4_top_task);
		((P0 *)_this)->_4_3_4_top_task = 0;
#ifdef VAR_RANGES
		logval("PendSV_Handler:top_task", ((int)((P0 *)_this)->_4_3_4_top_task));
#endif
		;
		/* merge: found = 0(47, 36, 47) */
		reached[0][36] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P0 *)_this)->_4_3_4_found);
		((P0 *)_this)->_4_3_4_found = 0;
#ifdef VAR_RANGES
		logval("PendSV_Handler:found", ((int)((P0 *)_this)->_4_3_4_found));
#endif
		;
		/* merge: .(goto)(0, 48, 47) */
		reached[0][48] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 414: // STATE 37 - data_structures.pml:195 - [(((prio<4)&&!(found)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][37] = 1;
		if (!(((((int)((P0 *)_this)->_4_3_4_prio)<4)&& !(((int)((P0 *)_this)->_4_3_4_found)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 415: // STATE 38 - data_structures.pml:197 - [((readyQueue[prio].tailIndex>0))] (47:0:2 - 1)
		IfNotBlocked
		reached[0][38] = 1;
		if (!((((int)now.readyQueue[ Index(((int)((P0 *)_this)->_4_3_4_prio), 4) ].tailIndex)>0)))
			continue;
		/* merge: top_task = readyQueue[prio].tasks[0](47, 39, 47) */
		reached[0][39] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->_4_3_4_top_task);
		((P0 *)_this)->_4_3_4_top_task = ((int)now.readyQueue[ Index(((int)((P0 *)_this)->_4_3_4_prio), 4) ].tasks[0]);
#ifdef VAR_RANGES
		logval("PendSV_Handler:top_task", ((int)((P0 *)_this)->_4_3_4_top_task));
#endif
		;
		/* merge: found = 1(47, 40, 47) */
		reached[0][40] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->_4_3_4_found);
		((P0 *)_this)->_4_3_4_found = 1;
#ifdef VAR_RANGES
		logval("PendSV_Handler:found", ((int)((P0 *)_this)->_4_3_4_found));
#endif
		;
		/* merge: .(goto)(0, 44, 47) */
		reached[0][44] = 1;
		;
		/* merge: .(goto)(0, 48, 47) */
		reached[0][48] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 416: // STATE 42 - data_structures.pml:200 - [prio = (prio+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][42] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->_4_3_4_prio);
		((P0 *)_this)->_4_3_4_prio = (((int)((P0 *)_this)->_4_3_4_prio)+1);
#ifdef VAR_RANGES
		logval("PendSV_Handler:prio", ((int)((P0 *)_this)->_4_3_4_prio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 417: // STATE 50 - data_structures.pml:204 - [tmp = top_task] (0:61:2 - 3)
		IfNotBlocked
		reached[0][50] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->tmp);
		((P0 *)_this)->tmp = ((int)((P0 *)_this)->_4_3_4_top_task);
#ifdef VAR_RANGES
		logval("PendSV_Handler:tmp", ((int)((P0 *)_this)->tmp));
#endif
		;
		/* merge: topPrio = prio(61, 51, 61) */
		reached[0][51] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.topPrio);
		now.topPrio = ((int)((P0 *)_this)->_4_3_4_prio);
#ifdef VAR_RANGES
		logval("topPrio", ((int)now.topPrio));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 418: // STATE 53 - data_structures.pml:113 - [(((chain_tick_used==0)&&(((pending_exp>>1)&1)==0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][53] = 1;
		if (!(((((int)now.chain_tick_used)==0)&&(((((int)now.pending_exp)>>1)&1)==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 419: // STATE 54 - data_structures.pml:44 - [assert(((1<2)&&(1<8)))] (0:90:2 - 1)
		IfNotBlocked
		reached[0][54] = 1;
		spin_assert(((1<2)&&(1<8)), "((1<2)&&(1<8))", II, tt, t);
		/* merge: pending_exp = (pending_exp|(1<<1))(90, 55, 90) */
		reached[0][55] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.pending_exp);
		now.pending_exp = (((int)now.pending_exp)|(1<<1));
#ifdef VAR_RANGES
		logval("pending_exp", ((int)now.pending_exp));
#endif
		;
		/* merge: chain_tick_used = 1(90, 57, 90) */
		reached[0][57] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.chain_tick_used);
		now.chain_tick_used = 1;
#ifdef VAR_RANGES
		logval("chain_tick_used", ((int)now.chain_tick_used));
#endif
		;
		/* merge: .(goto)(90, 60, 90) */
		reached[0][60] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 420: // STATE 60 - data_structures.pml:117 - [.(goto)] (0:90:0 - 2)
		IfNotBlocked
		reached[0][60] = 1;
		;
		_m = 3; goto P999; /* 0 */
	case 421: // STATE 58 - data_structures.pml:115 - [(1)] (90:0:0 - 1)
		IfNotBlocked
		reached[0][58] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(90, 60, 90) */
		reached[0][60] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 422: // STATE 63 - scheduler.pml:206 - [((0==EP))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][63] = 1;
		if (!((0==((int)now.EP))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 423: // STATE 64 - data_structures.pml:145 - [idx = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][64] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->_4_4_6_idx);
		((P0 *)_this)->_4_4_6_idx = 0;
#ifdef VAR_RANGES
		logval("PendSV_Handler:idx", ((int)((P0 *)_this)->_4_4_6_idx));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 424: // STATE 65 - data_structures.pml:146 - [((idx<(readyQueue[topPrio].tailIndex-1)))] (70:0:2 - 1)
		IfNotBlocked
		reached[0][65] = 1;
		if (!((((int)((P0 *)_this)->_4_4_6_idx)<(((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1))))
			continue;
		/* merge: readyQueue[topPrio].tasks[idx] = readyQueue[topPrio].tasks[(idx+1)](70, 66, 70) */
		reached[0][66] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index(((int)((P0 *)_this)->_4_4_6_idx), 5) ]);
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index(((P0 *)_this)->_4_4_6_idx, 5) ] = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index((((int)((P0 *)_this)->_4_4_6_idx)+1), 5) ]);
#ifdef VAR_RANGES
		logval("readyQueue[topPrio].tasks[PendSV_Handler:idx]", ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index(((int)((P0 *)_this)->_4_4_6_idx), 5) ]));
#endif
		;
		/* merge: idx = (idx+1)(70, 67, 70) */
		reached[0][67] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->_4_4_6_idx);
		((P0 *)_this)->_4_4_6_idx = (((int)((P0 *)_this)->_4_4_6_idx)+1);
#ifdef VAR_RANGES
		logval("PendSV_Handler:idx", ((int)((P0 *)_this)->_4_4_6_idx));
#endif
		;
		/* merge: .(goto)(0, 71, 70) */
		reached[0][71] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 425: // STATE 73 - data_structures.pml:152 - [((readyQueue[topPrio].tailIndex>0))] (89:0:2 - 1)
		IfNotBlocked
		reached[0][73] = 1;
		if (!((((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)>0)))
			continue;
		/* merge: readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)] = 255(89, 74, 89) */
		reached[0][74] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index((((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1), 5) ]);
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index((now.readyQueue[ Index(now.topPrio, 4) ].tailIndex-1), 5) ] = 255;
#ifdef VAR_RANGES
		logval("readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)]", ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index((((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1), 5) ]));
#endif
		;
		/* merge: readyQueue[topPrio].tailIndex = (readyQueue[topPrio].tailIndex-1)(89, 75, 89) */
		reached[0][75] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex);
		now.readyQueue[ Index(now.topPrio, 4) ].tailIndex = (((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1);
#ifdef VAR_RANGES
		logval("readyQueue[topPrio].tailIndex", ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex));
#endif
		;
		/* merge: .(goto)(0, 79, 89) */
		reached[0][79] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 426: // STATE 81 - data_structures.pml:113 - [(((chain_tick_used==0)&&(((pending_exp>>1)&1)==0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][81] = 1;
		if (!(((((int)now.chain_tick_used)==0)&&(((((int)now.pending_exp)>>1)&1)==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 427: // STATE 82 - data_structures.pml:44 - [assert(((1<2)&&(1<8)))] (0:102:2 - 1)
		IfNotBlocked
		reached[0][82] = 1;
		spin_assert(((1<2)&&(1<8)), "((1<2)&&(1<8))", II, tt, t);
		/* merge: pending_exp = (pending_exp|(1<<1))(102, 83, 102) */
		reached[0][83] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.pending_exp);
		now.pending_exp = (((int)now.pending_exp)|(1<<1));
#ifdef VAR_RANGES
		logval("pending_exp", ((int)now.pending_exp));
#endif
		;
		/* merge: chain_tick_used = 1(102, 85, 102) */
		reached[0][85] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.chain_tick_used);
		now.chain_tick_used = 1;
#ifdef VAR_RANGES
		logval("chain_tick_used", ((int)now.chain_tick_used));
#endif
		;
		/* merge: .(goto)(102, 88, 102) */
		reached[0][88] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 428: // STATE 88 - data_structures.pml:117 - [.(goto)] (0:102:0 - 2)
		IfNotBlocked
		reached[0][88] = 1;
		;
		_m = 3; goto P999; /* 0 */
	case 429: // STATE 86 - data_structures.pml:115 - [(1)] (102:0:0 - 1)
		IfNotBlocked
		reached[0][86] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(102, 88, 102) */
		reached[0][88] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 430: // STATE 91 - scheduler.pml:207 - [((0==EP))] (101:0:1 - 1)
		IfNotBlocked
		reached[0][91] = 1;
		if (!((0==((int)now.EP))))
			continue;
		/* merge: tcb[tmp].state = 4(0, 92, 101) */
		reached[0][92] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[ Index(((int)((P0 *)_this)->tmp), 4) ].state);
		now.tcb[ Index(((P0 *)_this)->tmp, 4) ].state = 4;
#ifdef VAR_RANGES
		logval("tcb[PendSV_Handler:tmp].state", ((int)now.tcb[ Index(((int)((P0 *)_this)->tmp), 4) ].state));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 431: // STATE 93 - data_structures.pml:113 - [(((chain_tick_used==0)&&(((pending_exp>>1)&1)==0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][93] = 1;
		if (!(((((int)now.chain_tick_used)==0)&&(((((int)now.pending_exp)>>1)&1)==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 432: // STATE 94 - data_structures.pml:44 - [assert(((1<2)&&(1<8)))] (0:116:2 - 1)
		IfNotBlocked
		reached[0][94] = 1;
		spin_assert(((1<2)&&(1<8)), "((1<2)&&(1<8))", II, tt, t);
		/* merge: pending_exp = (pending_exp|(1<<1))(116, 95, 116) */
		reached[0][95] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.pending_exp);
		now.pending_exp = (((int)now.pending_exp)|(1<<1));
#ifdef VAR_RANGES
		logval("pending_exp", ((int)now.pending_exp));
#endif
		;
		/* merge: chain_tick_used = 1(116, 97, 116) */
		reached[0][97] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.chain_tick_used);
		now.chain_tick_used = 1;
#ifdef VAR_RANGES
		logval("chain_tick_used", ((int)now.chain_tick_used));
#endif
		;
		/* merge: .(goto)(116, 100, 116) */
		reached[0][100] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 433: // STATE 100 - data_structures.pml:117 - [.(goto)] (0:116:0 - 2)
		IfNotBlocked
		reached[0][100] = 1;
		;
		_m = 3; goto P999; /* 0 */
	case 434: // STATE 98 - data_structures.pml:115 - [(1)] (116:0:0 - 1)
		IfNotBlocked
		reached[0][98] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(116, 100, 116) */
		reached[0][100] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 435: // STATE 103 - scheduler.pml:208 - [((0==EP))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][103] = 1;
		if (!((0==((int)now.EP))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 436: // STATE 104 - data_structures.pml:69 - [assert((((EP_Stack!=255)&&(EP_Stack>=2))&&(tmp>=2)))] (0:115:1 - 1)
		IfNotBlocked
		reached[0][104] = 1;
		spin_assert((((((int)now.EP_Stack)!=255)&&(((int)now.EP_Stack)>=2))&&(((int)((P0 *)_this)->tmp)>=2)), "(((EP_Stack!=255)&&(EP_Stack>=2))&&(tmp>=2))", II, tt, t);
		/* merge: EP_Stack = tmp(115, 105, 115) */
		reached[0][105] = 1;
		(trpt+1)->bup.oval = ((int)now.EP_Stack);
		now.EP_Stack = ((int)((P0 *)_this)->tmp);
#ifdef VAR_RANGES
		logval("EP_Stack", ((int)now.EP_Stack));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 437: // STATE 107 - data_structures.pml:113 - [(((chain_tick_used==0)&&(((pending_exp>>1)&1)==0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][107] = 1;
		if (!(((((int)now.chain_tick_used)==0)&&(((((int)now.pending_exp)>>1)&1)==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 438: // STATE 108 - data_structures.pml:44 - [assert(((1<2)&&(1<8)))] (0:142:2 - 1)
		IfNotBlocked
		reached[0][108] = 1;
		spin_assert(((1<2)&&(1<8)), "((1<2)&&(1<8))", II, tt, t);
		/* merge: pending_exp = (pending_exp|(1<<1))(142, 109, 142) */
		reached[0][109] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.pending_exp);
		now.pending_exp = (((int)now.pending_exp)|(1<<1));
#ifdef VAR_RANGES
		logval("pending_exp", ((int)now.pending_exp));
#endif
		;
		/* merge: chain_tick_used = 1(142, 111, 142) */
		reached[0][111] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.chain_tick_used);
		now.chain_tick_used = 1;
#ifdef VAR_RANGES
		logval("chain_tick_used", ((int)now.chain_tick_used));
#endif
		;
		/* merge: .(goto)(142, 114, 142) */
		reached[0][114] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 439: // STATE 114 - data_structures.pml:117 - [.(goto)] (0:142:0 - 2)
		IfNotBlocked
		reached[0][114] = 1;
		;
		_m = 3; goto P999; /* 0 */
	case 440: // STATE 112 - data_structures.pml:115 - [(1)] (142:0:0 - 1)
		IfNotBlocked
		reached[0][112] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(142, 114, 142) */
		reached[0][114] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 441: // STATE 117 - scheduler.pml:211 - [((0==EP))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][117] = 1;
		if (!((0==((int)now.EP))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 442: // STATE 118 - data_structures.pml:94 - [((pending_exp>0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][118] = 1;
		if (!((((int)now.pending_exp)>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 443: // STATE 119 - data_structures.pml:75 - [tmp = ( (((pending_exp>>0)&1)) -> (0) : (1) )] (0:141:4 - 1)
		IfNotBlocked
		reached[0][119] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->tmp);
		((P0 *)_this)->tmp = ( (((((int)now.pending_exp)>>0)&1)) ? (0) : (1) );
#ifdef VAR_RANGES
		logval("PendSV_Handler:tmp", ((int)((P0 *)_this)->tmp));
#endif
		;
		/* merge: assert((((BASEPRI==0)||(15<BASEPRI))&&(EP_Stack>=2)))(141, 121, 141) */
		reached[0][121] = 1;
		spin_assert((((((int)now.BASEPRI)==0)||(15<((int)now.BASEPRI)))&&(((int)now.EP_Stack)>=2)), "(((BASEPRI==0)||(15<BASEPRI))&&(EP_Stack>=2))", II, tt, t);
		/* merge: EP = tmp(141, 122, 141) */
		reached[0][122] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.EP);
		now.EP = ((int)((P0 *)_this)->tmp);
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: tmp = 255(141, 123, 141) */
		reached[0][123] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P0 *)_this)->tmp);
		((P0 *)_this)->tmp = 255;
#ifdef VAR_RANGES
		logval("PendSV_Handler:tmp", ((int)((P0 *)_this)->tmp));
#endif
		;
		if (TstOnly) return 1; /* TT */
		/* dead 2: tmp */  
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->tmp = 0;
		/* merge: .(goto)(0, 131, 141) */
		reached[0][131] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 444: // STATE 126 - data_structures.pml:62 - [assert((EP_Stack!=255))] (0:141:2 - 1)
		IfNotBlocked
		reached[0][126] = 1;
		spin_assert((((int)now.EP_Stack)!=255), "(EP_Stack!=255)", II, tt, t);
		/* merge: EP = EP_Stack(141, 127, 141) */
		reached[0][127] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.EP);
		now.EP = ((int)now.EP_Stack);
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: EP_Stack = 255(141, 128, 141) */
		reached[0][128] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.EP_Stack);
		now.EP_Stack = 255;
#ifdef VAR_RANGES
		logval("EP_Stack", ((int)now.EP_Stack));
#endif
		;
		/* merge: .(goto)(0, 131, 141) */
		reached[0][131] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 445: // STATE 133 - data_structures.pml:113 - [(((chain_tick_used==0)&&(((pending_exp>>1)&1)==0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][133] = 1;
		if (!(((((int)now.chain_tick_used)==0)&&(((((int)now.pending_exp)>>1)&1)==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 446: // STATE 134 - data_structures.pml:44 - [assert(((1<2)&&(1<8)))] (0:143:2 - 1)
		IfNotBlocked
		reached[0][134] = 1;
		spin_assert(((1<2)&&(1<8)), "((1<2)&&(1<8))", II, tt, t);
		/* merge: pending_exp = (pending_exp|(1<<1))(143, 135, 143) */
		reached[0][135] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.pending_exp);
		now.pending_exp = (((int)now.pending_exp)|(1<<1));
#ifdef VAR_RANGES
		logval("pending_exp", ((int)now.pending_exp));
#endif
		;
		/* merge: chain_tick_used = 1(143, 137, 143) */
		reached[0][137] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.chain_tick_used);
		now.chain_tick_used = 1;
#ifdef VAR_RANGES
		logval("chain_tick_used", ((int)now.chain_tick_used));
#endif
		;
		/* merge: .(goto)(143, 140, 143) */
		reached[0][140] = 1;
		;
		/* merge: .(goto)(0, 144, 143) */
		reached[0][144] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 447: // STATE 140 - data_structures.pml:117 - [.(goto)] (0:143:0 - 2)
		IfNotBlocked
		reached[0][140] = 1;
		;
		/* merge: .(goto)(0, 144, 143) */
		reached[0][144] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 448: // STATE 138 - data_structures.pml:115 - [(1)] (143:0:0 - 1)
		IfNotBlocked
		reached[0][138] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(143, 140, 143) */
		reached[0][140] = 1;
		;
		/* merge: .(goto)(0, 144, 143) */
		reached[0][144] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 449: // STATE 146 - scheduler.pml:213 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][146] = 1;
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

