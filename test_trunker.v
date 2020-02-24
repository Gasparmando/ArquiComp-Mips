`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:08:00 02/24/2020
// Design Name:   Trunker
// Module Name:   C:/Users/gaspa/Documents/win7VM/workspace/ArquitecturaDeComputadoras/TP4/test_trunker.v
// Project Name:  TP4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Trunker
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_trunker;

	// Inputs
	reg [31:0] I_TRK_Data;
	reg [1:0] I_TRK_size;
	reg I_TRK_sign;

	// Outputs
	wire [31:0] O_TRK_result;

	// Instantiate the Unit Under Test (UUT)
	Trunker uut (
		.I_TRK_Data(I_TRK_Data), 
		.I_TRK_size(I_TRK_size), 
		.I_TRK_sign(I_TRK_sign), 
		.O_TRK_result(O_TRK_result)
	);

	initial begin
		// Initialize Inputs
		I_TRK_Data = 32'b00001111000011110000111100001111;
		I_TRK_size = 0;
		I_TRK_sign = 0;
		
		#10;
		I_TRK_sign = 1;

		// Wait 100 ns for global reset to finish
		#10;
		I_TRK_size = 2'b01;
		I_TRK_sign = 0;
		
		#10;
		I_TRK_sign = 1;
		
		#10;
		I_TRK_size = 2'b10;
		I_TRK_sign = 0;
		
		#10;
		I_TRK_sign = 1;
		
		#10;
		I_TRK_Data = 32'b11101110111011101110111011101110;
		I_TRK_size = 0;
		I_TRK_sign = 0;
		
		#10;
		I_TRK_size = 2'b01;
		I_TRK_sign = 0;
		
		#10;
		I_TRK_sign = 1;
		
		#10;
		I_TRK_size = 2'b10;
		I_TRK_sign = 0;
		
		#10;
		I_TRK_sign = 1;

        
		// Add stimulus here

	end
      
endmodule

