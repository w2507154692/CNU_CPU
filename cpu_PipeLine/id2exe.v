`timescale 1ns / 1ns

module id2exe(clk, clr, qa, qb, Rt, Rd, ep_imm, pc4,
                RegWrite, MemToReg, MemWrite, BranchEq, Jump, ALUc, ALUSrc, RegDst, out);
    input clk, clr;
    input RegWrite, MemToReg, MemWrite, BranchEq, Jump, ALUSrc, RegDst;
    input [2:0] ALUc;
    input [4:0] Rt, Rd;
    input [15:0] ep_imm;
    input [31:0] qa, qb, pc4;
    output [131:0] out;

    // out[0:0] 存放 RegWrite;
    // out[1:1] 存放 MemToReg;
    // out[2:2] 存放 MemWrite;
    // out[3:3] 存放 BranchEq;
    // out[4:4] 存放 Jump;
    // out[5:5] 存放 ALUSrc;
    // out[6:6] 存放 RegDst;
    // out[9:7] 存放 ALUc;
    // out[14:10] 存放 Rt;
    // out[19:15] 存放 Rd;
    // out[35:20] 存放 ep_imm;
    // out[67:36] 存放 qa;
    // out[99:68] 存放 qb;
    // out[131:100] = pc4;

    reg [131:0] out;
    
    always @(posedge clk or negedge clr) begin
        if(clr == 0) begin
            out <= 32'b0;
        end else if(clk == 1) begin
            out[0:0] = RegWrite;
            out[1:1] = MemToReg;
            out[2:2] = MemWrite;
            out[3:3] = BranchEq;
            out[4:4] = Jump;
            out[5:5] = ALUSrc;
            out[6:6] = RegDst;
            out[9:7] = ALUc;
            out[14:10] = Rt;
            out[19:15] = Rd;
            out[35:20] = ep_imm;
            out[67:36] = qa;
            out[99:68] = qb;
            out[131:100] = pc4;
        end
    end

endmodule
