module adder_sub_8(
    input [7:0] A, B,
    input sub,
    input out_en,
    output cout,
    output [7:0] out
);
    wire [7:0] dmux0, dmux1, tc_out, B_in, add_sub_out;
    parameter cin_adder = 1'b0;

    demux_2line_8bit demux1 (
        .in(B), .sel(sub), .out0(dmux0), .out1(dmux1)
    );

    assign tc_out = ~dmux1 +  8'b00000001; // Take 2's complement

    mux_2line_8bit mux1(
        .in0(dmux0), .in1(tc_out),
        .sel(sub), .out(B_in)
    );
    adder_ripple_8bit r1(
        .a(A), .b(B_in), .cin(cin_adder),
        .sum(add_sub_out), .cout(cout)
    );

    wire add_sub_low_out_en = ~out_en;

    tribuf_8bit tri8(
        .in(add_sub_out), .out(out),
        .low_enable(add_sub_low_out_en)
    );
endmodule
