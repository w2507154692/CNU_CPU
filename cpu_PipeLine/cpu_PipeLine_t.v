`timescale 1ns / 1ns

module cpu_PipeLine_t;
    reg clk, clr;
    wire [31:0] IR, r8, r16, r17, r18;
    // wire RegWriteD, MemToRegD, MemWriteD, BranchEqD, JumpD, ALUSrcD, RegDstD;
    // wire [2:0] ALUcD;
    // wire [31:0] InstrD;
    // wire RegWriteE, MemToRegE, MemWriteE, BranchEqE, JumpE, ALUSrcE, RegDstE;
    // wire [2:0] ALUcE;
    // wire [31:0] pcOut, imOut;

    // cpu_PipeLine utt(.clk(clk), .clr(clr), .IR(IR), .r8(r8), .r16(r16), .r17(r17), .r18(r18),
    //                     .RegWriteD(RegWriteD), .MemToRegD(MemToRegD), .MemWriteD(MemWriteD), 
    //                     .BranchEqD(BranchEqD), .JumpD(JumpD), .ALUcD(ALUcD),
    //                     .ALUSrcD(ALUSrcD), .RegDstD(RegDstD), .InstrD(InstrD),
    //                     .RegWriteE(RegWriteE), .MemToRegE(MemToRegE), .MemWriteE(MemWriteE),
    //                     .BranchEqE(BranchEqE), .JumpE(JumpE), .ALUSrcE(ALUSrcE), .ALUcE(ALUcE), .RegDstE(RegDstE),
    //                     .pcOut(pcOut), .imOut(imOut));
    cpu_PipeLine utt(.clk(clk), .clr(clr), .IR(IR), .r8(r8), .r16(r16), .r17(r17), .r18(r18));
    initial begin
        clr = 1;

        #5;
        clr = 0;
    end

    initial begin
        clk = 0;

        #5;
        forever #5 clk = ~clk;
    end

endmodule