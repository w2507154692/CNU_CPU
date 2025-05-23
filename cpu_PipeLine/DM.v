`timescale 1ns / 1ns

module DM(clk,we,addr,din,dout);
    input we;
    input clk;
    input [7:0] addr;
    input [31:0] din;
    output [31:0] dout;

    reg [31:0] ram[255:0];
    always @(posedge clk)   //Ê±ÖÓÉÏÉıÑØĞ´¼Ä´æÆ÷
        if (we == 1)
            ram[addr] <= din;

    assign dout = ram[addr];
endmodule

