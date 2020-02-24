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
static const char *ng0 = "//vboxsrv/win7VM/workspace/ArquitecturaDeComputadoras/TP4/Trunker.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static int ng3[] = {16, 0};
static unsigned int ng4[] = {2U, 0U};
static int ng5[] = {24, 0};



static void Always_30_0(char *t0)
{
    char t14[8];
    char t15[8];
    char t23[8];
    char t27[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t24;
    char *t25;
    char *t26;
    char *t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;

LAB0:    t1 = (t0 + 1776U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 1972);
    *((int *)t2) = 1;
    t3 = (t0 + 1804);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(31, ng0);

LAB5:    xsi_set_current_line(32, ng0);
    t4 = (t0 + 932U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 2, t4, 2);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 2, t2, 2);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 2, t2, 2);
    if (t6 == 1)
        goto LAB11;

LAB12:
LAB13:    goto LAB2;

LAB7:    xsi_set_current_line(34, ng0);

LAB14:    xsi_set_current_line(35, ng0);
    t7 = (t0 + 840U);
    t8 = *((char **)t7);
    t7 = (t0 + 1252);
    xsi_vlogvar_assign_value(t7, t8, 0, 0, 32);
    goto LAB13;

LAB9:    xsi_set_current_line(39, ng0);

LAB15:    xsi_set_current_line(40, ng0);
    t3 = (t0 + 1024U);
    t4 = *((char **)t3);
    t3 = (t4 + 4);
    t9 = *((unsigned int *)t3);
    t10 = (~(t9));
    t11 = *((unsigned int *)t4);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB16;

LAB17:    xsi_set_current_line(45, ng0);

LAB20:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 840U);
    t3 = *((char **)t2);
    memset(t15, 0, 8);
    t2 = (t15 + 4);
    t4 = (t3 + 4);
    t9 = *((unsigned int *)t3);
    t10 = (t9 >> 0);
    *((unsigned int *)t15) = t10;
    t11 = *((unsigned int *)t4);
    t12 = (t11 >> 0);
    *((unsigned int *)t2) = t12;
    t13 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t13 & 65535U);
    t17 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t17 & 65535U);
    t7 = ((char*)((ng1)));
    xsi_vlogtype_concat(t14, 32, 32, 2U, t7, 16, t15, 16);
    t8 = (t0 + 1252);
    xsi_vlogvar_assign_value(t8, t14, 0, 0, 32);

LAB18:    goto LAB13;

LAB11:    xsi_set_current_line(51, ng0);

LAB21:    xsi_set_current_line(52, ng0);
    t3 = (t0 + 1024U);
    t4 = *((char **)t3);
    t3 = (t4 + 4);
    t9 = *((unsigned int *)t3);
    t10 = (~(t9));
    t11 = *((unsigned int *)t4);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB22;

LAB23:    xsi_set_current_line(57, ng0);

LAB26:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 840U);
    t3 = *((char **)t2);
    memset(t15, 0, 8);
    t2 = (t15 + 4);
    t4 = (t3 + 4);
    t9 = *((unsigned int *)t3);
    t10 = (t9 >> 0);
    *((unsigned int *)t15) = t10;
    t11 = *((unsigned int *)t4);
    t12 = (t11 >> 0);
    *((unsigned int *)t2) = t12;
    t13 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t13 & 255U);
    t17 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t17 & 255U);
    t7 = ((char*)((ng1)));
    xsi_vlogtype_concat(t14, 32, 32, 2U, t7, 24, t15, 8);
    t8 = (t0 + 1252);
    xsi_vlogvar_assign_value(t8, t14, 0, 0, 32);

LAB24:    goto LAB13;

LAB16:    xsi_set_current_line(41, ng0);

LAB19:    xsi_set_current_line(42, ng0);
    t7 = (t0 + 840U);
    t8 = *((char **)t7);
    memset(t15, 0, 8);
    t7 = (t15 + 4);
    t16 = (t8 + 4);
    t17 = *((unsigned int *)t8);
    t18 = (t17 >> 0);
    *((unsigned int *)t15) = t18;
    t19 = *((unsigned int *)t16);
    t20 = (t19 >> 0);
    *((unsigned int *)t7) = t20;
    t21 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t21 & 65535U);
    t22 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t22 & 65535U);
    t24 = ((char*)((ng3)));
    t25 = (t0 + 840U);
    t26 = *((char **)t25);
    memset(t27, 0, 8);
    t25 = (t27 + 4);
    t28 = (t26 + 4);
    t29 = *((unsigned int *)t26);
    t30 = (t29 >> 15);
    t31 = (t30 & 1);
    *((unsigned int *)t27) = t31;
    t32 = *((unsigned int *)t28);
    t33 = (t32 >> 15);
    t34 = (t33 & 1);
    *((unsigned int *)t25) = t34;
    xsi_vlog_mul_concat(t23, 16, 1, t24, 1U, t27, 1);
    xsi_vlogtype_concat(t14, 32, 32, 2U, t23, 16, t15, 16);
    t35 = (t0 + 1252);
    xsi_vlogvar_assign_value(t35, t14, 0, 0, 32);
    goto LAB18;

LAB22:    xsi_set_current_line(53, ng0);

LAB25:    xsi_set_current_line(54, ng0);
    t7 = (t0 + 840U);
    t8 = *((char **)t7);
    memset(t15, 0, 8);
    t7 = (t15 + 4);
    t16 = (t8 + 4);
    t17 = *((unsigned int *)t8);
    t18 = (t17 >> 0);
    *((unsigned int *)t15) = t18;
    t19 = *((unsigned int *)t16);
    t20 = (t19 >> 0);
    *((unsigned int *)t7) = t20;
    t21 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t21 & 255U);
    t22 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t22 & 255U);
    t24 = ((char*)((ng5)));
    t25 = (t0 + 840U);
    t26 = *((char **)t25);
    memset(t27, 0, 8);
    t25 = (t27 + 4);
    t28 = (t26 + 4);
    t29 = *((unsigned int *)t26);
    t30 = (t29 >> 7);
    t31 = (t30 & 1);
    *((unsigned int *)t27) = t31;
    t32 = *((unsigned int *)t28);
    t33 = (t32 >> 7);
    t34 = (t33 & 1);
    *((unsigned int *)t25) = t34;
    xsi_vlog_mul_concat(t23, 24, 1, t24, 1U, t27, 1);
    xsi_vlogtype_concat(t14, 32, 32, 2U, t23, 24, t15, 8);
    t35 = (t0 + 1252);
    xsi_vlogvar_assign_value(t35, t14, 0, 0, 32);
    goto LAB24;

}


extern void work_m_00000000001569375168_1545542492_init()
{
	static char *pe[] = {(void *)Always_30_0};
	xsi_register_didat("work_m_00000000001569375168_1545542492", "isim/test_mips_isim_beh.exe.sim/work/m_00000000001569375168_1545542492.didat");
	xsi_register_executes(pe);
}
