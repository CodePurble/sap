module tb_decoder_4line_16line();

	reg o_en;
	reg [3:0] sel;
	wire [15:0] out;

	decoder_4line_16line uut(.sel(sel), .out(out), .o_en(o_en));

	integer i;
	initial
	begin
		o_en = 0;
		for(i = 0; i < 16; i = i+1)
		begin
			sel = i;
			$monitor("sel=%d | out=%b", sel, out);
			#10;
		end
	end
endmodule
