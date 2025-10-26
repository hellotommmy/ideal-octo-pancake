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

		 /* CLAIM smoke_P1_user_no_pending */
	case 3: // STATE 1 - _spin_nvr.tmp:370 - [(!(!((((EP==2)&&(pending_exp==0))&&(chain_tick_used==1)))))] (6:0:0 - 1)
		
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
	case 4: // STATE 10 - _spin_nvr.tmp:375 - [-end-] (0:0:0 - 1)
		
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
	case 5: // STATE 1 - _spin_nvr.tmp:361 - [(!(!((((EP==(2+1))&&(pending_exp==0))&&(chain_tick_used==1)))))] (6:0:0 - 1)
		
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
	case 6: // STATE 10 - _spin_nvr.tmp:366 - [-end-] (0:0:0 - 1)
		
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
	case 7: // STATE 1 - _spin_nvr.tmp:289 - [((((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==3)))&&((EP==3)&&(((pending_exp>>1)&1)==1)))&&(EP==3)))] (20:0:0 - 1)
		
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
	case 8: // STATE 4 - _spin_nvr.tmp:290 - [(((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==3)))&&((EP==3)&&(((pending_exp>>1)&1)==1))))] (0:0:0 - 1)
		
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
	case 9: // STATE 6 - _spin_nvr.tmp:291 - [(((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==3)))&&((EP==3)&&(((pending_exp>>1)&1)==1))))] (0:0:0 - 1)
		
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
	case 10: // STATE 8 - _spin_nvr.tmp:292 - [(((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==3)))&&((EP==3)&&(((pending_exp>>1)&1)==1))))] (0:0:0 - 1)
		
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
	case 11: // STATE 10 - _spin_nvr.tmp:293 - [((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==3)))&&((EP==3)&&(((pending_exp>>1)&1)==1))))] (0:0:0 - 1)
		
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
	case 12: // STATE 12 - _spin_nvr.tmp:294 - [(((((EP==0)&&(EP_Stack==3))&&((EP==1)&&(EP_Stack==3)))&&((EP==3)&&(((pending_exp>>1)&1)==1))))] (0:0:0 - 1)
		
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
	case 13: // STATE 14 - _spin_nvr.tmp:295 - [((((EP==1)&&(EP_Stack==3))&&((EP==3)&&(((pending_exp>>1)&1)==1))))] (0:0:0 - 1)
		
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
	case 14: // STATE 16 - _spin_nvr.tmp:296 - [(((EP==3)&&(((pending_exp>>1)&1)==1)))] (0:0:0 - 1)
		
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
	case 15: // STATE 23 - _spin_nvr.tmp:301 - [((EP==3))] (28:0:0 - 1)
		
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
	case 16: // STATE 26 - _spin_nvr.tmp:302 - [(((EP==0)&&(EP_Stack==3)))] (0:0:0 - 1)
		
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
	case 17: // STATE 31 - _spin_nvr.tmp:306 - [((((EP==0)&&(EP_Stack==3))&&(EP==3)))] (38:0:0 - 1)
		
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
	case 18: // STATE 34 - _spin_nvr.tmp:307 - [(((EP==0)&&(EP_Stack==3)))] (0:0:0 - 1)
		
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
	case 19: // STATE 36 - _spin_nvr.tmp:308 - [(((EP==0)&&(EP_Stack==2)))] (0:0:0 - 1)
		
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
	case 20: // STATE 41 - _spin_nvr.tmp:312 - [(((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&(EP==3)))] (50:0:0 - 1)
		
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
	case 21: // STATE 44 - _spin_nvr.tmp:313 - [((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3))))] (0:0:0 - 1)
		
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
	case 22: // STATE 46 - _spin_nvr.tmp:314 - [(((EP==0)&&(EP_Stack==2)))] (0:0:0 - 1)
		
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
	case 23: // STATE 48 - _spin_nvr.tmp:315 - [(((EP==1)&&(EP_Stack==2)))] (0:0:0 - 1)
		
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
	case 24: // STATE 53 - _spin_nvr.tmp:319 - [((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2)))&&(EP==3)))] (64:0:0 - 1)
		
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
	case 25: // STATE 56 - _spin_nvr.tmp:320 - [(((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2))))] (0:0:0 - 1)
		
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
	case 26: // STATE 58 - _spin_nvr.tmp:321 - [((((EP==0)&&(EP_Stack==2))&&((EP==1)&&(EP_Stack==2))))] (0:0:0 - 1)
		
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
	case 27: // STATE 60 - _spin_nvr.tmp:322 - [(((EP==1)&&(EP_Stack==2)))] (0:0:0 - 1)
		
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
	case 28: // STATE 62 - _spin_nvr.tmp:323 - [(((EP==0)&&(EP_Stack==2)))] (0:0:0 - 1)
		
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
	case 29: // STATE 67 - _spin_nvr.tmp:327 - [((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2)))&&(EP==3)))] (80:0:0 - 1)
		
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
	case 30: // STATE 70 - _spin_nvr.tmp:328 - [(((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2))))] (0:0:0 - 1)
		
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
	case 31: // STATE 72 - _spin_nvr.tmp:329 - [((((EP==0)&&(EP_Stack==2))&&((EP==1)&&(EP_Stack==2))))] (0:0:0 - 1)
		
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
	case 32: // STATE 74 - _spin_nvr.tmp:330 - [((((EP==0)&&(EP_Stack==2))&&((EP==1)&&(EP_Stack==2))))] (0:0:0 - 1)
		
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
	case 33: // STATE 76 - _spin_nvr.tmp:331 - [(((EP==0)&&(EP_Stack==2)))] (0:0:0 - 1)
		
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
	case 34: // STATE 78 - _spin_nvr.tmp:332 - [(((EP==0)&&(EP_Stack==3)))] (0:0:0 - 1)
		
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
	case 35: // STATE 83 - _spin_nvr.tmp:336 - [((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2)))&&(EP==3)))] (98:0:0 - 1)
		
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
	case 36: // STATE 86 - _spin_nvr.tmp:337 - [(((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2))))] (0:0:0 - 1)
		
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
	case 37: // STATE 88 - _spin_nvr.tmp:338 - [(((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2))))] (0:0:0 - 1)
		
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
	case 38: // STATE 90 - _spin_nvr.tmp:339 - [(((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2))))] (0:0:0 - 1)
		
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
	case 39: // STATE 92 - _spin_nvr.tmp:340 - [((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3))))] (0:0:0 - 1)
		
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
	case 40: // STATE 94 - _spin_nvr.tmp:341 - [(((EP==0)&&(EP_Stack==3)))] (0:0:0 - 1)
		
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
	case 41: // STATE 96 - _spin_nvr.tmp:342 - [(((EP==1)&&(EP_Stack==3)))] (0:0:0 - 1)
		
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
	case 42: // STATE 101 - _spin_nvr.tmp:346 - [(((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==3)))&&(EP==3)))] (118:0:0 - 1)
		
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
	case 43: // STATE 104 - _spin_nvr.tmp:347 - [((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==3))))] (0:0:0 - 1)
		
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
	case 44: // STATE 106 - _spin_nvr.tmp:348 - [((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==3))))] (0:0:0 - 1)
		
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
	case 45: // STATE 108 - _spin_nvr.tmp:349 - [((((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==3))))] (0:0:0 - 1)
		
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
	case 46: // STATE 110 - _spin_nvr.tmp:350 - [(((((EP==0)&&(EP_Stack==2))&&((EP==0)&&(EP_Stack==3)))&&((EP==1)&&(EP_Stack==3))))] (0:0:0 - 1)
		
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
	case 47: // STATE 112 - _spin_nvr.tmp:351 - [((((EP==0)&&(EP_Stack==3))&&((EP==1)&&(EP_Stack==3))))] (0:0:0 - 1)
		
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
	case 48: // STATE 114 - _spin_nvr.tmp:352 - [(((EP==1)&&(EP_Stack==3)))] (0:0:0 - 1)
		
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
	case 49: // STATE 116 - _spin_nvr.tmp:353 - [(((EP==3)&&(((pending_exp>>1)&1)==1)))] (0:0:0 - 1)
		
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
	case 50: // STATE 122 - _spin_nvr.tmp:357 - [-end-] (0:0:0 - 1)
		
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
	case 51: // STATE 1 - _spin_nvr.tmp:229 - [(((((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==(2+1))))&&((EP==1)&&(EP_Stack==2)))&&(EP==(2+1))))] (18:0:0 - 1)
		
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
	case 52: // STATE 4 - _spin_nvr.tmp:230 - [((((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==(2+1))))&&((EP==1)&&(EP_Stack==2))))] (0:0:0 - 1)
		
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
	case 53: // STATE 6 - _spin_nvr.tmp:231 - [((((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==(2+1))))&&((EP==1)&&(EP_Stack==2))))] (0:0:0 - 1)
		
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
	case 54: // STATE 8 - _spin_nvr.tmp:232 - [((((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==(2+1))))&&((EP==1)&&(EP_Stack==2))))] (0:0:0 - 1)
		
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
	case 55: // STATE 10 - _spin_nvr.tmp:233 - [(((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==(2+1)))))] (0:0:0 - 1)
		
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
	case 56: // STATE 12 - _spin_nvr.tmp:234 - [((((EP==0)&&(EP_Stack==(2+1)))&&((EP==1)&&(EP_Stack==(2+1)))))] (0:0:0 - 1)
		
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
	case 57: // STATE 14 - _spin_nvr.tmp:235 - [(((EP==1)&&(EP_Stack==(2+1))))] (0:0:0 - 1)
		
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
	case 58: // STATE 21 - _spin_nvr.tmp:240 - [((EP==(2+1)))] (26:0:0 - 1)
		
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
	case 59: // STATE 24 - _spin_nvr.tmp:241 - [(((EP==0)&&(EP_Stack==(2+1))))] (0:0:0 - 1)
		
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
	case 60: // STATE 29 - _spin_nvr.tmp:245 - [((((EP==0)&&(EP_Stack==(2+1)))&&(EP==(2+1))))] (36:0:0 - 1)
		
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
	case 61: // STATE 32 - _spin_nvr.tmp:246 - [(((EP==0)&&(EP_Stack==(2+1))))] (0:0:0 - 1)
		
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
	case 62: // STATE 34 - _spin_nvr.tmp:247 - [(((EP==0)&&(EP_Stack==2)))] (0:0:0 - 1)
		
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
	case 63: // STATE 39 - _spin_nvr.tmp:251 - [(((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&(EP==(2+1))))] (48:0:0 - 1)
		
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
	case 64: // STATE 42 - _spin_nvr.tmp:252 - [((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2))))] (0:0:0 - 1)
		
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
	case 65: // STATE 44 - _spin_nvr.tmp:253 - [(((EP==0)&&(EP_Stack==2)))] (0:0:0 - 1)
		
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
	case 66: // STATE 46 - _spin_nvr.tmp:254 - [(((EP==1)&&(EP_Stack==2)))] (0:0:0 - 1)
		
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
	case 67: // STATE 51 - _spin_nvr.tmp:258 - [((((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==2)))&&(EP==(2+1))))] (62:0:0 - 1)
		
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
	case 68: // STATE 54 - _spin_nvr.tmp:259 - [(((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==2))))] (0:0:0 - 1)
		
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
	case 69: // STATE 56 - _spin_nvr.tmp:260 - [((((EP==0)&&(EP_Stack==2))&&((EP==1)&&(EP_Stack==2))))] (0:0:0 - 1)
		
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
	case 70: // STATE 58 - _spin_nvr.tmp:261 - [(((EP==1)&&(EP_Stack==2)))] (0:0:0 - 1)
		
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
	case 71: // STATE 60 - _spin_nvr.tmp:262 - [(((EP==0)&&(EP_Stack==2)))] (0:0:0 - 1)
		
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
	case 72: // STATE 65 - _spin_nvr.tmp:266 - [((((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==2)))&&(EP==(2+1))))] (78:0:0 - 1)
		
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
	case 73: // STATE 68 - _spin_nvr.tmp:267 - [(((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==2))))] (0:0:0 - 1)
		
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
	case 74: // STATE 70 - _spin_nvr.tmp:268 - [((((EP==0)&&(EP_Stack==2))&&((EP==1)&&(EP_Stack==2))))] (0:0:0 - 1)
		
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
	case 75: // STATE 72 - _spin_nvr.tmp:269 - [((((EP==0)&&(EP_Stack==2))&&((EP==1)&&(EP_Stack==2))))] (0:0:0 - 1)
		
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
	case 76: // STATE 74 - _spin_nvr.tmp:270 - [(((EP==0)&&(EP_Stack==2)))] (0:0:0 - 1)
		
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
	case 77: // STATE 76 - _spin_nvr.tmp:271 - [(((EP==0)&&(EP_Stack==(2+1))))] (0:0:0 - 1)
		
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
	case 78: // STATE 81 - _spin_nvr.tmp:275 - [((((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==2)))&&(EP==(2+1))))] (96:0:0 - 1)
		
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
	case 79: // STATE 84 - _spin_nvr.tmp:276 - [(((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==2))))] (0:0:0 - 1)
		
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
	case 80: // STATE 86 - _spin_nvr.tmp:277 - [(((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==2))))] (0:0:0 - 1)
		
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
	case 81: // STATE 88 - _spin_nvr.tmp:278 - [(((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2)))&&((EP==1)&&(EP_Stack==2))))] (0:0:0 - 1)
		
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
	case 82: // STATE 90 - _spin_nvr.tmp:279 - [((((EP==0)&&(EP_Stack==(2+1)))&&((EP==0)&&(EP_Stack==2))))] (0:0:0 - 1)
		
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
	case 83: // STATE 92 - _spin_nvr.tmp:280 - [(((EP==0)&&(EP_Stack==(2+1))))] (0:0:0 - 1)
		
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
	case 84: // STATE 94 - _spin_nvr.tmp:281 - [(((EP==1)&&(EP_Stack==(2+1))))] (0:0:0 - 1)
		
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
	case 85: // STATE 100 - _spin_nvr.tmp:285 - [-end-] (0:0:0 - 1)
		
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
	case 86: // STATE 1 - _spin_nvr.tmp:127 - [(((!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==2)))&&(EP>=2)))] (0:0:0 - 1)
		
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
	case 87: // STATE 3 - _spin_nvr.tmp:128 - [((!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==2))))] (0:0:0 - 1)
		
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
	case 88: // STATE 5 - _spin_nvr.tmp:129 - [(((!((pending_exp>0))&&!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1)))))&&!((EP==2))))] (0:0:0 - 1)
		
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
	case 89: // STATE 7 - _spin_nvr.tmp:130 - [(((!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==(2+1))))&&(EP>=2)))] (0:0:0 - 1)
		
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
	case 90: // STATE 9 - _spin_nvr.tmp:131 - [((!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==(2+1)))))] (0:0:0 - 1)
		
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
	case 91: // STATE 11 - _spin_nvr.tmp:132 - [(((!((pending_exp>0))&&!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1)))))&&!((EP==(2+1)))))] (0:0:0 - 1)
		
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
	case 92: // STATE 13 - _spin_nvr.tmp:133 - [((EP>=2))] (0:0:0 - 1)
		
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
	case 93: // STATE 17 - _spin_nvr.tmp:135 - [(!((pending_exp>0)))] (0:0:0 - 1)
		
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
	case 94: // STATE 22 - _spin_nvr.tmp:139 - [((!((EP==2))&&(EP>=2)))] (0:0:0 - 1)
		
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
	case 95: // STATE 24 - _spin_nvr.tmp:140 - [(!((EP==2)))] (0:0:0 - 1)
		
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
	case 96: // STATE 26 - _spin_nvr.tmp:141 - [((!((pending_exp>0))&&!((EP==2))))] (0:0:0 - 1)
		
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
	case 97: // STATE 31 - _spin_nvr.tmp:145 - [((!((EP==(2+1)))&&(EP>=2)))] (0:0:0 - 1)
		
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
	case 98: // STATE 33 - _spin_nvr.tmp:146 - [(!((EP==(2+1))))] (0:0:0 - 1)
		
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
	case 99: // STATE 35 - _spin_nvr.tmp:147 - [((!((pending_exp>0))&&!((EP==(2+1)))))] (0:0:0 - 1)
		
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
	case 100: // STATE 40 - _spin_nvr.tmp:151 - [(!((EP==2)))] (0:0:0 - 1)
		
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
	case 101: // STATE 42 - _spin_nvr.tmp:152 - [(((!((pending_exp>0))&&!((EP==2)))||(!((EP==2))&&(EP>=2))))] (0:0:0 - 1)
		
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
	case 102: // STATE 47 - _spin_nvr.tmp:156 - [(!((EP==(2+1))))] (0:0:0 - 1)
		
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
	case 103: // STATE 49 - _spin_nvr.tmp:157 - [(((!((pending_exp>0))&&!((EP==(2+1))))||(!((EP==(2+1)))&&(EP>=2))))] (0:0:0 - 1)
		
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
	case 104: // STATE 54 - _spin_nvr.tmp:161 - [(!((EP==2)))] (0:0:0 - 1)
		
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
	case 105: // STATE 56 - _spin_nvr.tmp:162 - [((!((EP==2))&&(EP>=2)))] (0:0:0 - 1)
		
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
	case 106: // STATE 61 - _spin_nvr.tmp:166 - [(!((EP==(2+1))))] (0:0:0 - 1)
		
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
	case 107: // STATE 63 - _spin_nvr.tmp:167 - [((!((EP==(2+1)))&&(EP>=2)))] (0:0:0 - 1)
		
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
	case 108: // STATE 68 - _spin_nvr.tmp:171 - [((!((EP==2))&&(EP>=2)))] (0:0:0 - 1)
		
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
	case 109: // STATE 70 - _spin_nvr.tmp:172 - [(!((EP==2)))] (0:0:0 - 1)
		
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
	case 110: // STATE 72 - _spin_nvr.tmp:173 - [((!((pending_exp>0))&&!((EP==2))))] (0:0:0 - 1)
		
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
	case 111: // STATE 77 - _spin_nvr.tmp:177 - [((!((EP==(2+1)))&&(EP>=2)))] (0:0:0 - 1)
		
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
	case 112: // STATE 79 - _spin_nvr.tmp:178 - [(!((EP==(2+1))))] (0:0:0 - 1)
		
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
	case 113: // STATE 81 - _spin_nvr.tmp:179 - [((!((pending_exp>0))&&!((EP==(2+1)))))] (0:0:0 - 1)
		
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
	case 114: // STATE 86 - _spin_nvr.tmp:183 - [(!((EP==2)))] (0:0:0 - 1)
		
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
	case 115: // STATE 88 - _spin_nvr.tmp:184 - [(((!((pending_exp>0))&&!((EP==2)))||(!((EP==2))&&(EP>=2))))] (0:0:0 - 1)
		
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
	case 116: // STATE 93 - _spin_nvr.tmp:188 - [(!((EP==(2+1))))] (0:0:0 - 1)
		
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
	case 117: // STATE 95 - _spin_nvr.tmp:189 - [(((!((pending_exp>0))&&!((EP==(2+1))))||(!((EP==(2+1)))&&(EP>=2))))] (0:0:0 - 1)
		
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
	case 118: // STATE 100 - _spin_nvr.tmp:193 - [((!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==2))))] (0:0:0 - 1)
		
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
	case 119: // STATE 102 - _spin_nvr.tmp:194 - [(((!((pending_exp>0))&&(!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==2))))||(!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&(!((EP==2))&&(EP>=2)))))] (0:0:0 - 1)
		
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
	case 120: // STATE 104 - _spin_nvr.tmp:195 - [((!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==(2+1)))))] (0:0:0 - 1)
		
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
	case 121: // STATE 106 - _spin_nvr.tmp:196 - [(((!((pending_exp>0))&&(!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==(2+1)))))||(!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&(!((EP==(2+1)))&&(EP>=2)))))] (0:0:0 - 1)
		
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
	case 122: // STATE 108 - _spin_nvr.tmp:197 - [((EP>=2))] (0:0:0 - 1)
		
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
	case 123: // STATE 112 - _spin_nvr.tmp:199 - [(!((pending_exp>0)))] (0:0:0 - 1)
		
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
	case 124: // STATE 117 - _spin_nvr.tmp:203 - [(!((EP==2)))] (0:0:0 - 1)
		
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
	case 125: // STATE 119 - _spin_nvr.tmp:204 - [((!((EP==2))&&(EP>=2)))] (0:0:0 - 1)
		
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
	case 126: // STATE 121 - _spin_nvr.tmp:205 - [((!((EP==2))&&(EP>=2)))] (0:0:0 - 1)
		
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
	case 127: // STATE 126 - _spin_nvr.tmp:209 - [(!((EP==(2+1))))] (0:0:0 - 1)
		
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
	case 128: // STATE 128 - _spin_nvr.tmp:210 - [((!((EP==(2+1)))&&(EP>=2)))] (0:0:0 - 1)
		
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
	case 129: // STATE 130 - _spin_nvr.tmp:211 - [((!((EP==(2+1)))&&(EP>=2)))] (0:0:0 - 1)
		
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
	case 130: // STATE 135 - _spin_nvr.tmp:215 - [((!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==2))))] (0:0:0 - 1)
		
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
	case 131: // STATE 137 - _spin_nvr.tmp:216 - [((!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==(2+1)))))] (0:0:0 - 1)
		
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
	case 132: // STATE 139 - _spin_nvr.tmp:217 - [((EP>=2))] (0:0:0 - 1)
		
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
	case 133: // STATE 143 - _spin_nvr.tmp:219 - [(((!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==2)))&&(EP>=2)))] (0:0:0 - 1)
		
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
	case 134: // STATE 145 - _spin_nvr.tmp:220 - [(((!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==2)))&&(EP>=2)))] (0:0:0 - 1)
		
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
	case 135: // STATE 147 - _spin_nvr.tmp:221 - [(((!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==(2+1))))&&(EP>=2)))] (0:0:0 - 1)
		
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
	case 136: // STATE 149 - _spin_nvr.tmp:222 - [(((!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==(2+1))))&&(EP>=2)))] (0:0:0 - 1)
		
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
	case 137: // STATE 151 - _spin_nvr.tmp:223 - [((!((pending_exp>0))&&(EP>=2)))] (0:0:0 - 1)
		
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
	case 138: // STATE 156 - _spin_nvr.tmp:225 - [-end-] (0:0:0 - 1)
		
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
	case 139: // STATE 1 - _spin_nvr.tmp:76 - [(((!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==(2+1))))&&(EP>=2)))] (0:0:0 - 1)
		
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
	case 140: // STATE 3 - _spin_nvr.tmp:77 - [((!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==(2+1)))))] (0:0:0 - 1)
		
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
	case 141: // STATE 5 - _spin_nvr.tmp:78 - [(((!((pending_exp>0))&&!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1)))))&&!((EP==(2+1)))))] (0:0:0 - 1)
		
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
	case 142: // STATE 7 - _spin_nvr.tmp:79 - [((!((pending_exp>0))||(EP>=2)))] (0:0:0 - 1)
		
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
	case 143: // STATE 14 - _spin_nvr.tmp:84 - [((!((EP==(2+1)))&&(EP>=2)))] (0:0:0 - 1)
		
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
	case 144: // STATE 16 - _spin_nvr.tmp:85 - [(!((EP==(2+1))))] (0:0:0 - 1)
		
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
	case 145: // STATE 18 - _spin_nvr.tmp:86 - [((!((pending_exp>0))&&!((EP==(2+1)))))] (0:0:0 - 1)
		
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
	case 146: // STATE 23 - _spin_nvr.tmp:90 - [(!((EP==(2+1))))] (0:0:0 - 1)
		
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
	case 147: // STATE 25 - _spin_nvr.tmp:91 - [(((!((pending_exp>0))&&!((EP==(2+1))))||(!((EP==(2+1)))&&(EP>=2))))] (0:0:0 - 1)
		
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
	case 148: // STATE 30 - _spin_nvr.tmp:95 - [(!((EP==(2+1))))] (0:0:0 - 1)
		
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
	case 149: // STATE 32 - _spin_nvr.tmp:96 - [((!((EP==(2+1)))&&(EP>=2)))] (0:0:0 - 1)
		
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
	case 150: // STATE 37 - _spin_nvr.tmp:100 - [((!((EP==(2+1)))&&(EP>=2)))] (0:0:0 - 1)
		
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
	case 151: // STATE 39 - _spin_nvr.tmp:101 - [(!((EP==(2+1))))] (0:0:0 - 1)
		
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
	case 152: // STATE 41 - _spin_nvr.tmp:102 - [((!((pending_exp>0))&&!((EP==(2+1)))))] (0:0:0 - 1)
		
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
	case 153: // STATE 46 - _spin_nvr.tmp:106 - [(!((EP==(2+1))))] (0:0:0 - 1)
		
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
	case 154: // STATE 48 - _spin_nvr.tmp:107 - [(((!((pending_exp>0))&&!((EP==(2+1))))||(!((EP==(2+1)))&&(EP>=2))))] (0:0:0 - 1)
		
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
	case 155: // STATE 53 - _spin_nvr.tmp:111 - [(!((EP==(2+1))))] (0:0:0 - 1)
		
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
	case 156: // STATE 55 - _spin_nvr.tmp:112 - [((!((EP==(2+1)))&&(EP>=2)))] (0:0:0 - 1)
		
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
	case 157: // STATE 57 - _spin_nvr.tmp:113 - [((!((EP==(2+1)))&&(EP>=2)))] (0:0:0 - 1)
		
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
	case 158: // STATE 62 - _spin_nvr.tmp:117 - [((!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==(2+1)))))] (0:0:0 - 1)
		
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
	case 159: // STATE 64 - _spin_nvr.tmp:118 - [((EP>=2))] (0:0:0 - 1)
		
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
	case 160: // STATE 68 - _spin_nvr.tmp:120 - [(((!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==(2+1))))&&(EP>=2)))] (0:0:0 - 1)
		
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
	case 161: // STATE 70 - _spin_nvr.tmp:121 - [(((!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==(2+1))))&&(EP>=2)))] (0:0:0 - 1)
		
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
	case 162: // STATE 75 - _spin_nvr.tmp:123 - [-end-] (0:0:0 - 1)
		
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
	case 163: // STATE 1 - _spin_nvr.tmp:25 - [(((!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==2)))&&(EP>=2)))] (0:0:0 - 1)
		
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
	case 164: // STATE 3 - _spin_nvr.tmp:26 - [((!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==2))))] (0:0:0 - 1)
		
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
	case 165: // STATE 5 - _spin_nvr.tmp:27 - [(((!((pending_exp>0))&&!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1)))))&&!((EP==2))))] (0:0:0 - 1)
		
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
	case 166: // STATE 7 - _spin_nvr.tmp:28 - [((!((pending_exp>0))||(EP>=2)))] (0:0:0 - 1)
		
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
	case 167: // STATE 14 - _spin_nvr.tmp:33 - [((!((EP==2))&&(EP>=2)))] (0:0:0 - 1)
		
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
	case 168: // STATE 16 - _spin_nvr.tmp:34 - [(!((EP==2)))] (0:0:0 - 1)
		
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
	case 169: // STATE 18 - _spin_nvr.tmp:35 - [((!((pending_exp>0))&&!((EP==2))))] (0:0:0 - 1)
		
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
	case 170: // STATE 23 - _spin_nvr.tmp:39 - [(!((EP==2)))] (0:0:0 - 1)
		
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
	case 171: // STATE 25 - _spin_nvr.tmp:40 - [(((!((pending_exp>0))&&!((EP==2)))||(!((EP==2))&&(EP>=2))))] (0:0:0 - 1)
		
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
	case 172: // STATE 30 - _spin_nvr.tmp:44 - [(!((EP==2)))] (0:0:0 - 1)
		
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
	case 173: // STATE 32 - _spin_nvr.tmp:45 - [((!((EP==2))&&(EP>=2)))] (0:0:0 - 1)
		
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
	case 174: // STATE 37 - _spin_nvr.tmp:49 - [((!((EP==2))&&(EP>=2)))] (0:0:0 - 1)
		
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
	case 175: // STATE 39 - _spin_nvr.tmp:50 - [(!((EP==2)))] (0:0:0 - 1)
		
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
	case 176: // STATE 41 - _spin_nvr.tmp:51 - [((!((pending_exp>0))&&!((EP==2))))] (0:0:0 - 1)
		
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
	case 177: // STATE 46 - _spin_nvr.tmp:55 - [(!((EP==2)))] (0:0:0 - 1)
		
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
	case 178: // STATE 48 - _spin_nvr.tmp:56 - [(((!((pending_exp>0))&&!((EP==2)))||(!((EP==2))&&(EP>=2))))] (0:0:0 - 1)
		
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
	case 179: // STATE 53 - _spin_nvr.tmp:60 - [(!((EP==2)))] (0:0:0 - 1)
		
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
	case 180: // STATE 55 - _spin_nvr.tmp:61 - [((!((EP==2))&&(EP>=2)))] (0:0:0 - 1)
		
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
	case 181: // STATE 57 - _spin_nvr.tmp:62 - [((!((EP==2))&&(EP>=2)))] (0:0:0 - 1)
		
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
	case 182: // STATE 62 - _spin_nvr.tmp:66 - [((!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==2))))] (0:0:0 - 1)
		
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
	case 183: // STATE 64 - _spin_nvr.tmp:67 - [((EP>=2))] (0:0:0 - 1)
		
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
	case 184: // STATE 68 - _spin_nvr.tmp:69 - [(((!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==2)))&&(EP>=2)))] (0:0:0 - 1)
		
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
	case 185: // STATE 70 - _spin_nvr.tmp:70 - [(((!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==2)))&&(EP>=2)))] (0:0:0 - 1)
		
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
	case 186: // STATE 75 - _spin_nvr.tmp:72 - [-end-] (0:0:0 - 1)
		
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
	case 187: // STATE 1 - _spin_nvr.tmp:14 - [((!(!((EP<2)))&&!((EP>=2))))] (0:0:0 - 1)
		
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
	case 188: // STATE 8 - _spin_nvr.tmp:19 - [(!((EP>=2)))] (0:0:0 - 1)
		
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
	case 189: // STATE 13 - _spin_nvr.tmp:21 - [-end-] (0:0:0 - 1)
		
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
	case 190: // STATE 1 - _spin_nvr.tmp:3 - [(!((EP>=2)))] (0:0:0 - 1)
		
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
	case 191: // STATE 8 - _spin_nvr.tmp:8 - [(!((EP>=2)))] (0:0:0 - 1)
		
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
	case 192: // STATE 13 - _spin_nvr.tmp:10 - [-end-] (0:0:0 - 1)
		
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
	case 193: // STATE 1 - c2res.pml:664 - [i = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[4][1] = 1;
		(trpt+1)->bup.oval = ((int)((P4 *)_this)->i);
		((P4 *)_this)->i = 0;
#ifdef VAR_RANGES
		logval(":init::i", ((int)((P4 *)_this)->i));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 194: // STATE 2 - c2res.pml:666 - [((i<4))] (0:0:0 - 1)
		IfNotBlocked
		reached[4][2] = 1;
		if (!((((int)((P4 *)_this)->i)<4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 195: // STATE 3 - c2res.pml:293 - [idx = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[4][3] = 1;
		(trpt+1)->bup.oval = ((int)((P4 *)_this)->_8_17_idx);
		((P4 *)_this)->_8_17_idx = 0;
#ifdef VAR_RANGES
		logval(":init::idx", ((int)((P4 *)_this)->_8_17_idx));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 196: // STATE 4 - c2res.pml:294 - [((idx<5))] (0:0:0 - 1)
		IfNotBlocked
		reached[4][4] = 1;
		if (!((((int)((P4 *)_this)->_8_17_idx)<5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 197: // STATE 5 - c2res.pml:295 - [readyQueue[i].tasks[idx] = 255] (0:0:1 - 1)
		IfNotBlocked
		reached[4][5] = 1;
		(trpt+1)->bup.oval = ((int)now.readyQueue[ Index(((int)((P4 *)_this)->i), 4) ].tasks[ Index(((int)((P4 *)_this)->_8_17_idx), 5) ]);
		now.readyQueue[ Index(((P4 *)_this)->i, 4) ].tasks[ Index(((P4 *)_this)->_8_17_idx, 5) ] = 255;
#ifdef VAR_RANGES
		logval("readyQueue[:init::i].tasks[:init::idx]", ((int)now.readyQueue[ Index(((int)((P4 *)_this)->i), 4) ].tasks[ Index(((int)((P4 *)_this)->_8_17_idx), 5) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 198: // STATE 6 - c2res.pml:296 - [idx = (idx+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[4][6] = 1;
		(trpt+1)->bup.oval = ((int)((P4 *)_this)->_8_17_idx);
		((P4 *)_this)->_8_17_idx = (((int)((P4 *)_this)->_8_17_idx)+1);
#ifdef VAR_RANGES
		logval(":init::idx", ((int)((P4 *)_this)->_8_17_idx));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 199: // STATE 12 - c2res.pml:299 - [readyQueue[i].tailIndex = 0] (0:0:1 - 3)
		IfNotBlocked
		reached[4][12] = 1;
		(trpt+1)->bup.oval = ((int)now.readyQueue[ Index(((int)((P4 *)_this)->i), 4) ].tailIndex);
		now.readyQueue[ Index(((P4 *)_this)->i, 4) ].tailIndex = 0;
#ifdef VAR_RANGES
		logval("readyQueue[:init::i].tailIndex", ((int)now.readyQueue[ Index(((int)((P4 *)_this)->i), 4) ].tailIndex));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 200: // STATE 14 - c2res.pml:668 - [i = (i+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[4][14] = 1;
		(trpt+1)->bup.oval = ((int)((P4 *)_this)->i);
		((P4 *)_this)->i = (((int)((P4 *)_this)->i)+1);
#ifdef VAR_RANGES
		logval(":init::i", ((int)((P4 *)_this)->i));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 201: // STATE 20 - c2res.pml:673 - [tcb[2].prio = 2] (0:0:1 - 3)
		IfNotBlocked
		reached[4][20] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[2].prio);
		now.tcb[2].prio = 2;
#ifdef VAR_RANGES
		logval("tcb[2].prio", ((int)now.tcb[2].prio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 202: // STATE 21 - c2res.pml:673 - [tcb[2].state = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[4][21] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[2].state);
		now.tcb[2].state = 1;
#ifdef VAR_RANGES
		logval("tcb[2].state", ((int)now.tcb[2].state));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 203: // STATE 22 - c2res.pml:305 - [((readyQueue[2].tailIndex<5))] (0:0:0 - 1)
		IfNotBlocked
		reached[4][22] = 1;
		if (!((((int)now.readyQueue[2].tailIndex)<5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 204: // STATE 23 - c2res.pml:306 - [readyQueue[2].tasks[readyQueue[2].tailIndex] = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[4][23] = 1;
		(trpt+1)->bup.oval = ((int)now.readyQueue[2].tasks[ Index(((int)now.readyQueue[2].tailIndex), 5) ]);
		now.readyQueue[2].tasks[ Index(now.readyQueue[2].tailIndex, 5) ] = 2;
#ifdef VAR_RANGES
		logval("readyQueue[2].tasks[readyQueue[2].tailIndex]", ((int)now.readyQueue[2].tasks[ Index(((int)now.readyQueue[2].tailIndex), 5) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 205: // STATE 24 - c2res.pml:307 - [readyQueue[2].tailIndex = (readyQueue[2].tailIndex+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[4][24] = 1;
		(trpt+1)->bup.oval = ((int)now.readyQueue[2].tailIndex);
		now.readyQueue[2].tailIndex = (((int)now.readyQueue[2].tailIndex)+1);
#ifdef VAR_RANGES
		logval("readyQueue[2].tailIndex", ((int)now.readyQueue[2].tailIndex));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 206: // STATE 26 - c2res.pml:308 - [assert(0)] (0:0:0 - 1)
		IfNotBlocked
		reached[4][26] = 1;
		spin_assert(0, "0", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 207: // STATE 30 - c2res.pml:674 - [tcb[(2+1)].prio = 2] (0:0:1 - 3)
		IfNotBlocked
		reached[4][30] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[ Index((2+1), 4) ].prio);
		now.tcb[ Index((2+1), 4) ].prio = 2;
#ifdef VAR_RANGES
		logval("tcb[(2+1)].prio", ((int)now.tcb[ Index((2+1), 4) ].prio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 208: // STATE 31 - c2res.pml:674 - [tcb[(2+1)].state = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[4][31] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[ Index((2+1), 4) ].state);
		now.tcb[ Index((2+1), 4) ].state = 1;
#ifdef VAR_RANGES
		logval("tcb[(2+1)].state", ((int)now.tcb[ Index((2+1), 4) ].state));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 209: // STATE 32 - c2res.pml:305 - [((readyQueue[2].tailIndex<5))] (0:0:0 - 1)
		IfNotBlocked
		reached[4][32] = 1;
		if (!((((int)now.readyQueue[2].tailIndex)<5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 210: // STATE 33 - c2res.pml:306 - [readyQueue[2].tasks[readyQueue[2].tailIndex] = (2+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[4][33] = 1;
		(trpt+1)->bup.oval = ((int)now.readyQueue[2].tasks[ Index(((int)now.readyQueue[2].tailIndex), 5) ]);
		now.readyQueue[2].tasks[ Index(now.readyQueue[2].tailIndex, 5) ] = (2+1);
#ifdef VAR_RANGES
		logval("readyQueue[2].tasks[readyQueue[2].tailIndex]", ((int)now.readyQueue[2].tasks[ Index(((int)now.readyQueue[2].tailIndex), 5) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 211: // STATE 34 - c2res.pml:307 - [readyQueue[2].tailIndex = (readyQueue[2].tailIndex+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[4][34] = 1;
		(trpt+1)->bup.oval = ((int)now.readyQueue[2].tailIndex);
		now.readyQueue[2].tailIndex = (((int)now.readyQueue[2].tailIndex)+1);
#ifdef VAR_RANGES
		logval("readyQueue[2].tailIndex", ((int)now.readyQueue[2].tailIndex));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 212: // STATE 36 - c2res.pml:308 - [assert(0)] (0:0:0 - 1)
		IfNotBlocked
		reached[4][36] = 1;
		spin_assert(0, "0", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 213: // STATE 40 - c2res.pml:678 - [EP = 2] (0:0:1 - 3)
		IfNotBlocked
		reached[4][40] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = 2;
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 214: // STATE 41 - c2res.pml:679 - [topPrio = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[4][41] = 1;
		(trpt+1)->bup.oval = ((int)now.topPrio);
		now.topPrio = 2;
#ifdef VAR_RANGES
		logval("topPrio", ((int)now.topPrio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 215: // STATE 42 - c2res.pml:315 - [idx = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[4][42] = 1;
		(trpt+1)->bup.oval = ((int)((P4 *)_this)->_8_20_idx);
		((P4 *)_this)->_8_20_idx = 0;
#ifdef VAR_RANGES
		logval(":init::idx", ((int)((P4 *)_this)->_8_20_idx));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 216: // STATE 43 - c2res.pml:316 - [((idx<(readyQueue[topPrio].tailIndex-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[4][43] = 1;
		if (!((((int)((P4 *)_this)->_8_20_idx)<(((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 217: // STATE 44 - c2res.pml:317 - [readyQueue[topPrio].tasks[idx] = readyQueue[topPrio].tasks[(idx+1)]] (0:0:1 - 1)
		IfNotBlocked
		reached[4][44] = 1;
		(trpt+1)->bup.oval = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index(((int)((P4 *)_this)->_8_20_idx), 5) ]);
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index(((P4 *)_this)->_8_20_idx, 5) ] = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index((((int)((P4 *)_this)->_8_20_idx)+1), 5) ]);
#ifdef VAR_RANGES
		logval("readyQueue[topPrio].tasks[:init::idx]", ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index(((int)((P4 *)_this)->_8_20_idx), 5) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 218: // STATE 45 - c2res.pml:318 - [idx = (idx+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[4][45] = 1;
		(trpt+1)->bup.oval = ((int)((P4 *)_this)->_8_20_idx);
		((P4 *)_this)->_8_20_idx = (((int)((P4 *)_this)->_8_20_idx)+1);
#ifdef VAR_RANGES
		logval(":init::idx", ((int)((P4 *)_this)->_8_20_idx));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 219: // STATE 51 - c2res.pml:322 - [((readyQueue[topPrio].tailIndex>0))] (0:0:0 - 1)
		IfNotBlocked
		reached[4][51] = 1;
		if (!((((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 220: // STATE 52 - c2res.pml:323 - [readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)] = 255] (0:0:1 - 1)
		IfNotBlocked
		reached[4][52] = 1;
		(trpt+1)->bup.oval = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index((((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1), 5) ]);
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index((now.readyQueue[ Index(now.topPrio, 4) ].tailIndex-1), 5) ] = 255;
#ifdef VAR_RANGES
		logval("readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)]", ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index((((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1), 5) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 221: // STATE 53 - c2res.pml:324 - [readyQueue[topPrio].tailIndex = (readyQueue[topPrio].tailIndex-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[4][53] = 1;
		(trpt+1)->bup.oval = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex);
		now.readyQueue[ Index(now.topPrio, 4) ].tailIndex = (((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1);
#ifdef VAR_RANGES
		logval("readyQueue[topPrio].tailIndex", ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 222: // STATE 59 - c2res.pml:681 - [tcb[EP].state = 4] (0:0:1 - 3)
		IfNotBlocked
		reached[4][59] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[ Index(((int)now.EP), 4) ].state);
		now.tcb[ Index(now.EP, 4) ].state = 4;
#ifdef VAR_RANGES
		logval("tcb[EP].state", ((int)now.tcb[ Index(((int)now.EP), 4) ].state));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 223: // STATE 60 - c2res.pml:684 - [(run PendSV_Handler())] (0:0:0 - 1)
		IfNotBlocked
		reached[4][60] = 1;
		if (!(addproc(II, 1, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 224: // STATE 61 - c2res.pml:684 - [(run SysTick_Handler())] (0:0:0 - 1)
		IfNotBlocked
		reached[4][61] = 1;
		if (!(addproc(II, 1, 1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 225: // STATE 63 - c2res.pml:685 - [(run Process2())] (0:0:0 - 1)
		IfNotBlocked
		reached[4][63] = 1;
		if (!(addproc(II, 1, 3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 226: // STATE 64 - c2res.pml:686 - [(run Process1())] (0:0:0 - 1)
		IfNotBlocked
		reached[4][64] = 1;
		if (!(addproc(II, 1, 2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 227: // STATE 65 - c2res.pml:687 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[4][65] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Process2 */
	case 228: // STATE 1 - c2res.pml:437 - [(((2+1)==EP))] (8:0:0 - 1)
		IfNotBlocked
		reached[3][1] = 1;
		if (!(((2+1)==((int)now.EP))))
			continue;
		/* merge: printf('P2 running\\n')(0, 2, 8) */
		reached[3][2] = 1;
		Printf("P2 running\n");
		_m = 3; goto P999; /* 1 */
	case 229: // STATE 4 - c2res.pml:68 - [assert(((1<2)&&(1<8)))] (0:23:1 - 1)
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
	case 230: // STATE 10 - c2res.pml:437 - [((((((pending_exp>>0)&1)&&((BASEPRI==0)||(15<BASEPRI)))||(((pending_exp>>1)&1)&&((BASEPRI==0)||(15<BASEPRI))))&&(EP>=2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][10] = 1;
		if (!((((((((int)now.pending_exp)>>0)&1)&&((((int)now.BASEPRI)==0)||(15<((int)now.BASEPRI))))||(((((int)now.pending_exp)>>1)&1)&&((((int)now.BASEPRI)==0)||(15<((int)now.BASEPRI)))))&&(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 231: // STATE 11 - c2res.pml:437 - [((EP>=2))] (19:0:1 - 1)
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
	case 232: // STATE 17 - c2res.pml:83 - [assert((EP_Stack==255))] (0:77:2 - 1)
		IfNotBlocked
		reached[3][17] = 1;
		spin_assert((((int)now.EP_Stack)==255), "(EP_Stack==255)", II, tt, t);
		/* merge: EP_Stack = EP(77, 18, 77) */
		reached[3][18] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.EP_Stack);
		now.EP_Stack = ((int)now.EP);
#ifdef VAR_RANGES
		logval("EP_Stack", ((int)now.EP_Stack));
#endif
		;
		/* merge: EP = ( (((pending_exp>>0)&1)) -> (0) : (1) )(77, 20, 77) */
		reached[3][20] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.EP);
		now.EP = ( (((((int)now.pending_exp)>>0)&1)) ? (0) : (1) );
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: .(goto)(77, 24, 77) */
		reached[3][24] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 233: // STATE 24 - c2res.pml:437 - [.(goto)] (0:77:0 - 2)
		IfNotBlocked
		reached[3][24] = 1;
		;
		_m = 3; goto P999; /* 0 */
	case 234: // STATE 22 - c2res.pml:437 - [(1)] (77:0:0 - 1)
		IfNotBlocked
		reached[3][22] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(77, 24, 77) */
		reached[3][24] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 235: // STATE 26 - c2res.pml:439 - [(((2+1)==EP))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][26] = 1;
		if (!(((2+1)==((int)now.EP))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 236: // STATE 27 - c2res.pml:259 - [intSave = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[3][27] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)_this)->_7_14_24_intSave);
		((P3 *)_this)->_7_14_24_intSave = 0;
#ifdef VAR_RANGES
		logval("Process2:intSave", ((int)((P3 *)_this)->_7_14_24_intSave));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 237: // STATE 28 - c2res.pml:220 - [intSave = 0] (0:42:2 - 1)
		IfNotBlocked
		reached[3][28] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P3 *)_this)->_7_14_24_intSave);
		((P3 *)_this)->_7_14_24_intSave = 0;
#ifdef VAR_RANGES
		logval("Process2:intSave", ((int)((P3 *)_this)->_7_14_24_intSave));
#endif
		;
		/* merge: assert((tcb[2].state==1))(42, 30, 42) */
		reached[3][30] = 1;
		spin_assert((((int)now.tcb[2].state)==1), "(tcb[2].state==1)", II, tt, t);
		/* merge: needSched = 0(42, 31, 42) */
		reached[3][31] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P3 *)_this)->_7_14_24_needSched);
		((P3 *)_this)->_7_14_24_needSched = 0;
#ifdef VAR_RANGES
		logval("Process2:needSched", ((int)((P3 *)_this)->_7_14_24_needSched));
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 238: // STATE 32 - c2res.pml:250 - [assert((tcb[2].state==1))] (0:41:2 - 1)
		IfNotBlocked
		reached[3][32] = 1;
		spin_assert((((int)now.tcb[2].state)==1), "(tcb[2].state==1)", II, tt, t);
		/* merge: needSched = 1(41, 33, 41) */
		reached[3][33] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P3 *)_this)->_7_14_24_needSched);
		((P3 *)_this)->_7_14_24_needSched = 1;
#ifdef VAR_RANGES
		logval("Process2:needSched", ((int)((P3 *)_this)->_7_14_24_needSched));
#endif
		;
		/* merge: tcb[2].state = 3(41, 34, 41) */
		reached[3][34] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.tcb[2].state);
		now.tcb[2].state = 3;
#ifdef VAR_RANGES
		logval("tcb[2].state", ((int)now.tcb[2].state));
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 239: // STATE 35 - c2res.pml:272 - [assert((g_taskSortLinkTail<(2+1)))] (0:52:4 - 1)
		IfNotBlocked
		reached[3][35] = 1;
		spin_assert((((int)now.g_taskSortLinkTail)<(2+1)), "(g_taskSortLinkTail<(2+1))", II, tt, t);
		/* merge: assert((g_taskSortLinkTail>=0))(52, 36, 52) */
		reached[3][36] = 1;
		spin_assert((((int)now.g_taskSortLinkTail)>=0), "(g_taskSortLinkTail>=0)", II, tt, t);
		/* merge: g_taskSortLink[g_taskSortLinkTail].taskId = 2(52, 37, 52) */
		reached[3][37] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((int)now.g_taskSortLink[ Index(((int)now.g_taskSortLinkTail), 3) ].taskId);
		now.g_taskSortLink[ Index(now.g_taskSortLinkTail, 3) ].taskId = 2;
#ifdef VAR_RANGES
		logval("g_taskSortLink[g_taskSortLinkTail].taskId", ((int)now.g_taskSortLink[ Index(((int)now.g_taskSortLinkTail), 3) ].taskId));
#endif
		;
		/* merge: g_taskSortLink[g_taskSortLinkTail].responseTime = 255(52, 38, 52) */
		reached[3][38] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.g_taskSortLink[ Index(((int)now.g_taskSortLinkTail), 3) ].responseTime);
		now.g_taskSortLink[ Index(now.g_taskSortLinkTail, 3) ].responseTime = 255;
#ifdef VAR_RANGES
		logval("g_taskSortLink[g_taskSortLinkTail].responseTime", ((int)now.g_taskSortLink[ Index(((int)now.g_taskSortLinkTail), 3) ].responseTime));
#endif
		;
		/* merge: tcb[2].pendList = g_taskSortLinkTail(52, 39, 52) */
		reached[3][39] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.tcb[2].pendList);
		now.tcb[2].pendList = ((int)now.g_taskSortLinkTail);
#ifdef VAR_RANGES
		logval("tcb[2].pendList", ((int)now.tcb[2].pendList));
#endif
		;
		/* merge: g_taskSortLinkTail = (g_taskSortLinkTail+1)(52, 40, 52) */
		reached[3][40] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.g_taskSortLinkTail);
		now.g_taskSortLinkTail = (((int)now.g_taskSortLinkTail)+1);
#ifdef VAR_RANGES
		logval("g_taskSortLinkTail", ((int)now.g_taskSortLinkTail));
#endif
		;
		_m = 3; goto P999; /* 5 */
	case 240: // STATE 43 - c2res.pml:264 - [((needSched&&g_taskScheduled))] (0:0:1 - 1)
		IfNotBlocked
		reached[3][43] = 1;
		if (!((((int)((P3 *)_this)->_7_14_24_needSched)&&((int)now.g_taskScheduled))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _7_14_24_needSched */  (trpt+1)->bup.oval = ((P3 *)_this)->_7_14_24_needSched;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P3 *)_this)->_7_14_24_needSched = 0;
		_m = 3; goto P999; /* 0 */
	case 241: // STATE 44 - c2res.pml:224 - [intSave = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[3][44] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)_this)->_7_14_24_intSave);
		((P3 *)_this)->_7_14_24_intSave = 0;
#ifdef VAR_RANGES
		logval("Process2:intSave", ((int)((P3 *)_this)->_7_14_24_intSave));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 242: // STATE 46 - c2res.pml:68 - [assert(((0<2)&&(0<8)))] (0:60:1 - 1)
		IfNotBlocked
		reached[3][46] = 1;
		spin_assert(((0<2)&&(0<8)), "((0<2)&&(0<8))", II, tt, t);
		/* merge: pending_exp = (pending_exp|(1<<0))(60, 47, 60) */
		reached[3][47] = 1;
		(trpt+1)->bup.oval = ((int)now.pending_exp);
		now.pending_exp = (((int)now.pending_exp)|(1<<0));
#ifdef VAR_RANGES
		logval("pending_exp", ((int)now.pending_exp));
#endif
		;
		/* merge: .(goto)(0, 53, 60) */
		reached[3][53] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 243: // STATE 56 - c2res.pml:68 - [assert(((1<2)&&(1<8)))] (0:75:1 - 1)
		IfNotBlocked
		reached[3][56] = 1;
		spin_assert(((1<2)&&(1<8)), "((1<2)&&(1<8))", II, tt, t);
		/* merge: pending_exp = (pending_exp|(1<<1))(75, 57, 75) */
		reached[3][57] = 1;
		(trpt+1)->bup.oval = ((int)now.pending_exp);
		now.pending_exp = (((int)now.pending_exp)|(1<<1));
#ifdef VAR_RANGES
		logval("pending_exp", ((int)now.pending_exp));
#endif
		;
		/* merge: .(goto)(0, 61, 75) */
		reached[3][61] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 244: // STATE 62 - c2res.pml:439 - [((((((pending_exp>>0)&1)&&((BASEPRI==0)||(15<BASEPRI)))||(((pending_exp>>1)&1)&&((BASEPRI==0)||(15<BASEPRI))))&&(EP>=2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][62] = 1;
		if (!((((((((int)now.pending_exp)>>0)&1)&&((((int)now.BASEPRI)==0)||(15<((int)now.BASEPRI))))||(((((int)now.pending_exp)>>1)&1)&&((((int)now.BASEPRI)==0)||(15<((int)now.BASEPRI)))))&&(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 245: // STATE 63 - c2res.pml:439 - [((EP>=2))] (71:0:1 - 1)
		IfNotBlocked
		reached[3][63] = 1;
		if (!((((int)now.EP)>=2)))
			continue;
		/* merge: chain_tick_used = 0(0, 64, 71) */
		reached[3][64] = 1;
		(trpt+1)->bup.oval = ((int)now.chain_tick_used);
		now.chain_tick_used = 0;
#ifdef VAR_RANGES
		logval("chain_tick_used", ((int)now.chain_tick_used));
#endif
		;
		/* merge: .(goto)(0, 68, 71) */
		reached[3][68] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 246: // STATE 69 - c2res.pml:83 - [assert((EP_Stack==255))] (0:146:2 - 1)
		IfNotBlocked
		reached[3][69] = 1;
		spin_assert((((int)now.EP_Stack)==255), "(EP_Stack==255)", II, tt, t);
		/* merge: EP_Stack = EP(146, 70, 146) */
		reached[3][70] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.EP_Stack);
		now.EP_Stack = ((int)now.EP);
#ifdef VAR_RANGES
		logval("EP_Stack", ((int)now.EP_Stack));
#endif
		;
		/* merge: EP = ( (((pending_exp>>0)&1)) -> (0) : (1) )(146, 72, 146) */
		reached[3][72] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.EP);
		now.EP = ( (((((int)now.pending_exp)>>0)&1)) ? (0) : (1) );
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: .(goto)(146, 76, 146) */
		reached[3][76] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 247: // STATE 76 - c2res.pml:439 - [.(goto)] (0:146:0 - 2)
		IfNotBlocked
		reached[3][76] = 1;
		;
		_m = 3; goto P999; /* 0 */
	case 248: // STATE 74 - c2res.pml:439 - [(1)] (146:0:0 - 1)
		IfNotBlocked
		reached[3][74] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(146, 76, 146) */
		reached[3][76] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 249: // STATE 78 - c2res.pml:441 - [(((2+1)==EP))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][78] = 1;
		if (!(((2+1)==((int)now.EP))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 250: // STATE 79 - c2res.pml:230 - [intSave = 0] (0:83:3 - 1)
		IfNotBlocked
		reached[3][79] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)((P3 *)_this)->_7_15_27_intSave);
		((P3 *)_this)->_7_15_27_intSave = 0;
#ifdef VAR_RANGES
		logval("Process2:intSave", ((int)((P3 *)_this)->_7_15_27_intSave));
#endif
		;
		/* merge: tempStatus = 0(83, 80, 83) */
		reached[3][80] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P3 *)_this)->_7_15_27_tempStatus);
		((P3 *)_this)->_7_15_27_tempStatus = 0;
#ifdef VAR_RANGES
		logval("Process2:tempStatus", ((int)((P3 *)_this)->_7_15_27_tempStatus));
#endif
		;
		/* merge: needSched = 0(83, 81, 83) */
		reached[3][81] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P3 *)_this)->_7_15_27_needSched);
		((P3 *)_this)->_7_15_27_needSched = 0;
#ifdef VAR_RANGES
		logval("Process2:needSched", ((int)((P3 *)_this)->_7_15_27_needSched));
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 251: // STATE 82 - c2res.pml:220 - [intSave = 0] (0:111:2 - 1)
		IfNotBlocked
		reached[3][82] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P3 *)_this)->_7_15_27_intSave);
		((P3 *)_this)->_7_15_27_intSave = 0;
#ifdef VAR_RANGES
		logval("Process2:intSave", ((int)((P3 *)_this)->_7_15_27_intSave));
#endif
		;
		/* merge: tempStatus = tcb[2].state(111, 84, 111) */
		reached[3][84] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P3 *)_this)->_7_15_27_tempStatus);
		((P3 *)_this)->_7_15_27_tempStatus = ((int)now.tcb[2].state);
#ifdef VAR_RANGES
		logval("Process2:tempStatus", ((int)((P3 *)_this)->_7_15_27_tempStatus));
#endif
		;
		/* merge: assert((tempStatus==3))(111, 85, 111) */
		reached[3][85] = 1;
		spin_assert((((int)((P3 *)_this)->_7_15_27_tempStatus)==3), "(tempStatus==3)", II, tt, t);
		_m = 3; goto P999; /* 2 */
	case 252: // STATE 86 - c2res.pml:191 - [assert((tcb[2].state==3))] (0:102:2 - 1)
		IfNotBlocked
		reached[3][86] = 1;
		spin_assert((((int)now.tcb[2].state)==3), "(tcb[2].state==3)", II, tt, t);
		/* merge: needSched = 1(102, 87, 102) */
		reached[3][87] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P3 *)_this)->_7_15_27_needSched);
		((P3 *)_this)->_7_15_27_needSched = 1;
#ifdef VAR_RANGES
		logval("Process2:needSched", ((int)((P3 *)_this)->_7_15_27_needSched));
#endif
		;
		/* merge: tcb[2].state = 1(102, 88, 102) */
		reached[3][88] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.tcb[2].state);
		now.tcb[2].state = 1;
#ifdef VAR_RANGES
		logval("tcb[2].state", ((int)now.tcb[2].state));
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 253: // STATE 89 - c2res.pml:207 - [idx = tcb[2].pendList] (0:0:1 - 1)
		IfNotBlocked
		reached[3][89] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)_this)->_7_15_27_12_5_idx);
		((P3 *)_this)->_7_15_27_12_5_idx = ((int)now.tcb[2].pendList);
#ifdef VAR_RANGES
		logval("Process2:idx", ((int)((P3 *)_this)->_7_15_27_12_5_idx));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 254: // STATE 90 - c2res.pml:208 - [((idx<(g_taskSortLinkTail-1)))] (96:0:3 - 1)
		IfNotBlocked
		reached[3][90] = 1;
		if (!((((int)((P3 *)_this)->_7_15_27_12_5_idx)<(((int)now.g_taskSortLinkTail)-1))))
			continue;
		/* merge: g_taskSortLink[idx].taskId = g_taskSortLink[(idx+1)].taskId(96, 91, 96) */
		reached[3][91] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.g_taskSortLink[ Index(((int)((P3 *)_this)->_7_15_27_12_5_idx), 3) ].taskId);
		now.g_taskSortLink[ Index(((P3 *)_this)->_7_15_27_12_5_idx, 3) ].taskId = ((int)now.g_taskSortLink[ Index((((int)((P3 *)_this)->_7_15_27_12_5_idx)+1), 3) ].taskId);
#ifdef VAR_RANGES
		logval("g_taskSortLink[Process2:idx].taskId", ((int)now.g_taskSortLink[ Index(((int)((P3 *)_this)->_7_15_27_12_5_idx), 3) ].taskId));
#endif
		;
		/* merge: g_taskSortLink[idx].responseTime = g_taskSortLink[(idx+1)].responseTime(96, 92, 96) */
		reached[3][92] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.g_taskSortLink[ Index(((int)((P3 *)_this)->_7_15_27_12_5_idx), 3) ].responseTime);
		now.g_taskSortLink[ Index(((P3 *)_this)->_7_15_27_12_5_idx, 3) ].responseTime = ((int)now.g_taskSortLink[ Index((((int)((P3 *)_this)->_7_15_27_12_5_idx)+1), 3) ].responseTime);
#ifdef VAR_RANGES
		logval("g_taskSortLink[Process2:idx].responseTime", ((int)now.g_taskSortLink[ Index(((int)((P3 *)_this)->_7_15_27_12_5_idx), 3) ].responseTime));
#endif
		;
		/* merge: idx = (idx+1)(96, 93, 96) */
		reached[3][93] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P3 *)_this)->_7_15_27_12_5_idx);
		((P3 *)_this)->_7_15_27_12_5_idx = (((int)((P3 *)_this)->_7_15_27_12_5_idx)+1);
#ifdef VAR_RANGES
		logval("Process2:idx", ((int)((P3 *)_this)->_7_15_27_12_5_idx));
#endif
		;
		/* merge: .(goto)(0, 97, 96) */
		reached[3][97] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 255: // STATE 99 - c2res.pml:214 - [g_taskSortLink[(g_taskSortLinkTail-1)].taskId = 255] (0:110:3 - 3)
		IfNotBlocked
		reached[3][99] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.g_taskSortLink[ Index((((int)now.g_taskSortLinkTail)-1), 3) ].taskId);
		now.g_taskSortLink[ Index((now.g_taskSortLinkTail-1), 3) ].taskId = 255;
#ifdef VAR_RANGES
		logval("g_taskSortLink[(g_taskSortLinkTail-1)].taskId", ((int)now.g_taskSortLink[ Index((((int)now.g_taskSortLinkTail)-1), 3) ].taskId));
#endif
		;
		/* merge: g_taskSortLink[(g_taskSortLinkTail-1)].responseTime = 255(110, 100, 110) */
		reached[3][100] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.g_taskSortLink[ Index((((int)now.g_taskSortLinkTail)-1), 3) ].responseTime);
		now.g_taskSortLink[ Index((now.g_taskSortLinkTail-1), 3) ].responseTime = 255;
#ifdef VAR_RANGES
		logval("g_taskSortLink[(g_taskSortLinkTail-1)].responseTime", ((int)now.g_taskSortLink[ Index((((int)now.g_taskSortLinkTail)-1), 3) ].responseTime));
#endif
		;
		/* merge: g_taskSortLinkTail = (g_taskSortLinkTail-1)(110, 101, 110) */
		reached[3][101] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.g_taskSortLinkTail);
		now.g_taskSortLinkTail = (((int)now.g_taskSortLinkTail)-1);
#ifdef VAR_RANGES
		logval("g_taskSortLinkTail", ((int)now.g_taskSortLinkTail));
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 256: // STATE 103 - c2res.pml:305 - [((readyQueue[tcb[2].prio].tailIndex<5))] (121:0:2 - 1)
		IfNotBlocked
		reached[3][103] = 1;
		if (!((((int)now.readyQueue[ Index(((int)now.tcb[2].prio), 4) ].tailIndex)<5)))
			continue;
		/* merge: readyQueue[tcb[2].prio].tasks[readyQueue[tcb[2].prio].tailIndex] = 2(121, 104, 121) */
		reached[3][104] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.readyQueue[ Index(((int)now.tcb[2].prio), 4) ].tasks[ Index(((int)now.readyQueue[ Index(((int)now.tcb[2].prio), 4) ].tailIndex), 5) ]);
		now.readyQueue[ Index(now.tcb[2].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[2].prio, 4) ].tailIndex, 5) ] = 2;
#ifdef VAR_RANGES
		logval("readyQueue[tcb[2].prio].tasks[readyQueue[tcb[2].prio].tailIndex]", ((int)now.readyQueue[ Index(((int)now.tcb[2].prio), 4) ].tasks[ Index(((int)now.readyQueue[ Index(((int)now.tcb[2].prio), 4) ].tailIndex), 5) ]));
#endif
		;
		/* merge: readyQueue[tcb[2].prio].tailIndex = (readyQueue[tcb[2].prio].tailIndex+1)(121, 105, 121) */
		reached[3][105] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.readyQueue[ Index(((int)now.tcb[2].prio), 4) ].tailIndex);
		now.readyQueue[ Index(now.tcb[2].prio, 4) ].tailIndex = (((int)now.readyQueue[ Index(((int)now.tcb[2].prio), 4) ].tailIndex)+1);
#ifdef VAR_RANGES
		logval("readyQueue[tcb[2].prio].tailIndex", ((int)now.readyQueue[ Index(((int)now.tcb[2].prio), 4) ].tailIndex));
#endif
		;
		/* merge: .(goto)(0, 109, 121) */
		reached[3][109] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 257: // STATE 107 - c2res.pml:308 - [assert(0)] (0:0:0 - 1)
		IfNotBlocked
		reached[3][107] = 1;
		spin_assert(0, "0", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 258: // STATE 112 - c2res.pml:241 - [((needSched&&g_taskScheduled))] (0:0:1 - 1)
		IfNotBlocked
		reached[3][112] = 1;
		if (!((((int)((P3 *)_this)->_7_15_27_needSched)&&((int)now.g_taskScheduled))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _7_15_27_needSched */  (trpt+1)->bup.oval = ((P3 *)_this)->_7_15_27_needSched;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P3 *)_this)->_7_15_27_needSched = 0;
		_m = 3; goto P999; /* 0 */
	case 259: // STATE 113 - c2res.pml:224 - [intSave = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[3][113] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)_this)->_7_15_27_intSave);
		((P3 *)_this)->_7_15_27_intSave = 0;
#ifdef VAR_RANGES
		logval("Process2:intSave", ((int)((P3 *)_this)->_7_15_27_intSave));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 260: // STATE 115 - c2res.pml:68 - [assert(((0<2)&&(0<8)))] (0:129:1 - 1)
		IfNotBlocked
		reached[3][115] = 1;
		spin_assert(((0<2)&&(0<8)), "((0<2)&&(0<8))", II, tt, t);
		/* merge: pending_exp = (pending_exp|(1<<0))(129, 116, 129) */
		reached[3][116] = 1;
		(trpt+1)->bup.oval = ((int)now.pending_exp);
		now.pending_exp = (((int)now.pending_exp)|(1<<0));
#ifdef VAR_RANGES
		logval("pending_exp", ((int)now.pending_exp));
#endif
		;
		/* merge: .(goto)(0, 122, 129) */
		reached[3][122] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 261: // STATE 125 - c2res.pml:68 - [assert(((1<2)&&(1<8)))] (0:144:1 - 1)
		IfNotBlocked
		reached[3][125] = 1;
		spin_assert(((1<2)&&(1<8)), "((1<2)&&(1<8))", II, tt, t);
		/* merge: pending_exp = (pending_exp|(1<<1))(144, 126, 144) */
		reached[3][126] = 1;
		(trpt+1)->bup.oval = ((int)now.pending_exp);
		now.pending_exp = (((int)now.pending_exp)|(1<<1));
#ifdef VAR_RANGES
		logval("pending_exp", ((int)now.pending_exp));
#endif
		;
		/* merge: .(goto)(0, 130, 144) */
		reached[3][130] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 262: // STATE 131 - c2res.pml:441 - [((((((pending_exp>>0)&1)&&((BASEPRI==0)||(15<BASEPRI)))||(((pending_exp>>1)&1)&&((BASEPRI==0)||(15<BASEPRI))))&&(EP>=2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][131] = 1;
		if (!((((((((int)now.pending_exp)>>0)&1)&&((((int)now.BASEPRI)==0)||(15<((int)now.BASEPRI))))||(((((int)now.pending_exp)>>1)&1)&&((((int)now.BASEPRI)==0)||(15<((int)now.BASEPRI)))))&&(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 263: // STATE 132 - c2res.pml:441 - [((EP>=2))] (140:0:1 - 1)
		IfNotBlocked
		reached[3][132] = 1;
		if (!((((int)now.EP)>=2)))
			continue;
		/* merge: chain_tick_used = 0(0, 133, 140) */
		reached[3][133] = 1;
		(trpt+1)->bup.oval = ((int)now.chain_tick_used);
		now.chain_tick_used = 0;
#ifdef VAR_RANGES
		logval("chain_tick_used", ((int)now.chain_tick_used));
#endif
		;
		/* merge: .(goto)(0, 137, 140) */
		reached[3][137] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 264: // STATE 138 - c2res.pml:83 - [assert((EP_Stack==255))] (0:171:2 - 1)
		IfNotBlocked
		reached[3][138] = 1;
		spin_assert((((int)now.EP_Stack)==255), "(EP_Stack==255)", II, tt, t);
		/* merge: EP_Stack = EP(171, 139, 171) */
		reached[3][139] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.EP_Stack);
		now.EP_Stack = ((int)now.EP);
#ifdef VAR_RANGES
		logval("EP_Stack", ((int)now.EP_Stack));
#endif
		;
		/* merge: EP = ( (((pending_exp>>0)&1)) -> (0) : (1) )(171, 141, 171) */
		reached[3][141] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.EP);
		now.EP = ( (((((int)now.pending_exp)>>0)&1)) ? (0) : (1) );
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: .(goto)(171, 145, 171) */
		reached[3][145] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 265: // STATE 145 - c2res.pml:441 - [.(goto)] (0:171:0 - 2)
		IfNotBlocked
		reached[3][145] = 1;
		;
		_m = 3; goto P999; /* 0 */
	case 266: // STATE 143 - c2res.pml:441 - [(1)] (171:0:0 - 1)
		IfNotBlocked
		reached[3][143] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(171, 145, 171) */
		reached[3][145] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 267: // STATE 147 - c2res.pml:442 - [(((2+1)==EP))] (154:0:0 - 1)
		IfNotBlocked
		reached[3][147] = 1;
		if (!(((2+1)==((int)now.EP))))
			continue;
		/* merge: assert((EP==(2+1)))(0, 148, 154) */
		reached[3][148] = 1;
		spin_assert((((int)now.EP)==(2+1)), "(EP==(2+1))", II, tt, t);
		_m = 3; goto P999; /* 1 */
	case 268: // STATE 150 - c2res.pml:68 - [assert(((1<2)&&(1<8)))] (0:169:1 - 1)
		IfNotBlocked
		reached[3][150] = 1;
		spin_assert(((1<2)&&(1<8)), "((1<2)&&(1<8))", II, tt, t);
		/* merge: pending_exp = (pending_exp|(1<<1))(169, 151, 169) */
		reached[3][151] = 1;
		(trpt+1)->bup.oval = ((int)now.pending_exp);
		now.pending_exp = (((int)now.pending_exp)|(1<<1));
#ifdef VAR_RANGES
		logval("pending_exp", ((int)now.pending_exp));
#endif
		;
		/* merge: .(goto)(0, 155, 169) */
		reached[3][155] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 269: // STATE 156 - c2res.pml:442 - [((((((pending_exp>>0)&1)&&((BASEPRI==0)||(15<BASEPRI)))||(((pending_exp>>1)&1)&&((BASEPRI==0)||(15<BASEPRI))))&&(EP>=2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][156] = 1;
		if (!((((((((int)now.pending_exp)>>0)&1)&&((((int)now.BASEPRI)==0)||(15<((int)now.BASEPRI))))||(((((int)now.pending_exp)>>1)&1)&&((((int)now.BASEPRI)==0)||(15<((int)now.BASEPRI)))))&&(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 270: // STATE 157 - c2res.pml:442 - [((EP>=2))] (165:0:1 - 1)
		IfNotBlocked
		reached[3][157] = 1;
		if (!((((int)now.EP)>=2)))
			continue;
		/* merge: chain_tick_used = 0(0, 158, 165) */
		reached[3][158] = 1;
		(trpt+1)->bup.oval = ((int)now.chain_tick_used);
		now.chain_tick_used = 0;
#ifdef VAR_RANGES
		logval("chain_tick_used", ((int)now.chain_tick_used));
#endif
		;
		/* merge: .(goto)(0, 162, 165) */
		reached[3][162] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 271: // STATE 163 - c2res.pml:83 - [assert((EP_Stack==255))] (0:172:2 - 1)
		IfNotBlocked
		reached[3][163] = 1;
		spin_assert((((int)now.EP_Stack)==255), "(EP_Stack==255)", II, tt, t);
		/* merge: EP_Stack = EP(172, 164, 172) */
		reached[3][164] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.EP_Stack);
		now.EP_Stack = ((int)now.EP);
#ifdef VAR_RANGES
		logval("EP_Stack", ((int)now.EP_Stack));
#endif
		;
		/* merge: EP = ( (((pending_exp>>0)&1)) -> (0) : (1) )(172, 166, 172) */
		reached[3][166] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.EP);
		now.EP = ( (((((int)now.pending_exp)>>0)&1)) ? (0) : (1) );
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: .(goto)(172, 170, 172) */
		reached[3][170] = 1;
		;
		/* merge: .(goto)(0, 173, 172) */
		reached[3][173] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 272: // STATE 170 - c2res.pml:442 - [.(goto)] (0:172:0 - 2)
		IfNotBlocked
		reached[3][170] = 1;
		;
		/* merge: .(goto)(0, 173, 172) */
		reached[3][173] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 273: // STATE 168 - c2res.pml:442 - [(1)] (172:0:0 - 1)
		IfNotBlocked
		reached[3][168] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(172, 170, 172) */
		reached[3][170] = 1;
		;
		/* merge: .(goto)(0, 173, 172) */
		reached[3][173] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 274: // STATE 175 - c2res.pml:444 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[3][175] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Process1 */
	case 275: // STATE 1 - c2res.pml:429 - [((2==EP))] (8:0:0 - 1)
		IfNotBlocked
		reached[2][1] = 1;
		if (!((2==((int)now.EP))))
			continue;
		/* merge: printf('Process1 running\\\\n')(0, 2, 8) */
		reached[2][2] = 1;
		Printf("Process1 running\\n");
		_m = 3; goto P999; /* 1 */
	case 276: // STATE 4 - c2res.pml:68 - [assert(((1<2)&&(1<8)))] (0:23:1 - 1)
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
	case 277: // STATE 10 - c2res.pml:429 - [((((((pending_exp>>0)&1)&&((BASEPRI==0)||(15<BASEPRI)))||(((pending_exp>>1)&1)&&((BASEPRI==0)||(15<BASEPRI))))&&(EP>=2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][10] = 1;
		if (!((((((((int)now.pending_exp)>>0)&1)&&((((int)now.BASEPRI)==0)||(15<((int)now.BASEPRI))))||(((((int)now.pending_exp)>>1)&1)&&((((int)now.BASEPRI)==0)||(15<((int)now.BASEPRI)))))&&(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 278: // STATE 11 - c2res.pml:429 - [((EP>=2))] (19:0:1 - 1)
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
	case 279: // STATE 17 - c2res.pml:83 - [assert((EP_Stack==255))] (0:50:2 - 1)
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
	case 280: // STATE 24 - c2res.pml:429 - [.(goto)] (0:50:0 - 2)
		IfNotBlocked
		reached[2][24] = 1;
		;
		_m = 3; goto P999; /* 0 */
	case 281: // STATE 22 - c2res.pml:429 - [(1)] (50:0:0 - 1)
		IfNotBlocked
		reached[2][22] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(50, 24, 50) */
		reached[2][24] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 282: // STATE 26 - c2res.pml:430 - [((2==EP))] (33:0:0 - 1)
		IfNotBlocked
		reached[2][26] = 1;
		if (!((2==((int)now.EP))))
			continue;
		/* merge: assert((EP==2))(0, 27, 33) */
		reached[2][27] = 1;
		spin_assert((((int)now.EP)==2), "(EP==2)", II, tt, t);
		_m = 3; goto P999; /* 1 */
	case 283: // STATE 29 - c2res.pml:68 - [assert(((1<2)&&(1<8)))] (0:48:1 - 1)
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
	case 284: // STATE 35 - c2res.pml:430 - [((((((pending_exp>>0)&1)&&((BASEPRI==0)||(15<BASEPRI)))||(((pending_exp>>1)&1)&&((BASEPRI==0)||(15<BASEPRI))))&&(EP>=2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][35] = 1;
		if (!((((((((int)now.pending_exp)>>0)&1)&&((((int)now.BASEPRI)==0)||(15<((int)now.BASEPRI))))||(((((int)now.pending_exp)>>1)&1)&&((((int)now.BASEPRI)==0)||(15<((int)now.BASEPRI)))))&&(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 285: // STATE 36 - c2res.pml:430 - [((EP>=2))] (44:0:1 - 1)
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
	case 286: // STATE 42 - c2res.pml:83 - [assert((EP_Stack==255))] (0:51:2 - 1)
		IfNotBlocked
		reached[2][42] = 1;
		spin_assert((((int)now.EP_Stack)==255), "(EP_Stack==255)", II, tt, t);
		/* merge: EP_Stack = EP(51, 43, 51) */
		reached[2][43] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.EP_Stack);
		now.EP_Stack = ((int)now.EP);
#ifdef VAR_RANGES
		logval("EP_Stack", ((int)now.EP_Stack));
#endif
		;
		/* merge: EP = ( (((pending_exp>>0)&1)) -> (0) : (1) )(51, 45, 51) */
		reached[2][45] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.EP);
		now.EP = ( (((((int)now.pending_exp)>>0)&1)) ? (0) : (1) );
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: .(goto)(51, 49, 51) */
		reached[2][49] = 1;
		;
		/* merge: .(goto)(0, 52, 51) */
		reached[2][52] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 287: // STATE 49 - c2res.pml:430 - [.(goto)] (0:51:0 - 2)
		IfNotBlocked
		reached[2][49] = 1;
		;
		/* merge: .(goto)(0, 52, 51) */
		reached[2][52] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 288: // STATE 47 - c2res.pml:430 - [(1)] (51:0:0 - 1)
		IfNotBlocked
		reached[2][47] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(51, 49, 51) */
		reached[2][49] = 1;
		;
		/* merge: .(goto)(0, 52, 51) */
		reached[2][52] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 289: // STATE 54 - c2res.pml:432 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][54] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC SysTick_Handler */
	case 290: // STATE 1 - c2res.pml:411 - [((EP==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		if (!((((int)now.EP)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 291: // STATE 2 - c2res.pml:133 - [((EP==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!((((int)now.EP)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 292: // STATE 3 - c2res.pml:73 - [assert(((1<2)&&(1<8)))] (0:20:1 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		spin_assert(((1<2)&&(1<8)), "((1<2)&&(1<8))", II, tt, t);
		/* merge: pending_exp = (pending_exp&~((1<<1)))(20, 4, 20) */
		reached[1][4] = 1;
		(trpt+1)->bup.oval = ((int)now.pending_exp);
		now.pending_exp = (((int)now.pending_exp)& ~((1<<1)));
#ifdef VAR_RANGES
		logval("pending_exp", ((int)now.pending_exp));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 293: // STATE 8 - c2res.pml:416 - [((1==EP))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][8] = 1;
		if (!((1==((int)now.EP))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 294: // STATE 9 - c2res.pml:68 - [assert(((0<2)&&(0<8)))] (0:18:1 - 1)
		IfNotBlocked
		reached[1][9] = 1;
		spin_assert(((0<2)&&(0<8)), "((0<2)&&(0<8))", II, tt, t);
		/* merge: pending_exp = (pending_exp|(1<<0))(18, 10, 18) */
		reached[1][10] = 1;
		(trpt+1)->bup.oval = ((int)now.pending_exp);
		now.pending_exp = (((int)now.pending_exp)|(1<<0));
#ifdef VAR_RANGES
		logval("pending_exp", ((int)now.pending_exp));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 295: // STATE 12 - c2res.pml:416 - [(((chain_tick_used==0)&&(((pending_exp>>1)&1)==0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][12] = 1;
		if (!(((((int)now.chain_tick_used)==0)&&(((((int)now.pending_exp)>>1)&1)==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 296: // STATE 13 - c2res.pml:68 - [assert(((1<2)&&(1<8)))] (0:45:2 - 1)
		IfNotBlocked
		reached[1][13] = 1;
		spin_assert(((1<2)&&(1<8)), "((1<2)&&(1<8))", II, tt, t);
		/* merge: pending_exp = (pending_exp|(1<<1))(45, 14, 45) */
		reached[1][14] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.pending_exp);
		now.pending_exp = (((int)now.pending_exp)|(1<<1));
#ifdef VAR_RANGES
		logval("pending_exp", ((int)now.pending_exp));
#endif
		;
		/* merge: chain_tick_used = 1(45, 16, 45) */
		reached[1][16] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.chain_tick_used);
		now.chain_tick_used = 1;
#ifdef VAR_RANGES
		logval("chain_tick_used", ((int)now.chain_tick_used));
#endif
		;
		/* merge: .(goto)(45, 19, 45) */
		reached[1][19] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 297: // STATE 19 - c2res.pml:416 - [.(goto)] (0:45:0 - 2)
		IfNotBlocked
		reached[1][19] = 1;
		;
		_m = 3; goto P999; /* 0 */
	case 298: // STATE 17 - c2res.pml:416 - [(1)] (45:0:0 - 1)
		IfNotBlocked
		reached[1][17] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(45, 19, 45) */
		reached[1][19] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 299: // STATE 21 - c2res.pml:421 - [((1==EP))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][21] = 1;
		if (!((1==((int)now.EP))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 300: // STATE 22 - c2res.pml:147 - [((pending_exp>0))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][22] = 1;
		if (!((((int)now.pending_exp)>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 301: // STATE 23 - c2res.pml:128 - [tmp = ( (((pending_exp>>0)&1)) -> (0) : (1) )] (0:43:4 - 1)
		IfNotBlocked
		reached[1][23] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)_this)->tmp);
		((P1 *)_this)->tmp = ( (((((int)now.pending_exp)>>0)&1)) ? (0) : (1) );
#ifdef VAR_RANGES
		logval("SysTick_Handler:tmp", ((int)((P1 *)_this)->tmp));
#endif
		;
		/* merge: assert((((BASEPRI==0)||(15<BASEPRI))&&(EP_Stack>=2)))(43, 25, 43) */
		reached[1][25] = 1;
		spin_assert((((((int)now.BASEPRI)==0)||(15<((int)now.BASEPRI)))&&(((int)now.EP_Stack)>=2)), "(((BASEPRI==0)||(15<BASEPRI))&&(EP_Stack>=2))", II, tt, t);
		/* merge: EP = tmp(43, 26, 43) */
		reached[1][26] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.EP);
		now.EP = ((int)((P1 *)_this)->tmp);
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: tmp = 255(43, 27, 43) */
		reached[1][27] = 1;
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
		/* merge: .(goto)(0, 35, 43) */
		reached[1][35] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 302: // STATE 30 - c2res.pml:88 - [assert((EP_Stack!=255))] (0:43:2 - 1)
		IfNotBlocked
		reached[1][30] = 1;
		spin_assert((((int)now.EP_Stack)!=255), "(EP_Stack!=255)", II, tt, t);
		/* merge: EP = EP_Stack(43, 31, 43) */
		reached[1][31] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.EP);
		now.EP = ((int)now.EP_Stack);
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: EP_Stack = 255(43, 32, 43) */
		reached[1][32] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.EP_Stack);
		now.EP_Stack = 255;
#ifdef VAR_RANGES
		logval("EP_Stack", ((int)now.EP_Stack));
#endif
		;
		/* merge: .(goto)(0, 35, 43) */
		reached[1][35] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 303: // STATE 37 - c2res.pml:421 - [(((chain_tick_used==0)&&(((pending_exp>>1)&1)==0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][37] = 1;
		if (!(((((int)now.chain_tick_used)==0)&&(((((int)now.pending_exp)>>1)&1)==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 304: // STATE 38 - c2res.pml:68 - [assert(((1<2)&&(1<8)))] (0:46:2 - 1)
		IfNotBlocked
		reached[1][38] = 1;
		spin_assert(((1<2)&&(1<8)), "((1<2)&&(1<8))", II, tt, t);
		/* merge: pending_exp = (pending_exp|(1<<1))(46, 39, 46) */
		reached[1][39] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.pending_exp);
		now.pending_exp = (((int)now.pending_exp)|(1<<1));
#ifdef VAR_RANGES
		logval("pending_exp", ((int)now.pending_exp));
#endif
		;
		/* merge: chain_tick_used = 1(46, 41, 46) */
		reached[1][41] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.chain_tick_used);
		now.chain_tick_used = 1;
#ifdef VAR_RANGES
		logval("chain_tick_used", ((int)now.chain_tick_used));
#endif
		;
		/* merge: .(goto)(46, 44, 46) */
		reached[1][44] = 1;
		;
		/* merge: .(goto)(0, 47, 46) */
		reached[1][47] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 305: // STATE 44 - c2res.pml:421 - [.(goto)] (0:46:0 - 2)
		IfNotBlocked
		reached[1][44] = 1;
		;
		/* merge: .(goto)(0, 47, 46) */
		reached[1][47] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 306: // STATE 42 - c2res.pml:421 - [(1)] (46:0:0 - 1)
		IfNotBlocked
		reached[1][42] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(46, 44, 46) */
		reached[1][44] = 1;
		;
		/* merge: .(goto)(0, 47, 46) */
		reached[1][47] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 307: // STATE 49 - c2res.pml:423 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][49] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC PendSV_Handler */
	case 308: // STATE 1 - c2res.pml:383 - [((EP==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		if (!((((int)now.EP)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 309: // STATE 2 - c2res.pml:133 - [((EP==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		if (!((((int)now.EP)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 310: // STATE 3 - c2res.pml:73 - [assert(((0<2)&&(0<8)))] (0:31:1 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		spin_assert(((0<2)&&(0<8)), "((0<2)&&(0<8))", II, tt, t);
		/* merge: pending_exp = (pending_exp&~((1<<0)))(31, 4, 31) */
		reached[0][4] = 1;
		(trpt+1)->bup.oval = ((int)now.pending_exp);
		now.pending_exp = (((int)now.pending_exp)& ~((1<<0)));
#ifdef VAR_RANGES
		logval("pending_exp", ((int)now.pending_exp));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 311: // STATE 8 - c2res.pml:388 - [((0==EP))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][8] = 1;
		if (!((0==((int)now.EP))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 312: // STATE 9 - c2res.pml:388 - [((tcb[EP_Stack].state==4))] (18:0:1 - 1)
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
	case 313: // STATE 11 - c2res.pml:305 - [((readyQueue[tcb[EP_Stack].prio].tailIndex<5))] (29:0:2 - 1)
		IfNotBlocked
		reached[0][11] = 1;
		if (!((((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)now.EP_Stack), 4) ].prio), 4) ].tailIndex)<5)))
			continue;
		/* merge: readyQueue[tcb[EP_Stack].prio].tasks[readyQueue[tcb[EP_Stack].prio].tailIndex] = EP_Stack(29, 12, 29) */
		reached[0][12] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)now.EP_Stack), 4) ].prio), 4) ].tasks[ Index(((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)now.EP_Stack), 4) ].prio), 4) ].tailIndex), 5) ]);
		now.readyQueue[ Index(now.tcb[ Index(now.EP_Stack, 4) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(now.EP_Stack, 4) ].prio, 4) ].tailIndex, 5) ] = ((int)now.EP_Stack);
#ifdef VAR_RANGES
		logval("readyQueue[tcb[EP_Stack].prio].tasks[readyQueue[tcb[EP_Stack].prio].tailIndex]", ((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)now.EP_Stack), 4) ].prio), 4) ].tasks[ Index(((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)now.EP_Stack), 4) ].prio), 4) ].tailIndex), 5) ]));
#endif
		;
		/* merge: readyQueue[tcb[EP_Stack].prio].tailIndex = (readyQueue[tcb[EP_Stack].prio].tailIndex+1)(29, 13, 29) */
		reached[0][13] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)now.EP_Stack), 4) ].prio), 4) ].tailIndex);
		now.readyQueue[ Index(now.tcb[ Index(now.EP_Stack, 4) ].prio, 4) ].tailIndex = (((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)now.EP_Stack), 4) ].prio), 4) ].tailIndex)+1);
#ifdef VAR_RANGES
		logval("readyQueue[tcb[EP_Stack].prio].tailIndex", ((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)now.EP_Stack), 4) ].prio), 4) ].tailIndex));
#endif
		;
		/* merge: .(goto)(0, 17, 29) */
		reached[0][17] = 1;
		;
		/* merge: .(goto)(0, 22, 29) */
		reached[0][22] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 314: // STATE 15 - c2res.pml:308 - [assert(0)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][15] = 1;
		spin_assert(0, "0", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 315: // STATE 23 - c2res.pml:388 - [(((chain_tick_used==0)&&(((pending_exp>>1)&1)==0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][23] = 1;
		if (!(((((int)now.chain_tick_used)==0)&&(((((int)now.pending_exp)>>1)&1)==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 316: // STATE 24 - c2res.pml:68 - [assert(((1<2)&&(1<8)))] (0:60:2 - 1)
		IfNotBlocked
		reached[0][24] = 1;
		spin_assert(((1<2)&&(1<8)), "((1<2)&&(1<8))", II, tt, t);
		/* merge: pending_exp = (pending_exp|(1<<1))(60, 25, 60) */
		reached[0][25] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.pending_exp);
		now.pending_exp = (((int)now.pending_exp)|(1<<1));
#ifdef VAR_RANGES
		logval("pending_exp", ((int)now.pending_exp));
#endif
		;
		/* merge: chain_tick_used = 1(60, 27, 60) */
		reached[0][27] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.chain_tick_used);
		now.chain_tick_used = 1;
#ifdef VAR_RANGES
		logval("chain_tick_used", ((int)now.chain_tick_used));
#endif
		;
		/* merge: .(goto)(60, 30, 60) */
		reached[0][30] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 317: // STATE 30 - c2res.pml:388 - [.(goto)] (0:60:0 - 2)
		IfNotBlocked
		reached[0][30] = 1;
		;
		_m = 3; goto P999; /* 0 */
	case 318: // STATE 28 - c2res.pml:388 - [(1)] (60:0:0 - 1)
		IfNotBlocked
		reached[0][28] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(60, 30, 60) */
		reached[0][30] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 319: // STATE 32 - c2res.pml:396 - [((0==EP))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][32] = 1;
		if (!((0==((int)now.EP))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 320: // STATE 33 - c2res.pml:362 - [prio = 0] (0:46:3 - 1)
		IfNotBlocked
		reached[0][33] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->_4_3_4_prio);
		((P0 *)_this)->_4_3_4_prio = 0;
#ifdef VAR_RANGES
		logval("PendSV_Handler:prio", ((int)((P0 *)_this)->_4_3_4_prio));
#endif
		;
		/* merge: top_task = 0(46, 34, 46) */
		reached[0][34] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->_4_3_4_top_task);
		((P0 *)_this)->_4_3_4_top_task = 0;
#ifdef VAR_RANGES
		logval("PendSV_Handler:top_task", ((int)((P0 *)_this)->_4_3_4_top_task));
#endif
		;
		/* merge: found = 0(46, 35, 46) */
		reached[0][35] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P0 *)_this)->_4_3_4_found);
		((P0 *)_this)->_4_3_4_found = 0;
#ifdef VAR_RANGES
		logval("PendSV_Handler:found", ((int)((P0 *)_this)->_4_3_4_found));
#endif
		;
		/* merge: .(goto)(0, 47, 46) */
		reached[0][47] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 321: // STATE 36 - c2res.pml:365 - [(((prio<4)&&!(found)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][36] = 1;
		if (!(((((int)((P0 *)_this)->_4_3_4_prio)<4)&& !(((int)((P0 *)_this)->_4_3_4_found)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 322: // STATE 37 - c2res.pml:367 - [((readyQueue[prio].tailIndex>0))] (46:0:2 - 1)
		IfNotBlocked
		reached[0][37] = 1;
		if (!((((int)now.readyQueue[ Index(((int)((P0 *)_this)->_4_3_4_prio), 4) ].tailIndex)>0)))
			continue;
		/* merge: top_task = readyQueue[prio].tasks[0](46, 38, 46) */
		reached[0][38] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->_4_3_4_top_task);
		((P0 *)_this)->_4_3_4_top_task = ((int)now.readyQueue[ Index(((int)((P0 *)_this)->_4_3_4_prio), 4) ].tasks[0]);
#ifdef VAR_RANGES
		logval("PendSV_Handler:top_task", ((int)((P0 *)_this)->_4_3_4_top_task));
#endif
		;
		/* merge: found = 1(46, 39, 46) */
		reached[0][39] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->_4_3_4_found);
		((P0 *)_this)->_4_3_4_found = 1;
#ifdef VAR_RANGES
		logval("PendSV_Handler:found", ((int)((P0 *)_this)->_4_3_4_found));
#endif
		;
		/* merge: .(goto)(0, 43, 46) */
		reached[0][43] = 1;
		;
		/* merge: .(goto)(0, 47, 46) */
		reached[0][47] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 323: // STATE 41 - c2res.pml:370 - [prio = (prio+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][41] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->_4_3_4_prio);
		((P0 *)_this)->_4_3_4_prio = (((int)((P0 *)_this)->_4_3_4_prio)+1);
#ifdef VAR_RANGES
		logval("PendSV_Handler:prio", ((int)((P0 *)_this)->_4_3_4_prio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 324: // STATE 49 - c2res.pml:374 - [tmp = top_task] (0:58:2 - 3)
		IfNotBlocked
		reached[0][49] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->tmp);
		((P0 *)_this)->tmp = ((int)((P0 *)_this)->_4_3_4_top_task);
#ifdef VAR_RANGES
		logval("PendSV_Handler:tmp", ((int)((P0 *)_this)->tmp));
#endif
		;
		/* merge: topPrio = prio(58, 50, 58) */
		reached[0][50] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.topPrio);
		now.topPrio = ((int)((P0 *)_this)->_4_3_4_prio);
#ifdef VAR_RANGES
		logval("topPrio", ((int)now.topPrio));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 325: // STATE 52 - c2res.pml:396 - [(((chain_tick_used==0)&&(((pending_exp>>1)&1)==0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][52] = 1;
		if (!(((((int)now.chain_tick_used)==0)&&(((((int)now.pending_exp)>>1)&1)==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 326: // STATE 53 - c2res.pml:68 - [assert(((1<2)&&(1<8)))] (0:87:2 - 1)
		IfNotBlocked
		reached[0][53] = 1;
		spin_assert(((1<2)&&(1<8)), "((1<2)&&(1<8))", II, tt, t);
		/* merge: pending_exp = (pending_exp|(1<<1))(87, 54, 87) */
		reached[0][54] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.pending_exp);
		now.pending_exp = (((int)now.pending_exp)|(1<<1));
#ifdef VAR_RANGES
		logval("pending_exp", ((int)now.pending_exp));
#endif
		;
		/* merge: chain_tick_used = 1(87, 56, 87) */
		reached[0][56] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.chain_tick_used);
		now.chain_tick_used = 1;
#ifdef VAR_RANGES
		logval("chain_tick_used", ((int)now.chain_tick_used));
#endif
		;
		/* merge: .(goto)(87, 59, 87) */
		reached[0][59] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 327: // STATE 59 - c2res.pml:396 - [.(goto)] (0:87:0 - 2)
		IfNotBlocked
		reached[0][59] = 1;
		;
		_m = 3; goto P999; /* 0 */
	case 328: // STATE 57 - c2res.pml:396 - [(1)] (87:0:0 - 1)
		IfNotBlocked
		reached[0][57] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(87, 59, 87) */
		reached[0][59] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 329: // STATE 61 - c2res.pml:398 - [((0==EP))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][61] = 1;
		if (!((0==((int)now.EP))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 330: // STATE 62 - c2res.pml:315 - [idx = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][62] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->_4_4_6_idx);
		((P0 *)_this)->_4_4_6_idx = 0;
#ifdef VAR_RANGES
		logval("PendSV_Handler:idx", ((int)((P0 *)_this)->_4_4_6_idx));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 331: // STATE 63 - c2res.pml:316 - [((idx<(readyQueue[topPrio].tailIndex-1)))] (68:0:2 - 1)
		IfNotBlocked
		reached[0][63] = 1;
		if (!((((int)((P0 *)_this)->_4_4_6_idx)<(((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1))))
			continue;
		/* merge: readyQueue[topPrio].tasks[idx] = readyQueue[topPrio].tasks[(idx+1)](68, 64, 68) */
		reached[0][64] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index(((int)((P0 *)_this)->_4_4_6_idx), 5) ]);
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index(((P0 *)_this)->_4_4_6_idx, 5) ] = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index((((int)((P0 *)_this)->_4_4_6_idx)+1), 5) ]);
#ifdef VAR_RANGES
		logval("readyQueue[topPrio].tasks[PendSV_Handler:idx]", ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index(((int)((P0 *)_this)->_4_4_6_idx), 5) ]));
#endif
		;
		/* merge: idx = (idx+1)(68, 65, 68) */
		reached[0][65] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->_4_4_6_idx);
		((P0 *)_this)->_4_4_6_idx = (((int)((P0 *)_this)->_4_4_6_idx)+1);
#ifdef VAR_RANGES
		logval("PendSV_Handler:idx", ((int)((P0 *)_this)->_4_4_6_idx));
#endif
		;
		/* merge: .(goto)(0, 69, 68) */
		reached[0][69] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 332: // STATE 71 - c2res.pml:322 - [((readyQueue[topPrio].tailIndex>0))] (85:0:2 - 1)
		IfNotBlocked
		reached[0][71] = 1;
		if (!((((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)>0)))
			continue;
		/* merge: readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)] = 255(85, 72, 85) */
		reached[0][72] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index((((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1), 5) ]);
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index((now.readyQueue[ Index(now.topPrio, 4) ].tailIndex-1), 5) ] = 255;
#ifdef VAR_RANGES
		logval("readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)]", ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index((((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1), 5) ]));
#endif
		;
		/* merge: readyQueue[topPrio].tailIndex = (readyQueue[topPrio].tailIndex-1)(85, 73, 85) */
		reached[0][73] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex);
		now.readyQueue[ Index(now.topPrio, 4) ].tailIndex = (((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1);
#ifdef VAR_RANGES
		logval("readyQueue[topPrio].tailIndex", ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex));
#endif
		;
		/* merge: .(goto)(0, 77, 85) */
		reached[0][77] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 333: // STATE 79 - c2res.pml:398 - [(((chain_tick_used==0)&&(((pending_exp>>1)&1)==0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][79] = 1;
		if (!(((((int)now.chain_tick_used)==0)&&(((((int)now.pending_exp)>>1)&1)==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 334: // STATE 80 - c2res.pml:68 - [assert(((1<2)&&(1<8)))] (0:98:2 - 1)
		IfNotBlocked
		reached[0][80] = 1;
		spin_assert(((1<2)&&(1<8)), "((1<2)&&(1<8))", II, tt, t);
		/* merge: pending_exp = (pending_exp|(1<<1))(98, 81, 98) */
		reached[0][81] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.pending_exp);
		now.pending_exp = (((int)now.pending_exp)|(1<<1));
#ifdef VAR_RANGES
		logval("pending_exp", ((int)now.pending_exp));
#endif
		;
		/* merge: chain_tick_used = 1(98, 83, 98) */
		reached[0][83] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.chain_tick_used);
		now.chain_tick_used = 1;
#ifdef VAR_RANGES
		logval("chain_tick_used", ((int)now.chain_tick_used));
#endif
		;
		/* merge: .(goto)(98, 86, 98) */
		reached[0][86] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 335: // STATE 86 - c2res.pml:398 - [.(goto)] (0:98:0 - 2)
		IfNotBlocked
		reached[0][86] = 1;
		;
		_m = 3; goto P999; /* 0 */
	case 336: // STATE 84 - c2res.pml:398 - [(1)] (98:0:0 - 1)
		IfNotBlocked
		reached[0][84] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(98, 86, 98) */
		reached[0][86] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 337: // STATE 88 - c2res.pml:399 - [((0==EP))] (96:0:1 - 1)
		IfNotBlocked
		reached[0][88] = 1;
		if (!((0==((int)now.EP))))
			continue;
		/* merge: tcb[tmp].state = 4(0, 89, 96) */
		reached[0][89] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[ Index(((int)((P0 *)_this)->tmp), 4) ].state);
		now.tcb[ Index(((P0 *)_this)->tmp, 4) ].state = 4;
#ifdef VAR_RANGES
		logval("tcb[PendSV_Handler:tmp].state", ((int)now.tcb[ Index(((int)((P0 *)_this)->tmp), 4) ].state));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 338: // STATE 90 - c2res.pml:399 - [(((chain_tick_used==0)&&(((pending_exp>>1)&1)==0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][90] = 1;
		if (!(((((int)now.chain_tick_used)==0)&&(((((int)now.pending_exp)>>1)&1)==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 339: // STATE 91 - c2res.pml:68 - [assert(((1<2)&&(1<8)))] (0:111:2 - 1)
		IfNotBlocked
		reached[0][91] = 1;
		spin_assert(((1<2)&&(1<8)), "((1<2)&&(1<8))", II, tt, t);
		/* merge: pending_exp = (pending_exp|(1<<1))(111, 92, 111) */
		reached[0][92] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.pending_exp);
		now.pending_exp = (((int)now.pending_exp)|(1<<1));
#ifdef VAR_RANGES
		logval("pending_exp", ((int)now.pending_exp));
#endif
		;
		/* merge: chain_tick_used = 1(111, 94, 111) */
		reached[0][94] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.chain_tick_used);
		now.chain_tick_used = 1;
#ifdef VAR_RANGES
		logval("chain_tick_used", ((int)now.chain_tick_used));
#endif
		;
		/* merge: .(goto)(111, 97, 111) */
		reached[0][97] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 340: // STATE 97 - c2res.pml:399 - [.(goto)] (0:111:0 - 2)
		IfNotBlocked
		reached[0][97] = 1;
		;
		_m = 3; goto P999; /* 0 */
	case 341: // STATE 95 - c2res.pml:399 - [(1)] (111:0:0 - 1)
		IfNotBlocked
		reached[0][95] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(111, 97, 111) */
		reached[0][97] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 342: // STATE 99 - c2res.pml:400 - [((0==EP))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][99] = 1;
		if (!((0==((int)now.EP))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 343: // STATE 100 - c2res.pml:97 - [assert((((EP_Stack!=255)&&(EP_Stack>=2))&&(tmp>=2)))] (0:109:1 - 1)
		IfNotBlocked
		reached[0][100] = 1;
		spin_assert((((((int)now.EP_Stack)!=255)&&(((int)now.EP_Stack)>=2))&&(((int)((P0 *)_this)->tmp)>=2)), "(((EP_Stack!=255)&&(EP_Stack>=2))&&(tmp>=2))", II, tt, t);
		/* merge: EP_Stack = tmp(109, 101, 109) */
		reached[0][101] = 1;
		(trpt+1)->bup.oval = ((int)now.EP_Stack);
		now.EP_Stack = ((int)((P0 *)_this)->tmp);
#ifdef VAR_RANGES
		logval("EP_Stack", ((int)now.EP_Stack));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 344: // STATE 103 - c2res.pml:400 - [(((chain_tick_used==0)&&(((pending_exp>>1)&1)==0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][103] = 1;
		if (!(((((int)now.chain_tick_used)==0)&&(((((int)now.pending_exp)>>1)&1)==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 345: // STATE 104 - c2res.pml:68 - [assert(((1<2)&&(1<8)))] (0:136:2 - 1)
		IfNotBlocked
		reached[0][104] = 1;
		spin_assert(((1<2)&&(1<8)), "((1<2)&&(1<8))", II, tt, t);
		/* merge: pending_exp = (pending_exp|(1<<1))(136, 105, 136) */
		reached[0][105] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.pending_exp);
		now.pending_exp = (((int)now.pending_exp)|(1<<1));
#ifdef VAR_RANGES
		logval("pending_exp", ((int)now.pending_exp));
#endif
		;
		/* merge: chain_tick_used = 1(136, 107, 136) */
		reached[0][107] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.chain_tick_used);
		now.chain_tick_used = 1;
#ifdef VAR_RANGES
		logval("chain_tick_used", ((int)now.chain_tick_used));
#endif
		;
		/* merge: .(goto)(136, 110, 136) */
		reached[0][110] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 346: // STATE 110 - c2res.pml:400 - [.(goto)] (0:136:0 - 2)
		IfNotBlocked
		reached[0][110] = 1;
		;
		_m = 3; goto P999; /* 0 */
	case 347: // STATE 108 - c2res.pml:400 - [(1)] (136:0:0 - 1)
		IfNotBlocked
		reached[0][108] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(136, 110, 136) */
		reached[0][110] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 348: // STATE 112 - c2res.pml:403 - [((0==EP))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][112] = 1;
		if (!((0==((int)now.EP))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 349: // STATE 113 - c2res.pml:147 - [((pending_exp>0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][113] = 1;
		if (!((((int)now.pending_exp)>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 350: // STATE 114 - c2res.pml:128 - [tmp = ( (((pending_exp>>0)&1)) -> (0) : (1) )] (0:134:4 - 1)
		IfNotBlocked
		reached[0][114] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->tmp);
		((P0 *)_this)->tmp = ( (((((int)now.pending_exp)>>0)&1)) ? (0) : (1) );
#ifdef VAR_RANGES
		logval("PendSV_Handler:tmp", ((int)((P0 *)_this)->tmp));
#endif
		;
		/* merge: assert((((BASEPRI==0)||(15<BASEPRI))&&(EP_Stack>=2)))(134, 116, 134) */
		reached[0][116] = 1;
		spin_assert((((((int)now.BASEPRI)==0)||(15<((int)now.BASEPRI)))&&(((int)now.EP_Stack)>=2)), "(((BASEPRI==0)||(15<BASEPRI))&&(EP_Stack>=2))", II, tt, t);
		/* merge: EP = tmp(134, 117, 134) */
		reached[0][117] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.EP);
		now.EP = ((int)((P0 *)_this)->tmp);
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: tmp = 255(134, 118, 134) */
		reached[0][118] = 1;
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
		/* merge: .(goto)(0, 126, 134) */
		reached[0][126] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 351: // STATE 121 - c2res.pml:88 - [assert((EP_Stack!=255))] (0:134:2 - 1)
		IfNotBlocked
		reached[0][121] = 1;
		spin_assert((((int)now.EP_Stack)!=255), "(EP_Stack!=255)", II, tt, t);
		/* merge: EP = EP_Stack(134, 122, 134) */
		reached[0][122] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.EP);
		now.EP = ((int)now.EP_Stack);
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: EP_Stack = 255(134, 123, 134) */
		reached[0][123] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.EP_Stack);
		now.EP_Stack = 255;
#ifdef VAR_RANGES
		logval("EP_Stack", ((int)now.EP_Stack));
#endif
		;
		/* merge: .(goto)(0, 126, 134) */
		reached[0][126] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 352: // STATE 128 - c2res.pml:403 - [(((chain_tick_used==0)&&(((pending_exp>>1)&1)==0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][128] = 1;
		if (!(((((int)now.chain_tick_used)==0)&&(((((int)now.pending_exp)>>1)&1)==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 353: // STATE 129 - c2res.pml:68 - [assert(((1<2)&&(1<8)))] (0:137:2 - 1)
		IfNotBlocked
		reached[0][129] = 1;
		spin_assert(((1<2)&&(1<8)), "((1<2)&&(1<8))", II, tt, t);
		/* merge: pending_exp = (pending_exp|(1<<1))(137, 130, 137) */
		reached[0][130] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.pending_exp);
		now.pending_exp = (((int)now.pending_exp)|(1<<1));
#ifdef VAR_RANGES
		logval("pending_exp", ((int)now.pending_exp));
#endif
		;
		/* merge: chain_tick_used = 1(137, 132, 137) */
		reached[0][132] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.chain_tick_used);
		now.chain_tick_used = 1;
#ifdef VAR_RANGES
		logval("chain_tick_used", ((int)now.chain_tick_used));
#endif
		;
		/* merge: .(goto)(137, 135, 137) */
		reached[0][135] = 1;
		;
		/* merge: .(goto)(0, 138, 137) */
		reached[0][138] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 354: // STATE 135 - c2res.pml:403 - [.(goto)] (0:137:0 - 2)
		IfNotBlocked
		reached[0][135] = 1;
		;
		/* merge: .(goto)(0, 138, 137) */
		reached[0][138] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 355: // STATE 133 - c2res.pml:403 - [(1)] (137:0:0 - 1)
		IfNotBlocked
		reached[0][133] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(137, 135, 137) */
		reached[0][135] = 1;
		;
		/* merge: .(goto)(0, 138, 137) */
		reached[0][138] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 356: // STATE 140 - c2res.pml:405 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][140] = 1;
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

