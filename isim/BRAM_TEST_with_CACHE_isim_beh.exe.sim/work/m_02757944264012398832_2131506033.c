/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/brjathu/FPGA/Processor_FPGA/BRAM_TEST_with_CACHE.v";
static int ng1[] = {0, 0};
static int ng2[] = {1, 0};
static int ng3[] = {2, 0};
static unsigned int ng4[] = {976U, 0U};
static int ng5[] = {10, 0};
static unsigned int ng6[] = {548U, 0U};
static unsigned int ng7[] = {1022U, 0U};



static void Always_95_0(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;

LAB0:    t1 = (t0 + 6496U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(95, ng0);

LAB4:    xsi_set_current_line(96, ng0);
    t2 = (t0 + 6304);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(96, ng0);
    t4 = (t0 + 4944);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memset(t3, 0, 8);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB9;

LAB7:    if (*((unsigned int *)t7) == 0)
        goto LAB6;

LAB8:    t13 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t13) = 1;

LAB9:    t14 = (t3 + 4);
    t15 = (t6 + 4);
    t16 = *((unsigned int *)t6);
    t17 = (~(t16));
    *((unsigned int *)t3) = t17;
    *((unsigned int *)t14) = 0;
    if (*((unsigned int *)t15) != 0)
        goto LAB11;

LAB10:    t22 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t22 & 1U);
    t23 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t23 & 1U);
    t24 = (t0 + 4944);
    xsi_vlogvar_assign_value(t24, t3, 0, 0, 1);
    goto LAB2;

LAB6:    *((unsigned int *)t3) = 1;
    goto LAB9;

LAB11:    t18 = *((unsigned int *)t3);
    t19 = *((unsigned int *)t15);
    *((unsigned int *)t3) = (t18 | t19);
    t20 = *((unsigned int *)t14);
    t21 = *((unsigned int *)t15);
    *((unsigned int *)t14) = (t20 | t21);
    goto LAB10;

}

static void Initial_99_1(char *t0)
{
    char t4[8];
    char t21[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;

LAB0:    t1 = (t0 + 6744U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(99, ng0);

LAB4:    xsi_set_current_line(101, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4944);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(102, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 5104);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(103, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 5264);
    t5 = (t0 + 5264);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = ((char*)((ng1)));
    xsi_vlog_generic_convert_bit_index(t4, t7, 2, t8, 32, 1);
    t9 = (t4 + 4);
    t10 = *((unsigned int *)t9);
    t11 = (!(t10));
    if (t11 == 1)
        goto LAB5;

LAB6:    xsi_set_current_line(104, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5264);
    t5 = (t0 + 5264);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = ((char*)((ng2)));
    xsi_vlog_generic_convert_bit_index(t4, t7, 2, t8, 32, 1);
    t9 = (t4 + 4);
    t10 = *((unsigned int *)t9);
    t11 = (!(t10));
    if (t11 == 1)
        goto LAB7;

LAB8:    xsi_set_current_line(105, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5264);
    t5 = (t0 + 5264);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = ((char*)((ng3)));
    xsi_vlog_generic_convert_bit_index(t4, t7, 2, t8, 32, 1);
    t9 = (t4 + 4);
    t10 = *((unsigned int *)t9);
    t11 = (!(t10));
    if (t11 == 1)
        goto LAB9;

LAB10:    xsi_set_current_line(108, ng0);
    t2 = (t0 + 6552);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB11;

LAB1:    return;
LAB5:    xsi_vlogvar_assign_value(t3, t2, 0, *((unsigned int *)t4), 1);
    goto LAB6;

LAB7:    xsi_vlogvar_assign_value(t3, t2, 0, *((unsigned int *)t4), 1);
    goto LAB8;

LAB9:    xsi_vlogvar_assign_value(t3, t2, 0, *((unsigned int *)t4), 1);
    goto LAB10;

LAB11:    xsi_set_current_line(111, ng0);
    t2 = (t0 + 6552);
    xsi_process_wait(t2, 104160000LL);
    *((char **)t1) = &&LAB12;
    goto LAB1;

LAB12:    xsi_set_current_line(112, ng0);
    t3 = ((char*)((ng4)));
    t5 = (t0 + 5424);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 10);
    xsi_set_current_line(113, ng0);
    xsi_set_current_line(113, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5584);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);

LAB13:    t2 = (t0 + 5584);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng5)));
    memset(t4, 0, 8);
    t7 = (t5 + 4);
    if (*((unsigned int *)t7) != 0)
        goto LAB15;

LAB14:    t8 = (t6 + 4);
    if (*((unsigned int *)t8) != 0)
        goto LAB15;

LAB18:    if (*((unsigned int *)t5) < *((unsigned int *)t6))
        goto LAB16;

LAB17:    t12 = (t4 + 4);
    t10 = *((unsigned int *)t12);
    t13 = (~(t10));
    t14 = *((unsigned int *)t4);
    t15 = (t14 & t13);
    t16 = (t15 != 0);
    if (t16 > 0)
        goto LAB19;

LAB20:    xsi_set_current_line(118, ng0);
    t2 = (t0 + 6552);
    xsi_process_wait(t2, 104160000LL);
    *((char **)t1) = &&LAB23;
    goto LAB1;

LAB15:    t9 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB17;

LAB16:    *((unsigned int *)t4) = 1;
    goto LAB17;

LAB19:    xsi_set_current_line(113, ng0);

LAB21:    xsi_set_current_line(114, ng0);
    t17 = (t0 + 6552);
    xsi_process_wait(t17, 8680000LL);
    *((char **)t1) = &&LAB22;
    goto LAB1;

LAB22:    xsi_set_current_line(114, ng0);
    t18 = (t0 + 5424);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t22 = (t0 + 5424);
    t23 = (t22 + 72U);
    t24 = *((char **)t23);
    t25 = (t0 + 5584);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    xsi_vlog_generic_get_index_select_value(t21, 1, t20, t24, 2, t27, 4, 2);
    t28 = (t0 + 5104);
    xsi_vlogvar_assign_value(t28, t21, 0, 0, 1);
    xsi_set_current_line(113, ng0);
    t2 = (t0 + 5584);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng2)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 32, t5, 4, t6, 32);
    t7 = (t0 + 5584);
    xsi_vlogvar_assign_value(t7, t4, 0, 0, 4);
    goto LAB13;

LAB23:    xsi_set_current_line(119, ng0);
    t3 = ((char*)((ng6)));
    t5 = (t0 + 5424);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 10);
    xsi_set_current_line(120, ng0);
    xsi_set_current_line(120, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5584);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);

LAB24:    t2 = (t0 + 5584);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng5)));
    memset(t4, 0, 8);
    t7 = (t5 + 4);
    if (*((unsigned int *)t7) != 0)
        goto LAB26;

LAB25:    t8 = (t6 + 4);
    if (*((unsigned int *)t8) != 0)
        goto LAB26;

LAB29:    if (*((unsigned int *)t5) < *((unsigned int *)t6))
        goto LAB27;

LAB28:    t12 = (t4 + 4);
    t10 = *((unsigned int *)t12);
    t13 = (~(t10));
    t14 = *((unsigned int *)t4);
    t15 = (t14 & t13);
    t16 = (t15 != 0);
    if (t16 > 0)
        goto LAB30;

LAB31:    xsi_set_current_line(124, ng0);
    t2 = (t0 + 6552);
    xsi_process_wait(t2, 104160000LL);
    *((char **)t1) = &&LAB34;
    goto LAB1;

LAB26:    t9 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB28;

LAB27:    *((unsigned int *)t4) = 1;
    goto LAB28;

LAB30:    xsi_set_current_line(120, ng0);

LAB32:    xsi_set_current_line(121, ng0);
    t17 = (t0 + 6552);
    xsi_process_wait(t17, 8680000LL);
    *((char **)t1) = &&LAB33;
    goto LAB1;

LAB33:    xsi_set_current_line(121, ng0);
    t18 = (t0 + 5424);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t22 = (t0 + 5424);
    t23 = (t22 + 72U);
    t24 = *((char **)t23);
    t25 = (t0 + 5584);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    xsi_vlog_generic_get_index_select_value(t21, 1, t20, t24, 2, t27, 4, 2);
    t28 = (t0 + 5104);
    xsi_vlogvar_assign_value(t28, t21, 0, 0, 1);
    xsi_set_current_line(120, ng0);
    t2 = (t0 + 5584);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng2)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 32, t5, 4, t6, 32);
    t7 = (t0 + 5584);
    xsi_vlogvar_assign_value(t7, t4, 0, 0, 4);
    goto LAB24;

LAB34:    xsi_set_current_line(125, ng0);
    t3 = ((char*)((ng7)));
    t5 = (t0 + 5424);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 10);
    xsi_set_current_line(126, ng0);
    xsi_set_current_line(126, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5584);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);

LAB35:    t2 = (t0 + 5584);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng5)));
    memset(t4, 0, 8);
    t7 = (t5 + 4);
    if (*((unsigned int *)t7) != 0)
        goto LAB37;

LAB36:    t8 = (t6 + 4);
    if (*((unsigned int *)t8) != 0)
        goto LAB37;

LAB40:    if (*((unsigned int *)t5) < *((unsigned int *)t6))
        goto LAB38;

LAB39:    t12 = (t4 + 4);
    t10 = *((unsigned int *)t12);
    t13 = (~(t10));
    t14 = *((unsigned int *)t4);
    t15 = (t14 & t13);
    t16 = (t15 != 0);
    if (t16 > 0)
        goto LAB41;

LAB42:    xsi_set_current_line(130, ng0);
    t2 = (t0 + 6552);
    xsi_process_wait(t2, 104160000LL);
    *((char **)t1) = &&LAB45;
    goto LAB1;

LAB37:    t9 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB39;

LAB38:    *((unsigned int *)t4) = 1;
    goto LAB39;

LAB41:    xsi_set_current_line(126, ng0);

LAB43:    xsi_set_current_line(127, ng0);
    t17 = (t0 + 6552);
    xsi_process_wait(t17, 8680000LL);
    *((char **)t1) = &&LAB44;
    goto LAB1;

LAB44:    xsi_set_current_line(127, ng0);
    t18 = (t0 + 5424);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t22 = (t0 + 5424);
    t23 = (t22 + 72U);
    t24 = *((char **)t23);
    t25 = (t0 + 5584);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    xsi_vlog_generic_get_index_select_value(t21, 1, t20, t24, 2, t27, 4, 2);
    t28 = (t0 + 5104);
    xsi_vlogvar_assign_value(t28, t21, 0, 0, 1);
    xsi_set_current_line(126, ng0);
    t2 = (t0 + 5584);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng2)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 32, t5, 4, t6, 32);
    t7 = (t0 + 5584);
    xsi_vlogvar_assign_value(t7, t4, 0, 0, 4);
    goto LAB35;

LAB45:    xsi_set_current_line(131, ng0);
    t3 = ((char*)((ng7)));
    t5 = (t0 + 5424);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 10);
    xsi_set_current_line(132, ng0);
    xsi_set_current_line(132, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5584);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);

LAB46:    t2 = (t0 + 5584);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng5)));
    memset(t4, 0, 8);
    t7 = (t5 + 4);
    if (*((unsigned int *)t7) != 0)
        goto LAB48;

LAB47:    t8 = (t6 + 4);
    if (*((unsigned int *)t8) != 0)
        goto LAB48;

LAB51:    if (*((unsigned int *)t5) < *((unsigned int *)t6))
        goto LAB49;

LAB50:    t12 = (t4 + 4);
    t10 = *((unsigned int *)t12);
    t13 = (~(t10));
    t14 = *((unsigned int *)t4);
    t15 = (t14 & t13);
    t16 = (t15 != 0);
    if (t16 > 0)
        goto LAB52;

LAB53:    xsi_set_current_line(137, ng0);
    t2 = (t0 + 6552);
    xsi_process_wait(t2, 104160000LL);
    *((char **)t1) = &&LAB56;
    goto LAB1;

LAB48:    t9 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB50;

LAB49:    *((unsigned int *)t4) = 1;
    goto LAB50;

LAB52:    xsi_set_current_line(132, ng0);

LAB54:    xsi_set_current_line(133, ng0);
    t17 = (t0 + 6552);
    xsi_process_wait(t17, 8680000LL);
    *((char **)t1) = &&LAB55;
    goto LAB1;

LAB55:    xsi_set_current_line(133, ng0);
    t18 = (t0 + 5424);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t22 = (t0 + 5424);
    t23 = (t22 + 72U);
    t24 = *((char **)t23);
    t25 = (t0 + 5584);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    xsi_vlog_generic_get_index_select_value(t21, 1, t20, t24, 2, t27, 4, 2);
    t28 = (t0 + 5104);
    xsi_vlogvar_assign_value(t28, t21, 0, 0, 1);
    xsi_set_current_line(132, ng0);
    t2 = (t0 + 5584);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng2)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 32, t5, 4, t6, 32);
    t7 = (t0 + 5584);
    xsi_vlogvar_assign_value(t7, t4, 0, 0, 4);
    goto LAB46;

LAB56:    xsi_set_current_line(138, ng0);
    t3 = ((char*)((ng1)));
    t5 = (t0 + 5264);
    t6 = (t0 + 5264);
    t7 = (t6 + 72U);
    t8 = *((char **)t7);
    t9 = ((char*)((ng1)));
    xsi_vlog_generic_convert_bit_index(t4, t8, 2, t9, 32, 1);
    t12 = (t4 + 4);
    t10 = *((unsigned int *)t12);
    t11 = (!(t10));
    if (t11 == 1)
        goto LAB57;

LAB58:    xsi_set_current_line(139, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 5264);
    t5 = (t0 + 5264);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = ((char*)((ng2)));
    xsi_vlog_generic_convert_bit_index(t4, t7, 2, t8, 32, 1);
    t9 = (t4 + 4);
    t10 = *((unsigned int *)t9);
    t11 = (!(t10));
    if (t11 == 1)
        goto LAB59;

LAB60:    xsi_set_current_line(140, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5264);
    t5 = (t0 + 5264);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = ((char*)((ng3)));
    xsi_vlog_generic_convert_bit_index(t4, t7, 2, t8, 32, 1);
    t9 = (t4 + 4);
    t10 = *((unsigned int *)t9);
    t11 = (!(t10));
    if (t11 == 1)
        goto LAB61;

LAB62:    goto LAB1;

LAB57:    xsi_vlogvar_assign_value(t5, t3, 0, *((unsigned int *)t4), 1);
    goto LAB58;

LAB59:    xsi_vlogvar_assign_value(t3, t2, 0, *((unsigned int *)t4), 1);
    goto LAB60;

LAB61:    xsi_vlogvar_assign_value(t3, t2, 0, *((unsigned int *)t4), 1);
    goto LAB62;

}


extern void work_m_02757944264012398832_2131506033_init()
{
	static char *pe[] = {(void *)Always_95_0,(void *)Initial_99_1};
	xsi_register_didat("work_m_02757944264012398832_2131506033", "isim/BRAM_TEST_with_CACHE_isim_beh.exe.sim/work/m_02757944264012398832_2131506033.didat");
	xsi_register_executes(pe);
}
