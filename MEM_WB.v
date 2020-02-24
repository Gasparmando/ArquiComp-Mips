`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:30:06 02/02/2020 
// Design Name: 
// Module Name:    MEM_WB 
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
module MEM_WB(
input CLK,
input RESET,
input [19:0] I_MEMWB_Control,
input [31:0] I_MEMWB_ReadData,
input [31:0] I_MEMWB_ADDR,
input [4:0] I_MEMWB_RegDst,
input [31:0] I_MEMWB_PC,
input [31:0] I_MEMWB_SHIFT,


output reg [19:0] O_MEMWB_Control,
output reg [31:0] O_MEMWB_ReadData,
output reg [31:0] O_MEMWB_ADDR,
output reg [4:0] O_MEMWB_RegDst,
output reg [31:0] O_MEMWB_PC,
output reg [31:0] O_MEMWB_SHIFT
    );

always @(posedge CLK, posedge RESET)
begin
	if(RESET)
	begin
		O_MEMWB_Control<=0;
		O_MEMWB_ReadData<=0;
		O_MEMWB_ADDR<=0;
		O_MEMWB_RegDst<=0;
		O_MEMWB_PC<=0;
		O_MEMWB_SHIFT<=0;
		
	end
	else
		begin
			O_MEMWB_Control<=O_MEMWB_Control;
			O_MEMWB_ReadData<=O_MEMWB_ReadData;
			O_MEMWB_ADDR<=O_MEMWB_ADDR;
			O_MEMWB_RegDst<=O_MEMWB_RegDst;
			O_MEMWB_PC<=I_MEMWB_PC;
			O_MEMWB_SHIFT<=O_MEMWB_SHIFT;
		end
end

endmodule
