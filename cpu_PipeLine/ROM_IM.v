`timescale 1ns / 1ns

module ROM_IM (CS_sel, addr, data);
    input CS_sel;
    input [23:0] addr;
    output [31:0] data;

    // 声明 ROM 存储器，大小为 2^ADDR_WIDTH
    reg [31:0] memory [0:16777215];

    // 初始化 ROM 内容
    initial begin
        $readmemh("ROM_IM_data", memory);
    end

    assign data = (CS_sel == 1) ? memory[addr] : 0;

endmodule