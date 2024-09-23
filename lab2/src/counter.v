module counter (
  input clk,
  input ce,
  output [3:0] LEDS
);
    // TODO: delete this assignment once you write your own logic.

    // TODO: Instantiate a reg net to count the number of cycles
    // required to reach one second. Note that our clock period is 8ns.
    // Think about how many bits are needed for your reg.
    
    // TODO: Instantiate a reg net to hold the current count,
    // and assign this value to the LEDS.

    // TODO: update the reg if clock is enabled (ce is 1).
    // Once the requisite number of cycles is reached, increment the count.

reg [26:0] count_125M = 0;
reg [3:0] leds = 0;
always @(posedge clk) begin
  if (ce) begin
    if (count_125M == 125_000_000 - 1) begin
        count_125M = 0;
        leds = leds + 1;
    end else begin
        count_125M = count_125M + 1;
    end
  end
end
  
assign LEDS = leds;
endmodule