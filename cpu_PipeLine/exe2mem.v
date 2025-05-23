`timescale 1ns / 1ns

module exe2mem(clk, clr, zero, alu_out, writeData, writeReg, pcBranch, RegWrite, MemToReg, MemWrite, BranchEq, Jump, out);
    input clk, clr;
    input zero, RegWrite, MemToReg, MemWrite, BranchEq, Jump;
    input [4:0] writeReg;
    input [31:0] alu_out, writeData, pcBranch;
    output [106:0] out;

    // out[0:0] 存放 zero;
    // out[1:1] 存放 RegWrite;
    // out[2:2] 存放 MemToReg;
    // out[3:3] 存放 MemWrite;
    // out[4:4] 存放 BranchEq;
    // out[5:5] 存放 Jump;
    // out[10:6] 存放 writeReg;
    // out[42:11] 存放 alu_out;
    // out[74:43] 存放 writeData;
    // out[106:75] 存放 pcBranch;

    reg [106:0] out;
    
    always @(posedge clk or negedge clr) begin
        if(clr == 0) begin
            out <= 32'b0;
        end else if(clk == 1) begin
            out[0:0] = zero;
            out[1:1] = RegWrite;
            out[2:2] = MemToReg;
            out[3:3] = MemWrite;
            out[4:4] = BranchEq;
            out[5:5] = Jump;
            out[10:6] = writeReg;
            out[42:11] = alu_out;
            out[74:43] = writeData;
            out[106:75] = pcBranch;
        end
    end

endmodule

