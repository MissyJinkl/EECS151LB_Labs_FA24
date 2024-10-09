module sq_wave_gen #(
    parameter STEP = 10
)(
    input clk,
    input rst,
    input next_sample,
    input [2:0] buttons,
    output reg [9:0] code,
    output [3:0] leds
);
    localparam HIGH_VALUE = 10'd562;
    localparam LOW_VALUE = 10'd462;
    reg [11:0] COUNT_MAX = 139; //to support 20Hz, we need 12 digits
    reg [7:0] sample_counter = 0;
    reg wave_state = 0;
    reg mode = 0; //0 = linear, 1 = exponential


    always @(posedge buttons[2]) begin
        mode <= ~mode;
    end

    always @(posedge buttons[1]) begin
        //if (mode) COUNT_MAX <= (COUNT_MAX <= 1530) ? (COUNT_MAX << 1) : 6;
        //else COUNT_MAX <= (COUNT_MAX <= 3060 - STEP) ? (COUNT_MAX + STEP) : 6;
        if (mode) COUNT_MAX <= COUNT_MAX << 1;
        else COUNT_MAX <= COUNT_MAX + STEP;
    end

    always @(posedge buttons[0]) begin
        if (mode) COUNT_MAX <= (COUNT_MAX >= 10) ? (COUNT_MAX >> 1) : 3058;
        else COUNT_MAX <= (COUNT_MAX >= 6 + STEP) ? (COUNT_MAX - STEP) : 3058;
    end

    always @(posedge clk) begin
        if (rst) begin
            // todo: registers reset, wave freq to 440Hz
            COUNT_MAX <= 139;
            sample_counter <= 0;
            wave_state <= 0;
        end
        else begin

        if (next_sample) begin
            if (sample_counter >= COUNT_MAX - 1) begin
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
    end

    assign leds[0] = mode;
endmodule
