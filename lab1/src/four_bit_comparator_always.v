module four_bit_comparator_always (
    input [3:0] a, // TODO
    input [3:0] b, // TODO
    output reg greater,
    output reg less,
    output reg equal
);

    always @(*) begin
        if (a>b) begin // TODO
            // TODO
            greater = 1'b1;
            less = 1'b0;
            equal = 1'b0;
        end else if (a<b) begin // TODO
            // TODO
            greater = 1'b0;
            less = 1'b1;
            equal = 1'b0;
        end else begin
            // TODO
            greater = 1'b0;
            less = 1'b0;
            equal = 1'b1;
        end
    end
endmodule
