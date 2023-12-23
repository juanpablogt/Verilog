    module test_adder;
        reg a, b, cin;
        wire sum, cout;
    
        sumador_comp adder3 (.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));

    initial begin
        $dumpfile("test_adder.vcd");
        $dumpvars(0, test_adder);
        a = 0; b = 0; cin = 0;
        #10 a = 0; b = 0; cin = 1;
        #10 a = 0; b = 1; cin = 0;
        #10 a = 0; b = 1; cin = 1;
        #10 a = 1; b = 0; cin = 0;
        #10 a = 1; b = 0; cin = 1;
        #10 a = 1; b = 1; cin = 0;
        #10 a = 1; b = 1; cin = 1;
        #10 $finish;
    end

endmodule

