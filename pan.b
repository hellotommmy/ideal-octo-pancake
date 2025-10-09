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
;
		;
		
	case 30: // STATE 30
		;
		now.tcb[2].prio = trpt->bup.oval;
		;
		goto R999;

	case 31: // STATE 31
		;
		now.tcb[2].state = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 33: // STATE 33
		;
		now.readyQueue[ Index(now.tcb[2].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[2].prio, 4) ].tailIndex, 5) ] = trpt->bup.oval;
		;
		goto R999;

	case 34: // STATE 34
		;
		now.readyQueue[ Index(now.tcb[2].prio, 4) ].tailIndex = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 36: // STATE 42
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
		
	case 39: // STATE 45
		;
		((P2 *)_this)->_5_9_top_task = trpt->bup.oval;
		;
		goto R999;

	case 40: // STATE 46
		;
		((P2 *)_this)->_5_9_found = trpt->bup.oval;
		;
		goto R999;

	case 41: // STATE 48
		;
		((P2 *)_this)->_5_9_prio = trpt->bup.oval;
		;
		goto R999;

	case 42: // STATE 51
		;
	/* 0 */	((P2 *)_this)->_5_9_found = trpt->bup.oval;
		;
		;
		goto R999;

	case 43: // STATE 56
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 44: // STATE 57
		;
		now.topPrio = trpt->bup.oval;
		;
		goto R999;

	case 45: // STATE 59
		;
		((P2 *)_this)->_5_10_idx = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 47: // STATE 61
		;
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index(((P2 *)_this)->_5_10_idx, 5) ] = trpt->bup.oval;
		;
		goto R999;

	case 48: // STATE 62
		;
		((P2 *)_this)->_5_10_idx = trpt->bup.oval;
		;
		goto R999;

	case 49: // STATE 63
		;
	/* 0 */	((P2 *)_this)->_5_10_idx = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 51: // STATE 69
		;
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index((now.readyQueue[ Index(now.topPrio, 4) ].tailIndex-1), 5) ] = trpt->bup.oval;
		;
		goto R999;

	case 52: // STATE 70
		;
		now.readyQueue[ Index(now.topPrio, 4) ].tailIndex = trpt->bup.oval;
		;
		goto R999;

	case 53: // STATE 76
		;
		now.tcb[ Index(now.EP, 3) ].state = trpt->bup.oval;
		;
		goto R999;

	case 54: // STATE 77
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 55: // STATE 78
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 56: // STATE 79
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Process2 */
;
		
	case 57: // STATE 1
		goto R999;

	case 58: // STATE 3
		;
		((P1 *)_this)->_4_4_4_interrupted_task = trpt->bup.oval;
		;
		goto R999;

	case 59: // STATE 7
		;
		((P1 *)_this)->_4_4_4_interrupted_task = trpt->bup.ovals[2];
		now.int_ctrl_reg = trpt->bup.ovals[1];
		now.int_save = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 60: // STATE 9
		;
		now.tcb[ Index(((P1 *)_this)->_4_4_4_interrupted_task, 3) ].state = trpt->bup.oval;
		;
		goto R999;

	case 61: // STATE 12
		;
		now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_4_4_4_interrupted_task, 3) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_4_4_4_interrupted_task, 3) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_4_4_4_interrupted_task, 3) ].prio, 4) ].tailIndex, 5) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 63: // STATE 24
		;
		((P1 *)_this)->_4_4_4_18_found = trpt->bup.ovals[2];
		((P1 *)_this)->_4_4_4_18_top_task = trpt->bup.ovals[1];
		((P1 *)_this)->_4_4_4_18_prio = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 65: // STATE 28
		;
		((P1 *)_this)->_4_4_4_18_found = trpt->bup.ovals[1];
		((P1 *)_this)->_4_4_4_18_top_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 66: // STATE 30
		;
		((P1 *)_this)->_4_4_4_18_prio = trpt->bup.oval;
		;
		goto R999;

	case 67: // STATE 39
		;
		now.topPrio = trpt->bup.ovals[2];
		now.newTask = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->_4_4_4_18_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 68: // STATE 39
		;
		now.topPrio = trpt->bup.ovals[1];
		now.newTask = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 69: // STATE 41
		;
		((P1 *)_this)->_4_4_4_19_idx = trpt->bup.oval;
		;
		goto R999;

	case 70: // STATE 44
		;
		((P1 *)_this)->_4_4_4_19_idx = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index(((P1 *)_this)->_4_4_4_19_idx, 5) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 71: // STATE 45
		;
	/* 0 */	((P1 *)_this)->_4_4_4_19_idx = trpt->bup.oval;
		;
		;
		goto R999;

	case 72: // STATE 59
		;
		now.EP = trpt->bup.ovals[3];
		now.tcb[ Index(now.newTask, 3) ].state = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.topPrio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index((now.readyQueue[ Index(now.topPrio, 4) ].tailIndex-1), 5) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 73: // STATE 59
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 3) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 74: // STATE 59
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 3) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 75: // STATE 60
		;
		now.int_ctrl_reg = trpt->bup.oval;
		;
		goto R999;

	case 76: // STATE 65
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 77: // STATE 66
		;
		((P1 *)_this)->_4_5_5_interrupted_task = trpt->bup.oval;
		;
		goto R999;

	case 78: // STATE 70
		;
		((P1 *)_this)->_4_5_5_interrupted_task = trpt->bup.ovals[2];
		now.int_ctrl_reg = trpt->bup.ovals[1];
		now.int_save = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 79: // STATE 72
		;
		now.tcb[ Index(((P1 *)_this)->_4_5_5_interrupted_task, 3) ].state = trpt->bup.oval;
		;
		goto R999;

	case 80: // STATE 75
		;
		now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_4_5_5_interrupted_task, 3) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_4_5_5_interrupted_task, 3) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_4_5_5_interrupted_task, 3) ].prio, 4) ].tailIndex, 5) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 82: // STATE 87
		;
		((P1 *)_this)->_4_5_5_23_found = trpt->bup.ovals[2];
		((P1 *)_this)->_4_5_5_23_top_task = trpt->bup.ovals[1];
		((P1 *)_this)->_4_5_5_23_prio = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 84: // STATE 91
		;
		((P1 *)_this)->_4_5_5_23_found = trpt->bup.ovals[1];
		((P1 *)_this)->_4_5_5_23_top_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 85: // STATE 93
		;
		((P1 *)_this)->_4_5_5_23_prio = trpt->bup.oval;
		;
		goto R999;

	case 86: // STATE 102
		;
		now.topPrio = trpt->bup.ovals[2];
		now.newTask = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->_4_5_5_23_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 87: // STATE 102
		;
		now.topPrio = trpt->bup.ovals[1];
		now.newTask = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 88: // STATE 104
		;
		((P1 *)_this)->_4_5_5_24_idx = trpt->bup.oval;
		;
		goto R999;

	case 89: // STATE 107
		;
		((P1 *)_this)->_4_5_5_24_idx = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index(((P1 *)_this)->_4_5_5_24_idx, 5) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 90: // STATE 108
		;
	/* 0 */	((P1 *)_this)->_4_5_5_24_idx = trpt->bup.oval;
		;
		;
		goto R999;

	case 91: // STATE 122
		;
		now.EP = trpt->bup.ovals[3];
		now.tcb[ Index(now.newTask, 3) ].state = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.topPrio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index((now.readyQueue[ Index(now.topPrio, 4) ].tailIndex-1), 5) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 92: // STATE 122
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 3) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 93: // STATE 122
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 3) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 94: // STATE 123
		;
		now.int_ctrl_reg = trpt->bup.oval;
		;
		goto R999;

	case 95: // STATE 130
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Process1 */
;
		
	case 96: // STATE 1
		goto R999;

	case 97: // STATE 3
		;
		((P0 *)_this)->_3_1_1_interrupted_task = trpt->bup.oval;
		;
		goto R999;

	case 98: // STATE 7
		;
		((P0 *)_this)->_3_1_1_interrupted_task = trpt->bup.ovals[2];
		now.int_ctrl_reg = trpt->bup.ovals[1];
		now.int_save = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 99: // STATE 9
		;
		now.tcb[ Index(((P0 *)_this)->_3_1_1_interrupted_task, 3) ].state = trpt->bup.oval;
		;
		goto R999;

	case 100: // STATE 12
		;
		now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_3_1_1_interrupted_task, 3) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_3_1_1_interrupted_task, 3) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_3_1_1_interrupted_task, 3) ].prio, 4) ].tailIndex, 5) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 102: // STATE 24
		;
		((P0 *)_this)->_3_1_1_3_found = trpt->bup.ovals[2];
		((P0 *)_this)->_3_1_1_3_top_task = trpt->bup.ovals[1];
		((P0 *)_this)->_3_1_1_3_prio = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 104: // STATE 28
		;
		((P0 *)_this)->_3_1_1_3_found = trpt->bup.ovals[1];
		((P0 *)_this)->_3_1_1_3_top_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 105: // STATE 30
		;
		((P0 *)_this)->_3_1_1_3_prio = trpt->bup.oval;
		;
		goto R999;

	case 106: // STATE 39
		;
		now.topPrio = trpt->bup.ovals[2];
		now.newTask = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->_3_1_1_3_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 107: // STATE 39
		;
		now.topPrio = trpt->bup.ovals[1];
		now.newTask = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 108: // STATE 41
		;
		((P0 *)_this)->_3_1_1_4_idx = trpt->bup.oval;
		;
		goto R999;

	case 109: // STATE 44
		;
		((P0 *)_this)->_3_1_1_4_idx = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index(((P0 *)_this)->_3_1_1_4_idx, 5) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 110: // STATE 45
		;
	/* 0 */	((P0 *)_this)->_3_1_1_4_idx = trpt->bup.oval;
		;
		;
		goto R999;

	case 111: // STATE 59
		;
		now.EP = trpt->bup.ovals[3];
		now.tcb[ Index(now.newTask, 3) ].state = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.topPrio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index((now.readyQueue[ Index(now.topPrio, 4) ].tailIndex-1), 5) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 112: // STATE 59
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 3) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 113: // STATE 59
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 3) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 114: // STATE 60
		;
		now.int_ctrl_reg = trpt->bup.oval;
		;
		goto R999;
;
		
	case 115: // STATE 64
		goto R999;

	case 116: // STATE 66
		;
		((P0 *)_this)->_3_2_2_interrupted_task = trpt->bup.oval;
		;
		goto R999;

	case 117: // STATE 70
		;
		((P0 *)_this)->_3_2_2_interrupted_task = trpt->bup.ovals[2];
		now.int_ctrl_reg = trpt->bup.ovals[1];
		now.int_save = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 118: // STATE 72
		;
		now.tcb[ Index(((P0 *)_this)->_3_2_2_interrupted_task, 3) ].state = trpt->bup.oval;
		;
		goto R999;

	case 119: // STATE 75
		;
		now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_3_2_2_interrupted_task, 3) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_3_2_2_interrupted_task, 3) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_3_2_2_interrupted_task, 3) ].prio, 4) ].tailIndex, 5) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 121: // STATE 87
		;
		((P0 *)_this)->_3_2_2_8_found = trpt->bup.ovals[2];
		((P0 *)_this)->_3_2_2_8_top_task = trpt->bup.ovals[1];
		((P0 *)_this)->_3_2_2_8_prio = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 123: // STATE 91
		;
		((P0 *)_this)->_3_2_2_8_found = trpt->bup.ovals[1];
		((P0 *)_this)->_3_2_2_8_top_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 124: // STATE 93
		;
		((P0 *)_this)->_3_2_2_8_prio = trpt->bup.oval;
		;
		goto R999;

	case 125: // STATE 102
		;
		now.topPrio = trpt->bup.ovals[2];
		now.newTask = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->_3_2_2_8_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 126: // STATE 102
		;
		now.topPrio = trpt->bup.ovals[1];
		now.newTask = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 127: // STATE 104
		;
		((P0 *)_this)->_3_2_2_9_idx = trpt->bup.oval;
		;
		goto R999;

	case 128: // STATE 107
		;
		((P0 *)_this)->_3_2_2_9_idx = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index(((P0 *)_this)->_3_2_2_9_idx, 5) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 129: // STATE 108
		;
	/* 0 */	((P0 *)_this)->_3_2_2_9_idx = trpt->bup.oval;
		;
		;
		goto R999;

	case 130: // STATE 122
		;
		now.EP = trpt->bup.ovals[3];
		now.tcb[ Index(now.newTask, 3) ].state = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.topPrio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index((now.readyQueue[ Index(now.topPrio, 4) ].tailIndex-1), 5) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 131: // STATE 122
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 3) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 132: // STATE 122
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 3) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 133: // STATE 123
		;
		now.int_ctrl_reg = trpt->bup.oval;
		;
		goto R999;

	case 134: // STATE 128
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 135: // STATE 129
		;
		((P0 *)_this)->_3_3_3_interrupted_task = trpt->bup.oval;
		;
		goto R999;

	case 136: // STATE 133
		;
		((P0 *)_this)->_3_3_3_interrupted_task = trpt->bup.ovals[2];
		now.int_ctrl_reg = trpt->bup.ovals[1];
		now.int_save = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 137: // STATE 135
		;
		now.tcb[ Index(((P0 *)_this)->_3_3_3_interrupted_task, 3) ].state = trpt->bup.oval;
		;
		goto R999;

	case 138: // STATE 138
		;
		now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_3_3_3_interrupted_task, 3) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_3_3_3_interrupted_task, 3) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_3_3_3_interrupted_task, 3) ].prio, 4) ].tailIndex, 5) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 140: // STATE 150
		;
		((P0 *)_this)->_3_3_3_13_found = trpt->bup.ovals[2];
		((P0 *)_this)->_3_3_3_13_top_task = trpt->bup.ovals[1];
		((P0 *)_this)->_3_3_3_13_prio = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 142: // STATE 154
		;
		((P0 *)_this)->_3_3_3_13_found = trpt->bup.ovals[1];
		((P0 *)_this)->_3_3_3_13_top_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 143: // STATE 156
		;
		((P0 *)_this)->_3_3_3_13_prio = trpt->bup.oval;
		;
		goto R999;

	case 144: // STATE 165
		;
		now.topPrio = trpt->bup.ovals[2];
		now.newTask = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->_3_3_3_13_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 145: // STATE 165
		;
		now.topPrio = trpt->bup.ovals[1];
		now.newTask = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 146: // STATE 167
		;
		((P0 *)_this)->_3_3_3_14_idx = trpt->bup.oval;
		;
		goto R999;

	case 147: // STATE 170
		;
		((P0 *)_this)->_3_3_3_14_idx = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index(((P0 *)_this)->_3_3_3_14_idx, 5) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 148: // STATE 171
		;
	/* 0 */	((P0 *)_this)->_3_3_3_14_idx = trpt->bup.oval;
		;
		;
		goto R999;

	case 149: // STATE 185
		;
		now.EP = trpt->bup.ovals[3];
		now.tcb[ Index(now.newTask, 3) ].state = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.topPrio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index((now.readyQueue[ Index(now.topPrio, 4) ].tailIndex-1), 5) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 150: // STATE 185
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 3) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 151: // STATE 185
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 3) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 152: // STATE 186
		;
		now.int_ctrl_reg = trpt->bup.oval;
		;
		goto R999;

	case 153: // STATE 193
		;
		p_restor(II);
		;
		;
		goto R999;
	}

