// 4-bit tristate buffer
module tribuf_4bit(in, out, enable);
	input [3:0] in; // Input word
	input enable; // Enable (active high)
	output tri [3:0] out; // Output word
	assign out = enable ? in : 4'bzzzz;
endmodule

