module test_adder;
    reg a,b,cin;
    wire sum,cout;

    sumador_comp adder(a,b,cin,sum,cout);
    initial begin
        $dumpfile("test_adder.vcd");
        $dumpvars(0, test_adder);
        #10 cin = 0; a = 0; b = 0;
        #10 cin = 0; a = 0; b = 1;
        #10 cin = 0; a = 1; b = 0;
        #10 cin = 0; a = 1; b = 1;
        #10 cin = 1; a = 0; b = 0;
        #10 cin = 1; a = 0; b = 1;
        #10 cin = 1; a = 1; b = 0;
        #10 cin = 1; a = 1; b = 1;
        #10 $finish;
    end
endmodule