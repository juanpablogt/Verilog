module reg_set(Q1,Q2,clk,rst,D1,D2);
    input clk,rst;
    input [7:0] D1,D2;

    always@(posedge clk)
        if(rst) begin
            Q1 <= 0;
            Q2 <= 0;
        else begin
            Q1 <= D1;
            Q2 <= D2;
        end
endmodule
