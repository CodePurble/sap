module adder_sub_8(
	input [7:0] A, B,
	input add_sub,
	input out_en,
	output [7:0] out
);
	wire [7:0] dmux0,dmux1,tc_out, B_in,add_sub_out,out_add_sub;
	wire cout_a_s;
	parameter cin_adder = 1'b0;

	demux_2line_8bit demux1 (
		.in(B), .sel(add_sub), .out0(dmux0), .out1(dmux1)
	);

	assign tc_out = ~dmux1 +  8'b00000001;

	mux_2line_8bit mux1 (.in0(dmux0), .in1(tc_out), .sel(add_sub), .out(B_in));
	full_adder_8 f1 (.a(A), .b(B_in), .cin(cin_adder), .sum(add_sub_out), .cout(cout_a_s));
	tribuf_8bit tri8 (.in(add_sub_out), .out(out), .low_enable(out_en));
endmodule

