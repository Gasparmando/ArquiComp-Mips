`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:02:03 02/16/2020 
// Design Name: 
// Module Name:    DebugUnit 
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
module DebugUnit(
    input CLK,
    input RESET,
	 input readRegs,
	 
	 input I_TX_FULL,
	 output reg O_WR_UART,
	 output reg [7:0] O_DATA_UART,
	 
	 input [31:0] I_PC, I_PC_NEXT,
		input [31:0] 	I_ID_PC,
		input [31:0] 	I_ID_INSTR,
		//////////////////////////////////////////////////////////////////////////////////
		input [19:0] I_EXE_CONTROL,
		input [31:0] I_EXE_PC,
		input [31:0] I_EXE_READ_DATA1,
		input [31:0] I_EXE_READ_DATA2,
		input [31:0] I_EXE_SIGN_EXT,
		input [4:0] I_EXE_RS,
		input [4:0] I_EXE_RT,
		input [4:0] I_EXE_RD,
		input [31:0] I_EXE_SHIFT,
		//////////////////////////////////////////////////////////////////////////////////
		input [19:0] I_MEM_CONTROL,
		input [31:0] I_MEM_ALU_RESULT,
		input [31:0] I_MEM_WRITE_DATA,
		input [31:0] I_MEM_PC,
		input [4:0] I_MEM_REGDST,
		input [31:0] I_MEM_SHIFT,
		//////////////////////////////////////////////////////////////////////////////////
		input [19:0] I_WB_CONTROL,
		input [31:0] I_WB_PC,
		input [31:0] I_WB_ADDR,
		input [31:0] I_WB_READ_DATA,
		input [31:0] I_WB_SHIFT,
		input [4:0] I_WB_REGDST,
		//////////////////////////////////////////////////////////////////////////////////    
		input  I_HZ_IFID_WRITE,
		input  I_HZ_PC_WRITE,
		input  I_HZ_ID_ControlMux,
		//////////////////////////////////////////////////////////////////////////////////    
		input [1:0] I_FU_ForwardA,
		input [1:0] I_FU_ForwardB,
		//////////////////////////////////////////////////////////////////////////////////
		input [31:0] I_PM_REG_0 ,
		input [31:0] I_PM_REG_1 ,
		input [31:0] I_PM_REG_2 ,
		input [31:0] I_PM_REG_3 ,
		input [31:0] I_PM_REG_4 ,
		input [31:0] I_PM_REG_5 ,
		input [31:0] I_PM_REG_6 ,
		input [31:0] I_PM_REG_7 ,
		input [31:0] I_PM_REG_8 ,
		input [31:0] I_PM_REG_9 ,
		input [31:0] I_PM_REG_10,
		input [31:0] I_PM_REG_11,
		input [31:0] I_PM_REG_12,
		input [31:0] I_PM_REG_13,
		input [31:0] I_PM_REG_14,
		input [31:0] I_PM_REG_15,
		input [31:0] I_PM_REG_16,
		input [31:0] I_PM_REG_17,
		input [31:0] I_PM_REG_18,
		input [31:0] I_PM_REG_19,
		input [31:0] I_PM_REG_20,
		input [31:0] I_PM_REG_21,
		input [31:0] I_PM_REG_22,
		input [31:0] I_PM_REG_23,
		input [31:0] I_PM_REG_24,
		input [31:0] I_PM_REG_25,
		input [31:0] I_PM_REG_26,
		input [31:0] I_PM_REG_27,
		input [31:0] I_PM_REG_28,
		input [31:0] I_PM_REG_29,
		input [31:0] I_PM_REG_30,
		input [31:0] I_PM_REG_31,
		//////////////////////////////////////////////////////////////////////////////////
		input [31:0] I_DM_REG_0 ,
		input [31:0] I_DM_REG_1 ,
		input [31:0] I_DM_REG_2 ,
		input [31:0] I_DM_REG_3 ,
		input [31:0] I_DM_REG_4 ,
		input [31:0] I_DM_REG_5 ,
		input [31:0] I_DM_REG_6 ,
		input [31:0] I_DM_REG_7 ,
		input [31:0] I_DM_REG_8 ,
		input [31:0] I_DM_REG_9 ,
		input [31:0] I_DM_REG_10,
		input [31:0] I_DM_REG_11,
		input [31:0] I_DM_REG_12,
		input [31:0] I_DM_REG_13,
		input [31:0] I_DM_REG_14,
		input [31:0] I_DM_REG_15,
		input [31:0] I_DM_REG_16,
		input [31:0] I_DM_REG_17,
		input [31:0] I_DM_REG_18,
		input [31:0] I_DM_REG_19,
		input [31:0] I_DM_REG_20,
		input [31:0] I_DM_REG_21,
		input [31:0] I_DM_REG_22,
		input [31:0] I_DM_REG_23,
		input [31:0] I_DM_REG_24,
		input [31:0] I_DM_REG_25,
		input [31:0] I_DM_REG_26,
		input [31:0] I_DM_REG_27,
		input [31:0] I_DM_REG_28,
		input [31:0] I_DM_REG_29,
		input [31:0] I_DM_REG_30,
		input [31:0] I_DM_REG_31,
		//////////////////////////////////////////////////////////////////////////////////
		input [31:0] I_RM_REG_0 ,
		input [31:0] I_RM_REG_1 ,
		input [31:0] I_RM_REG_2 ,
		input [31:0] I_RM_REG_3 ,
		input [31:0] I_RM_REG_4 ,
		input [31:0] I_RM_REG_5 ,
		input [31:0] I_RM_REG_6 ,
		input [31:0] I_RM_REG_7 ,
		input [31:0] I_RM_REG_8 ,
		input [31:0] I_RM_REG_9 ,
		input [31:0] I_RM_REG_10,
		input [31:0] I_RM_REG_11,
		input [31:0] I_RM_REG_12,
		input [31:0] I_RM_REG_13,
		input [31:0] I_RM_REG_14,
		input [31:0] I_RM_REG_15,
		input [31:0] I_RM_REG_16,
		input [31:0] I_RM_REG_17,
		input [31:0] I_RM_REG_18,
		input [31:0] I_RM_REG_19,
		input [31:0] I_RM_REG_20,
		input [31:0] I_RM_REG_21,
		input [31:0] I_RM_REG_22,
		input [31:0] I_RM_REG_23,
		input [31:0] I_RM_REG_24,
		input [31:0] I_RM_REG_25,
		input [31:0] I_RM_REG_26,
		input [31:0] I_RM_REG_27,
		input [31:0] I_RM_REG_28,
		input [31:0] I_RM_REG_29,
		input [31:0] I_RM_REG_30,
		input [31:0] I_RM_REG_31,
		input [31:0] I_ITERACIONES
	 
    );

localparam N_DATOS = 127;

reg [31:0] datos[N_DATOS-1:0];

reg [7:0] bytesParaEnviar[(N_DATOS*4)-1:0]; 

integer i=0;
reg [31:0] n, n_next;


localparam IDLE = 4'b0001,
			  READ_DATA = 4'b0010,
			  CONVERT = 4'b0100,
			  SEND = 4'b1000;

reg [3:0] state, state_next;

	always @(posedge CLK, posedge RESET)
	begin
		if(RESET)
			begin
				/*for(i = 0;i<N_DATOS;i=i+1)
					begin
						datos[i]=0;
						bytesParaEnviar[i]<=0;
						bytesParaEnviar[i+1]<=0;
						bytesParaEnviar[i+2]<=0;
						bytesParaEnviar[i+3]<=0;
					end*/
					state<= IDLE;				
					
			end
		else
			begin
				state<=state_next;
				n<=n_next;
			end
		end
			
			
	always@(*)
			begin
						state_next = state;
						n_next=n;
			
			
				case(state)
					IDLE:
						begin
							if(readRegs)
								begin
									state_next = READ_DATA;
									n_next=0;
								end
							else
								state_next = IDLE;
						end
					
					READ_DATA:
						begin
						
						datos[0]=I_PC; 
						datos[1]=I_PC_NEXT;
						datos[2]=I_ID_PC;
						datos[3]=I_ID_INSTR;
						datos[4]=I_EXE_CONTROL;
						datos[5]=I_EXE_PC;
						datos[6]=I_EXE_READ_DATA1;
						datos[7]=I_EXE_READ_DATA2;
						datos[8]=I_EXE_SIGN_EXT;
						datos[9]=I_EXE_RS;
						datos[10]=I_EXE_RT;
						datos[11]=I_EXE_RD;
						datos[12]=I_EXE_SHIFT;
						datos[13]=I_MEM_CONTROL;
						datos[14]=I_MEM_ALU_RESULT;
						datos[15]=I_MEM_WRITE_DATA;
						datos[16]=I_MEM_PC;
						datos[17]=I_MEM_REGDST;
						datos[18]=I_MEM_SHIFT;
						datos[19]=I_WB_CONTROL;
						datos[20]=I_WB_PC;
						datos[21]=I_WB_ADDR;
						datos[22]=I_WB_READ_DATA;
						datos[23]=I_WB_SHIFT;
						datos[24]=I_WB_REGDST;    
						datos[25]=I_HZ_IFID_WRITE;
						datos[26]=I_HZ_PC_WRITE;
						datos[27]=I_HZ_ID_ControlMux;    
						datos[28]=I_FU_ForwardA;
						datos[29]=I_FU_ForwardB;
						datos[30]=I_PM_REG_0 ;
						datos[31]=I_PM_REG_1 ;
						datos[32]=I_PM_REG_2 ;
						datos[33]=I_PM_REG_3 ;
						datos[34]=I_PM_REG_4 ;
						datos[35]=I_PM_REG_5 ;
						datos[36]=I_PM_REG_6 ;
						datos[37]=I_PM_REG_7 ;
						datos[38]=I_PM_REG_8 ;
						datos[39]=I_PM_REG_9 ;
						datos[40]=I_PM_REG_10;
						datos[41]=I_PM_REG_11;
						datos[42]=I_PM_REG_12;
						datos[43]=I_PM_REG_13;
						datos[44]=I_PM_REG_14;
						datos[45]=I_PM_REG_15;
						datos[46]=I_PM_REG_16;
						datos[47]=I_PM_REG_17;
						datos[48]=I_PM_REG_18;
						datos[49]=I_PM_REG_19;
						datos[50]=I_PM_REG_20;
						datos[51]=I_PM_REG_21;
						datos[52]=I_PM_REG_22;
						datos[53]=I_PM_REG_23;
						datos[54]=I_PM_REG_24;
						datos[55]=I_PM_REG_25;
						datos[56]=I_PM_REG_26;
						datos[57]=I_PM_REG_27;
						datos[58]=I_PM_REG_28;
						datos[59]=I_PM_REG_29;
						datos[60]=I_PM_REG_30;
						datos[61]=I_PM_REG_31;
						datos[62]=I_DM_REG_0 ;
						datos[63]=I_DM_REG_1 ;
						datos[64]=I_DM_REG_2 ;
						datos[65]=I_DM_REG_3 ;
						datos[66]=I_DM_REG_4 ;
						datos[67]=I_DM_REG_5 ;
						datos[68]=I_DM_REG_6 ;
						datos[69]=I_DM_REG_7 ;
						datos[70]=I_DM_REG_8 ;
						datos[71]=I_DM_REG_9 ;
						datos[72]=I_DM_REG_10;
						datos[73]=I_DM_REG_11;
						datos[74]=I_DM_REG_12;
						datos[75]=I_DM_REG_13;
						datos[76]=I_DM_REG_14;
						datos[77]=I_DM_REG_15;
						datos[78]=I_DM_REG_16;
						datos[79]=I_DM_REG_17;
						datos[80]=I_DM_REG_18;
						datos[81]=I_DM_REG_19;
						datos[82]=I_DM_REG_20;
						datos[83]=I_DM_REG_21;
						datos[84]=I_DM_REG_22;
						datos[85]=I_DM_REG_23;
						datos[86]=I_DM_REG_24;
						datos[87]=I_DM_REG_25;
						datos[88]=I_DM_REG_26;
						datos[89]=I_DM_REG_27;
						datos[90]=I_DM_REG_28;
						datos[91]=I_DM_REG_29;
						datos[92]=I_DM_REG_30;
						datos[93]=I_DM_REG_31;
						datos[94]=I_RM_REG_0 ;
						datos[95]=I_RM_REG_1 ;
						datos[96]=I_RM_REG_2 ;
						datos[97]=I_RM_REG_3 ;
						datos[98]=I_RM_REG_4 ;
						datos[99]=I_RM_REG_5 ;
						datos[100]=I_RM_REG_6 ;
						datos[101]=I_RM_REG_7 ;
						datos[102]=I_RM_REG_8 ;
						datos[103]=I_RM_REG_9 ;
						datos[104]=I_RM_REG_10;
						datos[105]=I_RM_REG_11;
						datos[106]=I_RM_REG_12;
						datos[107]=I_RM_REG_13;
						datos[108]=I_RM_REG_14;
						datos[109]=I_RM_REG_15;
						datos[110]=I_RM_REG_16;
						datos[111]=I_RM_REG_17;
						datos[112]=I_RM_REG_18;
						datos[113]=I_RM_REG_19;
						datos[114]=I_RM_REG_20;
						datos[115]=I_RM_REG_21;
						datos[116]=I_RM_REG_22;
						datos[117]=I_RM_REG_23;
						datos[118]=I_RM_REG_24;
						datos[119]=I_RM_REG_25;
						datos[120]=I_RM_REG_26;
						datos[121]=I_RM_REG_27;
						datos[122]=I_RM_REG_28;
						datos[123]=I_RM_REG_29;
						datos[124]=I_RM_REG_30;
						datos[125]=I_RM_REG_31;
						datos[126]=I_ITERACIONES;
						
						state_next=CONVERT;
							
						end
						
				CONVERT:
					begin
						for(i=0;i<N_DATOS;i=i+1)
							begin
								bytesParaEnviar[4*i]= datos[i][31:24];
								bytesParaEnviar[(4*i)+1]=datos[i][23:16];
								bytesParaEnviar[(4*i)+2]=datos[i][15:8];
								bytesParaEnviar[(4*i)+3]=datos[i][7:0];
								
								
								
							end
						state_next=SEND;
					end
					
				SEND:
						begin
							if(n<(4*N_DATOS))
								begin
									if(~I_TX_FULL)
										begin
											O_DATA_UART= bytesParaEnviar[n];
											O_WR_UART= 1;
											n_next=n+1;
											state_next=SEND;
										end
									else
										state_next=SEND;
								end
							else
								state_next=IDLE;
							
						end
						
				endcase
				
			end
	endmodule
