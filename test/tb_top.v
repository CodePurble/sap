module tb_top();
    reg clk, clr;
    wire [7:0] out;
    wire [3:0] bus_high, bus_low;
    top uut(
        .bus_low(bus_low), .clk(clk), .bus_high(bus_high), .clr(clr), .out(out)
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
        $dumpfile("../simulation/tb_top.vcd");
        $dumpvars(0, tb_top);
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

