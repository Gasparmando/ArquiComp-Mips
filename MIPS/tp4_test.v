`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:30:00 05/25/2020
// Design Name:   TP4
// Module Name:   D:/workspace/ArquitecturaDeComputadoras/TP4_Final/MIPS/tp4_test.v
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

module tp4_test;

	// Inputs
	reg CLK;
	reg RESET;
	reg [31:0] INSTRUCTION_IN;
	reg FLAG_I;
	reg FLAG_STEP;
	
	integer data_file ; 
	integer scan_file ; 
	reg [31:0] captured_data; 

	// Outputs
	wire [31:0] W_PC;
	wire [31:0] W_PC_NEXT;
	wire [31:0] W_ID_PC;
	wire [31:0] W_ID_INSTR;
	wire [31:0] W_EXE_CONTROL;
	wire [31:0] W_EXE_PC;
	wire [31:0] W_EXE_READ_DATA1;
	wire [31:0] W_EXE_READ_DATA2;
	wire [31:0] W_EXE_SIGN_EXT;
	wire [4:0] W_EXE_RS;
	wire [4:0] W_EXE_RT;
	wire [4:0] W_EXE_RD;
	wire [31:0] W_EXE_SHIFT;
	wire [31:0] W_MEM_CONTROL;
	wire [31:0] W_MEM_ALU_RESULT;
	wire [31:0] W_MEM_WRITE_DATA;
	wire [31:0] W_MEM_PC;
	wire [31:0] W_MEM_REGDST;
	wire [31:0] W_MEM_SHIFT;
	wire [31:0] W_WB_CONTROL;
	wire [31:0] W_WB_PC;
	wire [31:0] W_WB_ADDR;
	wire [31:0] W_WB_READ_DATA;
	wire [31:0] W_WB_SHIFT;
	wire [31:0] W_WB_REGDST;
	wire [31:0] W_HZ_IFID_WRITE;
	wire [31:0] W_HZ_PC_WRITE;
	wire [31:0] W_HZ_ID_ControlMux;
	wire [31:0] W_FU_ForwardA;
	wire [31:0] W_FU_ForwardB;
	wire [31:0] W_PM_REG_0;
	wire [31:0] W_PM_REG_1;
	wire [31:0] W_PM_REG_2;
	wire [31:0] W_PM_REG_3;
	wire [31:0] W_PM_REG_4;
	wire [31:0] W_PM_REG_5;
	wire [31:0] W_PM_REG_6;
	wire [31:0] W_PM_REG_7;
	wire [31:0] W_PM_REG_8;
	wire [31:0] W_PM_REG_9;
	wire [31:0] W_PM_REG_10;
	wire [31:0] W_PM_REG_11;
	wire [31:0] W_PM_REG_12;
	wire [31:0] W_PM_REG_13;
	wire [31:0] W_PM_REG_14;
	wire [31:0] W_PM_REG_15;
	wire [31:0] W_PM_REG_16;
	wire [31:0] W_PM_REG_17;
	wire [31:0] W_PM_REG_18;
	wire [31:0] W_PM_REG_19;
	wire [31:0] W_PM_REG_20;
	wire [31:0] W_PM_REG_21;
	wire [31:0] W_PM_REG_22;
	wire [31:0] W_PM_REG_23;
	wire [31:0] W_PM_REG_24;
	wire [31:0] W_PM_REG_25;
	wire [31:0] W_PM_REG_26;
	wire [31:0] W_PM_REG_27;
	wire [31:0] W_PM_REG_28;
	wire [31:0] W_PM_REG_29;
	wire [31:0] W_PM_REG_30;
	wire [31:0] W_PM_REG_31;
	wire [31:0] W_DM_REG_0;
	wire [31:0] W_DM_REG_1;
	wire [31:0] W_DM_REG_2;
	wire [31:0] W_DM_REG_3;
	wire [31:0] W_DM_REG_4;
	wire [31:0] W_DM_REG_5;
	wire [31:0] W_DM_REG_6;
	wire [31:0] W_DM_REG_7;
	wire [31:0] W_DM_REG_8;
	wire [31:0] W_DM_REG_9;
	wire [31:0] W_DM_REG_10;
	wire [31:0] W_DM_REG_11;
	wire [31:0] W_DM_REG_12;
	wire [31:0] W_DM_REG_13;
	wire [31:0] W_DM_REG_14;
	wire [31:0] W_DM_REG_15;
	wire [31:0] W_DM_REG_16;
	wire [31:0] W_DM_REG_17;
	wire [31:0] W_DM_REG_18;
	wire [31:0] W_DM_REG_19;
	wire [31:0] W_DM_REG_20;
	wire [31:0] W_DM_REG_21;
	wire [31:0] W_DM_REG_22;
	wire [31:0] W_DM_REG_23;
	wire [31:0] W_DM_REG_24;
	wire [31:0] W_DM_REG_25;
	wire [31:0] W_DM_REG_26;
	wire [31:0] W_DM_REG_27;
	wire [31:0] W_DM_REG_28;
	wire [31:0] W_DM_REG_29;
	wire [31:0] W_DM_REG_30;
	wire [31:0] W_DM_REG_31;
	wire [31:0] W_RM_REG_0;
	wire [31:0] W_RM_REG_1;
	wire [31:0] W_RM_REG_2;
	wire [31:0] W_RM_REG_3;
	wire [31:0] W_RM_REG_4;
	wire [31:0] W_RM_REG_5;
	wire [31:0] W_RM_REG_6;
	wire [31:0] W_RM_REG_7;
	wire [31:0] W_RM_REG_8;
	wire [31:0] W_RM_REG_9;
	wire [31:0] W_RM_REG_10;
	wire [31:0] W_RM_REG_11;
	wire [31:0] W_RM_REG_12;
	wire [31:0] W_RM_REG_13;
	wire [31:0] W_RM_REG_14;
	wire [31:0] W_RM_REG_15;
	wire [31:0] W_RM_REG_16;
	wire [31:0] W_RM_REG_17;
	wire [31:0] W_RM_REG_18;
	wire [31:0] W_RM_REG_19;
	wire [31:0] W_RM_REG_20;
	wire [31:0] W_RM_REG_21;
	wire [31:0] W_RM_REG_22;
	wire [31:0] W_RM_REG_23;
	wire [31:0] W_RM_REG_24;
	wire [31:0] W_RM_REG_25;
	wire [31:0] W_RM_REG_26;
	wire [31:0] W_RM_REG_27;
	wire [31:0] W_RM_REG_28;
	wire [31:0] W_RM_REG_29;
	wire [31:0] W_RM_REG_30;
	wire [31:0] W_RM_REG_31;

	// Instantiate the Unit Under Test (UUT)
	TP4 uut (
		.CLK(CLK), 
		.RESET(RESET), 
		.INSTRUCTION_IN(INSTRUCTION_IN), 
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
            INSTRUCTION_IN <= captured_data;
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

