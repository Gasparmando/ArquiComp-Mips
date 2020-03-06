`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:26:57 03/05/2020
// Design Name:   DebugUnit
// Module Name:   C:/Users/gaspa/Documents/win7VM/workspace/ArquitecturaDeComputadoras/TP4/test_debugUnit.v
// Project Name:  TP4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DebugUnit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_debugUnit;

	// Inputs
	reg CLK;
	reg RESET;
	reg readRegs;
	reg I_TX_FULL;
	reg [31:0] I_PC;
	reg [31:0] I_PC_NEXT;
	reg [31:0] I_ID_PC;
	reg [31:0] I_ID_INSTR;
	reg [19:0] I_EXE_CONTROL;
	reg [31:0] I_EXE_PC;
	reg [31:0] I_EXE_READ_DATA1;
	reg [31:0] I_EXE_READ_DATA2;
	reg [31:0] I_EXE_SIGN_EXT;
	reg [4:0] I_EXE_RS;
	reg [4:0] I_EXE_RT;
	reg [4:0] I_EXE_RD;
	reg [31:0] I_EXE_SHIFT;
	reg [19:0] I_MEM_CONTROL;
	reg [31:0] I_MEM_ALU_RESULT;
	reg [31:0] I_MEM_WRITE_DATA;
	reg [31:0] I_MEM_PC;
	reg [4:0] I_MEM_REGDST;
	reg [31:0] I_MEM_SHIFT;
	reg [19:0] I_WB_CONTROL;
	reg [31:0] I_WB_PC;
	reg [31:0] I_WB_ADDR;
	reg [31:0] I_WB_READ_DATA;
	reg [31:0] I_WB_SHIFT;
	reg [4:0] I_WB_REGDST;
	reg I_HZ_IFID_WRITE;
	reg I_HZ_PC_WRITE;
	reg I_HZ_ID_ControlMux;
	reg [1:0] I_FU_ForwardA;
	reg [1:0] I_FU_ForwardB;
	reg [31:0] I_PM_REG_0;
	reg [31:0] I_PM_REG_1;
	reg [31:0] I_PM_REG_2;
	reg [31:0] I_PM_REG_3;
	reg [31:0] I_PM_REG_4;
	reg [31:0] I_PM_REG_5;
	reg [31:0] I_PM_REG_6;
	reg [31:0] I_PM_REG_7;
	reg [31:0] I_PM_REG_8;
	reg [31:0] I_PM_REG_9;
	reg [31:0] I_PM_REG_10;
	reg [31:0] I_PM_REG_11;
	reg [31:0] I_PM_REG_12;
	reg [31:0] I_PM_REG_13;
	reg [31:0] I_PM_REG_14;
	reg [31:0] I_PM_REG_15;
	reg [31:0] I_PM_REG_16;
	reg [31:0] I_PM_REG_17;
	reg [31:0] I_PM_REG_18;
	reg [31:0] I_PM_REG_19;
	reg [31:0] I_PM_REG_20;
	reg [31:0] I_PM_REG_21;
	reg [31:0] I_PM_REG_22;
	reg [31:0] I_PM_REG_23;
	reg [31:0] I_PM_REG_24;
	reg [31:0] I_PM_REG_25;
	reg [31:0] I_PM_REG_26;
	reg [31:0] I_PM_REG_27;
	reg [31:0] I_PM_REG_28;
	reg [31:0] I_PM_REG_29;
	reg [31:0] I_PM_REG_30;
	reg [31:0] I_PM_REG_31;
	reg [31:0] I_DM_REG_0;
	reg [31:0] I_DM_REG_1;
	reg [31:0] I_DM_REG_2;
	reg [31:0] I_DM_REG_3;
	reg [31:0] I_DM_REG_4;
	reg [31:0] I_DM_REG_5;
	reg [31:0] I_DM_REG_6;
	reg [31:0] I_DM_REG_7;
	reg [31:0] I_DM_REG_8;
	reg [31:0] I_DM_REG_9;
	reg [31:0] I_DM_REG_10;
	reg [31:0] I_DM_REG_11;
	reg [31:0] I_DM_REG_12;
	reg [31:0] I_DM_REG_13;
	reg [31:0] I_DM_REG_14;
	reg [31:0] I_DM_REG_15;
	reg [31:0] I_DM_REG_16;
	reg [31:0] I_DM_REG_17;
	reg [31:0] I_DM_REG_18;
	reg [31:0] I_DM_REG_19;
	reg [31:0] I_DM_REG_20;
	reg [31:0] I_DM_REG_21;
	reg [31:0] I_DM_REG_22;
	reg [31:0] I_DM_REG_23;
	reg [31:0] I_DM_REG_24;
	reg [31:0] I_DM_REG_25;
	reg [31:0] I_DM_REG_26;
	reg [31:0] I_DM_REG_27;
	reg [31:0] I_DM_REG_28;
	reg [31:0] I_DM_REG_29;
	reg [31:0] I_DM_REG_30;
	reg [31:0] I_DM_REG_31;
	reg [31:0] I_RM_REG_0;
	reg [31:0] I_RM_REG_1;
	reg [31:0] I_RM_REG_2;
	reg [31:0] I_RM_REG_3;
	reg [31:0] I_RM_REG_4;
	reg [31:0] I_RM_REG_5;
	reg [31:0] I_RM_REG_6;
	reg [31:0] I_RM_REG_7;
	reg [31:0] I_RM_REG_8;
	reg [31:0] I_RM_REG_9;
	reg [31:0] I_RM_REG_10;
	reg [31:0] I_RM_REG_11;
	reg [31:0] I_RM_REG_12;
	reg [31:0] I_RM_REG_13;
	reg [31:0] I_RM_REG_14;
	reg [31:0] I_RM_REG_15;
	reg [31:0] I_RM_REG_16;
	reg [31:0] I_RM_REG_17;
	reg [31:0] I_RM_REG_18;
	reg [31:0] I_RM_REG_19;
	reg [31:0] I_RM_REG_20;
	reg [31:0] I_RM_REG_21;
	reg [31:0] I_RM_REG_22;
	reg [31:0] I_RM_REG_23;
	reg [31:0] I_RM_REG_24;
	reg [31:0] I_RM_REG_25;
	reg [31:0] I_RM_REG_26;
	reg [31:0] I_RM_REG_27;
	reg [31:0] I_RM_REG_28;
	reg [31:0] I_RM_REG_29;
	reg [31:0] I_RM_REG_30;
	reg [31:0] I_RM_REG_31;
	reg [31:0] I_ITERACIONES;

	// Outputs
	wire O_WR_UART;
	wire [7:0] O_DATA_UART;
	
	wire TX;

	// Instantiate the Unit Under Test (UUT)
	DebugUnit uut (
		.CLK(CLK), 
		.RESET(RESET), 
		.readRegs(readRegs), 
		.I_TX_FULL(I_TX_FULL), 
		.O_WR_UART(O_WR_UART), 
		.O_DATA_UART(O_DATA_UART), 
		.I_PC(I_PC), 
		.I_PC_NEXT(I_PC_NEXT), 
		.I_ID_PC(I_ID_PC), 
		.I_ID_INSTR(I_ID_INSTR), 
		.I_EXE_CONTROL(I_EXE_CONTROL), 
		.I_EXE_PC(I_EXE_PC), 
		.I_EXE_READ_DATA1(I_EXE_READ_DATA1), 
		.I_EXE_READ_DATA2(I_EXE_READ_DATA2), 
		.I_EXE_SIGN_EXT(I_EXE_SIGN_EXT), 
		.I_EXE_RS(I_EXE_RS), 
		.I_EXE_RT(I_EXE_RT), 
		.I_EXE_RD(I_EXE_RD), 
		.I_EXE_SHIFT(I_EXE_SHIFT), 
		.I_MEM_CONTROL(I_MEM_CONTROL), 
		.I_MEM_ALU_RESULT(I_MEM_ALU_RESULT), 
		.I_MEM_WRITE_DATA(I_MEM_WRITE_DATA), 
		.I_MEM_PC(I_MEM_PC), 
		.I_MEM_REGDST(I_MEM_REGDST), 
		.I_MEM_SHIFT(I_MEM_SHIFT), 
		.I_WB_CONTROL(I_WB_CONTROL), 
		.I_WB_PC(I_WB_PC), 
		.I_WB_ADDR(I_WB_ADDR), 
		.I_WB_READ_DATA(I_WB_READ_DATA), 
		.I_WB_SHIFT(I_WB_SHIFT), 
		.I_WB_REGDST(I_WB_REGDST), 
		.I_HZ_IFID_WRITE(I_HZ_IFID_WRITE), 
		.I_HZ_PC_WRITE(I_HZ_PC_WRITE), 
		.I_HZ_ID_ControlMux(I_HZ_ID_ControlMux), 
		.I_FU_ForwardA(I_FU_ForwardA), 
		.I_FU_ForwardB(I_FU_ForwardB), 
		.I_PM_REG_0(I_PM_REG_0), 
		.I_PM_REG_1(I_PM_REG_1), 
		.I_PM_REG_2(I_PM_REG_2), 
		.I_PM_REG_3(I_PM_REG_3), 
		.I_PM_REG_4(I_PM_REG_4), 
		.I_PM_REG_5(I_PM_REG_5), 
		.I_PM_REG_6(I_PM_REG_6), 
		.I_PM_REG_7(I_PM_REG_7), 
		.I_PM_REG_8(I_PM_REG_8), 
		.I_PM_REG_9(I_PM_REG_9), 
		.I_PM_REG_10(I_PM_REG_10), 
		.I_PM_REG_11(I_PM_REG_11), 
		.I_PM_REG_12(I_PM_REG_12), 
		.I_PM_REG_13(I_PM_REG_13), 
		.I_PM_REG_14(I_PM_REG_14), 
		.I_PM_REG_15(I_PM_REG_15), 
		.I_PM_REG_16(I_PM_REG_16), 
		.I_PM_REG_17(I_PM_REG_17), 
		.I_PM_REG_18(I_PM_REG_18), 
		.I_PM_REG_19(I_PM_REG_19), 
		.I_PM_REG_20(I_PM_REG_20), 
		.I_PM_REG_21(I_PM_REG_21), 
		.I_PM_REG_22(I_PM_REG_22), 
		.I_PM_REG_23(I_PM_REG_23), 
		.I_PM_REG_24(I_PM_REG_24), 
		.I_PM_REG_25(I_PM_REG_25), 
		.I_PM_REG_26(I_PM_REG_26), 
		.I_PM_REG_27(I_PM_REG_27), 
		.I_PM_REG_28(I_PM_REG_28), 
		.I_PM_REG_29(I_PM_REG_29), 
		.I_PM_REG_30(I_PM_REG_30), 
		.I_PM_REG_31(I_PM_REG_31), 
		.I_DM_REG_0(I_DM_REG_0), 
		.I_DM_REG_1(I_DM_REG_1), 
		.I_DM_REG_2(I_DM_REG_2), 
		.I_DM_REG_3(I_DM_REG_3), 
		.I_DM_REG_4(I_DM_REG_4), 
		.I_DM_REG_5(I_DM_REG_5), 
		.I_DM_REG_6(I_DM_REG_6), 
		.I_DM_REG_7(I_DM_REG_7), 
		.I_DM_REG_8(I_DM_REG_8), 
		.I_DM_REG_9(I_DM_REG_9), 
		.I_DM_REG_10(I_DM_REG_10), 
		.I_DM_REG_11(I_DM_REG_11), 
		.I_DM_REG_12(I_DM_REG_12), 
		.I_DM_REG_13(I_DM_REG_13), 
		.I_DM_REG_14(I_DM_REG_14), 
		.I_DM_REG_15(I_DM_REG_15), 
		.I_DM_REG_16(I_DM_REG_16), 
		.I_DM_REG_17(I_DM_REG_17), 
		.I_DM_REG_18(I_DM_REG_18), 
		.I_DM_REG_19(I_DM_REG_19), 
		.I_DM_REG_20(I_DM_REG_20), 
		.I_DM_REG_21(I_DM_REG_21), 
		.I_DM_REG_22(I_DM_REG_22), 
		.I_DM_REG_23(I_DM_REG_23), 
		.I_DM_REG_24(I_DM_REG_24), 
		.I_DM_REG_25(I_DM_REG_25), 
		.I_DM_REG_26(I_DM_REG_26), 
		.I_DM_REG_27(I_DM_REG_27), 
		.I_DM_REG_28(I_DM_REG_28), 
		.I_DM_REG_29(I_DM_REG_29), 
		.I_DM_REG_30(I_DM_REG_30), 
		.I_DM_REG_31(I_DM_REG_31), 
		.I_RM_REG_0(I_RM_REG_0), 
		.I_RM_REG_1(I_RM_REG_1), 
		.I_RM_REG_2(I_RM_REG_2), 
		.I_RM_REG_3(I_RM_REG_3), 
		.I_RM_REG_4(I_RM_REG_4), 
		.I_RM_REG_5(I_RM_REG_5), 
		.I_RM_REG_6(I_RM_REG_6), 
		.I_RM_REG_7(I_RM_REG_7), 
		.I_RM_REG_8(I_RM_REG_8), 
		.I_RM_REG_9(I_RM_REG_9), 
		.I_RM_REG_10(I_RM_REG_10), 
		.I_RM_REG_11(I_RM_REG_11), 
		.I_RM_REG_12(I_RM_REG_12), 
		.I_RM_REG_13(I_RM_REG_13), 
		.I_RM_REG_14(I_RM_REG_14), 
		.I_RM_REG_15(I_RM_REG_15), 
		.I_RM_REG_16(I_RM_REG_16), 
		.I_RM_REG_17(I_RM_REG_17), 
		.I_RM_REG_18(I_RM_REG_18), 
		.I_RM_REG_19(I_RM_REG_19), 
		.I_RM_REG_20(I_RM_REG_20), 
		.I_RM_REG_21(I_RM_REG_21), 
		.I_RM_REG_22(I_RM_REG_22), 
		.I_RM_REG_23(I_RM_REG_23), 
		.I_RM_REG_24(I_RM_REG_24), 
		.I_RM_REG_25(I_RM_REG_25), 
		.I_RM_REG_26(I_RM_REG_26), 
		.I_RM_REG_27(I_RM_REG_27), 
		.I_RM_REG_28(I_RM_REG_28), 
		.I_RM_REG_29(I_RM_REG_29), 
		.I_RM_REG_30(I_RM_REG_30), 
		.I_RM_REG_31(I_RM_REG_31), 
		.I_ITERACIONES(I_ITERACIONES)
	);
	
	UART uart (
    .CLK(CLK), 
    .RESET(RESET), 
    .rd_uart( ), 
    .wr_uart(O_WR_UART), 
    .rx(), 
    .w_data(O_DATA_UART), 
    .tx_full(I_TX_FULL), 
    .rx_empty( ), 
    .tx(TX), 
    .r_data( )
    );


	initial begin
		// Initialize Inputs
		CLK = 0;
		RESET = 1;
		readRegs = 0;
		I_TX_FULL = 0;
		I_PC = 24;
		I_PC_NEXT = 28;
		I_ID_PC = 0;
		I_ID_INSTR = 0;
		I_EXE_CONTROL = 233;
		I_EXE_PC = 24;
		I_EXE_READ_DATA1 = 0;
		I_EXE_READ_DATA2 = 0;
		I_EXE_SIGN_EXT = 0;
		I_EXE_RS = 0;
		I_EXE_RT = 25;
		I_EXE_RD = 0;
		I_EXE_SHIFT = 0;
		I_MEM_CONTROL = 0;
		I_MEM_ALU_RESULT = 0;
		I_MEM_WRITE_DATA = 0;
		I_MEM_PC = 0;
		I_MEM_REGDST = 0;
		I_MEM_SHIFT = 0;
		I_WB_CONTROL = 0;
		I_WB_PC = 0;
		I_WB_ADDR = 0;
		I_WB_READ_DATA = 0;
		I_WB_SHIFT = 0;
		I_WB_REGDST = 0;
		I_HZ_IFID_WRITE = 0;
		I_HZ_PC_WRITE = 0;
		I_HZ_ID_ControlMux = 0;
		I_FU_ForwardA = 0;
		I_FU_ForwardB = 0;
		I_PM_REG_0 = 0;
		I_PM_REG_1 = 0;
		I_PM_REG_2 = 0;
		I_PM_REG_3 = 0;
		I_PM_REG_4 = 0;
		I_PM_REG_5 = 0;
		I_PM_REG_6 = 0;
		I_PM_REG_7 = 0;
		I_PM_REG_8 = 0;
		I_PM_REG_9 = 0;
		I_PM_REG_10 = 0;
		I_PM_REG_11 = 0;
		I_PM_REG_12 = 0;
		I_PM_REG_13 = 0;
		I_PM_REG_14 = 0;
		I_PM_REG_15 = 0;
		I_PM_REG_16 = 0;
		I_PM_REG_17 = 0;
		I_PM_REG_18 = 0;
		I_PM_REG_19 = 0;
		I_PM_REG_20 = 0;
		I_PM_REG_21 = 0;
		I_PM_REG_22 = 100;
		I_PM_REG_23 = 0;
		I_PM_REG_24 = 0;
		I_PM_REG_25 = 0;
		I_PM_REG_26 = 0;
		I_PM_REG_27 = 0;
		I_PM_REG_28 = 0;
		I_PM_REG_29 = 0;
		I_PM_REG_30 = 0;
		I_PM_REG_31 = 0;
		I_DM_REG_0 = 0;
		I_DM_REG_1 = 0;
		I_DM_REG_2 = 0;
		I_DM_REG_3 = 0;
		I_DM_REG_4 = 0;
		I_DM_REG_5 = 0;
		I_DM_REG_6 = 0;
		I_DM_REG_7 = 0;
		I_DM_REG_8 = 0;
		I_DM_REG_9 = 0;
		I_DM_REG_10 = 0;
		I_DM_REG_11 = 0;
		I_DM_REG_12 = 0;
		I_DM_REG_13 = 0;
		I_DM_REG_14 = 0;
		I_DM_REG_15 = 0;
		I_DM_REG_16 = 0;
		I_DM_REG_17 = 0;
		I_DM_REG_18 = 0;
		I_DM_REG_19 = 0;
		I_DM_REG_20 = 0;
		I_DM_REG_21 = 0;
		I_DM_REG_22 = 0;
		I_DM_REG_23 = 0;
		I_DM_REG_24 = 0;
		I_DM_REG_25 = 0;
		I_DM_REG_26 = 0;
		I_DM_REG_27 = 0;
		I_DM_REG_28 = 0;
		I_DM_REG_29 = 0;
		I_DM_REG_30 = 0;
		I_DM_REG_31 = 0;
		I_RM_REG_0 = 0;
		I_RM_REG_1 = 0;
		I_RM_REG_2 = 0;
		I_RM_REG_3 = 0;
		I_RM_REG_4 = 0;
		I_RM_REG_5 = 0;
		I_RM_REG_6 = 0;
		I_RM_REG_7 = 0;
		I_RM_REG_8 = 0;
		I_RM_REG_9 = 0;
		I_RM_REG_10 = 0;
		I_RM_REG_11 = 0;
		I_RM_REG_12 = 0;
		I_RM_REG_13 = 0;
		I_RM_REG_14 = 0;
		I_RM_REG_15 = 0;
		I_RM_REG_16 = 0;
		I_RM_REG_17 = 0;
		I_RM_REG_18 = 0;
		I_RM_REG_19 = 0;
		I_RM_REG_20 = 0;
		I_RM_REG_21 = 0;
		I_RM_REG_22 = 0;
		I_RM_REG_23 = 0;
		I_RM_REG_24 = 0;
		I_RM_REG_25 = 32'b11111110_01111111_11111011_11111111;
		I_RM_REG_26 = 0;
		I_RM_REG_27 = 0;
		I_RM_REG_28 = 0;
		I_RM_REG_29 = 0;
		I_RM_REG_30 = 0;
		I_RM_REG_31 = 0;
		I_ITERACIONES = 50;

		// Wait 100 ns for global reset to finish
		#15
		RESET = 0 ;
		#100;
        
		 
		// Add stimulus here

		readRegs=1;
		#2
		readRegs=0;
	end
	
	always
	begin
		#1 CLK = ~CLK;
	end
      
endmodule

