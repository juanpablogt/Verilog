module Mux3(
    input logic [1:0]op,
    input logic [31:0] A,
    input logic [31:0] B,
    input logic [31:0] C,
    output logic [31:0] res
  );
    /*always @(*) begin
      case(op)
        2: res = A;
        1: res = B;
        0: res = C;
      endcase
    end*/
    assign res = op == 0 ? C: op == 1 ? B: A;
  endmodule