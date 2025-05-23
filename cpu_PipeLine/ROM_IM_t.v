`timescale 1ns / 1ns

module ROM_IM_t;
    reg CS_sel; 
    reg [23:0] addr;
    wire [31:0] data;

    ROM_IM utt(.CS_sel(CS_sel), .addr(addr), .data(data));
    initial begin
        CS_sel = 1;
        addr = 0;

        #20;
        addr = 1;   

        #20;
        addr = 2;
    end

endmodule