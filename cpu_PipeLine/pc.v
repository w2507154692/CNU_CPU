`timescale 1ns / 1ns

module pc(clk, clr, stallData, en, adr, data);
    input clk, clr, en, stallData;
    input [31:0] adr;
    output [31:0] data;

    reg [31:0] data;

    always @(posedge clk or posedge clr) begin
        if(clr) begin
            data <= 32'b0;
        end 
        else if(en && !stallData) begin
            data <= adr;
        end
    end
endmodule