`timescale 1ns / 1ns

module all_t;
    reg clk, we, mux3;
    reg [2:0] aluc;
    reg [4:0] ra, rb, rw;
    reg [31:0] rd;
    wire [31:0] qa, qb, alu_out;
    wire zero;

    all uut (
        .clk(clk),
        .we(we),
        .mux3(mux3),
        .aluc(aluc),
        .ra(ra),
        .rb(rb),
        .rw(rw),
        .rd(rd),
        .qa(qa),
        .qb(qb),
        .alu_out(alu_out),
        .zero(zero)
    );
    initial begin
    clk = 0;
    we = 0;
    mux3 = 0;
    ra = 0;
    rb = 0;
    rw = 0;
    rd = 0;
    aluc = 0;
    
    #20; //R4=04H
    we = 1;
    mux3 = 0;
    ra = 0;
    rb = 0;
    rw = 4;
    rd = 32'h04;
    aluc = 0;

    #20; //R5=05H
    we = 1;
    mux3 = 0;
    ra = 0;
    rb = 0;
    rw = 5;
    rd = 32'h05;
    aluc = 0;

    #20; //R6=R4+R5=09H
    we = 0;
    mux3 = 0;
    ra = 4;
    rb = 5;
    rw = 6;
    rd = 0;
    aluc = 0;

    #20; //R7=R4-R5=FFFFFFFFH
    we = 0;
    mux3 = 0;
    ra = 0;
    rb = 0;
    rw = 0;
    rd = 0;
    aluc = 0;

    #20; //R8=R4|R5=05H
    we = 0;
    mux3 = 0;
    ra = 0;
    rb = 0;
    rw = 0;
    rd = 0;
    aluc = 0;

    #20; //R9=R4&R5=04H
    we = 0;
    mux3 = 0;
    ra = 0;
    rb = 0;
    rw = 0;
    rd = 0;
    aluc = 0;

    end

    initial
    begin
        clk = 0;
        forever #10 clk = ~clk;
    end

endmodule

