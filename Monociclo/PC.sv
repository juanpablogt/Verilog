module ProgramCounter(
    input logic clk,
    input logic [31:0] AddressIn,
    output logic [31:0] Address = 0
  );
  
    always@(posedge clk)
      Address <= AddressIn;
  
  endmodule