//sap-1 control sequencer

//all possible outputs of the control sequencer are declared
/*
inc = INCREMENT
pc_out_en = OUTPUT ENABLE OF PROGRAM COUNTER
low_ld_mar = LOAD MAR
low_mem_out_en = CHIP ENABLE FOR RAM
low_ld_ir = LOAD INSTRUCTION REGISTER
low_ir_out_en = OUTPUT ENABLE OF INSTRUCTION REGISTER
low_ld_acc = LOAD ACCUMULATOR
acc_out_en = OUTPUT ENABLE OF ACCUMULATOR
sub_add = SUBTRACTION/ADDITION
subadd_out_en = OUTPUT ENABLE OF SUBTRACTION/ADDITION
low_ld_b_reg = LOAD B REGISTER
low_ld_out_req = LOAD OUTPUT REGISTER
*/
 
module control_sequencer(
	input [3:0] op_code,
	input clk,res,
	output inc,
	output pc_out_en,
	output low_ld_mar,
	output low_mem_out_en,
	output low_ld_ir,
	output low_ir_out_en,
	output low_ld_acc,
	output acc_out_en,
	output sub_add,
	output subadd_out_en,
	output low_ld_b_reg,
	output low_ld_out_reg
);
	wire lda,add,sub,out,low_halt;
	wire [5:0] t;

	instruction_decoder decoder(.op_code(op_code),.lda(lda),.add(add),.sub(sub),.out(out),.low_halt(low_halt));
	ring_counter counter(.t(t), .clk(clk),.res(res));
	
	assign inc = t[1];
	assign pc_out_en = t[0];
	assign low_ld_ir = ~t[2];
	assign acc_out_en = t[3]&out;
	assign sub_add = t[5]&sub;
	assign subadd_out_en = t[5]&(add|sub);
	assign low_ld_b_reg = ~(t[4]&(add|sub));
	assign low_ld_out_reg = ~(t[3]&out);
	assign low_ld_mar = ~(t[0]|(t[3]&(add|lda|sub)));
	assign low_mem_out_en = ~(t[2]|(t[4]&(add|lda|sub)));
	assign low_ir_out_en = ~(t[3]&((add|lda|sub)));
	assign low_ld_acc = ~((t[4]&lda)|(t[5]&(add|sub)));

	assign low_halt = low_halt;
endmodule