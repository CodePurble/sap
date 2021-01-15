module tb_adder_ripple_4bit();
    reg [3:0] a, b;
    reg cin;
    wire [3:0] sum;
    wire cout;

    adder_ripple_4bit uut(a, b, cin, sum, cout);

    initial
    begin
        a = 4'hf;
        b = 4'h0;
        cin = 0;
        #10;
        a = 4'h0;
        b = 4'hf;
        cin = 1;
        #10;
        a = 4'h1;
        b = 4'h1;
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
