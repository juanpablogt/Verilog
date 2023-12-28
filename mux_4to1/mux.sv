module mux_4to1 (a,b,c,d,s0,s1,out);
    input a,b,c,d,s0,s1;
    output out;
    reg out;
    always @(a or b or c or d or s0 or s1) 
        if (s0 == 1'b0 && s1 == 1'b0) out = a;
        else if (s0 == 1'b0 && s1 == 1'b1) out = b;
        else if (s0 == 1'b1 && s1 == 1'b0) out = c;
        else if (s0 == 1'b1 && s1 == 1'b1) out = d;
endmodule
