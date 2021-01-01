module tristate_8( input [7:0] inp,
				   input  en,  
                   output reg [7:0] out
			  );
  
  always @(inp or en) 
    begin 
      if (~en) 
        out = inp; 
      else 
        out = 8'bZ; 
    end 
endmodule
	
