`timescale 1ns / 1ns

module exe2mem(clk, clr, flushCtrl, zero, alu_out, writeData, writeReg, pcBranch, RegWrite,
                MemToReg, MemWrite, BranchEq, Jump, pcJump, LoadCtrl, out);
    input clk, clr, flushCtrl;
    input zero, RegWrite, MemToReg, MemWrite, BranchEq, Jump;
    input [4:0] writeReg;
    input [31:0] alu_out, writeData, pcBranch;
    input [25:0] pcJump;
    input LoadCtrl;
    output [133:0] out;

    reg [133:0] out;
    
    always @(posedge clk or posedge clr) begin
        if(clr || flushCtrl) begin
            out <= 134'b0;
        end else if(clk == 1) begin
            out[0:0] <= zero;
            out[1:1] <= RegWrite;
            out[2:2] <= MemToReg;
            out[3:3] <= MemWrite;
            out[4:4] <= BranchEq;
            out[5:5] <= Jump;
            out[10:6] <= writeReg;
            out[42:11] <= alu_out;
            out[74:43] <= writeData;
            out[106:75] <= pcBranch;
            out[132:107] <= pcJump;
            out[133:133] <= LoadCtrl;
        end
    end

endmodule

