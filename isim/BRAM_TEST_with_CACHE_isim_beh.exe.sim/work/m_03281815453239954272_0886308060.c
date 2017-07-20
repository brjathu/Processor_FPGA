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
static const char *ng0 = "/home/brjathu/FPGA/Processor_FPGA/ALU.v";
static unsigned int ng1[] = {0U, 0U};
static int ng2[] = {0, 0};
static unsigned int ng3[] = {1U, 0U};
static int ng4[] = {1, 0};
static unsigned int ng5[] = {2U, 0U};
static unsigned int ng6[] = {3U, 0U};
static int ng7[] = {128, 0};
static unsigned int ng8[] = {4U, 0U};
static unsigned int ng9[] = {5U, 0U};
static unsigned int ng10[] = {6U, 0U};
static unsigned int ng11[] = {7U, 0U};
static unsigned int ng12[] = {8U, 0U};
static unsigned int ng13[] = {9U, 0U};
static unsigned int ng14[] = {10U, 0U};
static unsigned int ng15[] = {11U, 0U};
static unsigned int ng16[] = {12U, 0U};
static unsigned int ng17[] = {13U, 0U};
static unsigned int ng18[] = {14U, 0U};
static unsigned int ng19[] = {15U, 0U};
static unsigned int ng20[] = {16U, 0U};
static unsigned int ng21[] = {17U, 0U};
static int ng22[] = {8, 0};
static unsigned int ng23[] = {18U, 0U};
static unsigned int ng24[] = {19U, 0U};
static unsigned int ng25[] = {20U, 0U};
static unsigned int ng26[] = {21U, 0U};
static unsigned int ng27[] = {22U, 0U};
static unsigned int ng28[] = {23U, 0U};
static unsigned int ng29[] = {24U, 0U};
static unsigned int ng30[] = {0U, 32767U};



static void Cont_71_0(char *t0)
{
    char t3[8];
    char t4[8];
    char *t1;
    char *t2;
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
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    unsigned int t36;
    unsigned int t37;
    char *t38;
    unsigned int t39;
    unsigned int t40;
    char *t41;
    unsigned int t42;
    unsigned int t43;
    char *t44;

LAB0:    t1 = (t0 + 6720U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 5808);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 & 65535U);
    if (t12 != 0)
        goto LAB4;

LAB5:    if (*((unsigned int *)t7) != 0)
        goto LAB6;

LAB7:    memset(t3, 0, 8);
    t14 = (t4 + 4);
    t15 = *((unsigned int *)t14);
    t16 = (~(t15));
    t17 = *((unsigned int *)t4);
    t18 = (t17 & t16);
    t19 = (t18 & 1U);
    if (t19 != 0)
        goto LAB11;

LAB9:    if (*((unsigned int *)t14) == 0)
        goto LAB8;

LAB10:    t20 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t20) = 1;

LAB11:    t21 = (t3 + 4);
    t22 = (t4 + 4);
    t23 = *((unsigned int *)t4);
    t24 = (~(t23));
    *((unsigned int *)t3) = t24;
    *((unsigned int *)t21) = 0;
    if (*((unsigned int *)t22) != 0)
        goto LAB13;

LAB12:    t29 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t29 & 1U);
    t30 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t30 & 1U);
    t31 = (t0 + 7384);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    t34 = (t33 + 56U);
    t35 = *((char **)t34);
    memset(t35, 0, 8);
    t36 = 1U;
    t37 = t36;
    t38 = (t3 + 4);
    t39 = *((unsigned int *)t3);
    t36 = (t36 & t39);
    t40 = *((unsigned int *)t38);
    t37 = (t37 & t40);
    t41 = (t35 + 4);
    t42 = *((unsigned int *)t35);
    *((unsigned int *)t35) = (t42 | t36);
    t43 = *((unsigned int *)t41);
    *((unsigned int *)t41) = (t43 | t37);
    xsi_driver_vfirst_trans(t31, 0, 0);
    t44 = (t0 + 7288);
    *((int *)t44) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t4) = 1;
    goto LAB7;

LAB6:    t13 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t13) = 1;
    goto LAB7;

LAB8:    *((unsigned int *)t3) = 1;
    goto LAB11;

LAB13:    t25 = *((unsigned int *)t3);
    t26 = *((unsigned int *)t22);
    *((unsigned int *)t3) = (t25 | t26);
    t27 = *((unsigned int *)t21);
    t28 = *((unsigned int *)t22);
    *((unsigned int *)t21) = (t27 | t28);
    goto LAB12;

}

static void Always_76_1(char *t0)
{
    char t9[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;

LAB0:    t1 = (t0 + 6968U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(76, ng0);
    t2 = (t0 + 7304);
    *((int *)t2) = 1;
    t3 = (t0 + 7000);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(76, ng0);

LAB5:    xsi_set_current_line(78, ng0);
    t4 = (t0 + 4928U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t4, 5);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 5);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 5);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 5);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng8)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 5);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng9)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 5);
    if (t6 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng10)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 5);
    if (t6 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng11)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 5);
    if (t6 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng12)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 5);
    if (t6 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng13)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 5);
    if (t6 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng14)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 5);
    if (t6 == 1)
        goto LAB27;

LAB28:    t2 = ((char*)((ng15)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 5);
    if (t6 == 1)
        goto LAB29;

LAB30:    t2 = ((char*)((ng16)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 5);
    if (t6 == 1)
        goto LAB31;

LAB32:    t2 = ((char*)((ng17)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 5);
    if (t6 == 1)
        goto LAB33;

LAB34:    t2 = ((char*)((ng18)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 5);
    if (t6 == 1)
        goto LAB35;

LAB36:    t2 = ((char*)((ng19)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 5);
    if (t6 == 1)
        goto LAB37;

LAB38:    t2 = ((char*)((ng20)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 5);
    if (t6 == 1)
        goto LAB39;

LAB40:    t2 = ((char*)((ng21)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 5);
    if (t6 == 1)
        goto LAB41;

LAB42:    t2 = ((char*)((ng23)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 5);
    if (t6 == 1)
        goto LAB43;

LAB44:    t2 = ((char*)((ng24)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 5);
    if (t6 == 1)
        goto LAB45;

LAB46:    t2 = ((char*)((ng25)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 5);
    if (t6 == 1)
        goto LAB47;

LAB48:    t2 = ((char*)((ng26)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 5);
    if (t6 == 1)
        goto LAB49;

LAB50:    t2 = ((char*)((ng27)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 5);
    if (t6 == 1)
        goto LAB51;

LAB52:    t2 = ((char*)((ng28)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 5);
    if (t6 == 1)
        goto LAB53;

LAB54:    t2 = ((char*)((ng29)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 5, t2, 5);
    if (t6 == 1)
        goto LAB55;

LAB56:
LAB57:    goto LAB2;

LAB7:    xsi_set_current_line(79, ng0);
    t7 = ((char*)((ng2)));
    t8 = (t0 + 5808);
    xsi_vlogvar_assign_value(t8, t7, 0, 0, 16);
    goto LAB57;

LAB9:    xsi_set_current_line(80, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t0 + 5808);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 16);
    goto LAB57;

LAB11:    xsi_set_current_line(81, ng0);
    t3 = ((char*)((ng4)));
    memset(t9, 0, 8);
    xsi_vlog_signed_unary_minus(t9, 32, t3, 32);
    t4 = (t0 + 5808);
    xsi_vlogvar_assign_value(t4, t9, 0, 0, 16);
    goto LAB57;

LAB13:    xsi_set_current_line(82, ng0);
    t3 = ((char*)((ng7)));
    t4 = (t0 + 4608U);
    t7 = *((char **)t4);
    memset(t9, 0, 8);
    xsi_vlog_unsigned_add(t9, 32, t3, 32, t7, 16);
    t4 = (t0 + 5808);
    xsi_vlogvar_assign_value(t4, t9, 0, 0, 16);
    goto LAB57;

LAB15:    xsi_set_current_line(83, ng0);
    t3 = (t0 + 4768U);
    t4 = *((char **)t3);
    t3 = (t0 + 5808);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 16);
    goto LAB57;

LAB17:    xsi_set_current_line(84, ng0);
    t3 = (t0 + 4608U);
    t4 = *((char **)t3);
    t3 = (t0 + 5808);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 16);
    goto LAB57;

LAB19:    xsi_set_current_line(85, ng0);
    t3 = (t0 + 4768U);
    t4 = *((char **)t3);
    memset(t9, 0, 8);
    xsi_vlog_unsigned_unary_minus(t9, 16, t4, 16);
    t3 = (t0 + 5808);
    xsi_vlogvar_assign_value(t3, t9, 0, 0, 16);
    goto LAB57;

LAB21:    xsi_set_current_line(86, ng0);
    t3 = (t0 + 4608U);
    t4 = *((char **)t3);
    memset(t9, 0, 8);
    xsi_vlog_unsigned_unary_minus(t9, 16, t4, 16);
    t3 = (t0 + 5808);
    xsi_vlogvar_assign_value(t3, t9, 0, 0, 16);
    goto LAB57;

LAB23:    xsi_set_current_line(87, ng0);
    t3 = (t0 + 4768U);
    t4 = *((char **)t3);
    memset(t9, 0, 8);
    t3 = (t9 + 4);
    t7 = (t4 + 4);
    t10 = *((unsigned int *)t4);
    t11 = (~(t10));
    *((unsigned int *)t9) = t11;
    *((unsigned int *)t3) = 0;
    if (*((unsigned int *)t7) != 0)
        goto LAB59;

LAB58:    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 & 65535U);
    t17 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t17 & 65535U);
    t8 = (t0 + 5808);
    xsi_vlogvar_assign_value(t8, t9, 0, 0, 16);
    goto LAB57;

LAB25:    xsi_set_current_line(88, ng0);
    t3 = (t0 + 4608U);
    t4 = *((char **)t3);
    memset(t9, 0, 8);
    t3 = (t9 + 4);
    t7 = (t4 + 4);
    t10 = *((unsigned int *)t4);
    t11 = (~(t10));
    *((unsigned int *)t9) = t11;
    *((unsigned int *)t3) = 0;
    if (*((unsigned int *)t7) != 0)
        goto LAB61;

LAB60:    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 & 65535U);
    t17 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t17 & 65535U);
    t8 = (t0 + 5808);
    xsi_vlogvar_assign_value(t8, t9, 0, 0, 16);
    goto LAB57;

LAB27:    xsi_set_current_line(89, ng0);
    t3 = (t0 + 4768U);
    t4 = *((char **)t3);
    t3 = (t0 + 4608U);
    t7 = *((char **)t3);
    memset(t9, 0, 8);
    xsi_vlog_unsigned_add(t9, 16, t4, 16, t7, 16);
    t3 = (t0 + 5808);
    xsi_vlogvar_assign_value(t3, t9, 0, 0, 16);
    goto LAB57;

LAB29:    xsi_set_current_line(90, ng0);
    t3 = (t0 + 4608U);
    t4 = *((char **)t3);
    t3 = (t0 + 4768U);
    t7 = *((char **)t3);
    memset(t9, 0, 8);
    xsi_vlog_unsigned_minus(t9, 16, t4, 16, t7, 16);
    t3 = (t0 + 5808);
    xsi_vlogvar_assign_value(t3, t9, 0, 0, 16);
    goto LAB57;

LAB31:    xsi_set_current_line(91, ng0);
    t3 = (t0 + 4768U);
    t4 = *((char **)t3);
    t3 = (t0 + 4608U);
    t7 = *((char **)t3);
    memset(t9, 0, 8);
    xsi_vlog_unsigned_multiply(t9, 16, t4, 16, t7, 16);
    t3 = (t0 + 5808);
    xsi_vlogvar_assign_value(t3, t9, 0, 0, 16);
    goto LAB57;

LAB33:    xsi_set_current_line(92, ng0);
    t3 = (t0 + 4768U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng4)));
    memset(t9, 0, 8);
    xsi_vlog_unsigned_add(t9, 32, t4, 16, t3, 32);
    t7 = (t0 + 5808);
    xsi_vlogvar_assign_value(t7, t9, 0, 0, 16);
    goto LAB57;

LAB35:    xsi_set_current_line(93, ng0);
    t3 = (t0 + 4768U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng4)));
    memset(t9, 0, 8);
    xsi_vlog_unsigned_minus(t9, 32, t4, 16, t3, 32);
    t7 = (t0 + 5808);
    xsi_vlogvar_assign_value(t7, t9, 0, 0, 16);
    goto LAB57;

LAB37:    xsi_set_current_line(94, ng0);
    t3 = (t0 + 4608U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng4)));
    memset(t9, 0, 8);
    xsi_vlog_unsigned_add(t9, 32, t4, 16, t3, 32);
    t7 = (t0 + 5808);
    xsi_vlogvar_assign_value(t7, t9, 0, 0, 16);
    goto LAB57;

LAB39:    xsi_set_current_line(95, ng0);
    t3 = (t0 + 4608U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng4)));
    memset(t9, 0, 8);
    xsi_vlog_unsigned_minus(t9, 32, t4, 16, t3, 32);
    t7 = (t0 + 5808);
    xsi_vlogvar_assign_value(t7, t9, 0, 0, 16);
    goto LAB57;

LAB41:    xsi_set_current_line(96, ng0);
    t3 = (t0 + 4608U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng22)));
    memset(t9, 0, 8);
    xsi_vlog_unsigned_lshift(t9, 16, t4, 16, t3, 32);
    t7 = (t0 + 5808);
    xsi_vlogvar_assign_value(t7, t9, 0, 0, 16);
    goto LAB57;

LAB43:    xsi_set_current_line(97, ng0);
    t3 = (t0 + 4768U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng22)));
    memset(t9, 0, 8);
    xsi_vlog_unsigned_rshift(t9, 16, t4, 16, t3, 32);
    t7 = (t0 + 5808);
    xsi_vlogvar_assign_value(t7, t9, 0, 0, 16);
    goto LAB57;

LAB45:    xsi_set_current_line(98, ng0);
    t3 = (t0 + 4768U);
    t4 = *((char **)t3);
    t3 = (t0 + 4608U);
    t7 = *((char **)t3);
    t10 = *((unsigned int *)t4);
    t11 = *((unsigned int *)t7);
    t12 = (t10 ^ t11);
    *((unsigned int *)t9) = t12;
    t3 = (t4 + 4);
    t8 = (t7 + 4);
    t18 = (t9 + 4);
    t13 = *((unsigned int *)t3);
    t14 = *((unsigned int *)t8);
    t15 = (t13 | t14);
    *((unsigned int *)t18) = t15;
    t16 = *((unsigned int *)t18);
    t17 = (t16 != 0);
    if (t17 == 1)
        goto LAB62;

LAB63:
LAB64:    t21 = (t0 + 5808);
    xsi_vlogvar_assign_value(t21, t9, 0, 0, 16);
    goto LAB57;

LAB47:    xsi_set_current_line(99, ng0);
    t3 = (t0 + 4608U);
    t4 = *((char **)t3);
    t3 = (t0 + 4768U);
    t7 = *((char **)t3);
    memset(t9, 0, 8);
    xsi_vlog_unsigned_lshift(t9, 16, t4, 16, t7, 16);
    t3 = (t0 + 5808);
    xsi_vlogvar_assign_value(t3, t9, 0, 0, 16);
    goto LAB57;

LAB49:    xsi_set_current_line(100, ng0);
    t3 = (t0 + 4608U);
    t4 = *((char **)t3);
    t3 = (t0 + 4768U);
    t7 = *((char **)t3);
    memset(t9, 0, 8);
    xsi_vlog_unsigned_rshift(t9, 16, t4, 16, t7, 16);
    t3 = (t0 + 5808);
    xsi_vlogvar_assign_value(t3, t9, 0, 0, 16);
    goto LAB57;

LAB51:    xsi_set_current_line(101, ng0);
    t3 = (t0 + 4768U);
    t4 = *((char **)t3);
    t3 = (t0 + 4608U);
    t7 = *((char **)t3);
    memset(t9, 0, 8);
    t3 = (t4 + 4);
    if (*((unsigned int *)t3) != 0)
        goto LAB66;

LAB65:    t8 = (t7 + 4);
    if (*((unsigned int *)t8) != 0)
        goto LAB66;

LAB69:    if (*((unsigned int *)t4) < *((unsigned int *)t7))
        goto LAB67;

LAB68:    t21 = (t0 + 5808);
    xsi_vlogvar_assign_value(t21, t9, 0, 0, 16);
    goto LAB57;

LAB53:    xsi_set_current_line(102, ng0);
    t3 = (t0 + 4768U);
    t4 = *((char **)t3);
    t3 = (t0 + 4608U);
    t7 = *((char **)t3);
    memset(t9, 0, 8);
    t3 = (t4 + 4);
    if (*((unsigned int *)t3) != 0)
        goto LAB71;

LAB70:    t8 = (t7 + 4);
    if (*((unsigned int *)t8) != 0)
        goto LAB71;

LAB74:    if (*((unsigned int *)t4) > *((unsigned int *)t7))
        goto LAB72;

LAB73:    t21 = (t0 + 5808);
    xsi_vlogvar_assign_value(t21, t9, 0, 0, 16);
    goto LAB57;

LAB55:    xsi_set_current_line(103, ng0);
    t3 = ((char*)((ng30)));
    t4 = (t0 + 5808);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 16);
    goto LAB57;

LAB59:    t12 = *((unsigned int *)t9);
    t13 = *((unsigned int *)t7);
    *((unsigned int *)t9) = (t12 | t13);
    t14 = *((unsigned int *)t3);
    t15 = *((unsigned int *)t7);
    *((unsigned int *)t3) = (t14 | t15);
    goto LAB58;

LAB61:    t12 = *((unsigned int *)t9);
    t13 = *((unsigned int *)t7);
    *((unsigned int *)t9) = (t12 | t13);
    t14 = *((unsigned int *)t3);
    t15 = *((unsigned int *)t7);
    *((unsigned int *)t3) = (t14 | t15);
    goto LAB60;

LAB62:    t19 = *((unsigned int *)t9);
    t20 = *((unsigned int *)t18);
    *((unsigned int *)t9) = (t19 | t20);
    goto LAB64;

LAB66:    t18 = (t9 + 4);
    *((unsigned int *)t9) = 1;
    *((unsigned int *)t18) = 1;
    goto LAB68;

LAB67:    *((unsigned int *)t9) = 1;
    goto LAB68;

LAB71:    t18 = (t9 + 4);
    *((unsigned int *)t9) = 1;
    *((unsigned int *)t18) = 1;
    goto LAB73;

LAB72:    *((unsigned int *)t9) = 1;
    goto LAB73;

}


extern void work_m_03281815453239954272_0886308060_init()
{
	static char *pe[] = {(void *)Cont_71_0,(void *)Always_76_1};
	xsi_register_didat("work_m_03281815453239954272_0886308060", "isim/BRAM_TEST_with_CACHE_isim_beh.exe.sim/work/m_03281815453239954272_0886308060.didat");
	xsi_register_executes(pe);
}
