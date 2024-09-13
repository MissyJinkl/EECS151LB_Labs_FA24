module one_bit_comparator_always (
    input a,
    input b,
    output reg greater,
    output reg less,
    output reg equal
);
    always @(*) begin
        if (a>b) begin // TODO
            // TODO
            greater = 1;
            less = 0;
            equal = 0;
        end else if (a<b) begin // TODO
            // TODO
            greater = 0;
            less = 1;
            equal = 0;
        end else begin
            // TODO
            greater = 0;
            less = 0;
            equal = 1;
        end
    end
endmodule
