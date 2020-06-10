`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.01.2020 18:39:00
// Design Name: 
// Module Name: PC
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


module PC(
    input CLK, input RESET,
	 input [31:0] PC_IN,
	 input ENABLE,
	 input PC_CTRL,
    output wire [31:0] PC_OUT
    );
    
    reg [31:0] pc = 0;
	 assign PC_OUT = pc;
    
    always @(posedge CLK, posedge RESET)
    begin
			if(RESET)
				pc=0;
			else
				if(PC_CTRL && ENABLE)
					pc=PC_IN;
					//Probar que ande cuando ctrl es 0 
    end
        
    
endmodule
