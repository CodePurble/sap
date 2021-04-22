module tb_tribuf_8bit;
    reg [7:0] in;
    reg low_enable;
    wire [7:0] out;

    tribuf_8bit uut(.in(in), .out(out), .low_enable(low_enable));

    initial
    begin
        $dumpfile("./simulation/tb_tribuf_8bit.vcd");
        $dumpvars(0, tb_tribuf_8bit);
        in = 8'b11001100;
        low_enable = 0;
        $monitor("out:%b", out);
    end
endmodule
