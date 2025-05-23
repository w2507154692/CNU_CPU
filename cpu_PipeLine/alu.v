`timescale 1ns / 1ns

module alu(a, b, aluc, alu_out, zero);
    input [31:0] a, b;
    input [2:0] aluc;
    output [31:0] alu_out;
    output zero;

    reg [31:0] alu_out;
    
    reg zero;
    always @(a, b, aluc, alu_out)
    begin   
        case(aluc)
            3'b000: alu_out <= a + b;
            3'b001: alu_out <= a - b;
            3'b010: alu_out <= a | b;
            3'b011: alu_out <= a & b;
            default: alu_out <= a + b;
        endcase
    if(alu_out == 32'h00000000)
        zero <= 1;
    else
        zero <= 0;
    end

endmodule

