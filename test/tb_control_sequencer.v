module tb_control_sequencer();
    reg clk;
    reg clr;
    reg [3:0] op_code;
    wire inc;
    wire pc_out_en;
    wire low_ld_mar;
    wire low_mem_out_en;
    wire low_ld_ir;
    wire low_ir_out_en;
    wire low_ld_acc;
    wire acc_out_en;
    wire sub_add;
    wire subadd_out_en;
    wire low_ld_b_reg;
    wire low_ld_out_reg;
    wire low_halt;

    control_sequencer uut(
        .op_code(op_code),
        .clk(clk),
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

    initial clk = 1;
    always #10 clk = ~clk;

    initial begin
        clr = 1;
        clr = 0;
        op_code = 4'b0000;
        $finish;
    end

    // initial
    // begin
    //     $dumpfile("")
    // end

    initial
    begin
        $monitor("op_code:%b\n inc = %b\t pc_out_en = %b\t low_ld_mar = %b\t low_mem_out_en = %b\t low_ld_ir = %b\t low_ir_out_en = %b\t low_ld_acc = %b\t acc_out_en = %b\t sub_add = %b\t subadd_out_en = %b\t low_ld_b_reg = %b\t low_ld_out_req = %b\t low_halt = %b\n",
            op_code,
            inc,
            pc_out_en,
            low_ld_mar,
            low_mem_out_en,
            low_ld_ir,
            low_ir_out_en,
            low_ld_acc,
            acc_out_en,
            sub_add,
            subadd_out_en,
            low_ld_b_reg,
            low_ld_out_reg,
            low_halt
        );
    end
endmodule
