module decoder_4line_16line(
	input o_en,
	input [3:0] sel,
	output reg [15:0] out
);
	always @(sel or o_en)
	begin
		if(o_en)
		begin
			case(sel)
				4'd0: out = 16'h0001;
				4'd1: out = 16'h0002;
				4'd2: out = 16'h0004;
				4'd3: out = 16'h0008;
				4'd4: out = 16'h0010;
				4'd5: out = 16'h0020;
				4'd6: out = 16'h0040;
				4'd7: out = 16'h0080;
				4'd8: out = 16'h0100;
				4'd9: out = 16'h0200;
				4'd10: out = 16'h0400;
				4'd11: out = 16'h0800;
				4'd12: out = 16'h1000;
				4'd13: out = 16'h2000;
				4'd14: out = 16'h4000;
				4'd15: out = 16'h8000;
				default: out = 16'h0000;
			endcase
		end
		else
		begin
			out = 16'h0000;
		end
	end
endmodule
