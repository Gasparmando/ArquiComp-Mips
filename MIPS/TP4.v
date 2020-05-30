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
           input FLAG_STEP,
         output [31:0] W_PC,
         output [31:0] W_PC_NEXT,
         output [31:0] W_ID_PC,
         output [31:0] W_ID_INSTR,
         output [31:0] W_EXE_CONTROL,
         output [31:0] W_EXE_PC,
         output [31:0] W_EXE_READ_DATA1,
         output [31:0] W_EXE_READ_DATA2,
         output [31:0] W_EXE_SIGN_EXT,
         output [4:0] W_EXE_RS,
         output [4:0] W_EXE_RT,
         output [4:0] W_EXE_RD,
         output [31:0] W_EXE_SHIFT,
         output [31:0] W_MEM_CONTROL,
         output [31:0] W_MEM_ALU_RESULT,
         output [31:0] W_MEM_WRITE_DATA,
         output [31:0] W_MEM_PC,
         output [31:0] W_MEM_REGDST,
         output [31:0] W_MEM_SHIFT,
         output [31:0] W_WB_CONTROL,
         output [31:0] W_WB_PC,
         output [31:0] W_WB_ADDR,
         output [31:0] W_WB_READ_DATA,
         output [31:0] W_WB_SHIFT,
         output [31:0] W_WB_REGDST,
         output [31:0] W_HZ_IFID_WRITE,
         output [31:0] W_HZ_PC_WRITE,
         output [31:0] W_HZ_ID_ControlMux,
         output [31:0] W_FU_ForwardA,
         output [31:0] W_FU_ForwardB,
         output [31:0] W_PM_REG_0 ,
         output [31:0] W_PM_REG_1 ,
         output [31:0] W_PM_REG_2 ,
         output [31:0] W_PM_REG_3 ,
         output [31:0] W_PM_REG_4 ,
         output [31:0] W_PM_REG_5 ,
         output [31:0] W_PM_REG_6 ,
         output [31:0] W_PM_REG_7 ,
         output [31:0] W_PM_REG_8 ,
         output [31:0] W_PM_REG_9 ,
         output [31:0] W_PM_REG_10,
         output [31:0] W_PM_REG_11,
         output [31:0] W_PM_REG_12,
         output [31:0] W_PM_REG_13,
         output [31:0] W_PM_REG_14,
         output [31:0] W_PM_REG_15,
         output [31:0] W_PM_REG_16,
         output [31:0] W_PM_REG_17,
         output [31:0] W_PM_REG_18,
         output [31:0] W_PM_REG_19,
         output [31:0] W_PM_REG_20,
         output [31:0] W_PM_REG_21,
         output [31:0] W_PM_REG_22,
         output [31:0] W_PM_REG_23,
         output [31:0] W_PM_REG_24,
         output [31:0] W_PM_REG_25,
         output [31:0] W_PM_REG_26,
         output [31:0] W_PM_REG_27,
         output [31:0] W_PM_REG_28,
         output [31:0] W_PM_REG_29,
         output [31:0] W_PM_REG_30,
         output [31:0] W_PM_REG_31,
         output [31:0] W_DM_REG_0 ,
         output [31:0] W_DM_REG_1 ,
         output [31:0] W_DM_REG_2 ,
         output [31:0] W_DM_REG_3 ,
         output [31:0] W_DM_REG_4 ,
         output [31:0] W_DM_REG_5 ,
         output [31:0] W_DM_REG_6 ,
         output [31:0] W_DM_REG_7 ,
         output [31:0] W_DM_REG_8 ,
         output [31:0] W_DM_REG_9 ,
         output [31:0] W_DM_REG_10,
         output [31:0] W_DM_REG_11,
         output [31:0] W_DM_REG_12,
         output [31:0] W_DM_REG_13,
         output [31:0] W_DM_REG_14,
         output [31:0] W_DM_REG_15,
         output [31:0] W_DM_REG_16,
         output [31:0] W_DM_REG_17,
         output [31:0] W_DM_REG_18,
         output [31:0] W_DM_REG_19,
         output [31:0] W_DM_REG_20,
         output [31:0] W_DM_REG_21,
         output [31:0] W_DM_REG_22,
         output [31:0] W_DM_REG_23,
         output [31:0] W_DM_REG_24,
         output [31:0] W_DM_REG_25,
         output [31:0] W_DM_REG_26,
         output [31:0] W_DM_REG_27,
         output [31:0] W_DM_REG_28,
         output [31:0] W_DM_REG_29,
         output [31:0] W_DM_REG_30,
         output [31:0] W_DM_REG_31,
         output [31:0] W_RM_REG_0 ,
         output [31:0] W_RM_REG_1 ,
         output [31:0] W_RM_REG_2 ,
         output [31:0] W_RM_REG_3 ,
         output [31:0] W_RM_REG_4 ,
         output [31:0] W_RM_REG_5 ,
         output [31:0] W_RM_REG_6 ,
         output [31:0] W_RM_REG_7 ,
         output [31:0] W_RM_REG_8 ,
         output [31:0] W_RM_REG_9 ,
         output [31:0] W_RM_REG_10,
         output [31:0] W_RM_REG_11,
         output [31:0] W_RM_REG_12,
         output [31:0] W_RM_REG_13,
         output [31:0] W_RM_REG_14,
         output [31:0] W_RM_REG_15,
         output [31:0] W_RM_REG_16,
         output [31:0] W_RM_REG_17,
         output [31:0] W_RM_REG_18,
         output [31:0] W_RM_REG_19,
         output [31:0] W_RM_REG_20,
         output [31:0] W_RM_REG_21,
         output [31:0] W_RM_REG_22,
         output [31:0] W_RM_REG_23,
         output [31:0] W_RM_REG_24,
         output [31:0] W_RM_REG_25,
         output [31:0] W_RM_REG_26,
         output [31:0] W_RM_REG_27,
         output [31:0] W_RM_REG_28,
         output [31:0] W_RM_REG_29,
         output [31:0] W_RM_REG_30,
         output [31:0] W_RM_REG_31);
    
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
    

	 
	 wire [31:0] INSTRUCTION_OUT;
	 wire empty, full;
	 reg FLAG_O;
	 
	 	 
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
					            
                if ( ~empty && N<32)
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

    
    wire CLK_MIPS;
    reg R_D;
    
    //assign CLK_MIPS = CLK && R_D;
	 


    
    MIPS2 mips (
    .CLK(CLK),
    .RESET(RESET),
	 .ENABLE(R_D),
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
	 


    
    
endmodule
