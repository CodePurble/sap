module tb_tribuf_4bit;
    reg [3:0] in;
    reg enable;
    wire [3:0] out;

    tribuf_4bit uut(.in(in), .out(out), .enable(enable));

    initial
    begin
        // $dumpfile("../simulation/tb_tribuf_4bit.vcd");
        // $dumpvars(0, tb_tribuf_4bit);
        in = 4'b1100;
        enable = 1;
        $monitor("out:%b", out);
    end
endmodule
