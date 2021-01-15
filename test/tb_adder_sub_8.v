module tb_adder_sub_8();
    reg [7:0] a, b;
    reg sub, out_en;
    wire cout;
    wire [7:0] out;

    adder_sub_8 uut(a, b, sub, out_en, cout, out);

    initial
    begin
        a = 8'h0f;
        b = 8'h0f;
        sub = 0;
        out_en = 1;
        #10;
        out_en = 0;
        #10;
    end

    initial
    begin
        $monitor("out:%x", out);
    end
endmodule
