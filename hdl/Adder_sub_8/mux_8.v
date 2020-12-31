module mux_8( input [7:0] a,
             			  b,
              input  s,
             output reg [7:0] out
			  );
  always @ (s) 
    begin  
      
      if (s) 
        out = a;
      else  
        out = b;
      
    end  
endmodule 
