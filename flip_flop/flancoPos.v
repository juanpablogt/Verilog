module dff_Pe_Ar(q,d,clk);
    input d,clk,rst;
    output reg q;

    always @(posedge clk or posedge rst)
        if(rst)
            q <= 1'b0;
        else
            q <= d;
endmodule