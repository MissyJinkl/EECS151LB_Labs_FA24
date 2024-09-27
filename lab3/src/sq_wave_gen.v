module sq_wave_gen (
    input clk,
    input next_sample,
    output reg [9:0] code
);
    localparam HIGH_VALUE = 10'd562;
    localparam LOW_VALUE = 10'd462;
    localparam COUNT_MAX = 139;
    reg [7:0] sample_counter = 0;
    reg wave_state = 0;

    always @(posedge clk) begin
        if (next_sample) begin
            if (sample_counter == COUNT_MAX - 1) begin
                sample_counter <= 0;
                wave_state <= ~wave_state; 
            end else begin
                sample_counter <= sample_counter + 1;
            end
        end

        if (wave_state) begin
            code <= HIGH_VALUE;
        end else begin
            code <= LOW_VALUE;
        end
    end
endmodule
