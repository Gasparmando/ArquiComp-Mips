`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:24:02 02/22/2020 
// Design Name: 
// Module Name:    Shift16 
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
module Shift16(
input [15:0] IN,
output [31:0] OUT
    );
	 
	 assign OUT = IN<<16;


endmodule
