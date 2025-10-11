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
		;
		;
		;
		;
		;
		;
		;
		;
		
	case 11: // STATE 34
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM starvation_free_task4 */
;
		;
		;
		;
		
	case 14: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM starvation_free_task3 */
;
		;
		;
		;
		
	case 17: // STATE 13
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
		
	case 20: // STATE 13
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
		
	case 23: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC :init: */

	case 24: // STATE 1
		;
		((P4 *)_this)->i = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 26: // STATE 4
		;
		((P4 *)_this)->_8_25_init_rq_idx = trpt->bup.ovals[1];
		((P4 *)_this)->_8_25_init_rq_idx = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 28: // STATE 6
		;
		now.readyQueue[ Index(((P4 *)_this)->i, 4) ].tasks[ Index(((P4 *)_this)->_8_25_init_rq_idx, 8) ] = trpt->bup.oval;
		;
		goto R999;

	case 29: // STATE 7
		;
		((P4 *)_this)->_8_25_init_rq_idx = trpt->bup.oval;
		;
		goto R999;

	case 30: // STATE 8
		;
	/* 0 */	((P4 *)_this)->_8_25_init_rq_idx = trpt->bup.oval;
		;
		;
		goto R999;

	case 31: // STATE 13
		;
		now.readyQueue[ Index(((P4 *)_this)->i, 4) ].tailIndex = trpt->bup.oval;
		;
		goto R999;

	case 32: // STATE 15
		;
		((P4 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 33: // STATE 16
		;
	/* 0 */	((P4 *)_this)->i = trpt->bup.oval;
		;
		;
		goto R999;

	case 34: // STATE 22
		;
		((P4 *)_this)->_8_26_init_sl_idx = trpt->bup.ovals[1];
		((P4 *)_this)->_8_26_init_sl_idx = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 36: // STATE 24
		;
		now.sortLink.tasks[ Index(((P4 *)_this)->_8_26_init_sl_idx, 8) ] = trpt->bup.oval;
		;
		goto R999;

	case 37: // STATE 25
		;
		((P4 *)_this)->_8_26_init_sl_idx = trpt->bup.oval;
		;
		goto R999;

	case 38: // STATE 26
		;
	/* 0 */	((P4 *)_this)->_8_26_init_sl_idx = trpt->bup.oval;
		;
		;
		goto R999;

	case 39: // STATE 31
		;
		now.sortLink.count = trpt->bup.oval;
		;
		goto R999;

	case 40: // STATE 33
		;
		now.tcb[1].prio = trpt->bup.oval;
		;
		goto R999;

	case 41: // STATE 34
		;
		now.tcb[1].state = trpt->bup.oval;
		;
		goto R999;

	case 42: // STATE 35
		;
		now.tcb[1].responseTime = trpt->bup.oval;
		;
		goto R999;

	case 43: // STATE 36
		;
		now.tcb[1].wakeupTime = trpt->bup.oval;
		;
		goto R999;

	case 44: // STATE 37
		;
		now.tcb[1].delayTicks = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 46: // STATE 39
		;
		now.readyQueue[ Index(now.tcb[1].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[1].prio, 4) ].tailIndex, 8) ] = trpt->bup.oval;
		;
		goto R999;

	case 47: // STATE 40
		;
		now.readyQueue[ Index(now.tcb[1].prio, 4) ].tailIndex = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 49: // STATE 46
		;
		now.tcb[2].prio = trpt->bup.oval;
		;
		goto R999;

	case 50: // STATE 47
		;
		now.tcb[2].state = trpt->bup.oval;
		;
		goto R999;

	case 51: // STATE 48
		;
		now.tcb[2].responseTime = trpt->bup.oval;
		;
		goto R999;

	case 52: // STATE 49
		;
		now.tcb[2].wakeupTime = trpt->bup.oval;
		;
		goto R999;

	case 53: // STATE 50
		;
		now.tcb[2].delayTicks = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 55: // STATE 52
		;
		now.readyQueue[ Index(now.tcb[2].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[2].prio, 4) ].tailIndex, 8) ] = trpt->bup.oval;
		;
		goto R999;

	case 56: // STATE 53
		;
		now.readyQueue[ Index(now.tcb[2].prio, 4) ].tailIndex = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 58: // STATE 59
		;
		now.tcb[3].prio = trpt->bup.oval;
		;
		goto R999;

	case 59: // STATE 60
		;
		now.tcb[3].state = trpt->bup.oval;
		;
		goto R999;

	case 60: // STATE 61
		;
		now.tcb[3].responseTime = trpt->bup.oval;
		;
		goto R999;

	case 61: // STATE 62
		;
		now.tcb[3].wakeupTime = trpt->bup.oval;
		;
		goto R999;

	case 62: // STATE 63
		;
		now.tcb[3].delayTicks = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 64: // STATE 65
		;
		now.readyQueue[ Index(now.tcb[3].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[3].prio, 4) ].tailIndex, 8) ] = trpt->bup.oval;
		;
		goto R999;

	case 65: // STATE 66
		;
		now.readyQueue[ Index(now.tcb[3].prio, 4) ].tailIndex = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 67: // STATE 72
		;
		now.tcb[4].prio = trpt->bup.oval;
		;
		goto R999;

	case 68: // STATE 73
		;
		now.tcb[4].state = trpt->bup.oval;
		;
		goto R999;

	case 69: // STATE 74
		;
		now.tcb[4].responseTime = trpt->bup.oval;
		;
		goto R999;

	case 70: // STATE 75
		;
		now.tcb[4].wakeupTime = trpt->bup.oval;
		;
		goto R999;

	case 71: // STATE 76
		;
		now.tcb[4].delayTicks = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 73: // STATE 78
		;
		now.readyQueue[ Index(now.tcb[4].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[4].prio, 4) ].tailIndex, 8) ] = trpt->bup.oval;
		;
		goto R999;

	case 74: // STATE 79
		;
		now.readyQueue[ Index(now.tcb[4].prio, 4) ].tailIndex = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 76: // STATE 90
		;
		((P4 *)_this)->_8_31_found = trpt->bup.ovals[5];
		((P4 *)_this)->_8_31_top_task = trpt->bup.ovals[4];
		((P4 *)_this)->_8_31_prio = trpt->bup.ovals[3];
		((P4 *)_this)->_8_31_found = trpt->bup.ovals[2];
		((P4 *)_this)->_8_31_top_task = trpt->bup.ovals[1];
		((P4 *)_this)->_8_31_prio = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;
;
		;
		;
		;
		
	case 79: // STATE 93
		;
		((P4 *)_this)->_8_31_top_task = trpt->bup.oval;
		;
		goto R999;

	case 80: // STATE 94
		;
		((P4 *)_this)->_8_31_found = trpt->bup.oval;
		;
		goto R999;

	case 81: // STATE 96
		;
		((P4 *)_this)->_8_31_prio = trpt->bup.oval;
		;
		goto R999;

	case 82: // STATE 99
		;
	/* 0 */	((P4 *)_this)->_8_31_found = trpt->bup.oval;
		;
		;
		goto R999;

	case 83: // STATE 104
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 84: // STATE 105
		;
		now.topPrio = trpt->bup.oval;
		;
		goto R999;

	case 85: // STATE 108
		;
		((P4 *)_this)->_8_32_deq_idx = trpt->bup.ovals[1];
		((P4 *)_this)->_8_32_deq_idx = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 87: // STATE 110
		;
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index(((P4 *)_this)->_8_32_deq_idx, 8) ] = trpt->bup.oval;
		;
		goto R999;

	case 88: // STATE 111
		;
		((P4 *)_this)->_8_32_deq_idx = trpt->bup.oval;
		;
		goto R999;

	case 89: // STATE 112
		;
	/* 0 */	((P4 *)_this)->_8_32_deq_idx = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 91: // STATE 118
		;
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index((now.readyQueue[ Index(now.topPrio, 4) ].tailIndex-1), 8) ] = trpt->bup.oval;
		;
		goto R999;

	case 92: // STATE 119
		;
		now.readyQueue[ Index(now.topPrio, 4) ].tailIndex = trpt->bup.oval;
		;
		goto R999;

	case 93: // STATE 125
		;
		now.tcb[ Index(now.EP, 5) ].state = trpt->bup.oval;
		;
		goto R999;

	case 94: // STATE 126
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 95: // STATE 127
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 96: // STATE 128
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 97: // STATE 129
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 98: // STATE 130
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Process4 */
;
		
	case 99: // STATE 1
		goto R999;

	case 100: // STATE 8
		;
		((P3 *)_this)->_7_19_25_needResched = trpt->bup.ovals[5];
		((P3 *)_this)->_7_19_25_interrupted_task = trpt->bup.ovals[4];
		((P3 *)_this)->_7_19_25_needResched = trpt->bup.ovals[3];
		((P3 *)_this)->_7_19_25_taskId = trpt->bup.ovals[2];
		((P3 *)_this)->_7_19_25_idx = trpt->bup.ovals[1];
		((P3 *)_this)->_7_19_25_interrupted_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;

	case 101: // STATE 13
		;
		((P3 *)_this)->_7_19_25_idx = trpt->bup.ovals[3];
		now.tickCount = trpt->bup.ovals[2];
		now.int_ctrl_reg = trpt->bup.ovals[1];
		now.int_save = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 102: // STATE 15
		;
		((P3 *)_this)->_7_19_25_taskId = trpt->bup.oval;
		;
		goto R999;

	case 103: // STATE 18
		;
		now.tcb[ Index(((P3 *)_this)->_7_19_25_taskId, 5) ].delayTicks = trpt->bup.ovals[1];
		now.tcb[ Index(((P3 *)_this)->_7_19_25_taskId, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 104: // STATE 23
		;
		((P3 *)_this)->_7_19_25_152_found = trpt->bup.ovals[4];
		((P3 *)_this)->_7_19_25_152_removePos = trpt->bup.ovals[3];
		((P3 *)_this)->_7_19_25_152_shiftIdx = trpt->bup.ovals[2];
		((P3 *)_this)->_7_19_25_152_found = trpt->bup.ovals[1];
		((P3 *)_this)->_7_19_25_152_removePos = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;
;
		;
		
	case 106: // STATE 26
		;
		((P3 *)_this)->_7_19_25_152_found = trpt->bup.oval;
		;
		goto R999;

	case 107: // STATE 28
		;
		((P3 *)_this)->_7_19_25_152_removePos = trpt->bup.oval;
		;
		goto R999;

	case 108: // STATE 37
		;
		((P3 *)_this)->_7_19_25_152_shiftIdx = trpt->bup.ovals[1];
	/* 0 */	((P3 *)_this)->_7_19_25_152_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 109: // STATE 40
		;
		((P3 *)_this)->_7_19_25_152_shiftIdx = trpt->bup.ovals[1];
		now.sortLink.tasks[ Index(((P3 *)_this)->_7_19_25_152_shiftIdx, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 110: // STATE 47
		;
		now.sortLink.count = trpt->bup.ovals[2];
		now.sortLink.tasks[ Index((now.sortLink.count-1), 8) ] = trpt->bup.ovals[1];
	/* 0 */	((P3 *)_this)->_7_19_25_152_shiftIdx = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 111: // STATE 47
		;
		now.sortLink.count = trpt->bup.ovals[1];
		now.sortLink.tasks[ Index((now.sortLink.count-1), 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 112: // STATE 61
		;
		((P3 *)_this)->_7_19_25_needResched = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.tcb[ Index(((P3 *)_this)->_7_19_25_taskId, 5) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P3 *)_this)->_7_19_25_taskId, 5) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P3 *)_this)->_7_19_25_taskId, 5) ].prio, 4) ].tailIndex, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 113: // STATE 61
		;
		((P3 *)_this)->_7_19_25_needResched = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 114: // STATE 61
		;
		((P3 *)_this)->_7_19_25_needResched = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 115: // STATE 63
		;
		((P3 *)_this)->_7_19_25_idx = trpt->bup.oval;
		;
		goto R999;

	case 116: // STATE 71
		;
		((P3 *)_this)->_7_19_25_interrupted_task = trpt->bup.ovals[1];
	/* 0 */	((P3 *)_this)->_7_19_25_idx = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 117: // STATE 71
		;
		((P3 *)_this)->_7_19_25_interrupted_task = trpt->bup.oval;
		;
		goto R999;

	case 118: // STATE 73
		;
		now.tcb[ Index(((P3 *)_this)->_7_19_25_interrupted_task, 5) ].state = trpt->bup.oval;
		;
		goto R999;

	case 119: // STATE 76
		;
		now.readyQueue[ Index(now.tcb[ Index(((P3 *)_this)->_7_19_25_interrupted_task, 5) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P3 *)_this)->_7_19_25_interrupted_task, 5) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P3 *)_this)->_7_19_25_interrupted_task, 5) ].prio, 4) ].tailIndex, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 121: // STATE 91
		;
		((P3 *)_this)->_7_19_25_155_found = trpt->bup.ovals[5];
		((P3 *)_this)->_7_19_25_155_top_task = trpt->bup.ovals[4];
		((P3 *)_this)->_7_19_25_155_prio = trpt->bup.ovals[3];
		((P3 *)_this)->_7_19_25_155_found = trpt->bup.ovals[2];
		((P3 *)_this)->_7_19_25_155_top_task = trpt->bup.ovals[1];
		((P3 *)_this)->_7_19_25_155_prio = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;
;
		;
		
	case 123: // STATE 95
		;
		((P3 *)_this)->_7_19_25_155_found = trpt->bup.ovals[1];
		((P3 *)_this)->_7_19_25_155_top_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 124: // STATE 97
		;
		((P3 *)_this)->_7_19_25_155_prio = trpt->bup.oval;
		;
		goto R999;

	case 125: // STATE 106
		;
		now.topPrio = trpt->bup.ovals[2];
		now.newTask = trpt->bup.ovals[1];
	/* 0 */	((P3 *)_this)->_7_19_25_155_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 126: // STATE 106
		;
		now.topPrio = trpt->bup.ovals[1];
		now.newTask = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 127: // STATE 109
		;
		((P3 *)_this)->_7_19_25_156_deq_idx = trpt->bup.ovals[1];
		((P3 *)_this)->_7_19_25_156_deq_idx = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 128: // STATE 112
		;
		((P3 *)_this)->_7_19_25_156_deq_idx = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index(((P3 *)_this)->_7_19_25_156_deq_idx, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 129: // STATE 113
		;
	/* 0 */	((P3 *)_this)->_7_19_25_156_deq_idx = trpt->bup.oval;
		;
		;
		goto R999;

	case 130: // STATE 127
		;
		now.EP = trpt->bup.ovals[3];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.topPrio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index((now.readyQueue[ Index(now.topPrio, 4) ].tailIndex-1), 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 131: // STATE 127
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 132: // STATE 127
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 133: // STATE 128
		;
		now.int_ctrl_reg = trpt->bup.oval;
		;
		goto R999;

	case 134: // STATE 133
		;
		((P3 *)_this)->counter = trpt->bup.oval;
		;
		goto R999;

	case 135: // STATE 139
		;
		((P3 *)_this)->_7_20_26_needResched = trpt->bup.ovals[5];
		((P3 *)_this)->_7_20_26_interrupted_task = trpt->bup.ovals[4];
		((P3 *)_this)->_7_20_26_needResched = trpt->bup.ovals[3];
		((P3 *)_this)->_7_20_26_taskId = trpt->bup.ovals[2];
		((P3 *)_this)->_7_20_26_idx = trpt->bup.ovals[1];
		((P3 *)_this)->_7_20_26_interrupted_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;

	case 136: // STATE 144
		;
		((P3 *)_this)->_7_20_26_idx = trpt->bup.ovals[3];
		now.tickCount = trpt->bup.ovals[2];
		now.int_ctrl_reg = trpt->bup.ovals[1];
		now.int_save = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 137: // STATE 146
		;
		((P3 *)_this)->_7_20_26_taskId = trpt->bup.oval;
		;
		goto R999;

	case 138: // STATE 149
		;
		now.tcb[ Index(((P3 *)_this)->_7_20_26_taskId, 5) ].delayTicks = trpt->bup.ovals[1];
		now.tcb[ Index(((P3 *)_this)->_7_20_26_taskId, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 139: // STATE 154
		;
		((P3 *)_this)->_7_20_26_159_found = trpt->bup.ovals[4];
		((P3 *)_this)->_7_20_26_159_removePos = trpt->bup.ovals[3];
		((P3 *)_this)->_7_20_26_159_shiftIdx = trpt->bup.ovals[2];
		((P3 *)_this)->_7_20_26_159_found = trpt->bup.ovals[1];
		((P3 *)_this)->_7_20_26_159_removePos = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;
;
		;
		
	case 141: // STATE 157
		;
		((P3 *)_this)->_7_20_26_159_found = trpt->bup.oval;
		;
		goto R999;

	case 142: // STATE 159
		;
		((P3 *)_this)->_7_20_26_159_removePos = trpt->bup.oval;
		;
		goto R999;

	case 143: // STATE 168
		;
		((P3 *)_this)->_7_20_26_159_shiftIdx = trpt->bup.ovals[1];
	/* 0 */	((P3 *)_this)->_7_20_26_159_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 144: // STATE 171
		;
		((P3 *)_this)->_7_20_26_159_shiftIdx = trpt->bup.ovals[1];
		now.sortLink.tasks[ Index(((P3 *)_this)->_7_20_26_159_shiftIdx, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 145: // STATE 178
		;
		now.sortLink.count = trpt->bup.ovals[2];
		now.sortLink.tasks[ Index((now.sortLink.count-1), 8) ] = trpt->bup.ovals[1];
	/* 0 */	((P3 *)_this)->_7_20_26_159_shiftIdx = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 146: // STATE 178
		;
		now.sortLink.count = trpt->bup.ovals[1];
		now.sortLink.tasks[ Index((now.sortLink.count-1), 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 147: // STATE 192
		;
		((P3 *)_this)->_7_20_26_needResched = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.tcb[ Index(((P3 *)_this)->_7_20_26_taskId, 5) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P3 *)_this)->_7_20_26_taskId, 5) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P3 *)_this)->_7_20_26_taskId, 5) ].prio, 4) ].tailIndex, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 148: // STATE 192
		;
		((P3 *)_this)->_7_20_26_needResched = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 149: // STATE 192
		;
		((P3 *)_this)->_7_20_26_needResched = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 150: // STATE 194
		;
		((P3 *)_this)->_7_20_26_idx = trpt->bup.oval;
		;
		goto R999;

	case 151: // STATE 202
		;
		((P3 *)_this)->_7_20_26_interrupted_task = trpt->bup.ovals[1];
	/* 0 */	((P3 *)_this)->_7_20_26_idx = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 152: // STATE 202
		;
		((P3 *)_this)->_7_20_26_interrupted_task = trpt->bup.oval;
		;
		goto R999;

	case 153: // STATE 204
		;
		now.tcb[ Index(((P3 *)_this)->_7_20_26_interrupted_task, 5) ].state = trpt->bup.oval;
		;
		goto R999;

	case 154: // STATE 207
		;
		now.readyQueue[ Index(now.tcb[ Index(((P3 *)_this)->_7_20_26_interrupted_task, 5) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P3 *)_this)->_7_20_26_interrupted_task, 5) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P3 *)_this)->_7_20_26_interrupted_task, 5) ].prio, 4) ].tailIndex, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 156: // STATE 222
		;
		((P3 *)_this)->_7_20_26_162_found = trpt->bup.ovals[5];
		((P3 *)_this)->_7_20_26_162_top_task = trpt->bup.ovals[4];
		((P3 *)_this)->_7_20_26_162_prio = trpt->bup.ovals[3];
		((P3 *)_this)->_7_20_26_162_found = trpt->bup.ovals[2];
		((P3 *)_this)->_7_20_26_162_top_task = trpt->bup.ovals[1];
		((P3 *)_this)->_7_20_26_162_prio = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;
;
		;
		
	case 158: // STATE 226
		;
		((P3 *)_this)->_7_20_26_162_found = trpt->bup.ovals[1];
		((P3 *)_this)->_7_20_26_162_top_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 159: // STATE 228
		;
		((P3 *)_this)->_7_20_26_162_prio = trpt->bup.oval;
		;
		goto R999;

	case 160: // STATE 237
		;
		now.topPrio = trpt->bup.ovals[2];
		now.newTask = trpt->bup.ovals[1];
	/* 0 */	((P3 *)_this)->_7_20_26_162_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 161: // STATE 237
		;
		now.topPrio = trpt->bup.ovals[1];
		now.newTask = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 162: // STATE 240
		;
		((P3 *)_this)->_7_20_26_163_deq_idx = trpt->bup.ovals[1];
		((P3 *)_this)->_7_20_26_163_deq_idx = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 163: // STATE 243
		;
		((P3 *)_this)->_7_20_26_163_deq_idx = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index(((P3 *)_this)->_7_20_26_163_deq_idx, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 164: // STATE 244
		;
	/* 0 */	((P3 *)_this)->_7_20_26_163_deq_idx = trpt->bup.oval;
		;
		;
		goto R999;

	case 165: // STATE 258
		;
		now.EP = trpt->bup.ovals[3];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.topPrio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index((now.readyQueue[ Index(now.topPrio, 4) ].tailIndex-1), 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 166: // STATE 258
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 167: // STATE 258
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 168: // STATE 259
		;
		now.int_ctrl_reg = trpt->bup.oval;
		;
		goto R999;

	case 169: // STATE 264
		;
		((P3 *)_this)->work = trpt->bup.oval;
		;
		goto R999;

	case 170: // STATE 270
		;
		((P3 *)_this)->_7_21_27_needResched = trpt->bup.ovals[5];
		((P3 *)_this)->_7_21_27_interrupted_task = trpt->bup.ovals[4];
		((P3 *)_this)->_7_21_27_needResched = trpt->bup.ovals[3];
		((P3 *)_this)->_7_21_27_taskId = trpt->bup.ovals[2];
		((P3 *)_this)->_7_21_27_idx = trpt->bup.ovals[1];
		((P3 *)_this)->_7_21_27_interrupted_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;

	case 171: // STATE 275
		;
		((P3 *)_this)->_7_21_27_idx = trpt->bup.ovals[3];
		now.tickCount = trpt->bup.ovals[2];
		now.int_ctrl_reg = trpt->bup.ovals[1];
		now.int_save = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 172: // STATE 277
		;
		((P3 *)_this)->_7_21_27_taskId = trpt->bup.oval;
		;
		goto R999;

	case 173: // STATE 280
		;
		now.tcb[ Index(((P3 *)_this)->_7_21_27_taskId, 5) ].delayTicks = trpt->bup.ovals[1];
		now.tcb[ Index(((P3 *)_this)->_7_21_27_taskId, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 174: // STATE 285
		;
		((P3 *)_this)->_7_21_27_166_found = trpt->bup.ovals[4];
		((P3 *)_this)->_7_21_27_166_removePos = trpt->bup.ovals[3];
		((P3 *)_this)->_7_21_27_166_shiftIdx = trpt->bup.ovals[2];
		((P3 *)_this)->_7_21_27_166_found = trpt->bup.ovals[1];
		((P3 *)_this)->_7_21_27_166_removePos = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;
;
		;
		
	case 176: // STATE 288
		;
		((P3 *)_this)->_7_21_27_166_found = trpt->bup.oval;
		;
		goto R999;

	case 177: // STATE 290
		;
		((P3 *)_this)->_7_21_27_166_removePos = trpt->bup.oval;
		;
		goto R999;

	case 178: // STATE 299
		;
		((P3 *)_this)->_7_21_27_166_shiftIdx = trpt->bup.ovals[1];
	/* 0 */	((P3 *)_this)->_7_21_27_166_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 179: // STATE 302
		;
		((P3 *)_this)->_7_21_27_166_shiftIdx = trpt->bup.ovals[1];
		now.sortLink.tasks[ Index(((P3 *)_this)->_7_21_27_166_shiftIdx, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 180: // STATE 309
		;
		now.sortLink.count = trpt->bup.ovals[2];
		now.sortLink.tasks[ Index((now.sortLink.count-1), 8) ] = trpt->bup.ovals[1];
	/* 0 */	((P3 *)_this)->_7_21_27_166_shiftIdx = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 181: // STATE 309
		;
		now.sortLink.count = trpt->bup.ovals[1];
		now.sortLink.tasks[ Index((now.sortLink.count-1), 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 182: // STATE 323
		;
		((P3 *)_this)->_7_21_27_needResched = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.tcb[ Index(((P3 *)_this)->_7_21_27_taskId, 5) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P3 *)_this)->_7_21_27_taskId, 5) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P3 *)_this)->_7_21_27_taskId, 5) ].prio, 4) ].tailIndex, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 183: // STATE 323
		;
		((P3 *)_this)->_7_21_27_needResched = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 184: // STATE 323
		;
		((P3 *)_this)->_7_21_27_needResched = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 185: // STATE 325
		;
		((P3 *)_this)->_7_21_27_idx = trpt->bup.oval;
		;
		goto R999;

	case 186: // STATE 333
		;
		((P3 *)_this)->_7_21_27_interrupted_task = trpt->bup.ovals[1];
	/* 0 */	((P3 *)_this)->_7_21_27_idx = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 187: // STATE 333
		;
		((P3 *)_this)->_7_21_27_interrupted_task = trpt->bup.oval;
		;
		goto R999;

	case 188: // STATE 335
		;
		now.tcb[ Index(((P3 *)_this)->_7_21_27_interrupted_task, 5) ].state = trpt->bup.oval;
		;
		goto R999;

	case 189: // STATE 338
		;
		now.readyQueue[ Index(now.tcb[ Index(((P3 *)_this)->_7_21_27_interrupted_task, 5) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P3 *)_this)->_7_21_27_interrupted_task, 5) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P3 *)_this)->_7_21_27_interrupted_task, 5) ].prio, 4) ].tailIndex, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 191: // STATE 353
		;
		((P3 *)_this)->_7_21_27_169_found = trpt->bup.ovals[5];
		((P3 *)_this)->_7_21_27_169_top_task = trpt->bup.ovals[4];
		((P3 *)_this)->_7_21_27_169_prio = trpt->bup.ovals[3];
		((P3 *)_this)->_7_21_27_169_found = trpt->bup.ovals[2];
		((P3 *)_this)->_7_21_27_169_top_task = trpt->bup.ovals[1];
		((P3 *)_this)->_7_21_27_169_prio = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;
;
		;
		
	case 193: // STATE 357
		;
		((P3 *)_this)->_7_21_27_169_found = trpt->bup.ovals[1];
		((P3 *)_this)->_7_21_27_169_top_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 194: // STATE 359
		;
		((P3 *)_this)->_7_21_27_169_prio = trpt->bup.oval;
		;
		goto R999;

	case 195: // STATE 368
		;
		now.topPrio = trpt->bup.ovals[2];
		now.newTask = trpt->bup.ovals[1];
	/* 0 */	((P3 *)_this)->_7_21_27_169_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 196: // STATE 368
		;
		now.topPrio = trpt->bup.ovals[1];
		now.newTask = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 197: // STATE 371
		;
		((P3 *)_this)->_7_21_27_170_deq_idx = trpt->bup.ovals[1];
		((P3 *)_this)->_7_21_27_170_deq_idx = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 198: // STATE 374
		;
		((P3 *)_this)->_7_21_27_170_deq_idx = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index(((P3 *)_this)->_7_21_27_170_deq_idx, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 199: // STATE 375
		;
	/* 0 */	((P3 *)_this)->_7_21_27_170_deq_idx = trpt->bup.oval;
		;
		;
		goto R999;

	case 200: // STATE 389
		;
		now.EP = trpt->bup.ovals[3];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.topPrio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index((now.readyQueue[ Index(now.topPrio, 4) ].tailIndex-1), 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 201: // STATE 389
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 202: // STATE 389
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 203: // STATE 390
		;
		now.int_ctrl_reg = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 205: // STATE 395
		;
		((P3 *)_this)->_7_22_28_currentTask = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 207: // STATE 403
		;
		now.tcb[ Index(((P3 *)_this)->_7_22_28_currentTask, 5) ].delayTicks = trpt->bup.ovals[5];
		now.tcb[ Index(((P3 *)_this)->_7_22_28_currentTask, 5) ].wakeupTime = trpt->bup.ovals[4];
		now.tcb[ Index(((P3 *)_this)->_7_22_28_currentTask, 5) ].state = trpt->bup.ovals[3];
		((P3 *)_this)->_7_22_28_currentTask = trpt->bup.ovals[2];
		now.int_ctrl_reg = trpt->bup.ovals[1];
		now.int_save = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;

	case 208: // STATE 406
		;
		now.sortLink.count = trpt->bup.ovals[1];
		now.sortLink.tasks[ Index(now.sortLink.count, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 210: // STATE 417
		;
		((P3 *)_this)->_7_22_28_174_needResched = trpt->bup.ovals[5];
		((P3 *)_this)->_7_22_28_174_interrupted_task = trpt->bup.ovals[4];
		((P3 *)_this)->_7_22_28_174_needResched = trpt->bup.ovals[3];
		((P3 *)_this)->_7_22_28_174_taskId = trpt->bup.ovals[2];
		((P3 *)_this)->_7_22_28_174_idx = trpt->bup.ovals[1];
		((P3 *)_this)->_7_22_28_174_interrupted_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;

	case 211: // STATE 422
		;
		((P3 *)_this)->_7_22_28_174_idx = trpt->bup.ovals[3];
		now.tickCount = trpt->bup.ovals[2];
		now.int_ctrl_reg = trpt->bup.ovals[1];
		now.int_save = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 212: // STATE 424
		;
		((P3 *)_this)->_7_22_28_174_taskId = trpt->bup.oval;
		;
		goto R999;

	case 213: // STATE 427
		;
		now.tcb[ Index(((P3 *)_this)->_7_22_28_174_taskId, 5) ].delayTicks = trpt->bup.ovals[1];
		now.tcb[ Index(((P3 *)_this)->_7_22_28_174_taskId, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 214: // STATE 432
		;
		((P3 *)_this)->_7_22_28_174_44_found = trpt->bup.ovals[4];
		((P3 *)_this)->_7_22_28_174_44_removePos = trpt->bup.ovals[3];
		((P3 *)_this)->_7_22_28_174_44_shiftIdx = trpt->bup.ovals[2];
		((P3 *)_this)->_7_22_28_174_44_found = trpt->bup.ovals[1];
		((P3 *)_this)->_7_22_28_174_44_removePos = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;
;
		;
		
	case 216: // STATE 435
		;
		((P3 *)_this)->_7_22_28_174_44_found = trpt->bup.oval;
		;
		goto R999;

	case 217: // STATE 437
		;
		((P3 *)_this)->_7_22_28_174_44_removePos = trpt->bup.oval;
		;
		goto R999;

	case 218: // STATE 446
		;
		((P3 *)_this)->_7_22_28_174_44_shiftIdx = trpt->bup.ovals[1];
	/* 0 */	((P3 *)_this)->_7_22_28_174_44_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 219: // STATE 449
		;
		((P3 *)_this)->_7_22_28_174_44_shiftIdx = trpt->bup.ovals[1];
		now.sortLink.tasks[ Index(((P3 *)_this)->_7_22_28_174_44_shiftIdx, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 220: // STATE 456
		;
		now.sortLink.count = trpt->bup.ovals[2];
		now.sortLink.tasks[ Index((now.sortLink.count-1), 8) ] = trpt->bup.ovals[1];
	/* 0 */	((P3 *)_this)->_7_22_28_174_44_shiftIdx = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 221: // STATE 456
		;
		now.sortLink.count = trpt->bup.ovals[1];
		now.sortLink.tasks[ Index((now.sortLink.count-1), 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 222: // STATE 470
		;
		((P3 *)_this)->_7_22_28_174_needResched = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.tcb[ Index(((P3 *)_this)->_7_22_28_174_taskId, 5) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P3 *)_this)->_7_22_28_174_taskId, 5) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P3 *)_this)->_7_22_28_174_taskId, 5) ].prio, 4) ].tailIndex, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 223: // STATE 470
		;
		((P3 *)_this)->_7_22_28_174_needResched = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 224: // STATE 470
		;
		((P3 *)_this)->_7_22_28_174_needResched = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 225: // STATE 472
		;
		((P3 *)_this)->_7_22_28_174_idx = trpt->bup.oval;
		;
		goto R999;

	case 226: // STATE 480
		;
		((P3 *)_this)->_7_22_28_174_interrupted_task = trpt->bup.ovals[1];
	/* 0 */	((P3 *)_this)->_7_22_28_174_idx = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 227: // STATE 480
		;
		((P3 *)_this)->_7_22_28_174_interrupted_task = trpt->bup.oval;
		;
		goto R999;

	case 228: // STATE 482
		;
		now.tcb[ Index(((P3 *)_this)->_7_22_28_174_interrupted_task, 5) ].state = trpt->bup.oval;
		;
		goto R999;

	case 229: // STATE 485
		;
		now.readyQueue[ Index(now.tcb[ Index(((P3 *)_this)->_7_22_28_174_interrupted_task, 5) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P3 *)_this)->_7_22_28_174_interrupted_task, 5) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P3 *)_this)->_7_22_28_174_interrupted_task, 5) ].prio, 4) ].tailIndex, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 231: // STATE 500
		;
		((P3 *)_this)->_7_22_28_174_47_found = trpt->bup.ovals[5];
		((P3 *)_this)->_7_22_28_174_47_top_task = trpt->bup.ovals[4];
		((P3 *)_this)->_7_22_28_174_47_prio = trpt->bup.ovals[3];
		((P3 *)_this)->_7_22_28_174_47_found = trpt->bup.ovals[2];
		((P3 *)_this)->_7_22_28_174_47_top_task = trpt->bup.ovals[1];
		((P3 *)_this)->_7_22_28_174_47_prio = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;
;
		;
		
	case 233: // STATE 504
		;
		((P3 *)_this)->_7_22_28_174_47_found = trpt->bup.ovals[1];
		((P3 *)_this)->_7_22_28_174_47_top_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 234: // STATE 506
		;
		((P3 *)_this)->_7_22_28_174_47_prio = trpt->bup.oval;
		;
		goto R999;

	case 235: // STATE 515
		;
		now.topPrio = trpt->bup.ovals[2];
		now.newTask = trpt->bup.ovals[1];
	/* 0 */	((P3 *)_this)->_7_22_28_174_47_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 236: // STATE 515
		;
		now.topPrio = trpt->bup.ovals[1];
		now.newTask = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 237: // STATE 518
		;
		((P3 *)_this)->_7_22_28_174_48_deq_idx = trpt->bup.ovals[1];
		((P3 *)_this)->_7_22_28_174_48_deq_idx = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 238: // STATE 521
		;
		((P3 *)_this)->_7_22_28_174_48_deq_idx = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index(((P3 *)_this)->_7_22_28_174_48_deq_idx, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 239: // STATE 522
		;
	/* 0 */	((P3 *)_this)->_7_22_28_174_48_deq_idx = trpt->bup.oval;
		;
		;
		goto R999;

	case 240: // STATE 536
		;
		now.EP = trpt->bup.ovals[3];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.topPrio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index((now.readyQueue[ Index(now.topPrio, 4) ].tailIndex-1), 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 241: // STATE 536
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 242: // STATE 536
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 243: // STATE 537
		;
		now.int_ctrl_reg = trpt->bup.oval;
		;
		goto R999;

	case 244: // STATE 540
		;
		now.int_ctrl_reg = trpt->bup.oval;
		;
		goto R999;

	case 245: // STATE 552
		;
		((P3 *)_this)->_7_22_29_needResched = trpt->bup.ovals[5];
		((P3 *)_this)->_7_22_29_interrupted_task = trpt->bup.ovals[4];
		((P3 *)_this)->_7_22_29_needResched = trpt->bup.ovals[3];
		((P3 *)_this)->_7_22_29_taskId = trpt->bup.ovals[2];
		((P3 *)_this)->_7_22_29_idx = trpt->bup.ovals[1];
		((P3 *)_this)->_7_22_29_interrupted_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;

	case 246: // STATE 557
		;
		((P3 *)_this)->_7_22_29_idx = trpt->bup.ovals[3];
		now.tickCount = trpt->bup.ovals[2];
		now.int_ctrl_reg = trpt->bup.ovals[1];
		now.int_save = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 247: // STATE 559
		;
		((P3 *)_this)->_7_22_29_taskId = trpt->bup.oval;
		;
		goto R999;

	case 248: // STATE 562
		;
		now.tcb[ Index(((P3 *)_this)->_7_22_29_taskId, 5) ].delayTicks = trpt->bup.ovals[1];
		now.tcb[ Index(((P3 *)_this)->_7_22_29_taskId, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 249: // STATE 567
		;
		((P3 *)_this)->_7_22_29_177_found = trpt->bup.ovals[4];
		((P3 *)_this)->_7_22_29_177_removePos = trpt->bup.ovals[3];
		((P3 *)_this)->_7_22_29_177_shiftIdx = trpt->bup.ovals[2];
		((P3 *)_this)->_7_22_29_177_found = trpt->bup.ovals[1];
		((P3 *)_this)->_7_22_29_177_removePos = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;
;
		;
		
	case 251: // STATE 570
		;
		((P3 *)_this)->_7_22_29_177_found = trpt->bup.oval;
		;
		goto R999;

	case 252: // STATE 572
		;
		((P3 *)_this)->_7_22_29_177_removePos = trpt->bup.oval;
		;
		goto R999;

	case 253: // STATE 581
		;
		((P3 *)_this)->_7_22_29_177_shiftIdx = trpt->bup.ovals[1];
	/* 0 */	((P3 *)_this)->_7_22_29_177_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 254: // STATE 584
		;
		((P3 *)_this)->_7_22_29_177_shiftIdx = trpt->bup.ovals[1];
		now.sortLink.tasks[ Index(((P3 *)_this)->_7_22_29_177_shiftIdx, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 255: // STATE 591
		;
		now.sortLink.count = trpt->bup.ovals[2];
		now.sortLink.tasks[ Index((now.sortLink.count-1), 8) ] = trpt->bup.ovals[1];
	/* 0 */	((P3 *)_this)->_7_22_29_177_shiftIdx = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 256: // STATE 591
		;
		now.sortLink.count = trpt->bup.ovals[1];
		now.sortLink.tasks[ Index((now.sortLink.count-1), 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 257: // STATE 605
		;
		((P3 *)_this)->_7_22_29_needResched = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.tcb[ Index(((P3 *)_this)->_7_22_29_taskId, 5) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P3 *)_this)->_7_22_29_taskId, 5) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P3 *)_this)->_7_22_29_taskId, 5) ].prio, 4) ].tailIndex, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 258: // STATE 605
		;
		((P3 *)_this)->_7_22_29_needResched = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 259: // STATE 605
		;
		((P3 *)_this)->_7_22_29_needResched = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 260: // STATE 607
		;
		((P3 *)_this)->_7_22_29_idx = trpt->bup.oval;
		;
		goto R999;

	case 261: // STATE 615
		;
		((P3 *)_this)->_7_22_29_interrupted_task = trpt->bup.ovals[1];
	/* 0 */	((P3 *)_this)->_7_22_29_idx = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 262: // STATE 615
		;
		((P3 *)_this)->_7_22_29_interrupted_task = trpt->bup.oval;
		;
		goto R999;

	case 263: // STATE 617
		;
		now.tcb[ Index(((P3 *)_this)->_7_22_29_interrupted_task, 5) ].state = trpt->bup.oval;
		;
		goto R999;

	case 264: // STATE 620
		;
		now.readyQueue[ Index(now.tcb[ Index(((P3 *)_this)->_7_22_29_interrupted_task, 5) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P3 *)_this)->_7_22_29_interrupted_task, 5) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P3 *)_this)->_7_22_29_interrupted_task, 5) ].prio, 4) ].tailIndex, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 266: // STATE 635
		;
		((P3 *)_this)->_7_22_29_180_found = trpt->bup.ovals[5];
		((P3 *)_this)->_7_22_29_180_top_task = trpt->bup.ovals[4];
		((P3 *)_this)->_7_22_29_180_prio = trpt->bup.ovals[3];
		((P3 *)_this)->_7_22_29_180_found = trpt->bup.ovals[2];
		((P3 *)_this)->_7_22_29_180_top_task = trpt->bup.ovals[1];
		((P3 *)_this)->_7_22_29_180_prio = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;
;
		;
		
	case 268: // STATE 639
		;
		((P3 *)_this)->_7_22_29_180_found = trpt->bup.ovals[1];
		((P3 *)_this)->_7_22_29_180_top_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 269: // STATE 641
		;
		((P3 *)_this)->_7_22_29_180_prio = trpt->bup.oval;
		;
		goto R999;

	case 270: // STATE 650
		;
		now.topPrio = trpt->bup.ovals[2];
		now.newTask = trpt->bup.ovals[1];
	/* 0 */	((P3 *)_this)->_7_22_29_180_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 271: // STATE 650
		;
		now.topPrio = trpt->bup.ovals[1];
		now.newTask = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 272: // STATE 653
		;
		((P3 *)_this)->_7_22_29_181_deq_idx = trpt->bup.ovals[1];
		((P3 *)_this)->_7_22_29_181_deq_idx = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 273: // STATE 656
		;
		((P3 *)_this)->_7_22_29_181_deq_idx = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index(((P3 *)_this)->_7_22_29_181_deq_idx, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 274: // STATE 657
		;
	/* 0 */	((P3 *)_this)->_7_22_29_181_deq_idx = trpt->bup.oval;
		;
		;
		goto R999;

	case 275: // STATE 671
		;
		now.EP = trpt->bup.ovals[3];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.topPrio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index((now.readyQueue[ Index(now.topPrio, 4) ].tailIndex-1), 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 276: // STATE 671
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 277: // STATE 671
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 278: // STATE 672
		;
		now.int_ctrl_reg = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 280: // STATE 677
		;
		((P3 *)_this)->_7_23_30_currentTask = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 282: // STATE 685
		;
		now.tcb[ Index(((P3 *)_this)->_7_23_30_currentTask, 5) ].delayTicks = trpt->bup.ovals[5];
		now.tcb[ Index(((P3 *)_this)->_7_23_30_currentTask, 5) ].wakeupTime = trpt->bup.ovals[4];
		now.tcb[ Index(((P3 *)_this)->_7_23_30_currentTask, 5) ].state = trpt->bup.ovals[3];
		((P3 *)_this)->_7_23_30_currentTask = trpt->bup.ovals[2];
		now.int_ctrl_reg = trpt->bup.ovals[1];
		now.int_save = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;

	case 283: // STATE 688
		;
		now.sortLink.count = trpt->bup.ovals[1];
		now.sortLink.tasks[ Index(now.sortLink.count, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 285: // STATE 699
		;
		((P3 *)_this)->_7_23_30_185_needResched = trpt->bup.ovals[5];
		((P3 *)_this)->_7_23_30_185_interrupted_task = trpt->bup.ovals[4];
		((P3 *)_this)->_7_23_30_185_needResched = trpt->bup.ovals[3];
		((P3 *)_this)->_7_23_30_185_taskId = trpt->bup.ovals[2];
		((P3 *)_this)->_7_23_30_185_idx = trpt->bup.ovals[1];
		((P3 *)_this)->_7_23_30_185_interrupted_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;

	case 286: // STATE 704
		;
		((P3 *)_this)->_7_23_30_185_idx = trpt->bup.ovals[3];
		now.tickCount = trpt->bup.ovals[2];
		now.int_ctrl_reg = trpt->bup.ovals[1];
		now.int_save = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 287: // STATE 706
		;
		((P3 *)_this)->_7_23_30_185_taskId = trpt->bup.oval;
		;
		goto R999;

	case 288: // STATE 709
		;
		now.tcb[ Index(((P3 *)_this)->_7_23_30_185_taskId, 5) ].delayTicks = trpt->bup.ovals[1];
		now.tcb[ Index(((P3 *)_this)->_7_23_30_185_taskId, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 289: // STATE 714
		;
		((P3 *)_this)->_7_23_30_185_51_found = trpt->bup.ovals[4];
		((P3 *)_this)->_7_23_30_185_51_removePos = trpt->bup.ovals[3];
		((P3 *)_this)->_7_23_30_185_51_shiftIdx = trpt->bup.ovals[2];
		((P3 *)_this)->_7_23_30_185_51_found = trpt->bup.ovals[1];
		((P3 *)_this)->_7_23_30_185_51_removePos = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;
;
		;
		
	case 291: // STATE 717
		;
		((P3 *)_this)->_7_23_30_185_51_found = trpt->bup.oval;
		;
		goto R999;

	case 292: // STATE 719
		;
		((P3 *)_this)->_7_23_30_185_51_removePos = trpt->bup.oval;
		;
		goto R999;

	case 293: // STATE 728
		;
		((P3 *)_this)->_7_23_30_185_51_shiftIdx = trpt->bup.ovals[1];
	/* 0 */	((P3 *)_this)->_7_23_30_185_51_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 294: // STATE 731
		;
		((P3 *)_this)->_7_23_30_185_51_shiftIdx = trpt->bup.ovals[1];
		now.sortLink.tasks[ Index(((P3 *)_this)->_7_23_30_185_51_shiftIdx, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 295: // STATE 738
		;
		now.sortLink.count = trpt->bup.ovals[2];
		now.sortLink.tasks[ Index((now.sortLink.count-1), 8) ] = trpt->bup.ovals[1];
	/* 0 */	((P3 *)_this)->_7_23_30_185_51_shiftIdx = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 296: // STATE 738
		;
		now.sortLink.count = trpt->bup.ovals[1];
		now.sortLink.tasks[ Index((now.sortLink.count-1), 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 297: // STATE 752
		;
		((P3 *)_this)->_7_23_30_185_needResched = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.tcb[ Index(((P3 *)_this)->_7_23_30_185_taskId, 5) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P3 *)_this)->_7_23_30_185_taskId, 5) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P3 *)_this)->_7_23_30_185_taskId, 5) ].prio, 4) ].tailIndex, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 298: // STATE 752
		;
		((P3 *)_this)->_7_23_30_185_needResched = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 299: // STATE 752
		;
		((P3 *)_this)->_7_23_30_185_needResched = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 300: // STATE 754
		;
		((P3 *)_this)->_7_23_30_185_idx = trpt->bup.oval;
		;
		goto R999;

	case 301: // STATE 762
		;
		((P3 *)_this)->_7_23_30_185_interrupted_task = trpt->bup.ovals[1];
	/* 0 */	((P3 *)_this)->_7_23_30_185_idx = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 302: // STATE 762
		;
		((P3 *)_this)->_7_23_30_185_interrupted_task = trpt->bup.oval;
		;
		goto R999;

	case 303: // STATE 764
		;
		now.tcb[ Index(((P3 *)_this)->_7_23_30_185_interrupted_task, 5) ].state = trpt->bup.oval;
		;
		goto R999;

	case 304: // STATE 767
		;
		now.readyQueue[ Index(now.tcb[ Index(((P3 *)_this)->_7_23_30_185_interrupted_task, 5) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P3 *)_this)->_7_23_30_185_interrupted_task, 5) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P3 *)_this)->_7_23_30_185_interrupted_task, 5) ].prio, 4) ].tailIndex, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 306: // STATE 782
		;
		((P3 *)_this)->_7_23_30_185_54_found = trpt->bup.ovals[5];
		((P3 *)_this)->_7_23_30_185_54_top_task = trpt->bup.ovals[4];
		((P3 *)_this)->_7_23_30_185_54_prio = trpt->bup.ovals[3];
		((P3 *)_this)->_7_23_30_185_54_found = trpt->bup.ovals[2];
		((P3 *)_this)->_7_23_30_185_54_top_task = trpt->bup.ovals[1];
		((P3 *)_this)->_7_23_30_185_54_prio = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;
;
		;
		
	case 308: // STATE 786
		;
		((P3 *)_this)->_7_23_30_185_54_found = trpt->bup.ovals[1];
		((P3 *)_this)->_7_23_30_185_54_top_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 309: // STATE 788
		;
		((P3 *)_this)->_7_23_30_185_54_prio = trpt->bup.oval;
		;
		goto R999;

	case 310: // STATE 797
		;
		now.topPrio = trpt->bup.ovals[2];
		now.newTask = trpt->bup.ovals[1];
	/* 0 */	((P3 *)_this)->_7_23_30_185_54_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 311: // STATE 797
		;
		now.topPrio = trpt->bup.ovals[1];
		now.newTask = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 312: // STATE 800
		;
		((P3 *)_this)->_7_23_30_185_55_deq_idx = trpt->bup.ovals[1];
		((P3 *)_this)->_7_23_30_185_55_deq_idx = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 313: // STATE 803
		;
		((P3 *)_this)->_7_23_30_185_55_deq_idx = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index(((P3 *)_this)->_7_23_30_185_55_deq_idx, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 314: // STATE 804
		;
	/* 0 */	((P3 *)_this)->_7_23_30_185_55_deq_idx = trpt->bup.oval;
		;
		;
		goto R999;

	case 315: // STATE 818
		;
		now.EP = trpt->bup.ovals[3];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.topPrio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index((now.readyQueue[ Index(now.topPrio, 4) ].tailIndex-1), 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 316: // STATE 818
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 317: // STATE 818
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 318: // STATE 819
		;
		now.int_ctrl_reg = trpt->bup.oval;
		;
		goto R999;

	case 319: // STATE 822
		;
		now.int_ctrl_reg = trpt->bup.oval;
		;
		goto R999;

	case 320: // STATE 834
		;
		((P3 *)_this)->_7_23_31_needResched = trpt->bup.ovals[5];
		((P3 *)_this)->_7_23_31_interrupted_task = trpt->bup.ovals[4];
		((P3 *)_this)->_7_23_31_needResched = trpt->bup.ovals[3];
		((P3 *)_this)->_7_23_31_taskId = trpt->bup.ovals[2];
		((P3 *)_this)->_7_23_31_idx = trpt->bup.ovals[1];
		((P3 *)_this)->_7_23_31_interrupted_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;

	case 321: // STATE 839
		;
		((P3 *)_this)->_7_23_31_idx = trpt->bup.ovals[3];
		now.tickCount = trpt->bup.ovals[2];
		now.int_ctrl_reg = trpt->bup.ovals[1];
		now.int_save = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 322: // STATE 841
		;
		((P3 *)_this)->_7_23_31_taskId = trpt->bup.oval;
		;
		goto R999;

	case 323: // STATE 844
		;
		now.tcb[ Index(((P3 *)_this)->_7_23_31_taskId, 5) ].delayTicks = trpt->bup.ovals[1];
		now.tcb[ Index(((P3 *)_this)->_7_23_31_taskId, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 324: // STATE 849
		;
		((P3 *)_this)->_7_23_31_188_found = trpt->bup.ovals[4];
		((P3 *)_this)->_7_23_31_188_removePos = trpt->bup.ovals[3];
		((P3 *)_this)->_7_23_31_188_shiftIdx = trpt->bup.ovals[2];
		((P3 *)_this)->_7_23_31_188_found = trpt->bup.ovals[1];
		((P3 *)_this)->_7_23_31_188_removePos = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;
;
		;
		
	case 326: // STATE 852
		;
		((P3 *)_this)->_7_23_31_188_found = trpt->bup.oval;
		;
		goto R999;

	case 327: // STATE 854
		;
		((P3 *)_this)->_7_23_31_188_removePos = trpt->bup.oval;
		;
		goto R999;

	case 328: // STATE 863
		;
		((P3 *)_this)->_7_23_31_188_shiftIdx = trpt->bup.ovals[1];
	/* 0 */	((P3 *)_this)->_7_23_31_188_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 329: // STATE 866
		;
		((P3 *)_this)->_7_23_31_188_shiftIdx = trpt->bup.ovals[1];
		now.sortLink.tasks[ Index(((P3 *)_this)->_7_23_31_188_shiftIdx, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 330: // STATE 873
		;
		now.sortLink.count = trpt->bup.ovals[2];
		now.sortLink.tasks[ Index((now.sortLink.count-1), 8) ] = trpt->bup.ovals[1];
	/* 0 */	((P3 *)_this)->_7_23_31_188_shiftIdx = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 331: // STATE 873
		;
		now.sortLink.count = trpt->bup.ovals[1];
		now.sortLink.tasks[ Index((now.sortLink.count-1), 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 332: // STATE 887
		;
		((P3 *)_this)->_7_23_31_needResched = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.tcb[ Index(((P3 *)_this)->_7_23_31_taskId, 5) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P3 *)_this)->_7_23_31_taskId, 5) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P3 *)_this)->_7_23_31_taskId, 5) ].prio, 4) ].tailIndex, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 333: // STATE 887
		;
		((P3 *)_this)->_7_23_31_needResched = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 334: // STATE 887
		;
		((P3 *)_this)->_7_23_31_needResched = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 335: // STATE 889
		;
		((P3 *)_this)->_7_23_31_idx = trpt->bup.oval;
		;
		goto R999;

	case 336: // STATE 897
		;
		((P3 *)_this)->_7_23_31_interrupted_task = trpt->bup.ovals[1];
	/* 0 */	((P3 *)_this)->_7_23_31_idx = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 337: // STATE 897
		;
		((P3 *)_this)->_7_23_31_interrupted_task = trpt->bup.oval;
		;
		goto R999;

	case 338: // STATE 899
		;
		now.tcb[ Index(((P3 *)_this)->_7_23_31_interrupted_task, 5) ].state = trpt->bup.oval;
		;
		goto R999;

	case 339: // STATE 902
		;
		now.readyQueue[ Index(now.tcb[ Index(((P3 *)_this)->_7_23_31_interrupted_task, 5) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P3 *)_this)->_7_23_31_interrupted_task, 5) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P3 *)_this)->_7_23_31_interrupted_task, 5) ].prio, 4) ].tailIndex, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 341: // STATE 917
		;
		((P3 *)_this)->_7_23_31_191_found = trpt->bup.ovals[5];
		((P3 *)_this)->_7_23_31_191_top_task = trpt->bup.ovals[4];
		((P3 *)_this)->_7_23_31_191_prio = trpt->bup.ovals[3];
		((P3 *)_this)->_7_23_31_191_found = trpt->bup.ovals[2];
		((P3 *)_this)->_7_23_31_191_top_task = trpt->bup.ovals[1];
		((P3 *)_this)->_7_23_31_191_prio = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;
;
		;
		
	case 343: // STATE 921
		;
		((P3 *)_this)->_7_23_31_191_found = trpt->bup.ovals[1];
		((P3 *)_this)->_7_23_31_191_top_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 344: // STATE 923
		;
		((P3 *)_this)->_7_23_31_191_prio = trpt->bup.oval;
		;
		goto R999;

	case 345: // STATE 932
		;
		now.topPrio = trpt->bup.ovals[2];
		now.newTask = trpt->bup.ovals[1];
	/* 0 */	((P3 *)_this)->_7_23_31_191_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 346: // STATE 932
		;
		now.topPrio = trpt->bup.ovals[1];
		now.newTask = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 347: // STATE 935
		;
		((P3 *)_this)->_7_23_31_192_deq_idx = trpt->bup.ovals[1];
		((P3 *)_this)->_7_23_31_192_deq_idx = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 348: // STATE 938
		;
		((P3 *)_this)->_7_23_31_192_deq_idx = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index(((P3 *)_this)->_7_23_31_192_deq_idx, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 349: // STATE 939
		;
	/* 0 */	((P3 *)_this)->_7_23_31_192_deq_idx = trpt->bup.oval;
		;
		;
		goto R999;

	case 350: // STATE 953
		;
		now.EP = trpt->bup.ovals[3];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.topPrio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index((now.readyQueue[ Index(now.topPrio, 4) ].tailIndex-1), 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 351: // STATE 953
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 352: // STATE 953
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 353: // STATE 954
		;
		now.int_ctrl_reg = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 356: // STATE 966
		;
		((P3 *)_this)->_7_24_32_needResched = trpt->bup.ovals[5];
		((P3 *)_this)->_7_24_32_interrupted_task = trpt->bup.ovals[4];
		((P3 *)_this)->_7_24_32_needResched = trpt->bup.ovals[3];
		((P3 *)_this)->_7_24_32_taskId = trpt->bup.ovals[2];
		((P3 *)_this)->_7_24_32_idx = trpt->bup.ovals[1];
		((P3 *)_this)->_7_24_32_interrupted_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;

	case 357: // STATE 971
		;
		((P3 *)_this)->_7_24_32_idx = trpt->bup.ovals[3];
		now.tickCount = trpt->bup.ovals[2];
		now.int_ctrl_reg = trpt->bup.ovals[1];
		now.int_save = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 358: // STATE 973
		;
		((P3 *)_this)->_7_24_32_taskId = trpt->bup.oval;
		;
		goto R999;

	case 359: // STATE 976
		;
		now.tcb[ Index(((P3 *)_this)->_7_24_32_taskId, 5) ].delayTicks = trpt->bup.ovals[1];
		now.tcb[ Index(((P3 *)_this)->_7_24_32_taskId, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 360: // STATE 981
		;
		((P3 *)_this)->_7_24_32_195_found = trpt->bup.ovals[4];
		((P3 *)_this)->_7_24_32_195_removePos = trpt->bup.ovals[3];
		((P3 *)_this)->_7_24_32_195_shiftIdx = trpt->bup.ovals[2];
		((P3 *)_this)->_7_24_32_195_found = trpt->bup.ovals[1];
		((P3 *)_this)->_7_24_32_195_removePos = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;
;
		;
		
	case 362: // STATE 984
		;
		((P3 *)_this)->_7_24_32_195_found = trpt->bup.oval;
		;
		goto R999;

	case 363: // STATE 986
		;
		((P3 *)_this)->_7_24_32_195_removePos = trpt->bup.oval;
		;
		goto R999;

	case 364: // STATE 995
		;
		((P3 *)_this)->_7_24_32_195_shiftIdx = trpt->bup.ovals[1];
	/* 0 */	((P3 *)_this)->_7_24_32_195_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 365: // STATE 998
		;
		((P3 *)_this)->_7_24_32_195_shiftIdx = trpt->bup.ovals[1];
		now.sortLink.tasks[ Index(((P3 *)_this)->_7_24_32_195_shiftIdx, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 366: // STATE 1005
		;
		now.sortLink.count = trpt->bup.ovals[2];
		now.sortLink.tasks[ Index((now.sortLink.count-1), 8) ] = trpt->bup.ovals[1];
	/* 0 */	((P3 *)_this)->_7_24_32_195_shiftIdx = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 367: // STATE 1005
		;
		now.sortLink.count = trpt->bup.ovals[1];
		now.sortLink.tasks[ Index((now.sortLink.count-1), 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 368: // STATE 1019
		;
		((P3 *)_this)->_7_24_32_needResched = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.tcb[ Index(((P3 *)_this)->_7_24_32_taskId, 5) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P3 *)_this)->_7_24_32_taskId, 5) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P3 *)_this)->_7_24_32_taskId, 5) ].prio, 4) ].tailIndex, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 369: // STATE 1019
		;
		((P3 *)_this)->_7_24_32_needResched = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 370: // STATE 1019
		;
		((P3 *)_this)->_7_24_32_needResched = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 371: // STATE 1021
		;
		((P3 *)_this)->_7_24_32_idx = trpt->bup.oval;
		;
		goto R999;

	case 372: // STATE 1029
		;
		((P3 *)_this)->_7_24_32_interrupted_task = trpt->bup.ovals[1];
	/* 0 */	((P3 *)_this)->_7_24_32_idx = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 373: // STATE 1029
		;
		((P3 *)_this)->_7_24_32_interrupted_task = trpt->bup.oval;
		;
		goto R999;

	case 374: // STATE 1031
		;
		now.tcb[ Index(((P3 *)_this)->_7_24_32_interrupted_task, 5) ].state = trpt->bup.oval;
		;
		goto R999;

	case 375: // STATE 1034
		;
		now.readyQueue[ Index(now.tcb[ Index(((P3 *)_this)->_7_24_32_interrupted_task, 5) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P3 *)_this)->_7_24_32_interrupted_task, 5) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P3 *)_this)->_7_24_32_interrupted_task, 5) ].prio, 4) ].tailIndex, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 377: // STATE 1049
		;
		((P3 *)_this)->_7_24_32_198_found = trpt->bup.ovals[5];
		((P3 *)_this)->_7_24_32_198_top_task = trpt->bup.ovals[4];
		((P3 *)_this)->_7_24_32_198_prio = trpt->bup.ovals[3];
		((P3 *)_this)->_7_24_32_198_found = trpt->bup.ovals[2];
		((P3 *)_this)->_7_24_32_198_top_task = trpt->bup.ovals[1];
		((P3 *)_this)->_7_24_32_198_prio = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;
;
		;
		
	case 379: // STATE 1053
		;
		((P3 *)_this)->_7_24_32_198_found = trpt->bup.ovals[1];
		((P3 *)_this)->_7_24_32_198_top_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 380: // STATE 1055
		;
		((P3 *)_this)->_7_24_32_198_prio = trpt->bup.oval;
		;
		goto R999;

	case 381: // STATE 1064
		;
		now.topPrio = trpt->bup.ovals[2];
		now.newTask = trpt->bup.ovals[1];
	/* 0 */	((P3 *)_this)->_7_24_32_198_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 382: // STATE 1064
		;
		now.topPrio = trpt->bup.ovals[1];
		now.newTask = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 383: // STATE 1067
		;
		((P3 *)_this)->_7_24_32_199_deq_idx = trpt->bup.ovals[1];
		((P3 *)_this)->_7_24_32_199_deq_idx = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 384: // STATE 1070
		;
		((P3 *)_this)->_7_24_32_199_deq_idx = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index(((P3 *)_this)->_7_24_32_199_deq_idx, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 385: // STATE 1071
		;
	/* 0 */	((P3 *)_this)->_7_24_32_199_deq_idx = trpt->bup.oval;
		;
		;
		goto R999;

	case 386: // STATE 1085
		;
		now.EP = trpt->bup.ovals[3];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.topPrio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index((now.readyQueue[ Index(now.topPrio, 4) ].tailIndex-1), 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 387: // STATE 1085
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 388: // STATE 1085
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 389: // STATE 1086
		;
		now.int_ctrl_reg = trpt->bup.oval;
		;
		goto R999;

	case 390: // STATE 1093
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Process3 */
;
		
	case 391: // STATE 1
		goto R999;

	case 392: // STATE 8
		;
		((P2 *)_this)->_6_13_17_needResched = trpt->bup.ovals[5];
		((P2 *)_this)->_6_13_17_interrupted_task = trpt->bup.ovals[4];
		((P2 *)_this)->_6_13_17_needResched = trpt->bup.ovals[3];
		((P2 *)_this)->_6_13_17_taskId = trpt->bup.ovals[2];
		((P2 *)_this)->_6_13_17_idx = trpt->bup.ovals[1];
		((P2 *)_this)->_6_13_17_interrupted_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;

	case 393: // STATE 13
		;
		((P2 *)_this)->_6_13_17_idx = trpt->bup.ovals[3];
		now.tickCount = trpt->bup.ovals[2];
		now.int_ctrl_reg = trpt->bup.ovals[1];
		now.int_save = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 394: // STATE 15
		;
		((P2 *)_this)->_6_13_17_taskId = trpt->bup.oval;
		;
		goto R999;

	case 395: // STATE 18
		;
		now.tcb[ Index(((P2 *)_this)->_6_13_17_taskId, 5) ].delayTicks = trpt->bup.ovals[1];
		now.tcb[ Index(((P2 *)_this)->_6_13_17_taskId, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 396: // STATE 23
		;
		((P2 *)_this)->_6_13_17_102_found = trpt->bup.ovals[4];
		((P2 *)_this)->_6_13_17_102_removePos = trpt->bup.ovals[3];
		((P2 *)_this)->_6_13_17_102_shiftIdx = trpt->bup.ovals[2];
		((P2 *)_this)->_6_13_17_102_found = trpt->bup.ovals[1];
		((P2 *)_this)->_6_13_17_102_removePos = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;
;
		;
		
	case 398: // STATE 26
		;
		((P2 *)_this)->_6_13_17_102_found = trpt->bup.oval;
		;
		goto R999;

	case 399: // STATE 28
		;
		((P2 *)_this)->_6_13_17_102_removePos = trpt->bup.oval;
		;
		goto R999;

	case 400: // STATE 37
		;
		((P2 *)_this)->_6_13_17_102_shiftIdx = trpt->bup.ovals[1];
	/* 0 */	((P2 *)_this)->_6_13_17_102_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 401: // STATE 40
		;
		((P2 *)_this)->_6_13_17_102_shiftIdx = trpt->bup.ovals[1];
		now.sortLink.tasks[ Index(((P2 *)_this)->_6_13_17_102_shiftIdx, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 402: // STATE 47
		;
		now.sortLink.count = trpt->bup.ovals[2];
		now.sortLink.tasks[ Index((now.sortLink.count-1), 8) ] = trpt->bup.ovals[1];
	/* 0 */	((P2 *)_this)->_6_13_17_102_shiftIdx = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 403: // STATE 47
		;
		now.sortLink.count = trpt->bup.ovals[1];
		now.sortLink.tasks[ Index((now.sortLink.count-1), 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 404: // STATE 61
		;
		((P2 *)_this)->_6_13_17_needResched = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.tcb[ Index(((P2 *)_this)->_6_13_17_taskId, 5) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P2 *)_this)->_6_13_17_taskId, 5) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P2 *)_this)->_6_13_17_taskId, 5) ].prio, 4) ].tailIndex, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 405: // STATE 61
		;
		((P2 *)_this)->_6_13_17_needResched = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 406: // STATE 61
		;
		((P2 *)_this)->_6_13_17_needResched = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 407: // STATE 63
		;
		((P2 *)_this)->_6_13_17_idx = trpt->bup.oval;
		;
		goto R999;

	case 408: // STATE 71
		;
		((P2 *)_this)->_6_13_17_interrupted_task = trpt->bup.ovals[1];
	/* 0 */	((P2 *)_this)->_6_13_17_idx = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 409: // STATE 71
		;
		((P2 *)_this)->_6_13_17_interrupted_task = trpt->bup.oval;
		;
		goto R999;

	case 410: // STATE 73
		;
		now.tcb[ Index(((P2 *)_this)->_6_13_17_interrupted_task, 5) ].state = trpt->bup.oval;
		;
		goto R999;

	case 411: // STATE 76
		;
		now.readyQueue[ Index(now.tcb[ Index(((P2 *)_this)->_6_13_17_interrupted_task, 5) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P2 *)_this)->_6_13_17_interrupted_task, 5) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P2 *)_this)->_6_13_17_interrupted_task, 5) ].prio, 4) ].tailIndex, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 413: // STATE 91
		;
		((P2 *)_this)->_6_13_17_105_found = trpt->bup.ovals[5];
		((P2 *)_this)->_6_13_17_105_top_task = trpt->bup.ovals[4];
		((P2 *)_this)->_6_13_17_105_prio = trpt->bup.ovals[3];
		((P2 *)_this)->_6_13_17_105_found = trpt->bup.ovals[2];
		((P2 *)_this)->_6_13_17_105_top_task = trpt->bup.ovals[1];
		((P2 *)_this)->_6_13_17_105_prio = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;
;
		;
		
	case 415: // STATE 95
		;
		((P2 *)_this)->_6_13_17_105_found = trpt->bup.ovals[1];
		((P2 *)_this)->_6_13_17_105_top_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 416: // STATE 97
		;
		((P2 *)_this)->_6_13_17_105_prio = trpt->bup.oval;
		;
		goto R999;

	case 417: // STATE 106
		;
		now.topPrio = trpt->bup.ovals[2];
		now.newTask = trpt->bup.ovals[1];
	/* 0 */	((P2 *)_this)->_6_13_17_105_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 418: // STATE 106
		;
		now.topPrio = trpt->bup.ovals[1];
		now.newTask = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 419: // STATE 109
		;
		((P2 *)_this)->_6_13_17_106_deq_idx = trpt->bup.ovals[1];
		((P2 *)_this)->_6_13_17_106_deq_idx = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 420: // STATE 112
		;
		((P2 *)_this)->_6_13_17_106_deq_idx = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index(((P2 *)_this)->_6_13_17_106_deq_idx, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 421: // STATE 113
		;
	/* 0 */	((P2 *)_this)->_6_13_17_106_deq_idx = trpt->bup.oval;
		;
		;
		goto R999;

	case 422: // STATE 127
		;
		now.EP = trpt->bup.ovals[3];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.topPrio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index((now.readyQueue[ Index(now.topPrio, 4) ].tailIndex-1), 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 423: // STATE 127
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 424: // STATE 127
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 425: // STATE 128
		;
		now.int_ctrl_reg = trpt->bup.oval;
		;
		goto R999;

	case 426: // STATE 133
		;
		((P2 *)_this)->counter = trpt->bup.oval;
		;
		goto R999;

	case 427: // STATE 139
		;
		((P2 *)_this)->_6_14_18_needResched = trpt->bup.ovals[5];
		((P2 *)_this)->_6_14_18_interrupted_task = trpt->bup.ovals[4];
		((P2 *)_this)->_6_14_18_needResched = trpt->bup.ovals[3];
		((P2 *)_this)->_6_14_18_taskId = trpt->bup.ovals[2];
		((P2 *)_this)->_6_14_18_idx = trpt->bup.ovals[1];
		((P2 *)_this)->_6_14_18_interrupted_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;

	case 428: // STATE 144
		;
		((P2 *)_this)->_6_14_18_idx = trpt->bup.ovals[3];
		now.tickCount = trpt->bup.ovals[2];
		now.int_ctrl_reg = trpt->bup.ovals[1];
		now.int_save = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 429: // STATE 146
		;
		((P2 *)_this)->_6_14_18_taskId = trpt->bup.oval;
		;
		goto R999;

	case 430: // STATE 149
		;
		now.tcb[ Index(((P2 *)_this)->_6_14_18_taskId, 5) ].delayTicks = trpt->bup.ovals[1];
		now.tcb[ Index(((P2 *)_this)->_6_14_18_taskId, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 431: // STATE 154
		;
		((P2 *)_this)->_6_14_18_109_found = trpt->bup.ovals[4];
		((P2 *)_this)->_6_14_18_109_removePos = trpt->bup.ovals[3];
		((P2 *)_this)->_6_14_18_109_shiftIdx = trpt->bup.ovals[2];
		((P2 *)_this)->_6_14_18_109_found = trpt->bup.ovals[1];
		((P2 *)_this)->_6_14_18_109_removePos = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;
;
		;
		
	case 433: // STATE 157
		;
		((P2 *)_this)->_6_14_18_109_found = trpt->bup.oval;
		;
		goto R999;

	case 434: // STATE 159
		;
		((P2 *)_this)->_6_14_18_109_removePos = trpt->bup.oval;
		;
		goto R999;

	case 435: // STATE 168
		;
		((P2 *)_this)->_6_14_18_109_shiftIdx = trpt->bup.ovals[1];
	/* 0 */	((P2 *)_this)->_6_14_18_109_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 436: // STATE 171
		;
		((P2 *)_this)->_6_14_18_109_shiftIdx = trpt->bup.ovals[1];
		now.sortLink.tasks[ Index(((P2 *)_this)->_6_14_18_109_shiftIdx, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 437: // STATE 178
		;
		now.sortLink.count = trpt->bup.ovals[2];
		now.sortLink.tasks[ Index((now.sortLink.count-1), 8) ] = trpt->bup.ovals[1];
	/* 0 */	((P2 *)_this)->_6_14_18_109_shiftIdx = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 438: // STATE 178
		;
		now.sortLink.count = trpt->bup.ovals[1];
		now.sortLink.tasks[ Index((now.sortLink.count-1), 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 439: // STATE 192
		;
		((P2 *)_this)->_6_14_18_needResched = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.tcb[ Index(((P2 *)_this)->_6_14_18_taskId, 5) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P2 *)_this)->_6_14_18_taskId, 5) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P2 *)_this)->_6_14_18_taskId, 5) ].prio, 4) ].tailIndex, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 440: // STATE 192
		;
		((P2 *)_this)->_6_14_18_needResched = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 441: // STATE 192
		;
		((P2 *)_this)->_6_14_18_needResched = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 442: // STATE 194
		;
		((P2 *)_this)->_6_14_18_idx = trpt->bup.oval;
		;
		goto R999;

	case 443: // STATE 202
		;
		((P2 *)_this)->_6_14_18_interrupted_task = trpt->bup.ovals[1];
	/* 0 */	((P2 *)_this)->_6_14_18_idx = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 444: // STATE 202
		;
		((P2 *)_this)->_6_14_18_interrupted_task = trpt->bup.oval;
		;
		goto R999;

	case 445: // STATE 204
		;
		now.tcb[ Index(((P2 *)_this)->_6_14_18_interrupted_task, 5) ].state = trpt->bup.oval;
		;
		goto R999;

	case 446: // STATE 207
		;
		now.readyQueue[ Index(now.tcb[ Index(((P2 *)_this)->_6_14_18_interrupted_task, 5) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P2 *)_this)->_6_14_18_interrupted_task, 5) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P2 *)_this)->_6_14_18_interrupted_task, 5) ].prio, 4) ].tailIndex, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 448: // STATE 222
		;
		((P2 *)_this)->_6_14_18_112_found = trpt->bup.ovals[5];
		((P2 *)_this)->_6_14_18_112_top_task = trpt->bup.ovals[4];
		((P2 *)_this)->_6_14_18_112_prio = trpt->bup.ovals[3];
		((P2 *)_this)->_6_14_18_112_found = trpt->bup.ovals[2];
		((P2 *)_this)->_6_14_18_112_top_task = trpt->bup.ovals[1];
		((P2 *)_this)->_6_14_18_112_prio = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;
;
		;
		
	case 450: // STATE 226
		;
		((P2 *)_this)->_6_14_18_112_found = trpt->bup.ovals[1];
		((P2 *)_this)->_6_14_18_112_top_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 451: // STATE 228
		;
		((P2 *)_this)->_6_14_18_112_prio = trpt->bup.oval;
		;
		goto R999;

	case 452: // STATE 237
		;
		now.topPrio = trpt->bup.ovals[2];
		now.newTask = trpt->bup.ovals[1];
	/* 0 */	((P2 *)_this)->_6_14_18_112_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 453: // STATE 237
		;
		now.topPrio = trpt->bup.ovals[1];
		now.newTask = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 454: // STATE 240
		;
		((P2 *)_this)->_6_14_18_113_deq_idx = trpt->bup.ovals[1];
		((P2 *)_this)->_6_14_18_113_deq_idx = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 455: // STATE 243
		;
		((P2 *)_this)->_6_14_18_113_deq_idx = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index(((P2 *)_this)->_6_14_18_113_deq_idx, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 456: // STATE 244
		;
	/* 0 */	((P2 *)_this)->_6_14_18_113_deq_idx = trpt->bup.oval;
		;
		;
		goto R999;

	case 457: // STATE 258
		;
		now.EP = trpt->bup.ovals[3];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.topPrio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index((now.readyQueue[ Index(now.topPrio, 4) ].tailIndex-1), 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 458: // STATE 258
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 459: // STATE 258
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 460: // STATE 259
		;
		now.int_ctrl_reg = trpt->bup.oval;
		;
		goto R999;

	case 461: // STATE 264
		;
		((P2 *)_this)->work = trpt->bup.oval;
		;
		goto R999;

	case 462: // STATE 270
		;
		((P2 *)_this)->_6_15_19_needResched = trpt->bup.ovals[5];
		((P2 *)_this)->_6_15_19_interrupted_task = trpt->bup.ovals[4];
		((P2 *)_this)->_6_15_19_needResched = trpt->bup.ovals[3];
		((P2 *)_this)->_6_15_19_taskId = trpt->bup.ovals[2];
		((P2 *)_this)->_6_15_19_idx = trpt->bup.ovals[1];
		((P2 *)_this)->_6_15_19_interrupted_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;

	case 463: // STATE 275
		;
		((P2 *)_this)->_6_15_19_idx = trpt->bup.ovals[3];
		now.tickCount = trpt->bup.ovals[2];
		now.int_ctrl_reg = trpt->bup.ovals[1];
		now.int_save = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 464: // STATE 277
		;
		((P2 *)_this)->_6_15_19_taskId = trpt->bup.oval;
		;
		goto R999;

	case 465: // STATE 280
		;
		now.tcb[ Index(((P2 *)_this)->_6_15_19_taskId, 5) ].delayTicks = trpt->bup.ovals[1];
		now.tcb[ Index(((P2 *)_this)->_6_15_19_taskId, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 466: // STATE 285
		;
		((P2 *)_this)->_6_15_19_116_found = trpt->bup.ovals[4];
		((P2 *)_this)->_6_15_19_116_removePos = trpt->bup.ovals[3];
		((P2 *)_this)->_6_15_19_116_shiftIdx = trpt->bup.ovals[2];
		((P2 *)_this)->_6_15_19_116_found = trpt->bup.ovals[1];
		((P2 *)_this)->_6_15_19_116_removePos = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;
;
		;
		
	case 468: // STATE 288
		;
		((P2 *)_this)->_6_15_19_116_found = trpt->bup.oval;
		;
		goto R999;

	case 469: // STATE 290
		;
		((P2 *)_this)->_6_15_19_116_removePos = trpt->bup.oval;
		;
		goto R999;

	case 470: // STATE 299
		;
		((P2 *)_this)->_6_15_19_116_shiftIdx = trpt->bup.ovals[1];
	/* 0 */	((P2 *)_this)->_6_15_19_116_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 471: // STATE 302
		;
		((P2 *)_this)->_6_15_19_116_shiftIdx = trpt->bup.ovals[1];
		now.sortLink.tasks[ Index(((P2 *)_this)->_6_15_19_116_shiftIdx, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 472: // STATE 309
		;
		now.sortLink.count = trpt->bup.ovals[2];
		now.sortLink.tasks[ Index((now.sortLink.count-1), 8) ] = trpt->bup.ovals[1];
	/* 0 */	((P2 *)_this)->_6_15_19_116_shiftIdx = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 473: // STATE 309
		;
		now.sortLink.count = trpt->bup.ovals[1];
		now.sortLink.tasks[ Index((now.sortLink.count-1), 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 474: // STATE 323
		;
		((P2 *)_this)->_6_15_19_needResched = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.tcb[ Index(((P2 *)_this)->_6_15_19_taskId, 5) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P2 *)_this)->_6_15_19_taskId, 5) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P2 *)_this)->_6_15_19_taskId, 5) ].prio, 4) ].tailIndex, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 475: // STATE 323
		;
		((P2 *)_this)->_6_15_19_needResched = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 476: // STATE 323
		;
		((P2 *)_this)->_6_15_19_needResched = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 477: // STATE 325
		;
		((P2 *)_this)->_6_15_19_idx = trpt->bup.oval;
		;
		goto R999;

	case 478: // STATE 333
		;
		((P2 *)_this)->_6_15_19_interrupted_task = trpt->bup.ovals[1];
	/* 0 */	((P2 *)_this)->_6_15_19_idx = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 479: // STATE 333
		;
		((P2 *)_this)->_6_15_19_interrupted_task = trpt->bup.oval;
		;
		goto R999;

	case 480: // STATE 335
		;
		now.tcb[ Index(((P2 *)_this)->_6_15_19_interrupted_task, 5) ].state = trpt->bup.oval;
		;
		goto R999;

	case 481: // STATE 338
		;
		now.readyQueue[ Index(now.tcb[ Index(((P2 *)_this)->_6_15_19_interrupted_task, 5) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P2 *)_this)->_6_15_19_interrupted_task, 5) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P2 *)_this)->_6_15_19_interrupted_task, 5) ].prio, 4) ].tailIndex, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 483: // STATE 353
		;
		((P2 *)_this)->_6_15_19_119_found = trpt->bup.ovals[5];
		((P2 *)_this)->_6_15_19_119_top_task = trpt->bup.ovals[4];
		((P2 *)_this)->_6_15_19_119_prio = trpt->bup.ovals[3];
		((P2 *)_this)->_6_15_19_119_found = trpt->bup.ovals[2];
		((P2 *)_this)->_6_15_19_119_top_task = trpt->bup.ovals[1];
		((P2 *)_this)->_6_15_19_119_prio = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;
;
		;
		
	case 485: // STATE 357
		;
		((P2 *)_this)->_6_15_19_119_found = trpt->bup.ovals[1];
		((P2 *)_this)->_6_15_19_119_top_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 486: // STATE 359
		;
		((P2 *)_this)->_6_15_19_119_prio = trpt->bup.oval;
		;
		goto R999;

	case 487: // STATE 368
		;
		now.topPrio = trpt->bup.ovals[2];
		now.newTask = trpt->bup.ovals[1];
	/* 0 */	((P2 *)_this)->_6_15_19_119_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 488: // STATE 368
		;
		now.topPrio = trpt->bup.ovals[1];
		now.newTask = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 489: // STATE 371
		;
		((P2 *)_this)->_6_15_19_120_deq_idx = trpt->bup.ovals[1];
		((P2 *)_this)->_6_15_19_120_deq_idx = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 490: // STATE 374
		;
		((P2 *)_this)->_6_15_19_120_deq_idx = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index(((P2 *)_this)->_6_15_19_120_deq_idx, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 491: // STATE 375
		;
	/* 0 */	((P2 *)_this)->_6_15_19_120_deq_idx = trpt->bup.oval;
		;
		;
		goto R999;

	case 492: // STATE 389
		;
		now.EP = trpt->bup.ovals[3];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.topPrio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index((now.readyQueue[ Index(now.topPrio, 4) ].tailIndex-1), 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 493: // STATE 389
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 494: // STATE 389
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 495: // STATE 390
		;
		now.int_ctrl_reg = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 497: // STATE 395
		;
		((P2 *)_this)->_6_16_20_currentTask = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 499: // STATE 403
		;
		now.tcb[ Index(((P2 *)_this)->_6_16_20_currentTask, 5) ].delayTicks = trpt->bup.ovals[5];
		now.tcb[ Index(((P2 *)_this)->_6_16_20_currentTask, 5) ].wakeupTime = trpt->bup.ovals[4];
		now.tcb[ Index(((P2 *)_this)->_6_16_20_currentTask, 5) ].state = trpt->bup.ovals[3];
		((P2 *)_this)->_6_16_20_currentTask = trpt->bup.ovals[2];
		now.int_ctrl_reg = trpt->bup.ovals[1];
		now.int_save = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;

	case 500: // STATE 406
		;
		now.sortLink.count = trpt->bup.ovals[1];
		now.sortLink.tasks[ Index(now.sortLink.count, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 502: // STATE 417
		;
		((P2 *)_this)->_6_16_20_124_needResched = trpt->bup.ovals[5];
		((P2 *)_this)->_6_16_20_124_interrupted_task = trpt->bup.ovals[4];
		((P2 *)_this)->_6_16_20_124_needResched = trpt->bup.ovals[3];
		((P2 *)_this)->_6_16_20_124_taskId = trpt->bup.ovals[2];
		((P2 *)_this)->_6_16_20_124_idx = trpt->bup.ovals[1];
		((P2 *)_this)->_6_16_20_124_interrupted_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;

	case 503: // STATE 422
		;
		((P2 *)_this)->_6_16_20_124_idx = trpt->bup.ovals[3];
		now.tickCount = trpt->bup.ovals[2];
		now.int_ctrl_reg = trpt->bup.ovals[1];
		now.int_save = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 504: // STATE 424
		;
		((P2 *)_this)->_6_16_20_124_taskId = trpt->bup.oval;
		;
		goto R999;

	case 505: // STATE 427
		;
		now.tcb[ Index(((P2 *)_this)->_6_16_20_124_taskId, 5) ].delayTicks = trpt->bup.ovals[1];
		now.tcb[ Index(((P2 *)_this)->_6_16_20_124_taskId, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 506: // STATE 432
		;
		((P2 *)_this)->_6_16_20_124_30_found = trpt->bup.ovals[4];
		((P2 *)_this)->_6_16_20_124_30_removePos = trpt->bup.ovals[3];
		((P2 *)_this)->_6_16_20_124_30_shiftIdx = trpt->bup.ovals[2];
		((P2 *)_this)->_6_16_20_124_30_found = trpt->bup.ovals[1];
		((P2 *)_this)->_6_16_20_124_30_removePos = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;
;
		;
		
	case 508: // STATE 435
		;
		((P2 *)_this)->_6_16_20_124_30_found = trpt->bup.oval;
		;
		goto R999;

	case 509: // STATE 437
		;
		((P2 *)_this)->_6_16_20_124_30_removePos = trpt->bup.oval;
		;
		goto R999;

	case 510: // STATE 446
		;
		((P2 *)_this)->_6_16_20_124_30_shiftIdx = trpt->bup.ovals[1];
	/* 0 */	((P2 *)_this)->_6_16_20_124_30_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 511: // STATE 449
		;
		((P2 *)_this)->_6_16_20_124_30_shiftIdx = trpt->bup.ovals[1];
		now.sortLink.tasks[ Index(((P2 *)_this)->_6_16_20_124_30_shiftIdx, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 512: // STATE 456
		;
		now.sortLink.count = trpt->bup.ovals[2];
		now.sortLink.tasks[ Index((now.sortLink.count-1), 8) ] = trpt->bup.ovals[1];
	/* 0 */	((P2 *)_this)->_6_16_20_124_30_shiftIdx = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 513: // STATE 456
		;
		now.sortLink.count = trpt->bup.ovals[1];
		now.sortLink.tasks[ Index((now.sortLink.count-1), 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 514: // STATE 470
		;
		((P2 *)_this)->_6_16_20_124_needResched = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.tcb[ Index(((P2 *)_this)->_6_16_20_124_taskId, 5) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P2 *)_this)->_6_16_20_124_taskId, 5) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P2 *)_this)->_6_16_20_124_taskId, 5) ].prio, 4) ].tailIndex, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 515: // STATE 470
		;
		((P2 *)_this)->_6_16_20_124_needResched = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 516: // STATE 470
		;
		((P2 *)_this)->_6_16_20_124_needResched = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 517: // STATE 472
		;
		((P2 *)_this)->_6_16_20_124_idx = trpt->bup.oval;
		;
		goto R999;

	case 518: // STATE 480
		;
		((P2 *)_this)->_6_16_20_124_interrupted_task = trpt->bup.ovals[1];
	/* 0 */	((P2 *)_this)->_6_16_20_124_idx = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 519: // STATE 480
		;
		((P2 *)_this)->_6_16_20_124_interrupted_task = trpt->bup.oval;
		;
		goto R999;

	case 520: // STATE 482
		;
		now.tcb[ Index(((P2 *)_this)->_6_16_20_124_interrupted_task, 5) ].state = trpt->bup.oval;
		;
		goto R999;

	case 521: // STATE 485
		;
		now.readyQueue[ Index(now.tcb[ Index(((P2 *)_this)->_6_16_20_124_interrupted_task, 5) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P2 *)_this)->_6_16_20_124_interrupted_task, 5) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P2 *)_this)->_6_16_20_124_interrupted_task, 5) ].prio, 4) ].tailIndex, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 523: // STATE 500
		;
		((P2 *)_this)->_6_16_20_124_33_found = trpt->bup.ovals[5];
		((P2 *)_this)->_6_16_20_124_33_top_task = trpt->bup.ovals[4];
		((P2 *)_this)->_6_16_20_124_33_prio = trpt->bup.ovals[3];
		((P2 *)_this)->_6_16_20_124_33_found = trpt->bup.ovals[2];
		((P2 *)_this)->_6_16_20_124_33_top_task = trpt->bup.ovals[1];
		((P2 *)_this)->_6_16_20_124_33_prio = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;
;
		;
		
	case 525: // STATE 504
		;
		((P2 *)_this)->_6_16_20_124_33_found = trpt->bup.ovals[1];
		((P2 *)_this)->_6_16_20_124_33_top_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 526: // STATE 506
		;
		((P2 *)_this)->_6_16_20_124_33_prio = trpt->bup.oval;
		;
		goto R999;

	case 527: // STATE 515
		;
		now.topPrio = trpt->bup.ovals[2];
		now.newTask = trpt->bup.ovals[1];
	/* 0 */	((P2 *)_this)->_6_16_20_124_33_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 528: // STATE 515
		;
		now.topPrio = trpt->bup.ovals[1];
		now.newTask = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 529: // STATE 518
		;
		((P2 *)_this)->_6_16_20_124_34_deq_idx = trpt->bup.ovals[1];
		((P2 *)_this)->_6_16_20_124_34_deq_idx = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 530: // STATE 521
		;
		((P2 *)_this)->_6_16_20_124_34_deq_idx = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index(((P2 *)_this)->_6_16_20_124_34_deq_idx, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 531: // STATE 522
		;
	/* 0 */	((P2 *)_this)->_6_16_20_124_34_deq_idx = trpt->bup.oval;
		;
		;
		goto R999;

	case 532: // STATE 536
		;
		now.EP = trpt->bup.ovals[3];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.topPrio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index((now.readyQueue[ Index(now.topPrio, 4) ].tailIndex-1), 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 533: // STATE 536
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 534: // STATE 536
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 535: // STATE 537
		;
		now.int_ctrl_reg = trpt->bup.oval;
		;
		goto R999;

	case 536: // STATE 540
		;
		now.int_ctrl_reg = trpt->bup.oval;
		;
		goto R999;

	case 537: // STATE 552
		;
		((P2 *)_this)->_6_16_21_needResched = trpt->bup.ovals[5];
		((P2 *)_this)->_6_16_21_interrupted_task = trpt->bup.ovals[4];
		((P2 *)_this)->_6_16_21_needResched = trpt->bup.ovals[3];
		((P2 *)_this)->_6_16_21_taskId = trpt->bup.ovals[2];
		((P2 *)_this)->_6_16_21_idx = trpt->bup.ovals[1];
		((P2 *)_this)->_6_16_21_interrupted_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;

	case 538: // STATE 557
		;
		((P2 *)_this)->_6_16_21_idx = trpt->bup.ovals[3];
		now.tickCount = trpt->bup.ovals[2];
		now.int_ctrl_reg = trpt->bup.ovals[1];
		now.int_save = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 539: // STATE 559
		;
		((P2 *)_this)->_6_16_21_taskId = trpt->bup.oval;
		;
		goto R999;

	case 540: // STATE 562
		;
		now.tcb[ Index(((P2 *)_this)->_6_16_21_taskId, 5) ].delayTicks = trpt->bup.ovals[1];
		now.tcb[ Index(((P2 *)_this)->_6_16_21_taskId, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 541: // STATE 567
		;
		((P2 *)_this)->_6_16_21_127_found = trpt->bup.ovals[4];
		((P2 *)_this)->_6_16_21_127_removePos = trpt->bup.ovals[3];
		((P2 *)_this)->_6_16_21_127_shiftIdx = trpt->bup.ovals[2];
		((P2 *)_this)->_6_16_21_127_found = trpt->bup.ovals[1];
		((P2 *)_this)->_6_16_21_127_removePos = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;
;
		;
		
	case 543: // STATE 570
		;
		((P2 *)_this)->_6_16_21_127_found = trpt->bup.oval;
		;
		goto R999;

	case 544: // STATE 572
		;
		((P2 *)_this)->_6_16_21_127_removePos = trpt->bup.oval;
		;
		goto R999;

	case 545: // STATE 581
		;
		((P2 *)_this)->_6_16_21_127_shiftIdx = trpt->bup.ovals[1];
	/* 0 */	((P2 *)_this)->_6_16_21_127_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 546: // STATE 584
		;
		((P2 *)_this)->_6_16_21_127_shiftIdx = trpt->bup.ovals[1];
		now.sortLink.tasks[ Index(((P2 *)_this)->_6_16_21_127_shiftIdx, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 547: // STATE 591
		;
		now.sortLink.count = trpt->bup.ovals[2];
		now.sortLink.tasks[ Index((now.sortLink.count-1), 8) ] = trpt->bup.ovals[1];
	/* 0 */	((P2 *)_this)->_6_16_21_127_shiftIdx = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 548: // STATE 591
		;
		now.sortLink.count = trpt->bup.ovals[1];
		now.sortLink.tasks[ Index((now.sortLink.count-1), 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 549: // STATE 605
		;
		((P2 *)_this)->_6_16_21_needResched = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.tcb[ Index(((P2 *)_this)->_6_16_21_taskId, 5) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P2 *)_this)->_6_16_21_taskId, 5) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P2 *)_this)->_6_16_21_taskId, 5) ].prio, 4) ].tailIndex, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 550: // STATE 605
		;
		((P2 *)_this)->_6_16_21_needResched = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 551: // STATE 605
		;
		((P2 *)_this)->_6_16_21_needResched = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 552: // STATE 607
		;
		((P2 *)_this)->_6_16_21_idx = trpt->bup.oval;
		;
		goto R999;

	case 553: // STATE 615
		;
		((P2 *)_this)->_6_16_21_interrupted_task = trpt->bup.ovals[1];
	/* 0 */	((P2 *)_this)->_6_16_21_idx = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 554: // STATE 615
		;
		((P2 *)_this)->_6_16_21_interrupted_task = trpt->bup.oval;
		;
		goto R999;

	case 555: // STATE 617
		;
		now.tcb[ Index(((P2 *)_this)->_6_16_21_interrupted_task, 5) ].state = trpt->bup.oval;
		;
		goto R999;

	case 556: // STATE 620
		;
		now.readyQueue[ Index(now.tcb[ Index(((P2 *)_this)->_6_16_21_interrupted_task, 5) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P2 *)_this)->_6_16_21_interrupted_task, 5) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P2 *)_this)->_6_16_21_interrupted_task, 5) ].prio, 4) ].tailIndex, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 558: // STATE 635
		;
		((P2 *)_this)->_6_16_21_130_found = trpt->bup.ovals[5];
		((P2 *)_this)->_6_16_21_130_top_task = trpt->bup.ovals[4];
		((P2 *)_this)->_6_16_21_130_prio = trpt->bup.ovals[3];
		((P2 *)_this)->_6_16_21_130_found = trpt->bup.ovals[2];
		((P2 *)_this)->_6_16_21_130_top_task = trpt->bup.ovals[1];
		((P2 *)_this)->_6_16_21_130_prio = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;
;
		;
		
	case 560: // STATE 639
		;
		((P2 *)_this)->_6_16_21_130_found = trpt->bup.ovals[1];
		((P2 *)_this)->_6_16_21_130_top_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 561: // STATE 641
		;
		((P2 *)_this)->_6_16_21_130_prio = trpt->bup.oval;
		;
		goto R999;

	case 562: // STATE 650
		;
		now.topPrio = trpt->bup.ovals[2];
		now.newTask = trpt->bup.ovals[1];
	/* 0 */	((P2 *)_this)->_6_16_21_130_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 563: // STATE 650
		;
		now.topPrio = trpt->bup.ovals[1];
		now.newTask = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 564: // STATE 653
		;
		((P2 *)_this)->_6_16_21_131_deq_idx = trpt->bup.ovals[1];
		((P2 *)_this)->_6_16_21_131_deq_idx = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 565: // STATE 656
		;
		((P2 *)_this)->_6_16_21_131_deq_idx = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index(((P2 *)_this)->_6_16_21_131_deq_idx, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 566: // STATE 657
		;
	/* 0 */	((P2 *)_this)->_6_16_21_131_deq_idx = trpt->bup.oval;
		;
		;
		goto R999;

	case 567: // STATE 671
		;
		now.EP = trpt->bup.ovals[3];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.topPrio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index((now.readyQueue[ Index(now.topPrio, 4) ].tailIndex-1), 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 568: // STATE 671
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 569: // STATE 671
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 570: // STATE 672
		;
		now.int_ctrl_reg = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 572: // STATE 677
		;
		((P2 *)_this)->_6_17_22_currentTask = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 574: // STATE 685
		;
		now.tcb[ Index(((P2 *)_this)->_6_17_22_currentTask, 5) ].delayTicks = trpt->bup.ovals[5];
		now.tcb[ Index(((P2 *)_this)->_6_17_22_currentTask, 5) ].wakeupTime = trpt->bup.ovals[4];
		now.tcb[ Index(((P2 *)_this)->_6_17_22_currentTask, 5) ].state = trpt->bup.ovals[3];
		((P2 *)_this)->_6_17_22_currentTask = trpt->bup.ovals[2];
		now.int_ctrl_reg = trpt->bup.ovals[1];
		now.int_save = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;

	case 575: // STATE 688
		;
		now.sortLink.count = trpt->bup.ovals[1];
		now.sortLink.tasks[ Index(now.sortLink.count, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 577: // STATE 699
		;
		((P2 *)_this)->_6_17_22_135_needResched = trpt->bup.ovals[5];
		((P2 *)_this)->_6_17_22_135_interrupted_task = trpt->bup.ovals[4];
		((P2 *)_this)->_6_17_22_135_needResched = trpt->bup.ovals[3];
		((P2 *)_this)->_6_17_22_135_taskId = trpt->bup.ovals[2];
		((P2 *)_this)->_6_17_22_135_idx = trpt->bup.ovals[1];
		((P2 *)_this)->_6_17_22_135_interrupted_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;

	case 578: // STATE 704
		;
		((P2 *)_this)->_6_17_22_135_idx = trpt->bup.ovals[3];
		now.tickCount = trpt->bup.ovals[2];
		now.int_ctrl_reg = trpt->bup.ovals[1];
		now.int_save = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 579: // STATE 706
		;
		((P2 *)_this)->_6_17_22_135_taskId = trpt->bup.oval;
		;
		goto R999;

	case 580: // STATE 709
		;
		now.tcb[ Index(((P2 *)_this)->_6_17_22_135_taskId, 5) ].delayTicks = trpt->bup.ovals[1];
		now.tcb[ Index(((P2 *)_this)->_6_17_22_135_taskId, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 581: // STATE 714
		;
		((P2 *)_this)->_6_17_22_135_37_found = trpt->bup.ovals[4];
		((P2 *)_this)->_6_17_22_135_37_removePos = trpt->bup.ovals[3];
		((P2 *)_this)->_6_17_22_135_37_shiftIdx = trpt->bup.ovals[2];
		((P2 *)_this)->_6_17_22_135_37_found = trpt->bup.ovals[1];
		((P2 *)_this)->_6_17_22_135_37_removePos = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;
;
		;
		
	case 583: // STATE 717
		;
		((P2 *)_this)->_6_17_22_135_37_found = trpt->bup.oval;
		;
		goto R999;

	case 584: // STATE 719
		;
		((P2 *)_this)->_6_17_22_135_37_removePos = trpt->bup.oval;
		;
		goto R999;

	case 585: // STATE 728
		;
		((P2 *)_this)->_6_17_22_135_37_shiftIdx = trpt->bup.ovals[1];
	/* 0 */	((P2 *)_this)->_6_17_22_135_37_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 586: // STATE 731
		;
		((P2 *)_this)->_6_17_22_135_37_shiftIdx = trpt->bup.ovals[1];
		now.sortLink.tasks[ Index(((P2 *)_this)->_6_17_22_135_37_shiftIdx, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 587: // STATE 738
		;
		now.sortLink.count = trpt->bup.ovals[2];
		now.sortLink.tasks[ Index((now.sortLink.count-1), 8) ] = trpt->bup.ovals[1];
	/* 0 */	((P2 *)_this)->_6_17_22_135_37_shiftIdx = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 588: // STATE 738
		;
		now.sortLink.count = trpt->bup.ovals[1];
		now.sortLink.tasks[ Index((now.sortLink.count-1), 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 589: // STATE 752
		;
		((P2 *)_this)->_6_17_22_135_needResched = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.tcb[ Index(((P2 *)_this)->_6_17_22_135_taskId, 5) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P2 *)_this)->_6_17_22_135_taskId, 5) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P2 *)_this)->_6_17_22_135_taskId, 5) ].prio, 4) ].tailIndex, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 590: // STATE 752
		;
		((P2 *)_this)->_6_17_22_135_needResched = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 591: // STATE 752
		;
		((P2 *)_this)->_6_17_22_135_needResched = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 592: // STATE 754
		;
		((P2 *)_this)->_6_17_22_135_idx = trpt->bup.oval;
		;
		goto R999;

	case 593: // STATE 762
		;
		((P2 *)_this)->_6_17_22_135_interrupted_task = trpt->bup.ovals[1];
	/* 0 */	((P2 *)_this)->_6_17_22_135_idx = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 594: // STATE 762
		;
		((P2 *)_this)->_6_17_22_135_interrupted_task = trpt->bup.oval;
		;
		goto R999;

	case 595: // STATE 764
		;
		now.tcb[ Index(((P2 *)_this)->_6_17_22_135_interrupted_task, 5) ].state = trpt->bup.oval;
		;
		goto R999;

	case 596: // STATE 767
		;
		now.readyQueue[ Index(now.tcb[ Index(((P2 *)_this)->_6_17_22_135_interrupted_task, 5) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P2 *)_this)->_6_17_22_135_interrupted_task, 5) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P2 *)_this)->_6_17_22_135_interrupted_task, 5) ].prio, 4) ].tailIndex, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 598: // STATE 782
		;
		((P2 *)_this)->_6_17_22_135_40_found = trpt->bup.ovals[5];
		((P2 *)_this)->_6_17_22_135_40_top_task = trpt->bup.ovals[4];
		((P2 *)_this)->_6_17_22_135_40_prio = trpt->bup.ovals[3];
		((P2 *)_this)->_6_17_22_135_40_found = trpt->bup.ovals[2];
		((P2 *)_this)->_6_17_22_135_40_top_task = trpt->bup.ovals[1];
		((P2 *)_this)->_6_17_22_135_40_prio = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;
;
		;
		
	case 600: // STATE 786
		;
		((P2 *)_this)->_6_17_22_135_40_found = trpt->bup.ovals[1];
		((P2 *)_this)->_6_17_22_135_40_top_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 601: // STATE 788
		;
		((P2 *)_this)->_6_17_22_135_40_prio = trpt->bup.oval;
		;
		goto R999;

	case 602: // STATE 797
		;
		now.topPrio = trpt->bup.ovals[2];
		now.newTask = trpt->bup.ovals[1];
	/* 0 */	((P2 *)_this)->_6_17_22_135_40_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 603: // STATE 797
		;
		now.topPrio = trpt->bup.ovals[1];
		now.newTask = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 604: // STATE 800
		;
		((P2 *)_this)->_6_17_22_135_41_deq_idx = trpt->bup.ovals[1];
		((P2 *)_this)->_6_17_22_135_41_deq_idx = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 605: // STATE 803
		;
		((P2 *)_this)->_6_17_22_135_41_deq_idx = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index(((P2 *)_this)->_6_17_22_135_41_deq_idx, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 606: // STATE 804
		;
	/* 0 */	((P2 *)_this)->_6_17_22_135_41_deq_idx = trpt->bup.oval;
		;
		;
		goto R999;

	case 607: // STATE 818
		;
		now.EP = trpt->bup.ovals[3];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.topPrio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index((now.readyQueue[ Index(now.topPrio, 4) ].tailIndex-1), 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 608: // STATE 818
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 609: // STATE 818
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 610: // STATE 819
		;
		now.int_ctrl_reg = trpt->bup.oval;
		;
		goto R999;

	case 611: // STATE 822
		;
		now.int_ctrl_reg = trpt->bup.oval;
		;
		goto R999;

	case 612: // STATE 834
		;
		((P2 *)_this)->_6_17_23_needResched = trpt->bup.ovals[5];
		((P2 *)_this)->_6_17_23_interrupted_task = trpt->bup.ovals[4];
		((P2 *)_this)->_6_17_23_needResched = trpt->bup.ovals[3];
		((P2 *)_this)->_6_17_23_taskId = trpt->bup.ovals[2];
		((P2 *)_this)->_6_17_23_idx = trpt->bup.ovals[1];
		((P2 *)_this)->_6_17_23_interrupted_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;

	case 613: // STATE 839
		;
		((P2 *)_this)->_6_17_23_idx = trpt->bup.ovals[3];
		now.tickCount = trpt->bup.ovals[2];
		now.int_ctrl_reg = trpt->bup.ovals[1];
		now.int_save = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 614: // STATE 841
		;
		((P2 *)_this)->_6_17_23_taskId = trpt->bup.oval;
		;
		goto R999;

	case 615: // STATE 844
		;
		now.tcb[ Index(((P2 *)_this)->_6_17_23_taskId, 5) ].delayTicks = trpt->bup.ovals[1];
		now.tcb[ Index(((P2 *)_this)->_6_17_23_taskId, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 616: // STATE 849
		;
		((P2 *)_this)->_6_17_23_138_found = trpt->bup.ovals[4];
		((P2 *)_this)->_6_17_23_138_removePos = trpt->bup.ovals[3];
		((P2 *)_this)->_6_17_23_138_shiftIdx = trpt->bup.ovals[2];
		((P2 *)_this)->_6_17_23_138_found = trpt->bup.ovals[1];
		((P2 *)_this)->_6_17_23_138_removePos = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;
;
		;
		
	case 618: // STATE 852
		;
		((P2 *)_this)->_6_17_23_138_found = trpt->bup.oval;
		;
		goto R999;

	case 619: // STATE 854
		;
		((P2 *)_this)->_6_17_23_138_removePos = trpt->bup.oval;
		;
		goto R999;

	case 620: // STATE 863
		;
		((P2 *)_this)->_6_17_23_138_shiftIdx = trpt->bup.ovals[1];
	/* 0 */	((P2 *)_this)->_6_17_23_138_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 621: // STATE 866
		;
		((P2 *)_this)->_6_17_23_138_shiftIdx = trpt->bup.ovals[1];
		now.sortLink.tasks[ Index(((P2 *)_this)->_6_17_23_138_shiftIdx, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 622: // STATE 873
		;
		now.sortLink.count = trpt->bup.ovals[2];
		now.sortLink.tasks[ Index((now.sortLink.count-1), 8) ] = trpt->bup.ovals[1];
	/* 0 */	((P2 *)_this)->_6_17_23_138_shiftIdx = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 623: // STATE 873
		;
		now.sortLink.count = trpt->bup.ovals[1];
		now.sortLink.tasks[ Index((now.sortLink.count-1), 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 624: // STATE 887
		;
		((P2 *)_this)->_6_17_23_needResched = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.tcb[ Index(((P2 *)_this)->_6_17_23_taskId, 5) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P2 *)_this)->_6_17_23_taskId, 5) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P2 *)_this)->_6_17_23_taskId, 5) ].prio, 4) ].tailIndex, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 625: // STATE 887
		;
		((P2 *)_this)->_6_17_23_needResched = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 626: // STATE 887
		;
		((P2 *)_this)->_6_17_23_needResched = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 627: // STATE 889
		;
		((P2 *)_this)->_6_17_23_idx = trpt->bup.oval;
		;
		goto R999;

	case 628: // STATE 897
		;
		((P2 *)_this)->_6_17_23_interrupted_task = trpt->bup.ovals[1];
	/* 0 */	((P2 *)_this)->_6_17_23_idx = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 629: // STATE 897
		;
		((P2 *)_this)->_6_17_23_interrupted_task = trpt->bup.oval;
		;
		goto R999;

	case 630: // STATE 899
		;
		now.tcb[ Index(((P2 *)_this)->_6_17_23_interrupted_task, 5) ].state = trpt->bup.oval;
		;
		goto R999;

	case 631: // STATE 902
		;
		now.readyQueue[ Index(now.tcb[ Index(((P2 *)_this)->_6_17_23_interrupted_task, 5) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P2 *)_this)->_6_17_23_interrupted_task, 5) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P2 *)_this)->_6_17_23_interrupted_task, 5) ].prio, 4) ].tailIndex, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 633: // STATE 917
		;
		((P2 *)_this)->_6_17_23_141_found = trpt->bup.ovals[5];
		((P2 *)_this)->_6_17_23_141_top_task = trpt->bup.ovals[4];
		((P2 *)_this)->_6_17_23_141_prio = trpt->bup.ovals[3];
		((P2 *)_this)->_6_17_23_141_found = trpt->bup.ovals[2];
		((P2 *)_this)->_6_17_23_141_top_task = trpt->bup.ovals[1];
		((P2 *)_this)->_6_17_23_141_prio = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;
;
		;
		
	case 635: // STATE 921
		;
		((P2 *)_this)->_6_17_23_141_found = trpt->bup.ovals[1];
		((P2 *)_this)->_6_17_23_141_top_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 636: // STATE 923
		;
		((P2 *)_this)->_6_17_23_141_prio = trpt->bup.oval;
		;
		goto R999;

	case 637: // STATE 932
		;
		now.topPrio = trpt->bup.ovals[2];
		now.newTask = trpt->bup.ovals[1];
	/* 0 */	((P2 *)_this)->_6_17_23_141_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 638: // STATE 932
		;
		now.topPrio = trpt->bup.ovals[1];
		now.newTask = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 639: // STATE 935
		;
		((P2 *)_this)->_6_17_23_142_deq_idx = trpt->bup.ovals[1];
		((P2 *)_this)->_6_17_23_142_deq_idx = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 640: // STATE 938
		;
		((P2 *)_this)->_6_17_23_142_deq_idx = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index(((P2 *)_this)->_6_17_23_142_deq_idx, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 641: // STATE 939
		;
	/* 0 */	((P2 *)_this)->_6_17_23_142_deq_idx = trpt->bup.oval;
		;
		;
		goto R999;

	case 642: // STATE 953
		;
		now.EP = trpt->bup.ovals[3];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.topPrio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index((now.readyQueue[ Index(now.topPrio, 4) ].tailIndex-1), 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 643: // STATE 953
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 644: // STATE 953
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 645: // STATE 954
		;
		now.int_ctrl_reg = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 648: // STATE 966
		;
		((P2 *)_this)->_6_18_24_needResched = trpt->bup.ovals[5];
		((P2 *)_this)->_6_18_24_interrupted_task = trpt->bup.ovals[4];
		((P2 *)_this)->_6_18_24_needResched = trpt->bup.ovals[3];
		((P2 *)_this)->_6_18_24_taskId = trpt->bup.ovals[2];
		((P2 *)_this)->_6_18_24_idx = trpt->bup.ovals[1];
		((P2 *)_this)->_6_18_24_interrupted_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;

	case 649: // STATE 971
		;
		((P2 *)_this)->_6_18_24_idx = trpt->bup.ovals[3];
		now.tickCount = trpt->bup.ovals[2];
		now.int_ctrl_reg = trpt->bup.ovals[1];
		now.int_save = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 650: // STATE 973
		;
		((P2 *)_this)->_6_18_24_taskId = trpt->bup.oval;
		;
		goto R999;

	case 651: // STATE 976
		;
		now.tcb[ Index(((P2 *)_this)->_6_18_24_taskId, 5) ].delayTicks = trpt->bup.ovals[1];
		now.tcb[ Index(((P2 *)_this)->_6_18_24_taskId, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 652: // STATE 981
		;
		((P2 *)_this)->_6_18_24_145_found = trpt->bup.ovals[4];
		((P2 *)_this)->_6_18_24_145_removePos = trpt->bup.ovals[3];
		((P2 *)_this)->_6_18_24_145_shiftIdx = trpt->bup.ovals[2];
		((P2 *)_this)->_6_18_24_145_found = trpt->bup.ovals[1];
		((P2 *)_this)->_6_18_24_145_removePos = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;
;
		;
		
	case 654: // STATE 984
		;
		((P2 *)_this)->_6_18_24_145_found = trpt->bup.oval;
		;
		goto R999;

	case 655: // STATE 986
		;
		((P2 *)_this)->_6_18_24_145_removePos = trpt->bup.oval;
		;
		goto R999;

	case 656: // STATE 995
		;
		((P2 *)_this)->_6_18_24_145_shiftIdx = trpt->bup.ovals[1];
	/* 0 */	((P2 *)_this)->_6_18_24_145_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 657: // STATE 998
		;
		((P2 *)_this)->_6_18_24_145_shiftIdx = trpt->bup.ovals[1];
		now.sortLink.tasks[ Index(((P2 *)_this)->_6_18_24_145_shiftIdx, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 658: // STATE 1005
		;
		now.sortLink.count = trpt->bup.ovals[2];
		now.sortLink.tasks[ Index((now.sortLink.count-1), 8) ] = trpt->bup.ovals[1];
	/* 0 */	((P2 *)_this)->_6_18_24_145_shiftIdx = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 659: // STATE 1005
		;
		now.sortLink.count = trpt->bup.ovals[1];
		now.sortLink.tasks[ Index((now.sortLink.count-1), 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 660: // STATE 1019
		;
		((P2 *)_this)->_6_18_24_needResched = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.tcb[ Index(((P2 *)_this)->_6_18_24_taskId, 5) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P2 *)_this)->_6_18_24_taskId, 5) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P2 *)_this)->_6_18_24_taskId, 5) ].prio, 4) ].tailIndex, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 661: // STATE 1019
		;
		((P2 *)_this)->_6_18_24_needResched = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 662: // STATE 1019
		;
		((P2 *)_this)->_6_18_24_needResched = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 663: // STATE 1021
		;
		((P2 *)_this)->_6_18_24_idx = trpt->bup.oval;
		;
		goto R999;

	case 664: // STATE 1029
		;
		((P2 *)_this)->_6_18_24_interrupted_task = trpt->bup.ovals[1];
	/* 0 */	((P2 *)_this)->_6_18_24_idx = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 665: // STATE 1029
		;
		((P2 *)_this)->_6_18_24_interrupted_task = trpt->bup.oval;
		;
		goto R999;

	case 666: // STATE 1031
		;
		now.tcb[ Index(((P2 *)_this)->_6_18_24_interrupted_task, 5) ].state = trpt->bup.oval;
		;
		goto R999;

	case 667: // STATE 1034
		;
		now.readyQueue[ Index(now.tcb[ Index(((P2 *)_this)->_6_18_24_interrupted_task, 5) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P2 *)_this)->_6_18_24_interrupted_task, 5) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P2 *)_this)->_6_18_24_interrupted_task, 5) ].prio, 4) ].tailIndex, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 669: // STATE 1049
		;
		((P2 *)_this)->_6_18_24_148_found = trpt->bup.ovals[5];
		((P2 *)_this)->_6_18_24_148_top_task = trpt->bup.ovals[4];
		((P2 *)_this)->_6_18_24_148_prio = trpt->bup.ovals[3];
		((P2 *)_this)->_6_18_24_148_found = trpt->bup.ovals[2];
		((P2 *)_this)->_6_18_24_148_top_task = trpt->bup.ovals[1];
		((P2 *)_this)->_6_18_24_148_prio = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;
;
		;
		
	case 671: // STATE 1053
		;
		((P2 *)_this)->_6_18_24_148_found = trpt->bup.ovals[1];
		((P2 *)_this)->_6_18_24_148_top_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 672: // STATE 1055
		;
		((P2 *)_this)->_6_18_24_148_prio = trpt->bup.oval;
		;
		goto R999;

	case 673: // STATE 1064
		;
		now.topPrio = trpt->bup.ovals[2];
		now.newTask = trpt->bup.ovals[1];
	/* 0 */	((P2 *)_this)->_6_18_24_148_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 674: // STATE 1064
		;
		now.topPrio = trpt->bup.ovals[1];
		now.newTask = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 675: // STATE 1067
		;
		((P2 *)_this)->_6_18_24_149_deq_idx = trpt->bup.ovals[1];
		((P2 *)_this)->_6_18_24_149_deq_idx = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 676: // STATE 1070
		;
		((P2 *)_this)->_6_18_24_149_deq_idx = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index(((P2 *)_this)->_6_18_24_149_deq_idx, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 677: // STATE 1071
		;
	/* 0 */	((P2 *)_this)->_6_18_24_149_deq_idx = trpt->bup.oval;
		;
		;
		goto R999;

	case 678: // STATE 1085
		;
		now.EP = trpt->bup.ovals[3];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.topPrio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index((now.readyQueue[ Index(now.topPrio, 4) ].tailIndex-1), 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 679: // STATE 1085
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 680: // STATE 1085
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 681: // STATE 1086
		;
		now.int_ctrl_reg = trpt->bup.oval;
		;
		goto R999;

	case 682: // STATE 1093
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Process2 */
;
		
	case 683: // STATE 1
		goto R999;

	case 684: // STATE 8
		;
		((P1 *)_this)->_5_7_9_needResched = trpt->bup.ovals[5];
		((P1 *)_this)->_5_7_9_interrupted_task = trpt->bup.ovals[4];
		((P1 *)_this)->_5_7_9_needResched = trpt->bup.ovals[3];
		((P1 *)_this)->_5_7_9_taskId = trpt->bup.ovals[2];
		((P1 *)_this)->_5_7_9_idx = trpt->bup.ovals[1];
		((P1 *)_this)->_5_7_9_interrupted_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;

	case 685: // STATE 13
		;
		((P1 *)_this)->_5_7_9_idx = trpt->bup.ovals[3];
		now.tickCount = trpt->bup.ovals[2];
		now.int_ctrl_reg = trpt->bup.ovals[1];
		now.int_save = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 686: // STATE 15
		;
		((P1 *)_this)->_5_7_9_taskId = trpt->bup.oval;
		;
		goto R999;

	case 687: // STATE 18
		;
		now.tcb[ Index(((P1 *)_this)->_5_7_9_taskId, 5) ].delayTicks = trpt->bup.ovals[1];
		now.tcb[ Index(((P1 *)_this)->_5_7_9_taskId, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 688: // STATE 23
		;
		((P1 *)_this)->_5_7_9_52_found = trpt->bup.ovals[4];
		((P1 *)_this)->_5_7_9_52_removePos = trpt->bup.ovals[3];
		((P1 *)_this)->_5_7_9_52_shiftIdx = trpt->bup.ovals[2];
		((P1 *)_this)->_5_7_9_52_found = trpt->bup.ovals[1];
		((P1 *)_this)->_5_7_9_52_removePos = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;
;
		;
		
	case 690: // STATE 26
		;
		((P1 *)_this)->_5_7_9_52_found = trpt->bup.oval;
		;
		goto R999;

	case 691: // STATE 28
		;
		((P1 *)_this)->_5_7_9_52_removePos = trpt->bup.oval;
		;
		goto R999;

	case 692: // STATE 37
		;
		((P1 *)_this)->_5_7_9_52_shiftIdx = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->_5_7_9_52_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 693: // STATE 40
		;
		((P1 *)_this)->_5_7_9_52_shiftIdx = trpt->bup.ovals[1];
		now.sortLink.tasks[ Index(((P1 *)_this)->_5_7_9_52_shiftIdx, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 694: // STATE 47
		;
		now.sortLink.count = trpt->bup.ovals[2];
		now.sortLink.tasks[ Index((now.sortLink.count-1), 8) ] = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->_5_7_9_52_shiftIdx = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 695: // STATE 47
		;
		now.sortLink.count = trpt->bup.ovals[1];
		now.sortLink.tasks[ Index((now.sortLink.count-1), 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 696: // STATE 61
		;
		((P1 *)_this)->_5_7_9_needResched = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_5_7_9_taskId, 5) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_5_7_9_taskId, 5) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_5_7_9_taskId, 5) ].prio, 4) ].tailIndex, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 697: // STATE 61
		;
		((P1 *)_this)->_5_7_9_needResched = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 698: // STATE 61
		;
		((P1 *)_this)->_5_7_9_needResched = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 699: // STATE 63
		;
		((P1 *)_this)->_5_7_9_idx = trpt->bup.oval;
		;
		goto R999;

	case 700: // STATE 71
		;
		((P1 *)_this)->_5_7_9_interrupted_task = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->_5_7_9_idx = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 701: // STATE 71
		;
		((P1 *)_this)->_5_7_9_interrupted_task = trpt->bup.oval;
		;
		goto R999;

	case 702: // STATE 73
		;
		now.tcb[ Index(((P1 *)_this)->_5_7_9_interrupted_task, 5) ].state = trpt->bup.oval;
		;
		goto R999;

	case 703: // STATE 76
		;
		now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_5_7_9_interrupted_task, 5) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_5_7_9_interrupted_task, 5) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_5_7_9_interrupted_task, 5) ].prio, 4) ].tailIndex, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 705: // STATE 91
		;
		((P1 *)_this)->_5_7_9_55_found = trpt->bup.ovals[5];
		((P1 *)_this)->_5_7_9_55_top_task = trpt->bup.ovals[4];
		((P1 *)_this)->_5_7_9_55_prio = trpt->bup.ovals[3];
		((P1 *)_this)->_5_7_9_55_found = trpt->bup.ovals[2];
		((P1 *)_this)->_5_7_9_55_top_task = trpt->bup.ovals[1];
		((P1 *)_this)->_5_7_9_55_prio = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;
;
		;
		
	case 707: // STATE 95
		;
		((P1 *)_this)->_5_7_9_55_found = trpt->bup.ovals[1];
		((P1 *)_this)->_5_7_9_55_top_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 708: // STATE 97
		;
		((P1 *)_this)->_5_7_9_55_prio = trpt->bup.oval;
		;
		goto R999;

	case 709: // STATE 106
		;
		now.topPrio = trpt->bup.ovals[2];
		now.newTask = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->_5_7_9_55_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 710: // STATE 106
		;
		now.topPrio = trpt->bup.ovals[1];
		now.newTask = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 711: // STATE 109
		;
		((P1 *)_this)->_5_7_9_56_deq_idx = trpt->bup.ovals[1];
		((P1 *)_this)->_5_7_9_56_deq_idx = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 712: // STATE 112
		;
		((P1 *)_this)->_5_7_9_56_deq_idx = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index(((P1 *)_this)->_5_7_9_56_deq_idx, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 713: // STATE 113
		;
	/* 0 */	((P1 *)_this)->_5_7_9_56_deq_idx = trpt->bup.oval;
		;
		;
		goto R999;

	case 714: // STATE 127
		;
		now.EP = trpt->bup.ovals[3];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.topPrio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index((now.readyQueue[ Index(now.topPrio, 4) ].tailIndex-1), 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 715: // STATE 127
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 716: // STATE 127
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 717: // STATE 128
		;
		now.int_ctrl_reg = trpt->bup.oval;
		;
		goto R999;

	case 718: // STATE 133
		;
		((P1 *)_this)->counter = trpt->bup.oval;
		;
		goto R999;

	case 719: // STATE 139
		;
		((P1 *)_this)->_5_8_10_needResched = trpt->bup.ovals[5];
		((P1 *)_this)->_5_8_10_interrupted_task = trpt->bup.ovals[4];
		((P1 *)_this)->_5_8_10_needResched = trpt->bup.ovals[3];
		((P1 *)_this)->_5_8_10_taskId = trpt->bup.ovals[2];
		((P1 *)_this)->_5_8_10_idx = trpt->bup.ovals[1];
		((P1 *)_this)->_5_8_10_interrupted_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;

	case 720: // STATE 144
		;
		((P1 *)_this)->_5_8_10_idx = trpt->bup.ovals[3];
		now.tickCount = trpt->bup.ovals[2];
		now.int_ctrl_reg = trpt->bup.ovals[1];
		now.int_save = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 721: // STATE 146
		;
		((P1 *)_this)->_5_8_10_taskId = trpt->bup.oval;
		;
		goto R999;

	case 722: // STATE 149
		;
		now.tcb[ Index(((P1 *)_this)->_5_8_10_taskId, 5) ].delayTicks = trpt->bup.ovals[1];
		now.tcb[ Index(((P1 *)_this)->_5_8_10_taskId, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 723: // STATE 154
		;
		((P1 *)_this)->_5_8_10_59_found = trpt->bup.ovals[4];
		((P1 *)_this)->_5_8_10_59_removePos = trpt->bup.ovals[3];
		((P1 *)_this)->_5_8_10_59_shiftIdx = trpt->bup.ovals[2];
		((P1 *)_this)->_5_8_10_59_found = trpt->bup.ovals[1];
		((P1 *)_this)->_5_8_10_59_removePos = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;
;
		;
		
	case 725: // STATE 157
		;
		((P1 *)_this)->_5_8_10_59_found = trpt->bup.oval;
		;
		goto R999;

	case 726: // STATE 159
		;
		((P1 *)_this)->_5_8_10_59_removePos = trpt->bup.oval;
		;
		goto R999;

	case 727: // STATE 168
		;
		((P1 *)_this)->_5_8_10_59_shiftIdx = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->_5_8_10_59_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 728: // STATE 171
		;
		((P1 *)_this)->_5_8_10_59_shiftIdx = trpt->bup.ovals[1];
		now.sortLink.tasks[ Index(((P1 *)_this)->_5_8_10_59_shiftIdx, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 729: // STATE 178
		;
		now.sortLink.count = trpt->bup.ovals[2];
		now.sortLink.tasks[ Index((now.sortLink.count-1), 8) ] = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->_5_8_10_59_shiftIdx = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 730: // STATE 178
		;
		now.sortLink.count = trpt->bup.ovals[1];
		now.sortLink.tasks[ Index((now.sortLink.count-1), 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 731: // STATE 192
		;
		((P1 *)_this)->_5_8_10_needResched = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_5_8_10_taskId, 5) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_5_8_10_taskId, 5) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_5_8_10_taskId, 5) ].prio, 4) ].tailIndex, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 732: // STATE 192
		;
		((P1 *)_this)->_5_8_10_needResched = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 733: // STATE 192
		;
		((P1 *)_this)->_5_8_10_needResched = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 734: // STATE 194
		;
		((P1 *)_this)->_5_8_10_idx = trpt->bup.oval;
		;
		goto R999;

	case 735: // STATE 202
		;
		((P1 *)_this)->_5_8_10_interrupted_task = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->_5_8_10_idx = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 736: // STATE 202
		;
		((P1 *)_this)->_5_8_10_interrupted_task = trpt->bup.oval;
		;
		goto R999;

	case 737: // STATE 204
		;
		now.tcb[ Index(((P1 *)_this)->_5_8_10_interrupted_task, 5) ].state = trpt->bup.oval;
		;
		goto R999;

	case 738: // STATE 207
		;
		now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_5_8_10_interrupted_task, 5) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_5_8_10_interrupted_task, 5) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_5_8_10_interrupted_task, 5) ].prio, 4) ].tailIndex, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 740: // STATE 222
		;
		((P1 *)_this)->_5_8_10_62_found = trpt->bup.ovals[5];
		((P1 *)_this)->_5_8_10_62_top_task = trpt->bup.ovals[4];
		((P1 *)_this)->_5_8_10_62_prio = trpt->bup.ovals[3];
		((P1 *)_this)->_5_8_10_62_found = trpt->bup.ovals[2];
		((P1 *)_this)->_5_8_10_62_top_task = trpt->bup.ovals[1];
		((P1 *)_this)->_5_8_10_62_prio = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;
;
		;
		
	case 742: // STATE 226
		;
		((P1 *)_this)->_5_8_10_62_found = trpt->bup.ovals[1];
		((P1 *)_this)->_5_8_10_62_top_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 743: // STATE 228
		;
		((P1 *)_this)->_5_8_10_62_prio = trpt->bup.oval;
		;
		goto R999;

	case 744: // STATE 237
		;
		now.topPrio = trpt->bup.ovals[2];
		now.newTask = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->_5_8_10_62_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 745: // STATE 237
		;
		now.topPrio = trpt->bup.ovals[1];
		now.newTask = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 746: // STATE 240
		;
		((P1 *)_this)->_5_8_10_63_deq_idx = trpt->bup.ovals[1];
		((P1 *)_this)->_5_8_10_63_deq_idx = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 747: // STATE 243
		;
		((P1 *)_this)->_5_8_10_63_deq_idx = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index(((P1 *)_this)->_5_8_10_63_deq_idx, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 748: // STATE 244
		;
	/* 0 */	((P1 *)_this)->_5_8_10_63_deq_idx = trpt->bup.oval;
		;
		;
		goto R999;

	case 749: // STATE 258
		;
		now.EP = trpt->bup.ovals[3];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.topPrio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index((now.readyQueue[ Index(now.topPrio, 4) ].tailIndex-1), 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 750: // STATE 258
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 751: // STATE 258
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 752: // STATE 259
		;
		now.int_ctrl_reg = trpt->bup.oval;
		;
		goto R999;

	case 753: // STATE 264
		;
		((P1 *)_this)->work = trpt->bup.oval;
		;
		goto R999;

	case 754: // STATE 270
		;
		((P1 *)_this)->_5_9_11_needResched = trpt->bup.ovals[5];
		((P1 *)_this)->_5_9_11_interrupted_task = trpt->bup.ovals[4];
		((P1 *)_this)->_5_9_11_needResched = trpt->bup.ovals[3];
		((P1 *)_this)->_5_9_11_taskId = trpt->bup.ovals[2];
		((P1 *)_this)->_5_9_11_idx = trpt->bup.ovals[1];
		((P1 *)_this)->_5_9_11_interrupted_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;

	case 755: // STATE 275
		;
		((P1 *)_this)->_5_9_11_idx = trpt->bup.ovals[3];
		now.tickCount = trpt->bup.ovals[2];
		now.int_ctrl_reg = trpt->bup.ovals[1];
		now.int_save = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 756: // STATE 277
		;
		((P1 *)_this)->_5_9_11_taskId = trpt->bup.oval;
		;
		goto R999;

	case 757: // STATE 280
		;
		now.tcb[ Index(((P1 *)_this)->_5_9_11_taskId, 5) ].delayTicks = trpt->bup.ovals[1];
		now.tcb[ Index(((P1 *)_this)->_5_9_11_taskId, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 758: // STATE 285
		;
		((P1 *)_this)->_5_9_11_66_found = trpt->bup.ovals[4];
		((P1 *)_this)->_5_9_11_66_removePos = trpt->bup.ovals[3];
		((P1 *)_this)->_5_9_11_66_shiftIdx = trpt->bup.ovals[2];
		((P1 *)_this)->_5_9_11_66_found = trpt->bup.ovals[1];
		((P1 *)_this)->_5_9_11_66_removePos = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;
;
		;
		
	case 760: // STATE 288
		;
		((P1 *)_this)->_5_9_11_66_found = trpt->bup.oval;
		;
		goto R999;

	case 761: // STATE 290
		;
		((P1 *)_this)->_5_9_11_66_removePos = trpt->bup.oval;
		;
		goto R999;

	case 762: // STATE 299
		;
		((P1 *)_this)->_5_9_11_66_shiftIdx = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->_5_9_11_66_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 763: // STATE 302
		;
		((P1 *)_this)->_5_9_11_66_shiftIdx = trpt->bup.ovals[1];
		now.sortLink.tasks[ Index(((P1 *)_this)->_5_9_11_66_shiftIdx, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 764: // STATE 309
		;
		now.sortLink.count = trpt->bup.ovals[2];
		now.sortLink.tasks[ Index((now.sortLink.count-1), 8) ] = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->_5_9_11_66_shiftIdx = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 765: // STATE 309
		;
		now.sortLink.count = trpt->bup.ovals[1];
		now.sortLink.tasks[ Index((now.sortLink.count-1), 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 766: // STATE 323
		;
		((P1 *)_this)->_5_9_11_needResched = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_5_9_11_taskId, 5) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_5_9_11_taskId, 5) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_5_9_11_taskId, 5) ].prio, 4) ].tailIndex, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 767: // STATE 323
		;
		((P1 *)_this)->_5_9_11_needResched = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 768: // STATE 323
		;
		((P1 *)_this)->_5_9_11_needResched = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 769: // STATE 325
		;
		((P1 *)_this)->_5_9_11_idx = trpt->bup.oval;
		;
		goto R999;

	case 770: // STATE 333
		;
		((P1 *)_this)->_5_9_11_interrupted_task = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->_5_9_11_idx = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 771: // STATE 333
		;
		((P1 *)_this)->_5_9_11_interrupted_task = trpt->bup.oval;
		;
		goto R999;

	case 772: // STATE 335
		;
		now.tcb[ Index(((P1 *)_this)->_5_9_11_interrupted_task, 5) ].state = trpt->bup.oval;
		;
		goto R999;

	case 773: // STATE 338
		;
		now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_5_9_11_interrupted_task, 5) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_5_9_11_interrupted_task, 5) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_5_9_11_interrupted_task, 5) ].prio, 4) ].tailIndex, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 775: // STATE 353
		;
		((P1 *)_this)->_5_9_11_69_found = trpt->bup.ovals[5];
		((P1 *)_this)->_5_9_11_69_top_task = trpt->bup.ovals[4];
		((P1 *)_this)->_5_9_11_69_prio = trpt->bup.ovals[3];
		((P1 *)_this)->_5_9_11_69_found = trpt->bup.ovals[2];
		((P1 *)_this)->_5_9_11_69_top_task = trpt->bup.ovals[1];
		((P1 *)_this)->_5_9_11_69_prio = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;
;
		;
		
	case 777: // STATE 357
		;
		((P1 *)_this)->_5_9_11_69_found = trpt->bup.ovals[1];
		((P1 *)_this)->_5_9_11_69_top_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 778: // STATE 359
		;
		((P1 *)_this)->_5_9_11_69_prio = trpt->bup.oval;
		;
		goto R999;

	case 779: // STATE 368
		;
		now.topPrio = trpt->bup.ovals[2];
		now.newTask = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->_5_9_11_69_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 780: // STATE 368
		;
		now.topPrio = trpt->bup.ovals[1];
		now.newTask = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 781: // STATE 371
		;
		((P1 *)_this)->_5_9_11_70_deq_idx = trpt->bup.ovals[1];
		((P1 *)_this)->_5_9_11_70_deq_idx = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 782: // STATE 374
		;
		((P1 *)_this)->_5_9_11_70_deq_idx = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index(((P1 *)_this)->_5_9_11_70_deq_idx, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 783: // STATE 375
		;
	/* 0 */	((P1 *)_this)->_5_9_11_70_deq_idx = trpt->bup.oval;
		;
		;
		goto R999;

	case 784: // STATE 389
		;
		now.EP = trpt->bup.ovals[3];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.topPrio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index((now.readyQueue[ Index(now.topPrio, 4) ].tailIndex-1), 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 785: // STATE 389
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 786: // STATE 389
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 787: // STATE 390
		;
		now.int_ctrl_reg = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 789: // STATE 395
		;
		((P1 *)_this)->_5_10_12_currentTask = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 791: // STATE 403
		;
		now.tcb[ Index(((P1 *)_this)->_5_10_12_currentTask, 5) ].delayTicks = trpt->bup.ovals[5];
		now.tcb[ Index(((P1 *)_this)->_5_10_12_currentTask, 5) ].wakeupTime = trpt->bup.ovals[4];
		now.tcb[ Index(((P1 *)_this)->_5_10_12_currentTask, 5) ].state = trpt->bup.ovals[3];
		((P1 *)_this)->_5_10_12_currentTask = trpt->bup.ovals[2];
		now.int_ctrl_reg = trpt->bup.ovals[1];
		now.int_save = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;

	case 792: // STATE 406
		;
		now.sortLink.count = trpt->bup.ovals[1];
		now.sortLink.tasks[ Index(now.sortLink.count, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 794: // STATE 417
		;
		((P1 *)_this)->_5_10_12_74_needResched = trpt->bup.ovals[5];
		((P1 *)_this)->_5_10_12_74_interrupted_task = trpt->bup.ovals[4];
		((P1 *)_this)->_5_10_12_74_needResched = trpt->bup.ovals[3];
		((P1 *)_this)->_5_10_12_74_taskId = trpt->bup.ovals[2];
		((P1 *)_this)->_5_10_12_74_idx = trpt->bup.ovals[1];
		((P1 *)_this)->_5_10_12_74_interrupted_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;

	case 795: // STATE 422
		;
		((P1 *)_this)->_5_10_12_74_idx = trpt->bup.ovals[3];
		now.tickCount = trpt->bup.ovals[2];
		now.int_ctrl_reg = trpt->bup.ovals[1];
		now.int_save = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 796: // STATE 424
		;
		((P1 *)_this)->_5_10_12_74_taskId = trpt->bup.oval;
		;
		goto R999;

	case 797: // STATE 427
		;
		now.tcb[ Index(((P1 *)_this)->_5_10_12_74_taskId, 5) ].delayTicks = trpt->bup.ovals[1];
		now.tcb[ Index(((P1 *)_this)->_5_10_12_74_taskId, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 798: // STATE 432
		;
		((P1 *)_this)->_5_10_12_74_16_found = trpt->bup.ovals[4];
		((P1 *)_this)->_5_10_12_74_16_removePos = trpt->bup.ovals[3];
		((P1 *)_this)->_5_10_12_74_16_shiftIdx = trpt->bup.ovals[2];
		((P1 *)_this)->_5_10_12_74_16_found = trpt->bup.ovals[1];
		((P1 *)_this)->_5_10_12_74_16_removePos = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;
;
		;
		
	case 800: // STATE 435
		;
		((P1 *)_this)->_5_10_12_74_16_found = trpt->bup.oval;
		;
		goto R999;

	case 801: // STATE 437
		;
		((P1 *)_this)->_5_10_12_74_16_removePos = trpt->bup.oval;
		;
		goto R999;

	case 802: // STATE 446
		;
		((P1 *)_this)->_5_10_12_74_16_shiftIdx = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->_5_10_12_74_16_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 803: // STATE 449
		;
		((P1 *)_this)->_5_10_12_74_16_shiftIdx = trpt->bup.ovals[1];
		now.sortLink.tasks[ Index(((P1 *)_this)->_5_10_12_74_16_shiftIdx, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 804: // STATE 456
		;
		now.sortLink.count = trpt->bup.ovals[2];
		now.sortLink.tasks[ Index((now.sortLink.count-1), 8) ] = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->_5_10_12_74_16_shiftIdx = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 805: // STATE 456
		;
		now.sortLink.count = trpt->bup.ovals[1];
		now.sortLink.tasks[ Index((now.sortLink.count-1), 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 806: // STATE 470
		;
		((P1 *)_this)->_5_10_12_74_needResched = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_5_10_12_74_taskId, 5) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_5_10_12_74_taskId, 5) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_5_10_12_74_taskId, 5) ].prio, 4) ].tailIndex, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 807: // STATE 470
		;
		((P1 *)_this)->_5_10_12_74_needResched = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 808: // STATE 470
		;
		((P1 *)_this)->_5_10_12_74_needResched = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 809: // STATE 472
		;
		((P1 *)_this)->_5_10_12_74_idx = trpt->bup.oval;
		;
		goto R999;

	case 810: // STATE 480
		;
		((P1 *)_this)->_5_10_12_74_interrupted_task = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->_5_10_12_74_idx = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 811: // STATE 480
		;
		((P1 *)_this)->_5_10_12_74_interrupted_task = trpt->bup.oval;
		;
		goto R999;

	case 812: // STATE 482
		;
		now.tcb[ Index(((P1 *)_this)->_5_10_12_74_interrupted_task, 5) ].state = trpt->bup.oval;
		;
		goto R999;

	case 813: // STATE 485
		;
		now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_5_10_12_74_interrupted_task, 5) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_5_10_12_74_interrupted_task, 5) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_5_10_12_74_interrupted_task, 5) ].prio, 4) ].tailIndex, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 815: // STATE 500
		;
		((P1 *)_this)->_5_10_12_74_19_found = trpt->bup.ovals[5];
		((P1 *)_this)->_5_10_12_74_19_top_task = trpt->bup.ovals[4];
		((P1 *)_this)->_5_10_12_74_19_prio = trpt->bup.ovals[3];
		((P1 *)_this)->_5_10_12_74_19_found = trpt->bup.ovals[2];
		((P1 *)_this)->_5_10_12_74_19_top_task = trpt->bup.ovals[1];
		((P1 *)_this)->_5_10_12_74_19_prio = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;
;
		;
		
	case 817: // STATE 504
		;
		((P1 *)_this)->_5_10_12_74_19_found = trpt->bup.ovals[1];
		((P1 *)_this)->_5_10_12_74_19_top_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 818: // STATE 506
		;
		((P1 *)_this)->_5_10_12_74_19_prio = trpt->bup.oval;
		;
		goto R999;

	case 819: // STATE 515
		;
		now.topPrio = trpt->bup.ovals[2];
		now.newTask = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->_5_10_12_74_19_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 820: // STATE 515
		;
		now.topPrio = trpt->bup.ovals[1];
		now.newTask = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 821: // STATE 518
		;
		((P1 *)_this)->_5_10_12_74_20_deq_idx = trpt->bup.ovals[1];
		((P1 *)_this)->_5_10_12_74_20_deq_idx = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 822: // STATE 521
		;
		((P1 *)_this)->_5_10_12_74_20_deq_idx = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index(((P1 *)_this)->_5_10_12_74_20_deq_idx, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 823: // STATE 522
		;
	/* 0 */	((P1 *)_this)->_5_10_12_74_20_deq_idx = trpt->bup.oval;
		;
		;
		goto R999;

	case 824: // STATE 536
		;
		now.EP = trpt->bup.ovals[3];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.topPrio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index((now.readyQueue[ Index(now.topPrio, 4) ].tailIndex-1), 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 825: // STATE 536
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 826: // STATE 536
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 827: // STATE 537
		;
		now.int_ctrl_reg = trpt->bup.oval;
		;
		goto R999;

	case 828: // STATE 540
		;
		now.int_ctrl_reg = trpt->bup.oval;
		;
		goto R999;

	case 829: // STATE 552
		;
		((P1 *)_this)->_5_10_13_needResched = trpt->bup.ovals[5];
		((P1 *)_this)->_5_10_13_interrupted_task = trpt->bup.ovals[4];
		((P1 *)_this)->_5_10_13_needResched = trpt->bup.ovals[3];
		((P1 *)_this)->_5_10_13_taskId = trpt->bup.ovals[2];
		((P1 *)_this)->_5_10_13_idx = trpt->bup.ovals[1];
		((P1 *)_this)->_5_10_13_interrupted_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;

	case 830: // STATE 557
		;
		((P1 *)_this)->_5_10_13_idx = trpt->bup.ovals[3];
		now.tickCount = trpt->bup.ovals[2];
		now.int_ctrl_reg = trpt->bup.ovals[1];
		now.int_save = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 831: // STATE 559
		;
		((P1 *)_this)->_5_10_13_taskId = trpt->bup.oval;
		;
		goto R999;

	case 832: // STATE 562
		;
		now.tcb[ Index(((P1 *)_this)->_5_10_13_taskId, 5) ].delayTicks = trpt->bup.ovals[1];
		now.tcb[ Index(((P1 *)_this)->_5_10_13_taskId, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 833: // STATE 567
		;
		((P1 *)_this)->_5_10_13_77_found = trpt->bup.ovals[4];
		((P1 *)_this)->_5_10_13_77_removePos = trpt->bup.ovals[3];
		((P1 *)_this)->_5_10_13_77_shiftIdx = trpt->bup.ovals[2];
		((P1 *)_this)->_5_10_13_77_found = trpt->bup.ovals[1];
		((P1 *)_this)->_5_10_13_77_removePos = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;
;
		;
		
	case 835: // STATE 570
		;
		((P1 *)_this)->_5_10_13_77_found = trpt->bup.oval;
		;
		goto R999;

	case 836: // STATE 572
		;
		((P1 *)_this)->_5_10_13_77_removePos = trpt->bup.oval;
		;
		goto R999;

	case 837: // STATE 581
		;
		((P1 *)_this)->_5_10_13_77_shiftIdx = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->_5_10_13_77_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 838: // STATE 584
		;
		((P1 *)_this)->_5_10_13_77_shiftIdx = trpt->bup.ovals[1];
		now.sortLink.tasks[ Index(((P1 *)_this)->_5_10_13_77_shiftIdx, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 839: // STATE 591
		;
		now.sortLink.count = trpt->bup.ovals[2];
		now.sortLink.tasks[ Index((now.sortLink.count-1), 8) ] = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->_5_10_13_77_shiftIdx = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 840: // STATE 591
		;
		now.sortLink.count = trpt->bup.ovals[1];
		now.sortLink.tasks[ Index((now.sortLink.count-1), 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 841: // STATE 605
		;
		((P1 *)_this)->_5_10_13_needResched = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_5_10_13_taskId, 5) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_5_10_13_taskId, 5) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_5_10_13_taskId, 5) ].prio, 4) ].tailIndex, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 842: // STATE 605
		;
		((P1 *)_this)->_5_10_13_needResched = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 843: // STATE 605
		;
		((P1 *)_this)->_5_10_13_needResched = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 844: // STATE 607
		;
		((P1 *)_this)->_5_10_13_idx = trpt->bup.oval;
		;
		goto R999;

	case 845: // STATE 615
		;
		((P1 *)_this)->_5_10_13_interrupted_task = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->_5_10_13_idx = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 846: // STATE 615
		;
		((P1 *)_this)->_5_10_13_interrupted_task = trpt->bup.oval;
		;
		goto R999;

	case 847: // STATE 617
		;
		now.tcb[ Index(((P1 *)_this)->_5_10_13_interrupted_task, 5) ].state = trpt->bup.oval;
		;
		goto R999;

	case 848: // STATE 620
		;
		now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_5_10_13_interrupted_task, 5) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_5_10_13_interrupted_task, 5) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_5_10_13_interrupted_task, 5) ].prio, 4) ].tailIndex, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 850: // STATE 635
		;
		((P1 *)_this)->_5_10_13_80_found = trpt->bup.ovals[5];
		((P1 *)_this)->_5_10_13_80_top_task = trpt->bup.ovals[4];
		((P1 *)_this)->_5_10_13_80_prio = trpt->bup.ovals[3];
		((P1 *)_this)->_5_10_13_80_found = trpt->bup.ovals[2];
		((P1 *)_this)->_5_10_13_80_top_task = trpt->bup.ovals[1];
		((P1 *)_this)->_5_10_13_80_prio = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;
;
		;
		
	case 852: // STATE 639
		;
		((P1 *)_this)->_5_10_13_80_found = trpt->bup.ovals[1];
		((P1 *)_this)->_5_10_13_80_top_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 853: // STATE 641
		;
		((P1 *)_this)->_5_10_13_80_prio = trpt->bup.oval;
		;
		goto R999;

	case 854: // STATE 650
		;
		now.topPrio = trpt->bup.ovals[2];
		now.newTask = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->_5_10_13_80_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 855: // STATE 650
		;
		now.topPrio = trpt->bup.ovals[1];
		now.newTask = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 856: // STATE 653
		;
		((P1 *)_this)->_5_10_13_81_deq_idx = trpt->bup.ovals[1];
		((P1 *)_this)->_5_10_13_81_deq_idx = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 857: // STATE 656
		;
		((P1 *)_this)->_5_10_13_81_deq_idx = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index(((P1 *)_this)->_5_10_13_81_deq_idx, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 858: // STATE 657
		;
	/* 0 */	((P1 *)_this)->_5_10_13_81_deq_idx = trpt->bup.oval;
		;
		;
		goto R999;

	case 859: // STATE 671
		;
		now.EP = trpt->bup.ovals[3];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.topPrio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index((now.readyQueue[ Index(now.topPrio, 4) ].tailIndex-1), 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 860: // STATE 671
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 861: // STATE 671
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 862: // STATE 672
		;
		now.int_ctrl_reg = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 864: // STATE 677
		;
		((P1 *)_this)->_5_11_14_currentTask = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 866: // STATE 685
		;
		now.tcb[ Index(((P1 *)_this)->_5_11_14_currentTask, 5) ].delayTicks = trpt->bup.ovals[5];
		now.tcb[ Index(((P1 *)_this)->_5_11_14_currentTask, 5) ].wakeupTime = trpt->bup.ovals[4];
		now.tcb[ Index(((P1 *)_this)->_5_11_14_currentTask, 5) ].state = trpt->bup.ovals[3];
		((P1 *)_this)->_5_11_14_currentTask = trpt->bup.ovals[2];
		now.int_ctrl_reg = trpt->bup.ovals[1];
		now.int_save = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;

	case 867: // STATE 688
		;
		now.sortLink.count = trpt->bup.ovals[1];
		now.sortLink.tasks[ Index(now.sortLink.count, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 869: // STATE 699
		;
		((P1 *)_this)->_5_11_14_85_needResched = trpt->bup.ovals[5];
		((P1 *)_this)->_5_11_14_85_interrupted_task = trpt->bup.ovals[4];
		((P1 *)_this)->_5_11_14_85_needResched = trpt->bup.ovals[3];
		((P1 *)_this)->_5_11_14_85_taskId = trpt->bup.ovals[2];
		((P1 *)_this)->_5_11_14_85_idx = trpt->bup.ovals[1];
		((P1 *)_this)->_5_11_14_85_interrupted_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;

	case 870: // STATE 704
		;
		((P1 *)_this)->_5_11_14_85_idx = trpt->bup.ovals[3];
		now.tickCount = trpt->bup.ovals[2];
		now.int_ctrl_reg = trpt->bup.ovals[1];
		now.int_save = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 871: // STATE 706
		;
		((P1 *)_this)->_5_11_14_85_taskId = trpt->bup.oval;
		;
		goto R999;

	case 872: // STATE 709
		;
		now.tcb[ Index(((P1 *)_this)->_5_11_14_85_taskId, 5) ].delayTicks = trpt->bup.ovals[1];
		now.tcb[ Index(((P1 *)_this)->_5_11_14_85_taskId, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 873: // STATE 714
		;
		((P1 *)_this)->_5_11_14_85_23_found = trpt->bup.ovals[4];
		((P1 *)_this)->_5_11_14_85_23_removePos = trpt->bup.ovals[3];
		((P1 *)_this)->_5_11_14_85_23_shiftIdx = trpt->bup.ovals[2];
		((P1 *)_this)->_5_11_14_85_23_found = trpt->bup.ovals[1];
		((P1 *)_this)->_5_11_14_85_23_removePos = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;
;
		;
		
	case 875: // STATE 717
		;
		((P1 *)_this)->_5_11_14_85_23_found = trpt->bup.oval;
		;
		goto R999;

	case 876: // STATE 719
		;
		((P1 *)_this)->_5_11_14_85_23_removePos = trpt->bup.oval;
		;
		goto R999;

	case 877: // STATE 728
		;
		((P1 *)_this)->_5_11_14_85_23_shiftIdx = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->_5_11_14_85_23_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 878: // STATE 731
		;
		((P1 *)_this)->_5_11_14_85_23_shiftIdx = trpt->bup.ovals[1];
		now.sortLink.tasks[ Index(((P1 *)_this)->_5_11_14_85_23_shiftIdx, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 879: // STATE 738
		;
		now.sortLink.count = trpt->bup.ovals[2];
		now.sortLink.tasks[ Index((now.sortLink.count-1), 8) ] = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->_5_11_14_85_23_shiftIdx = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 880: // STATE 738
		;
		now.sortLink.count = trpt->bup.ovals[1];
		now.sortLink.tasks[ Index((now.sortLink.count-1), 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 881: // STATE 752
		;
		((P1 *)_this)->_5_11_14_85_needResched = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_5_11_14_85_taskId, 5) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_5_11_14_85_taskId, 5) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_5_11_14_85_taskId, 5) ].prio, 4) ].tailIndex, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 882: // STATE 752
		;
		((P1 *)_this)->_5_11_14_85_needResched = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 883: // STATE 752
		;
		((P1 *)_this)->_5_11_14_85_needResched = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 884: // STATE 754
		;
		((P1 *)_this)->_5_11_14_85_idx = trpt->bup.oval;
		;
		goto R999;

	case 885: // STATE 762
		;
		((P1 *)_this)->_5_11_14_85_interrupted_task = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->_5_11_14_85_idx = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 886: // STATE 762
		;
		((P1 *)_this)->_5_11_14_85_interrupted_task = trpt->bup.oval;
		;
		goto R999;

	case 887: // STATE 764
		;
		now.tcb[ Index(((P1 *)_this)->_5_11_14_85_interrupted_task, 5) ].state = trpt->bup.oval;
		;
		goto R999;

	case 888: // STATE 767
		;
		now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_5_11_14_85_interrupted_task, 5) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_5_11_14_85_interrupted_task, 5) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_5_11_14_85_interrupted_task, 5) ].prio, 4) ].tailIndex, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 890: // STATE 782
		;
		((P1 *)_this)->_5_11_14_85_26_found = trpt->bup.ovals[5];
		((P1 *)_this)->_5_11_14_85_26_top_task = trpt->bup.ovals[4];
		((P1 *)_this)->_5_11_14_85_26_prio = trpt->bup.ovals[3];
		((P1 *)_this)->_5_11_14_85_26_found = trpt->bup.ovals[2];
		((P1 *)_this)->_5_11_14_85_26_top_task = trpt->bup.ovals[1];
		((P1 *)_this)->_5_11_14_85_26_prio = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;
;
		;
		
	case 892: // STATE 786
		;
		((P1 *)_this)->_5_11_14_85_26_found = trpt->bup.ovals[1];
		((P1 *)_this)->_5_11_14_85_26_top_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 893: // STATE 788
		;
		((P1 *)_this)->_5_11_14_85_26_prio = trpt->bup.oval;
		;
		goto R999;

	case 894: // STATE 797
		;
		now.topPrio = trpt->bup.ovals[2];
		now.newTask = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->_5_11_14_85_26_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 895: // STATE 797
		;
		now.topPrio = trpt->bup.ovals[1];
		now.newTask = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 896: // STATE 800
		;
		((P1 *)_this)->_5_11_14_85_27_deq_idx = trpt->bup.ovals[1];
		((P1 *)_this)->_5_11_14_85_27_deq_idx = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 897: // STATE 803
		;
		((P1 *)_this)->_5_11_14_85_27_deq_idx = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index(((P1 *)_this)->_5_11_14_85_27_deq_idx, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 898: // STATE 804
		;
	/* 0 */	((P1 *)_this)->_5_11_14_85_27_deq_idx = trpt->bup.oval;
		;
		;
		goto R999;

	case 899: // STATE 818
		;
		now.EP = trpt->bup.ovals[3];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.topPrio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index((now.readyQueue[ Index(now.topPrio, 4) ].tailIndex-1), 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 900: // STATE 818
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 901: // STATE 818
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 902: // STATE 819
		;
		now.int_ctrl_reg = trpt->bup.oval;
		;
		goto R999;

	case 903: // STATE 822
		;
		now.int_ctrl_reg = trpt->bup.oval;
		;
		goto R999;

	case 904: // STATE 834
		;
		((P1 *)_this)->_5_11_15_needResched = trpt->bup.ovals[5];
		((P1 *)_this)->_5_11_15_interrupted_task = trpt->bup.ovals[4];
		((P1 *)_this)->_5_11_15_needResched = trpt->bup.ovals[3];
		((P1 *)_this)->_5_11_15_taskId = trpt->bup.ovals[2];
		((P1 *)_this)->_5_11_15_idx = trpt->bup.ovals[1];
		((P1 *)_this)->_5_11_15_interrupted_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;

	case 905: // STATE 839
		;
		((P1 *)_this)->_5_11_15_idx = trpt->bup.ovals[3];
		now.tickCount = trpt->bup.ovals[2];
		now.int_ctrl_reg = trpt->bup.ovals[1];
		now.int_save = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 906: // STATE 841
		;
		((P1 *)_this)->_5_11_15_taskId = trpt->bup.oval;
		;
		goto R999;

	case 907: // STATE 844
		;
		now.tcb[ Index(((P1 *)_this)->_5_11_15_taskId, 5) ].delayTicks = trpt->bup.ovals[1];
		now.tcb[ Index(((P1 *)_this)->_5_11_15_taskId, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 908: // STATE 849
		;
		((P1 *)_this)->_5_11_15_88_found = trpt->bup.ovals[4];
		((P1 *)_this)->_5_11_15_88_removePos = trpt->bup.ovals[3];
		((P1 *)_this)->_5_11_15_88_shiftIdx = trpt->bup.ovals[2];
		((P1 *)_this)->_5_11_15_88_found = trpt->bup.ovals[1];
		((P1 *)_this)->_5_11_15_88_removePos = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;
;
		;
		
	case 910: // STATE 852
		;
		((P1 *)_this)->_5_11_15_88_found = trpt->bup.oval;
		;
		goto R999;

	case 911: // STATE 854
		;
		((P1 *)_this)->_5_11_15_88_removePos = trpt->bup.oval;
		;
		goto R999;

	case 912: // STATE 863
		;
		((P1 *)_this)->_5_11_15_88_shiftIdx = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->_5_11_15_88_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 913: // STATE 866
		;
		((P1 *)_this)->_5_11_15_88_shiftIdx = trpt->bup.ovals[1];
		now.sortLink.tasks[ Index(((P1 *)_this)->_5_11_15_88_shiftIdx, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 914: // STATE 873
		;
		now.sortLink.count = trpt->bup.ovals[2];
		now.sortLink.tasks[ Index((now.sortLink.count-1), 8) ] = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->_5_11_15_88_shiftIdx = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 915: // STATE 873
		;
		now.sortLink.count = trpt->bup.ovals[1];
		now.sortLink.tasks[ Index((now.sortLink.count-1), 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 916: // STATE 887
		;
		((P1 *)_this)->_5_11_15_needResched = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_5_11_15_taskId, 5) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_5_11_15_taskId, 5) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_5_11_15_taskId, 5) ].prio, 4) ].tailIndex, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 917: // STATE 887
		;
		((P1 *)_this)->_5_11_15_needResched = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 918: // STATE 887
		;
		((P1 *)_this)->_5_11_15_needResched = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 919: // STATE 889
		;
		((P1 *)_this)->_5_11_15_idx = trpt->bup.oval;
		;
		goto R999;

	case 920: // STATE 897
		;
		((P1 *)_this)->_5_11_15_interrupted_task = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->_5_11_15_idx = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 921: // STATE 897
		;
		((P1 *)_this)->_5_11_15_interrupted_task = trpt->bup.oval;
		;
		goto R999;

	case 922: // STATE 899
		;
		now.tcb[ Index(((P1 *)_this)->_5_11_15_interrupted_task, 5) ].state = trpt->bup.oval;
		;
		goto R999;

	case 923: // STATE 902
		;
		now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_5_11_15_interrupted_task, 5) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_5_11_15_interrupted_task, 5) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_5_11_15_interrupted_task, 5) ].prio, 4) ].tailIndex, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 925: // STATE 917
		;
		((P1 *)_this)->_5_11_15_91_found = trpt->bup.ovals[5];
		((P1 *)_this)->_5_11_15_91_top_task = trpt->bup.ovals[4];
		((P1 *)_this)->_5_11_15_91_prio = trpt->bup.ovals[3];
		((P1 *)_this)->_5_11_15_91_found = trpt->bup.ovals[2];
		((P1 *)_this)->_5_11_15_91_top_task = trpt->bup.ovals[1];
		((P1 *)_this)->_5_11_15_91_prio = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;
;
		;
		
	case 927: // STATE 921
		;
		((P1 *)_this)->_5_11_15_91_found = trpt->bup.ovals[1];
		((P1 *)_this)->_5_11_15_91_top_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 928: // STATE 923
		;
		((P1 *)_this)->_5_11_15_91_prio = trpt->bup.oval;
		;
		goto R999;

	case 929: // STATE 932
		;
		now.topPrio = trpt->bup.ovals[2];
		now.newTask = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->_5_11_15_91_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 930: // STATE 932
		;
		now.topPrio = trpt->bup.ovals[1];
		now.newTask = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 931: // STATE 935
		;
		((P1 *)_this)->_5_11_15_92_deq_idx = trpt->bup.ovals[1];
		((P1 *)_this)->_5_11_15_92_deq_idx = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 932: // STATE 938
		;
		((P1 *)_this)->_5_11_15_92_deq_idx = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index(((P1 *)_this)->_5_11_15_92_deq_idx, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 933: // STATE 939
		;
	/* 0 */	((P1 *)_this)->_5_11_15_92_deq_idx = trpt->bup.oval;
		;
		;
		goto R999;

	case 934: // STATE 953
		;
		now.EP = trpt->bup.ovals[3];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.topPrio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index((now.readyQueue[ Index(now.topPrio, 4) ].tailIndex-1), 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 935: // STATE 953
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 936: // STATE 953
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 937: // STATE 954
		;
		now.int_ctrl_reg = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 940: // STATE 966
		;
		((P1 *)_this)->_5_12_16_needResched = trpt->bup.ovals[5];
		((P1 *)_this)->_5_12_16_interrupted_task = trpt->bup.ovals[4];
		((P1 *)_this)->_5_12_16_needResched = trpt->bup.ovals[3];
		((P1 *)_this)->_5_12_16_taskId = trpt->bup.ovals[2];
		((P1 *)_this)->_5_12_16_idx = trpt->bup.ovals[1];
		((P1 *)_this)->_5_12_16_interrupted_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;

	case 941: // STATE 971
		;
		((P1 *)_this)->_5_12_16_idx = trpt->bup.ovals[3];
		now.tickCount = trpt->bup.ovals[2];
		now.int_ctrl_reg = trpt->bup.ovals[1];
		now.int_save = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 942: // STATE 973
		;
		((P1 *)_this)->_5_12_16_taskId = trpt->bup.oval;
		;
		goto R999;

	case 943: // STATE 976
		;
		now.tcb[ Index(((P1 *)_this)->_5_12_16_taskId, 5) ].delayTicks = trpt->bup.ovals[1];
		now.tcb[ Index(((P1 *)_this)->_5_12_16_taskId, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 944: // STATE 981
		;
		((P1 *)_this)->_5_12_16_95_found = trpt->bup.ovals[4];
		((P1 *)_this)->_5_12_16_95_removePos = trpt->bup.ovals[3];
		((P1 *)_this)->_5_12_16_95_shiftIdx = trpt->bup.ovals[2];
		((P1 *)_this)->_5_12_16_95_found = trpt->bup.ovals[1];
		((P1 *)_this)->_5_12_16_95_removePos = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;
;
		;
		
	case 946: // STATE 984
		;
		((P1 *)_this)->_5_12_16_95_found = trpt->bup.oval;
		;
		goto R999;

	case 947: // STATE 986
		;
		((P1 *)_this)->_5_12_16_95_removePos = trpt->bup.oval;
		;
		goto R999;

	case 948: // STATE 995
		;
		((P1 *)_this)->_5_12_16_95_shiftIdx = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->_5_12_16_95_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 949: // STATE 998
		;
		((P1 *)_this)->_5_12_16_95_shiftIdx = trpt->bup.ovals[1];
		now.sortLink.tasks[ Index(((P1 *)_this)->_5_12_16_95_shiftIdx, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 950: // STATE 1005
		;
		now.sortLink.count = trpt->bup.ovals[2];
		now.sortLink.tasks[ Index((now.sortLink.count-1), 8) ] = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->_5_12_16_95_shiftIdx = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 951: // STATE 1005
		;
		now.sortLink.count = trpt->bup.ovals[1];
		now.sortLink.tasks[ Index((now.sortLink.count-1), 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 952: // STATE 1019
		;
		((P1 *)_this)->_5_12_16_needResched = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_5_12_16_taskId, 5) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_5_12_16_taskId, 5) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_5_12_16_taskId, 5) ].prio, 4) ].tailIndex, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 953: // STATE 1019
		;
		((P1 *)_this)->_5_12_16_needResched = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 954: // STATE 1019
		;
		((P1 *)_this)->_5_12_16_needResched = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 955: // STATE 1021
		;
		((P1 *)_this)->_5_12_16_idx = trpt->bup.oval;
		;
		goto R999;

	case 956: // STATE 1029
		;
		((P1 *)_this)->_5_12_16_interrupted_task = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->_5_12_16_idx = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 957: // STATE 1029
		;
		((P1 *)_this)->_5_12_16_interrupted_task = trpt->bup.oval;
		;
		goto R999;

	case 958: // STATE 1031
		;
		now.tcb[ Index(((P1 *)_this)->_5_12_16_interrupted_task, 5) ].state = trpt->bup.oval;
		;
		goto R999;

	case 959: // STATE 1034
		;
		now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_5_12_16_interrupted_task, 5) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_5_12_16_interrupted_task, 5) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_5_12_16_interrupted_task, 5) ].prio, 4) ].tailIndex, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 961: // STATE 1049
		;
		((P1 *)_this)->_5_12_16_98_found = trpt->bup.ovals[5];
		((P1 *)_this)->_5_12_16_98_top_task = trpt->bup.ovals[4];
		((P1 *)_this)->_5_12_16_98_prio = trpt->bup.ovals[3];
		((P1 *)_this)->_5_12_16_98_found = trpt->bup.ovals[2];
		((P1 *)_this)->_5_12_16_98_top_task = trpt->bup.ovals[1];
		((P1 *)_this)->_5_12_16_98_prio = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;
;
		;
		
	case 963: // STATE 1053
		;
		((P1 *)_this)->_5_12_16_98_found = trpt->bup.ovals[1];
		((P1 *)_this)->_5_12_16_98_top_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 964: // STATE 1055
		;
		((P1 *)_this)->_5_12_16_98_prio = trpt->bup.oval;
		;
		goto R999;

	case 965: // STATE 1064
		;
		now.topPrio = trpt->bup.ovals[2];
		now.newTask = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->_5_12_16_98_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 966: // STATE 1064
		;
		now.topPrio = trpt->bup.ovals[1];
		now.newTask = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 967: // STATE 1067
		;
		((P1 *)_this)->_5_12_16_99_deq_idx = trpt->bup.ovals[1];
		((P1 *)_this)->_5_12_16_99_deq_idx = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 968: // STATE 1070
		;
		((P1 *)_this)->_5_12_16_99_deq_idx = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index(((P1 *)_this)->_5_12_16_99_deq_idx, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 969: // STATE 1071
		;
	/* 0 */	((P1 *)_this)->_5_12_16_99_deq_idx = trpt->bup.oval;
		;
		;
		goto R999;

	case 970: // STATE 1085
		;
		now.EP = trpt->bup.ovals[3];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.topPrio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index((now.readyQueue[ Index(now.topPrio, 4) ].tailIndex-1), 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 971: // STATE 1085
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 972: // STATE 1085
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 973: // STATE 1086
		;
		now.int_ctrl_reg = trpt->bup.oval;
		;
		goto R999;

	case 974: // STATE 1093
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Process1 */
;
		
	case 975: // STATE 1
		goto R999;

	case 976: // STATE 8
		;
		((P0 *)_this)->_4_1_1_needResched = trpt->bup.ovals[5];
		((P0 *)_this)->_4_1_1_interrupted_task = trpt->bup.ovals[4];
		((P0 *)_this)->_4_1_1_needResched = trpt->bup.ovals[3];
		((P0 *)_this)->_4_1_1_taskId = trpt->bup.ovals[2];
		((P0 *)_this)->_4_1_1_idx = trpt->bup.ovals[1];
		((P0 *)_this)->_4_1_1_interrupted_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;

	case 977: // STATE 13
		;
		((P0 *)_this)->_4_1_1_idx = trpt->bup.ovals[3];
		now.tickCount = trpt->bup.ovals[2];
		now.int_ctrl_reg = trpt->bup.ovals[1];
		now.int_save = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 978: // STATE 15
		;
		((P0 *)_this)->_4_1_1_taskId = trpt->bup.oval;
		;
		goto R999;

	case 979: // STATE 18
		;
		now.tcb[ Index(((P0 *)_this)->_4_1_1_taskId, 5) ].delayTicks = trpt->bup.ovals[1];
		now.tcb[ Index(((P0 *)_this)->_4_1_1_taskId, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 980: // STATE 23
		;
		((P0 *)_this)->_4_1_1_2_found = trpt->bup.ovals[4];
		((P0 *)_this)->_4_1_1_2_removePos = trpt->bup.ovals[3];
		((P0 *)_this)->_4_1_1_2_shiftIdx = trpt->bup.ovals[2];
		((P0 *)_this)->_4_1_1_2_found = trpt->bup.ovals[1];
		((P0 *)_this)->_4_1_1_2_removePos = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;
;
		;
		
	case 982: // STATE 26
		;
		((P0 *)_this)->_4_1_1_2_found = trpt->bup.oval;
		;
		goto R999;

	case 983: // STATE 28
		;
		((P0 *)_this)->_4_1_1_2_removePos = trpt->bup.oval;
		;
		goto R999;

	case 984: // STATE 37
		;
		((P0 *)_this)->_4_1_1_2_shiftIdx = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->_4_1_1_2_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 985: // STATE 40
		;
		((P0 *)_this)->_4_1_1_2_shiftIdx = trpt->bup.ovals[1];
		now.sortLink.tasks[ Index(((P0 *)_this)->_4_1_1_2_shiftIdx, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 986: // STATE 47
		;
		now.sortLink.count = trpt->bup.ovals[2];
		now.sortLink.tasks[ Index((now.sortLink.count-1), 8) ] = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->_4_1_1_2_shiftIdx = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 987: // STATE 47
		;
		now.sortLink.count = trpt->bup.ovals[1];
		now.sortLink.tasks[ Index((now.sortLink.count-1), 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 988: // STATE 61
		;
		((P0 *)_this)->_4_1_1_needResched = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_4_1_1_taskId, 5) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_4_1_1_taskId, 5) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_4_1_1_taskId, 5) ].prio, 4) ].tailIndex, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 989: // STATE 61
		;
		((P0 *)_this)->_4_1_1_needResched = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 990: // STATE 61
		;
		((P0 *)_this)->_4_1_1_needResched = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 991: // STATE 63
		;
		((P0 *)_this)->_4_1_1_idx = trpt->bup.oval;
		;
		goto R999;

	case 992: // STATE 71
		;
		((P0 *)_this)->_4_1_1_interrupted_task = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->_4_1_1_idx = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 993: // STATE 71
		;
		((P0 *)_this)->_4_1_1_interrupted_task = trpt->bup.oval;
		;
		goto R999;

	case 994: // STATE 73
		;
		now.tcb[ Index(((P0 *)_this)->_4_1_1_interrupted_task, 5) ].state = trpt->bup.oval;
		;
		goto R999;

	case 995: // STATE 76
		;
		now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_4_1_1_interrupted_task, 5) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_4_1_1_interrupted_task, 5) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_4_1_1_interrupted_task, 5) ].prio, 4) ].tailIndex, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 997: // STATE 91
		;
		((P0 *)_this)->_4_1_1_5_found = trpt->bup.ovals[5];
		((P0 *)_this)->_4_1_1_5_top_task = trpt->bup.ovals[4];
		((P0 *)_this)->_4_1_1_5_prio = trpt->bup.ovals[3];
		((P0 *)_this)->_4_1_1_5_found = trpt->bup.ovals[2];
		((P0 *)_this)->_4_1_1_5_top_task = trpt->bup.ovals[1];
		((P0 *)_this)->_4_1_1_5_prio = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;
;
		;
		
	case 999: // STATE 95
		;
		((P0 *)_this)->_4_1_1_5_found = trpt->bup.ovals[1];
		((P0 *)_this)->_4_1_1_5_top_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1000: // STATE 97
		;
		((P0 *)_this)->_4_1_1_5_prio = trpt->bup.oval;
		;
		goto R999;

	case 1001: // STATE 106
		;
		now.topPrio = trpt->bup.ovals[2];
		now.newTask = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->_4_1_1_5_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 1002: // STATE 106
		;
		now.topPrio = trpt->bup.ovals[1];
		now.newTask = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1003: // STATE 109
		;
		((P0 *)_this)->_4_1_1_6_deq_idx = trpt->bup.ovals[1];
		((P0 *)_this)->_4_1_1_6_deq_idx = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1004: // STATE 112
		;
		((P0 *)_this)->_4_1_1_6_deq_idx = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index(((P0 *)_this)->_4_1_1_6_deq_idx, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1005: // STATE 113
		;
	/* 0 */	((P0 *)_this)->_4_1_1_6_deq_idx = trpt->bup.oval;
		;
		;
		goto R999;

	case 1006: // STATE 127
		;
		now.EP = trpt->bup.ovals[3];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.topPrio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index((now.readyQueue[ Index(now.topPrio, 4) ].tailIndex-1), 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 1007: // STATE 127
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1008: // STATE 127
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1009: // STATE 128
		;
		now.int_ctrl_reg = trpt->bup.oval;
		;
		goto R999;

	case 1010: // STATE 133
		;
		((P0 *)_this)->counter = trpt->bup.oval;
		;
		goto R999;

	case 1011: // STATE 139
		;
		((P0 *)_this)->_4_2_2_needResched = trpt->bup.ovals[5];
		((P0 *)_this)->_4_2_2_interrupted_task = trpt->bup.ovals[4];
		((P0 *)_this)->_4_2_2_needResched = trpt->bup.ovals[3];
		((P0 *)_this)->_4_2_2_taskId = trpt->bup.ovals[2];
		((P0 *)_this)->_4_2_2_idx = trpt->bup.ovals[1];
		((P0 *)_this)->_4_2_2_interrupted_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;

	case 1012: // STATE 144
		;
		((P0 *)_this)->_4_2_2_idx = trpt->bup.ovals[3];
		now.tickCount = trpt->bup.ovals[2];
		now.int_ctrl_reg = trpt->bup.ovals[1];
		now.int_save = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 1013: // STATE 146
		;
		((P0 *)_this)->_4_2_2_taskId = trpt->bup.oval;
		;
		goto R999;

	case 1014: // STATE 149
		;
		now.tcb[ Index(((P0 *)_this)->_4_2_2_taskId, 5) ].delayTicks = trpt->bup.ovals[1];
		now.tcb[ Index(((P0 *)_this)->_4_2_2_taskId, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1015: // STATE 154
		;
		((P0 *)_this)->_4_2_2_9_found = trpt->bup.ovals[4];
		((P0 *)_this)->_4_2_2_9_removePos = trpt->bup.ovals[3];
		((P0 *)_this)->_4_2_2_9_shiftIdx = trpt->bup.ovals[2];
		((P0 *)_this)->_4_2_2_9_found = trpt->bup.ovals[1];
		((P0 *)_this)->_4_2_2_9_removePos = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;
;
		;
		
	case 1017: // STATE 157
		;
		((P0 *)_this)->_4_2_2_9_found = trpt->bup.oval;
		;
		goto R999;

	case 1018: // STATE 159
		;
		((P0 *)_this)->_4_2_2_9_removePos = trpt->bup.oval;
		;
		goto R999;

	case 1019: // STATE 168
		;
		((P0 *)_this)->_4_2_2_9_shiftIdx = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->_4_2_2_9_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1020: // STATE 171
		;
		((P0 *)_this)->_4_2_2_9_shiftIdx = trpt->bup.ovals[1];
		now.sortLink.tasks[ Index(((P0 *)_this)->_4_2_2_9_shiftIdx, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1021: // STATE 178
		;
		now.sortLink.count = trpt->bup.ovals[2];
		now.sortLink.tasks[ Index((now.sortLink.count-1), 8) ] = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->_4_2_2_9_shiftIdx = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 1022: // STATE 178
		;
		now.sortLink.count = trpt->bup.ovals[1];
		now.sortLink.tasks[ Index((now.sortLink.count-1), 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1023: // STATE 192
		;
		((P0 *)_this)->_4_2_2_needResched = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_4_2_2_taskId, 5) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_4_2_2_taskId, 5) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_4_2_2_taskId, 5) ].prio, 4) ].tailIndex, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 1024: // STATE 192
		;
		((P0 *)_this)->_4_2_2_needResched = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1025: // STATE 192
		;
		((P0 *)_this)->_4_2_2_needResched = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1026: // STATE 194
		;
		((P0 *)_this)->_4_2_2_idx = trpt->bup.oval;
		;
		goto R999;

	case 1027: // STATE 202
		;
		((P0 *)_this)->_4_2_2_interrupted_task = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->_4_2_2_idx = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1028: // STATE 202
		;
		((P0 *)_this)->_4_2_2_interrupted_task = trpt->bup.oval;
		;
		goto R999;

	case 1029: // STATE 204
		;
		now.tcb[ Index(((P0 *)_this)->_4_2_2_interrupted_task, 5) ].state = trpt->bup.oval;
		;
		goto R999;

	case 1030: // STATE 207
		;
		now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_4_2_2_interrupted_task, 5) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_4_2_2_interrupted_task, 5) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_4_2_2_interrupted_task, 5) ].prio, 4) ].tailIndex, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 1032: // STATE 222
		;
		((P0 *)_this)->_4_2_2_12_found = trpt->bup.ovals[5];
		((P0 *)_this)->_4_2_2_12_top_task = trpt->bup.ovals[4];
		((P0 *)_this)->_4_2_2_12_prio = trpt->bup.ovals[3];
		((P0 *)_this)->_4_2_2_12_found = trpt->bup.ovals[2];
		((P0 *)_this)->_4_2_2_12_top_task = trpt->bup.ovals[1];
		((P0 *)_this)->_4_2_2_12_prio = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;
;
		;
		
	case 1034: // STATE 226
		;
		((P0 *)_this)->_4_2_2_12_found = trpt->bup.ovals[1];
		((P0 *)_this)->_4_2_2_12_top_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1035: // STATE 228
		;
		((P0 *)_this)->_4_2_2_12_prio = trpt->bup.oval;
		;
		goto R999;

	case 1036: // STATE 237
		;
		now.topPrio = trpt->bup.ovals[2];
		now.newTask = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->_4_2_2_12_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 1037: // STATE 237
		;
		now.topPrio = trpt->bup.ovals[1];
		now.newTask = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1038: // STATE 240
		;
		((P0 *)_this)->_4_2_2_13_deq_idx = trpt->bup.ovals[1];
		((P0 *)_this)->_4_2_2_13_deq_idx = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1039: // STATE 243
		;
		((P0 *)_this)->_4_2_2_13_deq_idx = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index(((P0 *)_this)->_4_2_2_13_deq_idx, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1040: // STATE 244
		;
	/* 0 */	((P0 *)_this)->_4_2_2_13_deq_idx = trpt->bup.oval;
		;
		;
		goto R999;

	case 1041: // STATE 258
		;
		now.EP = trpt->bup.ovals[3];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.topPrio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index((now.readyQueue[ Index(now.topPrio, 4) ].tailIndex-1), 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 1042: // STATE 258
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1043: // STATE 258
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1044: // STATE 259
		;
		now.int_ctrl_reg = trpt->bup.oval;
		;
		goto R999;

	case 1045: // STATE 264
		;
		((P0 *)_this)->work = trpt->bup.oval;
		;
		goto R999;

	case 1046: // STATE 270
		;
		((P0 *)_this)->_4_3_3_needResched = trpt->bup.ovals[5];
		((P0 *)_this)->_4_3_3_interrupted_task = trpt->bup.ovals[4];
		((P0 *)_this)->_4_3_3_needResched = trpt->bup.ovals[3];
		((P0 *)_this)->_4_3_3_taskId = trpt->bup.ovals[2];
		((P0 *)_this)->_4_3_3_idx = trpt->bup.ovals[1];
		((P0 *)_this)->_4_3_3_interrupted_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;

	case 1047: // STATE 275
		;
		((P0 *)_this)->_4_3_3_idx = trpt->bup.ovals[3];
		now.tickCount = trpt->bup.ovals[2];
		now.int_ctrl_reg = trpt->bup.ovals[1];
		now.int_save = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 1048: // STATE 277
		;
		((P0 *)_this)->_4_3_3_taskId = trpt->bup.oval;
		;
		goto R999;

	case 1049: // STATE 280
		;
		now.tcb[ Index(((P0 *)_this)->_4_3_3_taskId, 5) ].delayTicks = trpt->bup.ovals[1];
		now.tcb[ Index(((P0 *)_this)->_4_3_3_taskId, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1050: // STATE 285
		;
		((P0 *)_this)->_4_3_3_16_found = trpt->bup.ovals[4];
		((P0 *)_this)->_4_3_3_16_removePos = trpt->bup.ovals[3];
		((P0 *)_this)->_4_3_3_16_shiftIdx = trpt->bup.ovals[2];
		((P0 *)_this)->_4_3_3_16_found = trpt->bup.ovals[1];
		((P0 *)_this)->_4_3_3_16_removePos = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;
;
		;
		
	case 1052: // STATE 288
		;
		((P0 *)_this)->_4_3_3_16_found = trpt->bup.oval;
		;
		goto R999;

	case 1053: // STATE 290
		;
		((P0 *)_this)->_4_3_3_16_removePos = trpt->bup.oval;
		;
		goto R999;

	case 1054: // STATE 299
		;
		((P0 *)_this)->_4_3_3_16_shiftIdx = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->_4_3_3_16_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1055: // STATE 302
		;
		((P0 *)_this)->_4_3_3_16_shiftIdx = trpt->bup.ovals[1];
		now.sortLink.tasks[ Index(((P0 *)_this)->_4_3_3_16_shiftIdx, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1056: // STATE 309
		;
		now.sortLink.count = trpt->bup.ovals[2];
		now.sortLink.tasks[ Index((now.sortLink.count-1), 8) ] = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->_4_3_3_16_shiftIdx = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 1057: // STATE 309
		;
		now.sortLink.count = trpt->bup.ovals[1];
		now.sortLink.tasks[ Index((now.sortLink.count-1), 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1058: // STATE 323
		;
		((P0 *)_this)->_4_3_3_needResched = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_4_3_3_taskId, 5) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_4_3_3_taskId, 5) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_4_3_3_taskId, 5) ].prio, 4) ].tailIndex, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 1059: // STATE 323
		;
		((P0 *)_this)->_4_3_3_needResched = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1060: // STATE 323
		;
		((P0 *)_this)->_4_3_3_needResched = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1061: // STATE 325
		;
		((P0 *)_this)->_4_3_3_idx = trpt->bup.oval;
		;
		goto R999;

	case 1062: // STATE 333
		;
		((P0 *)_this)->_4_3_3_interrupted_task = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->_4_3_3_idx = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1063: // STATE 333
		;
		((P0 *)_this)->_4_3_3_interrupted_task = trpt->bup.oval;
		;
		goto R999;

	case 1064: // STATE 335
		;
		now.tcb[ Index(((P0 *)_this)->_4_3_3_interrupted_task, 5) ].state = trpt->bup.oval;
		;
		goto R999;

	case 1065: // STATE 338
		;
		now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_4_3_3_interrupted_task, 5) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_4_3_3_interrupted_task, 5) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_4_3_3_interrupted_task, 5) ].prio, 4) ].tailIndex, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 1067: // STATE 353
		;
		((P0 *)_this)->_4_3_3_19_found = trpt->bup.ovals[5];
		((P0 *)_this)->_4_3_3_19_top_task = trpt->bup.ovals[4];
		((P0 *)_this)->_4_3_3_19_prio = trpt->bup.ovals[3];
		((P0 *)_this)->_4_3_3_19_found = trpt->bup.ovals[2];
		((P0 *)_this)->_4_3_3_19_top_task = trpt->bup.ovals[1];
		((P0 *)_this)->_4_3_3_19_prio = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;
;
		;
		
	case 1069: // STATE 357
		;
		((P0 *)_this)->_4_3_3_19_found = trpt->bup.ovals[1];
		((P0 *)_this)->_4_3_3_19_top_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1070: // STATE 359
		;
		((P0 *)_this)->_4_3_3_19_prio = trpt->bup.oval;
		;
		goto R999;

	case 1071: // STATE 368
		;
		now.topPrio = trpt->bup.ovals[2];
		now.newTask = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->_4_3_3_19_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 1072: // STATE 368
		;
		now.topPrio = trpt->bup.ovals[1];
		now.newTask = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1073: // STATE 371
		;
		((P0 *)_this)->_4_3_3_20_deq_idx = trpt->bup.ovals[1];
		((P0 *)_this)->_4_3_3_20_deq_idx = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1074: // STATE 374
		;
		((P0 *)_this)->_4_3_3_20_deq_idx = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index(((P0 *)_this)->_4_3_3_20_deq_idx, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1075: // STATE 375
		;
	/* 0 */	((P0 *)_this)->_4_3_3_20_deq_idx = trpt->bup.oval;
		;
		;
		goto R999;

	case 1076: // STATE 389
		;
		now.EP = trpt->bup.ovals[3];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.topPrio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index((now.readyQueue[ Index(now.topPrio, 4) ].tailIndex-1), 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 1077: // STATE 389
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1078: // STATE 389
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1079: // STATE 390
		;
		now.int_ctrl_reg = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 1081: // STATE 395
		;
		((P0 *)_this)->_4_4_4_currentTask = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 1083: // STATE 403
		;
		now.tcb[ Index(((P0 *)_this)->_4_4_4_currentTask, 5) ].delayTicks = trpt->bup.ovals[5];
		now.tcb[ Index(((P0 *)_this)->_4_4_4_currentTask, 5) ].wakeupTime = trpt->bup.ovals[4];
		now.tcb[ Index(((P0 *)_this)->_4_4_4_currentTask, 5) ].state = trpt->bup.ovals[3];
		((P0 *)_this)->_4_4_4_currentTask = trpt->bup.ovals[2];
		now.int_ctrl_reg = trpt->bup.ovals[1];
		now.int_save = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;

	case 1084: // STATE 406
		;
		now.sortLink.count = trpt->bup.ovals[1];
		now.sortLink.tasks[ Index(now.sortLink.count, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 1086: // STATE 417
		;
		((P0 *)_this)->_4_4_4_24_needResched = trpt->bup.ovals[5];
		((P0 *)_this)->_4_4_4_24_interrupted_task = trpt->bup.ovals[4];
		((P0 *)_this)->_4_4_4_24_needResched = trpt->bup.ovals[3];
		((P0 *)_this)->_4_4_4_24_taskId = trpt->bup.ovals[2];
		((P0 *)_this)->_4_4_4_24_idx = trpt->bup.ovals[1];
		((P0 *)_this)->_4_4_4_24_interrupted_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;

	case 1087: // STATE 422
		;
		((P0 *)_this)->_4_4_4_24_idx = trpt->bup.ovals[3];
		now.tickCount = trpt->bup.ovals[2];
		now.int_ctrl_reg = trpt->bup.ovals[1];
		now.int_save = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 1088: // STATE 424
		;
		((P0 *)_this)->_4_4_4_24_taskId = trpt->bup.oval;
		;
		goto R999;

	case 1089: // STATE 427
		;
		now.tcb[ Index(((P0 *)_this)->_4_4_4_24_taskId, 5) ].delayTicks = trpt->bup.ovals[1];
		now.tcb[ Index(((P0 *)_this)->_4_4_4_24_taskId, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1090: // STATE 432
		;
		((P0 *)_this)->_4_4_4_24_2_found = trpt->bup.ovals[4];
		((P0 *)_this)->_4_4_4_24_2_removePos = trpt->bup.ovals[3];
		((P0 *)_this)->_4_4_4_24_2_shiftIdx = trpt->bup.ovals[2];
		((P0 *)_this)->_4_4_4_24_2_found = trpt->bup.ovals[1];
		((P0 *)_this)->_4_4_4_24_2_removePos = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;
;
		;
		
	case 1092: // STATE 435
		;
		((P0 *)_this)->_4_4_4_24_2_found = trpt->bup.oval;
		;
		goto R999;

	case 1093: // STATE 437
		;
		((P0 *)_this)->_4_4_4_24_2_removePos = trpt->bup.oval;
		;
		goto R999;

	case 1094: // STATE 446
		;
		((P0 *)_this)->_4_4_4_24_2_shiftIdx = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->_4_4_4_24_2_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1095: // STATE 449
		;
		((P0 *)_this)->_4_4_4_24_2_shiftIdx = trpt->bup.ovals[1];
		now.sortLink.tasks[ Index(((P0 *)_this)->_4_4_4_24_2_shiftIdx, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1096: // STATE 456
		;
		now.sortLink.count = trpt->bup.ovals[2];
		now.sortLink.tasks[ Index((now.sortLink.count-1), 8) ] = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->_4_4_4_24_2_shiftIdx = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 1097: // STATE 456
		;
		now.sortLink.count = trpt->bup.ovals[1];
		now.sortLink.tasks[ Index((now.sortLink.count-1), 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1098: // STATE 470
		;
		((P0 *)_this)->_4_4_4_24_needResched = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_4_4_4_24_taskId, 5) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_4_4_4_24_taskId, 5) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_4_4_4_24_taskId, 5) ].prio, 4) ].tailIndex, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 1099: // STATE 470
		;
		((P0 *)_this)->_4_4_4_24_needResched = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1100: // STATE 470
		;
		((P0 *)_this)->_4_4_4_24_needResched = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1101: // STATE 472
		;
		((P0 *)_this)->_4_4_4_24_idx = trpt->bup.oval;
		;
		goto R999;

	case 1102: // STATE 480
		;
		((P0 *)_this)->_4_4_4_24_interrupted_task = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->_4_4_4_24_idx = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1103: // STATE 480
		;
		((P0 *)_this)->_4_4_4_24_interrupted_task = trpt->bup.oval;
		;
		goto R999;

	case 1104: // STATE 482
		;
		now.tcb[ Index(((P0 *)_this)->_4_4_4_24_interrupted_task, 5) ].state = trpt->bup.oval;
		;
		goto R999;

	case 1105: // STATE 485
		;
		now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_4_4_4_24_interrupted_task, 5) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_4_4_4_24_interrupted_task, 5) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_4_4_4_24_interrupted_task, 5) ].prio, 4) ].tailIndex, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 1107: // STATE 500
		;
		((P0 *)_this)->_4_4_4_24_5_found = trpt->bup.ovals[5];
		((P0 *)_this)->_4_4_4_24_5_top_task = trpt->bup.ovals[4];
		((P0 *)_this)->_4_4_4_24_5_prio = trpt->bup.ovals[3];
		((P0 *)_this)->_4_4_4_24_5_found = trpt->bup.ovals[2];
		((P0 *)_this)->_4_4_4_24_5_top_task = trpt->bup.ovals[1];
		((P0 *)_this)->_4_4_4_24_5_prio = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;
;
		;
		
	case 1109: // STATE 504
		;
		((P0 *)_this)->_4_4_4_24_5_found = trpt->bup.ovals[1];
		((P0 *)_this)->_4_4_4_24_5_top_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1110: // STATE 506
		;
		((P0 *)_this)->_4_4_4_24_5_prio = trpt->bup.oval;
		;
		goto R999;

	case 1111: // STATE 515
		;
		now.topPrio = trpt->bup.ovals[2];
		now.newTask = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->_4_4_4_24_5_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 1112: // STATE 515
		;
		now.topPrio = trpt->bup.ovals[1];
		now.newTask = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1113: // STATE 518
		;
		((P0 *)_this)->_4_4_4_24_6_deq_idx = trpt->bup.ovals[1];
		((P0 *)_this)->_4_4_4_24_6_deq_idx = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1114: // STATE 521
		;
		((P0 *)_this)->_4_4_4_24_6_deq_idx = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index(((P0 *)_this)->_4_4_4_24_6_deq_idx, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1115: // STATE 522
		;
	/* 0 */	((P0 *)_this)->_4_4_4_24_6_deq_idx = trpt->bup.oval;
		;
		;
		goto R999;

	case 1116: // STATE 536
		;
		now.EP = trpt->bup.ovals[3];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.topPrio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index((now.readyQueue[ Index(now.topPrio, 4) ].tailIndex-1), 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 1117: // STATE 536
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1118: // STATE 536
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1119: // STATE 537
		;
		now.int_ctrl_reg = trpt->bup.oval;
		;
		goto R999;

	case 1120: // STATE 540
		;
		now.int_ctrl_reg = trpt->bup.oval;
		;
		goto R999;

	case 1121: // STATE 552
		;
		((P0 *)_this)->_4_4_5_needResched = trpt->bup.ovals[5];
		((P0 *)_this)->_4_4_5_interrupted_task = trpt->bup.ovals[4];
		((P0 *)_this)->_4_4_5_needResched = trpt->bup.ovals[3];
		((P0 *)_this)->_4_4_5_taskId = trpt->bup.ovals[2];
		((P0 *)_this)->_4_4_5_idx = trpt->bup.ovals[1];
		((P0 *)_this)->_4_4_5_interrupted_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;

	case 1122: // STATE 557
		;
		((P0 *)_this)->_4_4_5_idx = trpt->bup.ovals[3];
		now.tickCount = trpt->bup.ovals[2];
		now.int_ctrl_reg = trpt->bup.ovals[1];
		now.int_save = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 1123: // STATE 559
		;
		((P0 *)_this)->_4_4_5_taskId = trpt->bup.oval;
		;
		goto R999;

	case 1124: // STATE 562
		;
		now.tcb[ Index(((P0 *)_this)->_4_4_5_taskId, 5) ].delayTicks = trpt->bup.ovals[1];
		now.tcb[ Index(((P0 *)_this)->_4_4_5_taskId, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1125: // STATE 567
		;
		((P0 *)_this)->_4_4_5_27_found = trpt->bup.ovals[4];
		((P0 *)_this)->_4_4_5_27_removePos = trpt->bup.ovals[3];
		((P0 *)_this)->_4_4_5_27_shiftIdx = trpt->bup.ovals[2];
		((P0 *)_this)->_4_4_5_27_found = trpt->bup.ovals[1];
		((P0 *)_this)->_4_4_5_27_removePos = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;
;
		;
		
	case 1127: // STATE 570
		;
		((P0 *)_this)->_4_4_5_27_found = trpt->bup.oval;
		;
		goto R999;

	case 1128: // STATE 572
		;
		((P0 *)_this)->_4_4_5_27_removePos = trpt->bup.oval;
		;
		goto R999;

	case 1129: // STATE 581
		;
		((P0 *)_this)->_4_4_5_27_shiftIdx = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->_4_4_5_27_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1130: // STATE 584
		;
		((P0 *)_this)->_4_4_5_27_shiftIdx = trpt->bup.ovals[1];
		now.sortLink.tasks[ Index(((P0 *)_this)->_4_4_5_27_shiftIdx, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1131: // STATE 591
		;
		now.sortLink.count = trpt->bup.ovals[2];
		now.sortLink.tasks[ Index((now.sortLink.count-1), 8) ] = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->_4_4_5_27_shiftIdx = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 1132: // STATE 591
		;
		now.sortLink.count = trpt->bup.ovals[1];
		now.sortLink.tasks[ Index((now.sortLink.count-1), 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1133: // STATE 605
		;
		((P0 *)_this)->_4_4_5_needResched = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_4_4_5_taskId, 5) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_4_4_5_taskId, 5) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_4_4_5_taskId, 5) ].prio, 4) ].tailIndex, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 1134: // STATE 605
		;
		((P0 *)_this)->_4_4_5_needResched = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1135: // STATE 605
		;
		((P0 *)_this)->_4_4_5_needResched = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1136: // STATE 607
		;
		((P0 *)_this)->_4_4_5_idx = trpt->bup.oval;
		;
		goto R999;

	case 1137: // STATE 615
		;
		((P0 *)_this)->_4_4_5_interrupted_task = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->_4_4_5_idx = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1138: // STATE 615
		;
		((P0 *)_this)->_4_4_5_interrupted_task = trpt->bup.oval;
		;
		goto R999;

	case 1139: // STATE 617
		;
		now.tcb[ Index(((P0 *)_this)->_4_4_5_interrupted_task, 5) ].state = trpt->bup.oval;
		;
		goto R999;

	case 1140: // STATE 620
		;
		now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_4_4_5_interrupted_task, 5) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_4_4_5_interrupted_task, 5) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_4_4_5_interrupted_task, 5) ].prio, 4) ].tailIndex, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 1142: // STATE 635
		;
		((P0 *)_this)->_4_4_5_30_found = trpt->bup.ovals[5];
		((P0 *)_this)->_4_4_5_30_top_task = trpt->bup.ovals[4];
		((P0 *)_this)->_4_4_5_30_prio = trpt->bup.ovals[3];
		((P0 *)_this)->_4_4_5_30_found = trpt->bup.ovals[2];
		((P0 *)_this)->_4_4_5_30_top_task = trpt->bup.ovals[1];
		((P0 *)_this)->_4_4_5_30_prio = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;
;
		;
		
	case 1144: // STATE 639
		;
		((P0 *)_this)->_4_4_5_30_found = trpt->bup.ovals[1];
		((P0 *)_this)->_4_4_5_30_top_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1145: // STATE 641
		;
		((P0 *)_this)->_4_4_5_30_prio = trpt->bup.oval;
		;
		goto R999;

	case 1146: // STATE 650
		;
		now.topPrio = trpt->bup.ovals[2];
		now.newTask = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->_4_4_5_30_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 1147: // STATE 650
		;
		now.topPrio = trpt->bup.ovals[1];
		now.newTask = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1148: // STATE 653
		;
		((P0 *)_this)->_4_4_5_31_deq_idx = trpt->bup.ovals[1];
		((P0 *)_this)->_4_4_5_31_deq_idx = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1149: // STATE 656
		;
		((P0 *)_this)->_4_4_5_31_deq_idx = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index(((P0 *)_this)->_4_4_5_31_deq_idx, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1150: // STATE 657
		;
	/* 0 */	((P0 *)_this)->_4_4_5_31_deq_idx = trpt->bup.oval;
		;
		;
		goto R999;

	case 1151: // STATE 671
		;
		now.EP = trpt->bup.ovals[3];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.topPrio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index((now.readyQueue[ Index(now.topPrio, 4) ].tailIndex-1), 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 1152: // STATE 671
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1153: // STATE 671
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1154: // STATE 672
		;
		now.int_ctrl_reg = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 1156: // STATE 677
		;
		((P0 *)_this)->_4_5_6_currentTask = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 1158: // STATE 685
		;
		now.tcb[ Index(((P0 *)_this)->_4_5_6_currentTask, 5) ].delayTicks = trpt->bup.ovals[5];
		now.tcb[ Index(((P0 *)_this)->_4_5_6_currentTask, 5) ].wakeupTime = trpt->bup.ovals[4];
		now.tcb[ Index(((P0 *)_this)->_4_5_6_currentTask, 5) ].state = trpt->bup.ovals[3];
		((P0 *)_this)->_4_5_6_currentTask = trpt->bup.ovals[2];
		now.int_ctrl_reg = trpt->bup.ovals[1];
		now.int_save = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;

	case 1159: // STATE 688
		;
		now.sortLink.count = trpt->bup.ovals[1];
		now.sortLink.tasks[ Index(now.sortLink.count, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 1161: // STATE 699
		;
		((P0 *)_this)->_4_5_6_35_needResched = trpt->bup.ovals[5];
		((P0 *)_this)->_4_5_6_35_interrupted_task = trpt->bup.ovals[4];
		((P0 *)_this)->_4_5_6_35_needResched = trpt->bup.ovals[3];
		((P0 *)_this)->_4_5_6_35_taskId = trpt->bup.ovals[2];
		((P0 *)_this)->_4_5_6_35_idx = trpt->bup.ovals[1];
		((P0 *)_this)->_4_5_6_35_interrupted_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;

	case 1162: // STATE 704
		;
		((P0 *)_this)->_4_5_6_35_idx = trpt->bup.ovals[3];
		now.tickCount = trpt->bup.ovals[2];
		now.int_ctrl_reg = trpt->bup.ovals[1];
		now.int_save = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 1163: // STATE 706
		;
		((P0 *)_this)->_4_5_6_35_taskId = trpt->bup.oval;
		;
		goto R999;

	case 1164: // STATE 709
		;
		now.tcb[ Index(((P0 *)_this)->_4_5_6_35_taskId, 5) ].delayTicks = trpt->bup.ovals[1];
		now.tcb[ Index(((P0 *)_this)->_4_5_6_35_taskId, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1165: // STATE 714
		;
		((P0 *)_this)->_4_5_6_35_9_found = trpt->bup.ovals[4];
		((P0 *)_this)->_4_5_6_35_9_removePos = trpt->bup.ovals[3];
		((P0 *)_this)->_4_5_6_35_9_shiftIdx = trpt->bup.ovals[2];
		((P0 *)_this)->_4_5_6_35_9_found = trpt->bup.ovals[1];
		((P0 *)_this)->_4_5_6_35_9_removePos = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;
;
		;
		
	case 1167: // STATE 717
		;
		((P0 *)_this)->_4_5_6_35_9_found = trpt->bup.oval;
		;
		goto R999;

	case 1168: // STATE 719
		;
		((P0 *)_this)->_4_5_6_35_9_removePos = trpt->bup.oval;
		;
		goto R999;

	case 1169: // STATE 728
		;
		((P0 *)_this)->_4_5_6_35_9_shiftIdx = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->_4_5_6_35_9_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1170: // STATE 731
		;
		((P0 *)_this)->_4_5_6_35_9_shiftIdx = trpt->bup.ovals[1];
		now.sortLink.tasks[ Index(((P0 *)_this)->_4_5_6_35_9_shiftIdx, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1171: // STATE 738
		;
		now.sortLink.count = trpt->bup.ovals[2];
		now.sortLink.tasks[ Index((now.sortLink.count-1), 8) ] = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->_4_5_6_35_9_shiftIdx = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 1172: // STATE 738
		;
		now.sortLink.count = trpt->bup.ovals[1];
		now.sortLink.tasks[ Index((now.sortLink.count-1), 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1173: // STATE 752
		;
		((P0 *)_this)->_4_5_6_35_needResched = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_4_5_6_35_taskId, 5) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_4_5_6_35_taskId, 5) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_4_5_6_35_taskId, 5) ].prio, 4) ].tailIndex, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 1174: // STATE 752
		;
		((P0 *)_this)->_4_5_6_35_needResched = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1175: // STATE 752
		;
		((P0 *)_this)->_4_5_6_35_needResched = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1176: // STATE 754
		;
		((P0 *)_this)->_4_5_6_35_idx = trpt->bup.oval;
		;
		goto R999;

	case 1177: // STATE 762
		;
		((P0 *)_this)->_4_5_6_35_interrupted_task = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->_4_5_6_35_idx = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1178: // STATE 762
		;
		((P0 *)_this)->_4_5_6_35_interrupted_task = trpt->bup.oval;
		;
		goto R999;

	case 1179: // STATE 764
		;
		now.tcb[ Index(((P0 *)_this)->_4_5_6_35_interrupted_task, 5) ].state = trpt->bup.oval;
		;
		goto R999;

	case 1180: // STATE 767
		;
		now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_4_5_6_35_interrupted_task, 5) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_4_5_6_35_interrupted_task, 5) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_4_5_6_35_interrupted_task, 5) ].prio, 4) ].tailIndex, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 1182: // STATE 782
		;
		((P0 *)_this)->_4_5_6_35_12_found = trpt->bup.ovals[5];
		((P0 *)_this)->_4_5_6_35_12_top_task = trpt->bup.ovals[4];
		((P0 *)_this)->_4_5_6_35_12_prio = trpt->bup.ovals[3];
		((P0 *)_this)->_4_5_6_35_12_found = trpt->bup.ovals[2];
		((P0 *)_this)->_4_5_6_35_12_top_task = trpt->bup.ovals[1];
		((P0 *)_this)->_4_5_6_35_12_prio = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;
;
		;
		
	case 1184: // STATE 786
		;
		((P0 *)_this)->_4_5_6_35_12_found = trpt->bup.ovals[1];
		((P0 *)_this)->_4_5_6_35_12_top_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1185: // STATE 788
		;
		((P0 *)_this)->_4_5_6_35_12_prio = trpt->bup.oval;
		;
		goto R999;

	case 1186: // STATE 797
		;
		now.topPrio = trpt->bup.ovals[2];
		now.newTask = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->_4_5_6_35_12_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 1187: // STATE 797
		;
		now.topPrio = trpt->bup.ovals[1];
		now.newTask = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1188: // STATE 800
		;
		((P0 *)_this)->_4_5_6_35_13_deq_idx = trpt->bup.ovals[1];
		((P0 *)_this)->_4_5_6_35_13_deq_idx = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1189: // STATE 803
		;
		((P0 *)_this)->_4_5_6_35_13_deq_idx = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index(((P0 *)_this)->_4_5_6_35_13_deq_idx, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1190: // STATE 804
		;
	/* 0 */	((P0 *)_this)->_4_5_6_35_13_deq_idx = trpt->bup.oval;
		;
		;
		goto R999;

	case 1191: // STATE 818
		;
		now.EP = trpt->bup.ovals[3];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.topPrio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index((now.readyQueue[ Index(now.topPrio, 4) ].tailIndex-1), 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 1192: // STATE 818
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1193: // STATE 818
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1194: // STATE 819
		;
		now.int_ctrl_reg = trpt->bup.oval;
		;
		goto R999;

	case 1195: // STATE 822
		;
		now.int_ctrl_reg = trpt->bup.oval;
		;
		goto R999;

	case 1196: // STATE 834
		;
		((P0 *)_this)->_4_5_7_needResched = trpt->bup.ovals[5];
		((P0 *)_this)->_4_5_7_interrupted_task = trpt->bup.ovals[4];
		((P0 *)_this)->_4_5_7_needResched = trpt->bup.ovals[3];
		((P0 *)_this)->_4_5_7_taskId = trpt->bup.ovals[2];
		((P0 *)_this)->_4_5_7_idx = trpt->bup.ovals[1];
		((P0 *)_this)->_4_5_7_interrupted_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;

	case 1197: // STATE 839
		;
		((P0 *)_this)->_4_5_7_idx = trpt->bup.ovals[3];
		now.tickCount = trpt->bup.ovals[2];
		now.int_ctrl_reg = trpt->bup.ovals[1];
		now.int_save = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 1198: // STATE 841
		;
		((P0 *)_this)->_4_5_7_taskId = trpt->bup.oval;
		;
		goto R999;

	case 1199: // STATE 844
		;
		now.tcb[ Index(((P0 *)_this)->_4_5_7_taskId, 5) ].delayTicks = trpt->bup.ovals[1];
		now.tcb[ Index(((P0 *)_this)->_4_5_7_taskId, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1200: // STATE 849
		;
		((P0 *)_this)->_4_5_7_38_found = trpt->bup.ovals[4];
		((P0 *)_this)->_4_5_7_38_removePos = trpt->bup.ovals[3];
		((P0 *)_this)->_4_5_7_38_shiftIdx = trpt->bup.ovals[2];
		((P0 *)_this)->_4_5_7_38_found = trpt->bup.ovals[1];
		((P0 *)_this)->_4_5_7_38_removePos = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;
;
		;
		
	case 1202: // STATE 852
		;
		((P0 *)_this)->_4_5_7_38_found = trpt->bup.oval;
		;
		goto R999;

	case 1203: // STATE 854
		;
		((P0 *)_this)->_4_5_7_38_removePos = trpt->bup.oval;
		;
		goto R999;

	case 1204: // STATE 863
		;
		((P0 *)_this)->_4_5_7_38_shiftIdx = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->_4_5_7_38_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1205: // STATE 866
		;
		((P0 *)_this)->_4_5_7_38_shiftIdx = trpt->bup.ovals[1];
		now.sortLink.tasks[ Index(((P0 *)_this)->_4_5_7_38_shiftIdx, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1206: // STATE 873
		;
		now.sortLink.count = trpt->bup.ovals[2];
		now.sortLink.tasks[ Index((now.sortLink.count-1), 8) ] = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->_4_5_7_38_shiftIdx = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 1207: // STATE 873
		;
		now.sortLink.count = trpt->bup.ovals[1];
		now.sortLink.tasks[ Index((now.sortLink.count-1), 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1208: // STATE 887
		;
		((P0 *)_this)->_4_5_7_needResched = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_4_5_7_taskId, 5) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_4_5_7_taskId, 5) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_4_5_7_taskId, 5) ].prio, 4) ].tailIndex, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 1209: // STATE 887
		;
		((P0 *)_this)->_4_5_7_needResched = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1210: // STATE 887
		;
		((P0 *)_this)->_4_5_7_needResched = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1211: // STATE 889
		;
		((P0 *)_this)->_4_5_7_idx = trpt->bup.oval;
		;
		goto R999;

	case 1212: // STATE 897
		;
		((P0 *)_this)->_4_5_7_interrupted_task = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->_4_5_7_idx = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1213: // STATE 897
		;
		((P0 *)_this)->_4_5_7_interrupted_task = trpt->bup.oval;
		;
		goto R999;

	case 1214: // STATE 899
		;
		now.tcb[ Index(((P0 *)_this)->_4_5_7_interrupted_task, 5) ].state = trpt->bup.oval;
		;
		goto R999;

	case 1215: // STATE 902
		;
		now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_4_5_7_interrupted_task, 5) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_4_5_7_interrupted_task, 5) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_4_5_7_interrupted_task, 5) ].prio, 4) ].tailIndex, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 1217: // STATE 917
		;
		((P0 *)_this)->_4_5_7_41_found = trpt->bup.ovals[5];
		((P0 *)_this)->_4_5_7_41_top_task = trpt->bup.ovals[4];
		((P0 *)_this)->_4_5_7_41_prio = trpt->bup.ovals[3];
		((P0 *)_this)->_4_5_7_41_found = trpt->bup.ovals[2];
		((P0 *)_this)->_4_5_7_41_top_task = trpt->bup.ovals[1];
		((P0 *)_this)->_4_5_7_41_prio = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;
;
		;
		
	case 1219: // STATE 921
		;
		((P0 *)_this)->_4_5_7_41_found = trpt->bup.ovals[1];
		((P0 *)_this)->_4_5_7_41_top_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1220: // STATE 923
		;
		((P0 *)_this)->_4_5_7_41_prio = trpt->bup.oval;
		;
		goto R999;

	case 1221: // STATE 932
		;
		now.topPrio = trpt->bup.ovals[2];
		now.newTask = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->_4_5_7_41_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 1222: // STATE 932
		;
		now.topPrio = trpt->bup.ovals[1];
		now.newTask = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1223: // STATE 935
		;
		((P0 *)_this)->_4_5_7_42_deq_idx = trpt->bup.ovals[1];
		((P0 *)_this)->_4_5_7_42_deq_idx = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1224: // STATE 938
		;
		((P0 *)_this)->_4_5_7_42_deq_idx = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index(((P0 *)_this)->_4_5_7_42_deq_idx, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1225: // STATE 939
		;
	/* 0 */	((P0 *)_this)->_4_5_7_42_deq_idx = trpt->bup.oval;
		;
		;
		goto R999;

	case 1226: // STATE 953
		;
		now.EP = trpt->bup.ovals[3];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.topPrio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index((now.readyQueue[ Index(now.topPrio, 4) ].tailIndex-1), 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 1227: // STATE 953
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1228: // STATE 953
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1229: // STATE 954
		;
		now.int_ctrl_reg = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 1232: // STATE 966
		;
		((P0 *)_this)->_4_6_8_needResched = trpt->bup.ovals[5];
		((P0 *)_this)->_4_6_8_interrupted_task = trpt->bup.ovals[4];
		((P0 *)_this)->_4_6_8_needResched = trpt->bup.ovals[3];
		((P0 *)_this)->_4_6_8_taskId = trpt->bup.ovals[2];
		((P0 *)_this)->_4_6_8_idx = trpt->bup.ovals[1];
		((P0 *)_this)->_4_6_8_interrupted_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;

	case 1233: // STATE 971
		;
		((P0 *)_this)->_4_6_8_idx = trpt->bup.ovals[3];
		now.tickCount = trpt->bup.ovals[2];
		now.int_ctrl_reg = trpt->bup.ovals[1];
		now.int_save = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 1234: // STATE 973
		;
		((P0 *)_this)->_4_6_8_taskId = trpt->bup.oval;
		;
		goto R999;

	case 1235: // STATE 976
		;
		now.tcb[ Index(((P0 *)_this)->_4_6_8_taskId, 5) ].delayTicks = trpt->bup.ovals[1];
		now.tcb[ Index(((P0 *)_this)->_4_6_8_taskId, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1236: // STATE 981
		;
		((P0 *)_this)->_4_6_8_45_found = trpt->bup.ovals[4];
		((P0 *)_this)->_4_6_8_45_removePos = trpt->bup.ovals[3];
		((P0 *)_this)->_4_6_8_45_shiftIdx = trpt->bup.ovals[2];
		((P0 *)_this)->_4_6_8_45_found = trpt->bup.ovals[1];
		((P0 *)_this)->_4_6_8_45_removePos = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;
;
		;
		
	case 1238: // STATE 984
		;
		((P0 *)_this)->_4_6_8_45_found = trpt->bup.oval;
		;
		goto R999;

	case 1239: // STATE 986
		;
		((P0 *)_this)->_4_6_8_45_removePos = trpt->bup.oval;
		;
		goto R999;

	case 1240: // STATE 995
		;
		((P0 *)_this)->_4_6_8_45_shiftIdx = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->_4_6_8_45_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1241: // STATE 998
		;
		((P0 *)_this)->_4_6_8_45_shiftIdx = trpt->bup.ovals[1];
		now.sortLink.tasks[ Index(((P0 *)_this)->_4_6_8_45_shiftIdx, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1242: // STATE 1005
		;
		now.sortLink.count = trpt->bup.ovals[2];
		now.sortLink.tasks[ Index((now.sortLink.count-1), 8) ] = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->_4_6_8_45_shiftIdx = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 1243: // STATE 1005
		;
		now.sortLink.count = trpt->bup.ovals[1];
		now.sortLink.tasks[ Index((now.sortLink.count-1), 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1244: // STATE 1019
		;
		((P0 *)_this)->_4_6_8_needResched = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_4_6_8_taskId, 5) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_4_6_8_taskId, 5) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_4_6_8_taskId, 5) ].prio, 4) ].tailIndex, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 1245: // STATE 1019
		;
		((P0 *)_this)->_4_6_8_needResched = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1246: // STATE 1019
		;
		((P0 *)_this)->_4_6_8_needResched = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1247: // STATE 1021
		;
		((P0 *)_this)->_4_6_8_idx = trpt->bup.oval;
		;
		goto R999;

	case 1248: // STATE 1029
		;
		((P0 *)_this)->_4_6_8_interrupted_task = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->_4_6_8_idx = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1249: // STATE 1029
		;
		((P0 *)_this)->_4_6_8_interrupted_task = trpt->bup.oval;
		;
		goto R999;

	case 1250: // STATE 1031
		;
		now.tcb[ Index(((P0 *)_this)->_4_6_8_interrupted_task, 5) ].state = trpt->bup.oval;
		;
		goto R999;

	case 1251: // STATE 1034
		;
		now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_4_6_8_interrupted_task, 5) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_4_6_8_interrupted_task, 5) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P0 *)_this)->_4_6_8_interrupted_task, 5) ].prio, 4) ].tailIndex, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 1253: // STATE 1049
		;
		((P0 *)_this)->_4_6_8_48_found = trpt->bup.ovals[5];
		((P0 *)_this)->_4_6_8_48_top_task = trpt->bup.ovals[4];
		((P0 *)_this)->_4_6_8_48_prio = trpt->bup.ovals[3];
		((P0 *)_this)->_4_6_8_48_found = trpt->bup.ovals[2];
		((P0 *)_this)->_4_6_8_48_top_task = trpt->bup.ovals[1];
		((P0 *)_this)->_4_6_8_48_prio = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;
;
		;
		
	case 1255: // STATE 1053
		;
		((P0 *)_this)->_4_6_8_48_found = trpt->bup.ovals[1];
		((P0 *)_this)->_4_6_8_48_top_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1256: // STATE 1055
		;
		((P0 *)_this)->_4_6_8_48_prio = trpt->bup.oval;
		;
		goto R999;

	case 1257: // STATE 1064
		;
		now.topPrio = trpt->bup.ovals[2];
		now.newTask = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->_4_6_8_48_found = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 1258: // STATE 1064
		;
		now.topPrio = trpt->bup.ovals[1];
		now.newTask = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1259: // STATE 1067
		;
		((P0 *)_this)->_4_6_8_49_deq_idx = trpt->bup.ovals[1];
		((P0 *)_this)->_4_6_8_49_deq_idx = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1260: // STATE 1070
		;
		((P0 *)_this)->_4_6_8_49_deq_idx = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index(((P0 *)_this)->_4_6_8_49_deq_idx, 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1261: // STATE 1071
		;
	/* 0 */	((P0 *)_this)->_4_6_8_49_deq_idx = trpt->bup.oval;
		;
		;
		goto R999;

	case 1262: // STATE 1085
		;
		now.EP = trpt->bup.ovals[3];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.topPrio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index((now.readyQueue[ Index(now.topPrio, 4) ].tailIndex-1), 8) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 1263: // STATE 1085
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1264: // STATE 1085
		;
		now.EP = trpt->bup.ovals[1];
		now.tcb[ Index(now.newTask, 5) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 1265: // STATE 1086
		;
		now.int_ctrl_reg = trpt->bup.oval;
		;
		goto R999;

	case 1266: // STATE 1093
		;
		p_restor(II);
		;
		;
		goto R999;
	}

