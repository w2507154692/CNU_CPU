`timescale 1ns / 1ns

module Ctrl_t;
    reg [6:0] op, funct;
    wire RegWrite, MemToReg, MemWrite, BranchEq, Jump, ALUSrc, Rd;
    wire [2:0] ALUc;

    Ctrl utt(.op(op), .funct(funct), .RegWrite(RegWrite), .MemToReg(MemToReg), 
            .MemWrite(MemWrite), .BranchEq(BranchEq), .Jump(Jump), .ALUc(ALUc), .ALUSrc(ALUSrc), .Rd(Rd));
    initial begin
        op = 0;
        funct = 0;

        #10 //add
        op = 6'b000000;
        funct = 6'b011010;

        #10 //and
        op = 6'b000000;
        funct = 6'b011110;

        #10 //addi
        op = 6'b001000;

        #10 //lw
        op = 6'b100011;

        #10 //sw
        op = 6'b101011;

        #10 //beq
        op = 6'b000100;

        #10 //jump
        op = 6'b000010;
    end

endmodule
