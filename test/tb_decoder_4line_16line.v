module tb_decoder_4line_16line();

	wire [15:0] out;

	decoder_4line_16line uut(.sel(sel), .out(out));

	integer i;
	initial
	begin
		for(i = 0; i < 16; i = i+1)
		begin
			sel = i;
			$monitor("sel=%d | out=%b", sel, out);
			#10;
		end
	end
endmodule
