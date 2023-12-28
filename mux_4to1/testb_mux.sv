module test_mux;
    reg a,b,c,d,s0,s1;
    wire out;

    mux_4to1 mux(a,b,c,d,s0,s1,out);

    initial begin
        $dumpfile("test_mux.vcd");
        $dumpvars(0, test_mux);

        a = 1'b1;
        b = 1'b0;
        c = 1'b0;
        d = 1'b0;
        s0 = 1'b0;
        s1 = 1'b0;

        #10

        s0 = 1'b0;
        s1 = 1'b1;
        a = 1'b0;
        b = 1'b1;
        c = 1'b0;
        d = 1'b0;

        #10

        s0 = 1'b1;
        s1 = 1'b0;
        a = 1'b0;
        b = 1'b0;
        c = 1'b1;
        d = 1'b0;

        #10

        s0 = 1'b1;
        s1 = 1'b1;
        a = 1'b0;
        b = 1'b0;
        c = 1'b0;
        d = 1'b1;

        #10 $finish;
    end

endmodule