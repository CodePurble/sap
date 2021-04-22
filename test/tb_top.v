module tb_top();
    reg clk, clr;
    wire [7:0] out;
    wire [3:0] bus_high;
    wire [3:0] bus_low;
    top uut(
        .bus_high(bus_high), .bus_low(bus_low), .clk(clk), .clr(clr), .out(out)
    );

    initial
    begin
        #10 clk = 1'b0;
    end

    always
    begin
        #5 clk = ~clk;
    end

    initial
    begin
        $dumpfile("simulation/tb_top.vcd");
        $dumpvars(0, tb_top);
    end

    initial
    begin
        #2 clr = 1'b1;
        #6 clr = 1'b0;
        #500 $finish;
    end

    initial
    begin
        $monitor("out:%b", out);
    end
endmodule

