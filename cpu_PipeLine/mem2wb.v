`timescale 1ns / 1ns

module mem2wb(clk, clr, alu_out, dmOut, writeReg, RegWrite, MemToReg, out);
    input clk, clr;
    input RegWrite, MemToReg;
    input [4:0] writeReg;
    input [31:0] alu_out, dmOut;
    output [70:0] out;

    reg [70:0] out;
    
    always @(posedge clk or posedge clr) begin
        if(clr) begin
            out <= 71'b0;
        end else if(clk == 1) begin
            out[0:0] <= RegWrite;
            out[1:1] <= MemToReg;
            out[6:2] <= writeReg;
            out[38:7] <= alu_out;
            out[70:39] <= dmOut;
        end
    end

endmodule
