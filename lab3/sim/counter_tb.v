`timescale 1ns/1ns

module counter_tb();

    // Inputs to the counter
    reg clk;
    reg [3:0] buttons;

    // Outputs from the counter
    wire [3:0] leds;

    // Override CYCLES_PER_SECOND to speed up the simulation
    parameter CYCLES_PER_SECOND_SIM = 10;

    // Instantiate the counter with overridden parameter
    counter #(
        .CYCLES_PER_SECOND(CYCLES_PER_SECOND_SIM)
    ) dut (
        .clk(clk),
        .buttons(buttons),
        .leds(leds)
    );

    // Internal register for storing last value of the counter
    reg [3:0] last_value;

    // Generate clock signal (10ns period, 50% duty cycle)
    always #5 clk = ~clk;

    // Test sequence
    initial begin

        $vcdpluson;
        // Initialize signals
        clk = 0;
        buttons = 4'b0000;  // No button pressed
        #10;

        // Test 1: Press button[0] to increment the counter (static mode)
        buttons[0] = 1;
        #10;  // Wait for clock edge
        buttons[0] = 0;  // Release button
        #10;

        // Check if counter incremented by 1
        if (leds != 4'd1) begin
            $error("Test 1 failed: counter expected 1, got %d", leds);
        end

        // Test 2: Press button[1] to decrease the counter (static mode)
        buttons[1] = 1;
        #10;  // Wait for clock edge
        buttons[1] = 0;  // Release button
        #10;

        // Check if counter incremented by 1
        if (leds != 4'd0) begin
            $error("Test 2 failed: counter expected 0, got %d", leds);
        end

        // Test 3: Press button[2] to enter running mode
        buttons[2] = 1;
        #10;
        buttons[2] = 0;
        #10;

        // Wait for the counter to increment in running mode
        #100;  // Wait more than a second based on simulation time

        // Check if counter incremented after 1 second in running mode
        if (leds != 4'd1) begin
            $error("Test 3 failed: counter expected to increment, got %d", leds);
        end

        // Test 4: Press button[2] again to enter static mode
        buttons[2] = 1;
        #10;
        buttons[2] = 0;
        #10;

        // Wait to check if counter stops incrementing in static mode
        #100;

        // Record current counter value
        last_value = leds;
        #100;

        // Check if counter stopped (shouldn't increment anymore)
        if (leds != last_value) begin
            $error("Test 4 failed: counter should pause, got %d", leds);
        end

        $display("All tests passed.");
        
        $vcdplusoff;
        $finish();

    end

endmodule

