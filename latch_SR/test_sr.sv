module test_sr;
    reg s,r;
    wire q,nq;
    latch_sr dut(s,r,q,nq);
    initial begin
        $dumpfile("test_sr.vcd");
        $dumpvars(0,test_sr);
        s = 1; r = 0;
        #10 s = 0; r = 1;
        #10 s = 1; r = 1;
        #10 s = 0; r = 0;
        #10 s = 1; r = 0;
        #10 s = 0; r = 0;
        #10 s = 0; r = 1;
        #10 s = 0; r = 0;
        #10 $finish;
    end
endmodule
