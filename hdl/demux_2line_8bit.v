module demux_2line_8bit(
    input [7:0] in,
    input sel,
    output [7:0] out0,
    output [7:0] out1
);
    assign out0 = sel ? 8'bx : in;
    assign out1 = sel ? in : 8'bx;
endmodule
