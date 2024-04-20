module Mux2(
    input logic op,
    input logic [31:0] A,
    input logic [31:0] B,
    output logic [31:0] res
  );
  
  always @(*) begin
      case(op)
        0: res <= A;
        1: res <= B;
      endcase
    end
  
  endmodule