module tb_demux_16line_8bit();
	reg [7:0] in;
	reg [3:0] sel;
	wire [7:0] out0;
	wire [7:0] out1;
	wire [7:0] out2;
	wire [7:0] out3;
	wire [7:0] out4;
	wire [7:0] out5;
	wire [7:0] out6;
	wire [7:0] out7;
	wire [7:0] out8;
	wire [7:0] out9;
	wire [7:0] out10;
	wire [7:0] out11;
	wire [7:0] out12;
	wire [7:0] out13;
	wire [7:0] out14;
	wire [7:0] out15;

	demux_16line_8bit uut(
		in, sel,
		out0, out1, out2, out3,
		out4, out5, out6, out7,
		out8, out9, out10, out11,
		out12, out13, out14, out15
	);
	initial
	begin
		$dumpfile("../simulation/tb_demux_16line_8bit.vcd");
		$dumpvars(0, tb_demux_16line_8bit);
		in = 7;

		for(integer i = 0; i < 17; i++)
		begin
			sel = i;
			#10;
			$display("sel=%2d\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n",i,out0,out1,out2,out3,out4,out5,out6,out7,out8,out9,out10,out11,out12,out13,out14,out15);
		end
	end
endmodule



