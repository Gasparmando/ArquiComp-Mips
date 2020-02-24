`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:41:44 02/24/2020 
// Design Name: 
// Module Name:    Trunker 
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
module Trunker(
	input [31:0] I_TRK_Data,
	input [1:0] I_TRK_size,
	input I_TRK_sign,
	output reg [31:0] O_TRK_result
    );
	 
localparam W = 2'b00, H=2'b01, B=2'b10;
	 
	 always @(*)
	 begin
		case(I_TRK_size)
		W:
			begin
				O_TRK_result = I_TRK_Data;
			end
		
		H:
			begin
				if(I_TRK_sign)
					begin
						O_TRK_result= {{16{I_TRK_Data[15]}}, I_TRK_Data[15:0]};
					end
				else
					begin
						O_TRK_result= {16'b0000000000000000, I_TRK_Data[15:0]};
					end
			end
			
		B:
			begin
				if(I_TRK_sign)
					begin
						O_TRK_result= {{24{I_TRK_Data[7]}}, I_TRK_Data[7:0]};
					end
				else
					begin
						O_TRK_result= {24'b000000000000000000000000, I_TRK_Data[7:0]};
					end
			end
		endcase
			
	 end


endmodule
