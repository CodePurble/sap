module fulladder (  input  [3:0] a,
                  				 b, 
                    input  cin,  
                    output       c,  
                  output [3:0] sum);  
  
   assign sum = a^b^cin;
   assign c = (b&cin) | (a&cin) | (a&b);
endmodule  
