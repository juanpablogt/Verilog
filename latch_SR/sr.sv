module latch_sr(s,r,q,nq);
    input s,r;
    output q,nq;
    wire q,nq;

    nor(nq,s,q);
    nor(q,r,nq);

endmodule
