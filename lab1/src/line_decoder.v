module line_decoder (
    input [3:0] select,
    input [3:0] addr,
    output single_wire
);
    assign single_wire = (select == addr) ? 1'b1 : 1'b0; // TODO
endmodule
