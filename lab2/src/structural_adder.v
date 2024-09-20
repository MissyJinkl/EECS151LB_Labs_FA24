module structural_adder (
    input [13:0] a,
    input [13:0] b,
    output [14:0] sum
);
    // TODO: Your implementation here.
    // TODO: Remove the assign statement below once you write your own RTL.
    wire [14:0] carry;
    assign carry[0] = 0;

    genvar i;
    generate
        for (i = 0; i < 14; i = i + 1) begin : adder_stage
            full_adder adder (
                .a(a[i]),
                .b(b[i]),
                .carry_in(carry[i]),
                .sum(sum[i]),
                .carry_out(carry[i+1])
            );
        end
    endgenerate

    assign sum[14] = carry[14];
endmodule
