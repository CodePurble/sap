module tb_tribuf_4bit;
    reg [3:0] in;
    reg low_enable;
    wire [3:0] out;

    tribuf_4bit uut(.in(in), .out(out), .low_enable(low_enable));

    initial
    begin
        // $dumpfile("../simulation/tb_tribuf_4bit.vcd");
        // $dumpvars(0, tb_tribuf_4bit);
        in = 4'b1100;
        low_enable = 1;
        $monitor("out:%b", out);
    end
endmodule
