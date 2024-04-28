module Mux2(
    input op,
    input [31:0] A,
    input [31:0] B,
    output [31:0] res
  );
  
  always @(*) begin
      case(op)
        0: res <= A;
        1: res <= B;
      endcase
    end
  
  endmodule