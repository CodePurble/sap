module demux_8line_8bit(in, sel, out0, out1, out2, out3, out4, out5, out6, out7);
    input [7:0] in;
    input [2:0] sel;
    output reg [7:0] out0;
    output reg [7:0] out1;
    output reg [7:0] out2;
    output reg [7:0] out3;
    output reg [7:0] out4;
    output reg [7:0] out5;
    output reg [7:0] out6;
    output reg [7:0] out7;

    always @(in or sel)
    begin
        case(sel)
            4'd0:
                begin
                    out0 = in;
                    out1 = 8'bxxxxxxxx;
                    out2 = 8'bxxxxxxxx;
                    out3 = 8'bxxxxxxxx;
                    out4 = 8'bxxxxxxxx;
                    out5 = 8'bxxxxxxxx;
                    out6 = 8'bxxxxxxxx;
                    out7 = 8'bxxxxxxxx;
                end
            4'd1:
                begin
                    out0 = 8'bxxxxxxxx;
                    out1 = in;
                    out2 = 8'bxxxxxxxx;
                    out3 = 8'bxxxxxxxx;
                    out4 = 8'bxxxxxxxx;
                    out5 = 8'bxxxxxxxx;
                    out6 = 8'bxxxxxxxx;
                    out7 = 8'bxxxxxxxx;
                end
            4'd2:
                begin
                    out0 = 8'bxxxxxxxx;
                    out1 = 8'bxxxxxxxx;
                    out2 = in;
                    out3 = 8'bxxxxxxxx;
                    out4 = 8'bxxxxxxxx;
                    out5 = 8'bxxxxxxxx;
                    out6 = 8'bxxxxxxxx;
                    out7 = 8'bxxxxxxxx;
                end
            4'd3:
                begin
                    out0 = 8'bxxxxxxxx;
                    out1 = 8'bxxxxxxxx;
                    out2 = 8'bxxxxxxxx;
                    out3 = in;
                    out4 = 8'bxxxxxxxx;
                    out5 = 8'bxxxxxxxx;
                    out6 = 8'bxxxxxxxx;
                    out7 = 8'bxxxxxxxx;
                end
            4'd4:
                begin
                    out0 = 8'bxxxxxxxx;
                    out1 = 8'bxxxxxxxx;
                    out2 = 8'bxxxxxxxx;
                    out3 = 8'bxxxxxxxx;
                    out4 = in;
                    out5 = 8'bxxxxxxxx;
                    out6 = 8'bxxxxxxxx;
                    out7 = 8'bxxxxxxxx;
                end
            4'd5:
                begin
                    out0 = 8'bxxxxxxxx;
                    out1 = 8'bxxxxxxxx;
                    out2 = 8'bxxxxxxxx;
                    out3 = 8'bxxxxxxxx;
                    out4 = 8'bxxxxxxxx;
                    out5 = in;
                    out6 = 8'bxxxxxxxx;
                    out7 = 8'bxxxxxxxx;
                end
            4'd6:
                begin
                    out0 = 8'bxxxxxxxx;
                    out1 = 8'bxxxxxxxx;
                    out2 = 8'bxxxxxxxx;
                    out3 = 8'bxxxxxxxx;
                    out4 = 8'bxxxxxxxx;
                    out5 = 8'bxxxxxxxx;
                    out6 = in;
                    out7 = 8'bxxxxxxxx;
                end
            4'd7:
                begin
                    out0 = 8'bxxxxxxxx;
                    out1 = 8'bxxxxxxxx;
                    out2 = 8'bxxxxxxxx;
                    out3 = 8'bxxxxxxxx;
                    out4 = 8'bxxxxxxxx;
                    out5 = 8'bxxxxxxxx;
                    out6 = 8'bxxxxxxxx;
                    out7 = in;
                end
            default:
                begin
                    out0 = 8'bxxxxxxxx;
                    out1 = 8'bxxxxxxxx;
                    out2 = 8'bxxxxxxxx;
                    out3 = 8'bxxxxxxxx;
                    out4 = 8'bxxxxxxxx;
                    out5 = 8'bxxxxxxxx;
                    out6 = 8'bxxxxxxxx;
                    out7 = 8'bxxxxxxxx;
                end
        endcase
    end
endmodule
