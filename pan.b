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
;
		;
		
	case 8: // STATE 6
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 10: // STATE 8
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 13: // STATE 11
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 15: // STATE 13
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 17: // STATE 15
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 18: // STATE 16
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 19: // STATE 24
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 20: // STATE 25
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 21: // STATE 26
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Process2 */
;
		
	case 22: // STATE 1
		goto R999;
;
		
	case 23: // STATE 3
		goto R999;
;
		
	case 24: // STATE 24
		goto R999;

	case 25: // STATE 5
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		
	case 26: // STATE 21
		goto R999;

	case 27: // STATE 7
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 29: // STATE 10
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 30: // STATE 12
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 32: // STATE 14
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 33: // STATE 15
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 34: // STATE 27
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		
	case 35: // STATE 28
		goto R999;
;
		
	case 36: // STATE 49
		goto R999;

	case 37: // STATE 30
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		
	case 38: // STATE 46
		goto R999;

	case 39: // STATE 32
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 41: // STATE 35
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 42: // STATE 37
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 44: // STATE 39
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 45: // STATE 40
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 46: // STATE 54
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Process1 */
;
		
	case 47: // STATE 1
		goto R999;
;
		
	case 48: // STATE 3
		goto R999;
;
		
	case 49: // STATE 24
		goto R999;

	case 50: // STATE 5
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		
	case 51: // STATE 21
		goto R999;

	case 52: // STATE 7
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 54: // STATE 10
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 55: // STATE 12
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 57: // STATE 14
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 58: // STATE 15
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		
	case 59: // STATE 26
		goto R999;
;
		
	case 60: // STATE 28
		goto R999;
;
		
	case 61: // STATE 49
		goto R999;

	case 62: // STATE 30
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		
	case 63: // STATE 46
		goto R999;

	case 64: // STATE 32
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 66: // STATE 35
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 67: // STATE 37
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 69: // STATE 39
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 70: // STATE 40
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 71: // STATE 52
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		
	case 72: // STATE 53
		goto R999;
;
		
	case 73: // STATE 74
		goto R999;

	case 74: // STATE 55
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		
	case 75: // STATE 71
		goto R999;

	case 76: // STATE 57
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 78: // STATE 60
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 79: // STATE 62
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 81: // STATE 64
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 82: // STATE 65
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 83: // STATE 79
		;
		p_restor(II);
		;
		;
		goto R999;
	}

