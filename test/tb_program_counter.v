module tb_program_counter();
    reg cin, inc, clk, pc_out_en, clr;
    wire [3:0] out;

initial
    clk = 1'b0;

always
    #5 clk = ~clk;

initial
    begin
        $dumpfile("simulation/tb_program_counter.vcd");
        $dumpvars(0, tb_program_counter);
    end

initial
    begin
        #2 clr = 1'b1;
        #10 clr = 1'b0;
        #10 pc_out_en = 1'b1;
        #10 pc_out_en = 1'b0;
        #10 inc = 1'b1;
        #300 $finish;
    end

initial
    begin
        $monitor("Out : %x", out);
    end
endmodule
