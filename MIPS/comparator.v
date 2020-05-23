`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:37:29 02/20/2020 
// Design Name: 
// Module Name:    comparator 
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
module comparator(
	input [31:0] I_COM_A,
	input [31:0] I_COM_B,
	output O_COM_IGUAL
    );
	 
	 wire [31:0] w_xor;
	 
	 assign w_xor = I_COM_A ~^ I_COM_B;
	 
	 assign O_COM_IGUAL = w_xor[31] && w_xor[30] && w_xor[29] && w_xor[28] && w_xor[27] && w_xor[26] && w_xor[25] && w_xor[24] && w_xor[23] && w_xor[22] && w_xor[21] && w_xor[20] && w_xor[19] && w_xor[18] && w_xor[17] && w_xor[16] && w_xor[15] && w_xor[14] && w_xor[13] && w_xor[12] && w_xor[11] && w_xor[10] && w_xor[9] && w_xor[8] && w_xor[7] && w_xor[6] && w_xor[5] && w_xor[4] && w_xor[3] && w_xor[2] && w_xor[1] && w_xor[0] ; 



endmodule
