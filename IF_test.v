`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:48:19 01/31/2020
// Design Name:   IF_InstructionFetch
// Module Name:   C:/Users/gaspa/Documents/win7VM/workspace/ArquitecturaDeComputadoras/TP4/IF_test.v
// Project Name:  TP4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: IF_InstructionFetch
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module IF_test;

	// Inputs
	reg CLK;
	reg RESET;
	reg SEL;
	reg [31:0] PC_ext;

	// Outputs
	wire [31:0] PC_OUT;
	wire [31:0] INSTR_OUT;

	// Instantiate the Unit Under Test (UUT)
	_1_IF_InstructionFetch uut (
		.CLK(CLK), 
		.RESET(RESET), 
		.SEL(SEL), 
		.PC_ext(PC_ext), 
		.PC_OUT(PC_OUT), 
		.INSTR_OUT(INSTR_OUT)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		RESET = 1;
		SEL = 0;
		PC_ext = 16;

		// Wait 100 ns for global reset to finish
		#100;
		RESET = 0;
		
        
		// Add stimulus here

	end
	
	always
	begin
		#1	CLK=~CLK;
	end;
      
endmodule

