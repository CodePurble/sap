module two_comp_8( input [7:0] inp,  
                   output  [7:0] out
			  );
  
 assign out = ~inp + 8'b0000001;
endmodule
	
