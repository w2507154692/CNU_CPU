`timescale 1ns / 1ns

module if2id(clk, clr, flushCtrl, stallData, Instr, pc4, out);
    input clk, clr, flushCtrl, stallData;
    input [31:0] Instr, pc4;
    output [63:0] out;

    reg [63:0] out;
    
    always @(posedge clk or posedge clr) begin
        if(clr || flushCtrl) begin
            out <= 64'b0;
        end else if(clk == 1 && !stallData) begin
            out[31:0] <= pc4[31:0];
            out[63:32] <= Instr[31:0];
        end
    end

endmodule