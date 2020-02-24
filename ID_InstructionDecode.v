`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    05:29:12 02/01/2020 
// Design Name: 
// Module Name:    ID_InstructionDecode 
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
module _2_ID_InstructionDecode(
		input CLK,
		input RESET,
		input [31:0] I_ID_PC,
		input [31:0] I_ID_Instr,
		input [31:0] I_ID_WRITE_DATA,
		
		output [14:0] O_ID_ControlReg,
		output [31:0] O_ID_PC,
		output [31:0] O_ID_ReadData1,
		output [31:0] O_ID_ReadData2,
		output [31:0] O_ID_SignExt,
		output [5:0] O_ID_RT,
		output [5:0] O_ID_RD
    );
	 
	 
	 wire [31:0] W_ID_SignExt;
	 wire [31:0] W_ID_ReadData1;
	 wire [31:0] W_ID_ReadData2;
	 
	 wire [14:0] W_ID_ControlReg; //[ {ALUF}   {RegDts}, {ALUOp1,ALUOp0}, {ALUSrc}, {Branch}, {MemRead}, {MemWrite}, {RegWrite}, {MemtoReg} ]
									//    14:9      8		   7      6         5 		   4         3          2				1   			0			

	 
RegisterMemory reg_memory (
    .CLK(CLK), 
    .RESET(RESET), 
    .I_REGMEM_RS(I_ID_Instr[25:21]), 
    .I_REGMEM_RT(I_ID_Instr[20:16]), 
    .I_REGMEM_RD(I_ID_Instr[15:11]), 
    .I_REGMEM_REGWR(regwrite), 
    .I_REGMEM_WRITE_DATA(I_ID_WRITE_DATA), 
    .A(W_ID_ReadData1), 
    .B(W_ID_ReadData2)
    );

signExtension signExt (
    .IN( I_ID_Instr[15:0] ), 
    .OUT(W_ID_SignExt)
    );

ControlUnit CU (
    .I_CU_OP(I_ID_Instr[31:26] ), 
    .I_CU_FUNCT(I_ID_Instr[5:0] ), 
    .O_CU_MemtoReg(W_ID_ControlReg[0]), 
    .O_CU_MemWrite(W_ID_ControlReg[2]), 
    .O_CU_ALUSrc(W_ID_ControlReg[5]), 
    .O_CU_RegDst(W_ID_ControlReg[8]), 
    .O_CU_RegWrite(W_ID_ControlReg[1]), 
    .O_CU_Branch(W_ID_ControlReg[4]), 
    .O_CU_ALUControl(ALUControl)
    );

ID_EX id_ex (
    .CLK(CLK),
    .RESET(RESET), 
    .I_IDEX_ControlReg(W_ID_ControlReg), 
    .I_IDEX_PC(I_ID_PC), 
    .I_IDEX_ReadData1(W_ID_ReadData1), 
    .I_IDEX_ReadData2(W_ID_ReadData2), 
    .I_IDEX_SignExt_in(W_ID_SignExt), 
    .I_IDEX_RT( I_ID_Instr[20:16] ), 
    .I_IDEX_RD( I_ID_Instr[15:11] ), 
    .O_IDEX_ControlReg(O_ID_ControlReg), 
    .O_IDEX_PC(O_ID_PC), 
    .O_IDEX_ReadData1(O_ID_ReadData1), 
    .O_IDEX_ReadData2(O_ID_ReadData2), 
    .O_IDEX_SignExt(O_ID_SignExt), 
    .O_IDEX_RT(O_ID_RT), 
    .O_IDEX_RD(O_ID_RD)
    );

endmodule
