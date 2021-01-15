module demux_16line_8bit(
    input [7:0] in,
    input [3:0] sel,
    output reg [7:0] out0,
    output reg [7:0] out1,
    output reg [7:0] out2,
    output reg [7:0] out3,
    output reg [7:0] out4,
    output reg [7:0] out5,
    output reg [7:0] out6,
    output reg [7:0] out7,
    output reg [7:0] out8,
    output reg [7:0] out9,
    output reg [7:0] out10,
    output reg [7:0] out11,
    output reg [7:0] out12,
    output reg [7:0] out13,
    output reg [7:0] out14,
    output reg [7:0] out15
);
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
                    out8 = 8'bxxxxxxxx;
                    out9 = 8'bxxxxxxxx;
                    out10 = 8'bxxxxxxxx;
                    out11 = 8'bxxxxxxxx;
                    out12 = 8'bxxxxxxxx;
                    out13 = 8'bxxxxxxxx;
                    out14 = 8'bxxxxxxxx;
                    out15 = 8'bxxxxxxxx;
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
                    out8 = 8'bxxxxxxxx;
                    out9 = 8'bxxxxxxxx;
                    out10 = 8'bxxxxxxxx;
                    out11 = 8'bxxxxxxxx;
                    out12 = 8'bxxxxxxxx;
                    out13 = 8'bxxxxxxxx;
                    out14 = 8'bxxxxxxxx;
                    out15 = 8'bxxxxxxxx;
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
                    out8 = 8'bxxxxxxxx;
                    out9 = 8'bxxxxxxxx;
                    out10 = 8'bxxxxxxxx;
                    out11 = 8'bxxxxxxxx;
                    out12 = 8'bxxxxxxxx;
                    out13 = 8'bxxxxxxxx;
                    out14 = 8'bxxxxxxxx;
                    out15 = 8'bxxxxxxxx;
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
                    out8 = 8'bxxxxxxxx;
                    out9 = 8'bxxxxxxxx;
                    out10 = 8'bxxxxxxxx;
                    out11 = 8'bxxxxxxxx;
                    out12 = 8'bxxxxxxxx;
                    out13 = 8'bxxxxxxxx;
                    out14 = 8'bxxxxxxxx;
                    out15 = 8'bxxxxxxxx;
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
                    out8 = 8'bxxxxxxxx;
                    out9 = 8'bxxxxxxxx;
                    out10 = 8'bxxxxxxxx;
                    out11 = 8'bxxxxxxxx;
                    out12 = 8'bxxxxxxxx;
                    out13 = 8'bxxxxxxxx;
                    out14 = 8'bxxxxxxxx;
                    out15 = 8'bxxxxxxxx;
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
                    out8 = 8'bxxxxxxxx;
                    out9 = 8'bxxxxxxxx;
                    out10 = 8'bxxxxxxxx;
                    out11 = 8'bxxxxxxxx;
                    out12 = 8'bxxxxxxxx;
                    out13 = 8'bxxxxxxxx;
                    out14 = 8'bxxxxxxxx;
                    out15 = 8'bxxxxxxxx;
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
                    out8 = 8'bxxxxxxxx;
                    out9 = 8'bxxxxxxxx;
                    out10 = 8'bxxxxxxxx;
                    out11 = 8'bxxxxxxxx;
                    out12 = 8'bxxxxxxxx;
                    out13 = 8'bxxxxxxxx;
                    out14 = 8'bxxxxxxxx;
                    out15 = 8'bxxxxxxxx;
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
                    out8 = 8'bxxxxxxxx;
                    out9 = 8'bxxxxxxxx;
                    out10 = 8'bxxxxxxxx;
                    out11 = 8'bxxxxxxxx;
                    out12 = 8'bxxxxxxxx;
                    out13 = 8'bxxxxxxxx;
                    out14 = 8'bxxxxxxxx;
                    out15 = 8'bxxxxxxxx;
                end
            4'd8:
                begin
                    out0 = 8'bxxxxxxxx;
                    out1 = 8'bxxxxxxxx;
                    out2 = 8'bxxxxxxxx;
                    out3 = 8'bxxxxxxxx;
                    out4 = 8'bxxxxxxxx;
                    out5 = 8'bxxxxxxxx;
                    out6 = 8'bxxxxxxxx;
                    out7 = 8'bxxxxxxxx;
                    out8 = in;
                    out9 = 8'bxxxxxxxx;
                    out10 = 8'bxxxxxxxx;
                    out11 = 8'bxxxxxxxx;
                    out12 = 8'bxxxxxxxx;
                    out13 = 8'bxxxxxxxx;
                    out14 = 8'bxxxxxxxx;
                    out15 = 8'bxxxxxxxx;
                end
            4'd9:
                begin
                    out0 = 8'bxxxxxxxx;
                    out1 = 8'bxxxxxxxx;
                    out2 = 8'bxxxxxxxx;
                    out3 = 8'bxxxxxxxx;
                    out4 = 8'bxxxxxxxx;
                    out5 = 8'bxxxxxxxx;
                    out6 = 8'bxxxxxxxx;
                    out7 = 8'bxxxxxxxx;
                    out8 = 8'bxxxxxxxx;
                    out9 = in;
                    out10 = 8'bxxxxxxxx;
                    out11 = 8'bxxxxxxxx;
                    out12 = 8'bxxxxxxxx;
                    out13 = 8'bxxxxxxxx;
                    out14 = 8'bxxxxxxxx;
                    out15 = 8'bxxxxxxxx;
                end
            4'd10:
                begin
                    out0 = 8'bxxxxxxxx;
                    out1 = 8'bxxxxxxxx;
                    out2 = 8'bxxxxxxxx;
                    out3 = 8'bxxxxxxxx;
                    out4 = 8'bxxxxxxxx;
                    out5 = 8'bxxxxxxxx;
                    out6 = 8'bxxxxxxxx;
                    out7 = 8'bxxxxxxxx;
                    out8 = 8'bxxxxxxxx;
                    out9 = 8'bxxxxxxxx;
                    out10 = in;
                    out11 = 8'bxxxxxxxx;
                    out12 = 8'bxxxxxxxx;
                    out13 = 8'bxxxxxxxx;
                    out14 = 8'bxxxxxxxx;
                    out15 = 8'bxxxxxxxx;
                end
            4'd11:
                begin
                    out0 = 8'bxxxxxxxx;
                    out1 = 8'bxxxxxxxx;
                    out2 = 8'bxxxxxxxx;
                    out3 = 8'bxxxxxxxx;
                    out4 = 8'bxxxxxxxx;
                    out5 = 8'bxxxxxxxx;
                    out6 = 8'bxxxxxxxx;
                    out7 = 8'bxxxxxxxx;
                    out8 = 8'bxxxxxxxx;
                    out9 = 8'bxxxxxxxx;
                    out10 = 8'bxxxxxxxx;
                    out11 = in;
                    out12 = 8'bxxxxxxxx;
                    out13 = 8'bxxxxxxxx;
                    out14 = 8'bxxxxxxxx;
                    out15 = 8'bxxxxxxxx;
                end
            4'd12:
                begin
                    out0 = 8'bxxxxxxxx;
                    out1 = 8'bxxxxxxxx;
                    out2 = 8'bxxxxxxxx;
                    out3 = 8'bxxxxxxxx;
                    out4 = 8'bxxxxxxxx;
                    out5 = 8'bxxxxxxxx;
                    out6 = 8'bxxxxxxxx;
                    out7 = 8'bxxxxxxxx;
                    out8 = 8'bxxxxxxxx;
                    out9 = 8'bxxxxxxxx;
                    out10 = 8'bxxxxxxxx;
                    out11 = 8'bxxxxxxxx;
                    out12 = in;
                    out13 = 8'bxxxxxxxx;
                    out14 = 8'bxxxxxxxx;
                    out15 = 8'bxxxxxxxx;
                end
            4'd13:
                begin
                    out0 = 8'bxxxxxxxx;
                    out1 = 8'bxxxxxxxx;
                    out2 = 8'bxxxxxxxx;
                    out3 = 8'bxxxxxxxx;
                    out4 = 8'bxxxxxxxx;
                    out5 = 8'bxxxxxxxx;
                    out6 = 8'bxxxxxxxx;
                    out7 = 8'bxxxxxxxx;
                    out8 = 8'bxxxxxxxx;
                    out9 = 8'bxxxxxxxx;
                    out10 = 8'bxxxxxxxx;
                    out11 = 8'bxxxxxxxx;
                    out12 = 8'bxxxxxxxx;
                    out13 = in;
                    out14 = 8'bxxxxxxxx;
                    out15 = 8'bxxxxxxxx;
                end
            4'd14:
                begin
                    out0 = 8'bxxxxxxxx;
                    out1 = 8'bxxxxxxxx;
                    out2 = 8'bxxxxxxxx;
                    out3 = 8'bxxxxxxxx;
                    out4 = 8'bxxxxxxxx;
                    out5 = 8'bxxxxxxxx;
                    out6 = 8'bxxxxxxxx;
                    out7 = 8'bxxxxxxxx;
                    out8 = 8'bxxxxxxxx;
                    out9 = 8'bxxxxxxxx;
                    out10 = 8'bxxxxxxxx;
                    out11 = 8'bxxxxxxxx;
                    out12 = 8'bxxxxxxxx;
                    out13 = 8'bxxxxxxxx;
                    out14 = in;
                    out15 = 8'bxxxxxxxx;
                end
            4'd15:
                begin
                    out0 = 8'bxxxxxxxx;
                    out1 = 8'bxxxxxxxx;
                    out2 = 8'bxxxxxxxx;
                    out3 = 8'bxxxxxxxx;
                    out4 = 8'bxxxxxxxx;
                    out5 = 8'bxxxxxxxx;
                    out6 = 8'bxxxxxxxx;
                    out7 = 8'bxxxxxxxx;
                    out8 = 8'bxxxxxxxx;
                    out9 = 8'bxxxxxxxx;
                    out10 = 8'bxxxxxxxx;
                    out11 = 8'bxxxxxxxx;
                    out12 = 8'bxxxxxxxx;
                    out13 = 8'bxxxxxxxx;
                    out14 = 8'bxxxxxxxx;
                    out15 = in;
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
                    out8 = 8'bxxxxxxxx;
                    out9 = 8'bxxxxxxxx;
                    out10 = 8'bxxxxxxxx;
                    out11 = 8'bxxxxxxxx;
                    out12 = 8'bxxxxxxxx;
                    out13 = 8'bxxxxxxxx;
                    out14 = 8'bxxxxxxxx;
                    out15 = 8'bxxxxxxxx;
                end
        endcase
    end
endmodule
