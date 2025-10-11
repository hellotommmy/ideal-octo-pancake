#ifndef PAN_H
#define PAN_H

#define SpinVersion	"Spin Version 6.5.2 -- 6 December 2019"
#define PanSource	"resume_suspend.pml"

#define G_long	8
#define G_int	4

#define ulong	unsigned long
#define ushort	unsigned short
#ifdef WIN64
	#define ONE_L	(1L)
/*	#define long	long long */
#else
	#define ONE_L	(1L)
#endif

#ifdef BFS_PAR
	#define NRUNS	1
	#ifndef BFS
		#define BFS
	#endif
	#ifndef PUTPID
		#define PUTPID
	#endif

	#if !defined(USE_TDH) && !defined(NO_TDH)
		#define USE_TDH
	#endif
	#if defined(USE_TDH) && !defined(NO_HC)
		#define HC /* default for USE_TDH */
	#endif
	#ifndef BFS_MAXPROCS
		#define BFS_MAXPROCS	64	/* max nr of cores to use */
	#endif
	#define BFS_GLOB	0	/* global lock */
	#define BFS_ORD		1	/* used with -DCOLLAPSE */
	#define BFS_MEM		2	/* malloc from shared heap */
	#define BFS_PRINT	3	/* protect printfs */
	#define BFS_STATE	4	/* hashtable */

	#define BFS_INQ 	2	/* state is in q */

	#ifdef BFS_FIFO
	  #define BFS_ID(a,b)	(BFS_STATE + (int) ((a)*BFS_MAXPROCS+(b)))
	  #define BFS_MAXLOCKS	(BFS_STATE + (BFS_MAXPROCS*BFS_MAXPROCS))
	#else
	  #ifndef BFS_W
		#define BFS_W	10
	  #endif
	  #define BFS_MASK	((1<<BFS_W) - 1)
	  #define BFS_ID	(BFS_STATE + (int) (j1_spin & (BFS_MASK)))
	  #define BFS_MAXLOCKS	(BFS_STATE + (1<<BFS_W))
	#endif
	#undef NCORE
	extern int Cores, who_am_i;
	#ifndef SAFETY
	  #if !defined(BFS_STAGGER) && !defined(BFS_DISK)
		#define BFS_STAGGER	64 /* randomizer, was 16 */
	  #endif
	  #ifndef L_BOUND
		#define L_BOUND 	10 /* default */
	  #endif
	  extern int L_bound;
	#endif
	#if defined(BFS_DISK) && defined(BFS_STAGGER)
		#error BFS_DISK and BFS_STAGGER are not compatible
	#endif
#endif

#if defined(BFS)
	#ifndef SAFETY
		#define SAFETY
	#endif
	#ifndef XUSAFE
		#define XUSAFE
	#endif
#endif
#ifndef uchar
	#define uchar	unsigned char
#endif
#ifndef uint
	#define uint	unsigned int
#endif
#define DELTA	500
#ifdef MA
	#if NCORE>1 && !defined(SEP_STATE)
		#define SEP_STATE
	#endif
	#if MA==1
		#undef MA
		#define MA	100
	#endif
#endif
#ifdef W_XPT
	#if W_XPT==1
		#undef W_XPT
		#define W_XPT 1000000
	#endif
#endif
#ifndef NFAIR
	#define NFAIR	2	/* must be >= 2 */
#endif
#define HAS_LTL	1
#define HAS_CODE	1
#if defined(RANDSTORE) && !defined(RANDSTOR)
	#define RANDSTOR	RANDSTORE
#endif
#define MERGED	1
#if !defined(HAS_LAST) && defined(BCS)
	#define HAS_LAST	1 /* use it, but */
	#ifndef STORE_LAST
		#define NO_LAST	1 /* don't store it */
	#endif
#endif
#if defined(BCS) && defined(BITSTATE)
	#ifndef NO_CTX
		#define STORE_CTX	1
	#endif
#endif
#ifdef NP
	#define HAS_NP	2
	#define VERI	10	/* np_ */
#endif
#if defined(NOCLAIM) && defined(NP)
	#undef NOCLAIM
#endif
#ifndef NOCLAIM
	#define NCLAIMS	5
	#ifndef NP
		#define VERI	9
	#endif
#endif

typedef struct S_F_MAP {
	char *fnm;
	int from;
	int upto;
} S_F_MAP;

#define _nstates9	35	/* all_starvation_free */
#define minseq9	4554
#define maxseq9	4587
#define _endstate9	34

#define _nstates8	14	/* starvation_free_task4 */
#define minseq8	4541
#define maxseq8	4553
#define _endstate8	13

#define _nstates7	14	/* starvation_free_task3 */
#define minseq7	4528
#define maxseq7	4540
#define _endstate7	13

#define _nstates6	14	/* starvation_free_task2 */
#define minseq6	4515
#define maxseq6	4527
#define _endstate6	13

#define _nstates5	14	/* starvation_free_task1 */
#define minseq5	4502
#define maxseq5	4514
#define _endstate5	13

#define _nstates4	131	/* :init: */
#define minseq4	4372
#define maxseq4	4501
#define _endstate4	130

#define _nstates3	1094	/* Process4 */
#define minseq3	3279
#define maxseq3	4371
#define _endstate3	1093

#define _nstates2	1094	/* Process3 */
#define minseq2	2186
#define maxseq2	3278
#define _endstate2	1093

#define _nstates1	1094	/* Process2 */
#define minseq1	1093
#define maxseq1	2185
#define _endstate1	1093

#define _nstates0	1094	/* Process1 */
#define minseq0	0
#define maxseq0	1092
#define _endstate0	1093

extern short src_ln9[];
extern short src_ln8[];
extern short src_ln7[];
extern short src_ln6[];
extern short src_ln5[];
extern short src_ln4[];
extern short src_ln3[];
extern short src_ln2[];
extern short src_ln1[];
extern short src_ln0[];
extern S_F_MAP src_file9[];
extern S_F_MAP src_file8[];
extern S_F_MAP src_file7[];
extern S_F_MAP src_file6[];
extern S_F_MAP src_file5[];
extern S_F_MAP src_file4[];
extern S_F_MAP src_file3[];
extern S_F_MAP src_file2[];
extern S_F_MAP src_file1[];
extern S_F_MAP src_file0[];

#define T_ID	unsigned short
#define _T5	1267
#define _T2	1268
#define WS		8 /* word size in bytes */
#define SYNC	0
#define ASYNC	0

#ifndef NCORE
	#ifdef DUAL_CORE
		#define NCORE	2
	#elif QUAD_CORE
		#define NCORE	4
	#else
		#define NCORE	1
	#endif
#endif

struct TCB { /* user defined type */
	uchar prio;
	uchar state;
	uchar responseTime;
	uchar wakeupTime;
	uchar delayTicks;
};
struct ReadyList { /* user defined type */
	uchar tasks[8];
	uchar tailIndex;
};
struct SortLink { /* user defined type */
	uchar tasks[8];
	uchar count;
};
typedef struct P9 { /* all_starvation_free */
	unsigned _pid : 8;  /* 0..255 */
	unsigned _t   : 5; /* proctype */
	unsigned _p   : 12; /* state    */
#ifdef HAS_PRIORITY
	unsigned _priority : 8; /* 0..255 */
#endif
} P9;
#define Air9	(sizeof(P9) - 4)

typedef struct P8 { /* starvation_free_task4 */
	unsigned _pid : 8;  /* 0..255 */
	unsigned _t   : 5; /* proctype */
	unsigned _p   : 12; /* state    */
#ifdef HAS_PRIORITY
	unsigned _priority : 8; /* 0..255 */
#endif
} P8;
#define Air8	(sizeof(P8) - 4)

typedef struct P7 { /* starvation_free_task3 */
	unsigned _pid : 8;  /* 0..255 */
	unsigned _t   : 5; /* proctype */
	unsigned _p   : 12; /* state    */
#ifdef HAS_PRIORITY
	unsigned _priority : 8; /* 0..255 */
#endif
} P7;
#define Air7	(sizeof(P7) - 4)

typedef struct P6 { /* starvation_free_task2 */
	unsigned _pid : 8;  /* 0..255 */
	unsigned _t   : 5; /* proctype */
	unsigned _p   : 12; /* state    */
#ifdef HAS_PRIORITY
	unsigned _priority : 8; /* 0..255 */
#endif
} P6;
#define Air6	(sizeof(P6) - 4)

typedef struct P5 { /* starvation_free_task1 */
	unsigned _pid : 8;  /* 0..255 */
	unsigned _t   : 5; /* proctype */
	unsigned _p   : 12; /* state    */
#ifdef HAS_PRIORITY
	unsigned _priority : 8; /* 0..255 */
#endif
} P5;
#define Air5	(sizeof(P5) - 4)

#define Pinit	((P4 *)_this)
typedef struct P4 { /* :init: */
	unsigned _pid : 8;  /* 0..255 */
	unsigned _t   : 5; /* proctype */
	unsigned _p   : 12; /* state    */
#ifdef HAS_PRIORITY
	unsigned _priority : 8; /* 0..255 */
#endif
	uchar i;
	uchar _8_25_init_rq_idx;
	uchar _8_26_init_sl_idx;
	uchar _8_31_prio;
	uchar _8_31_top_task;
	uchar _8_31_found;
	uchar _8_32_deq_idx;
} P4;
#define Air4	(sizeof(P4) - Offsetof(P4, _8_32_deq_idx) - 1*sizeof(uchar))

#define PProcess4	((P3 *)_this)
typedef struct P3 { /* Process4 */
	unsigned _pid : 8;  /* 0..255 */
	unsigned _t   : 5; /* proctype */
	unsigned _p   : 12; /* state    */
#ifdef HAS_PRIORITY
	unsigned _priority : 8; /* 0..255 */
#endif
	uchar counter;
	uchar work;
	uchar _7_19_25_interrupted_task;
	uchar _7_19_25_idx;
	uchar _7_19_25_taskId;
	uchar _7_19_25_needResched;
	uchar _7_19_25_152_removePos;
	uchar _7_19_25_152_found;
	uchar _7_19_25_152_shiftIdx;
	uchar _7_19_25_155_prio;
	uchar _7_19_25_155_top_task;
	uchar _7_19_25_155_found;
	uchar _7_19_25_156_deq_idx;
	uchar _7_20_26_interrupted_task;
	uchar _7_20_26_idx;
	uchar _7_20_26_taskId;
	uchar _7_20_26_needResched;
	uchar _7_20_26_159_removePos;
	uchar _7_20_26_159_found;
	uchar _7_20_26_159_shiftIdx;
	uchar _7_20_26_162_prio;
	uchar _7_20_26_162_top_task;
	uchar _7_20_26_162_found;
	uchar _7_20_26_163_deq_idx;
	uchar _7_21_27_interrupted_task;
	uchar _7_21_27_idx;
	uchar _7_21_27_taskId;
	uchar _7_21_27_needResched;
	uchar _7_21_27_166_removePos;
	uchar _7_21_27_166_found;
	uchar _7_21_27_166_shiftIdx;
	uchar _7_21_27_169_prio;
	uchar _7_21_27_169_top_task;
	uchar _7_21_27_169_found;
	uchar _7_21_27_170_deq_idx;
	uchar _7_22_28_currentTask;
	uchar _7_22_28_174_interrupted_task;
	uchar _7_22_28_174_idx;
	uchar _7_22_28_174_taskId;
	uchar _7_22_28_174_needResched;
	uchar _7_22_28_174_44_removePos;
	uchar _7_22_28_174_44_found;
	uchar _7_22_28_174_44_shiftIdx;
	uchar _7_22_28_174_47_prio;
	uchar _7_22_28_174_47_top_task;
	uchar _7_22_28_174_47_found;
	uchar _7_22_28_174_48_deq_idx;
	uchar _7_22_29_interrupted_task;
	uchar _7_22_29_idx;
	uchar _7_22_29_taskId;
	uchar _7_22_29_needResched;
	uchar _7_22_29_177_removePos;
	uchar _7_22_29_177_found;
	uchar _7_22_29_177_shiftIdx;
	uchar _7_22_29_180_prio;
	uchar _7_22_29_180_top_task;
	uchar _7_22_29_180_found;
	uchar _7_22_29_181_deq_idx;
	uchar _7_23_30_currentTask;
	uchar _7_23_30_185_interrupted_task;
	uchar _7_23_30_185_idx;
	uchar _7_23_30_185_taskId;
	uchar _7_23_30_185_needResched;
	uchar _7_23_30_185_51_removePos;
	uchar _7_23_30_185_51_found;
	uchar _7_23_30_185_51_shiftIdx;
	uchar _7_23_30_185_54_prio;
	uchar _7_23_30_185_54_top_task;
	uchar _7_23_30_185_54_found;
	uchar _7_23_30_185_55_deq_idx;
	uchar _7_23_31_interrupted_task;
	uchar _7_23_31_idx;
	uchar _7_23_31_taskId;
	uchar _7_23_31_needResched;
	uchar _7_23_31_188_removePos;
	uchar _7_23_31_188_found;
	uchar _7_23_31_188_shiftIdx;
	uchar _7_23_31_191_prio;
	uchar _7_23_31_191_top_task;
	uchar _7_23_31_191_found;
	uchar _7_23_31_192_deq_idx;
	uchar _7_24_32_interrupted_task;
	uchar _7_24_32_idx;
	uchar _7_24_32_taskId;
	uchar _7_24_32_needResched;
	uchar _7_24_32_195_removePos;
	uchar _7_24_32_195_found;
	uchar _7_24_32_195_shiftIdx;
	uchar _7_24_32_198_prio;
	uchar _7_24_32_198_top_task;
	uchar _7_24_32_198_found;
	uchar _7_24_32_199_deq_idx;
} P3;
#define Air3	(sizeof(P3) - Offsetof(P3, _7_24_32_199_deq_idx) - 1*sizeof(uchar))

#define PProcess3	((P2 *)_this)
typedef struct P2 { /* Process3 */
	unsigned _pid : 8;  /* 0..255 */
	unsigned _t   : 5; /* proctype */
	unsigned _p   : 12; /* state    */
#ifdef HAS_PRIORITY
	unsigned _priority : 8; /* 0..255 */
#endif
	uchar counter;
	uchar work;
	uchar _6_13_17_interrupted_task;
	uchar _6_13_17_idx;
	uchar _6_13_17_taskId;
	uchar _6_13_17_needResched;
	uchar _6_13_17_102_removePos;
	uchar _6_13_17_102_found;
	uchar _6_13_17_102_shiftIdx;
	uchar _6_13_17_105_prio;
	uchar _6_13_17_105_top_task;
	uchar _6_13_17_105_found;
	uchar _6_13_17_106_deq_idx;
	uchar _6_14_18_interrupted_task;
	uchar _6_14_18_idx;
	uchar _6_14_18_taskId;
	uchar _6_14_18_needResched;
	uchar _6_14_18_109_removePos;
	uchar _6_14_18_109_found;
	uchar _6_14_18_109_shiftIdx;
	uchar _6_14_18_112_prio;
	uchar _6_14_18_112_top_task;
	uchar _6_14_18_112_found;
	uchar _6_14_18_113_deq_idx;
	uchar _6_15_19_interrupted_task;
	uchar _6_15_19_idx;
	uchar _6_15_19_taskId;
	uchar _6_15_19_needResched;
	uchar _6_15_19_116_removePos;
	uchar _6_15_19_116_found;
	uchar _6_15_19_116_shiftIdx;
	uchar _6_15_19_119_prio;
	uchar _6_15_19_119_top_task;
	uchar _6_15_19_119_found;
	uchar _6_15_19_120_deq_idx;
	uchar _6_16_20_currentTask;
	uchar _6_16_20_124_interrupted_task;
	uchar _6_16_20_124_idx;
	uchar _6_16_20_124_taskId;
	uchar _6_16_20_124_needResched;
	uchar _6_16_20_124_30_removePos;
	uchar _6_16_20_124_30_found;
	uchar _6_16_20_124_30_shiftIdx;
	uchar _6_16_20_124_33_prio;
	uchar _6_16_20_124_33_top_task;
	uchar _6_16_20_124_33_found;
	uchar _6_16_20_124_34_deq_idx;
	uchar _6_16_21_interrupted_task;
	uchar _6_16_21_idx;
	uchar _6_16_21_taskId;
	uchar _6_16_21_needResched;
	uchar _6_16_21_127_removePos;
	uchar _6_16_21_127_found;
	uchar _6_16_21_127_shiftIdx;
	uchar _6_16_21_130_prio;
	uchar _6_16_21_130_top_task;
	uchar _6_16_21_130_found;
	uchar _6_16_21_131_deq_idx;
	uchar _6_17_22_currentTask;
	uchar _6_17_22_135_interrupted_task;
	uchar _6_17_22_135_idx;
	uchar _6_17_22_135_taskId;
	uchar _6_17_22_135_needResched;
	uchar _6_17_22_135_37_removePos;
	uchar _6_17_22_135_37_found;
	uchar _6_17_22_135_37_shiftIdx;
	uchar _6_17_22_135_40_prio;
	uchar _6_17_22_135_40_top_task;
	uchar _6_17_22_135_40_found;
	uchar _6_17_22_135_41_deq_idx;
	uchar _6_17_23_interrupted_task;
	uchar _6_17_23_idx;
	uchar _6_17_23_taskId;
	uchar _6_17_23_needResched;
	uchar _6_17_23_138_removePos;
	uchar _6_17_23_138_found;
	uchar _6_17_23_138_shiftIdx;
	uchar _6_17_23_141_prio;
	uchar _6_17_23_141_top_task;
	uchar _6_17_23_141_found;
	uchar _6_17_23_142_deq_idx;
	uchar _6_18_24_interrupted_task;
	uchar _6_18_24_idx;
	uchar _6_18_24_taskId;
	uchar _6_18_24_needResched;
	uchar _6_18_24_145_removePos;
	uchar _6_18_24_145_found;
	uchar _6_18_24_145_shiftIdx;
	uchar _6_18_24_148_prio;
	uchar _6_18_24_148_top_task;
	uchar _6_18_24_148_found;
	uchar _6_18_24_149_deq_idx;
} P2;
#define Air2	(sizeof(P2) - Offsetof(P2, _6_18_24_149_deq_idx) - 1*sizeof(uchar))

#define PProcess2	((P1 *)_this)
typedef struct P1 { /* Process2 */
	unsigned _pid : 8;  /* 0..255 */
	unsigned _t   : 5; /* proctype */
	unsigned _p   : 12; /* state    */
#ifdef HAS_PRIORITY
	unsigned _priority : 8; /* 0..255 */
#endif
	uchar counter;
	uchar work;
	uchar _5_7_9_interrupted_task;
	uchar _5_7_9_idx;
	uchar _5_7_9_taskId;
	uchar _5_7_9_needResched;
	uchar _5_7_9_52_removePos;
	uchar _5_7_9_52_found;
	uchar _5_7_9_52_shiftIdx;
	uchar _5_7_9_55_prio;
	uchar _5_7_9_55_top_task;
	uchar _5_7_9_55_found;
	uchar _5_7_9_56_deq_idx;
	uchar _5_8_10_interrupted_task;
	uchar _5_8_10_idx;
	uchar _5_8_10_taskId;
	uchar _5_8_10_needResched;
	uchar _5_8_10_59_removePos;
	uchar _5_8_10_59_found;
	uchar _5_8_10_59_shiftIdx;
	uchar _5_8_10_62_prio;
	uchar _5_8_10_62_top_task;
	uchar _5_8_10_62_found;
	uchar _5_8_10_63_deq_idx;
	uchar _5_9_11_interrupted_task;
	uchar _5_9_11_idx;
	uchar _5_9_11_taskId;
	uchar _5_9_11_needResched;
	uchar _5_9_11_66_removePos;
	uchar _5_9_11_66_found;
	uchar _5_9_11_66_shiftIdx;
	uchar _5_9_11_69_prio;
	uchar _5_9_11_69_top_task;
	uchar _5_9_11_69_found;
	uchar _5_9_11_70_deq_idx;
	uchar _5_10_12_currentTask;
	uchar _5_10_12_74_interrupted_task;
	uchar _5_10_12_74_idx;
	uchar _5_10_12_74_taskId;
	uchar _5_10_12_74_needResched;
	uchar _5_10_12_74_16_removePos;
	uchar _5_10_12_74_16_found;
	uchar _5_10_12_74_16_shiftIdx;
	uchar _5_10_12_74_19_prio;
	uchar _5_10_12_74_19_top_task;
	uchar _5_10_12_74_19_found;
	uchar _5_10_12_74_20_deq_idx;
	uchar _5_10_13_interrupted_task;
	uchar _5_10_13_idx;
	uchar _5_10_13_taskId;
	uchar _5_10_13_needResched;
	uchar _5_10_13_77_removePos;
	uchar _5_10_13_77_found;
	uchar _5_10_13_77_shiftIdx;
	uchar _5_10_13_80_prio;
	uchar _5_10_13_80_top_task;
	uchar _5_10_13_80_found;
	uchar _5_10_13_81_deq_idx;
	uchar _5_11_14_currentTask;
	uchar _5_11_14_85_interrupted_task;
	uchar _5_11_14_85_idx;
	uchar _5_11_14_85_taskId;
	uchar _5_11_14_85_needResched;
	uchar _5_11_14_85_23_removePos;
	uchar _5_11_14_85_23_found;
	uchar _5_11_14_85_23_shiftIdx;
	uchar _5_11_14_85_26_prio;
	uchar _5_11_14_85_26_top_task;
	uchar _5_11_14_85_26_found;
	uchar _5_11_14_85_27_deq_idx;
	uchar _5_11_15_interrupted_task;
	uchar _5_11_15_idx;
	uchar _5_11_15_taskId;
	uchar _5_11_15_needResched;
	uchar _5_11_15_88_removePos;
	uchar _5_11_15_88_found;
	uchar _5_11_15_88_shiftIdx;
	uchar _5_11_15_91_prio;
	uchar _5_11_15_91_top_task;
	uchar _5_11_15_91_found;
	uchar _5_11_15_92_deq_idx;
	uchar _5_12_16_interrupted_task;
	uchar _5_12_16_idx;
	uchar _5_12_16_taskId;
	uchar _5_12_16_needResched;
	uchar _5_12_16_95_removePos;
	uchar _5_12_16_95_found;
	uchar _5_12_16_95_shiftIdx;
	uchar _5_12_16_98_prio;
	uchar _5_12_16_98_top_task;
	uchar _5_12_16_98_found;
	uchar _5_12_16_99_deq_idx;
} P1;
#define Air1	(sizeof(P1) - Offsetof(P1, _5_12_16_99_deq_idx) - 1*sizeof(uchar))

#define PProcess1	((P0 *)_this)
typedef struct P0 { /* Process1 */
	unsigned _pid : 8;  /* 0..255 */
	unsigned _t   : 5; /* proctype */
	unsigned _p   : 12; /* state    */
#ifdef HAS_PRIORITY
	unsigned _priority : 8; /* 0..255 */
#endif
	uchar counter;
	uchar work;
	uchar _4_1_1_interrupted_task;
	uchar _4_1_1_idx;
	uchar _4_1_1_taskId;
	uchar _4_1_1_needResched;
	uchar _4_1_1_2_removePos;
	uchar _4_1_1_2_found;
	uchar _4_1_1_2_shiftIdx;
	uchar _4_1_1_5_prio;
	uchar _4_1_1_5_top_task;
	uchar _4_1_1_5_found;
	uchar _4_1_1_6_deq_idx;
	uchar _4_2_2_interrupted_task;
	uchar _4_2_2_idx;
	uchar _4_2_2_taskId;
	uchar _4_2_2_needResched;
	uchar _4_2_2_9_removePos;
	uchar _4_2_2_9_found;
	uchar _4_2_2_9_shiftIdx;
	uchar _4_2_2_12_prio;
	uchar _4_2_2_12_top_task;
	uchar _4_2_2_12_found;
	uchar _4_2_2_13_deq_idx;
	uchar _4_3_3_interrupted_task;
	uchar _4_3_3_idx;
	uchar _4_3_3_taskId;
	uchar _4_3_3_needResched;
	uchar _4_3_3_16_removePos;
	uchar _4_3_3_16_found;
	uchar _4_3_3_16_shiftIdx;
	uchar _4_3_3_19_prio;
	uchar _4_3_3_19_top_task;
	uchar _4_3_3_19_found;
	uchar _4_3_3_20_deq_idx;
	uchar _4_4_4_currentTask;
	uchar _4_4_4_24_interrupted_task;
	uchar _4_4_4_24_idx;
	uchar _4_4_4_24_taskId;
	uchar _4_4_4_24_needResched;
	uchar _4_4_4_24_2_removePos;
	uchar _4_4_4_24_2_found;
	uchar _4_4_4_24_2_shiftIdx;
	uchar _4_4_4_24_5_prio;
	uchar _4_4_4_24_5_top_task;
	uchar _4_4_4_24_5_found;
	uchar _4_4_4_24_6_deq_idx;
	uchar _4_4_5_interrupted_task;
	uchar _4_4_5_idx;
	uchar _4_4_5_taskId;
	uchar _4_4_5_needResched;
	uchar _4_4_5_27_removePos;
	uchar _4_4_5_27_found;
	uchar _4_4_5_27_shiftIdx;
	uchar _4_4_5_30_prio;
	uchar _4_4_5_30_top_task;
	uchar _4_4_5_30_found;
	uchar _4_4_5_31_deq_idx;
	uchar _4_5_6_currentTask;
	uchar _4_5_6_35_interrupted_task;
	uchar _4_5_6_35_idx;
	uchar _4_5_6_35_taskId;
	uchar _4_5_6_35_needResched;
	uchar _4_5_6_35_9_removePos;
	uchar _4_5_6_35_9_found;
	uchar _4_5_6_35_9_shiftIdx;
	uchar _4_5_6_35_12_prio;
	uchar _4_5_6_35_12_top_task;
	uchar _4_5_6_35_12_found;
	uchar _4_5_6_35_13_deq_idx;
	uchar _4_5_7_interrupted_task;
	uchar _4_5_7_idx;
	uchar _4_5_7_taskId;
	uchar _4_5_7_needResched;
	uchar _4_5_7_38_removePos;
	uchar _4_5_7_38_found;
	uchar _4_5_7_38_shiftIdx;
	uchar _4_5_7_41_prio;
	uchar _4_5_7_41_top_task;
	uchar _4_5_7_41_found;
	uchar _4_5_7_42_deq_idx;
	uchar _4_6_8_interrupted_task;
	uchar _4_6_8_idx;
	uchar _4_6_8_taskId;
	uchar _4_6_8_needResched;
	uchar _4_6_8_45_removePos;
	uchar _4_6_8_45_found;
	uchar _4_6_8_45_shiftIdx;
	uchar _4_6_8_48_prio;
	uchar _4_6_8_48_top_task;
	uchar _4_6_8_48_found;
	uchar _4_6_8_49_deq_idx;
} P0;
#define Air0	(sizeof(P0) - Offsetof(P0, _4_6_8_49_deq_idx) - 1*sizeof(uchar))

typedef struct P10 { /* np_ */
	unsigned _pid : 8;  /* 0..255 */
	unsigned _t   : 5; /* proctype */
	unsigned _p   : 12; /* state    */
#ifdef HAS_PRIORITY
	unsigned _priority : 8; /* 0..255 */
#endif
} P10;
#define Air10	(sizeof(P10) - 4)


#ifndef NOCLAIM
 #ifndef NP
	#undef VERI
	#define VERI	11
 #endif
	#define Pclaim	P11

typedef struct P11 {
	unsigned _pid : 8; /* always zero */
	unsigned _t   : 5; /* active-claim type  */
	unsigned _p   : 12; /* active-claim state */
	unsigned _n   : 4; /* active-claim index */
	uchar c_cur[NCLAIMS]; /* claim-states */
} P11;
	#define Air11	(0)

#endif
#if defined(BFS) && defined(REACH)
	#undef REACH
#endif
#ifdef VERI
	#define BASE	1
#else
	#define BASE	0
#endif
typedef struct Trans {
	short atom;	/* if &2 = atomic trans; if &8 local */
#ifdef HAS_UNLESS
	short escp[HAS_UNLESS];	/* lists the escape states */
	short e_trans;	/* if set, this is an escp-trans */
#endif
	short tpe[2];	/* class of operation (for reduction) */
	short qu[6];	/* for conditional selections: qid's  */
	uchar ty[6];	/* ditto: type's */
#ifdef NIBIS
	short om;	/* completion status of preselects */
#endif
	char *tp;	/* src txt of statement */
	int st;		/* the nextstate */
	int t_id;	/* transition id, unique within proc */
	int forw;	/* index forward transition */
	int back;	/* index return  transition */
	struct Trans *nxt;
} Trans;

#ifdef TRIX
	#define qptr(x)	(channels[x]->body)
	#define pptr(x)	(processes[x]->body)
#else
	#define qptr(x)	(((uchar *)&now)+(int)q_offset[x])
	#define pptr(x)	(((uchar *)&now)+(int)proc_offset[x])
#endif
extern uchar *Pptr(int);
extern uchar *Qptr(int);
#define q_sz(x)	(((Q0 *)qptr(x))->Qlen)

#ifdef TRIX
	#ifdef VECTORSZ
		#undef VECTORSZ
	#endif
	#if WS==4
		#define VECTORSZ	2056	/* ((MAXPROC+MAXQ+4)*sizeof(uchar *)) */
	#else
		#define VECTORSZ	4112	/* the formula causes probs in preprocessing */
	#endif
#else
	#ifndef VECTORSZ
		#define VECTORSZ	1024	/* sv size in bytes */
	#endif
#endif

#define MAXQ   	255
#define MAXPROC	255

#ifdef VERBOSE
	#ifndef CHECK
		#define CHECK
	#endif
	#ifndef DEBUG
		#define DEBUG
	#endif
#endif
#ifdef SAFETY
	#ifndef NOFAIR
		#define NOFAIR
	#endif
#endif
#ifdef NOREDUCE
	#ifndef XUSAFE
		#define XUSAFE
	#endif
	#if !defined(SAFETY) && !defined(MA)
		#define FULLSTACK
	#endif
#else
	#ifdef BITSTATE
		#if defined(SAFETY) && WS<=4
			#define CNTRSTACK
		#else
			#define FULLSTACK
		#endif
	#else
		#define FULLSTACK
	#endif
#endif
#ifdef BITSTATE
	#ifndef NOCOMP
		#define NOCOMP
	#endif
	#if !defined(LC) && defined(SC)
		#define LC
	#endif
#endif
#if defined(COLLAPSE2) || defined(COLLAPSE3) || defined(COLLAPSE4)
	/* accept the above for backward compatibility */
	#define COLLAPSE
#endif
#ifdef HC
	#undef HC
	#define HC4
#endif
#if defined(HC0) || defined(HC1) || defined(HC2) || defined(HC3) || defined(HC4)
	#define HC	4
#endif

typedef struct _Stack  {	 /* for queues and processes */
#if VECTORSZ>32000
	int o_delta;
	#ifndef TRIX
		int o_offset;
		int o_skip;
	#endif
	int o_delqs;
#else
	short o_delta;
	#ifndef TRIX
		short o_offset;
		short o_skip;
	#endif
	short o_delqs;
#endif
	short o_boq;
#ifdef TRIX
	short parent;
	char *b_ptr;
#else
	char *body;
#endif
#ifndef XUSAFE
	char *o_name;
#endif
	struct _Stack *nxt;
	struct _Stack *lst;
} _Stack;

typedef struct Svtack { /* for complete state vector */
#if VECTORSZ>32000
	int o_delta;
	int m_delta;
#else
	short o_delta;	 /* current size of frame */
	short m_delta;	 /* maximum size of frame */
#endif
#if SYNC
	short o_boq;
#endif
#define StackSize	(WS)
	char *body;
	struct Svtack *nxt;
	struct Svtack *lst;
} Svtack;

typedef struct State {
	uchar _nr_pr;
	uchar _nr_qs;
	uchar   _a_t;	/* cycle detection */
#ifndef NOFAIR
	uchar   _cnt[NFAIR];	/* counters, weak fairness */
#endif
#ifndef NOVSZ
#if VECTORSZ<65536
	unsigned short _vsz;
#else
	ulong  _vsz;
#endif
#endif
#ifdef HAS_LAST
	uchar  _last;	/* pid executed in last step */
#endif
#if defined(BITSTATE) && defined(BCS) && defined(STORE_CTX)
	uchar  _ctx;	/* nr of context switches so far */
#endif
#if defined(BFS_PAR) && defined(L_BOUND)
	uchar  _l_bnd;	/* bounded liveness */
	uchar *_l_sds;	/* seed state */
#endif
#ifdef EVENT_TRACE
	#if nstates_event<256
		uchar _event;
	#else
		unsigned short _event;
	#endif
#endif
	uchar int_ctrl_reg;
	uchar topPrio;
	uchar tickCount;
	uchar EP;
	uchar int_save;
	uchar newTask;
	struct TCB tcb[5];
	struct ReadyList readyQueue[4];
	struct SortLink sortLink;
#ifdef TRIX
	/* room for 512 proc+chan ptrs, + safety margin */
	char *_ids_[MAXPROC+MAXQ+4];
#else
	uchar sv[VECTORSZ];
#endif
} State;

#ifdef TRIX
typedef struct TRIX_v6 {
	uchar *body; /* aligned */
#ifndef BFS
	short modified;
#endif
	short psize;
	short parent_pid;
	struct TRIX_v6 *nxt;
} TRIX_v6;
#endif

#define HAS_TRACK	0
/* hidden variable: */	uchar isTaskSwitch;
/* hidden variable: */	uchar ep_save;
/* hidden variable: */	uchar pendSV_pending;
#define FORWARD_MOVES	"pan.m"
#define BACKWARD_MOVES	"pan.b"
#define TRANSITIONS	"pan.t"
#define _NP_	10
#define _nstates10	3 /* np_ */
#define _endstate10	2 /* np_ */

#define _start10	0 /* np_ */
#define _start9	11
#define _start8	5
#define _start7	5
#define _start6	5
#define _start5	5
#define _start4	1
#define _start3	1090
#define _start2	1090
#define _start1	1090
#define _start0	1090
#ifdef NP
	#define ACCEPT_LAB	1 /* at least 1 in np_ */
#else
	#define ACCEPT_LAB	8 /* user-defined accept labels */
#endif
#ifdef MEMCNT
	#ifdef MEMLIM
		#warning -DMEMLIM takes precedence over -DMEMCNT
		#undef MEMCNT
	#else
		#if MEMCNT<20
			#warning using minimal value -DMEMCNT=20 (=1MB)
			#define MEMLIM	(1)
			#undef MEMCNT
		#else
			#if MEMCNT==20
				#define MEMLIM	(1)
				#undef MEMCNT
			#else
			 #if MEMCNT>=50
				#error excessive value for MEMCNT
			 #else
				#define MEMLIM	(1<<(MEMCNT-20))
			 #endif
			#endif
		#endif
	#endif
#endif
#if NCORE>1 && !defined(MEMLIM)
	#define MEMLIM	(2048)	/* need a default, using 2 GB */
#endif
#define PROG_LAB	0 /* progress labels */
#define NQS	0
typedef struct Q0 {	/* generic q */
	uchar Qlen;	/* q_size */
	uchar _t;
} Q0;

/** function prototypes **/
char *emalloc(ulong);
char *Malloc(ulong);
int Boundcheck(int, int, int, int, Trans *);
int addqueue(int, int, int);
/* int atoi(char *); */
/* int abort(void); */
int close(int);
int delproc(int, int);
int endstate(void);
int find_claim(char *);
int h_store(char *, int);
int pan_rand(void);
int q_cond(short, Trans *);
int q_full(int);
int q_len(int);
int q_zero(int);
int qrecv(int, int, int, int);
int unsend(int);
/* void *sbrk(int); */
void spin_assert(int, char *, int, int, Trans *);
#ifdef BFS_PAR
void bfs_printf(const char *, ...);
volatile uchar *sh_pre_malloc(ulong);
#endif
void c_chandump(int);
void c_globals(void);
void c_locals(int, int);
void checkcycles(void);
void crack(int, int, Trans *, short *);
void d_sfh(uchar *, int);
void d_hash(uchar *, int);
void m_hash(uchar *, int);
void s_hash(uchar *, int);
void delq(int);
void dot_crack(int, int, Trans *);
void do_reach(void);
void pan_exit(int);
void exit(int);
#ifdef BFS_PAR
	void bfs_setup_mem(void);
#endif
#ifdef BITSTATE
	void sinit(void);
#else
	void hinit(void);
#endif
void imed(Trans *, int, int, int);
void new_state(void);
void p_restor(int);
void putpeg(int, int);
void putrail(void);
void q_restor(void);
void retrans(int, int, int, short *, uchar *, uchar *);
void select_claim(int);
void settable(void);
void setq_claim(int, int, char *, int, char *);
void sv_restor(void);
void sv_save(void);
void tagtable(int, int, int, short *, uchar *);
void do_dfs(int, int, int, short *, uchar *, uchar *);
void unrecv(int, int, int, int, int);
void usage(FILE *);
void wrap_stats(void);

#ifdef MA
	int g_store(char *, int, uchar);
#endif
#if defined(FULLSTACK) && defined(BITSTATE)
	int  onstack_now(void);
	void onstack_init(void);
	void onstack_put(void);
	void onstack_zap(void);
#endif
#ifndef XUSAFE
	int q_S_check(int, int);
	int q_R_check(int, int);
	extern uchar q_claim[MAXQ+1];
	extern char *q_name[MAXQ+1];
	extern char *p_name[MAXPROC+1];
#endif

#ifndef NO_V_PROVISO
	#define V_PROVISO
#endif
#if !defined(NO_RESIZE) && !defined(AUTO_RESIZE) && !defined(BITSTATE) && !defined(SPACE) && !defined(USE_TDH) && NCORE==1
	#define AUTO_RESIZE
#endif

typedef struct Trail Trail;
typedef struct H_el  H_el;

struct H_el {
	H_el *nxt;
	#ifdef FULLSTACK
		unsigned int tagged;
		#if defined(BITSTATE) && !defined(NOREDUCE) && !defined(SAFETY)
			unsigned int proviso;
		#endif
	#endif
	#if defined(CHECK) || (defined(COLLAPSE) && !defined(FULLSTACK))
		ulong st_id;
	#endif
	#if !defined(SAFETY) || defined(REACH)
		uint D;
	#endif
	#ifdef BCS
		#ifndef CONSERVATIVE
			#define CONSERVATIVE	1 /* good for up to 8 processes */
		#endif
		#ifdef CONSERVATIVE
			#if CONSERVATIVE <= 0 || CONSERVATIVE>32
			#error sensible values for CONSERVATIVE are 1..32 (256/8 = 32)
			#endif
			uchar ctx_pid[CONSERVATIVE];
		#endif
		uchar ctx_low;
	#endif
	#if NCORE>1
		/* could cost 1 extra word: 4 bytes if 32-bit and 8 bytes if 64-bit */
		#ifdef V_PROVISO
			uchar	cpu_id;		/* id of cpu that created the state */
		#endif
	#endif
	#ifdef COLLAPSE
		#if VECTORSZ<65536
			ushort ln;
		#else
			ulong ln;
		#endif
	#endif
	#if defined(AUTO_RESIZE) && !defined(BITSTATE)
		ulong m_K1;
	#endif
	ulong state;
};

#ifdef BFS_PAR
typedef struct BFS_Trail BFS_Trail;
struct BFS_Trail {
	H_el *ostate;
	int   st;
	int   o_tt;
	T_ID  t_id;
	uchar pr;
	uchar o_pm;
	uchar tau;
};
	#if SYNC>0
		#undef BFS_NOTRAIL
	#endif
#endif

#ifdef RHASH
	#ifndef PERMUTED
	#define PERMUTED
	#endif
#endif

struct Trail {
	int   st;	/* current state */
	int   o_tt;
#ifdef PERMUTED
	uint  seed;
	uchar oII;
#endif
	uchar pr;	/* process id */
	uchar tau;	/* 8 bit-flags */
	uchar o_pm;	/* 8 more bit-flags */

	#if 0
	Meaning of bit-flags on tau and o_pm:
	tau&1   -> timeout enabled
	tau&2   -> request to enable timeout 1 level up (in claim)
	tau&4   -> current transition is a  claim move
	tau&8   -> current transition is an atomic move
	tau&16  -> last move was truncated on stack
	tau&32  -> current transition is a preselected move
	tau&64  -> at least one next state is not on the stack
	tau&128 -> current transition is a stutter move
	o_pm&1	-> the current pid moved -- implements else
	o_pm&2	-> this is an acceptance state
	o_pm&4	-> this is a  progress state
	o_pm&8	-> fairness alg rule 1 undo mark
	o_pm&16	-> fairness alg rule 3 undo mark
	o_pm&32	-> fairness alg rule 2 undo mark
	o_pm&64 -> the current proc applied rule2
	o_pm&128 -> a fairness, dummy move - all procs blocked
	#endif

	#ifdef NSUCC
	 uchar n_succ;	/* nr of successor states */
	#endif
	#if defined(FULLSTACK) && defined(MA) && !defined(BFS)
	 uchar proviso;
	#endif
	#ifndef BFS
	 uchar  o_n, o_ot;	/* to save locals */
	#endif
	uchar  o_m;
	#ifdef EVENT_TRACE
		#if nstates_event<256
		 uchar o_event;
		#else
		 unsigned short o_event;
		#endif
	#endif
	#ifndef BFS
		short o_To;
		#if defined(T_RAND) || defined(RANDOMIZE)
		 short oo_i;
		#endif
	#endif
	#if defined(HAS_UNLESS) && !defined(BFS)
	 int e_state;	/* if escape trans - state of origin */
	#endif
	#if (defined(FULLSTACK) && !defined(MA)) || defined(BFS) || (NCORE>1)
	 H_el *ostate;	/* pointer to stored state */
	#endif
	#if defined(CNTRSTACK) && !defined(BFS)
	 long	j6, j7;
	#endif
	Trans *o_t;
	#if !defined(BFS) && !defined(TRIX_ORIG)
	 char *p_bup;
	 char *q_bup;
	#endif
	#ifdef BCS
	 unsigned short sched_limit;
	 unsigned char  bcs; /* phase 1 or 2, or forced 4 */
	 unsigned char  b_pno; /* preferred pid */
	#endif
	#ifdef P_RAND
	 unsigned char p_left;	/* nr of procs left to explore */
	 short p_skip;	/* to find starting point in list */
	#endif
	#ifdef HAS_SORTED
	 short ipt;
	#endif
	#ifdef HAS_PRIORITY
	 short o_priority;
	#endif
	union {
	 int oval;
	 int *ovals;
	} bup;
}; /* end of struct Trail */

#ifdef BFS
	#define Q_PROVISO
	#ifndef INLINE_REV
		#define INLINE_REV
	#endif

typedef struct SV_Hold {
	State *sv;
 #ifndef BFS_PAR
	int  sz;
 #endif
	struct SV_Hold *nxt;
} SV_Hold;
#if !defined(BFS_PAR) || NRUNS>0
	typedef struct EV_Hold {
	 #if !defined(BFS_PAR) || (!defined(NOCOMP) && !defined(HC) && NRUNS>0)
		char *sv;	/* Mask */
	 #endif
	 #if VECTORSZ<65536
		ushort sz;	/* vsize */
	 #else
		ulong  sz;
	 #endif
	 #ifdef BFS_PAR
		uchar owner;
	 #endif
		uchar nrpr;
		uchar nrqs;
		#if !defined(BFS_PAR) || (!defined(TRIX) && NRUNS>0)
			char *po, *qo;
			char *ps, *qs;
		#endif
		struct EV_Hold *nxt;
	} EV_Hold;
#endif
typedef struct BFS_State {
 #ifdef BFS_PAR
	BFS_Trail *t_info;
	State	*osv;
 #else
	Trail	*frame;
	SV_Hold *onow;
 #endif
 #if !defined(BFS_PAR) || NRUNS>0
	EV_Hold *omask;
 #endif
 #if defined(Q_PROVISO) && !defined(NOREDUCE)
	H_el *lstate;
 #endif
 #if !defined(BFS_PAR) || SYNC>0
	short boq;
 #endif
 #ifdef VERBOSE
	ulong nr;
 #endif
 #ifndef BFS_PAR
	struct BFS_State *nxt;
 #endif
} BFS_State;
#endif

void qsend(int, int, int);

#define Addproc(x,y)	addproc(256, y, x)
#define LOCAL	1
#define Q_FULL_F	2
#define Q_EMPT_F	3
#define Q_EMPT_T	4
#define Q_FULL_T	5
#define TIMEOUT_F	6
#define GLOBAL	7
#define BAD	8
#define ALPHA_F	9
#define NTRANS	1269
#if defined(BFS_PAR) || NCORE>1
	void e_critical(int);
	void x_critical(int);
	#ifdef BFS_PAR
		void bfs_main(int, int);
		void bfs_report_mem(void);
	#endif
#endif


/* end of PAN_H */
#endif
