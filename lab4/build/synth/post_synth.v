// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Wed Oct  9 20:01:30 2024
// Host        : c111-16.EECS.Berkeley.EDU running 64-bit Red Hat Enterprise Linux release 8.10 (Ootpa)
// Command     : write_verilog -force -file post_synth.v
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
    \edge_detect_pulse_reg[3]_0 ,
    \edge_detect_pulse_reg[1] ,
    \edge_detect_pulse_reg[1]_0 ,
    \edge_detect_pulse_reg[1]_1 ,
    \edge_detect_pulse_reg[1]_2 ,
    E,
    \edge_detect_pulse_reg[3]_1 ,
    \edge_detect_pulse_reg[3]_2 ,
    \edge_detect_pulse_reg[1]_3 ,
    \sync_signal_reg[0] ,
    \edge_detect_pulse_reg[3]_3 ,
    \edge_detect_pulse_reg[3]_4 ,
    CLK_125MHZ_FPGA_IBUF_BUFG,
    next_sample,
    CO,
    \COUNT_MAX_reg[11] ,
    COUNT_MAX1,
    \COUNT_MAX_reg[4] ,
    \COUNT_MAX_reg[0] ,
    \COUNT_MAX_reg[9] ,
    sq_wave_leds,
    D);
  output \edge_detect_pulse_reg[3] ;
  output [1:0]Q;
  output \edge_detect_pulse_reg[3]_0 ;
  output \edge_detect_pulse_reg[1] ;
  output \edge_detect_pulse_reg[1]_0 ;
  output \edge_detect_pulse_reg[1]_1 ;
  output \edge_detect_pulse_reg[1]_2 ;
  output [0:0]E;
  output \edge_detect_pulse_reg[3]_1 ;
  output \edge_detect_pulse_reg[3]_2 ;
  output \edge_detect_pulse_reg[1]_3 ;
  output \sync_signal_reg[0] ;
  output \edge_detect_pulse_reg[3]_3 ;
  output \edge_detect_pulse_reg[3]_4 ;
  input CLK_125MHZ_FPGA_IBUF_BUFG;
  input next_sample;
  input [0:0]CO;
  input [0:0]\COUNT_MAX_reg[11] ;
  input [4:0]COUNT_MAX1;
  input \COUNT_MAX_reg[4] ;
  input [0:0]\COUNT_MAX_reg[0] ;
  input \COUNT_MAX_reg[9] ;
  input [0:0]sq_wave_leds;
  input [3:0]D;

  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [0:0]CO;
  wire [4:0]COUNT_MAX1;
  wire [0:0]\COUNT_MAX_reg[0] ;
  wire [0:0]\COUNT_MAX_reg[11] ;
  wire \COUNT_MAX_reg[4] ;
  wire \COUNT_MAX_reg[9] ;
  wire [3:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire [3:0]debounced_signals;
  wire \edge_detect_pulse_reg[1] ;
  wire \edge_detect_pulse_reg[1]_0 ;
  wire \edge_detect_pulse_reg[1]_1 ;
  wire \edge_detect_pulse_reg[1]_2 ;
  wire \edge_detect_pulse_reg[1]_3 ;
  wire \edge_detect_pulse_reg[3] ;
  wire \edge_detect_pulse_reg[3]_0 ;
  wire \edge_detect_pulse_reg[3]_1 ;
  wire \edge_detect_pulse_reg[3]_2 ;
  wire \edge_detect_pulse_reg[3]_3 ;
  wire \edge_detect_pulse_reg[3]_4 ;
  wire next_sample;
  wire [0:0]sq_wave_leds;
  wire \sync_signal_reg[0] ;
  wire [3:0]synchronized_signals;

  debouncer button_debouncer
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .D(debounced_signals),
        .Q(synchronized_signals));
  edge_detector button_edge_detector
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CO(CO),
        .COUNT_MAX1(COUNT_MAX1),
        .\COUNT_MAX_reg[0] (\COUNT_MAX_reg[0] ),
        .\COUNT_MAX_reg[11] (\COUNT_MAX_reg[11] ),
        .\COUNT_MAX_reg[4] (\COUNT_MAX_reg[4] ),
        .\COUNT_MAX_reg[9] (\COUNT_MAX_reg[9] ),
        .D(debounced_signals),
        .E(E),
        .Q(Q),
        .\edge_detect_pulse_reg[1]_0 (\edge_detect_pulse_reg[1] ),
        .\edge_detect_pulse_reg[1]_1 (\edge_detect_pulse_reg[1]_0 ),
        .\edge_detect_pulse_reg[1]_2 (\edge_detect_pulse_reg[1]_1 ),
        .\edge_detect_pulse_reg[1]_3 (\edge_detect_pulse_reg[1]_2 ),
        .\edge_detect_pulse_reg[1]_4 (\edge_detect_pulse_reg[1]_3 ),
        .\edge_detect_pulse_reg[3]_0 (\edge_detect_pulse_reg[3] ),
        .\edge_detect_pulse_reg[3]_1 (\edge_detect_pulse_reg[3]_0 ),
        .\edge_detect_pulse_reg[3]_2 (\edge_detect_pulse_reg[3]_1 ),
        .\edge_detect_pulse_reg[3]_3 (\edge_detect_pulse_reg[3]_2 ),
        .\edge_detect_pulse_reg[3]_4 (\edge_detect_pulse_reg[3]_3 ),
        .\edge_detect_pulse_reg[3]_5 (\edge_detect_pulse_reg[3]_4 ),
        .next_sample(next_sample),
        .sq_wave_leds(sq_wave_leds),
        .\sync_signal_reg[0] (\sync_signal_reg[0] ));
  synchronizer button_synchronizer
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .D(D),
        .Q(synchronized_signals));
endmodule

module dac
   (CO,
    \counter_reg[9]_0 ,
    next_sample,
    S,
    Q,
    DOADO,
    pwm0_carry__0_0,
    pwm0_carry_0,
    pwm0_carry__0_1,
    \counter_reg[9]_1 ,
    CLK_125MHZ_FPGA_IBUF_BUFG);
  output [0:0]CO;
  output [1:0]\counter_reg[9]_0 ;
  output next_sample;
  input [0:0]S;
  input [0:0]Q;
  input [8:0]DOADO;
  input pwm0_carry__0_0;
  input pwm0_carry_0;
  input pwm0_carry__0_1;
  input [0:0]\counter_reg[9]_1 ;
  input CLK_125MHZ_FPGA_IBUF_BUFG;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [0:0]CO;
  wire [8:0]DOADO;
  wire [0:0]Q;
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
  wire \counter[9]_i_1_n_0 ;
  wire \counter[9]_i_2_n_0 ;
  wire [1:0]\counter_reg[9]_0 ;
  wire [0:0]\counter_reg[9]_1 ;
  wire next_sample;
  wire pwm0_carry_0;
  wire pwm0_carry__0_0;
  wire pwm0_carry__0_1;
  wire pwm0_carry__0_i_1_n_0;
  wire pwm0_carry_i_1_n_0;
  wire pwm0_carry_i_2_n_0;
  wire pwm0_carry_i_3_n_0;
  wire pwm0_carry_i_4_n_0;
  wire pwm0_carry_i_5_n_0;
  wire pwm0_carry_i_6_n_0;
  wire pwm0_carry_i_7_n_0;
  wire pwm0_carry_i_8_n_0;
  wire pwm0_carry_n_0;
  wire pwm0_carry_n_1;
  wire pwm0_carry_n_2;
  wire pwm0_carry_n_3;

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
       (.I0(counter[0]),
        .I1(counter[1]),
        .O(\counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \counter[2]_i_1 
       (.I0(counter[2]),
        .I1(counter[0]),
        .I2(counter[1]),
        .O(\counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \counter[3]_i_1 
       (.I0(counter[3]),
        .I1(counter[2]),
        .I2(counter[0]),
        .I3(counter[1]),
        .O(\counter[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \counter[4]_i_1 
       (.I0(counter[4]),
        .I1(counter[2]),
        .I2(counter[0]),
        .I3(counter[1]),
        .I4(counter[3]),
        .O(\counter[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \counter[5]_i_1 
       (.I0(counter[5]),
        .I1(counter[4]),
        .I2(counter[2]),
        .I3(counter[0]),
        .I4(counter[1]),
        .I5(counter[3]),
        .O(\counter[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter[6]_i_1 
       (.I0(counter[6]),
        .I1(\counter[9]_i_2_n_0 ),
        .O(\counter[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \counter[7]_i_1 
       (.I0(counter[7]),
        .I1(\counter[9]_i_2_n_0 ),
        .I2(counter[6]),
        .O(\counter[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \counter[8]_i_1 
       (.I0(\counter_reg[9]_0 [0]),
        .I1(counter[6]),
        .I2(counter[7]),
        .I3(\counter[9]_i_2_n_0 ),
        .O(\counter[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \counter[9]_i_1 
       (.I0(\counter_reg[9]_0 [1]),
        .I1(\counter[9]_i_2_n_0 ),
        .I2(counter[7]),
        .I3(counter[6]),
        .I4(\counter_reg[9]_0 [0]),
        .O(\counter[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \counter[9]_i_2 
       (.I0(counter[5]),
        .I1(counter[4]),
        .I2(counter[2]),
        .I3(counter[0]),
        .I4(counter[1]),
        .I5(counter[3]),
        .O(\counter[9]_i_2_n_0 ));
  FDRE \counter_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\counter[0]_i_1_n_0 ),
        .Q(counter[0]),
        .R(\counter_reg[9]_1 ));
  FDRE \counter_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\counter[1]_i_1_n_0 ),
        .Q(counter[1]),
        .R(\counter_reg[9]_1 ));
  FDRE \counter_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\counter[2]_i_1_n_0 ),
        .Q(counter[2]),
        .R(\counter_reg[9]_1 ));
  FDRE \counter_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\counter[3]_i_1_n_0 ),
        .Q(counter[3]),
        .R(\counter_reg[9]_1 ));
  FDRE \counter_reg[4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\counter[4]_i_1_n_0 ),
        .Q(counter[4]),
        .R(\counter_reg[9]_1 ));
  FDRE \counter_reg[5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\counter[5]_i_1_n_0 ),
        .Q(counter[5]),
        .R(\counter_reg[9]_1 ));
  FDRE \counter_reg[6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\counter[6]_i_1_n_0 ),
        .Q(counter[6]),
        .R(\counter_reg[9]_1 ));
  FDRE \counter_reg[7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\counter[7]_i_1_n_0 ),
        .Q(counter[7]),
        .R(\counter_reg[9]_1 ));
  FDRE \counter_reg[8] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\counter[8]_i_1_n_0 ),
        .Q(\counter_reg[9]_0 [0]),
        .R(\counter_reg[9]_1 ));
  FDRE \counter_reg[9] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\counter[9]_i_1_n_0 ),
        .Q(\counter_reg[9]_0 [1]),
        .R(\counter_reg[9]_1 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 pwm0_carry
       (.CI(\<const0> ),
        .CO({pwm0_carry_n_0,pwm0_carry_n_1,pwm0_carry_n_2,pwm0_carry_n_3}),
        .CYINIT(\<const1> ),
        .DI({pwm0_carry_i_1_n_0,pwm0_carry_i_2_n_0,pwm0_carry_i_3_n_0,pwm0_carry_i_4_n_0}),
        .S({pwm0_carry_i_5_n_0,pwm0_carry_i_6_n_0,pwm0_carry_i_7_n_0,pwm0_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 pwm0_carry__0
       (.CI(pwm0_carry_n_0),
        .CO(CO),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,pwm0_carry__0_i_1_n_0}),
        .S({\<const0> ,\<const0> ,\<const0> ,S}));
  LUT6 #(
    .INIT(64'h44444444DDD444D4)) 
    pwm0_carry__0_i_1
       (.I0(\counter_reg[9]_0 [1]),
        .I1(pwm0_carry__0_1),
        .I2(pwm0_carry__0_0),
        .I3(Q),
        .I4(DOADO[8]),
        .I5(\counter_reg[9]_0 [0]),
        .O(pwm0_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h51405140F7C47340)) 
    pwm0_carry_i_1
       (.I0(counter[7]),
        .I1(Q),
        .I2(DOADO[7]),
        .I3(pwm0_carry__0_0),
        .I4(DOADO[6]),
        .I5(counter[6]),
        .O(pwm0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h54045404FC5C5C0C)) 
    pwm0_carry_i_2
       (.I0(counter[5]),
        .I1(pwm0_carry_0),
        .I2(Q),
        .I3(DOADO[5]),
        .I4(DOADO[4]),
        .I5(counter[4]),
        .O(pwm0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h54045404FC5C5C0C)) 
    pwm0_carry_i_3
       (.I0(counter[3]),
        .I1(pwm0_carry__0_0),
        .I2(Q),
        .I3(DOADO[3]),
        .I4(DOADO[2]),
        .I5(counter[2]),
        .O(pwm0_carry_i_3_n_0));
  LUT5 #(
    .INIT(32'h5151D551)) 
    pwm0_carry_i_4
       (.I0(counter[1]),
        .I1(Q),
        .I2(DOADO[1]),
        .I3(DOADO[0]),
        .I4(counter[0]),
        .O(pwm0_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h90CC900009000933)) 
    pwm0_carry_i_5
       (.I0(DOADO[7]),
        .I1(counter[7]),
        .I2(DOADO[6]),
        .I3(Q),
        .I4(pwm0_carry__0_0),
        .I5(counter[6]),
        .O(pwm0_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h90CC900009000933)) 
    pwm0_carry_i_6
       (.I0(DOADO[5]),
        .I1(counter[5]),
        .I2(DOADO[4]),
        .I3(Q),
        .I4(pwm0_carry_0),
        .I5(counter[4]),
        .O(pwm0_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h9900C0C000990303)) 
    pwm0_carry_i_7
       (.I0(DOADO[3]),
        .I1(counter[3]),
        .I2(pwm0_carry__0_0),
        .I3(DOADO[2]),
        .I4(Q),
        .I5(counter[2]),
        .O(pwm0_carry_i_7_n_0));
  LUT5 #(
    .INIT(32'h90330900)) 
    pwm0_carry_i_8
       (.I0(DOADO[0]),
        .I1(counter[0]),
        .I2(DOADO[1]),
        .I3(Q),
        .I4(counter[1]),
        .O(pwm0_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \sample_counter[0]_i_2 
       (.I0(counter[7]),
        .I1(\counter_reg[9]_0 [0]),
        .I2(\counter_reg[9]_0 [1]),
        .I3(\counter[9]_i_2_n_0 ),
        .I4(counter[6]),
        .O(next_sample));
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
  wire \debounce_logic[0].saturating_counter[0][3]_i_1_n_0 ;
  wire \debounce_logic[0].saturating_counter[0][7]_i_1_n_0 ;
  wire \debounce_logic[0].saturating_counter[0][7]_i_4_n_0 ;
  wire \debounce_logic[0].saturating_counter[0][7]_i_5_n_0 ;
  wire [7:0]\debounce_logic[0].saturating_counter_reg[0]_0 ;
  wire \debounce_logic[1].debounced_signal[1]_i_1_n_0 ;
  wire \debounce_logic[1].saturating_counter[1][3]_i_1_n_0 ;
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
  wire \wrapping_counter_reg[12]_i_1_n_1 ;
  wire \wrapping_counter_reg[12]_i_1_n_2 ;
  wire \wrapping_counter_reg[12]_i_1_n_3 ;
  wire \wrapping_counter_reg[12]_i_1_n_4 ;
  wire \wrapping_counter_reg[12]_i_1_n_5 ;
  wire \wrapping_counter_reg[12]_i_1_n_6 ;
  wire \wrapping_counter_reg[12]_i_1_n_7 ;
  wire \wrapping_counter_reg[15]_i_2_n_2 ;
  wire \wrapping_counter_reg[15]_i_2_n_3 ;
  wire \wrapping_counter_reg[15]_i_2_n_5 ;
  wire \wrapping_counter_reg[15]_i_2_n_6 ;
  wire \wrapping_counter_reg[15]_i_2_n_7 ;
  wire \wrapping_counter_reg[4]_i_1_n_0 ;
  wire \wrapping_counter_reg[4]_i_1_n_1 ;
  wire \wrapping_counter_reg[4]_i_1_n_2 ;
  wire \wrapping_counter_reg[4]_i_1_n_3 ;
  wire \wrapping_counter_reg[4]_i_1_n_4 ;
  wire \wrapping_counter_reg[4]_i_1_n_5 ;
  wire \wrapping_counter_reg[4]_i_1_n_6 ;
  wire \wrapping_counter_reg[4]_i_1_n_7 ;
  wire \wrapping_counter_reg[8]_i_1_n_0 ;
  wire \wrapping_counter_reg[8]_i_1_n_1 ;
  wire \wrapping_counter_reg[8]_i_1_n_2 ;
  wire \wrapping_counter_reg[8]_i_1_n_3 ;
  wire \wrapping_counter_reg[8]_i_1_n_4 ;
  wire \wrapping_counter_reg[8]_i_1_n_5 ;
  wire \wrapping_counter_reg[8]_i_1_n_6 ;
  wire \wrapping_counter_reg[8]_i_1_n_7 ;

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
        .I4(\debounce_logic[0].saturating_counter_reg[0]_0 [4]),
        .I5(\debounce_logic[0].saturating_counter_reg[0]_0 [3]),
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
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \debounce_logic[0].saturating_counter[0][2]_i_1 
       (.I0(\debounce_logic[0].saturating_counter_reg[0]_0 [2]),
        .I1(\debounce_logic[0].saturating_counter_reg[0]_0 [0]),
        .I2(\debounce_logic[0].saturating_counter_reg[0]_0 [1]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \debounce_logic[0].saturating_counter[0][3]_i_1 
       (.I0(\debounce_logic[0].saturating_counter_reg[0]_0 [3]),
        .I1(\debounce_logic[0].saturating_counter_reg[0]_0 [2]),
        .I2(\debounce_logic[0].saturating_counter_reg[0]_0 [0]),
        .I3(\debounce_logic[0].saturating_counter_reg[0]_0 [1]),
        .O(\debounce_logic[0].saturating_counter[0][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \debounce_logic[0].saturating_counter[0][4]_i_1 
       (.I0(\debounce_logic[0].saturating_counter_reg[0]_0 [4]),
        .I1(\debounce_logic[0].saturating_counter_reg[0]_0 [2]),
        .I2(\debounce_logic[0].saturating_counter_reg[0]_0 [0]),
        .I3(\debounce_logic[0].saturating_counter_reg[0]_0 [1]),
        .I4(\debounce_logic[0].saturating_counter_reg[0]_0 [3]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \debounce_logic[0].saturating_counter[0][5]_i_1 
       (.I0(\debounce_logic[0].saturating_counter_reg[0]_0 [3]),
        .I1(\debounce_logic[0].saturating_counter_reg[0]_0 [1]),
        .I2(\debounce_logic[0].saturating_counter_reg[0]_0 [0]),
        .I3(\debounce_logic[0].saturating_counter_reg[0]_0 [2]),
        .I4(\debounce_logic[0].saturating_counter_reg[0]_0 [4]),
        .I5(\debounce_logic[0].saturating_counter_reg[0]_0 [5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hA6AAAAAA)) 
    \debounce_logic[0].saturating_counter[0][6]_i_1 
       (.I0(\debounce_logic[0].saturating_counter_reg[0]_0 [6]),
        .I1(\debounce_logic[0].saturating_counter_reg[0]_0 [3]),
        .I2(\debounce_logic[0].saturating_counter[0][7]_i_4_n_0 ),
        .I3(\debounce_logic[0].saturating_counter_reg[0]_0 [4]),
        .I4(\debounce_logic[0].saturating_counter_reg[0]_0 [5]),
        .O(p_0_in[6]));
  LUT2 #(
    .INIT(4'h2)) 
    \debounce_logic[0].saturating_counter[0][7]_i_1 
       (.I0(\wrapping_counter[15]_i_1_n_0 ),
        .I1(Q[0]),
        .O(\debounce_logic[0].saturating_counter[0][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08AAAAAA)) 
    \debounce_logic[0].saturating_counter[0][7]_i_2 
       (.I0(\wrapping_counter[15]_i_1_n_0 ),
        .I1(\debounce_logic[0].saturating_counter[0][7]_i_4_n_0 ),
        .I2(\debounce_logic[0].saturating_counter[0][7]_i_5_n_0 ),
        .I3(\debounce_logic[0].saturating_counter_reg[0]_0 [6]),
        .I4(\debounce_logic[0].saturating_counter_reg[0]_0 [7]),
        .O(saturating_counter));
  LUT6 #(
    .INIT(64'hAA6AAAAAAAAAAAAA)) 
    \debounce_logic[0].saturating_counter[0][7]_i_3 
       (.I0(\debounce_logic[0].saturating_counter_reg[0]_0 [7]),
        .I1(\debounce_logic[0].saturating_counter_reg[0]_0 [5]),
        .I2(\debounce_logic[0].saturating_counter_reg[0]_0 [4]),
        .I3(\debounce_logic[0].saturating_counter[0][7]_i_4_n_0 ),
        .I4(\debounce_logic[0].saturating_counter_reg[0]_0 [3]),
        .I5(\debounce_logic[0].saturating_counter_reg[0]_0 [6]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \debounce_logic[0].saturating_counter[0][7]_i_4 
       (.I0(\debounce_logic[0].saturating_counter_reg[0]_0 [1]),
        .I1(\debounce_logic[0].saturating_counter_reg[0]_0 [0]),
        .I2(\debounce_logic[0].saturating_counter_reg[0]_0 [2]),
        .O(\debounce_logic[0].saturating_counter[0][7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \debounce_logic[0].saturating_counter[0][7]_i_5 
       (.I0(\debounce_logic[0].saturating_counter_reg[0]_0 [5]),
        .I1(\debounce_logic[0].saturating_counter_reg[0]_0 [4]),
        .I2(\debounce_logic[0].saturating_counter_reg[0]_0 [3]),
        .O(\debounce_logic[0].saturating_counter[0][7]_i_5_n_0 ));
  FDRE \debounce_logic[0].saturating_counter_reg[0][0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(saturating_counter),
        .D(p_0_in[0]),
        .Q(\debounce_logic[0].saturating_counter_reg[0]_0 [0]),
        .R(\debounce_logic[0].saturating_counter[0][7]_i_1_n_0 ));
  FDRE \debounce_logic[0].saturating_counter_reg[0][1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(saturating_counter),
        .D(p_0_in[1]),
        .Q(\debounce_logic[0].saturating_counter_reg[0]_0 [1]),
        .R(\debounce_logic[0].saturating_counter[0][7]_i_1_n_0 ));
  FDRE \debounce_logic[0].saturating_counter_reg[0][2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(saturating_counter),
        .D(p_0_in[2]),
        .Q(\debounce_logic[0].saturating_counter_reg[0]_0 [2]),
        .R(\debounce_logic[0].saturating_counter[0][7]_i_1_n_0 ));
  FDRE \debounce_logic[0].saturating_counter_reg[0][3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(saturating_counter),
        .D(\debounce_logic[0].saturating_counter[0][3]_i_1_n_0 ),
        .Q(\debounce_logic[0].saturating_counter_reg[0]_0 [3]),
        .R(\debounce_logic[0].saturating_counter[0][7]_i_1_n_0 ));
  FDRE \debounce_logic[0].saturating_counter_reg[0][4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(saturating_counter),
        .D(p_0_in[4]),
        .Q(\debounce_logic[0].saturating_counter_reg[0]_0 [4]),
        .R(\debounce_logic[0].saturating_counter[0][7]_i_1_n_0 ));
  FDRE \debounce_logic[0].saturating_counter_reg[0][5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(saturating_counter),
        .D(p_0_in[5]),
        .Q(\debounce_logic[0].saturating_counter_reg[0]_0 [5]),
        .R(\debounce_logic[0].saturating_counter[0][7]_i_1_n_0 ));
  FDRE \debounce_logic[0].saturating_counter_reg[0][6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(saturating_counter),
        .D(p_0_in[6]),
        .Q(\debounce_logic[0].saturating_counter_reg[0]_0 [6]),
        .R(\debounce_logic[0].saturating_counter[0][7]_i_1_n_0 ));
  FDRE \debounce_logic[0].saturating_counter_reg[0][7] 
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
        .I4(\debounce_logic[1].saturating_counter_reg[1]_1 [4]),
        .I5(\debounce_logic[1].saturating_counter_reg[1]_1 [3]),
        .O(\debounce_logic[1].debounced_signal[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_logic[1].debounced_signal_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\debounce_logic[1].debounced_signal[1]_i_1_n_0 ),
        .Q(D[1]),
        .R(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \debounce_logic[1].saturating_counter[1][0]_i_1 
       (.I0(\debounce_logic[1].saturating_counter_reg[1]_1 [0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \debounce_logic[1].saturating_counter[1][1]_i_1 
       (.I0(\debounce_logic[1].saturating_counter_reg[1]_1 [0]),
        .I1(\debounce_logic[1].saturating_counter_reg[1]_1 [1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \debounce_logic[1].saturating_counter[1][2]_i_1 
       (.I0(\debounce_logic[1].saturating_counter_reg[1]_1 [2]),
        .I1(\debounce_logic[1].saturating_counter_reg[1]_1 [0]),
        .I2(\debounce_logic[1].saturating_counter_reg[1]_1 [1]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \debounce_logic[1].saturating_counter[1][3]_i_1 
       (.I0(\debounce_logic[1].saturating_counter_reg[1]_1 [3]),
        .I1(\debounce_logic[1].saturating_counter_reg[1]_1 [2]),
        .I2(\debounce_logic[1].saturating_counter_reg[1]_1 [0]),
        .I3(\debounce_logic[1].saturating_counter_reg[1]_1 [1]),
        .O(\debounce_logic[1].saturating_counter[1][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \debounce_logic[1].saturating_counter[1][4]_i_1 
       (.I0(\debounce_logic[1].saturating_counter_reg[1]_1 [4]),
        .I1(\debounce_logic[1].saturating_counter_reg[1]_1 [2]),
        .I2(\debounce_logic[1].saturating_counter_reg[1]_1 [0]),
        .I3(\debounce_logic[1].saturating_counter_reg[1]_1 [1]),
        .I4(\debounce_logic[1].saturating_counter_reg[1]_1 [3]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \debounce_logic[1].saturating_counter[1][5]_i_1 
       (.I0(\debounce_logic[1].saturating_counter_reg[1]_1 [3]),
        .I1(\debounce_logic[1].saturating_counter_reg[1]_1 [1]),
        .I2(\debounce_logic[1].saturating_counter_reg[1]_1 [0]),
        .I3(\debounce_logic[1].saturating_counter_reg[1]_1 [2]),
        .I4(\debounce_logic[1].saturating_counter_reg[1]_1 [4]),
        .I5(\debounce_logic[1].saturating_counter_reg[1]_1 [5]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hA6AAAAAA)) 
    \debounce_logic[1].saturating_counter[1][6]_i_1 
       (.I0(\debounce_logic[1].saturating_counter_reg[1]_1 [6]),
        .I1(\debounce_logic[1].saturating_counter_reg[1]_1 [3]),
        .I2(\debounce_logic[1].saturating_counter[1][7]_i_4_n_0 ),
        .I3(\debounce_logic[1].saturating_counter_reg[1]_1 [4]),
        .I4(\debounce_logic[1].saturating_counter_reg[1]_1 [5]),
        .O(p_0_in__0[6]));
  LUT2 #(
    .INIT(4'h2)) 
    \debounce_logic[1].saturating_counter[1][7]_i_1 
       (.I0(\wrapping_counter[15]_i_1_n_0 ),
        .I1(Q[1]),
        .O(\debounce_logic[1].saturating_counter[1][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08AAAAAA)) 
    \debounce_logic[1].saturating_counter[1][7]_i_2 
       (.I0(\wrapping_counter[15]_i_1_n_0 ),
        .I1(\debounce_logic[1].saturating_counter[1][7]_i_4_n_0 ),
        .I2(\debounce_logic[1].saturating_counter[1][7]_i_5_n_0 ),
        .I3(\debounce_logic[1].saturating_counter_reg[1]_1 [6]),
        .I4(\debounce_logic[1].saturating_counter_reg[1]_1 [7]),
        .O(\debounce_logic[1].saturating_counter[1][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAA6AAAAAAAAAAAAA)) 
    \debounce_logic[1].saturating_counter[1][7]_i_3 
       (.I0(\debounce_logic[1].saturating_counter_reg[1]_1 [7]),
        .I1(\debounce_logic[1].saturating_counter_reg[1]_1 [5]),
        .I2(\debounce_logic[1].saturating_counter_reg[1]_1 [4]),
        .I3(\debounce_logic[1].saturating_counter[1][7]_i_4_n_0 ),
        .I4(\debounce_logic[1].saturating_counter_reg[1]_1 [3]),
        .I5(\debounce_logic[1].saturating_counter_reg[1]_1 [6]),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \debounce_logic[1].saturating_counter[1][7]_i_4 
       (.I0(\debounce_logic[1].saturating_counter_reg[1]_1 [1]),
        .I1(\debounce_logic[1].saturating_counter_reg[1]_1 [0]),
        .I2(\debounce_logic[1].saturating_counter_reg[1]_1 [2]),
        .O(\debounce_logic[1].saturating_counter[1][7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \debounce_logic[1].saturating_counter[1][7]_i_5 
       (.I0(\debounce_logic[1].saturating_counter_reg[1]_1 [5]),
        .I1(\debounce_logic[1].saturating_counter_reg[1]_1 [4]),
        .I2(\debounce_logic[1].saturating_counter_reg[1]_1 [3]),
        .O(\debounce_logic[1].saturating_counter[1][7]_i_5_n_0 ));
  FDRE \debounce_logic[1].saturating_counter_reg[1][0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\debounce_logic[1].saturating_counter[1][7]_i_2_n_0 ),
        .D(p_0_in__0[0]),
        .Q(\debounce_logic[1].saturating_counter_reg[1]_1 [0]),
        .R(\debounce_logic[1].saturating_counter[1][7]_i_1_n_0 ));
  FDRE \debounce_logic[1].saturating_counter_reg[1][1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\debounce_logic[1].saturating_counter[1][7]_i_2_n_0 ),
        .D(p_0_in__0[1]),
        .Q(\debounce_logic[1].saturating_counter_reg[1]_1 [1]),
        .R(\debounce_logic[1].saturating_counter[1][7]_i_1_n_0 ));
  FDRE \debounce_logic[1].saturating_counter_reg[1][2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\debounce_logic[1].saturating_counter[1][7]_i_2_n_0 ),
        .D(p_0_in__0[2]),
        .Q(\debounce_logic[1].saturating_counter_reg[1]_1 [2]),
        .R(\debounce_logic[1].saturating_counter[1][7]_i_1_n_0 ));
  FDRE \debounce_logic[1].saturating_counter_reg[1][3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\debounce_logic[1].saturating_counter[1][7]_i_2_n_0 ),
        .D(\debounce_logic[1].saturating_counter[1][3]_i_1_n_0 ),
        .Q(\debounce_logic[1].saturating_counter_reg[1]_1 [3]),
        .R(\debounce_logic[1].saturating_counter[1][7]_i_1_n_0 ));
  FDRE \debounce_logic[1].saturating_counter_reg[1][4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\debounce_logic[1].saturating_counter[1][7]_i_2_n_0 ),
        .D(p_0_in__0[4]),
        .Q(\debounce_logic[1].saturating_counter_reg[1]_1 [4]),
        .R(\debounce_logic[1].saturating_counter[1][7]_i_1_n_0 ));
  FDRE \debounce_logic[1].saturating_counter_reg[1][5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\debounce_logic[1].saturating_counter[1][7]_i_2_n_0 ),
        .D(p_0_in__0[5]),
        .Q(\debounce_logic[1].saturating_counter_reg[1]_1 [5]),
        .R(\debounce_logic[1].saturating_counter[1][7]_i_1_n_0 ));
  FDRE \debounce_logic[1].saturating_counter_reg[1][6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\debounce_logic[1].saturating_counter[1][7]_i_2_n_0 ),
        .D(p_0_in__0[6]),
        .Q(\debounce_logic[1].saturating_counter_reg[1]_1 [6]),
        .R(\debounce_logic[1].saturating_counter[1][7]_i_1_n_0 ));
  FDRE \debounce_logic[1].saturating_counter_reg[1][7] 
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
        .I3(\debounce_logic[2].saturating_counter_reg[2]_2 [3]),
        .I4(\debounce_logic[2].saturating_counter_reg[2]_2 [4]),
        .I5(\debounce_logic[2].saturating_counter_reg[2]_2 [5]),
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
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \debounce_logic[2].saturating_counter[2][2]_i_1 
       (.I0(\debounce_logic[2].saturating_counter_reg[2]_2 [2]),
        .I1(\debounce_logic[2].saturating_counter_reg[2]_2 [0]),
        .I2(\debounce_logic[2].saturating_counter_reg[2]_2 [1]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \debounce_logic[2].saturating_counter[2][3]_i_1 
       (.I0(\debounce_logic[2].saturating_counter_reg[2]_2 [3]),
        .I1(\debounce_logic[2].saturating_counter_reg[2]_2 [1]),
        .I2(\debounce_logic[2].saturating_counter_reg[2]_2 [0]),
        .I3(\debounce_logic[2].saturating_counter_reg[2]_2 [2]),
        .O(p_0_in__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \debounce_logic[2].saturating_counter[2][4]_i_1 
       (.I0(\debounce_logic[2].saturating_counter_reg[2]_2 [4]),
        .I1(\debounce_logic[2].saturating_counter_reg[2]_2 [2]),
        .I2(\debounce_logic[2].saturating_counter_reg[2]_2 [0]),
        .I3(\debounce_logic[2].saturating_counter_reg[2]_2 [1]),
        .I4(\debounce_logic[2].saturating_counter_reg[2]_2 [3]),
        .O(p_0_in__1[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \debounce_logic[2].saturating_counter[2][5]_i_1 
       (.I0(\debounce_logic[2].saturating_counter_reg[2]_2 [3]),
        .I1(\debounce_logic[2].saturating_counter_reg[2]_2 [1]),
        .I2(\debounce_logic[2].saturating_counter_reg[2]_2 [0]),
        .I3(\debounce_logic[2].saturating_counter_reg[2]_2 [2]),
        .I4(\debounce_logic[2].saturating_counter_reg[2]_2 [4]),
        .I5(\debounce_logic[2].saturating_counter_reg[2]_2 [5]),
        .O(p_0_in__1[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hA6AAAAAA)) 
    \debounce_logic[2].saturating_counter[2][6]_i_1 
       (.I0(\debounce_logic[2].saturating_counter_reg[2]_2 [6]),
        .I1(\debounce_logic[2].saturating_counter_reg[2]_2 [3]),
        .I2(\debounce_logic[2].saturating_counter[2][7]_i_4_n_0 ),
        .I3(\debounce_logic[2].saturating_counter_reg[2]_2 [4]),
        .I4(\debounce_logic[2].saturating_counter_reg[2]_2 [5]),
        .O(p_0_in__1[6]));
  LUT2 #(
    .INIT(4'h2)) 
    \debounce_logic[2].saturating_counter[2][7]_i_1 
       (.I0(\wrapping_counter[15]_i_1_n_0 ),
        .I1(Q[2]),
        .O(\debounce_logic[2].saturating_counter[2][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08AAAAAA)) 
    \debounce_logic[2].saturating_counter[2][7]_i_2 
       (.I0(\wrapping_counter[15]_i_1_n_0 ),
        .I1(\debounce_logic[2].saturating_counter[2][7]_i_4_n_0 ),
        .I2(\debounce_logic[2].saturating_counter[2][7]_i_5_n_0 ),
        .I3(\debounce_logic[2].saturating_counter_reg[2]_2 [6]),
        .I4(\debounce_logic[2].saturating_counter_reg[2]_2 [7]),
        .O(\debounce_logic[2].saturating_counter[2][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAA6AAAAAAAAAAAAA)) 
    \debounce_logic[2].saturating_counter[2][7]_i_3 
       (.I0(\debounce_logic[2].saturating_counter_reg[2]_2 [7]),
        .I1(\debounce_logic[2].saturating_counter_reg[2]_2 [5]),
        .I2(\debounce_logic[2].saturating_counter_reg[2]_2 [4]),
        .I3(\debounce_logic[2].saturating_counter[2][7]_i_4_n_0 ),
        .I4(\debounce_logic[2].saturating_counter_reg[2]_2 [3]),
        .I5(\debounce_logic[2].saturating_counter_reg[2]_2 [6]),
        .O(p_0_in__1[7]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \debounce_logic[2].saturating_counter[2][7]_i_4 
       (.I0(\debounce_logic[2].saturating_counter_reg[2]_2 [1]),
        .I1(\debounce_logic[2].saturating_counter_reg[2]_2 [0]),
        .I2(\debounce_logic[2].saturating_counter_reg[2]_2 [2]),
        .O(\debounce_logic[2].saturating_counter[2][7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \debounce_logic[2].saturating_counter[2][7]_i_5 
       (.I0(\debounce_logic[2].saturating_counter_reg[2]_2 [5]),
        .I1(\debounce_logic[2].saturating_counter_reg[2]_2 [4]),
        .I2(\debounce_logic[2].saturating_counter_reg[2]_2 [3]),
        .O(\debounce_logic[2].saturating_counter[2][7]_i_5_n_0 ));
  FDRE \debounce_logic[2].saturating_counter_reg[2][0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\debounce_logic[2].saturating_counter[2][7]_i_2_n_0 ),
        .D(p_0_in__1[0]),
        .Q(\debounce_logic[2].saturating_counter_reg[2]_2 [0]),
        .R(\debounce_logic[2].saturating_counter[2][7]_i_1_n_0 ));
  FDRE \debounce_logic[2].saturating_counter_reg[2][1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\debounce_logic[2].saturating_counter[2][7]_i_2_n_0 ),
        .D(p_0_in__1[1]),
        .Q(\debounce_logic[2].saturating_counter_reg[2]_2 [1]),
        .R(\debounce_logic[2].saturating_counter[2][7]_i_1_n_0 ));
  FDRE \debounce_logic[2].saturating_counter_reg[2][2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\debounce_logic[2].saturating_counter[2][7]_i_2_n_0 ),
        .D(p_0_in__1[2]),
        .Q(\debounce_logic[2].saturating_counter_reg[2]_2 [2]),
        .R(\debounce_logic[2].saturating_counter[2][7]_i_1_n_0 ));
  FDRE \debounce_logic[2].saturating_counter_reg[2][3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\debounce_logic[2].saturating_counter[2][7]_i_2_n_0 ),
        .D(p_0_in__1[3]),
        .Q(\debounce_logic[2].saturating_counter_reg[2]_2 [3]),
        .R(\debounce_logic[2].saturating_counter[2][7]_i_1_n_0 ));
  FDRE \debounce_logic[2].saturating_counter_reg[2][4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\debounce_logic[2].saturating_counter[2][7]_i_2_n_0 ),
        .D(p_0_in__1[4]),
        .Q(\debounce_logic[2].saturating_counter_reg[2]_2 [4]),
        .R(\debounce_logic[2].saturating_counter[2][7]_i_1_n_0 ));
  FDRE \debounce_logic[2].saturating_counter_reg[2][5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\debounce_logic[2].saturating_counter[2][7]_i_2_n_0 ),
        .D(p_0_in__1[5]),
        .Q(\debounce_logic[2].saturating_counter_reg[2]_2 [5]),
        .R(\debounce_logic[2].saturating_counter[2][7]_i_1_n_0 ));
  FDRE \debounce_logic[2].saturating_counter_reg[2][6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\debounce_logic[2].saturating_counter[2][7]_i_2_n_0 ),
        .D(p_0_in__1[6]),
        .Q(\debounce_logic[2].saturating_counter_reg[2]_2 [6]),
        .R(\debounce_logic[2].saturating_counter[2][7]_i_1_n_0 ));
  FDRE \debounce_logic[2].saturating_counter_reg[2][7] 
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
        .I3(\debounce_logic[3].saturating_counter_reg[3]_3 [3]),
        .I4(\debounce_logic[3].saturating_counter_reg[3]_3 [4]),
        .I5(\debounce_logic[3].saturating_counter_reg[3]_3 [5]),
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
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \debounce_logic[3].saturating_counter[3][2]_i_1 
       (.I0(\debounce_logic[3].saturating_counter_reg[3]_3 [2]),
        .I1(\debounce_logic[3].saturating_counter_reg[3]_3 [0]),
        .I2(\debounce_logic[3].saturating_counter_reg[3]_3 [1]),
        .O(p_0_in__2[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \debounce_logic[3].saturating_counter[3][3]_i_1 
       (.I0(\debounce_logic[3].saturating_counter_reg[3]_3 [3]),
        .I1(\debounce_logic[3].saturating_counter_reg[3]_3 [1]),
        .I2(\debounce_logic[3].saturating_counter_reg[3]_3 [0]),
        .I3(\debounce_logic[3].saturating_counter_reg[3]_3 [2]),
        .O(p_0_in__2[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \debounce_logic[3].saturating_counter[3][4]_i_1 
       (.I0(\debounce_logic[3].saturating_counter_reg[3]_3 [4]),
        .I1(\debounce_logic[3].saturating_counter_reg[3]_3 [2]),
        .I2(\debounce_logic[3].saturating_counter_reg[3]_3 [0]),
        .I3(\debounce_logic[3].saturating_counter_reg[3]_3 [1]),
        .I4(\debounce_logic[3].saturating_counter_reg[3]_3 [3]),
        .O(p_0_in__2[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \debounce_logic[3].saturating_counter[3][5]_i_1 
       (.I0(\debounce_logic[3].saturating_counter_reg[3]_3 [3]),
        .I1(\debounce_logic[3].saturating_counter_reg[3]_3 [1]),
        .I2(\debounce_logic[3].saturating_counter_reg[3]_3 [0]),
        .I3(\debounce_logic[3].saturating_counter_reg[3]_3 [2]),
        .I4(\debounce_logic[3].saturating_counter_reg[3]_3 [4]),
        .I5(\debounce_logic[3].saturating_counter_reg[3]_3 [5]),
        .O(p_0_in__2[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hA6AAAAAA)) 
    \debounce_logic[3].saturating_counter[3][6]_i_1 
       (.I0(\debounce_logic[3].saturating_counter_reg[3]_3 [6]),
        .I1(\debounce_logic[3].saturating_counter_reg[3]_3 [3]),
        .I2(\debounce_logic[3].saturating_counter[3][7]_i_4_n_0 ),
        .I3(\debounce_logic[3].saturating_counter_reg[3]_3 [4]),
        .I4(\debounce_logic[3].saturating_counter_reg[3]_3 [5]),
        .O(p_0_in__2[6]));
  LUT2 #(
    .INIT(4'h2)) 
    \debounce_logic[3].saturating_counter[3][7]_i_1 
       (.I0(\wrapping_counter[15]_i_1_n_0 ),
        .I1(Q[3]),
        .O(\debounce_logic[3].saturating_counter[3][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08AAAAAA)) 
    \debounce_logic[3].saturating_counter[3][7]_i_2 
       (.I0(\wrapping_counter[15]_i_1_n_0 ),
        .I1(\debounce_logic[3].saturating_counter[3][7]_i_4_n_0 ),
        .I2(\debounce_logic[3].saturating_counter[3][7]_i_5_n_0 ),
        .I3(\debounce_logic[3].saturating_counter_reg[3]_3 [6]),
        .I4(\debounce_logic[3].saturating_counter_reg[3]_3 [7]),
        .O(\debounce_logic[3].saturating_counter[3][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAA6AAAAAAAAAAAAA)) 
    \debounce_logic[3].saturating_counter[3][7]_i_3 
       (.I0(\debounce_logic[3].saturating_counter_reg[3]_3 [7]),
        .I1(\debounce_logic[3].saturating_counter_reg[3]_3 [5]),
        .I2(\debounce_logic[3].saturating_counter_reg[3]_3 [4]),
        .I3(\debounce_logic[3].saturating_counter[3][7]_i_4_n_0 ),
        .I4(\debounce_logic[3].saturating_counter_reg[3]_3 [3]),
        .I5(\debounce_logic[3].saturating_counter_reg[3]_3 [6]),
        .O(p_0_in__2[7]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \debounce_logic[3].saturating_counter[3][7]_i_4 
       (.I0(\debounce_logic[3].saturating_counter_reg[3]_3 [1]),
        .I1(\debounce_logic[3].saturating_counter_reg[3]_3 [0]),
        .I2(\debounce_logic[3].saturating_counter_reg[3]_3 [2]),
        .O(\debounce_logic[3].saturating_counter[3][7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \debounce_logic[3].saturating_counter[3][7]_i_5 
       (.I0(\debounce_logic[3].saturating_counter_reg[3]_3 [5]),
        .I1(\debounce_logic[3].saturating_counter_reg[3]_3 [4]),
        .I2(\debounce_logic[3].saturating_counter_reg[3]_3 [3]),
        .O(\debounce_logic[3].saturating_counter[3][7]_i_5_n_0 ));
  FDRE \debounce_logic[3].saturating_counter_reg[3][0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\debounce_logic[3].saturating_counter[3][7]_i_2_n_0 ),
        .D(p_0_in__2[0]),
        .Q(\debounce_logic[3].saturating_counter_reg[3]_3 [0]),
        .R(\debounce_logic[3].saturating_counter[3][7]_i_1_n_0 ));
  FDRE \debounce_logic[3].saturating_counter_reg[3][1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\debounce_logic[3].saturating_counter[3][7]_i_2_n_0 ),
        .D(p_0_in__2[1]),
        .Q(\debounce_logic[3].saturating_counter_reg[3]_3 [1]),
        .R(\debounce_logic[3].saturating_counter[3][7]_i_1_n_0 ));
  FDRE \debounce_logic[3].saturating_counter_reg[3][2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\debounce_logic[3].saturating_counter[3][7]_i_2_n_0 ),
        .D(p_0_in__2[2]),
        .Q(\debounce_logic[3].saturating_counter_reg[3]_3 [2]),
        .R(\debounce_logic[3].saturating_counter[3][7]_i_1_n_0 ));
  FDRE \debounce_logic[3].saturating_counter_reg[3][3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\debounce_logic[3].saturating_counter[3][7]_i_2_n_0 ),
        .D(p_0_in__2[3]),
        .Q(\debounce_logic[3].saturating_counter_reg[3]_3 [3]),
        .R(\debounce_logic[3].saturating_counter[3][7]_i_1_n_0 ));
  FDRE \debounce_logic[3].saturating_counter_reg[3][4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\debounce_logic[3].saturating_counter[3][7]_i_2_n_0 ),
        .D(p_0_in__2[4]),
        .Q(\debounce_logic[3].saturating_counter_reg[3]_3 [4]),
        .R(\debounce_logic[3].saturating_counter[3][7]_i_1_n_0 ));
  FDRE \debounce_logic[3].saturating_counter_reg[3][5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\debounce_logic[3].saturating_counter[3][7]_i_2_n_0 ),
        .D(p_0_in__2[5]),
        .Q(\debounce_logic[3].saturating_counter_reg[3]_3 [5]),
        .R(\debounce_logic[3].saturating_counter[3][7]_i_1_n_0 ));
  FDRE \debounce_logic[3].saturating_counter_reg[3][6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\debounce_logic[3].saturating_counter[3][7]_i_2_n_0 ),
        .D(p_0_in__2[6]),
        .Q(\debounce_logic[3].saturating_counter_reg[3]_3 [6]),
        .R(\debounce_logic[3].saturating_counter[3][7]_i_1_n_0 ));
  FDRE \debounce_logic[3].saturating_counter_reg[3][7] 
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
    .INIT(64'h0000000000001000)) 
    \wrapping_counter[15]_i_1 
       (.I0(\wrapping_counter[15]_i_3_n_0 ),
        .I1(wrapping_counter[6]),
        .I2(wrapping_counter[0]),
        .I3(wrapping_counter[12]),
        .I4(wrapping_counter[2]),
        .I5(\wrapping_counter[15]_i_4_n_0 ),
        .O(\wrapping_counter[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \wrapping_counter[15]_i_3 
       (.I0(wrapping_counter[3]),
        .I1(wrapping_counter[7]),
        .I2(wrapping_counter[14]),
        .I3(wrapping_counter[9]),
        .O(\wrapping_counter[15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \wrapping_counter[15]_i_4 
       (.I0(wrapping_counter[11]),
        .I1(wrapping_counter[5]),
        .I2(wrapping_counter[8]),
        .I3(wrapping_counter[13]),
        .I4(\wrapping_counter[15]_i_5_n_0 ),
        .O(\wrapping_counter[15]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \wrapping_counter[15]_i_5 
       (.I0(wrapping_counter[1]),
        .I1(wrapping_counter[15]),
        .I2(wrapping_counter[10]),
        .I3(wrapping_counter[4]),
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
  CARRY4 \wrapping_counter_reg[12]_i_1 
       (.CI(\wrapping_counter_reg[8]_i_1_n_0 ),
        .CO({\wrapping_counter_reg[12]_i_1_n_0 ,\wrapping_counter_reg[12]_i_1_n_1 ,\wrapping_counter_reg[12]_i_1_n_2 ,\wrapping_counter_reg[12]_i_1_n_3 }),
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
  CARRY4 \wrapping_counter_reg[15]_i_2 
       (.CI(\wrapping_counter_reg[12]_i_1_n_0 ),
        .CO({\wrapping_counter_reg[15]_i_2_n_2 ,\wrapping_counter_reg[15]_i_2_n_3 }),
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
  CARRY4 \wrapping_counter_reg[4]_i_1 
       (.CI(\<const0> ),
        .CO({\wrapping_counter_reg[4]_i_1_n_0 ,\wrapping_counter_reg[4]_i_1_n_1 ,\wrapping_counter_reg[4]_i_1_n_2 ,\wrapping_counter_reg[4]_i_1_n_3 }),
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
  CARRY4 \wrapping_counter_reg[8]_i_1 
       (.CI(\wrapping_counter_reg[4]_i_1_n_0 ),
        .CO({\wrapping_counter_reg[8]_i_1_n_0 ,\wrapping_counter_reg[8]_i_1_n_1 ,\wrapping_counter_reg[8]_i_1_n_2 ,\wrapping_counter_reg[8]_i_1_n_3 }),
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
    \edge_detect_pulse_reg[3]_1 ,
    \edge_detect_pulse_reg[1]_0 ,
    \edge_detect_pulse_reg[1]_1 ,
    \edge_detect_pulse_reg[1]_2 ,
    \edge_detect_pulse_reg[1]_3 ,
    E,
    \edge_detect_pulse_reg[3]_2 ,
    \edge_detect_pulse_reg[3]_3 ,
    \edge_detect_pulse_reg[1]_4 ,
    \sync_signal_reg[0] ,
    \edge_detect_pulse_reg[3]_4 ,
    \edge_detect_pulse_reg[3]_5 ,
    next_sample,
    CO,
    \COUNT_MAX_reg[11] ,
    COUNT_MAX1,
    \COUNT_MAX_reg[4] ,
    \COUNT_MAX_reg[0] ,
    \COUNT_MAX_reg[9] ,
    sq_wave_leds,
    D,
    CLK_125MHZ_FPGA_IBUF_BUFG);
  output \edge_detect_pulse_reg[3]_0 ;
  output [1:0]Q;
  output \edge_detect_pulse_reg[3]_1 ;
  output \edge_detect_pulse_reg[1]_0 ;
  output \edge_detect_pulse_reg[1]_1 ;
  output \edge_detect_pulse_reg[1]_2 ;
  output \edge_detect_pulse_reg[1]_3 ;
  output [0:0]E;
  output \edge_detect_pulse_reg[3]_2 ;
  output \edge_detect_pulse_reg[3]_3 ;
  output \edge_detect_pulse_reg[1]_4 ;
  output \sync_signal_reg[0] ;
  output \edge_detect_pulse_reg[3]_4 ;
  output \edge_detect_pulse_reg[3]_5 ;
  input next_sample;
  input [0:0]CO;
  input [0:0]\COUNT_MAX_reg[11] ;
  input [4:0]COUNT_MAX1;
  input \COUNT_MAX_reg[4] ;
  input [0:0]\COUNT_MAX_reg[0] ;
  input \COUNT_MAX_reg[9] ;
  input [0:0]sq_wave_leds;
  input [3:0]D;
  input CLK_125MHZ_FPGA_IBUF_BUFG;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [0:0]CO;
  wire [4:0]COUNT_MAX1;
  wire [0:0]\COUNT_MAX_reg[0] ;
  wire [0:0]\COUNT_MAX_reg[11] ;
  wire \COUNT_MAX_reg[4] ;
  wire \COUNT_MAX_reg[9] ;
  wire [3:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire [2:0]buttons_pressed;
  wire \edge_detect_pulse[0]_i_1_n_0 ;
  wire \edge_detect_pulse[1]_i_1_n_0 ;
  wire \edge_detect_pulse[2]_i_1_n_0 ;
  wire \edge_detect_pulse[3]_i_1_n_0 ;
  wire \edge_detect_pulse_reg[1]_0 ;
  wire \edge_detect_pulse_reg[1]_1 ;
  wire \edge_detect_pulse_reg[1]_2 ;
  wire \edge_detect_pulse_reg[1]_3 ;
  wire \edge_detect_pulse_reg[1]_4 ;
  wire \edge_detect_pulse_reg[3]_0 ;
  wire \edge_detect_pulse_reg[3]_1 ;
  wire \edge_detect_pulse_reg[3]_2 ;
  wire \edge_detect_pulse_reg[3]_3 ;
  wire \edge_detect_pulse_reg[3]_4 ;
  wire \edge_detect_pulse_reg[3]_5 ;
  wire next_sample;
  wire [3:0]signal_in_d;
  wire [0:0]sq_wave_leds;
  wire \sync_signal_reg[0] ;

  LUT5 #(
    .INIT(32'hEFAAAAAA)) 
    \COUNT_MAX[0]_i_3 
       (.I0(Q[1]),
        .I1(\COUNT_MAX_reg[11] ),
        .I2(Q[0]),
        .I3(\COUNT_MAX_reg[0] ),
        .I4(\COUNT_MAX_reg[9] ),
        .O(\edge_detect_pulse_reg[3]_2 ));
  LUT4 #(
    .INIT(16'hFF0E)) 
    \COUNT_MAX[11]_i_1 
       (.I0(buttons_pressed[0]),
        .I1(Q[0]),
        .I2(\COUNT_MAX_reg[11] ),
        .I3(Q[1]),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \COUNT_MAX[11]_i_7 
       (.I0(Q[0]),
        .I1(\COUNT_MAX_reg[11] ),
        .O(\edge_detect_pulse_reg[1]_4 ));
  LUT5 #(
    .INIT(32'hF0F0F0FD)) 
    \COUNT_MAX[4]_i_3 
       (.I0(Q[0]),
        .I1(\COUNT_MAX_reg[11] ),
        .I2(Q[1]),
        .I3(COUNT_MAX1[0]),
        .I4(\COUNT_MAX_reg[4] ),
        .O(\edge_detect_pulse_reg[1]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hF0F0F0FD)) 
    \COUNT_MAX[5]_i_3 
       (.I0(Q[0]),
        .I1(\COUNT_MAX_reg[11] ),
        .I2(Q[1]),
        .I3(COUNT_MAX1[1]),
        .I4(\COUNT_MAX_reg[4] ),
        .O(\edge_detect_pulse_reg[1]_2 ));
  LUT5 #(
    .INIT(32'hF0F0F0FD)) 
    \COUNT_MAX[6]_i_3 
       (.I0(Q[0]),
        .I1(\COUNT_MAX_reg[11] ),
        .I2(Q[1]),
        .I3(COUNT_MAX1[2]),
        .I4(\COUNT_MAX_reg[4] ),
        .O(\edge_detect_pulse_reg[1]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \COUNT_MAX[7]_i_11 
       (.I0(Q[1]),
        .I1(\COUNT_MAX_reg[11] ),
        .I2(Q[0]),
        .O(\edge_detect_pulse_reg[3]_4 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \COUNT_MAX[7]_i_5 
       (.I0(Q[1]),
        .I1(\COUNT_MAX_reg[11] ),
        .I2(Q[0]),
        .O(\edge_detect_pulse_reg[3]_5 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hF0F0F0FD)) 
    \COUNT_MAX[8]_i_3 
       (.I0(Q[0]),
        .I1(\COUNT_MAX_reg[11] ),
        .I2(Q[1]),
        .I3(COUNT_MAX1[3]),
        .I4(\COUNT_MAX_reg[4] ),
        .O(\edge_detect_pulse_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hBABBAAAA)) 
    \COUNT_MAX[9]_i_3 
       (.I0(Q[1]),
        .I1(COUNT_MAX1[4]),
        .I2(\COUNT_MAX_reg[11] ),
        .I3(Q[0]),
        .I4(\COUNT_MAX_reg[9] ),
        .O(\edge_detect_pulse_reg[3]_3 ));
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
  LUT3 #(
    .INIT(8'hEA)) 
    \sample_counter[0]_i_1 
       (.I0(Q[1]),
        .I1(next_sample),
        .I2(CO),
        .O(\edge_detect_pulse_reg[3]_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    sel_i_1
       (.I0(Q[1]),
        .I1(next_sample),
        .O(\edge_detect_pulse_reg[3]_0 ));
  FDRE \signal_in_d_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(D[0]),
        .Q(signal_in_d[0]),
        .R(\<const0> ));
  FDRE \signal_in_d_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(D[1]),
        .Q(signal_in_d[1]),
        .R(\<const0> ));
  FDRE \signal_in_d_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(D[2]),
        .Q(signal_in_d[2]),
        .R(\<const0> ));
  FDRE \signal_in_d_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(D[3]),
        .Q(signal_in_d[3]),
        .R(\<const0> ));
endmodule

module sq_wave_gen
   (Q,
    CO,
    sq_wave_leds,
    \COUNT_MAX_reg[10]_0 ,
    \code_reg[4]_0 ,
    \code_reg[4]_1 ,
    \COUNT_MAX_reg[8]_0 ,
    LEDS_OBUF,
    mode_reg_0,
    \code_reg[2]_0 ,
    \sample_counter_reg[0]_0 ,
    next_sample,
    CLK_125MHZ_FPGA_IBUF_BUFG,
    mode_reg_1,
    \COUNT_MAX_reg[2]_0 ,
    DOADO,
    \code_reg[4]_2 ,
    \COUNT_MAX_reg[11]_0 ,
    \COUNT_MAX_reg[9]_0 ,
    \COUNT_MAX_reg[8]_1 ,
    \COUNT_MAX_reg[6]_0 ,
    \COUNT_MAX_reg[5]_0 ,
    \COUNT_MAX_reg[4]_0 ,
    \COUNT_MAX_reg[1]_0 ,
    \COUNT_MAX_reg[7]_0 ,
    \COUNT_MAX_reg[7]_1 ,
    \COUNT_MAX_reg[0]_0 ,
    E);
  output [0:0]Q;
  output [0:0]CO;
  output [0:0]sq_wave_leds;
  output [5:0]\COUNT_MAX_reg[10]_0 ;
  output \code_reg[4]_0 ;
  output \code_reg[4]_1 ;
  output \COUNT_MAX_reg[8]_0 ;
  output [0:0]LEDS_OBUF;
  output mode_reg_0;
  output \code_reg[2]_0 ;
  input \sample_counter_reg[0]_0 ;
  input next_sample;
  input CLK_125MHZ_FPGA_IBUF_BUFG;
  input mode_reg_1;
  input [0:0]\COUNT_MAX_reg[2]_0 ;
  input [3:0]DOADO;
  input [1:0]\code_reg[4]_2 ;
  input \COUNT_MAX_reg[11]_0 ;
  input \COUNT_MAX_reg[9]_0 ;
  input \COUNT_MAX_reg[8]_1 ;
  input \COUNT_MAX_reg[6]_0 ;
  input \COUNT_MAX_reg[5]_0 ;
  input \COUNT_MAX_reg[4]_0 ;
  input \COUNT_MAX_reg[1]_0 ;
  input \COUNT_MAX_reg[7]_0 ;
  input \COUNT_MAX_reg[7]_1 ;
  input \COUNT_MAX_reg[0]_0 ;
  input [0:0]E;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [0:0]CO;
  wire [11:1]COUNT_MAX;
  wire [11:2]COUNT_MAX1;
  wire [11:0]COUNT_MAX13_in;
  wire \COUNT_MAX[0]_i_2_n_0 ;
  wire \COUNT_MAX[10]_i_2_n_0 ;
  wire \COUNT_MAX[10]_i_3_n_0 ;
  wire \COUNT_MAX[10]_i_5_n_0 ;
  wire \COUNT_MAX[10]_i_6_n_0 ;
  wire \COUNT_MAX[10]_i_7_n_0 ;
  wire \COUNT_MAX[11]_i_10_n_0 ;
  wire \COUNT_MAX[11]_i_11_n_0 ;
  wire \COUNT_MAX[11]_i_12_n_0 ;
  wire \COUNT_MAX[11]_i_13_n_0 ;
  wire \COUNT_MAX[11]_i_3_n_0 ;
  wire \COUNT_MAX[11]_i_5_n_0 ;
  wire \COUNT_MAX[11]_i_6_n_0 ;
  wire \COUNT_MAX[11]_i_8_n_0 ;
  wire \COUNT_MAX[11]_i_9_n_0 ;
  wire \COUNT_MAX[1]_i_2_n_0 ;
  wire \COUNT_MAX[1]_i_3_n_0 ;
  wire \COUNT_MAX[2]_i_2_n_0 ;
  wire \COUNT_MAX[2]_i_3_n_0 ;
  wire \COUNT_MAX[3]_i_3_n_0 ;
  wire \COUNT_MAX[3]_i_4_n_0 ;
  wire \COUNT_MAX[3]_i_5_n_0 ;
  wire \COUNT_MAX[3]_i_7_n_0 ;
  wire \COUNT_MAX[3]_i_8_n_0 ;
  wire \COUNT_MAX[4]_i_2_n_0 ;
  wire \COUNT_MAX[5]_i_2_n_0 ;
  wire \COUNT_MAX[6]_i_2_n_0 ;
  wire \COUNT_MAX[7]_i_10_n_0 ;
  wire \COUNT_MAX[7]_i_2_n_0 ;
  wire \COUNT_MAX[7]_i_6_n_0 ;
  wire \COUNT_MAX[7]_i_7_n_0 ;
  wire \COUNT_MAX[7]_i_8_n_0 ;
  wire \COUNT_MAX[7]_i_9_n_0 ;
  wire \COUNT_MAX[8]_i_2_n_0 ;
  wire \COUNT_MAX[8]_i_4_n_0 ;
  wire \COUNT_MAX[9]_i_2_n_0 ;
  wire \COUNT_MAX[9]_i_4_n_0 ;
  wire \COUNT_MAX_reg[0]_0 ;
  wire [5:0]\COUNT_MAX_reg[10]_0 ;
  wire \COUNT_MAX_reg[10]_i_4_n_1 ;
  wire \COUNT_MAX_reg[10]_i_4_n_2 ;
  wire \COUNT_MAX_reg[10]_i_4_n_3 ;
  wire \COUNT_MAX_reg[10]_i_8_n_0 ;
  wire \COUNT_MAX_reg[10]_i_8_n_1 ;
  wire \COUNT_MAX_reg[10]_i_8_n_2 ;
  wire \COUNT_MAX_reg[10]_i_8_n_3 ;
  wire \COUNT_MAX_reg[11]_0 ;
  wire \COUNT_MAX_reg[11]_i_4_n_1 ;
  wire \COUNT_MAX_reg[11]_i_4_n_2 ;
  wire \COUNT_MAX_reg[11]_i_4_n_3 ;
  wire \COUNT_MAX_reg[1]_0 ;
  wire [0:0]\COUNT_MAX_reg[2]_0 ;
  wire \COUNT_MAX_reg[3]_i_2_n_0 ;
  wire \COUNT_MAX_reg[3]_i_2_n_1 ;
  wire \COUNT_MAX_reg[3]_i_2_n_2 ;
  wire \COUNT_MAX_reg[3]_i_2_n_3 ;
  wire \COUNT_MAX_reg[3]_i_6_n_0 ;
  wire \COUNT_MAX_reg[3]_i_6_n_1 ;
  wire \COUNT_MAX_reg[3]_i_6_n_2 ;
  wire \COUNT_MAX_reg[3]_i_6_n_3 ;
  wire \COUNT_MAX_reg[4]_0 ;
  wire \COUNT_MAX_reg[5]_0 ;
  wire \COUNT_MAX_reg[6]_0 ;
  wire \COUNT_MAX_reg[7]_0 ;
  wire \COUNT_MAX_reg[7]_1 ;
  wire \COUNT_MAX_reg[7]_i_4_n_0 ;
  wire \COUNT_MAX_reg[7]_i_4_n_1 ;
  wire \COUNT_MAX_reg[7]_i_4_n_2 ;
  wire \COUNT_MAX_reg[7]_i_4_n_3 ;
  wire \COUNT_MAX_reg[8]_0 ;
  wire \COUNT_MAX_reg[8]_1 ;
  wire \COUNT_MAX_reg[9]_0 ;
  wire [3:0]DOADO;
  wire [0:0]E;
  wire [0:0]LEDS_OBUF;
  wire [0:0]Q;
  wire \code[2]_i_1_n_0 ;
  wire \code[4]_i_1_n_0 ;
  wire \code_reg[2]_0 ;
  wire \code_reg[4]_0 ;
  wire \code_reg[4]_1 ;
  wire [1:0]\code_reg[4]_2 ;
  wire mode_reg_0;
  wire mode_reg_1;
  wire next_sample;
  wire [11:0]p_1_in;
  wire sample_counter0_carry__0_i_1_n_0;
  wire sample_counter0_carry__0_i_2_n_0;
  wire sample_counter0_carry__0_i_3_n_0;
  wire sample_counter0_carry__0_i_4_n_0;
  wire sample_counter0_carry__0_n_0;
  wire sample_counter0_carry__0_n_1;
  wire sample_counter0_carry__0_n_2;
  wire sample_counter0_carry__0_n_3;
  wire sample_counter0_carry__1_n_0;
  wire sample_counter0_carry__1_n_1;
  wire sample_counter0_carry__1_n_2;
  wire sample_counter0_carry__1_n_3;
  wire sample_counter0_carry__2_n_1;
  wire sample_counter0_carry__2_n_2;
  wire sample_counter0_carry__2_n_3;
  wire sample_counter0_carry_i_1_n_0;
  wire sample_counter0_carry_i_2_n_0;
  wire sample_counter0_carry_i_3_n_0;
  wire sample_counter0_carry_i_4_n_0;
  wire sample_counter0_carry_i_5_n_0;
  wire sample_counter0_carry_i_6_n_0;
  wire sample_counter0_carry_i_7_n_0;
  wire sample_counter0_carry_i_8_n_0;
  wire sample_counter0_carry_n_0;
  wire sample_counter0_carry_n_1;
  wire sample_counter0_carry_n_2;
  wire sample_counter0_carry_n_3;
  wire [11:1]sample_counter1;
  wire sample_counter1_carry__0_i_1_n_0;
  wire sample_counter1_carry__0_i_2_n_0;
  wire sample_counter1_carry__0_i_3_n_0;
  wire sample_counter1_carry__0_i_4_n_0;
  wire sample_counter1_carry__0_n_0;
  wire sample_counter1_carry__0_n_1;
  wire sample_counter1_carry__0_n_2;
  wire sample_counter1_carry__0_n_3;
  wire sample_counter1_carry__1_i_1_n_0;
  wire sample_counter1_carry__1_i_2_n_0;
  wire sample_counter1_carry__1_i_3_n_0;
  wire sample_counter1_carry__1_n_0;
  wire sample_counter1_carry__1_n_2;
  wire sample_counter1_carry__1_n_3;
  wire sample_counter1_carry_i_1_n_0;
  wire sample_counter1_carry_i_2_n_0;
  wire sample_counter1_carry_i_3_n_0;
  wire sample_counter1_carry_i_4_n_0;
  wire sample_counter1_carry_n_0;
  wire sample_counter1_carry_n_1;
  wire sample_counter1_carry_n_2;
  wire sample_counter1_carry_n_3;
  wire \sample_counter[0]_i_4_n_0 ;
  wire [11:0]sample_counter_reg;
  wire \sample_counter_reg[0]_0 ;
  wire \sample_counter_reg[0]_i_3_n_0 ;
  wire \sample_counter_reg[0]_i_3_n_1 ;
  wire \sample_counter_reg[0]_i_3_n_2 ;
  wire \sample_counter_reg[0]_i_3_n_3 ;
  wire \sample_counter_reg[0]_i_3_n_4 ;
  wire \sample_counter_reg[0]_i_3_n_5 ;
  wire \sample_counter_reg[0]_i_3_n_6 ;
  wire \sample_counter_reg[0]_i_3_n_7 ;
  wire \sample_counter_reg[4]_i_1_n_0 ;
  wire \sample_counter_reg[4]_i_1_n_1 ;
  wire \sample_counter_reg[4]_i_1_n_2 ;
  wire \sample_counter_reg[4]_i_1_n_3 ;
  wire \sample_counter_reg[4]_i_1_n_4 ;
  wire \sample_counter_reg[4]_i_1_n_5 ;
  wire \sample_counter_reg[4]_i_1_n_6 ;
  wire \sample_counter_reg[4]_i_1_n_7 ;
  wire \sample_counter_reg[8]_i_1_n_1 ;
  wire \sample_counter_reg[8]_i_1_n_2 ;
  wire \sample_counter_reg[8]_i_1_n_3 ;
  wire \sample_counter_reg[8]_i_1_n_4 ;
  wire \sample_counter_reg[8]_i_1_n_5 ;
  wire \sample_counter_reg[8]_i_1_n_6 ;
  wire \sample_counter_reg[8]_i_1_n_7 ;
  wire [0:0]sq_wave_leds;
  wire wave_state;
  wire wave_state_i_1_n_0;
  wire [3:0]\NLW_COUNT_MAX_reg[3]_i_6_O_UNCONNECTED ;
  wire [3:0]NLW_sample_counter1_carry__1_CO_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFE2)) 
    AUD_PWM_OBUF_inst_i_3
       (.I0(\code_reg[4]_1 ),
        .I1(\COUNT_MAX_reg[2]_0 ),
        .I2(DOADO[3]),
        .I3(DOADO[0]),
        .I4(DOADO[1]),
        .I5(DOADO[2]),
        .O(\code_reg[4]_0 ));
  LUT4 #(
    .INIT(16'hEEFE)) 
    \COUNT_MAX[0]_i_1 
       (.I0(\COUNT_MAX[0]_i_2_n_0 ),
        .I1(\COUNT_MAX_reg[0]_0 ),
        .I2(COUNT_MAX[1]),
        .I3(\COUNT_MAX[8]_i_4_n_0 ),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    \COUNT_MAX[0]_i_2 
       (.I0(\COUNT_MAX[10]_i_3_n_0 ),
        .I1(COUNT_MAX13_in[0]),
        .I2(sq_wave_leds),
        .I3(\code_reg[4]_2 [0]),
        .I4(\COUNT_MAX_reg[2]_0 ),
        .O(\COUNT_MAX[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000AAEA)) 
    \COUNT_MAX[10]_i_1 
       (.I0(\COUNT_MAX[10]_i_2_n_0 ),
        .I1(\COUNT_MAX[10]_i_3_n_0 ),
        .I2(COUNT_MAX13_in[10]),
        .I3(sq_wave_leds),
        .I4(\COUNT_MAX[10]_i_5_n_0 ),
        .I5(\code_reg[4]_2 [1]),
        .O(p_1_in[10]));
  LUT6 #(
    .INIT(64'hFFFF0040FFFFFFFF)) 
    \COUNT_MAX[10]_i_2 
       (.I0(COUNT_MAX[10]),
        .I1(sq_wave_leds),
        .I2(COUNT_MAX[9]),
        .I3(COUNT_MAX[11]),
        .I4(\COUNT_MAX_reg[2]_0 ),
        .I5(\code_reg[4]_2 [0]),
        .O(\COUNT_MAX[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000FF1FFFFFFFFF)) 
    \COUNT_MAX[10]_i_3 
       (.I0(\COUNT_MAX[10]_i_6_n_0 ),
        .I1(COUNT_MAX[4]),
        .I2(COUNT_MAX[9]),
        .I3(\COUNT_MAX[10]_i_7_n_0 ),
        .I4(COUNT_MAX[10]),
        .I5(COUNT_MAX[11]),
        .O(\COUNT_MAX[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000B0BBBBBBB0BB)) 
    \COUNT_MAX[10]_i_5 
       (.I0(\COUNT_MAX_reg[2]_0 ),
        .I1(\code_reg[4]_2 [0]),
        .I2(\COUNT_MAX[11]_i_5_n_0 ),
        .I3(COUNT_MAX1[10]),
        .I4(sq_wave_leds),
        .I5(COUNT_MAX[11]),
        .O(\COUNT_MAX[10]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hC8C0)) 
    \COUNT_MAX[10]_i_6 
       (.I0(COUNT_MAX[1]),
        .I1(COUNT_MAX[3]),
        .I2(COUNT_MAX[2]),
        .I3(Q),
        .O(\COUNT_MAX[10]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \COUNT_MAX[10]_i_7 
       (.I0(COUNT_MAX[6]),
        .I1(COUNT_MAX[7]),
        .I2(COUNT_MAX[5]),
        .I3(COUNT_MAX[8]),
        .O(\COUNT_MAX[10]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \COUNT_MAX[11]_i_10 
       (.I0(COUNT_MAX[10]),
        .O(\COUNT_MAX[11]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \COUNT_MAX[11]_i_11 
       (.I0(COUNT_MAX[9]),
        .O(\COUNT_MAX[11]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \COUNT_MAX[11]_i_12 
       (.I0(COUNT_MAX[8]),
        .O(\COUNT_MAX[11]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \COUNT_MAX[11]_i_13 
       (.I0(COUNT_MAX[11]),
        .I1(COUNT_MAX[4]),
        .I2(COUNT_MAX[9]),
        .I3(COUNT_MAX[10]),
        .O(\COUNT_MAX[11]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAA00A8)) 
    \COUNT_MAX[11]_i_2 
       (.I0(\COUNT_MAX[11]_i_3_n_0 ),
        .I1(COUNT_MAX1[11]),
        .I2(\COUNT_MAX[11]_i_5_n_0 ),
        .I3(sq_wave_leds),
        .I4(\COUNT_MAX[11]_i_6_n_0 ),
        .I5(\code_reg[4]_2 [1]),
        .O(p_1_in[11]));
  LUT6 #(
    .INIT(64'hFF0F8F8F0F0F8F8F)) 
    \COUNT_MAX[11]_i_3 
       (.I0(COUNT_MAX13_in[11]),
        .I1(\COUNT_MAX[10]_i_3_n_0 ),
        .I2(\COUNT_MAX_reg[11]_0 ),
        .I3(\COUNT_MAX[11]_i_8_n_0 ),
        .I4(sq_wave_leds),
        .I5(COUNT_MAX[10]),
        .O(\COUNT_MAX[11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \COUNT_MAX[11]_i_5 
       (.I0(COUNT_MAX[8]),
        .I1(COUNT_MAX[5]),
        .I2(COUNT_MAX[7]),
        .I3(COUNT_MAX[6]),
        .I4(\COUNT_MAX[11]_i_13_n_0 ),
        .O(\COUNT_MAX[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4F4F4FFF44444444)) 
    \COUNT_MAX[11]_i_6 
       (.I0(\COUNT_MAX_reg[2]_0 ),
        .I1(\code_reg[4]_2 [0]),
        .I2(COUNT_MAX[3]),
        .I3(COUNT_MAX[1]),
        .I4(COUNT_MAX[2]),
        .I5(\COUNT_MAX[11]_i_5_n_0 ),
        .O(\COUNT_MAX[11]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h10111111)) 
    \COUNT_MAX[11]_i_8 
       (.I0(COUNT_MAX[11]),
        .I1(COUNT_MAX[9]),
        .I2(\COUNT_MAX[10]_i_7_n_0 ),
        .I3(COUNT_MAX[4]),
        .I4(\COUNT_MAX[10]_i_6_n_0 ),
        .O(\COUNT_MAX[11]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \COUNT_MAX[11]_i_9 
       (.I0(COUNT_MAX[11]),
        .O(\COUNT_MAX[11]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAFFEF)) 
    \COUNT_MAX[1]_i_1 
       (.I0(\COUNT_MAX[1]_i_2_n_0 ),
        .I1(\COUNT_MAX[1]_i_3_n_0 ),
        .I2(sq_wave_leds),
        .I3(COUNT_MAX[2]),
        .I4(\COUNT_MAX_reg[1]_0 ),
        .I5(\code_reg[4]_2 [1]),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'hF0F0B0B000F0B0B0)) 
    \COUNT_MAX[1]_i_2 
       (.I0(COUNT_MAX13_in[1]),
        .I1(\COUNT_MAX[10]_i_3_n_0 ),
        .I2(\COUNT_MAX_reg[11]_0 ),
        .I3(\COUNT_MAX[9]_i_4_n_0 ),
        .I4(sq_wave_leds),
        .I5(Q),
        .O(\COUNT_MAX[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h02AA)) 
    \COUNT_MAX[1]_i_3 
       (.I0(\COUNT_MAX[11]_i_5_n_0 ),
        .I1(COUNT_MAX[2]),
        .I2(COUNT_MAX[1]),
        .I3(COUNT_MAX[3]),
        .O(\COUNT_MAX[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF1011)) 
    \COUNT_MAX[2]_i_1 
       (.I0(\COUNT_MAX[2]_i_2_n_0 ),
        .I1(\code_reg[4]_2 [1]),
        .I2(\COUNT_MAX_reg[2]_0 ),
        .I3(\code_reg[4]_2 [0]),
        .I4(\COUNT_MAX[2]_i_3_n_0 ),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'h3F353F353F35FF35)) 
    \COUNT_MAX[2]_i_2 
       (.I0(COUNT_MAX1[2]),
        .I1(COUNT_MAX[3]),
        .I2(sq_wave_leds),
        .I3(\COUNT_MAX[11]_i_5_n_0 ),
        .I4(COUNT_MAX[2]),
        .I5(COUNT_MAX[1]),
        .O(\COUNT_MAX[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFBB0FBB)) 
    \COUNT_MAX[2]_i_3 
       (.I0(COUNT_MAX13_in[2]),
        .I1(\COUNT_MAX[10]_i_3_n_0 ),
        .I2(\COUNT_MAX[9]_i_4_n_0 ),
        .I3(sq_wave_leds),
        .I4(COUNT_MAX[1]),
        .I5(\COUNT_MAX_reg[7]_1 ),
        .O(\COUNT_MAX[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000008F8FFF8F)) 
    \COUNT_MAX[3]_i_1 
       (.I0(sq_wave_leds),
        .I1(COUNT_MAX[4]),
        .I2(\COUNT_MAX_reg[7]_0 ),
        .I3(COUNT_MAX1[3]),
        .I4(\COUNT_MAX_reg[8]_0 ),
        .I5(\COUNT_MAX[3]_i_3_n_0 ),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'h000000000F77FF77)) 
    \COUNT_MAX[3]_i_3 
       (.I0(COUNT_MAX13_in[3]),
        .I1(\COUNT_MAX[10]_i_3_n_0 ),
        .I2(\COUNT_MAX[9]_i_4_n_0 ),
        .I3(sq_wave_leds),
        .I4(COUNT_MAX[2]),
        .I5(\COUNT_MAX_reg[7]_1 ),
        .O(\COUNT_MAX[3]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \COUNT_MAX[3]_i_4 
       (.I0(COUNT_MAX[2]),
        .O(\COUNT_MAX[3]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \COUNT_MAX[3]_i_5 
       (.I0(COUNT_MAX[1]),
        .O(\COUNT_MAX[3]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \COUNT_MAX[3]_i_7 
       (.I0(COUNT_MAX[3]),
        .O(\COUNT_MAX[3]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \COUNT_MAX[3]_i_8 
       (.I0(COUNT_MAX[1]),
        .O(\COUNT_MAX[3]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h2220)) 
    \COUNT_MAX[4]_i_1 
       (.I0(\COUNT_MAX[4]_i_2_n_0 ),
        .I1(\COUNT_MAX_reg[4]_0 ),
        .I2(COUNT_MAX[5]),
        .I3(\COUNT_MAX[8]_i_4_n_0 ),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'hFF0F8F8F0F0F8F8F)) 
    \COUNT_MAX[4]_i_2 
       (.I0(COUNT_MAX13_in[4]),
        .I1(\COUNT_MAX[10]_i_3_n_0 ),
        .I2(\COUNT_MAX_reg[11]_0 ),
        .I3(\COUNT_MAX[9]_i_4_n_0 ),
        .I4(sq_wave_leds),
        .I5(COUNT_MAX[3]),
        .O(\COUNT_MAX[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h2220)) 
    \COUNT_MAX[5]_i_1 
       (.I0(\COUNT_MAX[5]_i_2_n_0 ),
        .I1(\COUNT_MAX_reg[5]_0 ),
        .I2(COUNT_MAX[6]),
        .I3(\COUNT_MAX[8]_i_4_n_0 ),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'hFF0F8F8F0F0F8F8F)) 
    \COUNT_MAX[5]_i_2 
       (.I0(COUNT_MAX13_in[5]),
        .I1(\COUNT_MAX[10]_i_3_n_0 ),
        .I2(\COUNT_MAX_reg[11]_0 ),
        .I3(\COUNT_MAX[9]_i_4_n_0 ),
        .I4(sq_wave_leds),
        .I5(COUNT_MAX[4]),
        .O(\COUNT_MAX[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h2220)) 
    \COUNT_MAX[6]_i_1 
       (.I0(\COUNT_MAX[6]_i_2_n_0 ),
        .I1(\COUNT_MAX_reg[6]_0 ),
        .I2(COUNT_MAX[7]),
        .I3(\COUNT_MAX[8]_i_4_n_0 ),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'hFF0F8F8F0F0F8F8F)) 
    \COUNT_MAX[6]_i_2 
       (.I0(COUNT_MAX13_in[6]),
        .I1(\COUNT_MAX[10]_i_3_n_0 ),
        .I2(\COUNT_MAX_reg[11]_0 ),
        .I3(\COUNT_MAX[9]_i_4_n_0 ),
        .I4(sq_wave_leds),
        .I5(COUNT_MAX[5]),
        .O(\COUNT_MAX[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE0FFFF)) 
    \COUNT_MAX[7]_i_1 
       (.I0(\COUNT_MAX[7]_i_2_n_0 ),
        .I1(COUNT_MAX[8]),
        .I2(\COUNT_MAX_reg[8]_0 ),
        .I3(COUNT_MAX1[7]),
        .I4(\COUNT_MAX_reg[7]_0 ),
        .I5(\COUNT_MAX[7]_i_6_n_0 ),
        .O(p_1_in[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \COUNT_MAX[7]_i_10 
       (.I0(COUNT_MAX[4]),
        .O(\COUNT_MAX[7]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h5700FFFF)) 
    \COUNT_MAX[7]_i_2 
       (.I0(COUNT_MAX[3]),
        .I1(COUNT_MAX[1]),
        .I2(COUNT_MAX[2]),
        .I3(\COUNT_MAX[11]_i_5_n_0 ),
        .I4(sq_wave_leds),
        .O(\COUNT_MAX[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000001)) 
    \COUNT_MAX[7]_i_3 
       (.I0(COUNT_MAX[8]),
        .I1(COUNT_MAX[5]),
        .I2(COUNT_MAX[7]),
        .I3(COUNT_MAX[6]),
        .I4(\COUNT_MAX[11]_i_13_n_0 ),
        .I5(sq_wave_leds),
        .O(\COUNT_MAX_reg[8]_0 ));
  LUT6 #(
    .INIT(64'h000000000F77FF77)) 
    \COUNT_MAX[7]_i_6 
       (.I0(COUNT_MAX13_in[7]),
        .I1(\COUNT_MAX[10]_i_3_n_0 ),
        .I2(\COUNT_MAX[9]_i_4_n_0 ),
        .I3(sq_wave_leds),
        .I4(COUNT_MAX[6]),
        .I5(\COUNT_MAX_reg[7]_1 ),
        .O(\COUNT_MAX[7]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \COUNT_MAX[7]_i_7 
       (.I0(COUNT_MAX[7]),
        .O(\COUNT_MAX[7]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \COUNT_MAX[7]_i_8 
       (.I0(COUNT_MAX[6]),
        .O(\COUNT_MAX[7]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \COUNT_MAX[7]_i_9 
       (.I0(COUNT_MAX[5]),
        .O(\COUNT_MAX[7]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h2220)) 
    \COUNT_MAX[8]_i_1 
       (.I0(\COUNT_MAX[8]_i_2_n_0 ),
        .I1(\COUNT_MAX_reg[8]_1 ),
        .I2(COUNT_MAX[9]),
        .I3(\COUNT_MAX[8]_i_4_n_0 ),
        .O(p_1_in[8]));
  LUT6 #(
    .INIT(64'hFF0F8F8F0F0F8F8F)) 
    \COUNT_MAX[8]_i_2 
       (.I0(COUNT_MAX13_in[8]),
        .I1(\COUNT_MAX[10]_i_3_n_0 ),
        .I2(\COUNT_MAX_reg[11]_0 ),
        .I3(\COUNT_MAX[9]_i_4_n_0 ),
        .I4(sq_wave_leds),
        .I5(COUNT_MAX[7]),
        .O(\COUNT_MAX[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF02AAFFFFFFFF)) 
    \COUNT_MAX[8]_i_4 
       (.I0(\COUNT_MAX[11]_i_5_n_0 ),
        .I1(COUNT_MAX[2]),
        .I2(COUNT_MAX[1]),
        .I3(COUNT_MAX[3]),
        .I4(\COUNT_MAX_reg[11]_0 ),
        .I5(sq_wave_leds),
        .O(\COUNT_MAX[8]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h22222022)) 
    \COUNT_MAX[9]_i_1 
       (.I0(\COUNT_MAX[9]_i_2_n_0 ),
        .I1(\COUNT_MAX_reg[9]_0 ),
        .I2(\COUNT_MAX[11]_i_6_n_0 ),
        .I3(sq_wave_leds),
        .I4(COUNT_MAX[10]),
        .O(p_1_in[9]));
  LUT6 #(
    .INIT(64'hFF0F8F8F0F0F8F8F)) 
    \COUNT_MAX[9]_i_2 
       (.I0(COUNT_MAX13_in[9]),
        .I1(\COUNT_MAX[10]_i_3_n_0 ),
        .I2(\COUNT_MAX_reg[11]_0 ),
        .I3(\COUNT_MAX[9]_i_4_n_0 ),
        .I4(sq_wave_leds),
        .I5(COUNT_MAX[8]),
        .O(\COUNT_MAX[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000F70000FFFF)) 
    \COUNT_MAX[9]_i_4 
       (.I0(\COUNT_MAX[10]_i_6_n_0 ),
        .I1(COUNT_MAX[4]),
        .I2(\COUNT_MAX[10]_i_7_n_0 ),
        .I3(COUNT_MAX[9]),
        .I4(COUNT_MAX[11]),
        .I5(COUNT_MAX[10]),
        .O(\COUNT_MAX[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5555555555555554)) 
    \COUNT_MAX[9]_i_5 
       (.I0(sq_wave_leds),
        .I1(\COUNT_MAX[11]_i_13_n_0 ),
        .I2(COUNT_MAX[6]),
        .I3(COUNT_MAX[7]),
        .I4(COUNT_MAX[5]),
        .I5(COUNT_MAX[8]),
        .O(mode_reg_0));
  FDRE #(
    .INIT(1'b1)) 
    \COUNT_MAX_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(p_1_in[0]),
        .Q(Q),
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
  CARRY4 \COUNT_MAX_reg[10]_i_4 
       (.CI(\COUNT_MAX_reg[10]_i_8_n_0 ),
        .CO({\COUNT_MAX_reg[10]_i_4_n_1 ,\COUNT_MAX_reg[10]_i_4_n_2 ,\COUNT_MAX_reg[10]_i_4_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(COUNT_MAX13_in[11:8]),
        .S(COUNT_MAX[11:8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \COUNT_MAX_reg[10]_i_8 
       (.CI(\COUNT_MAX_reg[3]_i_6_n_0 ),
        .CO({\COUNT_MAX_reg[10]_i_8_n_0 ,\COUNT_MAX_reg[10]_i_8_n_1 ,\COUNT_MAX_reg[10]_i_8_n_2 ,\COUNT_MAX_reg[10]_i_8_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(COUNT_MAX13_in[7:4]),
        .S(COUNT_MAX[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \COUNT_MAX_reg[11] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(p_1_in[11]),
        .Q(COUNT_MAX[11]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \COUNT_MAX_reg[11]_i_4 
       (.CI(\COUNT_MAX_reg[7]_i_4_n_0 ),
        .CO({\COUNT_MAX_reg[11]_i_4_n_1 ,\COUNT_MAX_reg[11]_i_4_n_2 ,\COUNT_MAX_reg[11]_i_4_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,COUNT_MAX[10:8]}),
        .O({COUNT_MAX1[11:10],\COUNT_MAX_reg[10]_0 [5:4]}),
        .S({\COUNT_MAX[11]_i_9_n_0 ,\COUNT_MAX[11]_i_10_n_0 ,\COUNT_MAX[11]_i_11_n_0 ,\COUNT_MAX[11]_i_12_n_0 }));
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
  FDRE #(
    .INIT(1'b1)) 
    \COUNT_MAX_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(p_1_in[3]),
        .Q(COUNT_MAX[3]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \COUNT_MAX_reg[3]_i_2 
       (.CI(\<const0> ),
        .CO({\COUNT_MAX_reg[3]_i_2_n_0 ,\COUNT_MAX_reg[3]_i_2_n_1 ,\COUNT_MAX_reg[3]_i_2_n_2 ,\COUNT_MAX_reg[3]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,COUNT_MAX[2:1],\<const0> }),
        .O({COUNT_MAX1[3:2],\COUNT_MAX_reg[10]_0 [0],COUNT_MAX13_in[0]}),
        .S({COUNT_MAX[3],\COUNT_MAX[3]_i_4_n_0 ,\COUNT_MAX[3]_i_5_n_0 ,Q}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \COUNT_MAX_reg[3]_i_6 
       (.CI(\<const0> ),
        .CO({\COUNT_MAX_reg[3]_i_6_n_0 ,\COUNT_MAX_reg[3]_i_6_n_1 ,\COUNT_MAX_reg[3]_i_6_n_2 ,\COUNT_MAX_reg[3]_i_6_n_3 }),
        .CYINIT(\<const0> ),
        .DI({COUNT_MAX[3],\<const0> ,COUNT_MAX[1],\<const0> }),
        .O({COUNT_MAX13_in[3:1],\NLW_COUNT_MAX_reg[3]_i_6_O_UNCONNECTED [0]}),
        .S({\COUNT_MAX[3]_i_7_n_0 ,COUNT_MAX[2],\COUNT_MAX[3]_i_8_n_0 ,Q}));
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
  FDRE #(
    .INIT(1'b1)) 
    \COUNT_MAX_reg[7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(p_1_in[7]),
        .Q(COUNT_MAX[7]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \COUNT_MAX_reg[7]_i_4 
       (.CI(\COUNT_MAX_reg[3]_i_2_n_0 ),
        .CO({\COUNT_MAX_reg[7]_i_4_n_0 ,\COUNT_MAX_reg[7]_i_4_n_1 ,\COUNT_MAX_reg[7]_i_4_n_2 ,\COUNT_MAX_reg[7]_i_4_n_3 }),
        .CYINIT(\<const0> ),
        .DI(COUNT_MAX[7:4]),
        .O({COUNT_MAX1[7],\COUNT_MAX_reg[10]_0 [3:1]}),
        .S({\COUNT_MAX[7]_i_7_n_0 ,\COUNT_MAX[7]_i_8_n_0 ,\COUNT_MAX[7]_i_9_n_0 ,\COUNT_MAX[7]_i_10_n_0 }));
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
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \LEDS_OBUF[0]_inst_i_1 
       (.I0(sq_wave_leds),
        .I1(\COUNT_MAX_reg[2]_0 ),
        .O(LEDS_OBUF));
  VCC VCC
       (.P(\<const1> ));
  LUT3 #(
    .INIT(8'h8B)) 
    \code[2]_i_1 
       (.I0(\code_reg[2]_0 ),
        .I1(\code_reg[4]_2 [1]),
        .I2(wave_state),
        .O(\code[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \code[4]_i_1 
       (.I0(\code_reg[4]_1 ),
        .I1(\code_reg[4]_2 [1]),
        .I2(wave_state),
        .O(\code[4]_i_1_n_0 ));
  FDRE \code_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\code[2]_i_1_n_0 ),
        .Q(\code_reg[2]_0 ),
        .R(\<const0> ));
  FDRE \code_reg[4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\code[4]_i_1_n_0 ),
        .Q(\code_reg[4]_1 ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    mode_reg
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(mode_reg_1),
        .Q(sq_wave_leds),
        .R(\<const0> ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 sample_counter0_carry
       (.CI(\<const0> ),
        .CO({sample_counter0_carry_n_0,sample_counter0_carry_n_1,sample_counter0_carry_n_2,sample_counter0_carry_n_3}),
        .CYINIT(\<const1> ),
        .DI({sample_counter0_carry_i_1_n_0,sample_counter0_carry_i_2_n_0,sample_counter0_carry_i_3_n_0,sample_counter0_carry_i_4_n_0}),
        .S({sample_counter0_carry_i_5_n_0,sample_counter0_carry_i_6_n_0,sample_counter0_carry_i_7_n_0,sample_counter0_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 sample_counter0_carry__0
       (.CI(sample_counter0_carry_n_0),
        .CO({sample_counter0_carry__0_n_0,sample_counter0_carry__0_n_1,sample_counter0_carry__0_n_2,sample_counter0_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,sample_counter0_carry__0_i_1_n_0,sample_counter0_carry__0_i_2_n_0}),
        .S({sample_counter1_carry__1_n_0,sample_counter1_carry__1_n_0,sample_counter0_carry__0_i_3_n_0,sample_counter0_carry__0_i_4_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    sample_counter0_carry__0_i_1
       (.I0(sample_counter_reg[11]),
        .I1(sample_counter1[11]),
        .I2(sample_counter_reg[10]),
        .I3(sample_counter1[10]),
        .O(sample_counter0_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    sample_counter0_carry__0_i_2
       (.I0(sample_counter_reg[9]),
        .I1(sample_counter1[9]),
        .I2(sample_counter_reg[8]),
        .I3(sample_counter1[8]),
        .O(sample_counter0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sample_counter0_carry__0_i_3
       (.I0(sample_counter1[11]),
        .I1(sample_counter_reg[11]),
        .I2(sample_counter1[10]),
        .I3(sample_counter_reg[10]),
        .O(sample_counter0_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sample_counter0_carry__0_i_4
       (.I0(sample_counter1[9]),
        .I1(sample_counter_reg[9]),
        .I2(sample_counter1[8]),
        .I3(sample_counter_reg[8]),
        .O(sample_counter0_carry__0_i_4_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 sample_counter0_carry__1
       (.CI(sample_counter0_carry__0_n_0),
        .CO({sample_counter0_carry__1_n_0,sample_counter0_carry__1_n_1,sample_counter0_carry__1_n_2,sample_counter0_carry__1_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({sample_counter1_carry__1_n_0,sample_counter1_carry__1_n_0,sample_counter1_carry__1_n_0,sample_counter1_carry__1_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 sample_counter0_carry__2
       (.CI(sample_counter0_carry__1_n_0),
        .CO({CO,sample_counter0_carry__2_n_1,sample_counter0_carry__2_n_2,sample_counter0_carry__2_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({sample_counter1_carry__1_n_0,sample_counter1_carry__1_n_0,sample_counter1_carry__1_n_0,sample_counter1_carry__1_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    sample_counter0_carry_i_1
       (.I0(sample_counter_reg[7]),
        .I1(sample_counter1[7]),
        .I2(sample_counter_reg[6]),
        .I3(sample_counter1[6]),
        .O(sample_counter0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    sample_counter0_carry_i_2
       (.I0(sample_counter_reg[5]),
        .I1(sample_counter1[5]),
        .I2(sample_counter_reg[4]),
        .I3(sample_counter1[4]),
        .O(sample_counter0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    sample_counter0_carry_i_3
       (.I0(sample_counter_reg[3]),
        .I1(sample_counter1[3]),
        .I2(sample_counter_reg[2]),
        .I3(sample_counter1[2]),
        .O(sample_counter0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'hB222)) 
    sample_counter0_carry_i_4
       (.I0(sample_counter_reg[1]),
        .I1(sample_counter1[1]),
        .I2(Q),
        .I3(sample_counter_reg[0]),
        .O(sample_counter0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sample_counter0_carry_i_5
       (.I0(sample_counter1[7]),
        .I1(sample_counter_reg[7]),
        .I2(sample_counter1[6]),
        .I3(sample_counter_reg[6]),
        .O(sample_counter0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sample_counter0_carry_i_6
       (.I0(sample_counter1[5]),
        .I1(sample_counter_reg[5]),
        .I2(sample_counter1[4]),
        .I3(sample_counter_reg[4]),
        .O(sample_counter0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sample_counter0_carry_i_7
       (.I0(sample_counter1[3]),
        .I1(sample_counter_reg[3]),
        .I2(sample_counter1[2]),
        .I3(sample_counter_reg[2]),
        .O(sample_counter0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h6006)) 
    sample_counter0_carry_i_8
       (.I0(sample_counter_reg[0]),
        .I1(Q),
        .I2(sample_counter1[1]),
        .I3(sample_counter_reg[1]),
        .O(sample_counter0_carry_i_8_n_0));
  CARRY4 sample_counter1_carry
       (.CI(\<const0> ),
        .CO({sample_counter1_carry_n_0,sample_counter1_carry_n_1,sample_counter1_carry_n_2,sample_counter1_carry_n_3}),
        .CYINIT(Q),
        .DI(COUNT_MAX[4:1]),
        .O(sample_counter1[4:1]),
        .S({sample_counter1_carry_i_1_n_0,sample_counter1_carry_i_2_n_0,sample_counter1_carry_i_3_n_0,sample_counter1_carry_i_4_n_0}));
  CARRY4 sample_counter1_carry__0
       (.CI(sample_counter1_carry_n_0),
        .CO({sample_counter1_carry__0_n_0,sample_counter1_carry__0_n_1,sample_counter1_carry__0_n_2,sample_counter1_carry__0_n_3}),
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
  CARRY4 sample_counter1_carry__1
       (.CI(sample_counter1_carry__0_n_0),
        .CO({sample_counter1_carry__1_n_0,NLW_sample_counter1_carry__1_CO_UNCONNECTED[2],sample_counter1_carry__1_n_2,sample_counter1_carry__1_n_3}),
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
    \sample_counter[0]_i_4 
       (.I0(sample_counter_reg[0]),
        .O(\sample_counter[0]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sample_counter_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\sample_counter_reg[0]_i_3_n_7 ),
        .Q(sample_counter_reg[0]),
        .R(\sample_counter_reg[0]_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \sample_counter_reg[0]_i_3 
       (.CI(\<const0> ),
        .CO({\sample_counter_reg[0]_i_3_n_0 ,\sample_counter_reg[0]_i_3_n_1 ,\sample_counter_reg[0]_i_3_n_2 ,\sample_counter_reg[0]_i_3_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O({\sample_counter_reg[0]_i_3_n_4 ,\sample_counter_reg[0]_i_3_n_5 ,\sample_counter_reg[0]_i_3_n_6 ,\sample_counter_reg[0]_i_3_n_7 }),
        .S({sample_counter_reg[3:1],\sample_counter[0]_i_4_n_0 }));
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
  CARRY4 \sample_counter_reg[4]_i_1 
       (.CI(\sample_counter_reg[0]_i_3_n_0 ),
        .CO({\sample_counter_reg[4]_i_1_n_0 ,\sample_counter_reg[4]_i_1_n_1 ,\sample_counter_reg[4]_i_1_n_2 ,\sample_counter_reg[4]_i_1_n_3 }),
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
  CARRY4 \sample_counter_reg[8]_i_1 
       (.CI(\sample_counter_reg[4]_i_1_n_0 ),
        .CO({\sample_counter_reg[8]_i_1_n_1 ,\sample_counter_reg[8]_i_1_n_2 ,\sample_counter_reg[8]_i_1_n_3 }),
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
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    wave_state_i_1
       (.I0(wave_state),
        .I1(CO),
        .I2(next_sample),
        .I3(\code_reg[4]_2 [1]),
        .O(wave_state_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    wave_state_reg
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(wave_state_i_1_n_0),
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
  FDRE \sync_signal_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(middle[0]),
        .Q(Q[0]),
        .R(\<const0> ));
  FDRE \sync_signal_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(middle[1]),
        .Q(Q[1]),
        .R(\<const0> ));
  FDRE \sync_signal_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(middle[2]),
        .Q(Q[2]),
        .R(\<const0> ));
  FDRE \sync_signal_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(middle[3]),
        .Q(Q[3]),
        .R(\<const0> ));
endmodule

(* ORIG_REF_NAME = "synchronizer" *) 
module synchronizer__parameterized0
   (AUD_PWM_OBUF,
    Q,
    S,
    sel,
    \sync_signal_reg[0]_0 ,
    CO,
    AUD_PWM,
    DOADO,
    pwm0_carry__0_i_1,
    AUD_PWM_OBUF_inst_i_1_0,
    pwm0_carry__0,
    \COUNT_MAX_reg[1] ,
    \COUNT_MAX_reg[1]_0 ,
    \COUNT_MAX_reg[1]_1 ,
    D,
    CLK_125MHZ_FPGA_IBUF_BUFG);
  output AUD_PWM_OBUF;
  output [1:0]Q;
  output [0:0]S;
  output sel;
  output \sync_signal_reg[0]_0 ;
  input [0:0]CO;
  input AUD_PWM;
  input [6:0]DOADO;
  input pwm0_carry__0_i_1;
  input AUD_PWM_OBUF_inst_i_1_0;
  input [1:0]pwm0_carry__0;
  input [0:0]\COUNT_MAX_reg[1] ;
  input [0:0]\COUNT_MAX_reg[1]_0 ;
  input \COUNT_MAX_reg[1]_1 ;
  input [1:0]D;
  input CLK_125MHZ_FPGA_IBUF_BUFG;

  wire \<const0> ;
  wire \<const1> ;
  wire AUD_PWM;
  wire AUD_PWM_OBUF;
  wire AUD_PWM_OBUF_inst_i_1_0;
  wire AUD_PWM_OBUF_inst_i_2_n_0;
  wire AUD_PWM_OBUF_inst_i_4_n_0;
  wire AUD_PWM_OBUF_inst_i_5_n_0;
  wire AUD_PWM_OBUF_inst_i_6_n_0;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [0:0]CO;
  wire [0:0]\COUNT_MAX_reg[1] ;
  wire [0:0]\COUNT_MAX_reg[1]_0 ;
  wire \COUNT_MAX_reg[1]_1 ;
  wire [1:0]D;
  wire [6:0]DOADO;
  wire [1:0]Q;
  wire [0:0]S;
  wire \middle_reg[0]_inv_n_0 ;
  wire \middle_reg[1]_inv_n_0 ;
  wire [1:0]pwm0_carry__0;
  wire pwm0_carry__0_i_1;
  wire sel;
  wire \sync_signal_reg[0]_0 ;

  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    AUD_PWM_OBUF_inst_i_1
       (.I0(CO),
        .I1(AUD_PWM_OBUF_inst_i_2_n_0),
        .I2(AUD_PWM),
        .I3(AUD_PWM_OBUF_inst_i_4_n_0),
        .I4(AUD_PWM_OBUF_inst_i_5_n_0),
        .I5(AUD_PWM_OBUF_inst_i_6_n_0),
        .O(AUD_PWM_OBUF));
  LUT4 #(
    .INIT(16'hFFFB)) 
    AUD_PWM_OBUF_inst_i_2
       (.I0(DOADO[4]),
        .I1(Q[0]),
        .I2(DOADO[1]),
        .I3(DOADO[0]),
        .O(AUD_PWM_OBUF_inst_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    AUD_PWM_OBUF_inst_i_4
       (.I0(DOADO[3]),
        .I1(Q[0]),
        .I2(AUD_PWM_OBUF_inst_i_1_0),
        .O(AUD_PWM_OBUF_inst_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    AUD_PWM_OBUF_inst_i_5
       (.I0(DOADO[2]),
        .I1(Q[0]),
        .I2(pwm0_carry__0_i_1),
        .O(AUD_PWM_OBUF_inst_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    AUD_PWM_OBUF_inst_i_6
       (.I0(DOADO[5]),
        .I1(Q[0]),
        .I2(AUD_PWM_OBUF_inst_i_1_0),
        .O(AUD_PWM_OBUF_inst_i_6_n_0));
  LUT4 #(
    .INIT(16'h4F44)) 
    \COUNT_MAX[1]_i_4 
       (.I0(Q[0]),
        .I1(\COUNT_MAX_reg[1] ),
        .I2(\COUNT_MAX_reg[1]_0 ),
        .I3(\COUNT_MAX_reg[1]_1 ),
        .O(\sync_signal_reg[0]_0 ));
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
  LUT6 #(
    .INIT(64'hB84700000000B847)) 
    pwm0_carry__0_i_2
       (.I0(DOADO[6]),
        .I1(Q[0]),
        .I2(pwm0_carry__0_i_1),
        .I3(pwm0_carry__0[1]),
        .I4(AUD_PWM_OBUF_inst_i_6_n_0),
        .I5(pwm0_carry__0[0]),
        .O(S));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    pwm0_carry__0_i_3
       (.I0(DOADO[6]),
        .I1(Q[0]),
        .I2(pwm0_carry__0_i_1),
        .O(sel));
  FDRE \sync_signal_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\middle_reg[0]_inv_n_0 ),
        .Q(Q[0]),
        .R(\<const0> ));
  FDRE \sync_signal_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\middle_reg[1]_inv_n_0 ),
        .Q(Q[1]),
        .R(\<const0> ));
endmodule

(* B_PULSE_CNT_MAX = "200" *) (* B_SAMPLE_CNT_MAX = "62500" *) 
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
  wire \<const1> ;
  wire AUD_PWM;
  wire AUD_PWM_OBUF;
  wire AUD_SD;
  wire AUD_SD_OBUF;
  wire [3:0]BUTTONS;
  wire [3:0]BUTTONS_IBUF;
  wire CLK_125MHZ_FPGA;
  wire CLK_125MHZ_FPGA_IBUF;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [0:0]COUNT_MAX;
  wire [9:1]COUNT_MAX1;
  wire [5:0]LEDS;
  wire [0:0]LEDS_OBUF;
  wire [1:0]SWITCHES;
  wire [1:0]SWITCHES_IBUF;
  wire bp_n_0;
  wire bp_n_10;
  wire bp_n_11;
  wire bp_n_12;
  wire bp_n_13;
  wire bp_n_14;
  wire bp_n_3;
  wire bp_n_4;
  wire bp_n_5;
  wire bp_n_6;
  wire bp_n_7;
  wire bp_n_8;
  wire bp_n_9;
  wire [3:1]buttons_pressed;
  wire [9:8]counter;
  wire data0;
  wire gen_n_10;
  wire gen_n_11;
  wire gen_n_13;
  wire gen_n_14;
  wire gen_n_9;
  wire next_sample;
  wire sample_counter0;
  wire sel_n_10;
  wire sel_n_11;
  wire sel_n_12;
  wire sel_n_13;
  wire sel_n_14;
  wire sel_n_15;
  wire sel_n_6;
  wire sel_n_7;
  wire sel_n_8;
  wire sel_n_9;
  wire [0:0]sq_wave_leds;
  wire switch_sync_n_3;
  wire switch_sync_n_4;
  wire switch_sync_n_5;
  wire [0:0]switches_sync;

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
  VCC VCC
       (.P(\<const1> ));
  button_parser bp
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CO(sample_counter0),
        .COUNT_MAX1({COUNT_MAX1[9:8],COUNT_MAX1[6:4]}),
        .\COUNT_MAX_reg[0] (COUNT_MAX),
        .\COUNT_MAX_reg[11] (switches_sync),
        .\COUNT_MAX_reg[4] (gen_n_11),
        .\COUNT_MAX_reg[9] (gen_n_13),
        .D(BUTTONS_IBUF),
        .E(bp_n_8),
        .Q({buttons_pressed[3],buttons_pressed[1]}),
        .\edge_detect_pulse_reg[1] (bp_n_4),
        .\edge_detect_pulse_reg[1]_0 (bp_n_5),
        .\edge_detect_pulse_reg[1]_1 (bp_n_6),
        .\edge_detect_pulse_reg[1]_2 (bp_n_7),
        .\edge_detect_pulse_reg[1]_3 (bp_n_11),
        .\edge_detect_pulse_reg[3] (bp_n_0),
        .\edge_detect_pulse_reg[3]_0 (bp_n_3),
        .\edge_detect_pulse_reg[3]_1 (bp_n_9),
        .\edge_detect_pulse_reg[3]_2 (bp_n_10),
        .\edge_detect_pulse_reg[3]_3 (bp_n_13),
        .\edge_detect_pulse_reg[3]_4 (bp_n_14),
        .next_sample(next_sample),
        .sq_wave_leds(sq_wave_leds),
        .\sync_signal_reg[0] (bp_n_12));
  dac dac
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CO(data0),
        .DOADO({sel_n_7,sel_n_8,sel_n_9,sel_n_10,sel_n_11,sel_n_12,sel_n_13,sel_n_14,sel_n_15}),
        .Q(switches_sync),
        .S(switch_sync_n_3),
        .\counter_reg[9]_0 (counter),
        .\counter_reg[9]_1 (buttons_pressed[3]),
        .next_sample(next_sample),
        .pwm0_carry_0(gen_n_10),
        .pwm0_carry__0_0(gen_n_14),
        .pwm0_carry__0_1(switch_sync_n_4));
  sq_wave_gen gen
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CO(sample_counter0),
        .\COUNT_MAX_reg[0]_0 (bp_n_9),
        .\COUNT_MAX_reg[10]_0 ({COUNT_MAX1[9:8],COUNT_MAX1[6:4],COUNT_MAX1[1]}),
        .\COUNT_MAX_reg[11]_0 (bp_n_11),
        .\COUNT_MAX_reg[1]_0 (switch_sync_n_5),
        .\COUNT_MAX_reg[2]_0 (switches_sync),
        .\COUNT_MAX_reg[4]_0 (bp_n_7),
        .\COUNT_MAX_reg[5]_0 (bp_n_6),
        .\COUNT_MAX_reg[6]_0 (bp_n_5),
        .\COUNT_MAX_reg[7]_0 (bp_n_14),
        .\COUNT_MAX_reg[7]_1 (bp_n_13),
        .\COUNT_MAX_reg[8]_0 (gen_n_11),
        .\COUNT_MAX_reg[8]_1 (bp_n_4),
        .\COUNT_MAX_reg[9]_0 (bp_n_10),
        .DOADO({sel_n_6,sel_n_10,sel_n_12,sel_n_15}),
        .E(bp_n_8),
        .LEDS_OBUF(LEDS_OBUF),
        .Q(COUNT_MAX),
        .\code_reg[2]_0 (gen_n_14),
        .\code_reg[4]_0 (gen_n_9),
        .\code_reg[4]_1 (gen_n_10),
        .\code_reg[4]_2 ({buttons_pressed[3],buttons_pressed[1]}),
        .mode_reg_0(gen_n_13),
        .mode_reg_1(bp_n_12),
        .next_sample(next_sample),
        .\sample_counter_reg[0]_0 (bp_n_3),
        .sq_wave_leds(sq_wave_leds));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d10" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2560" *) 
  (* RTL_RAM_NAME = "" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "9" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h02B802AC02A002940288027C027002630257024B023E023202250219020C0200),
    .INIT_01(256'h03610357034E0344033A03300326031C0311030702FC02F102E602DA02CF02C3),
    .INIT_02(256'h03D403CE03C903C303BD03B703B003A903A2039B0393038B0383037B0372036A),
    .INIT_03(256'h03FF03FF03FE03FD03FC03FA03F803F603F303F003ED03E903E603E203DD03D9),
    .INIT_04(256'h03DD03E203E603E903ED03F003F303F603F803FA03FC03FD03FE03FF03FF03FF),
    .INIT_05(256'h0372037B0383038B0393039B03A203A903B003B703BD03C303C903CE03D403D9),
    .INIT_06(256'h02CF02DA02E602F102FC03070311031C03260330033A0344034E03570361036A),
    .INIT_07(256'h020C021902250232023E024B025702630270027C0288029402A002AC02B802C3),
    .INIT_08(256'h01470153015F016B01770183018F019C01A801B401C101CD01DA01E601F30200),
    .INIT_09(256'h009E00A800B100BB00C500CF00D900E300EE00F80103010E011901250130013C),
    .INIT_0A(256'h002B00310036003C00420048004F0056005D0064006C0074007C0084008D0095),
    .INIT_0B(256'h00000000000100020003000500070009000C000F001200160019001D00220026),
    .INIT_0C(256'h0022001D001900160012000F000C000900070005000300020001000000000000),
    .INIT_0D(256'h008D0084007C0074006C0064005D0056004F00480042003C00360031002B0026),
    .INIT_0E(256'h013001250119010E010300F800EE00E300D900CF00C500BB00B100A8009E0095),
    .INIT_0F(256'h01F301E601DA01CD01C101B401A8019C018F01830177016B015F01530147013C),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    sel
       (.ADDRARDADDR({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .ADDRBWRADDR({\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .CLKARDCLK(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CLKBWRCLK(\<const0> ),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .DIBDI({\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .DIPADIP({\<const0> ,\<const0> }),
        .DIPBDIP({\<const1> ,\<const1> }),
        .DOADO({sel_n_6,sel_n_7,sel_n_8,sel_n_9,sel_n_10,sel_n_11,sel_n_12,sel_n_13,sel_n_14,sel_n_15}),
        .ENARDEN(bp_n_0),
        .ENBWREN(\<const0> ),
        .REGCEAREGCE(\<const0> ),
        .REGCEB(\<const0> ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(\<const0> ),
        .RSTREGARSTREG(\<const0> ),
        .RSTREGB(\<const0> ),
        .WEA({\<const0> ,\<const0> }),
        .WEBWE({\<const0> ,\<const0> ,\<const0> ,\<const0> }));
  synchronizer__parameterized0 switch_sync
       (.AUD_PWM(gen_n_9),
        .AUD_PWM_OBUF(AUD_PWM_OBUF),
        .AUD_PWM_OBUF_inst_i_1_0(gen_n_14),
        .CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CO(data0),
        .\COUNT_MAX_reg[1] (buttons_pressed[1]),
        .\COUNT_MAX_reg[1]_0 (COUNT_MAX1[1]),
        .\COUNT_MAX_reg[1]_1 (gen_n_13),
        .D(SWITCHES_IBUF),
        .DOADO({sel_n_6,sel_n_7,sel_n_8,sel_n_9,sel_n_11,sel_n_13,sel_n_14}),
        .Q({AUD_SD_OBUF,switches_sync}),
        .S(switch_sync_n_3),
        .pwm0_carry__0(counter),
        .pwm0_carry__0_i_1(gen_n_10),
        .sel(switch_sync_n_4),
        .\sync_signal_reg[0]_0 (switch_sync_n_5));
endmodule
