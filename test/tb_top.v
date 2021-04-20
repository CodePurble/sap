module tb_top();
    reg clk, clr;
    wire [7:0] out;
    wire [7:0] bus;
    top uut(
        .bus(bus), .clk(clk), .clr(clr), .out(out)
    );

    initial
    begin
        #10 clk = 1'b1;
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
        #300 $finish;
    end

    initial
    begin
        $monitor("out:%b", out);
    end
endmodule

