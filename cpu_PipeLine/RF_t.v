`timescale 1ns / 1ns

module RF_t;
    reg clk, clr, we;
    reg [4:0] ra, rb, rw;
    reg [31:0] rd;
    wire [31:0] qa, qb, r8, r16, r17, r18;

    RF uut(.clk(clk), .clr(clr), .we(we), .ra(ra), .rb(rb), .rw(rw), .rd(rd), .qa(qa), .qb(qb),
            .r8(r8), .r16(r16), .r17(r17), .r18(r18));
    initial begin
        clk = 0;
        clr = 0;
        we = 0;
        ra = 0;
        rb = 0;
        rw = 0;
        rd = 0;

        #20; //R4=04H
        clr = 0;
        we = 1;
        ra = 0;
        rb = 0;
        rw = 4;
        rd = 32'h04;

        #20; //R5=05H
        clr = 0;
        we = 1;
        ra = 0;
        rb = 0;
        rw = 5;
        rd = 32'h05;

        #20; //R8=08H
        clr = 0;
        we = 1;
        ra = 0;
        rb = 0;
        rw = 8;
        rd = 32'h08;

        #20; //R16=10H
        clr = 0;
        we = 1;
        ra = 0;
        rb = 0;
        rw = 16;
        rd = 32'h10;

    end

    initial begin
        clk = 0;
        forever #10 clk = ~clk;
    end

endmodule