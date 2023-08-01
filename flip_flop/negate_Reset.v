module dff_Pe_Ar(q,d,clk,rst);
    input d,clk,rst;
    output reg q;

    always @(posedge clk or negedge rst)
        if(rst)
            q <= 1'b0;
        else
            q <= d;
endmodule