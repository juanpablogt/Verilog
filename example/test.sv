module t_simple_circuit_prop_delay;
    wire D,E;
    reg A,B,C;

    simple_circuit_prop_delay uut(A,B,C,D,E);

    initial 
        begin
        $dumpfile("t_simple_circuit_prop_delay.vcd");
        $dumpvars(0, t_simple_circuit_prop_delay);
        A=1'b0; B=1'b0; C=1'b0;
        #100 A = 1; B = 1; C = 1;
        end

    initial #200 $finish;
endmodule

