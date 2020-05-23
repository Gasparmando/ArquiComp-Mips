`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:14:53 02/12/2020 
// Design Name: 
// Module Name:    HazardDetectionUnit 
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
module HazardDetectionUnit(
input CLK,
input RESET,
input [4:0] I_HZ_ID_RS,
input [4:0] I_HZ_ID_RT,
input [4:0] I_HZ_EXE_RT,
input [5:0] OPCODE,
input I_HZ_EXE_MemRead,

output reg  O_HZ_IFID_WRITE,
output reg O_HZ_PC_WRITE,
output reg O_HZ_ID_ControlMux
    );


localparam HALT = 6'b010101;


always @(*)
	begin
		if(I_HZ_EXE_MemRead && ( (I_HZ_EXE_RT==I_HZ_ID_RS)  ||  (I_HZ_EXE_RT==I_HZ_ID_RT) ))
			begin
				/*INSERTA BURBUJA*/
				O_HZ_IFID_WRITE = 0;
				O_HZ_PC_WRITE = 0;
				O_HZ_ID_ControlMux = 1;
			end
		else
			begin
				O_HZ_IFID_WRITE = 1;
				O_HZ_PC_WRITE = 1;
				O_HZ_ID_ControlMux = 0;
			end
			
			if(OPCODE == HALT)
				O_HZ_IFID_WRITE=0;
	end
	


endmodule
