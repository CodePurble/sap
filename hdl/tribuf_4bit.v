// 4-bit tristate buffer
module tribuf_4bit(in, out, low_enable);
    input [3:0] in; // Input word
    input low_enable; // Enable (active low)
    output tri [3:0] out; // Output word
    assign out = low_enable ? 4'bzzzz : in;
endmodule

