//6-bit sap1-ring-counter

module ring_counter (t, clk, res);
    input clk, res;
    output reg [5:0] t = 6'b100000;
    // always @(negedge clk or res or t)
    always @(negedge clk)
    begin
        if(res==1)
            t = 6'b100000;
        else
        begin
            if(t == 6'b000001)
                t = 6'b100000;
            else
                t = t >> 1;
        end
    end
endmodule

