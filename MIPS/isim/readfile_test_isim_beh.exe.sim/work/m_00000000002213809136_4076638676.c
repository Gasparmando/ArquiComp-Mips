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
static const char *ng0 = "//vboxsrv/win7VM/workspace/ArquitecturaDeComputadoras/TP4_Final/MIPS/TP4.v";
static unsigned int ng1[] = {1U, 0U};
static int ng2[] = {0, 0};
static unsigned int ng3[] = {2U, 0U};
static int ng4[] = {32, 0};
static int ng5[] = {1, 0};
static unsigned int ng6[] = {4U, 0U};



static void Always_185_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;

LAB0:    t1 = (t0 + 15944U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(185, ng0);
    t2 = (t0 + 16428);
    *((int *)t2) = 1;
    t3 = (t0 + 15972);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(186, ng0);

LAB5:    xsi_set_current_line(187, ng0);
    t4 = (t0 + 932U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(193, ng0);

LAB10:    xsi_set_current_line(194, ng0);
    t2 = (t0 + 14592);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 14500);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 3, 0LL);
    xsi_set_current_line(195, ng0);
    t2 = (t0 + 14776);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 14684);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 32, 0LL);

LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(188, ng0);

LAB9:    xsi_set_current_line(189, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 14500);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 3, 0LL);
    xsi_set_current_line(190, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 14684);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    goto LAB8;

}

static void Always_199_1(char *t0)
{
    char t9[8];
    char t34[8];
    char t41[8];
    char t45[8];
    char t53[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    char *t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;
    char *t33;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    char *t39;
    char *t40;
    char *t42;
    char *t43;
    char *t44;
    char *t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    char *t52;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    char *t57;
    char *t58;
    char *t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    char *t67;
    char *t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    char *t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    char *t87;
    char *t88;

LAB0:    t1 = (t0 + 16088U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(199, ng0);
    t2 = (t0 + 16436);
    *((int *)t2) = 1;
    t3 = (t0 + 16116);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(200, ng0);

LAB5:    xsi_set_current_line(201, ng0);
    t4 = (t0 + 14500);
    t5 = (t4 + 36U);
    t6 = *((char **)t5);
    t7 = (t0 + 14592);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 3);
    xsi_set_current_line(202, ng0);
    t2 = (t0 + 14684);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 14776);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 32);
    xsi_set_current_line(203, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 14040);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(204, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 14316);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(205, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 14408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(206, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 15328);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(207, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 15420);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(209, ng0);
    t2 = (t0 + 14500);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);

LAB6:    t5 = ((char*)((ng1)));
    t8 = xsi_vlog_unsigned_case_compare(t4, 3, t5, 3);
    if (t8 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng3)));
    t8 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t8 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng6)));
    t8 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t8 == 1)
        goto LAB11;

LAB12:
LAB13:    goto LAB2;

LAB7:    xsi_set_current_line(211, ng0);

LAB14:    xsi_set_current_line(212, ng0);
    t6 = (t0 + 13536U);
    t7 = *((char **)t6);
    memset(t9, 0, 8);
    t6 = (t7 + 4);
    t10 = *((unsigned int *)t6);
    t11 = (~(t10));
    t12 = *((unsigned int *)t7);
    t13 = (t12 & t11);
    t14 = (t13 & 1U);
    if (t14 != 0)
        goto LAB18;

LAB16:    if (*((unsigned int *)t6) == 0)
        goto LAB15;

LAB17:    t15 = (t9 + 4);
    *((unsigned int *)t9) = 1;
    *((unsigned int *)t15) = 1;

LAB18:    t16 = (t9 + 4);
    t17 = (t7 + 4);
    t18 = *((unsigned int *)t7);
    t19 = (~(t18));
    *((unsigned int *)t9) = t19;
    *((unsigned int *)t16) = 0;
    if (*((unsigned int *)t17) != 0)
        goto LAB20;

LAB19:    t24 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t24 & 1U);
    t25 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t25 & 1U);
    t26 = (t9 + 4);
    t27 = *((unsigned int *)t26);
    t28 = (~(t27));
    t29 = *((unsigned int *)t9);
    t30 = (t29 & t28);
    t31 = (t30 != 0);
    if (t31 > 0)
        goto LAB21;

LAB22:    xsi_set_current_line(218, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 14592);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);

LAB23:    goto LAB13;

LAB9:    xsi_set_current_line(223, ng0);

LAB25:    xsi_set_current_line(225, ng0);
    t3 = (t0 + 13536U);
    t5 = *((char **)t3);
    memset(t9, 0, 8);
    t3 = (t5 + 4);
    t10 = *((unsigned int *)t3);
    t11 = (~(t10));
    t12 = *((unsigned int *)t5);
    t13 = (t12 & t11);
    t14 = (t13 & 1U);
    if (t14 != 0)
        goto LAB29;

LAB27:    if (*((unsigned int *)t3) == 0)
        goto LAB26;

LAB28:    t6 = (t9 + 4);
    *((unsigned int *)t9) = 1;
    *((unsigned int *)t6) = 1;

LAB29:    t7 = (t9 + 4);
    t15 = (t5 + 4);
    t18 = *((unsigned int *)t5);
    t19 = (~(t18));
    *((unsigned int *)t9) = t19;
    *((unsigned int *)t7) = 0;
    if (*((unsigned int *)t15) != 0)
        goto LAB31;

LAB30:    t24 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t24 & 1U);
    t25 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t25 & 1U);
    memset(t34, 0, 8);
    t16 = (t9 + 4);
    t27 = *((unsigned int *)t16);
    t28 = (~(t27));
    t29 = *((unsigned int *)t9);
    t30 = (t29 & t28);
    t31 = (t30 & 1U);
    if (t31 != 0)
        goto LAB32;

LAB33:    if (*((unsigned int *)t16) != 0)
        goto LAB34;

LAB35:    t26 = (t34 + 4);
    t35 = *((unsigned int *)t34);
    t36 = (!(t35));
    t37 = *((unsigned int *)t26);
    t38 = (t36 || t37);
    if (t38 > 0)
        goto LAB36;

LAB37:    memcpy(t53, t34, 8);

LAB38:    t81 = (t53 + 4);
    t82 = *((unsigned int *)t81);
    t83 = (~(t82));
    t84 = *((unsigned int *)t53);
    t85 = (t84 & t83);
    t86 = (t85 != 0);
    if (t86 > 0)
        goto LAB51;

LAB52:    xsi_set_current_line(237, ng0);

LAB55:    xsi_set_current_line(238, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 14592);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);

LAB53:    goto LAB13;

LAB11:    xsi_set_current_line(243, ng0);

LAB56:    xsi_set_current_line(244, ng0);
    t3 = (t0 + 1208U);
    t5 = *((char **)t3);
    t3 = (t5 + 4);
    t10 = *((unsigned int *)t3);
    t11 = (~(t10));
    t12 = *((unsigned int *)t5);
    t13 = (t12 & t11);
    t14 = (t13 != 0);
    if (t14 > 0)
        goto LAB57;

LAB58:    xsi_set_current_line(256, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 15328);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);

LAB59:    xsi_set_current_line(257, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 14592);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    goto LAB13;

LAB15:    *((unsigned int *)t9) = 1;
    goto LAB18;

LAB20:    t20 = *((unsigned int *)t9);
    t21 = *((unsigned int *)t17);
    *((unsigned int *)t9) = (t20 | t21);
    t22 = *((unsigned int *)t16);
    t23 = *((unsigned int *)t17);
    *((unsigned int *)t16) = (t22 | t23);
    goto LAB19;

LAB21:    xsi_set_current_line(213, ng0);

LAB24:    xsi_set_current_line(214, ng0);
    t32 = ((char*)((ng3)));
    t33 = (t0 + 14592);
    xsi_vlogvar_assign_value(t33, t32, 0, 0, 3);
    xsi_set_current_line(215, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 14776);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    goto LAB23;

LAB26:    *((unsigned int *)t9) = 1;
    goto LAB29;

LAB31:    t20 = *((unsigned int *)t9);
    t21 = *((unsigned int *)t15);
    *((unsigned int *)t9) = (t20 | t21);
    t22 = *((unsigned int *)t7);
    t23 = *((unsigned int *)t15);
    *((unsigned int *)t7) = (t22 | t23);
    goto LAB30;

LAB32:    *((unsigned int *)t34) = 1;
    goto LAB35;

LAB34:    t17 = (t34 + 4);
    *((unsigned int *)t34) = 1;
    *((unsigned int *)t17) = 1;
    goto LAB35;

LAB36:    t32 = (t0 + 14684);
    t33 = (t32 + 36U);
    t39 = *((char **)t33);
    t40 = ((char*)((ng4)));
    memset(t41, 0, 8);
    t42 = (t39 + 4);
    if (*((unsigned int *)t42) != 0)
        goto LAB40;

LAB39:    t43 = (t40 + 4);
    if (*((unsigned int *)t43) != 0)
        goto LAB40;

LAB43:    if (*((unsigned int *)t39) < *((unsigned int *)t40))
        goto LAB41;

LAB42:    memset(t45, 0, 8);
    t46 = (t41 + 4);
    t47 = *((unsigned int *)t46);
    t48 = (~(t47));
    t49 = *((unsigned int *)t41);
    t50 = (t49 & t48);
    t51 = (t50 & 1U);
    if (t51 != 0)
        goto LAB44;

LAB45:    if (*((unsigned int *)t46) != 0)
        goto LAB46;

LAB47:    t54 = *((unsigned int *)t34);
    t55 = *((unsigned int *)t45);
    t56 = (t54 | t55);
    *((unsigned int *)t53) = t56;
    t57 = (t34 + 4);
    t58 = (t45 + 4);
    t59 = (t53 + 4);
    t60 = *((unsigned int *)t57);
    t61 = *((unsigned int *)t58);
    t62 = (t60 | t61);
    *((unsigned int *)t59) = t62;
    t63 = *((unsigned int *)t59);
    t64 = (t63 != 0);
    if (t64 == 1)
        goto LAB48;

LAB49:
LAB50:    goto LAB38;

LAB40:    t44 = (t41 + 4);
    *((unsigned int *)t41) = 1;
    *((unsigned int *)t44) = 1;
    goto LAB42;

LAB41:    *((unsigned int *)t41) = 1;
    goto LAB42;

LAB44:    *((unsigned int *)t45) = 1;
    goto LAB47;

LAB46:    t52 = (t45 + 4);
    *((unsigned int *)t45) = 1;
    *((unsigned int *)t52) = 1;
    goto LAB47;

LAB48:    t65 = *((unsigned int *)t53);
    t66 = *((unsigned int *)t59);
    *((unsigned int *)t53) = (t65 | t66);
    t67 = (t34 + 4);
    t68 = (t45 + 4);
    t69 = *((unsigned int *)t67);
    t70 = (~(t69));
    t71 = *((unsigned int *)t34);
    t72 = (t71 & t70);
    t73 = *((unsigned int *)t68);
    t74 = (~(t73));
    t75 = *((unsigned int *)t45);
    t76 = (t75 & t74);
    t77 = (~(t72));
    t78 = (~(t76));
    t79 = *((unsigned int *)t59);
    *((unsigned int *)t59) = (t79 & t77);
    t80 = *((unsigned int *)t59);
    *((unsigned int *)t59) = (t80 & t78);
    goto LAB50;

LAB51:    xsi_set_current_line(226, ng0);

LAB54:    xsi_set_current_line(227, ng0);
    t87 = (t0 + 13444U);
    t88 = *((char **)t87);
    t87 = (t0 + 14132);
    xsi_vlogvar_assign_value(t87, t88, 0, 0, 32);
    xsi_set_current_line(228, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 14316);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(229, ng0);
    t2 = (t0 + 14684);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = (t0 + 14224);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 32);
    xsi_set_current_line(230, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 15420);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(232, ng0);
    t2 = (t0 + 14684);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng5)));
    memset(t9, 0, 8);
    xsi_vlog_unsigned_add(t9, 32, t5, 32, t6, 32);
    t7 = (t0 + 14776);
    xsi_vlogvar_assign_value(t7, t9, 0, 0, 32);
    xsi_set_current_line(233, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 14592);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    goto LAB53;

LAB57:    xsi_set_current_line(245, ng0);

LAB60:    xsi_set_current_line(246, ng0);
    t6 = ((char*)((ng5)));
    t7 = (t0 + 15328);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 1);
    xsi_set_current_line(248, ng0);
    t2 = (t0 + 13720U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t10 = *((unsigned int *)t2);
    t11 = (~(t10));
    t12 = *((unsigned int *)t3);
    t13 = (t12 & t11);
    t14 = (t13 != 0);
    if (t14 > 0)
        goto LAB61;

LAB62:
LAB63:    goto LAB59;

LAB61:    xsi_set_current_line(249, ng0);

LAB64:    xsi_set_current_line(250, ng0);
    t5 = ((char*)((ng1)));
    t6 = (t0 + 14592);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 3);
    xsi_set_current_line(251, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 15328);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB63;

}

static void Cont_410_2(char *t0)
{
    char t4[8];
    char t18[8];
    char t26[8];
    char *t1;
    char *t2;
    char *t3;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    char *t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    char *t16;
    char *t17;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;
    char *t31;
    char *t32;
    unsigned int t33;
    unsigned int t34;
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
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    int t50;
    int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    char *t58;
    char *t59;
    char *t60;
    char *t61;
    char *t62;
    unsigned int t63;
    unsigned int t64;
    char *t65;
    unsigned int t66;
    unsigned int t67;
    char *t68;
    unsigned int t69;
    unsigned int t70;
    char *t71;

LAB0:    t1 = (t0 + 16232U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(410, ng0);
    t2 = (t0 + 840U);
    t3 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t3 + 4);
    t5 = *((unsigned int *)t2);
    t6 = (~(t5));
    t7 = *((unsigned int *)t3);
    t8 = (t7 & t6);
    t9 = (t8 & 1U);
    if (t9 != 0)
        goto LAB4;

LAB5:    if (*((unsigned int *)t2) != 0)
        goto LAB6;

LAB7:    t11 = (t4 + 4);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t11);
    t14 = (t12 || t13);
    if (t14 > 0)
        goto LAB8;

LAB9:    memcpy(t26, t4, 8);

LAB10:    t58 = (t0 + 16488);
    t59 = (t58 + 32U);
    t60 = *((char **)t59);
    t61 = (t60 + 40U);
    t62 = *((char **)t61);
    memset(t62, 0, 8);
    t63 = 1U;
    t64 = t63;
    t65 = (t26 + 4);
    t66 = *((unsigned int *)t26);
    t63 = (t63 & t66);
    t67 = *((unsigned int *)t65);
    t64 = (t64 & t67);
    t68 = (t62 + 4);
    t69 = *((unsigned int *)t62);
    *((unsigned int *)t62) = (t69 | t63);
    t70 = *((unsigned int *)t68);
    *((unsigned int *)t68) = (t70 | t64);
    xsi_driver_vfirst_trans(t58, 0, 0);
    t71 = (t0 + 16444);
    *((int *)t71) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t4) = 1;
    goto LAB7;

LAB6:    t10 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t10) = 1;
    goto LAB7;

LAB8:    t15 = (t0 + 15328);
    t16 = (t15 + 36U);
    t17 = *((char **)t16);
    memset(t18, 0, 8);
    t19 = (t17 + 4);
    t20 = *((unsigned int *)t19);
    t21 = (~(t20));
    t22 = *((unsigned int *)t17);
    t23 = (t22 & t21);
    t24 = (t23 & 1U);
    if (t24 != 0)
        goto LAB11;

LAB12:    if (*((unsigned int *)t19) != 0)
        goto LAB13;

LAB14:    t27 = *((unsigned int *)t4);
    t28 = *((unsigned int *)t18);
    t29 = (t27 & t28);
    *((unsigned int *)t26) = t29;
    t30 = (t4 + 4);
    t31 = (t18 + 4);
    t32 = (t26 + 4);
    t33 = *((unsigned int *)t30);
    t34 = *((unsigned int *)t31);
    t35 = (t33 | t34);
    *((unsigned int *)t32) = t35;
    t36 = *((unsigned int *)t32);
    t37 = (t36 != 0);
    if (t37 == 1)
        goto LAB15;

LAB16:
LAB17:    goto LAB10;

LAB11:    *((unsigned int *)t18) = 1;
    goto LAB14;

LAB13:    t25 = (t18 + 4);
    *((unsigned int *)t18) = 1;
    *((unsigned int *)t25) = 1;
    goto LAB14;

LAB15:    t38 = *((unsigned int *)t26);
    t39 = *((unsigned int *)t32);
    *((unsigned int *)t26) = (t38 | t39);
    t40 = (t4 + 4);
    t41 = (t18 + 4);
    t42 = *((unsigned int *)t4);
    t43 = (~(t42));
    t44 = *((unsigned int *)t40);
    t45 = (~(t44));
    t46 = *((unsigned int *)t18);
    t47 = (~(t46));
    t48 = *((unsigned int *)t41);
    t49 = (~(t48));
    t50 = (t43 & t45);
    t51 = (t47 & t49);
    t52 = (~(t50));
    t53 = (~(t51));
    t54 = *((unsigned int *)t32);
    *((unsigned int *)t32) = (t54 & t52);
    t55 = *((unsigned int *)t32);
    *((unsigned int *)t32) = (t55 & t53);
    t56 = *((unsigned int *)t26);
    *((unsigned int *)t26) = (t56 & t52);
    t57 = *((unsigned int *)t26);
    *((unsigned int *)t26) = (t57 & t53);
    goto LAB17;

}


extern void work_m_00000000002213809136_4076638676_init()
{
	static char *pe[] = {(void *)Always_185_0,(void *)Always_199_1,(void *)Cont_410_2};
	xsi_register_didat("work_m_00000000002213809136_4076638676", "isim/readfile_test_isim_beh.exe.sim/work/m_00000000002213809136_4076638676.didat");
	xsi_register_executes(pe);
}
