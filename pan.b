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
		;
		;
		;
		
	case 24: // STATE 4
		;
		now.tcb[1].prio = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 26: // STATE 6
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 28: // STATE 8
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 31: // STATE 11
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 33: // STATE 13
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 35: // STATE 15
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 36: // STATE 16
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 37: // STATE 24
		;
		now.tcb[1].prio = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 39: // STATE 26
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 41: // STATE 28
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 44: // STATE 31
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 46: // STATE 33
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 48: // STATE 35
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 49: // STATE 36
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 50: // STATE 44
		;
		now.tcb[1].prio = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 52: // STATE 46
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 54: // STATE 48
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 57: // STATE 51
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 59: // STATE 53
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 61: // STATE 55
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 62: // STATE 56
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 63: // STATE 64
		;
		now.tcb[2].prio = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 65: // STATE 66
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 67: // STATE 68
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 70: // STATE 71
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 72: // STATE 73
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 74: // STATE 75
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 75: // STATE 76
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 76: // STATE 84
		;
		now.tcb[2].prio = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 78: // STATE 86
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 80: // STATE 88
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 83: // STATE 91
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 85: // STATE 93
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 87: // STATE 95
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 88: // STATE 96
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 89: // STATE 104
		;
		now.tcb[2].prio = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 91: // STATE 106
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 93: // STATE 108
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 96: // STATE 111
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 98: // STATE 113
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 100: // STATE 115
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 101: // STATE 116
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 102: // STATE 124
		;
		now.tcb[1].state = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 104: // STATE 126
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 106: // STATE 128
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 109: // STATE 131
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 111: // STATE 133
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 113: // STATE 135
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 114: // STATE 136
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 115: // STATE 144
		;
		now.tcb[1].state = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 117: // STATE 146
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 119: // STATE 148
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 122: // STATE 151
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 124: // STATE 153
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 126: // STATE 155
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 127: // STATE 156
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 128: // STATE 164
		;
		now.tcb[2].state = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 130: // STATE 166
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 132: // STATE 168
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 135: // STATE 171
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 137: // STATE 173
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 139: // STATE 175
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 140: // STATE 176
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 141: // STATE 184
		;
		now.tcb[2].state = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 143: // STATE 186
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 145: // STATE 188
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 148: // STATE 191
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 150: // STATE 193
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 152: // STATE 195
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 153: // STATE 196
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 155: // STATE 207
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 156: // STATE 209
		;
		now.tcb[1].prio = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 158: // STATE 211
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 160: // STATE 213
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 163: // STATE 216
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 165: // STATE 218
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 167: // STATE 220
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 168: // STATE 221
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 169: // STATE 229
		;
		now.tcb[1].prio = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 171: // STATE 231
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 173: // STATE 233
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 176: // STATE 236
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 178: // STATE 238
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 180: // STATE 240
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 181: // STATE 241
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 182: // STATE 249
		;
		now.tcb[1].prio = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 184: // STATE 251
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 186: // STATE 253
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 189: // STATE 256
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 191: // STATE 258
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 193: // STATE 260
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 194: // STATE 261
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 195: // STATE 269
		;
		now.tcb[2].prio = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 197: // STATE 271
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 199: // STATE 273
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 202: // STATE 276
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 204: // STATE 278
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 206: // STATE 280
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 207: // STATE 281
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 208: // STATE 289
		;
		now.tcb[2].prio = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 210: // STATE 291
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 212: // STATE 293
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 215: // STATE 296
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 217: // STATE 298
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 219: // STATE 300
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 220: // STATE 301
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 221: // STATE 309
		;
		now.tcb[2].prio = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 223: // STATE 311
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 225: // STATE 313
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 228: // STATE 316
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 230: // STATE 318
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 232: // STATE 320
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 233: // STATE 321
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 234: // STATE 329
		;
		now.tcb[1].state = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 236: // STATE 331
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 238: // STATE 333
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 241: // STATE 336
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 243: // STATE 338
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 245: // STATE 340
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 246: // STATE 341
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 247: // STATE 349
		;
		now.tcb[1].state = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 249: // STATE 351
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 251: // STATE 353
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 254: // STATE 356
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 256: // STATE 358
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 258: // STATE 360
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 259: // STATE 361
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 260: // STATE 369
		;
		now.tcb[2].state = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 262: // STATE 371
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 264: // STATE 373
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 267: // STATE 376
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 269: // STATE 378
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 271: // STATE 380
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 272: // STATE 381
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 273: // STATE 389
		;
		now.tcb[2].state = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 275: // STATE 391
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 277: // STATE 393
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 280: // STATE 396
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 282: // STATE 398
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 284: // STATE 400
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 285: // STATE 401
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 286: // STATE 414
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Process1 */
;
		;
		;
		;
		
	case 289: // STATE 4
		;
		now.tcb[1].prio = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 291: // STATE 6
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 293: // STATE 8
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 296: // STATE 11
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 298: // STATE 13
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 300: // STATE 15
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 301: // STATE 16
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 302: // STATE 24
		;
		now.tcb[1].prio = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 304: // STATE 26
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 306: // STATE 28
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 309: // STATE 31
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 311: // STATE 33
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 313: // STATE 35
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 314: // STATE 36
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 315: // STATE 44
		;
		now.tcb[1].prio = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 317: // STATE 46
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 319: // STATE 48
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 322: // STATE 51
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 324: // STATE 53
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 326: // STATE 55
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 327: // STATE 56
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 328: // STATE 64
		;
		now.tcb[2].prio = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 330: // STATE 66
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 332: // STATE 68
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 335: // STATE 71
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 337: // STATE 73
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 339: // STATE 75
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 340: // STATE 76
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 341: // STATE 84
		;
		now.tcb[2].prio = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 343: // STATE 86
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 345: // STATE 88
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 348: // STATE 91
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 350: // STATE 93
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 352: // STATE 95
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 353: // STATE 96
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 354: // STATE 104
		;
		now.tcb[2].prio = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 356: // STATE 106
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 358: // STATE 108
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 361: // STATE 111
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 363: // STATE 113
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 365: // STATE 115
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 366: // STATE 116
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 367: // STATE 124
		;
		now.tcb[1].state = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 369: // STATE 126
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 371: // STATE 128
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 374: // STATE 131
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 376: // STATE 133
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 378: // STATE 135
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 379: // STATE 136
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 380: // STATE 144
		;
		now.tcb[1].state = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 382: // STATE 146
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 384: // STATE 148
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 387: // STATE 151
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 389: // STATE 153
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 391: // STATE 155
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 392: // STATE 156
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 393: // STATE 164
		;
		now.tcb[2].state = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 395: // STATE 166
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 397: // STATE 168
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 400: // STATE 171
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 402: // STATE 173
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 404: // STATE 175
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 405: // STATE 176
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 406: // STATE 184
		;
		now.tcb[2].state = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 408: // STATE 186
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 410: // STATE 188
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 413: // STATE 191
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 415: // STATE 193
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 417: // STATE 195
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 418: // STATE 196
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 421: // STATE 209
		;
		now.tcb[1].prio = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 423: // STATE 211
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 425: // STATE 213
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 428: // STATE 216
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 430: // STATE 218
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 432: // STATE 220
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 433: // STATE 221
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 434: // STATE 229
		;
		now.tcb[1].prio = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 436: // STATE 231
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 438: // STATE 233
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 441: // STATE 236
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 443: // STATE 238
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 445: // STATE 240
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 446: // STATE 241
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 447: // STATE 249
		;
		now.tcb[1].prio = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 449: // STATE 251
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 451: // STATE 253
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 454: // STATE 256
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 456: // STATE 258
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 458: // STATE 260
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 459: // STATE 261
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 460: // STATE 269
		;
		now.tcb[2].prio = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 462: // STATE 271
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 464: // STATE 273
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 467: // STATE 276
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 469: // STATE 278
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 471: // STATE 280
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 472: // STATE 281
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 473: // STATE 289
		;
		now.tcb[2].prio = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 475: // STATE 291
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 477: // STATE 293
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 480: // STATE 296
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 482: // STATE 298
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 484: // STATE 300
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 485: // STATE 301
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 486: // STATE 309
		;
		now.tcb[2].prio = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 488: // STATE 311
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 490: // STATE 313
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 493: // STATE 316
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 495: // STATE 318
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 497: // STATE 320
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 498: // STATE 321
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 499: // STATE 329
		;
		now.tcb[1].state = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 501: // STATE 331
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 503: // STATE 333
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 506: // STATE 336
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 508: // STATE 338
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 510: // STATE 340
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 511: // STATE 341
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 512: // STATE 349
		;
		now.tcb[1].state = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 514: // STATE 351
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 516: // STATE 353
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 519: // STATE 356
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 521: // STATE 358
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 523: // STATE 360
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 524: // STATE 361
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 525: // STATE 369
		;
		now.tcb[2].state = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 527: // STATE 371
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 529: // STATE 373
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 532: // STATE 376
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 534: // STATE 378
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 536: // STATE 380
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 537: // STATE 381
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 538: // STATE 389
		;
		now.tcb[2].state = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 540: // STATE 391
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 542: // STATE 393
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 545: // STATE 396
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 547: // STATE 398
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 549: // STATE 400
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 550: // STATE 401
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 552: // STATE 412
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 553: // STATE 414
		;
		now.tcb[1].prio = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 555: // STATE 416
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 557: // STATE 418
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 560: // STATE 421
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 562: // STATE 423
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 564: // STATE 425
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 565: // STATE 426
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 566: // STATE 434
		;
		now.tcb[1].prio = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 568: // STATE 436
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 570: // STATE 438
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 573: // STATE 441
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 575: // STATE 443
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 577: // STATE 445
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 578: // STATE 446
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 579: // STATE 454
		;
		now.tcb[1].prio = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 581: // STATE 456
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 583: // STATE 458
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 586: // STATE 461
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 588: // STATE 463
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 590: // STATE 465
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 591: // STATE 466
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 592: // STATE 474
		;
		now.tcb[2].prio = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 594: // STATE 476
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 596: // STATE 478
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 599: // STATE 481
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 601: // STATE 483
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 603: // STATE 485
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 604: // STATE 486
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 605: // STATE 494
		;
		now.tcb[2].prio = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 607: // STATE 496
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 609: // STATE 498
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 612: // STATE 501
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 614: // STATE 503
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 616: // STATE 505
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 617: // STATE 506
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 618: // STATE 514
		;
		now.tcb[2].prio = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 620: // STATE 516
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 622: // STATE 518
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 625: // STATE 521
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 627: // STATE 523
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 629: // STATE 525
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 630: // STATE 526
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 631: // STATE 534
		;
		now.tcb[1].state = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 633: // STATE 536
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 635: // STATE 538
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 638: // STATE 541
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 640: // STATE 543
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 642: // STATE 545
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 643: // STATE 546
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 644: // STATE 554
		;
		now.tcb[1].state = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 646: // STATE 556
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 648: // STATE 558
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 651: // STATE 561
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 653: // STATE 563
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 655: // STATE 565
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 656: // STATE 566
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 657: // STATE 574
		;
		now.tcb[2].state = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 659: // STATE 576
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 661: // STATE 578
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 664: // STATE 581
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 666: // STATE 583
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 668: // STATE 585
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 669: // STATE 586
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 670: // STATE 594
		;
		now.tcb[2].state = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 672: // STATE 596
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 674: // STATE 598
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 677: // STATE 601
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 679: // STATE 603
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 681: // STATE 605
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 682: // STATE 606
		;
		now.EP = trpt->bup.oval;
		;
		goto R999;

	case 683: // STATE 619
		;
		p_restor(II);
		;
		;
		goto R999;
	}

