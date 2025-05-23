`timescale 1ns / 1ns

module IM(addr, out);
    input [31:0] addr;
    output[31:0] out;
    reg [31:0] out;
    always @(addr) begin  
        case(addr)
        32'h00: out = 32'h20100000;
        32'h04: out = 32'h20110000;
        32'h08: out = 32'h00009024;
        32'h0c: out = 32'h2008000a;
        32'h10: out = 32'h12280004;
        32'h14: out = 32'h02129020;
        32'h18: out = 32'h22100001;
        32'h1c: out = 32'h22310001;
        32'h20: out = 32'h08000004;
        32'h24: out = 32'hac120040;
        32'h28: out = 32'h8c100040;
        default: out = {32{1'b0}};
        endcase
    end
endmodule