`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:08:36 02/01/2020 
// Design Name: 
// Module Name:    signExtension 
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
module signExtension(
    input [15:0] IN,
    output [31:0] OUT
    );

	assign OUT = {{16{IN[15]}}, IN};

endmodule
