module dff_posedge(
    clk,
    clr,
    i_en,
    d,
    q,
    qbar
);
    parameter DATA_WIDTH = 1;

    input [DATA_WIDTH - 1:0] d;
    input i_en, clr, clk;
    output reg [DATA_WIDTH - 1:0] q;
    output [DATA_WIDTH - 1:0] qbar;

    always @(posedge clk or posedge clr)
    begin
        if(clr)
            q <= 0;
        else
            if(i_en)
                q <= d;
    end
    assign qbar = ~q;

endmodule
