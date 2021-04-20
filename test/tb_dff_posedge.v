module tb_dff_posedge;
    parameter w = 4;
    reg i_en;
    reg [w - 1:0] d0;
    reg clk, clr;
    wire [w - 1:0] q0, qbar0;

    reg [w - 1:0] d1;
    wire [w - 1:0] q1, qbar1;

    wire [7:0] concat;
    assign concat = {q0, q1};

    dff_posedge #(w) uut0(.q(q0), .qbar(qbar0), .d(d0),
        .clr(clr), .clk(clk), .i_en(i_en)
    );

    dff_posedge #(w) uut1(.q(q1), .qbar(qbar1), .d(d1),
        .clr(clr), .clk(clk), .i_en(i_en)
    );

    initial
    begin
        $dumpfile("./simulation/tb_dff_posedge.vcd");
        $dumpvars(0, tb_dff_posedge);
        clr = 1'b0;
        // i_en = 1'b0;
        i_en = 1'b1;
        d0 = 4'hf;
        d1 = 4'he;
        #10;

        // clr = 1'b0;
        // i_en = 1'b0;
        d0 = 4'h4;
        d1 = 4'he;
        #10;

        d0 = 4'ha;
        d1 = 4'he;
        #10;

        d0 = 4'hc;
        d1 = 4'he;
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
        $monitor("d0 = %x, clk = %x, q0 = %x", d0, clk, q0);
        $monitor("d1 = %x, clk = %x, q1 = %x", d1, clk, q1);
    end
endmodule

