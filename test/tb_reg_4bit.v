module tb_reg_4bit();
	reg [3:0] in;
	reg low_i_en, async_reset, clk;
	wire [3:0] out;

	reg_4bit uut(
		.in(in), .out(out), .low_i_en(low_i_en), .async_reset(async_reset), .clk(clk)
	);

	initial
	begin
	//	$dumpfile("../simulation/tb_reg_4bit.vcd");
	//	$dumpvars(0, tb_reg_4bit);

		async_reset = 1'b1;
		low_i_en = 1'b0;
		//low_o_en = 1'b1;
		in = 4'b1111;
		#10;

		in = 4'b1010;
		//low_o_en = 1'b0;
		#10;

		async_reset = 1'b0;
		low_i_en = 1'b0;
		//low_o_en = 1'b0;
		#10;

		in = 4'b1111;
		low_i_en = 1'b0;
		//low_o_en = 1'b0;
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
		$monitor("in = %b | out = %b", in, out);
	end
endmodule

