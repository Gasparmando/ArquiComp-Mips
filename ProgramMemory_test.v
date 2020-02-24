`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   05:13:15 02/01/2020
// Design Name:   ProgramMemory
// Module Name:   D:/workspace/ArquitecturaDeComputadoras/TP4/ProgramMemory_test.v
// Project Name:  TP4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ProgramMemory
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ProgramMemory_test;

	// Inputs
	reg CLK;
	reg RESET;
	reg [31:0] ADDR;

	// Outputs
	wire [31:0] DATA;

	// Instantiate the Unit Under Test (UUT)
	ProgramMemory uut (
		.CLK(CLK), 
		.RESET(RESET), 
		.ADDR(ADDR), 
		.DATA(DATA)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		RESET = 1;
		ADDR = 0;

		// Wait 100 ns for global reset to finish
		#10;
       RESET=0;
		 repeat(50)
		 #10 ADDR = ADDR+4;
		// Add stimulus here

	end
	
	always
	begin
	#1 CLK=~CLK;
	end
      
endmodule

