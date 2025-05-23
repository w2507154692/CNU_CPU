`timescale 1ns / 1ns

module mem2wb(clk, clr, alu_out, dmOut, writeReg, RegWrite, MemToReg, out);
    input clk, clr;
    input RegWrite, MemToReg;
    input [5:0] writeReg;
    input [31:0] alu_out, dmOut;
    output [71:0] out;

    // out[0:0] 存放 RegWrite;
    // out[1:1] 存放 MemToReg;
    // out[7:2] 存放 writeReg;
    // out[39:8] 存放 alu_out;
    // out[71:40] 存放 dmOut;

    reg [71:0] out;
    
    always @(posedge clk or negedge clr) begin
        if(clr == 0) begin
            out <= 32'b0;
        end else if(clk == 1) begin
            out[0:0] = RegWrite;
            out[1:1] = MemToReg;
            out[7:2] = writeReg;
            out[39:8] = alu_out;
            out[71:40] = dmOut;
        end
    end

endmodule
