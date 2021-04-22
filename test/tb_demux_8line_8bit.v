module tb_demux_8line_8bit();
    reg [7:0] in;
    reg [2:0] sel;
    wire [7:0] out0;
    wire [7:0] out1;
    wire [7:0] out2;
    wire [7:0] out3;
    wire [7:0] out4;
    wire [7:0] out5;
    wire [7:0] out6;
    wire [7:0] out7;
    demux_8line_8bit uut(in, sel, out0, out1, out2, out3, out4, out5, out6, out7);
    initial
    begin
        $dumpfile("./simulation/tb_demux_8line_8bit.vcd");
        $dumpvars(0, tb_demux_8line_8bit);
        in = 7;

        for(integer i = 0; i < 8; i++)
        begin
            $monitor(
                "i=%d\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n",
                i, out0, out1, out2, out3, out4, out5, out6, out7
            );
            sel = i;
            #10;
        end
    end
endmodule
