module tb_ring_counter;
    // Inputs
    reg clk_tb;
    reg res_tb;

    // Outputs
    wire [5:0] t_tb;

    // Instantiate the Unit Under Test (UUT)
    ring_counter uut (
        .clk(clk_tb),
        .res(res_tb),
        .t(t_tb)
    );

    initial clk_tb = 1;
    always #10 clk_tb = ~clk_tb;

    //Simulation inputs.
    initial
    begin
    //Apply res_tb for 50 ns.
        res_tb = 1; //res_tb is high
        #10;
        res_tb = 0; //res_tb is low.
        #200;
        $finish;
    end

    initial
        $monitor("%b",t_tb);
endmodule
