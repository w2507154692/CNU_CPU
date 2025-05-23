`timescale 1ns / 1ns

module pc_t;
    reg clk, clr ,en;
    reg [31:0] adr;
    wire data;

    pc uut(.clk(clk), .clr(clr), .en(en), .adr(adr), .data(data));
    initial begin
        clk = 0;
        clr = 0;
        en = 0;
        adr = 0;

        #20
        clr = 0;
        en = 1;
        adr = 5;

        #20
        clr = 1;
        en = 0;
        adr = 0;
    end

    initial begin
        clk = 0;
        forever #10 clk = ~clk;
    end

endmodule