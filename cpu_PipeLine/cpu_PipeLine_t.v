`timescale 1ns / 1ns

module cpu_PipeLine_t;
    reg clk, clr;
    wire [31:0] IR, r8, r16, r17, r18;

    cpu_PipeLine utt(.clk(clk), .clr(clr), .IR(IR), .r8(r8), .r16(r16), .r17(r17), .r18(r18));
    initial begin
        clr = 1;

        #5;
        clr = 0;
    end

    initial begin
        clk = 0;

        #5;
        forever #5 clk = ~clk;
    end

endmodule