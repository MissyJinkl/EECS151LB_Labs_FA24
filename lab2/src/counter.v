module counter (
  input clk,
  input ce,
  output [3:0] LEDS
);
    // TODO: delete this assignment once you write your own logic.
    assign LEDS = 4'd0;

    // TODO: Instantiate a reg net to count the number of cycles
    // required to reach one second. Note that our clock period is 8ns.
    // Think about how many bits are needed for your reg.

    // TODO: Instantiate a reg net to hold the current count,
    // and assign this value to the LEDS.

    // TODO: update the reg if clock is enabled (ce is 1).
    // Once the requisite number of cycles is reached, increment the count.
endmodule

module counter (
    input wire clk,         // 时钟信号，125 MHz
    input wire ce,          // 时钟使能信号
    output reg [3:0] leds   // 输出到 LED，4-bit
);

    reg [26:0] count_125M;  // 27-bit 主计数器，用于计数到 125,000,000
    localparam MAX_COUNT = 125_000_000 - 1;

    always @(posedge clk) begin
        if (ce) begin
            if (count_125M == MAX_COUNT) begin
                count_125M <= 0;       // 当计数到 125M时重置
                leds <= leds + 1;      // 4-bit 计数器递增
            end else begin
                count_125M <= count_125M + 1;  // 主计数器递增
            end
        end
    end

endmodule
