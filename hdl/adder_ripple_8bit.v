module adder_ripple_8bit(
    input [7:0] a, b,
    input cin,
    output [7:0] sum,
    output cout
);
    wire co0, co1, co2, co3, co4, co5, co6;

    full_adder_1bit add0(a[0], b[0], cin, sum[0], co0);
    full_adder_1bit add1(a[1], b[1], co0, sum[1], co1);
    full_adder_1bit add2(a[2], b[2], co1, sum[2], co2);
    full_adder_1bit add3(a[3], b[3], co2, sum[3], co3);
    full_adder_1bit add4(a[4], b[4], co3, sum[4], co4);
    full_adder_1bit add5(a[5], b[5], co4, sum[5], co5);
    full_adder_1bit add6(a[6], b[6], co5, sum[6], co6);
    full_adder_1bit add7(a[7], b[7], co6, sum[7], cout);
endmodule
