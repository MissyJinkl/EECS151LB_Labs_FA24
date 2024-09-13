module one_bit_comparator_behavioral (
    input a,
    input b,
    output greater,
    output less,
    output equal
);
    assign greater = a & !b; // TODO
    assign less = !a & b; // TODO
    assign equal = (a&b) | (!a & !b); // TODO
endmodule
