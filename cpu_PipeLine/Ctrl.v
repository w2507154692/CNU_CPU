`timescale 1ns / 1ns

module Ctrl(op, funct, RegWrite, MemToReg, MemWrite, BranchEq, Jump, ALUc, ALUSrc, RegDst, LoadCtrl);
    input [5:0] op, funct;
    output RegWrite, MemToReg, MemWrite, BranchEq, Jump, ALUSrc, RegDst, LoadCtrl;
    output [2:0] ALUc;

    // RegWrite 1��Ҫд��Ĵ���  0����д��Ĵ���
    // MemToReg 1���ڴ�����ֵд��Ĵ���  0��alu������д��Ĵ���
    // MemWrite 1��Ҫд���ڴ�  0����д���ڴ�
    // BranchEq 1������ȷ�ָ֧��  0��������ȷ�ָ֧��
    // Jump 1������תָ��  0��������תָ��
    // ALUSrc 1��alu��B��������������  0��alu��B�������ԼĴ���
    // RegDst 1��Ҫд��Rt�Ĵ���  0��Ҫд��Rd�Ĵ���
    // ALUc 000����  001����  010����  011����
    
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
