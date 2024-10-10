// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Wed Oct  9 17:40:25 2024
// Host        : c111-16.EECS.Berkeley.EDU running 64-bit Red Hat Enterprise Linux release 8.10 (Ootpa)
// Command     : write_verilog -force post_route.v
// Design      : z1top
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module button_parser
   (\edge_detect_pulse_reg[3] ,
    Q,
    E,
    \edge_detect_pulse_reg[3]_0 ,
    \edge_detect_pulse_reg[1] ,
    \sync_signal_reg[0] ,
    CLK_125MHZ_FPGA_IBUF_BUFG,
    \COUNT_MAX_reg[11] ,
    sq_wave_leds,
    D);
  output \edge_detect_pulse_reg[3] ;
  output [1:0]Q;
  output [0:0]E;
  output \edge_detect_pulse_reg[3]_0 ;
  output \edge_detect_pulse_reg[1] ;
  output \sync_signal_reg[0] ;
  input CLK_125MHZ_FPGA_IBUF_BUFG;
  input [0:0]\COUNT_MAX_reg[11] ;
  input [0:0]sq_wave_leds;
  input [3:0]D;

  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [0:0]\COUNT_MAX_reg[11] ;
  wire [3:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire [3:0]debounced_signals;
  wire \edge_detect_pulse_reg[1] ;
  wire \edge_detect_pulse_reg[3] ;
  wire \edge_detect_pulse_reg[3]_0 ;
  wire [0:0]sq_wave_leds;
  wire \sync_signal_reg[0] ;
  wire [3:0]synchronized_signals;

  debouncer button_debouncer
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .D(debounced_signals),
        .Q(synchronized_signals));
  edge_detector button_edge_detector
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .\COUNT_MAX_reg[11] (\COUNT_MAX_reg[11] ),
        .D(debounced_signals),
        .E(E),
        .Q(Q),
        .\edge_detect_pulse_reg[1]_0 (\edge_detect_pulse_reg[1] ),
        .\edge_detect_pulse_reg[3]_0 (\edge_detect_pulse_reg[3] ),
        .\edge_detect_pulse_reg[3]_1 (\edge_detect_pulse_reg[3]_0 ),
        .sq_wave_leds(sq_wave_leds),
        .\sync_signal_reg[0] (\sync_signal_reg[0] ));
  synchronizer button_synchronizer
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .D(D),
        .Q(synchronized_signals));
endmodule

module dac
   (next_sample,
    Q,
    \counter_reg[9]_0 ,
    AUD_PWM_OBUF,
    wave_state_reg,
    DI,
    S,
    CO,
    \counter_reg[9]_1 ,
    pwm0_carry_0,
    AUD_PWM,
    pwm0_carry_1,
    wave_state,
    CLK_125MHZ_FPGA_IBUF_BUFG);
  output next_sample;
  output [1:0]Q;
  output \counter_reg[9]_0 ;
  output AUD_PWM_OBUF;
  output wave_state_reg;
  input [0:0]DI;
  input [0:0]S;
  input [0:0]CO;
  input [0:0]\counter_reg[9]_1 ;
  input pwm0_carry_0;
  input [0:0]AUD_PWM;
  input pwm0_carry_1;
  input wave_state;
  input CLK_125MHZ_FPGA_IBUF_BUFG;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]AUD_PWM;
  wire AUD_PWM_OBUF;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [0:0]CO;
  wire [0:0]DI;
  wire [1:0]Q;
  wire [0:0]S;
  wire [7:0]counter;
  wire \counter[0]_i_1_n_0 ;
  wire \counter[1]_i_1_n_0 ;
  wire \counter[2]_i_1_n_0 ;
  wire \counter[3]_i_1_n_0 ;
  wire \counter[4]_i_1_n_0 ;
  wire \counter[5]_i_1_n_0 ;
  wire \counter[6]_i_1_n_0 ;
  wire \counter[7]_i_1_n_0 ;
  wire \counter[8]_i_1_n_0 ;
  wire \counter[9]_i_2_n_0 ;
  wire \counter[9]_i_3_n_0 ;
  wire \counter[9]_i_4_n_0 ;
  wire \counter[9]_i_5_n_0 ;
  wire counter_0;
  wire \counter_reg[9]_0 ;
  wire [0:0]\counter_reg[9]_1 ;
  wire data0;
  wire next_sample;
  wire pwm0_carry_0;
  wire pwm0_carry_1;
  wire pwm0_carry_i_1_n_0;
  wire pwm0_carry_i_2_n_0;
  wire pwm0_carry_i_3_n_0;
  wire pwm0_carry_i_4_n_0;
  wire pwm0_carry_i_5_n_0;
  wire pwm0_carry_i_6_n_0;
  wire pwm0_carry_i_7_n_0;
  wire pwm0_carry_i_8_n_0;
  wire pwm0_carry_n_0;
  wire \sample_counter[0]_i_4_n_0 ;
  wire wave_state;
  wire wave_state_reg;
  wire [3:0]NLW_pwm0_carry_CO_UNCONNECTED;

  LUT2 #(
    .INIT(4'h2)) 
    AUD_PWM_OBUF_inst_i_1
       (.I0(data0),
        .I1(AUD_PWM),
        .O(AUD_PWM_OBUF));
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(counter[0]),
        .O(\counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1 
       (.I0(counter[1]),
        .I1(counter[0]),
        .O(\counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter[2]_i_1 
       (.I0(counter[0]),
        .I1(counter[1]),
        .I2(counter[2]),
        .O(\counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter[3]_i_1 
       (.I0(counter[2]),
        .I1(counter[1]),
        .I2(counter[0]),
        .I3(counter[3]),
        .O(\counter[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \counter[4]_i_1 
       (.I0(counter[2]),
        .I1(counter[3]),
        .I2(counter[1]),
        .I3(counter[0]),
        .I4(counter[4]),
        .O(\counter[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \counter[5]_i_1 
       (.I0(counter[5]),
        .I1(counter[2]),
        .I2(counter[3]),
        .I3(counter[1]),
        .I4(counter[0]),
        .I5(counter[4]),
        .O(\counter[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \counter[6]_i_1 
       (.I0(\counter[9]_i_4_n_0 ),
        .I1(counter[6]),
        .O(\counter[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \counter[7]_i_1 
       (.I0(counter[7]),
        .I1(\counter[9]_i_4_n_0 ),
        .I2(counter[6]),
        .O(\counter[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF708)) 
    \counter[8]_i_1 
       (.I0(counter[6]),
        .I1(counter[7]),
        .I2(\counter[9]_i_4_n_0 ),
        .I3(Q[0]),
        .O(\counter[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFFFFFF)) 
    \counter[9]_i_1 
       (.I0(\counter[9]_i_3_n_0 ),
        .I1(Q[0]),
        .I2(counter[7]),
        .I3(counter[6]),
        .I4(counter[3]),
        .O(counter_0));
  LUT5 #(
    .INIT(32'h9AAAAAAA)) 
    \counter[9]_i_2 
       (.I0(Q[1]),
        .I1(\counter[9]_i_4_n_0 ),
        .I2(counter[7]),
        .I3(counter[6]),
        .I4(Q[0]),
        .O(\counter[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF7FFFFFFF)) 
    \counter[9]_i_3 
       (.I0(\counter_reg[9]_1 ),
        .I1(counter[0]),
        .I2(counter[1]),
        .I3(counter[2]),
        .I4(Q[1]),
        .I5(\counter[9]_i_5_n_0 ),
        .O(\counter[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \counter[9]_i_4 
       (.I0(counter[2]),
        .I1(counter[3]),
        .I2(counter[1]),
        .I3(counter[0]),
        .I4(counter[5]),
        .I5(counter[4]),
        .O(\counter[9]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \counter[9]_i_5 
       (.I0(counter[4]),
        .I1(counter[5]),
        .O(\counter[9]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(counter_0),
        .D(\counter[0]_i_1_n_0 ),
        .Q(counter[0]),
        .R(\counter_reg[9]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(counter_0),
        .D(\counter[1]_i_1_n_0 ),
        .Q(counter[1]),
        .R(\counter_reg[9]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(counter_0),
        .D(\counter[2]_i_1_n_0 ),
        .Q(counter[2]),
        .R(\counter_reg[9]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(counter_0),
        .D(\counter[3]_i_1_n_0 ),
        .Q(counter[3]),
        .R(\counter_reg[9]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(counter_0),
        .D(\counter[4]_i_1_n_0 ),
        .Q(counter[4]),
        .R(\counter_reg[9]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(counter_0),
        .D(\counter[5]_i_1_n_0 ),
        .Q(counter[5]),
        .R(\counter_reg[9]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(counter_0),
        .D(\counter[6]_i_1_n_0 ),
        .Q(counter[6]),
        .R(\counter_reg[9]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(counter_0),
        .D(\counter[7]_i_1_n_0 ),
        .Q(counter[7]),
        .R(\counter_reg[9]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(counter_0),
        .D(\counter[8]_i_1_n_0 ),
        .Q(Q[0]),
        .R(\counter_reg[9]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(counter_0),
        .D(\counter[9]_i_2_n_0 ),
        .Q(Q[1]),
        .R(\counter_reg[9]_1 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 pwm0_carry
       (.CI(\<const0> ),
        .CO({pwm0_carry_n_0,NLW_pwm0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const1> ),
        .DI({pwm0_carry_i_1_n_0,pwm0_carry_i_2_n_0,pwm0_carry_i_3_n_0,pwm0_carry_i_4_n_0}),
        .S({pwm0_carry_i_5_n_0,pwm0_carry_i_6_n_0,pwm0_carry_i_7_n_0,pwm0_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 pwm0_carry__0
       (.CI(pwm0_carry_n_0),
        .CO(data0),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,DI}),
        .S({\<const0> ,\<const0> ,\<const0> ,S}));
  LUT4 #(
    .INIT(16'h0444)) 
    pwm0_carry_i_1
       (.I0(AUD_PWM),
        .I1(pwm0_carry_0),
        .I2(counter[7]),
        .I3(counter[6]),
        .O(pwm0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h0700)) 
    pwm0_carry_i_2
       (.I0(counter[5]),
        .I1(counter[4]),
        .I2(AUD_PWM),
        .I3(pwm0_carry_1),
        .O(pwm0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h0700)) 
    pwm0_carry_i_3
       (.I0(counter[3]),
        .I1(counter[2]),
        .I2(AUD_PWM),
        .I3(pwm0_carry_0),
        .O(pwm0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    pwm0_carry_i_4
       (.I0(counter[1]),
        .I1(AUD_PWM),
        .O(pwm0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h200D)) 
    pwm0_carry_i_5
       (.I0(pwm0_carry_0),
        .I1(AUD_PWM),
        .I2(counter[6]),
        .I3(counter[7]),
        .O(pwm0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h1811)) 
    pwm0_carry_i_6
       (.I0(counter[5]),
        .I1(counter[4]),
        .I2(AUD_PWM),
        .I3(pwm0_carry_1),
        .O(pwm0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h400B)) 
    pwm0_carry_i_7
       (.I0(AUD_PWM),
        .I1(pwm0_carry_0),
        .I2(counter[3]),
        .I3(counter[2]),
        .O(pwm0_carry_i_7_n_0));
  LUT3 #(
    .INIT(8'h14)) 
    pwm0_carry_i_8
       (.I0(counter[0]),
        .I1(counter[1]),
        .I2(AUD_PWM),
        .O(pwm0_carry_i_8_n_0));
  LUT5 #(
    .INIT(32'hFFFF0800)) 
    \sample_counter[0]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\sample_counter[0]_i_4_n_0 ),
        .I3(CO),
        .I4(\counter_reg[9]_1 ),
        .O(\counter_reg[9]_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \sample_counter[0]_i_2 
       (.I0(\counter[9]_i_4_n_0 ),
        .I1(counter[7]),
        .I2(counter[6]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(next_sample));
  LUT3 #(
    .INIT(8'hBF)) 
    \sample_counter[0]_i_4 
       (.I0(\counter[9]_i_4_n_0 ),
        .I1(counter[7]),
        .I2(counter[6]),
        .O(\sample_counter[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A6AAAAAA)) 
    wave_state_i_1
       (.I0(wave_state),
        .I1(CO),
        .I2(\sample_counter[0]_i_4_n_0 ),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(\counter_reg[9]_1 ),
        .O(wave_state_reg));
endmodule

module debouncer
   (D,
    CLK_125MHZ_FPGA_IBUF_BUFG,
    Q);
  output [3:0]D;
  input CLK_125MHZ_FPGA_IBUF_BUFG;
  input [3:0]Q;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [3:0]D;
  wire [3:0]Q;
  wire \debounce_logic[0].debounced_signal[0]_i_1_n_0 ;
  wire \debounce_logic[0].saturating_counter[0][7]_i_1_n_0 ;
  wire \debounce_logic[0].saturating_counter[0][7]_i_4_n_0 ;
  wire \debounce_logic[0].saturating_counter[0][7]_i_5_n_0 ;
  wire [7:0]\debounce_logic[0].saturating_counter_reg[0]_0 ;
  wire \debounce_logic[1].debounced_signal[1]_i_1_n_0 ;
  wire \debounce_logic[1].saturating_counter[1][7]_i_1_n_0 ;
  wire \debounce_logic[1].saturating_counter[1][7]_i_2_n_0 ;
  wire \debounce_logic[1].saturating_counter[1][7]_i_4_n_0 ;
  wire \debounce_logic[1].saturating_counter[1][7]_i_5_n_0 ;
  wire [7:0]\debounce_logic[1].saturating_counter_reg[1]_1 ;
  wire \debounce_logic[2].debounced_signal[2]_i_1_n_0 ;
  wire \debounce_logic[2].saturating_counter[2][7]_i_1_n_0 ;
  wire \debounce_logic[2].saturating_counter[2][7]_i_2_n_0 ;
  wire \debounce_logic[2].saturating_counter[2][7]_i_4_n_0 ;
  wire \debounce_logic[2].saturating_counter[2][7]_i_5_n_0 ;
  wire [7:0]\debounce_logic[2].saturating_counter_reg[2]_2 ;
  wire \debounce_logic[3].debounced_signal[3]_i_1_n_0 ;
  wire \debounce_logic[3].saturating_counter[3][7]_i_1_n_0 ;
  wire \debounce_logic[3].saturating_counter[3][7]_i_2_n_0 ;
  wire \debounce_logic[3].saturating_counter[3][7]_i_4_n_0 ;
  wire \debounce_logic[3].saturating_counter[3][7]_i_5_n_0 ;
  wire [7:0]\debounce_logic[3].saturating_counter_reg[3]_3 ;
  wire [7:0]p_0_in;
  wire [7:0]p_0_in__0;
  wire [7:0]p_0_in__1;
  wire [7:0]p_0_in__2;
  wire saturating_counter;
  wire [15:0]wrapping_counter;
  wire \wrapping_counter[15]_i_1_n_0 ;
  wire \wrapping_counter[15]_i_3_n_0 ;
  wire \wrapping_counter[15]_i_4_n_0 ;
  wire \wrapping_counter[15]_i_5_n_0 ;
  wire [0:0]wrapping_counter_0;
  wire \wrapping_counter_reg[12]_i_1_n_0 ;
  wire \wrapping_counter_reg[12]_i_1_n_4 ;
  wire \wrapping_counter_reg[12]_i_1_n_5 ;
  wire \wrapping_counter_reg[12]_i_1_n_6 ;
  wire \wrapping_counter_reg[12]_i_1_n_7 ;
  wire \wrapping_counter_reg[15]_i_2_n_5 ;
  wire \wrapping_counter_reg[15]_i_2_n_6 ;
  wire \wrapping_counter_reg[15]_i_2_n_7 ;
  wire \wrapping_counter_reg[4]_i_1_n_0 ;
  wire \wrapping_counter_reg[4]_i_1_n_4 ;
  wire \wrapping_counter_reg[4]_i_1_n_5 ;
  wire \wrapping_counter_reg[4]_i_1_n_6 ;
  wire \wrapping_counter_reg[4]_i_1_n_7 ;
  wire \wrapping_counter_reg[8]_i_1_n_0 ;
  wire \wrapping_counter_reg[8]_i_1_n_4 ;
  wire \wrapping_counter_reg[8]_i_1_n_5 ;
  wire \wrapping_counter_reg[8]_i_1_n_6 ;
  wire \wrapping_counter_reg[8]_i_1_n_7 ;
  wire [3:0]\NLW_wrapping_counter_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_wrapping_counter_reg[4]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_wrapping_counter_reg[8]_i_1_CO_UNCONNECTED ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \debounce_logic[0].debounced_signal[0]_i_1 
       (.I0(\debounce_logic[0].saturating_counter[0][7]_i_4_n_0 ),
        .I1(\debounce_logic[0].saturating_counter_reg[0]_0 [6]),
        .I2(\debounce_logic[0].saturating_counter_reg[0]_0 [7]),
        .I3(\debounce_logic[0].saturating_counter_reg[0]_0 [5]),
        .I4(\debounce_logic[0].saturating_counter_reg[0]_0 [3]),
        .I5(\debounce_logic[0].saturating_counter_reg[0]_0 [4]),
        .O(\debounce_logic[0].debounced_signal[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_logic[0].debounced_signal_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\debounce_logic[0].debounced_signal[0]_i_1_n_0 ),
        .Q(D[0]),
        .R(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \debounce_logic[0].saturating_counter[0][0]_i_1 
       (.I0(\debounce_logic[0].saturating_counter_reg[0]_0 [0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \debounce_logic[0].saturating_counter[0][1]_i_1 
       (.I0(\debounce_logic[0].saturating_counter_reg[0]_0 [0]),
        .I1(\debounce_logic[0].saturating_counter_reg[0]_0 [1]),
        .O(p_0_in[1]));
  LUT3 #(
    .INIT(8'h6A)) 
    \debounce_logic[0].saturating_counter[0][2]_i_1 
       (.I0(\debounce_logic[0].saturating_counter_reg[0]_0 [2]),
        .I1(\debounce_logic[0].saturating_counter_reg[0]_0 [1]),
        .I2(\debounce_logic[0].saturating_counter_reg[0]_0 [0]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \debounce_logic[0].saturating_counter[0][3]_i_1 
       (.I0(\debounce_logic[0].saturating_counter_reg[0]_0 [3]),
        .I1(\debounce_logic[0].saturating_counter_reg[0]_0 [2]),
        .I2(\debounce_logic[0].saturating_counter_reg[0]_0 [0]),
        .I3(\debounce_logic[0].saturating_counter_reg[0]_0 [1]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \debounce_logic[0].saturating_counter[0][4]_i_1 
       (.I0(\debounce_logic[0].saturating_counter_reg[0]_0 [4]),
        .I1(\debounce_logic[0].saturating_counter_reg[0]_0 [3]),
        .I2(\debounce_logic[0].saturating_counter_reg[0]_0 [2]),
        .I3(\debounce_logic[0].saturating_counter_reg[0]_0 [0]),
        .I4(\debounce_logic[0].saturating_counter_reg[0]_0 [1]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \debounce_logic[0].saturating_counter[0][5]_i_1 
       (.I0(\debounce_logic[0].saturating_counter_reg[0]_0 [5]),
        .I1(\debounce_logic[0].saturating_counter_reg[0]_0 [1]),
        .I2(\debounce_logic[0].saturating_counter_reg[0]_0 [0]),
        .I3(\debounce_logic[0].saturating_counter_reg[0]_0 [2]),
        .I4(\debounce_logic[0].saturating_counter_reg[0]_0 [4]),
        .I5(\debounce_logic[0].saturating_counter_reg[0]_0 [3]),
        .O(p_0_in[5]));
  LUT5 #(
    .INIT(32'hBFFF4000)) 
    \debounce_logic[0].saturating_counter[0][6]_i_1 
       (.I0(\debounce_logic[0].saturating_counter[0][7]_i_4_n_0 ),
        .I1(\debounce_logic[0].saturating_counter_reg[0]_0 [4]),
        .I2(\debounce_logic[0].saturating_counter_reg[0]_0 [3]),
        .I3(\debounce_logic[0].saturating_counter_reg[0]_0 [5]),
        .I4(\debounce_logic[0].saturating_counter_reg[0]_0 [6]),
        .O(p_0_in[6]));
  LUT2 #(
    .INIT(4'h2)) 
    \debounce_logic[0].saturating_counter[0][7]_i_1 
       (.I0(\wrapping_counter[15]_i_1_n_0 ),
        .I1(Q[0]),
        .O(\debounce_logic[0].saturating_counter[0][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h2FFF0000)) 
    \debounce_logic[0].saturating_counter[0][7]_i_2 
       (.I0(\debounce_logic[0].saturating_counter[0][7]_i_4_n_0 ),
        .I1(\debounce_logic[0].saturating_counter[0][7]_i_5_n_0 ),
        .I2(\debounce_logic[0].saturating_counter_reg[0]_0 [6]),
        .I3(\debounce_logic[0].saturating_counter_reg[0]_0 [7]),
        .I4(\wrapping_counter[15]_i_1_n_0 ),
        .O(saturating_counter));
  LUT6 #(
    .INIT(64'h9AAAAAAAAAAAAAAA)) 
    \debounce_logic[0].saturating_counter[0][7]_i_3 
       (.I0(\debounce_logic[0].saturating_counter_reg[0]_0 [7]),
        .I1(\debounce_logic[0].saturating_counter[0][7]_i_4_n_0 ),
        .I2(\debounce_logic[0].saturating_counter_reg[0]_0 [4]),
        .I3(\debounce_logic[0].saturating_counter_reg[0]_0 [3]),
        .I4(\debounce_logic[0].saturating_counter_reg[0]_0 [5]),
        .I5(\debounce_logic[0].saturating_counter_reg[0]_0 [6]),
        .O(p_0_in[7]));
  LUT3 #(
    .INIT(8'h7F)) 
    \debounce_logic[0].saturating_counter[0][7]_i_4 
       (.I0(\debounce_logic[0].saturating_counter_reg[0]_0 [1]),
        .I1(\debounce_logic[0].saturating_counter_reg[0]_0 [0]),
        .I2(\debounce_logic[0].saturating_counter_reg[0]_0 [2]),
        .O(\debounce_logic[0].saturating_counter[0][7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \debounce_logic[0].saturating_counter[0][7]_i_5 
       (.I0(\debounce_logic[0].saturating_counter_reg[0]_0 [4]),
        .I1(\debounce_logic[0].saturating_counter_reg[0]_0 [3]),
        .I2(\debounce_logic[0].saturating_counter_reg[0]_0 [5]),
        .O(\debounce_logic[0].saturating_counter[0][7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_logic[0].saturating_counter_reg[0][0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(saturating_counter),
        .D(p_0_in[0]),
        .Q(\debounce_logic[0].saturating_counter_reg[0]_0 [0]),
        .R(\debounce_logic[0].saturating_counter[0][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_logic[0].saturating_counter_reg[0][1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(saturating_counter),
        .D(p_0_in[1]),
        .Q(\debounce_logic[0].saturating_counter_reg[0]_0 [1]),
        .R(\debounce_logic[0].saturating_counter[0][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_logic[0].saturating_counter_reg[0][2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(saturating_counter),
        .D(p_0_in[2]),
        .Q(\debounce_logic[0].saturating_counter_reg[0]_0 [2]),
        .R(\debounce_logic[0].saturating_counter[0][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_logic[0].saturating_counter_reg[0][3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(saturating_counter),
        .D(p_0_in[3]),
        .Q(\debounce_logic[0].saturating_counter_reg[0]_0 [3]),
        .R(\debounce_logic[0].saturating_counter[0][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_logic[0].saturating_counter_reg[0][4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(saturating_counter),
        .D(p_0_in[4]),
        .Q(\debounce_logic[0].saturating_counter_reg[0]_0 [4]),
        .R(\debounce_logic[0].saturating_counter[0][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_logic[0].saturating_counter_reg[0][5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(saturating_counter),
        .D(p_0_in[5]),
        .Q(\debounce_logic[0].saturating_counter_reg[0]_0 [5]),
        .R(\debounce_logic[0].saturating_counter[0][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_logic[0].saturating_counter_reg[0][6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(saturating_counter),
        .D(p_0_in[6]),
        .Q(\debounce_logic[0].saturating_counter_reg[0]_0 [6]),
        .R(\debounce_logic[0].saturating_counter[0][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_logic[0].saturating_counter_reg[0][7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(saturating_counter),
        .D(p_0_in[7]),
        .Q(\debounce_logic[0].saturating_counter_reg[0]_0 [7]),
        .R(\debounce_logic[0].saturating_counter[0][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \debounce_logic[1].debounced_signal[1]_i_1 
       (.I0(\debounce_logic[1].saturating_counter[1][7]_i_4_n_0 ),
        .I1(\debounce_logic[1].saturating_counter_reg[1]_1 [6]),
        .I2(\debounce_logic[1].saturating_counter_reg[1]_1 [7]),
        .I3(\debounce_logic[1].saturating_counter_reg[1]_1 [5]),
        .I4(\debounce_logic[1].saturating_counter_reg[1]_1 [3]),
        .I5(\debounce_logic[1].saturating_counter_reg[1]_1 [4]),
        .O(\debounce_logic[1].debounced_signal[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_logic[1].debounced_signal_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\debounce_logic[1].debounced_signal[1]_i_1_n_0 ),
        .Q(D[1]),
        .R(\<const0> ));
  (* \PinAttr:I0:HOLD_DETOUR  = "198" *) 
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \debounce_logic[1].saturating_counter[1][0]_i_1 
       (.I0(\debounce_logic[1].saturating_counter_reg[1]_1 [0]),
        .O(p_0_in__0[0]));
  (* \PinAttr:I0:HOLD_DETOUR  = "198" *) 
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \debounce_logic[1].saturating_counter[1][1]_i_1 
       (.I0(\debounce_logic[1].saturating_counter_reg[1]_1 [0]),
        .I1(\debounce_logic[1].saturating_counter_reg[1]_1 [1]),
        .O(p_0_in__0[1]));
  LUT3 #(
    .INIT(8'h6A)) 
    \debounce_logic[1].saturating_counter[1][2]_i_1 
       (.I0(\debounce_logic[1].saturating_counter_reg[1]_1 [2]),
        .I1(\debounce_logic[1].saturating_counter_reg[1]_1 [1]),
        .I2(\debounce_logic[1].saturating_counter_reg[1]_1 [0]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \debounce_logic[1].saturating_counter[1][3]_i_1 
       (.I0(\debounce_logic[1].saturating_counter_reg[1]_1 [3]),
        .I1(\debounce_logic[1].saturating_counter_reg[1]_1 [2]),
        .I2(\debounce_logic[1].saturating_counter_reg[1]_1 [0]),
        .I3(\debounce_logic[1].saturating_counter_reg[1]_1 [1]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \debounce_logic[1].saturating_counter[1][4]_i_1 
       (.I0(\debounce_logic[1].saturating_counter_reg[1]_1 [4]),
        .I1(\debounce_logic[1].saturating_counter_reg[1]_1 [3]),
        .I2(\debounce_logic[1].saturating_counter_reg[1]_1 [2]),
        .I3(\debounce_logic[1].saturating_counter_reg[1]_1 [0]),
        .I4(\debounce_logic[1].saturating_counter_reg[1]_1 [1]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \debounce_logic[1].saturating_counter[1][5]_i_1 
       (.I0(\debounce_logic[1].saturating_counter_reg[1]_1 [5]),
        .I1(\debounce_logic[1].saturating_counter_reg[1]_1 [1]),
        .I2(\debounce_logic[1].saturating_counter_reg[1]_1 [0]),
        .I3(\debounce_logic[1].saturating_counter_reg[1]_1 [2]),
        .I4(\debounce_logic[1].saturating_counter_reg[1]_1 [4]),
        .I5(\debounce_logic[1].saturating_counter_reg[1]_1 [3]),
        .O(p_0_in__0[5]));
  LUT5 #(
    .INIT(32'hBFFF4000)) 
    \debounce_logic[1].saturating_counter[1][6]_i_1 
       (.I0(\debounce_logic[1].saturating_counter[1][7]_i_4_n_0 ),
        .I1(\debounce_logic[1].saturating_counter_reg[1]_1 [4]),
        .I2(\debounce_logic[1].saturating_counter_reg[1]_1 [3]),
        .I3(\debounce_logic[1].saturating_counter_reg[1]_1 [5]),
        .I4(\debounce_logic[1].saturating_counter_reg[1]_1 [6]),
        .O(p_0_in__0[6]));
  LUT2 #(
    .INIT(4'h2)) 
    \debounce_logic[1].saturating_counter[1][7]_i_1 
       (.I0(\wrapping_counter[15]_i_1_n_0 ),
        .I1(Q[1]),
        .O(\debounce_logic[1].saturating_counter[1][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h2FFF0000)) 
    \debounce_logic[1].saturating_counter[1][7]_i_2 
       (.I0(\debounce_logic[1].saturating_counter[1][7]_i_4_n_0 ),
        .I1(\debounce_logic[1].saturating_counter[1][7]_i_5_n_0 ),
        .I2(\debounce_logic[1].saturating_counter_reg[1]_1 [6]),
        .I3(\debounce_logic[1].saturating_counter_reg[1]_1 [7]),
        .I4(\wrapping_counter[15]_i_1_n_0 ),
        .O(\debounce_logic[1].saturating_counter[1][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9AAAAAAAAAAAAAAA)) 
    \debounce_logic[1].saturating_counter[1][7]_i_3 
       (.I0(\debounce_logic[1].saturating_counter_reg[1]_1 [7]),
        .I1(\debounce_logic[1].saturating_counter[1][7]_i_4_n_0 ),
        .I2(\debounce_logic[1].saturating_counter_reg[1]_1 [4]),
        .I3(\debounce_logic[1].saturating_counter_reg[1]_1 [3]),
        .I4(\debounce_logic[1].saturating_counter_reg[1]_1 [5]),
        .I5(\debounce_logic[1].saturating_counter_reg[1]_1 [6]),
        .O(p_0_in__0[7]));
  LUT3 #(
    .INIT(8'h7F)) 
    \debounce_logic[1].saturating_counter[1][7]_i_4 
       (.I0(\debounce_logic[1].saturating_counter_reg[1]_1 [1]),
        .I1(\debounce_logic[1].saturating_counter_reg[1]_1 [0]),
        .I2(\debounce_logic[1].saturating_counter_reg[1]_1 [2]),
        .O(\debounce_logic[1].saturating_counter[1][7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \debounce_logic[1].saturating_counter[1][7]_i_5 
       (.I0(\debounce_logic[1].saturating_counter_reg[1]_1 [4]),
        .I1(\debounce_logic[1].saturating_counter_reg[1]_1 [3]),
        .I2(\debounce_logic[1].saturating_counter_reg[1]_1 [5]),
        .O(\debounce_logic[1].saturating_counter[1][7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_logic[1].saturating_counter_reg[1][0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\debounce_logic[1].saturating_counter[1][7]_i_2_n_0 ),
        .D(p_0_in__0[0]),
        .Q(\debounce_logic[1].saturating_counter_reg[1]_1 [0]),
        .R(\debounce_logic[1].saturating_counter[1][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_logic[1].saturating_counter_reg[1][1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\debounce_logic[1].saturating_counter[1][7]_i_2_n_0 ),
        .D(p_0_in__0[1]),
        .Q(\debounce_logic[1].saturating_counter_reg[1]_1 [1]),
        .R(\debounce_logic[1].saturating_counter[1][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_logic[1].saturating_counter_reg[1][2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\debounce_logic[1].saturating_counter[1][7]_i_2_n_0 ),
        .D(p_0_in__0[2]),
        .Q(\debounce_logic[1].saturating_counter_reg[1]_1 [2]),
        .R(\debounce_logic[1].saturating_counter[1][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_logic[1].saturating_counter_reg[1][3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\debounce_logic[1].saturating_counter[1][7]_i_2_n_0 ),
        .D(p_0_in__0[3]),
        .Q(\debounce_logic[1].saturating_counter_reg[1]_1 [3]),
        .R(\debounce_logic[1].saturating_counter[1][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_logic[1].saturating_counter_reg[1][4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\debounce_logic[1].saturating_counter[1][7]_i_2_n_0 ),
        .D(p_0_in__0[4]),
        .Q(\debounce_logic[1].saturating_counter_reg[1]_1 [4]),
        .R(\debounce_logic[1].saturating_counter[1][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_logic[1].saturating_counter_reg[1][5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\debounce_logic[1].saturating_counter[1][7]_i_2_n_0 ),
        .D(p_0_in__0[5]),
        .Q(\debounce_logic[1].saturating_counter_reg[1]_1 [5]),
        .R(\debounce_logic[1].saturating_counter[1][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_logic[1].saturating_counter_reg[1][6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\debounce_logic[1].saturating_counter[1][7]_i_2_n_0 ),
        .D(p_0_in__0[6]),
        .Q(\debounce_logic[1].saturating_counter_reg[1]_1 [6]),
        .R(\debounce_logic[1].saturating_counter[1][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_logic[1].saturating_counter_reg[1][7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\debounce_logic[1].saturating_counter[1][7]_i_2_n_0 ),
        .D(p_0_in__0[7]),
        .Q(\debounce_logic[1].saturating_counter_reg[1]_1 [7]),
        .R(\debounce_logic[1].saturating_counter[1][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \debounce_logic[2].debounced_signal[2]_i_1 
       (.I0(\debounce_logic[2].saturating_counter[2][7]_i_4_n_0 ),
        .I1(\debounce_logic[2].saturating_counter_reg[2]_2 [6]),
        .I2(\debounce_logic[2].saturating_counter_reg[2]_2 [7]),
        .I3(\debounce_logic[2].saturating_counter_reg[2]_2 [5]),
        .I4(\debounce_logic[2].saturating_counter_reg[2]_2 [3]),
        .I5(\debounce_logic[2].saturating_counter_reg[2]_2 [4]),
        .O(\debounce_logic[2].debounced_signal[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_logic[2].debounced_signal_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\debounce_logic[2].debounced_signal[2]_i_1_n_0 ),
        .Q(D[2]),
        .R(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \debounce_logic[2].saturating_counter[2][0]_i_1 
       (.I0(\debounce_logic[2].saturating_counter_reg[2]_2 [0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \debounce_logic[2].saturating_counter[2][1]_i_1 
       (.I0(\debounce_logic[2].saturating_counter_reg[2]_2 [0]),
        .I1(\debounce_logic[2].saturating_counter_reg[2]_2 [1]),
        .O(p_0_in__1[1]));
  LUT3 #(
    .INIT(8'h6A)) 
    \debounce_logic[2].saturating_counter[2][2]_i_1 
       (.I0(\debounce_logic[2].saturating_counter_reg[2]_2 [2]),
        .I1(\debounce_logic[2].saturating_counter_reg[2]_2 [1]),
        .I2(\debounce_logic[2].saturating_counter_reg[2]_2 [0]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \debounce_logic[2].saturating_counter[2][3]_i_1 
       (.I0(\debounce_logic[2].saturating_counter_reg[2]_2 [3]),
        .I1(\debounce_logic[2].saturating_counter_reg[2]_2 [2]),
        .I2(\debounce_logic[2].saturating_counter_reg[2]_2 [0]),
        .I3(\debounce_logic[2].saturating_counter_reg[2]_2 [1]),
        .O(p_0_in__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \debounce_logic[2].saturating_counter[2][4]_i_1 
       (.I0(\debounce_logic[2].saturating_counter_reg[2]_2 [4]),
        .I1(\debounce_logic[2].saturating_counter_reg[2]_2 [3]),
        .I2(\debounce_logic[2].saturating_counter_reg[2]_2 [2]),
        .I3(\debounce_logic[2].saturating_counter_reg[2]_2 [0]),
        .I4(\debounce_logic[2].saturating_counter_reg[2]_2 [1]),
        .O(p_0_in__1[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \debounce_logic[2].saturating_counter[2][5]_i_1 
       (.I0(\debounce_logic[2].saturating_counter_reg[2]_2 [5]),
        .I1(\debounce_logic[2].saturating_counter_reg[2]_2 [1]),
        .I2(\debounce_logic[2].saturating_counter_reg[2]_2 [0]),
        .I3(\debounce_logic[2].saturating_counter_reg[2]_2 [2]),
        .I4(\debounce_logic[2].saturating_counter_reg[2]_2 [4]),
        .I5(\debounce_logic[2].saturating_counter_reg[2]_2 [3]),
        .O(p_0_in__1[5]));
  (* \PinAttr:I4:HOLD_DETOUR  = "187" *) 
  LUT5 #(
    .INIT(32'hBFFF4000)) 
    \debounce_logic[2].saturating_counter[2][6]_i_1 
       (.I0(\debounce_logic[2].saturating_counter[2][7]_i_4_n_0 ),
        .I1(\debounce_logic[2].saturating_counter_reg[2]_2 [4]),
        .I2(\debounce_logic[2].saturating_counter_reg[2]_2 [3]),
        .I3(\debounce_logic[2].saturating_counter_reg[2]_2 [5]),
        .I4(\debounce_logic[2].saturating_counter_reg[2]_2 [6]),
        .O(p_0_in__1[6]));
  LUT2 #(
    .INIT(4'h2)) 
    \debounce_logic[2].saturating_counter[2][7]_i_1 
       (.I0(\wrapping_counter[15]_i_1_n_0 ),
        .I1(Q[2]),
        .O(\debounce_logic[2].saturating_counter[2][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h2FFF0000)) 
    \debounce_logic[2].saturating_counter[2][7]_i_2 
       (.I0(\debounce_logic[2].saturating_counter[2][7]_i_4_n_0 ),
        .I1(\debounce_logic[2].saturating_counter[2][7]_i_5_n_0 ),
        .I2(\debounce_logic[2].saturating_counter_reg[2]_2 [6]),
        .I3(\debounce_logic[2].saturating_counter_reg[2]_2 [7]),
        .I4(\wrapping_counter[15]_i_1_n_0 ),
        .O(\debounce_logic[2].saturating_counter[2][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9AAAAAAAAAAAAAAA)) 
    \debounce_logic[2].saturating_counter[2][7]_i_3 
       (.I0(\debounce_logic[2].saturating_counter_reg[2]_2 [7]),
        .I1(\debounce_logic[2].saturating_counter[2][7]_i_4_n_0 ),
        .I2(\debounce_logic[2].saturating_counter_reg[2]_2 [4]),
        .I3(\debounce_logic[2].saturating_counter_reg[2]_2 [3]),
        .I4(\debounce_logic[2].saturating_counter_reg[2]_2 [5]),
        .I5(\debounce_logic[2].saturating_counter_reg[2]_2 [6]),
        .O(p_0_in__1[7]));
  LUT3 #(
    .INIT(8'h7F)) 
    \debounce_logic[2].saturating_counter[2][7]_i_4 
       (.I0(\debounce_logic[2].saturating_counter_reg[2]_2 [1]),
        .I1(\debounce_logic[2].saturating_counter_reg[2]_2 [0]),
        .I2(\debounce_logic[2].saturating_counter_reg[2]_2 [2]),
        .O(\debounce_logic[2].saturating_counter[2][7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \debounce_logic[2].saturating_counter[2][7]_i_5 
       (.I0(\debounce_logic[2].saturating_counter_reg[2]_2 [4]),
        .I1(\debounce_logic[2].saturating_counter_reg[2]_2 [3]),
        .I2(\debounce_logic[2].saturating_counter_reg[2]_2 [5]),
        .O(\debounce_logic[2].saturating_counter[2][7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_logic[2].saturating_counter_reg[2][0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\debounce_logic[2].saturating_counter[2][7]_i_2_n_0 ),
        .D(p_0_in__1[0]),
        .Q(\debounce_logic[2].saturating_counter_reg[2]_2 [0]),
        .R(\debounce_logic[2].saturating_counter[2][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_logic[2].saturating_counter_reg[2][1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\debounce_logic[2].saturating_counter[2][7]_i_2_n_0 ),
        .D(p_0_in__1[1]),
        .Q(\debounce_logic[2].saturating_counter_reg[2]_2 [1]),
        .R(\debounce_logic[2].saturating_counter[2][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_logic[2].saturating_counter_reg[2][2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\debounce_logic[2].saturating_counter[2][7]_i_2_n_0 ),
        .D(p_0_in__1[2]),
        .Q(\debounce_logic[2].saturating_counter_reg[2]_2 [2]),
        .R(\debounce_logic[2].saturating_counter[2][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_logic[2].saturating_counter_reg[2][3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\debounce_logic[2].saturating_counter[2][7]_i_2_n_0 ),
        .D(p_0_in__1[3]),
        .Q(\debounce_logic[2].saturating_counter_reg[2]_2 [3]),
        .R(\debounce_logic[2].saturating_counter[2][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_logic[2].saturating_counter_reg[2][4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\debounce_logic[2].saturating_counter[2][7]_i_2_n_0 ),
        .D(p_0_in__1[4]),
        .Q(\debounce_logic[2].saturating_counter_reg[2]_2 [4]),
        .R(\debounce_logic[2].saturating_counter[2][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_logic[2].saturating_counter_reg[2][5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\debounce_logic[2].saturating_counter[2][7]_i_2_n_0 ),
        .D(p_0_in__1[5]),
        .Q(\debounce_logic[2].saturating_counter_reg[2]_2 [5]),
        .R(\debounce_logic[2].saturating_counter[2][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_logic[2].saturating_counter_reg[2][6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\debounce_logic[2].saturating_counter[2][7]_i_2_n_0 ),
        .D(p_0_in__1[6]),
        .Q(\debounce_logic[2].saturating_counter_reg[2]_2 [6]),
        .R(\debounce_logic[2].saturating_counter[2][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_logic[2].saturating_counter_reg[2][7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\debounce_logic[2].saturating_counter[2][7]_i_2_n_0 ),
        .D(p_0_in__1[7]),
        .Q(\debounce_logic[2].saturating_counter_reg[2]_2 [7]),
        .R(\debounce_logic[2].saturating_counter[2][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \debounce_logic[3].debounced_signal[3]_i_1 
       (.I0(\debounce_logic[3].saturating_counter[3][7]_i_4_n_0 ),
        .I1(\debounce_logic[3].saturating_counter_reg[3]_3 [6]),
        .I2(\debounce_logic[3].saturating_counter_reg[3]_3 [7]),
        .I3(\debounce_logic[3].saturating_counter_reg[3]_3 [5]),
        .I4(\debounce_logic[3].saturating_counter_reg[3]_3 [3]),
        .I5(\debounce_logic[3].saturating_counter_reg[3]_3 [4]),
        .O(\debounce_logic[3].debounced_signal[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_logic[3].debounced_signal_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\debounce_logic[3].debounced_signal[3]_i_1_n_0 ),
        .Q(D[3]),
        .R(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \debounce_logic[3].saturating_counter[3][0]_i_1 
       (.I0(\debounce_logic[3].saturating_counter_reg[3]_3 [0]),
        .O(p_0_in__2[0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \debounce_logic[3].saturating_counter[3][1]_i_1 
       (.I0(\debounce_logic[3].saturating_counter_reg[3]_3 [0]),
        .I1(\debounce_logic[3].saturating_counter_reg[3]_3 [1]),
        .O(p_0_in__2[1]));
  LUT3 #(
    .INIT(8'h6A)) 
    \debounce_logic[3].saturating_counter[3][2]_i_1 
       (.I0(\debounce_logic[3].saturating_counter_reg[3]_3 [2]),
        .I1(\debounce_logic[3].saturating_counter_reg[3]_3 [1]),
        .I2(\debounce_logic[3].saturating_counter_reg[3]_3 [0]),
        .O(p_0_in__2[2]));
  (* \PinAttr:I3:HOLD_DETOUR  = "154" *) 
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \debounce_logic[3].saturating_counter[3][3]_i_1 
       (.I0(\debounce_logic[3].saturating_counter_reg[3]_3 [3]),
        .I1(\debounce_logic[3].saturating_counter_reg[3]_3 [2]),
        .I2(\debounce_logic[3].saturating_counter_reg[3]_3 [0]),
        .I3(\debounce_logic[3].saturating_counter_reg[3]_3 [1]),
        .O(p_0_in__2[3]));
  (* \PinAttr:I2:HOLD_DETOUR  = "154" *) 
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \debounce_logic[3].saturating_counter[3][4]_i_1 
       (.I0(\debounce_logic[3].saturating_counter_reg[3]_3 [4]),
        .I1(\debounce_logic[3].saturating_counter_reg[3]_3 [3]),
        .I2(\debounce_logic[3].saturating_counter_reg[3]_3 [1]),
        .I3(\debounce_logic[3].saturating_counter_reg[3]_3 [0]),
        .I4(\debounce_logic[3].saturating_counter_reg[3]_3 [2]),
        .O(p_0_in__2[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \debounce_logic[3].saturating_counter[3][5]_i_1 
       (.I0(\debounce_logic[3].saturating_counter_reg[3]_3 [5]),
        .I1(\debounce_logic[3].saturating_counter_reg[3]_3 [4]),
        .I2(\debounce_logic[3].saturating_counter_reg[3]_3 [2]),
        .I3(\debounce_logic[3].saturating_counter_reg[3]_3 [0]),
        .I4(\debounce_logic[3].saturating_counter_reg[3]_3 [1]),
        .I5(\debounce_logic[3].saturating_counter_reg[3]_3 [3]),
        .O(p_0_in__2[5]));
  LUT5 #(
    .INIT(32'hDFFF2000)) 
    \debounce_logic[3].saturating_counter[3][6]_i_1 
       (.I0(\debounce_logic[3].saturating_counter_reg[3]_3 [4]),
        .I1(\debounce_logic[3].saturating_counter[3][7]_i_4_n_0 ),
        .I2(\debounce_logic[3].saturating_counter_reg[3]_3 [3]),
        .I3(\debounce_logic[3].saturating_counter_reg[3]_3 [5]),
        .I4(\debounce_logic[3].saturating_counter_reg[3]_3 [6]),
        .O(p_0_in__2[6]));
  LUT2 #(
    .INIT(4'h2)) 
    \debounce_logic[3].saturating_counter[3][7]_i_1 
       (.I0(\wrapping_counter[15]_i_1_n_0 ),
        .I1(Q[3]),
        .O(\debounce_logic[3].saturating_counter[3][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h2FFF0000)) 
    \debounce_logic[3].saturating_counter[3][7]_i_2 
       (.I0(\debounce_logic[3].saturating_counter[3][7]_i_4_n_0 ),
        .I1(\debounce_logic[3].saturating_counter[3][7]_i_5_n_0 ),
        .I2(\debounce_logic[3].saturating_counter_reg[3]_3 [6]),
        .I3(\debounce_logic[3].saturating_counter_reg[3]_3 [7]),
        .I4(\wrapping_counter[15]_i_1_n_0 ),
        .O(\debounce_logic[3].saturating_counter[3][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA6AAAAAAAAAAAAAA)) 
    \debounce_logic[3].saturating_counter[3][7]_i_3 
       (.I0(\debounce_logic[3].saturating_counter_reg[3]_3 [7]),
        .I1(\debounce_logic[3].saturating_counter_reg[3]_3 [4]),
        .I2(\debounce_logic[3].saturating_counter[3][7]_i_4_n_0 ),
        .I3(\debounce_logic[3].saturating_counter_reg[3]_3 [3]),
        .I4(\debounce_logic[3].saturating_counter_reg[3]_3 [5]),
        .I5(\debounce_logic[3].saturating_counter_reg[3]_3 [6]),
        .O(p_0_in__2[7]));
  LUT3 #(
    .INIT(8'h7F)) 
    \debounce_logic[3].saturating_counter[3][7]_i_4 
       (.I0(\debounce_logic[3].saturating_counter_reg[3]_3 [1]),
        .I1(\debounce_logic[3].saturating_counter_reg[3]_3 [0]),
        .I2(\debounce_logic[3].saturating_counter_reg[3]_3 [2]),
        .O(\debounce_logic[3].saturating_counter[3][7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \debounce_logic[3].saturating_counter[3][7]_i_5 
       (.I0(\debounce_logic[3].saturating_counter_reg[3]_3 [4]),
        .I1(\debounce_logic[3].saturating_counter_reg[3]_3 [3]),
        .I2(\debounce_logic[3].saturating_counter_reg[3]_3 [5]),
        .O(\debounce_logic[3].saturating_counter[3][7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_logic[3].saturating_counter_reg[3][0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\debounce_logic[3].saturating_counter[3][7]_i_2_n_0 ),
        .D(p_0_in__2[0]),
        .Q(\debounce_logic[3].saturating_counter_reg[3]_3 [0]),
        .R(\debounce_logic[3].saturating_counter[3][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_logic[3].saturating_counter_reg[3][1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\debounce_logic[3].saturating_counter[3][7]_i_2_n_0 ),
        .D(p_0_in__2[1]),
        .Q(\debounce_logic[3].saturating_counter_reg[3]_3 [1]),
        .R(\debounce_logic[3].saturating_counter[3][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_logic[3].saturating_counter_reg[3][2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\debounce_logic[3].saturating_counter[3][7]_i_2_n_0 ),
        .D(p_0_in__2[2]),
        .Q(\debounce_logic[3].saturating_counter_reg[3]_3 [2]),
        .R(\debounce_logic[3].saturating_counter[3][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_logic[3].saturating_counter_reg[3][3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\debounce_logic[3].saturating_counter[3][7]_i_2_n_0 ),
        .D(p_0_in__2[3]),
        .Q(\debounce_logic[3].saturating_counter_reg[3]_3 [3]),
        .R(\debounce_logic[3].saturating_counter[3][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_logic[3].saturating_counter_reg[3][4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\debounce_logic[3].saturating_counter[3][7]_i_2_n_0 ),
        .D(p_0_in__2[4]),
        .Q(\debounce_logic[3].saturating_counter_reg[3]_3 [4]),
        .R(\debounce_logic[3].saturating_counter[3][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_logic[3].saturating_counter_reg[3][5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\debounce_logic[3].saturating_counter[3][7]_i_2_n_0 ),
        .D(p_0_in__2[5]),
        .Q(\debounce_logic[3].saturating_counter_reg[3]_3 [5]),
        .R(\debounce_logic[3].saturating_counter[3][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_logic[3].saturating_counter_reg[3][6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\debounce_logic[3].saturating_counter[3][7]_i_2_n_0 ),
        .D(p_0_in__2[6]),
        .Q(\debounce_logic[3].saturating_counter_reg[3]_3 [6]),
        .R(\debounce_logic[3].saturating_counter[3][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_logic[3].saturating_counter_reg[3][7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\debounce_logic[3].saturating_counter[3][7]_i_2_n_0 ),
        .D(p_0_in__2[7]),
        .Q(\debounce_logic[3].saturating_counter_reg[3]_3 [7]),
        .R(\debounce_logic[3].saturating_counter[3][7]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wrapping_counter[0]_i_1 
       (.I0(wrapping_counter[0]),
        .O(wrapping_counter_0));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \wrapping_counter[15]_i_1 
       (.I0(\wrapping_counter[15]_i_3_n_0 ),
        .I1(wrapping_counter[1]),
        .I2(wrapping_counter[0]),
        .I3(wrapping_counter[3]),
        .I4(wrapping_counter[2]),
        .I5(\wrapping_counter[15]_i_4_n_0 ),
        .O(\wrapping_counter[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \wrapping_counter[15]_i_3 
       (.I0(wrapping_counter[7]),
        .I1(wrapping_counter[6]),
        .I2(wrapping_counter[4]),
        .I3(wrapping_counter[5]),
        .O(\wrapping_counter[15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \wrapping_counter[15]_i_4 
       (.I0(wrapping_counter[12]),
        .I1(wrapping_counter[13]),
        .I2(wrapping_counter[14]),
        .I3(wrapping_counter[15]),
        .I4(\wrapping_counter[15]_i_5_n_0 ),
        .O(\wrapping_counter[15]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \wrapping_counter[15]_i_5 
       (.I0(wrapping_counter[11]),
        .I1(wrapping_counter[10]),
        .I2(wrapping_counter[9]),
        .I3(wrapping_counter[8]),
        .O(\wrapping_counter[15]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrapping_counter_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(wrapping_counter_0),
        .Q(wrapping_counter[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \wrapping_counter_reg[10] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\wrapping_counter_reg[12]_i_1_n_6 ),
        .Q(wrapping_counter[10]),
        .R(\wrapping_counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrapping_counter_reg[11] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\wrapping_counter_reg[12]_i_1_n_5 ),
        .Q(wrapping_counter[11]),
        .R(\wrapping_counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrapping_counter_reg[12] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\wrapping_counter_reg[12]_i_1_n_4 ),
        .Q(wrapping_counter[12]),
        .R(\wrapping_counter[15]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \wrapping_counter_reg[12]_i_1 
       (.CI(\wrapping_counter_reg[8]_i_1_n_0 ),
        .CO({\wrapping_counter_reg[12]_i_1_n_0 ,\NLW_wrapping_counter_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\wrapping_counter_reg[12]_i_1_n_4 ,\wrapping_counter_reg[12]_i_1_n_5 ,\wrapping_counter_reg[12]_i_1_n_6 ,\wrapping_counter_reg[12]_i_1_n_7 }),
        .S(wrapping_counter[12:9]));
  FDRE #(
    .INIT(1'b0)) 
    \wrapping_counter_reg[13] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\wrapping_counter_reg[15]_i_2_n_7 ),
        .Q(wrapping_counter[13]),
        .R(\wrapping_counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrapping_counter_reg[14] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\wrapping_counter_reg[15]_i_2_n_6 ),
        .Q(wrapping_counter[14]),
        .R(\wrapping_counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrapping_counter_reg[15] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\wrapping_counter_reg[15]_i_2_n_5 ),
        .Q(wrapping_counter[15]),
        .R(\wrapping_counter[15]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \wrapping_counter_reg[15]_i_2 
       (.CI(\wrapping_counter_reg[12]_i_1_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\wrapping_counter_reg[15]_i_2_n_5 ,\wrapping_counter_reg[15]_i_2_n_6 ,\wrapping_counter_reg[15]_i_2_n_7 }),
        .S({\<const0> ,wrapping_counter[15:13]}));
  FDRE #(
    .INIT(1'b0)) 
    \wrapping_counter_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\wrapping_counter_reg[4]_i_1_n_7 ),
        .Q(wrapping_counter[1]),
        .R(\wrapping_counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrapping_counter_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\wrapping_counter_reg[4]_i_1_n_6 ),
        .Q(wrapping_counter[2]),
        .R(\wrapping_counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrapping_counter_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\wrapping_counter_reg[4]_i_1_n_5 ),
        .Q(wrapping_counter[3]),
        .R(\wrapping_counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrapping_counter_reg[4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\wrapping_counter_reg[4]_i_1_n_4 ),
        .Q(wrapping_counter[4]),
        .R(\wrapping_counter[15]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \wrapping_counter_reg[4]_i_1 
       (.CI(\<const0> ),
        .CO({\wrapping_counter_reg[4]_i_1_n_0 ,\NLW_wrapping_counter_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(wrapping_counter[0]),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\wrapping_counter_reg[4]_i_1_n_4 ,\wrapping_counter_reg[4]_i_1_n_5 ,\wrapping_counter_reg[4]_i_1_n_6 ,\wrapping_counter_reg[4]_i_1_n_7 }),
        .S(wrapping_counter[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \wrapping_counter_reg[5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\wrapping_counter_reg[8]_i_1_n_7 ),
        .Q(wrapping_counter[5]),
        .R(\wrapping_counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrapping_counter_reg[6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\wrapping_counter_reg[8]_i_1_n_6 ),
        .Q(wrapping_counter[6]),
        .R(\wrapping_counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrapping_counter_reg[7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\wrapping_counter_reg[8]_i_1_n_5 ),
        .Q(wrapping_counter[7]),
        .R(\wrapping_counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrapping_counter_reg[8] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\wrapping_counter_reg[8]_i_1_n_4 ),
        .Q(wrapping_counter[8]),
        .R(\wrapping_counter[15]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \wrapping_counter_reg[8]_i_1 
       (.CI(\wrapping_counter_reg[4]_i_1_n_0 ),
        .CO({\wrapping_counter_reg[8]_i_1_n_0 ,\NLW_wrapping_counter_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\wrapping_counter_reg[8]_i_1_n_4 ,\wrapping_counter_reg[8]_i_1_n_5 ,\wrapping_counter_reg[8]_i_1_n_6 ,\wrapping_counter_reg[8]_i_1_n_7 }),
        .S(wrapping_counter[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \wrapping_counter_reg[9] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\wrapping_counter_reg[12]_i_1_n_7 ),
        .Q(wrapping_counter[9]),
        .R(\wrapping_counter[15]_i_1_n_0 ));
endmodule

module edge_detector
   (\edge_detect_pulse_reg[3]_0 ,
    Q,
    E,
    \edge_detect_pulse_reg[3]_1 ,
    \edge_detect_pulse_reg[1]_0 ,
    \sync_signal_reg[0] ,
    \COUNT_MAX_reg[11] ,
    sq_wave_leds,
    D,
    CLK_125MHZ_FPGA_IBUF_BUFG);
  output \edge_detect_pulse_reg[3]_0 ;
  output [1:0]Q;
  output [0:0]E;
  output \edge_detect_pulse_reg[3]_1 ;
  output \edge_detect_pulse_reg[1]_0 ;
  output \sync_signal_reg[0] ;
  input [0:0]\COUNT_MAX_reg[11] ;
  input [0:0]sq_wave_leds;
  input [3:0]D;
  input CLK_125MHZ_FPGA_IBUF_BUFG;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [0:0]\COUNT_MAX_reg[11] ;
  wire [3:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire [2:0]buttons_pressed;
  wire \edge_detect_pulse[0]_i_1_n_0 ;
  wire \edge_detect_pulse[1]_i_1_n_0 ;
  wire \edge_detect_pulse[2]_i_1_n_0 ;
  wire \edge_detect_pulse[3]_i_1_n_0 ;
  wire \edge_detect_pulse_reg[1]_0 ;
  wire \edge_detect_pulse_reg[3]_0 ;
  wire \edge_detect_pulse_reg[3]_1 ;
  wire [3:0]signal_in_d;
  wire [0:0]sq_wave_leds;
  wire \sync_signal_reg[0] ;

  LUT4 #(
    .INIT(16'hFF0E)) 
    \COUNT_MAX[11]_i_1 
       (.I0(buttons_pressed[0]),
        .I1(Q[0]),
        .I2(\COUNT_MAX_reg[11] ),
        .I3(Q[1]),
        .O(E));
  LUT3 #(
    .INIT(8'hEF)) 
    \COUNT_MAX[7]_i_3 
       (.I0(Q[1]),
        .I1(\COUNT_MAX_reg[11] ),
        .I2(Q[0]),
        .O(\edge_detect_pulse_reg[3]_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \COUNT_MAX[7]_i_5 
       (.I0(Q[1]),
        .I1(\COUNT_MAX_reg[11] ),
        .I2(Q[0]),
        .O(\edge_detect_pulse_reg[3]_1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \COUNT_MAX[9]_i_3 
       (.I0(Q[0]),
        .I1(\COUNT_MAX_reg[11] ),
        .O(\edge_detect_pulse_reg[1]_0 ));
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT2 #(
    .INIT(4'h2)) 
    \edge_detect_pulse[0]_i_1 
       (.I0(D[0]),
        .I1(signal_in_d[0]),
        .O(\edge_detect_pulse[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \edge_detect_pulse[1]_i_1 
       (.I0(D[1]),
        .I1(signal_in_d[1]),
        .O(\edge_detect_pulse[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \edge_detect_pulse[2]_i_1 
       (.I0(D[2]),
        .I1(signal_in_d[2]),
        .O(\edge_detect_pulse[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \edge_detect_pulse[3]_i_1 
       (.I0(D[3]),
        .I1(signal_in_d[3]),
        .O(\edge_detect_pulse[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \edge_detect_pulse_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\edge_detect_pulse[0]_i_1_n_0 ),
        .Q(buttons_pressed[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \edge_detect_pulse_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\edge_detect_pulse[1]_i_1_n_0 ),
        .Q(Q[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \edge_detect_pulse_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\edge_detect_pulse[2]_i_1_n_0 ),
        .Q(buttons_pressed[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \edge_detect_pulse_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\edge_detect_pulse[3]_i_1_n_0 ),
        .Q(Q[1]),
        .R(\<const0> ));
  LUT4 #(
    .INIT(16'hFB04)) 
    mode_i_1
       (.I0(\COUNT_MAX_reg[11] ),
        .I1(buttons_pressed[2]),
        .I2(Q[1]),
        .I3(sq_wave_leds),
        .O(\sync_signal_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \signal_in_d_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(D[0]),
        .Q(signal_in_d[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \signal_in_d_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(D[1]),
        .Q(signal_in_d[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \signal_in_d_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(D[2]),
        .Q(signal_in_d[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \signal_in_d_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(D[3]),
        .Q(signal_in_d[3]),
        .R(\<const0> ));
endmodule

module sq_wave_gen
   (CO,
    sq_wave_leds,
    wave_state,
    S,
    \code_reg[4]_0 ,
    \code_reg[2]_0 ,
    DI,
    LEDS_OBUF,
    \sample_counter_reg[0]_0 ,
    next_sample,
    CLK_125MHZ_FPGA_IBUF_BUFG,
    mode_reg_0,
    wave_state_reg_0,
    Q,
    pwm0_carry__0,
    \code_reg[4]_1 ,
    \COUNT_MAX_reg[9]_0 ,
    \COUNT_MAX_reg[3]_0 ,
    \COUNT_MAX_reg[7]_0 ,
    E);
  output [0:0]CO;
  output [0:0]sq_wave_leds;
  output wave_state;
  output [0:0]S;
  output \code_reg[4]_0 ;
  output \code_reg[2]_0 ;
  output [0:0]DI;
  output [0:0]LEDS_OBUF;
  input \sample_counter_reg[0]_0 ;
  input next_sample;
  input CLK_125MHZ_FPGA_IBUF_BUFG;
  input mode_reg_0;
  input wave_state_reg_0;
  input [0:0]Q;
  input [1:0]pwm0_carry__0;
  input [1:0]\code_reg[4]_1 ;
  input \COUNT_MAX_reg[9]_0 ;
  input \COUNT_MAX_reg[3]_0 ;
  input \COUNT_MAX_reg[7]_0 ;
  input [0:0]E;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [0:0]CO;
  wire [11:0]COUNT_MAX;
  wire [11:1]COUNT_MAX1;
  wire [11:0]COUNT_MAX13_in;
  wire \COUNT_MAX[0]_i_2_n_0 ;
  wire \COUNT_MAX[10]_i_3_n_0 ;
  wire \COUNT_MAX[10]_i_4_n_0 ;
  wire \COUNT_MAX[10]_i_5_n_0 ;
  wire \COUNT_MAX[10]_i_6_n_0 ;
  wire \COUNT_MAX[10]_i_7_n_0 ;
  wire \COUNT_MAX[11]_i_10_n_0 ;
  wire \COUNT_MAX[11]_i_11_n_0 ;
  wire \COUNT_MAX[11]_i_12_n_0 ;
  wire \COUNT_MAX[11]_i_13_n_0 ;
  wire \COUNT_MAX[11]_i_14_n_0 ;
  wire \COUNT_MAX[11]_i_3_n_0 ;
  wire \COUNT_MAX[11]_i_5_n_0 ;
  wire \COUNT_MAX[11]_i_6_n_0 ;
  wire \COUNT_MAX[11]_i_7_n_0 ;
  wire \COUNT_MAX[11]_i_8_n_0 ;
  wire \COUNT_MAX[11]_i_9_n_0 ;
  wire \COUNT_MAX[1]_i_2_n_0 ;
  wire \COUNT_MAX[1]_i_3_n_0 ;
  wire \COUNT_MAX[1]_i_4_n_0 ;
  wire \COUNT_MAX[2]_i_2_n_0 ;
  wire \COUNT_MAX[2]_i_4_n_0 ;
  wire \COUNT_MAX[2]_i_5_n_0 ;
  wire \COUNT_MAX[2]_i_6_n_0 ;
  wire \COUNT_MAX[3]_i_3_n_0 ;
  wire \COUNT_MAX[3]_i_4_n_0 ;
  wire \COUNT_MAX[3]_i_5_n_0 ;
  wire \COUNT_MAX[3]_i_6_n_0 ;
  wire \COUNT_MAX[4]_i_2_n_0 ;
  wire \COUNT_MAX[5]_i_2_n_0 ;
  wire \COUNT_MAX[6]_i_2_n_0 ;
  wire \COUNT_MAX[6]_i_4_n_0 ;
  wire \COUNT_MAX[6]_i_5_n_0 ;
  wire \COUNT_MAX[6]_i_6_n_0 ;
  wire \COUNT_MAX[6]_i_7_n_0 ;
  wire \COUNT_MAX[7]_i_4_n_0 ;
  wire \COUNT_MAX[8]_i_2_n_0 ;
  wire \COUNT_MAX[8]_i_3_n_0 ;
  wire \COUNT_MAX[8]_i_4_n_0 ;
  wire \COUNT_MAX[9]_i_2_n_0 ;
  wire \COUNT_MAX[9]_i_4_n_0 ;
  wire \COUNT_MAX[9]_i_5_n_0 ;
  wire \COUNT_MAX[9]_i_6_n_0 ;
  wire \COUNT_MAX_reg[2]_i_3_n_0 ;
  wire \COUNT_MAX_reg[3]_0 ;
  wire \COUNT_MAX_reg[3]_i_2_n_0 ;
  wire \COUNT_MAX_reg[6]_i_3_n_0 ;
  wire \COUNT_MAX_reg[7]_0 ;
  wire \COUNT_MAX_reg[7]_i_2_n_0 ;
  wire \COUNT_MAX_reg[9]_0 ;
  wire [0:0]DI;
  wire [0:0]E;
  wire [0:0]LEDS_OBUF;
  wire [0:0]Q;
  wire [0:0]S;
  wire \code[2]_i_1_n_0 ;
  wire \code[4]_i_1_n_0 ;
  wire \code_reg[2]_0 ;
  wire \code_reg[4]_0 ;
  wire [1:0]\code_reg[4]_1 ;
  wire mode_reg_0;
  wire next_sample;
  wire [11:0]p_1_in;
  wire [1:0]pwm0_carry__0;
  wire sample_counter0_carry__0_i_1_n_0;
  wire sample_counter0_carry__0_i_2_n_0;
  wire sample_counter0_carry__0_i_3_n_0;
  wire sample_counter0_carry__0_i_4_n_0;
  wire sample_counter0_carry__0_n_0;
  wire sample_counter0_carry__1_n_0;
  wire sample_counter0_carry_i_1_n_0;
  wire sample_counter0_carry_i_2_n_0;
  wire sample_counter0_carry_i_3_n_0;
  wire sample_counter0_carry_i_4_n_0;
  wire sample_counter0_carry_i_5_n_0;
  wire sample_counter0_carry_i_6_n_0;
  wire sample_counter0_carry_i_7_n_0;
  wire sample_counter0_carry_i_8_n_0;
  wire sample_counter0_carry_n_0;
  wire [11:1]sample_counter1;
  wire sample_counter1_carry__0_i_1_n_0;
  wire sample_counter1_carry__0_i_2_n_0;
  wire sample_counter1_carry__0_i_3_n_0;
  wire sample_counter1_carry__0_i_4_n_0;
  wire sample_counter1_carry__0_n_0;
  wire sample_counter1_carry__1_i_1_n_0;
  wire sample_counter1_carry__1_i_2_n_0;
  wire sample_counter1_carry__1_i_3_n_0;
  wire sample_counter1_carry__1_n_0;
  wire sample_counter1_carry_i_1_n_0;
  wire sample_counter1_carry_i_2_n_0;
  wire sample_counter1_carry_i_3_n_0;
  wire sample_counter1_carry_i_4_n_0;
  wire sample_counter1_carry_n_0;
  wire \sample_counter[0]_i_5_n_0 ;
  wire [11:0]sample_counter_reg;
  wire \sample_counter_reg[0]_0 ;
  wire \sample_counter_reg[0]_i_3_n_0 ;
  wire \sample_counter_reg[0]_i_3_n_4 ;
  wire \sample_counter_reg[0]_i_3_n_5 ;
  wire \sample_counter_reg[0]_i_3_n_6 ;
  wire \sample_counter_reg[0]_i_3_n_7 ;
  wire \sample_counter_reg[4]_i_1_n_0 ;
  wire \sample_counter_reg[4]_i_1_n_4 ;
  wire \sample_counter_reg[4]_i_1_n_5 ;
  wire \sample_counter_reg[4]_i_1_n_6 ;
  wire \sample_counter_reg[4]_i_1_n_7 ;
  wire \sample_counter_reg[8]_i_1_n_4 ;
  wire \sample_counter_reg[8]_i_1_n_5 ;
  wire \sample_counter_reg[8]_i_1_n_6 ;
  wire \sample_counter_reg[8]_i_1_n_7 ;
  wire [0:0]sq_wave_leds;
  wire wave_state;
  wire wave_state_reg_0;
  wire [3:0]\NLW_COUNT_MAX_reg[2]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_COUNT_MAX_reg[3]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_COUNT_MAX_reg[3]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_COUNT_MAX_reg[6]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_COUNT_MAX_reg[7]_i_2_CO_UNCONNECTED ;
  wire [3:0]NLW_sample_counter0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_sample_counter0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_sample_counter0_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_sample_counter0_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_sample_counter1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_sample_counter1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_sample_counter1_carry__1_CO_UNCONNECTED;
  wire [3:0]\NLW_sample_counter_reg[0]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_sample_counter_reg[4]_i_1_CO_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hABAAAAAA)) 
    \COUNT_MAX[0]_i_1 
       (.I0(\COUNT_MAX[0]_i_2_n_0 ),
        .I1(\COUNT_MAX[10]_i_3_n_0 ),
        .I2(Q),
        .I3(\code_reg[4]_1 [0]),
        .I4(COUNT_MAX13_in[0]),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'hEAEAEAEAEAFFEAEA)) 
    \COUNT_MAX[0]_i_2 
       (.I0(\code_reg[4]_1 [1]),
        .I1(\COUNT_MAX[8]_i_4_n_0 ),
        .I2(COUNT_MAX[0]),
        .I3(\COUNT_MAX[1]_i_3_n_0 ),
        .I4(COUNT_MAX[1]),
        .I5(\COUNT_MAX_reg[9]_0 ),
        .O(\COUNT_MAX[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000000F2)) 
    \COUNT_MAX[10]_i_1 
       (.I0(COUNT_MAX13_in[10]),
        .I1(\COUNT_MAX[10]_i_3_n_0 ),
        .I2(\COUNT_MAX[10]_i_4_n_0 ),
        .I3(\code_reg[4]_1 [1]),
        .I4(\COUNT_MAX[10]_i_5_n_0 ),
        .O(p_1_in[10]));
  LUT6 #(
    .INIT(64'hEEEEEEEEAAAAEAAA)) 
    \COUNT_MAX[10]_i_3 
       (.I0(sq_wave_leds),
        .I1(COUNT_MAX[11]),
        .I2(\COUNT_MAX[10]_i_6_n_0 ),
        .I3(COUNT_MAX[9]),
        .I4(\COUNT_MAX[10]_i_7_n_0 ),
        .I5(COUNT_MAX[10]),
        .O(\COUNT_MAX[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF1000FFFFFFFF)) 
    \COUNT_MAX[10]_i_4 
       (.I0(COUNT_MAX[10]),
        .I1(COUNT_MAX[11]),
        .I2(sq_wave_leds),
        .I3(COUNT_MAX[9]),
        .I4(Q),
        .I5(\code_reg[4]_1 [0]),
        .O(\COUNT_MAX[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h51FB000051FB51FB)) 
    \COUNT_MAX[10]_i_5 
       (.I0(sq_wave_leds),
        .I1(COUNT_MAX1[10]),
        .I2(\COUNT_MAX[11]_i_5_n_0 ),
        .I3(COUNT_MAX[11]),
        .I4(Q),
        .I5(\code_reg[4]_1 [0]),
        .O(\COUNT_MAX[10]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hEEEAEEAA)) 
    \COUNT_MAX[10]_i_6 
       (.I0(COUNT_MAX[4]),
        .I1(COUNT_MAX[3]),
        .I2(COUNT_MAX[1]),
        .I3(COUNT_MAX[2]),
        .I4(COUNT_MAX[0]),
        .O(\COUNT_MAX[10]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \COUNT_MAX[10]_i_7 
       (.I0(COUNT_MAX[5]),
        .I1(COUNT_MAX[8]),
        .I2(COUNT_MAX[6]),
        .I3(COUNT_MAX[7]),
        .O(\COUNT_MAX[10]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \COUNT_MAX[11]_i_10 
       (.I0(COUNT_MAX[9]),
        .O(\COUNT_MAX[11]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \COUNT_MAX[11]_i_11 
       (.I0(COUNT_MAX[8]),
        .O(\COUNT_MAX[11]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \COUNT_MAX[11]_i_12 
       (.I0(COUNT_MAX[5]),
        .I1(COUNT_MAX[4]),
        .I2(COUNT_MAX[7]),
        .I3(COUNT_MAX[6]),
        .O(\COUNT_MAX[11]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \COUNT_MAX[11]_i_13 
       (.I0(COUNT_MAX[2]),
        .I1(COUNT_MAX[1]),
        .I2(COUNT_MAX[3]),
        .O(\COUNT_MAX[11]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \COUNT_MAX[11]_i_14 
       (.I0(COUNT_MAX[10]),
        .I1(COUNT_MAX[11]),
        .O(\COUNT_MAX[11]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000AAA8AA)) 
    \COUNT_MAX[11]_i_2 
       (.I0(\COUNT_MAX[11]_i_3_n_0 ),
        .I1(COUNT_MAX1[11]),
        .I2(\COUNT_MAX[11]_i_5_n_0 ),
        .I3(\COUNT_MAX[11]_i_6_n_0 ),
        .I4(sq_wave_leds),
        .I5(\code_reg[4]_1 [1]),
        .O(p_1_in[11]));
  LUT6 #(
    .INIT(64'hFF5D5D5D5D5D5D5D)) 
    \COUNT_MAX[11]_i_3 
       (.I0(\COUNT_MAX_reg[9]_0 ),
        .I1(COUNT_MAX13_in[11]),
        .I2(\COUNT_MAX[10]_i_3_n_0 ),
        .I3(\COUNT_MAX[11]_i_7_n_0 ),
        .I4(sq_wave_leds),
        .I5(COUNT_MAX[10]),
        .O(\COUNT_MAX[11]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \COUNT_MAX[11]_i_5 
       (.I0(COUNT_MAX[8]),
        .I1(COUNT_MAX[9]),
        .I2(COUNT_MAX[10]),
        .I3(COUNT_MAX[11]),
        .I4(\COUNT_MAX[11]_i_12_n_0 ),
        .O(\COUNT_MAX[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FEFFFFFF)) 
    \COUNT_MAX[11]_i_6 
       (.I0(\COUNT_MAX[11]_i_13_n_0 ),
        .I1(COUNT_MAX[8]),
        .I2(COUNT_MAX[9]),
        .I3(\COUNT_MAX[11]_i_14_n_0 ),
        .I4(\COUNT_MAX[11]_i_12_n_0 ),
        .I5(\COUNT_MAX_reg[9]_0 ),
        .O(\COUNT_MAX[11]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h11110111)) 
    \COUNT_MAX[11]_i_7 
       (.I0(COUNT_MAX[11]),
        .I1(COUNT_MAX[9]),
        .I2(\COUNT_MAX[9]_i_5_n_0 ),
        .I3(COUNT_MAX[4]),
        .I4(\COUNT_MAX[10]_i_7_n_0 ),
        .O(\COUNT_MAX[11]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \COUNT_MAX[11]_i_8 
       (.I0(COUNT_MAX[11]),
        .O(\COUNT_MAX[11]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \COUNT_MAX[11]_i_9 
       (.I0(COUNT_MAX[10]),
        .O(\COUNT_MAX[11]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFAFAFFFE)) 
    \COUNT_MAX[1]_i_1 
       (.I0(\COUNT_MAX[1]_i_2_n_0 ),
        .I1(COUNT_MAX[2]),
        .I2(\code_reg[4]_1 [1]),
        .I3(\COUNT_MAX[1]_i_3_n_0 ),
        .I4(\COUNT_MAX[1]_i_4_n_0 ),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'h00E000E0000000E0)) 
    \COUNT_MAX[1]_i_2 
       (.I0(COUNT_MAX13_in[1]),
        .I1(\COUNT_MAX[10]_i_3_n_0 ),
        .I2(\code_reg[4]_1 [0]),
        .I3(Q),
        .I4(\COUNT_MAX[9]_i_2_n_0 ),
        .I5(COUNT_MAX[0]),
        .O(\COUNT_MAX[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h01000000FFFFFFFF)) 
    \COUNT_MAX[1]_i_3 
       (.I0(\COUNT_MAX[11]_i_13_n_0 ),
        .I1(COUNT_MAX[8]),
        .I2(COUNT_MAX[9]),
        .I3(\COUNT_MAX[11]_i_14_n_0 ),
        .I4(\COUNT_MAX[11]_i_12_n_0 ),
        .I5(sq_wave_leds),
        .O(\COUNT_MAX[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \COUNT_MAX[1]_i_4 
       (.I0(COUNT_MAX1[1]),
        .I1(\COUNT_MAX[3]_i_6_n_0 ),
        .I2(Q),
        .I3(\code_reg[4]_1 [0]),
        .O(\COUNT_MAX[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF3111)) 
    \COUNT_MAX[2]_i_1 
       (.I0(\COUNT_MAX[2]_i_2_n_0 ),
        .I1(\code_reg[4]_1 [1]),
        .I2(COUNT_MAX1[2]),
        .I3(\COUNT_MAX[8]_i_4_n_0 ),
        .I4(\COUNT_MAX[2]_i_4_n_0 ),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'hDDDFFFFFDDDFDDDF)) 
    \COUNT_MAX[2]_i_2 
       (.I0(\code_reg[4]_1 [0]),
        .I1(Q),
        .I2(\COUNT_MAX[10]_i_3_n_0 ),
        .I3(COUNT_MAX13_in[2]),
        .I4(COUNT_MAX[1]),
        .I5(\COUNT_MAX[9]_i_2_n_0 ),
        .O(\COUNT_MAX[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \COUNT_MAX[2]_i_4 
       (.I0(\code_reg[4]_1 [1]),
        .I1(sq_wave_leds),
        .I2(COUNT_MAX[3]),
        .I3(\COUNT_MAX[11]_i_6_n_0 ),
        .O(\COUNT_MAX[2]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \COUNT_MAX[2]_i_5 
       (.I0(COUNT_MAX[2]),
        .O(\COUNT_MAX[2]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \COUNT_MAX[2]_i_6 
       (.I0(COUNT_MAX[1]),
        .O(\COUNT_MAX[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4F4F400000000)) 
    \COUNT_MAX[3]_i_1 
       (.I0(\COUNT_MAX[10]_i_3_n_0 ),
        .I1(COUNT_MAX13_in[3]),
        .I2(\COUNT_MAX_reg[3]_0 ),
        .I3(COUNT_MAX[2]),
        .I4(\COUNT_MAX[9]_i_2_n_0 ),
        .I5(\COUNT_MAX[3]_i_3_n_0 ),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \COUNT_MAX[3]_i_3 
       (.I0(\code_reg[4]_1 [1]),
        .I1(\COUNT_MAX_reg[9]_0 ),
        .I2(COUNT_MAX[4]),
        .I3(sq_wave_leds),
        .I4(\COUNT_MAX[3]_i_6_n_0 ),
        .I5(COUNT_MAX1[3]),
        .O(\COUNT_MAX[3]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \COUNT_MAX[3]_i_4 
       (.I0(COUNT_MAX[3]),
        .O(\COUNT_MAX[3]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \COUNT_MAX[3]_i_5 
       (.I0(COUNT_MAX[1]),
        .O(\COUNT_MAX[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFD)) 
    \COUNT_MAX[3]_i_6 
       (.I0(\COUNT_MAX[11]_i_12_n_0 ),
        .I1(COUNT_MAX[11]),
        .I2(COUNT_MAX[10]),
        .I3(COUNT_MAX[9]),
        .I4(COUNT_MAX[8]),
        .I5(sq_wave_leds),
        .O(\COUNT_MAX[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A200A2A2)) 
    \COUNT_MAX[4]_i_1 
       (.I0(\COUNT_MAX[4]_i_2_n_0 ),
        .I1(\COUNT_MAX[8]_i_3_n_0 ),
        .I2(COUNT_MAX[5]),
        .I3(COUNT_MAX1[4]),
        .I4(\COUNT_MAX[8]_i_4_n_0 ),
        .I5(\code_reg[4]_1 [1]),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'hFFFFDDFDDDFDDDFD)) 
    \COUNT_MAX[4]_i_2 
       (.I0(\code_reg[4]_1 [0]),
        .I1(Q),
        .I2(COUNT_MAX13_in[4]),
        .I3(\COUNT_MAX[10]_i_3_n_0 ),
        .I4(COUNT_MAX[3]),
        .I5(\COUNT_MAX[9]_i_2_n_0 ),
        .O(\COUNT_MAX[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A200A2A2)) 
    \COUNT_MAX[5]_i_1 
       (.I0(\COUNT_MAX[5]_i_2_n_0 ),
        .I1(\COUNT_MAX[8]_i_3_n_0 ),
        .I2(COUNT_MAX[6]),
        .I3(COUNT_MAX1[5]),
        .I4(\COUNT_MAX[8]_i_4_n_0 ),
        .I5(\code_reg[4]_1 [1]),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'hFFFFDDFDDDFDDDFD)) 
    \COUNT_MAX[5]_i_2 
       (.I0(\code_reg[4]_1 [0]),
        .I1(Q),
        .I2(COUNT_MAX13_in[5]),
        .I3(\COUNT_MAX[10]_i_3_n_0 ),
        .I4(COUNT_MAX[4]),
        .I5(\COUNT_MAX[9]_i_2_n_0 ),
        .O(\COUNT_MAX[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A200A2A2)) 
    \COUNT_MAX[6]_i_1 
       (.I0(\COUNT_MAX[6]_i_2_n_0 ),
        .I1(\COUNT_MAX[8]_i_3_n_0 ),
        .I2(COUNT_MAX[7]),
        .I3(COUNT_MAX1[6]),
        .I4(\COUNT_MAX[8]_i_4_n_0 ),
        .I5(\code_reg[4]_1 [1]),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'hFFFFDDFDDDFDDDFD)) 
    \COUNT_MAX[6]_i_2 
       (.I0(\code_reg[4]_1 [0]),
        .I1(Q),
        .I2(COUNT_MAX13_in[6]),
        .I3(\COUNT_MAX[10]_i_3_n_0 ),
        .I4(COUNT_MAX[5]),
        .I5(\COUNT_MAX[9]_i_2_n_0 ),
        .O(\COUNT_MAX[6]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \COUNT_MAX[6]_i_4 
       (.I0(COUNT_MAX[7]),
        .O(\COUNT_MAX[6]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \COUNT_MAX[6]_i_5 
       (.I0(COUNT_MAX[6]),
        .O(\COUNT_MAX[6]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \COUNT_MAX[6]_i_6 
       (.I0(COUNT_MAX[5]),
        .O(\COUNT_MAX[6]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \COUNT_MAX[6]_i_7 
       (.I0(COUNT_MAX[4]),
        .O(\COUNT_MAX[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFF2F2F200000000)) 
    \COUNT_MAX[7]_i_1 
       (.I0(COUNT_MAX13_in[7]),
        .I1(\COUNT_MAX[10]_i_3_n_0 ),
        .I2(\COUNT_MAX_reg[3]_0 ),
        .I3(COUNT_MAX[6]),
        .I4(\COUNT_MAX[9]_i_2_n_0 ),
        .I5(\COUNT_MAX[7]_i_4_n_0 ),
        .O(p_1_in[7]));
  LUT6 #(
    .INIT(64'hEFEEFFFFEFEEFFAA)) 
    \COUNT_MAX[7]_i_4 
       (.I0(\COUNT_MAX_reg[7]_0 ),
        .I1(COUNT_MAX[8]),
        .I2(\COUNT_MAX[11]_i_13_n_0 ),
        .I3(\COUNT_MAX[11]_i_5_n_0 ),
        .I4(sq_wave_leds),
        .I5(COUNT_MAX1[7]),
        .O(\COUNT_MAX[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A200A2A2)) 
    \COUNT_MAX[8]_i_1 
       (.I0(\COUNT_MAX[8]_i_2_n_0 ),
        .I1(\COUNT_MAX[8]_i_3_n_0 ),
        .I2(COUNT_MAX[9]),
        .I3(COUNT_MAX1[8]),
        .I4(\COUNT_MAX[8]_i_4_n_0 ),
        .I5(\code_reg[4]_1 [1]),
        .O(p_1_in[8]));
  LUT6 #(
    .INIT(64'hFFFFDDFDDDFDDDFD)) 
    \COUNT_MAX[8]_i_2 
       (.I0(\code_reg[4]_1 [0]),
        .I1(Q),
        .I2(COUNT_MAX13_in[8]),
        .I3(\COUNT_MAX[10]_i_3_n_0 ),
        .I4(COUNT_MAX[7]),
        .I5(\COUNT_MAX[9]_i_2_n_0 ),
        .O(\COUNT_MAX[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A2A2A222)) 
    \COUNT_MAX[8]_i_3 
       (.I0(sq_wave_leds),
        .I1(\COUNT_MAX[11]_i_5_n_0 ),
        .I2(COUNT_MAX[3]),
        .I3(COUNT_MAX[1]),
        .I4(COUNT_MAX[2]),
        .I5(\COUNT_MAX_reg[9]_0 ),
        .O(\COUNT_MAX[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000054555555)) 
    \COUNT_MAX[8]_i_4 
       (.I0(sq_wave_leds),
        .I1(COUNT_MAX[8]),
        .I2(COUNT_MAX[9]),
        .I3(\COUNT_MAX[11]_i_14_n_0 ),
        .I4(\COUNT_MAX[11]_i_12_n_0 ),
        .I5(\COUNT_MAX_reg[9]_0 ),
        .O(\COUNT_MAX[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000008F88FFFF)) 
    \COUNT_MAX[9]_i_1 
       (.I0(\COUNT_MAX[9]_i_2_n_0 ),
        .I1(COUNT_MAX[8]),
        .I2(\COUNT_MAX[10]_i_3_n_0 ),
        .I3(COUNT_MAX13_in[9]),
        .I4(\COUNT_MAX_reg[9]_0 ),
        .I5(\COUNT_MAX[9]_i_4_n_0 ),
        .O(p_1_in[9]));
  LUT6 #(
    .INIT(64'h0111555500000000)) 
    \COUNT_MAX[9]_i_2 
       (.I0(COUNT_MAX[11]),
        .I1(COUNT_MAX[9]),
        .I2(\COUNT_MAX[9]_i_5_n_0 ),
        .I3(\COUNT_MAX[9]_i_6_n_0 ),
        .I4(COUNT_MAX[10]),
        .I5(sq_wave_leds),
        .O(\COUNT_MAX[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAEAEAEAEFFAEAEAE)) 
    \COUNT_MAX[9]_i_4 
       (.I0(\code_reg[4]_1 [1]),
        .I1(\COUNT_MAX[8]_i_4_n_0 ),
        .I2(COUNT_MAX1[9]),
        .I3(\COUNT_MAX[11]_i_6_n_0 ),
        .I4(sq_wave_leds),
        .I5(COUNT_MAX[10]),
        .O(\COUNT_MAX[9]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hEC00)) 
    \COUNT_MAX[9]_i_5 
       (.I0(COUNT_MAX[0]),
        .I1(COUNT_MAX[2]),
        .I2(COUNT_MAX[1]),
        .I3(COUNT_MAX[3]),
        .O(\COUNT_MAX[9]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \COUNT_MAX[9]_i_6 
       (.I0(COUNT_MAX[4]),
        .I1(COUNT_MAX[7]),
        .I2(COUNT_MAX[6]),
        .I3(COUNT_MAX[8]),
        .I4(COUNT_MAX[5]),
        .O(\COUNT_MAX[9]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \COUNT_MAX_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(p_1_in[0]),
        .Q(COUNT_MAX[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \COUNT_MAX_reg[10] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(p_1_in[10]),
        .Q(COUNT_MAX[10]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \COUNT_MAX_reg[10]_i_2 
       (.CI(\COUNT_MAX_reg[7]_i_2_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(COUNT_MAX13_in[11:8]),
        .S(COUNT_MAX[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \COUNT_MAX_reg[11] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(p_1_in[11]),
        .Q(COUNT_MAX[11]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \COUNT_MAX_reg[11]_i_4 
       (.CI(\COUNT_MAX_reg[6]_i_3_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,COUNT_MAX[10:8]}),
        .O(COUNT_MAX1[11:8]),
        .S({\COUNT_MAX[11]_i_8_n_0 ,\COUNT_MAX[11]_i_9_n_0 ,\COUNT_MAX[11]_i_10_n_0 ,\COUNT_MAX[11]_i_11_n_0 }));
  FDRE #(
    .INIT(1'b1)) 
    \COUNT_MAX_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(p_1_in[1]),
        .Q(COUNT_MAX[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \COUNT_MAX_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(p_1_in[2]),
        .Q(COUNT_MAX[2]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 \COUNT_MAX_reg[2]_i_3 
       (.CI(\<const0> ),
        .CO({\COUNT_MAX_reg[2]_i_3_n_0 ,\NLW_COUNT_MAX_reg[2]_i_3_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,COUNT_MAX[2:1],\<const0> }),
        .O({COUNT_MAX1[3:1],COUNT_MAX13_in[0]}),
        .S({COUNT_MAX[3],\COUNT_MAX[2]_i_5_n_0 ,\COUNT_MAX[2]_i_6_n_0 ,COUNT_MAX[0]}));
  FDRE #(
    .INIT(1'b1)) 
    \COUNT_MAX_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(p_1_in[3]),
        .Q(COUNT_MAX[3]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 \COUNT_MAX_reg[3]_i_2 
       (.CI(\<const0> ),
        .CO({\COUNT_MAX_reg[3]_i_2_n_0 ,\NLW_COUNT_MAX_reg[3]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({COUNT_MAX[3],\<const0> ,COUNT_MAX[1],\<const0> }),
        .O({COUNT_MAX13_in[3:1],\NLW_COUNT_MAX_reg[3]_i_2_O_UNCONNECTED [0]}),
        .S({\COUNT_MAX[3]_i_4_n_0 ,COUNT_MAX[2],\COUNT_MAX[3]_i_5_n_0 ,COUNT_MAX[0]}));
  FDRE #(
    .INIT(1'b0)) 
    \COUNT_MAX_reg[4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(p_1_in[4]),
        .Q(COUNT_MAX[4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \COUNT_MAX_reg[5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(p_1_in[5]),
        .Q(COUNT_MAX[5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \COUNT_MAX_reg[6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(p_1_in[6]),
        .Q(COUNT_MAX[6]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \COUNT_MAX_reg[6]_i_3 
       (.CI(\COUNT_MAX_reg[2]_i_3_n_0 ),
        .CO({\COUNT_MAX_reg[6]_i_3_n_0 ,\NLW_COUNT_MAX_reg[6]_i_3_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI(COUNT_MAX[7:4]),
        .O(COUNT_MAX1[7:4]),
        .S({\COUNT_MAX[6]_i_4_n_0 ,\COUNT_MAX[6]_i_5_n_0 ,\COUNT_MAX[6]_i_6_n_0 ,\COUNT_MAX[6]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b1)) 
    \COUNT_MAX_reg[7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(p_1_in[7]),
        .Q(COUNT_MAX[7]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \COUNT_MAX_reg[7]_i_2 
       (.CI(\COUNT_MAX_reg[3]_i_2_n_0 ),
        .CO({\COUNT_MAX_reg[7]_i_2_n_0 ,\NLW_COUNT_MAX_reg[7]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(COUNT_MAX13_in[7:4]),
        .S(COUNT_MAX[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \COUNT_MAX_reg[8] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(p_1_in[8]),
        .Q(COUNT_MAX[8]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \COUNT_MAX_reg[9] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(p_1_in[9]),
        .Q(COUNT_MAX[9]),
        .R(\<const0> ));
  GND GND
       (.G(\<const0> ));
  LUT2 #(
    .INIT(4'h2)) 
    \LEDS_OBUF[0]_inst_i_1 
       (.I0(sq_wave_leds),
        .I1(Q),
        .O(LEDS_OBUF));
  VCC VCC
       (.P(\<const1> ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \code[2]_i_1 
       (.I0(\code_reg[2]_0 ),
        .I1(\code_reg[4]_1 [1]),
        .I2(wave_state),
        .O(\code[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \code[4]_i_1 
       (.I0(\code_reg[4]_0 ),
        .I1(\code_reg[4]_1 [1]),
        .I2(wave_state),
        .O(\code[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \code_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\code[2]_i_1_n_0 ),
        .Q(\code_reg[2]_0 ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \code_reg[4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\code[4]_i_1_n_0 ),
        .Q(\code_reg[4]_0 ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    mode_reg
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(mode_reg_0),
        .Q(sq_wave_leds),
        .R(\<const0> ));
  LUT5 #(
    .INIT(32'h00002F02)) 
    pwm0_carry__0_i_1
       (.I0(\code_reg[2]_0 ),
        .I1(pwm0_carry__0[0]),
        .I2(pwm0_carry__0[1]),
        .I3(\code_reg[4]_0 ),
        .I4(Q),
        .O(DI));
  LUT5 #(
    .INIT(32'h41000A4B)) 
    pwm0_carry__0_i_2
       (.I0(Q),
        .I1(\code_reg[4]_0 ),
        .I2(pwm0_carry__0[1]),
        .I3(\code_reg[2]_0 ),
        .I4(pwm0_carry__0[0]),
        .O(S));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 sample_counter0_carry
       (.CI(\<const0> ),
        .CO({sample_counter0_carry_n_0,NLW_sample_counter0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const1> ),
        .DI({sample_counter0_carry_i_1_n_0,sample_counter0_carry_i_2_n_0,sample_counter0_carry_i_3_n_0,sample_counter0_carry_i_4_n_0}),
        .S({sample_counter0_carry_i_5_n_0,sample_counter0_carry_i_6_n_0,sample_counter0_carry_i_7_n_0,sample_counter0_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 sample_counter0_carry__0
       (.CI(sample_counter0_carry_n_0),
        .CO({sample_counter0_carry__0_n_0,NLW_sample_counter0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,sample_counter0_carry__0_i_1_n_0,sample_counter0_carry__0_i_2_n_0}),
        .S({sample_counter1_carry__1_n_0,sample_counter1_carry__1_n_0,sample_counter0_carry__0_i_3_n_0,sample_counter0_carry__0_i_4_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    sample_counter0_carry__0_i_1
       (.I0(sample_counter_reg[10]),
        .I1(sample_counter1[10]),
        .I2(sample_counter1[11]),
        .I3(sample_counter_reg[11]),
        .O(sample_counter0_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    sample_counter0_carry__0_i_2
       (.I0(sample_counter_reg[8]),
        .I1(sample_counter1[8]),
        .I2(sample_counter1[9]),
        .I3(sample_counter_reg[9]),
        .O(sample_counter0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sample_counter0_carry__0_i_3
       (.I0(sample_counter_reg[11]),
        .I1(sample_counter1[11]),
        .I2(sample_counter1[10]),
        .I3(sample_counter_reg[10]),
        .O(sample_counter0_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sample_counter0_carry__0_i_4
       (.I0(sample_counter_reg[9]),
        .I1(sample_counter1[9]),
        .I2(sample_counter1[8]),
        .I3(sample_counter_reg[8]),
        .O(sample_counter0_carry__0_i_4_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 sample_counter0_carry__1
       (.CI(sample_counter0_carry__0_n_0),
        .CO({sample_counter0_carry__1_n_0,NLW_sample_counter0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({sample_counter1_carry__1_n_0,sample_counter1_carry__1_n_0,sample_counter1_carry__1_n_0,sample_counter1_carry__1_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 sample_counter0_carry__2
       (.CI(sample_counter0_carry__1_n_0),
        .CO({CO,NLW_sample_counter0_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({sample_counter1_carry__1_n_0,sample_counter1_carry__1_n_0,sample_counter1_carry__1_n_0,sample_counter1_carry__1_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    sample_counter0_carry_i_1
       (.I0(sample_counter_reg[6]),
        .I1(sample_counter1[6]),
        .I2(sample_counter1[7]),
        .I3(sample_counter_reg[7]),
        .O(sample_counter0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    sample_counter0_carry_i_2
       (.I0(sample_counter_reg[4]),
        .I1(sample_counter1[4]),
        .I2(sample_counter1[5]),
        .I3(sample_counter_reg[5]),
        .O(sample_counter0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    sample_counter0_carry_i_3
       (.I0(sample_counter_reg[2]),
        .I1(sample_counter1[2]),
        .I2(sample_counter1[3]),
        .I3(sample_counter_reg[3]),
        .O(sample_counter0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h8F08)) 
    sample_counter0_carry_i_4
       (.I0(COUNT_MAX[0]),
        .I1(sample_counter_reg[0]),
        .I2(sample_counter1[1]),
        .I3(sample_counter_reg[1]),
        .O(sample_counter0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sample_counter0_carry_i_5
       (.I0(sample_counter_reg[7]),
        .I1(sample_counter1[7]),
        .I2(sample_counter1[6]),
        .I3(sample_counter_reg[6]),
        .O(sample_counter0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sample_counter0_carry_i_6
       (.I0(sample_counter_reg[5]),
        .I1(sample_counter1[5]),
        .I2(sample_counter1[4]),
        .I3(sample_counter_reg[4]),
        .O(sample_counter0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sample_counter0_carry_i_7
       (.I0(sample_counter_reg[3]),
        .I1(sample_counter1[3]),
        .I2(sample_counter1[2]),
        .I3(sample_counter_reg[2]),
        .O(sample_counter0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h0990)) 
    sample_counter0_carry_i_8
       (.I0(sample_counter_reg[1]),
        .I1(sample_counter1[1]),
        .I2(COUNT_MAX[0]),
        .I3(sample_counter_reg[0]),
        .O(sample_counter0_carry_i_8_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 sample_counter1_carry
       (.CI(\<const0> ),
        .CO({sample_counter1_carry_n_0,NLW_sample_counter1_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(COUNT_MAX[0]),
        .DI(COUNT_MAX[4:1]),
        .O(sample_counter1[4:1]),
        .S({sample_counter1_carry_i_1_n_0,sample_counter1_carry_i_2_n_0,sample_counter1_carry_i_3_n_0,sample_counter1_carry_i_4_n_0}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 sample_counter1_carry__0
       (.CI(sample_counter1_carry_n_0),
        .CO({sample_counter1_carry__0_n_0,NLW_sample_counter1_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const0> ),
        .DI(COUNT_MAX[8:5]),
        .O(sample_counter1[8:5]),
        .S({sample_counter1_carry__0_i_1_n_0,sample_counter1_carry__0_i_2_n_0,sample_counter1_carry__0_i_3_n_0,sample_counter1_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    sample_counter1_carry__0_i_1
       (.I0(COUNT_MAX[8]),
        .O(sample_counter1_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sample_counter1_carry__0_i_2
       (.I0(COUNT_MAX[7]),
        .O(sample_counter1_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sample_counter1_carry__0_i_3
       (.I0(COUNT_MAX[6]),
        .O(sample_counter1_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sample_counter1_carry__0_i_4
       (.I0(COUNT_MAX[5]),
        .O(sample_counter1_carry__0_i_4_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 sample_counter1_carry__1
       (.CI(sample_counter1_carry__0_n_0),
        .CO({sample_counter1_carry__1_n_0,NLW_sample_counter1_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,COUNT_MAX[11:9]}),
        .O(sample_counter1[11:9]),
        .S({\<const1> ,sample_counter1_carry__1_i_1_n_0,sample_counter1_carry__1_i_2_n_0,sample_counter1_carry__1_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    sample_counter1_carry__1_i_1
       (.I0(COUNT_MAX[11]),
        .O(sample_counter1_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sample_counter1_carry__1_i_2
       (.I0(COUNT_MAX[10]),
        .O(sample_counter1_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sample_counter1_carry__1_i_3
       (.I0(COUNT_MAX[9]),
        .O(sample_counter1_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sample_counter1_carry_i_1
       (.I0(COUNT_MAX[4]),
        .O(sample_counter1_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sample_counter1_carry_i_2
       (.I0(COUNT_MAX[3]),
        .O(sample_counter1_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sample_counter1_carry_i_3
       (.I0(COUNT_MAX[2]),
        .O(sample_counter1_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sample_counter1_carry_i_4
       (.I0(COUNT_MAX[1]),
        .O(sample_counter1_carry_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \sample_counter[0]_i_5 
       (.I0(sample_counter_reg[0]),
        .O(\sample_counter[0]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sample_counter_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\sample_counter_reg[0]_i_3_n_7 ),
        .Q(sample_counter_reg[0]),
        .R(\sample_counter_reg[0]_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \sample_counter_reg[0]_i_3 
       (.CI(\<const0> ),
        .CO({\sample_counter_reg[0]_i_3_n_0 ,\NLW_sample_counter_reg[0]_i_3_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O({\sample_counter_reg[0]_i_3_n_4 ,\sample_counter_reg[0]_i_3_n_5 ,\sample_counter_reg[0]_i_3_n_6 ,\sample_counter_reg[0]_i_3_n_7 }),
        .S({sample_counter_reg[3:1],\sample_counter[0]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sample_counter_reg[10] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\sample_counter_reg[8]_i_1_n_5 ),
        .Q(sample_counter_reg[10]),
        .R(\sample_counter_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sample_counter_reg[11] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\sample_counter_reg[8]_i_1_n_4 ),
        .Q(sample_counter_reg[11]),
        .R(\sample_counter_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sample_counter_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\sample_counter_reg[0]_i_3_n_6 ),
        .Q(sample_counter_reg[1]),
        .R(\sample_counter_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sample_counter_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\sample_counter_reg[0]_i_3_n_5 ),
        .Q(sample_counter_reg[2]),
        .R(\sample_counter_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sample_counter_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\sample_counter_reg[0]_i_3_n_4 ),
        .Q(sample_counter_reg[3]),
        .R(\sample_counter_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sample_counter_reg[4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\sample_counter_reg[4]_i_1_n_7 ),
        .Q(sample_counter_reg[4]),
        .R(\sample_counter_reg[0]_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \sample_counter_reg[4]_i_1 
       (.CI(\sample_counter_reg[0]_i_3_n_0 ),
        .CO({\sample_counter_reg[4]_i_1_n_0 ,\NLW_sample_counter_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\sample_counter_reg[4]_i_1_n_4 ,\sample_counter_reg[4]_i_1_n_5 ,\sample_counter_reg[4]_i_1_n_6 ,\sample_counter_reg[4]_i_1_n_7 }),
        .S(sample_counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \sample_counter_reg[5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\sample_counter_reg[4]_i_1_n_6 ),
        .Q(sample_counter_reg[5]),
        .R(\sample_counter_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sample_counter_reg[6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\sample_counter_reg[4]_i_1_n_5 ),
        .Q(sample_counter_reg[6]),
        .R(\sample_counter_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sample_counter_reg[7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\sample_counter_reg[4]_i_1_n_4 ),
        .Q(sample_counter_reg[7]),
        .R(\sample_counter_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sample_counter_reg[8] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\sample_counter_reg[8]_i_1_n_7 ),
        .Q(sample_counter_reg[8]),
        .R(\sample_counter_reg[0]_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \sample_counter_reg[8]_i_1 
       (.CI(\sample_counter_reg[4]_i_1_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\sample_counter_reg[8]_i_1_n_4 ,\sample_counter_reg[8]_i_1_n_5 ,\sample_counter_reg[8]_i_1_n_6 ,\sample_counter_reg[8]_i_1_n_7 }),
        .S(sample_counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \sample_counter_reg[9] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\sample_counter_reg[8]_i_1_n_6 ),
        .Q(sample_counter_reg[9]),
        .R(\sample_counter_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    wave_state_reg
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(wave_state_reg_0),
        .Q(wave_state),
        .R(\<const0> ));
endmodule

module synchronizer
   (Q,
    D,
    CLK_125MHZ_FPGA_IBUF_BUFG);
  output [3:0]Q;
  input [3:0]D;
  input CLK_125MHZ_FPGA_IBUF_BUFG;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [3:0]D;
  wire [3:0]Q;
  wire [3:0]middle;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* inverted = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \middle_reg[0]_inv 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(D[0]),
        .Q(middle[0]),
        .R(\<const0> ));
  (* inverted = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \middle_reg[1]_inv 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(D[1]),
        .Q(middle[1]),
        .R(\<const0> ));
  (* inverted = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \middle_reg[2]_inv 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(D[2]),
        .Q(middle[2]),
        .R(\<const0> ));
  (* inverted = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \middle_reg[3]_inv 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(D[3]),
        .Q(middle[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \sync_signal_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(middle[0]),
        .Q(Q[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \sync_signal_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(middle[1]),
        .Q(Q[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \sync_signal_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(middle[2]),
        .Q(Q[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \sync_signal_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(middle[3]),
        .Q(Q[3]),
        .R(\<const0> ));
endmodule

(* ORIG_REF_NAME = "synchronizer" *) 
module synchronizer__parameterized0
   (Q,
    D,
    CLK_125MHZ_FPGA_IBUF_BUFG);
  output [1:0]Q;
  input [1:0]D;
  input CLK_125MHZ_FPGA_IBUF_BUFG;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [1:0]D;
  wire [1:0]Q;
  wire \middle_reg[0]_inv_n_0 ;
  wire \middle_reg[1]_inv_n_0 ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* inverted = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \middle_reg[0]_inv 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(D[0]),
        .Q(\middle_reg[0]_inv_n_0 ),
        .R(\<const0> ));
  (* inverted = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \middle_reg[1]_inv 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(D[1]),
        .Q(\middle_reg[1]_inv_n_0 ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \sync_signal_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\middle_reg[0]_inv_n_0 ),
        .Q(Q[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \sync_signal_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\middle_reg[1]_inv_n_0 ),
        .Q(Q[1]),
        .R(\<const0> ));
endmodule

(* B_PULSE_CNT_MAX = "200" *) (* B_SAMPLE_CNT_MAX = "62500" *) (* ECO_CHECKSUM = "d5ff6f98" *) 
(* STRUCTURAL_NETLIST = "yes" *)
module z1top
   (CLK_125MHZ_FPGA,
    BUTTONS,
    SWITCHES,
    LEDS,
    AUD_PWM,
    AUD_SD);
  input CLK_125MHZ_FPGA;
  input [3:0]BUTTONS;
  input [1:0]SWITCHES;
  output [5:0]LEDS;
  output AUD_PWM;
  output AUD_SD;

  wire \<const0> ;
  wire AUD_PWM;
  wire AUD_PWM_OBUF;
  wire AUD_SD;
  wire AUD_SD_OBUF;
  wire [3:0]BUTTONS;
  wire [3:0]BUTTONS_IBUF;
  wire CLK_125MHZ_FPGA;
  wire CLK_125MHZ_FPGA_IBUF;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [5:0]LEDS;
  wire [0:0]LEDS_OBUF;
  wire [1:0]SWITCHES;
  wire [1:0]SWITCHES_IBUF;
  wire bp_n_0;
  wire bp_n_3;
  wire bp_n_4;
  wire bp_n_5;
  wire bp_n_6;
  wire [3:1]buttons_pressed;
  wire [9:8]counter;
  wire dac_n_3;
  wire dac_n_5;
  wire gen_n_3;
  wire gen_n_4;
  wire gen_n_5;
  wire gen_n_6;
  wire next_sample;
  wire sample_counter0;
  wire [0:0]sq_wave_leds;
  wire [0:0]switches_sync;
  wire wave_state;

  OBUF AUD_PWM_OBUF_inst
       (.I(AUD_PWM_OBUF),
        .O(AUD_PWM));
  OBUF AUD_SD_OBUF_inst
       (.I(AUD_SD_OBUF),
        .O(AUD_SD));
  IBUF \BUTTONS_IBUF[0]_inst 
       (.I(BUTTONS[0]),
        .O(BUTTONS_IBUF[0]));
  IBUF \BUTTONS_IBUF[1]_inst 
       (.I(BUTTONS[1]),
        .O(BUTTONS_IBUF[1]));
  IBUF \BUTTONS_IBUF[2]_inst 
       (.I(BUTTONS[2]),
        .O(BUTTONS_IBUF[2]));
  IBUF \BUTTONS_IBUF[3]_inst 
       (.I(BUTTONS[3]),
        .O(BUTTONS_IBUF[3]));
  BUFG CLK_125MHZ_FPGA_IBUF_BUFG_inst
       (.I(CLK_125MHZ_FPGA_IBUF),
        .O(CLK_125MHZ_FPGA_IBUF_BUFG));
  IBUF CLK_125MHZ_FPGA_IBUF_inst
       (.I(CLK_125MHZ_FPGA),
        .O(CLK_125MHZ_FPGA_IBUF));
  GND GND
       (.G(\<const0> ));
  OBUF \LEDS_OBUF[0]_inst 
       (.I(LEDS_OBUF),
        .O(LEDS[0]));
  OBUF \LEDS_OBUF[1]_inst 
       (.I(\<const0> ),
        .O(LEDS[1]));
  OBUF \LEDS_OBUF[2]_inst 
       (.I(\<const0> ),
        .O(LEDS[2]));
  OBUF \LEDS_OBUF[3]_inst 
       (.I(\<const0> ),
        .O(LEDS[3]));
  OBUF \LEDS_OBUF[4]_inst 
       (.I(\<const0> ),
        .O(LEDS[4]));
  OBUF \LEDS_OBUF[5]_inst 
       (.I(\<const0> ),
        .O(LEDS[5]));
  IBUF \SWITCHES_IBUF[0]_inst 
       (.I(SWITCHES[0]),
        .O(SWITCHES_IBUF[0]));
  IBUF \SWITCHES_IBUF[1]_inst 
       (.I(SWITCHES[1]),
        .O(SWITCHES_IBUF[1]));
  button_parser bp
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .\COUNT_MAX_reg[11] (switches_sync),
        .D(BUTTONS_IBUF),
        .E(bp_n_3),
        .Q({buttons_pressed[3],buttons_pressed[1]}),
        .\edge_detect_pulse_reg[1] (bp_n_5),
        .\edge_detect_pulse_reg[3] (bp_n_0),
        .\edge_detect_pulse_reg[3]_0 (bp_n_4),
        .sq_wave_leds(sq_wave_leds),
        .\sync_signal_reg[0] (bp_n_6));
  dac dac
       (.AUD_PWM(switches_sync),
        .AUD_PWM_OBUF(AUD_PWM_OBUF),
        .CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CO(sample_counter0),
        .DI(gen_n_6),
        .Q(counter),
        .S(gen_n_3),
        .\counter_reg[9]_0 (dac_n_3),
        .\counter_reg[9]_1 (buttons_pressed[3]),
        .next_sample(next_sample),
        .pwm0_carry_0(gen_n_5),
        .pwm0_carry_1(gen_n_4),
        .wave_state(wave_state),
        .wave_state_reg(dac_n_5));
  sq_wave_gen gen
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CO(sample_counter0),
        .\COUNT_MAX_reg[3]_0 (bp_n_0),
        .\COUNT_MAX_reg[7]_0 (bp_n_4),
        .\COUNT_MAX_reg[9]_0 (bp_n_5),
        .DI(gen_n_6),
        .E(bp_n_3),
        .LEDS_OBUF(LEDS_OBUF),
        .Q(switches_sync),
        .S(gen_n_3),
        .\code_reg[2]_0 (gen_n_5),
        .\code_reg[4]_0 (gen_n_4),
        .\code_reg[4]_1 ({buttons_pressed[3],buttons_pressed[1]}),
        .mode_reg_0(bp_n_6),
        .next_sample(next_sample),
        .pwm0_carry__0(counter),
        .\sample_counter_reg[0]_0 (dac_n_3),
        .sq_wave_leds(sq_wave_leds),
        .wave_state(wave_state),
        .wave_state_reg_0(dac_n_5));
  synchronizer__parameterized0 switch_sync
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .D(SWITCHES_IBUF),
        .Q({AUD_SD_OBUF,switches_sync}));
endmodule
