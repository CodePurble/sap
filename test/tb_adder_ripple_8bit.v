/* function void print_vals() */
/*     $monitor( */
/*         "a:%x | b:%x | cin:%x | sum:%x | cout:%x", */
/*         uut.a, uut.b, uut.cin, uut.sum, uut.cout */
/*     ); */
/* endfunction */

module tb_ripple_carry_8bit();
    reg [7:0] a, b;
    reg cin;
    wire [7:0] sum;
    wire cout;

    adder_ripple_8bit uut(a, b, cin, sum, cout);

    initial
    begin
        a = 8'h0f;
        b = 8'hf0;
        cin = 0;
        #10;
        a = 8'h0f;
        b = 8'hf0;
        cin = 1;
        #10;
        a = 8'h01;
        b = 8'h01;
        cin = 1;
        #10;
    end

    initial
    begin
        $monitor(
            "a:%x | b:%x | cin:%x | sum:%x | cout:%x",
            a, b, cin, sum, cout
        );
    end
endmodule
