`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:00:38 02/21/2020
// Design Name:   comparator
// Module Name:   C:/Users/gaspa/Documents/win7VM/workspace/ArquitecturaDeComputadoras/TP4/testComparador.v
// Project Name:  TP4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: comparator
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testComparador;

	// Inputs
	reg [31:0] I_COM_A;
	reg [31:0] I_COM_B;

	// Outputs
	wire O_COM_IGUAL;

	// Instantiate the Unit Under Test (UUT)
	comparator uut (
		.I_COM_A(I_COM_A), 
		.I_COM_B(I_COM_B), 
		.O_COM_IGUAL(O_COM_IGUAL)
	);

	initial begin
		// Initialize Inputs
		I_COM_A = 0;
		I_COM_B = 0;

		// Wait 100 ns for global reset to finish
		#100;
      
		I_COM_A = 255;
		I_COM_B = 0;
		
		#100;
      
		I_COM_A = 255;
		I_COM_B = 255;
		
		#100;
      
		I_COM_A = 32'h00AA1155;
		I_COM_B = 32'h00AA1155;
		
		#100;
      
		I_COM_A = 32'b00000000000000001111111100111100;
		I_COM_B = 32'b11111111111111111111111111111111;
		
		#100;
		I_COM_A = 32'b00000000000000001111111100111100;
		I_COM_B = 32'b00000000000000001111111100111100;
		
		
		
		// Add stimulus here

	end
	
	
      
endmodule

