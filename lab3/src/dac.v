module dac #(
    parameter CYCLES_PER_WINDOW = 1024,
    parameter CODE_WIDTH = $clog2(CYCLES_PER_WINDOW)
)(
    input clk,
    input [CODE_WIDTH-1:0] code,
    output next_sample,
    output pwm
);
    reg [CODE_WIDTH-1:0] counter = 0;

    assign pwm = (code==0) ? 1'b0 : (counter <= code);

    always@(posedge clk) begin
        if (counter == CYCLES_PER_WINDOW - 1) counter = 0;
        else counter <= counter + 1;
    end

    assign next_sample = (counter == CYCLES_PER_WINDOW - 1);

endmodule
