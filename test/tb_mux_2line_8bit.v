module tb_mux_2line_8bit();
    reg [7:0] in0, in1;
    reg sel;
    wire [7:0] out;

    mux_2line_8bit uut(in0, in1, sel, out);

    initial
    begin
        in0 = 8'h0f;
        in1 = 8'hf0;
        #10 sel = 0;
        #10 sel = 1;
        #10 sel = 0;
    end

    initial
    begin
        $monitor("sel:%x | out:%x", sel, out);
    end
endmodule
