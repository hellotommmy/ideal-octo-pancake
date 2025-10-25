	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM smoke_P1_user_no_pending */
;
		
	case 3: // STATE 1
		goto R999;

	case 4: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM smoke_P2_user_no_pending */
;
		
	case 5: // STATE 1
		goto R999;

	case 6: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM p2_double_context_switch */
;
		
	case 7: // STATE 1
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
		
	case 15: // STATE 23
		goto R999;
;
		;
		;
		
	case 17: // STATE 31
		goto R999;
;
		;
		;
		;
		;
		
	case 20: // STATE 41
		goto R999;
;
		;
		;
		;
		;
		;
		;
		
	case 24: // STATE 53
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
		
	case 29: // STATE 67
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
		
	case 35: // STATE 83
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
		
	case 42: // STATE 101
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
		
	case 50: // STATE 122
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM P2_switching_not_P1_witness_unfolded */
;
		
	case 51: // STATE 1
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
		
	case 58: // STATE 21
		goto R999;
;
		;
		;
		
	case 60: // STATE 29
		goto R999;
;
		;
		;
		;
		;
		
	case 63: // STATE 39
		goto R999;
;
		;
		;
		;
		;
		;
		;
		
	case 67: // STATE 51
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
		
	case 72: // STATE 65
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
		
	case 78: // STATE 81
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
		
	case 85: // STATE 100
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
		
	case 138: // STATE 156
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
		
	case 162: // STATE 75
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
		
	case 186: // STATE 75
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
		
	case 189: // STATE 13
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
		
	case 192: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC :init: */

	case 193: // STATE 1
		;
		((P4 *)_this)->i = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 195: // STATE 3
		;
		((P4 *)_this)->_8_17_idx = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 197: // STATE 5
		;
		now.readyQueue[ Index(((P4 *)_this)->i, 4) ].tasks[ Index(((P4 *)_this)->_8_17_idx, 5) ] = trpt->bup.oval;
		;
		goto R999;

	case 198: // STATE 6
		;
		((P4 *)_this)->_8_17_idx = trpt->bup.oval;
		;
		goto R999;

	case 199: // STATE 12
		;
		now.readyQueue[ Index(((P4 *)_this)->i, 4) ].tailIndex = trpt->bup.oval;
		;
		goto R999;

	case 200: // STATE 14
		;
		((P4 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 201: // STATE 20
		;
		now.tcb[2].prio = trpt->bup.oval;
		;
		goto R999;

	case 202: // STATE 21
		;
		now.tcb[2].state = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 204: // STATE 23
		;
		now.readyQueue[2].tasks[ Index(now.readyQueue[2].tailIndex, 5) ] = trpt->bup.oval;
		;
		goto R999;

	case 205: // STATE 24
		;
		now.readyQueue[2].tailIndex = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 207: // STATE 30
		;
		now.tcb[ Index((2+1), 4) ].prio = trpt->bup.oval;
		;
		goto R999;

	case 208: // STATE 31
		;
		now.tcb[ Index((2+1), 4) ].state = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 210: // STATE 33
		;
		now.readyQueue[2].tasks[ Index(now.readyQueue[2].tailIndex, 5) ] = trpt->bup.oval;
		;
		goto R999;

	case 211: // STATE 34
		;
		now.readyQueue[2].tailIndex = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 213: // STATE 40
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 214: // STATE 41
		;
		now.topPrio = trpt->bup.oval;
		;
		goto R999;

	case 215: // STATE 42
		;
		((P4 *)_this)->_8_20_idx = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 217: // STATE 44
		;
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index(((P4 *)_this)->_8_20_idx, 5) ] = trpt->bup.oval;
		;
		goto R999;

	case 218: // STATE 45
		;
		((P4 *)_this)->_8_20_idx = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 220: // STATE 52
		;
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index((now.readyQueue[ Index(now.topPrio, 4) ].tailIndex-1), 5) ] = trpt->bup.oval;
		;
		goto R999;

	case 221: // STATE 53
		;
		now.readyQueue[ Index(now.topPrio, 4) ].tailIndex = trpt->bup.oval;
		;
		goto R999;

	case 222: // STATE 59
		;
		now.tcb[ Index(now.EP, 4) ].state = trpt->bup.oval;
		;
		goto R999;

	case 223: // STATE 60
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 224: // STATE 61
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 225: // STATE 63
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 226: // STATE 64
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 227: // STATE 65
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Process2 */
;
		
	case 228: // STATE 1
		goto R999;

	case 229: // STATE 5
		;
		now.pending_exp = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 231: // STATE 12
		;
		now.chain_tick_used = trpt->bup.oval;
		;
		goto R999;

	case 232: // STATE 20
		;
		now.EP = trpt->bup.ovals[1];
		now.EP_Stack = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 233: // STATE 24
		goto R999;
;
		
	case 234: // STATE 22
		goto R999;
;
		;
		
	case 236: // STATE 27
		;
		((P3 *)_this)->_7_14_24_intSave = trpt->bup.oval;
		;
		goto R999;

	case 237: // STATE 31
		;
		((P3 *)_this)->_7_14_24_needSched = trpt->bup.ovals[1];
		((P3 *)_this)->_7_14_24_intSave = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 238: // STATE 34
		;
		now.tcb[2].state = trpt->bup.ovals[1];
		((P3 *)_this)->_7_14_24_needSched = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 239: // STATE 38
		;
		now.g_taskSortLinkTail = trpt->bup.ovals[3];
		now.tcb[2].pendList = trpt->bup.ovals[2];
		now.g_taskSortLink[ Index(now.g_taskSortLinkTail, 3) ].responseTime = trpt->bup.ovals[1];
		now.g_taskSortLink[ Index(now.g_taskSortLinkTail, 3) ].taskId = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 240: // STATE 41
		;
	/* 0 */	((P3 *)_this)->_7_14_24_needSched = trpt->bup.oval;
		;
		;
		goto R999;

	case 241: // STATE 42
		;
		((P3 *)_this)->_7_14_24_intSave = trpt->bup.oval;
		;
		goto R999;

	case 242: // STATE 45
		;
		now.pending_exp = trpt->bup.oval;
		;
		goto R999;

	case 243: // STATE 55
		;
		now.pending_exp = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 245: // STATE 62
		;
		now.chain_tick_used = trpt->bup.oval;
		;
		goto R999;

	case 246: // STATE 70
		;
		now.EP = trpt->bup.ovals[1];
		now.EP_Stack = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 247: // STATE 74
		goto R999;
;
		
	case 248: // STATE 72
		goto R999;
;
		;
		
	case 250: // STATE 79
		;
		((P3 *)_this)->_7_15_27_needSched = trpt->bup.ovals[2];
		((P3 *)_this)->_7_15_27_tempStatus = trpt->bup.ovals[1];
		((P3 *)_this)->_7_15_27_intSave = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 251: // STATE 82
		;
		((P3 *)_this)->_7_15_27_tempStatus = trpt->bup.ovals[1];
		((P3 *)_this)->_7_15_27_intSave = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 252: // STATE 86
		;
		now.tcb[2].state = trpt->bup.ovals[1];
		((P3 *)_this)->_7_15_27_needSched = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 253: // STATE 87
		;
		((P3 *)_this)->_7_15_27_12_5_idx = trpt->bup.oval;
		;
		goto R999;

	case 254: // STATE 91
		;
		((P3 *)_this)->_7_15_27_12_5_idx = trpt->bup.ovals[2];
		now.g_taskSortLink[ Index(((P3 *)_this)->_7_15_27_12_5_idx, 3) ].responseTime = trpt->bup.ovals[1];
		now.g_taskSortLink[ Index(((P3 *)_this)->_7_15_27_12_5_idx, 3) ].taskId = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 255: // STATE 99
		;
		now.g_taskSortLinkTail = trpt->bup.ovals[2];
		now.g_taskSortLink[ Index((now.g_taskSortLinkTail-1), 3) ].responseTime = trpt->bup.ovals[1];
		now.g_taskSortLink[ Index((now.g_taskSortLinkTail-1), 3) ].taskId = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 256: // STATE 103
		;
		now.readyQueue[ Index(now.tcb[2].prio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.tcb[2].prio, 4) ].tasks[ Index(now.readyQueue[ Index(now.tcb[2].prio, 4) ].tailIndex, 5) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 258: // STATE 110
		;
	/* 0 */	((P3 *)_this)->_7_15_27_needSched = trpt->bup.oval;
		;
		;
		goto R999;

	case 259: // STATE 111
		;
		((P3 *)_this)->_7_15_27_intSave = trpt->bup.oval;
		;
		goto R999;

	case 260: // STATE 114
		;
		now.pending_exp = trpt->bup.oval;
		;
		goto R999;

	case 261: // STATE 124
		;
		now.pending_exp = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 263: // STATE 131
		;
		now.chain_tick_used = trpt->bup.oval;
		;
		goto R999;

	case 264: // STATE 139
		;
		now.EP = trpt->bup.ovals[1];
		now.EP_Stack = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 265: // STATE 143
		goto R999;
;
		
	case 266: // STATE 141
		goto R999;
;
		
	case 267: // STATE 145
		goto R999;

	case 268: // STATE 149
		;
		now.pending_exp = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 270: // STATE 156
		;
		now.chain_tick_used = trpt->bup.oval;
		;
		goto R999;

	case 271: // STATE 164
		;
		now.EP = trpt->bup.ovals[1];
		now.EP_Stack = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 272: // STATE 168
		goto R999;
;
		
	case 273: // STATE 166
		goto R999;

	case 274: // STATE 173
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Process1 */
;
		
	case 275: // STATE 1
		goto R999;

	case 276: // STATE 5
		;
		now.pending_exp = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 278: // STATE 12
		;
		now.chain_tick_used = trpt->bup.oval;
		;
		goto R999;

	case 279: // STATE 20
		;
		now.EP = trpt->bup.ovals[1];
		now.EP_Stack = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 280: // STATE 24
		goto R999;
;
		
	case 281: // STATE 22
		goto R999;
;
		
	case 282: // STATE 26
		goto R999;

	case 283: // STATE 30
		;
		now.pending_exp = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 285: // STATE 37
		;
		now.chain_tick_used = trpt->bup.oval;
		;
		goto R999;

	case 286: // STATE 45
		;
		now.EP = trpt->bup.ovals[1];
		now.EP_Stack = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 287: // STATE 49
		goto R999;
;
		
	case 288: // STATE 47
		goto R999;

	case 289: // STATE 54
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
		
	case 292: // STATE 4
		;
		now.pending_exp = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 294: // STATE 10
		;
		now.pending_exp = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 296: // STATE 16
		;
		now.chain_tick_used = trpt->bup.ovals[1];
		now.pending_exp = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 297: // STATE 19
		goto R999;
;
		
	case 298: // STATE 17
		goto R999;
;
		;
		;
		;
		
	case 301: // STATE 27
		;
		((P1 *)_this)->tmp = trpt->bup.ovals[2];
		now.EP = trpt->bup.ovals[1];
		((P1 *)_this)->tmp = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 302: // STATE 32
		;
		now.EP_Stack = trpt->bup.ovals[1];
		now.EP = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 304: // STATE 41
		;
		now.chain_tick_used = trpt->bup.ovals[1];
		now.pending_exp = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 305: // STATE 44
		goto R999;
;
		
	case 306: // STATE 42
		goto R999;

	case 307: // STATE 49
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
		
	case 310: // STATE 4
		;
		now.pending_exp = trpt->bup.oval;
		;
		goto R999;

	case 311: // STATE 9
		;
		now.tcb[ Index(now.EP_Stack, 4) ].state = trpt->bup.oval;
		;
		goto R999;

	case 312: // STATE 12
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
		
	case 315: // STATE 22
		;
		now.chain_tick_used = trpt->bup.ovals[1];
		now.pending_exp = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 316: // STATE 25
		goto R999;
;
		
	case 317: // STATE 23
		goto R999;
;
		;
		
	case 319: // STATE 30
		;
		((P0 *)_this)->_4_3_4_found = trpt->bup.ovals[2];
		((P0 *)_this)->_4_3_4_top_task = trpt->bup.ovals[1];
		((P0 *)_this)->_4_3_4_prio = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 321: // STATE 34
		;
		((P0 *)_this)->_4_3_4_found = trpt->bup.ovals[1];
		((P0 *)_this)->_4_3_4_top_task = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 322: // STATE 36
		;
		((P0 *)_this)->_4_3_4_prio = trpt->bup.oval;
		;
		goto R999;

	case 323: // STATE 45
		;
		now.topPrio = trpt->bup.ovals[1];
		((P0 *)_this)->tmp = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 325: // STATE 51
		;
		now.chain_tick_used = trpt->bup.ovals[1];
		now.pending_exp = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 326: // STATE 54
		goto R999;
;
		
	case 327: // STATE 52
		goto R999;
;
		;
		
	case 329: // STATE 57
		;
		((P0 *)_this)->_4_4_6_idx = trpt->bup.oval;
		;
		goto R999;

	case 330: // STATE 60
		;
		((P0 *)_this)->_4_4_6_idx = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index(((P0 *)_this)->_4_4_6_idx, 5) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 331: // STATE 68
		;
		now.readyQueue[ Index(now.topPrio, 4) ].tailIndex = trpt->bup.ovals[1];
		now.readyQueue[ Index(now.topPrio, 4) ].tasks[ Index((now.readyQueue[ Index(now.topPrio, 4) ].tailIndex-1), 5) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 333: // STATE 78
		;
		now.chain_tick_used = trpt->bup.ovals[1];
		now.pending_exp = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 334: // STATE 81
		goto R999;
;
		
	case 335: // STATE 79
		goto R999;

	case 336: // STATE 84
		;
		now.tcb[ Index(((P0 *)_this)->tmp, 4) ].state = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 338: // STATE 89
		;
		now.chain_tick_used = trpt->bup.ovals[1];
		now.pending_exp = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 339: // STATE 92
		goto R999;
;
		
	case 340: // STATE 90
		goto R999;
;
		;
		
	case 342: // STATE 96
		;
		now.EP_Stack = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 344: // STATE 102
		;
		now.chain_tick_used = trpt->bup.ovals[1];
		now.pending_exp = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 345: // STATE 105
		goto R999;
;
		
	case 346: // STATE 103
		goto R999;
;
		;
		;
		;
		
	case 349: // STATE 113
		;
		((P0 *)_this)->tmp = trpt->bup.ovals[2];
		now.EP = trpt->bup.ovals[1];
		((P0 *)_this)->tmp = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 350: // STATE 118
		;
		now.EP_Stack = trpt->bup.ovals[1];
		now.EP = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 352: // STATE 127
		;
		now.chain_tick_used = trpt->bup.ovals[1];
		now.pending_exp = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 353: // STATE 130
		goto R999;
;
		
	case 354: // STATE 128
		goto R999;

	case 355: // STATE 135
		;
		p_restor(II);
		;
		;
		goto R999;
	}

