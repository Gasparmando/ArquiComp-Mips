`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    05:37:58 02/01/2020 
// Design Name: 
// Module Name:    RegisterMemory 
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
module RegisterMemory(
	 input CLK,
	 input RESET,
    input [4:0] I_REGMEM_RS,
    input [4:0] I_REGMEM_RT,
    input [4:0] I_REGMEM_RD,
    input [31:0] I_REGMEM_WRITE_DATA,
    input I_REGMEM_REGWR,
    output reg [31:0] O_REGMEM_READ_DATA_1,
    output reg [31:0] O_REGMEM_READ_DATA_2,
	 output [31:0] O_REG_0,
	 output [31:0] O_REG_1,
	 output [31:0] O_REG_2,
	 output [31:0] O_REG_3,
	 output [31:0] O_REG_4,
	 output [31:0] O_REG_5,
	 output [31:0] O_REG_6,
	 output [31:0] O_REG_7,
	 output [31:0] O_REG_8,
	 output [31:0] O_REG_9,
	 output [31:0] O_REG_10,
	 output [31:0] O_REG_11,
	 output [31:0] O_REG_12,
	 output [31:0] O_REG_13,
	 output [31:0] O_REG_14,
	 output [31:0] O_REG_15,
	 output [31:0] O_REG_16,
	 output [31:0] O_REG_17,
	 output [31:0] O_REG_18,
	 output [31:0] O_REG_19,
	 output [31:0] O_REG_20,
	 output [31:0] O_REG_21,
	 output [31:0] O_REG_22,
	 output [31:0] O_REG_23,
	 output [31:0] O_REG_24,
	 output [31:0] O_REG_25,
	 output [31:0] O_REG_26,
	 output [31:0] O_REG_27,
	 output [31:0] O_REG_28,
	 output [31:0] O_REG_29,
	 output [31:0] O_REG_30,
	 output [31:0] O_REG_31
    );

	reg [31:0] REG [31:0];
	
	integer i=0;
	
	always @(negedge CLK, posedge RESET)
	begin
		if(RESET)
			begin
				for(i=0;i<32;i=i+1)
					REG[i]<=0;
			end
		else
			begin
				if(I_REGMEM_REGWR)
					begin
						REG[I_REGMEM_RD]<=I_REGMEM_WRITE_DATA;
					end
			end
	end
	
	always @(I_REGMEM_RS, I_REGMEM_RT)
	begin
		O_REGMEM_READ_DATA_1<=REG[I_REGMEM_RS];
		O_REGMEM_READ_DATA_2<=REG[I_REGMEM_RT];
	end
	
assign O_REG_0 = REG[0];
assign O_REG_1 = REG[1];
assign O_REG_2 = REG[2];
assign O_REG_3 = REG[3];
assign O_REG_4 = REG[4];
assign O_REG_5 = REG[5];
assign O_REG_6 = REG[6];
assign O_REG_7 = REG[7];
assign O_REG_8 = REG[8];
assign O_REG_9 = REG[9];
assign O_REG_10 = REG[10];
assign O_REG_11 = REG[11];
assign O_REG_12 = REG[12];
assign O_REG_13 = REG[13];
assign O_REG_14 = REG[14];
assign O_REG_15 = REG[15];
assign O_REG_16 = REG[16];
assign O_REG_17 = REG[17];
assign O_REG_18 = REG[18];
assign O_REG_19 = REG[19];
assign O_REG_20 = REG[20];
assign O_REG_21 = REG[21];
assign O_REG_22 = REG[22];
assign O_REG_23 = REG[23];
assign O_REG_24 = REG[24];
assign O_REG_25 = REG[25];
assign O_REG_26 = REG[26];
assign O_REG_27 = REG[27];
assign O_REG_28 = REG[28];
assign O_REG_29 = REG[29];
assign O_REG_30 = REG[30];
assign O_REG_31 = REG[31];
	
endmodule 