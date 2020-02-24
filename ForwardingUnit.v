`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:54:05 02/12/2020 
// Design Name: 
// Module Name:    ForwardingUnit 
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
module ForwardingUnit(
input CLK,
input RESET,
input [4:0] I_FU_EXE_RS,
input [4:0] I_FU_EXE_RT,
input [4:0] I_FU_MEM_regDst,
input [4:0] I_FU_WB_regDst,
input I_FU_MEM_RegWrite,
input I_FU_WB_RegWrite,

output reg [1:0] O_FU_ForwardA,
output reg [1:0] O_FU_ForwardB
    );
	 
	 always @(*)
	 begin
		if (I_FU_WB_RegWrite && (I_FU_EXE_RS==I_FU_WB_regDst) && (I_FU_WB_regDst!=0) && (I_FU_EXE_RS!=I_FU_MEM_regDst) )
			O_FU_ForwardA = 2'b01;
		else if(I_FU_MEM_RegWrite && (I_FU_EXE_RS==I_FU_MEM_regDst) && (I_FU_MEM_regDst!=0) )
			O_FU_ForwardA = 2'b10;
		else
			O_FU_ForwardA = 2'b00;
		
		if (I_FU_WB_RegWrite && (I_FU_EXE_RT==I_FU_WB_regDst) && (I_FU_WB_regDst!=0) && (I_FU_EXE_RT!=I_FU_MEM_regDst) )
			O_FU_ForwardB = 2'b01;
		else if(I_FU_MEM_RegWrite && (I_FU_EXE_RT==I_FU_MEM_regDst) && (I_FU_MEM_regDst!=0) )
			O_FU_ForwardB = 2'b10;
		else
			O_FU_ForwardB = 2'b00;
			
	 end 


endmodule
