module tribuf_8bit(in, out, enable);
	input [7:0] in; // Input word
	input enable;
	output tri [7:0] out; // Output word
	assign out = enable ? 8'bzzzzzzzz : in;
endmodule
