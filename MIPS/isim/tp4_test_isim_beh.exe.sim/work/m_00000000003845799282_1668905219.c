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

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "//vboxsrv/win7VM/workspace/ArquitecturaDeComputadoras/TP4_Final/MIPS/HazardDetectionUnit.v";
static unsigned int ng1[] = {21U, 0U};
static int ng2[] = {0, 0};
static int ng3[] = {1, 0};



static void Always_39_0(char *t0)
{
    char t6[8];
    char t30[8];
    char t34[8];
    char t49[8];
    char t64[8];
    char t72[8];
    char t100[8];
    char t108[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
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
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t40;
    char *t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    char *t46;
    char *t47;
    char *t48;
    char *t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    char *t63;
    char *t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    char *t71;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    char *t76;
    char *t77;
    char *t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    char *t86;
    char *t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    int t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    char *t101;
    unsigned int t102;
    unsigned int t103;
    unsigned int t104;
    unsigned int t105;
    unsigned int t106;
    char *t107;
    unsigned int t109;
    unsigned int t110;
    unsigned int t111;
    char *t112;
    char *t113;
    char *t114;
    unsigned int t115;
    unsigned int t116;
    unsigned int t117;
    unsigned int t118;
    unsigned int t119;
    unsigned int t120;
    unsigned int t121;
    char *t122;
    char *t123;
    unsigned int t124;
    unsigned int t125;
    unsigned int t126;
    unsigned int t127;
    unsigned int t128;
    unsigned int t129;
    unsigned int t130;
    unsigned int t131;
    int t132;
    int t133;
    unsigned int t134;
    unsigned int t135;
    unsigned int t136;
    unsigned int t137;
    unsigned int t138;
    unsigned int t139;
    char *t140;
    unsigned int t141;
    unsigned int t142;
    unsigned int t143;
    unsigned int t144;
    unsigned int t145;
    char *t146;
    char *t147;

LAB0:    t1 = (t0 + 2168U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 2364);
    *((int *)t2) = 1;
    t3 = (t0 + 2196);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(40, ng0);

LAB5:    xsi_set_current_line(41, ng0);
    t4 = (t0 + 1140U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t4 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t4);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB9;

LAB6:    if (t18 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t6) = 1;

LAB9:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(44, ng0);

LAB13:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 1232U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t3 + 4);
    t9 = *((unsigned int *)t2);
    t10 = (~(t9));
    t11 = *((unsigned int *)t3);
    t12 = (t11 & t10);
    t13 = (t12 & 1U);
    if (t13 != 0)
        goto LAB14;

LAB15:    if (*((unsigned int *)t2) != 0)
        goto LAB16;

LAB17:    t5 = (t6 + 4);
    t14 = *((unsigned int *)t6);
    t15 = *((unsigned int *)t5);
    t16 = (t14 || t15);
    if (t16 > 0)
        goto LAB18;

LAB19:    memcpy(t108, t6, 8);

LAB20:    t140 = (t108 + 4);
    t141 = *((unsigned int *)t140);
    t142 = (~(t141));
    t143 = *((unsigned int *)t108);
    t144 = (t143 & t142);
    t145 = (t144 != 0);
    if (t145 > 0)
        goto LAB50;

LAB51:    xsi_set_current_line(54, ng0);

LAB54:    xsi_set_current_line(55, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1460);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(56, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1552);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(57, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1644);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);

LAB52:
LAB12:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(42, ng0);
    t28 = ((char*)((ng2)));
    t29 = (t0 + 1460);
    xsi_vlogvar_assign_value(t29, t28, 0, 0, 1);
    goto LAB12;

LAB14:    *((unsigned int *)t6) = 1;
    goto LAB17;

LAB16:    t4 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t4) = 1;
    goto LAB17;

LAB18:    t7 = (t0 + 1048U);
    t8 = *((char **)t7);
    t7 = (t0 + 864U);
    t21 = *((char **)t7);
    memset(t30, 0, 8);
    t7 = (t8 + 4);
    t22 = (t21 + 4);
    t17 = *((unsigned int *)t8);
    t18 = *((unsigned int *)t21);
    t19 = (t17 ^ t18);
    t20 = *((unsigned int *)t7);
    t23 = *((unsigned int *)t22);
    t24 = (t20 ^ t23);
    t25 = (t19 | t24);
    t26 = *((unsigned int *)t7);
    t27 = *((unsigned int *)t22);
    t31 = (t26 | t27);
    t32 = (~(t31));
    t33 = (t25 & t32);
    if (t33 != 0)
        goto LAB24;

LAB21:    if (t31 != 0)
        goto LAB23;

LAB22:    *((unsigned int *)t30) = 1;

LAB24:    memset(t34, 0, 8);
    t29 = (t30 + 4);
    t35 = *((unsigned int *)t29);
    t36 = (~(t35));
    t37 = *((unsigned int *)t30);
    t38 = (t37 & t36);
    t39 = (t38 & 1U);
    if (t39 != 0)
        goto LAB25;

LAB26:    if (*((unsigned int *)t29) != 0)
        goto LAB27;

LAB28:    t41 = (t34 + 4);
    t42 = *((unsigned int *)t34);
    t43 = (!(t42));
    t44 = *((unsigned int *)t41);
    t45 = (t43 || t44);
    if (t45 > 0)
        goto LAB29;

LAB30:    memcpy(t72, t34, 8);

LAB31:    memset(t100, 0, 8);
    t101 = (t72 + 4);
    t102 = *((unsigned int *)t101);
    t103 = (~(t102));
    t104 = *((unsigned int *)t72);
    t105 = (t104 & t103);
    t106 = (t105 & 1U);
    if (t106 != 0)
        goto LAB43;

LAB44:    if (*((unsigned int *)t101) != 0)
        goto LAB45;

LAB46:    t109 = *((unsigned int *)t6);
    t110 = *((unsigned int *)t100);
    t111 = (t109 & t110);
    *((unsigned int *)t108) = t111;
    t112 = (t6 + 4);
    t113 = (t100 + 4);
    t114 = (t108 + 4);
    t115 = *((unsigned int *)t112);
    t116 = *((unsigned int *)t113);
    t117 = (t115 | t116);
    *((unsigned int *)t114) = t117;
    t118 = *((unsigned int *)t114);
    t119 = (t118 != 0);
    if (t119 == 1)
        goto LAB47;

LAB48:
LAB49:    goto LAB20;

LAB23:    t28 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB24;

LAB25:    *((unsigned int *)t34) = 1;
    goto LAB28;

LAB27:    t40 = (t34 + 4);
    *((unsigned int *)t34) = 1;
    *((unsigned int *)t40) = 1;
    goto LAB28;

LAB29:    t46 = (t0 + 1048U);
    t47 = *((char **)t46);
    t46 = (t0 + 956U);
    t48 = *((char **)t46);
    memset(t49, 0, 8);
    t46 = (t47 + 4);
    t50 = (t48 + 4);
    t51 = *((unsigned int *)t47);
    t52 = *((unsigned int *)t48);
    t53 = (t51 ^ t52);
    t54 = *((unsigned int *)t46);
    t55 = *((unsigned int *)t50);
    t56 = (t54 ^ t55);
    t57 = (t53 | t56);
    t58 = *((unsigned int *)t46);
    t59 = *((unsigned int *)t50);
    t60 = (t58 | t59);
    t61 = (~(t60));
    t62 = (t57 & t61);
    if (t62 != 0)
        goto LAB35;

LAB32:    if (t60 != 0)
        goto LAB34;

LAB33:    *((unsigned int *)t49) = 1;

LAB35:    memset(t64, 0, 8);
    t65 = (t49 + 4);
    t66 = *((unsigned int *)t65);
    t67 = (~(t66));
    t68 = *((unsigned int *)t49);
    t69 = (t68 & t67);
    t70 = (t69 & 1U);
    if (t70 != 0)
        goto LAB36;

LAB37:    if (*((unsigned int *)t65) != 0)
        goto LAB38;

LAB39:    t73 = *((unsigned int *)t34);
    t74 = *((unsigned int *)t64);
    t75 = (t73 | t74);
    *((unsigned int *)t72) = t75;
    t76 = (t34 + 4);
    t77 = (t64 + 4);
    t78 = (t72 + 4);
    t79 = *((unsigned int *)t76);
    t80 = *((unsigned int *)t77);
    t81 = (t79 | t80);
    *((unsigned int *)t78) = t81;
    t82 = *((unsigned int *)t78);
    t83 = (t82 != 0);
    if (t83 == 1)
        goto LAB40;

LAB41:
LAB42:    goto LAB31;

LAB34:    t63 = (t49 + 4);
    *((unsigned int *)t49) = 1;
    *((unsigned int *)t63) = 1;
    goto LAB35;

LAB36:    *((unsigned int *)t64) = 1;
    goto LAB39;

LAB38:    t71 = (t64 + 4);
    *((unsigned int *)t64) = 1;
    *((unsigned int *)t71) = 1;
    goto LAB39;

LAB40:    t84 = *((unsigned int *)t72);
    t85 = *((unsigned int *)t78);
    *((unsigned int *)t72) = (t84 | t85);
    t86 = (t34 + 4);
    t87 = (t64 + 4);
    t88 = *((unsigned int *)t86);
    t89 = (~(t88));
    t90 = *((unsigned int *)t34);
    t91 = (t90 & t89);
    t92 = *((unsigned int *)t87);
    t93 = (~(t92));
    t94 = *((unsigned int *)t64);
    t95 = (t94 & t93);
    t96 = (~(t91));
    t97 = (~(t95));
    t98 = *((unsigned int *)t78);
    *((unsigned int *)t78) = (t98 & t96);
    t99 = *((unsigned int *)t78);
    *((unsigned int *)t78) = (t99 & t97);
    goto LAB42;

LAB43:    *((unsigned int *)t100) = 1;
    goto LAB46;

LAB45:    t107 = (t100 + 4);
    *((unsigned int *)t100) = 1;
    *((unsigned int *)t107) = 1;
    goto LAB46;

LAB47:    t120 = *((unsigned int *)t108);
    t121 = *((unsigned int *)t114);
    *((unsigned int *)t108) = (t120 | t121);
    t122 = (t6 + 4);
    t123 = (t100 + 4);
    t124 = *((unsigned int *)t6);
    t125 = (~(t124));
    t126 = *((unsigned int *)t122);
    t127 = (~(t126));
    t128 = *((unsigned int *)t100);
    t129 = (~(t128));
    t130 = *((unsigned int *)t123);
    t131 = (~(t130));
    t132 = (t125 & t127);
    t133 = (t129 & t131);
    t134 = (~(t132));
    t135 = (~(t133));
    t136 = *((unsigned int *)t114);
    *((unsigned int *)t114) = (t136 & t134);
    t137 = *((unsigned int *)t114);
    *((unsigned int *)t114) = (t137 & t135);
    t138 = *((unsigned int *)t108);
    *((unsigned int *)t108) = (t138 & t134);
    t139 = *((unsigned int *)t108);
    *((unsigned int *)t108) = (t139 & t135);
    goto LAB49;

LAB50:    xsi_set_current_line(47, ng0);

LAB53:    xsi_set_current_line(49, ng0);
    t146 = ((char*)((ng2)));
    t147 = (t0 + 1460);
    xsi_vlogvar_assign_value(t147, t146, 0, 0, 1);
    xsi_set_current_line(50, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1552);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(51, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1644);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB52;

}


extern void work_m_00000000003845799282_1668905219_init()
{
	static char *pe[] = {(void *)Always_39_0};
	xsi_register_didat("work_m_00000000003845799282_1668905219", "isim/tp4_test_isim_beh.exe.sim/work/m_00000000003845799282_1668905219.didat");
	xsi_register_executes(pe);
}
