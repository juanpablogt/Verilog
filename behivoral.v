module full_adder_behivoral(
    input a,
    input b,
    input cin,
    output cout,
    output sum
    );
    wire w1,w2,w3;
    xor x1(sum,a,b);
    xor x2(cout,a,b);
    and a1(w1,a,b);
    and a2(w2,a,cin);
    and a3(w3,b,cin);
    or o1(cout,w1,w2,w3);
endmodule