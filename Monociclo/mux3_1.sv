module Mux3(
    input [1:0]op,
    input [31:0] A,
    input [31:0] B,
    input [31:0] C,
    output [31:0] res
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