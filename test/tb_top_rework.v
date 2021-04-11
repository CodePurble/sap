module tb_top_rework();
    reg clk, clr;
    wire [7:0] out;
    wire [7:0] bus;
    top_rework uut(
        .bus(bus), .clk(clk), .clr(clr), .out(out)
    );

    initial
    begin
        clk = 1'b0;
    end

    always
    begin
        #5 clk = ~clk;
    end

    initial
    begin
        $dumpfile("simulation/tb_top_rework.vcd");
        $dumpvars(0, tb_top_rework);
    end

    initial
    begin
        #2 clr = 1'b1;
        #10 clr = 1'b0;
        #500 $finish;
    end

    initial
    begin
        $monitor("out:%b", out);
    end
endmodule

