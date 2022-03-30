module program_counter(
    input inc, clk, pc_out_en, clr,
    output tri [3:0] out
);
    reg [3:0] hold;
    wire not_pc_out_en;
    not (not_pc_out_en, pc_out_en);
    tribuf_4bit tbuf(.in(hold), .out(out), .low_enable(not_pc_out_en));
    always @(posedge clk or posedge clr)
    begin
        if(clr)
            hold <= 4'b0000;
        else if(inc)
            hold <= hold + 1;
    end
endmodule
