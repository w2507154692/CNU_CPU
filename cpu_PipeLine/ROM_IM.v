`timescale 1ns / 1ns

module ROM_IM (CS_sel, addr, data);
    input CS_sel;
    input [23:0] addr;
    output [31:0] data;

    // ���� ROM �洢������СΪ 2^ADDR_WIDTH
    reg [31:0] memory [0:16777215];

    // ��ʼ�� ROM ����
    initial begin
        $readmemh("ROM_IM_data", memory);
    end

    assign data = (CS_sel == 1) ? memory[addr] : 0;

endmodule