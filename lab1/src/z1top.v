module z1top(
  input CLK_125MHZ_FPGA,
  input [3:0] BUTTONS,
  input [1:0] SWITCHES,
  output [5:0] LEDS
);
  assign LEDS[1] = BUTTONS[0] & BUTTONS[1] & BUTTONS[2] & BUTTONS[3];
  and(LEDS[0], BUTTONS[0], SWITCHES[0]);
  assign LEDS[5:2] = 0;
endmodule
