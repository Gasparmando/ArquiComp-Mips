`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:26:23 02/01/2020 
// Design Name: 
// Module Name:    ControlUnit 
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
module ControlUnit(
	input [5:0] I_CU_OP,		//Define el Tipo de Instruccion: R,I,J
	input [5:0] I_CU_FUNCT,	//Tipo de operacion en las Type-R
	output reg O_CU_MemtoReg,	//1:Para Load	,0: Resto
	output reg O_CU_RegWrite,	//1:Resto ,0: Store
	output reg O_CU_MemWrite,	//1:Para Store	,0: Resto
	output reg O_CU_MemRead,
	output reg O_CU_BranchEQ,	//1:O_CU_Branches, 0: Resto
	output reg O_CU_ALUSrc,	//1:El operando es un Imm, 0: El operando es un registro
	output reg O_CU_RegDst,	//1:El WB es sobre Rt(Load y Op Imm), 0: El WB es sobre Rd (Op R)
	output reg [5:0] O_CU_ALUControl, //salida en caso de ser necesario.
	output reg [1:0] O_CU_Trunk,
	output reg O_CU_signed,
	output reg O_CU_shift,
	output reg O_CU_BranchNE,
	output reg O_CU_Jump,
	output reg O_CU_LinkR
   );
	
	
/*OPCODE de Instrucciones*/	
localparam TIPOR = 6'b000000;
localparam ADDI = 6'b001000;		
localparam ANDI = 6'b001100;		
localparam BEQ = 6'b000100;		
localparam BNE = 6'b000101;		
localparam LB = 6'b100000;			
localparam LBU = 6'b100100;		
localparam LH = 6'b100001;			
localparam LHU = 6'b100101;		
localparam LUI = 6'b001111;		
localparam LW = 6'b100011;			
localparam LWU = 6'b100111;		
localparam ORI = 6'b001101;		
localparam SB = 6'b101000;			
localparam SH = 6'b101001;			
localparam SLTI = 6'b001010;		
localparam SW = 6'b101011;			
localparam XORI = 6'b001110;		
localparam J = 6'b000010;
localparam JAL = 6'b000011;
localparam JR = 6'b001000;
localparam JALR = 6'b001001;
localparam NOP = 6'b111110;

/*Operaciones de ALU*/
localparam 
			  ADDU= 6'b100001,   
			  SUBU = 6'b100011,	
			  AND = 6'b100100,	
			  OR = 6'b100101,	
			  XOR = 6'b100110,	
			  SLT = 6'b101010;
				
			  


always @(*)
begin
case(I_CU_OP)
	NOP:
		begin
					O_CU_MemtoReg=0;
					O_CU_RegWrite=0;
					O_CU_MemWrite=0;
					O_CU_MemRead=0;
					O_CU_BranchEQ=0;
					O_CU_ALUSrc=0;
					O_CU_RegDst=0;
					O_CU_ALUControl=NOP;	
					O_CU_Trunk= 2'b00	;
					O_CU_signed = 0;
					O_CU_shift = 0;
					O_CU_BranchNE=0;
					O_CU_Jump = 0;
					O_CU_LinkR =0;
		end

	TIPOR:
		begin
			case(I_CU_FUNCT)
			JR:
				begin
					O_CU_MemtoReg=0;
					O_CU_RegWrite=0;
					O_CU_MemWrite=0;
					O_CU_MemRead=0;
					O_CU_BranchEQ=0;
					O_CU_ALUSrc=0;
					O_CU_RegDst=0;
					O_CU_ALUControl=I_CU_FUNCT;	
					O_CU_Trunk= 2'b00;
					O_CU_signed = 0;
					O_CU_shift = 0;
					O_CU_BranchNE=0;
					O_CU_Jump = 1;
					O_CU_LinkR =0;
				end
				
			JALR:
				begin
					O_CU_MemtoReg=1;
					O_CU_RegWrite=1;
					O_CU_MemWrite=0;
					O_CU_MemRead=0;
					O_CU_BranchEQ=0;
					O_CU_ALUSrc=0;
					O_CU_RegDst=0;
					O_CU_ALUControl=I_CU_FUNCT;	
					O_CU_Trunk= 2'b00;
					O_CU_signed = 0;
					O_CU_shift = 1;
					O_CU_BranchNE=0;
					O_CU_Jump = 1;
					O_CU_LinkR =1;
				end
				
			default:
				begin
					O_CU_MemtoReg=0;
					O_CU_RegWrite=1;
					O_CU_MemWrite=0;
					O_CU_MemRead=0;
					O_CU_BranchEQ=0;
					O_CU_ALUSrc=0;
					O_CU_RegDst=1;
					O_CU_ALUControl=I_CU_FUNCT;	
					O_CU_Trunk= 2'b00;
					O_CU_signed = 0;
					O_CU_shift = 0;
					O_CU_BranchNE=0;
					O_CU_Jump = 0;
					O_CU_LinkR =0;
				end
				endcase
			
		end
	ADDI:
		begin
					O_CU_MemtoReg=0;
					O_CU_RegWrite=1;
					O_CU_MemWrite=0;
					O_CU_MemRead=0;
					O_CU_BranchEQ=0;
					O_CU_ALUSrc=1;
					O_CU_RegDst=0;
					O_CU_ALUControl= ADDU;	
					O_CU_Trunk= 2'b00;
					O_CU_signed = 1;
					O_CU_shift = 0;
					O_CU_BranchNE=0;
					O_CU_Jump = 0;
					O_CU_LinkR =0;
		end

	ANDI:
		begin
					O_CU_MemtoReg=0;
					O_CU_RegWrite=1;
					O_CU_MemWrite=0;
					O_CU_MemRead=0;
					O_CU_BranchEQ=0;
					O_CU_ALUSrc=1;
					O_CU_RegDst=0;
					O_CU_ALUControl= AND;	
					O_CU_Trunk= 2'b00;
					O_CU_signed = 0;
					O_CU_shift = 0;
					O_CU_BranchNE=0;
					O_CU_Jump = 0;
					O_CU_LinkR =0;
		end 
	BEQ:
		begin
					O_CU_MemtoReg=0;
					O_CU_RegWrite=0;
					O_CU_MemWrite=0;
					O_CU_MemRead=0;
					O_CU_BranchEQ=1;
					O_CU_ALUSrc=0;
					O_CU_RegDst=0;
					O_CU_ALUControl= 0;	
					O_CU_Trunk= 2'b00;
					O_CU_signed = 0;
					O_CU_shift = 0;
					O_CU_BranchNE=0;
					O_CU_Jump = 0;
					O_CU_LinkR =0;
		end  
	BNE:
		begin
					O_CU_MemtoReg=0;
					O_CU_RegWrite=0;
					O_CU_MemWrite=0;
					O_CU_MemRead=0;
					O_CU_BranchEQ=0;
					O_CU_ALUSrc=0;
					O_CU_RegDst=0;
					O_CU_ALUControl= 0;	
					O_CU_Trunk= 2'b00;
					O_CU_signed = 0;
					O_CU_shift = 0;
					O_CU_BranchNE=1;
					O_CU_Jump = 0;
					O_CU_LinkR =0;
		end

	J:
				begin
					O_CU_MemtoReg=0;
					O_CU_RegWrite=0;
					O_CU_MemWrite=0;
					O_CU_MemRead=0;
					O_CU_BranchEQ=0;
					O_CU_ALUSrc=0;
					O_CU_RegDst=0;
					O_CU_ALUControl=0;	
					O_CU_Trunk= 2'b00;
					O_CU_signed = 0;
					O_CU_shift = 0;
					O_CU_BranchNE=0;
					O_CU_Jump = 1;
					O_CU_LinkR =0;
				end
	JAL:
				begin
					O_CU_MemtoReg=1;
					O_CU_RegWrite=1;
					O_CU_MemWrite=0;
					O_CU_MemRead=0;
					O_CU_BranchEQ=0;
					O_CU_ALUSrc=0;
					O_CU_RegDst=0;
					O_CU_ALUControl=0;	
					O_CU_Trunk= 2'b00;
					O_CU_signed = 0;
					O_CU_shift = 1;
					O_CU_BranchNE=0;
					O_CU_Jump = 1;
					O_CU_LinkR =1;
				end
	LB:
		begin
					O_CU_MemtoReg=1;
					O_CU_RegWrite=1;
					O_CU_MemWrite=0;
					O_CU_MemRead=1;
					O_CU_BranchEQ=0;
					O_CU_ALUSrc=1;
					O_CU_RegDst=0;
					O_CU_ALUControl= ADDU;	
					O_CU_Trunk= 2'b10;
					O_CU_signed = 1;
					O_CU_shift = 0;
					O_CU_BranchNE=0;
					O_CU_Jump = 0;
					O_CU_LinkR =0;
		end  
	LBU:
		begin
					O_CU_MemtoReg=1;
					O_CU_RegWrite=1;
					O_CU_MemWrite=0;
					O_CU_MemRead=1;
					O_CU_BranchEQ=0;
					O_CU_ALUSrc=1;
					O_CU_RegDst=0;
					O_CU_ALUControl= ADDU;	
					O_CU_Trunk= 2'b10;
					O_CU_signed = 0;
					O_CU_shift = 0;
					O_CU_BranchNE=0;
					O_CU_Jump = 0;
					O_CU_LinkR =0;

		end 
	LH:
		begin
					O_CU_MemtoReg=1;
					O_CU_RegWrite=1;
					O_CU_MemWrite=0;
					O_CU_MemRead=1;
					O_CU_BranchEQ=0;
					O_CU_ALUSrc=1;
					O_CU_RegDst=0;
					O_CU_ALUControl= ADDU;	
					O_CU_Trunk= 2'b01;
					O_CU_signed = 1;
					O_CU_shift = 0;
					O_CU_BranchNE=0;
					O_CU_Jump = 0;
					O_CU_LinkR =0;
		end 
	LHU:
		begin
					O_CU_MemtoReg=1;
					O_CU_RegWrite=1;
					O_CU_MemWrite=0;
					O_CU_MemRead=1;
					O_CU_BranchEQ=0;
					O_CU_ALUSrc=1;
					O_CU_RegDst=0;
					O_CU_ALUControl= ADDU;	
					O_CU_Trunk= 2'b01;
					O_CU_signed = 0;
					O_CU_shift = 0;
					O_CU_BranchNE=0;
					O_CU_Jump = 0;
					O_CU_LinkR =0;
		end 
	LUI:
		begin
					O_CU_MemtoReg=0;
					O_CU_RegWrite=1;
					O_CU_MemWrite=0;
					O_CU_MemRead=0;
					O_CU_BranchEQ=0;
					O_CU_ALUSrc=1;
					O_CU_RegDst=0;
					O_CU_ALUControl= 0;	
					O_CU_Trunk= 2'b00;
					O_CU_signed = 0;
					O_CU_shift = 1;
					O_CU_BranchNE=0;
					O_CU_Jump = 0;
					O_CU_LinkR =0;
		end 
	LW:
		begin
					O_CU_MemtoReg=1;
					O_CU_RegWrite=1;
					O_CU_MemWrite=0;
					O_CU_MemRead=1;
					O_CU_BranchEQ=0;
					O_CU_ALUSrc=1;
					O_CU_RegDst=0;
					O_CU_ALUControl= ADDU;	
					O_CU_Trunk= 2'b00;
					O_CU_signed = 1;
					O_CU_shift = 0;
					O_CU_BranchNE=0;
					O_CU_Jump = 0;
					O_CU_LinkR =0;
		end 
	LWU:
		begin
					O_CU_MemtoReg=1;
					O_CU_RegWrite=1;
					O_CU_MemWrite=0;
					O_CU_MemRead=1;
					O_CU_BranchEQ=0;
					O_CU_ALUSrc=1;
					O_CU_RegDst=0;
					O_CU_ALUControl= ADDU;	
					O_CU_Trunk= 2'b00;
					O_CU_signed = 0;
					O_CU_shift = 0;
					O_CU_BranchNE=0;
					O_CU_Jump = 0;
					O_CU_LinkR =0;
		end 
	ORI:
		begin
					O_CU_MemtoReg=0;
					O_CU_RegWrite=1;
					O_CU_MemWrite=0;
					O_CU_MemRead=0;
					O_CU_BranchEQ=0;
					O_CU_ALUSrc=1;
					O_CU_RegDst=0;
					O_CU_ALUControl= OR;	
					O_CU_Trunk= 2'b00;
					O_CU_signed = 0;
					O_CU_shift = 0;
					O_CU_BranchNE=0;
					O_CU_Jump = 0;
					O_CU_LinkR =0;
			
		end 
	SB:
		begin
					O_CU_MemtoReg=0;
					O_CU_RegWrite=0;
					O_CU_MemWrite=1;
					O_CU_MemRead=0;
					O_CU_BranchEQ=0;
					O_CU_ALUSrc=1;
					O_CU_RegDst=0;
					O_CU_ALUControl= ADDU;	
					O_CU_Trunk= 2'b10;
					O_CU_signed = 1;
					O_CU_shift = 0;
					O_CU_BranchNE=0;
					O_CU_Jump = 0;
					O_CU_LinkR =0;
		end 
	SH:
		begin
					O_CU_MemtoReg=0;
					O_CU_RegWrite=0;
					O_CU_MemWrite=1;
					O_CU_MemRead=0;
					O_CU_BranchEQ=0;
					O_CU_ALUSrc=1;
					O_CU_RegDst=0;
					O_CU_ALUControl= ADDU;	
					O_CU_Trunk= 2'b01;
					O_CU_signed = 1;
					O_CU_shift = 0;
					O_CU_BranchNE=0;
					O_CU_Jump = 0;
					O_CU_LinkR =0;
		end
	SLTI:
		begin
					O_CU_MemtoReg=0;
					O_CU_RegWrite=1;
					O_CU_MemWrite=0;
					O_CU_MemRead=0;
					O_CU_BranchEQ=0;
					O_CU_ALUSrc=1;
					O_CU_RegDst=0;
					O_CU_ALUControl= SLT;	
					O_CU_Trunk= 2'b00;
					O_CU_signed = 0;
					O_CU_shift = 0;
					O_CU_BranchNE=0;
					O_CU_Jump = 0;
					O_CU_LinkR =0;
		end  
 
	SW:
		begin
					O_CU_MemtoReg=0;
					O_CU_RegWrite=0;
					O_CU_MemWrite=1;
					O_CU_MemRead=0;
					O_CU_BranchEQ=0;
					O_CU_ALUSrc=1;
					O_CU_RegDst=0;
					O_CU_ALUControl= ADDU;	
					O_CU_Trunk= 2'b00;
					O_CU_signed = 1;
					O_CU_shift = 0;
					O_CU_BranchNE=0;
					O_CU_Jump = 0;
					O_CU_LinkR =0;
		end
	XORI:
		begin
					O_CU_MemtoReg=0;
					O_CU_RegWrite=1;
					O_CU_MemWrite=0;
					O_CU_MemRead=0;
					O_CU_BranchEQ=0;
					O_CU_ALUSrc=1;
					O_CU_RegDst=0;
					O_CU_ALUControl= XOR;	
					O_CU_Trunk= 2'b00;
					O_CU_signed = 0;
					O_CU_shift = 0;
					O_CU_BranchNE=0;
					O_CU_Jump = 0;
					O_CU_LinkR =0;
		end
	default:
		begin
					O_CU_MemtoReg=0;
					O_CU_RegWrite=0;
					O_CU_MemWrite=0;
					O_CU_MemRead=0;
					O_CU_BranchEQ=0;
					O_CU_ALUSrc=0;
					O_CU_RegDst=0;
					O_CU_ALUControl= 0;	
					O_CU_Trunk= 2'b00;
					O_CU_signed = 0;
					O_CU_shift = 0;
					O_CU_BranchNE=0;
					O_CU_Jump = 0;
					O_CU_LinkR =0;
		end
endcase	
end		
		
endmodule

