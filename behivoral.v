module full_adder_behivoral(s,c,a,b);

    input a,b;
    output s,c;
    always @(a,b)

    begin
        s = a ^ b;
        c = a & b;
    end

endmodule