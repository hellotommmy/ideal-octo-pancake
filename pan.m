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
	case 3: // STATE 1 - _spin_nvr.tmp:25 - [(((!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==2)))&&(EP>=2)))] (0:0:0 - 1)
		
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
	case 4: // STATE 3 - _spin_nvr.tmp:26 - [((!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==2))))] (0:0:0 - 1)
		
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
	case 5: // STATE 5 - _spin_nvr.tmp:27 - [(((!((pending_exp>0))&&!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1)))))&&!((EP==2))))] (0:0:0 - 1)
		
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
	case 6: // STATE 7 - _spin_nvr.tmp:28 - [(((!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==(2+1))))&&(EP>=2)))] (0:0:0 - 1)
		
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
		if (!((( !( !(((((int)now.tcb[ Index((2+1), 4) ].state)==1)&&(((((int)now.pending_exp)>>1)&1)==1))))&& !((((int)now.EP)==(2+1))))&&(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 9 - _spin_nvr.tmp:29 - [((!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==(2+1)))))] (0:0:0 - 1)
		
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
		reached[7][9] = 1;
		if (!(( !( !(((((int)now.tcb[ Index((2+1), 4) ].state)==1)&&(((((int)now.pending_exp)>>1)&1)==1))))&& !((((int)now.EP)==(2+1))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 11 - _spin_nvr.tmp:30 - [(((!((pending_exp>0))&&!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1)))))&&!((EP==(2+1)))))] (0:0:0 - 1)
		
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
		reached[7][11] = 1;
		if (!((( !((((int)now.pending_exp)>0))&& !( !(((((int)now.tcb[ Index((2+1), 4) ].state)==1)&&(((((int)now.pending_exp)>>1)&1)==1)))))&& !((((int)now.EP)==(2+1))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 13 - _spin_nvr.tmp:31 - [((EP>=2))] (0:0:0 - 1)
		
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
		reached[7][13] = 1;
		if (!((((int)now.EP)>=2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 17 - _spin_nvr.tmp:33 - [(!((pending_exp>0)))] (0:0:0 - 1)
		
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
		reached[7][17] = 1;
		if (!( !((((int)now.pending_exp)>0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 22 - _spin_nvr.tmp:37 - [((!((EP==2))&&(EP>=2)))] (0:0:0 - 1)
		
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
		reached[7][22] = 1;
		if (!(( !((((int)now.EP)==2))&&(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 24 - _spin_nvr.tmp:38 - [(!((EP==2)))] (0:0:0 - 1)
		
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
		reached[7][24] = 1;
		if (!( !((((int)now.EP)==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 26 - _spin_nvr.tmp:39 - [((!((pending_exp>0))&&!((EP==2))))] (0:0:0 - 1)
		
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
		reached[7][26] = 1;
		if (!(( !((((int)now.pending_exp)>0))&& !((((int)now.EP)==2)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 31 - _spin_nvr.tmp:43 - [((!((EP==(2+1)))&&(EP>=2)))] (0:0:0 - 1)
		
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
		reached[7][31] = 1;
		if (!(( !((((int)now.EP)==(2+1)))&&(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 33 - _spin_nvr.tmp:44 - [(!((EP==(2+1))))] (0:0:0 - 1)
		
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
		reached[7][33] = 1;
		if (!( !((((int)now.EP)==(2+1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 35 - _spin_nvr.tmp:45 - [((!((pending_exp>0))&&!((EP==(2+1)))))] (0:0:0 - 1)
		
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
		reached[7][35] = 1;
		if (!(( !((((int)now.pending_exp)>0))&& !((((int)now.EP)==(2+1))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 40 - _spin_nvr.tmp:49 - [(!((EP==2)))] (0:0:0 - 1)
		
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
		reached[7][40] = 1;
		if (!( !((((int)now.EP)==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 42 - _spin_nvr.tmp:50 - [(((!((pending_exp>0))&&!((EP==2)))||(!((EP==2))&&(EP>=2))))] (0:0:0 - 1)
		
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
		reached[7][42] = 1;
		if (!((( !((((int)now.pending_exp)>0))&& !((((int)now.EP)==2)))||( !((((int)now.EP)==2))&&(((int)now.EP)>=2)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 47 - _spin_nvr.tmp:54 - [(!((EP==(2+1))))] (0:0:0 - 1)
		
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
		reached[7][47] = 1;
		if (!( !((((int)now.EP)==(2+1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 49 - _spin_nvr.tmp:55 - [(((!((pending_exp>0))&&!((EP==(2+1))))||(!((EP==(2+1)))&&(EP>=2))))] (0:0:0 - 1)
		
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
		reached[7][49] = 1;
		if (!((( !((((int)now.pending_exp)>0))&& !((((int)now.EP)==(2+1))))||( !((((int)now.EP)==(2+1)))&&(((int)now.EP)>=2)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 54 - _spin_nvr.tmp:59 - [(!((EP==2)))] (0:0:0 - 1)
		
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
		reached[7][54] = 1;
		if (!( !((((int)now.EP)==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 56 - _spin_nvr.tmp:60 - [((!((EP==2))&&(EP>=2)))] (0:0:0 - 1)
		
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
		reached[7][56] = 1;
		if (!(( !((((int)now.EP)==2))&&(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 61 - _spin_nvr.tmp:64 - [(!((EP==(2+1))))] (0:0:0 - 1)
		
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
		reached[7][61] = 1;
		if (!( !((((int)now.EP)==(2+1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 63 - _spin_nvr.tmp:65 - [((!((EP==(2+1)))&&(EP>=2)))] (0:0:0 - 1)
		
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
		reached[7][63] = 1;
		if (!(( !((((int)now.EP)==(2+1)))&&(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 68 - _spin_nvr.tmp:69 - [((!((EP==2))&&(EP>=2)))] (0:0:0 - 1)
		
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
		if (!(( !((((int)now.EP)==2))&&(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 70 - _spin_nvr.tmp:70 - [(!((EP==2)))] (0:0:0 - 1)
		
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
		if (!( !((((int)now.EP)==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 72 - _spin_nvr.tmp:71 - [((!((pending_exp>0))&&!((EP==2))))] (0:0:0 - 1)
		
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
		reached[7][72] = 1;
		if (!(( !((((int)now.pending_exp)>0))&& !((((int)now.EP)==2)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 28: // STATE 77 - _spin_nvr.tmp:75 - [((!((EP==(2+1)))&&(EP>=2)))] (0:0:0 - 1)
		
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
		reached[7][77] = 1;
		if (!(( !((((int)now.EP)==(2+1)))&&(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 79 - _spin_nvr.tmp:76 - [(!((EP==(2+1))))] (0:0:0 - 1)
		
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
		reached[7][79] = 1;
		if (!( !((((int)now.EP)==(2+1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 30: // STATE 81 - _spin_nvr.tmp:77 - [((!((pending_exp>0))&&!((EP==(2+1)))))] (0:0:0 - 1)
		
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
		reached[7][81] = 1;
		if (!(( !((((int)now.pending_exp)>0))&& !((((int)now.EP)==(2+1))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 86 - _spin_nvr.tmp:81 - [(!((EP==2)))] (0:0:0 - 1)
		
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
		reached[7][86] = 1;
		if (!( !((((int)now.EP)==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 88 - _spin_nvr.tmp:82 - [(((!((pending_exp>0))&&!((EP==2)))||(!((EP==2))&&(EP>=2))))] (0:0:0 - 1)
		
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
		reached[7][88] = 1;
		if (!((( !((((int)now.pending_exp)>0))&& !((((int)now.EP)==2)))||( !((((int)now.EP)==2))&&(((int)now.EP)>=2)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 33: // STATE 93 - _spin_nvr.tmp:86 - [(!((EP==(2+1))))] (0:0:0 - 1)
		
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
		reached[7][93] = 1;
		if (!( !((((int)now.EP)==(2+1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 95 - _spin_nvr.tmp:87 - [(((!((pending_exp>0))&&!((EP==(2+1))))||(!((EP==(2+1)))&&(EP>=2))))] (0:0:0 - 1)
		
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
		reached[7][95] = 1;
		if (!((( !((((int)now.pending_exp)>0))&& !((((int)now.EP)==(2+1))))||( !((((int)now.EP)==(2+1)))&&(((int)now.EP)>=2)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 100 - _spin_nvr.tmp:91 - [((!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==2))))] (0:0:0 - 1)
		
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
		reached[7][100] = 1;
		if (!(( !( !(((((int)now.tcb[2].state)==1)&&(((((int)now.pending_exp)>>1)&1)==1))))&& !((((int)now.EP)==2)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 36: // STATE 102 - _spin_nvr.tmp:92 - [(((!((pending_exp>0))&&(!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==2))))||(!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&(!((EP==2))&&(EP>=2)))))] (0:0:0 - 1)
		
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
		reached[7][102] = 1;
		if (!((( !((((int)now.pending_exp)>0))&&( !( !(((((int)now.tcb[2].state)==1)&&(((((int)now.pending_exp)>>1)&1)==1))))&& !((((int)now.EP)==2))))||( !( !(((((int)now.tcb[2].state)==1)&&(((((int)now.pending_exp)>>1)&1)==1))))&&( !((((int)now.EP)==2))&&(((int)now.EP)>=2))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 37: // STATE 104 - _spin_nvr.tmp:93 - [((!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==(2+1)))))] (0:0:0 - 1)
		
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
		reached[7][104] = 1;
		if (!(( !( !(((((int)now.tcb[ Index((2+1), 4) ].state)==1)&&(((((int)now.pending_exp)>>1)&1)==1))))&& !((((int)now.EP)==(2+1))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 38: // STATE 106 - _spin_nvr.tmp:94 - [(((!((pending_exp>0))&&(!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==(2+1)))))||(!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&(!((EP==(2+1)))&&(EP>=2)))))] (0:0:0 - 1)
		
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
		reached[7][106] = 1;
		if (!((( !((((int)now.pending_exp)>0))&&( !( !(((((int)now.tcb[ Index((2+1), 4) ].state)==1)&&(((((int)now.pending_exp)>>1)&1)==1))))&& !((((int)now.EP)==(2+1)))))||( !( !(((((int)now.tcb[ Index((2+1), 4) ].state)==1)&&(((((int)now.pending_exp)>>1)&1)==1))))&&( !((((int)now.EP)==(2+1)))&&(((int)now.EP)>=2))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 39: // STATE 108 - _spin_nvr.tmp:95 - [((EP>=2))] (0:0:0 - 1)
		
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
		reached[7][108] = 1;
		if (!((((int)now.EP)>=2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 40: // STATE 112 - _spin_nvr.tmp:97 - [(!((pending_exp>0)))] (0:0:0 - 1)
		
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
		reached[7][112] = 1;
		if (!( !((((int)now.pending_exp)>0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 41: // STATE 117 - _spin_nvr.tmp:101 - [(!((EP==2)))] (0:0:0 - 1)
		
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
		reached[7][117] = 1;
		if (!( !((((int)now.EP)==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 42: // STATE 119 - _spin_nvr.tmp:102 - [((!((EP==2))&&(EP>=2)))] (0:0:0 - 1)
		
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
		reached[7][119] = 1;
		if (!(( !((((int)now.EP)==2))&&(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 43: // STATE 121 - _spin_nvr.tmp:103 - [((!((EP==2))&&(EP>=2)))] (0:0:0 - 1)
		
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
		reached[7][121] = 1;
		if (!(( !((((int)now.EP)==2))&&(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 44: // STATE 126 - _spin_nvr.tmp:107 - [(!((EP==(2+1))))] (0:0:0 - 1)
		
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
		reached[7][126] = 1;
		if (!( !((((int)now.EP)==(2+1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 45: // STATE 128 - _spin_nvr.tmp:108 - [((!((EP==(2+1)))&&(EP>=2)))] (0:0:0 - 1)
		
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
		reached[7][128] = 1;
		if (!(( !((((int)now.EP)==(2+1)))&&(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 46: // STATE 130 - _spin_nvr.tmp:109 - [((!((EP==(2+1)))&&(EP>=2)))] (0:0:0 - 1)
		
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
		reached[7][130] = 1;
		if (!(( !((((int)now.EP)==(2+1)))&&(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 47: // STATE 135 - _spin_nvr.tmp:113 - [((!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==2))))] (0:0:0 - 1)
		
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
		reached[7][135] = 1;
		if (!(( !( !(((((int)now.tcb[2].state)==1)&&(((((int)now.pending_exp)>>1)&1)==1))))&& !((((int)now.EP)==2)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 48: // STATE 137 - _spin_nvr.tmp:114 - [((!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==(2+1)))))] (0:0:0 - 1)
		
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
		reached[7][137] = 1;
		if (!(( !( !(((((int)now.tcb[ Index((2+1), 4) ].state)==1)&&(((((int)now.pending_exp)>>1)&1)==1))))&& !((((int)now.EP)==(2+1))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 49: // STATE 139 - _spin_nvr.tmp:115 - [((EP>=2))] (0:0:0 - 1)
		
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
		reached[7][139] = 1;
		if (!((((int)now.EP)>=2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 50: // STATE 143 - _spin_nvr.tmp:117 - [(((!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==2)))&&(EP>=2)))] (0:0:0 - 1)
		
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
		reached[7][143] = 1;
		if (!((( !( !(((((int)now.tcb[2].state)==1)&&(((((int)now.pending_exp)>>1)&1)==1))))&& !((((int)now.EP)==2)))&&(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 51: // STATE 145 - _spin_nvr.tmp:118 - [(((!(!(((tcb[2].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==2)))&&(EP>=2)))] (0:0:0 - 1)
		
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
		reached[7][145] = 1;
		if (!((( !( !(((((int)now.tcb[2].state)==1)&&(((((int)now.pending_exp)>>1)&1)==1))))&& !((((int)now.EP)==2)))&&(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 52: // STATE 147 - _spin_nvr.tmp:119 - [(((!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==(2+1))))&&(EP>=2)))] (0:0:0 - 1)
		
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
		reached[7][147] = 1;
		if (!((( !( !(((((int)now.tcb[ Index((2+1), 4) ].state)==1)&&(((((int)now.pending_exp)>>1)&1)==1))))&& !((((int)now.EP)==(2+1))))&&(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 53: // STATE 149 - _spin_nvr.tmp:120 - [(((!(!(((tcb[(2+1)].state==1)&&(((pending_exp>>1)&1)==1))))&&!((EP==(2+1))))&&(EP>=2)))] (0:0:0 - 1)
		
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
		reached[7][149] = 1;
		if (!((( !( !(((((int)now.tcb[ Index((2+1), 4) ].state)==1)&&(((((int)now.pending_exp)>>1)&1)==1))))&& !((((int)now.EP)==(2+1))))&&(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 54: // STATE 151 - _spin_nvr.tmp:121 - [((!((pending_exp>0))&&(EP>=2)))] (0:0:0 - 1)
		
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
		reached[7][151] = 1;
		if (!(( !((((int)now.pending_exp)>0))&&(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 55: // STATE 156 - _spin_nvr.tmp:123 - [-end-] (0:0:0 - 1)
		
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
		reached[7][156] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM exc_leads_to_user */
	case 56: // STATE 1 - _spin_nvr.tmp:14 - [((!(!((EP<2)))&&!((EP>=2))))] (0:0:0 - 1)
		
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
	case 57: // STATE 8 - _spin_nvr.tmp:19 - [(!((EP>=2)))] (0:0:0 - 1)
		
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
	case 58: // STATE 13 - _spin_nvr.tmp:21 - [-end-] (0:0:0 - 1)
		
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
	case 59: // STATE 1 - _spin_nvr.tmp:3 - [(!((EP>=2)))] (0:0:0 - 1)
		
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
	case 60: // STATE 8 - _spin_nvr.tmp:8 - [(!((EP>=2)))] (0:0:0 - 1)
		
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
	case 61: // STATE 13 - _spin_nvr.tmp:10 - [-end-] (0:0:0 - 1)
		
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
	case 62: // STATE 1 - c2.pml:306 - [i = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[4][1] = 1;
		(trpt+1)->bup.oval = ((int)((P4 *)_this)->i);
		((P4 *)_this)->i = 0;
#ifdef VAR_RANGES
		logval(":init::i", ((int)((P4 *)_this)->i));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 63: // STATE 2 - c2.pml:308 - [((i<4))] (0:0:0 - 1)
		IfNotBlocked
		reached[4][2] = 1;
		if (!((((int)((P4 *)_this)->i)<4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 64: // STATE 3 - c2.pml:172 - [idx = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[4][3] = 1;
		(trpt+1)->bup.oval = ((int)((P4 *)_this)->_7_15_idx);
		((P4 *)_this)->_7_15_idx = 0;
#ifdef VAR_RANGES
		logval(":init::idx", ((int)((P4 *)_this)->_7_15_idx));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 65: // STATE 4 - c2.pml:173 - [((idx<5))] (0:0:0 - 1)
		IfNotBlocked
		reached[4][4] = 1;
		if (!((((int)((P4 *)_this)->_7_15_idx)<5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 66: // STATE 5 - c2.pml:174 - [readyQueue[i].tasks[idx] = 255] (0:0:1 - 1)
		IfNotBlocked
		reached[4][5] = 1;
		(trpt+1)->bup.oval = ((int)now.readyQueue[ Index(((int)((P4 *)_this)->i), 4) ].tasks[ Index(((int)((P4 *)_this)->_7_15_idx), 5) ]);
		now.readyQueue[ Index(((P4 *)_this)->i, 4) ].tasks[ Index(((P4 *)_this)->_7_15_idx, 5) ] = 255;
#ifdef VAR_RANGES
		logval("readyQueue[:init::i].tasks[:init::idx]", ((int)now.readyQueue[ Index(((int)((P4 *)_this)->i), 4) ].tasks[ Index(((int)((P4 *)_this)->_7_15_idx), 5) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 67: // STATE 6 - c2.pml:175 - [idx = (idx+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[4][6] = 1;
		(trpt+1)->bup.oval = ((int)((P4 *)_this)->_7_15_idx);
		((P4 *)_this)->_7_15_idx = (((int)((P4 *)_this)->_7_15_idx)+1);
#ifdef VAR_RANGES
		logval(":init::idx", ((int)((P4 *)_this)->_7_15_idx));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 68: // STATE 12 - c2.pml:178 - [readyQueue[i].tailIndex = 0] (0:0:1 - 3)
		IfNotBlocked
		reached[4][12] = 1;
		(trpt+1)->bup.oval = ((int)now.readyQueue[ Index(((int)((P4 *)_this)->i), 4) ].tailIndex);
		now.readyQueue[ Index(((P4 *)_this)->i, 4) ].tailIndex = 0;
#ifdef VAR_RANGES
		logval("readyQueue[:init::i].tailIndex", ((int)now.readyQueue[ Index(((int)((P4 *)_this)->i), 4) ].tailIndex));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 69: // STATE 14 - c2.pml:310 - [i = (i+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[4][14] = 1;
		(trpt+1)->bup.oval = ((int)((P4 *)_this)->i);
		((P4 *)_this)->i = (((int)((P4 *)_this)->i)+1);
#ifdef VAR_RANGES
		logval(":init::i", ((int)((P4 *)_this)->i));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 70: // STATE 20 - c2.pml:315 - [tcb[2].prio = 2] (0:0:1 - 3)
		IfNotBlocked
		reached[4][20] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[2].prio);
		now.tcb[2].prio = 2;
#ifdef VAR_RANGES
		logval("tcb[2].prio", ((int)now.tcb[2].prio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 71: // STATE 21 - c2.pml:315 - [tcb[2].state = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[4][21] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[2].state);
		now.tcb[2].state = 1;
#ifdef VAR_RANGES
		logval("tcb[2].state", ((int)now.tcb[2].state));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 72: // STATE 22 - c2.pml:184 - [((readyQueue[2].tailIndex<5))] (0:0:0 - 1)
		IfNotBlocked
		reached[4][22] = 1;
		if (!((((int)now.readyQueue[2].tailIndex)<5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 73: // STATE 23 - c2.pml:185 - [readyQueue[2].tasks[readyQueue[2].tailIndex] = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[4][23] = 1;
		(trpt+1)->bup.oval = ((int)now.readyQueue[2].tasks[ Index(((int)now.readyQueue[2].tailIndex), 5) ]);
		now.readyQueue[2].tasks[ Index(now.readyQueue[2].tailIndex, 5) ] = 2;
#ifdef VAR_RANGES
		logval("readyQueue[2].tasks[readyQueue[2].tailIndex]", ((int)now.readyQueue[2].tasks[ Index(((int)now.readyQueue[2].tailIndex), 5) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 74: // STATE 24 - c2.pml:186 - [readyQueue[2].tailIndex = (readyQueue[2].tailIndex+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[4][24] = 1;
		(trpt+1)->bup.oval = ((int)now.readyQueue[2].tailIndex);
		now.readyQueue[2].tailIndex = (((int)now.readyQueue[2].tailIndex)+1);
#ifdef VAR_RANGES
		logval("readyQueue[2].tailIndex", ((int)now.readyQueue[2].tailIndex));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 75: // STATE 26 - c2.pml:187 - [assert(0)] (0:0:0 - 1)
		IfNotBlocked
		reached[4][26] = 1;
		spin_assert(0, "0", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 76: // STATE 30 - c2.pml:316 - [tcb[(2+1)].prio = 2] (0:0:1 - 3)
		IfNotBlocked
		reached[4][30] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[ Index((2+1), 4) ].prio);
		now.tcb[ Index((2+1), 4) ].prio = 2;
#ifdef VAR_RANGES
		logval("tcb[(2+1)].prio", ((int)now.tcb[ Index((2+1), 4) ].prio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 77: // STATE 31 - c2.pml:316 - [tcb[(2+1)].state = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[4][31] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[ Index((2+1), 4) ].state);
		now.tcb[ Index((2+1), 4) ].state = 1;
#ifdef VAR_RANGES
		logval("tcb[(2+1)].state", ((int)now.tcb[ Index((2+1), 4) ].state));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 78: // STATE 32 - c2.pml:184 - [((readyQueue[2].tailIndex<5))] (0:0:0 - 1)
		IfNotBlocked
		reached[4][32] = 1;
		if (!((((int)now.readyQueue[2].tailIndex)<5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 79: // STATE 33 - c2.pml:185 - [readyQueue[2].tasks[readyQueue[2].tailIndex] = (2+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[4][33] = 1;
		(trpt+1)->bup.oval = ((int)now.readyQueue[2].tasks[ Index(((int)now.readyQueue[2].tailIndex), 5) ]);
		now.readyQueue[2].tasks[ Index(now.readyQueue[2].tailIndex, 5) ] = (2+1);
#ifdef VAR_RANGES
		logval("readyQueue[2].tasks[readyQueue[2].tailIndex]", ((int)now.readyQueue[2].tasks[ Index(((int)now.readyQueue[2].tailIndex), 5) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 80: // STATE 34 - c2.pml:186 - [readyQueue[2].tailIndex = (readyQueue[2].tailIndex+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[4][34] = 1;
		(trpt+1)->bup.oval = ((int)now.readyQueue[2].tailIndex);
		now.readyQueue[2].tailIndex = (((int)now.readyQueue[2].tailIndex)+1);
#ifdef VAR_RANGES
		logval("readyQueue[2].tailIndex", ((int)now.readyQueue[2].tailIndex));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 81: // STATE 36 - c2.pml:187 - [assert(0)] (0:0:0 - 1)
		IfNotBlocked
		reached[4][36] = 1;
		spin_assert(0, "0", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 82: // STATE 40 - c2.pml:211 - [prio = 0] (0:53:3 - 1)
		IfNotBlocked
		reached[4][40] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)((P4 *)_this)->_7_18_prio);
		((P4 *)_this)->_7_18_prio = 0;
#ifdef VAR_RANGES
		logval(":init::prio", ((int)((P4 *)_this)->_7_18_prio));
#endif
		;
		/* merge: top_task = 0(53, 41, 53) */
		reached[4][41] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P4 *)_this)->_7_18_top_task);
		((P4 *)_this)->_7_18_top_task = 0;
#ifdef VAR_RANGES
		logval(":init::top_task", ((int)((P4 *)_this)->_7_18_top_task));
#endif
		;
		/* merge: found = 0(53, 42, 53) */
		reached[4][42] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P4 *)_this)->_7_18_found);
		((P4 *)_this)->_7_18_found = 0;
#ifdef VAR_RANGES
		logval(":init::found", ((int)((P4 *)_this)->_7_18_found));
#endif
		;
		/* merge: .(goto)(0, 54, 53) */
		reached[4][54] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 83: // STATE 43 - c2.pml:214 - [(((prio<4)&&!(found)))] (0:0:0 - 1)
		IfNotBlocked
		reached[4][43] = 1;
		if (!(((((int)((P4 *)_this)->_7_18_prio)<4)&& !(((int)((P4 *)_this)->_7_18_found)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 84: // STATE 44 - c2.pml:216 - [((readyQueue[prio].tailIndex>0))] (0:0:0 - 1)
		IfNotBlocked
		reached[4][44] = 1;
		if (!((((int)now.readyQueue[ Index(((int)((P4 *)_this)->_7_18_prio), 4) ].tailIndex)>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 85: // STATE 45 - c2.pml:217 - [top_task = readyQueue[prio].tasks[0]] (0:0:1 - 1)
		IfNotBlocked
		reached[4][45] = 1;
		(trpt+1)->bup.oval = ((int)((P4 *)_this)->_7_18_top_task);
		((P4 *)_this)->_7_18_top_task = ((int)now.readyQueue[ Index(((int)((P4 *)_this)->_7_18_prio), 4) ].tasks[0]);
#ifdef VAR_RANGES
		logval(":init::top_task", ((int)((P4 *)_this)->_7_18_top_task));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 86: // STATE 46 - c2.pml:218 - [found = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[4][46] = 1;
		(trpt+1)->bup.oval = ((int)((P4 *)_this)->_7_18_found);
		((P4 *)_this)->_7_18_found = 1;
#ifdef VAR_RANGES
		logval(":init::found", ((int)((P4 *)_this)->_7_18_found));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 87: // STATE 48 - c2.pml:219 - [prio = (prio+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[4][48] = 1;
		(trpt+1)->bup.oval = ((int)((P4 *)_this)->_7_18_prio);
		((P4 *)_this)->_7_18_prio = (((int)((P4 *)_this)->_7_18_prio)+1);
#ifdef VAR_RANGES
		logval(":init::prio", ((int)((P4 *)_this)->_7_18_prio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 88: // STATE 56 - c2.pml:223 - [EP = top_task] (0:0:1 - 3)
		IfNotBlocked
		reached[4][56] = 1;
		(trpt+1)->bup.oval = ((int)now.EP);
		now.EP = ((int)((P4 *)_this)->_7_18_top_task);
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 89: // STATE 57 - c2.pml:224 - [topPrio = prio] (0:0:1 - 1)
		IfNotBlocked
		reached[4][57] = 1;
		(trpt+1)->bup.oval = ((int)now.topPrio);
		now.topPrio = ((int)((P4 *)_this)->_7_18_prio);
#ifdef VAR_RANGES
		logval("topPrio", ((int)now.topPrio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 90: // STATE 59 - c2.pml:194 - [idx = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[4][59] = 1;
		(trpt+1)->bup.oval = ((int)((P4 *)_this)->_7_19_idx);
		((P4 *)_this)->_7_19_idx = 0;
#ifdef VAR_RANGES
		logval(":init::idx", ((int)((P4 *)_this)->_7_19_idx));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 91: // STATE 60 - c2.pml:195 - [((idx<(readyQueue[topPrio].tailIndex-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[4][60] = 1;
		if (!((((int)((P4 *)_this)->_7_19_idx)<(((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 92: // STATE 61 - c2.pml:196 - [readyQueue[topPrio].tasks[idx] = readyQueue[topPrio].tasks[(idx+1)]] (0:0:1 - 1)
		IfNotBlocked
		reached[4][61] = 1;
		(trpt+1)->bup.oval = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index(((int)((P4 *)_this)->_7_19_idx), 5) ]);
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index(((P4 *)_this)->_7_19_idx, 5) ] = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index((((int)((P4 *)_this)->_7_19_idx)+1), 5) ]);
#ifdef VAR_RANGES
		logval("readyQueue[topPrio].tasks[:init::idx]", ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index(((int)((P4 *)_this)->_7_19_idx), 5) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 93: // STATE 62 - c2.pml:197 - [idx = (idx+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[4][62] = 1;
		(trpt+1)->bup.oval = ((int)((P4 *)_this)->_7_19_idx);
		((P4 *)_this)->_7_19_idx = (((int)((P4 *)_this)->_7_19_idx)+1);
#ifdef VAR_RANGES
		logval(":init::idx", ((int)((P4 *)_this)->_7_19_idx));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 94: // STATE 68 - c2.pml:201 - [((readyQueue[topPrio].tailIndex>0))] (0:0:0 - 1)
		IfNotBlocked
		reached[4][68] = 1;
		if (!((((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 95: // STATE 69 - c2.pml:202 - [readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)] = 255] (0:0:1 - 1)
		IfNotBlocked
		reached[4][69] = 1;
		(trpt+1)->bup.oval = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index((((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1), 5) ]);
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index((now.readyQueue[ Index(now.topPrio, 4) ].tailIndex-1), 5) ] = 255;
#ifdef VAR_RANGES
		logval("readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)]", ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index((((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1), 5) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 96: // STATE 70 - c2.pml:203 - [readyQueue[topPrio].tailIndex = (readyQueue[topPrio].tailIndex-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[4][70] = 1;
		(trpt+1)->bup.oval = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex);
		now.readyQueue[ Index(now.topPrio, 4) ].tailIndex = (((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1);
#ifdef VAR_RANGES
		logval("readyQueue[topPrio].tailIndex", ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 97: // STATE 76 - c2.pml:321 - [tcb[EP].state = 4] (0:0:1 - 3)
		IfNotBlocked
		reached[4][76] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[ Index(((int)now.EP), 4) ].state);
		now.tcb[ Index(now.EP, 4) ].state = 4;
#ifdef VAR_RANGES
		logval("tcb[EP].state", ((int)now.tcb[ Index(((int)now.EP), 4) ].state));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 98: // STATE 77 - c2.pml:324 - [(run PendSV_Handler())] (0:0:0 - 1)
		IfNotBlocked
		reached[4][77] = 1;
		if (!(addproc(II, 1, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 99: // STATE 78 - c2.pml:324 - [(run SysTick_Handler())] (0:0:0 - 1)
		IfNotBlocked
		reached[4][78] = 1;
		if (!(addproc(II, 1, 1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 100: // STATE 80 - c2.pml:325 - [(run Process1())] (0:0:0 - 1)
		IfNotBlocked
		reached[4][80] = 1;
		if (!(addproc(II, 1, 2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 101: // STATE 81 - c2.pml:326 - [(run Process2())] (0:0:0 - 1)
		IfNotBlocked
		reached[4][81] = 1;
		if (!(addproc(II, 1, 3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 102: // STATE 82 - c2.pml:327 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[4][82] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Process2 */
	case 103: // STATE 1 - c2.pml:277 - [(((2+1)==EP))] (9:0:0 - 1)
		IfNotBlocked
		reached[3][1] = 1;
		if (!(((2+1)==((int)now.EP))))
			continue;
		/* merge: printf('Process2 running\\\\n')(0, 2, 9) */
		reached[3][2] = 1;
		Printf("Process2 running\\n");
		_m = 3; goto P999; /* 1 */
	case 104: // STATE 4 - c2.pml:47 - [assert(((1<2)&&(1<8)))] (0:24:1 - 1)
		IfNotBlocked
		reached[3][4] = 1;
		spin_assert(((1<2)&&(1<8)), "((1<2)&&(1<8))", II, tt, t);
		/* merge: pending_exp = (pending_exp|(1<<1))(24, 5, 24) */
		reached[3][5] = 1;
		(trpt+1)->bup.oval = ((int)now.pending_exp);
		now.pending_exp = (((int)now.pending_exp)|(1<<1));
#ifdef VAR_RANGES
		logval("pending_exp", ((int)now.pending_exp));
#endif
		;
		/* merge: .(goto)(0, 10, 24) */
		reached[3][10] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 105: // STATE 11 - c2.pml:277 - [((((((pending_exp>>0)&1)&&((BASEPRI==0)||(15<BASEPRI)))||(((pending_exp>>1)&1)&&((BASEPRI==0)||(15<BASEPRI))))&&(EP>=2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][11] = 1;
		if (!((((((((int)now.pending_exp)>>0)&1)&&((((int)now.BASEPRI)==0)||(15<((int)now.BASEPRI))))||(((((int)now.pending_exp)>>1)&1)&&((((int)now.BASEPRI)==0)||(15<((int)now.BASEPRI)))))&&(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 106: // STATE 12 - c2.pml:277 - [((EP>=2))] (20:0:1 - 1)
		IfNotBlocked
		reached[3][12] = 1;
		if (!((((int)now.EP)>=2)))
			continue;
		/* merge: chain_tick_used = 0(0, 13, 20) */
		reached[3][13] = 1;
		(trpt+1)->bup.oval = ((int)now.chain_tick_used);
		now.chain_tick_used = 0;
#ifdef VAR_RANGES
		logval("chain_tick_used", ((int)now.chain_tick_used));
#endif
		;
		/* merge: .(goto)(0, 17, 20) */
		reached[3][17] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 107: // STATE 18 - c2.pml:62 - [assert((EP_Stack==255))] (0:53:2 - 1)
		IfNotBlocked
		reached[3][18] = 1;
		spin_assert((((int)now.EP_Stack)==255), "(EP_Stack==255)", II, tt, t);
		/* merge: EP_Stack = EP(53, 19, 53) */
		reached[3][19] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.EP_Stack);
		now.EP_Stack = ((int)now.EP);
#ifdef VAR_RANGES
		logval("EP_Stack", ((int)now.EP_Stack));
#endif
		;
		/* merge: EP = ( (((pending_exp>>0)&1)) -> (0) : (1) )(53, 21, 53) */
		reached[3][21] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.EP);
		now.EP = ( (((((int)now.pending_exp)>>0)&1)) ? (0) : (1) );
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: .(goto)(53, 25, 53) */
		reached[3][25] = 1;
		;
		/* merge: .(goto)(0, 54, 53) */
		reached[3][54] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 108: // STATE 25 - c2.pml:277 - [.(goto)] (0:53:0 - 2)
		IfNotBlocked
		reached[3][25] = 1;
		;
		/* merge: .(goto)(0, 54, 53) */
		reached[3][54] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 109: // STATE 23 - c2.pml:277 - [(1)] (53:0:0 - 1)
		IfNotBlocked
		reached[3][23] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(53, 25, 53) */
		reached[3][25] = 1;
		;
		/* merge: .(goto)(0, 54, 53) */
		reached[3][54] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 110: // STATE 27 - c2.pml:278 - [(((2+1)==EP))] (35:0:0 - 1)
		IfNotBlocked
		reached[3][27] = 1;
		if (!(((2+1)==((int)now.EP))))
			continue;
		/* merge: assert((EP==(2+1)))(0, 28, 35) */
		reached[3][28] = 1;
		spin_assert((((int)now.EP)==(2+1)), "(EP==(2+1))", II, tt, t);
		_m = 3; goto P999; /* 1 */
	case 111: // STATE 30 - c2.pml:47 - [assert(((1<2)&&(1<8)))] (0:50:1 - 1)
		IfNotBlocked
		reached[3][30] = 1;
		spin_assert(((1<2)&&(1<8)), "((1<2)&&(1<8))", II, tt, t);
		/* merge: pending_exp = (pending_exp|(1<<1))(50, 31, 50) */
		reached[3][31] = 1;
		(trpt+1)->bup.oval = ((int)now.pending_exp);
		now.pending_exp = (((int)now.pending_exp)|(1<<1));
#ifdef VAR_RANGES
		logval("pending_exp", ((int)now.pending_exp));
#endif
		;
		/* merge: .(goto)(0, 36, 50) */
		reached[3][36] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 112: // STATE 37 - c2.pml:278 - [((((((pending_exp>>0)&1)&&((BASEPRI==0)||(15<BASEPRI)))||(((pending_exp>>1)&1)&&((BASEPRI==0)||(15<BASEPRI))))&&(EP>=2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][37] = 1;
		if (!((((((((int)now.pending_exp)>>0)&1)&&((((int)now.BASEPRI)==0)||(15<((int)now.BASEPRI))))||(((((int)now.pending_exp)>>1)&1)&&((((int)now.BASEPRI)==0)||(15<((int)now.BASEPRI)))))&&(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 113: // STATE 38 - c2.pml:278 - [((EP>=2))] (46:0:1 - 1)
		IfNotBlocked
		reached[3][38] = 1;
		if (!((((int)now.EP)>=2)))
			continue;
		/* merge: chain_tick_used = 0(0, 39, 46) */
		reached[3][39] = 1;
		(trpt+1)->bup.oval = ((int)now.chain_tick_used);
		now.chain_tick_used = 0;
#ifdef VAR_RANGES
		logval("chain_tick_used", ((int)now.chain_tick_used));
#endif
		;
		/* merge: .(goto)(0, 43, 46) */
		reached[3][43] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 114: // STATE 44 - c2.pml:62 - [assert((EP_Stack==255))] (0:53:2 - 1)
		IfNotBlocked
		reached[3][44] = 1;
		spin_assert((((int)now.EP_Stack)==255), "(EP_Stack==255)", II, tt, t);
		/* merge: EP_Stack = EP(53, 45, 53) */
		reached[3][45] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.EP_Stack);
		now.EP_Stack = ((int)now.EP);
#ifdef VAR_RANGES
		logval("EP_Stack", ((int)now.EP_Stack));
#endif
		;
		/* merge: EP = ( (((pending_exp>>0)&1)) -> (0) : (1) )(53, 47, 53) */
		reached[3][47] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.EP);
		now.EP = ( (((((int)now.pending_exp)>>0)&1)) ? (0) : (1) );
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: .(goto)(53, 51, 53) */
		reached[3][51] = 1;
		;
		/* merge: .(goto)(0, 54, 53) */
		reached[3][54] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 115: // STATE 51 - c2.pml:278 - [.(goto)] (0:53:0 - 2)
		IfNotBlocked
		reached[3][51] = 1;
		;
		/* merge: .(goto)(0, 54, 53) */
		reached[3][54] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 116: // STATE 49 - c2.pml:278 - [(1)] (53:0:0 - 1)
		IfNotBlocked
		reached[3][49] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(53, 51, 53) */
		reached[3][51] = 1;
		;
		/* merge: .(goto)(0, 54, 53) */
		reached[3][54] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 117: // STATE 56 - c2.pml:280 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[3][56] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Process1 */
	case 118: // STATE 1 - c2.pml:269 - [((2==EP))] (9:0:0 - 1)
		IfNotBlocked
		reached[2][1] = 1;
		if (!((2==((int)now.EP))))
			continue;
		/* merge: printf('Process1 running\\\\n')(0, 2, 9) */
		reached[2][2] = 1;
		Printf("Process1 running\\n");
		_m = 3; goto P999; /* 1 */
	case 119: // STATE 4 - c2.pml:47 - [assert(((1<2)&&(1<8)))] (0:24:1 - 1)
		IfNotBlocked
		reached[2][4] = 1;
		spin_assert(((1<2)&&(1<8)), "((1<2)&&(1<8))", II, tt, t);
		/* merge: pending_exp = (pending_exp|(1<<1))(24, 5, 24) */
		reached[2][5] = 1;
		(trpt+1)->bup.oval = ((int)now.pending_exp);
		now.pending_exp = (((int)now.pending_exp)|(1<<1));
#ifdef VAR_RANGES
		logval("pending_exp", ((int)now.pending_exp));
#endif
		;
		/* merge: .(goto)(0, 10, 24) */
		reached[2][10] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 120: // STATE 11 - c2.pml:269 - [((((((pending_exp>>0)&1)&&((BASEPRI==0)||(15<BASEPRI)))||(((pending_exp>>1)&1)&&((BASEPRI==0)||(15<BASEPRI))))&&(EP>=2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][11] = 1;
		if (!((((((((int)now.pending_exp)>>0)&1)&&((((int)now.BASEPRI)==0)||(15<((int)now.BASEPRI))))||(((((int)now.pending_exp)>>1)&1)&&((((int)now.BASEPRI)==0)||(15<((int)now.BASEPRI)))))&&(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 121: // STATE 12 - c2.pml:269 - [((EP>=2))] (20:0:1 - 1)
		IfNotBlocked
		reached[2][12] = 1;
		if (!((((int)now.EP)>=2)))
			continue;
		/* merge: chain_tick_used = 0(0, 13, 20) */
		reached[2][13] = 1;
		(trpt+1)->bup.oval = ((int)now.chain_tick_used);
		now.chain_tick_used = 0;
#ifdef VAR_RANGES
		logval("chain_tick_used", ((int)now.chain_tick_used));
#endif
		;
		/* merge: .(goto)(0, 17, 20) */
		reached[2][17] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 122: // STATE 18 - c2.pml:62 - [assert((EP_Stack==255))] (0:53:2 - 1)
		IfNotBlocked
		reached[2][18] = 1;
		spin_assert((((int)now.EP_Stack)==255), "(EP_Stack==255)", II, tt, t);
		/* merge: EP_Stack = EP(53, 19, 53) */
		reached[2][19] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.EP_Stack);
		now.EP_Stack = ((int)now.EP);
#ifdef VAR_RANGES
		logval("EP_Stack", ((int)now.EP_Stack));
#endif
		;
		/* merge: EP = ( (((pending_exp>>0)&1)) -> (0) : (1) )(53, 21, 53) */
		reached[2][21] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.EP);
		now.EP = ( (((((int)now.pending_exp)>>0)&1)) ? (0) : (1) );
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: .(goto)(53, 25, 53) */
		reached[2][25] = 1;
		;
		/* merge: .(goto)(0, 54, 53) */
		reached[2][54] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 123: // STATE 25 - c2.pml:269 - [.(goto)] (0:53:0 - 2)
		IfNotBlocked
		reached[2][25] = 1;
		;
		/* merge: .(goto)(0, 54, 53) */
		reached[2][54] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 124: // STATE 23 - c2.pml:269 - [(1)] (53:0:0 - 1)
		IfNotBlocked
		reached[2][23] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(53, 25, 53) */
		reached[2][25] = 1;
		;
		/* merge: .(goto)(0, 54, 53) */
		reached[2][54] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 125: // STATE 27 - c2.pml:270 - [((2==EP))] (35:0:0 - 1)
		IfNotBlocked
		reached[2][27] = 1;
		if (!((2==((int)now.EP))))
			continue;
		/* merge: assert((EP==2))(0, 28, 35) */
		reached[2][28] = 1;
		spin_assert((((int)now.EP)==2), "(EP==2)", II, tt, t);
		_m = 3; goto P999; /* 1 */
	case 126: // STATE 30 - c2.pml:47 - [assert(((1<2)&&(1<8)))] (0:50:1 - 1)
		IfNotBlocked
		reached[2][30] = 1;
		spin_assert(((1<2)&&(1<8)), "((1<2)&&(1<8))", II, tt, t);
		/* merge: pending_exp = (pending_exp|(1<<1))(50, 31, 50) */
		reached[2][31] = 1;
		(trpt+1)->bup.oval = ((int)now.pending_exp);
		now.pending_exp = (((int)now.pending_exp)|(1<<1));
#ifdef VAR_RANGES
		logval("pending_exp", ((int)now.pending_exp));
#endif
		;
		/* merge: .(goto)(0, 36, 50) */
		reached[2][36] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 127: // STATE 37 - c2.pml:270 - [((((((pending_exp>>0)&1)&&((BASEPRI==0)||(15<BASEPRI)))||(((pending_exp>>1)&1)&&((BASEPRI==0)||(15<BASEPRI))))&&(EP>=2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][37] = 1;
		if (!((((((((int)now.pending_exp)>>0)&1)&&((((int)now.BASEPRI)==0)||(15<((int)now.BASEPRI))))||(((((int)now.pending_exp)>>1)&1)&&((((int)now.BASEPRI)==0)||(15<((int)now.BASEPRI)))))&&(((int)now.EP)>=2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 128: // STATE 38 - c2.pml:270 - [((EP>=2))] (46:0:1 - 1)
		IfNotBlocked
		reached[2][38] = 1;
		if (!((((int)now.EP)>=2)))
			continue;
		/* merge: chain_tick_used = 0(0, 39, 46) */
		reached[2][39] = 1;
		(trpt+1)->bup.oval = ((int)now.chain_tick_used);
		now.chain_tick_used = 0;
#ifdef VAR_RANGES
		logval("chain_tick_used", ((int)now.chain_tick_used));
#endif
		;
		/* merge: .(goto)(0, 43, 46) */
		reached[2][43] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 129: // STATE 44 - c2.pml:62 - [assert((EP_Stack==255))] (0:53:2 - 1)
		IfNotBlocked
		reached[2][44] = 1;
		spin_assert((((int)now.EP_Stack)==255), "(EP_Stack==255)", II, tt, t);
		/* merge: EP_Stack = EP(53, 45, 53) */
		reached[2][45] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.EP_Stack);
		now.EP_Stack = ((int)now.EP);
#ifdef VAR_RANGES
		logval("EP_Stack", ((int)now.EP_Stack));
#endif
		;
		/* merge: EP = ( (((pending_exp>>0)&1)) -> (0) : (1) )(53, 47, 53) */
		reached[2][47] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.EP);
		now.EP = ( (((((int)now.pending_exp)>>0)&1)) ? (0) : (1) );
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: .(goto)(53, 51, 53) */
		reached[2][51] = 1;
		;
		/* merge: .(goto)(0, 54, 53) */
		reached[2][54] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 130: // STATE 51 - c2.pml:270 - [.(goto)] (0:53:0 - 2)
		IfNotBlocked
		reached[2][51] = 1;
		;
		/* merge: .(goto)(0, 54, 53) */
		reached[2][54] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 131: // STATE 49 - c2.pml:270 - [(1)] (53:0:0 - 1)
		IfNotBlocked
		reached[2][49] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(53, 51, 53) */
		reached[2][51] = 1;
		;
		/* merge: .(goto)(0, 54, 53) */
		reached[2][54] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 132: // STATE 56 - c2.pml:272 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][56] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC SysTick_Handler */
	case 133: // STATE 1 - c2.pml:254 - [((EP==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		if (!((((int)now.EP)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 134: // STATE 2 - c2.pml:110 - [((EP==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!((((int)now.EP)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 135: // STATE 3 - c2.pml:52 - [assert(((1<2)&&(1<8)))] (0:21:1 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		spin_assert(((1<2)&&(1<8)), "((1<2)&&(1<8))", II, tt, t);
		/* merge: pending_exp = (pending_exp&~((1<<1)))(21, 4, 21) */
		reached[1][4] = 1;
		(trpt+1)->bup.oval = ((int)now.pending_exp);
		now.pending_exp = (((int)now.pending_exp)& ~((1<<1)));
#ifdef VAR_RANGES
		logval("pending_exp", ((int)now.pending_exp));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 136: // STATE 8 - c2.pml:258 - [((1==EP))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][8] = 1;
		if (!((1==((int)now.EP))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 137: // STATE 9 - c2.pml:47 - [assert(((0<2)&&(0<8)))] (0:19:1 - 1)
		IfNotBlocked
		reached[1][9] = 1;
		spin_assert(((0<2)&&(0<8)), "((0<2)&&(0<8))", II, tt, t);
		/* merge: pending_exp = (pending_exp|(1<<0))(19, 10, 19) */
		reached[1][10] = 1;
		(trpt+1)->bup.oval = ((int)now.pending_exp);
		now.pending_exp = (((int)now.pending_exp)|(1<<0));
#ifdef VAR_RANGES
		logval("pending_exp", ((int)now.pending_exp));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 138: // STATE 12 - c2.pml:258 - [(((chain_tick_used==0)&&(((pending_exp>>1)&1)==0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][12] = 1;
		if (!(((((int)now.chain_tick_used)==0)&&(((((int)now.pending_exp)>>1)&1)==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 139: // STATE 13 - c2.pml:47 - [assert(((1<2)&&(1<8)))] (0:47:2 - 1)
		IfNotBlocked
		reached[1][13] = 1;
		spin_assert(((1<2)&&(1<8)), "((1<2)&&(1<8))", II, tt, t);
		/* merge: pending_exp = (pending_exp|(1<<1))(47, 14, 47) */
		reached[1][14] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.pending_exp);
		now.pending_exp = (((int)now.pending_exp)|(1<<1));
#ifdef VAR_RANGES
		logval("pending_exp", ((int)now.pending_exp));
#endif
		;
		/* merge: chain_tick_used = 1(47, 16, 47) */
		reached[1][16] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.chain_tick_used);
		now.chain_tick_used = 1;
#ifdef VAR_RANGES
		logval("chain_tick_used", ((int)now.chain_tick_used));
#endif
		;
		/* merge: .(goto)(47, 20, 47) */
		reached[1][20] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 140: // STATE 20 - c2.pml:258 - [.(goto)] (0:47:0 - 2)
		IfNotBlocked
		reached[1][20] = 1;
		;
		_m = 3; goto P999; /* 0 */
	case 141: // STATE 18 - c2.pml:258 - [(1)] (47:0:0 - 1)
		IfNotBlocked
		reached[1][18] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(47, 20, 47) */
		reached[1][20] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 142: // STATE 22 - c2.pml:261 - [((1==EP))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][22] = 1;
		if (!((1==((int)now.EP))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 143: // STATE 23 - c2.pml:124 - [((pending_exp>0))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][23] = 1;
		if (!((((int)now.pending_exp)>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 144: // STATE 24 - c2.pml:105 - [tmp = ( (((pending_exp>>0)&1)) -> (0) : (1) )] (0:45:4 - 1)
		IfNotBlocked
		reached[1][24] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)_this)->tmp);
		((P1 *)_this)->tmp = ( (((((int)now.pending_exp)>>0)&1)) ? (0) : (1) );
#ifdef VAR_RANGES
		logval("SysTick_Handler:tmp", ((int)((P1 *)_this)->tmp));
#endif
		;
		/* merge: assert((((BASEPRI==0)||(15<BASEPRI))&&(EP_Stack>=2)))(45, 26, 45) */
		reached[1][26] = 1;
		spin_assert((((((int)now.BASEPRI)==0)||(15<((int)now.BASEPRI)))&&(((int)now.EP_Stack)>=2)), "(((BASEPRI==0)||(15<BASEPRI))&&(EP_Stack>=2))", II, tt, t);
		/* merge: EP = tmp(45, 27, 45) */
		reached[1][27] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.EP);
		now.EP = ((int)((P1 *)_this)->tmp);
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: tmp = 255(45, 28, 45) */
		reached[1][28] = 1;
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
		/* merge: .(goto)(0, 36, 45) */
		reached[1][36] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 145: // STATE 31 - c2.pml:67 - [assert((EP_Stack!=255))] (0:45:2 - 1)
		IfNotBlocked
		reached[1][31] = 1;
		spin_assert((((int)now.EP_Stack)!=255), "(EP_Stack!=255)", II, tt, t);
		/* merge: EP = EP_Stack(45, 32, 45) */
		reached[1][32] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.EP);
		now.EP = ((int)now.EP_Stack);
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: EP_Stack = 255(45, 33, 45) */
		reached[1][33] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.EP_Stack);
		now.EP_Stack = 255;
#ifdef VAR_RANGES
		logval("EP_Stack", ((int)now.EP_Stack));
#endif
		;
		/* merge: .(goto)(0, 36, 45) */
		reached[1][36] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 146: // STATE 38 - c2.pml:261 - [(((chain_tick_used==0)&&(((pending_exp>>1)&1)==0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][38] = 1;
		if (!(((((int)now.chain_tick_used)==0)&&(((((int)now.pending_exp)>>1)&1)==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 147: // STATE 39 - c2.pml:47 - [assert(((1<2)&&(1<8)))] (0:48:2 - 1)
		IfNotBlocked
		reached[1][39] = 1;
		spin_assert(((1<2)&&(1<8)), "((1<2)&&(1<8))", II, tt, t);
		/* merge: pending_exp = (pending_exp|(1<<1))(48, 40, 48) */
		reached[1][40] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.pending_exp);
		now.pending_exp = (((int)now.pending_exp)|(1<<1));
#ifdef VAR_RANGES
		logval("pending_exp", ((int)now.pending_exp));
#endif
		;
		/* merge: chain_tick_used = 1(48, 42, 48) */
		reached[1][42] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.chain_tick_used);
		now.chain_tick_used = 1;
#ifdef VAR_RANGES
		logval("chain_tick_used", ((int)now.chain_tick_used));
#endif
		;
		/* merge: .(goto)(48, 46, 48) */
		reached[1][46] = 1;
		;
		/* merge: .(goto)(0, 49, 48) */
		reached[1][49] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 148: // STATE 46 - c2.pml:261 - [.(goto)] (0:48:0 - 2)
		IfNotBlocked
		reached[1][46] = 1;
		;
		/* merge: .(goto)(0, 49, 48) */
		reached[1][49] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 149: // STATE 44 - c2.pml:261 - [(1)] (48:0:0 - 1)
		IfNotBlocked
		reached[1][44] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(48, 46, 48) */
		reached[1][46] = 1;
		;
		/* merge: .(goto)(0, 49, 48) */
		reached[1][49] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 150: // STATE 51 - c2.pml:263 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][51] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC PendSV_Handler */
	case 151: // STATE 1 - c2.pml:232 - [((EP==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		if (!((((int)now.EP)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 152: // STATE 2 - c2.pml:110 - [((EP==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		if (!((((int)now.EP)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 153: // STATE 3 - c2.pml:52 - [assert(((0<2)&&(0<8)))] (0:27:1 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		spin_assert(((0<2)&&(0<8)), "((0<2)&&(0<8))", II, tt, t);
		/* merge: pending_exp = (pending_exp&~((1<<0)))(27, 4, 27) */
		reached[0][4] = 1;
		(trpt+1)->bup.oval = ((int)now.pending_exp);
		now.pending_exp = (((int)now.pending_exp)& ~((1<<0)));
#ifdef VAR_RANGES
		logval("pending_exp", ((int)now.pending_exp));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 154: // STATE 8 - c2.pml:236 - [((0==EP))] (17:0:1 - 1)
		IfNotBlocked
		reached[0][8] = 1;
		if (!((0==((int)now.EP))))
			continue;
		/* merge: tcb[EP_Stack].state = 1(0, 9, 17) */
		reached[0][9] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[ Index(((int)now.EP_Stack), 4) ].state);
		now.tcb[ Index(now.EP_Stack, 4) ].state = 1;
#ifdef VAR_RANGES
		logval("tcb[EP_Stack].state", ((int)now.tcb[ Index(((int)now.EP_Stack), 4) ].state));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 155: // STATE 10 - c2.pml:184 - [((readyQueue[tcb[EP_Stack].prio].tailIndex<5))] (25:0:2 - 1)
		IfNotBlocked
		reached[0][10] = 1;
		if (!((((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)now.EP_Stack), 4) ].prio), 4) ].tailIndex)<5)))
			continue;
		/* merge: readyQueue[tcb[EP_Stack].prio].tasks[readyQueue[tcb[EP_Stack].prio].tailIndex] = EP_Stack(25, 11, 25) */
		reached[0][11] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)now.EP_Stack), 4) ].prio), 4) ].tasks[ Index(((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)now.EP_Stack), 4) ].prio), 4) ].tailIndex), 5) ]);
		now.readyQueue[ Index(now.tcb[ Index(now.EP_Stack, 4) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(now.EP_Stack, 4) ].prio, 4) ].tailIndex, 5) ] = ((int)now.EP_Stack);
#ifdef VAR_RANGES
		logval("readyQueue[tcb[EP_Stack].prio].tasks[readyQueue[tcb[EP_Stack].prio].tailIndex]", ((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)now.EP_Stack), 4) ].prio), 4) ].tasks[ Index(((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)now.EP_Stack), 4) ].prio), 4) ].tailIndex), 5) ]));
#endif
		;
		/* merge: readyQueue[tcb[EP_Stack].prio].tailIndex = (readyQueue[tcb[EP_Stack].prio].tailIndex+1)(25, 12, 25) */
		reached[0][12] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)now.EP_Stack), 4) ].prio), 4) ].tailIndex);
		now.readyQueue[ Index(now.tcb[ Index(now.EP_Stack, 4) ].prio, 4) ].tailIndex = (((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)now.EP_Stack), 4) ].prio), 4) ].tailIndex)+1);
#ifdef VAR_RANGES
		logval("readyQueue[tcb[EP_Stack].prio].tailIndex", ((int)now.readyQueue[ Index(((int)now.tcb[ Index(((int)now.EP_Stack), 4) ].prio), 4) ].tailIndex));
#endif
		;
		/* merge: .(goto)(0, 16, 25) */
		reached[0][16] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 156: // STATE 14 - c2.pml:187 - [assert(0)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][14] = 1;
		spin_assert(0, "0", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 157: // STATE 18 - c2.pml:236 - [(((chain_tick_used==0)&&(((pending_exp>>1)&1)==0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][18] = 1;
		if (!(((((int)now.chain_tick_used)==0)&&(((((int)now.pending_exp)>>1)&1)==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 158: // STATE 19 - c2.pml:47 - [assert(((1<2)&&(1<8)))] (0:57:2 - 1)
		IfNotBlocked
		reached[0][19] = 1;
		spin_assert(((1<2)&&(1<8)), "((1<2)&&(1<8))", II, tt, t);
		/* merge: pending_exp = (pending_exp|(1<<1))(57, 20, 57) */
		reached[0][20] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.pending_exp);
		now.pending_exp = (((int)now.pending_exp)|(1<<1));
#ifdef VAR_RANGES
		logval("pending_exp", ((int)now.pending_exp));
#endif
		;
		/* merge: chain_tick_used = 1(57, 22, 57) */
		reached[0][22] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.chain_tick_used);
		now.chain_tick_used = 1;
#ifdef VAR_RANGES
		logval("chain_tick_used", ((int)now.chain_tick_used));
#endif
		;
		/* merge: .(goto)(57, 26, 57) */
		reached[0][26] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 159: // STATE 26 - c2.pml:236 - [.(goto)] (0:57:0 - 2)
		IfNotBlocked
		reached[0][26] = 1;
		;
		_m = 3; goto P999; /* 0 */
	case 160: // STATE 24 - c2.pml:236 - [(1)] (57:0:0 - 1)
		IfNotBlocked
		reached[0][24] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(57, 26, 57) */
		reached[0][26] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 161: // STATE 28 - c2.pml:240 - [((0==EP))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][28] = 1;
		if (!((0==((int)now.EP))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 162: // STATE 29 - c2.pml:211 - [prio = 0] (0:42:3 - 1)
		IfNotBlocked
		reached[0][29] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->_3_3_4_prio);
		((P0 *)_this)->_3_3_4_prio = 0;
#ifdef VAR_RANGES
		logval("PendSV_Handler:prio", ((int)((P0 *)_this)->_3_3_4_prio));
#endif
		;
		/* merge: top_task = 0(42, 30, 42) */
		reached[0][30] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->_3_3_4_top_task);
		((P0 *)_this)->_3_3_4_top_task = 0;
#ifdef VAR_RANGES
		logval("PendSV_Handler:top_task", ((int)((P0 *)_this)->_3_3_4_top_task));
#endif
		;
		/* merge: found = 0(42, 31, 42) */
		reached[0][31] = 1;
		(trpt+1)->bup.ovals[2] = ((int)((P0 *)_this)->_3_3_4_found);
		((P0 *)_this)->_3_3_4_found = 0;
#ifdef VAR_RANGES
		logval("PendSV_Handler:found", ((int)((P0 *)_this)->_3_3_4_found));
#endif
		;
		/* merge: .(goto)(0, 43, 42) */
		reached[0][43] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 163: // STATE 32 - c2.pml:214 - [(((prio<4)&&!(found)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][32] = 1;
		if (!(((((int)((P0 *)_this)->_3_3_4_prio)<4)&& !(((int)((P0 *)_this)->_3_3_4_found)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 164: // STATE 33 - c2.pml:216 - [((readyQueue[prio].tailIndex>0))] (42:0:2 - 1)
		IfNotBlocked
		reached[0][33] = 1;
		if (!((((int)now.readyQueue[ Index(((int)((P0 *)_this)->_3_3_4_prio), 4) ].tailIndex)>0)))
			continue;
		/* merge: top_task = readyQueue[prio].tasks[0](42, 34, 42) */
		reached[0][34] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->_3_3_4_top_task);
		((P0 *)_this)->_3_3_4_top_task = ((int)now.readyQueue[ Index(((int)((P0 *)_this)->_3_3_4_prio), 4) ].tasks[0]);
#ifdef VAR_RANGES
		logval("PendSV_Handler:top_task", ((int)((P0 *)_this)->_3_3_4_top_task));
#endif
		;
		/* merge: found = 1(42, 35, 42) */
		reached[0][35] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->_3_3_4_found);
		((P0 *)_this)->_3_3_4_found = 1;
#ifdef VAR_RANGES
		logval("PendSV_Handler:found", ((int)((P0 *)_this)->_3_3_4_found));
#endif
		;
		/* merge: .(goto)(0, 39, 42) */
		reached[0][39] = 1;
		;
		/* merge: .(goto)(0, 43, 42) */
		reached[0][43] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 165: // STATE 37 - c2.pml:219 - [prio = (prio+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][37] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->_3_3_4_prio);
		((P0 *)_this)->_3_3_4_prio = (((int)((P0 *)_this)->_3_3_4_prio)+1);
#ifdef VAR_RANGES
		logval("PendSV_Handler:prio", ((int)((P0 *)_this)->_3_3_4_prio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 166: // STATE 45 - c2.pml:223 - [tmp = top_task] (0:55:2 - 3)
		IfNotBlocked
		reached[0][45] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->tmp);
		((P0 *)_this)->tmp = ((int)((P0 *)_this)->_3_3_4_top_task);
#ifdef VAR_RANGES
		logval("PendSV_Handler:tmp", ((int)((P0 *)_this)->tmp));
#endif
		;
		/* merge: topPrio = prio(55, 46, 55) */
		reached[0][46] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.topPrio);
		now.topPrio = ((int)((P0 *)_this)->_3_3_4_prio);
#ifdef VAR_RANGES
		logval("topPrio", ((int)now.topPrio));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 167: // STATE 48 - c2.pml:240 - [(((chain_tick_used==0)&&(((pending_exp>>1)&1)==0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][48] = 1;
		if (!(((((int)now.chain_tick_used)==0)&&(((((int)now.pending_exp)>>1)&1)==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 168: // STATE 49 - c2.pml:47 - [assert(((1<2)&&(1<8)))] (0:85:2 - 1)
		IfNotBlocked
		reached[0][49] = 1;
		spin_assert(((1<2)&&(1<8)), "((1<2)&&(1<8))", II, tt, t);
		/* merge: pending_exp = (pending_exp|(1<<1))(85, 50, 85) */
		reached[0][50] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.pending_exp);
		now.pending_exp = (((int)now.pending_exp)|(1<<1));
#ifdef VAR_RANGES
		logval("pending_exp", ((int)now.pending_exp));
#endif
		;
		/* merge: chain_tick_used = 1(85, 52, 85) */
		reached[0][52] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.chain_tick_used);
		now.chain_tick_used = 1;
#ifdef VAR_RANGES
		logval("chain_tick_used", ((int)now.chain_tick_used));
#endif
		;
		/* merge: .(goto)(85, 56, 85) */
		reached[0][56] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 169: // STATE 56 - c2.pml:240 - [.(goto)] (0:85:0 - 2)
		IfNotBlocked
		reached[0][56] = 1;
		;
		_m = 3; goto P999; /* 0 */
	case 170: // STATE 54 - c2.pml:240 - [(1)] (85:0:0 - 1)
		IfNotBlocked
		reached[0][54] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(85, 56, 85) */
		reached[0][56] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 171: // STATE 58 - c2.pml:241 - [((0==EP))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][58] = 1;
		if (!((0==((int)now.EP))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 172: // STATE 59 - c2.pml:194 - [idx = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][59] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->_3_4_6_idx);
		((P0 *)_this)->_3_4_6_idx = 0;
#ifdef VAR_RANGES
		logval("PendSV_Handler:idx", ((int)((P0 *)_this)->_3_4_6_idx));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 173: // STATE 60 - c2.pml:195 - [((idx<(readyQueue[topPrio].tailIndex-1)))] (65:0:2 - 1)
		IfNotBlocked
		reached[0][60] = 1;
		if (!((((int)((P0 *)_this)->_3_4_6_idx)<(((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1))))
			continue;
		/* merge: readyQueue[topPrio].tasks[idx] = readyQueue[topPrio].tasks[(idx+1)](65, 61, 65) */
		reached[0][61] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index(((int)((P0 *)_this)->_3_4_6_idx), 5) ]);
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index(((P0 *)_this)->_3_4_6_idx, 5) ] = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index((((int)((P0 *)_this)->_3_4_6_idx)+1), 5) ]);
#ifdef VAR_RANGES
		logval("readyQueue[topPrio].tasks[PendSV_Handler:idx]", ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index(((int)((P0 *)_this)->_3_4_6_idx), 5) ]));
#endif
		;
		/* merge: idx = (idx+1)(65, 62, 65) */
		reached[0][62] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->_3_4_6_idx);
		((P0 *)_this)->_3_4_6_idx = (((int)((P0 *)_this)->_3_4_6_idx)+1);
#ifdef VAR_RANGES
		logval("PendSV_Handler:idx", ((int)((P0 *)_this)->_3_4_6_idx));
#endif
		;
		/* merge: .(goto)(0, 66, 65) */
		reached[0][66] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 174: // STATE 68 - c2.pml:201 - [((readyQueue[topPrio].tailIndex>0))] (83:0:2 - 1)
		IfNotBlocked
		reached[0][68] = 1;
		if (!((((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)>0)))
			continue;
		/* merge: readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)] = 255(83, 69, 83) */
		reached[0][69] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index((((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1), 5) ]);
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index((now.readyQueue[ Index(now.topPrio, 4) ].tailIndex-1), 5) ] = 255;
#ifdef VAR_RANGES
		logval("readyQueue[topPrio].tasks[(readyQueue[topPrio].tailIndex-1)]", ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tasks[ Index((((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1), 5) ]));
#endif
		;
		/* merge: readyQueue[topPrio].tailIndex = (readyQueue[topPrio].tailIndex-1)(83, 70, 83) */
		reached[0][70] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex);
		now.readyQueue[ Index(now.topPrio, 4) ].tailIndex = (((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex)-1);
#ifdef VAR_RANGES
		logval("readyQueue[topPrio].tailIndex", ((int)now.readyQueue[ Index(((int)now.topPrio), 4) ].tailIndex));
#endif
		;
		/* merge: .(goto)(0, 74, 83) */
		reached[0][74] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 175: // STATE 76 - c2.pml:241 - [(((chain_tick_used==0)&&(((pending_exp>>1)&1)==0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][76] = 1;
		if (!(((((int)now.chain_tick_used)==0)&&(((((int)now.pending_exp)>>1)&1)==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 176: // STATE 77 - c2.pml:47 - [assert(((1<2)&&(1<8)))] (0:97:2 - 1)
		IfNotBlocked
		reached[0][77] = 1;
		spin_assert(((1<2)&&(1<8)), "((1<2)&&(1<8))", II, tt, t);
		/* merge: pending_exp = (pending_exp|(1<<1))(97, 78, 97) */
		reached[0][78] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.pending_exp);
		now.pending_exp = (((int)now.pending_exp)|(1<<1));
#ifdef VAR_RANGES
		logval("pending_exp", ((int)now.pending_exp));
#endif
		;
		/* merge: chain_tick_used = 1(97, 80, 97) */
		reached[0][80] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.chain_tick_used);
		now.chain_tick_used = 1;
#ifdef VAR_RANGES
		logval("chain_tick_used", ((int)now.chain_tick_used));
#endif
		;
		/* merge: .(goto)(97, 84, 97) */
		reached[0][84] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 177: // STATE 84 - c2.pml:241 - [.(goto)] (0:97:0 - 2)
		IfNotBlocked
		reached[0][84] = 1;
		;
		_m = 3; goto P999; /* 0 */
	case 178: // STATE 82 - c2.pml:241 - [(1)] (97:0:0 - 1)
		IfNotBlocked
		reached[0][82] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(97, 84, 97) */
		reached[0][84] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 179: // STATE 86 - c2.pml:242 - [((0==EP))] (95:0:1 - 1)
		IfNotBlocked
		reached[0][86] = 1;
		if (!((0==((int)now.EP))))
			continue;
		/* merge: tcb[tmp].state = 4(0, 87, 95) */
		reached[0][87] = 1;
		(trpt+1)->bup.oval = ((int)now.tcb[ Index(((int)((P0 *)_this)->tmp), 4) ].state);
		now.tcb[ Index(((P0 *)_this)->tmp, 4) ].state = 4;
#ifdef VAR_RANGES
		logval("tcb[PendSV_Handler:tmp].state", ((int)now.tcb[ Index(((int)((P0 *)_this)->tmp), 4) ].state));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 180: // STATE 88 - c2.pml:242 - [(((chain_tick_used==0)&&(((pending_exp>>1)&1)==0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][88] = 1;
		if (!(((((int)now.chain_tick_used)==0)&&(((((int)now.pending_exp)>>1)&1)==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 181: // STATE 89 - c2.pml:47 - [assert(((1<2)&&(1<8)))] (0:111:2 - 1)
		IfNotBlocked
		reached[0][89] = 1;
		spin_assert(((1<2)&&(1<8)), "((1<2)&&(1<8))", II, tt, t);
		/* merge: pending_exp = (pending_exp|(1<<1))(111, 90, 111) */
		reached[0][90] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.pending_exp);
		now.pending_exp = (((int)now.pending_exp)|(1<<1));
#ifdef VAR_RANGES
		logval("pending_exp", ((int)now.pending_exp));
#endif
		;
		/* merge: chain_tick_used = 1(111, 92, 111) */
		reached[0][92] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.chain_tick_used);
		now.chain_tick_used = 1;
#ifdef VAR_RANGES
		logval("chain_tick_used", ((int)now.chain_tick_used));
#endif
		;
		/* merge: .(goto)(111, 96, 111) */
		reached[0][96] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 182: // STATE 96 - c2.pml:242 - [.(goto)] (0:111:0 - 2)
		IfNotBlocked
		reached[0][96] = 1;
		;
		_m = 3; goto P999; /* 0 */
	case 183: // STATE 94 - c2.pml:242 - [(1)] (111:0:0 - 1)
		IfNotBlocked
		reached[0][94] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(111, 96, 111) */
		reached[0][96] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 184: // STATE 98 - c2.pml:243 - [((0==EP))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][98] = 1;
		if (!((0==((int)now.EP))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 185: // STATE 99 - c2.pml:75 - [assert((((EP_Stack!=255)&&(EP_Stack>=2))&&(tmp>=2)))] (0:109:1 - 1)
		IfNotBlocked
		reached[0][99] = 1;
		spin_assert((((((int)now.EP_Stack)!=255)&&(((int)now.EP_Stack)>=2))&&(((int)((P0 *)_this)->tmp)>=2)), "(((EP_Stack!=255)&&(EP_Stack>=2))&&(tmp>=2))", II, tt, t);
		/* merge: EP_Stack = tmp(109, 100, 109) */
		reached[0][100] = 1;
		(trpt+1)->bup.oval = ((int)now.EP_Stack);
		now.EP_Stack = ((int)((P0 *)_this)->tmp);
#ifdef VAR_RANGES
		logval("EP_Stack", ((int)now.EP_Stack));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 186: // STATE 102 - c2.pml:243 - [(((chain_tick_used==0)&&(((pending_exp>>1)&1)==0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][102] = 1;
		if (!(((((int)now.chain_tick_used)==0)&&(((((int)now.pending_exp)>>1)&1)==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 187: // STATE 103 - c2.pml:47 - [assert(((1<2)&&(1<8)))] (0:137:2 - 1)
		IfNotBlocked
		reached[0][103] = 1;
		spin_assert(((1<2)&&(1<8)), "((1<2)&&(1<8))", II, tt, t);
		/* merge: pending_exp = (pending_exp|(1<<1))(137, 104, 137) */
		reached[0][104] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.pending_exp);
		now.pending_exp = (((int)now.pending_exp)|(1<<1));
#ifdef VAR_RANGES
		logval("pending_exp", ((int)now.pending_exp));
#endif
		;
		/* merge: chain_tick_used = 1(137, 106, 137) */
		reached[0][106] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.chain_tick_used);
		now.chain_tick_used = 1;
#ifdef VAR_RANGES
		logval("chain_tick_used", ((int)now.chain_tick_used));
#endif
		;
		/* merge: .(goto)(137, 110, 137) */
		reached[0][110] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 188: // STATE 110 - c2.pml:243 - [.(goto)] (0:137:0 - 2)
		IfNotBlocked
		reached[0][110] = 1;
		;
		_m = 3; goto P999; /* 0 */
	case 189: // STATE 108 - c2.pml:243 - [(1)] (137:0:0 - 1)
		IfNotBlocked
		reached[0][108] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(137, 110, 137) */
		reached[0][110] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 190: // STATE 112 - c2.pml:246 - [((0==EP))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][112] = 1;
		if (!((0==((int)now.EP))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 191: // STATE 113 - c2.pml:124 - [((pending_exp>0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][113] = 1;
		if (!((((int)now.pending_exp)>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 192: // STATE 114 - c2.pml:105 - [tmp = ( (((pending_exp>>0)&1)) -> (0) : (1) )] (0:135:4 - 1)
		IfNotBlocked
		reached[0][114] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->tmp);
		((P0 *)_this)->tmp = ( (((((int)now.pending_exp)>>0)&1)) ? (0) : (1) );
#ifdef VAR_RANGES
		logval("PendSV_Handler:tmp", ((int)((P0 *)_this)->tmp));
#endif
		;
		/* merge: assert((((BASEPRI==0)||(15<BASEPRI))&&(EP_Stack>=2)))(135, 116, 135) */
		reached[0][116] = 1;
		spin_assert((((((int)now.BASEPRI)==0)||(15<((int)now.BASEPRI)))&&(((int)now.EP_Stack)>=2)), "(((BASEPRI==0)||(15<BASEPRI))&&(EP_Stack>=2))", II, tt, t);
		/* merge: EP = tmp(135, 117, 135) */
		reached[0][117] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.EP);
		now.EP = ((int)((P0 *)_this)->tmp);
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: tmp = 255(135, 118, 135) */
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
		/* merge: .(goto)(0, 126, 135) */
		reached[0][126] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 193: // STATE 121 - c2.pml:67 - [assert((EP_Stack!=255))] (0:135:2 - 1)
		IfNotBlocked
		reached[0][121] = 1;
		spin_assert((((int)now.EP_Stack)!=255), "(EP_Stack!=255)", II, tt, t);
		/* merge: EP = EP_Stack(135, 122, 135) */
		reached[0][122] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.EP);
		now.EP = ((int)now.EP_Stack);
#ifdef VAR_RANGES
		logval("EP", ((int)now.EP));
#endif
		;
		/* merge: EP_Stack = 255(135, 123, 135) */
		reached[0][123] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.EP_Stack);
		now.EP_Stack = 255;
#ifdef VAR_RANGES
		logval("EP_Stack", ((int)now.EP_Stack));
#endif
		;
		/* merge: .(goto)(0, 126, 135) */
		reached[0][126] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 194: // STATE 128 - c2.pml:246 - [(((chain_tick_used==0)&&(((pending_exp>>1)&1)==0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][128] = 1;
		if (!(((((int)now.chain_tick_used)==0)&&(((((int)now.pending_exp)>>1)&1)==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 195: // STATE 129 - c2.pml:47 - [assert(((1<2)&&(1<8)))] (0:138:2 - 1)
		IfNotBlocked
		reached[0][129] = 1;
		spin_assert(((1<2)&&(1<8)), "((1<2)&&(1<8))", II, tt, t);
		/* merge: pending_exp = (pending_exp|(1<<1))(138, 130, 138) */
		reached[0][130] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.pending_exp);
		now.pending_exp = (((int)now.pending_exp)|(1<<1));
#ifdef VAR_RANGES
		logval("pending_exp", ((int)now.pending_exp));
#endif
		;
		/* merge: chain_tick_used = 1(138, 132, 138) */
		reached[0][132] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.chain_tick_used);
		now.chain_tick_used = 1;
#ifdef VAR_RANGES
		logval("chain_tick_used", ((int)now.chain_tick_used));
#endif
		;
		/* merge: .(goto)(138, 136, 138) */
		reached[0][136] = 1;
		;
		/* merge: .(goto)(0, 139, 138) */
		reached[0][139] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 196: // STATE 136 - c2.pml:246 - [.(goto)] (0:138:0 - 2)
		IfNotBlocked
		reached[0][136] = 1;
		;
		/* merge: .(goto)(0, 139, 138) */
		reached[0][139] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 197: // STATE 134 - c2.pml:246 - [(1)] (138:0:0 - 1)
		IfNotBlocked
		reached[0][134] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(138, 136, 138) */
		reached[0][136] = 1;
		;
		/* merge: .(goto)(0, 139, 138) */
		reached[0][139] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 198: // STATE 141 - c2.pml:248 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][141] = 1;
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

