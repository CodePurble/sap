module top();
    // Globals
    wire [3:0] bus_upper;
    wire [3:0] bus_lower;
    reg clr;
    reg clk;

    // Control signals
    wire inc, pc_out_en, low_ld_mar, low_mem_out_en, low_ld_ir, low_ir_out_en;
    wire low_ld_acc, acc_out_en, sub_add, subadd_out_en, low_ld_b_reg, low_out_reg;

    program_counter pc(
        .inc(inc), .clk(clk), .pc_out_en(pc_out_en), .clr(clr), .out(bus_lower)
    );

    wire [3:0] mar_out;
    reg_4bit mar(
        .in(bus_lower), .out(mar_out), .low_i_en(low_ld_mar),
        .async_reset(clr), .clk(clk)
    );

    rom16_8bit mem(
        .addr(mar_out), .low_o_en(low_mem_out_en), .data_out({bus_upper, bus_lower});
    );

    bufif0 ()
    wire [3:0] opcode;
    reg_8bit ir(
        .in({bus_upper, bus_lower}), .out({opcode, bus_lower}), .low_i_en(), .low_o_en(), .async_reset(clr), .clk(clk)
    );


endmodule
