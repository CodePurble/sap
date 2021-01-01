module fulladder (  input  [7:0] a,
                  				 b, 
                    input  cin,  
                    output       c,  
                  output [7:0] sum);  
  
   assign sum = a^b^cin;
   assign c = (b&cin) | (a&cin) | (a&b);
endmodule  
