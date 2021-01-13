module tb_mux_16line_8bit();
	reg [7:0] in0;
	reg [7:0] in1;
	reg [7:0] in2;
	reg [7:0] in3;
	reg [7:0] in4;
	reg [7:0] in5;
	reg [7:0] in6;
	reg [7:0] in7;
	reg [7:0] in8;
	reg [7:0] in9;
	reg [7:0] in10;
	reg [7:0] in11;
	reg [7:0] in12;
	reg [7:0] in13;
	reg [7:0] in14;
	reg [7:0] in15;
	reg [3:0] sel;
	wire [7:0] out;
	mux_16line_8bit uut(
		in0, in1, in2, in3,
		in4, in5, in6, in7,
		in8, in9, in10, in11,
		in12, in13, in14, in15,
		sel, out
	);
	initial
	begin
		in0 = 8'd0; in1 = 8'd1; in2 = 8'd2; in3 = 8'd3;
		in4 = 8'd4; in5 = 8'd5; in6 = 8'd6; in7 = 8'd7;
		in8 = 8'd8; in9 = 8'd9; in10 = 8'd10; in11 = 8'd11;
		in12 = 8'd12; in13 = 8'd13; in14 = 8'd14; in15 = 8'd15;
		for(integer i = 0; i < 17; i++)
		begin
			sel = i;
			#10;
		end
	end
	initial
	begin
		$monitor("sel=%2d\nout=%2d\n", sel, out);
	end
endmodule
