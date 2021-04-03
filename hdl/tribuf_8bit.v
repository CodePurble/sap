// 8-bit tristate buffer
module tribuf_8bit(in, out, low_enable);
    input [7:0] in; // Input word
    input low_enable; // Enable (active low)
    output tri [7:0] out; // Output word
    tribuf_4bit b0(.in(in[3:0]), .out(out[3:0]), .low_enable(low_enable));
    tribuf_4bit b1(.in(in[7:4]), .out(out[7:4]), .low_enable(low_enable));
endmodule
