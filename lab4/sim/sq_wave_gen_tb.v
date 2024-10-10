`timescale 1ns/1ns
`define CLK_PERIOD 8

module sq_wave_gen_tb();
    // Generate 125 Mhz clock
    reg clk = 0;
    always #(`CLK_PERIOD/2) clk = ~clk;

    // I/O
    reg [9:0] code;
    reg [2:0] buttons = 0;
    wire [3:0] leds;
    reg next_sample;
    reg rst;

    sq_wave_gen DUT (
        .clk(clk),
        .rst(rst),
        .code(code),
        .next_sample(next_sample),
        .buttons(buttons),
        .leds(leds)
    );

    integer code_file;
    integer next_sample_fetch;
    integer num_samples_fetched = 0;
    initial begin
        `ifdef IVERILOG
            $dumpfile("sq_wave_gen_tb.fst");
            $dumpvars(0, sq_wave_gen_tb);
        `endif
        `ifndef IVERILOG
            $vcdpluson;
        `endif

        code_file = $fopen("codes.txt", "w");
        rst = 1;
        next_sample = 0;
        @(posedge clk); #1;
        rst = 0;

        @(posedge clk); #1;

        fork
            begin
                repeat (122000) begin
                    // Pull next_sample every X cycles where X is a random number in [2, 9]
                    next_sample_fetch = ($urandom() % 8) + 2;
                    repeat (next_sample_fetch) @(posedge clk);
                    #1;
                    next_sample = 1;
                    @(posedge clk); #1;
                    $fwrite(code_file, "%d\n", code);
                    num_samples_fetched = num_samples_fetched + 1;
                    next_sample = 0;
                    @(posedge clk); #1;
                end
            end
            begin
                // TODO: Play with the buttons to adjust the output frequency
                // Hint: Use the num_samples_fetched integer to wait for
                // X samples to be fetched by the sampling thread, example below


                //increse frequency
                repeat (200) begin
                    buttons[0] = 1; 
                    #8;
                    buttons[0] = 0;  // Release button[2]
                    #8;
                end

                @(num_samples_fetched == 42000);

                //change mode
                buttons[2] = 1; 
                #8;
                buttons[2] = 0;
                #32;

    
                //decrease frequency
                repeat (5) begin
                    buttons[1] = 1; 
                    #8;
                    buttons[1] = 0;
                    #8;
                end

                @(num_samples_fetched == 80000);

                rst = 1;  // Trigger reset
                @(posedge clk);  // Wait for one clock cycle
                #8;
                rst = 0;
                @(num_samples_fetched == 122000);

                // Wait for enough samples to be fetched
                $display("Fetched 122000 samples at time %t", $time);
            end
        join

        $fclose(code_file);

        `ifndef IVERILOG
            $vcdplusoff;
        `endif
        $finish();
    end
endmodule
