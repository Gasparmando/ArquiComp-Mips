`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:27:38 02/02/2020 
// Design Name: 
// Module Name:    EX_MEM 
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
module EX_MEM(
    input CLK,
    input RESET,
	 input ENABLE,
	 input [31:0] I_EXE_PC,
	 input [31:0] I_EXE_ALU_result,
	 input [31:0] I_EXE_SHIFT,
	 input [31:0] I_EXE_write_data,
	 input [4:0] I_EXE_regDst,
	 input [19:0] I_EXE_ControlReg,	 
	 
	 output reg [31:0] O_EXE_PC_out,
	 output reg [31:0] O_EXE_ALU_result,
	 output reg [31:0] O_EXE_write_data,
	 output reg [4:0]  O_EXE_regDst,
	 output reg [19:0]  O_EXE_ControlReg,
	 output reg [31:0] O_EXE_SHIFT
    );


	 always @(posedge CLK, posedge RESET)
	 begin
		if(RESET)
		begin
			O_EXE_PC_out <= 0;
			O_EXE_ALU_result <=0;
			O_EXE_write_data <= 0;
			O_EXE_regDst <= 0 ;
			O_EXE_ControlReg <= 0;
			O_EXE_SHIFT <= 0;
			
		end
		else if (ENABLE)
			begin
					O_EXE_PC_out <= I_EXE_PC;
					O_EXE_ALU_result <=I_EXE_ALU_result;
					O_EXE_write_data <= I_EXE_write_data;
					O_EXE_regDst <= I_EXE_regDst ;
					O_EXE_ControlReg <=I_EXE_ControlReg;
					O_EXE_SHIFT <= I_EXE_SHIFT;
			end
		
	 end
	 


endmodule
