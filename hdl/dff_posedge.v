// D-FF with asynchronous preset and clear
module dff_posedge(q, qbar, d, preset, clear, clk);
    input d; // D input
    input preset; // Asynchrounous preset input
    input clear; // Asynchrounous clear control signal
    input clk; // Clock
    output reg q;
    output qbar;

    assign qbar = ~q;

    always @(posedge clk or preset or clear)
    begin
        if(clear)
            q <= 1'b0;
        else if(preset)
            q <= 1'b1;
        else
            q <= d;
    end
endmodule
