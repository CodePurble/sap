// 8-bit tristate buffer
module tribuf_8bit(in, out, low_enable);
    input [7:0] in; // Input word
    input low_enable; // Enable (active low)
    output tri [7:0] out; // Output word
    assign out = low_enable ? 8'bzzzzzzzz : in;
endmodule
