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



static void Always_187_0(char *t0)
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

LAB0:    t1 = (t0 + 15852U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(187, ng0);
    t2 = (t0 + 16192);
    *((int *)t2) = 1;
    t3 = (t0 + 15880);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(188, ng0);

LAB5:    xsi_set_current_line(189, ng0);
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

LAB7:    xsi_set_current_line(195, ng0);

LAB10:    xsi_set_current_line(196, ng0);
    t2 = (t0 + 14592);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 14500);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 3, 0LL);
    xsi_set_current_line(197, ng0);
    t2 = (t0 + 14776);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 14684);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 32, 0LL);

LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(190, ng0);

LAB9:    xsi_set_current_line(191, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 14500);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 3, 0LL);
    xsi_set_current_line(192, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 14684);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    goto LAB8;

}

static void Always_201_1(char *t0)
{
    char t9[8];
    char t34[8];
    char t40[8];
    char t44[8];
    char t52[8];
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
    char *t38;
    char *t39;
    char *t41;
    char *t42;
    char *t43;
    char *t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    char *t51;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    char *t56;
    char *t57;
    char *t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    char *t66;
    char *t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    int t76;
    int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    char *t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    char *t90;
    char *t91;

LAB0:    t1 = (t0 + 15996U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(201, ng0);
    t2 = (t0 + 16200);
    *((int *)t2) = 1;
    t3 = (t0 + 16024);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(202, ng0);

LAB5:    xsi_set_current_line(203, ng0);
    t4 = (t0 + 14500);
    t5 = (t4 + 36U);
    t6 = *((char **)t5);
    t7 = (t0 + 14592);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 3);
    xsi_set_current_line(204, ng0);
    t2 = (t0 + 14684);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 14776);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 32);
    xsi_set_current_line(205, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 13948);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(206, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 14316);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(207, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 14408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(208, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 15328);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(209, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 14040);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(211, ng0);
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

LAB7:    xsi_set_current_line(213, ng0);

LAB14:    xsi_set_current_line(214, ng0);
    t6 = (t0 + 13444U);
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

LAB22:    xsi_set_current_line(220, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 14592);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);

LAB23:    goto LAB13;

LAB9:    xsi_set_current_line(225, ng0);

LAB25:    xsi_set_current_line(227, ng0);
    t3 = (t0 + 13444U);
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
    t36 = *((unsigned int *)t26);
    t37 = (t35 || t36);
    if (t37 > 0)
        goto LAB36;

LAB37:    memcpy(t52, t34, 8);

LAB38:    t84 = (t52 + 4);
    t85 = *((unsigned int *)t84);
    t86 = (~(t85));
    t87 = *((unsigned int *)t52);
    t88 = (t87 & t86);
    t89 = (t88 != 0);
    if (t89 > 0)
        goto LAB51;

LAB52:    xsi_set_current_line(239, ng0);

LAB55:    xsi_set_current_line(240, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 14592);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);

LAB53:    goto LAB13;

LAB11:    xsi_set_current_line(245, ng0);

LAB56:    xsi_set_current_line(246, ng0);
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

LAB58:    xsi_set_current_line(258, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 15328);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);

LAB59:    xsi_set_current_line(259, ng0);
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

LAB21:    xsi_set_current_line(215, ng0);

LAB24:    xsi_set_current_line(216, ng0);
    t32 = ((char*)((ng3)));
    t33 = (t0 + 14592);
    xsi_vlogvar_assign_value(t33, t32, 0, 0, 3);
    xsi_set_current_line(217, ng0);
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
    t38 = *((char **)t33);
    t39 = ((char*)((ng4)));
    memset(t40, 0, 8);
    t41 = (t38 + 4);
    if (*((unsigned int *)t41) != 0)
        goto LAB40;

LAB39:    t42 = (t39 + 4);
    if (*((unsigned int *)t42) != 0)
        goto LAB40;

LAB43:    if (*((unsigned int *)t38) < *((unsigned int *)t39))
        goto LAB41;

LAB42:    memset(t44, 0, 8);
    t45 = (t40 + 4);
    t46 = *((unsigned int *)t45);
    t47 = (~(t46));
    t48 = *((unsigned int *)t40);
    t49 = (t48 & t47);
    t50 = (t49 & 1U);
    if (t50 != 0)
        goto LAB44;

LAB45:    if (*((unsigned int *)t45) != 0)
        goto LAB46;

LAB47:    t53 = *((unsigned int *)t34);
    t54 = *((unsigned int *)t44);
    t55 = (t53 & t54);
    *((unsigned int *)t52) = t55;
    t56 = (t34 + 4);
    t57 = (t44 + 4);
    t58 = (t52 + 4);
    t59 = *((unsigned int *)t56);
    t60 = *((unsigned int *)t57);
    t61 = (t59 | t60);
    *((unsigned int *)t58) = t61;
    t62 = *((unsigned int *)t58);
    t63 = (t62 != 0);
    if (t63 == 1)
        goto LAB48;

LAB49:
LAB50:    goto LAB38;

LAB40:    t43 = (t40 + 4);
    *((unsigned int *)t40) = 1;
    *((unsigned int *)t43) = 1;
    goto LAB42;

LAB41:    *((unsigned int *)t40) = 1;
    goto LAB42;

LAB44:    *((unsigned int *)t44) = 1;
    goto LAB47;

LAB46:    t51 = (t44 + 4);
    *((unsigned int *)t44) = 1;
    *((unsigned int *)t51) = 1;
    goto LAB47;

LAB48:    t64 = *((unsigned int *)t52);
    t65 = *((unsigned int *)t58);
    *((unsigned int *)t52) = (t64 | t65);
    t66 = (t34 + 4);
    t67 = (t44 + 4);
    t68 = *((unsigned int *)t34);
    t69 = (~(t68));
    t70 = *((unsigned int *)t66);
    t71 = (~(t70));
    t72 = *((unsigned int *)t44);
    t73 = (~(t72));
    t74 = *((unsigned int *)t67);
    t75 = (~(t74));
    t76 = (t69 & t71);
    t77 = (t73 & t75);
    t78 = (~(t76));
    t79 = (~(t77));
    t80 = *((unsigned int *)t58);
    *((unsigned int *)t58) = (t80 & t78);
    t81 = *((unsigned int *)t58);
    *((unsigned int *)t58) = (t81 & t79);
    t82 = *((unsigned int *)t52);
    *((unsigned int *)t52) = (t82 & t78);
    t83 = *((unsigned int *)t52);
    *((unsigned int *)t52) = (t83 & t79);
    goto LAB50;

LAB51:    xsi_set_current_line(228, ng0);

LAB54:    xsi_set_current_line(229, ng0);
    t90 = (t0 + 13352U);
    t91 = *((char **)t90);
    t90 = (t0 + 14132);
    xsi_vlogvar_assign_value(t90, t91, 0, 0, 32);
    xsi_set_current_line(230, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 14316);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(231, ng0);
    t2 = (t0 + 14684);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = (t0 + 14224);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 32);
    xsi_set_current_line(232, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 14040);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(234, ng0);
    t2 = (t0 + 14684);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng5)));
    memset(t9, 0, 8);
    xsi_vlog_unsigned_add(t9, 32, t5, 32, t6, 32);
    t7 = (t0 + 14776);
    xsi_vlogvar_assign_value(t7, t9, 0, 0, 32);
    xsi_set_current_line(235, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 14592);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    goto LAB53;

LAB57:    xsi_set_current_line(247, ng0);

LAB60:    xsi_set_current_line(248, ng0);
    t6 = ((char*)((ng5)));
    t7 = (t0 + 15328);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 1);
    xsi_set_current_line(250, ng0);
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

LAB61:    xsi_set_current_line(251, ng0);

LAB64:    xsi_set_current_line(252, ng0);
    t5 = ((char*)((ng1)));
    t6 = (t0 + 14592);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 3);
    xsi_set_current_line(253, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 15328);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB63;

}


extern void work_m_00000000000519104631_4076638676_init()
{
	static char *pe[] = {(void *)Always_187_0,(void *)Always_201_1};
	xsi_register_didat("work_m_00000000000519104631_4076638676", "isim/tp4_test_isim_beh.exe.sim/work/m_00000000000519104631_4076638676.didat");
	xsi_register_executes(pe);
}
