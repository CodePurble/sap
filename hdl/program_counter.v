module program_counter(
    input cin, inc, clk, pc_out_en, clr,
    output [3:0] out
);
    wire [3:0] sum, regout;
    wire not_pc_out_en;

    parameter const_1 = 4'b0001;
    parameter const_0 = 1'b0;

    not g1(not_pc_out_en, pc_out_en);
    adder_ripple_4bit adder(.a(regout), .b(const_1), .cin(const_0), .cout(), .sum(sum));
    reg_4bit register(.in(sum), .out(regout), .clk(clk), .low_in_en(inc), .async_reset(clr));
    tribuf_4bit buffer(.in(regout), .out(out), .low_enable(not_pc_out_en));
endmodule
