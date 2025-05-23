`timescale 1ns / 1ns

module pc(clk, clr, en, adr, data);
    input clk, clr, en;
    input [31:0] adr;
    output [31:0] data;

    reg [31:0] data;

    always @(posedge clk or negedge clr) begin
        if(clr == 0)
        begin
            data <= 32'b0;
        end 
        else if(en)
        begin
            data <= adr;
        end
    end
endmodule