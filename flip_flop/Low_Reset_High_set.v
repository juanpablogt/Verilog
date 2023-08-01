module dff_Slr_Shs(q,d,clk,rst,set);
    input d,clk,rst,set;
    output reg q;

    always @(posedge clk)
        if(!rst)
            q <= 1'b0;
        else if(set)
            q <= 1'b1;
        else
            q <= d;
endmodule