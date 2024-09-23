`timescale 1ns/1ns

`define SECOND 1000000000
`define MS 1000000

module counter_testbench();
    reg clock = 0;
    reg ce;
    wire [3:0] LEDS;

    counter ctr (
        .clk(clock),
        .ce(ce),
        .LEDS(LEDS)
    );

    // Notice that this code causes the `clock` signal to constantly
    // switch up and down every 4 time steps.
    always #(4) clock <= ~clock;

    initial begin
        `ifdef IVERILOG
            $dumpfile("counter_testbench.fst");
            $dumpvars(0, counter_testbench);
        `endif
        `ifndef IVERILOG
            $vcdpluson;
        `endif

        // TODO: Change input values and step forward in time to test
        // your counter and its clock enable/disable functionality.

        // test1：disable counter
        ce = 0;
        repeat (125_000_000) @(posedge clock);
        assert (LEDS == 4'b0000) else $fatal("Test 1 failed: Counter should not increment when CE is 0");

        // test 2: enable counter
        ce = 1;
        repeat (126_000_000) @(posedge clock); 
        assert (LEDS == 4'b0001) else $fatal("Test 2 failed: Counter should increment after 1s");

        // test 3: disable counter again
        ce = 0;
        repeat (125_000_000) @(posedge clock);
        assert (LEDS == 4'b0001) else $fatal("Test 3 failed: Counter should hold value when CE is 0");


        `ifndef IVERILOG
            $vcdplusoff;
        `endif
        $finish();
    end
endmodule
