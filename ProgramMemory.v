`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date:    18:59:44 11/11/2019
// Design Name:
// Module Name:    ProgramMemory
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
module ProgramMemory(input CLK,
                     input RESET,
                     input MEMREAD,
                     input MEMWRITE,
                     input [31:0] ADDR,
                     input [31:0] WRITE_DATA,
                     output reg [31:0] READ_DATA,
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
                     output [31:0] O_REG_31);
    
    localparam NOP = 32'b1111_1000_0000_0000_0000_0000_0000_0000;
    
    reg [31:0] data_list [31:0];
    reg [31:0] i;
    
    always @(posedge CLK, posedge RESET)
    begin
        if (RESET)
        begin
            
            /*Programa de prueba*/
            data_list[0]       <= NOP;
            data_list[1]       <= 32'b001000_00001_00001_0000000000001111; //ADDI  $(r1)        = $(r1)[0] + 15
            data_list[2]       <= NOP;
            data_list[3]       <= NOP;
            data_list[4]       <= NOP;
            data_list[5]       <= 32'b101011_00000_00001_0000000000001110; //SW  Mem(0+14)        = $(r2)
            //					data_list[6] = 32'b000010_00000000000000000000000001; //J 1
//            data_list[6]       <= 32'b000100_00000_00010_0000000001000000; //BEQ $(r0), $(r2), (128)
            data_list[6]       <= 32'b100001_00000_00101_0000000000001110; //BEQ $(r0), $(r2), (128)
            
            
            for(i = 7; i<= 31; i = i+1)
            begin
                data_list[i] <= NOP;
            end
            READ_DATA <= data_list[0];
        end
        else
        begin
            case({MEMREAD,MEMWRITE})
                2'b01:		//WRITE
                begin
                    data_list[ADDR] <= WRITE_DATA;
                    READ_DATA       <= WRITE_DATA;
                end
                2'b10:		//READ
                begin
                    READ_DATA <= data_list[ADDR];
                end
                default:
                READ_DATA <= 0;
            endcase
        end
    end
    
    assign O_REG_0  = data_list[0];
    assign O_REG_1  = data_list[1];
    assign O_REG_2  = data_list[2];
    assign O_REG_3  = data_list[3];
    assign O_REG_4  = data_list[4];
    assign O_REG_5  = data_list[5];
    assign O_REG_6  = data_list[6];
    assign O_REG_7  = data_list[7];
    assign O_REG_8  = data_list[8];
    assign O_REG_9  = data_list[9];
    assign O_REG_10 = data_list[10];
    assign O_REG_11 = data_list[11];
    assign O_REG_12 = data_list[12];
    assign O_REG_13 = data_list[13];
    assign O_REG_14 = data_list[14];
    assign O_REG_15 = data_list[15];
    assign O_REG_16 = data_list[16];
    assign O_REG_17 = data_list[17];
    assign O_REG_18 = data_list[18];
    assign O_REG_19 = data_list[19];
    assign O_REG_20 = data_list[20];
    assign O_REG_21 = data_list[21];
    assign O_REG_22 = data_list[22];
    assign O_REG_23 = data_list[23];
    assign O_REG_24 = data_list[24];
    assign O_REG_25 = data_list[25];
    assign O_REG_26 = data_list[26];
    assign O_REG_27 = data_list[27];
    assign O_REG_28 = data_list[28];
    assign O_REG_29 = data_list[29];
    assign O_REG_30 = data_list[30];
    assign O_REG_31 = data_list[31];
    
endmodule
