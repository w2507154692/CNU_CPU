`timescale 1ns / 1ns

module Ctrl(op, funct, RegWrite, MemToReg, MemWrite, BranchEq, Jump, ALUc, ALUSrc, RegDst, LoadCtrl);
    input [5:0] op, funct;
    output RegWrite, MemToReg, MemWrite, BranchEq, Jump, ALUSrc, RegDst, LoadCtrl;
    output [2:0] ALUc;

    // RegWrite 1：要写入寄存器  0：不写入寄存器
    // MemToReg 1：内存来的值写入寄存器  0：alu运算结果写入寄存器
    // MemWrite 1：要写入内存  0：不写入内存
    // BranchEq 1：是相等分支指令  0：不是相等分支指令
    // Jump 1：是跳转指令  0：不是跳转指令
    // ALUSrc 1：alu的B输入来自立即数  0：alu的B输入来自寄存器
    // RegDst 1：要写入Rt寄存器  0：要写入Rd寄存器
    // ALUc 000：加  001：减  010：或  011：与
    
    assign RegWrite = (op == 6'b00000 ||
                        op == 6'b001000 ||
                        op == 6'b100011 ||
                        op == 6'b100101) ? 1 : 0;
    assign MemToReg = (op == 6'b100011 ||
                        op == 6'b100101) ? 1 : 0;
    assign MemWrite = (op == 6'b101011) ? 1 : 0;
    assign BranchEq = (op == 6'b000100) ? 1 : 0;
    assign Jump = (op == 6'b000010) ? 1 : 0;
    assign ALUc[2] = 0;
    assign ALUc[1] = ((op == 6'b000000 && funct == 6'b011110)) ? 1 : 0;
    assign ALUc[0] = (op == 6'b000100 ||
                        (op == 6'b000000 && funct == 6'b011110)) ? 1 : 0;
    assign ALUSrc = (op == 6'b001000 ||
                        op == 6'b100011 ||
                        op == 6'b101011 ||
                        op == 6'b100101) ? 1 : 0;
    assign RegDst = (op != 6'b00000) ? 1 : 0;
    assign LoadCtrl = (op == 6'b100101) ? 1 : 0;

endmodule
