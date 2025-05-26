`timescale 1ns / 1ns

module IM(addr, out);
    input [31:0] addr;
    output[31:0] out;
    reg [31:0] out;
    always @(addr) begin  
        case(addr)
        //主程序
        32'h00: out = 32'h20100000; //addi $16,$0,0
        32'h04: out = 32'h20110000; //addi $17,$0,0
        32'h08: out = 32'h00009024; //and $18,$0,$0
        32'h0c: out = 32'h2008000a; //addi $8,$0,10
        32'h10: out = 32'h12280004; //label1: beq $17,$8,labl2
        32'h14: out = 32'h02129020; //add $18,$16,$18
        32'h18: out = 32'h22100001; //addi $16,$16,1
        32'h1c: out = 32'h22310001; //addi $17,$17,1
        32'h20: out = 32'h08000004; //j labl1
        32'h24: out = 32'hac120040; //labl2: sw $18,0x00000040($0)
        32'h28: out = 32'h8c100040; // lw $16,0x00000040($0)

        // //重定向测试
        // 32'h00: out = 32'h2008000b; //addi $8,$0,11
        // 32'h04: out = 32'h21100001; //addi $16,$8,1
        // 32'h08: out = 32'h21110001; //addi $17,$8,1

        // //暂停流水线测试
        // 32'h00: out = 32'h2008000a; //addi $8,$0,10; //$8=a
        // 32'h04: out = 32'hac080000; //sw $8,0($0);
        // 32'h08: out = 32'h8c100000; //lw $16,0($0); //$16=a
        // 32'h0c: out = 32'h22110001; //addi $17,$16,1; //$17=b
        // 32'h10: out = 32'h02119020; //add $18,$16,$17; //$18=15

        // //LHU测试
        // 32'h00: out = 32'h2012FFFF; //addi $18,$0,FFFF; //$18=FFFF
        // 32'h04: out = 32'h2248FFFF; //addi $8,$18,FFFF; //$8=1FFFE
        // 32'h08: out = 32'hac080000; //sw $8,0($0);
        // 32'h0c: out = 32'h94100000; //lhu $16,0($0); //$16=FFFE
        default: out = {32{1'b0}};
        endcase
    end
endmodule