module circuito_simple(
    input A,B,C,
    output X,Y
    );
    wire e;
    or g1(A,B,e);
    not g2(Y,e);
    and g3(X,C,Y);
endmodule