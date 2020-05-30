`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date:   09:36:57 05/23/2020
// Design Name:   TP4
// Module Name:   C:/Users/gaspa/Documents/win7VM/workspace/ArquitecturaDeComputadoras/TP4_Final/MIPS/readfile_test.v
// Project Name:  MIPS
// Target Device:
// Tool versions:
// Description:
//
// Verilog Test Fixture created by ISE for module: TP4
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
////////////////////////////////////////////////////////////////////////////////

module readfile_test; 
reg CLK; 
reg RESET; 
reg FLAG_I; 
reg FLAG_STEP; 
reg [31:0] INSTRUCTION; 
integer data_file ; 
integer scan_file ; 
reg [31:0] captured_data; 
reg [31:0] W_PC;
reg [31:0] W_PC_NEXT;
reg [31:0] W_ID_PC;
reg [31:0] W_ID_INSTR;
reg [31:0] W_EXE_CONTROL;
reg [31:0] W_EXE_PC;
reg [31:0] W_EXE_READ_DATA1;
reg [31:0] W_EXE_READ_DATA2;
reg [31:0] W_EXE_SIGN_EXT;
reg [4:0] W_EXE_RS;
reg [4:0] W_EXE_RT;
reg [4:0] W_EXE_RD;
reg [31:0] W_EXE_SHIFT;
reg [31:0] W_MEM_CONTROL;
reg [31:0] W_MEM_ALU_RESULT;
reg [31:0] W_MEM_WRITE_DATA;
reg [31:0] W_MEM_PC;
reg [31:0] W_MEM_REGDST;
reg [31:0] W_MEM_SHIFT;
reg [31:0] W_WB_CONTROL;
reg [31:0] W_WB_PC;
reg [31:0] W_WB_ADDR;
reg [31:0] W_WB_READ_DATA;
reg [31:0] W_WB_SHIFT;
reg [31:0] W_WB_REGDST;
reg [31:0] W_HZ_IFID_WRITE;
reg [31:0] W_HZ_PC_WRITE;
reg [31:0] W_HZ_ID_ControlMux;
reg [31:0] W_FU_ForwardA;
reg [31:0] W_FU_ForwardB;
reg [31:0] W_PM_REG_0 ;
reg [31:0] W_PM_REG_1 ;
reg [31:0] W_PM_REG_2 ;
reg [31:0] W_PM_REG_3 ;
reg [31:0] W_PM_REG_4 ;
reg [31:0] W_PM_REG_5 ;
reg [31:0] W_PM_REG_6 ;
reg [31:0] W_PM_REG_7 ;
reg [31:0] W_PM_REG_8 ;
reg [31:0] W_PM_REG_9 ;
reg [31:0] W_PM_REG_10;
reg [31:0] W_PM_REG_11;
reg [31:0] W_PM_REG_12;
reg [31:0] W_PM_REG_13;
reg [31:0] W_PM_REG_14;
reg [31:0] W_PM_REG_15;
reg [31:0] W_PM_REG_16;
reg [31:0] W_PM_REG_17;
reg [31:0] W_PM_REG_18;
reg [31:0] W_PM_REG_19;
reg [31:0] W_PM_REG_20;
reg [31:0] W_PM_REG_21;
reg [31:0] W_PM_REG_22;
reg [31:0] W_PM_REG_23;
reg [31:0] W_PM_REG_24;
reg [31:0] W_PM_REG_25;
reg [31:0] W_PM_REG_26;
reg [31:0] W_PM_REG_27;
reg [31:0] W_PM_REG_28;
reg [31:0] W_PM_REG_29;
reg [31:0] W_PM_REG_30;
reg [31:0] W_PM_REG_31;
reg [31:0] W_DM_REG_0 ;
reg [31:0] W_DM_REG_1 ;
reg [31:0] W_DM_REG_2 ;
reg [31:0] W_DM_REG_3 ;
reg [31:0] W_DM_REG_4 ;
reg [31:0] W_DM_REG_5 ;
reg [31:0] W_DM_REG_6 ;
reg [31:0] W_DM_REG_7 ;
reg [31:0] W_DM_REG_8 ;
reg [31:0] W_DM_REG_9 ;
reg [31:0] W_DM_REG_10;
reg [31:0] W_DM_REG_11;
reg [31:0] W_DM_REG_12;
reg [31:0] W_DM_REG_13;
reg [31:0] W_DM_REG_14;
reg [31:0] W_DM_REG_15;
reg [31:0] W_DM_REG_16;
reg [31:0] W_DM_REG_17;
reg [31:0] W_DM_REG_18;
reg [31:0] W_DM_REG_19;
reg [31:0] W_DM_REG_20;
reg [31:0] W_DM_REG_21;
reg [31:0] W_DM_REG_22;
reg [31:0] W_DM_REG_23;
reg [31:0] W_DM_REG_24;
reg [31:0] W_DM_REG_25;
reg [31:0] W_DM_REG_26;
reg [31:0] W_DM_REG_27;
reg [31:0] W_DM_REG_28;
reg [31:0] W_DM_REG_29;
reg [31:0] W_DM_REG_30;
reg [31:0] W_DM_REG_31;
reg [31:0] W_RM_REG_0 ;
reg [31:0] W_RM_REG_1 ;
reg [31:0] W_RM_REG_2 ;
reg [31:0] W_RM_REG_3 ;
reg [31:0] W_RM_REG_4 ;
reg [31:0] W_RM_REG_5 ;
reg [31:0] W_RM_REG_6 ;
reg [31:0] W_RM_REG_7 ;
reg [31:0] W_RM_REG_8 ;
reg [31:0] W_RM_REG_9 ;
reg [31:0] W_RM_REG_10;
reg [31:0] W_RM_REG_11;
reg [31:0] W_RM_REG_12;
reg [31:0] W_RM_REG_13;
reg [31:0] W_RM_REG_14;
reg [31:0] W_RM_REG_15;
reg [31:0] W_RM_REG_16;
reg [31:0] W_RM_REG_17;
reg [31:0] W_RM_REG_18;
reg [31:0] W_RM_REG_19;
reg [31:0] W_RM_REG_20;
reg [31:0] W_RM_REG_21;
reg [31:0] W_RM_REG_22;
reg [31:0] W_RM_REG_23;
reg [31:0] W_RM_REG_24;
reg [31:0] W_RM_REG_25;
reg [31:0] W_RM_REG_26;
reg [31:0] W_RM_REG_27;
reg [31:0] W_RM_REG_28;
reg [31:0] W_RM_REG_29;
reg [31:0] W_RM_REG_30;
reg [31:0] W_RM_REG_31;



TP4 tp4 (
    .CLK(CLK), 
    .RESET(RESET), 
    .INSTRUCTION_IN(INSTRUCTION), 
    .FLAG_I(FLAG_I), 
    .FLAG_STEP(FLAG_STEP), 
    .W_PC(W_PC), 
    .W_PC_NEXT(W_PC_NEXT), 
    .W_ID_PC(W_ID_PC), 
    .W_ID_INSTR(W_ID_INSTR), 
    .W_EXE_CONTROL(W_EXE_CONTROL), 
    .W_EXE_PC(W_EXE_PC), 
    .W_EXE_READ_DATA1(W_EXE_READ_DATA1), 
    .W_EXE_READ_DATA2(W_EXE_READ_DATA2), 
    .W_EXE_SIGN_EXT(W_EXE_SIGN_EXT), 
    .W_EXE_RS(W_EXE_RS), 
    .W_EXE_RT(W_EXE_RT), 
    .W_EXE_RD(W_EXE_RD), 
    .W_EXE_SHIFT(W_EXE_SHIFT), 
    .W_MEM_CONTROL(W_MEM_CONTROL), 
    .W_MEM_ALU_RESULT(W_MEM_ALU_RESULT), 
    .W_MEM_WRITE_DATA(W_MEM_WRITE_DATA), 
    .W_MEM_PC(W_MEM_PC), 
    .W_MEM_REGDST(W_MEM_REGDST), 
    .W_MEM_SHIFT(W_MEM_SHIFT), 
    .W_WB_CONTROL(W_WB_CONTROL), 
    .W_WB_PC(W_WB_PC), 
    .W_WB_ADDR(W_WB_ADDR), 
    .W_WB_READ_DATA(W_WB_READ_DATA), 
    .W_WB_SHIFT(W_WB_SHIFT), 
    .W_WB_REGDST(W_WB_REGDST), 
    .W_HZ_IFID_WRITE(W_HZ_IFID_WRITE), 
    .W_HZ_PC_WRITE(W_HZ_PC_WRITE), 
    .W_HZ_ID_ControlMux(W_HZ_ID_ControlMux), 
    .W_FU_ForwardA(W_FU_ForwardA), 
    .W_FU_ForwardB(W_FU_ForwardB), 
    .W_PM_REG_0(W_PM_REG_0), 
    .W_PM_REG_1(W_PM_REG_1), 
    .W_PM_REG_2(W_PM_REG_2), 
    .W_PM_REG_3(W_PM_REG_3), 
    .W_PM_REG_4(W_PM_REG_4), 
    .W_PM_REG_5(W_PM_REG_5), 
    .W_PM_REG_6(W_PM_REG_6), 
    .W_PM_REG_7(W_PM_REG_7), 
    .W_PM_REG_8(W_PM_REG_8), 
    .W_PM_REG_9(W_PM_REG_9), 
    .W_PM_REG_10(W_PM_REG_10), 
    .W_PM_REG_11(W_PM_REG_11), 
    .W_PM_REG_12(W_PM_REG_12), 
    .W_PM_REG_13(W_PM_REG_13), 
    .W_PM_REG_14(W_PM_REG_14), 
    .W_PM_REG_15(W_PM_REG_15), 
    .W_PM_REG_16(W_PM_REG_16), 
    .W_PM_REG_17(W_PM_REG_17), 
    .W_PM_REG_18(W_PM_REG_18), 
    .W_PM_REG_19(W_PM_REG_19), 
    .W_PM_REG_20(W_PM_REG_20), 
    .W_PM_REG_21(W_PM_REG_21), 
    .W_PM_REG_22(W_PM_REG_22), 
    .W_PM_REG_23(W_PM_REG_23), 
    .W_PM_REG_24(W_PM_REG_24), 
    .W_PM_REG_25(W_PM_REG_25), 
    .W_PM_REG_26(W_PM_REG_26), 
    .W_PM_REG_27(W_PM_REG_27), 
    .W_PM_REG_28(W_PM_REG_28), 
    .W_PM_REG_29(W_PM_REG_29), 
    .W_PM_REG_30(W_PM_REG_30), 
    .W_PM_REG_31(W_PM_REG_31), 
    .W_DM_REG_0(W_DM_REG_0), 
    .W_DM_REG_1(W_DM_REG_1), 
    .W_DM_REG_2(W_DM_REG_2), 
    .W_DM_REG_3(W_DM_REG_3), 
    .W_DM_REG_4(W_DM_REG_4), 
    .W_DM_REG_5(W_DM_REG_5), 
    .W_DM_REG_6(W_DM_REG_6), 
    .W_DM_REG_7(W_DM_REG_7), 
    .W_DM_REG_8(W_DM_REG_8), 
    .W_DM_REG_9(W_DM_REG_9), 
    .W_DM_REG_10(W_DM_REG_10), 
    .W_DM_REG_11(W_DM_REG_11), 
    .W_DM_REG_12(W_DM_REG_12), 
    .W_DM_REG_13(W_DM_REG_13), 
    .W_DM_REG_14(W_DM_REG_14), 
    .W_DM_REG_15(W_DM_REG_15), 
    .W_DM_REG_16(W_DM_REG_16), 
    .W_DM_REG_17(W_DM_REG_17), 
    .W_DM_REG_18(W_DM_REG_18), 
    .W_DM_REG_19(W_DM_REG_19), 
    .W_DM_REG_20(W_DM_REG_20), 
    .W_DM_REG_21(W_DM_REG_21), 
    .W_DM_REG_22(W_DM_REG_22), 
    .W_DM_REG_23(W_DM_REG_23), 
    .W_DM_REG_24(W_DM_REG_24), 
    .W_DM_REG_25(W_DM_REG_25), 
    .W_DM_REG_26(W_DM_REG_26), 
    .W_DM_REG_27(W_DM_REG_27), 
    .W_DM_REG_28(W_DM_REG_28), 
    .W_DM_REG_29(W_DM_REG_29), 
    .W_DM_REG_30(W_DM_REG_30), 
    .W_DM_REG_31(W_DM_REG_31), 
    .W_RM_REG_0(W_RM_REG_0), 
    .W_RM_REG_1(W_RM_REG_1), 
    .W_RM_REG_2(W_RM_REG_2), 
    .W_RM_REG_3(W_RM_REG_3), 
    .W_RM_REG_4(W_RM_REG_4), 
    .W_RM_REG_5(W_RM_REG_5), 
    .W_RM_REG_6(W_RM_REG_6), 
    .W_RM_REG_7(W_RM_REG_7), 
    .W_RM_REG_8(W_RM_REG_8), 
    .W_RM_REG_9(W_RM_REG_9), 
    .W_RM_REG_10(W_RM_REG_10), 
    .W_RM_REG_11(W_RM_REG_11), 
    .W_RM_REG_12(W_RM_REG_12), 
    .W_RM_REG_13(W_RM_REG_13), 
    .W_RM_REG_14(W_RM_REG_14), 
    .W_RM_REG_15(W_RM_REG_15), 
    .W_RM_REG_16(W_RM_REG_16), 
    .W_RM_REG_17(W_RM_REG_17), 
    .W_RM_REG_18(W_RM_REG_18), 
    .W_RM_REG_19(W_RM_REG_19), 
    .W_RM_REG_20(W_RM_REG_20), 
    .W_RM_REG_21(W_RM_REG_21), 
    .W_RM_REG_22(W_RM_REG_22), 
    .W_RM_REG_23(W_RM_REG_23), 
    .W_RM_REG_24(W_RM_REG_24), 
    .W_RM_REG_25(W_RM_REG_25), 
    .W_RM_REG_26(W_RM_REG_26), 
    .W_RM_REG_27(W_RM_REG_27), 
    .W_RM_REG_28(W_RM_REG_28), 
    .W_RM_REG_29(W_RM_REG_29), 
    .W_RM_REG_30(W_RM_REG_30), 
    .W_RM_REG_31(W_RM_REG_31)
    );



initial begin
    
    data_file = $fopen("./data_file.bin", "r");
    if (data_file == 0) begin
        $display("data_file handle was NULL");
        
        $finish;
    end
    // Initialize Inputs
    CLK   = 0;
    RESET = 1;	 
	 FLAG_STEP=0;

    
    // Wait 100 ns for global reset to finish
    #100;
    RESET = 0;
	 
	 
	 #100
	 
	 FLAG_STEP=1;
    
end


always @(posedge CLK) begin
    if (RESET) begin
        FLAG_I = 0;
    end
    else
    begin
        
        if (!$feof(data_file))
        begin
				scan_file = $fscanf(data_file, "%b\n", captured_data);
            //use captured_data as you would any other wire or reg value;
            INSTRUCTION <= captured_data;
            FLAG_I = 1;
            
        end
        else
            FLAG_I = 0;
    end
end

always begin
    #1 CLK = ~CLK;
end


endmodule

