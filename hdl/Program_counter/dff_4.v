module dff_4 ( input [7:0] d,
             input       clk,
            			 async_reset,
            			 enable,
            			 clear,
            output reg [7:0] q,
            output reg [7:0] q_bar
                  );
  
 
  always @(posedge clk or async_reset)
    begin 
      if (async_reset) 
        
        begin 
        	q     = 8'b00000000; 
        	q_bar = ~q;
        end
      
      else 
        
        begin
          if (~enable)
            begin
              q = d;
              q_bar = ~q;
            end
            
        end
    end 
endmodule 
