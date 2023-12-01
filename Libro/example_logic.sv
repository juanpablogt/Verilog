module logic_data_type(input logic rst_h);
    parameter CYCLE = 20;
    logic q,q_l,d,clk,rst_1;
    initial begin
        clk <= 0;
        forever # (CYCLE/2) clk <= ~clk;
    end
    assing rst_1 = ~rst_h;
    not n1(q_l,q);
    my_dff d1(q,d,clk,rst_1);

endmodule