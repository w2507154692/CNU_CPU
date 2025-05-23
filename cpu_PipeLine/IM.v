`timescale 1ns / 1ns

module IM(addr, out);
    input [7:0] addr;
    output[31:0] out;
    reg [31:0] out;
    always @(addr) begin  
        case(addr)
        8'h00: out = 32'h20100000;
        8'h04: out = 32'h20110000;
        8'h08: out = 32'h00009024;
        8'h0c: out = 32'h2008000a;
        8'h10: out = 32'h12280004;
        8'h14: out = 32'h02129020;
        8'h18: out = 32'h22100001;
        8'h1c: out = 32'h22310001;
        8'h20: out = 32'h08000004;
        8'h24: out = 32'hac120040;
        8'h28: out = 32'h8c100040;
        default: out = {32{1'b0}};
        endcase
    end
endmodule