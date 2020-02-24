`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:50:02 02/01/2020
// Design Name:   Mux1
// Module Name:   C:/Users/gaspa/Documents/win7VM/workspace/ArquitecturaDeComputadoras/TP4/Mux_test.v
// Project Name:  TP4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Mux1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Mux_test;

	// Inputs
	reg [31:0] A;
	reg [31:0] B;
	reg sel;

	// Outputs
	wire [31:0] OUT;

	// Instantiate the Unit Under Test (UUT)
	Mux1 uut (
		.A(A), 
		.B(B), 
		.sel(sel), 
		.OUT(OUT)
	);

	initial begin
		// Initialize Inputs
		A = 5;
		B = 17;
		sel = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		sel=1;
		
		#10 sel=0;
		
		#10 A=15;
        
		// Add stimulus here

	end
      
endmodule

