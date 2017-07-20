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
static const char *ng0 = "/home/brjathu/FPGA/processor_final_version4-uart_ledsignals_ok/cache.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {240U, 0U};
static int ng3[] = {1, 0};
static unsigned int ng4[] = {15U, 0U};
static int ng5[] = {2, 0};
static unsigned int ng6[] = {4293984255U, 0U, 4294967295U, 0U};
static int ng7[] = {3, 0};



static void Initial_46_0(char *t0)
{
    char t3[8];
    char t4[8];
    char *t1;
    char *t2;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    unsigned int t13;
    int t14;
    char *t15;
    unsigned int t16;
    int t17;
    int t18;
    unsigned int t19;
    unsigned int t20;
    int t21;
    int t22;

LAB0:    xsi_set_current_line(46, ng0);

LAB2:    xsi_set_current_line(47, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 2408);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 1);
    xsi_set_current_line(48, ng0);
    t1 = ((char*)((ng2)));
    t2 = (t0 + 2728);
    t5 = (t0 + 2728);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = (t0 + 2728);
    t9 = (t8 + 64U);
    t10 = *((char **)t9);
    t11 = ((char*)((ng3)));
    xsi_vlog_generic_convert_array_indices(t3, t4, t7, t10, 2, 1, t11, 32, 1);
    t12 = (t3 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (!(t13));
    t15 = (t4 + 4);
    t16 = *((unsigned int *)t15);
    t17 = (!(t16));
    t18 = (t14 && t17);
    if (t18 == 1)
        goto LAB3;

LAB4:    xsi_set_current_line(49, ng0);
    t1 = ((char*)((ng4)));
    t2 = (t0 + 2728);
    t5 = (t0 + 2728);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = (t0 + 2728);
    t9 = (t8 + 64U);
    t10 = *((char **)t9);
    t11 = ((char*)((ng5)));
    xsi_vlog_generic_convert_array_indices(t3, t4, t7, t10, 2, 1, t11, 32, 1);
    t12 = (t3 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (!(t13));
    t15 = (t4 + 4);
    t16 = *((unsigned int *)t15);
    t17 = (!(t16));
    t18 = (t14 && t17);
    if (t18 == 1)
        goto LAB5;

LAB6:    xsi_set_current_line(50, ng0);
    t1 = ((char*)((ng6)));
    t2 = (t0 + 2568);
    t5 = (t0 + 2568);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t8 = (t0 + 2568);
    t9 = (t8 + 64U);
    t10 = *((char **)t9);
    t11 = ((char*)((ng3)));
    xsi_vlog_generic_convert_array_indices(t3, t4, t7, t10, 2, 1, t11, 32, 1);
    t12 = (t3 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (!(t13));
    t15 = (t4 + 4);
    t16 = *((unsigned int *)t15);
    t17 = (!(t16));
    t18 = (t14 && t17);
    if (t18 == 1)
        goto LAB7;

LAB8:
LAB1:    return;
LAB3:    t19 = *((unsigned int *)t3);
    t20 = *((unsigned int *)t4);
    t21 = (t19 - t20);
    t22 = (t21 + 1);
    xsi_vlogvar_assign_value(t2, t1, 0, *((unsigned int *)t4), t22);
    goto LAB4;

LAB5:    t19 = *((unsigned int *)t3);
    t20 = *((unsigned int *)t4);
    t21 = (t19 - t20);
    t22 = (t21 + 1);
    xsi_vlogvar_assign_value(t2, t1, 0, *((unsigned int *)t4), t22);
    goto LAB6;

LAB7:    t19 = *((unsigned int *)t3);
    t20 = *((unsigned int *)t4);
    t21 = (t19 - t20);
    t22 = (t21 + 1);
    xsi_vlogvar_assign_value(t2, t1, 0, *((unsigned int *)t4), t22);
    goto LAB8;

}

static void Always_53_1(char *t0)
{
    char t6[8];
    char t29[8];
    char t36[8];
    char t48[8];
    char t60[8];
    char t82[8];
    char t95[8];
    char t120[16];
    char t127[8];
    char t139[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    char *t27;
    char *t28;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    char *t49;
    char *t50;
    char *t51;
    char *t52;
    char *t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    char *t61;
    char *t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    char *t75;
    char *t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    char *t83;
    char *t84;
    char *t85;
    char *t86;
    char *t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    char *t94;
    char *t96;
    char *t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    unsigned int t104;
    unsigned int t105;
    unsigned int t106;
    unsigned int t107;
    unsigned int t108;
    unsigned int t109;
    char *t110;
    char *t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    unsigned int t116;
    char *t117;
    char *t118;
    char *t119;
    char *t121;
    char *t122;
    char *t123;
    char *t124;
    char *t125;
    char *t126;
    char *t128;
    char *t129;
    char *t130;
    char *t131;
    char *t132;
    unsigned int t133;
    unsigned int t134;
    unsigned int t135;
    unsigned int t136;
    unsigned int t137;
    unsigned int t138;
    char *t140;
    char *t141;
    unsigned int t142;
    unsigned int t143;
    unsigned int t144;
    unsigned int t145;
    unsigned int t146;
    unsigned int t147;
    char *t148;

LAB0:    t1 = (t0 + 3888U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 4208);
    *((int *)t2) = 1;
    t3 = (t0 + 3920);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(53, ng0);

LAB5:    xsi_set_current_line(54, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t4, t5, 0, 0, 16, 0LL);
    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t7 = *((unsigned int *)t3);
    t8 = *((unsigned int *)t2);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t4);
    t11 = *((unsigned int *)t5);
    t12 = (t10 ^ t11);
    t13 = (t9 | t12);
    t14 = *((unsigned int *)t4);
    t15 = *((unsigned int *)t5);
    t16 = (t14 | t15);
    t17 = (~(t16));
    t18 = (t13 & t17);
    if (t18 != 0)
        goto LAB9;

LAB6:    if (t16 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t6) = 1;

LAB9:    t20 = (t6 + 4);
    t21 = *((unsigned int *)t20);
    t22 = (~(t21));
    t23 = *((unsigned int *)t6);
    t24 = (t23 & t22);
    t25 = (t24 != 0);
    if (t25 > 0)
        goto LAB10;

LAB11:
LAB12:    goto LAB2;

LAB8:    t19 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(55, ng0);

LAB13:    xsi_set_current_line(57, ng0);
    t26 = (t0 + 2728);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    t30 = (t0 + 2728);
    t31 = (t30 + 72U);
    t32 = *((char **)t31);
    t33 = (t0 + 2728);
    t34 = (t33 + 64U);
    t35 = *((char **)t34);
    t37 = (t0 + 2088);
    t38 = (t37 + 56U);
    t39 = *((char **)t38);
    memset(t36, 0, 8);
    t40 = (t36 + 4);
    t41 = (t39 + 4);
    t42 = *((unsigned int *)t39);
    t43 = (t42 >> 2);
    *((unsigned int *)t36) = t43;
    t44 = *((unsigned int *)t41);
    t45 = (t44 >> 2);
    *((unsigned int *)t40) = t45;
    t46 = *((unsigned int *)t36);
    *((unsigned int *)t36) = (t46 & 63U);
    t47 = *((unsigned int *)t40);
    *((unsigned int *)t40) = (t47 & 63U);
    xsi_vlog_generic_get_array_select_value(t29, 8, t28, t32, t35, 2, 1, t36, 6, 2);
    t49 = (t0 + 2088);
    t50 = (t49 + 56U);
    t51 = *((char **)t50);
    memset(t48, 0, 8);
    t52 = (t48 + 4);
    t53 = (t51 + 4);
    t54 = *((unsigned int *)t51);
    t55 = (t54 >> 8);
    *((unsigned int *)t48) = t55;
    t56 = *((unsigned int *)t53);
    t57 = (t56 >> 8);
    *((unsigned int *)t52) = t57;
    t58 = *((unsigned int *)t48);
    *((unsigned int *)t48) = (t58 & 255U);
    t59 = *((unsigned int *)t52);
    *((unsigned int *)t52) = (t59 & 255U);
    memset(t60, 0, 8);
    t61 = (t29 + 4);
    t62 = (t48 + 4);
    t63 = *((unsigned int *)t29);
    t64 = *((unsigned int *)t48);
    t65 = (t63 ^ t64);
    t66 = *((unsigned int *)t61);
    t67 = *((unsigned int *)t62);
    t68 = (t66 ^ t67);
    t69 = (t65 | t68);
    t70 = *((unsigned int *)t61);
    t71 = *((unsigned int *)t62);
    t72 = (t70 | t71);
    t73 = (~(t72));
    t74 = (t69 & t73);
    if (t74 != 0)
        goto LAB17;

LAB14:    if (t72 != 0)
        goto LAB16;

LAB15:    *((unsigned int *)t60) = 1;

LAB17:    t76 = (t60 + 4);
    t77 = *((unsigned int *)t76);
    t78 = (~(t77));
    t79 = *((unsigned int *)t60);
    t80 = (t79 & t78);
    t81 = (t80 != 0);
    if (t81 > 0)
        goto LAB18;

LAB19:    xsi_set_current_line(72, ng0);

LAB54:
LAB20:    goto LAB12;

LAB16:    t75 = (t60 + 4);
    *((unsigned int *)t60) = 1;
    *((unsigned int *)t75) = 1;
    goto LAB17;

LAB18:    xsi_set_current_line(57, ng0);

LAB21:    xsi_set_current_line(58, ng0);
    t83 = (t0 + 2088);
    t84 = (t83 + 56U);
    t85 = *((char **)t84);
    memset(t82, 0, 8);
    t86 = (t82 + 4);
    t87 = (t85 + 4);
    t88 = *((unsigned int *)t85);
    t89 = (t88 >> 0);
    *((unsigned int *)t82) = t89;
    t90 = *((unsigned int *)t87);
    t91 = (t90 >> 0);
    *((unsigned int *)t86) = t91;
    t92 = *((unsigned int *)t82);
    *((unsigned int *)t82) = (t92 & 3U);
    t93 = *((unsigned int *)t86);
    *((unsigned int *)t86) = (t93 & 3U);
    t94 = ((char*)((ng1)));
    memset(t95, 0, 8);
    t96 = (t82 + 4);
    t97 = (t94 + 4);
    t98 = *((unsigned int *)t82);
    t99 = *((unsigned int *)t94);
    t100 = (t98 ^ t99);
    t101 = *((unsigned int *)t96);
    t102 = *((unsigned int *)t97);
    t103 = (t101 ^ t102);
    t104 = (t100 | t103);
    t105 = *((unsigned int *)t96);
    t106 = *((unsigned int *)t97);
    t107 = (t105 | t106);
    t108 = (~(t107));
    t109 = (t104 & t108);
    if (t109 != 0)
        goto LAB25;

LAB22:    if (t107 != 0)
        goto LAB24;

LAB23:    *((unsigned int *)t95) = 1;

LAB25:    t111 = (t95 + 4);
    t112 = *((unsigned int *)t111);
    t113 = (~(t112));
    t114 = *((unsigned int *)t95);
    t115 = (t114 & t113);
    t116 = (t115 != 0);
    if (t116 > 0)
        goto LAB26;

LAB27:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t6, 0, 8);
    t5 = (t6 + 4);
    t19 = (t4 + 4);
    t7 = *((unsigned int *)t4);
    t8 = (t7 >> 0);
    *((unsigned int *)t6) = t8;
    t9 = *((unsigned int *)t19);
    t10 = (t9 >> 0);
    *((unsigned int *)t5) = t10;
    t11 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t11 & 3U);
    t12 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t12 & 3U);
    t20 = ((char*)((ng3)));
    memset(t29, 0, 8);
    t26 = (t6 + 4);
    t27 = (t20 + 4);
    t13 = *((unsigned int *)t6);
    t14 = *((unsigned int *)t20);
    t15 = (t13 ^ t14);
    t16 = *((unsigned int *)t26);
    t17 = *((unsigned int *)t27);
    t18 = (t16 ^ t17);
    t21 = (t15 | t18);
    t22 = *((unsigned int *)t26);
    t23 = *((unsigned int *)t27);
    t24 = (t22 | t23);
    t25 = (~(t24));
    t42 = (t21 & t25);
    if (t42 != 0)
        goto LAB33;

LAB30:    if (t24 != 0)
        goto LAB32;

LAB31:    *((unsigned int *)t29) = 1;

LAB33:    t30 = (t29 + 4);
    t43 = *((unsigned int *)t30);
    t44 = (~(t43));
    t45 = *((unsigned int *)t29);
    t46 = (t45 & t44);
    t47 = (t46 != 0);
    if (t47 > 0)
        goto LAB34;

LAB35:    xsi_set_current_line(64, ng0);
    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t6, 0, 8);
    t5 = (t6 + 4);
    t19 = (t4 + 4);
    t7 = *((unsigned int *)t4);
    t8 = (t7 >> 0);
    *((unsigned int *)t6) = t8;
    t9 = *((unsigned int *)t19);
    t10 = (t9 >> 0);
    *((unsigned int *)t5) = t10;
    t11 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t11 & 3U);
    t12 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t12 & 3U);
    t20 = ((char*)((ng5)));
    memset(t29, 0, 8);
    t26 = (t6 + 4);
    t27 = (t20 + 4);
    t13 = *((unsigned int *)t6);
    t14 = *((unsigned int *)t20);
    t15 = (t13 ^ t14);
    t16 = *((unsigned int *)t26);
    t17 = *((unsigned int *)t27);
    t18 = (t16 ^ t17);
    t21 = (t15 | t18);
    t22 = *((unsigned int *)t26);
    t23 = *((unsigned int *)t27);
    t24 = (t22 | t23);
    t25 = (~(t24));
    t42 = (t21 & t25);
    if (t42 != 0)
        goto LAB41;

LAB38:    if (t24 != 0)
        goto LAB40;

LAB39:    *((unsigned int *)t29) = 1;

LAB41:    t30 = (t29 + 4);
    t43 = *((unsigned int *)t30);
    t44 = (~(t43));
    t45 = *((unsigned int *)t29);
    t46 = (t45 & t44);
    t47 = (t46 != 0);
    if (t47 > 0)
        goto LAB42;

LAB43:    xsi_set_current_line(67, ng0);
    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t6, 0, 8);
    t5 = (t6 + 4);
    t19 = (t4 + 4);
    t7 = *((unsigned int *)t4);
    t8 = (t7 >> 0);
    *((unsigned int *)t6) = t8;
    t9 = *((unsigned int *)t19);
    t10 = (t9 >> 0);
    *((unsigned int *)t5) = t10;
    t11 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t11 & 3U);
    t12 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t12 & 3U);
    t20 = ((char*)((ng7)));
    memset(t29, 0, 8);
    t26 = (t6 + 4);
    t27 = (t20 + 4);
    t13 = *((unsigned int *)t6);
    t14 = *((unsigned int *)t20);
    t15 = (t13 ^ t14);
    t16 = *((unsigned int *)t26);
    t17 = *((unsigned int *)t27);
    t18 = (t16 ^ t17);
    t21 = (t15 | t18);
    t22 = *((unsigned int *)t26);
    t23 = *((unsigned int *)t27);
    t24 = (t22 | t23);
    t25 = (~(t24));
    t42 = (t21 & t25);
    if (t42 != 0)
        goto LAB49;

LAB46:    if (t24 != 0)
        goto LAB48;

LAB47:    *((unsigned int *)t29) = 1;

LAB49:    t30 = (t29 + 4);
    t43 = *((unsigned int *)t30);
    t44 = (~(t43));
    t45 = *((unsigned int *)t29);
    t46 = (t45 & t44);
    t47 = (t46 != 0);
    if (t47 > 0)
        goto LAB50;

LAB51:
LAB52:
LAB44:
LAB36:
LAB28:    goto LAB20;

LAB24:    t110 = (t95 + 4);
    *((unsigned int *)t95) = 1;
    *((unsigned int *)t110) = 1;
    goto LAB25;

LAB26:    xsi_set_current_line(58, ng0);

LAB29:    xsi_set_current_line(59, ng0);
    t117 = (t0 + 2568);
    t118 = (t117 + 56U);
    t119 = *((char **)t118);
    t121 = (t0 + 2568);
    t122 = (t121 + 72U);
    t123 = *((char **)t122);
    t124 = (t0 + 2568);
    t125 = (t124 + 64U);
    t126 = *((char **)t125);
    t128 = (t0 + 2088);
    t129 = (t128 + 56U);
    t130 = *((char **)t129);
    memset(t127, 0, 8);
    t131 = (t127 + 4);
    t132 = (t130 + 4);
    t133 = *((unsigned int *)t130);
    t134 = (t133 >> 2);
    *((unsigned int *)t127) = t134;
    t135 = *((unsigned int *)t132);
    t136 = (t135 >> 2);
    *((unsigned int *)t131) = t136;
    t137 = *((unsigned int *)t127);
    *((unsigned int *)t127) = (t137 & 63U);
    t138 = *((unsigned int *)t131);
    *((unsigned int *)t131) = (t138 & 63U);
    xsi_vlog_generic_get_array_select_value(t120, 64, t119, t123, t126, 2, 1, t127, 6, 2);
    memset(t139, 0, 8);
    t140 = (t139 + 4);
    t141 = (t120 + 4);
    t142 = *((unsigned int *)t120);
    t143 = (t142 >> 0);
    *((unsigned int *)t139) = t143;
    t144 = *((unsigned int *)t141);
    t145 = (t144 >> 0);
    *((unsigned int *)t140) = t145;
    t146 = *((unsigned int *)t139);
    *((unsigned int *)t139) = (t146 & 65535U);
    t147 = *((unsigned int *)t140);
    *((unsigned int *)t140) = (t147 & 65535U);
    t148 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t148, t139, 0, 0, 16, 0LL);
    goto LAB28;

LAB32:    t28 = (t29 + 4);
    *((unsigned int *)t29) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB33;

LAB34:    xsi_set_current_line(61, ng0);

LAB37:    xsi_set_current_line(62, ng0);
    t31 = (t0 + 2568);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    t34 = (t0 + 2568);
    t35 = (t34 + 72U);
    t37 = *((char **)t35);
    t38 = (t0 + 2568);
    t39 = (t38 + 64U);
    t40 = *((char **)t39);
    t41 = (t0 + 2088);
    t49 = (t41 + 56U);
    t50 = *((char **)t49);
    memset(t36, 0, 8);
    t51 = (t36 + 4);
    t52 = (t50 + 4);
    t54 = *((unsigned int *)t50);
    t55 = (t54 >> 2);
    *((unsigned int *)t36) = t55;
    t56 = *((unsigned int *)t52);
    t57 = (t56 >> 2);
    *((unsigned int *)t51) = t57;
    t58 = *((unsigned int *)t36);
    *((unsigned int *)t36) = (t58 & 63U);
    t59 = *((unsigned int *)t51);
    *((unsigned int *)t51) = (t59 & 63U);
    xsi_vlog_generic_get_array_select_value(t120, 64, t33, t37, t40, 2, 1, t36, 6, 2);
    memset(t48, 0, 8);
    t53 = (t48 + 4);
    t61 = (t120 + 4);
    t63 = *((unsigned int *)t120);
    t64 = (t63 >> 16);
    *((unsigned int *)t48) = t64;
    t65 = *((unsigned int *)t61);
    t66 = (t65 >> 16);
    *((unsigned int *)t53) = t66;
    t67 = *((unsigned int *)t48);
    *((unsigned int *)t48) = (t67 & 65535U);
    t68 = *((unsigned int *)t53);
    *((unsigned int *)t53) = (t68 & 65535U);
    t62 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t62, t48, 0, 0, 16, 0LL);
    goto LAB36;

LAB40:    t28 = (t29 + 4);
    *((unsigned int *)t29) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB41;

LAB42:    xsi_set_current_line(64, ng0);

LAB45:    xsi_set_current_line(65, ng0);
    t31 = (t0 + 2568);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    t34 = (t0 + 2568);
    t35 = (t34 + 72U);
    t37 = *((char **)t35);
    t38 = (t0 + 2568);
    t39 = (t38 + 64U);
    t40 = *((char **)t39);
    t41 = (t0 + 2088);
    t49 = (t41 + 56U);
    t50 = *((char **)t49);
    memset(t36, 0, 8);
    t51 = (t36 + 4);
    t52 = (t50 + 4);
    t54 = *((unsigned int *)t50);
    t55 = (t54 >> 2);
    *((unsigned int *)t36) = t55;
    t56 = *((unsigned int *)t52);
    t57 = (t56 >> 2);
    *((unsigned int *)t51) = t57;
    t58 = *((unsigned int *)t36);
    *((unsigned int *)t36) = (t58 & 63U);
    t59 = *((unsigned int *)t51);
    *((unsigned int *)t51) = (t59 & 63U);
    xsi_vlog_generic_get_array_select_value(t120, 64, t33, t37, t40, 2, 1, t36, 6, 2);
    memset(t48, 0, 8);
    t53 = (t48 + 4);
    t61 = (t120 + 8);
    t62 = (t120 + 12);
    t63 = *((unsigned int *)t61);
    t64 = (t63 >> 0);
    *((unsigned int *)t48) = t64;
    t65 = *((unsigned int *)t62);
    t66 = (t65 >> 0);
    *((unsigned int *)t53) = t66;
    t67 = *((unsigned int *)t48);
    *((unsigned int *)t48) = (t67 & 65535U);
    t68 = *((unsigned int *)t53);
    *((unsigned int *)t53) = (t68 & 65535U);
    t75 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t75, t48, 0, 0, 16, 0LL);
    goto LAB44;

LAB48:    t28 = (t29 + 4);
    *((unsigned int *)t29) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB49;

LAB50:    xsi_set_current_line(67, ng0);

LAB53:    xsi_set_current_line(68, ng0);
    t31 = (t0 + 2568);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    t34 = (t0 + 2568);
    t35 = (t34 + 72U);
    t37 = *((char **)t35);
    t38 = (t0 + 2568);
    t39 = (t38 + 64U);
    t40 = *((char **)t39);
    t41 = (t0 + 2088);
    t49 = (t41 + 56U);
    t50 = *((char **)t49);
    memset(t36, 0, 8);
    t51 = (t36 + 4);
    t52 = (t50 + 4);
    t54 = *((unsigned int *)t50);
    t55 = (t54 >> 2);
    *((unsigned int *)t36) = t55;
    t56 = *((unsigned int *)t52);
    t57 = (t56 >> 2);
    *((unsigned int *)t51) = t57;
    t58 = *((unsigned int *)t36);
    *((unsigned int *)t36) = (t58 & 63U);
    t59 = *((unsigned int *)t51);
    *((unsigned int *)t51) = (t59 & 63U);
    xsi_vlog_generic_get_array_select_value(t120, 64, t33, t37, t40, 2, 1, t36, 6, 2);
    memset(t48, 0, 8);
    t53 = (t48 + 4);
    t61 = (t120 + 8);
    t62 = (t120 + 12);
    t63 = *((unsigned int *)t61);
    t64 = (t63 >> 16);
    *((unsigned int *)t48) = t64;
    t65 = *((unsigned int *)t62);
    t66 = (t65 >> 16);
    *((unsigned int *)t53) = t66;
    t67 = *((unsigned int *)t48);
    *((unsigned int *)t48) = (t67 & 65535U);
    t68 = *((unsigned int *)t53);
    *((unsigned int *)t53) = (t68 & 65535U);
    t75 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t75, t48, 0, 0, 16, 0LL);
    goto LAB52;

}


extern void work_m_04309826503818459715_1334121354_init()
{
	static char *pe[] = {(void *)Initial_46_0,(void *)Always_53_1};
	xsi_register_didat("work_m_04309826503818459715_1334121354", "isim/cache_test_isim_beh.exe.sim/work/m_04309826503818459715_1334121354.didat");
	xsi_register_executes(pe);
}
