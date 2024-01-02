module D_FF(Q,D,CLK);
    input D,CLK;
    output Q;
    reg Q;
    always @(posedge CLK) begin
        Q <= D;
    end
endmodule
