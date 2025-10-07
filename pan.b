	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* PROC :init: */

	case 3: // STATE 1
		;
		now.tcb[1].prio = trpt->bup.oval;
		;
		goto R999;

	case 4: // STATE 2
		;
		now.tcb[1].state = trpt->bup.oval;
		;
		goto R999;

	case 5: // STATE 3
		;
		now.tcb[2].prio = trpt->bup.oval;
		;
		goto R999;

	case 6: // STATE 4
		;
		now.tcb[2].state = trpt->bup.oval;
		;
		goto R999;

	case 7: // STATE 8
		;
		((P2 *)_this)->_4_6_i = trpt->bup.ovals[3];
		((P2 *)_this)->_4_6_top_task = trpt->bup.ovals[2];
		((P2 *)_this)->_4_6_highest_prio = trpt->bup.ovals[1];
		((P2 *)_this)->_4_6_i = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;
;
		;
		;
		;
		
	case 10: // STATE 11
		;
	/* 0 */	((P2 *)_this)->_4_6_highest_prio = trpt->bup.oval;
		;
		;
		goto R999;

	case 11: // STATE 12
		;
		((P2 *)_this)->_4_6_highest_prio = trpt->bup.oval;
		;
		goto R999;

	case 12: // STATE 27
		;
		((P2 *)_this)->_4_6_i = trpt->bup.ovals[1];
		((P2 *)_this)->_4_6_top_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 14: // STATE 27
		;
		((P2 *)_this)->_4_6_i = trpt->bup.ovals[1];
		((P2 *)_this)->_4_6_top_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 15: // STATE 27
		;
		((P2 *)_this)->_4_6_i = trpt->bup.oval;
		;
		goto R999;

	case 16: // STATE 27
		;
		((P2 *)_this)->_4_6_i = trpt->bup.oval;
		;
		goto R999;

	case 17: // STATE 27
		;
		((P2 *)_this)->_4_6_i = trpt->bup.oval;
		;
		goto R999;

	case 18: // STATE 27
		;
		((P2 *)_this)->_4_6_i = trpt->bup.oval;
		;
		goto R999;

	case 19: // STATE 28
		;
	/* 0 */	((P2 *)_this)->_4_6_i = trpt->bup.oval;
		;
		;
		goto R999;

	case 20: // STATE 33
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 21: // STATE 35
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 22: // STATE 36
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 23: // STATE 37
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Process2 */
;
		
	case 24: // STATE 1
		goto R999;
;
		
	case 25: // STATE 3
		goto R999;
;
		
	case 26: // STATE 35
		goto R999;

	case 27: // STATE 7
		;
		((P1 *)_this)->_3_4_4_i = trpt->bup.ovals[3];
		((P1 *)_this)->_3_4_4_top_task = trpt->bup.ovals[2];
		((P1 *)_this)->_3_4_4_highest_prio = trpt->bup.ovals[1];
		((P1 *)_this)->_3_4_4_i = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;
;
		;
		;
		;
		
	case 30: // STATE 26
		;
		((P1 *)_this)->_3_4_4_i = trpt->bup.ovals[3];
		((P1 *)_this)->_3_4_4_top_task = trpt->bup.ovals[2];
		((P1 *)_this)->_3_4_4_highest_prio = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->_3_4_4_highest_prio = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;
;
		;
		
	case 32: // STATE 26
		;
		((P1 *)_this)->_3_4_4_i = trpt->bup.ovals[1];
		((P1 *)_this)->_3_4_4_top_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 33: // STATE 26
		;
		((P1 *)_this)->_3_4_4_i = trpt->bup.oval;
		;
		goto R999;

	case 34: // STATE 26
		;
		((P1 *)_this)->_3_4_4_i = trpt->bup.oval;
		;
		goto R999;

	case 35: // STATE 26
		;
		((P1 *)_this)->_3_4_4_i = trpt->bup.oval;
		;
		goto R999;

	case 36: // STATE 26
		;
		((P1 *)_this)->_3_4_4_i = trpt->bup.oval;
		;
		goto R999;

	case 37: // STATE 32
		;
		now.EP = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->_3_4_4_i = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 38: // STATE 32
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 39: // STATE 38
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		
	case 40: // STATE 39
		goto R999;
;
		
	case 41: // STATE 71
		goto R999;

	case 42: // STATE 43
		;
		((P1 *)_this)->_3_5_5_i = trpt->bup.ovals[3];
		((P1 *)_this)->_3_5_5_top_task = trpt->bup.ovals[2];
		((P1 *)_this)->_3_5_5_highest_prio = trpt->bup.ovals[1];
		((P1 *)_this)->_3_5_5_i = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;
;
		;
		;
		;
		
	case 45: // STATE 62
		;
		((P1 *)_this)->_3_5_5_i = trpt->bup.ovals[3];
		((P1 *)_this)->_3_5_5_top_task = trpt->bup.ovals[2];
		((P1 *)_this)->_3_5_5_highest_prio = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->_3_5_5_highest_prio = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;
;
		;
		
	case 47: // STATE 62
		;
		((P1 *)_this)->_3_5_5_i = trpt->bup.ovals[1];
		((P1 *)_this)->_3_5_5_top_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 48: // STATE 62
		;
		((P1 *)_this)->_3_5_5_i = trpt->bup.oval;
		;
		goto R999;

	case 49: // STATE 62
		;
		((P1 *)_this)->_3_5_5_i = trpt->bup.oval;
		;
		goto R999;

	case 50: // STATE 62
		;
		((P1 *)_this)->_3_5_5_i = trpt->bup.oval;
		;
		goto R999;

	case 51: // STATE 62
		;
		((P1 *)_this)->_3_5_5_i = trpt->bup.oval;
		;
		goto R999;

	case 52: // STATE 68
		;
		now.EP = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->_3_5_5_i = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 53: // STATE 68
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 54: // STATE 76
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Process1 */
;
		
	case 55: // STATE 1
		goto R999;
;
		
	case 56: // STATE 3
		goto R999;
;
		
	case 57: // STATE 35
		goto R999;

	case 58: // STATE 7
		;
		((P0 *)_this)->_2_1_1_i = trpt->bup.ovals[3];
		((P0 *)_this)->_2_1_1_top_task = trpt->bup.ovals[2];
		((P0 *)_this)->_2_1_1_highest_prio = trpt->bup.ovals[1];
		((P0 *)_this)->_2_1_1_i = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;
;
		;
		;
		;
		
	case 61: // STATE 26
		;
		((P0 *)_this)->_2_1_1_i = trpt->bup.ovals[3];
		((P0 *)_this)->_2_1_1_top_task = trpt->bup.ovals[2];
		((P0 *)_this)->_2_1_1_highest_prio = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->_2_1_1_highest_prio = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;
;
		;
		
	case 63: // STATE 26
		;
		((P0 *)_this)->_2_1_1_i = trpt->bup.ovals[1];
		((P0 *)_this)->_2_1_1_top_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 64: // STATE 26
		;
		((P0 *)_this)->_2_1_1_i = trpt->bup.oval;
		;
		goto R999;

	case 65: // STATE 26
		;
		((P0 *)_this)->_2_1_1_i = trpt->bup.oval;
		;
		goto R999;

	case 66: // STATE 26
		;
		((P0 *)_this)->_2_1_1_i = trpt->bup.oval;
		;
		goto R999;

	case 67: // STATE 26
		;
		((P0 *)_this)->_2_1_1_i = trpt->bup.oval;
		;
		goto R999;

	case 68: // STATE 32
		;
		now.EP = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->_2_1_1_i = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 69: // STATE 32
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		
	case 70: // STATE 37
		goto R999;
;
		
	case 71: // STATE 39
		goto R999;
;
		
	case 72: // STATE 71
		goto R999;

	case 73: // STATE 43
		;
		((P0 *)_this)->_2_2_2_i = trpt->bup.ovals[3];
		((P0 *)_this)->_2_2_2_top_task = trpt->bup.ovals[2];
		((P0 *)_this)->_2_2_2_highest_prio = trpt->bup.ovals[1];
		((P0 *)_this)->_2_2_2_i = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;
;
		;
		;
		;
		
	case 76: // STATE 62
		;
		((P0 *)_this)->_2_2_2_i = trpt->bup.ovals[3];
		((P0 *)_this)->_2_2_2_top_task = trpt->bup.ovals[2];
		((P0 *)_this)->_2_2_2_highest_prio = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->_2_2_2_highest_prio = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;
;
		;
		
	case 78: // STATE 62
		;
		((P0 *)_this)->_2_2_2_i = trpt->bup.ovals[1];
		((P0 *)_this)->_2_2_2_top_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 79: // STATE 62
		;
		((P0 *)_this)->_2_2_2_i = trpt->bup.oval;
		;
		goto R999;

	case 80: // STATE 62
		;
		((P0 *)_this)->_2_2_2_i = trpt->bup.oval;
		;
		goto R999;

	case 81: // STATE 62
		;
		((P0 *)_this)->_2_2_2_i = trpt->bup.oval;
		;
		goto R999;

	case 82: // STATE 62
		;
		((P0 *)_this)->_2_2_2_i = trpt->bup.oval;
		;
		goto R999;

	case 83: // STATE 68
		;
		now.EP = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->_2_2_2_i = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 84: // STATE 68
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 85: // STATE 74
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		
	case 86: // STATE 75
		goto R999;
;
		
	case 87: // STATE 107
		goto R999;

	case 88: // STATE 79
		;
		((P0 *)_this)->_2_3_3_i = trpt->bup.ovals[3];
		((P0 *)_this)->_2_3_3_top_task = trpt->bup.ovals[2];
		((P0 *)_this)->_2_3_3_highest_prio = trpt->bup.ovals[1];
		((P0 *)_this)->_2_3_3_i = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;
;
		;
		;
		;
		
	case 91: // STATE 98
		;
		((P0 *)_this)->_2_3_3_i = trpt->bup.ovals[3];
		((P0 *)_this)->_2_3_3_top_task = trpt->bup.ovals[2];
		((P0 *)_this)->_2_3_3_highest_prio = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->_2_3_3_highest_prio = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;
;
		;
		
	case 93: // STATE 98
		;
		((P0 *)_this)->_2_3_3_i = trpt->bup.ovals[1];
		((P0 *)_this)->_2_3_3_top_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 94: // STATE 98
		;
		((P0 *)_this)->_2_3_3_i = trpt->bup.oval;
		;
		goto R999;

	case 95: // STATE 98
		;
		((P0 *)_this)->_2_3_3_i = trpt->bup.oval;
		;
		goto R999;

	case 96: // STATE 98
		;
		((P0 *)_this)->_2_3_3_i = trpt->bup.oval;
		;
		goto R999;

	case 97: // STATE 98
		;
		((P0 *)_this)->_2_3_3_i = trpt->bup.oval;
		;
		goto R999;

	case 98: // STATE 104
		;
		now.EP = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->_2_3_3_i = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 99: // STATE 104
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 100: // STATE 112
		;
		p_restor(II);
		;
		;
		goto R999;
	}

