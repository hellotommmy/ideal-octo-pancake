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
		;
		;
		;
		;
		;
		;
		;
		;
		
	case 55: // STATE 156
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM exc_leads_to_user */
;
		;
		;
		;
		
	case 58: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM back_to_user */
;
		;
		;
		;
		
	case 61: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC :init: */

	case 62: // STATE 1
		;
		((P4 *)_this)->i = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 64: // STATE 3
		;
		((P4 *)_this)->_7_15_idx = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 66: // STATE 5
		;
		now.readyQueue[ Index(((P4 *)_this)->i, 4) ].tasks[ Index(((P4 *)_this)->_7_15_idx, 5) ] = trpt->bup.oval;
		;
		goto R999;

	case 67: // STATE 6
		;
		((P4 *)_this)->_7_15_idx = trpt->bup.oval;
		;
		goto R999;

	case 68: // STATE 12
		;
		now.readyQueue[ Index(((P4 *)_this)->i, 4) ].tailIndex = trpt->bup.oval;
		;
		goto R999;

	case 69: // STATE 14
		;
		((P4 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 70: // STATE 20
		;
		now.tcb[2].prio = trpt->bup.oval;
		;
		goto R999;

	case 71: // STATE 21
		;
		now.tcb[2].state = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 73: // STATE 23
		;
		now.readyQueue[2].tasks[ Index(now.readyQueue[2].tailIndex, 5) ] = trpt->bup.oval;
		;
		goto R999;

	case 74: // STATE 24
		;
		now.readyQueue[2].tailIndex = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 76: // STATE 30
		;
		now.tcb[ Index((2+1), 4) ].prio = trpt->bup.oval;
		;
		goto R999;

	case 77: // STATE 31
		;
		now.tcb[ Index((2+1), 4) ].state = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 79: // STATE 33
		;
		now.readyQueue[2].tasks[ Index(now.readyQueue[2].tailIndex, 5) ] = trpt->bup.oval;
		;
		goto R999;

	case 80: // STATE 34
		;
		now.readyQueue[2].tailIndex = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 82: // STATE 42
		;
		((P4 *)_this)->_7_18_found = trpt->bup.ovals[2];
		((P4 *)_this)->_7_18_top_task = trpt->bup.ovals[1];
		((P4 *)_this)->_7_18_prio = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		;
		;
		
	case 85: // STATE 45
		;
		((P4 *)_this)->_7_18_top_task = trpt->bup.oval;
		;
		goto R999;

	case 86: // STATE 46
		;
		((P4 *)_this)->_7_18_found = trpt->bup.oval;
		;
		goto R999;

	case 87: // STATE 48
		;
		((P4 *)_this)->_7_18_prio = trpt->bup.oval;
		;
		goto R999;

	case 88: // STATE 56
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 89: // STATE 57
		;
		now.topPrio = trpt->bup.oval;
		;
		goto R999;

	case 90: // STATE 59
		;
		((P4 *)_this)->_7_19_idx = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 92: // STATE 61
		;
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index(((P4 *)_this)->_7_19_idx, 5) ] = trpt->bup.oval;
		;
		goto R999;

	case 93: // STATE 62
		;
		((P4 *)_this)->_7_19_idx = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 95: // STATE 69
		;
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index((now.readyQueue[ Index(now.topPrio, 4) ].tailIndex-1), 5) ] = trpt->bup.oval;
		;
		goto R999;

	case 96: // STATE 70
		;
		now.readyQueue[ Index(now.topPrio, 4) ].tailIndex = trpt->bup.oval;
		;
		goto R999;

	case 97: // STATE 76
		;
		now.tcb[ Index(now.EP, 4) ].state = trpt->bup.oval;
		;
		goto R999;

	case 98: // STATE 77
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 99: // STATE 78
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 100: // STATE 80
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 101: // STATE 81
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 102: // STATE 82
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Process2 */
;
		
	case 103: // STATE 1
		goto R999;

	case 104: // STATE 5
		;
		now.pending_exp = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 106: // STATE 13
		;
		now.chain_tick_used = trpt->bup.oval;
		;
		goto R999;

	case 107: // STATE 21
		;
		now.EP = trpt->bup.ovals[1];
		now.EP_Stack = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 108: // STATE 25
		goto R999;
;
		
	case 109: // STATE 23
		goto R999;
;
		
	case 110: // STATE 27
		goto R999;

	case 111: // STATE 31
		;
		now.pending_exp = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 113: // STATE 39
		;
		now.chain_tick_used = trpt->bup.oval;
		;
		goto R999;

	case 114: // STATE 47
		;
		now.EP = trpt->bup.ovals[1];
		now.EP_Stack = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 115: // STATE 51
		goto R999;
;
		
	case 116: // STATE 49
		goto R999;

	case 117: // STATE 56
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Process1 */
;
		
	case 118: // STATE 1
		goto R999;

	case 119: // STATE 5
		;
		now.pending_exp = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 121: // STATE 13
		;
		now.chain_tick_used = trpt->bup.oval;
		;
		goto R999;

	case 122: // STATE 21
		;
		now.EP = trpt->bup.ovals[1];
		now.EP_Stack = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 123: // STATE 25
		goto R999;
;
		
	case 124: // STATE 23
		goto R999;
;
		
	case 125: // STATE 27
		goto R999;

	case 126: // STATE 31
		;
		now.pending_exp = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 128: // STATE 39
		;
		now.chain_tick_used = trpt->bup.oval;
		;
		goto R999;

	case 129: // STATE 47
		;
		now.EP = trpt->bup.ovals[1];
		now.EP_Stack = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 130: // STATE 51
		goto R999;
;
		
	case 131: // STATE 49
		goto R999;

	case 132: // STATE 56
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC SysTick_Handler */
;
		;
		;
		;
		
	case 135: // STATE 4
		;
		now.pending_exp = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 137: // STATE 10
		;
		now.pending_exp = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 139: // STATE 16
		;
		now.chain_tick_used = trpt->bup.ovals[1];
		now.pending_exp = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 140: // STATE 20
		goto R999;
;
		
	case 141: // STATE 18
		goto R999;
;
		;
		;
		;
		
	case 144: // STATE 28
		;
		((P1 *)_this)->tmp = trpt->bup.ovals[2];
		now.EP = trpt->bup.ovals[1];
		((P1 *)_this)->tmp = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 145: // STATE 33
		;
		now.EP_Stack = trpt->bup.ovals[1];
		now.EP = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 147: // STATE 42
		;
		now.chain_tick_used = trpt->bup.ovals[1];
		now.pending_exp = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 148: // STATE 46
		goto R999;
;
		
	case 149: // STATE 44
		goto R999;

	case 150: // STATE 51
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC PendSV_Handler */
;
		;
		;
		;
		
	case 153: // STATE 4
		;
		now.pending_exp = trpt->bup.oval;
		;
		goto R999;

	case 154: // STATE 9
		;
		now.tcb[ Index(now.EP_Stack, 4) ].state = trpt->bup.oval;
		;
		goto R999;

	case 155: // STATE 12
		;
		now.readyQueue[ Index(now.tcb[ Index(now.EP_Stack, 4) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(now.EP_Stack, 4) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(now.EP_Stack, 4) ].prio, 4) ].tailIndex, 5) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		;
		;
		
	case 158: // STATE 22
		;
		now.chain_tick_used = trpt->bup.ovals[1];
		now.pending_exp = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 159: // STATE 26
		goto R999;
;
		
	case 160: // STATE 24
		goto R999;
;
		;
		
	case 162: // STATE 31
		;
		((P0 *)_this)->_3_3_4_found = trpt->bup.ovals[2];
		((P0 *)_this)->_3_3_4_top_task = trpt->bup.ovals[1];
		((P0 *)_this)->_3_3_4_prio = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 164: // STATE 35
		;
		((P0 *)_this)->_3_3_4_found = trpt->bup.ovals[1];
		((P0 *)_this)->_3_3_4_top_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 165: // STATE 37
		;
		((P0 *)_this)->_3_3_4_prio = trpt->bup.oval;
		;
		goto R999;

	case 166: // STATE 46
		;
		now.topPrio = trpt->bup.ovals[1];
		((P0 *)_this)->tmp = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 168: // STATE 52
		;
		now.chain_tick_used = trpt->bup.ovals[1];
		now.pending_exp = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 169: // STATE 56
		goto R999;
;
		
	case 170: // STATE 54
		goto R999;
;
		;
		
	case 172: // STATE 59
		;
		((P0 *)_this)->_3_4_6_idx = trpt->bup.oval;
		;
		goto R999;

	case 173: // STATE 62
		;
		((P0 *)_this)->_3_4_6_idx = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index(((P0 *)_this)->_3_4_6_idx, 5) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 174: // STATE 70
		;
		now.readyQueue[ Index(now.topPrio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index((now.readyQueue[ Index(now.topPrio, 4) ].tailIndex-1), 5) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 176: // STATE 80
		;
		now.chain_tick_used = trpt->bup.ovals[1];
		now.pending_exp = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 177: // STATE 84
		goto R999;
;
		
	case 178: // STATE 82
		goto R999;

	case 179: // STATE 87
		;
		now.tcb[ Index(((P0 *)_this)->tmp, 4) ].state = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 181: // STATE 92
		;
		now.chain_tick_used = trpt->bup.ovals[1];
		now.pending_exp = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 182: // STATE 96
		goto R999;
;
		
	case 183: // STATE 94
		goto R999;
;
		;
		
	case 185: // STATE 100
		;
		now.EP_Stack = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 187: // STATE 106
		;
		now.chain_tick_used = trpt->bup.ovals[1];
		now.pending_exp = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 188: // STATE 110
		goto R999;
;
		
	case 189: // STATE 108
		goto R999;
;
		;
		;
		;
		
	case 192: // STATE 118
		;
		((P0 *)_this)->tmp = trpt->bup.ovals[2];
		now.EP = trpt->bup.ovals[1];
		((P0 *)_this)->tmp = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 193: // STATE 123
		;
		now.EP_Stack = trpt->bup.ovals[1];
		now.EP = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 195: // STATE 132
		;
		now.chain_tick_used = trpt->bup.ovals[1];
		now.pending_exp = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 196: // STATE 136
		goto R999;
;
		
	case 197: // STATE 134
		goto R999;

	case 198: // STATE 141
		;
		p_restor(II);
		;
		;
		goto R999;
	}

