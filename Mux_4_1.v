`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:05:09 02/05/2020 
// Design Name: 
// Module Name:    Mux_4_1 
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
module Mux_4_1
#(parameter N=32)(
    input [N-1:0] A,
    input [N-1:0] B,
    input [N-1:0] C,
    input [N-1:0] D,
    input [1:0] SEL,
    output [N-1:0] OUT
    );

assign OUT =	(SEL==2'b00) ? A :
					(SEL==2'b01) ? B :
					(SEL==2'b10) ? C :
										D
									;


endmodule
