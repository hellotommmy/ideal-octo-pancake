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

		 /* CLAIM sortlink_three_sorted */
	case 3: // STATE 1 - _spin_nvr.tmp:417 - [(!((!((g_taskSortLinkTail>=3))||((g_taskSortLink[0].responseTime<=g_taskSortLink[1].responseTime)&&(g_taskSortLink[1].responseTime<=g_taskSortLink[2].responseTime)))))] (6:0:0 - 1)
		
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
		reached[18][1] = 1;
		if (!( !(( !((((int)now.g_taskSortLinkTail)>=3))||((((int)now.g_taskSortLink[0].responseTime)<=((int)now.g_taskSortLink[1].responseTime))&&(((int)now.g_taskSortLink[1].responseTime)<=((int)now.g_taskSortLink[2].responseTime)))))))
			continue;
		/* merge: assert(!(!((!((g_taskSortLinkTail>=3))||((g_taskSortLink[0].responseTime<=g_taskSortLink[1].responseTime)&&(g_taskSortLink[1].responseTime<=g_taskSortLink[2].responseTime))))))(0, 2, 6) */
		reached[18][2] = 1;
		spin_assert( !( !(( !((((int)now.g_taskSortLinkTail)>=3))||((((int)now.g_taskSortLink[0].responseTime)<=((int)now.g_taskSortLink[1].responseTime))&&(((int)now.g_taskSortLink[1].responseTime)<=((int)now.g_taskSortLink[2].responseTime)))))), " !( !(( !((g_taskSortLinkTail>=3))||((g_taskSortLink[0].responseTime<=g_taskSortLink[1].responseTime)&&(g_taskSortLink[1].responseTime<=g_taskSortLink[2].responseTime)))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[18][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 4: // STATE 10 - _spin_nvr.tmp:422 - [-end-] (0:0:0 - 1)
		
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
		reached[18][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM sortlink_is_sorted */
	case 5: // STATE 1 - _spin_nvr.tmp:408 - [(!((!((g_taskSortLinkTail>=2))||(g_taskSortLink[0].responseTime<=g_taskSortLink[1].responseTime))))] (6:0:0 - 1)
		
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
		reached[17][1] = 1;
		if (!( !(( !((((int)now.g_taskSortLinkTail)>=2))||(((int)now.g_taskSortLink[0].responseTime)<=((int)now.g_taskSortLink[1].responseTime))))))
			continue;
		/* merge: assert(!(!((!((g_taskSortLinkTail>=2))||(g_taskSortLink[0].responseTime<=g_taskSortLink[1].responseTime)))))(0, 2, 6) */
		reached[17][2] = 1;
		spin_assert( !( !(( !((((int)now.g_taskSortLinkTail)>=2))||(((int)now.g_taskSortLink[0].responseTime)<=((int)now.g_taskSortLink[1].responseTime))))), " !( !(( !((g_taskSortLinkTail>=2))||(g_taskSortLink[0].responseTime<=g_taskSortLink[1].responseTime))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[17][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 6: // STATE 10 - _spin_nvr.tmp:413 - [-end-] (0:0:0 - 1)
		
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
		reached[17][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM delayed_not_in_ready_queue */
	case 7: // STATE 1 - _spin_nvr.tmp:399 - [(!((!((tcb[2].state==2))||(readyQueue[tcb[2].prio].tasks[0]!=2))))] (6:0:0 - 1)
		
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
	case 8: // STATE 10 - _spin_nvr.tmp:404 - [-end-] (0:0:0 - 1)
		
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
	case 9: // STATE 1 - _spin_nvr.tmp:390 - [(!((g_tickCount<255)))] (6:0:0 - 1)
		
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
	case 10: // STATE 10 - _spin_nvr.tmp:395 - [-end-] (0:0:0 - 1)
		
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
	case 11: // STATE 1 - _spin_nvr.tmp:379 - [((!(!((tcb[2].state==2)))&&!((tcb[2].state==1))))] (0:0:0 - 1)
		
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
	case 12: // STATE 8 - _spin_nvr.tmp:384 - [(!((tcb[2].state==1)))] (0:0:0 - 1)
		
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
	case 13: // STATE 13 - _spin_nvr.tmp:386 - [-end-] (0:0:0 - 1)
		
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
	case 14: // STATE 1 - _spin_nvr.tmp:370 - [(!(!((((EP==2)&&(pending_exp==0))&&(chain_tick_used==1)))))] (6:0:0 - 1)
		
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
	case 15: // STATE 10 - _spin_nvr.tmp:375 - [-end-] (0:0:0 - 1)
		
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
	case 16: // STATE 1 - _spin_nvr.tmp:361 - [(!(!((((EP==(2+1))&&(pending_exp==0))&&(chain_tick_used==1)))))] (6:0:0 - 1)
		
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
	case 17: // STATE 10 - _spin_nvr.tmp:366 - [-end-] (0:0:0 - 1)
		
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
	case 18: // STATE 1 - _spin_nvr.tmp:289 - [((((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==3)))&&((EP==3)&&(((pending_exp>>1)&1)==1)))&&(EP==3)))] (20:0:0 - 1)
		
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
	case 19: // STATE 4 - _spin_nvr.tmp:290 - [(((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==3)))&&((EP==3)&&(((pending_exp>>1)&1)==1))))] (0:0:0 - 1)
		
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
	case 20: // STATE 6 - _spin_nvr.tmp:291 - [(((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==3)))&&((EP==3)&&(((pending_exp>>1)&1)==1))))] (0:0:0 - 1)
		
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
	case 21: // STATE 8 - _spin_nvr.tmp:292 - [(((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==3)))&&((EP==3)&&(((pending_exp>>1)&1)==1))))] (0:0:0 - 1)
		
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
	case 22: // STATE 10 - _spin_nvr.tmp:293 - [((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==3)))&&((EP==3)&&(((pending_exp>>1)&1)==1))))] (0:0:0 - 1)
		
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
	case 23: // STATE 12 - _spin_nvr.tmp:294 - [(((((EP==0)&&(EP_Stack==3))&&((EP==1)&&(EP_Stack==3)))&&((EP==3)&&(((pending_exp>>1)&1)==1))))] (0:0:0 - 1)
		
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
	case 24: // STATE 14 - _spin_nvr.tmp:295 - [((((EP==1)&&(EP_Stack==3))&&((EP==3)&&(((pending_exp>>1)&1)==1))))] (0:0:0 - 1)
		
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
	case 25: // STATE 16 - _spin_nvr.tmp:296 - [(((EP==3)&&(((pending_exp>>1)&1)==1)))] (0:0:0 - 1)
		
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
	case 26: // STATE 23 - _spin_nvr.tmp:301 - [((EP==3))] (28:0:0 - 1)
		
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
	case 27: // STATE 26 - _spin_nvr.tmp:302 - [(((EP==0)&&(EP_Stack==3)))] (0:0:0 - 1)
		
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
	case 28: // STATE 31 - _spin_nvr.tmp:306 - [((((EP==0)&&(EP_Stack==3))&&(EP==3)))] (38:0:0 - 1)
		
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
	case 29: // STATE 34 - _spin_nvr.tmp:307 - [(((EP==0)&&(EP_Stack==3)))] (0:0:0 - 1)
		
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
	case 30: // STATE 36 - _spin_nvr.tmp:308 - [(((EP==0)&&(EP_Stack==2)))] (0:0:0 - 1)
		
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
	case 31: // STATE 41 - _spin_nvr.tmp:312 - [(((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&(EP==3)))] (50:0:0 - 1)
		
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
	case 32: // STATE 44 - _spin_nvr.tmp:313 - [((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3))))] (0:0:0 - 1)
		
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
	case 33: // STATE 46 - _spin_nvr.tmp:314 - [(((EP==0)&&(EP_Stack==2)))] (0:0:0 - 1)
		
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
	case 34: // STATE 48 - _spin_nvr.tmp:315 - [(((EP==1)&&(EP_Stack==2)))] (0:0:0 - 1)
		
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
	case 35: // STATE 53 - _spin_nvr.tmp:319 - [((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2)))&&(EP==3)))] (64:0:0 - 1)
		
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
	case 36: // STATE 56 - _spin_nvr.tmp:320 - [(((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2))))] (0:0:0 - 1)
		
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
	case 37: // STATE 58 - _spin_nvr.tmp:321 - [((((EP==0)&&(EP_Stack==2))&&((EP==1)&&(EP_Stack==2))))] (0:0:0 - 1)
		
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
	case 38: // STATE 60 - _spin_nvr.tmp:322 - [(((EP==1)&&(EP_Stack==2)))] (0:0:0 - 1)
		
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
	case 39: // STATE 62 - _spin_nvr.tmp:323 - [(((EP==0)&&(EP_Stack==2)))] (0:0:0 - 1)
		
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
	case 40: // STATE 67 - _spin_nvr.tmp:327 - [((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2)))&&(EP==3)))] (80:0:0 - 1)
		
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
	case 41: // STATE 70 - _spin_nvr.tmp:328 - [(((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2))))] (0:0:0 - 1)
		
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
	case 42: // STATE 72 - _spin_nvr.tmp:329 - [((((EP==0)&&(EP_Stack==2))&&((EP==1)&&(EP_Stack==2))))] (0:0:0 - 1)
		
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
	case 43: // STATE 74 - _spin_nvr.tmp:330 - [((((EP==0)&&(EP_Stack==2))&&((EP==1)&&(EP_Stack==2))))] (0:0:0 - 1)
		
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
	case 44: // STATE 76 - _spin_nvr.tmp:331 - [(((EP==0)&&(EP_Stack==2)))] (0:0:0 - 1)
		
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
	case 45: // STATE 78 - _spin_nvr.tmp:332 - [(((EP==0)&&(EP_Stack==3)))] (0:0:0 - 1)
		
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
	case 46: // STATE 83 - _spin_nvr.tmp:336 - [((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2)))&&(EP==3)))] (98:0:0 - 1)
		
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
	case 47: // STATE 86 - _spin_nvr.tmp:337 - [(((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2))))] (0:0:0 - 1)
		
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
	case 48: // STATE 88 - _spin_nvr.tmp:338 - [(((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2))))] (0:0:0 - 1)
		
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
	case 49: // STATE 90 - _spin_nvr.tmp:339 - [(((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2))))] (0:0:0 - 1)
		
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
	case 50: // STATE 92 - _spin_nvr.tmp:340 - [((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3))))] (0:0:0 - 1)
		
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
	case 51: // STATE 94 - _spin_nvr.tmp:341 - [(((EP==0)&&(EP_Stack==3)))] (0:0:0 - 1)
		
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
	case 52: // STATE 96 - _spin_nvr.tmp:342 - [(((EP==1)&&(EP_Stack==3)))] (0:0:0 - 1)
		
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
	case 53: // STATE 101 - _spin_nvr.tmp:346 - [(((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==3)))&&(EP==3)))] (118:0:0 - 1)
		
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
	case 54: // STATE 104 - _spin_nvr.tmp:347 - [((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==3))))] (0:0:0 - 1)
		
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
	case 55: // STATE 106 - _spin_nvr.tmp:348 - [((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==3))))] (0:0:0 - 1)
		
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
	case 56: // STATE 108 - _spin_nvr.tmp:349 - [((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==3))))] (0:0:0 - 1)
		
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
	case 57: // STATE 110 - _spin_nvr.tmp:350 - [(((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==3))))] (0:0:0 - 1)
		
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
	case 58: // STATE 112 - _spin_nvr.tmp:351 - [((((EP==0)&&(EP_Stack==3))&&((EP==1)&&(EP_Stack==3))))] (0:0:0 - 1)
		
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
	case 59: // STATE 114 - _spin_nvr.tmp:352 - [(((EP==1)&&(EP_Stack==3)))] (0:0:0 - 1)
		
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
	case 60: // STATE 116 - _spin_nvr.tmp:353 - [(((EP==3)&&(((pending_exp>>1)&1)==1)))] (0:0:0 - 1)
		
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
	case 61: // STATE 122 - _spin_nvr.tmp:357 - [-end-] (0:0:0 - 1)
		
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
	case 62: // STATE 1 - _spin_nvr.tmp:229 - [(((((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==(2+1))))&&((EP==1)&&(EP_Stack==2)))&&(EP==(2+1))))] (18:0:0 - 1)
		
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
	case 63: // STATE 4 - _spin_nvr.tmp:230 - [((((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==(2+1))))&&((EP==1)&&(EP_Stack==2))))] (0:0:0 - 1)
		
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
	case 64: // STATE 6 - _spin_nvr.tmp:231 - [((((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==(2+1))))&&((EP==1)&&(EP_Stack==2))))] (0:0:0 - 1)
		
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
	case 65: // STATE 8 - _spin_nvr.tmp:232 - [((((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==(2+1))))&&((EP==1)&&(EP_Stack==2))))] (0:0:0 - 1)
		
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
	case 66: // STATE 10 - _spin_nvr.tmp:233 - [(((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==(2+1)))))] (0:0:0 - 1)
		
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
	case 67: // STATE 12 - _spin_nvr.tmp:234 - [((((EP==0)&&(EP_Stack==(2+1)))&&((EP==1)&&(EP_Stack==(2+1)))))] (0:0:0 - 1)
		
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
	case 68: // STATE 14 - _spin_nvr.tmp:235 - [(((EP==1)&&(EP_Stack==(2+1))))] (0:0:0 - 1)
		
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
	case 69: // STATE 21 - _spin_nvr.tmp:240 - [((EP==(2+1)))] (26:0:0 - 1)
		
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
	case 70: // STATE 24 - _spin_nvr.tmp:241 - [(((EP==0)&&(EP_Stack==(2+1))))] (0:0:0 - 1)
		
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
	case 71: // STATE 29 - _spin_nvr.tmp:245 - [((((EP==0)&&(EP_Stack==(2+1)))&&(EP==(2+1))))] (36:0:0 - 1)
		
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
	case 72: // STATE 32 - _spin_nvr.tmp:246 - [(((EP==0)&&(EP_Stack==(2+1))))] (0:0:0 - 1)
		
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
	case 73: // STATE 34 - _spin_nvr.tmp:247 - [(((EP==0)&&(EP_Stack==2)))] (0:0:0 - 1)
		
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
	case 74: // STATE 39 - _spin_nvr.tmp:251 - [(((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&(EP==(2+1))))] (48:0:0 - 1)
		
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
	case 75: // STATE 42 - _spin_nvr.tmp:252 - [((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2))))] (0:0:0 - 1)
		
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
	case 76: // STATE 44 - _spin_nvr.tmp:253 - [(((EP==0)&&(EP_Stack==2)))] (0:0:0 - 1)
		
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
	case 77: // STATE 46 - _spin_nvr.tmp:254 - [(((EP==1)&&(EP_Stack==2)))] (0:0:0 - 1)
		
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
	case 78: // STATE 51 - _spin_nvr.tmp:258 - [((((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==2)))&&(EP==(2+1))))] (62:0:0 - 1)
		
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
	case 79: // STATE 54 - _spin_nvr.tmp:259 - [(((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==2))))] (0:0:0 - 1)
		
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
	case 80: // STATE 56 - _spin_nvr.tmp:260 - [((((EP==0)&&(EP_Stack==2))&&((EP==1)&&(EP_Stack==2))))] (0:0:0 - 1)
		
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
	case 81: // STATE 58 - _spin_nvr.tmp:261 - [(((EP==1)&&(EP_Stack==2)))] (0:0:0 - 1)
		
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
	case 82: // STATE 60 - _spin_nvr.tmp:262 - [(((EP==0)&&(EP_Stack==2)))] (0:0:0 - 1)
		
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
	case 83: // STATE 65 - _spin_nvr.tmp:266 - [((((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==2)))&&(EP==(2+1))))] (78:0:0 - 1)
		
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
	case 84: // STATE 68 - _spin_nvr.tmp:267 - [(((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==2))))] (0:0:0 - 1)
		
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
	case 85: // STATE 70 - _spin_nvr.tmp:268 - [((((EP==0)&&(EP_Stack==2))&&((EP==1)&&(EP_Stack==2))))] (0:0:0 - 1)
		
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
	case 86: // STATE 72 - _spin_nvr.tmp:269 - [((((EP==0)&&(EP_Stack==2))&&((EP==1)&&(EP_Stack==2))))] (0:0:0 - 1)
		
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
	case 87: // STATE 74 - _spin_nvr.tmp:270 - [(((EP==0)&&(EP_Stack==2)))] (0:0:0 - 1)
		
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
	case 88: // STATE 76 - _spin_nvr.tmp:271 - [(((EP==0)&&(EP_Stack==(2+1))))] (0:0:0 - 1)
		
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
	case 89: // STATE 81 - _spin_nvr.tmp:275 - [((((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==2)))&&(EP==(2+1))))] (96:0:0 - 1)
		
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
	case 90: // STATE 84 - _spin_nvr.tmp:276 - [(((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==2))))] (0:0:0 - 1)
		
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
	case 91: // STATE 86 - _spin_nvr.tmp:277 - [(((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==2))))] (0:0:0 - 1)
		
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
	case 92: // STATE 88 - _spin_nvr.tmp:278 - [(((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==2))))] (0:0:0 - 1)
		
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
	case 93: // STATE 90 - _spin_nvr.tmp:279 - [((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2))))] (0:0:0 - 1)
		
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
	case 94: // STATE 92 - _spin_nvr.tmp:280 - [(((EP==0)&&(EP_Stack==(2+1))))] (0:0:0 - 1)
		
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
	case 95: // STATE 94 - _spin_nvr.tmp:281 - [(((EP==1)&&(EP_Stack==(2+1))))] (0:0:0 - 1)
		
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
	case 96: // STATE 100 - _spin_nvr.tmp:285 - [-end-] (0:0:0 - 1)
		
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
	case 97: // STATE 1 - _spin_nvr.tmp:127 - [(((!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==2)))&&(EP>=2)))] (0:0:0 - 1)
		
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
	case 98: // STATE 3 - _spin_nvr.tmp:128 - [((!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==2))))] (0:0:0 - 1)
		
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
	case 99: // STATE 5 - _spin_nvr.tmp:129 - [(((!((pending_exp>0))&&!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1)))))&&!((EP==2))))] (0:0:0 - 1)
		
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
	case 100: // STATE 7 - _spin_nvr.tmp:130 - [(((!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==(2+1))))&&(EP>=2)))] (0:0:0 - 1)
		
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
	case 101: // STATE 9 - _spin_nvr.tmp:131 - [((!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==(2+1)))))] (0:0:0 - 1)
		
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
	case 102: // STATE 11 - _spin_nvr.tmp:132 - [(((!((pending_exp>0))&&!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1)))))&&!((EP==(2+1)))))] (0:0:0 - 1)
		
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
	case 103: // STATE 13 - _spin_nvr.tmp:133 - [((EP>=2))] (0:0:0 - 1)
		
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
	case 104: // STATE 17 - _spin_nvr.tmp:135 - [(!((pending_exp>0)))] (0:0:0 - 1)
		
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
	case 105: // STATE 22 - _spin_nvr.tmp:139 - [((!((EP==2))&&(EP>=2)))] (0:0:0 - 1)
		
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
	case 106: // STATE 24 - _spin_nvr.tmp:140 - [(!((EP==2)))] (0:0:0 - 1)
		
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
	case 107: // STATE 26 - _spin_nvr.tmp:141 - [((!((pending_exp>0))&&!((EP==2))))] (0:0:0 - 1)
		
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
	case 108: // STATE 31 - _spin_nvr.tmp:145 - [((!((EP==(2+1)))&&(EP>=2)))] (0:0:0 - 1)
		
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
	case 109: // STATE 33 - _spin_nvr.tmp:146 - [(!((EP==(2+1))))] (0:0:0 - 1)
		
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
	case 110: // STATE 35 - _spin_nvr.tmp:147 - [((!((pending_exp>0))&&!((EP==(2+1)))))] (0:0:0 - 1)
		
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
	case 111: // STATE 40 - _spin_nvr.tmp:151 - [(!((EP==2)))] (0:0:0 - 1)
		
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
	case 112: // STATE 42 - _spin_nvr.tmp:152 - [(((!((pending_exp>0))&&!((EP==2)))||(!((EP==2))&&(EP>=2))))] (0:0:0 - 1)
		
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
	case 113: // STATE 47 - _spin_nvr.tmp:156 - [(!((EP==(2+1))))] (0:0:0 - 1)
		
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
	case 114: // STATE 49 - _spin_nvr.tmp:157 - [(((!((pending_exp>0))&&!((EP==(2+1))))||(!((EP==(2+1)))&&(EP>=2))))] (0:0:0 - 1)
		
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
	case 115: // STATE 54 - _spin_nvr.tmp:161 - [(!((EP==2)))] (0:0:0 - 1)
		
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
	case 116: // STATE 56 - _spin_nvr.tmp:162 - [((!((EP==2))&&(EP>=2)))] (0:0:0 - 1)
		
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
	case 117: // STATE 61 - _spin_nvr.tmp:166 - [(!((EP==(2+1))))] (0:0:0 - 1)
		
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
	case 118: // STATE 63 - _spin_nvr.tmp:167 - [((!((EP==(2+1)))&&(EP>=2)))] (0:0:0 - 1)
		
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
	case 119: // STATE 68 - _spin_nvr.tmp:171 - [((!((EP==2))&&(EP>=2)))] (0:0:0 - 1)
		
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
	case 120: // STATE 70 - _spin_nvr.tmp:172 - [(!((EP==2)))] (0:0:0 - 1)
		
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
	case 121: // STATE 72 - _spin_nvr.tmp:173 - [((!((pending_exp>0))&&!((EP==2))))] (0:0:0 - 1)
		
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
	case 122: // STATE 77 - _spin_nvr.tmp:177 - [((!((EP==(2+1)))&&(EP>=2)))] (0:0:0 - 1)
		
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
	case 123: // STATE 79 - _spin_nvr.tmp:178 - [(!((EP==(2+1))))] (0:0:0 - 1)
		
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
	case 124: // STATE 81 - _spin_nvr.tmp:179 - [((!((pending_exp>0))&&!((EP==(2+1)))))] (0:0:0 - 1)
		
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
	case 125: // STATE 86 - _spin_nvr.tmp:183 - [(!((EP==2)))] (0:0:0 - 1)
		
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
	case 126: // STATE 88 - _spin_nvr.tmp:184 - [(((!((pending_exp>0))&&!((EP==2)))||(!((EP==2))&&(EP>=2))))] (0:0:0 - 1)
		
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
	case 127: // STATE 93 - _spin_nvr.tmp:188 - [(!((EP==(2+1))))] (0:0:0 - 1)
		
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
	case 128: // STATE 95 - _spin_nvr.tmp:189 - [(((!((pending_exp>0))&&!((EP==(2+1))))||(!((EP==(2+1)))&&(EP>=2))))] (0:0:0 - 1)
		
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
	case 129: // STATE 100 - _spin_nvr.tmp:193 - [((!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==2))))] (0:0:0 - 1)
		
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
	case 130: // STATE 102 - _spin_nvr.tmp:194 - [(((!((pending_exp>0))&&(!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==2))))||(!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&(!((EP==2))&&(EP>=2)))))] (0:0:0 - 1)
		
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
	case 131: // STATE 104 - _spin_nvr.tmp:195 - [((!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==(2+1)))))] (0:0:0 - 1)
		
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
	case 132: // STATE 106 - _spin_nvr.tmp:196 - [(((!((pending_exp>0))&&(!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==(2+1)))))||(!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&(!((EP==(2+1)))&&(EP>=2)))))] (0:0:0 - 1)
		
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
	case 133: // STATE 108 - _spin_nvr.tmp:197 - [((EP>=2))] (0:0:0 - 1)
		
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
	case 134: // STATE 112 - _spin_nvr.tmp:199 - [(!((pending_exp>0)))] (0:0:0 - 1)
		
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
	case 135: // STATE 117 - _spin_nvr.tmp:203 - [(!((EP==2)))] (0:0:0 - 1)
		
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
	case 136: // STATE 119 - _spin_nvr.tmp:204 - [((!((EP==2))&&(EP>=2)))] (0:0:0 - 1)
		
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
	case 137: // STATE 121 - _spin_nvr.tmp:205 - [((!((EP==2))&&(EP>=2)))] (0:0:0 - 1)
		
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
	case 138: // STATE 126 - _spin_nvr.tmp:209 - [(!((EP==(2+1))))] (0:0:0 - 1)
		
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
	case 139: // STATE 128 - _spin_nvr.tmp:210 - [((!((EP==(2+1)))&&(EP>=2)))] (0:0:0 - 1)
		
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
	case 140: // STATE 130 - _spin_nvr.tmp:211 - [((!((EP==(2+1)))&&(EP>=2)))] (0:0:0 - 1)
		
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
	case 141: // STATE 135 - _spin_nvr.tmp:215 - [((!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==2))))] (0:0:0 - 1)
		
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
	case 142: // STATE 137 - _spin_nvr.tmp:216 - [((!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==(2+1)))))] (0:0:0 - 1)
		
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
	case 143: // STATE 139 - _spin_nvr.tmp:217 - [((EP>=2))] (0:0:0 - 1)
		
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
	case 144: // STATE 143 - _spin_nvr.tmp:219 - [(((!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==2)))&&(EP>=2)))] (0:0:0 - 1)
		
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
	case 145: // STATE 145 - _spin_nvr.tmp:220 - [(((!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==2)))&&(EP>=2)))] (0:0:0 - 1)
		
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
	case 146: // STATE 147 - _spin_nvr.tmp:221 - [(((!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==(2+1))))&&(EP>=2)))] (0:0:0 - 1)
		
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
	case 147: // STATE 149 - _spin_nvr.tmp:222 - [(((!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==(2+1))))&&(EP>=2)))] (0:0:0 - 1)
		
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
	case 148: // STATE 151 - _spin_nvr.tmp:223 - [((!((pending_exp>0))&&(EP>=2)))] (0:0:0 - 1)
		
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
	case 149: // STATE 156 - _spin_nvr.tmp:225 - [-end-] (0:0:0 - 1)
		
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
	case 150: // STATE 1 - _spin_nvr.tmp:76 - [(((!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==(2+1))))&&(EP>=2)))] (0:0:0 - 1)
		
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
	case 151: // STATE 3 - _spin_nvr.tmp:77 - [((!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==(2+1)))))] (0:0:0 - 1)
		
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
	case 152: // STATE 5 - _spin_nvr.tmp:78 - [(((!((pending_exp>0))&&!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1)))))&&!((EP==(2+1)))))] (0:0:0 - 1)
		
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
	case 153: // STATE 7 - _spin_nvr.tmp:79 - [((!((pending_exp>0))||(EP>=2)))] (0:0:0 - 1)
		
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
	case 154: // STATE 14 - _spin_nvr.tmp:84 - [((!((EP==(2+1)))&&(EP>=2)))] (0:0:0 - 1)
		
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
	case 155: // STATE 16 - _spin_nvr.tmp:85 - [(!((EP==(2+1))))] (0:0:0 - 1)
		
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
	case 156: // STATE 18 - _spin_nvr.tmp:86 - [((!((pending_exp>0))&&!((EP==(2+1)))))] (0:0:0 - 1)
		
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
	case 157: // STATE 23 - _spin_nvr.tmp:90 - [(!((EP==(2+1))))] (0:0:0 - 1)
		
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
	case 158: // STATE 25 - _spin_nvr.tmp:91 - [(((!((pending_exp>0))&&!((EP==(2+1))))||(!((EP==(2+1)))&&(EP>=2))))] (0:0:0 - 1)
		
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
	case 159: // STATE 30 - _spin_nvr.tmp:95 - [(!((EP==(2+1))))] (0:0:0 - 1)
		
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
	case 160: // STATE 32 - _spin_nvr.tmp:96 - [((!((EP==(2+1)))&&(EP>=2)))] (0:0:0 - 1)
		
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
	case 161: // STATE 37 - _spin_nvr.tmp:100 - [((!((EP==(2+1)))&&(EP>=2)))] (0:0:0 - 1)
		
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
	case 162: // STATE 39 - _spin_nvr.tmp:101 - [(!((EP==(2+1))))] (0:0:0 - 1)
		
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
	case 163: // STATE 41 - _spin_nvr.tmp:102 - [((!((pending_exp>0))&&!((EP==(2+1)))))] (0:0:0 - 1)
		
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
	case 164: // STATE 46 - _spin_nvr.tmp:106 - [(!((EP==(2+1))))] (0:0:0 - 1)
		
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
	case 165: // STATE 48 - _spin_nvr.tmp:107 - [(((!((pending_exp>0))&&!((EP==(2+1))))||(!((EP==(2+1)))&&(EP>=2))))] (0:0:0 - 1)
		
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
	case 166: // STATE 53 - _spin_nvr.tmp:111 - [(!((EP==(2+1))))] (0:0:0 - 1)
		
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
	case 167: // STATE 55 - _spin_nvr.tmp:112 - [((!((EP==(2+1)))&&(EP>=2)))] (0:0:0 - 1)
		
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
	case 168: // STATE 57 - _spin_nvr.tmp:113 - [((!((EP==(2+1)))&&(EP>=2)))] (0:0:0 - 1)
		
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
	case 169: // STATE 62 - _spin_nvr.tmp:117 - [((!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==(2+1)))))] (0:0:0 - 1)
		
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
	case 170: // STATE 64 - _spin_nvr.tmp:118 - [((EP>=2))] (0:0:0 - 1)
		
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
	case 171: // STATE 68 - _spin_nvr.tmp:120 - [(((!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==(2+1))))&&(EP>=2)))] (0:0:0 - 1)
		
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
	case 172: // STATE 70 - _spin_nvr.tmp:121 - [(((!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==(2+1))))&&(EP>=2)))] (0:0:0 - 1)
		
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
	case 173: // STATE 75 - _spin_nvr.tmp:123 - [-end-] (0:0:0 - 1)
		
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
	case 174: // STATE 1 - _spin_nvr.tmp:25 - [(((!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==2)))&&(EP>=2)))] (0:0:0 - 1)
		
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
	case 175: // STATE 3 - _spin_nvr.tmp:26 - [((!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==2))))] (0:0:0 - 1)
		
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
	case 176: // STATE 5 - _spin_nvr.tmp:27 - [(((!((pending_exp>0))&&!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1)))))&&!((EP==2))))] (0:0:0 - 1)
		
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
	case 177: // STATE 7 - _spin_nvr.tmp:28 - [((!((pending_exp>0))||(EP>=2)))] (0:0:0 - 1)
		
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
	case 178: // STATE 14 - _spin_nvr.tmp:33 - [((!((EP==2))&&(EP>=2)))] (0:0:0 - 1)
		
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
	case 179: // STATE 16 - _spin_nvr.tmp:34 - [(!((EP==2)))] (0:0:0 - 1)
		
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
	case 180: // STATE 18 - _spin_nvr.tmp:35 - [((!((pending_exp>0))&&!((EP==2))))] (0:0:0 - 1)
		
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
	case 181: // STATE 23 - _spin_nvr.tmp:39 - [(!((EP==2)))] (0:0:0 - 1)
		
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
	case 182: // STATE 25 - _spin_nvr.tmp:40 - [(((!((pending_exp>0))&&!((EP==2)))||(!((EP==2))&&(EP>=2))))] (0:0:0 - 1)
		
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
	case 183: // STATE 30 - _spin_nvr.tmp:44 - [(!((EP==2)))] (0:0:0 - 1)
		
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
	case 184: // STATE 32 - _spin_nvr.tmp:45 - [((!((EP==2))&&(EP>=2)))] (0:0:0 - 1)
		
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
	case 185: // STATE 37 - _spin_nvr.tmp:49 - [((!((EP==2))&&(EP>=2)))] (0:0:0 - 1)
		
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
	case 186: // STATE 39 - _spin_nvr.tmp:50 - [(!((EP==2)))] (0:0:0 - 1)
		
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
	case 187: // STATE 41 - _spin_nvr.tmp:51 - [((!((pending_exp>0))&&!((EP==2))))] (0:0:0 - 1)
		
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
	case 188: // STATE 46 - _spin_nvr.tmp:55 - [(!((EP==2)))] (0:0:0 - 1)
		
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
	case 189: // STATE 48 - _spin_nvr.tmp:56 - [(((!((pending_exp>0))&&!((EP==2)))||(!((EP==2))&&(EP>=2))))] (0:0:0 - 1)
		
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
	case 190: // STATE 53 - _spin_nvr.tmp:60 - [(!((EP==2)))] (0:0:0 - 1)
		
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
	case 191: // STATE 55 - _spin_nvr.tmp:61 - [((!((EP==2))&&(EP>=2)))] (0:0:0 - 1)
		
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
	case 192: // STATE 57 - _spin_nvr.tmp:62 - [((!((EP==2))&&(EP>=2)))] (0:0:0 - 1)
		
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
	case 193: // STATE 62 - _spin_nvr.tmp:66 - [((!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==2))))] (0:0:0 - 1)
		
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
	case 194: // STATE 64 - _spin_nvr.tmp:67 - [((EP>=2))] (0:0:0 - 1)
		
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
	case 195: // STATE 68 - _spin_nvr.tmp:69 - [(((!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==2)))&&(EP>=2)))] (0:0:0 - 1)
		
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
	case 196: // STATE 70 - _spin_nvr.tmp:70 - [(((!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==2)))&&(EP>=2)))] (0:0:0 - 1)
		
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
	case 197: // STATE 75 - _spin_nvr.tmp:72 - [-end-] (0:0:0 - 1)
		
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
	case 198: // STATE 1 - _spin_nvr.tmp:14 - [((!(!((EP<2)))&&!((EP>=2))))] (0:0:0 - 1)
		
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
	case 199: // STATE 8 - _spin_nvr.tmp:19 - [(!((EP>=2)))] (0:0:0 - 1)
		
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
	case 200: // STATE 13 - _spin_nvr.tmp:21 - [-end-] (0:0:0 - 1)
		
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
	case 201: // STATE 1 - _spin_nvr.tmp:3 - [(!((EP>=2)))] (0:0:0 - 1)
		
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
	case 202: // STATE 8 - _spin_nvr.tmp:8 - [(!((EP>=2)))] (0:0:0 - 1)
		
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
	case 203: // STATE 13 - _spin_nvr.tmp:10 - [-end-] (0:0:0 - 1)
		
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
	case 204: // STATE 1 - processes.pml:33 - [i = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[4][1] = 1;
		(trpt+1)->bup.oval = ((int)((P4 *)_this)->i);
		((P4 *)_this)->i = 0;
#ifdef VAR_RANGES
		logval(":init::i", ((int)((P4 *)_this)->i));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 205: // STATE 2 - processes.pml:35 - [((i<4))] (0:0:0 - 1)
		IfNotBlocked
		reached[4][2] = 1;
		if (!((((int)((P4 *)_this)->i)<4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 206: // STATE 3 - data_structures.pml:124 - [idx = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[4][3] = 1;
		(trpt+1)->bup.oval = ((int)((P4 *)_this)->_8_20_idx);
		((P4 *)_this)->_8_20_idx = 0;
#ifdef VAR_RANGES
		logval(":init::idx", ((int)((P4 *)_this)->_8_20_idx));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 207: // STATE 4 - data_structures.pml:125 - [((idx<5))] (0:0:0 - 1)
		IfNotBlocked
		reached[4][4] = 1;
		if (!((((int)((P4 *)_this)->_8_20_idx)<5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 208: // STATE 5 - data_structures.pml:126 - [readyQueue[i].tasks[idx] = 255] (0:0:1 - 1)
		IfNotBlocked
		reached[4][5] = 1;
		(trpt+1)->bup.oval = ((int)now.readyQueue[ Index(((int)((P4 *)_this)->i), 4) ].tasks[ Index(((int)((P4 *)_this)->_8_20_idx), 5) ]);
		now.readyQueue[ Index(((P4 *)_this)->i, 4) ].tasks[ Index(((P4 *)_this)->_8_20_idx, 5) ] = 255;
#ifdef VAR_RANGES
		logval("readyQueue[:init::i].tasks[:init::idx]", ((int)now.readyQueue[ Index(((int)((P4 *)_this)->i), 4) ].tasks[ Index(((int)((P4 *)_this)->_8_20_idx), 5) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 209: // STATE 6 - data_structures.pml:127 - [idx = (idx+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[4][6] = 1;
		(trpt+1)->bup.oval = ((int)((P4 *)_this)->_8_20_idx);
		((P4 *)_this)->_8_20_idx = (((int)((P4 *)_this)->_8_20_idx)+1);
#ifdef VAR_RANGES
		logval(":init::idx", ((int)((P4 *)_this)->_8_20_idx));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 210: // STATE 12 - data_structures.pml:130 - [readyQueue[i].tailIndex = 0] (0:0:1 - 3)
		IfNotBlocked
		reached[4][12] = 1;
		(trpt+1)->bup.oval = ((int)now.readyQueue[ Index(((int)((P4 *)_this)->i), 4) ].tailIndex);
		now.readyQueue[ Index(((P4 *)_this)->i, 4) ].tailIndex = 0;
#ifdef VAR_RANGES
		logval("readyQueue[:init::i].tailIndex", ((int)now.readyQueue[ Index(((int)((P4 *)_this)->i), 4) ].tailIndex));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 211: // STATE 14 - processes.pml:37 - [i = (i+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[4][14] = 1;
		(trpt+1)->bup.oval = ((int)((P4 *)_this)->i);
		((P4 *)_this)->i = (((int)((P4 *)_this)->i)+1);
#ifdef VAR_RANGES
		logval(":init::i", ((int)((P4 *)_this)->i));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 212: // STATE 20 - processes.pml:42 - [tcb[2].prio = 2] (0:0:1 - 3)
		IfNotBlocked
		reached[4][20] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[2].prio);
		now.tcb[2].prio = 2;
#ifdef VAR_RANGES
		logval("tcb[2].prio", ((int)now.tcb[2].prio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 213: // STATE 21 - processes.pml:42 - [tcb[2].state = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[4][21] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[2].state);
		now.tcb[2].state = 1;
#ifdef VAR_RANGES
		logval("tcb[2].state", ((int)now.tcb[2].state));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 214: // STATE 22 - data_structures.pml:136 - [((readyQueue[2].tailIndex<5))] (0:0:0 - 1)
		IfNotBlocked
		reached[4][22] = 1;
		if (!((((int)now.readyQueue[2].tailIndex)<5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 215: // STATE 23 - data_structures.pml:137 - [readyQueue[2].tasks[readyQueue[2].tailIndex] = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[4][23] = 1;
		(trpt+1)->bup.oval = ((int)now.readyQueue[2].tasks[ Index(((int)now.readyQueue[2].tailIndex), 5) ]);
		now.readyQueue[2].tasks[ Index(now.readyQueue[2].tailIndex, 5) ] = 2;
#ifdef VAR_RANGES
		logval("readyQueue[2].tasks[readyQueue[2].tailIndex]", ((int)now.readyQueue[2].tasks[ Index(((int)now.readyQueue[2].tailIndex), 5) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 216: // STATE 24 - data_structures.pml:138 - [readyQueue[2].tailIndex = (readyQueue[2].tailIndex+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[4][24] = 1;
		(trpt+1)->bup.oval = ((int)now.readyQueue[2].tailIndex);
		now.readyQueue[2].tailIndex = (((int)now.readyQueue[2].tailIndex)+1);
#ifdef VAR_RANGES
		logval("readyQueue[2].tailIndex", ((int)now.readyQueue[2].tailIndex));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 217: // STATE 26 - data_structures.pml:139 - [assert(0)] (0:0:0 - 1)
		IfNotBlocked
		reached[4][26] = 1;
		spin_assert(0, "0", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 218: // STATE 30 - processes.pml:43 - [tcb[(2+1)].prio = 2] (0:0:1 - 3)
		IfNotBlocked
		reached[4][30] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[ Index((2+1), 4) ].prio);
		now.tcb[ Index((2+1), 4) ].prio = 2;
#ifdef VAR_RANGES
		logval("tcb[(2+1)].prio", ((int)now.tcb[ Index((2+1), 4) ].prio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 219: // STATE 31 - processes.pml:43 - [tcb[(2+1)].state = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[4][31] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[ Index((2+1), 4) ].state);
		now.tcb[ Index((2+1), 4) ].state = 1;
#ifdef VAR_RANGES
		logval("tcb[(2+1)].state", ((int)now.tcb[ Index((2+1), 4) ].state));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 220: // STATE 32 - data_structures.pml:136 - [((readyQueue[2].tailIndex<5))] (0:0:0 - 1)
		IfNotBlocked
		reached[4][32] = 1;
		if (!((((int)now.readyQueue[2].tailIndex)<5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 221: // STATE 33 - data_structures.pml:137 - [readyQueue[2].tasks[readyQueue[2].tailIndex] = (2+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[4][33] = 1;
		(trpt+1)->bup.oval = ((int)now.readyQueue[2].tasks[ Index(((int)now.readyQueue[2].tailIndex), 5) ]);
		now.readyQueue[2].tasks[ Index(now.readyQueue[2].tailIndex, 5) ] = (2+1);
#ifdef VAR_RANGES
		logval("readyQueue[2].tasks[readyQueue[2].tailIndex]", ((int)now.readyQueue[2].tasks[ Index(((int)now.readyQueue[2].tailIndex), 5) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 222: // STATE 34 - data_structures.pml:138 - [readyQueue[2].tailIndex = (readyQueue[2].tailIndex+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[4][34] = 1;
		(trpt+1)->bup.oval = ((int)now.readyQueue[2].tailIndex);
		now.readyQueue[2].tailIndex = (((int)now.readyQueue[2].tailIndex)+1);
#ifdef VAR_RANGES
		logval("readyQueue[2].tailIndex", ((int)now.readyQueue[2].tailIndex));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 223: // STATE 36 - data_structures.pml:139 - [assert(0)] (0:0:0 - 1)
		IfNotBlocked
		reached[4][36] = 1;
		spin_assert(0, "0", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 224: // STATE 40 - processes.pml:46 - [EP = 2] (0:0:1 - 3)
		IfNotBlocked
		reached[4][40] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 225: // STATE 41 - processes.pml:47 - [topPrio = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[4][41] = 1;
		(trpt+1)->bup.oval = ((int)now.topPrio);
		now.topPrio = 2;
#ifdef VAR_RANGES
		logval("topPrio", ((int)now.topPrio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 226: // STATE 42 - data_structures.pml:146 - [idx = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[4][42] = 1;
		(trpt+1)->bup.oval = ((int)((P4 *)_this)->_8_23_idx);
		((P4 *)_this)->_8_23_idx = 0;
#ifdef VAR_RANGES
		logval(":init::idx", ((int)((P4 *)_this)->_8_23_idx));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 227: // STATE 43 - data_structures.pml:147 - [((idx<(readyQueue[topPrio].tailIndex-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[4][43] = 1;
		if (!((((int)((P4 *)_this)->_8_23_idx)<(((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 228: // STATE 44 - data_structures.pml:148 - [readyQueue[topPrio].tasks[idx] = readyQueue[topPrio].tasks[(idx+1)]] (0:0:1 - 1)
		IfNotBlocked
		reached[4][44] = 1;
		(trpt+1)->bup.oval = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index(((int)((P4 *)_this)->_8_23_idx), 5) ]);
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index(((P4 *)_this)->_8_23_idx, 5) ] = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index((((int)((P4 *)_this)->_8_23_idx)+1), 5) ]);
#ifdef VAR_RANGES
		logval("readyQueue[topPrio].tasks[:init::idx]", ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index(((int)((P4 *)_this)->_8_23_idx), 5) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 229: // STATE 45 - data_structures.pml:149 - [idx = (idx+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[4][45] = 1;
		(trpt+1)->bup.oval = ((int)((P4 *)_this)->_8_23_idx);
		((P4 *)_this)->_8_23_idx = (((int)((P4 *)_this)->_8_23_idx)+1);
#ifdef VAR_RANGES
		logval(":init::idx", ((int)((P4 *)_this)->_8_23_idx));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 230: // STATE 51 - data_structures.pml:153 - [((readyQueue[topPrio].tailIndex>0))] (0:0:0 - 1)
		IfNotBlocked
		reached[4][51] = 1;
		if (!((((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 231: // STATE 52 - data_structures.pml:154 - [readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)] = 255] (0:0:1 - 1)
		IfNotBlocked
		reached[4][52] = 1;
		(trpt+1)->bup.oval = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index((((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1), 5) ]);
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index((now.readyQueue[ Index(now.topPrio, 4) ].tailIndex-1), 5) ] = 255;
#ifdef VAR_RANGES
		logval("readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)]", ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index((((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1), 5) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 232: // STATE 53 - data_structures.pml:155 - [readyQueue[topPrio].tailIndex = (readyQueue[topPrio].tailIndex-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[4][53] = 1;
		(trpt+1)->bup.oval = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex);
		now.readyQueue[ Index(now.topPrio, 4) ].tailIndex = (((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1);
#ifdef VAR_RANGES
		logval("readyQueue[topPrio].tailIndex", ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 233: // STATE 59 - processes.pml:49 - [tcb[EP].state = 4] (0:0:1 - 3)
		IfNotBlocked
		reached[4][59] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[ Index(((int)now.EP), 4) ].state);
		now.tcb[ Index(now.EP, 4) ].state = 4;
#ifdef VAR_RANGES
		logval("tcb[EP].state", ((int)now.tcb[ Index(((int)now.EP), 4) ].state));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 234: // STATE 60 - processes.pml:52 - [(run PendSV_Handler())] (0:0:0 - 1)
		IfNotBlocked
		reached[4][60] = 1;
		if (!(addproc(II, 1, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 235: // STATE 61 - processes.pml:52 - [(run SysTick_Handler())] (0:0:0 - 1)
		IfNotBlocked
		reached[4][61] = 1;
		if (!(addproc(II, 1, 1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 236: // STATE 63 - processes.pml:53 - [(run Process2())] (0:0:0 - 1)
		IfNotBlocked
		reached[4][63] = 1;
		if (!(addproc(II, 1, 3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 237: // STATE 64 - processes.pml:54 - [(run Process1())] (0:0:0 - 1)
		IfNotBlocked
		reached[4][64] = 1;
		if (!(addproc(II, 1, 2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 238: // STATE 65 - processes.pml:55 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[4][65] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Process2 */
	case 239: // STATE 1 - processes.pml:16 - [(((2+1)==EP))] (8:0:0 - 1)
		IfNotBlocked
		reached[3][1] = 1;
		if (!(((2+1)==((int)now.EP))))
			continue;
		/* merge: printf('P2 running\\n')(0, 2, 8) */
		reached[3][2] = 1;
		Printf("P2 running\n");
		_m = 3; goto P999; /* 1 */
	case 240: // STATE 4 - data_structures.pml:45 - [assert(((1<2)&&(1<8)))] (0:23:1 - 1)
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
	case 241: // STATE 10 - processes.pml:16 - [((((((pending_exp>>0)&1)&&((BASEPRI==0)||(15<BASEPRI)))||(((pending_exp>>1)&1)&&((BASEPRI==0)||(15<BASEPRI))))&&(EP>=2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][10] = 1;
		if (!((((((((int)now.pending_exp)>>0)&1)&&((((int)now.BASEPRI)==0)||(15<((int)now.BASEPRI))))||(((((int)now.pending_exp)>>1)&1)&&((((int)now.BASEPRI)==0)||(15<((int)now.BASEPRI)))))&&(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 242: // STATE 11 - processes.pml:16 - [((EP>=2))] (19:0:1 - 1)
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
	case 243: // STATE 17 - data_structures.pml:57 - [assert((EP_Stack==255))] (0:170:2 - 1)
		IfNotBlocked
		reached[3][17] = 1;
		spin_assert((((int)now.EP_Stack)==255), "(EP_Stack==255)", II, tt, t);
		/* merge: EP_Stack = EP(170, 18, 170) */
		reached[3][18] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.EP_Stack);
		now.EP_Stack = ((int)now.EP);
#ifdef VAR_RANGES
		logval("EP_Stack", ((int)now.EP_Stack));
#endif
		;
		/* merge: EP = ( (((pending_exp>>0)&1)) -> (0) : (1) )(170, 20, 170) */
		reached[3][20] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.EP);
		now.EP = ( (((((int)now.pending_exp)>>0)&1)) ? (0) : (1) );
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: .(goto)(170, 24, 170) */
		reached[3][24] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 244: // STATE 24 - processes.pml:16 - [.(goto)] (0:170:0 - 2)
		IfNotBlocked
		reached[3][24] = 1;
		;
		_m = 3; goto P999; /* 0 */
	case 245: // STATE 22 - processes.pml:16 - [(1)] (170:0:0 - 1)
		IfNotBlocked
		reached[3][22] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(170, 24, 170) */
		reached[3][24] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 246: // STATE 26 - processes.pml:17 - [(((2+1)==EP))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][26] = 1;
		if (!(((2+1)==((int)now.EP))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 247: // STATE 27 - scheduler.pml:50 - [intSave = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[3][27] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)_this)->_7_16_29_intSave);
		((P3 *)_this)->_7_16_29_intSave = 0;
#ifdef VAR_RANGES
		logval("Process2:intSave", ((int)((P3 *)_this)->_7_16_29_intSave));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 248: // STATE 28 - data_structures.pml:102 - [intSave = 0] (0:134:2 - 1)
		IfNotBlocked
		reached[3][28] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P3 *)_this)->_7_16_29_intSave);
		((P3 *)_this)->_7_16_29_intSave = 0;
#ifdef VAR_RANGES
		logval("Process2:intSave", ((int)((P3 *)_this)->_7_16_29_intSave));
#endif
		;
		/* merge: assert(((tcb[2].state==1)||(tcb[2].state==2)))(134, 30, 134) */
		reached[3][30] = 1;
		spin_assert(((((int)now.tcb[2].state)==1)||(((int)now.tcb[2].state)==2)), "((tcb[2].state==1)||(tcb[2].state==2))", II, tt, t);
		/* merge: needSched = 0(134, 31, 134) */
		reached[3][31] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P3 *)_this)->_7_16_29_needSched);
		((P3 *)_this)->_7_16_29_needSched = 0;
#ifdef VAR_RANGES
		logval("Process2:needSched", ((int)((P3 *)_this)->_7_16_29_needSched));
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 249: // STATE 32 - scheduler.pml:58 - [((tcb[2].state==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][32] = 1;
		if (!((((int)now.tcb[2].state)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 250: // STATE 33 - scheduler.pml:40 - [assert((tcb[2].state==1))] (0:66:1 - 1)
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
	case 251: // STATE 35 - data_structures.pml:164 - [idx = 0] (0:47:3 - 1)
		IfNotBlocked
		reached[3][35] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)((P3 *)_this)->_7_16_29_25_7_idx);
		((P3 *)_this)->_7_16_29_25_7_idx = 0;
#ifdef VAR_RANGES
		logval("Process2:idx", ((int)((P3 *)_this)->_7_16_29_25_7_idx));
#endif
		;
		/* merge: found = 0(47, 36, 47) */
		reached[3][36] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P3 *)_this)->_7_16_29_25_7_found);
		((P3 *)_this)->_7_16_29_25_7_found = 0;
#ifdef VAR_RANGES
		logval("Process2:found", ((int)((P3 *)_this)->_7_16_29_25_7_found));
#endif
		;
		/* merge: prioLevel = tcb[2].prio(47, 37, 47) */
		reached[3][37] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P3 *)_this)->_7_16_29_25_7_prioLevel);
		((P3 *)_this)->_7_16_29_25_7_prioLevel = ((int)now.tcb[2].prio);
#ifdef VAR_RANGES
		logval("Process2:prioLevel", ((int)((P3 *)_this)->_7_16_29_25_7_prioLevel));
#endif
		;
		/* merge: .(goto)(0, 48, 47) */
		reached[3][48] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 252: // STATE 38 - data_structures.pml:167 - [(((idx<readyQueue[prioLevel].tailIndex)&&!(found)))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][38] = 1;
		if (!(((((int)((P3 *)_this)->_7_16_29_25_7_idx)<((int)now.readyQueue[ Index(((int)((P3 *)_this)->_7_16_29_25_7_prioLevel), 4) ].tailIndex))&& !(((int)((P3 *)_this)->_7_16_29_25_7_found)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 253: // STATE 39 - data_structures.pml:169 - [((readyQueue[prioLevel].tasks[idx]==2))] (47:0:1 - 1)
		IfNotBlocked
		reached[3][39] = 1;
		if (!((((int)now.readyQueue[ Index(((int)((P3 *)_this)->_7_16_29_25_7_prioLevel), 4) ].tasks[ Index(((int)((P3 *)_this)->_7_16_29_25_7_idx), 5) ])==2)))
			continue;
		/* merge: found = 1(0, 40, 47) */
		reached[3][40] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)_this)->_7_16_29_25_7_found);
		((P3 *)_this)->_7_16_29_25_7_found = 1;
#ifdef VAR_RANGES
		logval("Process2:found", ((int)((P3 *)_this)->_7_16_29_25_7_found));
#endif
		;
		/* merge: .(goto)(0, 44, 47) */
		reached[3][44] = 1;
		;
		/* merge: .(goto)(0, 48, 47) */
		reached[3][48] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 254: // STATE 42 - data_structures.pml:171 - [idx = (idx+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[3][42] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)_this)->_7_16_29_25_7_idx);
		((P3 *)_this)->_7_16_29_25_7_idx = (((int)((P3 *)_this)->_7_16_29_25_7_idx)+1);
#ifdef VAR_RANGES
		logval("Process2:idx", ((int)((P3 *)_this)->_7_16_29_25_7_idx));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 255: // STATE 50 - data_structures.pml:175 - [assert((found==1))] (0:56:0 - 3)
		IfNotBlocked
		reached[3][50] = 1;
		spin_assert((((int)((P3 *)_this)->_7_16_29_25_7_found)==1), "(found==1)", II, tt, t);
		/* merge: .(goto)(0, 57, 56) */
		reached[3][57] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 256: // STATE 51 - data_structures.pml:177 - [((idx<(readyQueue[prioLevel].tailIndex-1)))] (56:0:2 - 1)
		IfNotBlocked
		reached[3][51] = 1;
		if (!((((int)((P3 *)_this)->_7_16_29_25_7_idx)<(((int)now.readyQueue[ Index(((int)((P3 *)_this)->_7_16_29_25_7_prioLevel), 4) ].tailIndex)-1))))
			continue;
		/* merge: readyQueue[prioLevel].tasks[idx] = readyQueue[prioLevel].tasks[(idx+1)](56, 52, 56) */
		reached[3][52] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.readyQueue[ Index(((int)((P3 *)_this)->_7_16_29_25_7_prioLevel), 4) ].tasks[ Index(((int)((P3 *)_this)->_7_16_29_25_7_idx), 5) ]);
		now.readyQueue[ Index(((P3 *)_this)->_7_16_29_25_7_prioLevel, 4) ].tasks[ Index(((P3 *)_this)->_7_16_29_25_7_idx, 5) ] = ((int)now.readyQueue[ Index(((int)((P3 *)_this)->_7_16_29_25_7_prioLevel), 4) ].tasks[ Index((((int)((P3 *)_this)->_7_16_29_25_7_idx)+1), 5) ]);
#ifdef VAR_RANGES
		logval("readyQueue[Process2:prioLevel].tasks[Process2:idx]", ((int)now.readyQueue[ Index(((int)((P3 *)_this)->_7_16_29_25_7_prioLevel), 4) ].tasks[ Index(((int)((P3 *)_this)->_7_16_29_25_7_idx), 5) ]));
#endif
		;
		/* merge: idx = (idx+1)(56, 53, 56) */
		reached[3][53] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P3 *)_this)->_7_16_29_25_7_idx);
		((P3 *)_this)->_7_16_29_25_7_idx = (((int)((P3 *)_this)->_7_16_29_25_7_idx)+1);
#ifdef VAR_RANGES
		logval("Process2:idx", ((int)((P3 *)_this)->_7_16_29_25_7_idx));
#endif
		;
		/* merge: .(goto)(0, 57, 56) */
		reached[3][57] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 257: // STATE 59 - data_structures.pml:183 - [((readyQueue[prioLevel].tailIndex>0))] (129:0:3 - 1)
		IfNotBlocked
		reached[3][59] = 1;
		if (!((((int)now.readyQueue[ Index(((int)((P3 *)_this)->_7_16_29_25_7_prioLevel), 4) ].tailIndex)>0)))
			continue;
		/* merge: readyQueue[prioLevel].tasks[(readyQueue[prioLevel].tailIndex-1)] = 255(129, 60, 129) */
		reached[3][60] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.readyQueue[ Index(((int)((P3 *)_this)->_7_16_29_25_7_prioLevel), 4) ].tasks[ Index((((int)now.readyQueue[ Index(((int)((P3 *)_this)->_7_16_29_25_7_prioLevel), 4) ].tailIndex)-1), 5) ]);
		now.readyQueue[ Index(((P3 *)_this)->_7_16_29_25_7_prioLevel, 4) ].tasks[ Index((now.readyQueue[ Index(((P3 *)_this)->_7_16_29_25_7_prioLevel, 4) ].tailIndex-1), 5) ] = 255;
#ifdef VAR_RANGES
		logval("readyQueue[Process2:prioLevel].tasks[(readyQueue[Process2:prioLevel].tailIndex-1)]", ((int)now.readyQueue[ Index(((int)((P3 *)_this)->_7_16_29_25_7_prioLevel), 4) ].tasks[ Index((((int)now.readyQueue[ Index(((int)((P3 *)_this)->_7_16_29_25_7_prioLevel), 4) ].tailIndex)-1), 5) ]));
#endif
		;
		/* merge: readyQueue[prioLevel].tailIndex = (readyQueue[prioLevel].tailIndex-1)(129, 61, 129) */
		reached[3][61] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.readyQueue[ Index(((int)((P3 *)_this)->_7_16_29_25_7_prioLevel), 4) ].tailIndex);
		now.readyQueue[ Index(((P3 *)_this)->_7_16_29_25_7_prioLevel, 4) ].tailIndex = (((int)now.readyQueue[ Index(((int)((P3 *)_this)->_7_16_29_25_7_prioLevel), 4) ].tailIndex)-1);
#ifdef VAR_RANGES
		logval("readyQueue[Process2:prioLevel].tailIndex", ((int)now.readyQueue[ Index(((int)((P3 *)_this)->_7_16_29_25_7_prioLevel), 4) ].tailIndex));
#endif
		;
		/* merge: .(goto)(129, 65, 129) */
		reached[3][65] = 1;
		;
		/* merge: tcb[2].state = 3(129, 67, 129) */
		reached[3][67] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.tcb[2].state);
		now.tcb[2].state = 3;
#ifdef VAR_RANGES
		logval("tcb[2].state", ((int)now.tcb[2].state));
#endif
		;
		_m = 3; goto P999; /* 4 */
	case 258: // STATE 63 - data_structures.pml:186 - [(1)] (129:0:1 - 1)
		IfNotBlocked
		reached[3][63] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(129, 65, 129) */
		reached[3][65] = 1;
		;
		/* merge: tcb[2].state = 3(129, 67, 129) */
		reached[3][67] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[2].state);
		now.tcb[2].state = 3;
#ifdef VAR_RANGES
		logval("tcb[2].state", ((int)now.tcb[2].state));
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 259: // STATE 67 - scheduler.pml:43 - [tcb[2].state = 3] (0:129:1 - 3)
		IfNotBlocked
		reached[3][67] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[2].state);
		now.tcb[2].state = 3;
#ifdef VAR_RANGES
		logval("tcb[2].state", ((int)now.tcb[2].state));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 260: // STATE 68 - data_structures.pml:217 - [insertPos = 0] (0:86:7 - 1)
		IfNotBlocked
		reached[3][68] = 1;
		(trpt+1)->bup.ovals = grab_ints(7);
		(trpt+1)->bup.ovals[0] = ((int)((P3 *)_this)->_7_16_29_25_8_3_insertPos);
		((P3 *)_this)->_7_16_29_25_8_3_insertPos = 0;
#ifdef VAR_RANGES
		logval("Process2:insertPos", ((int)((P3 *)_this)->_7_16_29_25_8_3_insertPos));
#endif
		;
		/* merge: idx = 0(86, 69, 86) */
		reached[3][69] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P3 *)_this)->_7_16_29_25_8_3_idx);
		((P3 *)_this)->_7_16_29_25_8_3_idx = 0;
#ifdef VAR_RANGES
		logval("Process2:idx", ((int)((P3 *)_this)->_7_16_29_25_8_3_idx));
#endif
		;
		/* merge: found = 0(86, 70, 86) */
		reached[3][70] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P3 *)_this)->_7_16_29_25_8_3_found);
		((P3 *)_this)->_7_16_29_25_8_3_found = 0;
#ifdef VAR_RANGES
		logval("Process2:found", ((int)((P3 *)_this)->_7_16_29_25_8_3_found));
#endif
		;
		/* merge: tmpId = 0(86, 71, 86) */
		reached[3][71] = 1;
		(trpt+1)->bup.ovals[3] = ((int)((P3 *)_this)->_7_16_29_25_8_3_tmpId);
		((P3 *)_this)->_7_16_29_25_8_3_tmpId = 0;
#ifdef VAR_RANGES
		logval("Process2:tmpId", ((int)((P3 *)_this)->_7_16_29_25_8_3_tmpId));
#endif
		;
		/* merge: tmpTime = 0(86, 72, 86) */
		reached[3][72] = 1;
		(trpt+1)->bup.ovals[4] = ((int)((P3 *)_this)->_7_16_29_25_8_3_tmpTime);
		((P3 *)_this)->_7_16_29_25_8_3_tmpTime = 0;
#ifdef VAR_RANGES
		logval("Process2:tmpTime", ((int)((P3 *)_this)->_7_16_29_25_8_3_tmpTime));
#endif
		;
		/* merge: assert((g_taskSortLinkTail<(2+1)))(86, 73, 86) */
		reached[3][73] = 1;
		spin_assert((((int)now.g_taskSortLinkTail)<(2+1)), "(g_taskSortLinkTail<(2+1))", II, tt, t);
		/* merge: assert((g_taskSortLinkTail>=0))(86, 74, 86) */
		reached[3][74] = 1;
		spin_assert((((int)now.g_taskSortLinkTail)>=0), "(g_taskSortLinkTail>=0)", II, tt, t);
		/* merge: insertPos = 0(86, 75, 86) */
		reached[3][75] = 1;
		(trpt+1)->bup.ovals[5] = ((int)((P3 *)_this)->_7_16_29_25_8_3_insertPos);
		((P3 *)_this)->_7_16_29_25_8_3_insertPos = 0;
#ifdef VAR_RANGES
		logval("Process2:insertPos", ((int)((P3 *)_this)->_7_16_29_25_8_3_insertPos));
#endif
		;
		/* merge: found = 0(86, 76, 86) */
		reached[3][76] = 1;
		(trpt+1)->bup.ovals[6] = ((int)((P3 *)_this)->_7_16_29_25_8_3_found);
		((P3 *)_this)->_7_16_29_25_8_3_found = 0;
#ifdef VAR_RANGES
		logval("Process2:found", ((int)((P3 *)_this)->_7_16_29_25_8_3_found));
#endif
		;
		/* merge: .(goto)(0, 87, 86) */
		reached[3][87] = 1;
		;
		_m = 3; goto P999; /* 9 */
	case 261: // STATE 77 - data_structures.pml:229 - [(((insertPos<g_taskSortLinkTail)&&(found==0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][77] = 1;
		if (!(((((int)((P3 *)_this)->_7_16_29_25_8_3_insertPos)<((int)now.g_taskSortLinkTail))&&(((int)((P3 *)_this)->_7_16_29_25_8_3_found)==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 262: // STATE 78 - data_structures.pml:231 - [((255<g_taskSortLink[insertPos].responseTime))] (86:0:1 - 1)
		IfNotBlocked
		reached[3][78] = 1;
		if (!((255<((int)now.g_taskSortLink[ Index(((int)((P3 *)_this)->_7_16_29_25_8_3_insertPos), 3) ].responseTime))))
			continue;
		/* merge: found = 1(0, 79, 86) */
		reached[3][79] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)_this)->_7_16_29_25_8_3_found);
		((P3 *)_this)->_7_16_29_25_8_3_found = 1;
#ifdef VAR_RANGES
		logval("Process2:found", ((int)((P3 *)_this)->_7_16_29_25_8_3_found));
#endif
		;
		/* merge: .(goto)(0, 83, 86) */
		reached[3][83] = 1;
		;
		/* merge: .(goto)(0, 87, 86) */
		reached[3][87] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 263: // STATE 80 - data_structures.pml:233 - [((255>=g_taskSortLink[insertPos].responseTime))] (86:0:1 - 1)
		IfNotBlocked
		reached[3][80] = 1;
		if (!((255>=((int)now.g_taskSortLink[ Index(((int)((P3 *)_this)->_7_16_29_25_8_3_insertPos), 3) ].responseTime))))
			continue;
		/* merge: insertPos = (insertPos+1)(0, 81, 86) */
		reached[3][81] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)_this)->_7_16_29_25_8_3_insertPos);
		((P3 *)_this)->_7_16_29_25_8_3_insertPos = (((int)((P3 *)_this)->_7_16_29_25_8_3_insertPos)+1);
#ifdef VAR_RANGES
		logval("Process2:insertPos", ((int)((P3 *)_this)->_7_16_29_25_8_3_insertPos));
#endif
		;
		/* merge: .(goto)(0, 83, 86) */
		reached[3][83] = 1;
		;
		/* merge: .(goto)(0, 87, 86) */
		reached[3][87] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 264: // STATE 89 - data_structures.pml:240 - [idx = g_taskSortLinkTail] (0:104:1 - 3)
		IfNotBlocked
		reached[3][89] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)_this)->_7_16_29_25_8_3_idx);
		((P3 *)_this)->_7_16_29_25_8_3_idx = ((int)now.g_taskSortLinkTail);
#ifdef VAR_RANGES
		logval("Process2:idx", ((int)((P3 *)_this)->_7_16_29_25_8_3_idx));
#endif
		;
		/* merge: .(goto)(0, 105, 104) */
		reached[3][105] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 265: // STATE 90 - data_structures.pml:242 - [((idx>insertPos))] (99:0:4 - 1)
		IfNotBlocked
		reached[3][90] = 1;
		if (!((((int)((P3 *)_this)->_7_16_29_25_8_3_idx)>((int)((P3 *)_this)->_7_16_29_25_8_3_insertPos))))
			continue;
		/* merge: tmpId = g_taskSortLink[(idx-1)].taskId(99, 91, 99) */
		reached[3][91] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((int)((P3 *)_this)->_7_16_29_25_8_3_tmpId);
		((P3 *)_this)->_7_16_29_25_8_3_tmpId = ((int)now.g_taskSortLink[ Index((((int)((P3 *)_this)->_7_16_29_25_8_3_idx)-1), 3) ].taskId);
#ifdef VAR_RANGES
		logval("Process2:tmpId", ((int)((P3 *)_this)->_7_16_29_25_8_3_tmpId));
#endif
		;
		/* merge: tmpTime = g_taskSortLink[(idx-1)].responseTime(99, 92, 99) */
		reached[3][92] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P3 *)_this)->_7_16_29_25_8_3_tmpTime);
		((P3 *)_this)->_7_16_29_25_8_3_tmpTime = ((int)now.g_taskSortLink[ Index((((int)((P3 *)_this)->_7_16_29_25_8_3_idx)-1), 3) ].responseTime);
#ifdef VAR_RANGES
		logval("Process2:tmpTime", ((int)((P3 *)_this)->_7_16_29_25_8_3_tmpTime));
#endif
		;
		/* merge: g_taskSortLink[idx].taskId = tmpId(99, 93, 99) */
		reached[3][93] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.g_taskSortLink[ Index(((int)((P3 *)_this)->_7_16_29_25_8_3_idx), 3) ].taskId);
		now.g_taskSortLink[ Index(((P3 *)_this)->_7_16_29_25_8_3_idx, 3) ].taskId = ((int)((P3 *)_this)->_7_16_29_25_8_3_tmpId);
#ifdef VAR_RANGES
		logval("g_taskSortLink[Process2:idx].taskId", ((int)now.g_taskSortLink[ Index(((int)((P3 *)_this)->_7_16_29_25_8_3_idx), 3) ].taskId));
#endif
		;
		/* merge: g_taskSortLink[idx].responseTime = tmpTime(99, 94, 99) */
		reached[3][94] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.g_taskSortLink[ Index(((int)((P3 *)_this)->_7_16_29_25_8_3_idx), 3) ].responseTime);
		now.g_taskSortLink[ Index(((P3 *)_this)->_7_16_29_25_8_3_idx, 3) ].responseTime = ((int)((P3 *)_this)->_7_16_29_25_8_3_tmpTime);
#ifdef VAR_RANGES
		logval("g_taskSortLink[Process2:idx].responseTime", ((int)now.g_taskSortLink[ Index(((int)((P3 *)_this)->_7_16_29_25_8_3_idx), 3) ].responseTime));
#endif
		;
		_m = 3; goto P999; /* 4 */
	case 266: // STATE 95 - data_structures.pml:250 - [((tmpId!=255))] (104:0:2 - 1)
		IfNotBlocked
		reached[3][95] = 1;
		if (!((((int)((P3 *)_this)->_7_16_29_25_8_3_tmpId)!=255)))
			continue;
		/* merge: tcb[tmpId].pendList = idx(104, 96, 104) */
		reached[3][96] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.tcb[ Index(((int)((P3 *)_this)->_7_16_29_25_8_3_tmpId), 4) ].pendList);
		now.tcb[ Index(((P3 *)_this)->_7_16_29_25_8_3_tmpId, 4) ].pendList = ((int)((P3 *)_this)->_7_16_29_25_8_3_idx);
#ifdef VAR_RANGES
		logval("tcb[Process2:tmpId].pendList", ((int)now.tcb[ Index(((int)((P3 *)_this)->_7_16_29_25_8_3_tmpId), 4) ].pendList));
#endif
		;
		/* merge: .(goto)(104, 100, 104) */
		reached[3][100] = 1;
		;
		/* merge: idx = (idx-1)(104, 101, 104) */
		reached[3][101] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P3 *)_this)->_7_16_29_25_8_3_idx);
		((P3 *)_this)->_7_16_29_25_8_3_idx = (((int)((P3 *)_this)->_7_16_29_25_8_3_idx)-1);
#ifdef VAR_RANGES
		logval("Process2:idx", ((int)((P3 *)_this)->_7_16_29_25_8_3_idx));
#endif
		;
		/* merge: .(goto)(0, 105, 104) */
		reached[3][105] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 267: // STATE 97 - data_structures.pml:251 - [((tmpId==255))] (0:0:1 - 1)
		IfNotBlocked
		reached[3][97] = 1;
		if (!((((int)((P3 *)_this)->_7_16_29_25_8_3_tmpId)==255)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _7_16_29_25_8_3_tmpId */  (trpt+1)->bup.oval = ((P3 *)_this)->_7_16_29_25_8_3_tmpId;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P3 *)_this)->_7_16_29_25_8_3_tmpId = 0;
		_m = 3; goto P999; /* 0 */
	case 268: // STATE 98 - data_structures.pml:251 - [(1)] (104:0:1 - 1)
		IfNotBlocked
		reached[3][98] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(104, 100, 104) */
		reached[3][100] = 1;
		;
		/* merge: idx = (idx-1)(104, 101, 104) */
		reached[3][101] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)_this)->_7_16_29_25_8_3_idx);
		((P3 *)_this)->_7_16_29_25_8_3_idx = (((int)((P3 *)_this)->_7_16_29_25_8_3_idx)-1);
#ifdef VAR_RANGES
		logval("Process2:idx", ((int)((P3 *)_this)->_7_16_29_25_8_3_idx));
#endif
		;
		/* merge: .(goto)(0, 105, 104) */
		reached[3][105] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 269: // STATE 101 - data_structures.pml:253 - [idx = (idx-1)] (0:104:1 - 3)
		IfNotBlocked
		reached[3][101] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)_this)->_7_16_29_25_8_3_idx);
		((P3 *)_this)->_7_16_29_25_8_3_idx = (((int)((P3 *)_this)->_7_16_29_25_8_3_idx)-1);
#ifdef VAR_RANGES
		logval("Process2:idx", ((int)((P3 *)_this)->_7_16_29_25_8_3_idx));
#endif
		;
		/* merge: .(goto)(0, 105, 104) */
		reached[3][105] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 270: // STATE 102 - data_structures.pml:254 - [((idx<=insertPos))] (115:0:5 - 1)
		IfNotBlocked
		reached[3][102] = 1;
		if (!((((int)((P3 *)_this)->_7_16_29_25_8_3_idx)<=((int)((P3 *)_this)->_7_16_29_25_8_3_insertPos))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _7_16_29_25_8_3_idx */  (trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((P3 *)_this)->_7_16_29_25_8_3_idx;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P3 *)_this)->_7_16_29_25_8_3_idx = 0;
		/* merge: goto :b17(115, 103, 115) */
		reached[3][103] = 1;
		;
		/* merge: g_taskSortLink[insertPos].taskId = 2(115, 107, 115) */
		reached[3][107] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.g_taskSortLink[ Index(((int)((P3 *)_this)->_7_16_29_25_8_3_insertPos), 3) ].taskId);
		now.g_taskSortLink[ Index(((P3 *)_this)->_7_16_29_25_8_3_insertPos, 3) ].taskId = 2;
#ifdef VAR_RANGES
		logval("g_taskSortLink[Process2:insertPos].taskId", ((int)now.g_taskSortLink[ Index(((int)((P3 *)_this)->_7_16_29_25_8_3_insertPos), 3) ].taskId));
#endif
		;
		/* merge: g_taskSortLink[insertPos].responseTime = 255(115, 108, 115) */
		reached[3][108] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.g_taskSortLink[ Index(((int)((P3 *)_this)->_7_16_29_25_8_3_insertPos), 3) ].responseTime);
		now.g_taskSortLink[ Index(((P3 *)_this)->_7_16_29_25_8_3_insertPos, 3) ].responseTime = 255;
#ifdef VAR_RANGES
		logval("g_taskSortLink[Process2:insertPos].responseTime", ((int)now.g_taskSortLink[ Index(((int)((P3 *)_this)->_7_16_29_25_8_3_insertPos), 3) ].responseTime));
#endif
		;
		/* merge: tcb[2].pendList = insertPos(115, 109, 115) */
		reached[3][109] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.tcb[2].pendList);
		now.tcb[2].pendList = ((int)((P3 *)_this)->_7_16_29_25_8_3_insertPos);
#ifdef VAR_RANGES
		logval("tcb[2].pendList", ((int)now.tcb[2].pendList));
#endif
		;
		/* merge: g_taskSortLinkTail = (g_taskSortLinkTail+1)(115, 110, 115) */
		reached[3][110] = 1;
		(trpt+1)->bup.ovals[4] = ((int)now.g_taskSortLinkTail);
		now.g_taskSortLinkTail = (((int)now.g_taskSortLinkTail)+1);
#ifdef VAR_RANGES
		logval("g_taskSortLinkTail", ((int)now.g_taskSortLinkTail));
#endif
		;
		_m = 3; goto P999; /* 5 */
	case 271: // STATE 107 - data_structures.pml:258 - [g_taskSortLink[insertPos].taskId = 2] (0:115:4 - 3)
		IfNotBlocked
		reached[3][107] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((int)now.g_taskSortLink[ Index(((int)((P3 *)_this)->_7_16_29_25_8_3_insertPos), 3) ].taskId);
		now.g_taskSortLink[ Index(((P3 *)_this)->_7_16_29_25_8_3_insertPos, 3) ].taskId = 2;
#ifdef VAR_RANGES
		logval("g_taskSortLink[Process2:insertPos].taskId", ((int)now.g_taskSortLink[ Index(((int)((P3 *)_this)->_7_16_29_25_8_3_insertPos), 3) ].taskId));
#endif
		;
		/* merge: g_taskSortLink[insertPos].responseTime = 255(115, 108, 115) */
		reached[3][108] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.g_taskSortLink[ Index(((int)((P3 *)_this)->_7_16_29_25_8_3_insertPos), 3) ].responseTime);
		now.g_taskSortLink[ Index(((P3 *)_this)->_7_16_29_25_8_3_insertPos, 3) ].responseTime = 255;
#ifdef VAR_RANGES
		logval("g_taskSortLink[Process2:insertPos].responseTime", ((int)now.g_taskSortLink[ Index(((int)((P3 *)_this)->_7_16_29_25_8_3_insertPos), 3) ].responseTime));
#endif
		;
		/* merge: tcb[2].pendList = insertPos(115, 109, 115) */
		reached[3][109] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.tcb[2].pendList);
		now.tcb[2].pendList = ((int)((P3 *)_this)->_7_16_29_25_8_3_insertPos);
#ifdef VAR_RANGES
		logval("tcb[2].pendList", ((int)now.tcb[2].pendList));
#endif
		;
		/* merge: g_taskSortLinkTail = (g_taskSortLinkTail+1)(115, 110, 115) */
		reached[3][110] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.g_taskSortLinkTail);
		now.g_taskSortLinkTail = (((int)now.g_taskSortLinkTail)+1);
#ifdef VAR_RANGES
		logval("g_taskSortLinkTail", ((int)now.g_taskSortLinkTail));
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 272: // STATE 111 - data_structures.pml:265 - [(((insertPos==0)&&(255<255)))] (127:0:2 - 1)
		IfNotBlocked
		reached[3][111] = 1;
		if (!(((((int)((P3 *)_this)->_7_16_29_25_8_3_insertPos)==0)&&(255<255))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _7_16_29_25_8_3_insertPos */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P3 *)_this)->_7_16_29_25_8_3_insertPos;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P3 *)_this)->_7_16_29_25_8_3_insertPos = 0;
		/* merge: g_schedResponseTime = 255(0, 112, 127) */
		reached[3][112] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.g_schedResponseTime);
		now.g_schedResponseTime = 255;
#ifdef VAR_RANGES
		logval("g_schedResponseTime", ((int)now.g_schedResponseTime));
#endif
		;
		/* merge: .(goto)(0, 116, 127) */
		reached[3][116] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 273: // STATE 117 - data_structures.pml:335 - [checkIdx = 0] (0:124:3 - 1)
		IfNotBlocked
		reached[3][117] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)((P3 *)_this)->_7_16_29_25_8_3_1_checkIdx);
		((P3 *)_this)->_7_16_29_25_8_3_1_checkIdx = 0;
#ifdef VAR_RANGES
		logval("Process2:checkIdx", ((int)((P3 *)_this)->_7_16_29_25_8_3_1_checkIdx));
#endif
		;
		/* merge: isValid = 1(124, 118, 124) */
		reached[3][118] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P3 *)_this)->_7_16_29_25_8_3_1_isValid);
		((P3 *)_this)->_7_16_29_25_8_3_1_isValid = 1;
#ifdef VAR_RANGES
		logval("Process2:isValid", ((int)((P3 *)_this)->_7_16_29_25_8_3_1_isValid));
#endif
		;
		if (TstOnly) return 1; /* TT */
		/* dead 2: _7_16_29_25_8_3_1_isValid */  
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P3 *)_this)->_7_16_29_25_8_3_1_isValid = 0;
		/* merge: .(goto)(0, 125, 124) */
		reached[3][125] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 274: // STATE 119 - data_structures.pml:339 - [((checkIdx<(g_taskSortLinkTail-1)))] (124:0:1 - 1)
		IfNotBlocked
		reached[3][119] = 1;
		if (!((((int)((P3 *)_this)->_7_16_29_25_8_3_1_checkIdx)<(((int)now.g_taskSortLinkTail)-1))))
			continue;
		/* merge: assert((g_taskSortLink[checkIdx].responseTime<=g_taskSortLink[(checkIdx+1)].responseTime))(124, 120, 124) */
		reached[3][120] = 1;
		spin_assert((((int)now.g_taskSortLink[ Index(((int)((P3 *)_this)->_7_16_29_25_8_3_1_checkIdx), 3) ].responseTime)<=((int)now.g_taskSortLink[ Index((((int)((P3 *)_this)->_7_16_29_25_8_3_1_checkIdx)+1), 3) ].responseTime)), "(g_taskSortLink[checkIdx].responseTime<=g_taskSortLink[(checkIdx+1)].responseTime)", II, tt, t);
		/* merge: checkIdx = (checkIdx+1)(124, 121, 124) */
		reached[3][121] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)_this)->_7_16_29_25_8_3_1_checkIdx);
		((P3 *)_this)->_7_16_29_25_8_3_1_checkIdx = (((int)((P3 *)_this)->_7_16_29_25_8_3_1_checkIdx)+1);
#ifdef VAR_RANGES
		logval("Process2:checkIdx", ((int)((P3 *)_this)->_7_16_29_25_8_3_1_checkIdx));
#endif
		;
		/* merge: .(goto)(0, 125, 124) */
		reached[3][125] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 275: // STATE 131 - scheduler.pml:61 - [((tcb[2].state==2))] (145:0:2 - 1)
		IfNotBlocked
		reached[3][131] = 1;
		if (!((((int)now.tcb[2].state)==2)))
			continue;
		/* merge: needSched = 1(145, 132, 145) */
		reached[3][132] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P3 *)_this)->_7_16_29_needSched);
		((P3 *)_this)->_7_16_29_needSched = 1;
#ifdef VAR_RANGES
		logval("Process2:needSched", ((int)((P3 *)_this)->_7_16_29_needSched));
#endif
		;
		/* merge: tcb[2].state = 3(145, 133, 145) */
		reached[3][133] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.tcb[2].state);
		now.tcb[2].state = 3;
#ifdef VAR_RANGES
		logval("tcb[2].state", ((int)now.tcb[2].state));
#endif
		;
		/* merge: .(goto)(0, 135, 145) */
		reached[3][135] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 276: // STATE 136 - scheduler.pml:69 - [((needSched&&g_taskScheduled))] (0:0:1 - 1)
		IfNotBlocked
		reached[3][136] = 1;
		if (!((((int)((P3 *)_this)->_7_16_29_needSched)&&((int)now.g_taskScheduled))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _7_16_29_needSched */  (trpt+1)->bup.oval = ((P3 *)_this)->_7_16_29_needSched;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P3 *)_this)->_7_16_29_needSched = 0;
		_m = 3; goto P999; /* 0 */
	case 277: // STATE 137 - data_structures.pml:107 - [intSave = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[3][137] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)_this)->_7_16_29_intSave);
		((P3 *)_this)->_7_16_29_intSave = 0;
#ifdef VAR_RANGES
		logval("Process2:intSave", ((int)((P3 *)_this)->_7_16_29_intSave));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 278: // STATE 139 - data_structures.pml:45 - [assert(((0<2)&&(0<8)))] (0:153:1 - 1)
		IfNotBlocked
		reached[3][139] = 1;
		spin_assert(((0<2)&&(0<8)), "((0<2)&&(0<8))", II, tt, t);
		/* merge: pending_exp = (pending_exp|(1<<0))(153, 140, 153) */
		reached[3][140] = 1;
		(trpt+1)->bup.oval = ((int)now.pending_exp);
		now.pending_exp = (((int)now.pending_exp)|(1<<0));
#ifdef VAR_RANGES
		logval("pending_exp", ((int)now.pending_exp));
#endif
		;
		/* merge: .(goto)(0, 146, 153) */
		reached[3][146] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 279: // STATE 149 - data_structures.pml:45 - [assert(((1<2)&&(1<8)))] (0:168:1 - 1)
		IfNotBlocked
		reached[3][149] = 1;
		spin_assert(((1<2)&&(1<8)), "((1<2)&&(1<8))", II, tt, t);
		/* merge: pending_exp = (pending_exp|(1<<1))(168, 150, 168) */
		reached[3][150] = 1;
		(trpt+1)->bup.oval = ((int)now.pending_exp);
		now.pending_exp = (((int)now.pending_exp)|(1<<1));
#ifdef VAR_RANGES
		logval("pending_exp", ((int)now.pending_exp));
#endif
		;
		/* merge: .(goto)(0, 154, 168) */
		reached[3][154] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 280: // STATE 155 - processes.pml:17 - [((((((pending_exp>>0)&1)&&((BASEPRI==0)||(15<BASEPRI)))||(((pending_exp>>1)&1)&&((BASEPRI==0)||(15<BASEPRI))))&&(EP>=2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][155] = 1;
		if (!((((((((int)now.pending_exp)>>0)&1)&&((((int)now.BASEPRI)==0)||(15<((int)now.BASEPRI))))||(((((int)now.pending_exp)>>1)&1)&&((((int)now.BASEPRI)==0)||(15<((int)now.BASEPRI)))))&&(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 281: // STATE 156 - processes.pml:17 - [((EP>=2))] (164:0:1 - 1)
		IfNotBlocked
		reached[3][156] = 1;
		if (!((((int)now.EP)>=2)))
			continue;
		/* merge: chain_tick_used = 0(0, 157, 164) */
		reached[3][157] = 1;
		(trpt+1)->bup.oval = ((int)now.chain_tick_used);
		now.chain_tick_used = 0;
#ifdef VAR_RANGES
		logval("chain_tick_used", ((int)now.chain_tick_used));
#endif
		;
		/* merge: .(goto)(0, 161, 164) */
		reached[3][161] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 282: // STATE 162 - data_structures.pml:57 - [assert((EP_Stack==255))] (0:265:2 - 1)
		IfNotBlocked
		reached[3][162] = 1;
		spin_assert((((int)now.EP_Stack)==255), "(EP_Stack==255)", II, tt, t);
		/* merge: EP_Stack = EP(265, 163, 265) */
		reached[3][163] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.EP_Stack);
		now.EP_Stack = ((int)now.EP);
#ifdef VAR_RANGES
		logval("EP_Stack", ((int)now.EP_Stack));
#endif
		;
		/* merge: EP = ( (((pending_exp>>0)&1)) -> (0) : (1) )(265, 165, 265) */
		reached[3][165] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.EP);
		now.EP = ( (((((int)now.pending_exp)>>0)&1)) ? (0) : (1) );
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: .(goto)(265, 169, 265) */
		reached[3][169] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 283: // STATE 169 - processes.pml:17 - [.(goto)] (0:265:0 - 2)
		IfNotBlocked
		reached[3][169] = 1;
		;
		_m = 3; goto P999; /* 0 */
	case 284: // STATE 167 - processes.pml:17 - [(1)] (265:0:0 - 1)
		IfNotBlocked
		reached[3][167] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(265, 169, 265) */
		reached[3][169] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 285: // STATE 171 - processes.pml:18 - [(((2+1)==EP))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][171] = 1;
		if (!(((2+1)==((int)now.EP))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 286: // STATE 172 - scheduler.pml:21 - [intSave = 0] (0:176:3 - 1)
		IfNotBlocked
		reached[3][172] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)((P3 *)_this)->_7_17_32_intSave);
		((P3 *)_this)->_7_17_32_intSave = 0;
#ifdef VAR_RANGES
		logval("Process2:intSave", ((int)((P3 *)_this)->_7_17_32_intSave));
#endif
		;
		/* merge: tempStatus = 0(176, 173, 176) */
		reached[3][173] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P3 *)_this)->_7_17_32_tempStatus);
		((P3 *)_this)->_7_17_32_tempStatus = 0;
#ifdef VAR_RANGES
		logval("Process2:tempStatus", ((int)((P3 *)_this)->_7_17_32_tempStatus));
#endif
		;
		/* merge: needSched = 0(176, 174, 176) */
		reached[3][174] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P3 *)_this)->_7_17_32_needSched);
		((P3 *)_this)->_7_17_32_needSched = 0;
#ifdef VAR_RANGES
		logval("Process2:needSched", ((int)((P3 *)_this)->_7_17_32_needSched));
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 287: // STATE 175 - data_structures.pml:102 - [intSave = 0] (0:230:2 - 1)
		IfNotBlocked
		reached[3][175] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P3 *)_this)->_7_17_32_intSave);
		((P3 *)_this)->_7_17_32_intSave = 0;
#ifdef VAR_RANGES
		logval("Process2:intSave", ((int)((P3 *)_this)->_7_17_32_intSave));
#endif
		;
		/* merge: tempStatus = tcb[2].state(230, 177, 230) */
		reached[3][177] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P3 *)_this)->_7_17_32_tempStatus);
		((P3 *)_this)->_7_17_32_tempStatus = ((int)now.tcb[2].state);
#ifdef VAR_RANGES
		logval("Process2:tempStatus", ((int)((P3 *)_this)->_7_17_32_tempStatus));
#endif
		;
		/* merge: assert((tempStatus==3))(230, 178, 230) */
		reached[3][178] = 1;
		spin_assert((((int)((P3 *)_this)->_7_17_32_tempStatus)==3), "(tempStatus==3)", II, tt, t);
		_m = 3; goto P999; /* 2 */
	case 288: // STATE 179 - scheduler.pml:11 - [assert((tcb[2].state==3))] (0:221:2 - 1)
		IfNotBlocked
		reached[3][179] = 1;
		spin_assert((((int)now.tcb[2].state)==3), "(tcb[2].state==3)", II, tt, t);
		/* merge: needSched = 1(221, 180, 221) */
		reached[3][180] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P3 *)_this)->_7_17_32_needSched);
		((P3 *)_this)->_7_17_32_needSched = 1;
#ifdef VAR_RANGES
		logval("Process2:needSched", ((int)((P3 *)_this)->_7_17_32_needSched));
#endif
		;
		/* merge: tcb[2].state = 1(221, 181, 221) */
		reached[3][181] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.tcb[2].state);
		now.tcb[2].state = 1;
#ifdef VAR_RANGES
		logval("tcb[2].state", ((int)now.tcb[2].state));
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 289: // STATE 182 - data_structures.pml:283 - [idx = tcb[2].pendList] (0:190:2 - 1)
		IfNotBlocked
		reached[3][182] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P3 *)_this)->_7_17_32_29_10_idx);
		((P3 *)_this)->_7_17_32_29_10_idx = ((int)now.tcb[2].pendList);
#ifdef VAR_RANGES
		logval("Process2:idx", ((int)((P3 *)_this)->_7_17_32_29_10_idx));
#endif
		;
		/* merge: removedIdx = idx(190, 183, 190) */
		reached[3][183] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P3 *)_this)->_7_17_32_29_10_removedIdx);
		((P3 *)_this)->_7_17_32_29_10_removedIdx = ((int)((P3 *)_this)->_7_17_32_29_10_idx);
#ifdef VAR_RANGES
		logval("Process2:removedIdx", ((int)((P3 *)_this)->_7_17_32_29_10_removedIdx));
#endif
		;
		/* merge: .(goto)(0, 191, 190) */
		reached[3][191] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 290: // STATE 184 - data_structures.pml:286 - [((idx<(g_taskSortLinkTail-1)))] (190:0:3 - 1)
		IfNotBlocked
		reached[3][184] = 1;
		if (!((((int)((P3 *)_this)->_7_17_32_29_10_idx)<(((int)now.g_taskSortLinkTail)-1))))
			continue;
		/* merge: g_taskSortLink[idx].taskId = g_taskSortLink[(idx+1)].taskId(190, 185, 190) */
		reached[3][185] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.g_taskSortLink[ Index(((int)((P3 *)_this)->_7_17_32_29_10_idx), 3) ].taskId);
		now.g_taskSortLink[ Index(((P3 *)_this)->_7_17_32_29_10_idx, 3) ].taskId = ((int)now.g_taskSortLink[ Index((((int)((P3 *)_this)->_7_17_32_29_10_idx)+1), 3) ].taskId);
#ifdef VAR_RANGES
		logval("g_taskSortLink[Process2:idx].taskId", ((int)now.g_taskSortLink[ Index(((int)((P3 *)_this)->_7_17_32_29_10_idx), 3) ].taskId));
#endif
		;
		/* merge: g_taskSortLink[idx].responseTime = g_taskSortLink[(idx+1)].responseTime(190, 186, 190) */
		reached[3][186] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.g_taskSortLink[ Index(((int)((P3 *)_this)->_7_17_32_29_10_idx), 3) ].responseTime);
		now.g_taskSortLink[ Index(((P3 *)_this)->_7_17_32_29_10_idx, 3) ].responseTime = ((int)now.g_taskSortLink[ Index((((int)((P3 *)_this)->_7_17_32_29_10_idx)+1), 3) ].responseTime);
#ifdef VAR_RANGES
		logval("g_taskSortLink[Process2:idx].responseTime", ((int)now.g_taskSortLink[ Index(((int)((P3 *)_this)->_7_17_32_29_10_idx), 3) ].responseTime));
#endif
		;
		/* merge: idx = (idx+1)(190, 187, 190) */
		reached[3][187] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P3 *)_this)->_7_17_32_29_10_idx);
		((P3 *)_this)->_7_17_32_29_10_idx = (((int)((P3 *)_this)->_7_17_32_29_10_idx)+1);
#ifdef VAR_RANGES
		logval("Process2:idx", ((int)((P3 *)_this)->_7_17_32_29_10_idx));
#endif
		;
		/* merge: .(goto)(0, 191, 190) */
		reached[3][191] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 291: // STATE 193 - data_structures.pml:292 - [g_taskSortLink[(g_taskSortLinkTail-1)].taskId = 255] (0:208:3 - 3)
		IfNotBlocked
		reached[3][193] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.g_taskSortLink[ Index((((int)now.g_taskSortLinkTail)-1), 3) ].taskId);
		now.g_taskSortLink[ Index((now.g_taskSortLinkTail-1), 3) ].taskId = 255;
#ifdef VAR_RANGES
		logval("g_taskSortLink[(g_taskSortLinkTail-1)].taskId", ((int)now.g_taskSortLink[ Index((((int)now.g_taskSortLinkTail)-1), 3) ].taskId));
#endif
		;
		/* merge: g_taskSortLink[(g_taskSortLinkTail-1)].responseTime = 255(208, 194, 208) */
		reached[3][194] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.g_taskSortLink[ Index((((int)now.g_taskSortLinkTail)-1), 3) ].responseTime);
		now.g_taskSortLink[ Index((now.g_taskSortLinkTail-1), 3) ].responseTime = 255;
#ifdef VAR_RANGES
		logval("g_taskSortLink[(g_taskSortLinkTail-1)].responseTime", ((int)now.g_taskSortLink[ Index((((int)now.g_taskSortLinkTail)-1), 3) ].responseTime));
#endif
		;
		/* merge: g_taskSortLinkTail = (g_taskSortLinkTail-1)(208, 195, 208) */
		reached[3][195] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.g_taskSortLinkTail);
		now.g_taskSortLinkTail = (((int)now.g_taskSortLinkTail)-1);
#ifdef VAR_RANGES
		logval("g_taskSortLinkTail", ((int)now.g_taskSortLinkTail));
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 292: // STATE 196 - data_structures.pml:302 - [((g_taskSortLinkTail==0))] (220:0:1 - 1)
		IfNotBlocked
		reached[3][196] = 1;
		if (!((((int)now.g_taskSortLinkTail)==0)))
			continue;
		/* merge: g_schedResponseTime = 255(0, 197, 220) */
		reached[3][197] = 1;
		(trpt+1)->bup.oval = ((int)now.g_schedResponseTime);
		now.g_schedResponseTime = 255;
#ifdef VAR_RANGES
		logval("g_schedResponseTime", ((int)now.g_schedResponseTime));
#endif
		;
		/* merge: .(goto)(0, 209, 220) */
		reached[3][209] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 293: // STATE 198 - data_structures.pml:305 - [(((removedIdx==0)&&(g_taskSortLinkTail>0)))] (204:0:2 - 1)
		IfNotBlocked
		reached[3][198] = 1;
		if (!(((((int)((P3 *)_this)->_7_17_32_29_10_removedIdx)==0)&&(((int)now.g_taskSortLinkTail)>0))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _7_17_32_29_10_removedIdx */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P3 *)_this)->_7_17_32_29_10_removedIdx;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P3 *)_this)->_7_17_32_29_10_removedIdx = 0;
		/* merge: newFirstTime = g_taskSortLink[0].responseTime(0, 199, 204) */
		reached[3][199] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P3 *)_this)->_7_17_32_29_10_newFirstTime);
		((P3 *)_this)->_7_17_32_29_10_newFirstTime = ((int)now.g_taskSortLink[0].responseTime);
#ifdef VAR_RANGES
		logval("Process2:newFirstTime", ((int)((P3 *)_this)->_7_17_32_29_10_newFirstTime));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 294: // STATE 200 - data_structures.pml:309 - [((newFirstTime<255))] (220:0:1 - 1)
		IfNotBlocked
		reached[3][200] = 1;
		if (!((((int)((P3 *)_this)->_7_17_32_29_10_newFirstTime)<255)))
			continue;
		/* merge: g_schedResponseTime = newFirstTime(0, 201, 220) */
		reached[3][201] = 1;
		(trpt+1)->bup.oval = ((int)now.g_schedResponseTime);
		now.g_schedResponseTime = ((int)((P3 *)_this)->_7_17_32_29_10_newFirstTime);
#ifdef VAR_RANGES
		logval("g_schedResponseTime", ((int)now.g_schedResponseTime));
#endif
		;
		/* merge: .(goto)(0, 205, 220) */
		reached[3][205] = 1;
		;
		/* merge: .(goto)(0, 209, 220) */
		reached[3][209] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 295: // STATE 203 - data_structures.pml:316 - [g_schedResponseTime = 255] (0:0:1 - 1)
		IfNotBlocked
		reached[3][203] = 1;
		(trpt+1)->bup.oval = ((int)now.g_schedResponseTime);
		now.g_schedResponseTime = 255;
#ifdef VAR_RANGES
		logval("g_schedResponseTime", ((int)now.g_schedResponseTime));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 296: // STATE 210 - data_structures.pml:335 - [checkIdx = 0] (0:217:3 - 1)
		IfNotBlocked
		reached[3][210] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)((P3 *)_this)->_7_17_32_29_10_4_checkIdx);
		((P3 *)_this)->_7_17_32_29_10_4_checkIdx = 0;
#ifdef VAR_RANGES
		logval("Process2:checkIdx", ((int)((P3 *)_this)->_7_17_32_29_10_4_checkIdx));
#endif
		;
		/* merge: isValid = 1(217, 211, 217) */
		reached[3][211] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P3 *)_this)->_7_17_32_29_10_4_isValid);
		((P3 *)_this)->_7_17_32_29_10_4_isValid = 1;
#ifdef VAR_RANGES
		logval("Process2:isValid", ((int)((P3 *)_this)->_7_17_32_29_10_4_isValid));
#endif
		;
		if (TstOnly) return 1; /* TT */
		/* dead 2: _7_17_32_29_10_4_isValid */  
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P3 *)_this)->_7_17_32_29_10_4_isValid = 0;
		/* merge: .(goto)(0, 218, 217) */
		reached[3][218] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 297: // STATE 212 - data_structures.pml:339 - [((checkIdx<(g_taskSortLinkTail-1)))] (217:0:1 - 1)
		IfNotBlocked
		reached[3][212] = 1;
		if (!((((int)((P3 *)_this)->_7_17_32_29_10_4_checkIdx)<(((int)now.g_taskSortLinkTail)-1))))
			continue;
		/* merge: assert((g_taskSortLink[checkIdx].responseTime<=g_taskSortLink[(checkIdx+1)].responseTime))(217, 213, 217) */
		reached[3][213] = 1;
		spin_assert((((int)now.g_taskSortLink[ Index(((int)((P3 *)_this)->_7_17_32_29_10_4_checkIdx), 3) ].responseTime)<=((int)now.g_taskSortLink[ Index((((int)((P3 *)_this)->_7_17_32_29_10_4_checkIdx)+1), 3) ].responseTime)), "(g_taskSortLink[checkIdx].responseTime<=g_taskSortLink[(checkIdx+1)].responseTime)", II, tt, t);
		/* merge: checkIdx = (checkIdx+1)(217, 214, 217) */
		reached[3][214] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)_this)->_7_17_32_29_10_4_checkIdx);
		((P3 *)_this)->_7_17_32_29_10_4_checkIdx = (((int)((P3 *)_this)->_7_17_32_29_10_4_checkIdx)+1);
#ifdef VAR_RANGES
		logval("Process2:checkIdx", ((int)((P3 *)_this)->_7_17_32_29_10_4_checkIdx));
#endif
		;
		/* merge: .(goto)(0, 218, 217) */
		reached[3][218] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 298: // STATE 222 - data_structures.pml:136 - [((readyQueue[tcb[2].prio].tailIndex<5))] (240:0:2 - 1)
		IfNotBlocked
		reached[3][222] = 1;
		if (!((((int)now.readyQueue[ Index(((int)now.tcb[2].prio), 4) ].tailIndex)<5)))
			continue;
		/* merge: readyQueue[tcb[2].prio].tasks[readyQueue[tcb[2].prio].tailIndex] = 2(240, 223, 240) */
		reached[3][223] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.readyQueue[ Index(((int)now.tcb[2].prio), 4) ].tasks[ Index(((int)now.readyQueue[ Index(((int)now.tcb[2].prio), 4) ].tailIndex), 5) ]);
		now.readyQueue[ Index(now.tcb[2].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[2].prio, 4) ].tailIndex, 5) ] = 2;
#ifdef VAR_RANGES
		logval("readyQueue[tcb[2].prio].tasks[readyQueue[tcb[2].prio].tailIndex]", ((int)now.readyQueue[ Index(((int)now.tcb[2].prio), 4) ].tasks[ Index(((int)now.readyQueue[ Index(((int)now.tcb[2].prio), 4) ].tailIndex), 5) ]));
#endif
		;
		/* merge: readyQueue[tcb[2].prio].tailIndex = (readyQueue[tcb[2].prio].tailIndex+1)(240, 224, 240) */
		reached[3][224] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.readyQueue[ Index(((int)now.tcb[2].prio), 4) ].tailIndex);
		now.readyQueue[ Index(now.tcb[2].prio, 4) ].tailIndex = (((int)now.readyQueue[ Index(((int)now.tcb[2].prio), 4) ].tailIndex)+1);
#ifdef VAR_RANGES
		logval("readyQueue[tcb[2].prio].tailIndex", ((int)now.readyQueue[ Index(((int)now.tcb[2].prio), 4) ].tailIndex));
#endif
		;
		/* merge: .(goto)(0, 228, 240) */
		reached[3][228] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 299: // STATE 226 - data_structures.pml:139 - [assert(0)] (0:0:0 - 1)
		IfNotBlocked
		reached[3][226] = 1;
		spin_assert(0, "0", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 300: // STATE 231 - scheduler.pml:31 - [((needSched&&g_taskScheduled))] (0:0:1 - 1)
		IfNotBlocked
		reached[3][231] = 1;
		if (!((((int)((P3 *)_this)->_7_17_32_needSched)&&((int)now.g_taskScheduled))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _7_17_32_needSched */  (trpt+1)->bup.oval = ((P3 *)_this)->_7_17_32_needSched;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P3 *)_this)->_7_17_32_needSched = 0;
		_m = 3; goto P999; /* 0 */
	case 301: // STATE 232 - data_structures.pml:107 - [intSave = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[3][232] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)_this)->_7_17_32_intSave);
		((P3 *)_this)->_7_17_32_intSave = 0;
#ifdef VAR_RANGES
		logval("Process2:intSave", ((int)((P3 *)_this)->_7_17_32_intSave));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 302: // STATE 234 - data_structures.pml:45 - [assert(((0<2)&&(0<8)))] (0:248:1 - 1)
		IfNotBlocked
		reached[3][234] = 1;
		spin_assert(((0<2)&&(0<8)), "((0<2)&&(0<8))", II, tt, t);
		/* merge: pending_exp = (pending_exp|(1<<0))(248, 235, 248) */
		reached[3][235] = 1;
		(trpt+1)->bup.oval = ((int)now.pending_exp);
		now.pending_exp = (((int)now.pending_exp)|(1<<0));
#ifdef VAR_RANGES
		logval("pending_exp", ((int)now.pending_exp));
#endif
		;
		/* merge: .(goto)(0, 241, 248) */
		reached[3][241] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 303: // STATE 244 - data_structures.pml:45 - [assert(((1<2)&&(1<8)))] (0:263:1 - 1)
		IfNotBlocked
		reached[3][244] = 1;
		spin_assert(((1<2)&&(1<8)), "((1<2)&&(1<8))", II, tt, t);
		/* merge: pending_exp = (pending_exp|(1<<1))(263, 245, 263) */
		reached[3][245] = 1;
		(trpt+1)->bup.oval = ((int)now.pending_exp);
		now.pending_exp = (((int)now.pending_exp)|(1<<1));
#ifdef VAR_RANGES
		logval("pending_exp", ((int)now.pending_exp));
#endif
		;
		/* merge: .(goto)(0, 249, 263) */
		reached[3][249] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 304: // STATE 250 - processes.pml:18 - [((((((pending_exp>>0)&1)&&((BASEPRI==0)||(15<BASEPRI)))||(((pending_exp>>1)&1)&&((BASEPRI==0)||(15<BASEPRI))))&&(EP>=2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][250] = 1;
		if (!((((((((int)now.pending_exp)>>0)&1)&&((((int)now.BASEPRI)==0)||(15<((int)now.BASEPRI))))||(((((int)now.pending_exp)>>1)&1)&&((((int)now.BASEPRI)==0)||(15<((int)now.BASEPRI)))))&&(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 305: // STATE 251 - processes.pml:18 - [((EP>=2))] (259:0:1 - 1)
		IfNotBlocked
		reached[3][251] = 1;
		if (!((((int)now.EP)>=2)))
			continue;
		/* merge: chain_tick_used = 0(0, 252, 259) */
		reached[3][252] = 1;
		(trpt+1)->bup.oval = ((int)now.chain_tick_used);
		now.chain_tick_used = 0;
#ifdef VAR_RANGES
		logval("chain_tick_used", ((int)now.chain_tick_used));
#endif
		;
		/* merge: .(goto)(0, 256, 259) */
		reached[3][256] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 306: // STATE 257 - data_structures.pml:57 - [assert((EP_Stack==255))] (0:290:2 - 1)
		IfNotBlocked
		reached[3][257] = 1;
		spin_assert((((int)now.EP_Stack)==255), "(EP_Stack==255)", II, tt, t);
		/* merge: EP_Stack = EP(290, 258, 290) */
		reached[3][258] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.EP_Stack);
		now.EP_Stack = ((int)now.EP);
#ifdef VAR_RANGES
		logval("EP_Stack", ((int)now.EP_Stack));
#endif
		;
		/* merge: EP = ( (((pending_exp>>0)&1)) -> (0) : (1) )(290, 260, 290) */
		reached[3][260] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.EP);
		now.EP = ( (((((int)now.pending_exp)>>0)&1)) ? (0) : (1) );
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: .(goto)(290, 264, 290) */
		reached[3][264] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 307: // STATE 264 - processes.pml:18 - [.(goto)] (0:290:0 - 2)
		IfNotBlocked
		reached[3][264] = 1;
		;
		_m = 3; goto P999; /* 0 */
	case 308: // STATE 262 - processes.pml:18 - [(1)] (290:0:0 - 1)
		IfNotBlocked
		reached[3][262] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(290, 264, 290) */
		reached[3][264] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 309: // STATE 266 - processes.pml:19 - [(((2+1)==EP))] (273:0:0 - 1)
		IfNotBlocked
		reached[3][266] = 1;
		if (!(((2+1)==((int)now.EP))))
			continue;
		/* merge: assert((EP==(2+1)))(0, 267, 273) */
		reached[3][267] = 1;
		spin_assert((((int)now.EP)==(2+1)), "(EP==(2+1))", II, tt, t);
		_m = 3; goto P999; /* 1 */
	case 310: // STATE 269 - data_structures.pml:45 - [assert(((1<2)&&(1<8)))] (0:288:1 - 1)
		IfNotBlocked
		reached[3][269] = 1;
		spin_assert(((1<2)&&(1<8)), "((1<2)&&(1<8))", II, tt, t);
		/* merge: pending_exp = (pending_exp|(1<<1))(288, 270, 288) */
		reached[3][270] = 1;
		(trpt+1)->bup.oval = ((int)now.pending_exp);
		now.pending_exp = (((int)now.pending_exp)|(1<<1));
#ifdef VAR_RANGES
		logval("pending_exp", ((int)now.pending_exp));
#endif
		;
		/* merge: .(goto)(0, 274, 288) */
		reached[3][274] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 311: // STATE 275 - processes.pml:19 - [((((((pending_exp>>0)&1)&&((BASEPRI==0)||(15<BASEPRI)))||(((pending_exp>>1)&1)&&((BASEPRI==0)||(15<BASEPRI))))&&(EP>=2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][275] = 1;
		if (!((((((((int)now.pending_exp)>>0)&1)&&((((int)now.BASEPRI)==0)||(15<((int)now.BASEPRI))))||(((((int)now.pending_exp)>>1)&1)&&((((int)now.BASEPRI)==0)||(15<((int)now.BASEPRI)))))&&(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 312: // STATE 276 - processes.pml:19 - [((EP>=2))] (284:0:1 - 1)
		IfNotBlocked
		reached[3][276] = 1;
		if (!((((int)now.EP)>=2)))
			continue;
		/* merge: chain_tick_used = 0(0, 277, 284) */
		reached[3][277] = 1;
		(trpt+1)->bup.oval = ((int)now.chain_tick_used);
		now.chain_tick_used = 0;
#ifdef VAR_RANGES
		logval("chain_tick_used", ((int)now.chain_tick_used));
#endif
		;
		/* merge: .(goto)(0, 281, 284) */
		reached[3][281] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 313: // STATE 282 - data_structures.pml:57 - [assert((EP_Stack==255))] (0:444:2 - 1)
		IfNotBlocked
		reached[3][282] = 1;
		spin_assert((((int)now.EP_Stack)==255), "(EP_Stack==255)", II, tt, t);
		/* merge: EP_Stack = EP(444, 283, 444) */
		reached[3][283] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.EP_Stack);
		now.EP_Stack = ((int)now.EP);
#ifdef VAR_RANGES
		logval("EP_Stack", ((int)now.EP_Stack));
#endif
		;
		/* merge: EP = ( (((pending_exp>>0)&1)) -> (0) : (1) )(444, 285, 444) */
		reached[3][285] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.EP);
		now.EP = ( (((((int)now.pending_exp)>>0)&1)) ? (0) : (1) );
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: .(goto)(444, 289, 444) */
		reached[3][289] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 314: // STATE 289 - processes.pml:19 - [.(goto)] (0:444:0 - 2)
		IfNotBlocked
		reached[3][289] = 1;
		;
		_m = 3; goto P999; /* 0 */
	case 315: // STATE 287 - processes.pml:19 - [(1)] (444:0:0 - 1)
		IfNotBlocked
		reached[3][287] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(444, 289, 444) */
		reached[3][289] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 316: // STATE 291 - processes.pml:20 - [(((2+1)==EP))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][291] = 1;
		if (!(((2+1)==((int)now.EP))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 317: // STATE 292 - scheduler.pml:100 - [intSave = 0] (0:296:3 - 1)
		IfNotBlocked
		reached[3][292] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)((P3 *)_this)->_7_19_37_intSave);
		((P3 *)_this)->_7_19_37_intSave = 0;
#ifdef VAR_RANGES
		logval("Process2:intSave", ((int)((P3 *)_this)->_7_19_37_intSave));
#endif
		;
		/* merge: needSched = 0(296, 293, 296) */
		reached[3][293] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P3 *)_this)->_7_19_37_needSched);
		((P3 *)_this)->_7_19_37_needSched = 0;
#ifdef VAR_RANGES
		logval("Process2:needSched", ((int)((P3 *)_this)->_7_19_37_needSched));
#endif
		;
		/* merge: currentTask = EP(296, 294, 296) */
		reached[3][294] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P3 *)_this)->_7_19_37_currentTask);
		((P3 *)_this)->_7_19_37_currentTask = ((int)now.EP);
#ifdef VAR_RANGES
		logval("Process2:currentTask", ((int)((P3 *)_this)->_7_19_37_currentTask));
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 318: // STATE 295 - data_structures.pml:102 - [intSave = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[3][295] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)_this)->_7_19_37_intSave);
		((P3 *)_this)->_7_19_37_intSave = 0;
#ifdef VAR_RANGES
		logval("Process2:intSave", ((int)((P3 *)_this)->_7_19_37_intSave));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 319: // STATE 297 - scheduler.pml:106 - [((0==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][297] = 1;
		if (!((0==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 320: // STATE 298 - data_structures.pml:45 - [assert(((0<2)&&(0<8)))] (0:427:1 - 1)
		IfNotBlocked
		reached[3][298] = 1;
		spin_assert(((0<2)&&(0<8)), "((0<2)&&(0<8))", II, tt, t);
		/* merge: pending_exp = (pending_exp|(1<<0))(427, 299, 427) */
		reached[3][299] = 1;
		(trpt+1)->bup.oval = ((int)now.pending_exp);
		now.pending_exp = (((int)now.pending_exp)|(1<<0));
#ifdef VAR_RANGES
		logval("pending_exp", ((int)now.pending_exp));
#endif
		;
		/* merge: .(goto)(0, 420, 427) */
		reached[3][420] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 321: // STATE 303 - scheduler.pml:109 - [((0>0))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][303] = 1;
		if (!((0>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 322: // STATE 304 - scheduler.pml:85 - [assert(((tcb[currentTask].state==1)||(tcb[currentTask].state==4)))] (0:341:1 - 1)
		IfNotBlocked
		reached[3][304] = 1;
		spin_assert(((((int)now.tcb[ Index(((int)((P3 *)_this)->_7_19_37_currentTask), 4) ].state)==1)||(((int)now.tcb[ Index(((int)((P3 *)_this)->_7_19_37_currentTask), 4) ].state)==4)), "((tcb[currentTask].state==1)||(tcb[currentTask].state==4))", II, tt, t);
		/* merge: needSched = 1(341, 305, 341) */
		reached[3][305] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)_this)->_7_19_37_needSched);
		((P3 *)_this)->_7_19_37_needSched = 1;
#ifdef VAR_RANGES
		logval("Process2:needSched", ((int)((P3 *)_this)->_7_19_37_needSched));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 323: // STATE 306 - scheduler.pml:88 - [((tcb[currentTask].state==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][306] = 1;
		if (!((((int)now.tcb[ Index(((int)((P3 *)_this)->_7_19_37_currentTask), 4) ].state)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 324: // STATE 307 - data_structures.pml:164 - [idx = 0] (0:319:3 - 1)
		IfNotBlocked
		reached[3][307] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)((P3 *)_this)->_7_19_37_34_14_idx);
		((P3 *)_this)->_7_19_37_34_14_idx = 0;
#ifdef VAR_RANGES
		logval("Process2:idx", ((int)((P3 *)_this)->_7_19_37_34_14_idx));
#endif
		;
		/* merge: found = 0(319, 308, 319) */
		reached[3][308] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P3 *)_this)->_7_19_37_34_14_found);
		((P3 *)_this)->_7_19_37_34_14_found = 0;
#ifdef VAR_RANGES
		logval("Process2:found", ((int)((P3 *)_this)->_7_19_37_34_14_found));
#endif
		;
		/* merge: prioLevel = tcb[currentTask].prio(319, 309, 319) */
		reached[3][309] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P3 *)_this)->_7_19_37_34_14_prioLevel);
		((P3 *)_this)->_7_19_37_34_14_prioLevel = ((int)now.tcb[ Index(((int)((P3 *)_this)->_7_19_37_currentTask), 4) ].prio);
#ifdef VAR_RANGES
		logval("Process2:prioLevel", ((int)((P3 *)_this)->_7_19_37_34_14_prioLevel));
#endif
		;
		/* merge: .(goto)(0, 320, 319) */
		reached[3][320] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 325: // STATE 310 - data_structures.pml:167 - [(((idx<readyQueue[prioLevel].tailIndex)&&!(found)))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][310] = 1;
		if (!(((((int)((P3 *)_this)->_7_19_37_34_14_idx)<((int)now.readyQueue[ Index(((int)((P3 *)_this)->_7_19_37_34_14_prioLevel), 4) ].tailIndex))&& !(((int)((P3 *)_this)->_7_19_37_34_14_found)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 326: // STATE 311 - data_structures.pml:169 - [((readyQueue[prioLevel].tasks[idx]==currentTask))] (319:0:1 - 1)
		IfNotBlocked
		reached[3][311] = 1;
		if (!((((int)now.readyQueue[ Index(((int)((P3 *)_this)->_7_19_37_34_14_prioLevel), 4) ].tasks[ Index(((int)((P3 *)_this)->_7_19_37_34_14_idx), 5) ])==((int)((P3 *)_this)->_7_19_37_currentTask))))
			continue;
		/* merge: found = 1(0, 312, 319) */
		reached[3][312] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)_this)->_7_19_37_34_14_found);
		((P3 *)_this)->_7_19_37_34_14_found = 1;
#ifdef VAR_RANGES
		logval("Process2:found", ((int)((P3 *)_this)->_7_19_37_34_14_found));
#endif
		;
		/* merge: .(goto)(0, 316, 319) */
		reached[3][316] = 1;
		;
		/* merge: .(goto)(0, 320, 319) */
		reached[3][320] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 327: // STATE 314 - data_structures.pml:171 - [idx = (idx+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[3][314] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)_this)->_7_19_37_34_14_idx);
		((P3 *)_this)->_7_19_37_34_14_idx = (((int)((P3 *)_this)->_7_19_37_34_14_idx)+1);
#ifdef VAR_RANGES
		logval("Process2:idx", ((int)((P3 *)_this)->_7_19_37_34_14_idx));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 328: // STATE 322 - data_structures.pml:175 - [assert((found==1))] (0:328:0 - 3)
		IfNotBlocked
		reached[3][322] = 1;
		spin_assert((((int)((P3 *)_this)->_7_19_37_34_14_found)==1), "(found==1)", II, tt, t);
		/* merge: .(goto)(0, 329, 328) */
		reached[3][329] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 329: // STATE 323 - data_structures.pml:177 - [((idx<(readyQueue[prioLevel].tailIndex-1)))] (328:0:2 - 1)
		IfNotBlocked
		reached[3][323] = 1;
		if (!((((int)((P3 *)_this)->_7_19_37_34_14_idx)<(((int)now.readyQueue[ Index(((int)((P3 *)_this)->_7_19_37_34_14_prioLevel), 4) ].tailIndex)-1))))
			continue;
		/* merge: readyQueue[prioLevel].tasks[idx] = readyQueue[prioLevel].tasks[(idx+1)](328, 324, 328) */
		reached[3][324] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.readyQueue[ Index(((int)((P3 *)_this)->_7_19_37_34_14_prioLevel), 4) ].tasks[ Index(((int)((P3 *)_this)->_7_19_37_34_14_idx), 5) ]);
		now.readyQueue[ Index(((P3 *)_this)->_7_19_37_34_14_prioLevel, 4) ].tasks[ Index(((P3 *)_this)->_7_19_37_34_14_idx, 5) ] = ((int)now.readyQueue[ Index(((int)((P3 *)_this)->_7_19_37_34_14_prioLevel), 4) ].tasks[ Index((((int)((P3 *)_this)->_7_19_37_34_14_idx)+1), 5) ]);
#ifdef VAR_RANGES
		logval("readyQueue[Process2:prioLevel].tasks[Process2:idx]", ((int)now.readyQueue[ Index(((int)((P3 *)_this)->_7_19_37_34_14_prioLevel), 4) ].tasks[ Index(((int)((P3 *)_this)->_7_19_37_34_14_idx), 5) ]));
#endif
		;
		/* merge: idx = (idx+1)(328, 325, 328) */
		reached[3][325] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P3 *)_this)->_7_19_37_34_14_idx);
		((P3 *)_this)->_7_19_37_34_14_idx = (((int)((P3 *)_this)->_7_19_37_34_14_idx)+1);
#ifdef VAR_RANGES
		logval("Process2:idx", ((int)((P3 *)_this)->_7_19_37_34_14_idx));
#endif
		;
		/* merge: .(goto)(0, 329, 328) */
		reached[3][329] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 330: // STATE 331 - data_structures.pml:183 - [((readyQueue[prioLevel].tailIndex>0))] (404:0:3 - 1)
		IfNotBlocked
		reached[3][331] = 1;
		if (!((((int)now.readyQueue[ Index(((int)((P3 *)_this)->_7_19_37_34_14_prioLevel), 4) ].tailIndex)>0)))
			continue;
		/* merge: readyQueue[prioLevel].tasks[(readyQueue[prioLevel].tailIndex-1)] = 255(404, 332, 404) */
		reached[3][332] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.readyQueue[ Index(((int)((P3 *)_this)->_7_19_37_34_14_prioLevel), 4) ].tasks[ Index((((int)now.readyQueue[ Index(((int)((P3 *)_this)->_7_19_37_34_14_prioLevel), 4) ].tailIndex)-1), 5) ]);
		now.readyQueue[ Index(((P3 *)_this)->_7_19_37_34_14_prioLevel, 4) ].tasks[ Index((now.readyQueue[ Index(((P3 *)_this)->_7_19_37_34_14_prioLevel, 4) ].tailIndex-1), 5) ] = 255;
#ifdef VAR_RANGES
		logval("readyQueue[Process2:prioLevel].tasks[(readyQueue[Process2:prioLevel].tailIndex-1)]", ((int)now.readyQueue[ Index(((int)((P3 *)_this)->_7_19_37_34_14_prioLevel), 4) ].tasks[ Index((((int)now.readyQueue[ Index(((int)((P3 *)_this)->_7_19_37_34_14_prioLevel), 4) ].tailIndex)-1), 5) ]));
#endif
		;
		/* merge: readyQueue[prioLevel].tailIndex = (readyQueue[prioLevel].tailIndex-1)(404, 333, 404) */
		reached[3][333] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.readyQueue[ Index(((int)((P3 *)_this)->_7_19_37_34_14_prioLevel), 4) ].tailIndex);
		now.readyQueue[ Index(((P3 *)_this)->_7_19_37_34_14_prioLevel, 4) ].tailIndex = (((int)now.readyQueue[ Index(((int)((P3 *)_this)->_7_19_37_34_14_prioLevel), 4) ].tailIndex)-1);
#ifdef VAR_RANGES
		logval("readyQueue[Process2:prioLevel].tailIndex", ((int)now.readyQueue[ Index(((int)((P3 *)_this)->_7_19_37_34_14_prioLevel), 4) ].tailIndex));
#endif
		;
		/* merge: .(goto)(404, 337, 404) */
		reached[3][337] = 1;
		;
		/* merge: .(goto)(404, 342, 404) */
		reached[3][342] = 1;
		;
		/* merge: tcb[currentTask].state = 2(404, 343, 404) */
		reached[3][343] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.tcb[ Index(((int)((P3 *)_this)->_7_19_37_currentTask), 4) ].state);
		now.tcb[ Index(((P3 *)_this)->_7_19_37_currentTask, 4) ].state = 2;
#ifdef VAR_RANGES
		logval("tcb[Process2:currentTask].state", ((int)now.tcb[ Index(((int)((P3 *)_this)->_7_19_37_currentTask), 4) ].state));
#endif
		;
		_m = 3; goto P999; /* 5 */
	case 331: // STATE 335 - data_structures.pml:186 - [(1)] (404:0:1 - 1)
		IfNotBlocked
		reached[3][335] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(404, 337, 404) */
		reached[3][337] = 1;
		;
		/* merge: .(goto)(404, 342, 404) */
		reached[3][342] = 1;
		;
		/* merge: tcb[currentTask].state = 2(404, 343, 404) */
		reached[3][343] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[ Index(((int)((P3 *)_this)->_7_19_37_currentTask), 4) ].state);
		now.tcb[ Index(((P3 *)_this)->_7_19_37_currentTask, 4) ].state = 2;
#ifdef VAR_RANGES
		logval("tcb[Process2:currentTask].state", ((int)now.tcb[ Index(((int)((P3 *)_this)->_7_19_37_currentTask), 4) ].state));
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 332: // STATE 340 - scheduler.pml:90 - [(1)] (404:0:1 - 1)
		IfNotBlocked
		reached[3][340] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(404, 342, 404) */
		reached[3][342] = 1;
		;
		/* merge: tcb[currentTask].state = 2(404, 343, 404) */
		reached[3][343] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[ Index(((int)((P3 *)_this)->_7_19_37_currentTask), 4) ].state);
		now.tcb[ Index(((P3 *)_this)->_7_19_37_currentTask, 4) ].state = 2;
#ifdef VAR_RANGES
		logval("tcb[Process2:currentTask].state", ((int)now.tcb[ Index(((int)((P3 *)_this)->_7_19_37_currentTask), 4) ].state));
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 333: // STATE 343 - scheduler.pml:92 - [tcb[currentTask].state = 2] (0:404:1 - 5)
		IfNotBlocked
		reached[3][343] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[ Index(((int)((P3 *)_this)->_7_19_37_currentTask), 4) ].state);
		now.tcb[ Index(((P3 *)_this)->_7_19_37_currentTask, 4) ].state = 2;
#ifdef VAR_RANGES
		logval("tcb[Process2:currentTask].state", ((int)now.tcb[ Index(((int)((P3 *)_this)->_7_19_37_currentTask), 4) ].state));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 334: // STATE 344 - data_structures.pml:217 - [insertPos = 0] (0:362:7 - 1)
		IfNotBlocked
		reached[3][344] = 1;
		(trpt+1)->bup.ovals = grab_ints(7);
		(trpt+1)->bup.ovals[0] = ((int)((P3 *)_this)->_7_19_37_34_15_insertPos);
		((P3 *)_this)->_7_19_37_34_15_insertPos = 0;
#ifdef VAR_RANGES
		logval("Process2:insertPos", ((int)((P3 *)_this)->_7_19_37_34_15_insertPos));
#endif
		;
		/* merge: idx = 0(362, 345, 362) */
		reached[3][345] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P3 *)_this)->_7_19_37_34_15_idx);
		((P3 *)_this)->_7_19_37_34_15_idx = 0;
#ifdef VAR_RANGES
		logval("Process2:idx", ((int)((P3 *)_this)->_7_19_37_34_15_idx));
#endif
		;
		/* merge: found = 0(362, 346, 362) */
		reached[3][346] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P3 *)_this)->_7_19_37_34_15_found);
		((P3 *)_this)->_7_19_37_34_15_found = 0;
#ifdef VAR_RANGES
		logval("Process2:found", ((int)((P3 *)_this)->_7_19_37_34_15_found));
#endif
		;
		/* merge: tmpId = 0(362, 347, 362) */
		reached[3][347] = 1;
		(trpt+1)->bup.ovals[3] = ((int)((P3 *)_this)->_7_19_37_34_15_tmpId);
		((P3 *)_this)->_7_19_37_34_15_tmpId = 0;
#ifdef VAR_RANGES
		logval("Process2:tmpId", ((int)((P3 *)_this)->_7_19_37_34_15_tmpId));
#endif
		;
		/* merge: tmpTime = 0(362, 348, 362) */
		reached[3][348] = 1;
		(trpt+1)->bup.ovals[4] = ((int)((P3 *)_this)->_7_19_37_34_15_tmpTime);
		((P3 *)_this)->_7_19_37_34_15_tmpTime = 0;
#ifdef VAR_RANGES
		logval("Process2:tmpTime", ((int)((P3 *)_this)->_7_19_37_34_15_tmpTime));
#endif
		;
		/* merge: assert((g_taskSortLinkTail<(2+1)))(362, 349, 362) */
		reached[3][349] = 1;
		spin_assert((((int)now.g_taskSortLinkTail)<(2+1)), "(g_taskSortLinkTail<(2+1))", II, tt, t);
		/* merge: assert((g_taskSortLinkTail>=0))(362, 350, 362) */
		reached[3][350] = 1;
		spin_assert((((int)now.g_taskSortLinkTail)>=0), "(g_taskSortLinkTail>=0)", II, tt, t);
		/* merge: insertPos = 0(362, 351, 362) */
		reached[3][351] = 1;
		(trpt+1)->bup.ovals[5] = ((int)((P3 *)_this)->_7_19_37_34_15_insertPos);
		((P3 *)_this)->_7_19_37_34_15_insertPos = 0;
#ifdef VAR_RANGES
		logval("Process2:insertPos", ((int)((P3 *)_this)->_7_19_37_34_15_insertPos));
#endif
		;
		/* merge: found = 0(362, 352, 362) */
		reached[3][352] = 1;
		(trpt+1)->bup.ovals[6] = ((int)((P3 *)_this)->_7_19_37_34_15_found);
		((P3 *)_this)->_7_19_37_34_15_found = 0;
#ifdef VAR_RANGES
		logval("Process2:found", ((int)((P3 *)_this)->_7_19_37_34_15_found));
#endif
		;
		/* merge: .(goto)(0, 363, 362) */
		reached[3][363] = 1;
		;
		_m = 3; goto P999; /* 9 */
	case 335: // STATE 353 - data_structures.pml:229 - [(((insertPos<g_taskSortLinkTail)&&(found==0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][353] = 1;
		if (!(((((int)((P3 *)_this)->_7_19_37_34_15_insertPos)<((int)now.g_taskSortLinkTail))&&(((int)((P3 *)_this)->_7_19_37_34_15_found)==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 336: // STATE 354 - data_structures.pml:231 - [(((g_tickCount+0)<g_taskSortLink[insertPos].responseTime))] (362:0:1 - 1)
		IfNotBlocked
		reached[3][354] = 1;
		if (!(((((int)now.g_tickCount)+0)<((int)now.g_taskSortLink[ Index(((int)((P3 *)_this)->_7_19_37_34_15_insertPos), 3) ].responseTime))))
			continue;
		/* merge: found = 1(0, 355, 362) */
		reached[3][355] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)_this)->_7_19_37_34_15_found);
		((P3 *)_this)->_7_19_37_34_15_found = 1;
#ifdef VAR_RANGES
		logval("Process2:found", ((int)((P3 *)_this)->_7_19_37_34_15_found));
#endif
		;
		/* merge: .(goto)(0, 359, 362) */
		reached[3][359] = 1;
		;
		/* merge: .(goto)(0, 363, 362) */
		reached[3][363] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 337: // STATE 356 - data_structures.pml:233 - [(((g_tickCount+0)>=g_taskSortLink[insertPos].responseTime))] (362:0:1 - 1)
		IfNotBlocked
		reached[3][356] = 1;
		if (!(((((int)now.g_tickCount)+0)>=((int)now.g_taskSortLink[ Index(((int)((P3 *)_this)->_7_19_37_34_15_insertPos), 3) ].responseTime))))
			continue;
		/* merge: insertPos = (insertPos+1)(0, 357, 362) */
		reached[3][357] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)_this)->_7_19_37_34_15_insertPos);
		((P3 *)_this)->_7_19_37_34_15_insertPos = (((int)((P3 *)_this)->_7_19_37_34_15_insertPos)+1);
#ifdef VAR_RANGES
		logval("Process2:insertPos", ((int)((P3 *)_this)->_7_19_37_34_15_insertPos));
#endif
		;
		/* merge: .(goto)(0, 359, 362) */
		reached[3][359] = 1;
		;
		/* merge: .(goto)(0, 363, 362) */
		reached[3][363] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 338: // STATE 365 - data_structures.pml:240 - [idx = g_taskSortLinkTail] (0:380:1 - 3)
		IfNotBlocked
		reached[3][365] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)_this)->_7_19_37_34_15_idx);
		((P3 *)_this)->_7_19_37_34_15_idx = ((int)now.g_taskSortLinkTail);
#ifdef VAR_RANGES
		logval("Process2:idx", ((int)((P3 *)_this)->_7_19_37_34_15_idx));
#endif
		;
		/* merge: .(goto)(0, 381, 380) */
		reached[3][381] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 339: // STATE 366 - data_structures.pml:242 - [((idx>insertPos))] (375:0:4 - 1)
		IfNotBlocked
		reached[3][366] = 1;
		if (!((((int)((P3 *)_this)->_7_19_37_34_15_idx)>((int)((P3 *)_this)->_7_19_37_34_15_insertPos))))
			continue;
		/* merge: tmpId = g_taskSortLink[(idx-1)].taskId(375, 367, 375) */
		reached[3][367] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((int)((P3 *)_this)->_7_19_37_34_15_tmpId);
		((P3 *)_this)->_7_19_37_34_15_tmpId = ((int)now.g_taskSortLink[ Index((((int)((P3 *)_this)->_7_19_37_34_15_idx)-1), 3) ].taskId);
#ifdef VAR_RANGES
		logval("Process2:tmpId", ((int)((P3 *)_this)->_7_19_37_34_15_tmpId));
#endif
		;
		/* merge: tmpTime = g_taskSortLink[(idx-1)].responseTime(375, 368, 375) */
		reached[3][368] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P3 *)_this)->_7_19_37_34_15_tmpTime);
		((P3 *)_this)->_7_19_37_34_15_tmpTime = ((int)now.g_taskSortLink[ Index((((int)((P3 *)_this)->_7_19_37_34_15_idx)-1), 3) ].responseTime);
#ifdef VAR_RANGES
		logval("Process2:tmpTime", ((int)((P3 *)_this)->_7_19_37_34_15_tmpTime));
#endif
		;
		/* merge: g_taskSortLink[idx].taskId = tmpId(375, 369, 375) */
		reached[3][369] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.g_taskSortLink[ Index(((int)((P3 *)_this)->_7_19_37_34_15_idx), 3) ].taskId);
		now.g_taskSortLink[ Index(((P3 *)_this)->_7_19_37_34_15_idx, 3) ].taskId = ((int)((P3 *)_this)->_7_19_37_34_15_tmpId);
#ifdef VAR_RANGES
		logval("g_taskSortLink[Process2:idx].taskId", ((int)now.g_taskSortLink[ Index(((int)((P3 *)_this)->_7_19_37_34_15_idx), 3) ].taskId));
#endif
		;
		/* merge: g_taskSortLink[idx].responseTime = tmpTime(375, 370, 375) */
		reached[3][370] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.g_taskSortLink[ Index(((int)((P3 *)_this)->_7_19_37_34_15_idx), 3) ].responseTime);
		now.g_taskSortLink[ Index(((P3 *)_this)->_7_19_37_34_15_idx, 3) ].responseTime = ((int)((P3 *)_this)->_7_19_37_34_15_tmpTime);
#ifdef VAR_RANGES
		logval("g_taskSortLink[Process2:idx].responseTime", ((int)now.g_taskSortLink[ Index(((int)((P3 *)_this)->_7_19_37_34_15_idx), 3) ].responseTime));
#endif
		;
		_m = 3; goto P999; /* 4 */
	case 340: // STATE 371 - data_structures.pml:250 - [((tmpId!=255))] (380:0:2 - 1)
		IfNotBlocked
		reached[3][371] = 1;
		if (!((((int)((P3 *)_this)->_7_19_37_34_15_tmpId)!=255)))
			continue;
		/* merge: tcb[tmpId].pendList = idx(380, 372, 380) */
		reached[3][372] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.tcb[ Index(((int)((P3 *)_this)->_7_19_37_34_15_tmpId), 4) ].pendList);
		now.tcb[ Index(((P3 *)_this)->_7_19_37_34_15_tmpId, 4) ].pendList = ((int)((P3 *)_this)->_7_19_37_34_15_idx);
#ifdef VAR_RANGES
		logval("tcb[Process2:tmpId].pendList", ((int)now.tcb[ Index(((int)((P3 *)_this)->_7_19_37_34_15_tmpId), 4) ].pendList));
#endif
		;
		/* merge: .(goto)(380, 376, 380) */
		reached[3][376] = 1;
		;
		/* merge: idx = (idx-1)(380, 377, 380) */
		reached[3][377] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P3 *)_this)->_7_19_37_34_15_idx);
		((P3 *)_this)->_7_19_37_34_15_idx = (((int)((P3 *)_this)->_7_19_37_34_15_idx)-1);
#ifdef VAR_RANGES
		logval("Process2:idx", ((int)((P3 *)_this)->_7_19_37_34_15_idx));
#endif
		;
		/* merge: .(goto)(0, 381, 380) */
		reached[3][381] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 341: // STATE 373 - data_structures.pml:251 - [((tmpId==255))] (0:0:1 - 1)
		IfNotBlocked
		reached[3][373] = 1;
		if (!((((int)((P3 *)_this)->_7_19_37_34_15_tmpId)==255)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _7_19_37_34_15_tmpId */  (trpt+1)->bup.oval = ((P3 *)_this)->_7_19_37_34_15_tmpId;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P3 *)_this)->_7_19_37_34_15_tmpId = 0;
		_m = 3; goto P999; /* 0 */
	case 342: // STATE 374 - data_structures.pml:251 - [(1)] (380:0:1 - 1)
		IfNotBlocked
		reached[3][374] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(380, 376, 380) */
		reached[3][376] = 1;
		;
		/* merge: idx = (idx-1)(380, 377, 380) */
		reached[3][377] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)_this)->_7_19_37_34_15_idx);
		((P3 *)_this)->_7_19_37_34_15_idx = (((int)((P3 *)_this)->_7_19_37_34_15_idx)-1);
#ifdef VAR_RANGES
		logval("Process2:idx", ((int)((P3 *)_this)->_7_19_37_34_15_idx));
#endif
		;
		/* merge: .(goto)(0, 381, 380) */
		reached[3][381] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 343: // STATE 377 - data_structures.pml:253 - [idx = (idx-1)] (0:380:1 - 3)
		IfNotBlocked
		reached[3][377] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)_this)->_7_19_37_34_15_idx);
		((P3 *)_this)->_7_19_37_34_15_idx = (((int)((P3 *)_this)->_7_19_37_34_15_idx)-1);
#ifdef VAR_RANGES
		logval("Process2:idx", ((int)((P3 *)_this)->_7_19_37_34_15_idx));
#endif
		;
		/* merge: .(goto)(0, 381, 380) */
		reached[3][381] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 344: // STATE 378 - data_structures.pml:254 - [((idx<=insertPos))] (391:0:5 - 1)
		IfNotBlocked
		reached[3][378] = 1;
		if (!((((int)((P3 *)_this)->_7_19_37_34_15_idx)<=((int)((P3 *)_this)->_7_19_37_34_15_insertPos))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _7_19_37_34_15_idx */  (trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((P3 *)_this)->_7_19_37_34_15_idx;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P3 *)_this)->_7_19_37_34_15_idx = 0;
		/* merge: goto :b24(391, 379, 391) */
		reached[3][379] = 1;
		;
		/* merge: g_taskSortLink[insertPos].taskId = currentTask(391, 383, 391) */
		reached[3][383] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.g_taskSortLink[ Index(((int)((P3 *)_this)->_7_19_37_34_15_insertPos), 3) ].taskId);
		now.g_taskSortLink[ Index(((P3 *)_this)->_7_19_37_34_15_insertPos, 3) ].taskId = ((int)((P3 *)_this)->_7_19_37_currentTask);
#ifdef VAR_RANGES
		logval("g_taskSortLink[Process2:insertPos].taskId", ((int)now.g_taskSortLink[ Index(((int)((P3 *)_this)->_7_19_37_34_15_insertPos), 3) ].taskId));
#endif
		;
		/* merge: g_taskSortLink[insertPos].responseTime = (g_tickCount+0)(391, 384, 391) */
		reached[3][384] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.g_taskSortLink[ Index(((int)((P3 *)_this)->_7_19_37_34_15_insertPos), 3) ].responseTime);
		now.g_taskSortLink[ Index(((P3 *)_this)->_7_19_37_34_15_insertPos, 3) ].responseTime = (((int)now.g_tickCount)+0);
#ifdef VAR_RANGES
		logval("g_taskSortLink[Process2:insertPos].responseTime", ((int)now.g_taskSortLink[ Index(((int)((P3 *)_this)->_7_19_37_34_15_insertPos), 3) ].responseTime));
#endif
		;
		/* merge: tcb[currentTask].pendList = insertPos(391, 385, 391) */
		reached[3][385] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.tcb[ Index(((int)((P3 *)_this)->_7_19_37_currentTask), 4) ].pendList);
		now.tcb[ Index(((P3 *)_this)->_7_19_37_currentTask, 4) ].pendList = ((int)((P3 *)_this)->_7_19_37_34_15_insertPos);
#ifdef VAR_RANGES
		logval("tcb[Process2:currentTask].pendList", ((int)now.tcb[ Index(((int)((P3 *)_this)->_7_19_37_currentTask), 4) ].pendList));
#endif
		;
		/* merge: g_taskSortLinkTail = (g_taskSortLinkTail+1)(391, 386, 391) */
		reached[3][386] = 1;
		(trpt+1)->bup.ovals[4] = ((int)now.g_taskSortLinkTail);
		now.g_taskSortLinkTail = (((int)now.g_taskSortLinkTail)+1);
#ifdef VAR_RANGES
		logval("g_taskSortLinkTail", ((int)now.g_taskSortLinkTail));
#endif
		;
		_m = 3; goto P999; /* 5 */
	case 345: // STATE 383 - data_structures.pml:258 - [g_taskSortLink[insertPos].taskId = currentTask] (0:391:4 - 3)
		IfNotBlocked
		reached[3][383] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((int)now.g_taskSortLink[ Index(((int)((P3 *)_this)->_7_19_37_34_15_insertPos), 3) ].taskId);
		now.g_taskSortLink[ Index(((P3 *)_this)->_7_19_37_34_15_insertPos, 3) ].taskId = ((int)((P3 *)_this)->_7_19_37_currentTask);
#ifdef VAR_RANGES
		logval("g_taskSortLink[Process2:insertPos].taskId", ((int)now.g_taskSortLink[ Index(((int)((P3 *)_this)->_7_19_37_34_15_insertPos), 3) ].taskId));
#endif
		;
		/* merge: g_taskSortLink[insertPos].responseTime = (g_tickCount+0)(391, 384, 391) */
		reached[3][384] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.g_taskSortLink[ Index(((int)((P3 *)_this)->_7_19_37_34_15_insertPos), 3) ].responseTime);
		now.g_taskSortLink[ Index(((P3 *)_this)->_7_19_37_34_15_insertPos, 3) ].responseTime = (((int)now.g_tickCount)+0);
#ifdef VAR_RANGES
		logval("g_taskSortLink[Process2:insertPos].responseTime", ((int)now.g_taskSortLink[ Index(((int)((P3 *)_this)->_7_19_37_34_15_insertPos), 3) ].responseTime));
#endif
		;
		/* merge: tcb[currentTask].pendList = insertPos(391, 385, 391) */
		reached[3][385] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.tcb[ Index(((int)((P3 *)_this)->_7_19_37_currentTask), 4) ].pendList);
		now.tcb[ Index(((P3 *)_this)->_7_19_37_currentTask, 4) ].pendList = ((int)((P3 *)_this)->_7_19_37_34_15_insertPos);
#ifdef VAR_RANGES
		logval("tcb[Process2:currentTask].pendList", ((int)now.tcb[ Index(((int)((P3 *)_this)->_7_19_37_currentTask), 4) ].pendList));
#endif
		;
		/* merge: g_taskSortLinkTail = (g_taskSortLinkTail+1)(391, 386, 391) */
		reached[3][386] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.g_taskSortLinkTail);
		now.g_taskSortLinkTail = (((int)now.g_taskSortLinkTail)+1);
#ifdef VAR_RANGES
		logval("g_taskSortLinkTail", ((int)now.g_taskSortLinkTail));
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 346: // STATE 387 - data_structures.pml:265 - [(((insertPos==0)&&((g_tickCount+0)<255)))] (403:0:2 - 1)
		IfNotBlocked
		reached[3][387] = 1;
		if (!(((((int)((P3 *)_this)->_7_19_37_34_15_insertPos)==0)&&((((int)now.g_tickCount)+0)<255))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _7_19_37_34_15_insertPos */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P3 *)_this)->_7_19_37_34_15_insertPos;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P3 *)_this)->_7_19_37_34_15_insertPos = 0;
		/* merge: g_schedResponseTime = (g_tickCount+0)(0, 388, 403) */
		reached[3][388] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.g_schedResponseTime);
		now.g_schedResponseTime = (((int)now.g_tickCount)+0);
#ifdef VAR_RANGES
		logval("g_schedResponseTime", ((int)now.g_schedResponseTime));
#endif
		;
		/* merge: .(goto)(0, 392, 403) */
		reached[3][392] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 347: // STATE 393 - data_structures.pml:335 - [checkIdx = 0] (0:400:3 - 1)
		IfNotBlocked
		reached[3][393] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)((P3 *)_this)->_7_19_37_34_15_6_checkIdx);
		((P3 *)_this)->_7_19_37_34_15_6_checkIdx = 0;
#ifdef VAR_RANGES
		logval("Process2:checkIdx", ((int)((P3 *)_this)->_7_19_37_34_15_6_checkIdx));
#endif
		;
		/* merge: isValid = 1(400, 394, 400) */
		reached[3][394] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P3 *)_this)->_7_19_37_34_15_6_isValid);
		((P3 *)_this)->_7_19_37_34_15_6_isValid = 1;
#ifdef VAR_RANGES
		logval("Process2:isValid", ((int)((P3 *)_this)->_7_19_37_34_15_6_isValid));
#endif
		;
		if (TstOnly) return 1; /* TT */
		/* dead 2: _7_19_37_34_15_6_isValid */  
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P3 *)_this)->_7_19_37_34_15_6_isValid = 0;
		/* merge: .(goto)(0, 401, 400) */
		reached[3][401] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 348: // STATE 395 - data_structures.pml:339 - [((checkIdx<(g_taskSortLinkTail-1)))] (400:0:1 - 1)
		IfNotBlocked
		reached[3][395] = 1;
		if (!((((int)((P3 *)_this)->_7_19_37_34_15_6_checkIdx)<(((int)now.g_taskSortLinkTail)-1))))
			continue;
		/* merge: assert((g_taskSortLink[checkIdx].responseTime<=g_taskSortLink[(checkIdx+1)].responseTime))(400, 396, 400) */
		reached[3][396] = 1;
		spin_assert((((int)now.g_taskSortLink[ Index(((int)((P3 *)_this)->_7_19_37_34_15_6_checkIdx), 3) ].responseTime)<=((int)now.g_taskSortLink[ Index((((int)((P3 *)_this)->_7_19_37_34_15_6_checkIdx)+1), 3) ].responseTime)), "(g_taskSortLink[checkIdx].responseTime<=g_taskSortLink[(checkIdx+1)].responseTime)", II, tt, t);
		/* merge: checkIdx = (checkIdx+1)(400, 397, 400) */
		reached[3][397] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)_this)->_7_19_37_34_15_6_checkIdx);
		((P3 *)_this)->_7_19_37_34_15_6_checkIdx = (((int)((P3 *)_this)->_7_19_37_34_15_6_checkIdx)+1);
#ifdef VAR_RANGES
		logval("Process2:checkIdx", ((int)((P3 *)_this)->_7_19_37_34_15_6_checkIdx));
#endif
		;
		/* merge: .(goto)(0, 401, 400) */
		reached[3][401] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 349: // STATE 406 - scheduler.pml:113 - [((needSched&&g_taskScheduled))] (0:0:1 - 1)
		IfNotBlocked
		reached[3][406] = 1;
		if (!((((int)((P3 *)_this)->_7_19_37_needSched)&&((int)now.g_taskScheduled))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _7_19_37_needSched */  (trpt+1)->bup.oval = ((P3 *)_this)->_7_19_37_needSched;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P3 *)_this)->_7_19_37_needSched = 0;
		_m = 3; goto P999; /* 0 */
	case 350: // STATE 407 - data_structures.pml:107 - [intSave = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[3][407] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)_this)->_7_19_37_intSave);
		((P3 *)_this)->_7_19_37_intSave = 0;
#ifdef VAR_RANGES
		logval("Process2:intSave", ((int)((P3 *)_this)->_7_19_37_intSave));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 351: // STATE 409 - data_structures.pml:45 - [assert(((0<2)&&(0<8)))] (0:427:1 - 1)
		IfNotBlocked
		reached[3][409] = 1;
		spin_assert(((0<2)&&(0<8)), "((0<2)&&(0<8))", II, tt, t);
		/* merge: pending_exp = (pending_exp|(1<<0))(427, 410, 427) */
		reached[3][410] = 1;
		(trpt+1)->bup.oval = ((int)now.pending_exp);
		now.pending_exp = (((int)now.pending_exp)|(1<<0));
#ifdef VAR_RANGES
		logval("pending_exp", ((int)now.pending_exp));
#endif
		;
		/* merge: .(goto)(0, 416, 427) */
		reached[3][416] = 1;
		;
		/* merge: .(goto)(0, 420, 427) */
		reached[3][420] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 352: // STATE 423 - data_structures.pml:45 - [assert(((1<2)&&(1<8)))] (0:442:1 - 1)
		IfNotBlocked
		reached[3][423] = 1;
		spin_assert(((1<2)&&(1<8)), "((1<2)&&(1<8))", II, tt, t);
		/* merge: pending_exp = (pending_exp|(1<<1))(442, 424, 442) */
		reached[3][424] = 1;
		(trpt+1)->bup.oval = ((int)now.pending_exp);
		now.pending_exp = (((int)now.pending_exp)|(1<<1));
#ifdef VAR_RANGES
		logval("pending_exp", ((int)now.pending_exp));
#endif
		;
		/* merge: .(goto)(0, 428, 442) */
		reached[3][428] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 353: // STATE 429 - processes.pml:20 - [((((((pending_exp>>0)&1)&&((BASEPRI==0)||(15<BASEPRI)))||(((pending_exp>>1)&1)&&((BASEPRI==0)||(15<BASEPRI))))&&(EP>=2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][429] = 1;
		if (!((((((((int)now.pending_exp)>>0)&1)&&((((int)now.BASEPRI)==0)||(15<((int)now.BASEPRI))))||(((((int)now.pending_exp)>>1)&1)&&((((int)now.BASEPRI)==0)||(15<((int)now.BASEPRI)))))&&(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 354: // STATE 430 - processes.pml:20 - [((EP>=2))] (438:0:1 - 1)
		IfNotBlocked
		reached[3][430] = 1;
		if (!((((int)now.EP)>=2)))
			continue;
		/* merge: chain_tick_used = 0(0, 431, 438) */
		reached[3][431] = 1;
		(trpt+1)->bup.oval = ((int)now.chain_tick_used);
		now.chain_tick_used = 0;
#ifdef VAR_RANGES
		logval("chain_tick_used", ((int)now.chain_tick_used));
#endif
		;
		/* merge: .(goto)(0, 435, 438) */
		reached[3][435] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 355: // STATE 436 - data_structures.pml:57 - [assert((EP_Stack==255))] (0:445:2 - 1)
		IfNotBlocked
		reached[3][436] = 1;
		spin_assert((((int)now.EP_Stack)==255), "(EP_Stack==255)", II, tt, t);
		/* merge: EP_Stack = EP(445, 437, 445) */
		reached[3][437] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.EP_Stack);
		now.EP_Stack = ((int)now.EP);
#ifdef VAR_RANGES
		logval("EP_Stack", ((int)now.EP_Stack));
#endif
		;
		/* merge: EP = ( (((pending_exp>>0)&1)) -> (0) : (1) )(445, 439, 445) */
		reached[3][439] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.EP);
		now.EP = ( (((((int)now.pending_exp)>>0)&1)) ? (0) : (1) );
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: .(goto)(445, 443, 445) */
		reached[3][443] = 1;
		;
		/* merge: .(goto)(0, 446, 445) */
		reached[3][446] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 356: // STATE 443 - processes.pml:20 - [.(goto)] (0:445:0 - 2)
		IfNotBlocked
		reached[3][443] = 1;
		;
		/* merge: .(goto)(0, 446, 445) */
		reached[3][446] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 357: // STATE 441 - processes.pml:20 - [(1)] (445:0:0 - 1)
		IfNotBlocked
		reached[3][441] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(445, 443, 445) */
		reached[3][443] = 1;
		;
		/* merge: .(goto)(0, 446, 445) */
		reached[3][446] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 358: // STATE 448 - processes.pml:22 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[3][448] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Process1 */
	case 359: // STATE 1 - processes.pml:7 - [((2==EP))] (8:0:0 - 1)
		IfNotBlocked
		reached[2][1] = 1;
		if (!((2==((int)now.EP))))
			continue;
		/* merge: printf('Process1 running\\\\n')(0, 2, 8) */
		reached[2][2] = 1;
		Printf("Process1 running\\n");
		_m = 3; goto P999; /* 1 */
	case 360: // STATE 4 - data_structures.pml:45 - [assert(((1<2)&&(1<8)))] (0:23:1 - 1)
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
	case 361: // STATE 10 - processes.pml:7 - [((((((pending_exp>>0)&1)&&((BASEPRI==0)||(15<BASEPRI)))||(((pending_exp>>1)&1)&&((BASEPRI==0)||(15<BASEPRI))))&&(EP>=2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][10] = 1;
		if (!((((((((int)now.pending_exp)>>0)&1)&&((((int)now.BASEPRI)==0)||(15<((int)now.BASEPRI))))||(((((int)now.pending_exp)>>1)&1)&&((((int)now.BASEPRI)==0)||(15<((int)now.BASEPRI)))))&&(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 362: // STATE 11 - processes.pml:7 - [((EP>=2))] (19:0:1 - 1)
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
	case 363: // STATE 17 - data_structures.pml:57 - [assert((EP_Stack==255))] (0:50:2 - 1)
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
	case 364: // STATE 24 - processes.pml:7 - [.(goto)] (0:50:0 - 2)
		IfNotBlocked
		reached[2][24] = 1;
		;
		_m = 3; goto P999; /* 0 */
	case 365: // STATE 22 - processes.pml:7 - [(1)] (50:0:0 - 1)
		IfNotBlocked
		reached[2][22] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(50, 24, 50) */
		reached[2][24] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 366: // STATE 26 - processes.pml:8 - [((2==EP))] (33:0:0 - 1)
		IfNotBlocked
		reached[2][26] = 1;
		if (!((2==((int)now.EP))))
			continue;
		/* merge: assert((EP==2))(0, 27, 33) */
		reached[2][27] = 1;
		spin_assert((((int)now.EP)==2), "(EP==2)", II, tt, t);
		_m = 3; goto P999; /* 1 */
	case 367: // STATE 29 - data_structures.pml:45 - [assert(((1<2)&&(1<8)))] (0:48:1 - 1)
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
	case 368: // STATE 35 - processes.pml:8 - [((((((pending_exp>>0)&1)&&((BASEPRI==0)||(15<BASEPRI)))||(((pending_exp>>1)&1)&&((BASEPRI==0)||(15<BASEPRI))))&&(EP>=2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][35] = 1;
		if (!((((((((int)now.pending_exp)>>0)&1)&&((((int)now.BASEPRI)==0)||(15<((int)now.BASEPRI))))||(((((int)now.pending_exp)>>1)&1)&&((((int)now.BASEPRI)==0)||(15<((int)now.BASEPRI)))))&&(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 369: // STATE 36 - processes.pml:8 - [((EP>=2))] (44:0:1 - 1)
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
	case 370: // STATE 42 - data_structures.pml:57 - [assert((EP_Stack==255))] (0:204:2 - 1)
		IfNotBlocked
		reached[2][42] = 1;
		spin_assert((((int)now.EP_Stack)==255), "(EP_Stack==255)", II, tt, t);
		/* merge: EP_Stack = EP(204, 43, 204) */
		reached[2][43] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.EP_Stack);
		now.EP_Stack = ((int)now.EP);
#ifdef VAR_RANGES
		logval("EP_Stack", ((int)now.EP_Stack));
#endif
		;
		/* merge: EP = ( (((pending_exp>>0)&1)) -> (0) : (1) )(204, 45, 204) */
		reached[2][45] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.EP);
		now.EP = ( (((((int)now.pending_exp)>>0)&1)) ? (0) : (1) );
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: .(goto)(204, 49, 204) */
		reached[2][49] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 371: // STATE 49 - processes.pml:8 - [.(goto)] (0:204:0 - 2)
		IfNotBlocked
		reached[2][49] = 1;
		;
		_m = 3; goto P999; /* 0 */
	case 372: // STATE 47 - processes.pml:8 - [(1)] (204:0:0 - 1)
		IfNotBlocked
		reached[2][47] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(204, 49, 204) */
		reached[2][49] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 373: // STATE 51 - processes.pml:9 - [((2==EP))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][51] = 1;
		if (!((2==((int)now.EP))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 374: // STATE 52 - scheduler.pml:100 - [intSave = 0] (0:56:3 - 1)
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
	case 375: // STATE 55 - data_structures.pml:102 - [intSave = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[2][55] = 1;
		(trpt+1)->bup.oval = ((int)((P2 *)_this)->_6_14_24_intSave);
		((P2 *)_this)->_6_14_24_intSave = 0;
#ifdef VAR_RANGES
		logval("Process1:intSave", ((int)((P2 *)_this)->_6_14_24_intSave));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 376: // STATE 57 - scheduler.pml:106 - [((5==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][57] = 1;
		if (!((5==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 377: // STATE 58 - data_structures.pml:45 - [assert(((0<2)&&(0<8)))] (0:187:1 - 1)
		IfNotBlocked
		reached[2][58] = 1;
		spin_assert(((0<2)&&(0<8)), "((0<2)&&(0<8))", II, tt, t);
		/* merge: pending_exp = (pending_exp|(1<<0))(187, 59, 187) */
		reached[2][59] = 1;
		(trpt+1)->bup.oval = ((int)now.pending_exp);
		now.pending_exp = (((int)now.pending_exp)|(1<<0));
#ifdef VAR_RANGES
		logval("pending_exp", ((int)now.pending_exp));
#endif
		;
		/* merge: .(goto)(0, 180, 187) */
		reached[2][180] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 378: // STATE 63 - scheduler.pml:109 - [((5>0))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][63] = 1;
		if (!((5>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 379: // STATE 64 - scheduler.pml:85 - [assert(((tcb[currentTask].state==1)||(tcb[currentTask].state==4)))] (0:101:1 - 1)
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
	case 380: // STATE 66 - scheduler.pml:88 - [((tcb[currentTask].state==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][66] = 1;
		if (!((((int)now.tcb[ Index(((int)((P2 *)_this)->_6_14_24_currentTask), 4) ].state)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 381: // STATE 67 - data_structures.pml:164 - [idx = 0] (0:79:3 - 1)
		IfNotBlocked
		reached[2][67] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)((P2 *)_this)->_6_14_24_21_4_idx);
		((P2 *)_this)->_6_14_24_21_4_idx = 0;
#ifdef VAR_RANGES
		logval("Process1:idx", ((int)((P2 *)_this)->_6_14_24_21_4_idx));
#endif
		;
		/* merge: found = 0(79, 68, 79) */
		reached[2][68] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P2 *)_this)->_6_14_24_21_4_found);
		((P2 *)_this)->_6_14_24_21_4_found = 0;
#ifdef VAR_RANGES
		logval("Process1:found", ((int)((P2 *)_this)->_6_14_24_21_4_found));
#endif
		;
		/* merge: prioLevel = tcb[currentTask].prio(79, 69, 79) */
		reached[2][69] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P2 *)_this)->_6_14_24_21_4_prioLevel);
		((P2 *)_this)->_6_14_24_21_4_prioLevel = ((int)now.tcb[ Index(((int)((P2 *)_this)->_6_14_24_currentTask), 4) ].prio);
#ifdef VAR_RANGES
		logval("Process1:prioLevel", ((int)((P2 *)_this)->_6_14_24_21_4_prioLevel));
#endif
		;
		/* merge: .(goto)(0, 80, 79) */
		reached[2][80] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 382: // STATE 70 - data_structures.pml:167 - [(((idx<readyQueue[prioLevel].tailIndex)&&!(found)))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][70] = 1;
		if (!(((((int)((P2 *)_this)->_6_14_24_21_4_idx)<((int)now.readyQueue[ Index(((int)((P2 *)_this)->_6_14_24_21_4_prioLevel), 4) ].tailIndex))&& !(((int)((P2 *)_this)->_6_14_24_21_4_found)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 383: // STATE 71 - data_structures.pml:169 - [((readyQueue[prioLevel].tasks[idx]==currentTask))] (79:0:1 - 1)
		IfNotBlocked
		reached[2][71] = 1;
		if (!((((int)now.readyQueue[ Index(((int)((P2 *)_this)->_6_14_24_21_4_prioLevel), 4) ].tasks[ Index(((int)((P2 *)_this)->_6_14_24_21_4_idx), 5) ])==((int)((P2 *)_this)->_6_14_24_currentTask))))
			continue;
		/* merge: found = 1(0, 72, 79) */
		reached[2][72] = 1;
		(trpt+1)->bup.oval = ((int)((P2 *)_this)->_6_14_24_21_4_found);
		((P2 *)_this)->_6_14_24_21_4_found = 1;
#ifdef VAR_RANGES
		logval("Process1:found", ((int)((P2 *)_this)->_6_14_24_21_4_found));
#endif
		;
		/* merge: .(goto)(0, 76, 79) */
		reached[2][76] = 1;
		;
		/* merge: .(goto)(0, 80, 79) */
		reached[2][80] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 384: // STATE 74 - data_structures.pml:171 - [idx = (idx+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[2][74] = 1;
		(trpt+1)->bup.oval = ((int)((P2 *)_this)->_6_14_24_21_4_idx);
		((P2 *)_this)->_6_14_24_21_4_idx = (((int)((P2 *)_this)->_6_14_24_21_4_idx)+1);
#ifdef VAR_RANGES
		logval("Process1:idx", ((int)((P2 *)_this)->_6_14_24_21_4_idx));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 385: // STATE 82 - data_structures.pml:175 - [assert((found==1))] (0:88:0 - 3)
		IfNotBlocked
		reached[2][82] = 1;
		spin_assert((((int)((P2 *)_this)->_6_14_24_21_4_found)==1), "(found==1)", II, tt, t);
		/* merge: .(goto)(0, 89, 88) */
		reached[2][89] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 386: // STATE 83 - data_structures.pml:177 - [((idx<(readyQueue[prioLevel].tailIndex-1)))] (88:0:2 - 1)
		IfNotBlocked
		reached[2][83] = 1;
		if (!((((int)((P2 *)_this)->_6_14_24_21_4_idx)<(((int)now.readyQueue[ Index(((int)((P2 *)_this)->_6_14_24_21_4_prioLevel), 4) ].tailIndex)-1))))
			continue;
		/* merge: readyQueue[prioLevel].tasks[idx] = readyQueue[prioLevel].tasks[(idx+1)](88, 84, 88) */
		reached[2][84] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.readyQueue[ Index(((int)((P2 *)_this)->_6_14_24_21_4_prioLevel), 4) ].tasks[ Index(((int)((P2 *)_this)->_6_14_24_21_4_idx), 5) ]);
		now.readyQueue[ Index(((P2 *)_this)->_6_14_24_21_4_prioLevel, 4) ].tasks[ Index(((P2 *)_this)->_6_14_24_21_4_idx, 5) ] = ((int)now.readyQueue[ Index(((int)((P2 *)_this)->_6_14_24_21_4_prioLevel), 4) ].tasks[ Index((((int)((P2 *)_this)->_6_14_24_21_4_idx)+1), 5) ]);
#ifdef VAR_RANGES
		logval("readyQueue[Process1:prioLevel].tasks[Process1:idx]", ((int)now.readyQueue[ Index(((int)((P2 *)_this)->_6_14_24_21_4_prioLevel), 4) ].tasks[ Index(((int)((P2 *)_this)->_6_14_24_21_4_idx), 5) ]));
#endif
		;
		/* merge: idx = (idx+1)(88, 85, 88) */
		reached[2][85] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P2 *)_this)->_6_14_24_21_4_idx);
		((P2 *)_this)->_6_14_24_21_4_idx = (((int)((P2 *)_this)->_6_14_24_21_4_idx)+1);
#ifdef VAR_RANGES
		logval("Process1:idx", ((int)((P2 *)_this)->_6_14_24_21_4_idx));
#endif
		;
		/* merge: .(goto)(0, 89, 88) */
		reached[2][89] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 387: // STATE 91 - data_structures.pml:183 - [((readyQueue[prioLevel].tailIndex>0))] (164:0:3 - 1)
		IfNotBlocked
		reached[2][91] = 1;
		if (!((((int)now.readyQueue[ Index(((int)((P2 *)_this)->_6_14_24_21_4_prioLevel), 4) ].tailIndex)>0)))
			continue;
		/* merge: readyQueue[prioLevel].tasks[(readyQueue[prioLevel].tailIndex-1)] = 255(164, 92, 164) */
		reached[2][92] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.readyQueue[ Index(((int)((P2 *)_this)->_6_14_24_21_4_prioLevel), 4) ].tasks[ Index((((int)now.readyQueue[ Index(((int)((P2 *)_this)->_6_14_24_21_4_prioLevel), 4) ].tailIndex)-1), 5) ]);
		now.readyQueue[ Index(((P2 *)_this)->_6_14_24_21_4_prioLevel, 4) ].tasks[ Index((now.readyQueue[ Index(((P2 *)_this)->_6_14_24_21_4_prioLevel, 4) ].tailIndex-1), 5) ] = 255;
#ifdef VAR_RANGES
		logval("readyQueue[Process1:prioLevel].tasks[(readyQueue[Process1:prioLevel].tailIndex-1)]", ((int)now.readyQueue[ Index(((int)((P2 *)_this)->_6_14_24_21_4_prioLevel), 4) ].tasks[ Index((((int)now.readyQueue[ Index(((int)((P2 *)_this)->_6_14_24_21_4_prioLevel), 4) ].tailIndex)-1), 5) ]));
#endif
		;
		/* merge: readyQueue[prioLevel].tailIndex = (readyQueue[prioLevel].tailIndex-1)(164, 93, 164) */
		reached[2][93] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.readyQueue[ Index(((int)((P2 *)_this)->_6_14_24_21_4_prioLevel), 4) ].tailIndex);
		now.readyQueue[ Index(((P2 *)_this)->_6_14_24_21_4_prioLevel, 4) ].tailIndex = (((int)now.readyQueue[ Index(((int)((P2 *)_this)->_6_14_24_21_4_prioLevel), 4) ].tailIndex)-1);
#ifdef VAR_RANGES
		logval("readyQueue[Process1:prioLevel].tailIndex", ((int)now.readyQueue[ Index(((int)((P2 *)_this)->_6_14_24_21_4_prioLevel), 4) ].tailIndex));
#endif
		;
		/* merge: .(goto)(164, 97, 164) */
		reached[2][97] = 1;
		;
		/* merge: .(goto)(164, 102, 164) */
		reached[2][102] = 1;
		;
		/* merge: tcb[currentTask].state = 2(164, 103, 164) */
		reached[2][103] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.tcb[ Index(((int)((P2 *)_this)->_6_14_24_currentTask), 4) ].state);
		now.tcb[ Index(((P2 *)_this)->_6_14_24_currentTask, 4) ].state = 2;
#ifdef VAR_RANGES
		logval("tcb[Process1:currentTask].state", ((int)now.tcb[ Index(((int)((P2 *)_this)->_6_14_24_currentTask), 4) ].state));
#endif
		;
		_m = 3; goto P999; /* 5 */
	case 388: // STATE 95 - data_structures.pml:186 - [(1)] (164:0:1 - 1)
		IfNotBlocked
		reached[2][95] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(164, 97, 164) */
		reached[2][97] = 1;
		;
		/* merge: .(goto)(164, 102, 164) */
		reached[2][102] = 1;
		;
		/* merge: tcb[currentTask].state = 2(164, 103, 164) */
		reached[2][103] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[ Index(((int)((P2 *)_this)->_6_14_24_currentTask), 4) ].state);
		now.tcb[ Index(((P2 *)_this)->_6_14_24_currentTask, 4) ].state = 2;
#ifdef VAR_RANGES
		logval("tcb[Process1:currentTask].state", ((int)now.tcb[ Index(((int)((P2 *)_this)->_6_14_24_currentTask), 4) ].state));
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 389: // STATE 100 - scheduler.pml:90 - [(1)] (164:0:1 - 1)
		IfNotBlocked
		reached[2][100] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(164, 102, 164) */
		reached[2][102] = 1;
		;
		/* merge: tcb[currentTask].state = 2(164, 103, 164) */
		reached[2][103] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[ Index(((int)((P2 *)_this)->_6_14_24_currentTask), 4) ].state);
		now.tcb[ Index(((P2 *)_this)->_6_14_24_currentTask, 4) ].state = 2;
#ifdef VAR_RANGES
		logval("tcb[Process1:currentTask].state", ((int)now.tcb[ Index(((int)((P2 *)_this)->_6_14_24_currentTask), 4) ].state));
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 390: // STATE 103 - scheduler.pml:92 - [tcb[currentTask].state = 2] (0:164:1 - 5)
		IfNotBlocked
		reached[2][103] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[ Index(((int)((P2 *)_this)->_6_14_24_currentTask), 4) ].state);
		now.tcb[ Index(((P2 *)_this)->_6_14_24_currentTask, 4) ].state = 2;
#ifdef VAR_RANGES
		logval("tcb[Process1:currentTask].state", ((int)now.tcb[ Index(((int)((P2 *)_this)->_6_14_24_currentTask), 4) ].state));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 391: // STATE 104 - data_structures.pml:217 - [insertPos = 0] (0:122:7 - 1)
		IfNotBlocked
		reached[2][104] = 1;
		(trpt+1)->bup.ovals = grab_ints(7);
		(trpt+1)->bup.ovals[0] = ((int)((P2 *)_this)->_6_14_24_21_5_insertPos);
		((P2 *)_this)->_6_14_24_21_5_insertPos = 0;
#ifdef VAR_RANGES
		logval("Process1:insertPos", ((int)((P2 *)_this)->_6_14_24_21_5_insertPos));
#endif
		;
		/* merge: idx = 0(122, 105, 122) */
		reached[2][105] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P2 *)_this)->_6_14_24_21_5_idx);
		((P2 *)_this)->_6_14_24_21_5_idx = 0;
#ifdef VAR_RANGES
		logval("Process1:idx", ((int)((P2 *)_this)->_6_14_24_21_5_idx));
#endif
		;
		/* merge: found = 0(122, 106, 122) */
		reached[2][106] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P2 *)_this)->_6_14_24_21_5_found);
		((P2 *)_this)->_6_14_24_21_5_found = 0;
#ifdef VAR_RANGES
		logval("Process1:found", ((int)((P2 *)_this)->_6_14_24_21_5_found));
#endif
		;
		/* merge: tmpId = 0(122, 107, 122) */
		reached[2][107] = 1;
		(trpt+1)->bup.ovals[3] = ((int)((P2 *)_this)->_6_14_24_21_5_tmpId);
		((P2 *)_this)->_6_14_24_21_5_tmpId = 0;
#ifdef VAR_RANGES
		logval("Process1:tmpId", ((int)((P2 *)_this)->_6_14_24_21_5_tmpId));
#endif
		;
		/* merge: tmpTime = 0(122, 108, 122) */
		reached[2][108] = 1;
		(trpt+1)->bup.ovals[4] = ((int)((P2 *)_this)->_6_14_24_21_5_tmpTime);
		((P2 *)_this)->_6_14_24_21_5_tmpTime = 0;
#ifdef VAR_RANGES
		logval("Process1:tmpTime", ((int)((P2 *)_this)->_6_14_24_21_5_tmpTime));
#endif
		;
		/* merge: assert((g_taskSortLinkTail<(2+1)))(122, 109, 122) */
		reached[2][109] = 1;
		spin_assert((((int)now.g_taskSortLinkTail)<(2+1)), "(g_taskSortLinkTail<(2+1))", II, tt, t);
		/* merge: assert((g_taskSortLinkTail>=0))(122, 110, 122) */
		reached[2][110] = 1;
		spin_assert((((int)now.g_taskSortLinkTail)>=0), "(g_taskSortLinkTail>=0)", II, tt, t);
		/* merge: insertPos = 0(122, 111, 122) */
		reached[2][111] = 1;
		(trpt+1)->bup.ovals[5] = ((int)((P2 *)_this)->_6_14_24_21_5_insertPos);
		((P2 *)_this)->_6_14_24_21_5_insertPos = 0;
#ifdef VAR_RANGES
		logval("Process1:insertPos", ((int)((P2 *)_this)->_6_14_24_21_5_insertPos));
#endif
		;
		/* merge: found = 0(122, 112, 122) */
		reached[2][112] = 1;
		(trpt+1)->bup.ovals[6] = ((int)((P2 *)_this)->_6_14_24_21_5_found);
		((P2 *)_this)->_6_14_24_21_5_found = 0;
#ifdef VAR_RANGES
		logval("Process1:found", ((int)((P2 *)_this)->_6_14_24_21_5_found));
#endif
		;
		/* merge: .(goto)(0, 123, 122) */
		reached[2][123] = 1;
		;
		_m = 3; goto P999; /* 9 */
	case 392: // STATE 113 - data_structures.pml:229 - [(((insertPos<g_taskSortLinkTail)&&(found==0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][113] = 1;
		if (!(((((int)((P2 *)_this)->_6_14_24_21_5_insertPos)<((int)now.g_taskSortLinkTail))&&(((int)((P2 *)_this)->_6_14_24_21_5_found)==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 393: // STATE 114 - data_structures.pml:231 - [(((g_tickCount+5)<g_taskSortLink[insertPos].responseTime))] (122:0:1 - 1)
		IfNotBlocked
		reached[2][114] = 1;
		if (!(((((int)now.g_tickCount)+5)<((int)now.g_taskSortLink[ Index(((int)((P2 *)_this)->_6_14_24_21_5_insertPos), 3) ].responseTime))))
			continue;
		/* merge: found = 1(0, 115, 122) */
		reached[2][115] = 1;
		(trpt+1)->bup.oval = ((int)((P2 *)_this)->_6_14_24_21_5_found);
		((P2 *)_this)->_6_14_24_21_5_found = 1;
#ifdef VAR_RANGES
		logval("Process1:found", ((int)((P2 *)_this)->_6_14_24_21_5_found));
#endif
		;
		/* merge: .(goto)(0, 119, 122) */
		reached[2][119] = 1;
		;
		/* merge: .(goto)(0, 123, 122) */
		reached[2][123] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 394: // STATE 116 - data_structures.pml:233 - [(((g_tickCount+5)>=g_taskSortLink[insertPos].responseTime))] (122:0:1 - 1)
		IfNotBlocked
		reached[2][116] = 1;
		if (!(((((int)now.g_tickCount)+5)>=((int)now.g_taskSortLink[ Index(((int)((P2 *)_this)->_6_14_24_21_5_insertPos), 3) ].responseTime))))
			continue;
		/* merge: insertPos = (insertPos+1)(0, 117, 122) */
		reached[2][117] = 1;
		(trpt+1)->bup.oval = ((int)((P2 *)_this)->_6_14_24_21_5_insertPos);
		((P2 *)_this)->_6_14_24_21_5_insertPos = (((int)((P2 *)_this)->_6_14_24_21_5_insertPos)+1);
#ifdef VAR_RANGES
		logval("Process1:insertPos", ((int)((P2 *)_this)->_6_14_24_21_5_insertPos));
#endif
		;
		/* merge: .(goto)(0, 119, 122) */
		reached[2][119] = 1;
		;
		/* merge: .(goto)(0, 123, 122) */
		reached[2][123] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 395: // STATE 125 - data_structures.pml:240 - [idx = g_taskSortLinkTail] (0:140:1 - 3)
		IfNotBlocked
		reached[2][125] = 1;
		(trpt+1)->bup.oval = ((int)((P2 *)_this)->_6_14_24_21_5_idx);
		((P2 *)_this)->_6_14_24_21_5_idx = ((int)now.g_taskSortLinkTail);
#ifdef VAR_RANGES
		logval("Process1:idx", ((int)((P2 *)_this)->_6_14_24_21_5_idx));
#endif
		;
		/* merge: .(goto)(0, 141, 140) */
		reached[2][141] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 396: // STATE 126 - data_structures.pml:242 - [((idx>insertPos))] (135:0:4 - 1)
		IfNotBlocked
		reached[2][126] = 1;
		if (!((((int)((P2 *)_this)->_6_14_24_21_5_idx)>((int)((P2 *)_this)->_6_14_24_21_5_insertPos))))
			continue;
		/* merge: tmpId = g_taskSortLink[(idx-1)].taskId(135, 127, 135) */
		reached[2][127] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((int)((P2 *)_this)->_6_14_24_21_5_tmpId);
		((P2 *)_this)->_6_14_24_21_5_tmpId = ((int)now.g_taskSortLink[ Index((((int)((P2 *)_this)->_6_14_24_21_5_idx)-1), 3) ].taskId);
#ifdef VAR_RANGES
		logval("Process1:tmpId", ((int)((P2 *)_this)->_6_14_24_21_5_tmpId));
#endif
		;
		/* merge: tmpTime = g_taskSortLink[(idx-1)].responseTime(135, 128, 135) */
		reached[2][128] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P2 *)_this)->_6_14_24_21_5_tmpTime);
		((P2 *)_this)->_6_14_24_21_5_tmpTime = ((int)now.g_taskSortLink[ Index((((int)((P2 *)_this)->_6_14_24_21_5_idx)-1), 3) ].responseTime);
#ifdef VAR_RANGES
		logval("Process1:tmpTime", ((int)((P2 *)_this)->_6_14_24_21_5_tmpTime));
#endif
		;
		/* merge: g_taskSortLink[idx].taskId = tmpId(135, 129, 135) */
		reached[2][129] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.g_taskSortLink[ Index(((int)((P2 *)_this)->_6_14_24_21_5_idx), 3) ].taskId);
		now.g_taskSortLink[ Index(((P2 *)_this)->_6_14_24_21_5_idx, 3) ].taskId = ((int)((P2 *)_this)->_6_14_24_21_5_tmpId);
#ifdef VAR_RANGES
		logval("g_taskSortLink[Process1:idx].taskId", ((int)now.g_taskSortLink[ Index(((int)((P2 *)_this)->_6_14_24_21_5_idx), 3) ].taskId));
#endif
		;
		/* merge: g_taskSortLink[idx].responseTime = tmpTime(135, 130, 135) */
		reached[2][130] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.g_taskSortLink[ Index(((int)((P2 *)_this)->_6_14_24_21_5_idx), 3) ].responseTime);
		now.g_taskSortLink[ Index(((P2 *)_this)->_6_14_24_21_5_idx, 3) ].responseTime = ((int)((P2 *)_this)->_6_14_24_21_5_tmpTime);
#ifdef VAR_RANGES
		logval("g_taskSortLink[Process1:idx].responseTime", ((int)now.g_taskSortLink[ Index(((int)((P2 *)_this)->_6_14_24_21_5_idx), 3) ].responseTime));
#endif
		;
		_m = 3; goto P999; /* 4 */
	case 397: // STATE 131 - data_structures.pml:250 - [((tmpId!=255))] (140:0:2 - 1)
		IfNotBlocked
		reached[2][131] = 1;
		if (!((((int)((P2 *)_this)->_6_14_24_21_5_tmpId)!=255)))
			continue;
		/* merge: tcb[tmpId].pendList = idx(140, 132, 140) */
		reached[2][132] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.tcb[ Index(((int)((P2 *)_this)->_6_14_24_21_5_tmpId), 4) ].pendList);
		now.tcb[ Index(((P2 *)_this)->_6_14_24_21_5_tmpId, 4) ].pendList = ((int)((P2 *)_this)->_6_14_24_21_5_idx);
#ifdef VAR_RANGES
		logval("tcb[Process1:tmpId].pendList", ((int)now.tcb[ Index(((int)((P2 *)_this)->_6_14_24_21_5_tmpId), 4) ].pendList));
#endif
		;
		/* merge: .(goto)(140, 136, 140) */
		reached[2][136] = 1;
		;
		/* merge: idx = (idx-1)(140, 137, 140) */
		reached[2][137] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P2 *)_this)->_6_14_24_21_5_idx);
		((P2 *)_this)->_6_14_24_21_5_idx = (((int)((P2 *)_this)->_6_14_24_21_5_idx)-1);
#ifdef VAR_RANGES
		logval("Process1:idx", ((int)((P2 *)_this)->_6_14_24_21_5_idx));
#endif
		;
		/* merge: .(goto)(0, 141, 140) */
		reached[2][141] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 398: // STATE 133 - data_structures.pml:251 - [((tmpId==255))] (0:0:1 - 1)
		IfNotBlocked
		reached[2][133] = 1;
		if (!((((int)((P2 *)_this)->_6_14_24_21_5_tmpId)==255)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _6_14_24_21_5_tmpId */  (trpt+1)->bup.oval = ((P2 *)_this)->_6_14_24_21_5_tmpId;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P2 *)_this)->_6_14_24_21_5_tmpId = 0;
		_m = 3; goto P999; /* 0 */
	case 399: // STATE 134 - data_structures.pml:251 - [(1)] (140:0:1 - 1)
		IfNotBlocked
		reached[2][134] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(140, 136, 140) */
		reached[2][136] = 1;
		;
		/* merge: idx = (idx-1)(140, 137, 140) */
		reached[2][137] = 1;
		(trpt+1)->bup.oval = ((int)((P2 *)_this)->_6_14_24_21_5_idx);
		((P2 *)_this)->_6_14_24_21_5_idx = (((int)((P2 *)_this)->_6_14_24_21_5_idx)-1);
#ifdef VAR_RANGES
		logval("Process1:idx", ((int)((P2 *)_this)->_6_14_24_21_5_idx));
#endif
		;
		/* merge: .(goto)(0, 141, 140) */
		reached[2][141] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 400: // STATE 137 - data_structures.pml:253 - [idx = (idx-1)] (0:140:1 - 3)
		IfNotBlocked
		reached[2][137] = 1;
		(trpt+1)->bup.oval = ((int)((P2 *)_this)->_6_14_24_21_5_idx);
		((P2 *)_this)->_6_14_24_21_5_idx = (((int)((P2 *)_this)->_6_14_24_21_5_idx)-1);
#ifdef VAR_RANGES
		logval("Process1:idx", ((int)((P2 *)_this)->_6_14_24_21_5_idx));
#endif
		;
		/* merge: .(goto)(0, 141, 140) */
		reached[2][141] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 401: // STATE 138 - data_structures.pml:254 - [((idx<=insertPos))] (151:0:5 - 1)
		IfNotBlocked
		reached[2][138] = 1;
		if (!((((int)((P2 *)_this)->_6_14_24_21_5_idx)<=((int)((P2 *)_this)->_6_14_24_21_5_insertPos))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _6_14_24_21_5_idx */  (trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((P2 *)_this)->_6_14_24_21_5_idx;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P2 *)_this)->_6_14_24_21_5_idx = 0;
		/* merge: goto :b11(151, 139, 151) */
		reached[2][139] = 1;
		;
		/* merge: g_taskSortLink[insertPos].taskId = currentTask(151, 143, 151) */
		reached[2][143] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.g_taskSortLink[ Index(((int)((P2 *)_this)->_6_14_24_21_5_insertPos), 3) ].taskId);
		now.g_taskSortLink[ Index(((P2 *)_this)->_6_14_24_21_5_insertPos, 3) ].taskId = ((int)((P2 *)_this)->_6_14_24_currentTask);
#ifdef VAR_RANGES
		logval("g_taskSortLink[Process1:insertPos].taskId", ((int)now.g_taskSortLink[ Index(((int)((P2 *)_this)->_6_14_24_21_5_insertPos), 3) ].taskId));
#endif
		;
		/* merge: g_taskSortLink[insertPos].responseTime = (g_tickCount+5)(151, 144, 151) */
		reached[2][144] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.g_taskSortLink[ Index(((int)((P2 *)_this)->_6_14_24_21_5_insertPos), 3) ].responseTime);
		now.g_taskSortLink[ Index(((P2 *)_this)->_6_14_24_21_5_insertPos, 3) ].responseTime = (((int)now.g_tickCount)+5);
#ifdef VAR_RANGES
		logval("g_taskSortLink[Process1:insertPos].responseTime", ((int)now.g_taskSortLink[ Index(((int)((P2 *)_this)->_6_14_24_21_5_insertPos), 3) ].responseTime));
#endif
		;
		/* merge: tcb[currentTask].pendList = insertPos(151, 145, 151) */
		reached[2][145] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.tcb[ Index(((int)((P2 *)_this)->_6_14_24_currentTask), 4) ].pendList);
		now.tcb[ Index(((P2 *)_this)->_6_14_24_currentTask, 4) ].pendList = ((int)((P2 *)_this)->_6_14_24_21_5_insertPos);
#ifdef VAR_RANGES
		logval("tcb[Process1:currentTask].pendList", ((int)now.tcb[ Index(((int)((P2 *)_this)->_6_14_24_currentTask), 4) ].pendList));
#endif
		;
		/* merge: g_taskSortLinkTail = (g_taskSortLinkTail+1)(151, 146, 151) */
		reached[2][146] = 1;
		(trpt+1)->bup.ovals[4] = ((int)now.g_taskSortLinkTail);
		now.g_taskSortLinkTail = (((int)now.g_taskSortLinkTail)+1);
#ifdef VAR_RANGES
		logval("g_taskSortLinkTail", ((int)now.g_taskSortLinkTail));
#endif
		;
		_m = 3; goto P999; /* 5 */
	case 402: // STATE 143 - data_structures.pml:258 - [g_taskSortLink[insertPos].taskId = currentTask] (0:151:4 - 3)
		IfNotBlocked
		reached[2][143] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((int)now.g_taskSortLink[ Index(((int)((P2 *)_this)->_6_14_24_21_5_insertPos), 3) ].taskId);
		now.g_taskSortLink[ Index(((P2 *)_this)->_6_14_24_21_5_insertPos, 3) ].taskId = ((int)((P2 *)_this)->_6_14_24_currentTask);
#ifdef VAR_RANGES
		logval("g_taskSortLink[Process1:insertPos].taskId", ((int)now.g_taskSortLink[ Index(((int)((P2 *)_this)->_6_14_24_21_5_insertPos), 3) ].taskId));
#endif
		;
		/* merge: g_taskSortLink[insertPos].responseTime = (g_tickCount+5)(151, 144, 151) */
		reached[2][144] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.g_taskSortLink[ Index(((int)((P2 *)_this)->_6_14_24_21_5_insertPos), 3) ].responseTime);
		now.g_taskSortLink[ Index(((P2 *)_this)->_6_14_24_21_5_insertPos, 3) ].responseTime = (((int)now.g_tickCount)+5);
#ifdef VAR_RANGES
		logval("g_taskSortLink[Process1:insertPos].responseTime", ((int)now.g_taskSortLink[ Index(((int)((P2 *)_this)->_6_14_24_21_5_insertPos), 3) ].responseTime));
#endif
		;
		/* merge: tcb[currentTask].pendList = insertPos(151, 145, 151) */
		reached[2][145] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.tcb[ Index(((int)((P2 *)_this)->_6_14_24_currentTask), 4) ].pendList);
		now.tcb[ Index(((P2 *)_this)->_6_14_24_currentTask, 4) ].pendList = ((int)((P2 *)_this)->_6_14_24_21_5_insertPos);
#ifdef VAR_RANGES
		logval("tcb[Process1:currentTask].pendList", ((int)now.tcb[ Index(((int)((P2 *)_this)->_6_14_24_currentTask), 4) ].pendList));
#endif
		;
		/* merge: g_taskSortLinkTail = (g_taskSortLinkTail+1)(151, 146, 151) */
		reached[2][146] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.g_taskSortLinkTail);
		now.g_taskSortLinkTail = (((int)now.g_taskSortLinkTail)+1);
#ifdef VAR_RANGES
		logval("g_taskSortLinkTail", ((int)now.g_taskSortLinkTail));
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 403: // STATE 147 - data_structures.pml:265 - [(((insertPos==0)&&((g_tickCount+5)<255)))] (163:0:2 - 1)
		IfNotBlocked
		reached[2][147] = 1;
		if (!(((((int)((P2 *)_this)->_6_14_24_21_5_insertPos)==0)&&((((int)now.g_tickCount)+5)<255))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _6_14_24_21_5_insertPos */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P2 *)_this)->_6_14_24_21_5_insertPos;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P2 *)_this)->_6_14_24_21_5_insertPos = 0;
		/* merge: g_schedResponseTime = (g_tickCount+5)(0, 148, 163) */
		reached[2][148] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.g_schedResponseTime);
		now.g_schedResponseTime = (((int)now.g_tickCount)+5);
#ifdef VAR_RANGES
		logval("g_schedResponseTime", ((int)now.g_schedResponseTime));
#endif
		;
		/* merge: .(goto)(0, 152, 163) */
		reached[2][152] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 404: // STATE 153 - data_structures.pml:335 - [checkIdx = 0] (0:160:3 - 1)
		IfNotBlocked
		reached[2][153] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)((P2 *)_this)->_6_14_24_21_5_2_checkIdx);
		((P2 *)_this)->_6_14_24_21_5_2_checkIdx = 0;
#ifdef VAR_RANGES
		logval("Process1:checkIdx", ((int)((P2 *)_this)->_6_14_24_21_5_2_checkIdx));
#endif
		;
		/* merge: isValid = 1(160, 154, 160) */
		reached[2][154] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P2 *)_this)->_6_14_24_21_5_2_isValid);
		((P2 *)_this)->_6_14_24_21_5_2_isValid = 1;
#ifdef VAR_RANGES
		logval("Process1:isValid", ((int)((P2 *)_this)->_6_14_24_21_5_2_isValid));
#endif
		;
		if (TstOnly) return 1; /* TT */
		/* dead 2: _6_14_24_21_5_2_isValid */  
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P2 *)_this)->_6_14_24_21_5_2_isValid = 0;
		/* merge: .(goto)(0, 161, 160) */
		reached[2][161] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 405: // STATE 155 - data_structures.pml:339 - [((checkIdx<(g_taskSortLinkTail-1)))] (160:0:1 - 1)
		IfNotBlocked
		reached[2][155] = 1;
		if (!((((int)((P2 *)_this)->_6_14_24_21_5_2_checkIdx)<(((int)now.g_taskSortLinkTail)-1))))
			continue;
		/* merge: assert((g_taskSortLink[checkIdx].responseTime<=g_taskSortLink[(checkIdx+1)].responseTime))(160, 156, 160) */
		reached[2][156] = 1;
		spin_assert((((int)now.g_taskSortLink[ Index(((int)((P2 *)_this)->_6_14_24_21_5_2_checkIdx), 3) ].responseTime)<=((int)now.g_taskSortLink[ Index((((int)((P2 *)_this)->_6_14_24_21_5_2_checkIdx)+1), 3) ].responseTime)), "(g_taskSortLink[checkIdx].responseTime<=g_taskSortLink[(checkIdx+1)].responseTime)", II, tt, t);
		/* merge: checkIdx = (checkIdx+1)(160, 157, 160) */
		reached[2][157] = 1;
		(trpt+1)->bup.oval = ((int)((P2 *)_this)->_6_14_24_21_5_2_checkIdx);
		((P2 *)_this)->_6_14_24_21_5_2_checkIdx = (((int)((P2 *)_this)->_6_14_24_21_5_2_checkIdx)+1);
#ifdef VAR_RANGES
		logval("Process1:checkIdx", ((int)((P2 *)_this)->_6_14_24_21_5_2_checkIdx));
#endif
		;
		/* merge: .(goto)(0, 161, 160) */
		reached[2][161] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 406: // STATE 166 - scheduler.pml:113 - [((needSched&&g_taskScheduled))] (0:0:1 - 1)
		IfNotBlocked
		reached[2][166] = 1;
		if (!((((int)((P2 *)_this)->_6_14_24_needSched)&&((int)now.g_taskScheduled))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _6_14_24_needSched */  (trpt+1)->bup.oval = ((P2 *)_this)->_6_14_24_needSched;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P2 *)_this)->_6_14_24_needSched = 0;
		_m = 3; goto P999; /* 0 */
	case 407: // STATE 167 - data_structures.pml:107 - [intSave = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[2][167] = 1;
		(trpt+1)->bup.oval = ((int)((P2 *)_this)->_6_14_24_intSave);
		((P2 *)_this)->_6_14_24_intSave = 0;
#ifdef VAR_RANGES
		logval("Process1:intSave", ((int)((P2 *)_this)->_6_14_24_intSave));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 408: // STATE 169 - data_structures.pml:45 - [assert(((0<2)&&(0<8)))] (0:187:1 - 1)
		IfNotBlocked
		reached[2][169] = 1;
		spin_assert(((0<2)&&(0<8)), "((0<2)&&(0<8))", II, tt, t);
		/* merge: pending_exp = (pending_exp|(1<<0))(187, 170, 187) */
		reached[2][170] = 1;
		(trpt+1)->bup.oval = ((int)now.pending_exp);
		now.pending_exp = (((int)now.pending_exp)|(1<<0));
#ifdef VAR_RANGES
		logval("pending_exp", ((int)now.pending_exp));
#endif
		;
		/* merge: .(goto)(0, 176, 187) */
		reached[2][176] = 1;
		;
		/* merge: .(goto)(0, 180, 187) */
		reached[2][180] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 409: // STATE 183 - data_structures.pml:45 - [assert(((1<2)&&(1<8)))] (0:202:1 - 1)
		IfNotBlocked
		reached[2][183] = 1;
		spin_assert(((1<2)&&(1<8)), "((1<2)&&(1<8))", II, tt, t);
		/* merge: pending_exp = (pending_exp|(1<<1))(202, 184, 202) */
		reached[2][184] = 1;
		(trpt+1)->bup.oval = ((int)now.pending_exp);
		now.pending_exp = (((int)now.pending_exp)|(1<<1));
#ifdef VAR_RANGES
		logval("pending_exp", ((int)now.pending_exp));
#endif
		;
		/* merge: .(goto)(0, 188, 202) */
		reached[2][188] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 410: // STATE 189 - processes.pml:9 - [((((((pending_exp>>0)&1)&&((BASEPRI==0)||(15<BASEPRI)))||(((pending_exp>>1)&1)&&((BASEPRI==0)||(15<BASEPRI))))&&(EP>=2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][189] = 1;
		if (!((((((((int)now.pending_exp)>>0)&1)&&((((int)now.BASEPRI)==0)||(15<((int)now.BASEPRI))))||(((((int)now.pending_exp)>>1)&1)&&((((int)now.BASEPRI)==0)||(15<((int)now.BASEPRI)))))&&(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 411: // STATE 190 - processes.pml:9 - [((EP>=2))] (198:0:1 - 1)
		IfNotBlocked
		reached[2][190] = 1;
		if (!((((int)now.EP)>=2)))
			continue;
		/* merge: chain_tick_used = 0(0, 191, 198) */
		reached[2][191] = 1;
		(trpt+1)->bup.oval = ((int)now.chain_tick_used);
		now.chain_tick_used = 0;
#ifdef VAR_RANGES
		logval("chain_tick_used", ((int)now.chain_tick_used));
#endif
		;
		/* merge: .(goto)(0, 195, 198) */
		reached[2][195] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 412: // STATE 196 - data_structures.pml:57 - [assert((EP_Stack==255))] (0:205:2 - 1)
		IfNotBlocked
		reached[2][196] = 1;
		spin_assert((((int)now.EP_Stack)==255), "(EP_Stack==255)", II, tt, t);
		/* merge: EP_Stack = EP(205, 197, 205) */
		reached[2][197] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.EP_Stack);
		now.EP_Stack = ((int)now.EP);
#ifdef VAR_RANGES
		logval("EP_Stack", ((int)now.EP_Stack));
#endif
		;
		/* merge: EP = ( (((pending_exp>>0)&1)) -> (0) : (1) )(205, 199, 205) */
		reached[2][199] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.EP);
		now.EP = ( (((((int)now.pending_exp)>>0)&1)) ? (0) : (1) );
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: .(goto)(205, 203, 205) */
		reached[2][203] = 1;
		;
		/* merge: .(goto)(0, 206, 205) */
		reached[2][206] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 413: // STATE 203 - processes.pml:9 - [.(goto)] (0:205:0 - 2)
		IfNotBlocked
		reached[2][203] = 1;
		;
		/* merge: .(goto)(0, 206, 205) */
		reached[2][206] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 414: // STATE 201 - processes.pml:9 - [(1)] (205:0:0 - 1)
		IfNotBlocked
		reached[2][201] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(205, 203, 205) */
		reached[2][203] = 1;
		;
		/* merge: .(goto)(0, 206, 205) */
		reached[2][206] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 415: // STATE 208 - processes.pml:11 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][208] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC SysTick_Handler */
	case 416: // STATE 1 - scheduler.pml:303 - [((EP==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		if (!((((int)now.EP)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 417: // STATE 2 - data_structures.pml:81 - [((EP==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!((((int)now.EP)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 418: // STATE 3 - data_structures.pml:51 - [assert(((1<2)&&(1<8)))] (0:110:1 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		spin_assert(((1<2)&&(1<8)), "((1<2)&&(1<8))", II, tt, t);
		/* merge: pending_exp = (pending_exp&~((1<<1)))(110, 4, 110) */
		reached[1][4] = 1;
		(trpt+1)->bup.oval = ((int)now.pending_exp);
		now.pending_exp = (((int)now.pending_exp)& ~((1<<1)));
#ifdef VAR_RANGES
		logval("pending_exp", ((int)now.pending_exp));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 419: // STATE 8 - scheduler.pml:307 - [((1==EP))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][8] = 1;
		if (!((1==((int)now.EP))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 420: // STATE 9 - scheduler.pml:154 - [idx = 0] (0:90:4 - 1)
		IfNotBlocked
		reached[1][9] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)_this)->_5_9_14_idx);
		((P1 *)_this)->_5_9_14_idx = 0;
#ifdef VAR_RANGES
		logval("SysTick_Handler:idx", ((int)((P1 *)_this)->_5_9_14_idx));
#endif
		;
		/* merge: taskId = 0(90, 10, 90) */
		reached[1][10] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)_this)->_5_9_14_taskId);
		((P1 *)_this)->_5_9_14_taskId = 0;
#ifdef VAR_RANGES
		logval("SysTick_Handler:taskId", ((int)((P1 *)_this)->_5_9_14_taskId));
#endif
		;
		/* merge: needSched = 0(90, 11, 90) */
		reached[1][11] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P1 *)_this)->_5_9_14_needSched);
		((P1 *)_this)->_5_9_14_needSched = 0;
#ifdef VAR_RANGES
		logval("SysTick_Handler:needSched", ((int)((P1 *)_this)->_5_9_14_needSched));
#endif
		;
		/* merge: g_tickCount = (g_tickCount+1)(90, 12, 90) */
		reached[1][12] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.g_tickCount);
		now.g_tickCount = (((int)now.g_tickCount)+1);
#ifdef VAR_RANGES
		logval("g_tickCount", ((int)now.g_tickCount));
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 421: // STATE 13 - scheduler.pml:166 - [((g_tickCount<g_schedResponseTime))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][13] = 1;
		if (!((((int)now.g_tickCount)<((int)now.g_schedResponseTime))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 422: // STATE 16 - scheduler.pml:175 - [((idx<g_taskSortLinkTail))] (66:0:2 - 1)
		IfNotBlocked
		reached[1][16] = 1;
		if (!((((int)((P1 *)_this)->_5_9_14_idx)<((int)now.g_taskSortLinkTail))))
			continue;
		/* merge: taskId = g_taskSortLink[idx].taskId(66, 17, 66) */
		reached[1][17] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)_this)->_5_9_14_taskId);
		((P1 *)_this)->_5_9_14_taskId = ((int)now.g_taskSortLink[ Index(((int)((P1 *)_this)->_5_9_14_idx), 3) ].taskId);
#ifdef VAR_RANGES
		logval("SysTick_Handler:taskId", ((int)((P1 *)_this)->_5_9_14_taskId));
#endif
		;
		/* merge: taskResponseTime = g_taskSortLink[idx].responseTime(66, 18, 66) */
		reached[1][18] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)_this)->_5_9_14_taskResponseTime);
		((P1 *)_this)->_5_9_14_taskResponseTime = ((int)now.g_taskSortLink[ Index(((int)((P1 *)_this)->_5_9_14_idx), 3) ].responseTime);
#ifdef VAR_RANGES
		logval("SysTick_Handler:taskResponseTime", ((int)((P1 *)_this)->_5_9_14_taskResponseTime));
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 423: // STATE 19 - scheduler.pml:182 - [((taskResponseTime>=255))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][19] = 1;
		if (!((((int)((P1 *)_this)->_5_9_14_taskResponseTime)>=255)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _5_9_14_taskResponseTime */  (trpt+1)->bup.oval = ((P1 *)_this)->_5_9_14_taskResponseTime;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->_5_9_14_taskResponseTime = 0;
		_m = 3; goto P999; /* 0 */
	case 424: // STATE 21 - scheduler.pml:192 - [(((tcb[taskId].state==2)&&(g_tickCount>=taskResponseTime)))] (30:0:2 - 1)
		IfNotBlocked
		reached[1][21] = 1;
		if (!(((((int)now.tcb[ Index(((int)((P1 *)_this)->_5_9_14_taskId), 4) ].state)==2)&&(((int)now.g_tickCount)>=((int)((P1 *)_this)->_5_9_14_taskResponseTime)))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _5_9_14_taskResponseTime */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->_5_9_14_taskResponseTime;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->_5_9_14_taskResponseTime = 0;
		/* merge: tcb[taskId].state = 1(0, 22, 30) */
		reached[1][22] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.tcb[ Index(((int)((P1 *)_this)->_5_9_14_taskId), 4) ].state);
		now.tcb[ Index(((P1 *)_this)->_5_9_14_taskId, 4) ].state = 1;
#ifdef VAR_RANGES
		logval("tcb[SysTick_Handler:taskId].state", ((int)now.tcb[ Index(((int)((P1 *)_this)->_5_9_14_taskId), 4) ].state));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 425: // STATE 23 - data_structures.pml:136 - [((readyQueue[tcb[taskId].prio].tailIndex<5))] (44:0:3 - 1)
		IfNotBlocked
		reached[1][23] = 1;
		if (!((((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P1 *)_this)->_5_9_14_taskId), 4) ].prio), 4) ].tailIndex)<5)))
			continue;
		/* merge: readyQueue[tcb[taskId].prio].tasks[readyQueue[tcb[taskId].prio].tailIndex] = taskId(44, 24, 44) */
		reached[1][24] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P1 *)_this)->_5_9_14_taskId), 4) ].prio), 4) ].tasks[ Index(((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P1 *)_this)->_5_9_14_taskId), 4) ].prio), 4) ].tailIndex), 5) ]);
		now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_5_9_14_taskId, 4) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_5_9_14_taskId, 4) ].prio, 4) ].tailIndex, 5) ] = ((int)((P1 *)_this)->_5_9_14_taskId);
#ifdef VAR_RANGES
		logval("readyQueue[tcb[SysTick_Handler:taskId].prio].tasks[readyQueue[tcb[SysTick_Handler:taskId].prio].tailIndex]", ((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P1 *)_this)->_5_9_14_taskId), 4) ].prio), 4) ].tasks[ Index(((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P1 *)_this)->_5_9_14_taskId), 4) ].prio), 4) ].tailIndex), 5) ]));
#endif
		;
		/* merge: readyQueue[tcb[taskId].prio].tailIndex = (readyQueue[tcb[taskId].prio].tailIndex+1)(44, 25, 44) */
		reached[1][25] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P1 *)_this)->_5_9_14_taskId), 4) ].prio), 4) ].tailIndex);
		now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_5_9_14_taskId, 4) ].prio, 4) ].tailIndex = (((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P1 *)_this)->_5_9_14_taskId), 4) ].prio), 4) ].tailIndex)+1);
#ifdef VAR_RANGES
		logval("readyQueue[tcb[SysTick_Handler:taskId].prio].tailIndex", ((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)((P1 *)_this)->_5_9_14_taskId), 4) ].prio), 4) ].tailIndex));
#endif
		;
		/* merge: .(goto)(44, 29, 44) */
		reached[1][29] = 1;
		;
		/* merge: shiftIdx = idx(44, 31, 44) */
		reached[1][31] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P1 *)_this)->_5_9_14_shiftIdx);
		((P1 *)_this)->_5_9_14_shiftIdx = ((int)((P1 *)_this)->_5_9_14_idx);
#ifdef VAR_RANGES
		logval("SysTick_Handler:shiftIdx", ((int)((P1 *)_this)->_5_9_14_shiftIdx));
#endif
		;
		/* merge: .(goto)(0, 45, 44) */
		reached[1][45] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 426: // STATE 27 - data_structures.pml:139 - [assert(0)] (0:44:1 - 1)
		IfNotBlocked
		reached[1][27] = 1;
		spin_assert(0, "0", II, tt, t);
		/* merge: .(goto)(44, 29, 44) */
		reached[1][29] = 1;
		;
		/* merge: shiftIdx = idx(44, 31, 44) */
		reached[1][31] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)_this)->_5_9_14_shiftIdx);
		((P1 *)_this)->_5_9_14_shiftIdx = ((int)((P1 *)_this)->_5_9_14_idx);
#ifdef VAR_RANGES
		logval("SysTick_Handler:shiftIdx", ((int)((P1 *)_this)->_5_9_14_shiftIdx));
#endif
		;
		/* merge: .(goto)(0, 45, 44) */
		reached[1][45] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 427: // STATE 31 - scheduler.pml:199 - [shiftIdx = idx] (0:44:1 - 3)
		IfNotBlocked
		reached[1][31] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)_this)->_5_9_14_shiftIdx);
		((P1 *)_this)->_5_9_14_shiftIdx = ((int)((P1 *)_this)->_5_9_14_idx);
#ifdef VAR_RANGES
		logval("SysTick_Handler:shiftIdx", ((int)((P1 *)_this)->_5_9_14_shiftIdx));
#endif
		;
		/* merge: .(goto)(0, 45, 44) */
		reached[1][45] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 428: // STATE 32 - scheduler.pml:200 - [((shiftIdx<(g_taskSortLinkTail-1)))] (39:0:2 - 1)
		IfNotBlocked
		reached[1][32] = 1;
		if (!((((int)((P1 *)_this)->_5_9_14_shiftIdx)<(((int)now.g_taskSortLinkTail)-1))))
			continue;
		/* merge: g_taskSortLink[shiftIdx].taskId = g_taskSortLink[(shiftIdx+1)].taskId(39, 33, 39) */
		reached[1][33] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.g_taskSortLink[ Index(((int)((P1 *)_this)->_5_9_14_shiftIdx), 3) ].taskId);
		now.g_taskSortLink[ Index(((P1 *)_this)->_5_9_14_shiftIdx, 3) ].taskId = ((int)now.g_taskSortLink[ Index((((int)((P1 *)_this)->_5_9_14_shiftIdx)+1), 3) ].taskId);
#ifdef VAR_RANGES
		logval("g_taskSortLink[SysTick_Handler:shiftIdx].taskId", ((int)now.g_taskSortLink[ Index(((int)((P1 *)_this)->_5_9_14_shiftIdx), 3) ].taskId));
#endif
		;
		/* merge: g_taskSortLink[shiftIdx].responseTime = g_taskSortLink[(shiftIdx+1)].responseTime(39, 34, 39) */
		reached[1][34] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.g_taskSortLink[ Index(((int)((P1 *)_this)->_5_9_14_shiftIdx), 3) ].responseTime);
		now.g_taskSortLink[ Index(((P1 *)_this)->_5_9_14_shiftIdx, 3) ].responseTime = ((int)now.g_taskSortLink[ Index((((int)((P1 *)_this)->_5_9_14_shiftIdx)+1), 3) ].responseTime);
#ifdef VAR_RANGES
		logval("g_taskSortLink[SysTick_Handler:shiftIdx].responseTime", ((int)now.g_taskSortLink[ Index(((int)((P1 *)_this)->_5_9_14_shiftIdx), 3) ].responseTime));
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 429: // STATE 35 - scheduler.pml:205 - [((g_taskSortLink[shiftIdx].taskId!=255))] (44:0:2 - 1)
		IfNotBlocked
		reached[1][35] = 1;
		if (!((((int)now.g_taskSortLink[ Index(((int)((P1 *)_this)->_5_9_14_shiftIdx), 3) ].taskId)!=255)))
			continue;
		/* merge: tcb[g_taskSortLink[shiftIdx].taskId].pendList = shiftIdx(44, 36, 44) */
		reached[1][36] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.tcb[ Index(((int)now.g_taskSortLink[ Index(((int)((P1 *)_this)->_5_9_14_shiftIdx), 3) ].taskId), 4) ].pendList);
		now.tcb[ Index(now.g_taskSortLink[ Index(((P1 *)_this)->_5_9_14_shiftIdx, 3) ].taskId, 4) ].pendList = ((int)((P1 *)_this)->_5_9_14_shiftIdx);
#ifdef VAR_RANGES
		logval("tcb[g_taskSortLink[SysTick_Handler:shiftIdx].taskId].pendList", ((int)now.tcb[ Index(((int)now.g_taskSortLink[ Index(((int)((P1 *)_this)->_5_9_14_shiftIdx), 3) ].taskId), 4) ].pendList));
#endif
		;
		/* merge: .(goto)(44, 40, 44) */
		reached[1][40] = 1;
		;
		/* merge: shiftIdx = (shiftIdx+1)(44, 41, 44) */
		reached[1][41] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)_this)->_5_9_14_shiftIdx);
		((P1 *)_this)->_5_9_14_shiftIdx = (((int)((P1 *)_this)->_5_9_14_shiftIdx)+1);
#ifdef VAR_RANGES
		logval("SysTick_Handler:shiftIdx", ((int)((P1 *)_this)->_5_9_14_shiftIdx));
#endif
		;
		/* merge: .(goto)(0, 45, 44) */
		reached[1][45] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 430: // STATE 38 - scheduler.pml:207 - [(1)] (44:0:1 - 1)
		IfNotBlocked
		reached[1][38] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(44, 40, 44) */
		reached[1][40] = 1;
		;
		/* merge: shiftIdx = (shiftIdx+1)(44, 41, 44) */
		reached[1][41] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)_this)->_5_9_14_shiftIdx);
		((P1 *)_this)->_5_9_14_shiftIdx = (((int)((P1 *)_this)->_5_9_14_shiftIdx)+1);
#ifdef VAR_RANGES
		logval("SysTick_Handler:shiftIdx", ((int)((P1 *)_this)->_5_9_14_shiftIdx));
#endif
		;
		/* merge: .(goto)(0, 45, 44) */
		reached[1][45] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 431: // STATE 41 - scheduler.pml:209 - [shiftIdx = (shiftIdx+1)] (0:44:1 - 3)
		IfNotBlocked
		reached[1][41] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)_this)->_5_9_14_shiftIdx);
		((P1 *)_this)->_5_9_14_shiftIdx = (((int)((P1 *)_this)->_5_9_14_shiftIdx)+1);
#ifdef VAR_RANGES
		logval("SysTick_Handler:shiftIdx", ((int)((P1 *)_this)->_5_9_14_shiftIdx));
#endif
		;
		/* merge: .(goto)(0, 45, 44) */
		reached[1][45] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 432: // STATE 47 - scheduler.pml:213 - [g_taskSortLink[(g_taskSortLinkTail-1)].taskId = 255] (0:60:3 - 3)
		IfNotBlocked
		reached[1][47] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.g_taskSortLink[ Index((((int)now.g_taskSortLinkTail)-1), 3) ].taskId);
		now.g_taskSortLink[ Index((now.g_taskSortLinkTail-1), 3) ].taskId = 255;
#ifdef VAR_RANGES
		logval("g_taskSortLink[(g_taskSortLinkTail-1)].taskId", ((int)now.g_taskSortLink[ Index((((int)now.g_taskSortLinkTail)-1), 3) ].taskId));
#endif
		;
		/* merge: g_taskSortLink[(g_taskSortLinkTail-1)].responseTime = 255(60, 48, 60) */
		reached[1][48] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.g_taskSortLink[ Index((((int)now.g_taskSortLinkTail)-1), 3) ].responseTime);
		now.g_taskSortLink[ Index((now.g_taskSortLinkTail-1), 3) ].responseTime = 255;
#ifdef VAR_RANGES
		logval("g_taskSortLink[(g_taskSortLinkTail-1)].responseTime", ((int)now.g_taskSortLink[ Index((((int)now.g_taskSortLinkTail)-1), 3) ].responseTime));
#endif
		;
		/* merge: g_taskSortLinkTail = (g_taskSortLinkTail-1)(60, 49, 60) */
		reached[1][49] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.g_taskSortLinkTail);
		now.g_taskSortLinkTail = (((int)now.g_taskSortLinkTail)-1);
#ifdef VAR_RANGES
		logval("g_taskSortLinkTail", ((int)now.g_taskSortLinkTail));
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 433: // STATE 50 - data_structures.pml:335 - [checkIdx = 0] (0:57:3 - 1)
		IfNotBlocked
		reached[1][50] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)_this)->_5_9_14_12_checkIdx);
		((P1 *)_this)->_5_9_14_12_checkIdx = 0;
#ifdef VAR_RANGES
		logval("SysTick_Handler:checkIdx", ((int)((P1 *)_this)->_5_9_14_12_checkIdx));
#endif
		;
		/* merge: isValid = 1(57, 51, 57) */
		reached[1][51] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)_this)->_5_9_14_12_isValid);
		((P1 *)_this)->_5_9_14_12_isValid = 1;
#ifdef VAR_RANGES
		logval("SysTick_Handler:isValid", ((int)((P1 *)_this)->_5_9_14_12_isValid));
#endif
		;
		if (TstOnly) return 1; /* TT */
		/* dead 2: _5_9_14_12_isValid */  
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->_5_9_14_12_isValid = 0;
		/* merge: .(goto)(0, 58, 57) */
		reached[1][58] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 434: // STATE 52 - data_structures.pml:339 - [((checkIdx<(g_taskSortLinkTail-1)))] (57:0:1 - 1)
		IfNotBlocked
		reached[1][52] = 1;
		if (!((((int)((P1 *)_this)->_5_9_14_12_checkIdx)<(((int)now.g_taskSortLinkTail)-1))))
			continue;
		/* merge: assert((g_taskSortLink[checkIdx].responseTime<=g_taskSortLink[(checkIdx+1)].responseTime))(57, 53, 57) */
		reached[1][53] = 1;
		spin_assert((((int)now.g_taskSortLink[ Index(((int)((P1 *)_this)->_5_9_14_12_checkIdx), 3) ].responseTime)<=((int)now.g_taskSortLink[ Index((((int)((P1 *)_this)->_5_9_14_12_checkIdx)+1), 3) ].responseTime)), "(g_taskSortLink[checkIdx].responseTime<=g_taskSortLink[(checkIdx+1)].responseTime)", II, tt, t);
		/* merge: checkIdx = (checkIdx+1)(57, 54, 57) */
		reached[1][54] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)_this)->_5_9_14_12_checkIdx);
		((P1 *)_this)->_5_9_14_12_checkIdx = (((int)((P1 *)_this)->_5_9_14_12_checkIdx)+1);
#ifdef VAR_RANGES
		logval("SysTick_Handler:checkIdx", ((int)((P1 *)_this)->_5_9_14_12_checkIdx));
#endif
		;
		/* merge: .(goto)(0, 58, 57) */
		reached[1][58] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 435: // STATE 61 - scheduler.pml:220 - [needSched = 1] (0:70:1 - 3)
		IfNotBlocked
		reached[1][61] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)_this)->_5_9_14_needSched);
		((P1 *)_this)->_5_9_14_needSched = 1;
#ifdef VAR_RANGES
		logval("SysTick_Handler:needSched", ((int)((P1 *)_this)->_5_9_14_needSched));
#endif
		;
		/* merge: .(goto)(0, 67, 70) */
		reached[1][67] = 1;
		;
		/* merge: .(goto)(0, 71, 70) */
		reached[1][71] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 436: // STATE 62 - scheduler.pml:223 - [(((tcb[taskId].state==2)&&(g_tickCount<taskResponseTime)))] (0:0:2 - 1)
		IfNotBlocked
		reached[1][62] = 1;
		if (!(((((int)now.tcb[ Index(((int)((P1 *)_this)->_5_9_14_taskId), 4) ].state)==2)&&(((int)now.g_tickCount)<((int)((P1 *)_this)->_5_9_14_taskResponseTime)))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _5_9_14_taskId */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->_5_9_14_taskId;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->_5_9_14_taskId = 0;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _5_9_14_taskResponseTime */  (trpt+1)->bup.ovals[1] = ((P1 *)_this)->_5_9_14_taskResponseTime;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->_5_9_14_taskResponseTime = 0;
		_m = 3; goto P999; /* 0 */
	case 437: // STATE 65 - scheduler.pml:233 - [idx = (idx+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][65] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)_this)->_5_9_14_idx);
		((P1 *)_this)->_5_9_14_idx = (((int)((P1 *)_this)->_5_9_14_idx)+1);
#ifdef VAR_RANGES
		logval("SysTick_Handler:idx", ((int)((P1 *)_this)->_5_9_14_idx));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 438: // STATE 73 - scheduler.pml:244 - [(needSched)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][73] = 1;
		if (!(((int)((P1 *)_this)->_5_9_14_needSched)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 439: // STATE 74 - scheduler.pml:247 - [((g_taskSortLinkTail==0))] (98:0:1 - 1)
		IfNotBlocked
		reached[1][74] = 1;
		if (!((((int)now.g_taskSortLinkTail)==0)))
			continue;
		/* merge: g_schedResponseTime = 255(0, 75, 98) */
		reached[1][75] = 1;
		(trpt+1)->bup.oval = ((int)now.g_schedResponseTime);
		now.g_schedResponseTime = 255;
#ifdef VAR_RANGES
		logval("g_schedResponseTime", ((int)now.g_schedResponseTime));
#endif
		;
		/* merge: .(goto)(0, 85, 98) */
		reached[1][85] = 1;
		;
		/* merge: .(goto)(0, 89, 98) */
		reached[1][89] = 1;
		;
		/* merge: .(goto)(0, 91, 98) */
		reached[1][91] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 440: // STATE 76 - scheduler.pml:249 - [((g_taskSortLinkTail>0))] (82:0:1 - 1)
		IfNotBlocked
		reached[1][76] = 1;
		if (!((((int)now.g_taskSortLinkTail)>0)))
			continue;
		/* merge: firstTime = g_taskSortLink[0].responseTime(0, 77, 82) */
		reached[1][77] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)_this)->_5_9_14_firstTime);
		((P1 *)_this)->_5_9_14_firstTime = ((int)now.g_taskSortLink[0].responseTime);
#ifdef VAR_RANGES
		logval("SysTick_Handler:firstTime", ((int)((P1 *)_this)->_5_9_14_firstTime));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 441: // STATE 78 - scheduler.pml:252 - [((firstTime<255))] (98:0:1 - 1)
		IfNotBlocked
		reached[1][78] = 1;
		if (!((((int)((P1 *)_this)->_5_9_14_firstTime)<255)))
			continue;
		/* merge: g_schedResponseTime = firstTime(0, 79, 98) */
		reached[1][79] = 1;
		(trpt+1)->bup.oval = ((int)now.g_schedResponseTime);
		now.g_schedResponseTime = ((int)((P1 *)_this)->_5_9_14_firstTime);
#ifdef VAR_RANGES
		logval("g_schedResponseTime", ((int)now.g_schedResponseTime));
#endif
		;
		/* merge: .(goto)(0, 83, 98) */
		reached[1][83] = 1;
		;
		/* merge: .(goto)(0, 85, 98) */
		reached[1][85] = 1;
		;
		/* merge: .(goto)(0, 89, 98) */
		reached[1][89] = 1;
		;
		/* merge: .(goto)(0, 91, 98) */
		reached[1][91] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 442: // STATE 81 - scheduler.pml:257 - [g_schedResponseTime = 255] (0:0:1 - 1)
		IfNotBlocked
		reached[1][81] = 1;
		(trpt+1)->bup.oval = ((int)now.g_schedResponseTime);
		now.g_schedResponseTime = 255;
#ifdef VAR_RANGES
		logval("g_schedResponseTime", ((int)now.g_schedResponseTime));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 443: // STATE 92 - scheduler.pml:266 - [((needSched&&g_taskScheduled))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][92] = 1;
		if (!((((int)((P1 *)_this)->_5_9_14_needSched)&&((int)now.g_taskScheduled))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _5_9_14_needSched */  (trpt+1)->bup.oval = ((P1 *)_this)->_5_9_14_needSched;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->_5_9_14_needSched = 0;
		_m = 3; goto P999; /* 0 */
	case 444: // STATE 93 - data_structures.pml:45 - [assert(((0<2)&&(0<8)))] (0:109:1 - 1)
		IfNotBlocked
		reached[1][93] = 1;
		spin_assert(((0<2)&&(0<8)), "((0<2)&&(0<8))", II, tt, t);
		/* merge: pending_exp = (pending_exp|(1<<0))(109, 94, 109) */
		reached[1][94] = 1;
		(trpt+1)->bup.oval = ((int)now.pending_exp);
		now.pending_exp = (((int)now.pending_exp)|(1<<0));
#ifdef VAR_RANGES
		logval("pending_exp", ((int)now.pending_exp));
#endif
		;
		/* merge: .(goto)(0, 99, 109) */
		reached[1][99] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 445: // STATE 101 - data_structures.pml:114 - [(((chain_tick_used==0)&&(((pending_exp>>1)&1)==0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][101] = 1;
		if (!(((((int)now.chain_tick_used)==0)&&(((((int)now.pending_exp)>>1)&1)==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 446: // STATE 102 - data_structures.pml:45 - [assert(((1<2)&&(1<8)))] (0:124:2 - 1)
		IfNotBlocked
		reached[1][102] = 1;
		spin_assert(((1<2)&&(1<8)), "((1<2)&&(1<8))", II, tt, t);
		/* merge: pending_exp = (pending_exp|(1<<1))(124, 103, 124) */
		reached[1][103] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.pending_exp);
		now.pending_exp = (((int)now.pending_exp)|(1<<1));
#ifdef VAR_RANGES
		logval("pending_exp", ((int)now.pending_exp));
#endif
		;
		/* merge: chain_tick_used = 1(124, 105, 124) */
		reached[1][105] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.chain_tick_used);
		now.chain_tick_used = 1;
#ifdef VAR_RANGES
		logval("chain_tick_used", ((int)now.chain_tick_used));
#endif
		;
		/* merge: .(goto)(124, 108, 124) */
		reached[1][108] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 447: // STATE 108 - data_structures.pml:118 - [.(goto)] (0:124:0 - 2)
		IfNotBlocked
		reached[1][108] = 1;
		;
		_m = 3; goto P999; /* 0 */
	case 448: // STATE 106 - data_structures.pml:116 - [(1)] (124:0:0 - 1)
		IfNotBlocked
		reached[1][106] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(124, 108, 124) */
		reached[1][108] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 449: // STATE 111 - scheduler.pml:310 - [((1==EP))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][111] = 1;
		if (!((1==((int)now.EP))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 450: // STATE 112 - data_structures.pml:45 - [assert(((0<2)&&(0<8)))] (0:123:1 - 1)
		IfNotBlocked
		reached[1][112] = 1;
		spin_assert(((0<2)&&(0<8)), "((0<2)&&(0<8))", II, tt, t);
		/* merge: pending_exp = (pending_exp|(1<<0))(123, 113, 123) */
		reached[1][113] = 1;
		(trpt+1)->bup.oval = ((int)now.pending_exp);
		now.pending_exp = (((int)now.pending_exp)|(1<<0));
#ifdef VAR_RANGES
		logval("pending_exp", ((int)now.pending_exp));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 451: // STATE 115 - data_structures.pml:114 - [(((chain_tick_used==0)&&(((pending_exp>>1)&1)==0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][115] = 1;
		if (!(((((int)now.chain_tick_used)==0)&&(((((int)now.pending_exp)>>1)&1)==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 452: // STATE 116 - data_structures.pml:45 - [assert(((1<2)&&(1<8)))] (0:150:2 - 1)
		IfNotBlocked
		reached[1][116] = 1;
		spin_assert(((1<2)&&(1<8)), "((1<2)&&(1<8))", II, tt, t);
		/* merge: pending_exp = (pending_exp|(1<<1))(150, 117, 150) */
		reached[1][117] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.pending_exp);
		now.pending_exp = (((int)now.pending_exp)|(1<<1));
#ifdef VAR_RANGES
		logval("pending_exp", ((int)now.pending_exp));
#endif
		;
		/* merge: chain_tick_used = 1(150, 119, 150) */
		reached[1][119] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.chain_tick_used);
		now.chain_tick_used = 1;
#ifdef VAR_RANGES
		logval("chain_tick_used", ((int)now.chain_tick_used));
#endif
		;
		/* merge: .(goto)(150, 122, 150) */
		reached[1][122] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 453: // STATE 122 - data_structures.pml:118 - [.(goto)] (0:150:0 - 2)
		IfNotBlocked
		reached[1][122] = 1;
		;
		_m = 3; goto P999; /* 0 */
	case 454: // STATE 120 - data_structures.pml:116 - [(1)] (150:0:0 - 1)
		IfNotBlocked
		reached[1][120] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(150, 122, 150) */
		reached[1][122] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 455: // STATE 125 - scheduler.pml:313 - [((1==EP))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][125] = 1;
		if (!((1==((int)now.EP))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 456: // STATE 126 - data_structures.pml:95 - [((pending_exp>0))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][126] = 1;
		if (!((((int)now.pending_exp)>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 457: // STATE 127 - data_structures.pml:76 - [tmp = ( (((pending_exp>>0)&1)) -> (0) : (1) )] (0:149:4 - 1)
		IfNotBlocked
		reached[1][127] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)_this)->tmp);
		((P1 *)_this)->tmp = ( (((((int)now.pending_exp)>>0)&1)) ? (0) : (1) );
#ifdef VAR_RANGES
		logval("SysTick_Handler:tmp", ((int)((P1 *)_this)->tmp));
#endif
		;
		/* merge: assert((((BASEPRI==0)||(15<BASEPRI))&&(EP_Stack>=2)))(149, 129, 149) */
		reached[1][129] = 1;
		spin_assert((((((int)now.BASEPRI)==0)||(15<((int)now.BASEPRI)))&&(((int)now.EP_Stack)>=2)), "(((BASEPRI==0)||(15<BASEPRI))&&(EP_Stack>=2))", II, tt, t);
		/* merge: EP = tmp(149, 130, 149) */
		reached[1][130] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.EP);
		now.EP = ((int)((P1 *)_this)->tmp);
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: tmp = 255(149, 131, 149) */
		reached[1][131] = 1;
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
		/* merge: .(goto)(0, 139, 149) */
		reached[1][139] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 458: // STATE 134 - data_structures.pml:63 - [assert((EP_Stack!=255))] (0:149:2 - 1)
		IfNotBlocked
		reached[1][134] = 1;
		spin_assert((((int)now.EP_Stack)!=255), "(EP_Stack!=255)", II, tt, t);
		/* merge: EP = EP_Stack(149, 135, 149) */
		reached[1][135] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.EP);
		now.EP = ((int)now.EP_Stack);
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: EP_Stack = 255(149, 136, 149) */
		reached[1][136] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.EP_Stack);
		now.EP_Stack = 255;
#ifdef VAR_RANGES
		logval("EP_Stack", ((int)now.EP_Stack));
#endif
		;
		/* merge: .(goto)(0, 139, 149) */
		reached[1][139] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 459: // STATE 141 - data_structures.pml:114 - [(((chain_tick_used==0)&&(((pending_exp>>1)&1)==0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][141] = 1;
		if (!(((((int)now.chain_tick_used)==0)&&(((((int)now.pending_exp)>>1)&1)==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 460: // STATE 142 - data_structures.pml:45 - [assert(((1<2)&&(1<8)))] (0:151:2 - 1)
		IfNotBlocked
		reached[1][142] = 1;
		spin_assert(((1<2)&&(1<8)), "((1<2)&&(1<8))", II, tt, t);
		/* merge: pending_exp = (pending_exp|(1<<1))(151, 143, 151) */
		reached[1][143] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.pending_exp);
		now.pending_exp = (((int)now.pending_exp)|(1<<1));
#ifdef VAR_RANGES
		logval("pending_exp", ((int)now.pending_exp));
#endif
		;
		/* merge: chain_tick_used = 1(151, 145, 151) */
		reached[1][145] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.chain_tick_used);
		now.chain_tick_used = 1;
#ifdef VAR_RANGES
		logval("chain_tick_used", ((int)now.chain_tick_used));
#endif
		;
		/* merge: .(goto)(151, 148, 151) */
		reached[1][148] = 1;
		;
		/* merge: .(goto)(0, 152, 151) */
		reached[1][152] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 461: // STATE 148 - data_structures.pml:118 - [.(goto)] (0:151:0 - 2)
		IfNotBlocked
		reached[1][148] = 1;
		;
		/* merge: .(goto)(0, 152, 151) */
		reached[1][152] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 462: // STATE 146 - data_structures.pml:116 - [(1)] (151:0:0 - 1)
		IfNotBlocked
		reached[1][146] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(151, 148, 151) */
		reached[1][148] = 1;
		;
		/* merge: .(goto)(0, 152, 151) */
		reached[1][152] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 463: // STATE 154 - scheduler.pml:315 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][154] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC PendSV_Handler */
	case 464: // STATE 1 - scheduler.pml:277 - [((EP==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		if (!((((int)now.EP)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 465: // STATE 2 - data_structures.pml:81 - [((EP==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		if (!((((int)now.EP)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 466: // STATE 3 - data_structures.pml:51 - [assert(((0<2)&&(0<8)))] (0:32:1 - 1)
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
	case 467: // STATE 8 - scheduler.pml:281 - [((0==EP))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][8] = 1;
		if (!((0==((int)now.EP))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 468: // STATE 9 - scheduler.pml:281 - [((tcb[EP_Stack].state==4))] (18:0:1 - 1)
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
	case 469: // STATE 11 - data_structures.pml:136 - [((readyQueue[tcb[EP_Stack].prio].tailIndex<5))] (31:0:2 - 1)
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
	case 470: // STATE 15 - data_structures.pml:139 - [assert(0)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][15] = 1;
		spin_assert(0, "0", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 471: // STATE 23 - data_structures.pml:114 - [(((chain_tick_used==0)&&(((pending_exp>>1)&1)==0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][23] = 1;
		if (!(((((int)now.chain_tick_used)==0)&&(((((int)now.pending_exp)>>1)&1)==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 472: // STATE 24 - data_structures.pml:45 - [assert(((1<2)&&(1<8)))] (0:62:2 - 1)
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
	case 473: // STATE 30 - data_structures.pml:118 - [.(goto)] (0:62:0 - 2)
		IfNotBlocked
		reached[0][30] = 1;
		;
		_m = 3; goto P999; /* 0 */
	case 474: // STATE 28 - data_structures.pml:116 - [(1)] (62:0:0 - 1)
		IfNotBlocked
		reached[0][28] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(62, 30, 62) */
		reached[0][30] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 475: // STATE 33 - scheduler.pml:289 - [((0==EP))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][33] = 1;
		if (!((0==((int)now.EP))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 476: // STATE 34 - data_structures.pml:193 - [prio = 0] (0:47:3 - 1)
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
	case 477: // STATE 37 - data_structures.pml:196 - [(((prio<4)&&!(found)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][37] = 1;
		if (!(((((int)((P0 *)_this)->_4_3_4_prio)<4)&& !(((int)((P0 *)_this)->_4_3_4_found)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 478: // STATE 38 - data_structures.pml:198 - [((readyQueue[prio].tailIndex>0))] (47:0:2 - 1)
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
	case 479: // STATE 42 - data_structures.pml:201 - [prio = (prio+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][42] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->_4_3_4_prio);
		((P0 *)_this)->_4_3_4_prio = (((int)((P0 *)_this)->_4_3_4_prio)+1);
#ifdef VAR_RANGES
		logval("PendSV_Handler:prio", ((int)((P0 *)_this)->_4_3_4_prio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 480: // STATE 50 - data_structures.pml:205 - [tmp = top_task] (0:61:2 - 3)
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
	case 481: // STATE 53 - data_structures.pml:114 - [(((chain_tick_used==0)&&(((pending_exp>>1)&1)==0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][53] = 1;
		if (!(((((int)now.chain_tick_used)==0)&&(((((int)now.pending_exp)>>1)&1)==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 482: // STATE 54 - data_structures.pml:45 - [assert(((1<2)&&(1<8)))] (0:90:2 - 1)
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
	case 483: // STATE 60 - data_structures.pml:118 - [.(goto)] (0:90:0 - 2)
		IfNotBlocked
		reached[0][60] = 1;
		;
		_m = 3; goto P999; /* 0 */
	case 484: // STATE 58 - data_structures.pml:116 - [(1)] (90:0:0 - 1)
		IfNotBlocked
		reached[0][58] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(90, 60, 90) */
		reached[0][60] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 485: // STATE 63 - scheduler.pml:290 - [((0==EP))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][63] = 1;
		if (!((0==((int)now.EP))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 486: // STATE 64 - data_structures.pml:146 - [idx = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][64] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->_4_4_6_idx);
		((P0 *)_this)->_4_4_6_idx = 0;
#ifdef VAR_RANGES
		logval("PendSV_Handler:idx", ((int)((P0 *)_this)->_4_4_6_idx));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 487: // STATE 65 - data_structures.pml:147 - [((idx<(readyQueue[topPrio].tailIndex-1)))] (70:0:2 - 1)
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
	case 488: // STATE 73 - data_structures.pml:153 - [((readyQueue[topPrio].tailIndex>0))] (89:0:2 - 1)
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
	case 489: // STATE 81 - data_structures.pml:114 - [(((chain_tick_used==0)&&(((pending_exp>>1)&1)==0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][81] = 1;
		if (!(((((int)now.chain_tick_used)==0)&&(((((int)now.pending_exp)>>1)&1)==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 490: // STATE 82 - data_structures.pml:45 - [assert(((1<2)&&(1<8)))] (0:102:2 - 1)
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
	case 491: // STATE 88 - data_structures.pml:118 - [.(goto)] (0:102:0 - 2)
		IfNotBlocked
		reached[0][88] = 1;
		;
		_m = 3; goto P999; /* 0 */
	case 492: // STATE 86 - data_structures.pml:116 - [(1)] (102:0:0 - 1)
		IfNotBlocked
		reached[0][86] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(102, 88, 102) */
		reached[0][88] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 493: // STATE 91 - scheduler.pml:291 - [((0==EP))] (101:0:1 - 1)
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
	case 494: // STATE 93 - data_structures.pml:114 - [(((chain_tick_used==0)&&(((pending_exp>>1)&1)==0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][93] = 1;
		if (!(((((int)now.chain_tick_used)==0)&&(((((int)now.pending_exp)>>1)&1)==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 495: // STATE 94 - data_structures.pml:45 - [assert(((1<2)&&(1<8)))] (0:116:2 - 1)
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
	case 496: // STATE 100 - data_structures.pml:118 - [.(goto)] (0:116:0 - 2)
		IfNotBlocked
		reached[0][100] = 1;
		;
		_m = 3; goto P999; /* 0 */
	case 497: // STATE 98 - data_structures.pml:116 - [(1)] (116:0:0 - 1)
		IfNotBlocked
		reached[0][98] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(116, 100, 116) */
		reached[0][100] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 498: // STATE 103 - scheduler.pml:292 - [((0==EP))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][103] = 1;
		if (!((0==((int)now.EP))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 499: // STATE 104 - data_structures.pml:70 - [assert((((EP_Stack!=255)&&(EP_Stack>=2))&&(tmp>=2)))] (0:115:1 - 1)
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
	case 500: // STATE 107 - data_structures.pml:114 - [(((chain_tick_used==0)&&(((pending_exp>>1)&1)==0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][107] = 1;
		if (!(((((int)now.chain_tick_used)==0)&&(((((int)now.pending_exp)>>1)&1)==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 501: // STATE 108 - data_structures.pml:45 - [assert(((1<2)&&(1<8)))] (0:142:2 - 1)
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
	case 502: // STATE 114 - data_structures.pml:118 - [.(goto)] (0:142:0 - 2)
		IfNotBlocked
		reached[0][114] = 1;
		;
		_m = 3; goto P999; /* 0 */
	case 503: // STATE 112 - data_structures.pml:116 - [(1)] (142:0:0 - 1)
		IfNotBlocked
		reached[0][112] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(142, 114, 142) */
		reached[0][114] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 504: // STATE 117 - scheduler.pml:295 - [((0==EP))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][117] = 1;
		if (!((0==((int)now.EP))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 505: // STATE 118 - data_structures.pml:95 - [((pending_exp>0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][118] = 1;
		if (!((((int)now.pending_exp)>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 506: // STATE 119 - data_structures.pml:76 - [tmp = ( (((pending_exp>>0)&1)) -> (0) : (1) )] (0:141:4 - 1)
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
	case 507: // STATE 126 - data_structures.pml:63 - [assert((EP_Stack!=255))] (0:141:2 - 1)
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
	case 508: // STATE 133 - data_structures.pml:114 - [(((chain_tick_used==0)&&(((pending_exp>>1)&1)==0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][133] = 1;
		if (!(((((int)now.chain_tick_used)==0)&&(((((int)now.pending_exp)>>1)&1)==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 509: // STATE 134 - data_structures.pml:45 - [assert(((1<2)&&(1<8)))] (0:143:2 - 1)
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
	case 510: // STATE 140 - data_structures.pml:118 - [.(goto)] (0:143:0 - 2)
		IfNotBlocked
		reached[0][140] = 1;
		;
		/* merge: .(goto)(0, 144, 143) */
		reached[0][144] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 511: // STATE 138 - data_structures.pml:116 - [(1)] (143:0:0 - 1)
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
	case 512: // STATE 146 - scheduler.pml:297 - [-end-] (0:0:0 - 1)
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

