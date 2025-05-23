`timescale 1ns / 1ns

module all(
	input clk, clr, we, mux3,
    input[2:0] aluc,
	input[4:0] ra,rb,rw,
	input [31:0] rd,
    output[31:0] qa,qb,
	output[31:0] alu_out,
	output zero
);

    wire [31:0] alu_out_wire, qa_wire, qb_wire, rd_wire;
    assign rd_wire = (mux3 == 1) ? alu_out_wire : rd;
	
	rf uut_rf(.clk(clk), .clr(clr), .we(we), .ra(ra), .rb(rb), .rw(rw), .rd(rd_wire), .qa(qa_wire), .qb(qb_wire));
	alu uut_alu(.a(qa_wire), .b(qb_wire), .aluc(aluc), .alu_out(alu_out_wire), .zero(zero));

    assign alu_out = alu_out_wire;
    assign qa = qa_wire;
    assign qb = qb_wire;

endmodule
