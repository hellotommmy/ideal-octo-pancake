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
		
	case 16: // STATE 4
		;
		((P2 *)_this)->_6_6_idx = trpt->bup.ovals[1];
		((P2 *)_this)->_6_6_idx = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 18: // STATE 6
		;
		now.readyQueue[ Index(((P2 *)_this)->i, 4) ].tasks[ Index(((P2 *)_this)->_6_6_idx, 5) ] = trpt->bup.oval;
		;
		goto R999;

	case 19: // STATE 7
		;
		((P2 *)_this)->_6_6_idx = trpt->bup.oval;
		;
		goto R999;

	case 20: // STATE 8
		;
	/* 0 */	((P2 *)_this)->_6_6_idx = trpt->bup.oval;
		;
		;
		goto R999;

	case 21: // STATE 13
		;
		now.readyQueue[ Index(((P2 *)_this)->i, 4) ].tailIndex = trpt->bup.oval;
		;
		goto R999;

	case 22: // STATE 15
		;
		((P2 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 23: // STATE 16
		;
	/* 0 */	((P2 *)_this)->i = trpt->bup.oval;
		;
		;
		goto R999;

	case 24: // STATE 22
		;
		((P2 *)_this)->_6_7_idx = trpt->bup.ovals[1];
		((P2 *)_this)->_6_7_idx = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 26: // STATE 24
		;
		now.sortLink.tasks[ Index(((P2 *)_this)->_6_7_idx, 5) ] = trpt->bup.oval;
		;
		goto R999;

	case 27: // STATE 25
		;
		((P2 *)_this)->_6_7_idx = trpt->bup.oval;
		;
		goto R999;

	case 28: // STATE 26
		;
	/* 0 */	((P2 *)_this)->_6_7_idx = trpt->bup.oval;
		;
		;
		goto R999;

	case 29: // STATE 31
		;
		now.sortLink.count = trpt->bup.oval;
		;
		goto R999;

	case 30: // STATE 33
		;
		now.tcb[1].prio = trpt->bup.oval;
		;
		goto R999;

	case 31: // STATE 34
		;
		now.tcb[1].state = trpt->bup.oval;
		;
		goto R999;

	case 32: // STATE 35
		;
		now.tcb[1].responseTime = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 34: // STATE 37
		;
		now.readyQueue[ Index(now.tcb[1].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[1].prio, 4) ].tailIndex, 5) ] = trpt->bup.oval;
		;
		goto R999;

	case 35: // STATE 38
		;
		now.readyQueue[ Index(now.tcb[1].prio, 4) ].tailIndex = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 37: // STATE 44
		;
		now.tcb[2].prio = trpt->bup.oval;
		;
		goto R999;

	case 38: // STATE 45
		;
		now.tcb[2].state = trpt->bup.oval;
		;
		goto R999;

	case 39: // STATE 46
		;
		now.tcb[2].responseTime = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 41: // STATE 48
		;
		now.readyQueue[ Index(now.tcb[2].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[2].prio, 4) ].tailIndex, 5) ] = trpt->bup.oval;
		;
		goto R999;

	case 42: // STATE 49
		;
		now.readyQueue[ Index(now.tcb[2].prio, 4) ].tailIndex = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 44: // STATE 60
		;
		((P2 *)_this)->_6_10_found = trpt->bup.ovals[5];
		((P2 *)_this)->_6_10_top_task = trpt->bup.ovals[4];
		((P2 *)_this)->_6_10_prio = trpt->bup.ovals[3];
		((P2 *)_this)->_6_10_found = trpt->bup.ovals[2];
		((P2 *)_this)->_6_10_top_task = trpt->bup.ovals[1];
		((P2 *)_this)->_6_10_prio = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;
;
		;
		;
		;
		
	case 47: // STATE 63
		;
		((P2 *)_this)->_6_10_top_task = trpt->bup.oval;
		;
		goto R999;

	case 48: // STATE 64
		;
		((P2 *)_this)->_6_10_found = trpt->bup.oval;
		;
		goto R999;

	case 49: // STATE 66
		;
		((P2 *)_this)->_6_10_prio = trpt->bup.oval;
		;
		goto R999;

	case 50: // STATE 69
		;
	/* 0 */	((P2 *)_this)->_6_10_found = trpt->bup.oval;
		;
		;
		goto R999;

	case 51: // STATE 74
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 52: // STATE 75
		;
		now.topPrio = trpt->bup.oval;
		;
		goto R999;

	case 53: // STATE 78
		;
		((P2 *)_this)->_6_11_idx = trpt->bup.ovals[1];
		((P2 *)_this)->_6_11_idx = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 55: // STATE 80
		;
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index(((P2 *)_this)->_6_11_idx, 5) ] = trpt->bup.oval;
		;
		goto R999;

	case 56: // STATE 81
		;
		((P2 *)_this)->_6_11_idx = trpt->bup.oval;
		;
		goto R999;

	case 57: // STATE 82
		;
	/* 0 */	((P2 *)_this)->_6_11_idx = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 59: // STATE 88
		;
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index((now.readyQueue[ Index(now.topPrio, 4) ].tailIndex-1), 5) ] = trpt->bup.oval;
		;
		goto R999;

	case 60: // STATE 89
		;
		now.readyQueue[ Index(now.topPrio, 4) ].tailIndex = trpt->bup.oval;
		;
		goto R999;

	case 61: // STATE 95
		;
		now.tcb[ Index(now.EP, 3) ].state = trpt->bup.oval;
		;
		goto R999;

	case 62: // STATE 96
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 63: // STATE 97
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 64: // STATE 98
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Process2 */
;
		
	case 65: // STATE 1
		goto R999;

	case 66: // STATE 4
		;
		((P1 *)_this)->_5_4_5_interrupted_task = trpt->bup.ovals[1];
		((P1 *)_this)->_5_4_5_interrupted_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 67: // STATE 8
		;
		((P1 *)_this)->_5_4_5_interrupted_task = trpt->bup.ovals[2];
		now.int_ctrl_reg = trpt->bup.ovals[1];
		now.int_save = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 68: // STATE 10
		;
		now.tcb[ Index(((P1 *)_this)->_5_4_5_interrupted_task, 3) ].state = trpt->bup.oval;
		;
		goto R999;

	case 69: // STATE 13
		;
		now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_5_4_5_interrupted_task, 3) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_5_4_5_interrupted_task, 3) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_5_4_5_interrupted_task, 3) ].prio, 4) ].tailIndex, 5) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 71: // STATE 28
		;
		((P1 *)_this)->_5_4_5_22_found = trpt->bup.ovals[5];
		((P1 *)_this)->_5_4_5_22_top_task = trpt->bup.ovals[4];
		((P1 *)_this)->_5_4_5_22_prio = trpt->bup.ovals[3];
		((P1 *)_this)->_5_4_5_22_found = trpt->bup.ovals[2];
		((P1 *)_this)->_5_4_5_22_top_task = trpt->bup.ovals[1];
		((P1 *)_this)->_5_4_5_22_prio = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;
;
		;
		
	case 73: // STATE 32
		;
		((P1 *)_this)->_5_4_5_22_found = trpt->bup.ovals[1];
		((P1 *)_this)->_5_4_5_22_top_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 74: // STATE 34
		;
		((P1 *)_this)->_5_4_5_22_prio = trpt->bup.oval;
		;
		goto R999;

	case 75: // STATE 43
		;
		now.topPrio = trpt->bup.ovals[2];
		now.newTask = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->_5_4_5_22_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 76: // STATE 43
		;
		now.topPrio = trpt->bup.ovals[1];
		now.newTask = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 77: // STATE 46
		;
		((P1 *)_this)->_5_4_5_23_idx = trpt->bup.ovals[1];
		((P1 *)_this)->_5_4_5_23_idx = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 78: // STATE 49
		;
		((P1 *)_this)->_5_4_5_23_idx = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index(((P1 *)_this)->_5_4_5_23_idx, 5) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 79: // STATE 50
		;
	/* 0 */	((P1 *)_this)->_5_4_5_23_idx = trpt->bup.oval;
		;
		;
		goto R999;

	case 80: // STATE 64
		;
		now.EP = trpt->bup.ovals[3];
		now.tcb[ Index(now.newTask, 3) ].state = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.topPrio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index((now.readyQueue[ Index(now.topPrio, 4) ].tailIndex-1), 5) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 81: // STATE 64
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 3) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 82: // STATE 64
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 3) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 83: // STATE 65
		;
		now.int_ctrl_reg = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 85: // STATE 71
		;
		((P1 *)_this)->_5_5_6_needSched = trpt->bup.ovals[1];
		((P1 *)_this)->_5_5_6_needSched = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 87: // STATE 74
		;
		now.int_ctrl_reg = trpt->bup.ovals[1];
		now.int_save = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 89: // STATE 78
		;
		now.tcb[1].state = trpt->bup.oval;
		;
		goto R999;

	case 90: // STATE 83
		;
		((P1 *)_this)->_5_5_6_26_8_found = trpt->bup.ovals[4];
		((P1 *)_this)->_5_5_6_26_8_removePos = trpt->bup.ovals[3];
		((P1 *)_this)->_5_5_6_26_8_shiftIdx = trpt->bup.ovals[2];
		((P1 *)_this)->_5_5_6_26_8_found = trpt->bup.ovals[1];
		((P1 *)_this)->_5_5_6_26_8_removePos = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;
;
		;
		
	case 92: // STATE 86
		;
		((P1 *)_this)->_5_5_6_26_8_found = trpt->bup.oval;
		;
		goto R999;

	case 93: // STATE 88
		;
		((P1 *)_this)->_5_5_6_26_8_removePos = trpt->bup.oval;
		;
		goto R999;

	case 94: // STATE 97
		;
		((P1 *)_this)->_5_5_6_26_8_shiftIdx = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->_5_5_6_26_8_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 95: // STATE 100
		;
		((P1 *)_this)->_5_5_6_26_8_shiftIdx = trpt->bup.ovals[1];
		now.sortLink.tasks[ Index(((P1 *)_this)->_5_5_6_26_8_shiftIdx, 5) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 96: // STATE 107
		;
		now.sortLink.count = trpt->bup.ovals[2];
		now.sortLink.tasks[ Index((now.sortLink.count-1), 5) ] = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->_5_5_6_26_8_shiftIdx = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 97: // STATE 107
		;
		now.sortLink.count = trpt->bup.ovals[1];
		now.sortLink.tasks[ Index((now.sortLink.count-1), 5) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 98: // STATE 115
		;
		now.readyQueue[ Index(now.tcb[1].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[1].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[1].prio, 4) ].tailIndex, 5) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 100: // STATE 122
		;
		((P1 *)_this)->_5_5_6_needSched = trpt->bup.oval;
		;
		goto R999;

	case 101: // STATE 124
		;
		((P1 *)_this)->_5_5_6_needSched = trpt->bup.oval;
		;
		goto R999;

	case 102: // STATE 128
		;
		((P1 *)_this)->_5_5_6_needSched = trpt->bup.oval;
		;
		goto R999;

	case 103: // STATE 132
		;
	/* 0 */	((P1 *)_this)->_5_5_6_needSched = trpt->bup.oval;
		;
		;
		goto R999;

	case 104: // STATE 134
		;
		((P1 *)_this)->_5_5_6_27_interrupted_task = trpt->bup.ovals[1];
		((P1 *)_this)->_5_5_6_27_interrupted_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 105: // STATE 138
		;
		((P1 *)_this)->_5_5_6_27_interrupted_task = trpt->bup.ovals[2];
		now.int_ctrl_reg = trpt->bup.ovals[1];
		now.int_save = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 106: // STATE 140
		;
		now.tcb[ Index(((P1 *)_this)->_5_5_6_27_interrupted_task, 3) ].state = trpt->bup.oval;
		;
		goto R999;

	case 107: // STATE 143
		;
		now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_5_5_6_27_interrupted_task, 3) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_5_5_6_27_interrupted_task, 3) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_5_5_6_27_interrupted_task, 3) ].prio, 4) ].tailIndex, 5) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 109: // STATE 158
		;
		((P1 *)_this)->_5_5_6_27_12_found = trpt->bup.ovals[5];
		((P1 *)_this)->_5_5_6_27_12_top_task = trpt->bup.ovals[4];
		((P1 *)_this)->_5_5_6_27_12_prio = trpt->bup.ovals[3];
		((P1 *)_this)->_5_5_6_27_12_found = trpt->bup.ovals[2];
		((P1 *)_this)->_5_5_6_27_12_top_task = trpt->bup.ovals[1];
		((P1 *)_this)->_5_5_6_27_12_prio = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;
;
		;
		
	case 111: // STATE 162
		;
		((P1 *)_this)->_5_5_6_27_12_found = trpt->bup.ovals[1];
		((P1 *)_this)->_5_5_6_27_12_top_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 112: // STATE 164
		;
		((P1 *)_this)->_5_5_6_27_12_prio = trpt->bup.oval;
		;
		goto R999;

	case 113: // STATE 173
		;
		now.topPrio = trpt->bup.ovals[2];
		now.newTask = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->_5_5_6_27_12_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 114: // STATE 173
		;
		now.topPrio = trpt->bup.ovals[1];
		now.newTask = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 115: // STATE 176
		;
		((P1 *)_this)->_5_5_6_27_13_idx = trpt->bup.ovals[1];
		((P1 *)_this)->_5_5_6_27_13_idx = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 116: // STATE 179
		;
		((P1 *)_this)->_5_5_6_27_13_idx = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index(((P1 *)_this)->_5_5_6_27_13_idx, 5) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 117: // STATE 180
		;
	/* 0 */	((P1 *)_this)->_5_5_6_27_13_idx = trpt->bup.oval;
		;
		;
		goto R999;

	case 118: // STATE 194
		;
		now.EP = trpt->bup.ovals[3];
		now.tcb[ Index(now.newTask, 3) ].state = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.topPrio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index((now.readyQueue[ Index(now.topPrio, 4) ].tailIndex-1), 5) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 119: // STATE 194
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 3) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 120: // STATE 194
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 3) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 121: // STATE 195
		;
		now.int_ctrl_reg = trpt->bup.oval;
		;
		goto R999;

	case 122: // STATE 206
		;
		now.int_ctrl_reg = trpt->bup.oval;
		;
		goto R999;

	case 123: // STATE 214
		;
		((P1 *)_this)->_5_5_7_interrupted_task = trpt->bup.ovals[1];
		((P1 *)_this)->_5_5_7_interrupted_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 124: // STATE 218
		;
		((P1 *)_this)->_5_5_7_interrupted_task = trpt->bup.ovals[2];
		now.int_ctrl_reg = trpt->bup.ovals[1];
		now.int_save = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 125: // STATE 220
		;
		now.tcb[ Index(((P1 *)_this)->_5_5_7_interrupted_task, 3) ].state = trpt->bup.oval;
		;
		goto R999;

	case 126: // STATE 223
		;
		now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_5_5_7_interrupted_task, 3) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_5_5_7_interrupted_task, 3) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_5_5_7_interrupted_task, 3) ].prio, 4) ].tailIndex, 5) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 128: // STATE 238
		;
		((P1 *)_this)->_5_5_7_31_found = trpt->bup.ovals[5];
		((P1 *)_this)->_5_5_7_31_top_task = trpt->bup.ovals[4];
		((P1 *)_this)->_5_5_7_31_prio = trpt->bup.ovals[3];
		((P1 *)_this)->_5_5_7_31_found = trpt->bup.ovals[2];
		((P1 *)_this)->_5_5_7_31_top_task = trpt->bup.ovals[1];
		((P1 *)_this)->_5_5_7_31_prio = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;
;
		;
		
	case 130: // STATE 242
		;
		((P1 *)_this)->_5_5_7_31_found = trpt->bup.ovals[1];
		((P1 *)_this)->_5_5_7_31_top_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 131: // STATE 244
		;
		((P1 *)_this)->_5_5_7_31_prio = trpt->bup.oval;
		;
		goto R999;

	case 132: // STATE 253
		;
		now.topPrio = trpt->bup.ovals[2];
		now.newTask = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->_5_5_7_31_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 133: // STATE 253
		;
		now.topPrio = trpt->bup.ovals[1];
		now.newTask = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 134: // STATE 256
		;
		((P1 *)_this)->_5_5_7_32_idx = trpt->bup.ovals[1];
		((P1 *)_this)->_5_5_7_32_idx = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 135: // STATE 259
		;
		((P1 *)_this)->_5_5_7_32_idx = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index(((P1 *)_this)->_5_5_7_32_idx, 5) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 136: // STATE 260
		;
	/* 0 */	((P1 *)_this)->_5_5_7_32_idx = trpt->bup.oval;
		;
		;
		goto R999;

	case 137: // STATE 274
		;
		now.EP = trpt->bup.ovals[3];
		now.tcb[ Index(now.newTask, 3) ].state = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.topPrio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index((now.readyQueue[ Index(now.topPrio, 4) ].tailIndex-1), 5) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 138: // STATE 274
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 3) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 139: // STATE 274
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 3) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 140: // STATE 275
		;
		now.int_ctrl_reg = trpt->bup.oval;
		;
		goto R999;

	case 141: // STATE 282
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Process1 */
;
		
	case 142: // STATE 1
		goto R999;

	case 143: // STATE 4
		;
		((P0 *)_this)->_4_1_1_interrupted_task = trpt->bup.ovals[1];
		((P0 *)_this)->_4_1_1_interrupted_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 144: // STATE 8
		;
		((P0 *)_this)->_4_1_1_interrupted_task = trpt->bup.ovals[2];
		now.int_ctrl_reg = trpt->bup.ovals[1];
		now.int_save = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 145: // STATE 10
		;
		now.tcb[ Index(((P0 *)_this)->_4_1_1_interrupted_task, 3) ].state = trpt->bup.oval;
		;
		goto R999;

	case 146: // STATE 13
		;
		now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_4_1_1_interrupted_task, 3) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_4_1_1_interrupted_task, 3) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_4_1_1_interrupted_task, 3) ].prio, 4) ].tailIndex, 5) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 148: // STATE 28
		;
		((P0 *)_this)->_4_1_1_3_found = trpt->bup.ovals[5];
		((P0 *)_this)->_4_1_1_3_top_task = trpt->bup.ovals[4];
		((P0 *)_this)->_4_1_1_3_prio = trpt->bup.ovals[3];
		((P0 *)_this)->_4_1_1_3_found = trpt->bup.ovals[2];
		((P0 *)_this)->_4_1_1_3_top_task = trpt->bup.ovals[1];
		((P0 *)_this)->_4_1_1_3_prio = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;
;
		;
		
	case 150: // STATE 32
		;
		((P0 *)_this)->_4_1_1_3_found = trpt->bup.ovals[1];
		((P0 *)_this)->_4_1_1_3_top_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 151: // STATE 34
		;
		((P0 *)_this)->_4_1_1_3_prio = trpt->bup.oval;
		;
		goto R999;

	case 152: // STATE 43
		;
		now.topPrio = trpt->bup.ovals[2];
		now.newTask = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->_4_1_1_3_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 153: // STATE 43
		;
		now.topPrio = trpt->bup.ovals[1];
		now.newTask = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 154: // STATE 46
		;
		((P0 *)_this)->_4_1_1_4_idx = trpt->bup.ovals[1];
		((P0 *)_this)->_4_1_1_4_idx = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 155: // STATE 49
		;
		((P0 *)_this)->_4_1_1_4_idx = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index(((P0 *)_this)->_4_1_1_4_idx, 5) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 156: // STATE 50
		;
	/* 0 */	((P0 *)_this)->_4_1_1_4_idx = trpt->bup.oval;
		;
		;
		goto R999;

	case 157: // STATE 64
		;
		now.EP = trpt->bup.ovals[3];
		now.tcb[ Index(now.newTask, 3) ].state = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.topPrio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index((now.readyQueue[ Index(now.topPrio, 4) ].tailIndex-1), 5) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 158: // STATE 64
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 3) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 159: // STATE 64
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 3) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 160: // STATE 65
		;
		now.int_ctrl_reg = trpt->bup.oval;
		;
		goto R999;
;
		
	case 161: // STATE 69
		goto R999;

	case 162: // STATE 72
		;
		((P0 *)_this)->_4_2_2_interrupted_task = trpt->bup.ovals[1];
		((P0 *)_this)->_4_2_2_interrupted_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 163: // STATE 76
		;
		((P0 *)_this)->_4_2_2_interrupted_task = trpt->bup.ovals[2];
		now.int_ctrl_reg = trpt->bup.ovals[1];
		now.int_save = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 164: // STATE 78
		;
		now.tcb[ Index(((P0 *)_this)->_4_2_2_interrupted_task, 3) ].state = trpt->bup.oval;
		;
		goto R999;

	case 165: // STATE 81
		;
		now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_4_2_2_interrupted_task, 3) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_4_2_2_interrupted_task, 3) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_4_2_2_interrupted_task, 3) ].prio, 4) ].tailIndex, 5) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 167: // STATE 96
		;
		((P0 *)_this)->_4_2_2_8_found = trpt->bup.ovals[5];
		((P0 *)_this)->_4_2_2_8_top_task = trpt->bup.ovals[4];
		((P0 *)_this)->_4_2_2_8_prio = trpt->bup.ovals[3];
		((P0 *)_this)->_4_2_2_8_found = trpt->bup.ovals[2];
		((P0 *)_this)->_4_2_2_8_top_task = trpt->bup.ovals[1];
		((P0 *)_this)->_4_2_2_8_prio = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;
;
		;
		
	case 169: // STATE 100
		;
		((P0 *)_this)->_4_2_2_8_found = trpt->bup.ovals[1];
		((P0 *)_this)->_4_2_2_8_top_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 170: // STATE 102
		;
		((P0 *)_this)->_4_2_2_8_prio = trpt->bup.oval;
		;
		goto R999;

	case 171: // STATE 111
		;
		now.topPrio = trpt->bup.ovals[2];
		now.newTask = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->_4_2_2_8_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 172: // STATE 111
		;
		now.topPrio = trpt->bup.ovals[1];
		now.newTask = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 173: // STATE 114
		;
		((P0 *)_this)->_4_2_2_9_idx = trpt->bup.ovals[1];
		((P0 *)_this)->_4_2_2_9_idx = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 174: // STATE 117
		;
		((P0 *)_this)->_4_2_2_9_idx = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index(((P0 *)_this)->_4_2_2_9_idx, 5) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 175: // STATE 118
		;
	/* 0 */	((P0 *)_this)->_4_2_2_9_idx = trpt->bup.oval;
		;
		;
		goto R999;

	case 176: // STATE 132
		;
		now.EP = trpt->bup.ovals[3];
		now.tcb[ Index(now.newTask, 3) ].state = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.topPrio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index((now.readyQueue[ Index(now.topPrio, 4) ].tailIndex-1), 5) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 177: // STATE 132
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 3) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 178: // STATE 132
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 3) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 179: // STATE 133
		;
		now.int_ctrl_reg = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 181: // STATE 139
		;
		((P0 *)_this)->_4_3_3_needSched = trpt->bup.ovals[1];
		((P0 *)_this)->_4_3_3_needSched = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 183: // STATE 142
		;
		now.int_ctrl_reg = trpt->bup.ovals[1];
		now.int_save = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 185: // STATE 146
		;
		now.tcb[2].state = trpt->bup.oval;
		;
		goto R999;

	case 186: // STATE 151
		;
		((P0 *)_this)->_4_3_3_12_1_found = trpt->bup.ovals[4];
		((P0 *)_this)->_4_3_3_12_1_removePos = trpt->bup.ovals[3];
		((P0 *)_this)->_4_3_3_12_1_shiftIdx = trpt->bup.ovals[2];
		((P0 *)_this)->_4_3_3_12_1_found = trpt->bup.ovals[1];
		((P0 *)_this)->_4_3_3_12_1_removePos = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;
;
		;
		
	case 188: // STATE 154
		;
		((P0 *)_this)->_4_3_3_12_1_found = trpt->bup.oval;
		;
		goto R999;

	case 189: // STATE 156
		;
		((P0 *)_this)->_4_3_3_12_1_removePos = trpt->bup.oval;
		;
		goto R999;

	case 190: // STATE 165
		;
		((P0 *)_this)->_4_3_3_12_1_shiftIdx = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->_4_3_3_12_1_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 191: // STATE 168
		;
		((P0 *)_this)->_4_3_3_12_1_shiftIdx = trpt->bup.ovals[1];
		now.sortLink.tasks[ Index(((P0 *)_this)->_4_3_3_12_1_shiftIdx, 5) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 192: // STATE 175
		;
		now.sortLink.count = trpt->bup.ovals[2];
		now.sortLink.tasks[ Index((now.sortLink.count-1), 5) ] = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->_4_3_3_12_1_shiftIdx = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 193: // STATE 175
		;
		now.sortLink.count = trpt->bup.ovals[1];
		now.sortLink.tasks[ Index((now.sortLink.count-1), 5) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 194: // STATE 183
		;
		now.readyQueue[ Index(now.tcb[2].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[2].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[2].prio, 4) ].tailIndex, 5) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 196: // STATE 190
		;
		((P0 *)_this)->_4_3_3_needSched = trpt->bup.oval;
		;
		goto R999;

	case 197: // STATE 192
		;
		((P0 *)_this)->_4_3_3_needSched = trpt->bup.oval;
		;
		goto R999;

	case 198: // STATE 196
		;
		((P0 *)_this)->_4_3_3_needSched = trpt->bup.oval;
		;
		goto R999;

	case 199: // STATE 200
		;
	/* 0 */	((P0 *)_this)->_4_3_3_needSched = trpt->bup.oval;
		;
		;
		goto R999;

	case 200: // STATE 202
		;
		((P0 *)_this)->_4_3_3_13_interrupted_task = trpt->bup.ovals[1];
		((P0 *)_this)->_4_3_3_13_interrupted_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 201: // STATE 206
		;
		((P0 *)_this)->_4_3_3_13_interrupted_task = trpt->bup.ovals[2];
		now.int_ctrl_reg = trpt->bup.ovals[1];
		now.int_save = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 202: // STATE 208
		;
		now.tcb[ Index(((P0 *)_this)->_4_3_3_13_interrupted_task, 3) ].state = trpt->bup.oval;
		;
		goto R999;

	case 203: // STATE 211
		;
		now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_4_3_3_13_interrupted_task, 3) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_4_3_3_13_interrupted_task, 3) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_4_3_3_13_interrupted_task, 3) ].prio, 4) ].tailIndex, 5) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 205: // STATE 226
		;
		((P0 *)_this)->_4_3_3_13_5_found = trpt->bup.ovals[5];
		((P0 *)_this)->_4_3_3_13_5_top_task = trpt->bup.ovals[4];
		((P0 *)_this)->_4_3_3_13_5_prio = trpt->bup.ovals[3];
		((P0 *)_this)->_4_3_3_13_5_found = trpt->bup.ovals[2];
		((P0 *)_this)->_4_3_3_13_5_top_task = trpt->bup.ovals[1];
		((P0 *)_this)->_4_3_3_13_5_prio = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;
;
		;
		
	case 207: // STATE 230
		;
		((P0 *)_this)->_4_3_3_13_5_found = trpt->bup.ovals[1];
		((P0 *)_this)->_4_3_3_13_5_top_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 208: // STATE 232
		;
		((P0 *)_this)->_4_3_3_13_5_prio = trpt->bup.oval;
		;
		goto R999;

	case 209: // STATE 241
		;
		now.topPrio = trpt->bup.ovals[2];
		now.newTask = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->_4_3_3_13_5_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 210: // STATE 241
		;
		now.topPrio = trpt->bup.ovals[1];
		now.newTask = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 211: // STATE 244
		;
		((P0 *)_this)->_4_3_3_13_6_idx = trpt->bup.ovals[1];
		((P0 *)_this)->_4_3_3_13_6_idx = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 212: // STATE 247
		;
		((P0 *)_this)->_4_3_3_13_6_idx = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index(((P0 *)_this)->_4_3_3_13_6_idx, 5) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 213: // STATE 248
		;
	/* 0 */	((P0 *)_this)->_4_3_3_13_6_idx = trpt->bup.oval;
		;
		;
		goto R999;

	case 214: // STATE 262
		;
		now.EP = trpt->bup.ovals[3];
		now.tcb[ Index(now.newTask, 3) ].state = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.topPrio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index((now.readyQueue[ Index(now.topPrio, 4) ].tailIndex-1), 5) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 215: // STATE 262
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 3) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 216: // STATE 262
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 3) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 217: // STATE 263
		;
		now.int_ctrl_reg = trpt->bup.oval;
		;
		goto R999;

	case 218: // STATE 274
		;
		now.int_ctrl_reg = trpt->bup.oval;
		;
		goto R999;

	case 219: // STATE 282
		;
		((P0 *)_this)->_4_3_4_interrupted_task = trpt->bup.ovals[1];
		((P0 *)_this)->_4_3_4_interrupted_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 220: // STATE 286
		;
		((P0 *)_this)->_4_3_4_interrupted_task = trpt->bup.ovals[2];
		now.int_ctrl_reg = trpt->bup.ovals[1];
		now.int_save = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 221: // STATE 288
		;
		now.tcb[ Index(((P0 *)_this)->_4_3_4_interrupted_task, 3) ].state = trpt->bup.oval;
		;
		goto R999;

	case 222: // STATE 291
		;
		now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_4_3_4_interrupted_task, 3) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_4_3_4_interrupted_task, 3) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_4_3_4_interrupted_task, 3) ].prio, 4) ].tailIndex, 5) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 224: // STATE 306
		;
		((P0 *)_this)->_4_3_4_17_found = trpt->bup.ovals[5];
		((P0 *)_this)->_4_3_4_17_top_task = trpt->bup.ovals[4];
		((P0 *)_this)->_4_3_4_17_prio = trpt->bup.ovals[3];
		((P0 *)_this)->_4_3_4_17_found = trpt->bup.ovals[2];
		((P0 *)_this)->_4_3_4_17_top_task = trpt->bup.ovals[1];
		((P0 *)_this)->_4_3_4_17_prio = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;
;
		;
		
	case 226: // STATE 310
		;
		((P0 *)_this)->_4_3_4_17_found = trpt->bup.ovals[1];
		((P0 *)_this)->_4_3_4_17_top_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 227: // STATE 312
		;
		((P0 *)_this)->_4_3_4_17_prio = trpt->bup.oval;
		;
		goto R999;

	case 228: // STATE 321
		;
		now.topPrio = trpt->bup.ovals[2];
		now.newTask = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->_4_3_4_17_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 229: // STATE 321
		;
		now.topPrio = trpt->bup.ovals[1];
		now.newTask = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 230: // STATE 324
		;
		((P0 *)_this)->_4_3_4_18_idx = trpt->bup.ovals[1];
		((P0 *)_this)->_4_3_4_18_idx = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 231: // STATE 327
		;
		((P0 *)_this)->_4_3_4_18_idx = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index(((P0 *)_this)->_4_3_4_18_idx, 5) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 232: // STATE 328
		;
	/* 0 */	((P0 *)_this)->_4_3_4_18_idx = trpt->bup.oval;
		;
		;
		goto R999;

	case 233: // STATE 342
		;
		now.EP = trpt->bup.ovals[3];
		now.tcb[ Index(now.newTask, 3) ].state = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.topPrio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index((now.readyQueue[ Index(now.topPrio, 4) ].tailIndex-1), 5) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 234: // STATE 342
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 3) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 235: // STATE 342
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 3) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 236: // STATE 343
		;
		now.int_ctrl_reg = trpt->bup.oval;
		;
		goto R999;

	case 237: // STATE 350
		;
		p_restor(II);
		;
		;
		goto R999;
	}

