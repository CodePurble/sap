module rom16_8bit(
	input [3:0] addr,
	input [7:0] data_in,
	input low_o_en,
	output tri reg [7:0] data_out
);
	always @(data_in or addr or low_o_en)
	begin
		if(low_o_en)
		begin
			data_out = 8'bzzzzzzzz;
		end
		else
		begin
			case(addr)
				4'h0: data_out = 8'h00;
				4'h1: data_out = 8'h00;
				4'h2: data_out = 8'h00;
				4'h3: data_out = 8'h00;
				4'h4: data_out = 8'h00;
				4'h5: data_out = 8'h00;
				4'h6: data_out = 8'h00;
				4'h7: data_out = 8'h00;
				4'h8: data_out = 8'hff;
				4'h9: data_out = 8'hff;
				4'ha: data_out = 8'hff;
				4'hb: data_out = 8'hff;
				4'hc: data_out = 8'hff;
				4'hd: data_out = 8'hff;
				4'he: data_out = 8'hff;
				4'hf: data_out = 8'hff;
			endcase
		end
	end
endmodule
