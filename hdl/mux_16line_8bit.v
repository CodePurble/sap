module mux_16line_8bit(
	input [7:0] in0,
	input [7:0] in1,
	input [7:0] in2,
	input [7:0] in3,
	input [7:0] in4,
	input [7:0] in5,
	input [7:0] in6,
	input [7:0] in7,
	input [7:0] in8,
	input [7:0] in9,
	input [7:0] in10,
	input [7:0] in11,
	input [7:0] in12,
	input [7:0] in13,
	input [7:0] in14,
	input [7:0] in15,
	input [3:0] sel,
	output reg [7:0] out
);
	always @(
		in0 or in1 or in2 or in3 or
		in4 or in5 or in6 or in7 or
		in8 or in9 or in10 or in11 or
		in12 or in13 or in14 or in15 or sel
	)
	begin
		case(sel)
			4'd0: out = in0;
			4'd1: out = in1;
			4'd2: out = in2;
			4'd3: out = in3;
			4'd4: out = in4;
			4'd5: out = in5;
			4'd6: out = in6;
			4'd7: out = in7;
			4'd8: out = in8;
			4'd9: out = in9;
			4'd10: out = in10;
			4'd11: out = in11;
			4'd12: out = in12;
			4'd13: out = in13;
			4'd14: out = in14;
			4'd15: out = in15;
			default: out = 8'bxxxxxxxx;
		endcase
	end
endmodule
