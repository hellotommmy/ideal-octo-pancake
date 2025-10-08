	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM all_starvation_free */
;
		;
		;
		;
		;
		;
		;
		;
		
	case 7: // STATE 20
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM starvation_free_task2 */
;
		;
		;
		;
		
	case 10: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM starvation_free_task1 */
;
		;
		;
		;
		
	case 13: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC :init: */

	case 14: // STATE 1
		;
		((P2 *)_this)->i = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 16: // STATE 3
		;
		((P2 *)_this)->_5_6_idx = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 18: // STATE 5
		;
		now.readyQueue[ Index(((P2 *)_this)->i, 4) ].tasks[ Index(((P2 *)_this)->_5_6_idx, 5) ] = trpt->bup.oval;
		;
		goto R999;

	case 19: // STATE 6
		;
		((P2 *)_this)->_5_6_idx = trpt->bup.oval;
		;
		goto R999;

	case 20: // STATE 7
		;
	/* 0 */	((P2 *)_this)->_5_6_idx = trpt->bup.oval;
		;
		;
		goto R999;

	case 21: // STATE 12
		;
		now.readyQueue[ Index(((P2 *)_this)->i, 4) ].tailIndex = trpt->bup.oval;
		;
		goto R999;

	case 22: // STATE 14
		;
		((P2 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 23: // STATE 15
		;
	/* 0 */	((P2 *)_this)->i = trpt->bup.oval;
		;
		;
		goto R999;

	case 24: // STATE 20
		;
		now.tcb[1].prio = trpt->bup.oval;
		;
		goto R999;

	case 25: // STATE 21
		;
		now.tcb[1].state = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 27: // STATE 23
		;
		now.readyQueue[ Index(now.tcb[1].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[1].prio, 4) ].tailIndex, 5) ] = trpt->bup.oval;
		;
		goto R999;

	case 28: // STATE 24
		;
		now.readyQueue[ Index(now.tcb[1].prio, 4) ].tailIndex = trpt->bup.oval;
		;
		goto R999;

	case 29: // STATE 30
		;
		now.tcb[2].prio = trpt->bup.oval;
		;
		goto R999;

	case 30: // STATE 31
		;
		now.tcb[2].state = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 32: // STATE 33
		;
		now.readyQueue[ Index(now.tcb[2].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[2].prio, 4) ].tailIndex, 5) ] = trpt->bup.oval;
		;
		goto R999;

	case 33: // STATE 34
		;
		now.readyQueue[ Index(now.tcb[2].prio, 4) ].tailIndex = trpt->bup.oval;
		;
		goto R999;

	case 34: // STATE 42
		;
		((P2 *)_this)->_5_9_found = trpt->bup.ovals[2];
		((P2 *)_this)->_5_9_top_task = trpt->bup.ovals[1];
		((P2 *)_this)->_5_9_prio = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		;
		;
		
	case 37: // STATE 45
		;
		((P2 *)_this)->_5_9_top_task = trpt->bup.oval;
		;
		goto R999;

	case 38: // STATE 46
		;
		((P2 *)_this)->_5_9_found = trpt->bup.oval;
		;
		goto R999;

	case 39: // STATE 48
		;
		((P2 *)_this)->_5_9_prio = trpt->bup.oval;
		;
		goto R999;

	case 40: // STATE 51
		;
	/* 1 */	((P2 *)_this)->_5_9_found = trpt->bup.ovals[1];
	/* 0 */	((P2 *)_this)->_5_9_prio = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 41: // STATE 56
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 42: // STATE 58
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 43: // STATE 59
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 44: // STATE 60
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Process2 */
;
		
	case 45: // STATE 1
		goto R999;
;
		
	case 46: // STATE 3
		goto R999;
;
		
	case 47: // STATE 23
		goto R999;

	case 48: // STATE 6
		;
		((P1 *)_this)->_4_4_4_found = trpt->bup.ovals[2];
		((P1 *)_this)->_4_4_4_top_task = trpt->bup.ovals[1];
		((P1 *)_this)->_4_4_4_prio = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 50: // STATE 10
		;
		((P1 *)_this)->_4_4_4_found = trpt->bup.ovals[1];
		((P1 *)_this)->_4_4_4_top_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 51: // STATE 12
		;
		((P1 *)_this)->_4_4_4_prio = trpt->bup.oval;
		;
		goto R999;

	case 52: // STATE 20
		;
		now.EP = trpt->bup.ovals[2];
	/* 1 */	((P1 *)_this)->_4_4_4_found = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->_4_4_4_prio = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 53: // STATE 20
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 54: // STATE 26
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		
	case 55: // STATE 27
		goto R999;
;
		
	case 56: // STATE 47
		goto R999;

	case 57: // STATE 30
		;
		((P1 *)_this)->_4_5_5_found = trpt->bup.ovals[2];
		((P1 *)_this)->_4_5_5_top_task = trpt->bup.ovals[1];
		((P1 *)_this)->_4_5_5_prio = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 59: // STATE 34
		;
		((P1 *)_this)->_4_5_5_found = trpt->bup.ovals[1];
		((P1 *)_this)->_4_5_5_top_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 60: // STATE 36
		;
		((P1 *)_this)->_4_5_5_prio = trpt->bup.oval;
		;
		goto R999;

	case 61: // STATE 44
		;
		now.EP = trpt->bup.ovals[2];
	/* 1 */	((P1 *)_this)->_4_5_5_found = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->_4_5_5_prio = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 62: // STATE 44
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 63: // STATE 52
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Process1 */
;
		
	case 64: // STATE 1
		goto R999;
;
		
	case 65: // STATE 3
		goto R999;
;
		
	case 66: // STATE 23
		goto R999;

	case 67: // STATE 6
		;
		((P0 *)_this)->_3_1_1_found = trpt->bup.ovals[2];
		((P0 *)_this)->_3_1_1_top_task = trpt->bup.ovals[1];
		((P0 *)_this)->_3_1_1_prio = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 69: // STATE 10
		;
		((P0 *)_this)->_3_1_1_found = trpt->bup.ovals[1];
		((P0 *)_this)->_3_1_1_top_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 70: // STATE 12
		;
		((P0 *)_this)->_3_1_1_prio = trpt->bup.oval;
		;
		goto R999;

	case 71: // STATE 20
		;
		now.EP = trpt->bup.ovals[2];
	/* 1 */	((P0 *)_this)->_3_1_1_found = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->_3_1_1_prio = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 72: // STATE 20
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		
	case 73: // STATE 25
		goto R999;
;
		
	case 74: // STATE 27
		goto R999;
;
		
	case 75: // STATE 47
		goto R999;

	case 76: // STATE 30
		;
		((P0 *)_this)->_3_2_2_found = trpt->bup.ovals[2];
		((P0 *)_this)->_3_2_2_top_task = trpt->bup.ovals[1];
		((P0 *)_this)->_3_2_2_prio = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 78: // STATE 34
		;
		((P0 *)_this)->_3_2_2_found = trpt->bup.ovals[1];
		((P0 *)_this)->_3_2_2_top_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 79: // STATE 36
		;
		((P0 *)_this)->_3_2_2_prio = trpt->bup.oval;
		;
		goto R999;

	case 80: // STATE 44
		;
		now.EP = trpt->bup.ovals[2];
	/* 1 */	((P0 *)_this)->_3_2_2_found = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->_3_2_2_prio = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 81: // STATE 44
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 82: // STATE 50
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		
	case 83: // STATE 51
		goto R999;
;
		
	case 84: // STATE 71
		goto R999;

	case 85: // STATE 54
		;
		((P0 *)_this)->_3_3_3_found = trpt->bup.ovals[2];
		((P0 *)_this)->_3_3_3_top_task = trpt->bup.ovals[1];
		((P0 *)_this)->_3_3_3_prio = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 87: // STATE 58
		;
		((P0 *)_this)->_3_3_3_found = trpt->bup.ovals[1];
		((P0 *)_this)->_3_3_3_top_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 88: // STATE 60
		;
		((P0 *)_this)->_3_3_3_prio = trpt->bup.oval;
		;
		goto R999;

	case 89: // STATE 68
		;
		now.EP = trpt->bup.ovals[2];
	/* 1 */	((P0 *)_this)->_3_3_3_found = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->_3_3_3_prio = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 90: // STATE 68
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 91: // STATE 76
		;
		p_restor(II);
		;
		;
		goto R999;
	}

