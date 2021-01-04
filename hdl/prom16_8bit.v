// FIXME: not sure if inputs are even being stored. I can't take this anymore -_-
module prom16_8bit(
	input [7:0] data_in,
	input [3:0] addr,
	input low_o_en,
	input low_load,
	input clr,
	input clk,
	output tri [7:0] data_out
);
	wire [15:0] decoder_out;
	wire [15:0] not_decoder_out;
	wire demux_o_en;
	wire [7:0] mux_in [0:15];

	not g(demux_o_en, low_load);
	decoder_4line_16line dec(.sel(addr), .out(decoder_out), .o_en(demux_o_en));

	// use verilog generate for loop to generate 16 8-bit regs
	genvar i;
	generate
		for(i = 0; i < 16; i = i+1)
		begin
			not g(not_decoder_out[i], decoder_out[i]);
			reg_8bit reg_array(
				.in(data_in),
				.low_i_en(not_decoder_out[i]),
				.low_o_en(low_o_en),
				.async_reset(clr),
				.clk(clk),
				.out(mux_in[i])
			);
		end
	endgenerate

	mux_16line_8bit mux1(
		.sel(addr),
		.out(data_out),
		.in0(mux_in[0]),
		.in1(mux_in[1]),
		.in2(mux_in[2]),
		.in3(mux_in[3]),
		.in4(mux_in[4]),
		.in5(mux_in[5]),
		.in6(mux_in[6]),
		.in7(mux_in[7]),
		.in8(mux_in[8]),
		.in9(mux_in[9]),
		.in10(mux_in[10]),
		.in11(mux_in[11]),
		.in12(mux_in[12]),
		.in13(mux_in[13]),
		.in14(mux_in[14]),
		.in15(mux_in[15])
	);
endmodule
