module demux_8( input [7:0] inp,

              input  s,
               output reg [7:0] out1,
               output reg [7:0] out2
			  );
  
  			
  always @ (s) 
    begin  
      
      if (s) 
        out1 = inp;
      else  
        out2 = inp;
      
    end  
endmodule
	
