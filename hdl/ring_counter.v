//6-bit sap1-ring-counter

module ring_counter (t,clk,res);
    input clk,res;
    output reg [5:0] t = 6'b000001;
    always @(negedge clk or res or t)
    begin
        if(res==1)
            t = 6'b000001;
        else
        begin
            if(t == 6'b100000)
                t = 6'b000001;
            else
                t = t << 1;
        end
    end
endmodule

