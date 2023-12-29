module test_D;
    reg d,en;
    wire q;
    latch_D dut(d,en,q);
    initial begin
        $dumpfile("test_D.vcd");
        $dumpvars(0,test_D);
        en = 1; d = 0; #10;
        en = 1; d = 1; #10;
        en = 0; d = 0; #10;
        en = 1; d = 0; #10;
        en = 0; d = 0; #10;
        en = 0; d = 1; #10; 
        $finish;
    end
endmodule