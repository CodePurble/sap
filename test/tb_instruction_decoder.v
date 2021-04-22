module tb_instruction_decoder();
    reg [3:0] op_code;
    wire lda, add, sub, out, low_halt;
    instruction_decoder uut(op_code, lda, add, sub, out, low_halt);
    initial
    begin
        op_code = 4'b0000;
        #10;
        op_code = 4'b0001;
        #10;
        op_code = 4'b0010;
        #10;
        op_code = 4'b1110;
        #10;
        op_code = 4'b1111;
        #10;
    end

    initial
        $monitor("lda=%b add=%b sub=%b out=%b low_halt=%", lda, add, sub, out, low_halt);
endmodule
