`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:19:39 02/02/2020 
// Design Name: 
// Module Name:    ALUController 
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
module ALUController(
    input [5:0] I_ALUCTR_Funct,
    input [1:0] I_ALUCTR_ALUOp,
    output reg [3:0] selector
    );

	always @(*)
	begin
		if(I_ALUCTR_ALUOp[1])
			begin
				//<codificar funciones>
			end
		else
			if(I_ALUCTR_ALUOp[0])
				//<suma>
				selector = 4'b0000;
				
			else
				//<resta>
				selector = 4'b0001;
				
	end

	always @(*)
	begin
		if(I_ALUCTR_ALUOp == 2'b10)		//R-Type
			begin
				case(I_ALUCTR_Funct)
					6'b100000: selector= 4'b0000;		//ADD
					6'b100010: selector= 4'b0001;		//SUB
					6'b100100: selector= 4'b0010;		//AND
					6'b100101: selector= 4'b0011;		//OR
					6'b100110: selector= 4'b0100;		//XOR
					6'b100111: selector= 4'b0101;		//NOR
					6'b101010: selector= 4'b0110;		//SLT
					6'b000000: selector= 4'b0111;		//SLL
					6'b000010: selector= 4'b1000;		//SRL
					6'b000011: selector= 4'b1001;		//SRA
					
					
				endcase
			end
		else if(I_ALUCTR_ALUOp == 2'b00)						//LW Type
				selector= 4'b0000;		//ADD
		else if(I_ALUCTR_ALUOp == 2'b01)						// Branch Type
				selector= 4'b0001;		//SUB
	
	end

endmodule
