`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:56:44 11/11/2019 
// Design Name: 
// Module Name:    Mux 
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
module Mux_2_1
#(parameter N=32) (
		input [N-1:0] A,
		input [N-1:0] B,
		input SEL,
		output [N-1:0] OUT
    );
	 
	 assign OUT = (SEL==0) ? A:B;
	 
endmodule
