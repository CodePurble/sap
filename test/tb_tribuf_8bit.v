module tb_tribuf_8bit;
	reg [7:0] in;
	reg enable;
	wire [7:0] out;

	tribuf_8bit uut(.in(in), .out(out), .enable(enable));

	initial
	begin
		$dumpfile("../simulation/tb_tribuf_8bit.vcd");
		$dumpvars(0, tb_tribuf_8bit);
		in = 8'b11001100;
		enable = 0;
		$monitor("out:%b", out);
	end
endmodule
