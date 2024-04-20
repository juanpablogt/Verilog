module Mas4(
    input logic [31:0] PC,
    output logic [31:0] NextPc);
  
    assign NextPc = PC + 4;
  
  endmodule