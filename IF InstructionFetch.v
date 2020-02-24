`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.01.2020 20:29:12
// Design Name: 
// Module Name: IF InstructionFetch
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module _1_IF_InstructionFetch(
		input CLK, 
		input RESET, 
		input I_IF_PCSEL, 
		input [31:0] I_IF_PCEXT,
		
		output [31:0] O_IF_PC, 
		output [31:0] O_IF_INSTRUCTION
    );
    
    wire [31:0] W_IF_PC_NEXT;
    wire [31:0] W_IF_PC;
    wire [31:0] W_IF_ADDER_OUT;
    wire [31:0] W_IF_INSTRUCTION;
    
 Mux_2_1 muxPcSlc(
    .A(W_IF_ADDER_OUT) ,.B(I_IF_PCEXT), .SEL(I_IF_PCSEL),
    .OUT(W_IF_PC_NEXT) 
    );
    
 SUMADOR sumador(
 .A(W_IF_PC), .B(4),
 .Z(W_IF_ADDER_OUT)
 );
 
 ProgramMemory pm(
 .CLK(CLK), .RESET(RESET), .ADDR(W_IF_PC), 
 .DATA(W_IF_INSTRUCTION)
 );
 
 IF_ID if_id(
    .CLK(CLK), .RESET(RESET), 
	 .I_IFID_INSTRUCTION(W_IF_INSTRUCTION), 
	 .I_IFID_PC(W_IF_ADDER_OUT),
    .O_IFID_INSTRUCTION(O_IF_INSTRUCTION), 
	 .O_IFID_PC(O_IF_PC)
 );
 
 PC pc(
	  .CLK(CLK), .RESET(RESET),
    .PC_IN(W_IF_PC_NEXT), 
    .PC_OUT(W_IF_PC)
 );
    
endmodule
