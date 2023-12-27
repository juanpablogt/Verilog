    module test_adder;
        reg [3:0] a, b;
        reg cin;
        wire [3:0] sum;
        wire cout;

       binary_adder adderbinary(a, b, cin, sum, cout);

    initial begin
        $dumpfile("test_adder.vcd");
        $dumpvars(0, test_adder);

        a = 4'b1111;
        b = 4'b1111;
        cin = 1'b0;
        
        #10 $finish;
    end

endmodule

