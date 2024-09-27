module counter #(
    parameter CYCLES_PER_SECOND = 125_000_000  // 1秒计数器的时钟周期数
)(
    input clk,
    input [3:0] buttons,
    output [3:0] leds
);

    // Internal signals
    reg [3:0] counter = 0;
    reg [27:0] cycle_counter = 0;  // 计数器计数每秒的周期
    reg running = 0;  // 运行/暂停模式切换标志

    assign leds = counter;

    // Mode toggling on button[2]
    always @(posedge clk) begin
        if (buttons[2]) begin
            running <= ~running;  // 切换运行模式
        end
    end

    // Cycle counter for automatic increment every second in running mode
    always @(posedge clk) begin
        if (running) begin
            if (cycle_counter < CYCLES_PER_SECOND - 1) begin
                cycle_counter <= cycle_counter + 1;
            end else begin
                cycle_counter <= 0;
                counter <= counter + 1;  // 每秒递增一次
            end
        end else begin  // 仅在暂停模式下手动控制
            if (buttons[0]) begin
                counter <= counter + 4'd1;  // 增加1
            end else if (buttons[1]) begin
                counter <= counter - 4'd1;  // 减少1
            end else if (buttons[3]) begin
                counter <= 4'd0;  // 重置
            end
        end
    end

endmodule
