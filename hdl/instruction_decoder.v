// sap-1 instruction decoder

module instruction_decoder(op_code, lda, add, sub, out, low_halt);
    input [3:0] op_code;
    output lda, add, sub, out, low_halt;

    assign lda = ~(op_code[0] | op_code[1] | op_code[2] | op_code[3]);
    assign add = ~(~op_code[0] | op_code[1] | op_code[2] | op_code[3]);
    assign sub = ~(op_code[0] | ~op_code[1] | op_code[2] | op_code[3]);
    assign out = (~op_code[0] & op_code[1] & op_code[2] & op_code[3]);
    assign low_halt = ~(op_code[0] & op_code[1] & op_code[2] & op_code[3]);
endmodule
