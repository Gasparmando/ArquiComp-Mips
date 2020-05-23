`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date:    19:58:36 03/05/2020
// Design Name:
// Module Name:    TP4
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
module TP4(input CLK,
           input RESET,
           input [31:0] INSTRUCTION_IN,
           input FLAG_I,
           input FLAG_STEP);
    
    
    
    
    
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
    wire [31:0] W_PM_REG_0 ;
    wire [31:0] W_PM_REG_1 ;
    wire [31:0] W_PM_REG_2 ;
    wire [31:0] W_PM_REG_3 ;
    wire [31:0] W_PM_REG_4 ;
    wire [31:0] W_PM_REG_5 ;
    wire [31:0] W_PM_REG_6 ;
    wire [31:0] W_PM_REG_7 ;
    wire [31:0] W_PM_REG_8 ;
    wire [31:0] W_PM_REG_9 ;
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
    wire [31:0] W_DM_REG_0 ;
    wire [31:0] W_DM_REG_1 ;
    wire [31:0] W_DM_REG_2 ;
    wire [31:0] W_DM_REG_3 ;
    wire [31:0] W_DM_REG_4 ;
    wire [31:0] W_DM_REG_5 ;
    wire [31:0] W_DM_REG_6 ;
    wire [31:0] W_DM_REG_7 ;
    wire [31:0] W_DM_REG_8 ;
    wire [31:0] W_DM_REG_9 ;
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
    wire [31:0] W_RM_REG_0 ;
    wire [31:0] W_RM_REG_1 ;
    wire [31:0] W_RM_REG_2 ;
    wire [31:0] W_RM_REG_3 ;
    wire [31:0] W_RM_REG_4 ;
    wire [31:0] W_RM_REG_5 ;
    wire [31:0] W_RM_REG_6 ;
    wire [31:0] W_RM_REG_7 ;
    wire [31:0] W_RM_REG_8 ;
    wire [31:0] W_RM_REG_9 ;
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
    
    wire W_TX_FULL;
    wire W_WR_UART;
    wire [7:0] W_DATA_UART;
    
    reg W_RD_UART;
    wire W_RX_EMPTY;
    wire [7:0] W_R_DATA;
    
    localparam [2:0]
    WAIT_N = 3'b001,		//Esperar la cantidad de instrucciones de la uart
    LOAD_PM = 3'b010, 	//Arma las instr de 32 bits y manda al PM
    WAIT_OP = 3'b100; // Corre el programa
    
    reg [31:0] W_MIPS_WrDataPM;
	 reg [31:0] W_MIPS_WrDataPMAddr;
	 
    reg W_MIPS_WrPM;
    reg readRegs;
    reg [2:0] state, state_next = WAIT_N;
    
    reg [31:0] N, N_next, N_CONST;
    
    reg [31:0]INSTRUCTIONS [31:0];
    
    reg [7:0] datos_recibidos [7:0];
    integer i = 0, j = 0;
    
    always@(posedge CLK, posedge RESET)
    begin
        if (RESET)
        begin
            state <= WAIT_N;
            N <= 0;
        end
        else
        begin
            state <= state_next;
            N     <= N_next;
        end
    end
    
    always@(*)
    begin
        state_next  = state;
        N_next      = N;
        W_RD_UART   = 0;
        W_MIPS_WrPM = 0;
        readRegs    = 0;
        R_D         = 0;
		  FLAG_O		  = 0;
        
        case (state)
            WAIT_N:
            begin
                if (~empty)
                begin
                    state_next = LOAD_PM;
                    N_next     = 0;
                end
                else
                    state_next = WAIT_N;
                
            end
                        
            LOAD_PM:
            begin
					            
                if ( ~empty || N<32)
                begin
                    W_MIPS_WrDataPM = INSTRUCTION_OUT;
						  W_MIPS_WrPM     = 1;
						  W_MIPS_WrDataPMAddr = N;
						  FLAG_O=1;
                    
                    N_next          = N + 1;
                    state_next      = LOAD_PM;
                end
                
                else
                begin
                    state_next = WAIT_OP;
                end
            end
            
            WAIT_OP:
            begin
                if (FLAG_STEP)
                begin
                    R_D = 1;                   
                    
                    if (W_MIPS_FINISHED)
                    begin
                        state_next = WAIT_N;
                        R_D        = 0;
                    end
                end
                
                else
                R_D        = 0;
                state_next = WAIT_OP;
                
            end
            
        endcase
        
        
        
        
    end
    
    
    
    
    DebugUnit debut_unit (
    .CLK(CLK),
    .RESET(RESET),
    .readRegs(readRegs),
    .I_TX_FULL(W_TX_FULL),
    .O_WR_UART(W_WR_UART),
    .O_DATA_UART(W_DATA_UART),
    .I_PC(W_PC),
    .I_PC_NEXT(W_PC_NEXT),
    .I_ID_PC(W_ID_PC),
    .I_ID_INSTR(W_ID_INSTR),
    .I_EXE_CONTROL(W_EXE_CONTROL),
    .I_EXE_PC(W_EXE_PC),
    .I_EXE_READ_DATA1(W_EXE_READ_DATA1),
    .I_EXE_READ_DATA2(W_EXE_READ_DATA2),
    .I_EXE_SIGN_EXT(W_EXE_SIGN_EXT),
    .I_EXE_RS(W_EXE_RS),
    .I_EXE_RT(W_EXE_RT),
    .I_EXE_RD(W_EXE_RD),
    .I_EXE_SHIFT(W_EXE_SHIFT),
    .I_MEM_CONTROL(W_MEM_CONTROL),
    .I_MEM_ALU_RESULT(W_MEM_ALU_RESULT),
    .I_MEM_WRITE_DATA(W_MEM_WRITE_DATA),
    .I_MEM_PC(W_MEM_PC),
    .I_MEM_REGDST(W_MEM_REGDST),
    .I_MEM_SHIFT(W_MEM_SHIFT),
    .I_WB_CONTROL(W_WB_CONTROL),
    .I_WB_PC(W_WB_PC),
    .I_WB_ADDR(W_WB_ADDR),
    .I_WB_READ_DATA(W_WB_READ_DATA),
    .I_WB_SHIFT(W_WB_SHIFT),
    .I_WB_REGDST(W_WB_REGDST),
    .I_HZ_IFID_WRITE(W_HZ_IFID_WRITE),
    .I_HZ_PC_WRITE(W_HZ_PC_WRITE),
    .I_HZ_ID_ControlMux(W_HZ_ID_ControlMux),
    .I_FU_ForwardA(W_FU_ForwardA),
    .I_FU_ForwardB(W_FU_ForwardB),
    .I_PM_REG_0(W_PM_REG_0),
    .I_PM_REG_1(W_PM_REG_1),
    .I_PM_REG_2(W_PM_REG_2),
    .I_PM_REG_3(W_PM_REG_3),
    .I_PM_REG_4(W_PM_REG_4),
    .I_PM_REG_5(W_PM_REG_5),
    .I_PM_REG_6(W_PM_REG_6),
    .I_PM_REG_7(W_PM_REG_7),
    .I_PM_REG_8(W_PM_REG_8),
    .I_PM_REG_9(W_PM_REG_9),
    .I_PM_REG_10(W_PM_REG_10),
    .I_PM_REG_11(W_PM_REG_11),
    .I_PM_REG_12(W_PM_REG_12),
    .I_PM_REG_13(W_PM_REG_13),
    .I_PM_REG_14(W_PM_REG_14),
    .I_PM_REG_15(W_PM_REG_15),
    .I_PM_REG_16(W_PM_REG_16),
    .I_PM_REG_17(W_PM_REG_17),
    .I_PM_REG_18(W_PM_REG_18),
    .I_PM_REG_19(W_PM_REG_19),
    .I_PM_REG_20(W_PM_REG_20),
    .I_PM_REG_21(W_PM_REG_21),
    .I_PM_REG_22(W_PM_REG_22),
    .I_PM_REG_23(W_PM_REG_23),
    .I_PM_REG_24(W_PM_REG_24),
    .I_PM_REG_25(W_PM_REG_25),
    .I_PM_REG_26(W_PM_REG_26),
    .I_PM_REG_27(W_PM_REG_27),
    .I_PM_REG_28(W_PM_REG_28),
    .I_PM_REG_29(W_PM_REG_29),
    .I_PM_REG_30(W_PM_REG_30),
    .I_PM_REG_31(W_PM_REG_31),
    .I_DM_REG_0(W_DM_REG_0),
    .I_DM_REG_1(W_DM_REG_1),
    .I_DM_REG_2(W_DM_REG_2),
    .I_DM_REG_3(W_DM_REG_3),
    .I_DM_REG_4(W_DM_REG_4),
    .I_DM_REG_5(W_DM_REG_5),
    .I_DM_REG_6(W_DM_REG_6),
    .I_DM_REG_7(W_DM_REG_7),
    .I_DM_REG_8(W_DM_REG_8),
    .I_DM_REG_9(W_DM_REG_9),
    .I_DM_REG_10(W_DM_REG_10),
    .I_DM_REG_11(W_DM_REG_11),
    .I_DM_REG_12(W_DM_REG_12),
    .I_DM_REG_13(W_DM_REG_13),
    .I_DM_REG_14(W_DM_REG_14),
    .I_DM_REG_15(W_DM_REG_15),
    .I_DM_REG_16(W_DM_REG_16),
    .I_DM_REG_17(W_DM_REG_17),
    .I_DM_REG_18(W_DM_REG_18),
    .I_DM_REG_19(W_DM_REG_19),
    .I_DM_REG_20(W_DM_REG_20),
    .I_DM_REG_21(W_DM_REG_21),
    .I_DM_REG_22(W_DM_REG_22),
    .I_DM_REG_23(W_DM_REG_23),
    .I_DM_REG_24(W_DM_REG_24),
    .I_DM_REG_25(W_DM_REG_25),
    .I_DM_REG_26(W_DM_REG_26),
    .I_DM_REG_27(W_DM_REG_27),
    .I_DM_REG_28(W_DM_REG_28),
    .I_DM_REG_29(W_DM_REG_29),
    .I_DM_REG_30(W_DM_REG_30),
    .I_DM_REG_31(W_DM_REG_31),
    .I_RM_REG_0(W_RM_REG_0),
    .I_RM_REG_1(W_RM_REG_1),
    .I_RM_REG_2(W_RM_REG_2),
    .I_RM_REG_3(W_RM_REG_3),
    .I_RM_REG_4(W_RM_REG_4),
    .I_RM_REG_5(W_RM_REG_5),
    .I_RM_REG_6(W_RM_REG_6),
    .I_RM_REG_7(W_RM_REG_7),
    .I_RM_REG_8(W_RM_REG_8),
    .I_RM_REG_9(W_RM_REG_9),
    .I_RM_REG_10(W_RM_REG_10),
    .I_RM_REG_11(W_RM_REG_11),
    .I_RM_REG_12(W_RM_REG_12),
    .I_RM_REG_13(W_RM_REG_13),
    .I_RM_REG_14(W_RM_REG_14),
    .I_RM_REG_15(W_RM_REG_15),
    .I_RM_REG_16(W_RM_REG_16),
    .I_RM_REG_17(W_RM_REG_17),
    .I_RM_REG_18(W_RM_REG_18),
    .I_RM_REG_19(W_RM_REG_19),
    .I_RM_REG_20(W_RM_REG_20),
    .I_RM_REG_21(W_RM_REG_21),
    .I_RM_REG_22(W_RM_REG_22),
    .I_RM_REG_23(W_RM_REG_23),
    .I_RM_REG_24(W_RM_REG_24),
    .I_RM_REG_25(W_RM_REG_25),
    .I_RM_REG_26(W_RM_REG_26),
    .I_RM_REG_27(W_RM_REG_27),
    .I_RM_REG_28(W_RM_REG_28),
    .I_RM_REG_29(W_RM_REG_29),
    .I_RM_REG_30(W_RM_REG_30),
    .I_RM_REG_31(W_RM_REG_31),
    .I_ITERACIONES(W_ITERACIONES)
    );
    
    wire CLK_MIPS;
    reg R_D;
    
    assign CLK_MIPS = CLK && R_D;
    
    MIPS2 mips (
    .CLK(CLK_MIPS),
    .RESET(RESET),
    .I_MIPS_WrPM(W_MIPS_WrPM),
    .I_MIPS_WrDataPM(W_MIPS_WrDataPM),
	 .I_MIPS_WrDataPMAddr(W_MIPS_WrDataPMAddr),
    .O_MIPS_FINISHED(W_MIPS_FINISHED),
    .O_PC(W_PC),
    .O_PC_NEXT(W_PC_NEXT),
    .O_ID_PC(W_ID_PC),
    .O_ID_INSTR(W_ID_INSTR),
    .O_EXE_CONTROL(W_EXE_CONTROL),
    .O_EXE_PC(W_EXE_PC),
    .O_EXE_READ_DATA1(W_EXE_READ_DATA1),
    .O_EXE_READ_DATA2(W_EXE_READ_DATA2),
    .O_EXE_SIGN_EXT(W_EXE_SIGN_EXT),
    .O_EXE_RS(W_EXE_RS),
    .O_EXE_RT(W_EXE_RT),
    .O_EXE_RD(W_EXE_RD),
    .O_EXE_SHIFT(W_EXE_SHIFT),
    .O_MEM_CONTROL(W_MEM_CONTROL),
    .O_MEM_ALU_RESULT(W_MEM_ALU_RESULT),
    .O_MEM_WRITE_DATA(W_MEM_WRITE_DATA),
    .O_MEM_PC(W_MEM_PC),
    .O_MEM_REGDST(W_MEM_REGDST),
    .O_MEM_SHIFT(W_MEM_SHIFT),
    .O_WB_CONTROL(W_WB_CONTROL),
    .O_WB_PC(W_WB_PC),
    .O_WB_ADDR(W_WB_ADDR),
    .O_WB_READ_DATA(W_WB_READ_DATA),
    .O_WB_SHIFT(W_WB_SHIFT),
    .O_WB_REGDST(W_WB_REGDST),
    .O_HZ_IFID_WRITE(W_HZ_IFID_WRITE),
    .O_HZ_PC_WRITE(W_HZ_PC_WRITE),
    .O_HZ_ID_ControlMux(W_HZ_ID_ControlMux),
    .O_FU_ForwardA(W_FU_ForwardA),
    .O_FU_ForwardB(W_FU_ForwardB),
    .O_PM_REG_0(W_PM_REG_0),
    .O_PM_REG_1(W_PM_REG_1),
    .O_PM_REG_2(W_PM_REG_2),
    .O_PM_REG_3(W_PM_REG_3),
    .O_PM_REG_4(W_PM_REG_4),
    .O_PM_REG_5(W_PM_REG_5),
    .O_PM_REG_6(W_PM_REG_6),
    .O_PM_REG_7(W_PM_REG_7),
    .O_PM_REG_8(W_PM_REG_8),
    .O_PM_REG_9(W_PM_REG_9),
    .O_PM_REG_10(W_PM_REG_10),
    .O_PM_REG_11(W_PM_REG_11),
    .O_PM_REG_12(W_PM_REG_12),
    .O_PM_REG_13(W_PM_REG_13),
    .O_PM_REG_14(W_PM_REG_14),
    .O_PM_REG_15(W_PM_REG_15),
    .O_PM_REG_16(W_PM_REG_16),
    .O_PM_REG_17(W_PM_REG_17),
    .O_PM_REG_18(W_PM_REG_18),
    .O_PM_REG_19(W_PM_REG_19),
    .O_PM_REG_20(W_PM_REG_20),
    .O_PM_REG_21(W_PM_REG_21),
    .O_PM_REG_22(W_PM_REG_22),
    .O_PM_REG_23(W_PM_REG_23),
    .O_PM_REG_24(W_PM_REG_24),
    .O_PM_REG_25(W_PM_REG_25),
    .O_PM_REG_26(W_PM_REG_26),
    .O_PM_REG_27(W_PM_REG_27),
    .O_PM_REG_28(W_PM_REG_28),
    .O_PM_REG_29(W_PM_REG_29),
    .O_PM_REG_30(W_PM_REG_30),
    .O_PM_REG_31(W_PM_REG_31),
    .O_DM_REG_0(W_DM_REG_0),
    .O_DM_REG_1(W_DM_REG_1),
    .O_DM_REG_2(W_DM_REG_2),
    .O_DM_REG_3(W_DM_REG_3),
    .O_DM_REG_4(W_DM_REG_4),
    .O_DM_REG_5(W_DM_REG_5),
    .O_DM_REG_6(W_DM_REG_6),
    .O_DM_REG_7(W_DM_REG_7),
    .O_DM_REG_8(W_DM_REG_8),
    .O_DM_REG_9(W_DM_REG_9),
    .O_DM_REG_10(W_DM_REG_10),
    .O_DM_REG_11(W_DM_REG_11),
    .O_DM_REG_12(W_DM_REG_12),
    .O_DM_REG_13(W_DM_REG_13),
    .O_DM_REG_14(W_DM_REG_14),
    .O_DM_REG_15(W_DM_REG_15),
    .O_DM_REG_16(W_DM_REG_16),
    .O_DM_REG_17(W_DM_REG_17),
    .O_DM_REG_18(W_DM_REG_18),
    .O_DM_REG_19(W_DM_REG_19),
    .O_DM_REG_20(W_DM_REG_20),
    .O_DM_REG_21(W_DM_REG_21),
    .O_DM_REG_22(W_DM_REG_22),
    .O_DM_REG_23(W_DM_REG_23),
    .O_DM_REG_24(W_DM_REG_24),
    .O_DM_REG_25(W_DM_REG_25),
    .O_DM_REG_26(W_DM_REG_26),
    .O_DM_REG_27(W_DM_REG_27),
    .O_DM_REG_28(W_DM_REG_28),
    .O_DM_REG_29(W_DM_REG_29),
    .O_DM_REG_30(W_DM_REG_30),
    .O_DM_REG_31(W_DM_REG_31),
    .O_RM_REG_0(W_RM_REG_0),
    .O_RM_REG_1(W_RM_REG_1),
    .O_RM_REG_2(W_RM_REG_2),
    .O_RM_REG_3(W_RM_REG_3),
    .O_RM_REG_4(W_RM_REG_4),
    .O_RM_REG_5(W_RM_REG_5),
    .O_RM_REG_6(W_RM_REG_6),
    .O_RM_REG_7(W_RM_REG_7),
    .O_RM_REG_8(W_RM_REG_8),
    .O_RM_REG_9(W_RM_REG_9),
    .O_RM_REG_10(W_RM_REG_10),
    .O_RM_REG_11(W_RM_REG_11),
    .O_RM_REG_12(W_RM_REG_12),
    .O_RM_REG_13(W_RM_REG_13),
    .O_RM_REG_14(W_RM_REG_14),
    .O_RM_REG_15(W_RM_REG_15),
    .O_RM_REG_16(W_RM_REG_16),
    .O_RM_REG_17(W_RM_REG_17),
    .O_RM_REG_18(W_RM_REG_18),
    .O_RM_REG_19(W_RM_REG_19),
    .O_RM_REG_20(W_RM_REG_20),
    .O_RM_REG_21(W_RM_REG_21),
    .O_RM_REG_22(W_RM_REG_22),
    .O_RM_REG_23(W_RM_REG_23),
    .O_RM_REG_24(W_RM_REG_24),
    .O_RM_REG_25(W_RM_REG_25),
    .O_RM_REG_26(W_RM_REG_26),
    .O_RM_REG_27(W_RM_REG_27),
    .O_RM_REG_28(W_RM_REG_28),
    .O_RM_REG_29(W_RM_REG_29),
    .O_RM_REG_30(W_RM_REG_30),
    .O_RM_REG_31(W_RM_REG_31)
    );
    
    FIFO fifo_instructions (
    .CLK(CLK), 
    .RESET(RESET), 
    .wr(FLAG_I), 
    .rd(FLAG_O), 
    .w_data(INSTRUCTION_IN), 
    .empty(empty), 
    .full(full), 
    .r_data(INSTRUCTION_OUT)
    );
	 
	 wire [31:0] INSTRUCTION_OUT;
	 wire empty, full;
	 reg FLAG_O;

    
    
endmodule
