`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:56:02 02/01/2020 
// Design Name: 
// Module Name:    ID_EX 
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
module ID_EX(
    input CLK,
    input RESET,
	 input ENABLE,
    input [19:0] I_IDEX_ControlReg,
    input [31:0] I_IDEX_PC,
    input [31:0] I_IDEX_read_data1,
    input [31:0] I_IDEX_read_data2,
    input [31:0] I_IDEX_SignExt_in,
	 input [4:0]I_IDEX_RS,
    input [4:0]I_IDEX_RT,
    input [4:0]I_IDEX_RD,
	 input [31:0] I_IDEX_SHIFT,
	 
	 output reg [19:0] O_IDEX_ControlReg,
    output reg [31:0] O_IDEX_PC,
    output reg [31:0] O_IDEX_read_data1,
    output reg [31:0] O_IDEX_read_data2,
    output reg  [31:0] O_IDEX_SignExt,
	 output reg [4:0]O_IDEX_RS,
    output reg [4:0] O_IDEX_RT,
    output reg [4:0] O_IDEX_RD,
	 output reg [31:0] O_IDEX_SHIFT
    );
	 
	 always @(posedge CLK, posedge RESET)
	 begin
		if(RESET)
			begin
				O_IDEX_ControlReg <= 0;
				O_IDEX_PC <= 0;
				O_IDEX_read_data1 <= 0;
				O_IDEX_read_data2 <= 0;
				O_IDEX_SignExt <= 0;
				O_IDEX_RS <= 0;
				O_IDEX_RT <= 0;
				O_IDEX_RD <= 0;
				O_IDEX_SHIFT <= 0;
			end
		else if (ENABLE)
			begin
				O_IDEX_ControlReg <= I_IDEX_ControlReg;
				O_IDEX_PC <= I_IDEX_PC;
				O_IDEX_read_data1 <= I_IDEX_read_data1;
				O_IDEX_read_data2 <= I_IDEX_read_data2;
				O_IDEX_SignExt <= I_IDEX_SignExt_in;
				O_IDEX_RS <= I_IDEX_RS;
				O_IDEX_RT <=I_IDEX_RT;
				O_IDEX_RD <=I_IDEX_RD;
				O_IDEX_SHIFT <= I_IDEX_SHIFT;
			end
	 end


endmodule
