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
static const char *ng0 = "//vboxsrv/win7VM/workspace/ArquitecturaDeComputadoras/TP4_Final/MIPS/tp4_test.v";
static const char *ng1 = "./data_file.bin";
static const char *ng2 = "r";
static int ng3[] = {0, 0};
static const char *ng4 = "data_file handle was NULL";
static int ng5[] = {1, 0};
static const char *ng6 = "%b\n";



static void Initial_302_0(char *t0)
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

LAB0:    t1 = (t0 + 13496U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(302, ng0);

LAB4:    xsi_set_current_line(304, ng0);
    *((int *)t3) = xsi_vlogfile_file_open_of_cname_ctype(ng1, ng2);
    t2 = (t3 + 4);
    *((int *)t2) = 0;
    t4 = (t0 + 12788);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 32);
    xsi_set_current_line(305, ng0);
    t2 = (t0 + 12788);
    t4 = (t2 + 36U);
    t5 = *((char **)t4);
    t6 = ((char*)((ng3)));
    memset(t3, 0, 8);
    xsi_vlog_signed_equal(t3, 32, t5, 32, t6, 32);
    t7 = (t3 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t3);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB5;

LAB6:
LAB7:    xsi_set_current_line(311, ng0);
    t2 = ((char*)((ng3)));
    t4 = (t0 + 12328);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    xsi_set_current_line(312, ng0);
    t2 = ((char*)((ng5)));
    t4 = (t0 + 12420);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    xsi_set_current_line(313, ng0);
    t2 = ((char*)((ng3)));
    t4 = (t0 + 12696);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    xsi_set_current_line(317, ng0);
    t2 = (t0 + 13396);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB9;

LAB1:    return;
LAB5:    xsi_set_current_line(305, ng0);

LAB8:    xsi_set_current_line(306, ng0);
    xsi_vlogfile_write(1, 0, 0, ng4, 1, t0);
    xsi_set_current_line(308, ng0);
    xsi_vlog_finish(1);
    goto LAB7;

LAB9:    xsi_set_current_line(318, ng0);
    t2 = ((char*)((ng3)));
    t4 = (t0 + 12420);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    xsi_set_current_line(321, ng0);
    t2 = (t0 + 13396);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB10;
    goto LAB1;

LAB10:    xsi_set_current_line(323, ng0);
    t4 = ((char*)((ng5)));
    t5 = (t0 + 12696);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    goto LAB1;

}

static void Always_328_1(char *t0)
{
    char t15[8];
    char t16[8];
    char t24[8];
    char t28[8];
    char *t1;
    char *t2;
    char *t3;
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
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    char *t23;
    char *t25;
    char *t26;
    char *t27;
    char *t29;
    char *t30;
    char *t31;

LAB0:    t1 = (t0 + 13640U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(328, ng0);
    t2 = (t0 + 13980);
    *((int *)t2) = 1;
    t3 = (t0 + 13668);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(328, ng0);

LAB5:    xsi_set_current_line(329, ng0);
    t4 = (t0 + 12420);
    t5 = (t4 + 36U);
    t6 = *((char **)t5);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(333, ng0);

LAB10:    xsi_set_current_line(334, ng0);
    t2 = (t0 + 12788);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    *((int *)t16) = xsi_vlogfile_feof(*((unsigned int *)t4));
    t5 = (t16 + 4);
    *((int *)t5) = 0;
    memset(t15, 0, 8);
    t6 = (t16 + 4);
    t8 = *((unsigned int *)t6);
    t9 = (~(t8));
    t10 = *((unsigned int *)t16);
    t11 = (t10 & t9);
    t12 = (t11 & 4294967295U);
    if (t12 != 0)
        goto LAB14;

LAB12:    if (*((unsigned int *)t6) == 0)
        goto LAB11;

LAB13:    t7 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t7) = 1;

LAB14:    t13 = (t15 + 4);
    t17 = *((unsigned int *)t13);
    t18 = (~(t17));
    t19 = *((unsigned int *)t15);
    t20 = (t19 & t18);
    t21 = (t20 != 0);
    if (t21 > 0)
        goto LAB15;

LAB16:    xsi_set_current_line(343, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 12604);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);

LAB17:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(329, ng0);

LAB9:    xsi_set_current_line(330, ng0);
    t13 = ((char*)((ng3)));
    t14 = (t0 + 12604);
    xsi_vlogvar_assign_value(t14, t13, 0, 0, 1);
    goto LAB8;

LAB11:    *((unsigned int *)t15) = 1;
    goto LAB14;

LAB15:    xsi_set_current_line(335, ng0);

LAB18:    xsi_set_current_line(336, ng0);
    t14 = (t0 + 12788);
    t22 = (t14 + 36U);
    t23 = *((char **)t22);
    t25 = (t0 + 12972);
    t26 = (t25 + 36U);
    t27 = *((char **)t26);
    xsi_vlog_bit_copy(t24, 0, t27, 0, 32);
    *((int *)t28) = xsi_vlogfile_fscanf(*((unsigned int *)t23), ng6, 2, t0, (char)118, t24, 32);
    t29 = (t28 + 4);
    *((int *)t29) = 0;
    t30 = (t0 + 12972);
    xsi_vlogvar_assign_value(t30, t24, 0, 0, 32);
    t31 = (t0 + 12880);
    xsi_vlogvar_assign_value(t31, t28, 0, 0, 32);
    xsi_set_current_line(338, ng0);
    t2 = (t0 + 12972);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 12512);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 32, 0LL);
    xsi_set_current_line(339, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 12604);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB17;

}

static void Always_347_2(char *t0)
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

LAB0:    t1 = (t0 + 13784U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(347, ng0);

LAB4:    xsi_set_current_line(348, ng0);
    t2 = (t0 + 13684);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(348, ng0);
    t4 = (t0 + 12328);
    t5 = (t4 + 36U);
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
    t24 = (t0 + 12328);
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


extern void work_m_00000000001623792389_3406096453_init()
{
	static char *pe[] = {(void *)Initial_302_0,(void *)Always_328_1,(void *)Always_347_2};
	xsi_register_didat("work_m_00000000001623792389_3406096453", "isim/tp4_test_isim_beh.exe.sim/work/m_00000000001623792389_3406096453.didat");
	xsi_register_executes(pe);
}
