module test_D_FF;
    reg D,CLK;
    wire Q;
    D_FF D_FF_0(Q,D,CLK);
    initial begin
        $dumpfile("test_D_FF.vcd");
        $dumpvars(0,test_D_FF);
        CLK = 1;
        forever #5 CLK = ~CLK;
    end
    initial begin
        D = 0;
        
        #5 D = 1;
        #5 D = 0;
        #5 D = 1;
        #5 D = 0;
        #5 D = 1;
        #5 D = 0;
        #5 D = 0;
        #5 D = 1;
        #5 D = 1;
        #5 D = 0;
        #5 D = 1;
        #5 D = 0;
        #5 D = 0;
        #5 D = 1;
        #5 D = 1;
        
        #5 $finish;
   
       
    end
    endmodule