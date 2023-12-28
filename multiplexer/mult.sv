module mux_2to1 (a,b,s,out);
    input a,b,s;
    output out;
    reg out;
    always @(a or b or s) 
        if (s == 1'b1) out = a;
        else out = b;
endmodule