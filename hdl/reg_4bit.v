// 4-bit tristate register (see 34LS133)
module reg_4bit(in, out, low_i_en, async_reset, clk);
    input [3:0] in; // Input word
    input low_i_en; // Input enable signal (active low)
    input async_reset; // Asynchrounous reset
    input clk; // Clock
    output reg [3:0] out; // Output word

    always @(posedge clk or posedge async_reset)
    begin
        if(low_i_en == 1'b0)
        begin
            out <= in;
        end

        if(async_reset == 1'b1)
        begin
            out <= 0;
        end
    end
endmodule
