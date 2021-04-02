module tb_dff_posedge;
    reg d, clk, preset, clear;
    wire q, qbar;

    dff_posedge uut(.q(q), .qbar(qbar), .d(d), .preset(preset), .clear(clear), .clk(clk));

    initial
    begin
        $dumpfile("./simulation/tb_dff_posedge.vcd");
        $dumpvars(0, tb_dff_posedge);
        preset = 1'b1;
        clear = 1'b1;
        d = 1'b1;
        #10;

        clear = 1'b0;
        d = 1'b0;
        #10;

        d = 1'b0;
        #10;

        d = 1'b1;
        #10;
        $finish;
    end

    initial
    begin
        clk = 1'b0;
        repeat(10)
        begin
            clk = ~clk;
            #10;
        end
    end

    initial
    begin
        $monitor("d = %b, clk = %b, q = %b", d, clk, q);
    end
endmodule
