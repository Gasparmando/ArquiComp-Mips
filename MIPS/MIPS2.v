`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:32:47 02/11/2020 
// Design Name: 
// Module Name:    MIPS2 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module MIPS2(
	input CLK,
	input RESET,
	input ENABLE,
	input I_MIPS_WrPM,
	input [31:0] I_MIPS_WrDataPM,
	input [31:0] I_MIPS_WrDataPMAddr,
//////////////////////////////////////////////////////////////////////////////////
	output reg O_MIPS_FINISHED,
	
	output [31:0] O_IF_INSTR,
	output [31:0] O_PC, O_PC_NEXT,
   output [31:0] O_ID_PC,
   output [31:0] O_ID_INSTR,
//////////////////////////////////////////////////////////////////////////////////
   output [19:0] O_EXE_CONTROL,
   output [31:0] O_EXE_PC,
   output [31:0] O_EXE_READ_DATA1,
   output [31:0] O_EXE_READ_DATA2,
   output [31:0] O_EXE_SIGN_EXT,
   output [4:0] O_EXE_RS,
   output [4:0] O_EXE_RT,
   output [4:0] O_EXE_RD,
   output [31:0] O_EXE_SHIFT,
//////////////////////////////////////////////////////////////////////////////////
   output [19:0] O_MEM_CONTROL,
   output [31:0] O_MEM_ALU_RESULT,
   output [31:0] O_MEM_WRITE_DATA,
   output [31:0] O_MEM_PC,
   output [4:0] O_MEM_REGDST,
   output [31:0] O_MEM_SHIFT,
//////////////////////////////////////////////////////////////////////////////////
   output [19:0] O_WB_CONTROL,
   output [31:0] O_WB_PC,
   output [31:0] O_WB_ADDR,
   output [31:0] O_WB_READ_DATA,
   output [31:0] O_WB_SHIFT,
   output [4:0] O_WB_REGDST,
//////////////////////////////////////////////////////////////////////////////////    
   output  O_HZ_IFID_WRITE,
   output  O_HZ_PC_WRITE,
   output  O_HZ_ID_ControlMux,
//////////////////////////////////////////////////////////////////////////////////    
   output [1:0] O_FU_ForwardA,
   output [1:0] O_FU_ForwardB,
//////////////////////////////////////////////////////////////////////////////////
	output [31:0] O_PM_REG_0 ,
	output [31:0] O_PM_REG_1 ,
	output [31:0] O_PM_REG_2 ,
	output [31:0] O_PM_REG_3 ,
	output [31:0] O_PM_REG_4 ,
	output [31:0] O_PM_REG_5 ,
	output [31:0] O_PM_REG_6 ,
	output [31:0] O_PM_REG_7 ,
	output [31:0] O_PM_REG_8 ,
	output [31:0] O_PM_REG_9 ,
	output [31:0] O_PM_REG_10,
	output [31:0] O_PM_REG_11,
	output [31:0] O_PM_REG_12,
	output [31:0] O_PM_REG_13,
	output [31:0] O_PM_REG_14,
	output [31:0] O_PM_REG_15,
	output [31:0] O_PM_REG_16,
	output [31:0] O_PM_REG_17,
	output [31:0] O_PM_REG_18,
	output [31:0] O_PM_REG_19,
	output [31:0] O_PM_REG_20,
	output [31:0] O_PM_REG_21,
	output [31:0] O_PM_REG_22,
	output [31:0] O_PM_REG_23,
	output [31:0] O_PM_REG_24,
	output [31:0] O_PM_REG_25,
	output [31:0] O_PM_REG_26,
	output [31:0] O_PM_REG_27,
	output [31:0] O_PM_REG_28,
	output [31:0] O_PM_REG_29,
	output [31:0] O_PM_REG_30,
	output [31:0] O_PM_REG_31,
//////////////////////////////////////////////////////////////////////////////////
	output [31:0] O_DM_REG_0 ,
	output [31:0] O_DM_REG_1 ,
	output [31:0] O_DM_REG_2 ,
	output [31:0] O_DM_REG_3 ,
	output [31:0] O_DM_REG_4 ,
	output [31:0] O_DM_REG_5 ,
	output [31:0] O_DM_REG_6 ,
	output [31:0] O_DM_REG_7 ,
	output [31:0] O_DM_REG_8 ,
	output [31:0] O_DM_REG_9 ,
	output [31:0] O_DM_REG_10,
	output [31:0] O_DM_REG_11,
	output [31:0] O_DM_REG_12,
	output [31:0] O_DM_REG_13,
	output [31:0] O_DM_REG_14,
	output [31:0] O_DM_REG_15,
	output [31:0] O_DM_REG_16,
	output [31:0] O_DM_REG_17,
	output [31:0] O_DM_REG_18,
	output [31:0] O_DM_REG_19,
	output [31:0] O_DM_REG_20,
	output [31:0] O_DM_REG_21,
	output [31:0] O_DM_REG_22,
	output [31:0] O_DM_REG_23,
	output [31:0] O_DM_REG_24,
	output [31:0] O_DM_REG_25,
	output [31:0] O_DM_REG_26,
	output [31:0] O_DM_REG_27,
	output [31:0] O_DM_REG_28,
	output [31:0] O_DM_REG_29,
	output [31:0] O_DM_REG_30,
	output [31:0] O_DM_REG_31,
//////////////////////////////////////////////////////////////////////////////////
	output [31:0] O_RM_REG_0 ,
	output [31:0] O_RM_REG_1 ,
	output [31:0] O_RM_REG_2 ,
	output [31:0] O_RM_REG_3 ,
	output [31:0] O_RM_REG_4 ,
	output [31:0] O_RM_REG_5 ,
	output [31:0] O_RM_REG_6 ,
	output [31:0] O_RM_REG_7 ,
	output [31:0] O_RM_REG_8 ,
	output [31:0] O_RM_REG_9 ,
	output [31:0] O_RM_REG_10,
	output [31:0] O_RM_REG_11,
	output [31:0] O_RM_REG_12,
	output [31:0] O_RM_REG_13,
	output [31:0] O_RM_REG_14,
	output [31:0] O_RM_REG_15,
	output [31:0] O_RM_REG_16,
	output [31:0] O_RM_REG_17,
	output [31:0] O_RM_REG_18,
	output [31:0] O_RM_REG_19,
	output [31:0] O_RM_REG_20,
	output [31:0] O_RM_REG_21,
	output [31:0] O_RM_REG_22,
	output [31:0] O_RM_REG_23,
	output [31:0] O_RM_REG_24,
	output [31:0] O_RM_REG_25,
	output [31:0] O_RM_REG_26,
	output [31:0] O_RM_REG_27,
	output [31:0] O_RM_REG_28,
	output [31:0] O_RM_REG_29,
	output [31:0] O_RM_REG_30,
	output [31:0] O_RM_REG_31
    );
	 
wire [31:0] w_pc;
wire [31:0] w_if_pc;
wire [31:0] w_id_pc;
wire [31:0] w_if_instr;
wire [31:0] w_pc_branch;
wire [31:0] w_pc_next;
wire [31:0] w_id_instr;
wire [19:0] w_id_control;
wire [31:0] w_id_read_data1;
wire [31:0] w_id_read_data2;
wire [31:0] w_id_signExt;
wire [19:0] w_id_control_out;
wire [31:0] w_id_pc_out;
wire [31:0] w_id_shifted;
wire w_id_igual;
wire [31:0] w_exe_read_data1;
wire [31:0] w_exe_read_data2;
wire [31:0] w_exe_mux_out1;
wire [31:0] w_exe_mux_out2;
wire [31:0] w_exe_mux_out3;
wire [31:0] w_exe_pc;
wire [4:0] w_exe_rs;
wire [4:0] w_exe_rt;
wire [4:0] w_exe_rd;
wire [19:0] w_exe_control;
wire [31:0] w_exe_signExt;
wire [31:0] w_exe_pc_out;
wire [31:0] w_exe_shifted;

wire [31:0] w_exe_ALU_result;
wire w_exe_zero;
wire [4:0] w_exe_mux_out4;
wire [19:0] w_mem_control;
wire [31:0] w_mem_addr;
wire [31:0] w_mem_write_data;
wire [31:0] w_mem_read_data;
wire [4:0] w_mem_regDst;
wire [31:0] w_mem_pc_out;
wire [31:0] w_mem_shifted;
wire [31:0] w_mem_read_data_trunked;
wire w_branch_out;
wire [19:0] w_wb_control;
wire [31:0] w_wb_readData;
wire [31:0] w_wb_addr;
wire [4:0] w_wb_regDst;
wire [31:0] w_wb_write_data;
wire [31:0] w_wb_shifted;
wire [31:0] w_wb_pc_out;

wire [1:0] w_exe_forwardA;
wire [1:0] w_exe_forwardB;
wire w_hz_ifid_write;
wire w_hz_pc_write;
wire w_hz_controlMux;
wire w_id_flush;

wire [31:0] w_pm_addr;
//////////////////////////////////////////////////////////////////////////////////
PC pc (	
    .CLK(CLK && ENABLE), 
    .RESET(RESET), 
    .PC_IN(w_pc_next), 
    .PC_CTRL(w_hz_pc_write), 
    .PC_OUT(w_pc)
    );
//////////////////////////////////////////////////////////////////////////////////
ALU adder (
    .A(w_pc), 
    .B(1), 
    .O(6'b100001), 
    .result(w_if_pc) 
    );
//////////////////////////////////////////////////////////////////////////////////	 

Mux_2_1 mux_PM_Addr (
    .A(w_pc), 
    .B(I_MIPS_WrDataPMAddr), 
    .SEL( I_MIPS_WrPM), 
    .OUT(w_pm_addr)
    );

//////////////////////////////////////////////////////////////////////////////////	 
	  
ProgramMemory PM (
    .CLK(CLK), 
    .RESET(RESET), 
    .MEMREAD(~I_MIPS_WrPM), 
    .MEMWRITE(I_MIPS_WrPM), 
    .ADDR(w_pm_addr), 
    .WRITE_DATA(I_MIPS_WrDataPM), 
    .READ_DATA(w_if_instr), 
     .O_REG_0(O_PM_REG_0), 
     .O_REG_1(O_PM_REG_1), 
     .O_REG_2(O_PM_REG_2), 
     .O_REG_3(O_PM_REG_3), 
     .O_REG_4(O_PM_REG_4), 
     .O_REG_5(O_PM_REG_5), 
     .O_REG_6(O_PM_REG_6), 
     .O_REG_7(O_PM_REG_7), 
     .O_REG_8(O_PM_REG_8), 
     .O_REG_9(O_PM_REG_9), 
    .O_REG_10(O_PM_REG_10), 
    .O_REG_11(O_PM_REG_11), 
    .O_REG_12(O_PM_REG_12), 
    .O_REG_13(O_PM_REG_13), 
    .O_REG_14(O_PM_REG_14), 
    .O_REG_15(O_PM_REG_15), 
    .O_REG_16(O_PM_REG_16), 
    .O_REG_17(O_PM_REG_17), 
    .O_REG_18(O_PM_REG_18), 
    .O_REG_19(O_PM_REG_19), 
    .O_REG_20(O_PM_REG_20), 
    .O_REG_21(O_PM_REG_21), 
    .O_REG_22(O_PM_REG_22), 
    .O_REG_23(O_PM_REG_23), 
    .O_REG_24(O_PM_REG_24), 
    .O_REG_25(O_PM_REG_25), 
    .O_REG_26(O_PM_REG_26), 
    .O_REG_27(O_PM_REG_27), 
    .O_REG_28(O_PM_REG_28), 
    .O_REG_29(O_PM_REG_29), 
    .O_REG_30(O_PM_REG_30), 
    .O_REG_31(O_PM_REG_31)
    );
//////////////////////////////////////////////////////////////////////////////////

reg [31:0] R_ID_PC_OUT;

Mux_2_1 pc_mux (
    .A(w_if_pc), 
    .B(R_ID_PC_OUT), 
    .SEL(w_branch_out), 
    .OUT(w_pc_branch)
    );

//////////////////////////////////////////////////////////////////////////////////

Mux_2_1 final_pc_mux (
    .A(w_pc_branch), 
    .B(w_id_signExt), 
    .SEL(w_id_control[18]), 
    .OUT(w_pc_next)
    );
	 
//////////////////////////////////////////////////////////////////////////////////

IF_ID if_id (
    .CLK(CLK && ENABLE), 
    .RESET(RESET), 
    .I_IFID_INSTRUCTION(w_if_instr), 
    .I_IFID_PC(w_if_pc), 
    .I_IFID_WRITE(w_hz_ifid_write), 
    .I_IFID_FLUSH(w_branch_out), 
    .O_IFID_INSTRUCTION(w_id_instr), 
    .O_IFID_PC(w_id_pc)
    );

//////////////////////////////////////////////////////////////////////////////////



HazardDetectionUnit hazard_detection (
    .CLK(CLK && ENABLE), 
    .RESET(RESET), 
    .I_HZ_ID_RS(w_id_instr[25:21]), 
    .I_HZ_ID_RT(w_id_instr[20:16]), 
    .I_HZ_EXE_RT(w_exe_rt), 
    .I_HZ_EXE_MemRead(w_exe_control[3]),
	 .I_OPCODE(w_id_instr[31:26]),
    .O_HZ_IFID_WRITE(w_hz_ifid_write), 
    .O_HZ_PC_WRITE(w_hz_pc_write), 
    .O_HZ_ID_ControlMux(w_hz_controlMux)
    );
//////////////////////////////////////////////////////////////////////////////////

ControlUnit CU (
    .I_CU_OP(w_id_instr[31:26]), 
    .I_CU_FUNCT(w_id_instr[5:0]), 
    .O_CU_MemtoReg(w_id_control[0]), 
	 .O_CU_RegWrite(w_id_control[1]),
    .O_CU_MemWrite(w_id_control[2]),
 	 .O_CU_MemRead(w_id_control[3]),
	 .O_CU_BranchEQ(w_id_control[4]),
    .O_CU_ALUSrc(w_id_control[5]), 
    .O_CU_RegDst(w_id_control[6]), 
    .O_CU_ALUControl(w_id_control[12:7]), 
    .O_CU_Trunk(w_id_control[14:13]), 
    .O_CU_signed(w_id_control[15]), 
    .O_CU_shift(w_id_control[16]), 
    .O_CU_BranchNE(w_id_control[17]), 
    .O_CU_Jump(w_id_control[18]), 
    .O_CU_LinkR(w_id_control[19])
    );

//////////////////////////////////////////////////////////////////////////////////

Mux_2_1 #(.N(20)) ctrlUnit_mux (
    .A(w_id_control), 
    .B(20'b00000000000000000000), 
    .SEL(w_hz_controlMux), 
    .OUT(w_id_control_out)
    );
	 
//////////////////////////////////////////////////////////////////////////////////

RegisterMemory register_memory (
    .CLK(CLK && ENABLE), 
    .RESET(RESET), 
    .I_REGMEM_RS(w_id_instr[25:21]), 
    .I_REGMEM_RT(w_id_instr[20:16]), 
    .I_REGMEM_RD(w_wb_regDst), 
    .I_REGMEM_WRITE_DATA(w_wb_write_data), 
    .I_REGMEM_REGWR(w_wb_control[1]), 
    .O_REGMEM_READ_DATA1(w_id_read_data1), 
    .O_REGMEM_READ_DATA2(w_id_read_data2),
     .O_REG_0(O_RM_REG_0), 
     .O_REG_1(O_RM_REG_1), 
     .O_REG_2(O_RM_REG_2), 
     .O_REG_3(O_RM_REG_3), 
     .O_REG_4(O_RM_REG_4), 
     .O_REG_5(O_RM_REG_5), 
     .O_REG_6(O_RM_REG_6), 
     .O_REG_7(O_RM_REG_7), 
     .O_REG_8(O_RM_REG_8), 
     .O_REG_9(O_RM_REG_9), 
    .O_REG_10(O_RM_REG_10), 
    .O_REG_11(O_RM_REG_11), 
    .O_REG_12(O_RM_REG_12), 
    .O_REG_13(O_RM_REG_13), 
    .O_REG_14(O_RM_REG_14), 
    .O_REG_15(O_RM_REG_15), 
    .O_REG_16(O_RM_REG_16), 
    .O_REG_17(O_RM_REG_17), 
    .O_REG_18(O_RM_REG_18), 
    .O_REG_19(O_RM_REG_19), 
    .O_REG_20(O_RM_REG_20), 
    .O_REG_21(O_RM_REG_21), 
    .O_REG_22(O_RM_REG_22), 
    .O_REG_23(O_RM_REG_23), 
    .O_REG_24(O_RM_REG_24), 
    .O_REG_25(O_RM_REG_25), 
    .O_REG_26(O_RM_REG_26), 
    .O_REG_27(O_RM_REG_27), 
    .O_REG_28(O_RM_REG_28), 
    .O_REG_29(O_RM_REG_29), 
    .O_REG_30(O_RM_REG_30), 
    .O_REG_31(O_RM_REG_31)
    );

//////////////////////////////////////////////////////////////////////////////////

comparator comp (
    .I_COM_A(w_id_read_data1), 
    .I_COM_B(w_id_read_data2), 
    .O_COM_IGUAL(w_id_igual)
    );

//////////////////////////////////////////////////////////////////////////////////

signExtension signExt (
    .IN(w_id_instr[15:0]), 
    .OUT(w_id_signExt)
    );
	 
//////////////////////////////////////////////////////////////////////////////////

ALU alu_pc (
    .A(w_id_signExt), 
    .B(w_id_pc), 
    .O(6'b100001), 
    .result(w_id_pc_out)
    );
	 
//////////////////////////////////////////////////////////////////////////////////

Shift16 shift16 (
    .IN(w_id_instr[15:0]), 
    .OUT(w_id_shifted)
    );
	 
//////////////////////////////////////////////////////////////////////////////////

ID_EX id_ex (
    .CLK(CLK && ENABLE), 
    .RESET(RESET), 
    .I_IDEX_ControlReg(w_id_control_out), 
    .I_IDEX_PC(w_id_pc), 
    .I_IDEX_read_data1(w_id_read_data1), 
    .I_IDEX_read_data2(w_id_read_data2), 
    .I_IDEX_SignExt_in(w_id_signExt), 
    .I_IDEX_RS(w_id_instr[25:21]), 
    .I_IDEX_RT(w_id_instr[20:16]), 
    .I_IDEX_RD(w_id_instr[15:11]),
	 .I_IDEX_SHIFT(w_id_shifted),
    .O_IDEX_ControlReg(w_exe_control), 
    .O_IDEX_PC(w_exe_pc), 
    .O_IDEX_read_data1(w_exe_read_data1), 
    .O_IDEX_read_data2(w_exe_read_data2), 
    .O_IDEX_SignExt(w_exe_signExt), 
    .O_IDEX_RS(w_exe_rs), 
    .O_IDEX_RT(w_exe_rt), 
    .O_IDEX_RD(w_exe_rd),
	 .O_IDEX_SHIFT(w_exe_shifted)
    );
	 
//////////////////////////////////////////////////////////////////////////////////

Mux_4_1 mux_alu_op1 (
    .A(w_exe_read_data1), 
    .B(w_wb_write_data), 
    .C(w_mem_addr),
	 .D(),
    .SEL(w_exe_forwardA), 
    .OUT(w_exe_mux_out1)
    );

//////////////////////////////////////////////////////////////////////////////////

ALU alu_execute (
    .A(w_exe_mux_out1), 
    .B(w_exe_mux_out3), 
    .O(w_exe_control[12:7]), 
    .result(w_exe_ALU_result)
    );
	 
//////////////////////////////////////////////////////////////////////////////////

Mux_4_1 mux_alu_op2 (
    .A(w_exe_read_data2), 
    .B(w_wb_write_data), 
    .C(w_mem_addr),
	 .D(),
    .SEL(w_exe_forwardB), 
    .OUT(w_exe_mux_out2)
    );
	 
//////////////////////////////////////////////////////////////////////////////////

Mux_2_1 mux_AluSrc (
    .A(w_exe_mux_out2), 
    .B(w_exe_signExt), 
    .SEL( w_exe_control[5]), 
    .OUT(w_exe_mux_out3)
    );

//////////////////////////////////////////////////////////////////////////////////

Mux_4_1 #(.N(5)) mux_RegDst (
    .A(w_exe_rt), 
    .B(w_exe_rd),
	 .C(5'b11111),
	 .D(),
    .SEL({w_exe_control[19], w_exe_control[6]}), // {LinkR,RegDst}
    .OUT(w_exe_mux_out4)
    );
	 	 
//////////////////////////////////////////////////////////////////////////////////

ForwardingUnit FU (
    .CLK(CLK && ENABLE), 
    .RESET(RESET), 
    .I_FU_EXE_RS(w_exe_rs), 
    .I_FU_EXE_RT(w_exe_rt), 
    .I_FU_MEM_regDst(w_mem_regDst), 
    .I_FU_WB_regDst(w_wb_regDst), 
    .I_FU_MEM_RegWrite(w_mem_control[1]), 
    .I_FU_WB_RegWrite(w_wb_control[1]), 
    .O_FU_ForwardA(w_exe_forwardA), 
    .O_FU_ForwardB(w_exe_forwardB)
    );

//////////////////////////////////////////////////////////////////////////////////

EX_MEM ex_mem (
    .CLK(CLK && ENABLE), 
    .RESET(RESET), 
    .I_EXE_PC(w_exe_pc), 
    .I_EXE_ALU_result(w_exe_ALU_result), 
    .I_EXE_write_data(w_exe_mux_out2), 
    .I_EXE_regDst(w_exe_mux_out4), 
    .I_EXE_ControlReg(w_exe_control),
	 .I_EXE_SHIFT(w_exe_shifted),
    .O_EXE_PC_out(w_mem_pc_out), 
    .O_EXE_ALU_result(w_mem_addr), 
    .O_EXE_write_data(w_mem_write_data), 
    .O_EXE_regDst(w_mem_regDst), 
    .O_EXE_ControlReg(w_mem_control), 
	 .O_EXE_SHIFT(w_mem_shifted)
    );
	 
//////////////////////////////////////////////////////////////////////////////////

DataMemory data_memory (
    .CLK(CLK && ENABLE), 
    .RESET(RESET), 
    .MEMREAD(w_mem_control[3]), 
    .MEMWRITE(w_mem_control[2]), 
    .ADDR(w_mem_addr), 
    .WRITE_DATA(w_mem_write_data), 
    .READ_DATA(w_mem_read_data), 
     .O_REG_0(O_DM_REG_0), 
     .O_REG_1(O_DM_REG_1), 
     .O_REG_2(O_DM_REG_2), 
     .O_REG_3(O_DM_REG_3), 
     .O_REG_4(O_DM_REG_4), 
     .O_REG_5(O_DM_REG_5), 
     .O_REG_6(O_DM_REG_6), 
     .O_REG_7(O_DM_REG_7), 
     .O_REG_8(O_DM_REG_8), 
     .O_REG_9(O_DM_REG_9), 
    .O_REG_10(O_DM_REG_10), 
    .O_REG_11(O_DM_REG_11), 
    .O_REG_12(O_DM_REG_12), 
    .O_REG_13(O_DM_REG_13), 
    .O_REG_14(O_DM_REG_14), 
    .O_REG_15(O_DM_REG_15), 
    .O_REG_16(O_DM_REG_16), 
    .O_REG_17(O_DM_REG_17), 
    .O_REG_18(O_DM_REG_18), 
    .O_REG_19(O_DM_REG_19), 
    .O_REG_20(O_DM_REG_20), 
    .O_REG_21(O_DM_REG_21), 
    .O_REG_22(O_DM_REG_22), 
    .O_REG_23(O_DM_REG_23), 
    .O_REG_24(O_DM_REG_24), 
    .O_REG_25(O_DM_REG_25), 
    .O_REG_26(O_DM_REG_26), 
    .O_REG_27(O_DM_REG_27), 
    .O_REG_28(O_DM_REG_28), 
    .O_REG_29(O_DM_REG_29), 
    .O_REG_30(O_DM_REG_30), 
    .O_REG_31(O_DM_REG_31)
    );

//////////////////////////////////////////////////////////////////////////////////

Trunker trk (
    .I_TRK_Data(w_mem_read_data), 
    .I_TRK_size(w_mem_control[14:13]), 
    .I_TRK_sign(w_mem_control[15]), 
    .O_TRK_result(w_mem_read_data_trunked)
    );

//////////////////////////////////////////////////////////////////////////////////

MEM_WB mem_wb (
    .CLK(CLK && ENABLE), 
    .RESET(RESET), 
    .I_MEMWB_Control(w_mem_control), 
    .I_MEMWB_read_data(w_mem_read_data_trunked), 
    .I_MEMWB_ADDR(w_mem_addr), 
    .I_MEMWB_RegDst(w_mem_regDst),
	 .I_MEMWB_PC(w_mem_pc_out),
	 .I_MEMWB_SHIFT(w_mem_shifted),
    .O_MEMWB_Control(w_wb_control), 
    .O_MEMWB_read_data(w_wb_readData), 
    .O_MEMWB_ADDR(w_wb_addr), 
    .O_MEMWB_RegDst(w_wb_regDst),
	 .O_MEMWB_SHIFT(w_wb_shifted),
	 .O_MEMWB_PC(w_wb_pc_out)
    );

//////////////////////////////////////////////////////////////////////////////////

Mux_4_1 mux_wb (
    .A(w_wb_addr), 
    .B(w_wb_readData),
	 .C(w_wb_shifted),
	 .D(w_wb_pc_out),
    .SEL({w_wb_control[16] ,w_wb_control[0]}), 
    .OUT(w_wb_write_data)
    );

//////////////////////////////////////////////////////////////////////////////////


/*Combinacional de Branch*/
wire w_and1, w_and2;

assign w_and1 = w_id_control[4] && w_id_igual;
assign w_and2 = w_id_control[17] && ~w_id_igual;
assign w_branch_out = (w_and1 || w_and2 || w_id_control[18]);

//////////////////////////////////////////////////////////////////////////////////
/*salidas para DEBUG*/
   assign  O_PC = w_pc;
	assign O_PC_NEXT = w_pc_next;
   assign  O_ID_PC = w_id_pc;
   assign  O_ID_INSTR = w_id_instr;
   assign  O_EXE_CONTROL = w_exe_control;
   assign  O_EXE_PC = w_exe_pc;
   assign  O_EXE_READ_DATA1 = w_exe_read_data1;
   assign  O_EXE_READ_DATA2 = w_exe_read_data2;
   assign  O_EXE_SIGN_EXT = w_exe_signExt;
   assign  O_EXE_RS = w_exe_rs;
   assign  O_EXE_RT = w_exe_rt;
   assign  O_EXE_RD = w_exe_rd;
   assign  O_EXE_SHIFT = w_exe_shifted;
   assign  O_MEM_CONTROL = w_mem_control;
   assign  O_MEM_ALU_RESULT = w_mem_addr;
   assign  O_MEM_WRITE_DATA = w_mem_write_data;
   assign  O_MEM_PC = w_mem_pc_out;
   assign  O_MEM_REGDST = w_mem_regDst;
   assign  O_MEM_SHIFT = w_mem_shifted;
   assign  O_WB_CONTROL = w_wb_control;
   assign  O_WB_PC = w_wb_pc_out;
   assign  O_WB_ADDR = w_wb_addr;
   assign  O_WB_READ_DATA = w_wb_readData;
   assign  O_WB_SHIFT = w_wb_shifted;
   assign  O_WB_REGDST = w_wb_regDst;
    
   assign  O_HZ_IFID_WRITE = w_hz_ifid_write;
   assign  O_HZ_PC_WRITE = w_hz_pc_write;
   assign  O_HZ_ID_ControlMux = w_hz_controlMux;
   
   assign  O_FU_ForwardA = w_exe_forwardA;
   assign  O_FU_ForwardB = w_exe_forwardB;
	
	assign O_IF_INSTR = w_if_instr;
	
	always @(posedge CLK, posedge RESET)
		if(RESET)
			begin
				O_MIPS_FINISHED<=0;
			end
	
	always @(negedge CLK)
		R_ID_PC_OUT<=w_id_pc_out;

endmodule
