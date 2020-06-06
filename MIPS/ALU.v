`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:13:36 02/02/2020 
// Design Name: 
// Module Name:    ALU 
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
module ALU
	#(parameter N = 31)
	(
    input  [N:0] A,
    input  [N:0] B,
    input [5:0] O,
    output  [N:0] result
    );
	 
localparam 
			  ADDU= 6'b100001,   
			  SUBU = 6'b100011,	
			  AND = 6'b100100,	
			  OR = 6'b100101,	
			  XOR = 6'b100110,	
			  NOR = 6'b100111,		
			  SLT = 6'b101010,		
			  SLL = 6'b000000,
			  SRA = 6'b000011,
			  SRL = 6'b000010,
			  SLLV = 6'b000100,
			  SRLV = 6'b000110,
			  SRAV = 6'b000111;
	
	assign result = (O==ADDU) ? A+B : 	//ADD
						 (O==SUBU) ? A-B :	//SUB
						 (O==AND) ? A&B :	//AND
						 (O==OR) ? A|B : 	//OR
						 (O==XOR) ? A^B :	//XOR
						 (O==NOR) ? ~(A|B) : 	//NOR
						 (O==SLT) ? A<B :	//SLT
						 (O==SLL) ? A<<B[10:6] :	//SLL
						 (O==SRL) ? A>>B[10:6] :	//SRL
						 (O==SRA) ? {$signed(A)>>>B[10:6]} :	//SRA
						 (O==SLLV) ? A<<B[4:0] :		//SLLV
						 (O==SRLV) ? A>>B[4:0] :		//SRLV
						 (O==SRAV) ? {$signed(A)>>>B[4:0]} :	//SRAV
						 32'b11111111111111111111111111111111 ;
						 
	//assign zero = (result==0) ? 1'b1 : 1'b0;
						 
						 						 

						 
						 
						 
						 
endmodule
