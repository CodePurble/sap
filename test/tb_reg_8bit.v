module tb_reg_8bit;
	reg [7:0] in;
	reg i_en, o_en, async_reset, clk;
	wire [7:0] out;

	reg_8bit uut(.in(in), .out(out), .i_en(i_en), .o_en(o_en), .async_reset(async_reset), .clk(clk));

	initial
	begin
		$dumpfile("../simulation/tb_reg_8bit.vcd");
		$dumpvars(0, tb_reg_8bit);

		async_reset = 1'b1;
		i_en = 1'b0;
		o_en = 1'b1;
		in = 8'b11111111;
		#10;

		in = 8'b10101010;
		o_en = 1'b0;
		#10;

		async_reset = 1'b0;
		i_en = 1'b0;
		o_en = 1'b0;
		#10;
	end

	initial
	begin
		clk = 1'b0;
		repeat(5)
		begin
			clk = ~clk;
			#10;
		end
	end

	initial
	begin
		$monitor("clk = %b | in = %b | out = %b", clk, in, out);
	end
endmodule
