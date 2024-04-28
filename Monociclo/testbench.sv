module test;

    reg CLK;
    
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