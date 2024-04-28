module ProgramCounter(
    input clk,
    input [31:0] AddressIn,
    output [31:0] Address = 0
  );
  
    always@(posedge clk)
      Address <= AddressIn;
  
  endmodule