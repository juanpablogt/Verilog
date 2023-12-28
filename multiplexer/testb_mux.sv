module test_mux;
    reg a, b, s;
    wire out;
    mux_2to1 mux(a, b, s, out);

    initial begin
        $dumpfile("test_mux.vcd");
        $dumpvars(0, test_mux);

        a = 1'b1;
        b = 1'b0;
        s = 1'b0;

        #10 
        s = 1'b1;
        a = 1'b1;
        b = 1'b0;

        #10 $finish;
    end

endmodule