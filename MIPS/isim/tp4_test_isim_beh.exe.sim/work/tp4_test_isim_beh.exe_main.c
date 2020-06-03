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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000001044697384_1733832700_init();
    work_m_00000000001948808931_0886308060_init();
    work_m_00000000002427189821_2857005792_init();
    work_m_00000000003859846876_0045532000_init();
    work_m_00000000001199578723_0345418465_init();
    work_m_00000000003845799282_1668905219_init();
    work_m_00000000002770261129_1938225339_init();
    work_m_00000000002427189821_0992571530_init();
    work_m_00000000001899147372_1723813368_init();
    work_m_00000000001840721256_3306708044_init();
    work_m_00000000002457413359_3093772975_init();
    work_m_00000000002457413359_3813519319_init();
    work_m_00000000004062348573_0103510313_init();
    work_m_00000000000283580182_2932280914_init();
    work_m_00000000000283580182_0833632742_init();
    work_m_00000000002048119383_2866095323_init();
    work_m_00000000002841595854_4024466370_init();
    work_m_00000000000469561583_2461264495_init();
    work_m_00000000001569375168_1545542492_init();
    work_m_00000000002687843803_2520395732_init();
    work_m_00000000001897692401_3143792024_init();
    work_m_00000000000235947551_0236360315_init();
    work_m_00000000000519104631_4076638676_init();
    work_m_00000000001623792389_3406096453_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000001623792389_3406096453");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}