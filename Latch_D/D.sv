module latch_D (d,en,q);
    input d,en;
    output q;
    reg q,noq;
    always @(d or en) begin
        if (en)
            q = d;
        else
            q = q;
    end
endmodule