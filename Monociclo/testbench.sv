module test;
  
    logic CLK = 0;
    
    MiRiscV RV(CLK);
    
    always begin
      #5 CLK= ~ CLK;
    end
    
    initial begin 
      $dumpfile("dump.vcd");
      $dumpvars(2);
      #420
      $finish();
    end
    
  endmodule