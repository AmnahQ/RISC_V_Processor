module Mem_WB(
    input clk, reset,
    input MemtoReg, RegWrite,
    input [4:0] RD,
    input [63:0] EM_Result, Read_Data,
    output reg MW_MemtoReg, MW_RegWrite,
    output reg [4:0] MW_RD, 
    output reg [63:0] MW_Result, MW_Read_Data
    );
    
    always @(posedge clk or posedge reset) begin
        if (reset == 1'b1) begin
            MW_MemtoReg = 1'b0; 
            MW_RegWrite = 1'b0; 
            MW_RD = 5'b0;
            MW_Result = 63'b0; 
            MW_Read_Data = 63'b0;
        end
        else begin
            MW_MemtoReg = MemtoReg; 
            MW_RegWrite = RegWrite; 
            MW_RD = RD;
            MW_Result = EM_Result; 
            MW_Read_Data = Read_Data;
        end 
    end


endmodule
