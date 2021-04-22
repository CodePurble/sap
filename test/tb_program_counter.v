module tb_program_counter();
    reg inc, clk, pc_out_en, clr;
    wire [3:0] out;
    program_counter uut(
        .inc(inc), .clk(clk), .pc_out_en(pc_out_en), .clr(clr), .out(out)
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
        $dumpfile("./simulation/tb_program_counter.vcd");
        $dumpvars(0, tb_program_counter);
    end

    initial
    begin
        #2 pc_out_en = 1'b1;
        #10 clr = 1'b1;
        #10 inc = 1'b1;
        #10 clr = 1'b0;
        #100 $finish;
    end

    initial
    begin
        $monitor("out:%b", out);
    end
endmodule
