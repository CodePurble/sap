// 4-bit tristate register (see 34LS133)
module reg_4bit(in, out, low_i_en, low_o_en, async_reset, clk);
	input [3:0] in; // Input word
	input low_i_en; // Input enable signal (active low)
	input low_o_en; // Output enable signal (active low)
	input async_reset; // Asynchrounous reset
	input clk; // Clock
	output tri [3:0] out; // Output word

	reg [3:0] hold; // Actual register component for holding values

	tribuf_4bit buffer(
		.low_enable(low_o_en),
		.out(out),
		.in(hold)
	);

	always @(posedge clk or posedge async_reset)
	begin
		if(low_i_en == 1'b0)
			hold <= in;

		if(async_reset == 1'b1)
			hold <= 0;
	end
endmodule
