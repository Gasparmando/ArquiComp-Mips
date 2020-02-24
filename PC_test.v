`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:48:02 02/01/2020
// Design Name:   PC
// Module Name:   C:/Users/gaspa/Documents/win7VM/workspace/ArquitecturaDeComputadoras/TP4/PC_test.v
// Project Name:  TP4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: PC
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module PC_test;

	// Inputs
	reg [31:0] PC_IN;

	// Outputs
	wire [31:0] PC_OUT;

	// Instantiate the Unit Under Test (UUT)
	PC uut (
		.PC_IN(PC_IN), 
		.PC_OUT(PC_OUT)
	);

	initial begin
		// Initialize Inputs
		PC_IN = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		PC_IN = 20;
		
		#100;
		
		PC_IN = 1024;
		
		#100;
		
		PC_IN = 256;
        
		// Add stimulus here

	end
      
endmodule

