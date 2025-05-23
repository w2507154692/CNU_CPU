`timescale 1ns / 1ns

module cpu_PipeLine(clk, clr, IR, r8, r16, r17, r18);
    input clk, clr;
    output [32:0] IR, r8, r16, r17, r18;

    //数据通路
    //IF
    wire [31:0] newPc, pcOut, imOut, pc4F;
    //ID
    wire [63:0] if2id_out;
    wire [31:0] InstrD, pc4D, qaD, qbD, ep_immD;
    wire RegWriteD, MemToRegD, MemWriteD, BranchEqD, JumpD, ALUSrcD, RegDstD;
    wire [2:0] ALUcD;
    //EXE
    wire [131:0] id2exe_out;
    wire zeroE;
    wire [31:0] qaE, qbE, alu_outE, aluB, ep_immE, pc4E, pcBranchE;
    wire [4:0] RtE, RdE, WriteRegE;
    wire RegWriteE, MemToRegE, MemWriteE, BranchEqE, JumpE, ALUSrcE, RegDstE;
    wire [2:0] ALUcE;
    //MEM
    wire [106:0] exe2mem_out;
    wire zeroM;
    wire [31:0] alu_outM, qbM, pcBranchM, dmOutM;
    wire [4:0] WriteRegM;
    wire RegWriteM, MemToRegM, MemWriteM, BranchEqM, JumpM;
    wire [1:0] PCctrl;
    //WB
    wire [71:0] mem2wb_out;
    wire [31:0] alu_outW, dmOutW, rfData;
    wire [4:0] WriteRegW;
    wire RegWriteW, MemToRegW;

    //逻辑关系
    //IF
    assign pc4F = pcOut + 4;
    //ID
    assign InstrD = if2id_out[63:32];
    assign pc4D = if2id_out[31:0];
    assign IR = InstrD;
    //EXE
    assign RegWriteE = id2exe_out[0:0];
    assign MemToRegE = id2exe_out[1:1];
    assign MemWriteE = id2exe_out[2:2];
    assign BranchEqE = id2exe_out[3:3];
    assign JumpE = id2exe_out[4:4];
    assign ALUSrcE = id2exe_out[5:5];
    assign RegDstE = id2exe_out[6:6];
    assign ALUcE = id2exe_out[9:7];
    assign RtE = id2exe_out[14:10];
    assign RdE = id2exe_out[19:15];
    assign ep_immE = id2exe_out[35:20];
    assign qaE = id2exe_out[67:36];
    assign qbE = id2exe_out[99:68];
    assign pc4E = id2exe_out[131:100];
    assign aluB = (ALUSrcE == 0) ? qbE : ep_immE;
    assign WriteRegE = (RegDstE == 0) ? RtE : RdE;
    assign pcBranchE = (ep_immE << 2) + pc4E;
	//MEM
	assign zeroM = exe2mem_out[0:0];
	assign RegWriteM = exe2mem_out[1:1];
	assign MemToRegM = exe2mem_out[2:2];
	assign MemWriteM = exe2mem_out[3:3];
	assign BranchEqM = exe2mem_out[4:4];
	assign JumpM = exe2mem_out[5:5];
	assign WriteRegM = exe2mem_out[10:6];
	assign alu_outM = exe2mem_out[42:11];
	assign qbM = exe2mem_out[74:43];
	assign pcBranchM = exe2mem_out[106:75];

    //组件实例化
    //IF
    pc pc(.clk(clk), .clr(clr), .en(1), .adr(newPc), .data(pcOut));
    IM IM(.addr(newPc), .out(imOut));
    if2id if2id(.clk(clk), .clr(clr), .Instr(imOut), .pc4(pc4F), .out(if2id_out));
    //ID
    Ctrl Ctrl(.op(InstrD[31:26]), .funct(InstrD[5:0]),.RegWrite(RegWriteD), .MemToReg(MemToRegD),
                .MemWrite(MemWriteD), .BranchEq(BranchEqD),.Jump(JumpD), .ALUc(ALUcD), .ALUSrc(ALUSrcD), .Rd(RdD));
    RF RF(.clk(clk), .clr(clr), .we(RegWriteW), .ra(InstrD[25:21]), .rb(InstrD[20:16]),
            .rw(WriteRegW), .rd(rfData), .qa(qaD), .qb(qbD), .r8(r8), .r16(r16), .r17(r17), .r18(r18));
    EP EP(imm(InstrD[15:0]), ep_imm(ep_immD));
    id2exe id2exe(.clk(clk), .clr(clr), .qa(qaD), .qb(qbD),.Rt(InstrD[20:16]), .Rd(InstrD[15:11]), .ep_imm(ep_immD), .pc4(pc4D), 
                .RegWrite(RegWriteD), .MemToReg(MemToRegD), .MemWrite(MemWriteD), .BranchEq(BranchEqD), .Jump(JumpD),
                .ALUc(ALUcD), .ALUSrc(ALUSrcD), .RegDst(RegDstD), .out(id2exe_out));
    //EXE
    alu alu(.a(qaE), .b(aluB), .aluc(ALUcE), .alu_out(alu_outE), .zero(zeroE));
    exe2mem exe2mem(.clk(clk), .clr(clr), .zero(zeroE), .alu_out(alu_outE), .writeData(qbE),
                    .writeReg(WriteRegE), .pcBranch(pcBranchE),
                    .RegWrite(RegWriteE), .MemToReg(MemToRegE), .MemWrite(MemWriteE),
                    .BranchEq(BranchEqE), .Jump(JumpE), .out(exe2mem_out));
	//Mem

                                                   

endmodule