`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:31:57 02/02/2020 
// Design Name: 
// Module Name:    MIPS 
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
module MIPS(
    );


_1_IF_InstructionFetch IF (
    .CLK(CLK), 
    .RESET(RESET), 
    .I_IF_PCSEL(SEL), 
    .I_IF_PCEXT(PC_ext), 
    .O_IF_PC(PC_OUT), 
    .O_IF_INSTRUCTION(INSTR_OUT)
    );
	 
_2_ID_InstructionDecode ID (
    .CLK(CLK), 
    .RESET(RESET), 
    .I_ID_PC(I_ID_PC), 
    .I_ID_Instr(I_ID_Instr), 
    .I_ID_WRITE_DATA(I_ID_WRITE_DATA), 
    .O_ID_ControlReg(O_ID_ControlReg), 
    .O_ID_PC(O_ID_PC), 
    .O_ID_ReadData1(O_ID_ReadData1), 
    .O_ID_ReadData2(O_ID_ReadData2), 
    .O_ID_SignExt(O_ID_SignExt), 
    .O_ID_RT(O_ID_RT), 
    .O_ID_RD(O_ID_RD)
    );



_3_EX_Execute EX (
    .CLK(CLK), 
    .RESET(RESET)
    );


_4_MEM_MemoryAccess MEM (

    );

_5_WB_WriteBack WB (

    );







endmodule
