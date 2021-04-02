module tb_demux_2line_8bit();
    reg [7:0] in;
    reg sel;
    wire [7:0] out0;
    wire [7:0] out1;
    demux_2line_8bit uut(in, sel, out0, out1);
    initial
    begin
        $dumpfile("./simulation/tb_demux_2line_8bit.vcd");
        $dumpvars(0, tb_demux_2line_8bit);
        in = 7;

        for(integer i = 0; i < 2; i++)
        begin
            sel = i;
            $monitor("sel=%1d\n%b\n%b\n", sel, out0, out1);
            #10;
        end
    end
endmodule
