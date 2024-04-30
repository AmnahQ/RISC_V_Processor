module PIPELINE_TB();
    reg clk, reset;
    
    RISC_V_Processor RISCV(.reset(reset), .clk(clk)); 
    
    initial begin
        #0 clk = 1'b0;
        #0 reset = 1'b1;
        
        #5 reset = 1'b0;
    end
    
    always #5 clk = ~clk;

endmodule

