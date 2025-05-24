`timescale 1ns / 1ns

module id2exe(clk, clr, flush, qa, qb, Rt, Rd, ep_imm, pc4,
                RegWrite, MemToReg, MemWrite, BranchEq, Jump, ALUc, ALUSrc, RegDst, adr, Rs, out);
    input clk, clr, flush;
    input RegWrite, MemToReg, MemWrite, BranchEq, Jump, ALUSrc, RegDst;
    input [2:0] ALUc;
    input [4:0] Rt, Rd;
    input [15:0] ep_imm;
    input [31:0] qa, qb, pc4;
    input [25:0] adr;
    input [4:0] Rs;
    output [162:0] out;

    reg [162:0] out;
    
    always @(posedge clk or posedge clr) begin
        if(clr || flush) begin
            out <= 163'b0;
        end else if(clk == 1) begin
            out[0:0] <= RegWrite;
            out[1:1] <= MemToReg;
            out[2:2] <= MemWrite;
            out[3:3] <= BranchEq;
            out[4:4] <= Jump;
            out[5:5] <= ALUSrc;
            out[6:6] <= RegDst;
            out[9:7] <= ALUc;
            out[14:10] <= Rt;
            out[19:15] <= Rd;
            out[35:20] <= ep_imm;
            out[67:36] <= qa;
            out[99:68] <= qb;
            out[131:100] <= pc4;
            out[157:132] <= adr;
            out[162:158] <= Rs;
        end
    end

endmodule
