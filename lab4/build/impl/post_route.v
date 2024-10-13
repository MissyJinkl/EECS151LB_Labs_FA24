// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Thu Oct 10 18:25:40 2024
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
    \edge_detect_pulse_reg[0] ,
    \present_state_reg[0] ,
    \edge_detect_pulse_reg[2] ,
    \edge_detect_pulse_reg[2]_0 ,
    \edge_detect_pulse_reg[0]_0 ,
    \edge_detect_pulse_reg[0]_1 ,
    \edge_detect_pulse_reg[0]_2 ,
    D,
    \edge_detect_pulse_reg[1] ,
    \edge_detect_pulse_reg[1]_0 ,
    \edge_detect_pulse_reg[3]_0 ,
    E,
    \edge_detect_pulse_reg[3]_1 ,
    \edge_detect_pulse_reg[1]_1 ,
    \edge_detect_pulse_reg[0]_3 ,
    \sync_signal_reg[0] ,
    \edge_detect_pulse_reg[3]_2 ,
    \edge_detect_pulse_reg[3]_3 ,
    CLK_125MHZ_FPGA_IBUF_BUFG,
    \sample_counter_reg[0] ,
    CO,
    \COUNT_MAX_reg[11] ,
    LEDS_OBUF,
    \COUNT_MAX_reg[11]_0 ,
    \COUNT_MAX_reg[11]_1 ,
    COUNT_MAX13_in,
    COUNT_MAX1,
    sq_wave_leds,
    \COUNT_MAX_reg[10] ,
    \COUNT_MAX_reg[11]_2 ,
    \COUNT_MAX_reg[11]_3 ,
    SR,
    wr_en,
    \middle_reg[3]_inv );
  output \edge_detect_pulse_reg[3] ;
  output [3:0]Q;
  output \edge_detect_pulse_reg[0] ;
  output \present_state_reg[0] ;
  output \edge_detect_pulse_reg[2] ;
  output \edge_detect_pulse_reg[2]_0 ;
  output \edge_detect_pulse_reg[0]_0 ;
  output \edge_detect_pulse_reg[0]_1 ;
  output \edge_detect_pulse_reg[0]_2 ;
  output [2:0]D;
  output \edge_detect_pulse_reg[1] ;
  output \edge_detect_pulse_reg[1]_0 ;
  output \edge_detect_pulse_reg[3]_0 ;
  output [0:0]E;
  output \edge_detect_pulse_reg[3]_1 ;
  output \edge_detect_pulse_reg[1]_1 ;
  output \edge_detect_pulse_reg[0]_3 ;
  output \sync_signal_reg[0] ;
  output \edge_detect_pulse_reg[3]_2 ;
  output \edge_detect_pulse_reg[3]_3 ;
  input CLK_125MHZ_FPGA_IBUF_BUFG;
  input \sample_counter_reg[0] ;
  input [0:0]CO;
  input [0:0]\COUNT_MAX_reg[11] ;
  input [1:0]LEDS_OBUF;
  input [3:0]\COUNT_MAX_reg[11]_0 ;
  input \COUNT_MAX_reg[11]_1 ;
  input [2:0]COUNT_MAX13_in;
  input [1:0]COUNT_MAX1;
  input [0:0]sq_wave_leds;
  input \COUNT_MAX_reg[10] ;
  input \COUNT_MAX_reg[11]_2 ;
  input \COUNT_MAX_reg[11]_3 ;
  input [0:0]SR;
  input wr_en;
  input [3:0]\middle_reg[3]_inv ;

  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [0:0]CO;
  wire [1:0]COUNT_MAX1;
  wire [2:0]COUNT_MAX13_in;
  wire \COUNT_MAX_reg[10] ;
  wire [0:0]\COUNT_MAX_reg[11] ;
  wire [3:0]\COUNT_MAX_reg[11]_0 ;
  wire \COUNT_MAX_reg[11]_1 ;
  wire \COUNT_MAX_reg[11]_2 ;
  wire \COUNT_MAX_reg[11]_3 ;
  wire [2:0]D;
  wire [0:0]E;
  wire [1:0]LEDS_OBUF;
  wire [3:0]Q;
  wire [0:0]SR;
  wire [3:0]debounced_signals;
  wire \edge_detect_pulse_reg[0] ;
  wire \edge_detect_pulse_reg[0]_0 ;
  wire \edge_detect_pulse_reg[0]_1 ;
  wire \edge_detect_pulse_reg[0]_2 ;
  wire \edge_detect_pulse_reg[0]_3 ;
  wire \edge_detect_pulse_reg[1] ;
  wire \edge_detect_pulse_reg[1]_0 ;
  wire \edge_detect_pulse_reg[1]_1 ;
  wire \edge_detect_pulse_reg[2] ;
  wire \edge_detect_pulse_reg[2]_0 ;
  wire \edge_detect_pulse_reg[3] ;
  wire \edge_detect_pulse_reg[3]_0 ;
  wire \edge_detect_pulse_reg[3]_1 ;
  wire \edge_detect_pulse_reg[3]_2 ;
  wire \edge_detect_pulse_reg[3]_3 ;
  wire [3:0]\middle_reg[3]_inv ;
  wire \present_state_reg[0] ;
  wire \sample_counter_reg[0] ;
  wire [0:0]sq_wave_leds;
  wire \sync_signal_reg[0] ;
  wire [3:0]synchronized_signals;
  wire wr_en;

  debouncer button_debouncer
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .D(debounced_signals),
        .Q(synchronized_signals));
  edge_detector button_edge_detector
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CO(CO),
        .COUNT_MAX1(COUNT_MAX1),
        .COUNT_MAX13_in(COUNT_MAX13_in),
        .\COUNT_MAX_reg[10] (\COUNT_MAX_reg[10] ),
        .\COUNT_MAX_reg[11] (\COUNT_MAX_reg[11] ),
        .\COUNT_MAX_reg[11]_0 (\COUNT_MAX_reg[11]_0 ),
        .\COUNT_MAX_reg[11]_1 (\COUNT_MAX_reg[11]_1 ),
        .\COUNT_MAX_reg[11]_2 (\COUNT_MAX_reg[11]_2 ),
        .\COUNT_MAX_reg[11]_3 (\COUNT_MAX_reg[11]_3 ),
        .D(D),
        .E(E),
        .LEDS_OBUF(LEDS_OBUF),
        .Q(Q),
        .SR(SR),
        .\edge_detect_pulse_reg[0]_0 (\edge_detect_pulse_reg[0] ),
        .\edge_detect_pulse_reg[0]_1 (\edge_detect_pulse_reg[0]_0 ),
        .\edge_detect_pulse_reg[0]_2 (\edge_detect_pulse_reg[0]_1 ),
        .\edge_detect_pulse_reg[0]_3 (\edge_detect_pulse_reg[0]_2 ),
        .\edge_detect_pulse_reg[0]_4 (\edge_detect_pulse_reg[0]_3 ),
        .\edge_detect_pulse_reg[1]_0 (\edge_detect_pulse_reg[1] ),
        .\edge_detect_pulse_reg[1]_1 (\edge_detect_pulse_reg[1]_0 ),
        .\edge_detect_pulse_reg[1]_2 (\edge_detect_pulse_reg[1]_1 ),
        .\edge_detect_pulse_reg[2]_0 (\edge_detect_pulse_reg[2] ),
        .\edge_detect_pulse_reg[2]_1 (\edge_detect_pulse_reg[2]_0 ),
        .\edge_detect_pulse_reg[3]_0 (\edge_detect_pulse_reg[3] ),
        .\edge_detect_pulse_reg[3]_1 (\edge_detect_pulse_reg[3]_0 ),
        .\edge_detect_pulse_reg[3]_2 (\edge_detect_pulse_reg[3]_1 ),
        .\edge_detect_pulse_reg[3]_3 (\edge_detect_pulse_reg[3]_2 ),
        .\edge_detect_pulse_reg[3]_4 (\edge_detect_pulse_reg[3]_3 ),
        .\present_state_reg[0] (\present_state_reg[0] ),
        .\sample_counter_reg[0] (\sample_counter_reg[0] ),
        .\signal_in_d_reg[3]_0 (debounced_signals),
        .sq_wave_leds(sq_wave_leds),
        .\sync_signal_reg[0] (\sync_signal_reg[0] ),
        .wr_en(wr_en));
  synchronizer button_synchronizer
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .Q(synchronized_signals),
        .\middle_reg[3]_inv_0 (\middle_reg[3]_inv ));
endmodule

module dac
   (CO,
    \counter_reg[9]_0 ,
    next_sample,
    \counter_reg[0]_0 ,
    DI,
    pwm0_carry_0,
    Q,
    DOADO,
    pwm0_carry__0_0,
    pwm0_carry__0_1,
    \counter_reg[9]_1 ,
    CLK_125MHZ_FPGA_IBUF_BUFG);
  output [0:0]CO;
  output [1:0]\counter_reg[9]_0 ;
  output next_sample;
  output \counter_reg[0]_0 ;
  input [0:0]DI;
  input pwm0_carry_0;
  input [0:0]Q;
  input [8:0]DOADO;
  input pwm0_carry__0_0;
  input pwm0_carry__0_1;
  input [0:0]\counter_reg[9]_1 ;
  input CLK_125MHZ_FPGA_IBUF_BUFG;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [0:0]CO;
  wire [0:0]DI;
  wire [8:0]DOADO;
  wire [0:0]Q;
  wire [7:0]counter;
  wire \counter[0]_i_1_n_0 ;
  wire \counter[1]_i_1_n_0 ;
  wire \counter[2]_i_1_n_0 ;
  wire \counter[3]_i_1_n_0 ;
  wire \counter[4]_i_1_n_0 ;
  wire \counter[5]_i_1_n_0 ;
  wire \counter[6]_i_1_n_0 ;
  wire \counter[7]_i_1_n_0 ;
  wire \counter[7]_i_2_n_0 ;
  wire \counter[8]_i_1_n_0 ;
  wire \counter[9]_i_1_n_0 ;
  wire \counter[9]_i_2_n_0 ;
  wire [1:0]\counter_reg[9]_0 ;
  wire [0:0]\counter_reg[9]_1 ;
  wire next_sample;
  wire pwm0_carry_0;
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
  wire sel_i_11_n_0;
  wire [3:0]NLW_pwm0_carry_CO_UNCONNECTED;

  assign \counter_reg[0]_0  = next_sample;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(counter[0]),
        .O(\counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1 
       (.I0(counter[1]),
        .I1(counter[0]),
        .O(\counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \counter[2]_i_1 
       (.I0(counter[2]),
        .I1(counter[1]),
        .I2(counter[0]),
        .O(\counter[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \counter[3]_i_1 
       (.I0(counter[3]),
        .I1(counter[2]),
        .I2(counter[1]),
        .I3(counter[0]),
        .O(\counter[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \counter[4]_i_1 
       (.I0(counter[4]),
        .I1(counter[2]),
        .I2(counter[1]),
        .I3(counter[0]),
        .I4(counter[3]),
        .O(\counter[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \counter[5]_i_1 
       (.I0(counter[5]),
        .I1(counter[4]),
        .I2(counter[2]),
        .I3(counter[1]),
        .I4(counter[0]),
        .I5(counter[3]),
        .O(\counter[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF7F0080)) 
    \counter[6]_i_1 
       (.I0(counter[4]),
        .I1(counter[5]),
        .I2(counter[3]),
        .I3(\counter[7]_i_2_n_0 ),
        .I4(counter[6]),
        .O(\counter[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA6AAAAAAAAAAA)) 
    \counter[7]_i_1 
       (.I0(counter[7]),
        .I1(counter[4]),
        .I2(counter[5]),
        .I3(counter[3]),
        .I4(\counter[7]_i_2_n_0 ),
        .I5(counter[6]),
        .O(\counter[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \counter[7]_i_2 
       (.I0(counter[0]),
        .I1(counter[1]),
        .I2(counter[2]),
        .O(\counter[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hBF40)) 
    \counter[8]_i_1 
       (.I0(\counter[9]_i_2_n_0 ),
        .I1(counter[7]),
        .I2(counter[6]),
        .I3(\counter_reg[9]_0 [0]),
        .O(\counter[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h9AAAAAAA)) 
    \counter[9]_i_1 
       (.I0(\counter_reg[9]_0 [1]),
        .I1(\counter[9]_i_2_n_0 ),
        .I2(counter[7]),
        .I3(counter[6]),
        .I4(\counter_reg[9]_0 [0]),
        .O(\counter[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \counter[9]_i_2 
       (.I0(counter[4]),
        .I1(counter[5]),
        .I2(counter[3]),
        .I3(counter[0]),
        .I4(counter[1]),
        .I5(counter[2]),
        .O(\counter[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\counter[0]_i_1_n_0 ),
        .Q(counter[0]),
        .R(\counter_reg[9]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\counter[1]_i_1_n_0 ),
        .Q(counter[1]),
        .R(\counter_reg[9]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\counter[2]_i_1_n_0 ),
        .Q(counter[2]),
        .R(\counter_reg[9]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\counter[3]_i_1_n_0 ),
        .Q(counter[3]),
        .R(\counter_reg[9]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\counter[4]_i_1_n_0 ),
        .Q(counter[4]),
        .R(\counter_reg[9]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\counter[5]_i_1_n_0 ),
        .Q(counter[5]),
        .R(\counter_reg[9]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\counter[6]_i_1_n_0 ),
        .Q(counter[6]),
        .R(\counter_reg[9]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\counter[7]_i_1_n_0 ),
        .Q(counter[7]),
        .R(\counter_reg[9]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\counter[8]_i_1_n_0 ),
        .Q(\counter_reg[9]_0 [0]),
        .R(\counter_reg[9]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\counter[9]_i_1_n_0 ),
        .Q(\counter_reg[9]_0 [1]),
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
        .CO(CO),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,DI}),
        .S({\<const0> ,\<const0> ,\<const0> ,pwm0_carry__0_i_2_n_0}));
  LUT6 #(
    .INIT(64'h9090900909099009)) 
    pwm0_carry__0_i_2
       (.I0(\counter_reg[9]_0 [0]),
        .I1(pwm0_carry__0_1),
        .I2(\counter_reg[9]_0 [1]),
        .I3(pwm0_carry__0_0),
        .I4(Q),
        .I5(DOADO[8]),
        .O(pwm0_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h00E2EEEE002222E2)) 
    pwm0_carry_i_1
       (.I0(pwm0_carry_0),
        .I1(Q),
        .I2(DOADO[6]),
        .I3(counter[6]),
        .I4(counter[7]),
        .I5(DOADO[7]),
        .O(pwm0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h00E2EEEE002222E2)) 
    pwm0_carry_i_2
       (.I0(pwm0_carry__0_0),
        .I1(Q),
        .I2(DOADO[4]),
        .I3(counter[4]),
        .I4(counter[5]),
        .I5(DOADO[5]),
        .O(pwm0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h00D8FAFA005050D8)) 
    pwm0_carry_i_3
       (.I0(Q),
        .I1(DOADO[2]),
        .I2(pwm0_carry_0),
        .I3(counter[2]),
        .I4(counter[3]),
        .I5(DOADO[3]),
        .O(pwm0_carry_i_3_n_0));
  LUT5 #(
    .INIT(32'h4545D545)) 
    pwm0_carry_i_4
       (.I0(counter[1]),
        .I1(DOADO[1]),
        .I2(Q),
        .I3(DOADO[0]),
        .I4(counter[0]),
        .O(pwm0_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hA85801010808A151)) 
    pwm0_carry_i_5
       (.I0(counter[6]),
        .I1(pwm0_carry_0),
        .I2(Q),
        .I3(DOADO[6]),
        .I4(counter[7]),
        .I5(DOADO[7]),
        .O(pwm0_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'hA85801010808A151)) 
    pwm0_carry_i_6
       (.I0(counter[4]),
        .I1(pwm0_carry__0_0),
        .I2(Q),
        .I3(DOADO[4]),
        .I4(counter[5]),
        .I5(DOADO[5]),
        .O(pwm0_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'hA684001122008495)) 
    pwm0_carry_i_7
       (.I0(counter[2]),
        .I1(Q),
        .I2(DOADO[2]),
        .I3(pwm0_carry_0),
        .I4(counter[3]),
        .I5(DOADO[3]),
        .O(pwm0_carry_i_7_n_0));
  LUT5 #(
    .INIT(32'h93030090)) 
    pwm0_carry_i_8
       (.I0(DOADO[0]),
        .I1(counter[0]),
        .I2(Q),
        .I3(DOADO[1]),
        .I4(counter[1]),
        .O(pwm0_carry_i_8_n_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    sel_i_10
       (.I0(sel_i_11_n_0),
        .I1(counter[0]),
        .I2(counter[1]),
        .I3(counter[2]),
        .I4(counter[3]),
        .O(next_sample));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    sel_i_11
       (.I0(counter[5]),
        .I1(counter[4]),
        .I2(\counter_reg[9]_0 [1]),
        .I3(\counter_reg[9]_0 [0]),
        .I4(counter[7]),
        .I5(counter[6]),
        .O(sel_i_11_n_0));
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
        .I3(\debounce_logic[0].saturating_counter_reg[0]_0 [3]),
        .I4(\debounce_logic[0].saturating_counter_reg[0]_0 [4]),
        .I5(\debounce_logic[0].saturating_counter_reg[0]_0 [5]),
        .O(\debounce_logic[0].debounced_signal[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_logic[0].debounced_signal_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\debounce_logic[0].debounced_signal[0]_i_1_n_0 ),
        .Q(D[0]),
        .R(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \debounce_logic[0].saturating_counter[0][0]_i_1 
       (.I0(\debounce_logic[0].saturating_counter_reg[0]_0 [0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
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
        .I1(\debounce_logic[0].saturating_counter_reg[0]_0 [0]),
        .I2(\debounce_logic[0].saturating_counter_reg[0]_0 [1]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \debounce_logic[0].saturating_counter[0][3]_i_1 
       (.I0(\debounce_logic[0].saturating_counter_reg[0]_0 [3]),
        .I1(\debounce_logic[0].saturating_counter_reg[0]_0 [1]),
        .I2(\debounce_logic[0].saturating_counter_reg[0]_0 [0]),
        .I3(\debounce_logic[0].saturating_counter_reg[0]_0 [2]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
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
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \debounce_logic[0].saturating_counter[0][5]_i_1 
       (.I0(\debounce_logic[0].saturating_counter_reg[0]_0 [5]),
        .I1(\debounce_logic[0].saturating_counter_reg[0]_0 [3]),
        .I2(\debounce_logic[0].saturating_counter_reg[0]_0 [1]),
        .I3(\debounce_logic[0].saturating_counter_reg[0]_0 [0]),
        .I4(\debounce_logic[0].saturating_counter_reg[0]_0 [2]),
        .I5(\debounce_logic[0].saturating_counter_reg[0]_0 [4]),
        .O(p_0_in[5]));
  LUT5 #(
    .INIT(32'hDFFF2000)) 
    \debounce_logic[0].saturating_counter[0][6]_i_1 
       (.I0(\debounce_logic[0].saturating_counter_reg[0]_0 [4]),
        .I1(\debounce_logic[0].saturating_counter[0][7]_i_4_n_0 ),
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
    .INIT(32'h08AAAAAA)) 
    \debounce_logic[0].saturating_counter[0][7]_i_2 
       (.I0(\wrapping_counter[15]_i_1_n_0 ),
        .I1(\debounce_logic[0].saturating_counter[0][7]_i_4_n_0 ),
        .I2(\debounce_logic[0].saturating_counter[0][7]_i_5_n_0 ),
        .I3(\debounce_logic[0].saturating_counter_reg[0]_0 [6]),
        .I4(\debounce_logic[0].saturating_counter_reg[0]_0 [7]),
        .O(saturating_counter));
  LUT6 #(
    .INIT(64'hA6AAAAAAAAAAAAAA)) 
    \debounce_logic[0].saturating_counter[0][7]_i_3 
       (.I0(\debounce_logic[0].saturating_counter_reg[0]_0 [7]),
        .I1(\debounce_logic[0].saturating_counter_reg[0]_0 [4]),
        .I2(\debounce_logic[0].saturating_counter[0][7]_i_4_n_0 ),
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
       (.I0(\debounce_logic[0].saturating_counter_reg[0]_0 [5]),
        .I1(\debounce_logic[0].saturating_counter_reg[0]_0 [4]),
        .I2(\debounce_logic[0].saturating_counter_reg[0]_0 [3]),
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
        .I3(\debounce_logic[1].saturating_counter_reg[1]_1 [3]),
        .I4(\debounce_logic[1].saturating_counter_reg[1]_1 [4]),
        .I5(\debounce_logic[1].saturating_counter_reg[1]_1 [5]),
        .O(\debounce_logic[1].debounced_signal[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_logic[1].debounced_signal_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\debounce_logic[1].debounced_signal[1]_i_1_n_0 ),
        .Q(D[1]),
        .R(\<const0> ));
  (* \PinAttr:I0:HOLD_DETOUR  = "197" *) 
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \debounce_logic[1].saturating_counter[1][0]_i_1 
       (.I0(\debounce_logic[1].saturating_counter_reg[1]_1 [0]),
        .O(p_0_in__0[0]));
  (* \PinAttr:I0:HOLD_DETOUR  = "197" *) 
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \debounce_logic[1].saturating_counter[1][1]_i_1 
       (.I0(\debounce_logic[1].saturating_counter_reg[1]_1 [0]),
        .I1(\debounce_logic[1].saturating_counter_reg[1]_1 [1]),
        .O(p_0_in__0[1]));
  (* \PinAttr:I1:HOLD_DETOUR  = "190" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \debounce_logic[1].saturating_counter[1][2]_i_1 
       (.I0(\debounce_logic[1].saturating_counter_reg[1]_1 [2]),
        .I1(\debounce_logic[1].saturating_counter_reg[1]_1 [0]),
        .I2(\debounce_logic[1].saturating_counter_reg[1]_1 [1]),
        .O(p_0_in__0[2]));
  (* \PinAttr:I1:HOLD_DETOUR  = "166" *) 
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \debounce_logic[1].saturating_counter[1][3]_i_1 
       (.I0(\debounce_logic[1].saturating_counter_reg[1]_1 [3]),
        .I1(\debounce_logic[1].saturating_counter_reg[1]_1 [1]),
        .I2(\debounce_logic[1].saturating_counter_reg[1]_1 [0]),
        .I3(\debounce_logic[1].saturating_counter_reg[1]_1 [2]),
        .O(p_0_in__0[3]));
  (* \PinAttr:I3:HOLD_DETOUR  = "166" *) 
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
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
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \debounce_logic[1].saturating_counter[1][5]_i_1 
       (.I0(\debounce_logic[1].saturating_counter_reg[1]_1 [5]),
        .I1(\debounce_logic[1].saturating_counter_reg[1]_1 [3]),
        .I2(\debounce_logic[1].saturating_counter_reg[1]_1 [1]),
        .I3(\debounce_logic[1].saturating_counter_reg[1]_1 [0]),
        .I4(\debounce_logic[1].saturating_counter_reg[1]_1 [2]),
        .I5(\debounce_logic[1].saturating_counter_reg[1]_1 [4]),
        .O(p_0_in__0[5]));
  LUT5 #(
    .INIT(32'hDFFF2000)) 
    \debounce_logic[1].saturating_counter[1][6]_i_1 
       (.I0(\debounce_logic[1].saturating_counter_reg[1]_1 [4]),
        .I1(\debounce_logic[1].saturating_counter[1][7]_i_4_n_0 ),
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
    .INIT(32'h08AAAAAA)) 
    \debounce_logic[1].saturating_counter[1][7]_i_2 
       (.I0(\wrapping_counter[15]_i_1_n_0 ),
        .I1(\debounce_logic[1].saturating_counter[1][7]_i_4_n_0 ),
        .I2(\debounce_logic[1].saturating_counter[1][7]_i_5_n_0 ),
        .I3(\debounce_logic[1].saturating_counter_reg[1]_1 [6]),
        .I4(\debounce_logic[1].saturating_counter_reg[1]_1 [7]),
        .O(\debounce_logic[1].saturating_counter[1][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA6AAAAAAAAAAAAAA)) 
    \debounce_logic[1].saturating_counter[1][7]_i_3 
       (.I0(\debounce_logic[1].saturating_counter_reg[1]_1 [7]),
        .I1(\debounce_logic[1].saturating_counter_reg[1]_1 [4]),
        .I2(\debounce_logic[1].saturating_counter[1][7]_i_4_n_0 ),
        .I3(\debounce_logic[1].saturating_counter_reg[1]_1 [3]),
        .I4(\debounce_logic[1].saturating_counter_reg[1]_1 [5]),
        .I5(\debounce_logic[1].saturating_counter_reg[1]_1 [6]),
        .O(p_0_in__0[7]));
  (* \PinAttr:I1:HOLD_DETOUR  = "190" *) 
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
       (.I0(\debounce_logic[1].saturating_counter_reg[1]_1 [5]),
        .I1(\debounce_logic[1].saturating_counter_reg[1]_1 [4]),
        .I2(\debounce_logic[1].saturating_counter_reg[1]_1 [3]),
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
  (* \PinAttr:I0:HOLD_DETOUR  = "197" *) 
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \debounce_logic[2].saturating_counter[2][0]_i_1 
       (.I0(\debounce_logic[2].saturating_counter_reg[2]_2 [0]),
        .O(p_0_in__1[0]));
  (* \PinAttr:I0:HOLD_DETOUR  = "197" *) 
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
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
        .I1(\debounce_logic[2].saturating_counter_reg[2]_2 [0]),
        .I2(\debounce_logic[2].saturating_counter_reg[2]_2 [1]),
        .O(p_0_in__1[2]));
  (* \PinAttr:I3:HOLD_DETOUR  = "172" *) 
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \debounce_logic[2].saturating_counter[2][3]_i_1 
       (.I0(\debounce_logic[2].saturating_counter_reg[2]_2 [3]),
        .I1(\debounce_logic[2].saturating_counter_reg[2]_2 [1]),
        .I2(\debounce_logic[2].saturating_counter_reg[2]_2 [0]),
        .I3(\debounce_logic[2].saturating_counter_reg[2]_2 [2]),
        .O(p_0_in__1[3]));
  (* \PinAttr:I1:HOLD_DETOUR  = "172" *) 
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
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
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \debounce_logic[2].saturating_counter[2][5]_i_1 
       (.I0(\debounce_logic[2].saturating_counter_reg[2]_2 [5]),
        .I1(\debounce_logic[2].saturating_counter_reg[2]_2 [3]),
        .I2(\debounce_logic[2].saturating_counter_reg[2]_2 [1]),
        .I3(\debounce_logic[2].saturating_counter_reg[2]_2 [0]),
        .I4(\debounce_logic[2].saturating_counter_reg[2]_2 [2]),
        .I5(\debounce_logic[2].saturating_counter_reg[2]_2 [4]),
        .O(p_0_in__1[5]));
  LUT5 #(
    .INIT(32'hDFFF2000)) 
    \debounce_logic[2].saturating_counter[2][6]_i_1 
       (.I0(\debounce_logic[2].saturating_counter_reg[2]_2 [4]),
        .I1(\debounce_logic[2].saturating_counter[2][7]_i_4_n_0 ),
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
    .INIT(32'h08AAAAAA)) 
    \debounce_logic[2].saturating_counter[2][7]_i_2 
       (.I0(\wrapping_counter[15]_i_1_n_0 ),
        .I1(\debounce_logic[2].saturating_counter[2][7]_i_4_n_0 ),
        .I2(\debounce_logic[2].saturating_counter[2][7]_i_5_n_0 ),
        .I3(\debounce_logic[2].saturating_counter_reg[2]_2 [6]),
        .I4(\debounce_logic[2].saturating_counter_reg[2]_2 [7]),
        .O(\debounce_logic[2].saturating_counter[2][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA6AAAAAAAAAAAAAA)) 
    \debounce_logic[2].saturating_counter[2][7]_i_3 
       (.I0(\debounce_logic[2].saturating_counter_reg[2]_2 [7]),
        .I1(\debounce_logic[2].saturating_counter_reg[2]_2 [4]),
        .I2(\debounce_logic[2].saturating_counter[2][7]_i_4_n_0 ),
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
       (.I0(\debounce_logic[2].saturating_counter_reg[2]_2 [5]),
        .I1(\debounce_logic[2].saturating_counter_reg[2]_2 [4]),
        .I2(\debounce_logic[2].saturating_counter_reg[2]_2 [3]),
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
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \debounce_logic[3].saturating_counter[3][0]_i_1 
       (.I0(\debounce_logic[3].saturating_counter_reg[3]_3 [0]),
        .O(p_0_in__2[0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \debounce_logic[3].saturating_counter[3][1]_i_1 
       (.I0(\debounce_logic[3].saturating_counter_reg[3]_3 [0]),
        .I1(\debounce_logic[3].saturating_counter_reg[3]_3 [1]),
        .O(p_0_in__2[1]));
  (* \PinAttr:I1:HOLD_DETOUR  = "192" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \debounce_logic[3].saturating_counter[3][2]_i_1 
       (.I0(\debounce_logic[3].saturating_counter_reg[3]_3 [2]),
        .I1(\debounce_logic[3].saturating_counter_reg[3]_3 [0]),
        .I2(\debounce_logic[3].saturating_counter_reg[3]_3 [1]),
        .O(p_0_in__2[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \debounce_logic[3].saturating_counter[3][3]_i_1 
       (.I0(\debounce_logic[3].saturating_counter_reg[3]_3 [3]),
        .I1(\debounce_logic[3].saturating_counter_reg[3]_3 [1]),
        .I2(\debounce_logic[3].saturating_counter_reg[3]_3 [0]),
        .I3(\debounce_logic[3].saturating_counter_reg[3]_3 [2]),
        .O(p_0_in__2[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
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
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \debounce_logic[3].saturating_counter[3][5]_i_1 
       (.I0(\debounce_logic[3].saturating_counter_reg[3]_3 [5]),
        .I1(\debounce_logic[3].saturating_counter_reg[3]_3 [3]),
        .I2(\debounce_logic[3].saturating_counter_reg[3]_3 [1]),
        .I3(\debounce_logic[3].saturating_counter_reg[3]_3 [0]),
        .I4(\debounce_logic[3].saturating_counter_reg[3]_3 [2]),
        .I5(\debounce_logic[3].saturating_counter_reg[3]_3 [4]),
        .O(p_0_in__2[5]));
  (* \PinAttr:I3:HOLD_DETOUR  = "185" *) 
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
    .INIT(32'h08AAAAAA)) 
    \debounce_logic[3].saturating_counter[3][7]_i_2 
       (.I0(\wrapping_counter[15]_i_1_n_0 ),
        .I1(\debounce_logic[3].saturating_counter[3][7]_i_4_n_0 ),
        .I2(\debounce_logic[3].saturating_counter[3][7]_i_5_n_0 ),
        .I3(\debounce_logic[3].saturating_counter_reg[3]_3 [6]),
        .I4(\debounce_logic[3].saturating_counter_reg[3]_3 [7]),
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
  (* \PinAttr:I1:HOLD_DETOUR  = "192" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \debounce_logic[3].saturating_counter[3][7]_i_4 
       (.I0(\debounce_logic[3].saturating_counter_reg[3]_3 [1]),
        .I1(\debounce_logic[3].saturating_counter_reg[3]_3 [0]),
        .I2(\debounce_logic[3].saturating_counter_reg[3]_3 [2]),
        .O(\debounce_logic[3].saturating_counter[3][7]_i_4_n_0 ));
  (* \PinAttr:I0:HOLD_DETOUR  = "185" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \debounce_logic[3].saturating_counter[3][7]_i_5 
       (.I0(\debounce_logic[3].saturating_counter_reg[3]_3 [5]),
        .I1(\debounce_logic[3].saturating_counter_reg[3]_3 [4]),
        .I2(\debounce_logic[3].saturating_counter_reg[3]_3 [3]),
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
    .INIT(64'h0000000000001000)) 
    \wrapping_counter[15]_i_1 
       (.I0(\wrapping_counter[15]_i_3_n_0 ),
        .I1(wrapping_counter[8]),
        .I2(wrapping_counter[1]),
        .I3(wrapping_counter[13]),
        .I4(wrapping_counter[2]),
        .I5(\wrapping_counter[15]_i_4_n_0 ),
        .O(\wrapping_counter[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \wrapping_counter[15]_i_3 
       (.I0(wrapping_counter[3]),
        .I1(wrapping_counter[7]),
        .I2(wrapping_counter[14]),
        .I3(wrapping_counter[10]),
        .O(\wrapping_counter[15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF7FF)) 
    \wrapping_counter[15]_i_4 
       (.I0(wrapping_counter[15]),
        .I1(wrapping_counter[0]),
        .I2(wrapping_counter[9]),
        .I3(wrapping_counter[5]),
        .I4(\wrapping_counter[15]_i_5_n_0 ),
        .O(\wrapping_counter[15]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \wrapping_counter[15]_i_5 
       (.I0(wrapping_counter[12]),
        .I1(wrapping_counter[6]),
        .I2(wrapping_counter[4]),
        .I3(wrapping_counter[11]),
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
    \edge_detect_pulse_reg[0]_0 ,
    \present_state_reg[0] ,
    \edge_detect_pulse_reg[2]_0 ,
    \edge_detect_pulse_reg[2]_1 ,
    \edge_detect_pulse_reg[0]_1 ,
    \edge_detect_pulse_reg[0]_2 ,
    \edge_detect_pulse_reg[0]_3 ,
    D,
    \edge_detect_pulse_reg[1]_0 ,
    \edge_detect_pulse_reg[1]_1 ,
    \edge_detect_pulse_reg[3]_1 ,
    E,
    \edge_detect_pulse_reg[3]_2 ,
    \edge_detect_pulse_reg[1]_2 ,
    \edge_detect_pulse_reg[0]_4 ,
    \sync_signal_reg[0] ,
    \edge_detect_pulse_reg[3]_3 ,
    \edge_detect_pulse_reg[3]_4 ,
    \sample_counter_reg[0] ,
    CO,
    \COUNT_MAX_reg[11] ,
    LEDS_OBUF,
    \COUNT_MAX_reg[11]_0 ,
    \COUNT_MAX_reg[11]_1 ,
    COUNT_MAX13_in,
    COUNT_MAX1,
    sq_wave_leds,
    \COUNT_MAX_reg[10] ,
    \COUNT_MAX_reg[11]_2 ,
    \COUNT_MAX_reg[11]_3 ,
    SR,
    wr_en,
    \signal_in_d_reg[3]_0 ,
    CLK_125MHZ_FPGA_IBUF_BUFG);
  output \edge_detect_pulse_reg[3]_0 ;
  output [3:0]Q;
  output \edge_detect_pulse_reg[0]_0 ;
  output \present_state_reg[0] ;
  output \edge_detect_pulse_reg[2]_0 ;
  output \edge_detect_pulse_reg[2]_1 ;
  output \edge_detect_pulse_reg[0]_1 ;
  output \edge_detect_pulse_reg[0]_2 ;
  output \edge_detect_pulse_reg[0]_3 ;
  output [2:0]D;
  output \edge_detect_pulse_reg[1]_0 ;
  output \edge_detect_pulse_reg[1]_1 ;
  output \edge_detect_pulse_reg[3]_1 ;
  output [0:0]E;
  output \edge_detect_pulse_reg[3]_2 ;
  output \edge_detect_pulse_reg[1]_2 ;
  output \edge_detect_pulse_reg[0]_4 ;
  output \sync_signal_reg[0] ;
  output \edge_detect_pulse_reg[3]_3 ;
  output \edge_detect_pulse_reg[3]_4 ;
  input \sample_counter_reg[0] ;
  input [0:0]CO;
  input [0:0]\COUNT_MAX_reg[11] ;
  input [1:0]LEDS_OBUF;
  input [3:0]\COUNT_MAX_reg[11]_0 ;
  input \COUNT_MAX_reg[11]_1 ;
  input [2:0]COUNT_MAX13_in;
  input [1:0]COUNT_MAX1;
  input [0:0]sq_wave_leds;
  input \COUNT_MAX_reg[10] ;
  input \COUNT_MAX_reg[11]_2 ;
  input \COUNT_MAX_reg[11]_3 ;
  input [0:0]SR;
  input wr_en;
  input [3:0]\signal_in_d_reg[3]_0 ;
  input CLK_125MHZ_FPGA_IBUF_BUFG;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [0:0]CO;
  wire [1:0]COUNT_MAX1;
  wire [2:0]COUNT_MAX13_in;
  wire \COUNT_MAX[11]_i_5_n_0 ;
  wire \COUNT_MAX[4]_i_2_n_0 ;
  wire \COUNT_MAX_reg[10] ;
  wire [0:0]\COUNT_MAX_reg[11] ;
  wire [3:0]\COUNT_MAX_reg[11]_0 ;
  wire \COUNT_MAX_reg[11]_1 ;
  wire \COUNT_MAX_reg[11]_2 ;
  wire \COUNT_MAX_reg[11]_3 ;
  wire [2:0]D;
  wire [0:0]E;
  wire [1:0]LEDS_OBUF;
  wire [3:0]Q;
  wire [0:0]SR;
  wire \edge_detect_pulse[0]_i_1_n_0 ;
  wire \edge_detect_pulse[1]_i_1_n_0 ;
  wire \edge_detect_pulse[2]_i_1_n_0 ;
  wire \edge_detect_pulse[3]_i_1_n_0 ;
  wire \edge_detect_pulse_reg[0]_0 ;
  wire \edge_detect_pulse_reg[0]_1 ;
  wire \edge_detect_pulse_reg[0]_2 ;
  wire \edge_detect_pulse_reg[0]_3 ;
  wire \edge_detect_pulse_reg[0]_4 ;
  wire \edge_detect_pulse_reg[1]_0 ;
  wire \edge_detect_pulse_reg[1]_1 ;
  wire \edge_detect_pulse_reg[1]_2 ;
  wire \edge_detect_pulse_reg[2]_0 ;
  wire \edge_detect_pulse_reg[2]_1 ;
  wire \edge_detect_pulse_reg[3]_0 ;
  wire \edge_detect_pulse_reg[3]_1 ;
  wire \edge_detect_pulse_reg[3]_2 ;
  wire \edge_detect_pulse_reg[3]_3 ;
  wire \edge_detect_pulse_reg[3]_4 ;
  wire \present_state_reg[0] ;
  wire \sample_counter_reg[0] ;
  wire [3:0]signal_in_d;
  wire [3:0]\signal_in_d_reg[3]_0 ;
  wire [0:0]sq_wave_leds;
  wire \sync_signal_reg[0] ;
  wire wr_en;

  LUT5 #(
    .INIT(32'hF4F4FFF4)) 
    \COUNT_MAX[10]_i_1 
       (.I0(\edge_detect_pulse_reg[1]_0 ),
        .I1(\COUNT_MAX_reg[11]_0 [2]),
        .I2(\COUNT_MAX_reg[10] ),
        .I3(COUNT_MAX13_in[1]),
        .I4(\edge_detect_pulse_reg[1]_1 ),
        .O(D[1]));
  LUT4 #(
    .INIT(16'hFF0E)) 
    \COUNT_MAX[11]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\COUNT_MAX_reg[11] ),
        .I3(Q[3]),
        .O(E));
  LUT6 #(
    .INIT(64'hFFF4FFF4FFFFFFF4)) 
    \COUNT_MAX[11]_i_2 
       (.I0(\edge_detect_pulse_reg[1]_0 ),
        .I1(\COUNT_MAX_reg[11]_0 [3]),
        .I2(\COUNT_MAX_reg[11]_1 ),
        .I3(\COUNT_MAX[11]_i_5_n_0 ),
        .I4(COUNT_MAX13_in[2]),
        .I5(\edge_detect_pulse_reg[1]_1 ),
        .O(D[2]));
  LUT4 #(
    .INIT(16'hFDFF)) 
    \COUNT_MAX[11]_i_3 
       (.I0(Q[1]),
        .I1(\COUNT_MAX_reg[11] ),
        .I2(Q[3]),
        .I3(\COUNT_MAX_reg[11]_3 ),
        .O(\edge_detect_pulse_reg[1]_0 ));
  LUT5 #(
    .INIT(32'h00002022)) 
    \COUNT_MAX[11]_i_5 
       (.I0(COUNT_MAX1[1]),
        .I1(sq_wave_leds),
        .I2(\COUNT_MAX_reg[11] ),
        .I3(Q[1]),
        .I4(Q[3]),
        .O(\COUNT_MAX[11]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFDFF)) 
    \COUNT_MAX[11]_i_7 
       (.I0(Q[1]),
        .I1(\COUNT_MAX_reg[11] ),
        .I2(Q[3]),
        .I3(\COUNT_MAX_reg[11]_2 ),
        .O(\edge_detect_pulse_reg[1]_1 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \COUNT_MAX[2]_i_3 
       (.I0(Q[3]),
        .I1(\COUNT_MAX_reg[11] ),
        .I2(Q[1]),
        .O(\edge_detect_pulse_reg[3]_4 ));
  LUT4 #(
    .INIT(16'hBBFB)) 
    \COUNT_MAX[2]_i_5 
       (.I0(Q[3]),
        .I1(sq_wave_leds),
        .I2(Q[1]),
        .I3(\COUNT_MAX_reg[11] ),
        .O(\edge_detect_pulse_reg[3]_1 ));
  LUT4 #(
    .INIT(16'hFFAE)) 
    \COUNT_MAX[2]_i_6 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(\COUNT_MAX_reg[11] ),
        .I3(sq_wave_leds),
        .O(\edge_detect_pulse_reg[3]_2 ));
  LUT6 #(
    .INIT(64'hFFF4FFF4FFFFFFF4)) 
    \COUNT_MAX[4]_i_1 
       (.I0(\edge_detect_pulse_reg[1]_0 ),
        .I1(\COUNT_MAX_reg[11]_0 [0]),
        .I2(\COUNT_MAX_reg[11]_1 ),
        .I3(\COUNT_MAX[4]_i_2_n_0 ),
        .I4(COUNT_MAX13_in[0]),
        .I5(\edge_detect_pulse_reg[1]_1 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h3232003202020002)) 
    \COUNT_MAX[4]_i_2 
       (.I0(COUNT_MAX1[0]),
        .I1(Q[3]),
        .I2(sq_wave_leds),
        .I3(Q[1]),
        .I4(\COUNT_MAX_reg[11] ),
        .I5(\COUNT_MAX_reg[11]_0 [1]),
        .O(\COUNT_MAX[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \COUNT_MAX[7]_i_5 
       (.I0(Q[1]),
        .I1(\COUNT_MAX_reg[11] ),
        .O(\edge_detect_pulse_reg[1]_2 ));
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT5 #(
    .INIT(32'hE0000000)) 
    \d_in[23]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\COUNT_MAX_reg[11] ),
        .I3(LEDS_OBUF[0]),
        .I4(LEDS_OBUF[1]),
        .O(\edge_detect_pulse_reg[0]_2 ));
  LUT2 #(
    .INIT(4'h2)) 
    \edge_detect_pulse[0]_i_1 
       (.I0(\signal_in_d_reg[3]_0 [0]),
        .I1(signal_in_d[0]),
        .O(\edge_detect_pulse[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \edge_detect_pulse[1]_i_1 
       (.I0(\signal_in_d_reg[3]_0 [1]),
        .I1(signal_in_d[1]),
        .O(\edge_detect_pulse[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \edge_detect_pulse[2]_i_1 
       (.I0(\signal_in_d_reg[3]_0 [2]),
        .I1(signal_in_d[2]),
        .O(\edge_detect_pulse[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \edge_detect_pulse[3]_i_1 
       (.I0(\signal_in_d_reg[3]_0 [3]),
        .I1(signal_in_d[3]),
        .O(\edge_detect_pulse[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \edge_detect_pulse_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\edge_detect_pulse[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \edge_detect_pulse_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\edge_detect_pulse[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \edge_detect_pulse_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\edge_detect_pulse[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \edge_detect_pulse_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\edge_detect_pulse[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(\<const0> ));
  LUT5 #(
    .INIT(32'hBFFFFFFF)) 
    \fcw[11]_i_2 
       (.I0(Q[0]),
        .I1(\COUNT_MAX_reg[11] ),
        .I2(Q[1]),
        .I3(LEDS_OBUF[0]),
        .I4(LEDS_OBUF[1]),
        .O(\edge_detect_pulse_reg[0]_1 ));
  LUT4 #(
    .INIT(16'hFB04)) 
    mode_i_1
       (.I0(\COUNT_MAX_reg[11] ),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(sq_wave_leds),
        .O(\sync_signal_reg[0] ));
  LUT3 #(
    .INIT(8'h1F)) 
    \next_state[0]_i_3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\COUNT_MAX_reg[11] ),
        .O(\edge_detect_pulse_reg[0]_3 ));
  LUT2 #(
    .INIT(4'h8)) 
    \next_state[0]_i_4 
       (.I0(Q[2]),
        .I1(\COUNT_MAX_reg[11] ),
        .O(\edge_detect_pulse_reg[2]_1 ));
  LUT5 #(
    .INIT(32'hFF40FFFF)) 
    \next_state[1]_i_2 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(\COUNT_MAX_reg[11] ),
        .I3(LEDS_OBUF[0]),
        .I4(LEDS_OBUF[1]),
        .O(\edge_detect_pulse_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCC04400CCC0)) 
    \next_state[1]_i_3 
       (.I0(LEDS_OBUF[0]),
        .I1(\COUNT_MAX_reg[11] ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(LEDS_OBUF[1]),
        .I5(Q[2]),
        .O(\present_state_reg[0] ));
  LUT6 #(
    .INIT(64'h2A2A2AEAC0C0C0C0)) 
    rd_en_i_2
       (.I0(Q[2]),
        .I1(LEDS_OBUF[0]),
        .I2(LEDS_OBUF[1]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(\COUNT_MAX_reg[11] ),
        .O(\edge_detect_pulse_reg[2]_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \sample_counter[0]_i_1 
       (.I0(Q[3]),
        .I1(\sample_counter_reg[0] ),
        .I2(CO),
        .O(\edge_detect_pulse_reg[3]_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT2 #(
    .INIT(4'hE)) 
    sel_i_1
       (.I0(Q[3]),
        .I1(\sample_counter_reg[0] ),
        .O(\edge_detect_pulse_reg[3]_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \signal_in_d_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\signal_in_d_reg[3]_0 [0]),
        .Q(signal_in_d[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \signal_in_d_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\signal_in_d_reg[3]_0 [1]),
        .Q(signal_in_d[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \signal_in_d_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\signal_in_d_reg[3]_0 [2]),
        .Q(signal_in_d[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \signal_in_d_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\signal_in_d_reg[3]_0 [3]),
        .Q(signal_in_d[3]),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'hEFFFAAAA2000AAAA)) 
    wr_en_i_1
       (.I0(\edge_detect_pulse_reg[0]_2 ),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(\COUNT_MAX_reg[11] ),
        .I4(SR),
        .I5(wr_en),
        .O(\edge_detect_pulse_reg[0]_4 ));
endmodule

module fcw_ram
   (D,
    Q,
    addr,
    \ram_reg[3][0]_0 ,
    \fcw_reg[0] ,
    \fcw_reg[0]_0 ,
    \fcw_reg[0]_1 ,
    \fcw_reg[0]_2 ,
    \fcw_reg[0]_3 ,
    \fcw_reg[11] ,
    \fcw_reg[5] ,
    \ram_reg[3][2]_0 ,
    \fcw_reg[11]_0 ,
    \fcw_reg[2] ,
    \fcw_reg[11]_1 ,
    \fcw_reg[1] ,
    \fcw_reg[1]_0 ,
    O,
    \fcw_reg[2]_0 ,
    fcw1,
    \fcw_reg[9] ,
    \fcw_reg[11]_2 ,
    \fcw_reg[17] ,
    \fcw_reg[17]_0 ,
    \fcw_reg[21] ,
    \fcw_reg[23] ,
    \ram_reg[0][23]_0 ,
    CLK_125MHZ_FPGA_IBUF_BUFG,
    E);
  output [13:0]D;
  output [9:0]Q;
  input [1:0]addr;
  input \ram_reg[3][0]_0 ;
  input \fcw_reg[0] ;
  input \fcw_reg[0]_0 ;
  input \fcw_reg[0]_1 ;
  input \fcw_reg[0]_2 ;
  input \fcw_reg[0]_3 ;
  input \fcw_reg[11] ;
  input [0:0]\fcw_reg[5] ;
  input [2:0]\ram_reg[3][2]_0 ;
  input \fcw_reg[11]_0 ;
  input [1:0]\fcw_reg[2] ;
  input \fcw_reg[11]_1 ;
  input \fcw_reg[1] ;
  input \fcw_reg[1]_0 ;
  input [3:0]O;
  input \fcw_reg[2]_0 ;
  input [10:0]fcw1;
  input [1:0]\fcw_reg[9] ;
  input [0:0]\fcw_reg[11]_2 ;
  input \fcw_reg[17] ;
  input [0:0]\fcw_reg[17]_0 ;
  input [1:0]\fcw_reg[21] ;
  input [1:0]\fcw_reg[23] ;
  input [23:0]\ram_reg[0][23]_0 ;
  input CLK_125MHZ_FPGA_IBUF_BUFG;
  input [0:0]E;

  wire \<const0> ;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [13:0]D;
  wire [0:0]E;
  wire [3:0]O;
  wire [9:0]Q;
  wire [1:0]addr;
  wire [23:0]d_out;
  wire \d_out[0]_i_1_n_0 ;
  wire \d_out[10]_i_1_n_0 ;
  wire \d_out[11]_i_1_n_0 ;
  wire \d_out[12]_i_1_n_0 ;
  wire \d_out[13]_i_1_n_0 ;
  wire \d_out[14]_i_1_n_0 ;
  wire \d_out[15]_i_1_n_0 ;
  wire \d_out[16]_i_1_n_0 ;
  wire \d_out[17]_i_1_n_0 ;
  wire \d_out[18]_i_1_n_0 ;
  wire \d_out[19]_i_1_n_0 ;
  wire \d_out[1]_i_1_n_0 ;
  wire \d_out[20]_i_1_n_0 ;
  wire \d_out[21]_i_1_n_0 ;
  wire \d_out[22]_i_1_n_0 ;
  wire \d_out[23]_i_1_n_0 ;
  wire \d_out[2]_i_1_n_0 ;
  wire \d_out[3]_i_1_n_0 ;
  wire \d_out[4]_i_1_n_0 ;
  wire \d_out[5]_i_1_n_0 ;
  wire \d_out[6]_i_1_n_0 ;
  wire \d_out[7]_i_1_n_0 ;
  wire \d_out[8]_i_1_n_0 ;
  wire \d_out[9]_i_1_n_0 ;
  wire [10:0]fcw1;
  wire \fcw[0]_i_3_n_0 ;
  wire \fcw[11]_i_3_n_0 ;
  wire \fcw[2]_i_2_n_0 ;
  wire \fcw[3]_i_2_n_0 ;
  wire \fcw[4]_i_2_n_0 ;
  wire \fcw[5]_i_2_n_0 ;
  wire \fcw[7]_i_2_n_0 ;
  wire \fcw[9]_i_2_n_0 ;
  wire \fcw_reg[0] ;
  wire \fcw_reg[0]_0 ;
  wire \fcw_reg[0]_1 ;
  wire \fcw_reg[0]_2 ;
  wire \fcw_reg[0]_3 ;
  wire \fcw_reg[11] ;
  wire \fcw_reg[11]_0 ;
  wire \fcw_reg[11]_1 ;
  wire [0:0]\fcw_reg[11]_2 ;
  wire \fcw_reg[17] ;
  wire [0:0]\fcw_reg[17]_0 ;
  wire \fcw_reg[1] ;
  wire \fcw_reg[1]_0 ;
  wire [1:0]\fcw_reg[21] ;
  wire [1:0]\fcw_reg[23] ;
  wire [1:0]\fcw_reg[2] ;
  wire \fcw_reg[2]_0 ;
  wire [0:0]\fcw_reg[5] ;
  wire [1:0]\fcw_reg[9] ;
  wire ram;
  wire \ram[0][23]_i_1_n_0 ;
  wire \ram[1][23]_i_1_n_0 ;
  wire \ram[2][23]_i_1_n_0 ;
  wire [23:0]\ram_reg[0] ;
  wire [23:0]\ram_reg[0][23]_0 ;
  wire [23:0]\ram_reg[1] ;
  wire [23:0]\ram_reg[2] ;
  wire [23:0]\ram_reg[3] ;
  wire \ram_reg[3][0]_0 ;
  wire [2:0]\ram_reg[3][2]_0 ;

  GND GND
       (.G(\<const0> ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \d_out[0]_i_1 
       (.I0(\ram_reg[1] [0]),
        .I1(\ram_reg[0] [0]),
        .I2(\ram_reg[3] [0]),
        .I3(addr[1]),
        .I4(addr[0]),
        .I5(\ram_reg[2] [0]),
        .O(\d_out[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \d_out[10]_i_1 
       (.I0(\ram_reg[1] [10]),
        .I1(\ram_reg[0] [10]),
        .I2(\ram_reg[2] [10]),
        .I3(addr[1]),
        .I4(addr[0]),
        .I5(\ram_reg[3] [10]),
        .O(\d_out[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \d_out[11]_i_1 
       (.I0(\ram_reg[1] [11]),
        .I1(\ram_reg[0] [11]),
        .I2(\ram_reg[3] [11]),
        .I3(addr[1]),
        .I4(addr[0]),
        .I5(\ram_reg[2] [11]),
        .O(\d_out[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \d_out[12]_i_1 
       (.I0(\ram_reg[1] [12]),
        .I1(\ram_reg[0] [12]),
        .I2(\ram_reg[2] [12]),
        .I3(addr[1]),
        .I4(addr[0]),
        .I5(\ram_reg[3] [12]),
        .O(\d_out[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \d_out[13]_i_1 
       (.I0(\ram_reg[1] [13]),
        .I1(\ram_reg[0] [13]),
        .I2(\ram_reg[2] [13]),
        .I3(addr[1]),
        .I4(addr[0]),
        .I5(\ram_reg[3] [13]),
        .O(\d_out[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \d_out[14]_i_1 
       (.I0(\ram_reg[0] [14]),
        .I1(\ram_reg[2] [14]),
        .I2(\ram_reg[1] [14]),
        .I3(addr[0]),
        .I4(addr[1]),
        .I5(\ram_reg[3] [14]),
        .O(\d_out[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \d_out[15]_i_1 
       (.I0(\ram_reg[0] [15]),
        .I1(\ram_reg[2] [15]),
        .I2(\ram_reg[1] [15]),
        .I3(addr[0]),
        .I4(addr[1]),
        .I5(\ram_reg[3] [15]),
        .O(\d_out[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \d_out[16]_i_1 
       (.I0(\ram_reg[1] [16]),
        .I1(\ram_reg[0] [16]),
        .I2(\ram_reg[3] [16]),
        .I3(addr[1]),
        .I4(addr[0]),
        .I5(\ram_reg[2] [16]),
        .O(\d_out[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \d_out[17]_i_1 
       (.I0(\ram_reg[1] [17]),
        .I1(\ram_reg[0] [17]),
        .I2(\ram_reg[2] [17]),
        .I3(addr[1]),
        .I4(addr[0]),
        .I5(\ram_reg[3] [17]),
        .O(\d_out[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \d_out[18]_i_1 
       (.I0(\ram_reg[1] [18]),
        .I1(\ram_reg[0] [18]),
        .I2(\ram_reg[2] [18]),
        .I3(addr[1]),
        .I4(addr[0]),
        .I5(\ram_reg[3] [18]),
        .O(\d_out[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \d_out[19]_i_1 
       (.I0(\ram_reg[1] [19]),
        .I1(\ram_reg[0] [19]),
        .I2(\ram_reg[3] [19]),
        .I3(addr[1]),
        .I4(addr[0]),
        .I5(\ram_reg[2] [19]),
        .O(\d_out[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \d_out[1]_i_1 
       (.I0(\ram_reg[1] [1]),
        .I1(\ram_reg[0] [1]),
        .I2(\ram_reg[2] [1]),
        .I3(addr[1]),
        .I4(addr[0]),
        .I5(\ram_reg[3] [1]),
        .O(\d_out[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \d_out[20]_i_1 
       (.I0(\ram_reg[1] [20]),
        .I1(\ram_reg[0] [20]),
        .I2(\ram_reg[2] [20]),
        .I3(addr[1]),
        .I4(addr[0]),
        .I5(\ram_reg[3] [20]),
        .O(\d_out[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \d_out[21]_i_1 
       (.I0(\ram_reg[1] [21]),
        .I1(\ram_reg[0] [21]),
        .I2(\ram_reg[2] [21]),
        .I3(addr[1]),
        .I4(addr[0]),
        .I5(\ram_reg[3] [21]),
        .O(\d_out[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \d_out[22]_i_1 
       (.I0(\ram_reg[0] [22]),
        .I1(\ram_reg[2] [22]),
        .I2(\ram_reg[1] [22]),
        .I3(addr[0]),
        .I4(addr[1]),
        .I5(\ram_reg[3] [22]),
        .O(\d_out[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \d_out[23]_i_1 
       (.I0(\ram_reg[0] [23]),
        .I1(\ram_reg[2] [23]),
        .I2(\ram_reg[1] [23]),
        .I3(addr[0]),
        .I4(addr[1]),
        .I5(\ram_reg[3] [23]),
        .O(\d_out[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \d_out[2]_i_1 
       (.I0(\ram_reg[1] [2]),
        .I1(\ram_reg[0] [2]),
        .I2(\ram_reg[2] [2]),
        .I3(addr[1]),
        .I4(addr[0]),
        .I5(\ram_reg[3] [2]),
        .O(\d_out[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \d_out[3]_i_1 
       (.I0(\ram_reg[1] [3]),
        .I1(\ram_reg[0] [3]),
        .I2(\ram_reg[3] [3]),
        .I3(addr[1]),
        .I4(addr[0]),
        .I5(\ram_reg[2] [3]),
        .O(\d_out[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \d_out[4]_i_1 
       (.I0(\ram_reg[1] [4]),
        .I1(\ram_reg[0] [4]),
        .I2(\ram_reg[2] [4]),
        .I3(addr[1]),
        .I4(addr[0]),
        .I5(\ram_reg[3] [4]),
        .O(\d_out[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \d_out[5]_i_1 
       (.I0(\ram_reg[1] [5]),
        .I1(\ram_reg[0] [5]),
        .I2(\ram_reg[2] [5]),
        .I3(addr[1]),
        .I4(addr[0]),
        .I5(\ram_reg[3] [5]),
        .O(\d_out[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \d_out[6]_i_1 
       (.I0(\ram_reg[0] [6]),
        .I1(\ram_reg[2] [6]),
        .I2(\ram_reg[1] [6]),
        .I3(addr[0]),
        .I4(addr[1]),
        .I5(\ram_reg[3] [6]),
        .O(\d_out[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \d_out[7]_i_1 
       (.I0(\ram_reg[0] [7]),
        .I1(\ram_reg[2] [7]),
        .I2(\ram_reg[1] [7]),
        .I3(addr[0]),
        .I4(addr[1]),
        .I5(\ram_reg[3] [7]),
        .O(\d_out[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \d_out[8]_i_1 
       (.I0(\ram_reg[1] [8]),
        .I1(\ram_reg[0] [8]),
        .I2(\ram_reg[3] [8]),
        .I3(addr[1]),
        .I4(addr[0]),
        .I5(\ram_reg[2] [8]),
        .O(\d_out[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \d_out[9]_i_1 
       (.I0(\ram_reg[1] [9]),
        .I1(\ram_reg[0] [9]),
        .I2(\ram_reg[2] [9]),
        .I3(addr[1]),
        .I4(addr[0]),
        .I5(\ram_reg[3] [9]),
        .O(\d_out[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(\d_out[0]_i_1_n_0 ),
        .Q(d_out[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[10] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(\d_out[10]_i_1_n_0 ),
        .Q(Q[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[11] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(\d_out[11]_i_1_n_0 ),
        .Q(d_out[11]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[12] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(\d_out[12]_i_1_n_0 ),
        .Q(Q[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[13] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(\d_out[13]_i_1_n_0 ),
        .Q(Q[4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[14] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(\d_out[14]_i_1_n_0 ),
        .Q(Q[5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[15] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(\d_out[15]_i_1_n_0 ),
        .Q(Q[6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[16] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(\d_out[16]_i_1_n_0 ),
        .Q(Q[7]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[17] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(\d_out[17]_i_1_n_0 ),
        .Q(d_out[17]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[18] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(\d_out[18]_i_1_n_0 ),
        .Q(Q[8]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[19] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(\d_out[19]_i_1_n_0 ),
        .Q(d_out[19]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(\d_out[1]_i_1_n_0 ),
        .Q(d_out[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[20] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(\d_out[20]_i_1_n_0 ),
        .Q(Q[9]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[21] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(\d_out[21]_i_1_n_0 ),
        .Q(d_out[21]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[22] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(\d_out[22]_i_1_n_0 ),
        .Q(d_out[22]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[23] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(\d_out[23]_i_1_n_0 ),
        .Q(d_out[23]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(\d_out[2]_i_1_n_0 ),
        .Q(d_out[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(\d_out[3]_i_1_n_0 ),
        .Q(d_out[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(\d_out[4]_i_1_n_0 ),
        .Q(d_out[4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(\d_out[5]_i_1_n_0 ),
        .Q(d_out[5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(\d_out[6]_i_1_n_0 ),
        .Q(Q[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(\d_out[7]_i_1_n_0 ),
        .Q(d_out[7]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[8] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(\d_out[8]_i_1_n_0 ),
        .Q(Q[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[9] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(\d_out[9]_i_1_n_0 ),
        .Q(d_out[9]),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'hFF05FF05FFFFFF15)) 
    \fcw[0]_i_1 
       (.I0(\fcw_reg[0] ),
        .I1(\fcw_reg[0]_0 ),
        .I2(\fcw_reg[0]_1 ),
        .I3(\fcw[0]_i_3_n_0 ),
        .I4(\fcw_reg[0]_2 ),
        .I5(\fcw_reg[0]_3 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h2A2A2AAA22222222)) 
    \fcw[0]_i_3 
       (.I0(d_out[0]),
        .I1(\fcw_reg[11] ),
        .I2(\fcw_reg[5] ),
        .I3(\ram_reg[3][2]_0 [1]),
        .I4(\ram_reg[3][2]_0 [0]),
        .I5(\fcw_reg[11]_0 ),
        .O(\fcw[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF2222222)) 
    \fcw[11]_i_1 
       (.I0(\fcw_reg[0]_1 ),
        .I1(\fcw_reg[11]_1 ),
        .I2(\fcw_reg[0]_2 ),
        .I3(\fcw_reg[11] ),
        .I4(\fcw_reg[11]_0 ),
        .I5(\fcw[11]_i_3_n_0 ),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \fcw[11]_i_3 
       (.I0(\fcw_reg[1]_0 ),
        .I1(d_out[11]),
        .I2(fcw1[5]),
        .I3(\fcw_reg[2]_0 ),
        .I4(\fcw_reg[11]_2 ),
        .I5(\fcw_reg[11]_1 ),
        .O(\fcw[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \fcw[17]_i_1 
       (.I0(d_out[17]),
        .I1(\fcw_reg[1]_0 ),
        .I2(fcw1[6]),
        .I3(\fcw_reg[1] ),
        .I4(\fcw_reg[17] ),
        .I5(\fcw_reg[17]_0 ),
        .O(D[9]));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \fcw[19]_i_1 
       (.I0(d_out[19]),
        .I1(\fcw_reg[1]_0 ),
        .I2(fcw1[7]),
        .I3(\fcw_reg[1] ),
        .I4(\fcw_reg[17] ),
        .I5(\fcw_reg[21] [0]),
        .O(D[10]));
  LUT6 #(
    .INIT(64'h0ECE0ECEFFFF0ECE)) 
    \fcw[1]_i_1 
       (.I0(\fcw_reg[0]_1 ),
        .I1(\fcw_reg[2] [0]),
        .I2(\fcw_reg[11]_1 ),
        .I3(\fcw_reg[1] ),
        .I4(d_out[1]),
        .I5(\fcw_reg[1]_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \fcw[21]_i_1 
       (.I0(d_out[21]),
        .I1(\fcw_reg[1]_0 ),
        .I2(fcw1[8]),
        .I3(\fcw_reg[1] ),
        .I4(\fcw_reg[17] ),
        .I5(\fcw_reg[21] [1]),
        .O(D[11]));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \fcw[22]_i_1 
       (.I0(d_out[22]),
        .I1(\fcw_reg[1]_0 ),
        .I2(fcw1[9]),
        .I3(\fcw_reg[1] ),
        .I4(\fcw_reg[17] ),
        .I5(\fcw_reg[23] [0]),
        .O(D[12]));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \fcw[23]_i_2 
       (.I0(d_out[23]),
        .I1(\fcw_reg[1]_0 ),
        .I2(fcw1[10]),
        .I3(\fcw_reg[1] ),
        .I4(\fcw_reg[17] ),
        .I5(\fcw_reg[23] [1]),
        .O(D[13]));
  LUT6 #(
    .INIT(64'hFFFFFFFFF2222222)) 
    \fcw[2]_i_1 
       (.I0(\fcw_reg[0]_1 ),
        .I1(\fcw_reg[11]_1 ),
        .I2(\fcw_reg[0]_2 ),
        .I3(\fcw_reg[11] ),
        .I4(\fcw_reg[11]_0 ),
        .I5(\fcw[2]_i_2_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFFFF44F444F444F4)) 
    \fcw[2]_i_2 
       (.I0(\fcw_reg[1]_0 ),
        .I1(d_out[2]),
        .I2(O[0]),
        .I3(\fcw_reg[11]_1 ),
        .I4(\fcw_reg[2] [1]),
        .I5(\fcw_reg[2]_0 ),
        .O(\fcw[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF2222222)) 
    \fcw[3]_i_1 
       (.I0(\fcw_reg[0]_1 ),
        .I1(\fcw_reg[11]_1 ),
        .I2(\fcw_reg[0]_2 ),
        .I3(\fcw_reg[11] ),
        .I4(\fcw_reg[11]_0 ),
        .I5(\fcw[3]_i_2_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hFFFF44F444F444F4)) 
    \fcw[3]_i_2 
       (.I0(\fcw_reg[1]_0 ),
        .I1(d_out[3]),
        .I2(O[1]),
        .I3(\fcw_reg[11]_1 ),
        .I4(fcw1[0]),
        .I5(\fcw_reg[2]_0 ),
        .O(\fcw[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFCECFCEFFFFCFCE)) 
    \fcw[4]_i_1 
       (.I0(\fcw_reg[0]_1 ),
        .I1(\fcw[4]_i_2_n_0 ),
        .I2(\fcw_reg[11]_1 ),
        .I3(O[2]),
        .I4(fcw1[1]),
        .I5(\fcw_reg[1] ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h2A2A2AAA22222222)) 
    \fcw[4]_i_2 
       (.I0(d_out[4]),
        .I1(\fcw_reg[11] ),
        .I2(\fcw_reg[5] ),
        .I3(\ram_reg[3][2]_0 [1]),
        .I4(\ram_reg[3][2]_0 [0]),
        .I5(\fcw_reg[11]_0 ),
        .O(\fcw[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFCECFCEFFFFCFCE)) 
    \fcw[5]_i_1 
       (.I0(\fcw_reg[0]_1 ),
        .I1(\fcw[5]_i_2_n_0 ),
        .I2(\fcw_reg[11]_1 ),
        .I3(O[3]),
        .I4(fcw1[2]),
        .I5(\fcw_reg[1] ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h2A2A2AAA22222222)) 
    \fcw[5]_i_2 
       (.I0(d_out[5]),
        .I1(\fcw_reg[11] ),
        .I2(\fcw_reg[5] ),
        .I3(\ram_reg[3][2]_0 [1]),
        .I4(\ram_reg[3][2]_0 [0]),
        .I5(\fcw_reg[11]_0 ),
        .O(\fcw[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF2222222)) 
    \fcw[7]_i_1 
       (.I0(\fcw_reg[0]_1 ),
        .I1(\fcw_reg[11]_1 ),
        .I2(\fcw_reg[0]_2 ),
        .I3(\fcw_reg[11] ),
        .I4(\fcw_reg[11]_0 ),
        .I5(\fcw[7]_i_2_n_0 ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \fcw[7]_i_2 
       (.I0(\fcw_reg[1]_0 ),
        .I1(d_out[7]),
        .I2(fcw1[3]),
        .I3(\fcw_reg[2]_0 ),
        .I4(\fcw_reg[9] [0]),
        .I5(\fcw_reg[11]_1 ),
        .O(\fcw[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF2222222)) 
    \fcw[9]_i_1 
       (.I0(\fcw_reg[0]_1 ),
        .I1(\fcw_reg[11]_1 ),
        .I2(\fcw_reg[0]_2 ),
        .I3(\fcw_reg[11] ),
        .I4(\fcw_reg[11]_0 ),
        .I5(\fcw[9]_i_2_n_0 ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hFFFF44F444F444F4)) 
    \fcw[9]_i_2 
       (.I0(\fcw_reg[1]_0 ),
        .I1(d_out[9]),
        .I2(\fcw_reg[9] [1]),
        .I3(\fcw_reg[11]_1 ),
        .I4(fcw1[4]),
        .I5(\fcw_reg[2]_0 ),
        .O(\fcw[9]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \ram[0][23]_i_1 
       (.I0(\ram_reg[3][0]_0 ),
        .I1(addr[1]),
        .I2(addr[0]),
        .O(\ram[0][23]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \ram[1][23]_i_1 
       (.I0(\ram_reg[3][0]_0 ),
        .I1(addr[0]),
        .I2(addr[1]),
        .O(\ram[1][23]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \ram[2][23]_i_1 
       (.I0(\ram_reg[3][0]_0 ),
        .I1(addr[1]),
        .I2(addr[0]),
        .O(\ram[2][23]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \ram[3][23]_i_1 
       (.I0(\ram_reg[3][0]_0 ),
        .I1(addr[1]),
        .I2(addr[0]),
        .O(ram));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[0][0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\ram[0][23]_i_1_n_0 ),
        .D(\ram_reg[0][23]_0 [0]),
        .Q(\ram_reg[0] [0]),
        .R(\ram_reg[3][2]_0 [2]));
  FDSE #(
    .INIT(1'b1)) 
    \ram_reg[0][10] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\ram[0][23]_i_1_n_0 ),
        .D(\ram_reg[0][23]_0 [10]),
        .Q(\ram_reg[0] [10]),
        .S(\ram_reg[3][2]_0 [2]));
  FDSE #(
    .INIT(1'b1)) 
    \ram_reg[0][11] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\ram[0][23]_i_1_n_0 ),
        .D(\ram_reg[0][23]_0 [11]),
        .Q(\ram_reg[0] [11]),
        .S(\ram_reg[3][2]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[0][12] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\ram[0][23]_i_1_n_0 ),
        .D(\ram_reg[0][23]_0 [12]),
        .Q(\ram_reg[0] [12]),
        .R(\ram_reg[3][2]_0 [2]));
  FDSE #(
    .INIT(1'b1)) 
    \ram_reg[0][13] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\ram[0][23]_i_1_n_0 ),
        .D(\ram_reg[0][23]_0 [13]),
        .Q(\ram_reg[0] [13]),
        .S(\ram_reg[3][2]_0 [2]));
  FDSE #(
    .INIT(1'b1)) 
    \ram_reg[0][14] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\ram[0][23]_i_1_n_0 ),
        .D(\ram_reg[0][23]_0 [14]),
        .Q(\ram_reg[0] [14]),
        .S(\ram_reg[3][2]_0 [2]));
  FDSE #(
    .INIT(1'b1)) 
    \ram_reg[0][15] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\ram[0][23]_i_1_n_0 ),
        .D(\ram_reg[0][23]_0 [15]),
        .Q(\ram_reg[0] [15]),
        .S(\ram_reg[3][2]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[0][16] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\ram[0][23]_i_1_n_0 ),
        .D(\ram_reg[0][23]_0 [16]),
        .Q(\ram_reg[0] [16]),
        .R(\ram_reg[3][2]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[0][17] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\ram[0][23]_i_1_n_0 ),
        .D(\ram_reg[0][23]_0 [17]),
        .Q(\ram_reg[0] [17]),
        .R(\ram_reg[3][2]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[0][18] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\ram[0][23]_i_1_n_0 ),
        .D(\ram_reg[0][23]_0 [18]),
        .Q(\ram_reg[0] [18]),
        .R(\ram_reg[3][2]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[0][19] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\ram[0][23]_i_1_n_0 ),
        .D(\ram_reg[0][23]_0 [19]),
        .Q(\ram_reg[0] [19]),
        .R(\ram_reg[3][2]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[0][1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\ram[0][23]_i_1_n_0 ),
        .D(\ram_reg[0][23]_0 [1]),
        .Q(\ram_reg[0] [1]),
        .R(\ram_reg[3][2]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[0][20] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\ram[0][23]_i_1_n_0 ),
        .D(\ram_reg[0][23]_0 [20]),
        .Q(\ram_reg[0] [20]),
        .R(\ram_reg[3][2]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[0][21] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\ram[0][23]_i_1_n_0 ),
        .D(\ram_reg[0][23]_0 [21]),
        .Q(\ram_reg[0] [21]),
        .R(\ram_reg[3][2]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[0][22] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\ram[0][23]_i_1_n_0 ),
        .D(\ram_reg[0][23]_0 [22]),
        .Q(\ram_reg[0] [22]),
        .R(\ram_reg[3][2]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[0][23] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\ram[0][23]_i_1_n_0 ),
        .D(\ram_reg[0][23]_0 [23]),
        .Q(\ram_reg[0] [23]),
        .R(\ram_reg[3][2]_0 [2]));
  FDSE #(
    .INIT(1'b1)) 
    \ram_reg[0][2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\ram[0][23]_i_1_n_0 ),
        .D(\ram_reg[0][23]_0 [2]),
        .Q(\ram_reg[0] [2]),
        .S(\ram_reg[3][2]_0 [2]));
  FDSE #(
    .INIT(1'b1)) 
    \ram_reg[0][3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\ram[0][23]_i_1_n_0 ),
        .D(\ram_reg[0][23]_0 [3]),
        .Q(\ram_reg[0] [3]),
        .S(\ram_reg[3][2]_0 [2]));
  FDSE #(
    .INIT(1'b1)) 
    \ram_reg[0][4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\ram[0][23]_i_1_n_0 ),
        .D(\ram_reg[0][23]_0 [4]),
        .Q(\ram_reg[0] [4]),
        .S(\ram_reg[3][2]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[0][5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\ram[0][23]_i_1_n_0 ),
        .D(\ram_reg[0][23]_0 [5]),
        .Q(\ram_reg[0] [5]),
        .R(\ram_reg[3][2]_0 [2]));
  FDSE #(
    .INIT(1'b1)) 
    \ram_reg[0][6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\ram[0][23]_i_1_n_0 ),
        .D(\ram_reg[0][23]_0 [6]),
        .Q(\ram_reg[0] [6]),
        .S(\ram_reg[3][2]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[0][7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\ram[0][23]_i_1_n_0 ),
        .D(\ram_reg[0][23]_0 [7]),
        .Q(\ram_reg[0] [7]),
        .R(\ram_reg[3][2]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[0][8] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\ram[0][23]_i_1_n_0 ),
        .D(\ram_reg[0][23]_0 [8]),
        .Q(\ram_reg[0] [8]),
        .R(\ram_reg[3][2]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[0][9] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\ram[0][23]_i_1_n_0 ),
        .D(\ram_reg[0][23]_0 [9]),
        .Q(\ram_reg[0] [9]),
        .R(\ram_reg[3][2]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[1][0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\ram[1][23]_i_1_n_0 ),
        .D(\ram_reg[0][23]_0 [0]),
        .Q(\ram_reg[1] [0]),
        .R(\ram_reg[3][2]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[1][10] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\ram[1][23]_i_1_n_0 ),
        .D(\ram_reg[0][23]_0 [10]),
        .Q(\ram_reg[1] [10]),
        .R(\ram_reg[3][2]_0 [2]));
  FDSE #(
    .INIT(1'b1)) 
    \ram_reg[1][11] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\ram[1][23]_i_1_n_0 ),
        .D(\ram_reg[0][23]_0 [11]),
        .Q(\ram_reg[1] [11]),
        .S(\ram_reg[3][2]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[1][12] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\ram[1][23]_i_1_n_0 ),
        .D(\ram_reg[0][23]_0 [12]),
        .Q(\ram_reg[1] [12]),
        .R(\ram_reg[3][2]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[1][13] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\ram[1][23]_i_1_n_0 ),
        .D(\ram_reg[0][23]_0 [13]),
        .Q(\ram_reg[1] [13]),
        .R(\ram_reg[3][2]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[1][14] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\ram[1][23]_i_1_n_0 ),
        .D(\ram_reg[0][23]_0 [14]),
        .Q(\ram_reg[1] [14]),
        .R(\ram_reg[3][2]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[1][15] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\ram[1][23]_i_1_n_0 ),
        .D(\ram_reg[0][23]_0 [15]),
        .Q(\ram_reg[1] [15]),
        .R(\ram_reg[3][2]_0 [2]));
  FDSE #(
    .INIT(1'b1)) 
    \ram_reg[1][16] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\ram[1][23]_i_1_n_0 ),
        .D(\ram_reg[0][23]_0 [16]),
        .Q(\ram_reg[1] [16]),
        .S(\ram_reg[3][2]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[1][17] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\ram[1][23]_i_1_n_0 ),
        .D(\ram_reg[0][23]_0 [17]),
        .Q(\ram_reg[1] [17]),
        .R(\ram_reg[3][2]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[1][18] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\ram[1][23]_i_1_n_0 ),
        .D(\ram_reg[0][23]_0 [18]),
        .Q(\ram_reg[1] [18]),
        .R(\ram_reg[3][2]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[1][19] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\ram[1][23]_i_1_n_0 ),
        .D(\ram_reg[0][23]_0 [19]),
        .Q(\ram_reg[1] [19]),
        .R(\ram_reg[3][2]_0 [2]));
  FDSE #(
    .INIT(1'b1)) 
    \ram_reg[1][1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\ram[1][23]_i_1_n_0 ),
        .D(\ram_reg[0][23]_0 [1]),
        .Q(\ram_reg[1] [1]),
        .S(\ram_reg[3][2]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[1][20] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\ram[1][23]_i_1_n_0 ),
        .D(\ram_reg[0][23]_0 [20]),
        .Q(\ram_reg[1] [20]),
        .R(\ram_reg[3][2]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[1][21] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\ram[1][23]_i_1_n_0 ),
        .D(\ram_reg[0][23]_0 [21]),
        .Q(\ram_reg[1] [21]),
        .R(\ram_reg[3][2]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[1][22] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\ram[1][23]_i_1_n_0 ),
        .D(\ram_reg[0][23]_0 [22]),
        .Q(\ram_reg[1] [22]),
        .R(\ram_reg[3][2]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[1][23] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\ram[1][23]_i_1_n_0 ),
        .D(\ram_reg[0][23]_0 [23]),
        .Q(\ram_reg[1] [23]),
        .R(\ram_reg[3][2]_0 [2]));
  FDSE #(
    .INIT(1'b1)) 
    \ram_reg[1][2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\ram[1][23]_i_1_n_0 ),
        .D(\ram_reg[0][23]_0 [2]),
        .Q(\ram_reg[1] [2]),
        .S(\ram_reg[3][2]_0 [2]));
  FDSE #(
    .INIT(1'b1)) 
    \ram_reg[1][3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\ram[1][23]_i_1_n_0 ),
        .D(\ram_reg[0][23]_0 [3]),
        .Q(\ram_reg[1] [3]),
        .S(\ram_reg[3][2]_0 [2]));
  FDSE #(
    .INIT(1'b1)) 
    \ram_reg[1][4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\ram[1][23]_i_1_n_0 ),
        .D(\ram_reg[0][23]_0 [4]),
        .Q(\ram_reg[1] [4]),
        .S(\ram_reg[3][2]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[1][5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\ram[1][23]_i_1_n_0 ),
        .D(\ram_reg[0][23]_0 [5]),
        .Q(\ram_reg[1] [5]),
        .R(\ram_reg[3][2]_0 [2]));
  FDSE #(
    .INIT(1'b1)) 
    \ram_reg[1][6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\ram[1][23]_i_1_n_0 ),
        .D(\ram_reg[0][23]_0 [6]),
        .Q(\ram_reg[1] [6]),
        .S(\ram_reg[3][2]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[1][7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\ram[1][23]_i_1_n_0 ),
        .D(\ram_reg[0][23]_0 [7]),
        .Q(\ram_reg[1] [7]),
        .R(\ram_reg[3][2]_0 [2]));
  FDSE #(
    .INIT(1'b1)) 
    \ram_reg[1][8] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\ram[1][23]_i_1_n_0 ),
        .D(\ram_reg[0][23]_0 [8]),
        .Q(\ram_reg[1] [8]),
        .S(\ram_reg[3][2]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[1][9] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\ram[1][23]_i_1_n_0 ),
        .D(\ram_reg[0][23]_0 [9]),
        .Q(\ram_reg[1] [9]),
        .R(\ram_reg[3][2]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[2][0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\ram[2][23]_i_1_n_0 ),
        .D(\ram_reg[0][23]_0 [0]),
        .Q(\ram_reg[2] [0]),
        .R(\ram_reg[3][2]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[2][10] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\ram[2][23]_i_1_n_0 ),
        .D(\ram_reg[0][23]_0 [10]),
        .Q(\ram_reg[2] [10]),
        .R(\ram_reg[3][2]_0 [2]));
  FDSE #(
    .INIT(1'b1)) 
    \ram_reg[2][11] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\ram[2][23]_i_1_n_0 ),
        .D(\ram_reg[0][23]_0 [11]),
        .Q(\ram_reg[2] [11]),
        .S(\ram_reg[3][2]_0 [2]));
  FDSE #(
    .INIT(1'b1)) 
    \ram_reg[2][12] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\ram[2][23]_i_1_n_0 ),
        .D(\ram_reg[0][23]_0 [12]),
        .Q(\ram_reg[2] [12]),
        .S(\ram_reg[3][2]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[2][13] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\ram[2][23]_i_1_n_0 ),
        .D(\ram_reg[0][23]_0 [13]),
        .Q(\ram_reg[2] [13]),
        .R(\ram_reg[3][2]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[2][14] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\ram[2][23]_i_1_n_0 ),
        .D(\ram_reg[0][23]_0 [14]),
        .Q(\ram_reg[2] [14]),
        .R(\ram_reg[3][2]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[2][15] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\ram[2][23]_i_1_n_0 ),
        .D(\ram_reg[0][23]_0 [15]),
        .Q(\ram_reg[2] [15]),
        .R(\ram_reg[3][2]_0 [2]));
  FDSE #(
    .INIT(1'b1)) 
    \ram_reg[2][16] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\ram[2][23]_i_1_n_0 ),
        .D(\ram_reg[0][23]_0 [16]),
        .Q(\ram_reg[2] [16]),
        .S(\ram_reg[3][2]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[2][17] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\ram[2][23]_i_1_n_0 ),
        .D(\ram_reg[0][23]_0 [17]),
        .Q(\ram_reg[2] [17]),
        .R(\ram_reg[3][2]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[2][18] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\ram[2][23]_i_1_n_0 ),
        .D(\ram_reg[0][23]_0 [18]),
        .Q(\ram_reg[2] [18]),
        .R(\ram_reg[3][2]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[2][19] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\ram[2][23]_i_1_n_0 ),
        .D(\ram_reg[0][23]_0 [19]),
        .Q(\ram_reg[2] [19]),
        .R(\ram_reg[3][2]_0 [2]));
  FDSE #(
    .INIT(1'b1)) 
    \ram_reg[2][1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\ram[2][23]_i_1_n_0 ),
        .D(\ram_reg[0][23]_0 [1]),
        .Q(\ram_reg[2] [1]),
        .S(\ram_reg[3][2]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[2][20] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\ram[2][23]_i_1_n_0 ),
        .D(\ram_reg[0][23]_0 [20]),
        .Q(\ram_reg[2] [20]),
        .R(\ram_reg[3][2]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[2][21] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\ram[2][23]_i_1_n_0 ),
        .D(\ram_reg[0][23]_0 [21]),
        .Q(\ram_reg[2] [21]),
        .R(\ram_reg[3][2]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[2][22] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\ram[2][23]_i_1_n_0 ),
        .D(\ram_reg[0][23]_0 [22]),
        .Q(\ram_reg[2] [22]),
        .R(\ram_reg[3][2]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[2][23] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\ram[2][23]_i_1_n_0 ),
        .D(\ram_reg[0][23]_0 [23]),
        .Q(\ram_reg[2] [23]),
        .R(\ram_reg[3][2]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[2][2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\ram[2][23]_i_1_n_0 ),
        .D(\ram_reg[0][23]_0 [2]),
        .Q(\ram_reg[2] [2]),
        .R(\ram_reg[3][2]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[2][3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\ram[2][23]_i_1_n_0 ),
        .D(\ram_reg[0][23]_0 [3]),
        .Q(\ram_reg[2] [3]),
        .R(\ram_reg[3][2]_0 [2]));
  FDSE #(
    .INIT(1'b1)) 
    \ram_reg[2][4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\ram[2][23]_i_1_n_0 ),
        .D(\ram_reg[0][23]_0 [4]),
        .Q(\ram_reg[2] [4]),
        .S(\ram_reg[3][2]_0 [2]));
  FDSE #(
    .INIT(1'b1)) 
    \ram_reg[2][5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\ram[2][23]_i_1_n_0 ),
        .D(\ram_reg[0][23]_0 [5]),
        .Q(\ram_reg[2] [5]),
        .S(\ram_reg[3][2]_0 [2]));
  FDSE #(
    .INIT(1'b1)) 
    \ram_reg[2][6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\ram[2][23]_i_1_n_0 ),
        .D(\ram_reg[0][23]_0 [6]),
        .Q(\ram_reg[2] [6]),
        .S(\ram_reg[3][2]_0 [2]));
  FDSE #(
    .INIT(1'b1)) 
    \ram_reg[2][7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\ram[2][23]_i_1_n_0 ),
        .D(\ram_reg[0][23]_0 [7]),
        .Q(\ram_reg[2] [7]),
        .S(\ram_reg[3][2]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[2][8] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\ram[2][23]_i_1_n_0 ),
        .D(\ram_reg[0][23]_0 [8]),
        .Q(\ram_reg[2] [8]),
        .R(\ram_reg[3][2]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[2][9] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\ram[2][23]_i_1_n_0 ),
        .D(\ram_reg[0][23]_0 [9]),
        .Q(\ram_reg[2] [9]),
        .R(\ram_reg[3][2]_0 [2]));
  FDSE #(
    .INIT(1'b1)) 
    \ram_reg[3][0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(ram),
        .D(\ram_reg[0][23]_0 [0]),
        .Q(\ram_reg[3] [0]),
        .S(\ram_reg[3][2]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[3][10] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(ram),
        .D(\ram_reg[0][23]_0 [10]),
        .Q(\ram_reg[3] [10]),
        .R(\ram_reg[3][2]_0 [2]));
  FDSE #(
    .INIT(1'b1)) 
    \ram_reg[3][11] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(ram),
        .D(\ram_reg[0][23]_0 [11]),
        .Q(\ram_reg[3] [11]),
        .S(\ram_reg[3][2]_0 [2]));
  FDSE #(
    .INIT(1'b1)) 
    \ram_reg[3][12] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(ram),
        .D(\ram_reg[0][23]_0 [12]),
        .Q(\ram_reg[3] [12]),
        .S(\ram_reg[3][2]_0 [2]));
  FDSE #(
    .INIT(1'b1)) 
    \ram_reg[3][13] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(ram),
        .D(\ram_reg[0][23]_0 [13]),
        .Q(\ram_reg[3] [13]),
        .S(\ram_reg[3][2]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[3][14] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(ram),
        .D(\ram_reg[0][23]_0 [14]),
        .Q(\ram_reg[3] [14]),
        .R(\ram_reg[3][2]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[3][15] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(ram),
        .D(\ram_reg[0][23]_0 [15]),
        .Q(\ram_reg[3] [15]),
        .R(\ram_reg[3][2]_0 [2]));
  FDSE #(
    .INIT(1'b1)) 
    \ram_reg[3][16] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(ram),
        .D(\ram_reg[0][23]_0 [16]),
        .Q(\ram_reg[3] [16]),
        .S(\ram_reg[3][2]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[3][17] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(ram),
        .D(\ram_reg[0][23]_0 [17]),
        .Q(\ram_reg[3] [17]),
        .R(\ram_reg[3][2]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[3][18] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(ram),
        .D(\ram_reg[0][23]_0 [18]),
        .Q(\ram_reg[3] [18]),
        .R(\ram_reg[3][2]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[3][19] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(ram),
        .D(\ram_reg[0][23]_0 [19]),
        .Q(\ram_reg[3] [19]),
        .R(\ram_reg[3][2]_0 [2]));
  FDSE #(
    .INIT(1'b1)) 
    \ram_reg[3][1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(ram),
        .D(\ram_reg[0][23]_0 [1]),
        .Q(\ram_reg[3] [1]),
        .S(\ram_reg[3][2]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[3][20] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(ram),
        .D(\ram_reg[0][23]_0 [20]),
        .Q(\ram_reg[3] [20]),
        .R(\ram_reg[3][2]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[3][21] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(ram),
        .D(\ram_reg[0][23]_0 [21]),
        .Q(\ram_reg[3] [21]),
        .R(\ram_reg[3][2]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[3][22] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(ram),
        .D(\ram_reg[0][23]_0 [22]),
        .Q(\ram_reg[3] [22]),
        .R(\ram_reg[3][2]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[3][23] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(ram),
        .D(\ram_reg[0][23]_0 [23]),
        .Q(\ram_reg[3] [23]),
        .R(\ram_reg[3][2]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[3][2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(ram),
        .D(\ram_reg[0][23]_0 [2]),
        .Q(\ram_reg[3] [2]),
        .R(\ram_reg[3][2]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[3][3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(ram),
        .D(\ram_reg[0][23]_0 [3]),
        .Q(\ram_reg[3] [3]),
        .R(\ram_reg[3][2]_0 [2]));
  FDSE #(
    .INIT(1'b1)) 
    \ram_reg[3][4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(ram),
        .D(\ram_reg[0][23]_0 [4]),
        .Q(\ram_reg[3] [4]),
        .S(\ram_reg[3][2]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[3][5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(ram),
        .D(\ram_reg[0][23]_0 [5]),
        .Q(\ram_reg[3] [5]),
        .R(\ram_reg[3][2]_0 [2]));
  FDSE #(
    .INIT(1'b1)) 
    \ram_reg[3][6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(ram),
        .D(\ram_reg[0][23]_0 [6]),
        .Q(\ram_reg[3] [6]),
        .S(\ram_reg[3][2]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[3][7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(ram),
        .D(\ram_reg[0][23]_0 [7]),
        .Q(\ram_reg[3] [7]),
        .R(\ram_reg[3][2]_0 [2]));
  FDSE #(
    .INIT(1'b1)) 
    \ram_reg[3][8] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(ram),
        .D(\ram_reg[0][23]_0 [8]),
        .Q(\ram_reg[3] [8]),
        .S(\ram_reg[3][2]_0 [2]));
  FDSE #(
    .INIT(1'b1)) 
    \ram_reg[3][9] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(ram),
        .D(\ram_reg[0][23]_0 [9]),
        .Q(\ram_reg[3] [9]),
        .S(\ram_reg[3][2]_0 [2]));
endmodule

module fsm
   (Q,
    wr_en,
    O,
    \fcw_reg[7]_0 ,
    \fcw_reg[11]_0 ,
    \fcw_reg[15]_0 ,
    \fcw_reg[19]_0 ,
    \fcw_reg[22]_0 ,
    LEDS_OBUF,
    S,
    SR,
    CLK_125MHZ_FPGA_IBUF_BUFG,
    wr_en_reg_0,
    \next_state_reg[1]_0 ,
    sq_wave_leds,
    pa_reg,
    \fcw_reg[0]_0 ,
    \ram_reg[3][2] ,
    \fcw_reg[11]_1 ,
    rd_en_reg_0,
    \next_state_reg[1]_1 ,
    \next_state_reg[1]_2 ,
    \next_state_reg[0]_0 ,
    \next_state_reg[0]_1 ,
    \d_in_reg[0]_0 );
  output [22:0]Q;
  output wr_en;
  output [3:0]O;
  output [3:0]\fcw_reg[7]_0 ;
  output [3:0]\fcw_reg[11]_0 ;
  output [3:0]\fcw_reg[15]_0 ;
  output [3:0]\fcw_reg[19]_0 ;
  output [3:0]\fcw_reg[22]_0 ;
  output [5:0]LEDS_OBUF;
  output [0:0]S;
  output [0:0]SR;
  input CLK_125MHZ_FPGA_IBUF_BUFG;
  input wr_en_reg_0;
  input [0:0]\next_state_reg[1]_0 ;
  input [0:0]sq_wave_leds;
  input [23:0]pa_reg;
  input \fcw_reg[0]_0 ;
  input [3:0]\ram_reg[3][2] ;
  input \fcw_reg[11]_1 ;
  input rd_en_reg_0;
  input \next_state_reg[1]_1 ;
  input \next_state_reg[1]_2 ;
  input \next_state_reg[0]_0 ;
  input \next_state_reg[0]_1 ;
  input \d_in_reg[0]_0 ;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [5:0]LEDS_OBUF;
  wire [3:0]O;
  wire [22:0]Q;
  wire [0:0]S;
  wire [0:0]SR;
  wire [1:0]addr;
  wire \addr[0]_i_1_n_0 ;
  wire \addr[1]_i_1_n_0 ;
  wire \addr[1]_i_2_n_0 ;
  wire \addr[1]_i_3_n_0 ;
  wire \addr[1]_i_4_n_0 ;
  wire \addr[1]_i_5_n_0 ;
  wire \addr[1]_i_6_n_0 ;
  wire \addr[1]_i_7_n_0 ;
  wire \addr[1]_i_8_n_0 ;
  wire \clk_counter[0]_i_2_n_0 ;
  wire [26:0]clk_counter_reg;
  wire \clk_counter_reg[0]_i_1_n_0 ;
  wire \clk_counter_reg[0]_i_1_n_4 ;
  wire \clk_counter_reg[0]_i_1_n_5 ;
  wire \clk_counter_reg[0]_i_1_n_6 ;
  wire \clk_counter_reg[0]_i_1_n_7 ;
  wire \clk_counter_reg[12]_i_1_n_0 ;
  wire \clk_counter_reg[12]_i_1_n_4 ;
  wire \clk_counter_reg[12]_i_1_n_5 ;
  wire \clk_counter_reg[12]_i_1_n_6 ;
  wire \clk_counter_reg[12]_i_1_n_7 ;
  wire \clk_counter_reg[16]_i_1_n_0 ;
  wire \clk_counter_reg[16]_i_1_n_4 ;
  wire \clk_counter_reg[16]_i_1_n_5 ;
  wire \clk_counter_reg[16]_i_1_n_6 ;
  wire \clk_counter_reg[16]_i_1_n_7 ;
  wire \clk_counter_reg[20]_i_1_n_0 ;
  wire \clk_counter_reg[20]_i_1_n_4 ;
  wire \clk_counter_reg[20]_i_1_n_5 ;
  wire \clk_counter_reg[20]_i_1_n_6 ;
  wire \clk_counter_reg[20]_i_1_n_7 ;
  wire \clk_counter_reg[24]_i_1_n_5 ;
  wire \clk_counter_reg[24]_i_1_n_6 ;
  wire \clk_counter_reg[24]_i_1_n_7 ;
  wire \clk_counter_reg[4]_i_1_n_0 ;
  wire \clk_counter_reg[4]_i_1_n_4 ;
  wire \clk_counter_reg[4]_i_1_n_5 ;
  wire \clk_counter_reg[4]_i_1_n_6 ;
  wire \clk_counter_reg[4]_i_1_n_7 ;
  wire \clk_counter_reg[8]_i_1_n_0 ;
  wire \clk_counter_reg[8]_i_1_n_4 ;
  wire \clk_counter_reg[8]_i_1_n_5 ;
  wire \clk_counter_reg[8]_i_1_n_6 ;
  wire \clk_counter_reg[8]_i_1_n_7 ;
  wire [23:0]d_in;
  wire \d_in[0]_i_1_n_0 ;
  wire \d_in[10]_i_1_n_0 ;
  wire \d_in[11]_i_1_n_0 ;
  wire \d_in[11]_i_2_n_0 ;
  wire \d_in[11]_i_3_n_0 ;
  wire \d_in[12]_i_1_n_0 ;
  wire \d_in[13]_i_1_n_0 ;
  wire \d_in[14]_i_1_n_0 ;
  wire \d_in[15]_i_1_n_0 ;
  wire \d_in[16]_i_1_n_0 ;
  wire \d_in[17]_i_1_n_0 ;
  wire \d_in[18]_i_1_n_0 ;
  wire \d_in[19]_i_1_n_0 ;
  wire \d_in[1]_i_1_n_0 ;
  wire \d_in[20]_i_1_n_0 ;
  wire \d_in[20]_i_2_n_0 ;
  wire \d_in[21]_i_1_n_0 ;
  wire \d_in[22]_i_1_n_0 ;
  wire \d_in[23]_i_10_n_0 ;
  wire \d_in[23]_i_11_n_0 ;
  wire \d_in[23]_i_12_n_0 ;
  wire \d_in[23]_i_13_n_0 ;
  wire \d_in[23]_i_14_n_0 ;
  wire \d_in[23]_i_2_n_0 ;
  wire \d_in[23]_i_3_n_0 ;
  wire \d_in[23]_i_4_n_0 ;
  wire \d_in[23]_i_5_n_0 ;
  wire \d_in[23]_i_6_n_0 ;
  wire \d_in[23]_i_7_n_0 ;
  wire \d_in[23]_i_8_n_0 ;
  wire \d_in[23]_i_9_n_0 ;
  wire \d_in[2]_i_1_n_0 ;
  wire \d_in[3]_i_1_n_0 ;
  wire \d_in[4]_i_1_n_0 ;
  wire \d_in[5]_i_1_n_0 ;
  wire \d_in[6]_i_1_n_0 ;
  wire \d_in[7]_i_1_n_0 ;
  wire \d_in[8]_i_1_n_0 ;
  wire \d_in[9]_i_1_n_0 ;
  wire \d_in_reg[0]_0 ;
  wire [20:6]d_out;
  wire [23:23]fcw;
  wire [23:3]fcw1;
  wire fcw1_carry__0_n_0;
  wire fcw1_carry__0_n_4;
  wire fcw1_carry__0_n_5;
  wire fcw1_carry__0_n_6;
  wire fcw1_carry__0_n_7;
  wire fcw1_carry__1_i_1_n_0;
  wire fcw1_carry__1_i_2_n_0;
  wire fcw1_carry__1_i_3_n_0;
  wire fcw1_carry__1_i_4_n_0;
  wire fcw1_carry__1_n_0;
  wire fcw1_carry__1_n_4;
  wire fcw1_carry__1_n_5;
  wire fcw1_carry__1_n_6;
  wire fcw1_carry__1_n_7;
  wire fcw1_carry__2_i_1_n_0;
  wire fcw1_carry__2_i_2_n_0;
  wire fcw1_carry__2_i_3_n_0;
  wire fcw1_carry__2_i_4_n_0;
  wire fcw1_carry__2_n_0;
  wire fcw1_carry__2_n_4;
  wire fcw1_carry__2_n_5;
  wire fcw1_carry__2_n_6;
  wire fcw1_carry__2_n_7;
  wire fcw1_carry__3_i_1_n_0;
  wire fcw1_carry__3_i_2_n_0;
  wire fcw1_carry__3_i_3_n_0;
  wire fcw1_carry__3_i_4_n_0;
  wire fcw1_carry__3_n_0;
  wire fcw1_carry__3_n_4;
  wire fcw1_carry__3_n_5;
  wire fcw1_carry__3_n_6;
  wire fcw1_carry__3_n_7;
  wire fcw1_carry__4_i_1_n_0;
  wire fcw1_carry__4_i_2_n_0;
  wire fcw1_carry__4_n_6;
  wire fcw1_carry__4_n_7;
  wire fcw1_carry_i_1_n_0;
  wire fcw1_carry_i_2_n_0;
  wire fcw1_carry_n_0;
  wire fcw1_carry_n_4;
  wire fcw1_carry_n_5;
  wire fcw1_carry_n_6;
  wire fcw1_carry_n_7;
  wire \fcw1_inferred__0/i__carry__0_n_0 ;
  wire \fcw1_inferred__0/i__carry__1_n_0 ;
  wire \fcw1_inferred__0/i__carry__2_n_0 ;
  wire \fcw1_inferred__0/i__carry__3_n_0 ;
  wire \fcw1_inferred__0/i__carry_n_0 ;
  wire \fcw[0]_i_2_n_0 ;
  wire \fcw[10]_i_1_n_0 ;
  wire \fcw[11]_i_4_n_0 ;
  wire \fcw[12]_i_1_n_0 ;
  wire \fcw[12]_i_2_n_0 ;
  wire \fcw[13]_i_1_n_0 ;
  wire \fcw[13]_i_2_n_0 ;
  wire \fcw[14]_i_1_n_0 ;
  wire \fcw[14]_i_2_n_0 ;
  wire \fcw[15]_i_1_n_0 ;
  wire \fcw[15]_i_2_n_0 ;
  wire \fcw[16]_i_1_n_0 ;
  wire \fcw[18]_i_1_n_0 ;
  wire \fcw[18]_i_2_n_0 ;
  wire \fcw[20]_i_1_n_0 ;
  wire \fcw[20]_i_2_n_0 ;
  wire \fcw[23]_i_3_n_0 ;
  wire \fcw[23]_i_4_n_0 ;
  wire \fcw[23]_i_5_n_0 ;
  wire \fcw[23]_i_6_n_0 ;
  wire \fcw[6]_i_1_n_0 ;
  wire \fcw[6]_i_2_n_0 ;
  wire \fcw[8]_i_1_n_0 ;
  wire \fcw[8]_i_2_n_0 ;
  wire \fcw_reg[0]_0 ;
  wire [3:0]\fcw_reg[11]_0 ;
  wire \fcw_reg[11]_1 ;
  wire [3:0]\fcw_reg[15]_0 ;
  wire [3:0]\fcw_reg[19]_0 ;
  wire [3:0]\fcw_reg[22]_0 ;
  wire [3:0]\fcw_reg[7]_0 ;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire [1:0]next_state;
  wire \next_state[0]_i_1_n_0 ;
  wire \next_state[1]_i_1_n_0 ;
  wire \next_state_reg[0]_0 ;
  wire \next_state_reg[0]_1 ;
  wire [0:0]\next_state_reg[1]_0 ;
  wire \next_state_reg[1]_1 ;
  wire \next_state_reg[1]_2 ;
  wire notes_n_0;
  wire notes_n_1;
  wire notes_n_10;
  wire notes_n_11;
  wire notes_n_12;
  wire notes_n_13;
  wire notes_n_2;
  wire notes_n_3;
  wire notes_n_4;
  wire notes_n_5;
  wire notes_n_6;
  wire notes_n_7;
  wire notes_n_8;
  wire notes_n_9;
  wire \pa[0]_i_2_n_0 ;
  wire \pa[0]_i_3_n_0 ;
  wire \pa[0]_i_4_n_0 ;
  wire \pa[0]_i_5_n_0 ;
  wire \pa[12]_i_2_n_0 ;
  wire \pa[12]_i_3_n_0 ;
  wire \pa[12]_i_4_n_0 ;
  wire \pa[12]_i_5_n_0 ;
  wire \pa[16]_i_2_n_0 ;
  wire \pa[16]_i_3_n_0 ;
  wire \pa[16]_i_4_n_0 ;
  wire \pa[16]_i_5_n_0 ;
  wire \pa[20]_i_2_n_0 ;
  wire \pa[20]_i_3_n_0 ;
  wire \pa[20]_i_4_n_0 ;
  wire \pa[20]_i_5_n_0 ;
  wire \pa[4]_i_2_n_0 ;
  wire \pa[4]_i_3_n_0 ;
  wire \pa[4]_i_4_n_0 ;
  wire \pa[4]_i_5_n_0 ;
  wire \pa[8]_i_2_n_0 ;
  wire \pa[8]_i_3_n_0 ;
  wire \pa[8]_i_4_n_0 ;
  wire \pa[8]_i_5_n_0 ;
  wire [23:0]pa_reg;
  wire \pa_reg[0]_i_1_n_0 ;
  wire \pa_reg[12]_i_1_n_0 ;
  wire \pa_reg[16]_i_1_n_0 ;
  wire \pa_reg[4]_i_1_n_0 ;
  wire \pa_reg[8]_i_1_n_0 ;
  wire \present_state[0]_i_1_n_0 ;
  wire \present_state[1]_i_1_n_0 ;
  wire [3:0]\ram_reg[3][2] ;
  wire rd_en;
  wire rd_en_i_1_n_0;
  wire rd_en_i_3_n_0;
  wire rd_en_reg_0;
  wire [0:0]sq_wave_leds;
  wire wr_en;
  wire wr_en_reg_0;
  wire [3:0]\NLW_clk_counter_reg[0]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_clk_counter_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_clk_counter_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_clk_counter_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_clk_counter_reg[4]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_clk_counter_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:0]NLW_fcw1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_fcw1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_fcw1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_fcw1_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_fcw1_carry__3_CO_UNCONNECTED;
  wire [3:0]\NLW_fcw1_inferred__0/i__carry_CO_UNCONNECTED ;
  wire [3:0]\NLW_fcw1_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_fcw1_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_fcw1_inferred__0/i__carry__1_CO_UNCONNECTED ;
  wire [3:0]\NLW_fcw1_inferred__0/i__carry__2_CO_UNCONNECTED ;
  wire [3:0]\NLW_fcw1_inferred__0/i__carry__3_CO_UNCONNECTED ;
  wire [3:0]\NLW_pa_reg[0]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_pa_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_pa_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_pa_reg[4]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_pa_reg[8]_i_1_CO_UNCONNECTED ;

  GND GND
       (.G(\<const0> ));
  LUT4 #(
    .INIT(16'h1F10)) 
    \LEDS_OBUF[0]_inst_i_1 
       (.I0(addr[0]),
        .I1(addr[1]),
        .I2(\next_state_reg[1]_0 ),
        .I3(sq_wave_leds),
        .O(LEDS_OBUF[0]));
  LUT3 #(
    .INIT(8'h08)) 
    \LEDS_OBUF[1]_inst_i_1 
       (.I0(\next_state_reg[1]_0 ),
        .I1(addr[0]),
        .I2(addr[1]),
        .O(LEDS_OBUF[1]));
  LUT3 #(
    .INIT(8'h08)) 
    \LEDS_OBUF[2]_inst_i_1 
       (.I0(\next_state_reg[1]_0 ),
        .I1(addr[1]),
        .I2(addr[0]),
        .O(LEDS_OBUF[2]));
  LUT3 #(
    .INIT(8'h80)) 
    \LEDS_OBUF[3]_inst_i_1 
       (.I0(\next_state_reg[1]_0 ),
        .I1(addr[1]),
        .I2(addr[0]),
        .O(LEDS_OBUF[3]));
  VCC VCC
       (.P(\<const1> ));
  LUT4 #(
    .INIT(16'hEF10)) 
    \addr[0]_i_1 
       (.I0(\addr[1]_i_4_n_0 ),
        .I1(\addr[1]_i_3_n_0 ),
        .I2(\addr[1]_i_2_n_0 ),
        .I3(addr[0]),
        .O(\addr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF9F00000060)) 
    \addr[1]_i_1 
       (.I0(LEDS_OBUF[4]),
        .I1(addr[0]),
        .I2(\addr[1]_i_2_n_0 ),
        .I3(\addr[1]_i_3_n_0 ),
        .I4(\addr[1]_i_4_n_0 ),
        .I5(addr[1]),
        .O(\addr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \addr[1]_i_2 
       (.I0(clk_counter_reg[0]),
        .I1(clk_counter_reg[4]),
        .I2(clk_counter_reg[22]),
        .I3(clk_counter_reg[6]),
        .I4(\addr[1]_i_5_n_0 ),
        .I5(\addr[1]_i_6_n_0 ),
        .O(\addr[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \addr[1]_i_3 
       (.I0(clk_counter_reg[19]),
        .I1(clk_counter_reg[9]),
        .I2(clk_counter_reg[24]),
        .I3(clk_counter_reg[8]),
        .I4(\addr[1]_i_7_n_0 ),
        .O(\addr[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \addr[1]_i_4 
       (.I0(LEDS_OBUF[5]),
        .I1(clk_counter_reg[26]),
        .I2(clk_counter_reg[25]),
        .I3(clk_counter_reg[23]),
        .I4(\addr[1]_i_8_n_0 ),
        .O(\addr[1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \addr[1]_i_5 
       (.I0(clk_counter_reg[13]),
        .I1(clk_counter_reg[14]),
        .I2(clk_counter_reg[3]),
        .I3(clk_counter_reg[16]),
        .O(\addr[1]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \addr[1]_i_6 
       (.I0(clk_counter_reg[20]),
        .I1(clk_counter_reg[18]),
        .I2(clk_counter_reg[2]),
        .I3(clk_counter_reg[10]),
        .O(\addr[1]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \addr[1]_i_7 
       (.I0(clk_counter_reg[1]),
        .I1(clk_counter_reg[21]),
        .I2(clk_counter_reg[5]),
        .I3(clk_counter_reg[12]),
        .O(\addr[1]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \addr[1]_i_8 
       (.I0(clk_counter_reg[7]),
        .I1(clk_counter_reg[11]),
        .I2(clk_counter_reg[15]),
        .I3(clk_counter_reg[17]),
        .O(\addr[1]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\addr[0]_i_1_n_0 ),
        .Q(addr[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\addr[1]_i_1_n_0 ),
        .Q(addr[1]),
        .R(\<const0> ));
  LUT1 #(
    .INIT(2'h1)) 
    \clk_counter[0]_i_2 
       (.I0(clk_counter_reg[0]),
        .O(\clk_counter[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\clk_counter_reg[0]_i_1_n_7 ),
        .Q(clk_counter_reg[0]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \clk_counter_reg[0]_i_1 
       (.CI(\<const0> ),
        .CO({\clk_counter_reg[0]_i_1_n_0 ,\NLW_clk_counter_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O({\clk_counter_reg[0]_i_1_n_4 ,\clk_counter_reg[0]_i_1_n_5 ,\clk_counter_reg[0]_i_1_n_6 ,\clk_counter_reg[0]_i_1_n_7 }),
        .S({clk_counter_reg[3:1],\clk_counter[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[10] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\clk_counter_reg[8]_i_1_n_5 ),
        .Q(clk_counter_reg[10]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[11] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\clk_counter_reg[8]_i_1_n_4 ),
        .Q(clk_counter_reg[11]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[12] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\clk_counter_reg[12]_i_1_n_7 ),
        .Q(clk_counter_reg[12]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \clk_counter_reg[12]_i_1 
       (.CI(\clk_counter_reg[8]_i_1_n_0 ),
        .CO({\clk_counter_reg[12]_i_1_n_0 ,\NLW_clk_counter_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\clk_counter_reg[12]_i_1_n_4 ,\clk_counter_reg[12]_i_1_n_5 ,\clk_counter_reg[12]_i_1_n_6 ,\clk_counter_reg[12]_i_1_n_7 }),
        .S(clk_counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[13] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\clk_counter_reg[12]_i_1_n_6 ),
        .Q(clk_counter_reg[13]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[14] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\clk_counter_reg[12]_i_1_n_5 ),
        .Q(clk_counter_reg[14]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[15] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\clk_counter_reg[12]_i_1_n_4 ),
        .Q(clk_counter_reg[15]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[16] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\clk_counter_reg[16]_i_1_n_7 ),
        .Q(clk_counter_reg[16]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \clk_counter_reg[16]_i_1 
       (.CI(\clk_counter_reg[12]_i_1_n_0 ),
        .CO({\clk_counter_reg[16]_i_1_n_0 ,\NLW_clk_counter_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\clk_counter_reg[16]_i_1_n_4 ,\clk_counter_reg[16]_i_1_n_5 ,\clk_counter_reg[16]_i_1_n_6 ,\clk_counter_reg[16]_i_1_n_7 }),
        .S(clk_counter_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[17] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\clk_counter_reg[16]_i_1_n_6 ),
        .Q(clk_counter_reg[17]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[18] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\clk_counter_reg[16]_i_1_n_5 ),
        .Q(clk_counter_reg[18]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[19] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\clk_counter_reg[16]_i_1_n_4 ),
        .Q(clk_counter_reg[19]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\clk_counter_reg[0]_i_1_n_6 ),
        .Q(clk_counter_reg[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[20] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\clk_counter_reg[20]_i_1_n_7 ),
        .Q(clk_counter_reg[20]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \clk_counter_reg[20]_i_1 
       (.CI(\clk_counter_reg[16]_i_1_n_0 ),
        .CO({\clk_counter_reg[20]_i_1_n_0 ,\NLW_clk_counter_reg[20]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\clk_counter_reg[20]_i_1_n_4 ,\clk_counter_reg[20]_i_1_n_5 ,\clk_counter_reg[20]_i_1_n_6 ,\clk_counter_reg[20]_i_1_n_7 }),
        .S(clk_counter_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[21] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\clk_counter_reg[20]_i_1_n_6 ),
        .Q(clk_counter_reg[21]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[22] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\clk_counter_reg[20]_i_1_n_5 ),
        .Q(clk_counter_reg[22]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[23] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\clk_counter_reg[20]_i_1_n_4 ),
        .Q(clk_counter_reg[23]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[24] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\clk_counter_reg[24]_i_1_n_7 ),
        .Q(clk_counter_reg[24]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \clk_counter_reg[24]_i_1 
       (.CI(\clk_counter_reg[20]_i_1_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\clk_counter_reg[24]_i_1_n_5 ,\clk_counter_reg[24]_i_1_n_6 ,\clk_counter_reg[24]_i_1_n_7 }),
        .S({\<const0> ,clk_counter_reg[26:24]}));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[25] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\clk_counter_reg[24]_i_1_n_6 ),
        .Q(clk_counter_reg[25]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[26] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\clk_counter_reg[24]_i_1_n_5 ),
        .Q(clk_counter_reg[26]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\clk_counter_reg[0]_i_1_n_5 ),
        .Q(clk_counter_reg[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\clk_counter_reg[0]_i_1_n_4 ),
        .Q(clk_counter_reg[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\clk_counter_reg[4]_i_1_n_7 ),
        .Q(clk_counter_reg[4]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \clk_counter_reg[4]_i_1 
       (.CI(\clk_counter_reg[0]_i_1_n_0 ),
        .CO({\clk_counter_reg[4]_i_1_n_0 ,\NLW_clk_counter_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\clk_counter_reg[4]_i_1_n_4 ,\clk_counter_reg[4]_i_1_n_5 ,\clk_counter_reg[4]_i_1_n_6 ,\clk_counter_reg[4]_i_1_n_7 }),
        .S(clk_counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\clk_counter_reg[4]_i_1_n_6 ),
        .Q(clk_counter_reg[5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\clk_counter_reg[4]_i_1_n_5 ),
        .Q(clk_counter_reg[6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\clk_counter_reg[4]_i_1_n_4 ),
        .Q(clk_counter_reg[7]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[8] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\clk_counter_reg[8]_i_1_n_7 ),
        .Q(clk_counter_reg[8]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \clk_counter_reg[8]_i_1 
       (.CI(\clk_counter_reg[4]_i_1_n_0 ),
        .CO({\clk_counter_reg[8]_i_1_n_0 ,\NLW_clk_counter_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\clk_counter_reg[8]_i_1_n_4 ,\clk_counter_reg[8]_i_1_n_5 ,\clk_counter_reg[8]_i_1_n_6 ,\clk_counter_reg[8]_i_1_n_7 }),
        .S(clk_counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[9] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\clk_counter_reg[8]_i_1_n_6 ),
        .Q(clk_counter_reg[9]),
        .R(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hEE0E)) 
    \d_in[0]_i_1 
       (.I0(\d_in[20]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(\d_in[23]_i_4_n_0 ),
        .I3(\ram_reg[3][2] [0]),
        .O(\d_in[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h085D080800550000)) 
    \d_in[10]_i_1 
       (.I0(\ram_reg[3][2] [0]),
        .I1(\next_state_reg[1]_0 ),
        .I2(\d_in[23]_i_3_n_0 ),
        .I3(\d_in[23]_i_4_n_0 ),
        .I4(fcw1_carry__1_n_7),
        .I5(fcw1[10]),
        .O(\d_in[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000C4808080)) 
    \d_in[11]_i_1 
       (.I0(\ram_reg[3][2] [0]),
        .I1(\next_state_reg[1]_0 ),
        .I2(\d_in[23]_i_3_n_0 ),
        .I3(\d_in[23]_i_4_n_0 ),
        .I4(\ram_reg[3][2] [1]),
        .I5(\d_in[11]_i_3_n_0 ),
        .O(\d_in[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \d_in[11]_i_2 
       (.I0(fcw1_carry__1_n_6),
        .I1(\ram_reg[3][2] [0]),
        .I2(fcw1[11]),
        .O(\d_in[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \d_in[11]_i_3 
       (.I0(LEDS_OBUF[4]),
        .I1(LEDS_OBUF[5]),
        .O(\d_in[11]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF044)) 
    \d_in[12]_i_1 
       (.I0(\d_in[23]_i_4_n_0 ),
        .I1(fcw1_carry__1_n_5),
        .I2(fcw1[12]),
        .I3(\ram_reg[3][2] [0]),
        .I4(\d_in[20]_i_2_n_0 ),
        .O(\d_in[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF044)) 
    \d_in[13]_i_1 
       (.I0(\d_in[23]_i_4_n_0 ),
        .I1(fcw1_carry__1_n_4),
        .I2(fcw1[13]),
        .I3(\ram_reg[3][2] [0]),
        .I4(\d_in[20]_i_2_n_0 ),
        .O(\d_in[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF044)) 
    \d_in[14]_i_1 
       (.I0(\d_in[23]_i_4_n_0 ),
        .I1(fcw1_carry__2_n_7),
        .I2(fcw1[14]),
        .I3(\ram_reg[3][2] [0]),
        .I4(\d_in[20]_i_2_n_0 ),
        .O(\d_in[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF044)) 
    \d_in[15]_i_1 
       (.I0(\d_in[23]_i_4_n_0 ),
        .I1(fcw1_carry__2_n_6),
        .I2(fcw1[15]),
        .I3(\ram_reg[3][2] [0]),
        .I4(\d_in[20]_i_2_n_0 ),
        .O(\d_in[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h085D080800550000)) 
    \d_in[16]_i_1 
       (.I0(\ram_reg[3][2] [0]),
        .I1(\next_state_reg[1]_0 ),
        .I2(\d_in[23]_i_3_n_0 ),
        .I3(\d_in[23]_i_4_n_0 ),
        .I4(fcw1_carry__2_n_5),
        .I5(fcw1[16]),
        .O(\d_in[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h085D080800550000)) 
    \d_in[17]_i_1 
       (.I0(\ram_reg[3][2] [0]),
        .I1(\next_state_reg[1]_0 ),
        .I2(\d_in[23]_i_3_n_0 ),
        .I3(\d_in[23]_i_4_n_0 ),
        .I4(fcw1_carry__2_n_4),
        .I5(fcw1[17]),
        .O(\d_in[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF044)) 
    \d_in[18]_i_1 
       (.I0(\d_in[23]_i_4_n_0 ),
        .I1(fcw1_carry__3_n_7),
        .I2(fcw1[18]),
        .I3(\ram_reg[3][2] [0]),
        .I4(\d_in[20]_i_2_n_0 ),
        .O(\d_in[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h085D080800550000)) 
    \d_in[19]_i_1 
       (.I0(\ram_reg[3][2] [0]),
        .I1(\next_state_reg[1]_0 ),
        .I2(\d_in[23]_i_3_n_0 ),
        .I3(\d_in[23]_i_4_n_0 ),
        .I4(fcw1_carry__3_n_6),
        .I5(fcw1[19]),
        .O(\d_in[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h2F22)) 
    \d_in[1]_i_1 
       (.I0(\d_in[23]_i_4_n_0 ),
        .I1(\ram_reg[3][2] [0]),
        .I2(\d_in[20]_i_2_n_0 ),
        .I3(Q[1]),
        .O(\d_in[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF044)) 
    \d_in[20]_i_1 
       (.I0(\d_in[23]_i_4_n_0 ),
        .I1(fcw1_carry__3_n_5),
        .I2(fcw1[20]),
        .I3(\ram_reg[3][2] [0]),
        .I4(\d_in[20]_i_2_n_0 ),
        .O(\d_in[20]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \d_in[20]_i_2 
       (.I0(\d_in[23]_i_3_n_0 ),
        .I1(\ram_reg[3][2] [0]),
        .I2(\next_state_reg[1]_0 ),
        .O(\d_in[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h085D080800550000)) 
    \d_in[21]_i_1 
       (.I0(\ram_reg[3][2] [0]),
        .I1(\next_state_reg[1]_0 ),
        .I2(\d_in[23]_i_3_n_0 ),
        .I3(\d_in[23]_i_4_n_0 ),
        .I4(fcw1_carry__3_n_4),
        .I5(fcw1[21]),
        .O(\d_in[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h085D080800550000)) 
    \d_in[22]_i_1 
       (.I0(\ram_reg[3][2] [0]),
        .I1(\next_state_reg[1]_0 ),
        .I2(\d_in[23]_i_3_n_0 ),
        .I3(\d_in[23]_i_4_n_0 ),
        .I4(fcw1_carry__4_n_7),
        .I5(fcw1[22]),
        .O(\d_in[22]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \d_in[23]_i_10 
       (.I0(Q[19]),
        .I1(Q[21]),
        .I2(Q[13]),
        .I3(Q[15]),
        .O(\d_in[23]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFF8)) 
    \d_in[23]_i_11 
       (.I0(Q[19]),
        .I1(Q[20]),
        .I2(Q[22]),
        .I3(fcw),
        .I4(Q[21]),
        .O(\d_in[23]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEEEFFFE)) 
    \d_in[23]_i_12 
       (.I0(Q[12]),
        .I1(Q[11]),
        .I2(\d_in[23]_i_13_n_0 ),
        .I3(Q[5]),
        .I4(\d_in[23]_i_6_n_0 ),
        .I5(\d_in[23]_i_14_n_0 ),
        .O(\d_in[23]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \d_in[23]_i_13 
       (.I0(Q[4]),
        .I1(Q[6]),
        .O(\d_in[23]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \d_in[23]_i_14 
       (.I0(Q[13]),
        .I1(Q[14]),
        .I2(Q[15]),
        .O(\d_in[23]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h085D080800550000)) 
    \d_in[23]_i_2 
       (.I0(\ram_reg[3][2] [0]),
        .I1(\next_state_reg[1]_0 ),
        .I2(\d_in[23]_i_3_n_0 ),
        .I3(\d_in[23]_i_4_n_0 ),
        .I4(fcw1_carry__4_n_6),
        .I5(fcw1[23]),
        .O(\d_in[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000FD)) 
    \d_in[23]_i_3 
       (.I0(\d_in[23]_i_5_n_0 ),
        .I1(\d_in[23]_i_6_n_0 ),
        .I2(\d_in[23]_i_7_n_0 ),
        .I3(\d_in[23]_i_8_n_0 ),
        .I4(\d_in[23]_i_9_n_0 ),
        .I5(\d_in[23]_i_10_n_0 ),
        .O(\d_in[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEAAAAAAAAAAAA)) 
    \d_in[23]_i_4 
       (.I0(\d_in[23]_i_11_n_0 ),
        .I1(Q[16]),
        .I2(Q[17]),
        .I3(\d_in[23]_i_12_n_0 ),
        .I4(Q[20]),
        .I5(Q[18]),
        .O(\d_in[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \d_in[23]_i_5 
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\d_in[23]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \d_in[23]_i_6 
       (.I0(Q[8]),
        .I1(Q[9]),
        .I2(Q[7]),
        .I3(Q[10]),
        .O(\d_in[23]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h1F)) 
    \d_in[23]_i_7 
       (.I0(Q[5]),
        .I1(Q[6]),
        .I2(Q[11]),
        .O(\d_in[23]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \d_in[23]_i_8 
       (.I0(Q[16]),
        .I1(Q[17]),
        .I2(fcw),
        .I3(Q[22]),
        .O(\d_in[23]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \d_in[23]_i_9 
       (.I0(Q[12]),
        .I1(Q[18]),
        .I2(Q[14]),
        .I3(Q[20]),
        .O(\d_in[23]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \d_in[2]_i_1 
       (.I0(fcw1_carry_n_7),
        .I1(\ram_reg[3][2] [0]),
        .I2(Q[2]),
        .O(\d_in[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \d_in[3]_i_1 
       (.I0(fcw1_carry_n_6),
        .I1(\ram_reg[3][2] [0]),
        .I2(fcw1[3]),
        .O(\d_in[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5D5D55555D085500)) 
    \d_in[4]_i_1 
       (.I0(\ram_reg[3][2] [0]),
        .I1(\next_state_reg[1]_0 ),
        .I2(\d_in[23]_i_3_n_0 ),
        .I3(\d_in[23]_i_4_n_0 ),
        .I4(fcw1[4]),
        .I5(fcw1_carry_n_5),
        .O(\d_in[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5D5D55555D085500)) 
    \d_in[5]_i_1 
       (.I0(\ram_reg[3][2] [0]),
        .I1(\next_state_reg[1]_0 ),
        .I2(\d_in[23]_i_3_n_0 ),
        .I3(\d_in[23]_i_4_n_0 ),
        .I4(fcw1[5]),
        .I5(fcw1_carry_n_4),
        .O(\d_in[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF044)) 
    \d_in[6]_i_1 
       (.I0(\d_in[23]_i_4_n_0 ),
        .I1(fcw1_carry__0_n_7),
        .I2(fcw1[6]),
        .I3(\ram_reg[3][2] [0]),
        .I4(\d_in[20]_i_2_n_0 ),
        .O(\d_in[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \d_in[7]_i_1 
       (.I0(fcw1_carry__0_n_6),
        .I1(\ram_reg[3][2] [0]),
        .I2(fcw1[7]),
        .O(\d_in[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF044)) 
    \d_in[8]_i_1 
       (.I0(\d_in[23]_i_4_n_0 ),
        .I1(fcw1_carry__0_n_5),
        .I2(fcw1[8]),
        .I3(\ram_reg[3][2] [0]),
        .I4(\d_in[20]_i_2_n_0 ),
        .O(\d_in[8]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \d_in[9]_i_1 
       (.I0(fcw1_carry__0_n_4),
        .I1(\ram_reg[3][2] [0]),
        .I2(fcw1[9]),
        .O(\d_in[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \d_in_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\d_in_reg[0]_0 ),
        .D(\d_in[0]_i_1_n_0 ),
        .Q(d_in[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_in_reg[10] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\d_in_reg[0]_0 ),
        .D(\d_in[10]_i_1_n_0 ),
        .Q(d_in[10]),
        .R(\<const0> ));
  FDSE #(
    .INIT(1'b1)) 
    \d_in_reg[11] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\d_in_reg[0]_0 ),
        .D(\d_in[11]_i_2_n_0 ),
        .Q(d_in[11]),
        .S(\d_in[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \d_in_reg[12] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\d_in_reg[0]_0 ),
        .D(\d_in[12]_i_1_n_0 ),
        .Q(d_in[12]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_in_reg[13] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\d_in_reg[0]_0 ),
        .D(\d_in[13]_i_1_n_0 ),
        .Q(d_in[13]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_in_reg[14] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\d_in_reg[0]_0 ),
        .D(\d_in[14]_i_1_n_0 ),
        .Q(d_in[14]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_in_reg[15] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\d_in_reg[0]_0 ),
        .D(\d_in[15]_i_1_n_0 ),
        .Q(d_in[15]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_in_reg[16] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\d_in_reg[0]_0 ),
        .D(\d_in[16]_i_1_n_0 ),
        .Q(d_in[16]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_in_reg[17] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\d_in_reg[0]_0 ),
        .D(\d_in[17]_i_1_n_0 ),
        .Q(d_in[17]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_in_reg[18] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\d_in_reg[0]_0 ),
        .D(\d_in[18]_i_1_n_0 ),
        .Q(d_in[18]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_in_reg[19] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\d_in_reg[0]_0 ),
        .D(\d_in[19]_i_1_n_0 ),
        .Q(d_in[19]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_in_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\d_in_reg[0]_0 ),
        .D(\d_in[1]_i_1_n_0 ),
        .Q(d_in[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_in_reg[20] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\d_in_reg[0]_0 ),
        .D(\d_in[20]_i_1_n_0 ),
        .Q(d_in[20]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_in_reg[21] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\d_in_reg[0]_0 ),
        .D(\d_in[21]_i_1_n_0 ),
        .Q(d_in[21]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_in_reg[22] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\d_in_reg[0]_0 ),
        .D(\d_in[22]_i_1_n_0 ),
        .Q(d_in[22]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_in_reg[23] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\d_in_reg[0]_0 ),
        .D(\d_in[23]_i_2_n_0 ),
        .Q(d_in[23]),
        .R(\<const0> ));
  FDSE #(
    .INIT(1'b1)) 
    \d_in_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\d_in_reg[0]_0 ),
        .D(\d_in[2]_i_1_n_0 ),
        .Q(d_in[2]),
        .S(\d_in[11]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \d_in_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\d_in_reg[0]_0 ),
        .D(\d_in[3]_i_1_n_0 ),
        .Q(d_in[3]),
        .S(\d_in[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \d_in_reg[4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\d_in_reg[0]_0 ),
        .D(\d_in[4]_i_1_n_0 ),
        .Q(d_in[4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_in_reg[5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\d_in_reg[0]_0 ),
        .D(\d_in[5]_i_1_n_0 ),
        .Q(d_in[5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_in_reg[6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\d_in_reg[0]_0 ),
        .D(\d_in[6]_i_1_n_0 ),
        .Q(d_in[6]),
        .R(\<const0> ));
  FDSE #(
    .INIT(1'b1)) 
    \d_in_reg[7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\d_in_reg[0]_0 ),
        .D(\d_in[7]_i_1_n_0 ),
        .Q(d_in[7]),
        .S(\d_in[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \d_in_reg[8] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\d_in_reg[0]_0 ),
        .D(\d_in[8]_i_1_n_0 ),
        .Q(d_in[8]),
        .R(\<const0> ));
  FDSE #(
    .INIT(1'b1)) 
    \d_in_reg[9] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\d_in_reg[0]_0 ),
        .D(\d_in[9]_i_1_n_0 ),
        .Q(d_in[9]),
        .S(\d_in[11]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 fcw1_carry
       (.CI(\<const0> ),
        .CO({fcw1_carry_n_0,NLW_fcw1_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,Q[4:3],\<const0> }),
        .O({fcw1_carry_n_4,fcw1_carry_n_5,fcw1_carry_n_6,fcw1_carry_n_7}),
        .S({Q[5],fcw1_carry_i_1_n_0,fcw1_carry_i_2_n_0,Q[2]}));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 fcw1_carry__0
       (.CI(fcw1_carry_n_0),
        .CO({fcw1_carry__0_n_0,NLW_fcw1_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({fcw1_carry__0_n_4,fcw1_carry__0_n_5,fcw1_carry__0_n_6,fcw1_carry__0_n_7}),
        .S(Q[9:6]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 fcw1_carry__1
       (.CI(fcw1_carry__0_n_0),
        .CO({fcw1_carry__1_n_0,NLW_fcw1_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const0> ),
        .DI(Q[13:10]),
        .O({fcw1_carry__1_n_4,fcw1_carry__1_n_5,fcw1_carry__1_n_6,fcw1_carry__1_n_7}),
        .S({fcw1_carry__1_i_1_n_0,fcw1_carry__1_i_2_n_0,fcw1_carry__1_i_3_n_0,fcw1_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    fcw1_carry__1_i_1
       (.I0(Q[13]),
        .O(fcw1_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    fcw1_carry__1_i_2
       (.I0(Q[12]),
        .O(fcw1_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    fcw1_carry__1_i_3
       (.I0(Q[11]),
        .O(fcw1_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    fcw1_carry__1_i_4
       (.I0(Q[10]),
        .O(fcw1_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 fcw1_carry__2
       (.CI(fcw1_carry__1_n_0),
        .CO({fcw1_carry__2_n_0,NLW_fcw1_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const0> ),
        .DI(Q[17:14]),
        .O({fcw1_carry__2_n_4,fcw1_carry__2_n_5,fcw1_carry__2_n_6,fcw1_carry__2_n_7}),
        .S({fcw1_carry__2_i_1_n_0,fcw1_carry__2_i_2_n_0,fcw1_carry__2_i_3_n_0,fcw1_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    fcw1_carry__2_i_1
       (.I0(Q[17]),
        .O(fcw1_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    fcw1_carry__2_i_2
       (.I0(Q[16]),
        .O(fcw1_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    fcw1_carry__2_i_3
       (.I0(Q[15]),
        .O(fcw1_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    fcw1_carry__2_i_4
       (.I0(Q[14]),
        .O(fcw1_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 fcw1_carry__3
       (.CI(fcw1_carry__2_n_0),
        .CO({fcw1_carry__3_n_0,NLW_fcw1_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const0> ),
        .DI(Q[21:18]),
        .O({fcw1_carry__3_n_4,fcw1_carry__3_n_5,fcw1_carry__3_n_6,fcw1_carry__3_n_7}),
        .S({fcw1_carry__3_i_1_n_0,fcw1_carry__3_i_2_n_0,fcw1_carry__3_i_3_n_0,fcw1_carry__3_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    fcw1_carry__3_i_1
       (.I0(Q[21]),
        .O(fcw1_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    fcw1_carry__3_i_2
       (.I0(Q[20]),
        .O(fcw1_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    fcw1_carry__3_i_3
       (.I0(Q[19]),
        .O(fcw1_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    fcw1_carry__3_i_4
       (.I0(Q[18]),
        .O(fcw1_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 fcw1_carry__4
       (.CI(fcw1_carry__3_n_0),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,Q[22]}),
        .O({fcw1_carry__4_n_6,fcw1_carry__4_n_7}),
        .S({\<const0> ,\<const0> ,fcw1_carry__4_i_1_n_0,fcw1_carry__4_i_2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    fcw1_carry__4_i_1
       (.I0(fcw),
        .O(fcw1_carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    fcw1_carry__4_i_2
       (.I0(Q[22]),
        .O(fcw1_carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    fcw1_carry_i_1
       (.I0(Q[4]),
        .O(fcw1_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    fcw1_carry_i_2
       (.I0(Q[3]),
        .O(fcw1_carry_i_2_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 \fcw1_inferred__0/i__carry 
       (.CI(\<const0> ),
        .CO({\fcw1_inferred__0/i__carry_n_0 ,\NLW_fcw1_inferred__0/i__carry_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({Q[5],\<const0> ,Q[3],\<const0> }),
        .O({fcw1[5:3],\NLW_fcw1_inferred__0/i__carry_O_UNCONNECTED [0]}),
        .S({i__carry_i_1_n_0,Q[4],i__carry_i_2_n_0,Q[2]}));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \fcw1_inferred__0/i__carry__0 
       (.CI(\fcw1_inferred__0/i__carry_n_0 ),
        .CO({\fcw1_inferred__0/i__carry__0_n_0 ,\NLW_fcw1_inferred__0/i__carry__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI(Q[9:6]),
        .O(fcw1[9:6]),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \fcw1_inferred__0/i__carry__1 
       (.CI(\fcw1_inferred__0/i__carry__0_n_0 ),
        .CO({\fcw1_inferred__0/i__carry__1_n_0 ,\NLW_fcw1_inferred__0/i__carry__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(fcw1[13:10]),
        .S(Q[13:10]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \fcw1_inferred__0/i__carry__2 
       (.CI(\fcw1_inferred__0/i__carry__1_n_0 ),
        .CO({\fcw1_inferred__0/i__carry__2_n_0 ,\NLW_fcw1_inferred__0/i__carry__2_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(fcw1[17:14]),
        .S(Q[17:14]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \fcw1_inferred__0/i__carry__3 
       (.CI(\fcw1_inferred__0/i__carry__2_n_0 ),
        .CO({\fcw1_inferred__0/i__carry__3_n_0 ,\NLW_fcw1_inferred__0/i__carry__3_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(fcw1[21:18]),
        .S(Q[21:18]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \fcw1_inferred__0/i__carry__4 
       (.CI(\fcw1_inferred__0/i__carry__3_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(fcw1[23:22]),
        .S({\<const0> ,\<const0> ,fcw,Q[22]}));
  LUT6 #(
    .INIT(64'h1FFFFFFFFFFFFFFF)) 
    \fcw[0]_i_2 
       (.I0(\ram_reg[3][2] [0]),
        .I1(\ram_reg[3][2] [1]),
        .I2(\next_state_reg[1]_0 ),
        .I3(LEDS_OBUF[4]),
        .I4(LEDS_OBUF[5]),
        .I5(Q[0]),
        .O(\fcw[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \fcw[10]_i_1 
       (.I0(fcw1[10]),
        .I1(\fcw[23]_i_4_n_0 ),
        .I2(d_out[10]),
        .I3(\fcw[23]_i_3_n_0 ),
        .I4(\fcw[23]_i_5_n_0 ),
        .I5(fcw1_carry__1_n_7),
        .O(\fcw[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \fcw[11]_i_4 
       (.I0(\ram_reg[3][2] [0]),
        .I1(\next_state_reg[1]_0 ),
        .I2(LEDS_OBUF[5]),
        .I3(LEDS_OBUF[4]),
        .O(\fcw[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \fcw[12]_i_1 
       (.I0(\fcw[12]_i_2_n_0 ),
        .I1(\d_in[11]_i_3_n_0 ),
        .I2(d_out[12]),
        .I3(\fcw[23]_i_3_n_0 ),
        .I4(\fcw[23]_i_5_n_0 ),
        .I5(fcw1_carry__1_n_5),
        .O(\fcw[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hC080)) 
    \fcw[12]_i_2 
       (.I0(\d_in[23]_i_3_n_0 ),
        .I1(\next_state_reg[1]_0 ),
        .I2(\ram_reg[3][2] [0]),
        .I3(fcw1[12]),
        .O(\fcw[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \fcw[13]_i_1 
       (.I0(\fcw[13]_i_2_n_0 ),
        .I1(\d_in[11]_i_3_n_0 ),
        .I2(d_out[13]),
        .I3(\fcw[23]_i_3_n_0 ),
        .I4(\fcw[23]_i_5_n_0 ),
        .I5(fcw1_carry__1_n_4),
        .O(\fcw[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hC080)) 
    \fcw[13]_i_2 
       (.I0(\d_in[23]_i_3_n_0 ),
        .I1(\next_state_reg[1]_0 ),
        .I2(\ram_reg[3][2] [0]),
        .I3(fcw1[13]),
        .O(\fcw[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \fcw[14]_i_1 
       (.I0(\fcw[14]_i_2_n_0 ),
        .I1(\d_in[11]_i_3_n_0 ),
        .I2(d_out[14]),
        .I3(\fcw[23]_i_3_n_0 ),
        .I4(\fcw[23]_i_5_n_0 ),
        .I5(fcw1_carry__2_n_7),
        .O(\fcw[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hC080)) 
    \fcw[14]_i_2 
       (.I0(\d_in[23]_i_3_n_0 ),
        .I1(\next_state_reg[1]_0 ),
        .I2(\ram_reg[3][2] [0]),
        .I3(fcw1[14]),
        .O(\fcw[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \fcw[15]_i_1 
       (.I0(\fcw[15]_i_2_n_0 ),
        .I1(\d_in[11]_i_3_n_0 ),
        .I2(d_out[15]),
        .I3(\fcw[23]_i_3_n_0 ),
        .I4(\fcw[23]_i_5_n_0 ),
        .I5(fcw1_carry__2_n_6),
        .O(\fcw[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hC080)) 
    \fcw[15]_i_2 
       (.I0(\d_in[23]_i_3_n_0 ),
        .I1(\next_state_reg[1]_0 ),
        .I2(\ram_reg[3][2] [0]),
        .I3(fcw1[15]),
        .O(\fcw[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \fcw[16]_i_1 
       (.I0(fcw1[16]),
        .I1(\fcw[23]_i_4_n_0 ),
        .I2(d_out[16]),
        .I3(\fcw[23]_i_3_n_0 ),
        .I4(\fcw[23]_i_5_n_0 ),
        .I5(fcw1_carry__2_n_5),
        .O(\fcw[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \fcw[18]_i_1 
       (.I0(\fcw[18]_i_2_n_0 ),
        .I1(\d_in[11]_i_3_n_0 ),
        .I2(d_out[18]),
        .I3(\fcw[23]_i_3_n_0 ),
        .I4(\fcw[23]_i_5_n_0 ),
        .I5(fcw1_carry__3_n_7),
        .O(\fcw[18]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hC080)) 
    \fcw[18]_i_2 
       (.I0(\d_in[23]_i_3_n_0 ),
        .I1(\next_state_reg[1]_0 ),
        .I2(\ram_reg[3][2] [0]),
        .I3(fcw1[18]),
        .O(\fcw[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \fcw[20]_i_1 
       (.I0(\fcw[20]_i_2_n_0 ),
        .I1(\d_in[11]_i_3_n_0 ),
        .I2(d_out[20]),
        .I3(\fcw[23]_i_3_n_0 ),
        .I4(\fcw[23]_i_5_n_0 ),
        .I5(fcw1_carry__3_n_5),
        .O(\fcw[20]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hC080)) 
    \fcw[20]_i_2 
       (.I0(\d_in[23]_i_3_n_0 ),
        .I1(\next_state_reg[1]_0 ),
        .I2(\ram_reg[3][2] [0]),
        .I3(fcw1[20]),
        .O(\fcw[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \fcw[23]_i_1 
       (.I0(LEDS_OBUF[5]),
        .I1(LEDS_OBUF[4]),
        .O(SR));
  LUT5 #(
    .INIT(32'hFD550000)) 
    \fcw[23]_i_3 
       (.I0(LEDS_OBUF[4]),
        .I1(\ram_reg[3][2] [0]),
        .I2(\ram_reg[3][2] [1]),
        .I3(\next_state_reg[1]_0 ),
        .I4(LEDS_OBUF[5]),
        .O(\fcw[23]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hBFFFFFFF)) 
    \fcw[23]_i_4 
       (.I0(\d_in[23]_i_3_n_0 ),
        .I1(LEDS_OBUF[4]),
        .I2(LEDS_OBUF[5]),
        .I3(\next_state_reg[1]_0 ),
        .I4(\ram_reg[3][2] [0]),
        .O(\fcw[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF8880)) 
    \fcw[23]_i_5 
       (.I0(Q[18]),
        .I1(Q[20]),
        .I2(\d_in[23]_i_12_n_0 ),
        .I3(\fcw[23]_i_6_n_0 ),
        .I4(\d_in[23]_i_11_n_0 ),
        .I5(\fcw_reg[11]_1 ),
        .O(\fcw[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \fcw[23]_i_6 
       (.I0(Q[17]),
        .I1(Q[16]),
        .O(\fcw[23]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \fcw[6]_i_1 
       (.I0(\fcw[6]_i_2_n_0 ),
        .I1(\d_in[11]_i_3_n_0 ),
        .I2(d_out[6]),
        .I3(\fcw[23]_i_3_n_0 ),
        .I4(\fcw[23]_i_5_n_0 ),
        .I5(fcw1_carry__0_n_7),
        .O(\fcw[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hC080)) 
    \fcw[6]_i_2 
       (.I0(\d_in[23]_i_3_n_0 ),
        .I1(\next_state_reg[1]_0 ),
        .I2(\ram_reg[3][2] [0]),
        .I3(fcw1[6]),
        .O(\fcw[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \fcw[8]_i_1 
       (.I0(\fcw[8]_i_2_n_0 ),
        .I1(\d_in[11]_i_3_n_0 ),
        .I2(d_out[8]),
        .I3(\fcw[23]_i_3_n_0 ),
        .I4(\fcw[23]_i_5_n_0 ),
        .I5(fcw1_carry__0_n_5),
        .O(\fcw[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hC080)) 
    \fcw[8]_i_2 
       (.I0(\d_in[23]_i_3_n_0 ),
        .I1(\next_state_reg[1]_0 ),
        .I2(\ram_reg[3][2] [0]),
        .I3(fcw1[8]),
        .O(\fcw[8]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fcw_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(notes_n_13),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \fcw_reg[10] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\fcw[10]_i_1_n_0 ),
        .Q(Q[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \fcw_reg[11] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(notes_n_5),
        .Q(Q[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \fcw_reg[12] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\fcw[12]_i_1_n_0 ),
        .Q(Q[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \fcw_reg[13] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\fcw[13]_i_1_n_0 ),
        .Q(Q[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \fcw_reg[14] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\fcw[14]_i_1_n_0 ),
        .Q(Q[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \fcw_reg[15] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\fcw[15]_i_1_n_0 ),
        .Q(Q[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \fcw_reg[16] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\fcw[16]_i_1_n_0 ),
        .Q(Q[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \fcw_reg[17] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(notes_n_4),
        .Q(Q[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \fcw_reg[18] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\fcw[18]_i_1_n_0 ),
        .Q(Q[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \fcw_reg[19] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(notes_n_3),
        .Q(Q[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \fcw_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(notes_n_12),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \fcw_reg[20] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\fcw[20]_i_1_n_0 ),
        .Q(Q[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \fcw_reg[21] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(notes_n_2),
        .Q(Q[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \fcw_reg[22] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(notes_n_1),
        .Q(Q[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \fcw_reg[23] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(notes_n_0),
        .Q(fcw),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \fcw_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(notes_n_11),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \fcw_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(notes_n_10),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \fcw_reg[4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(notes_n_9),
        .Q(Q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \fcw_reg[5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(notes_n_8),
        .Q(Q[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \fcw_reg[6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\fcw[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \fcw_reg[7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(notes_n_7),
        .Q(Q[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \fcw_reg[8] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\fcw[8]_i_1_n_0 ),
        .Q(Q[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \fcw_reg[9] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(notes_n_6),
        .Q(Q[9]),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_1
       (.I0(Q[9]),
        .O(i__carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_2
       (.I0(Q[8]),
        .O(i__carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_3
       (.I0(Q[7]),
        .O(i__carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_4
       (.I0(Q[6]),
        .O(i__carry__0_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_1
       (.I0(Q[5]),
        .O(i__carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_2
       (.I0(Q[3]),
        .O(i__carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h22F2EEF222020002)) 
    \next_state[0]_i_1 
       (.I0(\fcw_reg[0]_0 ),
        .I1(LEDS_OBUF[4]),
        .I2(\next_state_reg[0]_0 ),
        .I3(LEDS_OBUF[5]),
        .I4(\next_state_reg[0]_1 ),
        .I5(next_state[0]),
        .O(\next_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA888FFFFA8880000)) 
    \next_state[1]_i_1 
       (.I0(\next_state_reg[1]_1 ),
        .I1(LEDS_OBUF[5]),
        .I2(\next_state_reg[1]_0 ),
        .I3(\ram_reg[3][2] [0]),
        .I4(\next_state_reg[1]_2 ),
        .I5(next_state[1]),
        .O(\next_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_state_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\next_state[0]_i_1_n_0 ),
        .Q(next_state[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \next_state_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\next_state[1]_i_1_n_0 ),
        .Q(next_state[1]),
        .R(\<const0> ));
  fcw_ram notes
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .D({notes_n_0,notes_n_1,notes_n_2,notes_n_3,notes_n_4,notes_n_5,notes_n_6,notes_n_7,notes_n_8,notes_n_9,notes_n_10,notes_n_11,notes_n_12,notes_n_13}),
        .E(rd_en),
        .O({fcw1_carry_n_4,fcw1_carry_n_5,fcw1_carry_n_6,fcw1_carry_n_7}),
        .Q({d_out[20],d_out[18],d_out[16:12],d_out[10],d_out[8],d_out[6]}),
        .addr(addr),
        .fcw1({fcw1[23:21],fcw1[19],fcw1[17],fcw1[11],fcw1[9],fcw1[7],fcw1[5:3]}),
        .\fcw_reg[0] (\fcw[0]_i_2_n_0 ),
        .\fcw_reg[0]_0 (\fcw_reg[0]_0 ),
        .\fcw_reg[0]_1 (\d_in[23]_i_4_n_0 ),
        .\fcw_reg[0]_2 (\d_in[20]_i_2_n_0 ),
        .\fcw_reg[0]_3 (\d_in[11]_i_3_n_0 ),
        .\fcw_reg[11] (LEDS_OBUF[5]),
        .\fcw_reg[11]_0 (LEDS_OBUF[4]),
        .\fcw_reg[11]_1 (\fcw_reg[11]_1 ),
        .\fcw_reg[11]_2 (fcw1_carry__1_n_6),
        .\fcw_reg[17] (\fcw[23]_i_5_n_0 ),
        .\fcw_reg[17]_0 (fcw1_carry__2_n_4),
        .\fcw_reg[1] (\fcw[23]_i_4_n_0 ),
        .\fcw_reg[1]_0 (\fcw[23]_i_3_n_0 ),
        .\fcw_reg[21] ({fcw1_carry__3_n_4,fcw1_carry__3_n_6}),
        .\fcw_reg[23] ({fcw1_carry__4_n_6,fcw1_carry__4_n_7}),
        .\fcw_reg[2] (Q[2:1]),
        .\fcw_reg[2]_0 (\fcw[11]_i_4_n_0 ),
        .\fcw_reg[5] (\next_state_reg[1]_0 ),
        .\fcw_reg[9] ({fcw1_carry__0_n_4,fcw1_carry__0_n_6}),
        .\ram_reg[0][23]_0 (d_in),
        .\ram_reg[3][0]_0 (wr_en),
        .\ram_reg[3][2]_0 ({\ram_reg[3][2] [3],\ram_reg[3][2] [1:0]}));
  LUT2 #(
    .INIT(4'h6)) 
    pa0_carry__4_i_1
       (.I0(fcw),
        .I1(pa_reg[23]),
        .O(S));
  LUT2 #(
    .INIT(4'h6)) 
    \pa[0]_i_2 
       (.I0(Q[3]),
        .I1(pa_reg[3]),
        .O(\pa[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pa[0]_i_3 
       (.I0(Q[2]),
        .I1(pa_reg[2]),
        .O(\pa[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pa[0]_i_4 
       (.I0(Q[1]),
        .I1(pa_reg[1]),
        .O(\pa[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pa[0]_i_5 
       (.I0(Q[0]),
        .I1(pa_reg[0]),
        .O(\pa[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pa[12]_i_2 
       (.I0(Q[15]),
        .I1(pa_reg[15]),
        .O(\pa[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pa[12]_i_3 
       (.I0(Q[14]),
        .I1(pa_reg[14]),
        .O(\pa[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pa[12]_i_4 
       (.I0(Q[13]),
        .I1(pa_reg[13]),
        .O(\pa[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pa[12]_i_5 
       (.I0(Q[12]),
        .I1(pa_reg[12]),
        .O(\pa[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pa[16]_i_2 
       (.I0(Q[19]),
        .I1(pa_reg[19]),
        .O(\pa[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pa[16]_i_3 
       (.I0(Q[18]),
        .I1(pa_reg[18]),
        .O(\pa[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pa[16]_i_4 
       (.I0(Q[17]),
        .I1(pa_reg[17]),
        .O(\pa[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pa[16]_i_5 
       (.I0(Q[16]),
        .I1(pa_reg[16]),
        .O(\pa[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pa[20]_i_2 
       (.I0(fcw),
        .I1(pa_reg[23]),
        .O(\pa[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pa[20]_i_3 
       (.I0(Q[22]),
        .I1(pa_reg[22]),
        .O(\pa[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pa[20]_i_4 
       (.I0(Q[21]),
        .I1(pa_reg[21]),
        .O(\pa[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pa[20]_i_5 
       (.I0(Q[20]),
        .I1(pa_reg[20]),
        .O(\pa[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pa[4]_i_2 
       (.I0(Q[7]),
        .I1(pa_reg[7]),
        .O(\pa[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pa[4]_i_3 
       (.I0(Q[6]),
        .I1(pa_reg[6]),
        .O(\pa[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pa[4]_i_4 
       (.I0(Q[5]),
        .I1(pa_reg[5]),
        .O(\pa[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pa[4]_i_5 
       (.I0(Q[4]),
        .I1(pa_reg[4]),
        .O(\pa[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pa[8]_i_2 
       (.I0(Q[11]),
        .I1(pa_reg[11]),
        .O(\pa[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pa[8]_i_3 
       (.I0(Q[10]),
        .I1(pa_reg[10]),
        .O(\pa[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pa[8]_i_4 
       (.I0(Q[9]),
        .I1(pa_reg[9]),
        .O(\pa[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pa[8]_i_5 
       (.I0(Q[8]),
        .I1(pa_reg[8]),
        .O(\pa[8]_i_5_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \pa_reg[0]_i_1 
       (.CI(\<const0> ),
        .CO({\pa_reg[0]_i_1_n_0 ,\NLW_pa_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI(Q[3:0]),
        .O(O),
        .S({\pa[0]_i_2_n_0 ,\pa[0]_i_3_n_0 ,\pa[0]_i_4_n_0 ,\pa[0]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \pa_reg[12]_i_1 
       (.CI(\pa_reg[8]_i_1_n_0 ),
        .CO({\pa_reg[12]_i_1_n_0 ,\NLW_pa_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI(Q[15:12]),
        .O(\fcw_reg[15]_0 ),
        .S({\pa[12]_i_2_n_0 ,\pa[12]_i_3_n_0 ,\pa[12]_i_4_n_0 ,\pa[12]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \pa_reg[16]_i_1 
       (.CI(\pa_reg[12]_i_1_n_0 ),
        .CO({\pa_reg[16]_i_1_n_0 ,\NLW_pa_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI(Q[19:16]),
        .O(\fcw_reg[19]_0 ),
        .S({\pa[16]_i_2_n_0 ,\pa[16]_i_3_n_0 ,\pa[16]_i_4_n_0 ,\pa[16]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \pa_reg[20]_i_1 
       (.CI(\pa_reg[16]_i_1_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,Q[22:20]}),
        .O(\fcw_reg[22]_0 ),
        .S({\pa[20]_i_2_n_0 ,\pa[20]_i_3_n_0 ,\pa[20]_i_4_n_0 ,\pa[20]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \pa_reg[4]_i_1 
       (.CI(\pa_reg[0]_i_1_n_0 ),
        .CO({\pa_reg[4]_i_1_n_0 ,\NLW_pa_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI(Q[7:4]),
        .O(\fcw_reg[7]_0 ),
        .S({\pa[4]_i_2_n_0 ,\pa[4]_i_3_n_0 ,\pa[4]_i_4_n_0 ,\pa[4]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \pa_reg[8]_i_1 
       (.CI(\pa_reg[4]_i_1_n_0 ),
        .CO({\pa_reg[8]_i_1_n_0 ,\NLW_pa_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI(Q[11:8]),
        .O(\fcw_reg[11]_0 ),
        .S({\pa[8]_i_2_n_0 ,\pa[8]_i_3_n_0 ,\pa[8]_i_4_n_0 ,\pa[8]_i_5_n_0 }));
  (* \PinAttr:I0:HOLD_DETOUR  = "185" *) 
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \present_state[0]_i_1 
       (.I0(next_state[0]),
        .I1(\ram_reg[3][2] [3]),
        .O(\present_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \present_state[1]_i_1 
       (.I0(next_state[1]),
        .I1(\ram_reg[3][2] [3]),
        .O(\present_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \present_state_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\present_state[0]_i_1_n_0 ),
        .Q(LEDS_OBUF[4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \present_state_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\present_state[1]_i_1_n_0 ),
        .Q(LEDS_OBUF[5]),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'hBBBFBBBB888F8888)) 
    rd_en_i_1
       (.I0(rd_en_reg_0),
        .I1(rd_en_i_3_n_0),
        .I2(\addr[1]_i_4_n_0 ),
        .I3(\addr[1]_i_3_n_0 ),
        .I4(\addr[1]_i_2_n_0 ),
        .I5(rd_en),
        .O(rd_en_i_1_n_0));
  LUT5 #(
    .INIT(32'hAAAA0080)) 
    rd_en_i_3
       (.I0(LEDS_OBUF[5]),
        .I1(\next_state_reg[1]_0 ),
        .I2(\ram_reg[3][2] [2]),
        .I3(\ram_reg[3][2] [0]),
        .I4(LEDS_OBUF[4]),
        .O(rd_en_i_3_n_0));
  FDRE #(
    .INIT(1'b1)) 
    rd_en_reg
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(rd_en_i_1_n_0),
        .Q(rd_en),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    wr_en_reg
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(wr_en_reg_0),
        .Q(wr_en),
        .R(\<const0> ));
endmodule

module nco
   (pa_reg,
    ADDRARDADDR,
    Q,
    next_sample,
    O,
    CLK_125MHZ_FPGA_IBUF_BUFG,
    \pa_reg[7]_0 ,
    \pa_reg[11]_0 ,
    \pa_reg[15]_0 ,
    \pa_reg[19]_0 ,
    \pa_reg[23]_0 ,
    S,
    pa0_carry__4_0);
  output [23:0]pa_reg;
  output [7:0]ADDRARDADDR;
  input [0:0]Q;
  input next_sample;
  input [3:0]O;
  input CLK_125MHZ_FPGA_IBUF_BUFG;
  input [3:0]\pa_reg[7]_0 ;
  input [3:0]\pa_reg[11]_0 ;
  input [3:0]\pa_reg[15]_0 ;
  input [3:0]\pa_reg[19]_0 ;
  input [3:0]\pa_reg[23]_0 ;
  input [0:0]S;
  input [22:0]pa0_carry__4_0;

  wire \<const0> ;
  wire [7:0]ADDRARDADDR;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [3:0]O;
  wire [0:0]Q;
  wire [0:0]S;
  wire next_sample;
  wire pa0_carry__0_i_1_n_0;
  wire pa0_carry__0_i_2_n_0;
  wire pa0_carry__0_i_3_n_0;
  wire pa0_carry__0_i_4_n_0;
  wire pa0_carry__0_n_0;
  wire pa0_carry__1_i_1_n_0;
  wire pa0_carry__1_i_2_n_0;
  wire pa0_carry__1_i_3_n_0;
  wire pa0_carry__1_i_4_n_0;
  wire pa0_carry__1_n_0;
  wire pa0_carry__2_i_1_n_0;
  wire pa0_carry__2_i_2_n_0;
  wire pa0_carry__2_i_3_n_0;
  wire pa0_carry__2_i_4_n_0;
  wire pa0_carry__2_n_0;
  wire pa0_carry__3_i_1_n_0;
  wire pa0_carry__3_i_2_n_0;
  wire pa0_carry__3_i_3_n_0;
  wire pa0_carry__3_i_4_n_0;
  wire pa0_carry__3_n_0;
  wire [22:0]pa0_carry__4_0;
  wire pa0_carry__4_i_2_n_0;
  wire pa0_carry__4_i_3_n_0;
  wire pa0_carry__4_i_4_n_0;
  wire pa0_carry_i_1_n_0;
  wire pa0_carry_i_2_n_0;
  wire pa0_carry_i_3_n_0;
  wire pa0_carry_i_4_n_0;
  wire pa0_carry_n_0;
  wire [23:0]pa_reg;
  wire [3:0]\pa_reg[11]_0 ;
  wire [3:0]\pa_reg[15]_0 ;
  wire [3:0]\pa_reg[19]_0 ;
  wire [3:0]\pa_reg[23]_0 ;
  wire [3:0]\pa_reg[7]_0 ;
  wire [7:0]sel__0;
  wire [3:0]NLW_pa0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_pa0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_pa0_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_pa0_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_pa0_carry__3_CO_UNCONNECTED;

  GND GND
       (.G(\<const0> ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 pa0_carry
       (.CI(\<const0> ),
        .CO({pa0_carry_n_0,NLW_pa0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const0> ),
        .DI(pa_reg[3:0]),
        .S({pa0_carry_i_1_n_0,pa0_carry_i_2_n_0,pa0_carry_i_3_n_0,pa0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 pa0_carry__0
       (.CI(pa0_carry_n_0),
        .CO({pa0_carry__0_n_0,NLW_pa0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const0> ),
        .DI(pa_reg[7:4]),
        .S({pa0_carry__0_i_1_n_0,pa0_carry__0_i_2_n_0,pa0_carry__0_i_3_n_0,pa0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    pa0_carry__0_i_1
       (.I0(pa_reg[7]),
        .I1(pa0_carry__4_0[7]),
        .O(pa0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pa0_carry__0_i_2
       (.I0(pa_reg[6]),
        .I1(pa0_carry__4_0[6]),
        .O(pa0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pa0_carry__0_i_3
       (.I0(pa_reg[5]),
        .I1(pa0_carry__4_0[5]),
        .O(pa0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pa0_carry__0_i_4
       (.I0(pa_reg[4]),
        .I1(pa0_carry__4_0[4]),
        .O(pa0_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 pa0_carry__1
       (.CI(pa0_carry__0_n_0),
        .CO({pa0_carry__1_n_0,NLW_pa0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const0> ),
        .DI(pa_reg[11:8]),
        .S({pa0_carry__1_i_1_n_0,pa0_carry__1_i_2_n_0,pa0_carry__1_i_3_n_0,pa0_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    pa0_carry__1_i_1
       (.I0(pa_reg[11]),
        .I1(pa0_carry__4_0[11]),
        .O(pa0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pa0_carry__1_i_2
       (.I0(pa_reg[10]),
        .I1(pa0_carry__4_0[10]),
        .O(pa0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pa0_carry__1_i_3
       (.I0(pa_reg[9]),
        .I1(pa0_carry__4_0[9]),
        .O(pa0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pa0_carry__1_i_4
       (.I0(pa_reg[8]),
        .I1(pa0_carry__4_0[8]),
        .O(pa0_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 pa0_carry__2
       (.CI(pa0_carry__1_n_0),
        .CO({pa0_carry__2_n_0,NLW_pa0_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const0> ),
        .DI(pa_reg[15:12]),
        .S({pa0_carry__2_i_1_n_0,pa0_carry__2_i_2_n_0,pa0_carry__2_i_3_n_0,pa0_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    pa0_carry__2_i_1
       (.I0(pa_reg[15]),
        .I1(pa0_carry__4_0[15]),
        .O(pa0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pa0_carry__2_i_2
       (.I0(pa_reg[14]),
        .I1(pa0_carry__4_0[14]),
        .O(pa0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pa0_carry__2_i_3
       (.I0(pa_reg[13]),
        .I1(pa0_carry__4_0[13]),
        .O(pa0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pa0_carry__2_i_4
       (.I0(pa_reg[12]),
        .I1(pa0_carry__4_0[12]),
        .O(pa0_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 pa0_carry__3
       (.CI(pa0_carry__2_n_0),
        .CO({pa0_carry__3_n_0,NLW_pa0_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const0> ),
        .DI(pa_reg[19:16]),
        .O(sel__0[3:0]),
        .S({pa0_carry__3_i_1_n_0,pa0_carry__3_i_2_n_0,pa0_carry__3_i_3_n_0,pa0_carry__3_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    pa0_carry__3_i_1
       (.I0(pa_reg[19]),
        .I1(pa0_carry__4_0[19]),
        .O(pa0_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pa0_carry__3_i_2
       (.I0(pa_reg[18]),
        .I1(pa0_carry__4_0[18]),
        .O(pa0_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pa0_carry__3_i_3
       (.I0(pa_reg[17]),
        .I1(pa0_carry__4_0[17]),
        .O(pa0_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pa0_carry__3_i_4
       (.I0(pa_reg[16]),
        .I1(pa0_carry__4_0[16]),
        .O(pa0_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 pa0_carry__4
       (.CI(pa0_carry__3_n_0),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,pa_reg[22:20]}),
        .O(sel__0[7:4]),
        .S({S,pa0_carry__4_i_2_n_0,pa0_carry__4_i_3_n_0,pa0_carry__4_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    pa0_carry__4_i_2
       (.I0(pa_reg[22]),
        .I1(pa0_carry__4_0[22]),
        .O(pa0_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pa0_carry__4_i_3
       (.I0(pa_reg[21]),
        .I1(pa0_carry__4_0[21]),
        .O(pa0_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pa0_carry__4_i_4
       (.I0(pa_reg[20]),
        .I1(pa0_carry__4_0[20]),
        .O(pa0_carry__4_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pa0_carry_i_1
       (.I0(pa_reg[3]),
        .I1(pa0_carry__4_0[3]),
        .O(pa0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pa0_carry_i_2
       (.I0(pa_reg[2]),
        .I1(pa0_carry__4_0[2]),
        .O(pa0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pa0_carry_i_3
       (.I0(pa_reg[1]),
        .I1(pa0_carry__4_0[1]),
        .O(pa0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pa0_carry_i_4
       (.I0(pa_reg[0]),
        .I1(pa0_carry__4_0[0]),
        .O(pa0_carry_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \pa_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(O[0]),
        .Q(pa_reg[0]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \pa_reg[10] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\pa_reg[11]_0 [2]),
        .Q(pa_reg[10]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \pa_reg[11] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\pa_reg[11]_0 [3]),
        .Q(pa_reg[11]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \pa_reg[12] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\pa_reg[15]_0 [0]),
        .Q(pa_reg[12]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \pa_reg[13] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\pa_reg[15]_0 [1]),
        .Q(pa_reg[13]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \pa_reg[14] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\pa_reg[15]_0 [2]),
        .Q(pa_reg[14]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \pa_reg[15] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\pa_reg[15]_0 [3]),
        .Q(pa_reg[15]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \pa_reg[16] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\pa_reg[19]_0 [0]),
        .Q(pa_reg[16]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \pa_reg[17] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\pa_reg[19]_0 [1]),
        .Q(pa_reg[17]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \pa_reg[18] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\pa_reg[19]_0 [2]),
        .Q(pa_reg[18]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \pa_reg[19] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\pa_reg[19]_0 [3]),
        .Q(pa_reg[19]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \pa_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(O[1]),
        .Q(pa_reg[1]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \pa_reg[20] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\pa_reg[23]_0 [0]),
        .Q(pa_reg[20]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \pa_reg[21] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\pa_reg[23]_0 [1]),
        .Q(pa_reg[21]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \pa_reg[22] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\pa_reg[23]_0 [2]),
        .Q(pa_reg[22]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \pa_reg[23] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\pa_reg[23]_0 [3]),
        .Q(pa_reg[23]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \pa_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(O[2]),
        .Q(pa_reg[2]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \pa_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(O[3]),
        .Q(pa_reg[3]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \pa_reg[4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\pa_reg[7]_0 [0]),
        .Q(pa_reg[4]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \pa_reg[5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\pa_reg[7]_0 [1]),
        .Q(pa_reg[5]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \pa_reg[6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\pa_reg[7]_0 [2]),
        .Q(pa_reg[6]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \pa_reg[7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\pa_reg[7]_0 [3]),
        .Q(pa_reg[7]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \pa_reg[8] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\pa_reg[11]_0 [0]),
        .Q(pa_reg[8]),
        .R(Q));
  FDRE #(
    .INIT(1'b0)) 
    \pa_reg[9] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(next_sample),
        .D(\pa_reg[11]_0 [1]),
        .Q(pa_reg[9]),
        .R(Q));
  LUT2 #(
    .INIT(4'h2)) 
    sel_i_2
       (.I0(sel__0[7]),
        .I1(Q),
        .O(ADDRARDADDR[7]));
  LUT2 #(
    .INIT(4'h2)) 
    sel_i_3
       (.I0(sel__0[6]),
        .I1(Q),
        .O(ADDRARDADDR[6]));
  LUT2 #(
    .INIT(4'h2)) 
    sel_i_4
       (.I0(sel__0[5]),
        .I1(Q),
        .O(ADDRARDADDR[5]));
  LUT2 #(
    .INIT(4'h2)) 
    sel_i_5
       (.I0(sel__0[4]),
        .I1(Q),
        .O(ADDRARDADDR[4]));
  LUT2 #(
    .INIT(4'h2)) 
    sel_i_6
       (.I0(sel__0[3]),
        .I1(Q),
        .O(ADDRARDADDR[3]));
  LUT2 #(
    .INIT(4'h2)) 
    sel_i_7
       (.I0(sel__0[2]),
        .I1(Q),
        .O(ADDRARDADDR[2]));
  LUT2 #(
    .INIT(4'h2)) 
    sel_i_8
       (.I0(sel__0[1]),
        .I1(Q),
        .O(ADDRARDADDR[1]));
  LUT2 #(
    .INIT(4'h2)) 
    sel_i_9
       (.I0(sel__0[0]),
        .I1(Q),
        .O(ADDRARDADDR[0]));
endmodule

module sq_wave_gen
   (Q,
    CO,
    sq_wave_leds,
    \COUNT_MAX_reg[10]_0 ,
    \COUNT_MAX_reg[11]_0 ,
    \COUNT_MAX_reg[10]_1 ,
    mode_reg_0,
    \edge_detect_pulse_reg[1] ,
    \edge_detect_pulse_reg[3] ,
    \code_reg[4]_0 ,
    \code_reg[2]_0 ,
    \sample_counter_reg[0]_0 ,
    next_sample,
    CLK_125MHZ_FPGA_IBUF_BUFG,
    mode_reg_1,
    D,
    \code_reg[4]_1 ,
    \COUNT_MAX_reg[1]_0 ,
    \COUNT_MAX_reg[7]_0 ,
    \COUNT_MAX_reg[2]_0 ,
    \COUNT_MAX_reg[2]_1 ,
    \COUNT_MAX_reg[2]_2 ,
    \COUNT_MAX_reg[5]_0 ,
    \COUNT_MAX_reg[5]_1 ,
    wave_state_reg_0,
    E);
  output [3:0]Q;
  output [0:0]CO;
  output [0:0]sq_wave_leds;
  output [1:0]\COUNT_MAX_reg[10]_0 ;
  output [2:0]\COUNT_MAX_reg[11]_0 ;
  output \COUNT_MAX_reg[10]_1 ;
  output mode_reg_0;
  output \edge_detect_pulse_reg[1] ;
  output \edge_detect_pulse_reg[3] ;
  output \code_reg[4]_0 ;
  output \code_reg[2]_0 ;
  input \sample_counter_reg[0]_0 ;
  input next_sample;
  input CLK_125MHZ_FPGA_IBUF_BUFG;
  input mode_reg_1;
  input [2:0]D;
  input [1:0]\code_reg[4]_1 ;
  input [0:0]\COUNT_MAX_reg[1]_0 ;
  input \COUNT_MAX_reg[7]_0 ;
  input \COUNT_MAX_reg[2]_0 ;
  input \COUNT_MAX_reg[2]_1 ;
  input \COUNT_MAX_reg[2]_2 ;
  input \COUNT_MAX_reg[5]_0 ;
  input \COUNT_MAX_reg[5]_1 ;
  input wave_state_reg_0;
  input [0:0]E;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [0:0]CO;
  wire [11:0]COUNT_MAX;
  wire [10:1]COUNT_MAX1;
  wire [9:0]COUNT_MAX13_in;
  wire \COUNT_MAX[0]_i_3_n_0 ;
  wire \COUNT_MAX[0]_i_4_n_0 ;
  wire \COUNT_MAX[0]_i_5_n_0 ;
  wire \COUNT_MAX[0]_i_6_n_0 ;
  wire \COUNT_MAX[11]_i_11_n_0 ;
  wire \COUNT_MAX[11]_i_12_n_0 ;
  wire \COUNT_MAX[11]_i_13_n_0 ;
  wire \COUNT_MAX[11]_i_14_n_0 ;
  wire \COUNT_MAX[11]_i_15_n_0 ;
  wire \COUNT_MAX[11]_i_8_n_0 ;
  wire \COUNT_MAX[11]_i_9_n_0 ;
  wire \COUNT_MAX[1]_i_2_n_0 ;
  wire \COUNT_MAX[1]_i_3_n_0 ;
  wire \COUNT_MAX[1]_i_4_n_0 ;
  wire \COUNT_MAX[2]_i_2_n_0 ;
  wire \COUNT_MAX[2]_i_4_n_0 ;
  wire \COUNT_MAX[3]_i_3_n_0 ;
  wire \COUNT_MAX[3]_i_4_n_0 ;
  wire \COUNT_MAX[3]_i_5_n_0 ;
  wire \COUNT_MAX[5]_i_2_n_0 ;
  wire \COUNT_MAX[6]_i_2_n_0 ;
  wire \COUNT_MAX[7]_i_10_n_0 ;
  wire \COUNT_MAX[7]_i_12_n_0 ;
  wire \COUNT_MAX[7]_i_13_n_0 ;
  wire \COUNT_MAX[7]_i_14_n_0 ;
  wire \COUNT_MAX[7]_i_15_n_0 ;
  wire \COUNT_MAX[7]_i_16_n_0 ;
  wire \COUNT_MAX[7]_i_6_n_0 ;
  wire \COUNT_MAX[7]_i_7_n_0 ;
  wire \COUNT_MAX[7]_i_8_n_0 ;
  wire \COUNT_MAX[7]_i_9_n_0 ;
  wire \COUNT_MAX[8]_i_2_n_0 ;
  wire \COUNT_MAX[9]_i_2_n_0 ;
  wire \COUNT_MAX_reg[0]_i_2_n_0 ;
  wire [1:0]\COUNT_MAX_reg[10]_0 ;
  wire \COUNT_MAX_reg[10]_1 ;
  wire [2:0]\COUNT_MAX_reg[11]_0 ;
  wire [0:0]\COUNT_MAX_reg[1]_0 ;
  wire \COUNT_MAX_reg[2]_0 ;
  wire \COUNT_MAX_reg[2]_1 ;
  wire \COUNT_MAX_reg[2]_2 ;
  wire \COUNT_MAX_reg[3]_i_2_n_0 ;
  wire \COUNT_MAX_reg[5]_0 ;
  wire \COUNT_MAX_reg[5]_1 ;
  wire \COUNT_MAX_reg[7]_0 ;
  wire \COUNT_MAX_reg[7]_i_11_n_0 ;
  wire \COUNT_MAX_reg[7]_i_4_n_0 ;
  wire [2:0]D;
  wire [0:0]E;
  wire [3:0]Q;
  wire \code[2]_i_1_n_0 ;
  wire \code[4]_i_1_n_0 ;
  wire \code_reg[2]_0 ;
  wire \code_reg[4]_0 ;
  wire [1:0]\code_reg[4]_1 ;
  wire \edge_detect_pulse_reg[1] ;
  wire \edge_detect_pulse_reg[3] ;
  wire mode_reg_0;
  wire mode_reg_1;
  wire next_sample;
  wire [9:0]p_1_in__0;
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
  wire \sample_counter[0]_i_4_n_0 ;
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
  wire wave_state_i_1_n_0;
  wire wave_state_reg_0;
  wire [3:0]\NLW_COUNT_MAX_reg[0]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_COUNT_MAX_reg[3]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_COUNT_MAX_reg[3]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_COUNT_MAX_reg[7]_i_11_CO_UNCONNECTED ;
  wire [3:0]\NLW_COUNT_MAX_reg[7]_i_4_CO_UNCONNECTED ;
  wire [3:0]NLW_sample_counter0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_sample_counter0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_sample_counter0_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_sample_counter0_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_sample_counter1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_sample_counter1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_sample_counter1_carry__1_CO_UNCONNECTED;
  wire [3:0]\NLW_sample_counter_reg[0]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_sample_counter_reg[4]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF2000)) 
    \COUNT_MAX[0]_i_1 
       (.I0(COUNT_MAX13_in[0]),
        .I1(\COUNT_MAX_reg[1]_0 ),
        .I2(\code_reg[4]_1 [0]),
        .I3(mode_reg_0),
        .I4(\COUNT_MAX[0]_i_3_n_0 ),
        .I5(\COUNT_MAX[0]_i_4_n_0 ),
        .O(p_1_in__0[0]));
  LUT5 #(
    .INIT(32'h00D00000)) 
    \COUNT_MAX[0]_i_3 
       (.I0(\COUNT_MAX[11]_i_9_n_0 ),
        .I1(Q[0]),
        .I2(COUNT_MAX[1]),
        .I3(\COUNT_MAX_reg[7]_0 ),
        .I4(sq_wave_leds),
        .O(\COUNT_MAX[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAABABAAABA)) 
    \COUNT_MAX[0]_i_4 
       (.I0(\code_reg[4]_1 [1]),
        .I1(\COUNT_MAX[11]_i_9_n_0 ),
        .I2(COUNT_MAX[0]),
        .I3(\code_reg[4]_1 [0]),
        .I4(\COUNT_MAX_reg[1]_0 ),
        .I5(sq_wave_leds),
        .O(\COUNT_MAX[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \COUNT_MAX[0]_i_5 
       (.I0(COUNT_MAX[2]),
        .O(\COUNT_MAX[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \COUNT_MAX[0]_i_6 
       (.I0(COUNT_MAX[1]),
        .O(\COUNT_MAX[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000F0400000004)) 
    \COUNT_MAX[10]_i_2 
       (.I0(\COUNT_MAX[11]_i_9_n_0 ),
        .I1(COUNT_MAX1[10]),
        .I2(\code_reg[4]_1 [1]),
        .I3(sq_wave_leds),
        .I4(\COUNT_MAX_reg[7]_0 ),
        .I5(COUNT_MAX[11]),
        .O(\edge_detect_pulse_reg[3] ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \COUNT_MAX[11]_i_11 
       (.I0(Q[1]),
        .I1(COUNT_MAX[6]),
        .I2(COUNT_MAX[7]),
        .I3(COUNT_MAX[8]),
        .O(\COUNT_MAX[11]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \COUNT_MAX[11]_i_12 
       (.I0(COUNT_MAX[11]),
        .O(\COUNT_MAX[11]_i_12_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \COUNT_MAX[11]_i_13 
       (.I0(Q[3]),
        .O(\COUNT_MAX[11]_i_13_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \COUNT_MAX[11]_i_14 
       (.I0(Q[2]),
        .O(\COUNT_MAX[11]_i_14_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \COUNT_MAX[11]_i_15 
       (.I0(COUNT_MAX[8]),
        .O(\COUNT_MAX[11]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0D000D0D00000000)) 
    \COUNT_MAX[11]_i_4 
       (.I0(\code_reg[4]_1 [0]),
        .I1(\COUNT_MAX_reg[1]_0 ),
        .I2(\code_reg[4]_1 [1]),
        .I3(\COUNT_MAX[11]_i_8_n_0 ),
        .I4(sq_wave_leds),
        .I5(\COUNT_MAX[11]_i_9_n_0 ),
        .O(\edge_detect_pulse_reg[1] ));
  LUT3 #(
    .INIT(8'h1F)) 
    \COUNT_MAX[11]_i_8 
       (.I0(COUNT_MAX[1]),
        .I1(COUNT_MAX[2]),
        .I2(Q[0]),
        .O(\COUNT_MAX[11]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \COUNT_MAX[11]_i_9 
       (.I0(Q[3]),
        .I1(COUNT_MAX[4]),
        .I2(Q[2]),
        .I3(COUNT_MAX[11]),
        .I4(\COUNT_MAX[11]_i_11_n_0 ),
        .O(\COUNT_MAX[11]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00007500)) 
    \COUNT_MAX[1]_i_1 
       (.I0(\COUNT_MAX[2]_i_2_n_0 ),
        .I1(sq_wave_leds),
        .I2(COUNT_MAX13_in[1]),
        .I3(\code_reg[4]_1 [0]),
        .I4(\COUNT_MAX_reg[1]_0 ),
        .I5(\COUNT_MAX[1]_i_2_n_0 ),
        .O(p_1_in__0[1]));
  LUT6 #(
    .INIT(64'hEAFFEAFAEAAFEAAA)) 
    \COUNT_MAX[1]_i_2 
       (.I0(\COUNT_MAX[1]_i_3_n_0 ),
        .I1(COUNT_MAX[0]),
        .I2(sq_wave_leds),
        .I3(\COUNT_MAX_reg[7]_0 ),
        .I4(COUNT_MAX1[1]),
        .I5(COUNT_MAX[2]),
        .O(\COUNT_MAX[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAABABAAABA)) 
    \COUNT_MAX[1]_i_3 
       (.I0(\code_reg[4]_1 [1]),
        .I1(\COUNT_MAX[11]_i_11_n_0 ),
        .I2(\COUNT_MAX[1]_i_4_n_0 ),
        .I3(sq_wave_leds),
        .I4(\COUNT_MAX[11]_i_8_n_0 ),
        .I5(\COUNT_MAX_reg[7]_0 ),
        .O(\COUNT_MAX[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \COUNT_MAX[1]_i_4 
       (.I0(COUNT_MAX[11]),
        .I1(Q[2]),
        .I2(COUNT_MAX[4]),
        .I3(Q[3]),
        .O(\COUNT_MAX[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000FD5D)) 
    \COUNT_MAX[2]_i_1 
       (.I0(\COUNT_MAX[2]_i_2_n_0 ),
        .I1(COUNT_MAX13_in[2]),
        .I2(sq_wave_leds),
        .I3(COUNT_MAX[1]),
        .I4(\COUNT_MAX_reg[2]_0 ),
        .I5(\COUNT_MAX[2]_i_4_n_0 ),
        .O(p_1_in__0[2]));
  LUT2 #(
    .INIT(4'hE)) 
    \COUNT_MAX[2]_i_2 
       (.I0(\COUNT_MAX_reg[10]_1 ),
        .I1(mode_reg_0),
        .O(\COUNT_MAX[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h044404FF04440444)) 
    \COUNT_MAX[2]_i_4 
       (.I0(\COUNT_MAX_reg[2]_1 ),
        .I1(Q[0]),
        .I2(\COUNT_MAX[11]_i_8_n_0 ),
        .I3(\COUNT_MAX[11]_i_9_n_0 ),
        .I4(\COUNT_MAX_reg[2]_2 ),
        .I5(COUNT_MAX1[2]),
        .O(\COUNT_MAX[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8880000)) 
    \COUNT_MAX[3]_i_1 
       (.I0(\COUNT_MAX_reg[10]_1 ),
        .I1(COUNT_MAX[2]),
        .I2(mode_reg_0),
        .I3(COUNT_MAX13_in[3]),
        .I4(\COUNT_MAX_reg[7]_0 ),
        .I5(\COUNT_MAX[3]_i_3_n_0 ),
        .O(p_1_in__0[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFF08080B08)) 
    \COUNT_MAX[3]_i_3 
       (.I0(COUNT_MAX[4]),
        .I1(sq_wave_leds),
        .I2(\COUNT_MAX_reg[7]_0 ),
        .I3(COUNT_MAX1[3]),
        .I4(\COUNT_MAX[11]_i_9_n_0 ),
        .I5(\code_reg[4]_1 [1]),
        .O(\COUNT_MAX[3]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \COUNT_MAX[3]_i_4 
       (.I0(Q[0]),
        .O(\COUNT_MAX[3]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \COUNT_MAX[3]_i_5 
       (.I0(COUNT_MAX[1]),
        .O(\COUNT_MAX[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFF4FFFFFFF4)) 
    \COUNT_MAX[5]_i_1 
       (.I0(\COUNT_MAX_reg[5]_0 ),
        .I1(COUNT_MAX[4]),
        .I2(\edge_detect_pulse_reg[1] ),
        .I3(\COUNT_MAX[5]_i_2_n_0 ),
        .I4(COUNT_MAX13_in[5]),
        .I5(\COUNT_MAX_reg[5]_1 ),
        .O(p_1_in__0[5]));
  LUT6 #(
    .INIT(64'h2202330322020000)) 
    \COUNT_MAX[5]_i_2 
       (.I0(COUNT_MAX[6]),
        .I1(\code_reg[4]_1 [1]),
        .I2(\code_reg[4]_1 [0]),
        .I3(\COUNT_MAX_reg[1]_0 ),
        .I4(sq_wave_leds),
        .I5(COUNT_MAX1[5]),
        .O(\COUNT_MAX[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFF4FFFFFFF4)) 
    \COUNT_MAX[6]_i_1 
       (.I0(\COUNT_MAX_reg[5]_0 ),
        .I1(Q[1]),
        .I2(\edge_detect_pulse_reg[1] ),
        .I3(\COUNT_MAX[6]_i_2_n_0 ),
        .I4(COUNT_MAX13_in[6]),
        .I5(\COUNT_MAX_reg[5]_1 ),
        .O(p_1_in__0[6]));
  LUT6 #(
    .INIT(64'h2202330322020000)) 
    \COUNT_MAX[6]_i_2 
       (.I0(COUNT_MAX[7]),
        .I1(\code_reg[4]_1 [1]),
        .I2(\code_reg[4]_1 [0]),
        .I3(\COUNT_MAX_reg[1]_0 ),
        .I4(sq_wave_leds),
        .I5(COUNT_MAX1[6]),
        .O(\COUNT_MAX[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8880000)) 
    \COUNT_MAX[7]_i_1 
       (.I0(\COUNT_MAX_reg[10]_1 ),
        .I1(COUNT_MAX[6]),
        .I2(mode_reg_0),
        .I3(COUNT_MAX13_in[7]),
        .I4(\COUNT_MAX_reg[7]_0 ),
        .I5(\COUNT_MAX[7]_i_6_n_0 ),
        .O(p_1_in__0[7]));
  LUT6 #(
    .INIT(64'hFFFEFFFEFFFFFFFE)) 
    \COUNT_MAX[7]_i_10 
       (.I0(\COUNT_MAX[11]_i_11_n_0 ),
        .I1(COUNT_MAX[11]),
        .I2(Q[2]),
        .I3(\COUNT_MAX[7]_i_12_n_0 ),
        .I4(sq_wave_leds),
        .I5(\COUNT_MAX[11]_i_8_n_0 ),
        .O(\COUNT_MAX[7]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \COUNT_MAX[7]_i_12 
       (.I0(Q[3]),
        .I1(COUNT_MAX[4]),
        .O(\COUNT_MAX[7]_i_12_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \COUNT_MAX[7]_i_13 
       (.I0(COUNT_MAX[7]),
        .O(\COUNT_MAX[7]_i_13_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \COUNT_MAX[7]_i_14 
       (.I0(COUNT_MAX[6]),
        .O(\COUNT_MAX[7]_i_14_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \COUNT_MAX[7]_i_15 
       (.I0(Q[1]),
        .O(\COUNT_MAX[7]_i_15_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \COUNT_MAX[7]_i_16 
       (.I0(COUNT_MAX[4]),
        .O(\COUNT_MAX[7]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0000000075770000)) 
    \COUNT_MAX[7]_i_2 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(\COUNT_MAX[7]_i_7_n_0 ),
        .I3(\COUNT_MAX[7]_i_8_n_0 ),
        .I4(sq_wave_leds),
        .I5(COUNT_MAX[11]),
        .O(\COUNT_MAX_reg[10]_1 ));
  LUT6 #(
    .INIT(64'h4545455545454545)) 
    \COUNT_MAX[7]_i_3 
       (.I0(sq_wave_leds),
        .I1(\COUNT_MAX[7]_i_9_n_0 ),
        .I2(COUNT_MAX[11]),
        .I3(COUNT_MAX[4]),
        .I4(Q[3]),
        .I5(\COUNT_MAX[7]_i_7_n_0 ),
        .O(mode_reg_0));
  LUT6 #(
    .INIT(64'hCCCCFDFFCCCCFDDD)) 
    \COUNT_MAX[7]_i_6 
       (.I0(\COUNT_MAX[7]_i_10_n_0 ),
        .I1(\code_reg[4]_1 [1]),
        .I2(COUNT_MAX[8]),
        .I3(sq_wave_leds),
        .I4(\COUNT_MAX_reg[7]_0 ),
        .I5(COUNT_MAX1[7]),
        .O(\COUNT_MAX[7]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h575F)) 
    \COUNT_MAX[7]_i_7 
       (.I0(Q[0]),
        .I1(COUNT_MAX[1]),
        .I2(COUNT_MAX[2]),
        .I3(COUNT_MAX[0]),
        .O(\COUNT_MAX[7]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \COUNT_MAX[7]_i_8 
       (.I0(COUNT_MAX[4]),
        .I1(COUNT_MAX[7]),
        .I2(COUNT_MAX[6]),
        .I3(COUNT_MAX[8]),
        .I4(Q[1]),
        .O(\COUNT_MAX[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h1555555555555555)) 
    \COUNT_MAX[7]_i_9 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(COUNT_MAX[8]),
        .I3(COUNT_MAX[6]),
        .I4(COUNT_MAX[7]),
        .I5(Q[2]),
        .O(\COUNT_MAX[7]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFF4FFFFFFF4)) 
    \COUNT_MAX[8]_i_1 
       (.I0(\COUNT_MAX_reg[5]_0 ),
        .I1(COUNT_MAX[7]),
        .I2(\edge_detect_pulse_reg[1] ),
        .I3(\COUNT_MAX[8]_i_2_n_0 ),
        .I4(COUNT_MAX13_in[8]),
        .I5(\COUNT_MAX_reg[5]_1 ),
        .O(p_1_in__0[8]));
  LUT6 #(
    .INIT(64'h2202330322020000)) 
    \COUNT_MAX[8]_i_2 
       (.I0(Q[2]),
        .I1(\code_reg[4]_1 [1]),
        .I2(\code_reg[4]_1 [0]),
        .I3(\COUNT_MAX_reg[1]_0 ),
        .I4(sq_wave_leds),
        .I5(COUNT_MAX1[8]),
        .O(\COUNT_MAX[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFF4FFFFFFF4)) 
    \COUNT_MAX[9]_i_1 
       (.I0(\COUNT_MAX_reg[5]_0 ),
        .I1(COUNT_MAX[8]),
        .I2(\edge_detect_pulse_reg[1] ),
        .I3(\COUNT_MAX[9]_i_2_n_0 ),
        .I4(COUNT_MAX13_in[9]),
        .I5(\COUNT_MAX_reg[5]_1 ),
        .O(p_1_in__0[9]));
  LUT6 #(
    .INIT(64'h2202330322020000)) 
    \COUNT_MAX[9]_i_2 
       (.I0(Q[3]),
        .I1(\code_reg[4]_1 [1]),
        .I2(\code_reg[4]_1 [0]),
        .I3(\COUNT_MAX_reg[1]_0 ),
        .I4(sq_wave_leds),
        .I5(COUNT_MAX1[9]),
        .O(\COUNT_MAX[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \COUNT_MAX_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(p_1_in__0[0]),
        .Q(COUNT_MAX[0]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 \COUNT_MAX_reg[0]_i_2 
       (.CI(\<const0> ),
        .CO({\COUNT_MAX_reg[0]_i_2_n_0 ,\NLW_COUNT_MAX_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,COUNT_MAX[2:1],\<const0> }),
        .O({COUNT_MAX1[3:1],COUNT_MAX13_in[0]}),
        .S({Q[0],\COUNT_MAX[0]_i_5_n_0 ,\COUNT_MAX[0]_i_6_n_0 ,COUNT_MAX[0]}));
  FDRE #(
    .INIT(1'b0)) 
    \COUNT_MAX_reg[10] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(D[1]),
        .Q(Q[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \COUNT_MAX_reg[11] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(D[2]),
        .Q(COUNT_MAX[11]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \COUNT_MAX_reg[11]_i_10 
       (.CI(\COUNT_MAX_reg[7]_i_11_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,Q[3:2],COUNT_MAX[8]}),
        .O({\COUNT_MAX_reg[10]_0 [1],COUNT_MAX1[10:8]}),
        .S({\COUNT_MAX[11]_i_12_n_0 ,\COUNT_MAX[11]_i_13_n_0 ,\COUNT_MAX[11]_i_14_n_0 ,\COUNT_MAX[11]_i_15_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \COUNT_MAX_reg[11]_i_6 
       (.CI(\COUNT_MAX_reg[7]_i_4_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\COUNT_MAX_reg[11]_0 [2:1],COUNT_MAX13_in[9:8]}),
        .S({COUNT_MAX[11],Q[3:2],COUNT_MAX[8]}));
  FDRE #(
    .INIT(1'b1)) 
    \COUNT_MAX_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(p_1_in__0[1]),
        .Q(COUNT_MAX[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \COUNT_MAX_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(p_1_in__0[2]),
        .Q(COUNT_MAX[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b1)) 
    \COUNT_MAX_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(p_1_in__0[3]),
        .Q(Q[0]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 \COUNT_MAX_reg[3]_i_2 
       (.CI(\<const0> ),
        .CO({\COUNT_MAX_reg[3]_i_2_n_0 ,\NLW_COUNT_MAX_reg[3]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({Q[0],\<const0> ,COUNT_MAX[1],\<const0> }),
        .O({COUNT_MAX13_in[3:1],\NLW_COUNT_MAX_reg[3]_i_2_O_UNCONNECTED [0]}),
        .S({\COUNT_MAX[3]_i_4_n_0 ,COUNT_MAX[2],\COUNT_MAX[3]_i_5_n_0 ,COUNT_MAX[0]}));
  FDRE #(
    .INIT(1'b0)) 
    \COUNT_MAX_reg[4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(D[0]),
        .Q(COUNT_MAX[4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \COUNT_MAX_reg[5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(p_1_in__0[5]),
        .Q(Q[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \COUNT_MAX_reg[6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(p_1_in__0[6]),
        .Q(COUNT_MAX[6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b1)) 
    \COUNT_MAX_reg[7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(p_1_in__0[7]),
        .Q(COUNT_MAX[7]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \COUNT_MAX_reg[7]_i_11 
       (.CI(\COUNT_MAX_reg[0]_i_2_n_0 ),
        .CO({\COUNT_MAX_reg[7]_i_11_n_0 ,\NLW_COUNT_MAX_reg[7]_i_11_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({COUNT_MAX[7:6],Q[1],COUNT_MAX[4]}),
        .O({COUNT_MAX1[7:5],\COUNT_MAX_reg[10]_0 [0]}),
        .S({\COUNT_MAX[7]_i_13_n_0 ,\COUNT_MAX[7]_i_14_n_0 ,\COUNT_MAX[7]_i_15_n_0 ,\COUNT_MAX[7]_i_16_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \COUNT_MAX_reg[7]_i_4 
       (.CI(\COUNT_MAX_reg[3]_i_2_n_0 ),
        .CO({\COUNT_MAX_reg[7]_i_4_n_0 ,\NLW_COUNT_MAX_reg[7]_i_4_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({COUNT_MAX13_in[7:5],\COUNT_MAX_reg[11]_0 [0]}),
        .S({COUNT_MAX[7:6],Q[1],COUNT_MAX[4]}));
  FDRE #(
    .INIT(1'b0)) 
    \COUNT_MAX_reg[8] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(p_1_in__0[8]),
        .Q(COUNT_MAX[8]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \COUNT_MAX_reg[9] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(p_1_in__0[9]),
        .Q(Q[2]),
        .R(\<const0> ));
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT3 #(
    .INIT(8'h8B)) 
    \code[2]_i_1 
       (.I0(\code_reg[2]_0 ),
        .I1(\code_reg[4]_1 [1]),
        .I2(wave_state),
        .O(\code[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
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
        .D(mode_reg_1),
        .Q(sq_wave_leds),
        .R(\<const0> ));
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
       (.I0(sample_counter1[10]),
        .I1(sample_counter_reg[10]),
        .I2(sample_counter1[11]),
        .I3(sample_counter_reg[11]),
        .O(sample_counter0_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sample_counter0_carry__0_i_4
       (.I0(sample_counter1[8]),
        .I1(sample_counter_reg[8]),
        .I2(sample_counter1[9]),
        .I3(sample_counter_reg[9]),
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
       (.I0(sample_counter_reg[0]),
        .I1(COUNT_MAX[0]),
        .I2(sample_counter1[1]),
        .I3(sample_counter_reg[1]),
        .O(sample_counter0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sample_counter0_carry_i_5
       (.I0(sample_counter1[6]),
        .I1(sample_counter_reg[6]),
        .I2(sample_counter1[7]),
        .I3(sample_counter_reg[7]),
        .O(sample_counter0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sample_counter0_carry_i_6
       (.I0(sample_counter1[4]),
        .I1(sample_counter_reg[4]),
        .I2(sample_counter1[5]),
        .I3(sample_counter_reg[5]),
        .O(sample_counter0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sample_counter0_carry_i_7
       (.I0(sample_counter1[2]),
        .I1(sample_counter_reg[2]),
        .I2(sample_counter1[3]),
        .I3(sample_counter_reg[3]),
        .O(sample_counter0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h6006)) 
    sample_counter0_carry_i_8
       (.I0(sample_counter_reg[0]),
        .I1(COUNT_MAX[0]),
        .I2(sample_counter1[1]),
        .I3(sample_counter_reg[1]),
        .O(sample_counter0_carry_i_8_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 sample_counter1_carry
       (.CI(\<const0> ),
        .CO({sample_counter1_carry_n_0,NLW_sample_counter1_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(COUNT_MAX[0]),
        .DI({COUNT_MAX[4],Q[0],COUNT_MAX[2:1]}),
        .O(sample_counter1[4:1]),
        .S({sample_counter1_carry_i_1_n_0,sample_counter1_carry_i_2_n_0,sample_counter1_carry_i_3_n_0,sample_counter1_carry_i_4_n_0}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 sample_counter1_carry__0
       (.CI(sample_counter1_carry_n_0),
        .CO({sample_counter1_carry__0_n_0,NLW_sample_counter1_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const0> ),
        .DI({COUNT_MAX[8:6],Q[1]}),
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
       (.I0(Q[1]),
        .O(sample_counter1_carry__0_i_4_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 sample_counter1_carry__1
       (.CI(sample_counter1_carry__0_n_0),
        .CO({sample_counter1_carry__1_n_0,NLW_sample_counter1_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,COUNT_MAX[11],Q[3:2]}),
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
       (.I0(Q[3]),
        .O(sample_counter1_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sample_counter1_carry__1_i_3
       (.I0(Q[2]),
        .O(sample_counter1_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sample_counter1_carry_i_1
       (.I0(COUNT_MAX[4]),
        .O(sample_counter1_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sample_counter1_carry_i_2
       (.I0(Q[0]),
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
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \sample_counter_reg[0]_i_3 
       (.CI(\<const0> ),
        .CO({\sample_counter_reg[0]_i_3_n_0 ,\NLW_sample_counter_reg[0]_i_3_CO_UNCONNECTED [2:0]}),
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
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    wave_state_i_1
       (.I0(wave_state),
        .I1(CO),
        .I2(wave_state_reg_0),
        .I3(\code_reg[4]_1 [1]),
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
    \middle_reg[3]_inv_0 ,
    CLK_125MHZ_FPGA_IBUF_BUFG);
  output [3:0]Q;
  input [3:0]\middle_reg[3]_inv_0 ;
  input CLK_125MHZ_FPGA_IBUF_BUFG;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [3:0]Q;
  wire [3:0]middle;
  wire [3:0]\middle_reg[3]_inv_0 ;

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
        .D(\middle_reg[3]_inv_0 [0]),
        .Q(middle[0]),
        .R(\<const0> ));
  (* inverted = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \middle_reg[1]_inv 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\middle_reg[3]_inv_0 [1]),
        .Q(middle[1]),
        .R(\<const0> ));
  (* inverted = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \middle_reg[2]_inv 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\middle_reg[3]_inv_0 [2]),
        .Q(middle[2]),
        .R(\<const0> ));
  (* inverted = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \middle_reg[3]_inv 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\middle_reg[3]_inv_0 [3]),
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
   (AUD_PWM_OBUF,
    sel,
    Q,
    DI,
    \sync_signal_reg[0]_0 ,
    CO,
    DOADO,
    pwm0_carry__0_i_2,
    pwm0_carry__0_i_1_0,
    pwm0_carry__0,
    \fcw_reg[0] ,
    D,
    CLK_125MHZ_FPGA_IBUF_BUFG);
  output AUD_PWM_OBUF;
  output sel;
  output [1:0]Q;
  output [0:0]DI;
  output \sync_signal_reg[0]_0 ;
  input [0:0]CO;
  input [9:0]DOADO;
  input pwm0_carry__0_i_2;
  input pwm0_carry__0_i_1_0;
  input [1:0]pwm0_carry__0;
  input [0:0]\fcw_reg[0] ;
  input [1:0]D;
  input CLK_125MHZ_FPGA_IBUF_BUFG;

  wire \<const0> ;
  wire \<const1> ;
  wire AUD_PWM_OBUF;
  wire AUD_PWM_OBUF_inst_i_2_n_0;
  wire AUD_PWM_OBUF_inst_i_3_n_0;
  wire AUD_PWM_OBUF_inst_i_4_n_0;
  wire AUD_PWM_OBUF_inst_i_6_n_0;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [0:0]CO;
  wire [1:0]D;
  wire [0:0]DI;
  wire [9:0]DOADO;
  wire [1:0]Q;
  wire [0:0]\fcw_reg[0] ;
  wire \middle_reg[0]_inv_n_0 ;
  wire \middle_reg[1]_inv_n_0 ;
  wire [1:0]pwm0_carry__0;
  wire pwm0_carry__0_i_1_0;
  wire pwm0_carry__0_i_2;
  wire pwm0_carry__0_i_3_n_0;
  wire sel;
  wire \sync_signal_reg[0]_0 ;

  LUT6 #(
    .INIT(64'hAAAAA8AAAAAAAAAA)) 
    AUD_PWM_OBUF_inst_i_1
       (.I0(CO),
        .I1(AUD_PWM_OBUF_inst_i_2_n_0),
        .I2(AUD_PWM_OBUF_inst_i_3_n_0),
        .I3(AUD_PWM_OBUF_inst_i_4_n_0),
        .I4(sel),
        .I5(AUD_PWM_OBUF_inst_i_6_n_0),
        .O(AUD_PWM_OBUF));
  LUT5 #(
    .INIT(32'hFFF0EFE0)) 
    AUD_PWM_OBUF_inst_i_2
       (.I0(DOADO[9]),
        .I1(DOADO[4]),
        .I2(Q[0]),
        .I3(pwm0_carry__0_i_1_0),
        .I4(DOADO[5]),
        .O(AUD_PWM_OBUF_inst_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    AUD_PWM_OBUF_inst_i_3
       (.I0(DOADO[3]),
        .I1(Q[0]),
        .I2(pwm0_carry__0_i_2),
        .O(AUD_PWM_OBUF_inst_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    AUD_PWM_OBUF_inst_i_4
       (.I0(Q[0]),
        .I1(DOADO[1]),
        .O(AUD_PWM_OBUF_inst_i_4_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    AUD_PWM_OBUF_inst_i_5
       (.I0(DOADO[8]),
        .I1(Q[0]),
        .I2(pwm0_carry__0_i_2),
        .O(sel));
  LUT6 #(
    .INIT(64'h0000000003030347)) 
    AUD_PWM_OBUF_inst_i_6
       (.I0(DOADO[6]),
        .I1(Q[0]),
        .I2(pwm0_carry__0_i_2),
        .I3(DOADO[7]),
        .I4(DOADO[2]),
        .I5(DOADO[0]),
        .O(AUD_PWM_OBUF_inst_i_6_n_0));
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
  LUT2 #(
    .INIT(4'h7)) 
    \next_state[0]_i_2 
       (.I0(Q[0]),
        .I1(\fcw_reg[0] ),
        .O(\sync_signal_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF000000E2)) 
    pwm0_carry__0_i_1
       (.I0(pwm0_carry__0_i_2),
        .I1(Q[0]),
        .I2(DOADO[8]),
        .I3(pwm0_carry__0[0]),
        .I4(pwm0_carry__0[1]),
        .I5(pwm0_carry__0_i_3_n_0),
        .O(DI));
  LUT3 #(
    .INIT(8'hB8)) 
    pwm0_carry__0_i_3
       (.I0(DOADO[9]),
        .I1(Q[0]),
        .I2(pwm0_carry__0_i_1_0),
        .O(pwm0_carry__0_i_3_n_0));
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

(* B_PULSE_CNT_MAX = "200" *) (* B_SAMPLE_CNT_MAX = "62500" *) (* ECO_CHECKSUM = "6d3b019a" *) 
(* POWER_OPT_BRAM_CDC = "0" *) (* POWER_OPT_BRAM_SR_ADDR = "0" *) (* POWER_OPT_LOOPED_NET_PERCENTAGE = "0" *) 
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
  wire [10:3]COUNT_MAX;
  wire [11:4]COUNT_MAX1;
  wire [11:4]COUNT_MAX13_in;
  wire [5:0]LEDS;
  wire [5:0]LEDS_OBUF;
  wire [1:0]SWITCHES;
  wire [1:0]SWITCHES_IBUF;
  wire bp_n_0;
  wire bp_n_10;
  wire bp_n_11;
  wire bp_n_15;
  wire bp_n_16;
  wire bp_n_17;
  wire bp_n_18;
  wire bp_n_19;
  wire bp_n_20;
  wire bp_n_21;
  wire bp_n_22;
  wire bp_n_23;
  wire bp_n_24;
  wire bp_n_5;
  wire bp_n_6;
  wire bp_n_7;
  wire bp_n_8;
  wire bp_n_9;
  wire [3:0]buttons_pressed;
  wire [9:8]counter;
  wire dac_n_4;
  wire data0;
  wire [22:0]fcw;
  wire fsm_n_24;
  wire fsm_n_25;
  wire fsm_n_26;
  wire fsm_n_27;
  wire fsm_n_28;
  wire fsm_n_29;
  wire fsm_n_30;
  wire fsm_n_31;
  wire fsm_n_32;
  wire fsm_n_33;
  wire fsm_n_34;
  wire fsm_n_35;
  wire fsm_n_36;
  wire fsm_n_37;
  wire fsm_n_38;
  wire fsm_n_39;
  wire fsm_n_40;
  wire fsm_n_41;
  wire fsm_n_42;
  wire fsm_n_43;
  wire fsm_n_44;
  wire fsm_n_45;
  wire fsm_n_46;
  wire fsm_n_47;
  wire fsm_n_54;
  wire fsm_n_55;
  wire gen_n_11;
  wire gen_n_12;
  wire gen_n_13;
  wire gen_n_14;
  wire gen_n_15;
  wire gen_n_16;
  wire nco_n_24;
  wire nco_n_25;
  wire nco_n_26;
  wire nco_n_27;
  wire nco_n_28;
  wire nco_n_29;
  wire nco_n_30;
  wire nco_n_31;
  wire next_sample;
  wire [11:4]p_1_in__0;
  wire [23:0]pa_reg;
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
  wire switch_sync_n_1;
  wire switch_sync_n_4;
  wire switch_sync_n_5;
  wire [0:0]switches_sync;
  wire wr_en;

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
       (.I(LEDS_OBUF[0]),
        .O(LEDS[0]));
  OBUF \LEDS_OBUF[1]_inst 
       (.I(LEDS_OBUF[1]),
        .O(LEDS[1]));
  OBUF \LEDS_OBUF[2]_inst 
       (.I(LEDS_OBUF[2]),
        .O(LEDS[2]));
  OBUF \LEDS_OBUF[3]_inst 
       (.I(LEDS_OBUF[3]),
        .O(LEDS[3]));
  OBUF \LEDS_OBUF[4]_inst 
       (.I(LEDS_OBUF[4]),
        .O(LEDS[4]));
  OBUF \LEDS_OBUF[5]_inst 
       (.I(LEDS_OBUF[5]),
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
        .COUNT_MAX1({COUNT_MAX1[11],COUNT_MAX1[4]}),
        .COUNT_MAX13_in({COUNT_MAX13_in[11:10],COUNT_MAX13_in[4]}),
        .\COUNT_MAX_reg[10] (gen_n_14),
        .\COUNT_MAX_reg[11] (switches_sync),
        .\COUNT_MAX_reg[11]_0 ({COUNT_MAX[10:9],COUNT_MAX[5],COUNT_MAX[3]}),
        .\COUNT_MAX_reg[11]_1 (gen_n_13),
        .\COUNT_MAX_reg[11]_2 (gen_n_12),
        .\COUNT_MAX_reg[11]_3 (gen_n_11),
        .D({p_1_in__0[11:10],p_1_in__0[4]}),
        .E(bp_n_18),
        .LEDS_OBUF(LEDS_OBUF[5:4]),
        .Q(buttons_pressed),
        .SR(fsm_n_55),
        .\edge_detect_pulse_reg[0] (bp_n_5),
        .\edge_detect_pulse_reg[0]_0 (bp_n_9),
        .\edge_detect_pulse_reg[0]_1 (bp_n_10),
        .\edge_detect_pulse_reg[0]_2 (bp_n_11),
        .\edge_detect_pulse_reg[0]_3 (bp_n_21),
        .\edge_detect_pulse_reg[1] (bp_n_15),
        .\edge_detect_pulse_reg[1]_0 (bp_n_16),
        .\edge_detect_pulse_reg[1]_1 (bp_n_20),
        .\edge_detect_pulse_reg[2] (bp_n_7),
        .\edge_detect_pulse_reg[2]_0 (bp_n_8),
        .\edge_detect_pulse_reg[3] (bp_n_0),
        .\edge_detect_pulse_reg[3]_0 (bp_n_17),
        .\edge_detect_pulse_reg[3]_1 (bp_n_19),
        .\edge_detect_pulse_reg[3]_2 (bp_n_23),
        .\edge_detect_pulse_reg[3]_3 (bp_n_24),
        .\middle_reg[3]_inv (BUTTONS_IBUF),
        .\present_state_reg[0] (bp_n_6),
        .\sample_counter_reg[0] (dac_n_4),
        .sq_wave_leds(sq_wave_leds),
        .\sync_signal_reg[0] (bp_n_22),
        .wr_en(wr_en));
  dac dac
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CO(data0),
        .DI(switch_sync_n_4),
        .DOADO({sel_n_6,sel_n_8,sel_n_9,sel_n_10,sel_n_11,sel_n_12,sel_n_13,sel_n_14,sel_n_15}),
        .Q(switches_sync),
        .\counter_reg[0]_0 (dac_n_4),
        .\counter_reg[9]_0 (counter),
        .\counter_reg[9]_1 (buttons_pressed[3]),
        .next_sample(next_sample),
        .pwm0_carry_0(gen_n_16),
        .pwm0_carry__0_0(gen_n_15),
        .pwm0_carry__0_1(switch_sync_n_1));
  fsm fsm
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .LEDS_OBUF(LEDS_OBUF),
        .O({fsm_n_24,fsm_n_25,fsm_n_26,fsm_n_27}),
        .Q(fcw),
        .S(fsm_n_54),
        .SR(fsm_n_55),
        .\d_in_reg[0]_0 (bp_n_10),
        .\fcw_reg[0]_0 (switch_sync_n_5),
        .\fcw_reg[11]_0 ({fsm_n_32,fsm_n_33,fsm_n_34,fsm_n_35}),
        .\fcw_reg[11]_1 (bp_n_9),
        .\fcw_reg[15]_0 ({fsm_n_36,fsm_n_37,fsm_n_38,fsm_n_39}),
        .\fcw_reg[19]_0 ({fsm_n_40,fsm_n_41,fsm_n_42,fsm_n_43}),
        .\fcw_reg[22]_0 ({fsm_n_44,fsm_n_45,fsm_n_46,fsm_n_47}),
        .\fcw_reg[7]_0 ({fsm_n_28,fsm_n_29,fsm_n_30,fsm_n_31}),
        .\next_state_reg[0]_0 (bp_n_11),
        .\next_state_reg[0]_1 (bp_n_8),
        .\next_state_reg[1]_0 (switches_sync),
        .\next_state_reg[1]_1 (bp_n_5),
        .\next_state_reg[1]_2 (bp_n_6),
        .pa_reg(pa_reg),
        .\ram_reg[3][2] (buttons_pressed),
        .rd_en_reg_0(bp_n_7),
        .sq_wave_leds(sq_wave_leds),
        .wr_en(wr_en),
        .wr_en_reg_0(bp_n_21));
  sq_wave_gen gen
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CO(sample_counter0),
        .\COUNT_MAX_reg[10]_0 ({COUNT_MAX1[11],COUNT_MAX1[4]}),
        .\COUNT_MAX_reg[10]_1 (gen_n_11),
        .\COUNT_MAX_reg[11]_0 ({COUNT_MAX13_in[11:10],COUNT_MAX13_in[4]}),
        .\COUNT_MAX_reg[1]_0 (switches_sync),
        .\COUNT_MAX_reg[2]_0 (bp_n_24),
        .\COUNT_MAX_reg[2]_1 (bp_n_17),
        .\COUNT_MAX_reg[2]_2 (bp_n_19),
        .\COUNT_MAX_reg[5]_0 (bp_n_15),
        .\COUNT_MAX_reg[5]_1 (bp_n_16),
        .\COUNT_MAX_reg[7]_0 (bp_n_20),
        .D({p_1_in__0[11:10],p_1_in__0[4]}),
        .E(bp_n_18),
        .Q({COUNT_MAX[10:9],COUNT_MAX[5],COUNT_MAX[3]}),
        .\code_reg[2]_0 (gen_n_16),
        .\code_reg[4]_0 (gen_n_15),
        .\code_reg[4]_1 ({buttons_pressed[3],buttons_pressed[1]}),
        .\edge_detect_pulse_reg[1] (gen_n_13),
        .\edge_detect_pulse_reg[3] (gen_n_14),
        .mode_reg_0(gen_n_12),
        .mode_reg_1(bp_n_22),
        .next_sample(next_sample),
        .\sample_counter_reg[0]_0 (bp_n_0),
        .sq_wave_leds(sq_wave_leds),
        .wave_state_reg_0(dac_n_4));
  nco nco
       (.ADDRARDADDR({nco_n_24,nco_n_25,nco_n_26,nco_n_27,nco_n_28,nco_n_29,nco_n_30,nco_n_31}),
        .CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .O({fsm_n_24,fsm_n_25,fsm_n_26,fsm_n_27}),
        .Q(buttons_pressed[3]),
        .S(fsm_n_54),
        .next_sample(next_sample),
        .pa0_carry__4_0(fcw),
        .pa_reg(pa_reg),
        .\pa_reg[11]_0 ({fsm_n_32,fsm_n_33,fsm_n_34,fsm_n_35}),
        .\pa_reg[15]_0 ({fsm_n_36,fsm_n_37,fsm_n_38,fsm_n_39}),
        .\pa_reg[19]_0 ({fsm_n_40,fsm_n_41,fsm_n_42,fsm_n_43}),
        .\pa_reg[23]_0 ({fsm_n_44,fsm_n_45,fsm_n_46,fsm_n_47}),
        .\pa_reg[7]_0 ({fsm_n_28,fsm_n_29,fsm_n_30,fsm_n_31}));
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
    .INIT_FILE("NONE"),
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
       (.ADDRARDADDR({\<const0> ,\<const0> ,nco_n_24,nco_n_25,nco_n_26,nco_n_27,nco_n_28,nco_n_29,nco_n_30,nco_n_31,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .ADDRBWRADDR({\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .CLKARDCLK(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CLKBWRCLK(\<const0> ),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .DIBDI({\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .DIPADIP({\<const0> ,\<const0> }),
        .DIPBDIP({\<const1> ,\<const1> }),
        .DOADO({sel_n_6,sel_n_7,sel_n_8,sel_n_9,sel_n_10,sel_n_11,sel_n_12,sel_n_13,sel_n_14,sel_n_15}),
        .ENARDEN(bp_n_23),
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
       (.AUD_PWM_OBUF(AUD_PWM_OBUF),
        .CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CO(data0),
        .D(SWITCHES_IBUF),
        .DI(switch_sync_n_4),
        .DOADO({sel_n_6,sel_n_7,sel_n_8,sel_n_9,sel_n_10,sel_n_11,sel_n_12,sel_n_13,sel_n_14,sel_n_15}),
        .Q({AUD_SD_OBUF,switches_sync}),
        .\fcw_reg[0] (buttons_pressed[0]),
        .pwm0_carry__0(counter),
        .pwm0_carry__0_i_1_0(gen_n_15),
        .pwm0_carry__0_i_2(gen_n_16),
        .sel(switch_sync_n_1),
        .\sync_signal_reg[0]_0 (switch_sync_n_5));
endmodule
