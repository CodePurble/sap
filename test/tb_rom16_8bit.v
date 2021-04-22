module tb_rom16_8bit();
    reg [3:0] addr;
    reg low_o_en;
    wire [7:0] data_out;

    rom16_8bit uut(
        addr,
        low_o_en,
        data_out
    );

    integer i;
    initial
    begin
        low_o_en = 0;
        for(i = 0; i < 16; i = i+1)
        begin
            addr = i;
            $monitor("data_out=%x | addr=%d", data_out, addr);
            #10;
        end
    end
endmodule
