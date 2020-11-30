// D-FF with asynchronous preset and clear
module dff_posedge(q, qbar, d, preset, clear, clk);
	input d, preset, clear, clk;
	output reg q;
	output qbar;
	assign qbar = ~q;
	always @(posedge preset or posedge clear or posedge clk)
	begin
		if(preset == 1)
			q <= 1'b1;
		else if(clear == 1)
			q <= 1'b0;
		else
			q <= d;
	end
endmodule
