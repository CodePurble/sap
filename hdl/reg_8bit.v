// 8-bit tristate register (see 74LS173)
module reg_8bit(in, out, i_en, o_en, async_reset, clk);
	input [7:0] in; // Input word
	input i_en; // Input enable signal (active low)
	input o_en; // Output enable signal (active low)
	input async_reset; // Asynchrounous reset
	input clk; // Clock
	output tri [7:0] out; // Output word
	reg [7:0] hold; // Actual register component for holding values

	tribuf_8bit buffer(.enable(o_en), .out(out), .in(hold));

	always @(posedge clk or posedge async_reset)
	begin
		if(i_en == 1'b0)
			hold <= in;

		if(async_reset == 1'b1)
			hold <= 0;
	end
endmodule
