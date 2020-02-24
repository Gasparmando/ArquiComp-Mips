`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:05:47 02/02/2020 
// Design Name: 
// Module Name:    EX_Execute 
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
module _3_EX_Execute(
    input CLK,
    input RESET,
	 input [31:0] I_EXE_PC,
	 input [31:0] I_EXE_SignExt,
	 input [31:0] I_EXE_ReadData1,
	 input [31:0] I_EXE_ReadData2,
	 input [5:0] I_EXE_RT,
	 input [5:0] I_EXE_RD,
	 input [14:0] I_EXE_ControlReg,
	 
	 output [31:0] PC_out,
	 output [31:0] ALU_result_out,
	 output [31:0] ReadData_out,
	 output [5:0] 	regDst_out,
	 output [8:0] 	ControlReg_out,
	 output zeroFlag_out
	 
	 
    );

	wire [31:0] adder_out;
	wire [31:0] ALU_B;
	wire [31:0] ALU_result;
	wire zeroFlag;
	wire [2:0] selector;
	wire regDst;

SUMADOR adder (
    .A(I_EXE_PC), 
    .B((I_EXE_SignExt<<2)), 
    .Z(adder_out)
    );



ALU alu (
    .A(I_EXE_ReadData1), 
    .B(ALU_B), 
    .O(selector), 
    .result(ALU_result), 
    .zero(zeroFlag)
    );


ALUController aluCtrl (
    .operacion(I_EXE_SignExt[5:0]), 
    .ALUOp(I_EXE_ControlReg[7:6]), 
    .selector(selector)
    );

Mux_2_1 ALUSlc (
    .A(I_EXE_ReadData2), 
    .B(I_EXE_SignExt), 
    .sel(I_EXE_ControlReg[5]), 
    .OUT(ALU_B)
    );
	 
	

Mux_2_1 muxRegDst (
    .A(I_EXE_RT), 
    .B(I_EXE_RD), 
    .sel(I_EXE_ControlReg[8]), 
    .OUT(regDst)
    );


EX_MEM ex_mem (
    .CLK(CLK), 
    .RESET(RESET), 
    .PC(adder_out), 
    .ALU_result(ALU_result), 
    .ReadData(ReadData), 
    .regDst(regDst), 
    .ControlReg(I_EXE_ControlReg), 
    .zeroFlag(zeroFlag), 
    .PC_out(PC_out), 
    .ALU_result_out(ALU_result_out), 
    .ReadData_out(ReadData_out), 
    .regDst_out(regDst_out), 
    .ControlReg_out(ControlReg_out), 
    .zeroFlag_out(zeroFlag_out)
    );


endmodule
