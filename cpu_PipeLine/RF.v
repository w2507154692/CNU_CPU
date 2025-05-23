`timescale 1ns / 1ns

module RF(clk, clr, we, ra, rb, rw, rd, qa, qb, r8, r16, r17, r18);
    input clk, clr, we;
    input [4:0] ra, rb, rw;
    input [31:0] rd;
    output [31:0] qa, qb, r8, r16, r17, r18;

    reg [31:0] register [31:0];

    integer i;
    
    //Ë«¶Ë¿Ú¶Á
    assign qa = (ra == 0) ? 0 : register[ra];
    assign qb = (rb == 0) ? 0 : register[rb];
    assign r8 = register[8];
    assign r16 = register[16];
    assign r17 = register[17];
    assign r18 = register[18];

    //µ¥¶Ë¿ÚÐ´
    always @(posedge clk or posedge clr) begin
        if(clr)
            begin
                for(i = 0; i < 32; i = i + 1)
                        register[i] <= 0;
            end
        else if(we && rw != 0)
            begin
                register[rw] <= rd;
            end
    end

endmodule
