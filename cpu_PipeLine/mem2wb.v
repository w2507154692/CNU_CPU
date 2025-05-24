`timescale 1ns / 1ns

module mem2wb(clk, clr, alu_out, dmOut, writeReg, RegWrite, MemToReg, out);
    input clk, clr;
    input RegWrite, MemToReg;
    input [5:0] writeReg;
    input [31:0] alu_out, dmOut;
    output [71:0] out;

    reg [71:0] out;
    
    always @(posedge clk or posedge clr) begin
        if(clr) begin
            out <= 72'b0;
        end else if(clk == 1) begin
            out[0:0] <= RegWrite;
            out[1:1] <= MemToReg;
            out[7:2] <= writeReg;
            out[39:8] <= alu_out;
            out[71:40] <= dmOut;
        end
    end

endmodule
