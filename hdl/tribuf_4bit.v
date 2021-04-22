// 4-bit tristate buffer
module tribuf_4bit(in, out, low_enable);
    input [3:0] in; // Input word
    input low_enable; // Enable (active low)
    output tri [3:0] out; // Output word

    bufif0(out[0], in[0], low_enable);
    bufif0(out[1], in[1], low_enable);
    bufif0(out[2], in[2], low_enable);
    bufif0(out[3], in[3], low_enable);
endmodule

