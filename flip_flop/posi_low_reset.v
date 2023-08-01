module dff_Pe_Alr_Ahs(q,d,clk,set);
    input d,clk,set;
    output reg q;

    always @(negedge clk or posedge set)
        if(!rst)
            q <= 1'b0;
        else if(set)
            q <= 1'b1;
        else
            q <= d;
endmodule