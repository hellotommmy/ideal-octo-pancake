	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM delayed_not_in_ready_queue */
;
		
	case 3: // STATE 1
		goto R999;

	case 4: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM tick_monotonic */
;
		
	case 5: // STATE 1
		goto R999;

	case 6: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM delayed_become_ready */
;
		;
		;
		;
		
	case 9: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM smoke_P1_user_no_pending */
;
		
	case 10: // STATE 1
		goto R999;

	case 11: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM smoke_P2_user_no_pending */
;
		
	case 12: // STATE 1
		goto R999;

	case 13: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM p2_double_context_switch */
;
		
	case 14: // STATE 1
		goto R999;
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
		
	case 22: // STATE 23
		goto R999;
;
		;
		;
		
	case 24: // STATE 31
		goto R999;
;
		;
		;
		;
		;
		
	case 27: // STATE 41
		goto R999;
;
		;
		;
		;
		;
		;
		;
		
	case 31: // STATE 53
		goto R999;
;
		;
		;
		;
		;
		;
		;
		;
		;
		
	case 36: // STATE 67
		goto R999;
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
		
	case 42: // STATE 83
		goto R999;
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
		
	case 49: // STATE 101
		goto R999;
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
		
	case 57: // STATE 122
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM P2_switching_not_P1_witness_unfolded */
;
		
	case 58: // STATE 1
		goto R999;
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
		
	case 65: // STATE 21
		goto R999;
;
		;
		;
		
	case 67: // STATE 29
		goto R999;
;
		;
		;
		;
		;
		
	case 70: // STATE 39
		goto R999;
;
		;
		;
		;
		;
		;
		;
		
	case 74: // STATE 51
		goto R999;
;
		;
		;
		;
		;
		;
		;
		;
		;
		
	case 79: // STATE 65
		goto R999;
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
		
	case 85: // STATE 81
		goto R999;
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
		
	case 92: // STATE 100
		;
		p_restor(II);
		;
		;
		goto R999;

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
		
	case 145: // STATE 156
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
		
	case 169: // STATE 75
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
		
	case 193: // STATE 75
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
		
	case 196: // STATE 13
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
		
	case 199: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC :init: */

	case 200: // STATE 1
		;
		((P4 *)_this)->i = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 202: // STATE 3
		;
		((P4 *)_this)->_8_20_idx = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 204: // STATE 5
		;
		now.readyQueue[ Index(((P4 *)_this)->i, 4) ].tasks[ Index(((P4 *)_this)->_8_20_idx, 5) ] = trpt->bup.oval;
		;
		goto R999;

	case 205: // STATE 6
		;
		((P4 *)_this)->_8_20_idx = trpt->bup.oval;
		;
		goto R999;

	case 206: // STATE 12
		;
		now.readyQueue[ Index(((P4 *)_this)->i, 4) ].tailIndex = trpt->bup.oval;
		;
		goto R999;

	case 207: // STATE 14
		;
		((P4 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 208: // STATE 20
		;
		now.tcb[2].prio = trpt->bup.oval;
		;
		goto R999;

	case 209: // STATE 21
		;
		now.tcb[2].state = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 211: // STATE 23
		;
		now.readyQueue[2].tasks[ Index(now.readyQueue[2].tailIndex, 5) ] = trpt->bup.oval;
		;
		goto R999;

	case 212: // STATE 24
		;
		now.readyQueue[2].tailIndex = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 214: // STATE 30
		;
		now.tcb[ Index((2+1), 4) ].prio = trpt->bup.oval;
		;
		goto R999;

	case 215: // STATE 31
		;
		now.tcb[ Index((2+1), 4) ].state = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 217: // STATE 33
		;
		now.readyQueue[2].tasks[ Index(now.readyQueue[2].tailIndex, 5) ] = trpt->bup.oval;
		;
		goto R999;

	case 218: // STATE 34
		;
		now.readyQueue[2].tailIndex = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 220: // STATE 40
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 221: // STATE 41
		;
		now.topPrio = trpt->bup.oval;
		;
		goto R999;

	case 222: // STATE 42
		;
		((P4 *)_this)->_8_23_idx = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 224: // STATE 44
		;
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index(((P4 *)_this)->_8_23_idx, 5) ] = trpt->bup.oval;
		;
		goto R999;

	case 225: // STATE 45
		;
		((P4 *)_this)->_8_23_idx = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 227: // STATE 52
		;
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index((now.readyQueue[ Index(now.topPrio, 4) ].tailIndex-1), 5) ] = trpt->bup.oval;
		;
		goto R999;

	case 228: // STATE 53
		;
		now.readyQueue[ Index(now.topPrio, 4) ].tailIndex = trpt->bup.oval;
		;
		goto R999;

	case 229: // STATE 59
		;
		now.tcb[ Index(now.EP, 4) ].state = trpt->bup.oval;
		;
		goto R999;

	case 230: // STATE 60
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 231: // STATE 61
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 232: // STATE 63
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 233: // STATE 64
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 234: // STATE 65
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Process2 */
;
		
	case 235: // STATE 1
		goto R999;

	case 236: // STATE 5
		;
		now.pending_exp = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 238: // STATE 12
		;
		now.chain_tick_used = trpt->bup.oval;
		;
		goto R999;

	case 239: // STATE 20
		;
		now.EP = trpt->bup.ovals[1];
		now.EP_Stack = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 240: // STATE 24
		goto R999;
;
		
	case 241: // STATE 22
		goto R999;
;
		;
		
	case 243: // STATE 27
		;
		((P3 *)_this)->_7_16_29_intSave = trpt->bup.oval;
		;
		goto R999;

	case 244: // STATE 31
		;
		((P3 *)_this)->_7_16_29_needSched = trpt->bup.ovals[1];
		((P3 *)_this)->_7_16_29_intSave = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 246: // STATE 34
		;
		((P3 *)_this)->_7_16_29_needSched = trpt->bup.oval;
		;
		goto R999;

	case 247: // STATE 37
		;
		((P3 *)_this)->_7_16_29_24_6_prioLevel = trpt->bup.ovals[2];
		((P3 *)_this)->_7_16_29_24_6_found = trpt->bup.ovals[1];
		((P3 *)_this)->_7_16_29_24_6_idx = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 249: // STATE 40
		;
		((P3 *)_this)->_7_16_29_24_6_found = trpt->bup.oval;
		;
		goto R999;

	case 250: // STATE 42
		;
		((P3 *)_this)->_7_16_29_24_6_idx = trpt->bup.oval;
		;
		goto R999;
;
		
	case 251: // STATE 50
		goto R999;

	case 252: // STATE 53
		;
		((P3 *)_this)->_7_16_29_24_6_idx = trpt->bup.ovals[1];
		now.readyQueue[ Index(((P3 *)_this)->_7_16_29_24_6_prioLevel, 4) ].tasks[ Index(((P3 *)_this)->_7_16_29_24_6_idx, 5) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 253: // STATE 67
		;
		now.tcb[2].state = trpt->bup.ovals[2];
		now.readyQueue[ Index(((P3 *)_this)->_7_16_29_24_6_prioLevel, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(((P3 *)_this)->_7_16_29_24_6_prioLevel, 4) ].tasks[ Index((now.readyQueue[ Index(((P3 *)_this)->_7_16_29_24_6_prioLevel, 4) ].tailIndex-1), 5) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 254: // STATE 67
		;
		now.tcb[2].state = trpt->bup.oval;
		;
		goto R999;

	case 255: // STATE 67
		;
		now.tcb[2].state = trpt->bup.oval;
		;
		goto R999;

	case 256: // STATE 73
		;
		now.g_taskSortLinkTail = trpt->bup.ovals[3];
		now.tcb[2].pendList = trpt->bup.ovals[2];
		now.g_taskSortLink[ Index(now.g_taskSortLinkTail, 3) ].responseTime = trpt->bup.ovals[1];
		now.g_taskSortLink[ Index(now.g_taskSortLinkTail, 3) ].taskId = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 257: // STATE 78
		;
		now.tcb[2].state = trpt->bup.ovals[1];
		((P3 *)_this)->_7_16_29_needSched = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 258: // STATE 81
		;
	/* 0 */	((P3 *)_this)->_7_16_29_needSched = trpt->bup.oval;
		;
		;
		goto R999;

	case 259: // STATE 82
		;
		((P3 *)_this)->_7_16_29_intSave = trpt->bup.oval;
		;
		goto R999;

	case 260: // STATE 85
		;
		now.pending_exp = trpt->bup.oval;
		;
		goto R999;

	case 261: // STATE 95
		;
		now.pending_exp = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 263: // STATE 102
		;
		now.chain_tick_used = trpt->bup.oval;
		;
		goto R999;

	case 264: // STATE 110
		;
		now.EP = trpt->bup.ovals[1];
		now.EP_Stack = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 265: // STATE 114
		goto R999;
;
		
	case 266: // STATE 112
		goto R999;
;
		;
		
	case 268: // STATE 119
		;
		((P3 *)_this)->_7_17_32_needSched = trpt->bup.ovals[2];
		((P3 *)_this)->_7_17_32_tempStatus = trpt->bup.ovals[1];
		((P3 *)_this)->_7_17_32_intSave = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 269: // STATE 122
		;
		((P3 *)_this)->_7_17_32_tempStatus = trpt->bup.ovals[1];
		((P3 *)_this)->_7_17_32_intSave = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 270: // STATE 126
		;
		now.tcb[2].state = trpt->bup.ovals[1];
		((P3 *)_this)->_7_17_32_needSched = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 271: // STATE 127
		;
		((P3 *)_this)->_7_17_32_28_9_idx = trpt->bup.oval;
		;
		goto R999;

	case 272: // STATE 131
		;
		((P3 *)_this)->_7_17_32_28_9_idx = trpt->bup.ovals[2];
		now.g_taskSortLink[ Index(((P3 *)_this)->_7_17_32_28_9_idx, 3) ].responseTime = trpt->bup.ovals[1];
		now.g_taskSortLink[ Index(((P3 *)_this)->_7_17_32_28_9_idx, 3) ].taskId = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 273: // STATE 139
		;
		now.g_taskSortLinkTail = trpt->bup.ovals[2];
		now.g_taskSortLink[ Index((now.g_taskSortLinkTail-1), 3) ].responseTime = trpt->bup.ovals[1];
		now.g_taskSortLink[ Index((now.g_taskSortLinkTail-1), 3) ].taskId = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 274: // STATE 143
		;
		now.readyQueue[ Index(now.tcb[2].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[2].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[2].prio, 4) ].tailIndex, 5) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 276: // STATE 150
		;
	/* 0 */	((P3 *)_this)->_7_17_32_needSched = trpt->bup.oval;
		;
		;
		goto R999;

	case 277: // STATE 151
		;
		((P3 *)_this)->_7_17_32_intSave = trpt->bup.oval;
		;
		goto R999;

	case 278: // STATE 154
		;
		now.pending_exp = trpt->bup.oval;
		;
		goto R999;

	case 279: // STATE 164
		;
		now.pending_exp = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 281: // STATE 171
		;
		now.chain_tick_used = trpt->bup.oval;
		;
		goto R999;

	case 282: // STATE 179
		;
		now.EP = trpt->bup.ovals[1];
		now.EP_Stack = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 283: // STATE 183
		goto R999;
;
		
	case 284: // STATE 181
		goto R999;
;
		
	case 285: // STATE 185
		goto R999;

	case 286: // STATE 189
		;
		now.pending_exp = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 288: // STATE 196
		;
		now.chain_tick_used = trpt->bup.oval;
		;
		goto R999;

	case 289: // STATE 204
		;
		now.EP = trpt->bup.ovals[1];
		now.EP_Stack = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 290: // STATE 208
		goto R999;
;
		
	case 291: // STATE 206
		goto R999;
;
		;
		
	case 293: // STATE 213
		;
		((P3 *)_this)->_7_19_37_currentTask = trpt->bup.ovals[2];
		((P3 *)_this)->_7_19_37_needSched = trpt->bup.ovals[1];
		((P3 *)_this)->_7_19_37_intSave = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 294: // STATE 214
		;
		((P3 *)_this)->_7_19_37_intSave = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 296: // STATE 218
		;
		now.pending_exp = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 298: // STATE 224
		;
		((P3 *)_this)->_7_19_37_needSched = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 300: // STATE 228
		;
		((P3 *)_this)->_7_19_37_33_13_prioLevel = trpt->bup.ovals[2];
		((P3 *)_this)->_7_19_37_33_13_found = trpt->bup.ovals[1];
		((P3 *)_this)->_7_19_37_33_13_idx = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 302: // STATE 231
		;
		((P3 *)_this)->_7_19_37_33_13_found = trpt->bup.oval;
		;
		goto R999;

	case 303: // STATE 233
		;
		((P3 *)_this)->_7_19_37_33_13_idx = trpt->bup.oval;
		;
		goto R999;
;
		
	case 304: // STATE 241
		goto R999;

	case 305: // STATE 244
		;
		((P3 *)_this)->_7_19_37_33_13_idx = trpt->bup.ovals[1];
		now.readyQueue[ Index(((P3 *)_this)->_7_19_37_33_13_prioLevel, 4) ].tasks[ Index(((P3 *)_this)->_7_19_37_33_13_idx, 5) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 306: // STATE 267
		;
		now.g_taskSortLinkTail = trpt->bup.ovals[6];
		now.tcb[ Index(((P3 *)_this)->_7_19_37_currentTask, 4) ].pendList = trpt->bup.ovals[5];
		now.g_taskSortLink[ Index(now.g_taskSortLinkTail, 3) ].responseTime = trpt->bup.ovals[4];
		now.g_taskSortLink[ Index(now.g_taskSortLinkTail, 3) ].taskId = trpt->bup.ovals[3];
		now.tcb[ Index(((P3 *)_this)->_7_19_37_currentTask, 4) ].state = trpt->bup.ovals[2];
		now.readyQueue[ Index(((P3 *)_this)->_7_19_37_33_13_prioLevel, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(((P3 *)_this)->_7_19_37_33_13_prioLevel, 4) ].tasks[ Index((now.readyQueue[ Index(((P3 *)_this)->_7_19_37_33_13_prioLevel, 4) ].tailIndex-1), 5) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 7);
		goto R999;

	case 307: // STATE 267
		;
		now.g_taskSortLinkTail = trpt->bup.ovals[4];
		now.tcb[ Index(((P3 *)_this)->_7_19_37_currentTask, 4) ].pendList = trpt->bup.ovals[3];
		now.g_taskSortLink[ Index(now.g_taskSortLinkTail, 3) ].responseTime = trpt->bup.ovals[2];
		now.g_taskSortLink[ Index(now.g_taskSortLinkTail, 3) ].taskId = trpt->bup.ovals[1];
		now.tcb[ Index(((P3 *)_this)->_7_19_37_currentTask, 4) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;

	case 308: // STATE 267
		;
		now.g_taskSortLinkTail = trpt->bup.ovals[4];
		now.tcb[ Index(((P3 *)_this)->_7_19_37_currentTask, 4) ].pendList = trpt->bup.ovals[3];
		now.g_taskSortLink[ Index(now.g_taskSortLinkTail, 3) ].responseTime = trpt->bup.ovals[2];
		now.g_taskSortLink[ Index(now.g_taskSortLinkTail, 3) ].taskId = trpt->bup.ovals[1];
		now.tcb[ Index(((P3 *)_this)->_7_19_37_currentTask, 4) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;

	case 309: // STATE 267
		;
		now.g_taskSortLinkTail = trpt->bup.ovals[4];
		now.tcb[ Index(((P3 *)_this)->_7_19_37_currentTask, 4) ].pendList = trpt->bup.ovals[3];
		now.g_taskSortLink[ Index(now.g_taskSortLinkTail, 3) ].responseTime = trpt->bup.ovals[2];
		now.g_taskSortLink[ Index(now.g_taskSortLinkTail, 3) ].taskId = trpt->bup.ovals[1];
		now.tcb[ Index(((P3 *)_this)->_7_19_37_currentTask, 4) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;

	case 310: // STATE 269
		;
	/* 0 */	((P3 *)_this)->_7_19_37_needSched = trpt->bup.oval;
		;
		;
		goto R999;

	case 311: // STATE 270
		;
		((P3 *)_this)->_7_19_37_intSave = trpt->bup.oval;
		;
		goto R999;

	case 312: // STATE 273
		;
		now.pending_exp = trpt->bup.oval;
		;
		goto R999;

	case 313: // STATE 287
		;
		now.pending_exp = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 315: // STATE 294
		;
		now.chain_tick_used = trpt->bup.oval;
		;
		goto R999;

	case 316: // STATE 302
		;
		now.EP = trpt->bup.ovals[1];
		now.EP_Stack = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 317: // STATE 306
		goto R999;
;
		
	case 318: // STATE 304
		goto R999;

	case 319: // STATE 311
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Process1 */
;
		
	case 320: // STATE 1
		goto R999;

	case 321: // STATE 5
		;
		now.pending_exp = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 323: // STATE 12
		;
		now.chain_tick_used = trpt->bup.oval;
		;
		goto R999;

	case 324: // STATE 20
		;
		now.EP = trpt->bup.ovals[1];
		now.EP_Stack = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 325: // STATE 24
		goto R999;
;
		
	case 326: // STATE 22
		goto R999;
;
		
	case 327: // STATE 26
		goto R999;

	case 328: // STATE 30
		;
		now.pending_exp = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 330: // STATE 37
		;
		now.chain_tick_used = trpt->bup.oval;
		;
		goto R999;

	case 331: // STATE 45
		;
		now.EP = trpt->bup.ovals[1];
		now.EP_Stack = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 332: // STATE 49
		goto R999;
;
		
	case 333: // STATE 47
		goto R999;
;
		;
		
	case 335: // STATE 54
		;
		((P2 *)_this)->_6_14_24_currentTask = trpt->bup.ovals[2];
		((P2 *)_this)->_6_14_24_needSched = trpt->bup.ovals[1];
		((P2 *)_this)->_6_14_24_intSave = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 336: // STATE 55
		;
		((P2 *)_this)->_6_14_24_intSave = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 338: // STATE 59
		;
		now.pending_exp = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 340: // STATE 65
		;
		((P2 *)_this)->_6_14_24_needSched = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 342: // STATE 69
		;
		((P2 *)_this)->_6_14_24_20_4_prioLevel = trpt->bup.ovals[2];
		((P2 *)_this)->_6_14_24_20_4_found = trpt->bup.ovals[1];
		((P2 *)_this)->_6_14_24_20_4_idx = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 344: // STATE 72
		;
		((P2 *)_this)->_6_14_24_20_4_found = trpt->bup.oval;
		;
		goto R999;

	case 345: // STATE 74
		;
		((P2 *)_this)->_6_14_24_20_4_idx = trpt->bup.oval;
		;
		goto R999;
;
		
	case 346: // STATE 82
		goto R999;

	case 347: // STATE 85
		;
		((P2 *)_this)->_6_14_24_20_4_idx = trpt->bup.ovals[1];
		now.readyQueue[ Index(((P2 *)_this)->_6_14_24_20_4_prioLevel, 4) ].tasks[ Index(((P2 *)_this)->_6_14_24_20_4_idx, 5) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 348: // STATE 108
		;
		now.g_taskSortLinkTail = trpt->bup.ovals[6];
		now.tcb[ Index(((P2 *)_this)->_6_14_24_currentTask, 4) ].pendList = trpt->bup.ovals[5];
		now.g_taskSortLink[ Index(now.g_taskSortLinkTail, 3) ].responseTime = trpt->bup.ovals[4];
		now.g_taskSortLink[ Index(now.g_taskSortLinkTail, 3) ].taskId = trpt->bup.ovals[3];
		now.tcb[ Index(((P2 *)_this)->_6_14_24_currentTask, 4) ].state = trpt->bup.ovals[2];
		now.readyQueue[ Index(((P2 *)_this)->_6_14_24_20_4_prioLevel, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(((P2 *)_this)->_6_14_24_20_4_prioLevel, 4) ].tasks[ Index((now.readyQueue[ Index(((P2 *)_this)->_6_14_24_20_4_prioLevel, 4) ].tailIndex-1), 5) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 7);
		goto R999;

	case 349: // STATE 108
		;
		now.g_taskSortLinkTail = trpt->bup.ovals[4];
		now.tcb[ Index(((P2 *)_this)->_6_14_24_currentTask, 4) ].pendList = trpt->bup.ovals[3];
		now.g_taskSortLink[ Index(now.g_taskSortLinkTail, 3) ].responseTime = trpt->bup.ovals[2];
		now.g_taskSortLink[ Index(now.g_taskSortLinkTail, 3) ].taskId = trpt->bup.ovals[1];
		now.tcb[ Index(((P2 *)_this)->_6_14_24_currentTask, 4) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;

	case 350: // STATE 108
		;
		now.g_taskSortLinkTail = trpt->bup.ovals[4];
		now.tcb[ Index(((P2 *)_this)->_6_14_24_currentTask, 4) ].pendList = trpt->bup.ovals[3];
		now.g_taskSortLink[ Index(now.g_taskSortLinkTail, 3) ].responseTime = trpt->bup.ovals[2];
		now.g_taskSortLink[ Index(now.g_taskSortLinkTail, 3) ].taskId = trpt->bup.ovals[1];
		now.tcb[ Index(((P2 *)_this)->_6_14_24_currentTask, 4) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;

	case 351: // STATE 108
		;
		now.g_taskSortLinkTail = trpt->bup.ovals[4];
		now.tcb[ Index(((P2 *)_this)->_6_14_24_currentTask, 4) ].pendList = trpt->bup.ovals[3];
		now.g_taskSortLink[ Index(now.g_taskSortLinkTail, 3) ].responseTime = trpt->bup.ovals[2];
		now.g_taskSortLink[ Index(now.g_taskSortLinkTail, 3) ].taskId = trpt->bup.ovals[1];
		now.tcb[ Index(((P2 *)_this)->_6_14_24_currentTask, 4) ].state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;

	case 352: // STATE 110
		;
	/* 0 */	((P2 *)_this)->_6_14_24_needSched = trpt->bup.oval;
		;
		;
		goto R999;

	case 353: // STATE 111
		;
		((P2 *)_this)->_6_14_24_intSave = trpt->bup.oval;
		;
		goto R999;

	case 354: // STATE 114
		;
		now.pending_exp = trpt->bup.oval;
		;
		goto R999;

	case 355: // STATE 128
		;
		now.pending_exp = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 357: // STATE 135
		;
		now.chain_tick_used = trpt->bup.oval;
		;
		goto R999;

	case 358: // STATE 143
		;
		now.EP = trpt->bup.ovals[1];
		now.EP_Stack = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 359: // STATE 147
		goto R999;
;
		
	case 360: // STATE 145
		goto R999;

	case 361: // STATE 152
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
		
	case 364: // STATE 4
		;
		now.pending_exp = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 366: // STATE 12
		;
		now.g_tickCount = trpt->bup.ovals[3];
		((P1 *)_this)->_5_9_14_needSched = trpt->bup.ovals[2];
		((P1 *)_this)->_5_9_14_taskId = trpt->bup.ovals[1];
		((P1 *)_this)->_5_9_14_idx = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 367: // STATE 14
		;
		((P1 *)_this)->_5_9_14_taskId = trpt->bup.oval;
		;
		goto R999;

	case 368: // STATE 16
		;
		now.g_taskSortLink[ Index(((P1 *)_this)->_5_9_14_idx, 3) ].responseTime = trpt->bup.oval;
		;
		goto R999;

	case 369: // STATE 18
		;
		now.tcb[ Index(((P1 *)_this)->_5_9_14_taskId, 4) ].state = trpt->bup.oval;
		;
		goto R999;

	case 370: // STATE 27
		;
		((P1 *)_this)->_5_9_14_shiftIdx = trpt->bup.ovals[2];
		now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_5_9_14_taskId, 4) ].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_5_9_14_taskId, 4) ].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[ Index(((P1 *)_this)->_5_9_14_taskId, 4) ].prio, 4) ].tailIndex, 5) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 371: // STATE 27
		;
		((P1 *)_this)->_5_9_14_shiftIdx = trpt->bup.oval;
		;
		goto R999;

	case 372: // STATE 27
		;
		((P1 *)_this)->_5_9_14_shiftIdx = trpt->bup.oval;
		;
		goto R999;

	case 373: // STATE 30
		;
		now.g_taskSortLink[ Index(((P1 *)_this)->_5_9_14_shiftIdx, 3) ].responseTime = trpt->bup.ovals[1];
		now.g_taskSortLink[ Index(((P1 *)_this)->_5_9_14_shiftIdx, 3) ].taskId = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 374: // STATE 37
		;
		((P1 *)_this)->_5_9_14_shiftIdx = trpt->bup.ovals[1];
		now.tcb[ Index(now.g_taskSortLink[ Index(((P1 *)_this)->_5_9_14_shiftIdx, 3) ].taskId, 4) ].pendList = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 375: // STATE 37
		;
		((P1 *)_this)->_5_9_14_shiftIdx = trpt->bup.oval;
		;
		goto R999;

	case 376: // STATE 37
		;
		((P1 *)_this)->_5_9_14_shiftIdx = trpt->bup.oval;
		;
		goto R999;

	case 377: // STATE 46
		;
		((P1 *)_this)->_5_9_14_needSched = trpt->bup.ovals[3];
		now.g_taskSortLinkTail = trpt->bup.ovals[2];
		now.g_taskSortLink[ Index((now.g_taskSortLinkTail-1), 3) ].responseTime = trpt->bup.ovals[1];
		now.g_taskSortLink[ Index((now.g_taskSortLinkTail-1), 3) ].taskId = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 378: // STATE 48
		;
		((P1 *)_this)->_5_9_14_idx = trpt->bup.oval;
		;
		goto R999;

	case 379: // STATE 52
		;
		((P1 *)_this)->_5_9_14_idx = trpt->bup.oval;
		;
		goto R999;

	case 380: // STATE 60
		;
	/* 0 */	((P1 *)_this)->_5_9_14_needSched = trpt->bup.oval;
		;
		;
		goto R999;

	case 381: // STATE 62
		;
		now.pending_exp = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 383: // STATE 73
		;
		now.chain_tick_used = trpt->bup.ovals[1];
		now.pending_exp = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 384: // STATE 76
		goto R999;
;
		
	case 385: // STATE 74
		goto R999;
;
		;
		
	case 387: // STATE 81
		;
		now.pending_exp = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 389: // STATE 87
		;
		now.chain_tick_used = trpt->bup.ovals[1];
		now.pending_exp = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 390: // STATE 90
		goto R999;
;
		
	case 391: // STATE 88
		goto R999;
;
		;
		;
		;
		
	case 394: // STATE 99
		;
		((P1 *)_this)->tmp = trpt->bup.ovals[2];
		now.EP = trpt->bup.ovals[1];
		((P1 *)_this)->tmp = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 395: // STATE 104
		;
		now.EP_Stack = trpt->bup.ovals[1];
		now.EP = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 397: // STATE 113
		;
		now.chain_tick_used = trpt->bup.ovals[1];
		now.pending_exp = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 398: // STATE 116
		goto R999;
;
		
	case 399: // STATE 114
		goto R999;

	case 400: // STATE 122
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
		
	case 403: // STATE 4
		;
		now.pending_exp = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 405: // STATE 10
		;
		now.tcb[ Index(now.EP_Stack, 4) ].state = trpt->bup.oval;
		;
		goto R999;

	case 406: // STATE 13
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
		
	case 409: // STATE 27
		;
		now.chain_tick_used = trpt->bup.ovals[1];
		now.pending_exp = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 410: // STATE 30
		goto R999;
;
		
	case 411: // STATE 28
		goto R999;
;
		;
		
	case 413: // STATE 36
		;
		((P0 *)_this)->_4_3_4_found = trpt->bup.ovals[2];
		((P0 *)_this)->_4_3_4_top_task = trpt->bup.ovals[1];
		((P0 *)_this)->_4_3_4_prio = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 415: // STATE 40
		;
		((P0 *)_this)->_4_3_4_found = trpt->bup.ovals[1];
		((P0 *)_this)->_4_3_4_top_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 416: // STATE 42
		;
		((P0 *)_this)->_4_3_4_prio = trpt->bup.oval;
		;
		goto R999;

	case 417: // STATE 51
		;
		now.topPrio = trpt->bup.ovals[1];
		((P0 *)_this)->tmp = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 419: // STATE 57
		;
		now.chain_tick_used = trpt->bup.ovals[1];
		now.pending_exp = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 420: // STATE 60
		goto R999;
;
		
	case 421: // STATE 58
		goto R999;
;
		;
		
	case 423: // STATE 64
		;
		((P0 *)_this)->_4_4_6_idx = trpt->bup.oval;
		;
		goto R999;

	case 424: // STATE 67
		;
		((P0 *)_this)->_4_4_6_idx = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index(((P0 *)_this)->_4_4_6_idx, 5) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 425: // STATE 75
		;
		now.readyQueue[ Index(now.topPrio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index((now.readyQueue[ Index(now.topPrio, 4) ].tailIndex-1), 5) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 427: // STATE 85
		;
		now.chain_tick_used = trpt->bup.ovals[1];
		now.pending_exp = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 428: // STATE 88
		goto R999;
;
		
	case 429: // STATE 86
		goto R999;

	case 430: // STATE 92
		;
		now.tcb[ Index(((P0 *)_this)->tmp, 4) ].state = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 432: // STATE 97
		;
		now.chain_tick_used = trpt->bup.ovals[1];
		now.pending_exp = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 433: // STATE 100
		goto R999;
;
		
	case 434: // STATE 98
		goto R999;
;
		;
		
	case 436: // STATE 105
		;
		now.EP_Stack = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 438: // STATE 111
		;
		now.chain_tick_used = trpt->bup.ovals[1];
		now.pending_exp = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 439: // STATE 114
		goto R999;
;
		
	case 440: // STATE 112
		goto R999;
;
		;
		;
		;
		
	case 443: // STATE 123
		;
		((P0 *)_this)->tmp = trpt->bup.ovals[2];
		now.EP = trpt->bup.ovals[1];
		((P0 *)_this)->tmp = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 444: // STATE 128
		;
		now.EP_Stack = trpt->bup.ovals[1];
		now.EP = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 446: // STATE 137
		;
		now.chain_tick_used = trpt->bup.ovals[1];
		now.pending_exp = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 447: // STATE 140
		goto R999;
;
		
	case 448: // STATE 138
		goto R999;

	case 449: // STATE 146
		;
		p_restor(II);
		;
		;
		goto R999;
	}

