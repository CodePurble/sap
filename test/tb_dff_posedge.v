module tb_dff_posedge;
    parameter w = 4;
    reg i_en;
    reg [w - 1:0] d;
    reg clk, clr;
    wire [w - 1:0] q, qbar;

    dff_posedge #(w) uut(.q(q), .qbar(qbar), .d(d),
        .clr(clr), .clk(clk), .i_en(i_en)
    );

    initial
    begin
        $dumpfile("./simulation/tb_dff_posedge.vcd");
        $dumpvars(0, tb_dff_posedge);
        clr = 1'b1;
        i_en = 1'b0;
        d = 4'hf;
        #10;

        clr = 1'b0;
        i_en = 1'b0;
        d = 4'h4;
        #10;

        d = 4'ha;
        #10;

        d = 4'hc;
        #10;
        $finish;
    end

    initial
    begin
        clk = 1'b1;
        repeat(10)
        begin
            clk = ~clk;
            #10;
        end
    end

    initial
    begin
        $monitor("d = %x, clk = %x, q = %x", d, clk, q);
    end
endmodule

