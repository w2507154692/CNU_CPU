`timescale 1ns / 1ns

module DM(clk, we, addr, din, dout);
    input we;
    input clk;
    input [7:0] addr;
    input [31:0] din;
    output [31:0] dout;

    reg [31:0] ram [255:0];
    integer i;
    initial begin
        for(i = 0; i < 255; i = i + 1)
            ram[i] = 32'h0;
    end
    
    always @(posedge clk)   //Ê±ÖÓÉÏÉýÑØÐ´¼Ä´æÆ÷
        if (we == 1)
            ram[addr] <= din;

    assign dout = (addr < 255) ? ram[addr] : 32'h0;
    
endmodule

