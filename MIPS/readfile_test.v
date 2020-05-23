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


TP4 uut (
.CLK(CLK), 
.RESET(RESET), 
.INSTRUCTION_IN(INSTRUCTION), 
.FLAG_I(FLAG_I), 
.FLAG_STEP(FLAG_STEP));




initial begin
    
    data_file = $fopen("./data_file.bin", "r");
    if (data_file == 0) begin
        $display("data_file handle was NULL");
        
        $finish;
    end
    // Initialize Inputs
    CLK   = 0;
    RESET = 1;
    
    // Wait 100 ns for global reset to finish
    #100;
    RESET = 0;
	 
	 
	 #100
	 
	 FLAG_STEP=1;
	 #2
	 FLAG_STEP=0;
    
end


always @(posedge CLK) begin
    if (RESET) begin
        FLAG_I = 0;
    end
    else
    begin
        scan_file = $fscanf(data_file, "%b\n", captured_data);
        if (!$feof(data_file))
        begin
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

