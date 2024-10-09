// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Tue Oct  8 13:08:43 2024
// Host        : c111-18.EECS.Berkeley.EDU running 64-bit Red Hat Enterprise Linux release 8.10 (Ootpa)
// Command     : write_verilog -force post_route.v
// Design      : z1top
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module button_parser
   (sq_wave_buttons,
    Q,
    CLK_125MHZ_FPGA_IBUF_BUFG,
    mode_reg,
    D);
  output [0:0]sq_wave_buttons;
  output [0:0]Q;
  input CLK_125MHZ_FPGA_IBUF_BUFG;
  input [0:0]mode_reg;
  input [1:0]D;

  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [1:0]D;
  wire [0:0]Q;
  wire [3:2]debounced_signals;
  wire [0:0]mode_reg;
  wire [0:0]sq_wave_buttons;
  wire [3:2]synchronized_signals;

  debouncer button_debouncer
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .D(debounced_signals),
        .Q(synchronized_signals));
  edge_detector button_edge_detector
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .D(debounced_signals),
        .Q(Q),
        .mode_reg(mode_reg),
        .sq_wave_buttons(sq_wave_buttons));
  synchronizer button_synchronizer
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .D(D),
        .Q(synchronized_signals));
endmodule

module dac
   (\counter_reg[9]_0 ,
    E,
    SR,
    \counter_reg[8]_0 ,
    AUD_PWM_OBUF,
    DI,
    CO,
    Q,
    pwm0_carry__0_0,
    AUD_PWM,
    pwm0_carry__0_1,
    CLK_125MHZ_FPGA_IBUF_BUFG);
  output [1:0]\counter_reg[9]_0 ;
  output [0:0]E;
  output [0:0]SR;
  output \counter_reg[8]_0 ;
  output AUD_PWM_OBUF;
  input [0:0]DI;
  input [0:0]CO;
  input [0:0]Q;
  input pwm0_carry__0_0;
  input [0:0]AUD_PWM;
  input pwm0_carry__0_1;
  input CLK_125MHZ_FPGA_IBUF_BUFG;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]AUD_PWM;
  wire AUD_PWM_OBUF;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [0:0]CO;
  wire [0:0]DI;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
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
  wire \counter_reg[8]_0 ;
  wire [1:0]\counter_reg[9]_0 ;
  wire data0;
  wire pwm0_carry__0_0;
  wire pwm0_carry__0_1;
  wire pwm0_carry__0_i_2_n_0;
  wire pwm0_carry_i_1_n_0;
  wire pwm0_carry_i_2_n_0;
  wire pwm0_carry_i_3_n_0;
  wire pwm0_carry_i_4_n_0;
  wire pwm0_carry_i_5_n_0;
  wire pwm0_carry_i_6_n_0;
  wire pwm0_carry_i_7_n_0;
  wire pwm0_carry_i_8_n_0;
  wire pwm0_carry_n_0;
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
  (* \PinAttr:I1:HOLD_DETOUR  = "192" *) 
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1 
       (.I0(counter[0]),
        .I1(counter[1]),
        .O(\counter[1]_i_1_n_0 ));
  (* \PinAttr:I0:HOLD_DETOUR  = "192" *) 
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter[2]_i_1 
       (.I0(counter[1]),
        .I1(counter[0]),
        .I2(counter[2]),
        .O(\counter[2]_i_1_n_0 ));
  (* \PinAttr:I3:HOLD_DETOUR  = "192" *) 
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter[3]_i_1 
       (.I0(counter[2]),
        .I1(counter[0]),
        .I2(counter[1]),
        .I3(counter[3]),
        .O(\counter[3]_i_1_n_0 ));
  (* \PinAttr:I3:HOLD_DETOUR  = "192" *) 
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \counter[4]_i_1 
       (.I0(counter[0]),
        .I1(counter[1]),
        .I2(counter[2]),
        .I3(counter[3]),
        .I4(counter[4]),
        .O(\counter[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \counter[5]_i_1 
       (.I0(counter[4]),
        .I1(counter[3]),
        .I2(counter[2]),
        .I3(counter[1]),
        .I4(counter[0]),
        .I5(counter[5]),
        .O(\counter[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \counter[6]_i_1 
       (.I0(\counter[9]_i_2_n_0 ),
        .I1(counter[6]),
        .O(\counter[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \counter[7]_i_1 
       (.I0(counter[6]),
        .I1(\counter[9]_i_2_n_0 ),
        .I2(counter[7]),
        .O(\counter[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hBF40)) 
    \counter[8]_i_1 
       (.I0(\counter[9]_i_2_n_0 ),
        .I1(counter[6]),
        .I2(counter[7]),
        .I3(\counter_reg[9]_0 [0]),
        .O(\counter[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFF7F0080)) 
    \counter[9]_i_1 
       (.I0(\counter_reg[9]_0 [0]),
        .I1(counter[7]),
        .I2(counter[6]),
        .I3(\counter[9]_i_2_n_0 ),
        .I4(\counter_reg[9]_0 [1]),
        .O(\counter[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \counter[9]_i_2 
       (.I0(counter[5]),
        .I1(counter[4]),
        .I2(counter[0]),
        .I3(counter[1]),
        .I4(counter[2]),
        .I5(counter[3]),
        .O(\counter[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\counter[0]_i_1_n_0 ),
        .Q(counter[0]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\counter[1]_i_1_n_0 ),
        .Q(counter[1]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\counter[2]_i_1_n_0 ),
        .Q(counter[2]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\counter[3]_i_1_n_0 ),
        .Q(counter[3]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\counter[4]_i_1_n_0 ),
        .Q(counter[4]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\counter[5]_i_1_n_0 ),
        .Q(counter[5]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\counter[6]_i_1_n_0 ),
        .Q(counter[6]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\counter[7]_i_1_n_0 ),
        .Q(counter[7]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\counter[8]_i_1_n_0 ),
        .Q(\counter_reg[9]_0 [0]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\counter[9]_i_1_n_0 ),
        .Q(\counter_reg[9]_0 [1]),
        .R(Q));
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
        .S({\<const0> ,\<const0> ,\<const0> ,pwm0_carry__0_i_2_n_0}));
  LUT5 #(
    .INIT(32'h11841121)) 
    pwm0_carry__0_i_2
       (.I0(\counter_reg[9]_0 [0]),
        .I1(\counter_reg[9]_0 [1]),
        .I2(pwm0_carry__0_0),
        .I3(AUD_PWM),
        .I4(pwm0_carry__0_1),
        .O(pwm0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h0700)) 
    pwm0_carry_i_1
       (.I0(counter[7]),
        .I1(counter[6]),
        .I2(AUD_PWM),
        .I3(pwm0_carry__0_0),
        .O(pwm0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h0444)) 
    pwm0_carry_i_2
       (.I0(AUD_PWM),
        .I1(pwm0_carry__0_1),
        .I2(counter[5]),
        .I3(counter[4]),
        .O(pwm0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h0444)) 
    pwm0_carry_i_3
       (.I0(AUD_PWM),
        .I1(pwm0_carry__0_0),
        .I2(counter[3]),
        .I3(counter[2]),
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
       (.I0(pwm0_carry__0_0),
        .I1(AUD_PWM),
        .I2(counter[6]),
        .I3(counter[7]),
        .O(pwm0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h200D)) 
    pwm0_carry_i_6
       (.I0(pwm0_carry__0_1),
        .I1(AUD_PWM),
        .I2(counter[4]),
        .I3(counter[5]),
        .O(pwm0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h200D)) 
    pwm0_carry_i_7
       (.I0(pwm0_carry__0_0),
        .I1(AUD_PWM),
        .I2(counter[2]),
        .I3(counter[3]),
        .O(pwm0_carry_i_7_n_0));
  LUT3 #(
    .INIT(8'h12)) 
    pwm0_carry_i_8
       (.I0(AUD_PWM),
        .I1(counter[0]),
        .I2(counter[1]),
        .O(pwm0_carry_i_8_n_0));
  LUT3 #(
    .INIT(8'hF4)) 
    \sample_counter[7]_i_1 
       (.I0(\counter_reg[8]_0 ),
        .I1(CO),
        .I2(Q),
        .O(SR));
  LUT5 #(
    .INIT(32'h20000000)) 
    \sample_counter[7]_i_2 
       (.I0(\counter_reg[9]_0 [1]),
        .I1(\counter[9]_i_2_n_0 ),
        .I2(counter[6]),
        .I3(counter[7]),
        .I4(\counter_reg[9]_0 [0]),
        .O(E));
  LUT5 #(
    .INIT(32'hFF7FFFFF)) 
    \sample_counter[7]_i_4 
       (.I0(\counter_reg[9]_0 [0]),
        .I1(counter[7]),
        .I2(counter[6]),
        .I3(\counter[9]_i_2_n_0 ),
        .I4(\counter_reg[9]_0 [1]),
        .O(\counter_reg[8]_0 ));
endmodule

module debouncer
   (D,
    CLK_125MHZ_FPGA_IBUF_BUFG,
    Q);
  output [1:0]D;
  input CLK_125MHZ_FPGA_IBUF_BUFG;
  input [1:0]Q;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [1:0]D;
  wire [1:0]Q;
  wire \debounce_logic[2].debounced_signal[2]_i_1_n_0 ;
  wire \debounce_logic[2].saturating_counter[2][7]_i_1_n_0 ;
  wire \debounce_logic[2].saturating_counter[2][7]_i_2_n_0 ;
  wire \debounce_logic[2].saturating_counter[2][7]_i_4_n_0 ;
  wire \debounce_logic[2].saturating_counter[2][7]_i_5_n_0 ;
  wire \debounce_logic[2].saturating_counter[2][7]_i_6_n_0 ;
  wire \debounce_logic[2].saturating_counter[2][7]_i_7_n_0 ;
  wire \debounce_logic[2].saturating_counter[2][7]_i_8_n_0 ;
  wire \debounce_logic[2].saturating_counter[2][7]_i_9_n_0 ;
  wire [7:0]\debounce_logic[2].saturating_counter_reg[2]_0 ;
  wire \debounce_logic[3].debounced_signal[3]_i_1_n_0 ;
  wire \debounce_logic[3].saturating_counter[3][7]_i_1_n_0 ;
  wire \debounce_logic[3].saturating_counter[3][7]_i_2_n_0 ;
  wire \debounce_logic[3].saturating_counter[3][7]_i_4_n_0 ;
  wire \debounce_logic[3].saturating_counter[3][7]_i_5_n_0 ;
  wire [7:0]\debounce_logic[3].saturating_counter_reg[3]_1 ;
  wire [7:0]p_0_in;
  wire [7:0]p_0_in__0;
  wire [15:0]wrapping_counter;
  wire \wrapping_counter[15]_i_1_n_0 ;
  wire \wrapping_counter[15]_i_3_n_0 ;
  wire \wrapping_counter[15]_i_4_n_0 ;
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
    .INIT(64'h0000000000000008)) 
    \debounce_logic[2].debounced_signal[2]_i_1 
       (.I0(\debounce_logic[2].saturating_counter_reg[2]_0 [6]),
        .I1(\debounce_logic[2].saturating_counter_reg[2]_0 [7]),
        .I2(\debounce_logic[2].saturating_counter_reg[2]_0 [5]),
        .I3(\debounce_logic[2].saturating_counter_reg[2]_0 [4]),
        .I4(\debounce_logic[2].saturating_counter_reg[2]_0 [3]),
        .I5(\debounce_logic[2].saturating_counter[2][7]_i_8_n_0 ),
        .O(\debounce_logic[2].debounced_signal[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_logic[2].debounced_signal_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\debounce_logic[2].debounced_signal[2]_i_1_n_0 ),
        .Q(D[0]),
        .R(\<const0> ));
  (* \PinAttr:I0:HOLD_DETOUR  = "195" *) 
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \debounce_logic[2].saturating_counter[2][0]_i_1 
       (.I0(\debounce_logic[2].saturating_counter_reg[2]_0 [0]),
        .O(p_0_in[0]));
  (* \PinAttr:I0:HOLD_DETOUR  = "195" *) 
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \debounce_logic[2].saturating_counter[2][1]_i_1 
       (.I0(\debounce_logic[2].saturating_counter_reg[2]_0 [0]),
        .I1(\debounce_logic[2].saturating_counter_reg[2]_0 [1]),
        .O(p_0_in[1]));
  (* \PinAttr:I1:HOLD_DETOUR  = "198" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \debounce_logic[2].saturating_counter[2][2]_i_1 
       (.I0(\debounce_logic[2].saturating_counter_reg[2]_0 [1]),
        .I1(\debounce_logic[2].saturating_counter_reg[2]_0 [0]),
        .I2(\debounce_logic[2].saturating_counter_reg[2]_0 [2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \debounce_logic[2].saturating_counter[2][3]_i_1 
       (.I0(\debounce_logic[2].saturating_counter_reg[2]_0 [2]),
        .I1(\debounce_logic[2].saturating_counter_reg[2]_0 [0]),
        .I2(\debounce_logic[2].saturating_counter_reg[2]_0 [1]),
        .I3(\debounce_logic[2].saturating_counter_reg[2]_0 [3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \debounce_logic[2].saturating_counter[2][4]_i_1 
       (.I0(\debounce_logic[2].saturating_counter_reg[2]_0 [3]),
        .I1(\debounce_logic[2].saturating_counter_reg[2]_0 [1]),
        .I2(\debounce_logic[2].saturating_counter_reg[2]_0 [0]),
        .I3(\debounce_logic[2].saturating_counter_reg[2]_0 [2]),
        .I4(\debounce_logic[2].saturating_counter_reg[2]_0 [4]),
        .O(p_0_in[4]));
  (* \PinAttr:I0:HOLD_DETOUR  = "152" *) 
  (* \PinAttr:I3:HOLD_DETOUR  = "151" *) 
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \debounce_logic[2].saturating_counter[2][5]_i_1 
       (.I0(\debounce_logic[2].saturating_counter_reg[2]_0 [4]),
        .I1(\debounce_logic[2].saturating_counter_reg[2]_0 [2]),
        .I2(\debounce_logic[2].saturating_counter_reg[2]_0 [0]),
        .I3(\debounce_logic[2].saturating_counter_reg[2]_0 [1]),
        .I4(\debounce_logic[2].saturating_counter_reg[2]_0 [3]),
        .I5(\debounce_logic[2].saturating_counter_reg[2]_0 [5]),
        .O(p_0_in[5]));
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \debounce_logic[2].saturating_counter[2][6]_i_1 
       (.I0(\debounce_logic[2].saturating_counter_reg[2]_0 [5]),
        .I1(\debounce_logic[2].saturating_counter_reg[2]_0 [3]),
        .I2(\debounce_logic[2].saturating_counter[2][7]_i_8_n_0 ),
        .I3(\debounce_logic[2].saturating_counter_reg[2]_0 [4]),
        .I4(\debounce_logic[2].saturating_counter_reg[2]_0 [6]),
        .O(p_0_in[6]));
  LUT5 #(
    .INIT(32'h00000001)) 
    \debounce_logic[2].saturating_counter[2][7]_i_1 
       (.I0(\debounce_logic[2].saturating_counter[2][7]_i_4_n_0 ),
        .I1(\debounce_logic[2].saturating_counter[2][7]_i_5_n_0 ),
        .I2(\debounce_logic[2].saturating_counter[2][7]_i_6_n_0 ),
        .I3(\wrapping_counter[15]_i_4_n_0 ),
        .I4(Q[0]),
        .O(\debounce_logic[2].saturating_counter[2][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008000F000F000F)) 
    \debounce_logic[2].saturating_counter[2][7]_i_2 
       (.I0(\debounce_logic[2].saturating_counter[2][7]_i_7_n_0 ),
        .I1(\debounce_logic[2].saturating_counter[2][7]_i_8_n_0 ),
        .I2(\debounce_logic[2].saturating_counter[2][7]_i_9_n_0 ),
        .I3(\wrapping_counter[15]_i_3_n_0 ),
        .I4(\debounce_logic[2].saturating_counter_reg[2]_0 [6]),
        .I5(\debounce_logic[2].saturating_counter_reg[2]_0 [7]),
        .O(\debounce_logic[2].saturating_counter[2][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \debounce_logic[2].saturating_counter[2][7]_i_3 
       (.I0(\debounce_logic[2].saturating_counter_reg[2]_0 [6]),
        .I1(\debounce_logic[2].saturating_counter_reg[2]_0 [4]),
        .I2(\debounce_logic[2].saturating_counter[2][7]_i_8_n_0 ),
        .I3(\debounce_logic[2].saturating_counter_reg[2]_0 [3]),
        .I4(\debounce_logic[2].saturating_counter_reg[2]_0 [5]),
        .I5(\debounce_logic[2].saturating_counter_reg[2]_0 [7]),
        .O(p_0_in[7]));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \debounce_logic[2].saturating_counter[2][7]_i_4 
       (.I0(wrapping_counter[9]),
        .I1(wrapping_counter[8]),
        .I2(wrapping_counter[10]),
        .I3(wrapping_counter[11]),
        .O(\debounce_logic[2].saturating_counter[2][7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \debounce_logic[2].saturating_counter[2][7]_i_5 
       (.I0(wrapping_counter[13]),
        .I1(wrapping_counter[12]),
        .I2(wrapping_counter[15]),
        .I3(wrapping_counter[14]),
        .O(\debounce_logic[2].saturating_counter[2][7]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \debounce_logic[2].saturating_counter[2][7]_i_6 
       (.I0(wrapping_counter[1]),
        .I1(wrapping_counter[0]),
        .I2(wrapping_counter[3]),
        .I3(wrapping_counter[2]),
        .O(\debounce_logic[2].saturating_counter[2][7]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \debounce_logic[2].saturating_counter[2][7]_i_7 
       (.I0(\debounce_logic[2].saturating_counter_reg[2]_0 [5]),
        .I1(\debounce_logic[2].saturating_counter_reg[2]_0 [4]),
        .I2(\debounce_logic[2].saturating_counter_reg[2]_0 [3]),
        .O(\debounce_logic[2].saturating_counter[2][7]_i_7_n_0 ));
  (* \PinAttr:I1:HOLD_DETOUR  = "198" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \debounce_logic[2].saturating_counter[2][7]_i_8 
       (.I0(\debounce_logic[2].saturating_counter_reg[2]_0 [1]),
        .I1(\debounce_logic[2].saturating_counter_reg[2]_0 [0]),
        .I2(\debounce_logic[2].saturating_counter_reg[2]_0 [2]),
        .O(\debounce_logic[2].saturating_counter[2][7]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    \debounce_logic[2].saturating_counter[2][7]_i_9 
       (.I0(wrapping_counter[2]),
        .I1(wrapping_counter[3]),
        .I2(wrapping_counter[0]),
        .I3(wrapping_counter[1]),
        .I4(\wrapping_counter[15]_i_4_n_0 ),
        .O(\debounce_logic[2].saturating_counter[2][7]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_logic[2].saturating_counter_reg[2][0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\debounce_logic[2].saturating_counter[2][7]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(\debounce_logic[2].saturating_counter_reg[2]_0 [0]),
        .R(\debounce_logic[2].saturating_counter[2][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_logic[2].saturating_counter_reg[2][1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\debounce_logic[2].saturating_counter[2][7]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(\debounce_logic[2].saturating_counter_reg[2]_0 [1]),
        .R(\debounce_logic[2].saturating_counter[2][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_logic[2].saturating_counter_reg[2][2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\debounce_logic[2].saturating_counter[2][7]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(\debounce_logic[2].saturating_counter_reg[2]_0 [2]),
        .R(\debounce_logic[2].saturating_counter[2][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_logic[2].saturating_counter_reg[2][3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\debounce_logic[2].saturating_counter[2][7]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(\debounce_logic[2].saturating_counter_reg[2]_0 [3]),
        .R(\debounce_logic[2].saturating_counter[2][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_logic[2].saturating_counter_reg[2][4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\debounce_logic[2].saturating_counter[2][7]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(\debounce_logic[2].saturating_counter_reg[2]_0 [4]),
        .R(\debounce_logic[2].saturating_counter[2][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_logic[2].saturating_counter_reg[2][5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\debounce_logic[2].saturating_counter[2][7]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(\debounce_logic[2].saturating_counter_reg[2]_0 [5]),
        .R(\debounce_logic[2].saturating_counter[2][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_logic[2].saturating_counter_reg[2][6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\debounce_logic[2].saturating_counter[2][7]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(\debounce_logic[2].saturating_counter_reg[2]_0 [6]),
        .R(\debounce_logic[2].saturating_counter[2][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_logic[2].saturating_counter_reg[2][7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\debounce_logic[2].saturating_counter[2][7]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(\debounce_logic[2].saturating_counter_reg[2]_0 [7]),
        .R(\debounce_logic[2].saturating_counter[2][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \debounce_logic[3].debounced_signal[3]_i_1 
       (.I0(\debounce_logic[3].saturating_counter_reg[3]_1 [6]),
        .I1(\debounce_logic[3].saturating_counter_reg[3]_1 [7]),
        .I2(\debounce_logic[3].saturating_counter_reg[3]_1 [5]),
        .I3(\debounce_logic[3].saturating_counter_reg[3]_1 [4]),
        .I4(\debounce_logic[3].saturating_counter_reg[3]_1 [3]),
        .I5(\debounce_logic[3].saturating_counter[3][7]_i_5_n_0 ),
        .O(\debounce_logic[3].debounced_signal[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_logic[3].debounced_signal_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\debounce_logic[3].debounced_signal[3]_i_1_n_0 ),
        .Q(D[1]),
        .R(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \debounce_logic[3].saturating_counter[3][0]_i_1 
       (.I0(\debounce_logic[3].saturating_counter_reg[3]_1 [0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \debounce_logic[3].saturating_counter[3][1]_i_1 
       (.I0(\debounce_logic[3].saturating_counter_reg[3]_1 [0]),
        .I1(\debounce_logic[3].saturating_counter_reg[3]_1 [1]),
        .O(p_0_in__0[1]));
  LUT3 #(
    .INIT(8'h78)) 
    \debounce_logic[3].saturating_counter[3][2]_i_1 
       (.I0(\debounce_logic[3].saturating_counter_reg[3]_1 [1]),
        .I1(\debounce_logic[3].saturating_counter_reg[3]_1 [0]),
        .I2(\debounce_logic[3].saturating_counter_reg[3]_1 [2]),
        .O(p_0_in__0[2]));
  (* \PinAttr:I0:HOLD_DETOUR  = "174" *) 
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \debounce_logic[3].saturating_counter[3][3]_i_1 
       (.I0(\debounce_logic[3].saturating_counter_reg[3]_1 [2]),
        .I1(\debounce_logic[3].saturating_counter_reg[3]_1 [0]),
        .I2(\debounce_logic[3].saturating_counter_reg[3]_1 [1]),
        .I3(\debounce_logic[3].saturating_counter_reg[3]_1 [3]),
        .O(p_0_in__0[3]));
  (* \PinAttr:I3:HOLD_DETOUR  = "174" *) 
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \debounce_logic[3].saturating_counter[3][4]_i_1 
       (.I0(\debounce_logic[3].saturating_counter_reg[3]_1 [3]),
        .I1(\debounce_logic[3].saturating_counter_reg[3]_1 [1]),
        .I2(\debounce_logic[3].saturating_counter_reg[3]_1 [0]),
        .I3(\debounce_logic[3].saturating_counter_reg[3]_1 [2]),
        .I4(\debounce_logic[3].saturating_counter_reg[3]_1 [4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \debounce_logic[3].saturating_counter[3][5]_i_1 
       (.I0(\debounce_logic[3].saturating_counter_reg[3]_1 [4]),
        .I1(\debounce_logic[3].saturating_counter_reg[3]_1 [2]),
        .I2(\debounce_logic[3].saturating_counter_reg[3]_1 [0]),
        .I3(\debounce_logic[3].saturating_counter_reg[3]_1 [1]),
        .I4(\debounce_logic[3].saturating_counter_reg[3]_1 [3]),
        .I5(\debounce_logic[3].saturating_counter_reg[3]_1 [5]),
        .O(p_0_in__0[5]));
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \debounce_logic[3].saturating_counter[3][6]_i_1 
       (.I0(\debounce_logic[3].saturating_counter_reg[3]_1 [5]),
        .I1(\debounce_logic[3].saturating_counter_reg[3]_1 [3]),
        .I2(\debounce_logic[3].saturating_counter[3][7]_i_5_n_0 ),
        .I3(\debounce_logic[3].saturating_counter_reg[3]_1 [4]),
        .I4(\debounce_logic[3].saturating_counter_reg[3]_1 [6]),
        .O(p_0_in__0[6]));
  LUT5 #(
    .INIT(32'h00000001)) 
    \debounce_logic[3].saturating_counter[3][7]_i_1 
       (.I0(\debounce_logic[2].saturating_counter[2][7]_i_4_n_0 ),
        .I1(\debounce_logic[2].saturating_counter[2][7]_i_5_n_0 ),
        .I2(\debounce_logic[2].saturating_counter[2][7]_i_6_n_0 ),
        .I3(\wrapping_counter[15]_i_4_n_0 ),
        .I4(Q[1]),
        .O(\debounce_logic[3].saturating_counter[3][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008000F000F000F)) 
    \debounce_logic[3].saturating_counter[3][7]_i_2 
       (.I0(\debounce_logic[3].saturating_counter[3][7]_i_4_n_0 ),
        .I1(\debounce_logic[3].saturating_counter[3][7]_i_5_n_0 ),
        .I2(\debounce_logic[2].saturating_counter[2][7]_i_9_n_0 ),
        .I3(\wrapping_counter[15]_i_3_n_0 ),
        .I4(\debounce_logic[3].saturating_counter_reg[3]_1 [6]),
        .I5(\debounce_logic[3].saturating_counter_reg[3]_1 [7]),
        .O(\debounce_logic[3].saturating_counter[3][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \debounce_logic[3].saturating_counter[3][7]_i_3 
       (.I0(\debounce_logic[3].saturating_counter_reg[3]_1 [6]),
        .I1(\debounce_logic[3].saturating_counter_reg[3]_1 [4]),
        .I2(\debounce_logic[3].saturating_counter[3][7]_i_5_n_0 ),
        .I3(\debounce_logic[3].saturating_counter_reg[3]_1 [3]),
        .I4(\debounce_logic[3].saturating_counter_reg[3]_1 [5]),
        .I5(\debounce_logic[3].saturating_counter_reg[3]_1 [7]),
        .O(p_0_in__0[7]));
  LUT3 #(
    .INIT(8'h01)) 
    \debounce_logic[3].saturating_counter[3][7]_i_4 
       (.I0(\debounce_logic[3].saturating_counter_reg[3]_1 [5]),
        .I1(\debounce_logic[3].saturating_counter_reg[3]_1 [4]),
        .I2(\debounce_logic[3].saturating_counter_reg[3]_1 [3]),
        .O(\debounce_logic[3].saturating_counter[3][7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \debounce_logic[3].saturating_counter[3][7]_i_5 
       (.I0(\debounce_logic[3].saturating_counter_reg[3]_1 [1]),
        .I1(\debounce_logic[3].saturating_counter_reg[3]_1 [0]),
        .I2(\debounce_logic[3].saturating_counter_reg[3]_1 [2]),
        .O(\debounce_logic[3].saturating_counter[3][7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_logic[3].saturating_counter_reg[3][0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\debounce_logic[3].saturating_counter[3][7]_i_2_n_0 ),
        .D(p_0_in__0[0]),
        .Q(\debounce_logic[3].saturating_counter_reg[3]_1 [0]),
        .R(\debounce_logic[3].saturating_counter[3][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_logic[3].saturating_counter_reg[3][1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\debounce_logic[3].saturating_counter[3][7]_i_2_n_0 ),
        .D(p_0_in__0[1]),
        .Q(\debounce_logic[3].saturating_counter_reg[3]_1 [1]),
        .R(\debounce_logic[3].saturating_counter[3][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_logic[3].saturating_counter_reg[3][2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\debounce_logic[3].saturating_counter[3][7]_i_2_n_0 ),
        .D(p_0_in__0[2]),
        .Q(\debounce_logic[3].saturating_counter_reg[3]_1 [2]),
        .R(\debounce_logic[3].saturating_counter[3][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_logic[3].saturating_counter_reg[3][3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\debounce_logic[3].saturating_counter[3][7]_i_2_n_0 ),
        .D(p_0_in__0[3]),
        .Q(\debounce_logic[3].saturating_counter_reg[3]_1 [3]),
        .R(\debounce_logic[3].saturating_counter[3][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_logic[3].saturating_counter_reg[3][4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\debounce_logic[3].saturating_counter[3][7]_i_2_n_0 ),
        .D(p_0_in__0[4]),
        .Q(\debounce_logic[3].saturating_counter_reg[3]_1 [4]),
        .R(\debounce_logic[3].saturating_counter[3][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_logic[3].saturating_counter_reg[3][5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\debounce_logic[3].saturating_counter[3][7]_i_2_n_0 ),
        .D(p_0_in__0[5]),
        .Q(\debounce_logic[3].saturating_counter_reg[3]_1 [5]),
        .R(\debounce_logic[3].saturating_counter[3][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_logic[3].saturating_counter_reg[3][6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\debounce_logic[3].saturating_counter[3][7]_i_2_n_0 ),
        .D(p_0_in__0[6]),
        .Q(\debounce_logic[3].saturating_counter_reg[3]_1 [6]),
        .R(\debounce_logic[3].saturating_counter[3][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_logic[3].saturating_counter_reg[3][7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\debounce_logic[3].saturating_counter[3][7]_i_2_n_0 ),
        .D(p_0_in__0[7]),
        .Q(\debounce_logic[3].saturating_counter_reg[3]_1 [7]),
        .R(\debounce_logic[3].saturating_counter[3][7]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wrapping_counter[0]_i_1 
       (.I0(wrapping_counter[0]),
        .O(wrapping_counter_0));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    \wrapping_counter[15]_i_1 
       (.I0(\wrapping_counter[15]_i_3_n_0 ),
        .I1(wrapping_counter[2]),
        .I2(wrapping_counter[3]),
        .I3(wrapping_counter[0]),
        .I4(wrapping_counter[1]),
        .I5(\wrapping_counter[15]_i_4_n_0 ),
        .O(\wrapping_counter[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \wrapping_counter[15]_i_3 
       (.I0(wrapping_counter[11]),
        .I1(wrapping_counter[10]),
        .I2(wrapping_counter[8]),
        .I3(wrapping_counter[9]),
        .I4(\debounce_logic[2].saturating_counter[2][7]_i_5_n_0 ),
        .O(\wrapping_counter[15]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \wrapping_counter[15]_i_4 
       (.I0(wrapping_counter[5]),
        .I1(wrapping_counter[4]),
        .I2(wrapping_counter[7]),
        .I3(wrapping_counter[6]),
        .O(\wrapping_counter[15]_i_4_n_0 ));
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
   (sq_wave_buttons,
    Q,
    mode_reg,
    D,
    CLK_125MHZ_FPGA_IBUF_BUFG);
  output [0:0]sq_wave_buttons;
  output [0:0]Q;
  input [0:0]mode_reg;
  input [1:0]D;
  input CLK_125MHZ_FPGA_IBUF_BUFG;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [1:0]D;
  wire [0:0]Q;
  wire [2:2]buttons_pressed;
  wire \edge_detect_pulse[2]_i_1_n_0 ;
  wire \edge_detect_pulse[3]_i_1_n_0 ;
  wire [0:0]mode_reg;
  wire [3:2]signal_in_d;
  wire [0:0]sq_wave_buttons;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT2 #(
    .INIT(4'h2)) 
    \edge_detect_pulse[2]_i_1 
       (.I0(D[0]),
        .I1(signal_in_d[2]),
        .O(\edge_detect_pulse[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \edge_detect_pulse[3]_i_1 
       (.I0(D[1]),
        .I1(signal_in_d[3]),
        .O(\edge_detect_pulse[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \edge_detect_pulse_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\edge_detect_pulse[2]_i_1_n_0 ),
        .Q(buttons_pressed),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \edge_detect_pulse_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\edge_detect_pulse[3]_i_1_n_0 ),
        .Q(Q),
        .R(\<const0> ));
  LUT2 #(
    .INIT(4'h2)) 
    mode_i_2
       (.I0(buttons_pressed),
        .I1(mode_reg),
        .O(sq_wave_buttons));
  FDRE #(
    .INIT(1'b0)) 
    \signal_in_d_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(D[0]),
        .Q(signal_in_d[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \signal_in_d_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(D[1]),
        .Q(signal_in_d[3]),
        .R(\<const0> ));
endmodule

module sq_wave_gen
   (CO,
    DI,
    \code_reg[2]_0 ,
    \code_reg[4]_0 ,
    LEDS_OBUF,
    sq_wave_buttons,
    CLK_125MHZ_FPGA_IBUF_BUFG,
    pwm0_carry__0,
    Q,
    wave_state_reg_0,
    \code_reg[4]_1 ,
    SR,
    E);
  output [0:0]CO;
  output [0:0]DI;
  output \code_reg[2]_0 ;
  output \code_reg[4]_0 ;
  output [0:0]LEDS_OBUF;
  input [0:0]sq_wave_buttons;
  input CLK_125MHZ_FPGA_IBUF_BUFG;
  input [1:0]pwm0_carry__0;
  input [0:0]Q;
  input wave_state_reg_0;
  input [0:0]\code_reg[4]_1 ;
  input [0:0]SR;
  input [0:0]E;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [0:0]CO;
  wire [0:0]DI;
  wire [0:0]E;
  wire [0:0]LEDS_OBUF;
  wire [0:0]Q;
  wire [0:0]SR;
  wire \code[2]_i_1_n_0 ;
  wire \code[4]_i_1_n_0 ;
  wire \code_reg[2]_0 ;
  wire \code_reg[4]_0 ;
  wire [0:0]\code_reg[4]_1 ;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8_n_0;
  wire mode_i_1_n_0;
  wire [7:1]p_0_in__1;
  wire [1:0]pwm0_carry__0;
  wire \sample_counter[0]_i_1_n_0 ;
  wire \sample_counter[6]_i_2_n_0 ;
  wire \sample_counter[7]_i_5_n_0 ;
  wire [7:0]sample_counter_reg;
  wire [0:0]sq_wave_buttons;
  wire [0:0]sq_wave_leds;
  wire wave_state;
  wire wave_state_i_1_n_0;
  wire wave_state_reg_0;
  wire [3:0]\NLW_sample_counter0_inferred__0/i__carry_CO_UNCONNECTED ;

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
  LUT3 #(
    .INIT(8'h8B)) 
    \code[2]_i_1 
       (.I0(\code_reg[2]_0 ),
        .I1(\code_reg[4]_1 ),
        .I2(wave_state),
        .O(\code[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \code[4]_i_1 
       (.I0(\code_reg[4]_0 ),
        .I1(\code_reg[4]_1 ),
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
  LUT2 #(
    .INIT(4'h8)) 
    i__carry_i_1
       (.I0(sample_counter_reg[6]),
        .I1(sample_counter_reg[7]),
        .O(i__carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_2
       (.I0(sample_counter_reg[4]),
        .I1(sample_counter_reg[5]),
        .O(i__carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry_i_3
       (.I0(sample_counter_reg[2]),
        .I1(sample_counter_reg[3]),
        .O(i__carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry_i_4
       (.I0(sample_counter_reg[1]),
        .I1(sample_counter_reg[0]),
        .O(i__carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_5
       (.I0(sample_counter_reg[7]),
        .I1(sample_counter_reg[6]),
        .O(i__carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_6
       (.I0(sample_counter_reg[4]),
        .I1(sample_counter_reg[5]),
        .O(i__carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_7
       (.I0(sample_counter_reg[3]),
        .I1(sample_counter_reg[2]),
        .O(i__carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_8
       (.I0(sample_counter_reg[1]),
        .I1(sample_counter_reg[0]),
        .O(i__carry_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    mode_i_1
       (.I0(sq_wave_leds),
        .O(mode_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    mode_reg
       (.C(sq_wave_buttons),
        .CE(\<const1> ),
        .D(mode_i_1_n_0),
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
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \sample_counter0_inferred__0/i__carry 
       (.CI(\<const0> ),
        .CO({CO,\NLW_sample_counter0_inferred__0/i__carry_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const1> ),
        .DI({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}),
        .S({i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0,i__carry_i_8_n_0}));
  (* \PinAttr:I0:HOLD_DETOUR  = "197" *) 
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \sample_counter[0]_i_1 
       (.I0(sample_counter_reg[0]),
        .O(\sample_counter[0]_i_1_n_0 ));
  (* \PinAttr:I0:HOLD_DETOUR  = "197" *) 
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sample_counter[1]_i_1 
       (.I0(sample_counter_reg[0]),
        .I1(sample_counter_reg[1]),
        .O(p_0_in__1[1]));
  LUT3 #(
    .INIT(8'h78)) 
    \sample_counter[2]_i_1 
       (.I0(sample_counter_reg[1]),
        .I1(sample_counter_reg[0]),
        .I2(sample_counter_reg[2]),
        .O(p_0_in__1[2]));
  (* \PinAttr:I0:HOLD_DETOUR  = "281" *) 
  (* \PinAttr:I3:HOLD_DETOUR  = "197" *) 
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \sample_counter[3]_i_1 
       (.I0(sample_counter_reg[2]),
        .I1(sample_counter_reg[0]),
        .I2(sample_counter_reg[1]),
        .I3(sample_counter_reg[3]),
        .O(p_0_in__1[3]));
  (* \PinAttr:I0:HOLD_DETOUR  = "197" *) 
  (* \PinAttr:I3:HOLD_DETOUR  = "281" *) 
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \sample_counter[4]_i_1 
       (.I0(sample_counter_reg[3]),
        .I1(sample_counter_reg[1]),
        .I2(sample_counter_reg[0]),
        .I3(sample_counter_reg[2]),
        .I4(sample_counter_reg[4]),
        .O(p_0_in__1[4]));
  (* \PinAttr:I1:HOLD_DETOUR  = "295" *) 
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \sample_counter[5]_i_1 
       (.I0(sample_counter_reg[4]),
        .I1(sample_counter_reg[2]),
        .I2(sample_counter_reg[0]),
        .I3(sample_counter_reg[1]),
        .I4(sample_counter_reg[3]),
        .I5(sample_counter_reg[5]),
        .O(p_0_in__1[5]));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \sample_counter[6]_i_1 
       (.I0(sample_counter_reg[5]),
        .I1(sample_counter_reg[3]),
        .I2(\sample_counter[6]_i_2_n_0 ),
        .I3(sample_counter_reg[2]),
        .I4(sample_counter_reg[4]),
        .I5(sample_counter_reg[6]),
        .O(p_0_in__1[6]));
  LUT2 #(
    .INIT(4'h7)) 
    \sample_counter[6]_i_2 
       (.I0(sample_counter_reg[0]),
        .I1(sample_counter_reg[1]),
        .O(\sample_counter[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \sample_counter[7]_i_3 
       (.I0(sample_counter_reg[6]),
        .I1(\sample_counter[7]_i_5_n_0 ),
        .I2(sample_counter_reg[7]),
        .O(p_0_in__1[7]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \sample_counter[7]_i_5 
       (.I0(sample_counter_reg[4]),
        .I1(sample_counter_reg[2]),
        .I2(sample_counter_reg[0]),
        .I3(sample_counter_reg[1]),
        .I4(sample_counter_reg[3]),
        .I5(sample_counter_reg[5]),
        .O(\sample_counter[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sample_counter_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(\sample_counter[0]_i_1_n_0 ),
        .Q(sample_counter_reg[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sample_counter_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(p_0_in__1[1]),
        .Q(sample_counter_reg[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sample_counter_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(p_0_in__1[2]),
        .Q(sample_counter_reg[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sample_counter_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(p_0_in__1[3]),
        .Q(sample_counter_reg[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sample_counter_reg[4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(p_0_in__1[4]),
        .Q(sample_counter_reg[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sample_counter_reg[5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(p_0_in__1[5]),
        .Q(sample_counter_reg[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sample_counter_reg[6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(p_0_in__1[6]),
        .Q(sample_counter_reg[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sample_counter_reg[7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(p_0_in__1[7]),
        .Q(sample_counter_reg[7]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h00A6)) 
    wave_state_i_1
       (.I0(wave_state),
        .I1(CO),
        .I2(wave_state_reg_0),
        .I3(\code_reg[4]_1 ),
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
  output [1:0]Q;
  input [1:0]D;
  input CLK_125MHZ_FPGA_IBUF_BUFG;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [1:0]D;
  wire [1:0]Q;
  wire [3:2]middle;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* inverted = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \middle_reg[2]_inv 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(D[0]),
        .Q(middle[2]),
        .R(\<const0> ));
  (* inverted = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \middle_reg[3]_inv 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(D[1]),
        .Q(middle[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \sync_signal_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(middle[2]),
        .Q(Q[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \sync_signal_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(middle[3]),
        .Q(Q[1]),
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

(* B_PULSE_CNT_MAX = "200" *) (* B_SAMPLE_CNT_MAX = "62500" *) (* ECO_CHECKSUM = "ebac7b02" *) 
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
  wire [3:2]BUTTONS_IBUF;
  wire CLK_125MHZ_FPGA;
  wire CLK_125MHZ_FPGA_IBUF;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [5:0]LEDS;
  wire [0:0]LEDS_OBUF;
  wire [1:0]SWITCHES;
  wire [1:0]SWITCHES_IBUF;
  wire [3:3]buttons_pressed;
  wire [9:8]counter;
  wire dac_n_3;
  wire dac_n_4;
  wire gen_n_0;
  wire gen_n_1;
  wire gen_n_2;
  wire gen_n_3;
  wire next_sample;
  wire [2:2]sq_wave_buttons;
  wire [0:0]switches_sync;

  OBUF AUD_PWM_OBUF_inst
       (.I(AUD_PWM_OBUF),
        .O(AUD_PWM));
  OBUF AUD_SD_OBUF_inst
       (.I(AUD_SD_OBUF),
        .O(AUD_SD));
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
        .D(BUTTONS_IBUF),
        .Q(buttons_pressed),
        .mode_reg(switches_sync),
        .sq_wave_buttons(sq_wave_buttons));
  dac dac
       (.AUD_PWM(switches_sync),
        .AUD_PWM_OBUF(AUD_PWM_OBUF),
        .CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CO(gen_n_0),
        .DI(gen_n_1),
        .E(next_sample),
        .Q(buttons_pressed),
        .SR(dac_n_3),
        .\counter_reg[8]_0 (dac_n_4),
        .\counter_reg[9]_0 (counter),
        .pwm0_carry__0_0(gen_n_2),
        .pwm0_carry__0_1(gen_n_3));
  sq_wave_gen gen
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CO(gen_n_0),
        .DI(gen_n_1),
        .E(next_sample),
        .LEDS_OBUF(LEDS_OBUF),
        .Q(switches_sync),
        .SR(dac_n_3),
        .\code_reg[2]_0 (gen_n_2),
        .\code_reg[4]_0 (gen_n_3),
        .\code_reg[4]_1 (buttons_pressed),
        .pwm0_carry__0(counter),
        .sq_wave_buttons(sq_wave_buttons),
        .wave_state_reg_0(dac_n_4));
  synchronizer__parameterized0 switch_sync
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .D(SWITCHES_IBUF),
        .Q({AUD_SD_OBUF,switches_sync}));
endmodule
