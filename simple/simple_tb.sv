module circ_simple;
    reg A,B,C;
    wire X,Y;

    circuito_simple cir1(.A(A), .B(B), .C(C), .X(X), .Y(Y));

    initial begin
      $dumpfile("circ_simple.vcd");
      $dumpvars(0, circ_simple);

      A = 1'b0; B = 1'b0; C = 1'b0;
      #10;
      A = 1'b0; B = 1'b0; C = 1'b1;
      #10;
      A = 1'b0; B = 1'b1; C = 1'b0;
      #10;
      A = 1'b0; B = 1'b1; C = 1'b1;
      #10;
      A = 1'b1; B = 1'b0; C = 1'b0;
      #10;
      A = 1'b1; B = 1'b0; C = 1'b1;
      #10;
      A = 1'b1; B = 1'b1; C = 1'b0;
      #10;
      A = 1'b1; B = 1'b1; C = 1'b1;
      #10;
      $finish;
    end

endmodule

  