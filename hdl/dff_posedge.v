module dff_posedge(
    clk,
    clr,
    d,
    q,
    qbar
);
    parameter DATA_WIDTH = 1;
    input [DATA_WIDTH - 1:0] d;
    input clr, clk;
    output reg [DATA_WIDTH - 1:0] q;
    output [DATA_WIDTH - 1:0] qbar;

    always @(posedge clk or clr)
    begin
        if(clr)
            q <= 0;
        else
            q <= d;
    end
    assign qbar = ~q;

endmodule
