`timescale 1ns / 1ns

module if2id(clk, clr, Instr, pc4F, out);
    input clk, clr;
    input [31:0] Instr, pc4F;
    output [63:0] out;

    // out[31:0] ¥Ê∑≈ pc+4
    // out[63:32] ¥Ê∑≈ ÷∏¡Ó

    reg [63:0] out;
    
    always @(posedge clk or negedge clr) begin
        if(clr == 0) begin
            out <= 32'b0;
        end else if(clk == 1) begin
            out[31:0] = pc4F[31:0];
            out[63:32] = Instr[31:0];
        end
    end

endmodule