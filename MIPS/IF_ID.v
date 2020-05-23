`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.01.2020 18:47:04
// Design Name: 
// Module Name: IF_ID
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module IF_ID(
    input CLK,
    input RESET,
    input [31:0] I_IFID_INSTRUCTION,
    input [31:0] I_IFID_PC,
	 input I_IFID_WRITE,
	 input I_IFID_FLUSH,
	 output reg [31:0] O_IFID_INSTRUCTION,
    output reg [31:0] O_IFID_PC
    );
    
localparam NOP = 32'b1111_1000_0000_0000_0000_0000_0000_0000; 
	
    always @(posedge CLK, posedge RESET)
    begin
        if(RESET )
        begin
            O_IFID_PC <= 0;
            O_IFID_INSTRUCTION <= 0;
        end
        else
		  if(I_IFID_FLUSH)
		  begin
			   O_IFID_PC <= 0;
            O_IFID_INSTRUCTION <= NOP;
		  end
		  else if(I_IFID_WRITE)
            begin
				
               O_IFID_PC <= I_IFID_PC;
               O_IFID_INSTRUCTION <= I_IFID_INSTRUCTION;
            end
    end
    
endmodule
