module adder_ripple_4bit(
	input [3:0] a, b,
	input cin,
	output [3:0] sum,
	output cout
);
	wire co0, co1, co2;

	full_adder_1bit add0(a[0], b[0], cin, sum[0], co0);
	full_adder_1bit add1(a[1], b[1], co0, sum[1], co1);
	full_adder_1bit add2(a[2], b[2], co1, sum[2], co2);
	full_adder_1bit add3(a[3], b[3], co2, sum[3], cout);
endmodule
