module top_rework(bus, clk, out, clr);
    output tri [7:0] bus;
    output [7:0] out;
    input clk, clr;
    // Globals
    wire [3:0] bus_high, bus_low;
    wire buf_clk;

    // Control signals
    wire inc, pc_out_en, low_ld_mar, low_mem_out_en, low_ld_ir, low_ir_out_en, low_halt;
    wire low_ld_acc, acc_out_en, sub_add, subadd_out_en, low_ld_b_reg, low_ld_out_reg;
    wire [3:0] op_code;
    control_sequencer seq(
        .op_code(op_code),
        .clk(buf_clk),
        .clr(clr),
        .inc(inc),
        .pc_out_en(pc_out_en),
        .low_ld_mar(low_ld_mar),
        .low_mem_out_en(low_mem_out_en),
        .low_ld_ir(low_ld_ir),
        .low_ir_out_en(low_ir_out_en),
        .low_ld_acc(low_ld_acc),
        .acc_out_en(acc_out_en),
        .sub_add(sub_add),
        .subadd_out_en(subadd_out_en),
        .low_ld_b_reg(low_ld_b_reg),
        .low_ld_out_reg(low_ld_out_reg),
        .low_halt(low_halt)
    );

    // Clock buffer
    bufif1(buf_clk, clk, low_halt);

    program_counter pc(
        .inc(inc), .clk(buf_clk), .pc_out_en(pc_out_en), .clr(clr), .out(bus_low)
    );

    wire [3:0] mar_out;
    wire ld_mar;
    not (ld_mar, low_ld_mar);
    dff_posedge #(4) mar(
        .d(bus_low), .q(mar_out), .i_en(ld_mar), .clr(clr), .clk(buf_clk)
    );

    rom16_8bit mem(
        .addr(mar_out), .low_o_en(low_mem_out_en), .data_out(bus)
    );

    wire [7:0] ir_out;
    wire ld_ir;
    not (ld_ir, low_ld_ir);
    dff_posedge #(8) ir(
        .d({bus_high, bus_low}), .q(ir_out), .i_en(ld_ir), .clr(clr), .clk(buf_clk)
    );

    tribuf_4bit buf0(.in(ir_out[3:0]), .out(bus_low), .low_enable(low_ir_out_en));
    assign op_code = ir_out[7:4]; // Directly pass to control_sequencer


    wire [7:0] acc_out;
    wire ld_acc;
    not (ld_acc, low_ld_acc);
    dff_posedge #(8) acc(
        .d({bus_high, bus_low}), .q(acc_out), .i_en(ld_acc), .clr(clr), .clk(buf_clk)
    );
    wire low_acc_out_en;
    assign low_acc_out_en = ~acc_out_en;
    tribuf_8bit buf1(.in(acc_out), .out({bus_high, bus_low}), .low_enable(low_acc_out_en));

    wire [7:0] b_reg_out;
    wire ld_b_reg;
    not (ld_b_reg, low_ld_b_reg);
    dff_posedge #(8) b_reg(
        .d({bus_high, bus_low}), .q(b_reg_out), .i_en(ld_b_reg), .clr(clr), .clk(buf_clk)
    );

    adder_sub_8 asub(.A(acc_out), .B(b_reg_out), .sub(sub_add), .cout(), .out({bus_high, bus_low}), .out_en(subadd_out_en));

    wire ld_out_reg;
    not (ld_out_reg, low_ld_out_reg);
    dff_posedge #(8) out_reg(
        .d({bus_high, bus_low}), .q(out), .i_en(ld_out_reg), .clr(clr), .clk(buf_clk)
    );

    assign bus = {bus_high, bus_low};
endmodule
