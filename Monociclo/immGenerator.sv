module ImmGen(
    input signed[31:0] Inst,
    input signed[2:0] ImmSrc,
    output [31:0] ImmExt
  );
  always @(*) begin
      case(ImmSrc)
        3'b000: ImmExt = {{20{Inst[31]}}, Inst[31:20]}; // I
        3'b001: ImmExt = {{20{Inst[31]}}, Inst[31:25], Inst[11:7]}; // S
        3'b101: ImmExt = {{20{Inst[31]}},Inst[7],Inst[30:25],Inst[11:8]};// B
        3'b010: ImmExt = {{12{Inst[31]}}, Inst[31:12]}; // U
        3'b110: ImmExt = {{12{Inst[31]}}, Inst[31], Inst[19:12],Inst[20], Inst[30:21],1'b0}; // J
        default:ImmExt = 0;
      endcase
    end
  
  endmodule