module full_adder_8( input [7:0] a,
                    			 b,
                     input       cin,
                    output [7:0] sum,
                    output       cout);
  assign sum = a^b^c;
  assign cout = (a&b) | (b&cin) | (cin&a);
endmodule
