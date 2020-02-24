`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:45:56 02/24/2020
// Design Name:   MIPS2
// Module Name:   C:/Users/gaspa/Documents/win7VM/workspace/ArquitecturaDeComputadoras/TP4/test_mips.v
// Project Name:  TP4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MIPS2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_mips;

	// Inputs
	reg CLK;
	reg RESET;
	reg I_MIPS_WrPM;
	reg [31:0] I_MIPS_WrDataPM;

	// Outputs
	wire [31:0] O_PC;
	wire [31:0] O_ID_PC;
	wire [31:0] O_ID_INSTR;
	wire [19:0] O_EXE_CONTROL;
	wire [31:0] O_EXE_PC;
	wire [31:0] O_EXE_READ_DATA1;
	wire [31:0] O_EXE_READ_DATA2;
	wire [31:0] O_EXE_SIGN_EXT;
	wire [4:0] O_EXE_RS;
	wire [4:0] O_EXE_RT;
	wire [4:0] O_EXE_RD;
	wire [31:0] O_EXE_SHIFT;
	wire [19:0] O_MEM_CONTROL;
	wire [31:0] O_MEM_ALU_RESULT;
	wire [31:0] O_MEM_WRITE_DATA;
	wire [31:0] O_MEM_PC;
	wire [4:0] O_MEM_REGDST;
	wire [31:0] O_MEM_SHIFT;
	wire [19:0] O_WB_CONTROL;
	wire [31:0] O_WB_PC;
	wire [31:0] O_WB_ADDR;
	wire [31:0] O_WB_READ_DATA;
	wire [31:0] O_WB_SHIFT;
	wire [4:0] O_WB_REGDST;
	wire O_HZ_IFID_WRITE;
	wire O_HZ_PC_WRITE;
	wire O_HZ_ID_ControlMux;
	wire [1:0] O_FU_ForwardA;
	wire [1:0] O_FU_ForwardB;
	wire [31:0] O_PM_REG_0;
	wire [31:0] O_PM_REG_1;
	wire [31:0] O_PM_REG_2;
	wire [31:0] O_PM_REG_3;
	wire [31:0] O_PM_REG_4;
	wire [31:0] O_PM_REG_5;
	wire [31:0] O_PM_REG_6;
	wire [31:0] O_PM_REG_7;
	wire [31:0] O_PM_REG_8;
	wire [31:0] O_PM_REG_9;
	wire [31:0] O_PM_REG_10;
	wire [31:0] O_PM_REG_11;
	wire [31:0] O_PM_REG_12;
	wire [31:0] O_PM_REG_13;
	wire [31:0] O_PM_REG_14;
	wire [31:0] O_PM_REG_15;
	wire [31:0] O_PM_REG_16;
	wire [31:0] O_PM_REG_17;
	wire [31:0] O_PM_REG_18;
	wire [31:0] O_PM_REG_19;
	wire [31:0] O_PM_REG_20;
	wire [31:0] O_PM_REG_21;
	wire [31:0] O_PM_REG_22;
	wire [31:0] O_PM_REG_23;
	wire [31:0] O_PM_REG_24;
	wire [31:0] O_PM_REG_25;
	wire [31:0] O_PM_REG_26;
	wire [31:0] O_PM_REG_27;
	wire [31:0] O_PM_REG_28;
	wire [31:0] O_PM_REG_29;
	wire [31:0] O_PM_REG_30;
	wire [31:0] O_PM_REG_31;
	wire [31:0] O_DM_REG_0;
	wire [31:0] O_DM_REG_1;
	wire [31:0] O_DM_REG_2;
	wire [31:0] O_DM_REG_3;
	wire [31:0] O_DM_REG_4;
	wire [31:0] O_DM_REG_5;
	wire [31:0] O_DM_REG_6;
	wire [31:0] O_DM_REG_7;
	wire [31:0] O_DM_REG_8;
	wire [31:0] O_DM_REG_9;
	wire [31:0] O_DM_REG_10;
	wire [31:0] O_DM_REG_11;
	wire [31:0] O_DM_REG_12;
	wire [31:0] O_DM_REG_13;
	wire [31:0] O_DM_REG_14;
	wire [31:0] O_DM_REG_15;
	wire [31:0] O_DM_REG_16;
	wire [31:0] O_DM_REG_17;
	wire [31:0] O_DM_REG_18;
	wire [31:0] O_DM_REG_19;
	wire [31:0] O_DM_REG_20;
	wire [31:0] O_DM_REG_21;
	wire [31:0] O_DM_REG_22;
	wire [31:0] O_DM_REG_23;
	wire [31:0] O_DM_REG_24;
	wire [31:0] O_DM_REG_25;
	wire [31:0] O_DM_REG_26;
	wire [31:0] O_DM_REG_27;
	wire [31:0] O_DM_REG_28;
	wire [31:0] O_DM_REG_29;
	wire [31:0] O_DM_REG_30;
	wire [31:0] O_DM_REG_31;
	wire [31:0] O_RM_REG_0;
	wire [31:0] O_RM_REG_1;
	wire [31:0] O_RM_REG_2;
	wire [31:0] O_RM_REG_3;
	wire [31:0] O_RM_REG_4;
	wire [31:0] O_RM_REG_5;
	wire [31:0] O_RM_REG_6;
	wire [31:0] O_RM_REG_7;
	wire [31:0] O_RM_REG_8;
	wire [31:0] O_RM_REG_9;
	wire [31:0] O_RM_REG_10;
	wire [31:0] O_RM_REG_11;
	wire [31:0] O_RM_REG_12;
	wire [31:0] O_RM_REG_13;
	wire [31:0] O_RM_REG_14;
	wire [31:0] O_RM_REG_15;
	wire [31:0] O_RM_REG_16;
	wire [31:0] O_RM_REG_17;
	wire [31:0] O_RM_REG_18;
	wire [31:0] O_RM_REG_19;
	wire [31:0] O_RM_REG_20;
	wire [31:0] O_RM_REG_21;
	wire [31:0] O_RM_REG_22;
	wire [31:0] O_RM_REG_23;
	wire [31:0] O_RM_REG_24;
	wire [31:0] O_RM_REG_25;
	wire [31:0] O_RM_REG_26;
	wire [31:0] O_RM_REG_27;
	wire [31:0] O_RM_REG_28;
	wire [31:0] O_RM_REG_29;
	wire [31:0] O_RM_REG_30;
	wire [31:0] O_RM_REG_31;

	// Instantiate the Unit Under Test (UUT)
	MIPS2 uut (
		.CLK(CLK), 
		.RESET(RESET), 
		.I_MIPS_WrPM(I_MIPS_WrPM), 
		.I_MIPS_WrDataPM(I_MIPS_WrDataPM), 
		.O_PC(O_PC), 
		.O_ID_PC(O_ID_PC), 
		.O_ID_INSTR(O_ID_INSTR), 
		.O_EXE_CONTROL(O_EXE_CONTROL), 
		.O_EXE_PC(O_EXE_PC), 
		.O_EXE_READ_DATA1(O_EXE_READ_DATA1), 
		.O_EXE_READ_DATA2(O_EXE_READ_DATA2), 
		.O_EXE_SIGN_EXT(O_EXE_SIGN_EXT), 
		.O_EXE_RS(O_EXE_RS), 
		.O_EXE_RT(O_EXE_RT), 
		.O_EXE_RD(O_EXE_RD), 
		.O_EXE_SHIFT(O_EXE_SHIFT), 
		.O_MEM_CONTROL(O_MEM_CONTROL), 
		.O_MEM_ALU_RESULT(O_MEM_ALU_RESULT), 
		.O_MEM_WRITE_DATA(O_MEM_WRITE_DATA), 
		.O_MEM_PC(O_MEM_PC), 
		.O_MEM_REGDST(O_MEM_REGDST), 
		.O_MEM_SHIFT(O_MEM_SHIFT), 
		.O_WB_CONTROL(O_WB_CONTROL), 
		.O_WB_PC(O_WB_PC), 
		.O_WB_ADDR(O_WB_ADDR), 
		.O_WB_READ_DATA(O_WB_READ_DATA), 
		.O_WB_SHIFT(O_WB_SHIFT), 
		.O_WB_REGDST(O_WB_REGDST), 
		.O_HZ_IFID_WRITE(O_HZ_IFID_WRITE), 
		.O_HZ_PC_WRITE(O_HZ_PC_WRITE), 
		.O_HZ_ID_ControlMux(O_HZ_ID_ControlMux), 
		.O_FU_ForwardA(O_FU_ForwardA), 
		.O_FU_ForwardB(O_FU_ForwardB), 
		.O_PM_REG_0(O_PM_REG_0), 
		.O_PM_REG_1(O_PM_REG_1), 
		.O_PM_REG_2(O_PM_REG_2), 
		.O_PM_REG_3(O_PM_REG_3), 
		.O_PM_REG_4(O_PM_REG_4), 
		.O_PM_REG_5(O_PM_REG_5), 
		.O_PM_REG_6(O_PM_REG_6), 
		.O_PM_REG_7(O_PM_REG_7), 
		.O_PM_REG_8(O_PM_REG_8), 
		.O_PM_REG_9(O_PM_REG_9), 
		.O_PM_REG_10(O_PM_REG_10), 
		.O_PM_REG_11(O_PM_REG_11), 
		.O_PM_REG_12(O_PM_REG_12), 
		.O_PM_REG_13(O_PM_REG_13), 
		.O_PM_REG_14(O_PM_REG_14), 
		.O_PM_REG_15(O_PM_REG_15), 
		.O_PM_REG_16(O_PM_REG_16), 
		.O_PM_REG_17(O_PM_REG_17), 
		.O_PM_REG_18(O_PM_REG_18), 
		.O_PM_REG_19(O_PM_REG_19), 
		.O_PM_REG_20(O_PM_REG_20), 
		.O_PM_REG_21(O_PM_REG_21), 
		.O_PM_REG_22(O_PM_REG_22), 
		.O_PM_REG_23(O_PM_REG_23), 
		.O_PM_REG_24(O_PM_REG_24), 
		.O_PM_REG_25(O_PM_REG_25), 
		.O_PM_REG_26(O_PM_REG_26), 
		.O_PM_REG_27(O_PM_REG_27), 
		.O_PM_REG_28(O_PM_REG_28), 
		.O_PM_REG_29(O_PM_REG_29), 
		.O_PM_REG_30(O_PM_REG_30), 
		.O_PM_REG_31(O_PM_REG_31), 
		.O_DM_REG_0(O_DM_REG_0), 
		.O_DM_REG_1(O_DM_REG_1), 
		.O_DM_REG_2(O_DM_REG_2), 
		.O_DM_REG_3(O_DM_REG_3), 
		.O_DM_REG_4(O_DM_REG_4), 
		.O_DM_REG_5(O_DM_REG_5), 
		.O_DM_REG_6(O_DM_REG_6), 
		.O_DM_REG_7(O_DM_REG_7), 
		.O_DM_REG_8(O_DM_REG_8), 
		.O_DM_REG_9(O_DM_REG_9), 
		.O_DM_REG_10(O_DM_REG_10), 
		.O_DM_REG_11(O_DM_REG_11), 
		.O_DM_REG_12(O_DM_REG_12), 
		.O_DM_REG_13(O_DM_REG_13), 
		.O_DM_REG_14(O_DM_REG_14), 
		.O_DM_REG_15(O_DM_REG_15), 
		.O_DM_REG_16(O_DM_REG_16), 
		.O_DM_REG_17(O_DM_REG_17), 
		.O_DM_REG_18(O_DM_REG_18), 
		.O_DM_REG_19(O_DM_REG_19), 
		.O_DM_REG_20(O_DM_REG_20), 
		.O_DM_REG_21(O_DM_REG_21), 
		.O_DM_REG_22(O_DM_REG_22), 
		.O_DM_REG_23(O_DM_REG_23), 
		.O_DM_REG_24(O_DM_REG_24), 
		.O_DM_REG_25(O_DM_REG_25), 
		.O_DM_REG_26(O_DM_REG_26), 
		.O_DM_REG_27(O_DM_REG_27), 
		.O_DM_REG_28(O_DM_REG_28), 
		.O_DM_REG_29(O_DM_REG_29), 
		.O_DM_REG_30(O_DM_REG_30), 
		.O_DM_REG_31(O_DM_REG_31), 
		.O_RM_REG_0(O_RM_REG_0), 
		.O_RM_REG_1(O_RM_REG_1), 
		.O_RM_REG_2(O_RM_REG_2), 
		.O_RM_REG_3(O_RM_REG_3), 
		.O_RM_REG_4(O_RM_REG_4), 
		.O_RM_REG_5(O_RM_REG_5), 
		.O_RM_REG_6(O_RM_REG_6), 
		.O_RM_REG_7(O_RM_REG_7), 
		.O_RM_REG_8(O_RM_REG_8), 
		.O_RM_REG_9(O_RM_REG_9), 
		.O_RM_REG_10(O_RM_REG_10), 
		.O_RM_REG_11(O_RM_REG_11), 
		.O_RM_REG_12(O_RM_REG_12), 
		.O_RM_REG_13(O_RM_REG_13), 
		.O_RM_REG_14(O_RM_REG_14), 
		.O_RM_REG_15(O_RM_REG_15), 
		.O_RM_REG_16(O_RM_REG_16), 
		.O_RM_REG_17(O_RM_REG_17), 
		.O_RM_REG_18(O_RM_REG_18), 
		.O_RM_REG_19(O_RM_REG_19), 
		.O_RM_REG_20(O_RM_REG_20), 
		.O_RM_REG_21(O_RM_REG_21), 
		.O_RM_REG_22(O_RM_REG_22), 
		.O_RM_REG_23(O_RM_REG_23), 
		.O_RM_REG_24(O_RM_REG_24), 
		.O_RM_REG_25(O_RM_REG_25), 
		.O_RM_REG_26(O_RM_REG_26), 
		.O_RM_REG_27(O_RM_REG_27), 
		.O_RM_REG_28(O_RM_REG_28), 
		.O_RM_REG_29(O_RM_REG_29), 
		.O_RM_REG_30(O_RM_REG_30), 
		.O_RM_REG_31(O_RM_REG_31)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		RESET = 1;
		I_MIPS_WrPM = 0;
		I_MIPS_WrDataPM = 0;

		// Wait 100 ns for global reset to finish
		#9;
		RESET = 0;
        
		// Add stimulus here

	end
	
	always begin
		#1 CLK= ~CLK;
		end
	
      
endmodule

