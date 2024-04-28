module Mas4(
    input [31:0] PC,
    output [31:0] NextPc);
  
    assign NextPc = PC + 4;
  
  endmodule