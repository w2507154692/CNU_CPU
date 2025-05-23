`timescale 1ns / 1ns

module EP(imm, ep_imm);
    input [15:0] imm;
    output [31:0] ep_imm;

    assign ep_imm[31:16] = 32'h0000;
    assign ep_imm[15:0] = imm[15:0];

endmodule