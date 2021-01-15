module tb_prom16_8bit();
    reg [7:0] data_in;
    reg [3:0] addr;
    reg low_o_en;
    reg low_load;
    reg clr;
    reg clk;
    wire [7:0] data_out;
    prom16_8bit uut(
        data_in,
        addr,
        low_o_en,
        low_load,
        clr,
        clk,
        data_out
    );
    integer i;
    initial
    begin
        clr = 1;
        #10;
        clr = 0;

        // Clear test
        // low_load = 1;
        // low_o_en = 0;
        // for(i = 0; i < 16; i = i+1)
        // begin
        //     addr = i;
        //     $monitor("data_out=%x | addr=%d", data_out, addr);
        //     #10;
        // end

        // Load test
        data_in = 8'h11;
        low_load = 0;
        low_o_en = 1;
        for(i = 0; i < 16; i = i+1)
        begin
            addr = i;
            // $monitor("data_in=%d | addr=%d", data_in, addr);
            #10;
        end

        // Read test
        low_load = 1;
        low_o_en = 0;
        for(i = 0; i < 16; i = i+1)
        begin
            addr = i;
            $monitor("data_out=%x | addr=%d", data_out, addr);
            #10;
        end
        // low_load = 1;
        // low_o_en = 1;
    end

    initial
    begin
        clk = 1'b1;
        repeat(350)
        begin
            clk = ~clk;
            #10;
        end
    end
endmodule
