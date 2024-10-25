// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Wed Oct 23 22:54:07 2024
// Host        : c111-19.EECS.Berkeley.EDU running 64-bit Red Hat Enterprise Linux release 8.10 (Ootpa)
// Command     : write_verilog -force post_route.v
// Design      : z1top
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module button_parser
   (\edge_detect_pulse_reg[0] ,
    \edge_detect_pulse_reg[0]_0 ,
    CLK_125MHZ_FPGA_IBUF_BUFG,
    BUTTONS_IBUF,
    tx_fifo_empty_delayed,
    \bit_counter_reg[1] ,
    .pwropt(debounced_signals),
    .pwropt_1(signal_in_d));
  output \edge_detect_pulse_reg[0] ;
  output \edge_detect_pulse_reg[0]_0 ;
  input CLK_125MHZ_FPGA_IBUF_BUFG;
  input [0:0]BUTTONS_IBUF;
  input tx_fifo_empty_delayed;
  input \bit_counter_reg[1] ;
     output [0:0]debounced_signals;
     output [0:0]signal_in_d;

  wire [0:0]BUTTONS_IBUF;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire \bit_counter_reg[1] ;
  wire button_debouncer_n_1;
  wire [0:0]debounced_signals;
  wire \edge_detect_pulse_reg[0] ;
  wire \edge_detect_pulse_reg[0]_0 ;
  wire [0:0]signal_in_d;
  wire [0:0]synchronized_signals;
  wire tx_fifo_empty_delayed;

  debouncer button_debouncer
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .\debounce_logic[0].debounced_signal_reg[0]_0 (button_debouncer_n_1),
        .debounced_signals(debounced_signals),
        .signal_in_d(signal_in_d),
        .synchronized_signals(synchronized_signals));
  edge_detector button_edge_detector
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .\bit_counter_reg[1] (\bit_counter_reg[1] ),
        .debounced_signals(debounced_signals),
        .\edge_detect_pulse_reg[0]_0 (\edge_detect_pulse_reg[0] ),
        .\edge_detect_pulse_reg[0]_1 (\edge_detect_pulse_reg[0]_0 ),
        .\edge_detect_pulse_reg[0]_2 (button_debouncer_n_1),
        .signal_in_d(signal_in_d),
        .tx_fifo_empty_delayed(tx_fifo_empty_delayed));
  synchronizer button_synchronizer
       (.BUTTONS_IBUF(BUTTONS_IBUF),
        .CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .synchronized_signals(synchronized_signals));
endmodule

module debouncer
   (debounced_signals,
    \debounce_logic[0].debounced_signal_reg[0]_0 ,
    CLK_125MHZ_FPGA_IBUF_BUFG,
    synchronized_signals,
    signal_in_d);
  output [0:0]debounced_signals;
  output \debounce_logic[0].debounced_signal_reg[0]_0 ;
  input CLK_125MHZ_FPGA_IBUF_BUFG;
  input [0:0]synchronized_signals;
  input [0:0]signal_in_d;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [15:1]data0;
  wire \debounce_logic[0].debounced_signal[0]_i_1_n_0 ;
  wire \debounce_logic[0].debounced_signal_reg[0]_0 ;
  wire \debounce_logic[0].saturating_counter[0][7]_i_1_n_0 ;
  wire \debounce_logic[0].saturating_counter[0][7]_i_4_n_0 ;
  wire \debounce_logic[0].saturating_counter[0][7]_i_5_n_0 ;
  wire \debounce_logic[0].saturating_counter[0][7]_i_6_n_0 ;
  wire \debounce_logic[0].saturating_counter[0][7]_i_7_n_0 ;
  wire \debounce_logic[0].saturating_counter[0][7]_i_8_n_0 ;
  wire \debounce_logic[0].saturating_counter[0][7]_i_9_n_0 ;
  wire [7:0]\debounce_logic[0].saturating_counter_reg[0]_0 ;
  wire [0:0]debounced_signals;
  wire [7:0]p_0_in;
  wire saturating_counter;
  wire [0:0]signal_in_d;
  wire [0:0]synchronized_signals;
  wire [15:0]wrapping_counter;
  wire \wrapping_counter[15]_i_1_n_0 ;
  wire \wrapping_counter[15]_i_3_n_0 ;
  wire \wrapping_counter[15]_i_4_n_0 ;
  wire [0:0]wrapping_counter_0;
  wire \wrapping_counter_reg[12]_i_1_n_0 ;
  wire \wrapping_counter_reg[4]_i_1_n_0 ;
  wire \wrapping_counter_reg[8]_i_1_n_0 ;
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
       (.I0(\debounce_logic[0].saturating_counter[0][7]_i_7_n_0 ),
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
        .Q(debounced_signals),
        .R(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \debounce_logic[0].saturating_counter[0][0]_i_1 
       (.I0(\debounce_logic[0].saturating_counter_reg[0]_0 [0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \debounce_logic[0].saturating_counter[0][3]_i_1 
       (.I0(\debounce_logic[0].saturating_counter_reg[0]_0 [3]),
        .I1(\debounce_logic[0].saturating_counter_reg[0]_0 [2]),
        .I2(\debounce_logic[0].saturating_counter_reg[0]_0 [0]),
        .I3(\debounce_logic[0].saturating_counter_reg[0]_0 [1]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \debounce_logic[0].saturating_counter[0][4]_i_1 
       (.I0(\debounce_logic[0].saturating_counter_reg[0]_0 [4]),
        .I1(\debounce_logic[0].saturating_counter_reg[0]_0 [3]),
        .I2(\debounce_logic[0].saturating_counter_reg[0]_0 [1]),
        .I3(\debounce_logic[0].saturating_counter_reg[0]_0 [0]),
        .I4(\debounce_logic[0].saturating_counter_reg[0]_0 [2]),
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
  LUT5 #(
    .INIT(32'hA6AAAAAA)) 
    \debounce_logic[0].saturating_counter[0][6]_i_1 
       (.I0(\debounce_logic[0].saturating_counter_reg[0]_0 [6]),
        .I1(\debounce_logic[0].saturating_counter_reg[0]_0 [3]),
        .I2(\debounce_logic[0].saturating_counter[0][7]_i_7_n_0 ),
        .I3(\debounce_logic[0].saturating_counter_reg[0]_0 [4]),
        .I4(\debounce_logic[0].saturating_counter_reg[0]_0 [5]),
        .O(p_0_in[6]));
  LUT5 #(
    .INIT(32'h00008000)) 
    \debounce_logic[0].saturating_counter[0][7]_i_1 
       (.I0(\debounce_logic[0].saturating_counter[0][7]_i_4_n_0 ),
        .I1(\debounce_logic[0].saturating_counter[0][7]_i_5_n_0 ),
        .I2(\debounce_logic[0].saturating_counter[0][7]_i_6_n_0 ),
        .I3(\wrapping_counter[15]_i_3_n_0 ),
        .I4(synchronized_signals),
        .O(\debounce_logic[0].saturating_counter[0][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2FFF000000000000)) 
    \debounce_logic[0].saturating_counter[0][7]_i_2 
       (.I0(\debounce_logic[0].saturating_counter[0][7]_i_7_n_0 ),
        .I1(\debounce_logic[0].saturating_counter[0][7]_i_8_n_0 ),
        .I2(\debounce_logic[0].saturating_counter_reg[0]_0 [6]),
        .I3(\debounce_logic[0].saturating_counter_reg[0]_0 [7]),
        .I4(\debounce_logic[0].saturating_counter[0][7]_i_9_n_0 ),
        .I5(\wrapping_counter[15]_i_4_n_0 ),
        .O(saturating_counter));
  LUT6 #(
    .INIT(64'hAA6AAAAAAAAAAAAA)) 
    \debounce_logic[0].saturating_counter[0][7]_i_3 
       (.I0(\debounce_logic[0].saturating_counter_reg[0]_0 [7]),
        .I1(\debounce_logic[0].saturating_counter_reg[0]_0 [5]),
        .I2(\debounce_logic[0].saturating_counter_reg[0]_0 [4]),
        .I3(\debounce_logic[0].saturating_counter[0][7]_i_7_n_0 ),
        .I4(\debounce_logic[0].saturating_counter_reg[0]_0 [3]),
        .I5(\debounce_logic[0].saturating_counter_reg[0]_0 [6]),
        .O(p_0_in[7]));
  LUT4 #(
    .INIT(16'h8000)) 
    \debounce_logic[0].saturating_counter[0][7]_i_4 
       (.I0(wrapping_counter[15]),
        .I1(wrapping_counter[14]),
        .I2(wrapping_counter[13]),
        .I3(wrapping_counter[12]),
        .O(\debounce_logic[0].saturating_counter[0][7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \debounce_logic[0].saturating_counter[0][7]_i_5 
       (.I0(wrapping_counter[11]),
        .I1(wrapping_counter[10]),
        .I2(wrapping_counter[9]),
        .I3(wrapping_counter[8]),
        .O(\debounce_logic[0].saturating_counter[0][7]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \debounce_logic[0].saturating_counter[0][7]_i_6 
       (.I0(wrapping_counter[1]),
        .I1(wrapping_counter[0]),
        .I2(wrapping_counter[3]),
        .I3(wrapping_counter[2]),
        .O(\debounce_logic[0].saturating_counter[0][7]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \debounce_logic[0].saturating_counter[0][7]_i_7 
       (.I0(\debounce_logic[0].saturating_counter_reg[0]_0 [1]),
        .I1(\debounce_logic[0].saturating_counter_reg[0]_0 [0]),
        .I2(\debounce_logic[0].saturating_counter_reg[0]_0 [2]),
        .O(\debounce_logic[0].saturating_counter[0][7]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \debounce_logic[0].saturating_counter[0][7]_i_8 
       (.I0(\debounce_logic[0].saturating_counter_reg[0]_0 [4]),
        .I1(\debounce_logic[0].saturating_counter_reg[0]_0 [3]),
        .I2(\debounce_logic[0].saturating_counter_reg[0]_0 [5]),
        .O(\debounce_logic[0].saturating_counter[0][7]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \debounce_logic[0].saturating_counter[0][7]_i_9 
       (.I0(wrapping_counter[2]),
        .I1(wrapping_counter[3]),
        .I2(wrapping_counter[0]),
        .I3(wrapping_counter[1]),
        .I4(\wrapping_counter[15]_i_3_n_0 ),
        .O(\debounce_logic[0].saturating_counter[0][7]_i_9_n_0 ));
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
  LUT2 #(
    .INIT(4'h2)) 
    \edge_detect_pulse[0]_i_1 
       (.I0(debounced_signals),
        .I1(signal_in_d),
        .O(\debounce_logic[0].debounced_signal_reg[0]_0 ));
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
        .I4(\debounce_logic[0].saturating_counter[0][7]_i_5_n_0 ),
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
        .D(data0[10]),
        .Q(wrapping_counter[10]),
        .R(\wrapping_counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrapping_counter_reg[11] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(data0[11]),
        .Q(wrapping_counter[11]),
        .R(\wrapping_counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrapping_counter_reg[12] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(data0[12]),
        .Q(wrapping_counter[12]),
        .R(\wrapping_counter[15]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \wrapping_counter_reg[12]_i_1 
       (.CI(\wrapping_counter_reg[8]_i_1_n_0 ),
        .CO({\wrapping_counter_reg[12]_i_1_n_0 ,\NLW_wrapping_counter_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data0[12:9]),
        .S(wrapping_counter[12:9]));
  FDRE #(
    .INIT(1'b0)) 
    \wrapping_counter_reg[13] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(data0[13]),
        .Q(wrapping_counter[13]),
        .R(\wrapping_counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrapping_counter_reg[14] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(data0[14]),
        .Q(wrapping_counter[14]),
        .R(\wrapping_counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrapping_counter_reg[15] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(data0[15]),
        .Q(wrapping_counter[15]),
        .R(\wrapping_counter[15]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \wrapping_counter_reg[15]_i_2 
       (.CI(\wrapping_counter_reg[12]_i_1_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data0[15:13]),
        .S({\<const0> ,wrapping_counter[15:13]}));
  FDRE #(
    .INIT(1'b0)) 
    \wrapping_counter_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(data0[1]),
        .Q(wrapping_counter[1]),
        .R(\wrapping_counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrapping_counter_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(data0[2]),
        .Q(wrapping_counter[2]),
        .R(\wrapping_counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrapping_counter_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(data0[3]),
        .Q(wrapping_counter[3]),
        .R(\wrapping_counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrapping_counter_reg[4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(data0[4]),
        .Q(wrapping_counter[4]),
        .R(\wrapping_counter[15]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \wrapping_counter_reg[4]_i_1 
       (.CI(\<const0> ),
        .CO({\wrapping_counter_reg[4]_i_1_n_0 ,\NLW_wrapping_counter_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(wrapping_counter[0]),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data0[4:1]),
        .S(wrapping_counter[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \wrapping_counter_reg[5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(data0[5]),
        .Q(wrapping_counter[5]),
        .R(\wrapping_counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrapping_counter_reg[6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(data0[6]),
        .Q(wrapping_counter[6]),
        .R(\wrapping_counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrapping_counter_reg[7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(data0[7]),
        .Q(wrapping_counter[7]),
        .R(\wrapping_counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrapping_counter_reg[8] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(data0[8]),
        .Q(wrapping_counter[8]),
        .R(\wrapping_counter[15]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \wrapping_counter_reg[8]_i_1 
       (.CI(\wrapping_counter_reg[4]_i_1_n_0 ),
        .CO({\wrapping_counter_reg[8]_i_1_n_0 ,\NLW_wrapping_counter_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data0[8:5]),
        .S(wrapping_counter[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \wrapping_counter_reg[9] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(data0[9]),
        .Q(wrapping_counter[9]),
        .R(\wrapping_counter[15]_i_1_n_0 ));
endmodule

module edge_detector
   (signal_in_d,
    \edge_detect_pulse_reg[0]_0 ,
    \edge_detect_pulse_reg[0]_1 ,
    debounced_signals,
    CLK_125MHZ_FPGA_IBUF_BUFG,
    \edge_detect_pulse_reg[0]_2 ,
    tx_fifo_empty_delayed,
    \bit_counter_reg[1] );
  output [0:0]signal_in_d;
  output \edge_detect_pulse_reg[0]_0 ;
  output \edge_detect_pulse_reg[0]_1 ;
  input [0:0]debounced_signals;
  input CLK_125MHZ_FPGA_IBUF_BUFG;
  input \edge_detect_pulse_reg[0]_2 ;
  input tx_fifo_empty_delayed;
  input \bit_counter_reg[1] ;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire \bit_counter_reg[1] ;
  wire [0:0]debounced_signals;
  wire \edge_detect_pulse_reg[0]_0 ;
  wire \edge_detect_pulse_reg[0]_1 ;
  wire \edge_detect_pulse_reg[0]_2 ;
  wire [0:0]signal_in_d;
  wire tx_fifo_empty_delayed;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT3 #(
    .INIT(8'hAB)) 
    \bit_counter[2]_i_2 
       (.I0(\edge_detect_pulse_reg[0]_0 ),
        .I1(tx_fifo_empty_delayed),
        .I2(\bit_counter_reg[1] ),
        .O(\edge_detect_pulse_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \edge_detect_pulse_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\edge_detect_pulse_reg[0]_2 ),
        .Q(\edge_detect_pulse_reg[0]_0 ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \signal_in_d_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(debounced_signals),
        .Q(signal_in_d),
        .R(\<const0> ));
endmodule

module fifo
   (\read_ptr_reg[0]_0 ,
    \fifo_count_reg[3]_0 ,
    has_byte_reg,
    dout,
    \fifo_count_reg[3]_1 ,
    CLK_125MHZ_FPGA_IBUF_BUFG,
    \read_ptr_reg[0]_1 ,
    \dout_reg[7]_0 ,
    \read_ptr_reg[2]_0 ,
    \fifo_count_reg[2]_0 ,
    has_byte,
    has_byte0,
    E);
  output [0:0]\read_ptr_reg[0]_0 ;
  output \fifo_count_reg[3]_0 ;
  output has_byte_reg;
  output [7:0]dout;
  input \fifo_count_reg[3]_1 ;
  input CLK_125MHZ_FPGA_IBUF_BUFG;
  input \read_ptr_reg[0]_1 ;
  input [7:0]\dout_reg[7]_0 ;
  input [0:0]\read_ptr_reg[2]_0 ;
  input \fifo_count_reg[2]_0 ;
  input has_byte;
  input has_byte0;
  input [0:0]E;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [0:0]E;
  wire [7:0]dout;
  wire [7:0]dout0__0;
  wire [7:0]\dout_reg[7]_0 ;
  wire [3:0]fifo_count;
  wire \fifo_count[3]_i_1_n_0 ;
  wire [3:0]fifo_count_reg;
  wire \fifo_count_reg[2]_0 ;
  wire \fifo_count_reg[3]_0 ;
  wire \fifo_count_reg[3]_1 ;
  wire has_byte;
  wire has_byte0;
  wire has_byte_i_3_n_0;
  wire has_byte_reg;
  wire [1:1]p_0_in;
  wire p_0_in0_out__0;
  wire [2:1]read_ptr;
  wire \read_ptr[1]_i_1_n_0 ;
  wire \read_ptr[2]_i_1_n_0 ;
  wire [0:0]\read_ptr_reg[0]_0 ;
  wire \read_ptr_reg[0]_1 ;
  wire [0:0]\read_ptr_reg[2]_0 ;
  wire [2:0]write_ptr;
  wire \write_ptr[0]_i_1_n_0 ;
  wire \write_ptr[1]_i_1_n_0 ;
  wire \write_ptr[2]_i_1_n_0 ;

  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_onehot_curr_state[7]_i_4 
       (.I0(fifo_count_reg[3]),
        .I1(fifo_count_reg[2]),
        .I2(fifo_count_reg[0]),
        .I3(fifo_count_reg[1]),
        .O(\fifo_count_reg[3]_0 ));
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(dout0__0[0]),
        .Q(dout[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(dout0__0[1]),
        .Q(dout[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(dout0__0[2]),
        .Q(dout[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(dout0__0[3]),
        .Q(dout[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(dout0__0[4]),
        .Q(dout[4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(dout0__0[5]),
        .Q(dout[5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(dout0__0[6]),
        .Q(dout[6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(dout0__0[7]),
        .Q(dout[7]),
        .R(\<const0> ));
  LUT1 #(
    .INIT(2'h1)) 
    \fifo_count[0]_i_1 
       (.I0(fifo_count_reg[0]),
        .O(fifo_count[0]));
  LUT3 #(
    .INIT(8'h69)) 
    \fifo_count[1]_i_1 
       (.I0(p_0_in),
        .I1(fifo_count_reg[1]),
        .I2(fifo_count_reg[0]),
        .O(fifo_count[1]));
  LUT6 #(
    .INIT(64'hBD43BD42FC03FC03)) 
    \fifo_count[2]_i_1 
       (.I0(\fifo_count_reg[2]_0 ),
        .I1(fifo_count_reg[1]),
        .I2(fifo_count_reg[0]),
        .I3(fifo_count_reg[2]),
        .I4(fifo_count_reg[3]),
        .I5(has_byte),
        .O(fifo_count[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \fifo_count[3]_i_1 
       (.I0(p_0_in),
        .I1(\read_ptr_reg[2]_0 ),
        .O(\fifo_count[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFF4000FCFC0203)) 
    \fifo_count[3]_i_2 
       (.I0(\fifo_count_reg[2]_0 ),
        .I1(fifo_count_reg[1]),
        .I2(fifo_count_reg[0]),
        .I3(has_byte),
        .I4(fifo_count_reg[3]),
        .I5(fifo_count_reg[2]),
        .O(fifo_count[3]));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_count_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\fifo_count[3]_i_1_n_0 ),
        .D(fifo_count[0]),
        .Q(fifo_count_reg[0]),
        .R(\fifo_count_reg[3]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_count_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\fifo_count[3]_i_1_n_0 ),
        .D(fifo_count[1]),
        .Q(fifo_count_reg[1]),
        .R(\fifo_count_reg[3]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_count_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\fifo_count[3]_i_1_n_0 ),
        .D(fifo_count[2]),
        .Q(fifo_count_reg[2]),
        .R(\fifo_count_reg[3]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_count_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\fifo_count[3]_i_1_n_0 ),
        .D(fifo_count[3]),
        .Q(fifo_count_reg[3]),
        .R(\fifo_count_reg[3]_1 ));
  LUT6 #(
    .INIT(64'h00000000CCCCCCEC)) 
    has_byte_i_1
       (.I0(has_byte),
        .I1(has_byte0),
        .I2(fifo_count_reg[3]),
        .I3(fifo_count_reg[2]),
        .I4(has_byte_i_3_n_0),
        .I5(\fifo_count_reg[3]_1 ),
        .O(has_byte_reg));
  LUT2 #(
    .INIT(4'hE)) 
    has_byte_i_3
       (.I0(fifo_count_reg[1]),
        .I1(fifo_count_reg[0]),
        .O(has_byte_i_3_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "rx_fifo/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    mem_reg_0_7_0_5
       (.ADDRA({\<const0> ,\<const0> ,read_ptr,\read_ptr_reg[0]_0 }),
        .ADDRB({\<const0> ,\<const0> ,read_ptr,\read_ptr_reg[0]_0 }),
        .ADDRC({\<const0> ,\<const0> ,read_ptr,\read_ptr_reg[0]_0 }),
        .ADDRD({\<const0> ,\<const0> ,write_ptr}),
        .DIA(\dout_reg[7]_0 [1:0]),
        .DIB(\dout_reg[7]_0 [3:2]),
        .DIC(\dout_reg[7]_0 [5:4]),
        .DID({\<const0> ,\<const0> }),
        .DOA(dout0__0[1:0]),
        .DOB(dout0__0[3:2]),
        .DOC(dout0__0[5:4]),
        .WCLK(CLK_125MHZ_FPGA_IBUF_BUFG),
        .WE(p_0_in0_out__0));
  LUT2 #(
    .INIT(4'h2)) 
    mem_reg_0_7_0_5_i_1
       (.I0(p_0_in),
        .I1(\fifo_count_reg[3]_1 ),
        .O(p_0_in0_out__0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "rx_fifo/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "7" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_7_6_7
       (.A0(write_ptr[0]),
        .A1(write_ptr[1]),
        .A2(write_ptr[2]),
        .A3(\<const0> ),
        .A4(\<const0> ),
        .D(\dout_reg[7]_0 [6]),
        .DPO(dout0__0[6]),
        .DPRA0(\read_ptr_reg[0]_0 ),
        .DPRA1(read_ptr[1]),
        .DPRA2(read_ptr[2]),
        .DPRA3(\<const0> ),
        .DPRA4(\<const0> ),
        .WCLK(CLK_125MHZ_FPGA_IBUF_BUFG),
        .WE(p_0_in0_out__0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "rx_fifo/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "7" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_7_6_7__0
       (.A0(write_ptr[0]),
        .A1(write_ptr[1]),
        .A2(write_ptr[2]),
        .A3(\<const0> ),
        .A4(\<const0> ),
        .D(\dout_reg[7]_0 [7]),
        .DPO(dout0__0[7]),
        .DPRA0(\read_ptr_reg[0]_0 ),
        .DPRA1(read_ptr[1]),
        .DPRA2(read_ptr[2]),
        .DPRA3(\<const0> ),
        .DPRA4(\<const0> ),
        .WCLK(CLK_125MHZ_FPGA_IBUF_BUFG),
        .WE(p_0_in0_out__0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \read_ptr[1]_i_1 
       (.I0(\read_ptr_reg[0]_0 ),
        .I1(\read_ptr_reg[2]_0 ),
        .I2(read_ptr[1]),
        .O(\read_ptr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \read_ptr[2]_i_1 
       (.I0(\read_ptr_reg[0]_0 ),
        .I1(read_ptr[1]),
        .I2(\read_ptr_reg[2]_0 ),
        .I3(read_ptr[2]),
        .O(\read_ptr[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \read_ptr_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\read_ptr_reg[0]_1 ),
        .Q(\read_ptr_reg[0]_0 ),
        .R(\fifo_count_reg[3]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \read_ptr_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\read_ptr[1]_i_1_n_0 ),
        .Q(read_ptr[1]),
        .R(\fifo_count_reg[3]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \read_ptr_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\read_ptr[2]_i_1_n_0 ),
        .Q(read_ptr[2]),
        .R(\fifo_count_reg[3]_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \write_ptr[0]_i_1 
       (.I0(p_0_in),
        .I1(write_ptr[0]),
        .O(\write_ptr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \write_ptr[1]_i_1 
       (.I0(write_ptr[0]),
        .I1(p_0_in),
        .I2(write_ptr[1]),
        .O(\write_ptr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \write_ptr[2]_i_1 
       (.I0(write_ptr[0]),
        .I1(write_ptr[1]),
        .I2(p_0_in),
        .I3(write_ptr[2]),
        .O(\write_ptr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAAAA2)) 
    \write_ptr[2]_i_2 
       (.I0(has_byte),
        .I1(fifo_count_reg[3]),
        .I2(fifo_count_reg[2]),
        .I3(fifo_count_reg[0]),
        .I4(fifo_count_reg[1]),
        .I5(\fifo_count_reg[2]_0 ),
        .O(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \write_ptr_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\write_ptr[0]_i_1_n_0 ),
        .Q(write_ptr[0]),
        .R(\fifo_count_reg[3]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \write_ptr_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\write_ptr[1]_i_1_n_0 ),
        .Q(write_ptr[1]),
        .R(\fifo_count_reg[3]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \write_ptr_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\write_ptr[2]_i_1_n_0 ),
        .Q(write_ptr[2]),
        .R(\fifo_count_reg[3]_1 ));
endmodule

(* ORIG_REF_NAME = "fifo" *) 
module fifo_0
   (D,
    tx_fifo_empty,
    \FSM_onehot_curr_state_reg[6] ,
    dout,
    CLK_125MHZ_FPGA_IBUF_BUFG,
    \dout_reg[6]_0 ,
    \dout_reg[7]_0 ,
    \fifo_count_reg[0]_0 ,
    \tx_shift_reg[8] ,
    switches_sync,
    Q,
    \read_ptr_reg[0]_0 ,
    din);
  output [0:0]D;
  output tx_fifo_empty;
  output [1:0]\FSM_onehot_curr_state_reg[6] ;
  output [6:0]dout;
  input CLK_125MHZ_FPGA_IBUF_BUFG;
  input \dout_reg[6]_0 ;
  input \dout_reg[7]_0 ;
  input \fifo_count_reg[0]_0 ;
  input \tx_shift_reg[8] ;
  input switches_sync;
  input [1:0]Q;
  input \read_ptr_reg[0]_0 ;
  input [5:0]din;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [0:0]D;
  wire [1:0]\FSM_onehot_curr_state_reg[6] ;
  wire [1:0]Q;
  wire [5:0]din;
  wire [6:0]dout;
  wire [7:0]dout0;
  wire \dout[7]_i_1__0_n_0 ;
  wire \dout_reg[6]_0 ;
  wire \dout_reg[7]_0 ;
  wire \dout_reg_n_0_[7] ;
  wire \fifo_count[3]_i_1__0_n_0 ;
  wire [3:0]fifo_count__0;
  wire [3:0]fifo_count_reg;
  wire \fifo_count_reg[0]_0 ;
  wire [0:0]p_0_in;
  wire p_0_in0_out;
  wire [2:0]read_ptr;
  wire \read_ptr[0]_i_1__0_n_0 ;
  wire \read_ptr[1]_i_1__0_n_0 ;
  wire \read_ptr[2]_i_1__0_n_0 ;
  wire \read_ptr_reg[0]_0 ;
  wire switches_sync;
  wire tx_fifo_empty;
  wire \tx_shift_reg[8] ;
  wire [2:0]write_ptr;
  wire \write_ptr[0]_i_1__0_n_0 ;
  wire \write_ptr[1]_i_1__0_n_0 ;
  wire \write_ptr[2]_i_1__0_n_0 ;
  wire \write_ptr[2]_i_2__0_n_0 ;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFB0000)) 
    \FSM_onehot_curr_state[0]_i_1 
       (.I0(fifo_count_reg[2]),
        .I1(fifo_count_reg[3]),
        .I2(fifo_count_reg[0]),
        .I3(fifo_count_reg[1]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\FSM_onehot_curr_state_reg[6] [0]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h00000200)) 
    \FSM_onehot_curr_state[7]_i_2 
       (.I0(Q[1]),
        .I1(fifo_count_reg[1]),
        .I2(fifo_count_reg[0]),
        .I3(fifo_count_reg[3]),
        .I4(fifo_count_reg[2]),
        .O(\FSM_onehot_curr_state_reg[6] [1]));
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'h000000000000FFFE)) 
    \dout[7]_i_1__0 
       (.I0(fifo_count_reg[3]),
        .I1(fifo_count_reg[2]),
        .I2(fifo_count_reg[0]),
        .I3(fifo_count_reg[1]),
        .I4(\read_ptr_reg[0]_0 ),
        .I5(\fifo_count_reg[0]_0 ),
        .O(\dout[7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\dout[7]_i_1__0_n_0 ),
        .D(dout0[0]),
        .Q(dout[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\dout[7]_i_1__0_n_0 ),
        .D(dout0[1]),
        .Q(dout[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\dout[7]_i_1__0_n_0 ),
        .D(dout0[2]),
        .Q(dout[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\dout[7]_i_1__0_n_0 ),
        .D(dout0[3]),
        .Q(dout[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\dout[7]_i_1__0_n_0 ),
        .D(dout0[4]),
        .Q(dout[4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\dout[7]_i_1__0_n_0 ),
        .D(dout0[5]),
        .Q(dout[5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\dout[7]_i_1__0_n_0 ),
        .D(dout0[6]),
        .Q(dout[6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\dout[7]_i_1__0_n_0 ),
        .D(dout0[7]),
        .Q(\dout_reg_n_0_[7] ),
        .R(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \fifo_count[0]_i_1__0 
       (.I0(fifo_count_reg[0]),
        .O(fifo_count__0[0]));
  LUT6 #(
    .INIT(64'hF0FF0F000F00F4FF)) 
    \fifo_count[1]_i_1__0 
       (.I0(fifo_count_reg[2]),
        .I1(fifo_count_reg[3]),
        .I2(switches_sync),
        .I3(Q[1]),
        .I4(fifo_count_reg[0]),
        .I5(fifo_count_reg[1]),
        .O(fifo_count__0[1]));
  LUT6 #(
    .INIT(64'hFC3FFCFC03C20303)) 
    \fifo_count[2]_i_1__0 
       (.I0(fifo_count_reg[3]),
        .I1(fifo_count_reg[0]),
        .I2(fifo_count_reg[1]),
        .I3(switches_sync),
        .I4(Q[1]),
        .I5(fifo_count_reg[2]),
        .O(fifo_count__0[2]));
  LUT6 #(
    .INIT(64'h0000FFFEFFFF0001)) 
    \fifo_count[3]_i_1__0 
       (.I0(fifo_count_reg[3]),
        .I1(fifo_count_reg[2]),
        .I2(fifo_count_reg[0]),
        .I3(fifo_count_reg[1]),
        .I4(\read_ptr_reg[0]_0 ),
        .I5(\write_ptr[2]_i_2__0_n_0 ),
        .O(\fifo_count[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hDFFF2000FFF0000D)) 
    \fifo_count[3]_i_2__0 
       (.I0(Q[1]),
        .I1(switches_sync),
        .I2(fifo_count_reg[1]),
        .I3(fifo_count_reg[0]),
        .I4(fifo_count_reg[3]),
        .I5(fifo_count_reg[2]),
        .O(fifo_count__0[3]));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_count_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\fifo_count[3]_i_1__0_n_0 ),
        .D(fifo_count__0[0]),
        .Q(fifo_count_reg[0]),
        .R(\fifo_count_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_count_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\fifo_count[3]_i_1__0_n_0 ),
        .D(fifo_count__0[1]),
        .Q(fifo_count_reg[1]),
        .R(\fifo_count_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_count_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\fifo_count[3]_i_1__0_n_0 ),
        .D(fifo_count__0[2]),
        .Q(fifo_count_reg[2]),
        .R(\fifo_count_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_count_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\fifo_count[3]_i_1__0_n_0 ),
        .D(fifo_count__0[3]),
        .Q(fifo_count_reg[3]),
        .R(\fifo_count_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "tx_fifo/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    mem_reg_0_7_0_5
       (.ADDRA({\<const0> ,\<const0> ,read_ptr}),
        .ADDRB({\<const0> ,\<const0> ,read_ptr}),
        .ADDRC({\<const0> ,\<const0> ,read_ptr}),
        .ADDRD({\<const0> ,\<const0> ,write_ptr}),
        .DIA(din[1:0]),
        .DIB(din[3:2]),
        .DIC(din[5:4]),
        .DID({\<const0> ,\<const0> }),
        .DOA(dout0[1:0]),
        .DOB(dout0[3:2]),
        .DOC(dout0[5:4]),
        .WCLK(CLK_125MHZ_FPGA_IBUF_BUFG),
        .WE(p_0_in0_out));
  LUT2 #(
    .INIT(4'h1)) 
    mem_reg_0_7_0_5_i_1__0
       (.I0(\write_ptr[2]_i_2__0_n_0 ),
        .I1(\fifo_count_reg[0]_0 ),
        .O(p_0_in0_out));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "tx_fifo/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "7" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_7_6_7
       (.A0(write_ptr[0]),
        .A1(write_ptr[1]),
        .A2(write_ptr[2]),
        .A3(\<const0> ),
        .A4(\<const0> ),
        .D(\dout_reg[6]_0 ),
        .DPO(dout0[6]),
        .DPRA0(read_ptr[0]),
        .DPRA1(read_ptr[1]),
        .DPRA2(read_ptr[2]),
        .DPRA3(\<const0> ),
        .DPRA4(\<const0> ),
        .WCLK(CLK_125MHZ_FPGA_IBUF_BUFG),
        .WE(p_0_in0_out));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "64" *) 
  (* RTL_RAM_NAME = "tx_fifo/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "7" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_7_6_7__0
       (.A0(write_ptr[0]),
        .A1(write_ptr[1]),
        .A2(write_ptr[2]),
        .A3(\<const0> ),
        .A4(\<const0> ),
        .D(\dout_reg[7]_0 ),
        .DPO(dout0[7]),
        .DPRA0(read_ptr[0]),
        .DPRA1(read_ptr[1]),
        .DPRA2(read_ptr[2]),
        .DPRA3(\<const0> ),
        .DPRA4(\<const0> ),
        .WCLK(CLK_125MHZ_FPGA_IBUF_BUFG),
        .WE(p_0_in0_out));
  LUT6 #(
    .INIT(64'hFFFF00010000FFFE)) 
    \read_ptr[0]_i_1__0 
       (.I0(fifo_count_reg[3]),
        .I1(fifo_count_reg[2]),
        .I2(fifo_count_reg[0]),
        .I3(fifo_count_reg[1]),
        .I4(\read_ptr_reg[0]_0 ),
        .I5(read_ptr[0]),
        .O(\read_ptr[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \read_ptr[1]_i_1__0 
       (.I0(read_ptr[0]),
        .I1(p_0_in),
        .I2(read_ptr[1]),
        .O(\read_ptr[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \read_ptr[2]_i_1__0 
       (.I0(read_ptr[0]),
        .I1(read_ptr[1]),
        .I2(p_0_in),
        .I3(read_ptr[2]),
        .O(\read_ptr[2]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h55555554)) 
    \read_ptr[2]_i_2__0 
       (.I0(\read_ptr_reg[0]_0 ),
        .I1(fifo_count_reg[1]),
        .I2(fifo_count_reg[0]),
        .I3(fifo_count_reg[2]),
        .I4(fifo_count_reg[3]),
        .O(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \read_ptr_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\read_ptr[0]_i_1__0_n_0 ),
        .Q(read_ptr[0]),
        .R(\fifo_count_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \read_ptr_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\read_ptr[1]_i_1__0_n_0 ),
        .Q(read_ptr[1]),
        .R(\fifo_count_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \read_ptr_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\read_ptr[2]_i_1__0_n_0 ),
        .Q(read_ptr[2]),
        .R(\fifo_count_reg[0]_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    tx_fifo_empty_delayed_i_1
       (.I0(fifo_count_reg[3]),
        .I1(fifo_count_reg[2]),
        .I2(fifo_count_reg[0]),
        .I3(fifo_count_reg[1]),
        .O(tx_fifo_empty));
  LUT3 #(
    .INIT(8'hFE)) 
    \tx_shift[8]_i_2 
       (.I0(\dout_reg_n_0_[7] ),
        .I1(\fifo_count_reg[0]_0 ),
        .I2(\tx_shift_reg[8] ),
        .O(D));
  LUT2 #(
    .INIT(4'h9)) 
    \write_ptr[0]_i_1__0 
       (.I0(\write_ptr[2]_i_2__0_n_0 ),
        .I1(write_ptr[0]),
        .O(\write_ptr[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \write_ptr[1]_i_1__0 
       (.I0(write_ptr[0]),
        .I1(\write_ptr[2]_i_2__0_n_0 ),
        .I2(write_ptr[1]),
        .O(\write_ptr[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hF708)) 
    \write_ptr[2]_i_1__0 
       (.I0(write_ptr[0]),
        .I1(write_ptr[1]),
        .I2(\write_ptr[2]_i_2__0_n_0 ),
        .I3(write_ptr[2]),
        .O(\write_ptr[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hDDDDDDDDDDDFDDDD)) 
    \write_ptr[2]_i_2__0 
       (.I0(Q[1]),
        .I1(switches_sync),
        .I2(fifo_count_reg[1]),
        .I3(fifo_count_reg[0]),
        .I4(fifo_count_reg[3]),
        .I5(fifo_count_reg[2]),
        .O(\write_ptr[2]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \write_ptr_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\write_ptr[0]_i_1__0_n_0 ),
        .Q(write_ptr[0]),
        .R(\fifo_count_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \write_ptr_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\write_ptr[1]_i_1__0_n_0 ),
        .Q(write_ptr[1]),
        .R(\fifo_count_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \write_ptr_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\write_ptr[2]_i_1__0_n_0 ),
        .Q(write_ptr[2]),
        .R(\fifo_count_reg[0]_0 ));
endmodule

module mem_controller
   (Q,
    \read_ptr_reg[0] ,
    p_0_in,
    E,
    LEDS_OBUF,
    din,
    mem_reg,
    mem_reg_0,
    CLK_125MHZ_FPGA_IBUF_BUFG,
    read_ptr,
    \FSM_onehot_curr_state_reg[0]_0 ,
    D,
    \FSM_onehot_curr_state_reg[0]_1 ,
    switches_sync,
    \addr_reg[7]_0 ,
    pwropt,
    pwropt_1,
    pwropt_2);
  output [1:0]Q;
  output \read_ptr_reg[0] ;
  output [0:0]p_0_in;
  output [0:0]E;
  output [2:0]LEDS_OBUF;
  output [5:0]din;
  output mem_reg;
  output mem_reg_0;
  input CLK_125MHZ_FPGA_IBUF_BUFG;
  input [0:0]read_ptr;
  input \FSM_onehot_curr_state_reg[0]_0 ;
  input [1:0]D;
  input \FSM_onehot_curr_state_reg[0]_1 ;
  input switches_sync;
  input [7:0]\addr_reg[7]_0 ;
  input pwropt;
  input pwropt_1;
  input pwropt_2;

  wire \<const0> ;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_onehot_curr_state[3]_i_1_n_0 ;
  wire \FSM_onehot_curr_state[5]_i_1_n_0 ;
  wire \FSM_onehot_curr_state[5]_i_2_n_0 ;
  wire \FSM_onehot_curr_state[7]_i_1_n_0 ;
  wire \FSM_onehot_curr_state[7]_i_3_n_0 ;
  wire \FSM_onehot_curr_state[7]_i_5_n_0 ;
  wire \FSM_onehot_curr_state_reg[0]_0 ;
  wire \FSM_onehot_curr_state_reg[0]_1 ;
  wire \FSM_onehot_curr_state_reg_n_0_[0] ;
  wire \FSM_onehot_curr_state_reg_n_0_[5] ;
  wire \FSM_onehot_curr_state_reg_n_0_[7] ;
  wire [2:0]LEDS_OBUF;
  wire [1:0]Q;
  wire addr;
  wire [7:0]\addr_reg[7]_0 ;
  wire \addr_reg_n_0_[0] ;
  wire \addr_reg_n_0_[1] ;
  wire \addr_reg_n_0_[2] ;
  wire \addr_reg_n_0_[3] ;
  wire \addr_reg_n_0_[4] ;
  wire \addr_reg_n_0_[5] ;
  wire \addr_reg_n_0_[6] ;
  wire \addr_reg_n_0_[7] ;
  wire cmd;
  wire \cmd_reg_n_0_[0] ;
  wire \cmd_reg_n_0_[1] ;
  wire \cmd_reg_n_0_[2] ;
  wire \cmd_reg_n_0_[3] ;
  wire \cmd_reg_n_0_[4] ;
  wire \cmd_reg_n_0_[5] ;
  wire \cmd_reg_n_0_[6] ;
  wire \cmd_reg_n_0_[7] ;
  wire data;
  wire \data_reg_n_0_[0] ;
  wire \data_reg_n_0_[1] ;
  wire \data_reg_n_0_[2] ;
  wire \data_reg_n_0_[3] ;
  wire \data_reg_n_0_[4] ;
  wire \data_reg_n_0_[5] ;
  wire \data_reg_n_0_[6] ;
  wire \data_reg_n_0_[7] ;
  wire [5:0]din;
  wire mem_reg;
  wire mem_reg_0;
  wire [0:0]p_0_in;
  wire pwropt;
  wire pwropt_1;
  wire pwropt_2;
  wire [0:0]read_ptr;
  wire \read_ptr[2]_i_3_n_0 ;
  wire \read_ptr[2]_i_4_n_0 ;
  wire \read_ptr_reg[0] ;
  wire switches_sync;

  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \FSM_onehot_curr_state[3]_i_1 
       (.I0(addr),
        .I1(\FSM_onehot_curr_state[5]_i_2_n_0 ),
        .I2(\cmd_reg_n_0_[4] ),
        .I3(\cmd_reg_n_0_[7] ),
        .I4(\cmd_reg_n_0_[0] ),
        .O(\FSM_onehot_curr_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hF7FF0000)) 
    \FSM_onehot_curr_state[5]_i_1 
       (.I0(\FSM_onehot_curr_state[5]_i_2_n_0 ),
        .I1(\cmd_reg_n_0_[4] ),
        .I2(\cmd_reg_n_0_[7] ),
        .I3(\cmd_reg_n_0_[0] ),
        .I4(addr),
        .O(\FSM_onehot_curr_state[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \FSM_onehot_curr_state[5]_i_2 
       (.I0(\cmd_reg_n_0_[1] ),
        .I1(\cmd_reg_n_0_[2] ),
        .I2(\cmd_reg_n_0_[3] ),
        .I3(\cmd_reg_n_0_[6] ),
        .I4(\cmd_reg_n_0_[5] ),
        .O(\FSM_onehot_curr_state[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF15)) 
    \FSM_onehot_curr_state[7]_i_1 
       (.I0(\FSM_onehot_curr_state[7]_i_3_n_0 ),
        .I1(\FSM_onehot_curr_state_reg[0]_0 ),
        .I2(\cmd_reg_n_0_[0] ),
        .I3(D[0]),
        .I4(data),
        .I5(\FSM_onehot_curr_state_reg_n_0_[5] ),
        .O(\FSM_onehot_curr_state[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0FFF0111)) 
    \FSM_onehot_curr_state[7]_i_3 
       (.I0(\FSM_onehot_curr_state_reg_n_0_[0] ),
        .I1(cmd),
        .I2(\FSM_onehot_curr_state[7]_i_5_n_0 ),
        .I3(\FSM_onehot_curr_state[5]_i_2_n_0 ),
        .I4(\FSM_onehot_curr_state_reg[0]_0 ),
        .O(\FSM_onehot_curr_state[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \FSM_onehot_curr_state[7]_i_5 
       (.I0(\cmd_reg_n_0_[7] ),
        .I1(addr),
        .I2(\cmd_reg_n_0_[4] ),
        .O(\FSM_onehot_curr_state[7]_i_5_n_0 ));
  (* FSM_ENCODED_STATES = "READ_CMD:00000010,READ_ADDR:00000100,ECHO_VAL:01000000,WRITE_MEM_VAL:00010000,READ_MEM_VAL:00100000,READ_DATA:00001000,IDLE:00000001,iSTATE:10000000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_curr_state_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\FSM_onehot_curr_state[7]_i_1_n_0 ),
        .D(D[0]),
        .Q(\FSM_onehot_curr_state_reg_n_0_[0] ),
        .S(\FSM_onehot_curr_state_reg[0]_1 ));
  (* FSM_ENCODED_STATES = "READ_CMD:00000010,READ_ADDR:00000100,ECHO_VAL:01000000,WRITE_MEM_VAL:00010000,READ_MEM_VAL:00100000,READ_DATA:00001000,IDLE:00000001,iSTATE:10000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_state_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\FSM_onehot_curr_state[7]_i_1_n_0 ),
        .D(\FSM_onehot_curr_state_reg_n_0_[0] ),
        .Q(cmd),
        .R(\FSM_onehot_curr_state_reg[0]_1 ));
  (* FSM_ENCODED_STATES = "READ_CMD:00000010,READ_ADDR:00000100,ECHO_VAL:01000000,WRITE_MEM_VAL:00010000,READ_MEM_VAL:00100000,READ_DATA:00001000,IDLE:00000001,iSTATE:10000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_state_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\FSM_onehot_curr_state[7]_i_1_n_0 ),
        .D(cmd),
        .Q(addr),
        .R(\FSM_onehot_curr_state_reg[0]_1 ));
  (* FSM_ENCODED_STATES = "READ_CMD:00000010,READ_ADDR:00000100,ECHO_VAL:01000000,WRITE_MEM_VAL:00010000,READ_MEM_VAL:00100000,READ_DATA:00001000,IDLE:00000001,iSTATE:10000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_state_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\FSM_onehot_curr_state[7]_i_1_n_0 ),
        .D(\FSM_onehot_curr_state[3]_i_1_n_0 ),
        .Q(data),
        .R(\FSM_onehot_curr_state_reg[0]_1 ));
  (* FSM_ENCODED_STATES = "READ_CMD:00000010,READ_ADDR:00000100,ECHO_VAL:01000000,WRITE_MEM_VAL:00010000,READ_MEM_VAL:00100000,READ_DATA:00001000,IDLE:00000001,iSTATE:10000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_state_reg[4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\FSM_onehot_curr_state[7]_i_1_n_0 ),
        .D(data),
        .Q(Q[0]),
        .R(\FSM_onehot_curr_state_reg[0]_1 ));
  (* FSM_ENCODED_STATES = "READ_CMD:00000010,READ_ADDR:00000100,ECHO_VAL:01000000,WRITE_MEM_VAL:00010000,READ_MEM_VAL:00100000,READ_DATA:00001000,IDLE:00000001,iSTATE:10000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_state_reg[5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\FSM_onehot_curr_state[7]_i_1_n_0 ),
        .D(\FSM_onehot_curr_state[5]_i_1_n_0 ),
        .Q(\FSM_onehot_curr_state_reg_n_0_[5] ),
        .R(\FSM_onehot_curr_state_reg[0]_1 ));
  (* FSM_ENCODED_STATES = "READ_CMD:00000010,READ_ADDR:00000100,ECHO_VAL:01000000,WRITE_MEM_VAL:00010000,READ_MEM_VAL:00100000,READ_DATA:00001000,IDLE:00000001,iSTATE:10000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_state_reg[6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\FSM_onehot_curr_state[7]_i_1_n_0 ),
        .D(\FSM_onehot_curr_state_reg_n_0_[5] ),
        .Q(Q[1]),
        .R(\FSM_onehot_curr_state_reg[0]_1 ));
  (* FSM_ENCODED_STATES = "READ_CMD:00000010,READ_ADDR:00000100,ECHO_VAL:01000000,WRITE_MEM_VAL:00010000,READ_MEM_VAL:00100000,READ_DATA:00001000,IDLE:00000001,iSTATE:10000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_state_reg[7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\FSM_onehot_curr_state[7]_i_1_n_0 ),
        .D(D[1]),
        .Q(\FSM_onehot_curr_state_reg_n_0_[7] ),
        .R(\FSM_onehot_curr_state_reg[0]_1 ));
  GND GND
       (.G(\<const0> ));
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    \LEDS_OBUF[0]_inst_i_1 
       (.I0(Q[1]),
        .I1(\FSM_onehot_curr_state_reg_n_0_[7] ),
        .I2(cmd),
        .I3(data),
        .I4(switches_sync),
        .O(LEDS_OBUF[0]));
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    \LEDS_OBUF[1]_inst_i_1 
       (.I0(Q[0]),
        .I1(\FSM_onehot_curr_state_reg_n_0_[7] ),
        .I2(addr),
        .I3(data),
        .I4(switches_sync),
        .O(LEDS_OBUF[1]));
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    \LEDS_OBUF[2]_inst_i_1 
       (.I0(Q[1]),
        .I1(\FSM_onehot_curr_state_reg_n_0_[7] ),
        .I2(Q[0]),
        .I3(\FSM_onehot_curr_state_reg_n_0_[5] ),
        .I4(switches_sync),
        .O(LEDS_OBUF[2]));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(addr),
        .D(\addr_reg[7]_0 [0]),
        .Q(\addr_reg_n_0_[0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(addr),
        .D(\addr_reg[7]_0 [1]),
        .Q(\addr_reg_n_0_[1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(addr),
        .D(\addr_reg[7]_0 [2]),
        .Q(\addr_reg_n_0_[2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(addr),
        .D(\addr_reg[7]_0 [3]),
        .Q(\addr_reg_n_0_[3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(addr),
        .D(\addr_reg[7]_0 [4]),
        .Q(\addr_reg_n_0_[4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(addr),
        .D(\addr_reg[7]_0 [5]),
        .Q(\addr_reg_n_0_[5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(addr),
        .D(\addr_reg[7]_0 [6]),
        .Q(\addr_reg_n_0_[6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(addr),
        .D(\addr_reg[7]_0 [7]),
        .Q(\addr_reg_n_0_[7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(cmd),
        .D(\addr_reg[7]_0 [0]),
        .Q(\cmd_reg_n_0_[0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(cmd),
        .D(\addr_reg[7]_0 [1]),
        .Q(\cmd_reg_n_0_[1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(cmd),
        .D(\addr_reg[7]_0 [2]),
        .Q(\cmd_reg_n_0_[2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(cmd),
        .D(\addr_reg[7]_0 [3]),
        .Q(\cmd_reg_n_0_[3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_reg[4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(cmd),
        .D(\addr_reg[7]_0 [4]),
        .Q(\cmd_reg_n_0_[4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_reg[5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(cmd),
        .D(\addr_reg[7]_0 [5]),
        .Q(\cmd_reg_n_0_[5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_reg[6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(cmd),
        .D(\addr_reg[7]_0 [6]),
        .Q(\cmd_reg_n_0_[6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_reg[7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(cmd),
        .D(\addr_reg[7]_0 [7]),
        .Q(\cmd_reg_n_0_[7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(data),
        .D(\addr_reg[7]_0 [0]),
        .Q(\data_reg_n_0_[0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(data),
        .D(\addr_reg[7]_0 [1]),
        .Q(\data_reg_n_0_[1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(data),
        .D(\addr_reg[7]_0 [2]),
        .Q(\data_reg_n_0_[2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(data),
        .D(\addr_reg[7]_0 [3]),
        .Q(\data_reg_n_0_[3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(data),
        .D(\addr_reg[7]_0 [4]),
        .Q(\data_reg_n_0_[4] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(data),
        .D(\addr_reg[7]_0 [5]),
        .Q(\data_reg_n_0_[5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(data),
        .D(\addr_reg[7]_0 [6]),
        .Q(\data_reg_n_0_[6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(data),
        .D(\addr_reg[7]_0 [7]),
        .Q(\data_reg_n_0_[7] ),
        .R(\<const0> ));
  LUT2 #(
    .INIT(4'h2)) 
    \dout[7]_i_1 
       (.I0(p_0_in),
        .I1(\FSM_onehot_curr_state_reg[0]_1 ),
        .O(E));
  memory mem
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .Q({\addr_reg_n_0_[7] ,\addr_reg_n_0_[6] ,\addr_reg_n_0_[5] ,\addr_reg_n_0_[4] ,\addr_reg_n_0_[3] ,\addr_reg_n_0_[2] ,\addr_reg_n_0_[1] ,\addr_reg_n_0_[0] }),
        .din(din),
        .\dout_reg[7] ({Q[1],\FSM_onehot_curr_state_reg_n_0_[5] ,Q[0]}),
        .mem_reg_0(mem_reg),
        .mem_reg_1(mem_reg_0),
        .mem_reg_2({\data_reg_n_0_[7] ,\data_reg_n_0_[6] ,\data_reg_n_0_[5] ,\data_reg_n_0_[4] ,\data_reg_n_0_[3] ,\data_reg_n_0_[2] ,\data_reg_n_0_[1] ,\data_reg_n_0_[0] }),
        .pwropt(pwropt),
        .pwropt_1(\FSM_onehot_curr_state_reg[0]_1 ),
        .pwropt_2(pwropt_1),
        .pwropt_3(pwropt_2),
        .switches_sync(switches_sync));
  LUT2 #(
    .INIT(4'h6)) 
    \read_ptr[0]_i_1 
       (.I0(p_0_in),
        .I1(read_ptr),
        .O(\read_ptr_reg[0] ));
  LUT6 #(
    .INIT(64'h1111111100001000)) 
    \read_ptr[2]_i_2 
       (.I0(switches_sync),
        .I1(\FSM_onehot_curr_state_reg[0]_0 ),
        .I2(addr),
        .I3(\FSM_onehot_curr_state[5]_i_2_n_0 ),
        .I4(\read_ptr[2]_i_3_n_0 ),
        .I5(\read_ptr[2]_i_4_n_0 ),
        .O(p_0_in));
  LUT3 #(
    .INIT(8'hDF)) 
    \read_ptr[2]_i_3 
       (.I0(\cmd_reg_n_0_[4] ),
        .I1(\cmd_reg_n_0_[7] ),
        .I2(\cmd_reg_n_0_[0] ),
        .O(\read_ptr[2]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \read_ptr[2]_i_4 
       (.I0(\FSM_onehot_curr_state_reg_n_0_[0] ),
        .I1(data),
        .I2(cmd),
        .O(\read_ptr[2]_i_4_n_0 ));
endmodule

module memory
   (din,
    mem_reg_0,
    mem_reg_1,
    CLK_125MHZ_FPGA_IBUF_BUFG,
    Q,
    mem_reg_2,
    \dout_reg[7] ,
    switches_sync,
    pwropt_1,
    pwropt,
    pwropt_2,
    pwropt_3);
  output [5:0]din;
  output mem_reg_0;
  output mem_reg_1;
  input CLK_125MHZ_FPGA_IBUF_BUFG;
  input [7:0]Q;
  input [7:0]mem_reg_2;
  input [2:0]\dout_reg[7] ;
  input switches_sync;
  input pwropt_1;
  input pwropt;
  input pwropt_2;
  input pwropt_3;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [7:0]Q;
  wire [5:0]din;
  wire [2:0]\dout_reg[7] ;
  wire [7:0]mem_dout;
  wire mem_reg_0;
  wire mem_reg_1;
  wire [7:0]mem_reg_2;
  wire mem_reg_ENARDEN_cooolgate_en_sig_1;
  wire pwropt;
  wire pwropt_1;
  wire pwropt_2;
  wire pwropt_3;
  wire switches_sync;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* IS_CLOCK_GATED *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* POWER_OPTED_CE = "ENARDEN=NEW" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "mem_ctrl/mem/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "768" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
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
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
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
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    mem_reg
       (.ADDRARDADDR({\<const1> ,\<const1> ,Q,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .ADDRBWRADDR({\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .CLKARDCLK(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CLKBWRCLK(\<const0> ),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,mem_reg_2}),
        .DIBDI({\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .DIPADIP({\<const0> ,\<const0> }),
        .DIPBDIP({\<const1> ,\<const1> }),
        .DOADO(mem_dout),
        .ENARDEN(mem_reg_ENARDEN_cooolgate_en_sig_1),
        .ENBWREN(\<const0> ),
        .REGCEAREGCE(\<const0> ),
        .REGCEB(\<const0> ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(\<const0> ),
        .RSTREGARSTREG(\<const0> ),
        .RSTREGB(\<const0> ),
        .WEA({\dout_reg[7] [0],\dout_reg[7] [0]}),
        .WEBWE({\<const0> ,\<const0> ,\<const0> ,\<const0> }));
  LUT4 #(
    .INIT(16'h2220)) 
    mem_reg_0_7_0_5_i_2
       (.I0(mem_dout[1]),
        .I1(switches_sync),
        .I2(\dout_reg[7] [2]),
        .I3(\dout_reg[7] [1]),
        .O(din[1]));
  LUT4 #(
    .INIT(16'h2220)) 
    mem_reg_0_7_0_5_i_3
       (.I0(mem_dout[0]),
        .I1(switches_sync),
        .I2(\dout_reg[7] [2]),
        .I3(\dout_reg[7] [1]),
        .O(din[0]));
  LUT4 #(
    .INIT(16'h2220)) 
    mem_reg_0_7_0_5_i_4
       (.I0(mem_dout[3]),
        .I1(switches_sync),
        .I2(\dout_reg[7] [2]),
        .I3(\dout_reg[7] [1]),
        .O(din[3]));
  LUT4 #(
    .INIT(16'h2220)) 
    mem_reg_0_7_0_5_i_5
       (.I0(mem_dout[2]),
        .I1(switches_sync),
        .I2(\dout_reg[7] [2]),
        .I3(\dout_reg[7] [1]),
        .O(din[2]));
  LUT4 #(
    .INIT(16'h2220)) 
    mem_reg_0_7_0_5_i_6
       (.I0(mem_dout[5]),
        .I1(switches_sync),
        .I2(\dout_reg[7] [2]),
        .I3(\dout_reg[7] [1]),
        .O(din[5]));
  LUT4 #(
    .INIT(16'h2220)) 
    mem_reg_0_7_0_5_i_7
       (.I0(mem_dout[4]),
        .I1(switches_sync),
        .I2(\dout_reg[7] [2]),
        .I3(\dout_reg[7] [1]),
        .O(din[4]));
  LUT4 #(
    .INIT(16'h2220)) 
    mem_reg_0_7_6_7__0_i_1
       (.I0(mem_dout[7]),
        .I1(switches_sync),
        .I2(\dout_reg[7] [2]),
        .I3(\dout_reg[7] [1]),
        .O(mem_reg_1));
  LUT4 #(
    .INIT(16'h2220)) 
    mem_reg_0_7_6_7_i_1
       (.I0(mem_dout[6]),
        .I1(switches_sync),
        .I2(\dout_reg[7] [2]),
        .I3(\dout_reg[7] [1]),
        .O(mem_reg_0));
  (* OPT_MODIFIED = "POST_PROCESS_NETLIST" *) 
  LUT5 #(
    .INIT(32'hFFFF000D)) 
    mem_reg_ENARDEN_cooolgate_en_gate_1_LOPT_REMAP
       (.I0(pwropt),
        .I1(pwropt_3),
        .I2(pwropt_2),
        .I3(pwropt_1),
        .I4(\dout_reg[7] [0]),
        .O(mem_reg_ENARDEN_cooolgate_en_sig_1));
endmodule

module synchronizer
   (synchronized_signals,
    BUTTONS_IBUF,
    CLK_125MHZ_FPGA_IBUF_BUFG);
  output [0:0]synchronized_signals;
  input [0:0]BUTTONS_IBUF;
  input CLK_125MHZ_FPGA_IBUF_BUFG;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]BUTTONS_IBUF;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [0:0]middle;
  wire [0:0]synchronized_signals;

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
        .D(BUTTONS_IBUF),
        .Q(middle),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \sync_signal_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(middle),
        .Q(synchronized_signals),
        .R(\<const0> ));
endmodule

(* ORIG_REF_NAME = "synchronizer" *) 
module synchronizer__parameterized0
   (switches_sync,
    SWITCHES_IBUF,
    CLK_125MHZ_FPGA_IBUF_BUFG,
    .pwropt(\middle_reg[0]_inv_n_0 ));
  output switches_sync;
  input [0:0]SWITCHES_IBUF;
  input CLK_125MHZ_FPGA_IBUF_BUFG;
  output \middle_reg[0]_inv_n_0 ;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [0:0]SWITCHES_IBUF;
  wire \middle_reg[0]_inv_n_0 ;
  wire switches_sync;

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
        .D(SWITCHES_IBUF),
        .Q(\middle_reg[0]_inv_n_0 ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \sync_signal_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\middle_reg[0]_inv_n_0 ),
        .Q(switches_sync),
        .R(\<const0> ));
endmodule

module uart
   (FPGA_SERIAL_TX_OBUF,
    tx_running_reg,
    has_byte,
    tx_running_reg_0,
    \bit_counter_reg[2] ,
    has_byte0,
    \rx_shift_reg[8] ,
    \bit_counter_reg[0] ,
    FPGA_SERIAL_RX_IBUF,
    CLK_125MHZ_FPGA_IBUF_BUFG,
    has_byte_reg,
    tx_fifo_empty_delayed,
    D,
    Q,
    \bit_counter_reg[1] );
  output FPGA_SERIAL_TX_OBUF;
  output tx_running_reg;
  output has_byte;
  output tx_running_reg_0;
  output \bit_counter_reg[2] ;
  output has_byte0;
  output [7:0]\rx_shift_reg[8] ;
  input \bit_counter_reg[0] ;
  input FPGA_SERIAL_RX_IBUF;
  input CLK_125MHZ_FPGA_IBUF_BUFG;
  input has_byte_reg;
  input tx_fifo_empty_delayed;
  input [0:0]D;
  input [6:0]Q;
  input \bit_counter_reg[1] ;

  wire \<const1> ;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [0:0]D;
  wire FPGA_SERIAL_RX_IBUF;
  wire FPGA_SERIAL_TX_OBUF;
  wire [6:0]Q;
  wire \bit_counter_reg[0] ;
  wire \bit_counter_reg[1] ;
  wire \bit_counter_reg[2] ;
  wire has_byte;
  wire has_byte0;
  wire has_byte_reg;
  wire [7:0]\rx_shift_reg[8] ;
  wire serial_in_reg;
  wire tx_fifo_empty_delayed;
  wire tx_running_reg;
  wire tx_running_reg_0;
  wire [0:0]tx_shift;

  VCC VCC
       (.P(\<const1> ));
  FDSE #(
    .INIT(1'b1)) 
    serial_in_reg_reg
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(FPGA_SERIAL_RX_IBUF),
        .Q(serial_in_reg),
        .S(\bit_counter_reg[0] ));
  FDSE #(
    .INIT(1'b1)) 
    serial_out_reg_reg
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tx_shift),
        .Q(FPGA_SERIAL_TX_OBUF),
        .S(\bit_counter_reg[0] ));
  uart_receiver uareceive
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .\bit_counter_reg[2]_0 (\bit_counter_reg[2] ),
        .\bit_counter_reg[3]_0 (\bit_counter_reg[0] ),
        .has_byte(has_byte),
        .has_byte0(has_byte0),
        .has_byte_reg_0(has_byte_reg),
        .\rx_shift_reg[8]_0 (\rx_shift_reg[8] ),
        .serial_in_reg(serial_in_reg));
  uart_transmitter uatransmit
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .D(D),
        .Q(Q),
        .\bit_counter_reg[0]_0 (\bit_counter_reg[0] ),
        .\bit_counter_reg[1]_0 (\bit_counter_reg[1] ),
        .tx_fifo_empty_delayed(tx_fifo_empty_delayed),
        .tx_running_reg_0(tx_running_reg),
        .tx_running_reg_1(tx_running_reg_0),
        .\tx_shift_reg[0]_0 (tx_shift));
endmodule

module uart_receiver
   (has_byte,
    \bit_counter_reg[2]_0 ,
    has_byte0,
    \rx_shift_reg[8]_0 ,
    has_byte_reg_0,
    CLK_125MHZ_FPGA_IBUF_BUFG,
    \bit_counter_reg[3]_0 ,
    serial_in_reg);
  output has_byte;
  output \bit_counter_reg[2]_0 ;
  output has_byte0;
  output [7:0]\rx_shift_reg[8]_0 ;
  input has_byte_reg_0;
  input CLK_125MHZ_FPGA_IBUF_BUFG;
  input \bit_counter_reg[3]_0 ;
  input serial_in_reg;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [3:0]bit_counter;
  wire bit_counter0;
  wire \bit_counter[0]_i_1_n_0 ;
  wire \bit_counter[1]_i_1_n_0 ;
  wire \bit_counter[2]_i_1_n_0 ;
  wire \bit_counter[3]_i_1_n_0 ;
  wire \bit_counter[3]_i_2__0_n_0 ;
  wire \bit_counter[3]_i_3__0_n_0 ;
  wire \bit_counter_reg[2]_0 ;
  wire \bit_counter_reg[3]_0 ;
  wire \clock_counter[10]_i_1__0_n_0 ;
  wire \clock_counter[10]_i_3__0_n_0 ;
  wire \clock_counter[9]_i_2_n_0 ;
  wire [10:0]clock_counter_reg;
  wire has_byte;
  wire has_byte0;
  wire has_byte_i_4_n_0;
  wire has_byte_reg_0;
  wire [10:0]p_0_in__1;
  wire rx_shift0;
  wire \rx_shift[9]_i_2_n_0 ;
  wire \rx_shift[9]_i_3_n_0 ;
  wire [7:0]\rx_shift_reg[8]_0 ;
  wire \rx_shift_reg_n_0_[9] ;
  wire serial_in_reg;
  wire start;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT5 #(
    .INIT(32'h06060A00)) 
    \bit_counter[0]_i_1 
       (.I0(bit_counter[0]),
        .I1(\bit_counter[3]_i_2__0_n_0 ),
        .I2(\bit_counter_reg[3]_0 ),
        .I3(serial_in_reg),
        .I4(\bit_counter_reg[2]_0 ),
        .O(\bit_counter[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \bit_counter[0]_i_2 
       (.I0(bit_counter[2]),
        .I1(bit_counter[0]),
        .I2(bit_counter[1]),
        .I3(bit_counter[3]),
        .O(\bit_counter_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hF50AF508F50AF50B)) 
    \bit_counter[1]_i_1 
       (.I0(\bit_counter[3]_i_2__0_n_0 ),
        .I1(bit_counter[2]),
        .I2(bit_counter[0]),
        .I3(bit_counter[1]),
        .I4(bit_counter[3]),
        .I5(serial_in_reg),
        .O(\bit_counter[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000AAA6)) 
    \bit_counter[2]_i_1 
       (.I0(bit_counter[2]),
        .I1(bit_counter0),
        .I2(bit_counter[1]),
        .I3(bit_counter[0]),
        .I4(\bit_counter_reg[3]_0 ),
        .I5(start),
        .O(\bit_counter[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \bit_counter[2]_i_2__0 
       (.I0(\bit_counter_reg[2]_0 ),
        .I1(\rx_shift[9]_i_2_n_0 ),
        .I2(\bit_counter[3]_i_3__0_n_0 ),
        .I3(clock_counter_reg[0]),
        .I4(clock_counter_reg[4]),
        .I5(clock_counter_reg[1]),
        .O(bit_counter0));
  LUT5 #(
    .INIT(32'h00000001)) 
    \bit_counter[2]_i_3 
       (.I0(serial_in_reg),
        .I1(bit_counter[3]),
        .I2(bit_counter[1]),
        .I3(bit_counter[0]),
        .I4(bit_counter[2]),
        .O(start));
  LUT6 #(
    .INIT(64'hFFFD0000FFFD0003)) 
    \bit_counter[3]_i_1 
       (.I0(\bit_counter[3]_i_2__0_n_0 ),
        .I1(bit_counter[2]),
        .I2(bit_counter[0]),
        .I3(bit_counter[1]),
        .I4(bit_counter[3]),
        .I5(serial_in_reg),
        .O(\bit_counter[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000400)) 
    \bit_counter[3]_i_2__0 
       (.I0(clock_counter_reg[1]),
        .I1(clock_counter_reg[4]),
        .I2(clock_counter_reg[0]),
        .I3(\bit_counter[3]_i_3__0_n_0 ),
        .I4(\rx_shift[9]_i_2_n_0 ),
        .O(\bit_counter[3]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \bit_counter[3]_i_3__0 
       (.I0(clock_counter_reg[9]),
        .I1(clock_counter_reg[10]),
        .I2(clock_counter_reg[6]),
        .I3(clock_counter_reg[5]),
        .O(\bit_counter[3]_i_3__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\bit_counter[0]_i_1_n_0 ),
        .Q(bit_counter[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\bit_counter[1]_i_1_n_0 ),
        .Q(bit_counter[1]),
        .R(\bit_counter_reg[3]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\bit_counter[2]_i_1_n_0 ),
        .Q(bit_counter[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\bit_counter[3]_i_1_n_0 ),
        .Q(bit_counter[3]),
        .R(\bit_counter_reg[3]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clock_counter[0]_i_1__0 
       (.I0(clock_counter_reg[0]),
        .O(p_0_in__1[0]));
  LUT4 #(
    .INIT(16'hFFAB)) 
    \clock_counter[10]_i_1__0 
       (.I0(\bit_counter_reg[3]_0 ),
        .I1(serial_in_reg),
        .I2(\bit_counter_reg[2]_0 ),
        .I3(\bit_counter[3]_i_2__0_n_0 ),
        .O(\clock_counter[10]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \clock_counter[10]_i_2__0 
       (.I0(clock_counter_reg[10]),
        .I1(clock_counter_reg[8]),
        .I2(clock_counter_reg[6]),
        .I3(\clock_counter[10]_i_3__0_n_0 ),
        .I4(clock_counter_reg[7]),
        .I5(clock_counter_reg[9]),
        .O(p_0_in__1[10]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \clock_counter[10]_i_3__0 
       (.I0(clock_counter_reg[5]),
        .I1(clock_counter_reg[4]),
        .I2(clock_counter_reg[2]),
        .I3(clock_counter_reg[0]),
        .I4(clock_counter_reg[1]),
        .I5(clock_counter_reg[3]),
        .O(\clock_counter[10]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \clock_counter[1]_i_1__0 
       (.I0(clock_counter_reg[0]),
        .I1(clock_counter_reg[1]),
        .O(p_0_in__1[1]));
  (* \PinAttr:I1:HOLD_DETOUR  = "197" *) 
  (* \PinAttr:I2:HOLD_DETOUR  = "192" *) 
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \clock_counter[2]_i_1__0 
       (.I0(clock_counter_reg[2]),
        .I1(clock_counter_reg[1]),
        .I2(clock_counter_reg[0]),
        .O(p_0_in__1[2]));
  (* \PinAttr:I2:HOLD_DETOUR  = "192" *) 
  (* \PinAttr:I3:HOLD_DETOUR  = "197" *) 
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \clock_counter[3]_i_1__0 
       (.I0(clock_counter_reg[3]),
        .I1(clock_counter_reg[2]),
        .I2(clock_counter_reg[0]),
        .I3(clock_counter_reg[1]),
        .O(p_0_in__1[3]));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \clock_counter[4]_i_1__0 
       (.I0(clock_counter_reg[4]),
        .I1(clock_counter_reg[3]),
        .I2(clock_counter_reg[1]),
        .I3(clock_counter_reg[0]),
        .I4(clock_counter_reg[2]),
        .O(p_0_in__1[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \clock_counter[5]_i_1__0 
       (.I0(clock_counter_reg[4]),
        .I1(clock_counter_reg[2]),
        .I2(clock_counter_reg[0]),
        .I3(clock_counter_reg[1]),
        .I4(clock_counter_reg[3]),
        .I5(clock_counter_reg[5]),
        .O(p_0_in__1[5]));
  LUT3 #(
    .INIT(8'h9A)) 
    \clock_counter[6]_i_1__0 
       (.I0(clock_counter_reg[6]),
        .I1(\clock_counter[9]_i_2_n_0 ),
        .I2(clock_counter_reg[5]),
        .O(p_0_in__1[6]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hA6AA)) 
    \clock_counter[7]_i_1__0 
       (.I0(clock_counter_reg[7]),
        .I1(clock_counter_reg[5]),
        .I2(\clock_counter[9]_i_2_n_0 ),
        .I3(clock_counter_reg[6]),
        .O(p_0_in__1[7]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hA6AAAAAA)) 
    \clock_counter[8]_i_1__0 
       (.I0(clock_counter_reg[8]),
        .I1(clock_counter_reg[6]),
        .I2(\clock_counter[9]_i_2_n_0 ),
        .I3(clock_counter_reg[5]),
        .I4(clock_counter_reg[7]),
        .O(p_0_in__1[8]));
  LUT6 #(
    .INIT(64'hAA6AAAAAAAAAAAAA)) 
    \clock_counter[9]_i_1__0 
       (.I0(clock_counter_reg[9]),
        .I1(clock_counter_reg[7]),
        .I2(clock_counter_reg[5]),
        .I3(\clock_counter[9]_i_2_n_0 ),
        .I4(clock_counter_reg[6]),
        .I5(clock_counter_reg[8]),
        .O(p_0_in__1[9]));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \clock_counter[9]_i_2 
       (.I0(clock_counter_reg[3]),
        .I1(clock_counter_reg[1]),
        .I2(clock_counter_reg[0]),
        .I3(clock_counter_reg[2]),
        .I4(clock_counter_reg[4]),
        .O(\clock_counter[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in__1[0]),
        .Q(clock_counter_reg[0]),
        .R(\clock_counter[10]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[10] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in__1[10]),
        .Q(clock_counter_reg[10]),
        .R(\clock_counter[10]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in__1[1]),
        .Q(clock_counter_reg[1]),
        .R(\clock_counter[10]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in__1[2]),
        .Q(clock_counter_reg[2]),
        .R(\clock_counter[10]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in__1[3]),
        .Q(clock_counter_reg[3]),
        .R(\clock_counter[10]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in__1[4]),
        .Q(clock_counter_reg[4]),
        .R(\clock_counter[10]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in__1[5]),
        .Q(clock_counter_reg[5]),
        .R(\clock_counter[10]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in__1[6]),
        .Q(clock_counter_reg[6]),
        .R(\clock_counter[10]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in__1[7]),
        .Q(clock_counter_reg[7]),
        .R(\clock_counter[10]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[8] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in__1[8]),
        .Q(clock_counter_reg[8]),
        .R(\clock_counter[10]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[9] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in__1[9]),
        .Q(clock_counter_reg[9]),
        .R(\clock_counter[10]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    has_byte_i_2
       (.I0(has_byte_i_4_n_0),
        .I1(\rx_shift[9]_i_2_n_0 ),
        .I2(\bit_counter[3]_i_3__0_n_0 ),
        .I3(clock_counter_reg[0]),
        .I4(clock_counter_reg[4]),
        .I5(clock_counter_reg[1]),
        .O(has_byte0));
  LUT4 #(
    .INIT(16'h0004)) 
    has_byte_i_4
       (.I0(bit_counter[1]),
        .I1(bit_counter[0]),
        .I2(bit_counter[3]),
        .I3(bit_counter[2]),
        .O(has_byte_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    has_byte_reg
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(has_byte_reg_0),
        .Q(has_byte),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \rx_shift[9]_i_1 
       (.I0(\rx_shift[9]_i_2_n_0 ),
        .I1(\rx_shift[9]_i_3_n_0 ),
        .I2(clock_counter_reg[0]),
        .I3(clock_counter_reg[1]),
        .I4(clock_counter_reg[4]),
        .I5(\bit_counter_reg[2]_0 ),
        .O(rx_shift0));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \rx_shift[9]_i_2 
       (.I0(clock_counter_reg[3]),
        .I1(clock_counter_reg[2]),
        .I2(clock_counter_reg[8]),
        .I3(clock_counter_reg[7]),
        .O(\rx_shift[9]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \rx_shift[9]_i_3 
       (.I0(clock_counter_reg[10]),
        .I1(clock_counter_reg[9]),
        .I2(clock_counter_reg[6]),
        .I3(clock_counter_reg[5]),
        .O(\rx_shift[9]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(rx_shift0),
        .D(\rx_shift_reg[8]_0 [1]),
        .Q(\rx_shift_reg[8]_0 [0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(rx_shift0),
        .D(\rx_shift_reg[8]_0 [2]),
        .Q(\rx_shift_reg[8]_0 [1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(rx_shift0),
        .D(\rx_shift_reg[8]_0 [3]),
        .Q(\rx_shift_reg[8]_0 [2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(rx_shift0),
        .D(\rx_shift_reg[8]_0 [4]),
        .Q(\rx_shift_reg[8]_0 [3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(rx_shift0),
        .D(\rx_shift_reg[8]_0 [5]),
        .Q(\rx_shift_reg[8]_0 [4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(rx_shift0),
        .D(\rx_shift_reg[8]_0 [6]),
        .Q(\rx_shift_reg[8]_0 [5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(rx_shift0),
        .D(\rx_shift_reg[8]_0 [7]),
        .Q(\rx_shift_reg[8]_0 [6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[8] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(rx_shift0),
        .D(\rx_shift_reg_n_0_[9] ),
        .Q(\rx_shift_reg[8]_0 [7]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_shift_reg[9] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(rx_shift0),
        .D(serial_in_reg),
        .Q(\rx_shift_reg_n_0_[9] ),
        .R(\<const0> ));
endmodule

module uart_transmitter
   (tx_running_reg_0,
    tx_running_reg_1,
    \tx_shift_reg[0]_0 ,
    CLK_125MHZ_FPGA_IBUF_BUFG,
    tx_fifo_empty_delayed,
    \bit_counter_reg[0]_0 ,
    Q,
    \bit_counter_reg[1]_0 ,
    D);
  output tx_running_reg_0;
  output tx_running_reg_1;
  output [0:0]\tx_shift_reg[0]_0 ;
  input CLK_125MHZ_FPGA_IBUF_BUFG;
  input tx_fifo_empty_delayed;
  input \bit_counter_reg[0]_0 ;
  input [6:0]Q;
  input \bit_counter_reg[1]_0 ;
  input [0:0]D;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [0:0]D;
  wire [6:0]Q;
  wire bit_counter1;
  wire \bit_counter[0]_i_1_n_0 ;
  wire \bit_counter[1]_i_1_n_0 ;
  wire \bit_counter[2]_i_1_n_0 ;
  wire \bit_counter[3]_i_1_n_0 ;
  wire \bit_counter[3]_i_4_n_0 ;
  wire \bit_counter[3]_i_5_n_0 ;
  wire \bit_counter_reg[0]_0 ;
  wire \bit_counter_reg[1]_0 ;
  wire \bit_counter_reg_n_0_[0] ;
  wire \bit_counter_reg_n_0_[1] ;
  wire \bit_counter_reg_n_0_[2] ;
  wire \bit_counter_reg_n_0_[3] ;
  wire \clock_counter[10]_i_1_n_0 ;
  wire \clock_counter[10]_i_3_n_0 ;
  wire \clock_counter[10]_i_4_n_0 ;
  wire [10:0]clock_counter_reg;
  wire [10:0]p_0_in__0;
  wire [7:1]p_1_in;
  wire tx_fifo_empty_delayed;
  wire tx_running_i_1_n_0;
  wire tx_running_i_2_n_0;
  wire tx_running_reg_0;
  wire tx_running_reg_1;
  wire [8:1]tx_shift;
  wire \tx_shift[0]_i_1_n_0 ;
  wire \tx_shift[8]_i_1_n_0 ;
  wire [0:0]\tx_shift_reg[0]_0 ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0F0EF0F0)) 
    \bit_counter[0]_i_1 
       (.I0(\bit_counter_reg_n_0_[2] ),
        .I1(\bit_counter_reg_n_0_[1] ),
        .I2(\bit_counter_reg_n_0_[0] ),
        .I3(\bit_counter_reg_n_0_[3] ),
        .I4(tx_running_reg_1),
        .I5(bit_counter1),
        .O(\bit_counter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000C3C2CCCC)) 
    \bit_counter[1]_i_1 
       (.I0(\bit_counter_reg_n_0_[2] ),
        .I1(\bit_counter_reg_n_0_[1] ),
        .I2(\bit_counter_reg_n_0_[0] ),
        .I3(\bit_counter_reg_n_0_[3] ),
        .I4(tx_running_reg_1),
        .I5(\bit_counter_reg[1]_0 ),
        .O(\bit_counter[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A9A8AAAA)) 
    \bit_counter[2]_i_1 
       (.I0(\bit_counter_reg_n_0_[2] ),
        .I1(\bit_counter_reg_n_0_[1] ),
        .I2(\bit_counter_reg_n_0_[0] ),
        .I3(\bit_counter_reg_n_0_[3] ),
        .I4(tx_running_reg_1),
        .I5(\bit_counter_reg[1]_0 ),
        .O(\bit_counter[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFE00FF00)) 
    \bit_counter[3]_i_1 
       (.I0(\bit_counter_reg_n_0_[2] ),
        .I1(\bit_counter_reg_n_0_[1] ),
        .I2(\bit_counter_reg_n_0_[0] ),
        .I3(\bit_counter_reg_n_0_[3] ),
        .I4(tx_running_reg_1),
        .I5(bit_counter1),
        .O(\bit_counter[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    \bit_counter[3]_i_2 
       (.I0(tx_running_reg_0),
        .I1(\bit_counter[3]_i_4_n_0 ),
        .I2(\bit_counter[3]_i_5_n_0 ),
        .I3(clock_counter_reg[4]),
        .I4(clock_counter_reg[8]),
        .I5(clock_counter_reg[10]),
        .O(tx_running_reg_1));
  LUT2 #(
    .INIT(4'h1)) 
    \bit_counter[3]_i_3 
       (.I0(tx_running_reg_0),
        .I1(tx_fifo_empty_delayed),
        .O(bit_counter1));
  (* \PinAttr:I0:HOLD_DETOUR  = "185" *) 
  LUT4 #(
    .INIT(16'hFF7F)) 
    \bit_counter[3]_i_4 
       (.I0(clock_counter_reg[2]),
        .I1(clock_counter_reg[5]),
        .I2(clock_counter_reg[3]),
        .I3(clock_counter_reg[0]),
        .O(\bit_counter[3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \bit_counter[3]_i_5 
       (.I0(clock_counter_reg[1]),
        .I1(clock_counter_reg[6]),
        .I2(clock_counter_reg[7]),
        .I3(clock_counter_reg[9]),
        .O(\bit_counter[3]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\bit_counter[0]_i_1_n_0 ),
        .Q(\bit_counter_reg_n_0_[0] ),
        .R(\bit_counter_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\bit_counter[1]_i_1_n_0 ),
        .Q(\bit_counter_reg_n_0_[1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\bit_counter[2]_i_1_n_0 ),
        .Q(\bit_counter_reg_n_0_[2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\bit_counter[3]_i_1_n_0 ),
        .Q(\bit_counter_reg_n_0_[3] ),
        .R(\bit_counter_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \clock_counter[0]_i_1 
       (.I0(clock_counter_reg[0]),
        .O(p_0_in__0[0]));
  LUT3 #(
    .INIT(8'hDF)) 
    \clock_counter[10]_i_1 
       (.I0(tx_running_reg_0),
        .I1(\bit_counter_reg[0]_0 ),
        .I2(\clock_counter[10]_i_3_n_0 ),
        .O(\clock_counter[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA6AAAAAAAAAAAAAA)) 
    \clock_counter[10]_i_2 
       (.I0(clock_counter_reg[10]),
        .I1(clock_counter_reg[8]),
        .I2(\clock_counter[10]_i_4_n_0 ),
        .I3(clock_counter_reg[6]),
        .I4(clock_counter_reg[7]),
        .I5(clock_counter_reg[9]),
        .O(p_0_in__0[10]));
  LUT5 #(
    .INIT(32'hFFFFFFDF)) 
    \clock_counter[10]_i_3 
       (.I0(clock_counter_reg[10]),
        .I1(clock_counter_reg[8]),
        .I2(clock_counter_reg[4]),
        .I3(\bit_counter[3]_i_5_n_0 ),
        .I4(\bit_counter[3]_i_4_n_0 ),
        .O(\clock_counter[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \clock_counter[10]_i_4 
       (.I0(clock_counter_reg[5]),
        .I1(clock_counter_reg[4]),
        .I2(clock_counter_reg[0]),
        .I3(clock_counter_reg[1]),
        .I4(clock_counter_reg[2]),
        .I5(clock_counter_reg[3]),
        .O(\clock_counter[10]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \clock_counter[1]_i_1 
       (.I0(clock_counter_reg[0]),
        .I1(clock_counter_reg[1]),
        .O(p_0_in__0[1]));
  (* \PinAttr:I2:HOLD_DETOUR  = "185" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \clock_counter[2]_i_1 
       (.I0(clock_counter_reg[0]),
        .I1(clock_counter_reg[1]),
        .I2(clock_counter_reg[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \clock_counter[3]_i_1 
       (.I0(clock_counter_reg[3]),
        .I1(clock_counter_reg[0]),
        .I2(clock_counter_reg[1]),
        .I3(clock_counter_reg[2]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \clock_counter[4]_i_1 
       (.I0(clock_counter_reg[4]),
        .I1(clock_counter_reg[0]),
        .I2(clock_counter_reg[1]),
        .I3(clock_counter_reg[2]),
        .I4(clock_counter_reg[3]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \clock_counter[5]_i_1 
       (.I0(clock_counter_reg[5]),
        .I1(clock_counter_reg[3]),
        .I2(clock_counter_reg[2]),
        .I3(clock_counter_reg[1]),
        .I4(clock_counter_reg[0]),
        .I5(clock_counter_reg[4]),
        .O(p_0_in__0[5]));
  LUT2 #(
    .INIT(4'h9)) 
    \clock_counter[6]_i_1 
       (.I0(\clock_counter[10]_i_4_n_0 ),
        .I1(clock_counter_reg[6]),
        .O(p_0_in__0[6]));
  LUT3 #(
    .INIT(8'hA6)) 
    \clock_counter[7]_i_1 
       (.I0(clock_counter_reg[7]),
        .I1(clock_counter_reg[6]),
        .I2(\clock_counter[10]_i_4_n_0 ),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h9AAA)) 
    \clock_counter[8]_i_1 
       (.I0(clock_counter_reg[8]),
        .I1(\clock_counter[10]_i_4_n_0 ),
        .I2(clock_counter_reg[6]),
        .I3(clock_counter_reg[7]),
        .O(p_0_in__0[8]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hAA6AAAAA)) 
    \clock_counter[9]_i_1 
       (.I0(clock_counter_reg[9]),
        .I1(clock_counter_reg[7]),
        .I2(clock_counter_reg[6]),
        .I3(\clock_counter[10]_i_4_n_0 ),
        .I4(clock_counter_reg[8]),
        .O(p_0_in__0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in__0[0]),
        .Q(clock_counter_reg[0]),
        .R(\clock_counter[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[10] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in__0[10]),
        .Q(clock_counter_reg[10]),
        .R(\clock_counter[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in__0[1]),
        .Q(clock_counter_reg[1]),
        .R(\clock_counter[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in__0[2]),
        .Q(clock_counter_reg[2]),
        .R(\clock_counter[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in__0[3]),
        .Q(clock_counter_reg[3]),
        .R(\clock_counter[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in__0[4]),
        .Q(clock_counter_reg[4]),
        .R(\clock_counter[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in__0[5]),
        .Q(clock_counter_reg[5]),
        .R(\clock_counter[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in__0[6]),
        .Q(clock_counter_reg[6]),
        .R(\clock_counter[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in__0[7]),
        .Q(clock_counter_reg[7]),
        .R(\clock_counter[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[8] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in__0[8]),
        .Q(clock_counter_reg[8]),
        .R(\clock_counter[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[9] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in__0[9]),
        .Q(clock_counter_reg[9]),
        .R(\clock_counter[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00001BBB)) 
    tx_running_i_1
       (.I0(tx_running_reg_0),
        .I1(tx_fifo_empty_delayed),
        .I2(tx_running_i_2_n_0),
        .I3(tx_running_reg_1),
        .I4(\bit_counter_reg[0]_0 ),
        .O(tx_running_i_1_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    tx_running_i_2
       (.I0(\bit_counter_reg_n_0_[2] ),
        .I1(\bit_counter_reg_n_0_[1] ),
        .I2(\bit_counter_reg_n_0_[0] ),
        .I3(\bit_counter_reg_n_0_[3] ),
        .O(tx_running_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tx_running_reg
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tx_running_i_1_n_0),
        .Q(tx_running_reg_0),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'hFFFFCCCCFFFFAAA0)) 
    \tx_shift[0]_i_1 
       (.I0(\tx_shift_reg[0]_0 ),
        .I1(tx_shift[1]),
        .I2(tx_running_reg_0),
        .I3(tx_fifo_empty_delayed),
        .I4(\bit_counter_reg[0]_0 ),
        .I5(tx_running_reg_1),
        .O(\tx_shift[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFEAE)) 
    \tx_shift[1]_i_1 
       (.I0(\bit_counter_reg[0]_0 ),
        .I1(Q[0]),
        .I2(tx_running_reg_1),
        .I3(tx_shift[2]),
        .O(p_1_in[1]));
  LUT4 #(
    .INIT(16'hFEAE)) 
    \tx_shift[2]_i_1 
       (.I0(\bit_counter_reg[0]_0 ),
        .I1(Q[1]),
        .I2(tx_running_reg_1),
        .I3(tx_shift[3]),
        .O(p_1_in[2]));
  LUT4 #(
    .INIT(16'hFEAE)) 
    \tx_shift[3]_i_1 
       (.I0(\bit_counter_reg[0]_0 ),
        .I1(Q[2]),
        .I2(tx_running_reg_1),
        .I3(tx_shift[4]),
        .O(p_1_in[3]));
  LUT4 #(
    .INIT(16'hFEAE)) 
    \tx_shift[4]_i_1 
       (.I0(\bit_counter_reg[0]_0 ),
        .I1(Q[3]),
        .I2(tx_running_reg_1),
        .I3(tx_shift[5]),
        .O(p_1_in[4]));
  LUT4 #(
    .INIT(16'hFEAE)) 
    \tx_shift[5]_i_1 
       (.I0(\bit_counter_reg[0]_0 ),
        .I1(Q[4]),
        .I2(tx_running_reg_1),
        .I3(tx_shift[6]),
        .O(p_1_in[5]));
  LUT4 #(
    .INIT(16'hFEAE)) 
    \tx_shift[6]_i_1 
       (.I0(\bit_counter_reg[0]_0 ),
        .I1(Q[5]),
        .I2(tx_running_reg_1),
        .I3(tx_shift[7]),
        .O(p_1_in[6]));
  LUT4 #(
    .INIT(16'hFEAE)) 
    \tx_shift[7]_i_1 
       (.I0(\bit_counter_reg[0]_0 ),
        .I1(Q[6]),
        .I2(tx_running_reg_1),
        .I3(tx_shift[8]),
        .O(p_1_in[7]));
  LUT4 #(
    .INIT(16'hFFF1)) 
    \tx_shift[8]_i_1 
       (.I0(tx_running_reg_0),
        .I1(tx_fifo_empty_delayed),
        .I2(\bit_counter_reg[0]_0 ),
        .I3(tx_running_reg_1),
        .O(\tx_shift[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\tx_shift[0]_i_1_n_0 ),
        .Q(\tx_shift_reg[0]_0 ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\tx_shift[8]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(tx_shift[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\tx_shift[8]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(tx_shift[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\tx_shift[8]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(tx_shift[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\tx_shift[8]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(tx_shift[4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\tx_shift[8]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(tx_shift[5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\tx_shift[8]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(tx_shift[6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\tx_shift[8]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(tx_shift[7]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_shift_reg[8] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\tx_shift[8]_i_1_n_0 ),
        .D(D),
        .Q(tx_shift[8]),
        .R(\<const0> ));
endmodule

(* BAUD_RATE = "115200" *) (* B_PULSE_CNT_MAX = "200" *) (* B_SAMPLE_CNT_MAX = "62500" *) 
(* CLOCK_FREQ = "125000000" *) (* CYCLES_PER_SECOND = "125000000" *) (* ECO_CHECKSUM = "f7ead722" *) 
(* POWER_OPT_BRAM_CDC = "0" *) (* POWER_OPT_BRAM_SR_ADDR = "0" *) (* POWER_OPT_LOOPED_NET_PERCENTAGE = "0" *) 
(* STRUCTURAL_NETLIST = "yes" *)
module z1top
   (CLK_125MHZ_FPGA,
    BUTTONS,
    SWITCHES,
    LEDS,
    AUD_PWM,
    AUD_SD,
    FPGA_SERIAL_RX,
    FPGA_SERIAL_TX);
  input CLK_125MHZ_FPGA;
  input [3:0]BUTTONS;
  input [1:0]SWITCHES;
  output [5:0]LEDS;
  output AUD_PWM;
  output AUD_SD;
  input FPGA_SERIAL_RX;
  output FPGA_SERIAL_TX;

  wire \<const0> ;
  wire \<const1> ;
  wire AUD_PWM;
  wire AUD_SD;
  wire [3:0]BUTTONS;
  wire [0:0]BUTTONS_IBUF;
  wire CLK_125MHZ_FPGA;
  wire CLK_125MHZ_FPGA_IBUF;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire FPGA_SERIAL_RX;
  wire FPGA_SERIAL_RX_IBUF;
  wire FPGA_SERIAL_TX;
  wire FPGA_SERIAL_TX_OBUF;
  wire [5:0]LEDS;
  wire [2:0]LEDS_OBUF;
  wire [1:0]SWITCHES;
  wire [0:0]SWITCHES_IBUF;
  wire bp_n_0;
  wire bp_n_1;
  wire [7:0]din;
  wire mem_ctrl_n_10;
  wire mem_ctrl_n_11;
  wire mem_ctrl_n_12;
  wire mem_ctrl_n_13;
  wire mem_ctrl_n_14;
  wire mem_ctrl_n_15;
  wire mem_ctrl_n_2;
  wire mem_ctrl_n_4;
  wire mem_ctrl_n_8;
  wire mem_ctrl_n_9;
  wire mem_tx_wr_en;
  wire mem_we;
  wire on_chip_uart_n_1;
  wire on_chip_uart_n_3;
  wire on_chip_uart_n_4;
  wire [0:0]p_0_in;
  wire [8:8]p_1_in;
  wire pwropt;
  wire pwropt_1;
  wire pwropt_2;
  wire [0:0]read_ptr;
  wire rx_fifo_n_1;
  wire rx_fifo_n_10;
  wire rx_fifo_n_2;
  wire rx_fifo_n_3;
  wire rx_fifo_n_4;
  wire rx_fifo_n_5;
  wire rx_fifo_n_6;
  wire rx_fifo_n_7;
  wire rx_fifo_n_8;
  wire rx_fifo_n_9;
  wire switches_sync;
  wire tx_fifo_empty;
  wire tx_fifo_empty_delayed;
  wire tx_fifo_n_10;
  wire tx_fifo_n_2;
  wire tx_fifo_n_3;
  wire tx_fifo_n_4;
  wire tx_fifo_n_5;
  wire tx_fifo_n_6;
  wire tx_fifo_n_7;
  wire tx_fifo_n_8;
  wire tx_fifo_n_9;
  wire \uareceive/has_byte ;
  wire \uareceive/has_byte0 ;

  OBUFT AUD_PWM_OBUF_inst
       (.I(\<const0> ),
        .O(AUD_PWM),
        .T(\<const1> ));
  OBUFT AUD_SD_OBUF_inst
       (.I(\<const0> ),
        .O(AUD_SD),
        .T(\<const1> ));
  IBUF \BUTTONS_IBUF[0]_inst 
       (.I(BUTTONS[0]),
        .O(BUTTONS_IBUF));
  BUFG CLK_125MHZ_FPGA_IBUF_BUFG_inst
       (.I(CLK_125MHZ_FPGA_IBUF),
        .O(CLK_125MHZ_FPGA_IBUF_BUFG));
  IBUF CLK_125MHZ_FPGA_IBUF_inst
       (.I(CLK_125MHZ_FPGA),
        .O(CLK_125MHZ_FPGA_IBUF));
  IBUF FPGA_SERIAL_RX_IBUF_inst
       (.I(FPGA_SERIAL_RX),
        .O(FPGA_SERIAL_RX_IBUF));
  OBUF FPGA_SERIAL_TX_OBUF_inst
       (.I(FPGA_SERIAL_TX_OBUF),
        .O(FPGA_SERIAL_TX));
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
        .O(SWITCHES_IBUF));
  VCC VCC
       (.P(\<const1> ));
  button_parser bp
       (.BUTTONS_IBUF(BUTTONS_IBUF),
        .CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .\bit_counter_reg[1] (on_chip_uart_n_1),
        .\edge_detect_pulse_reg[0] (bp_n_0),
        .\edge_detect_pulse_reg[0]_0 (bp_n_1),
        .pwropt(pwropt),
        .pwropt_1(pwropt_2),
        .tx_fifo_empty_delayed(tx_fifo_empty_delayed));
  mem_controller mem_ctrl
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .D({tx_fifo_n_2,tx_fifo_n_3}),
        .E(mem_ctrl_n_4),
        .\FSM_onehot_curr_state_reg[0]_0 (rx_fifo_n_1),
        .\FSM_onehot_curr_state_reg[0]_1 (bp_n_0),
        .LEDS_OBUF(LEDS_OBUF),
        .Q({mem_tx_wr_en,mem_we}),
        .\addr_reg[7]_0 ({rx_fifo_n_3,rx_fifo_n_4,rx_fifo_n_5,rx_fifo_n_6,rx_fifo_n_7,rx_fifo_n_8,rx_fifo_n_9,rx_fifo_n_10}),
        .din({mem_ctrl_n_8,mem_ctrl_n_9,mem_ctrl_n_10,mem_ctrl_n_11,mem_ctrl_n_12,mem_ctrl_n_13}),
        .mem_reg(mem_ctrl_n_14),
        .mem_reg_0(mem_ctrl_n_15),
        .p_0_in(p_0_in),
        .pwropt(pwropt),
        .pwropt_1(pwropt_1),
        .pwropt_2(pwropt_2),
        .read_ptr(read_ptr),
        .\read_ptr_reg[0] (mem_ctrl_n_2),
        .switches_sync(switches_sync));
  uart on_chip_uart
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .D(p_1_in),
        .FPGA_SERIAL_RX_IBUF(FPGA_SERIAL_RX_IBUF),
        .FPGA_SERIAL_TX_OBUF(FPGA_SERIAL_TX_OBUF),
        .Q({tx_fifo_n_4,tx_fifo_n_5,tx_fifo_n_6,tx_fifo_n_7,tx_fifo_n_8,tx_fifo_n_9,tx_fifo_n_10}),
        .\bit_counter_reg[0] (bp_n_0),
        .\bit_counter_reg[1] (bp_n_1),
        .\bit_counter_reg[2] (on_chip_uart_n_4),
        .has_byte(\uareceive/has_byte ),
        .has_byte0(\uareceive/has_byte0 ),
        .has_byte_reg(rx_fifo_n_2),
        .\rx_shift_reg[8] (din),
        .tx_fifo_empty_delayed(tx_fifo_empty_delayed),
        .tx_running_reg(on_chip_uart_n_1),
        .tx_running_reg_0(on_chip_uart_n_3));
  fifo rx_fifo
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .E(mem_ctrl_n_4),
        .dout({rx_fifo_n_3,rx_fifo_n_4,rx_fifo_n_5,rx_fifo_n_6,rx_fifo_n_7,rx_fifo_n_8,rx_fifo_n_9,rx_fifo_n_10}),
        .\dout_reg[7]_0 (din),
        .\fifo_count_reg[2]_0 (on_chip_uart_n_4),
        .\fifo_count_reg[3]_0 (rx_fifo_n_1),
        .\fifo_count_reg[3]_1 (bp_n_0),
        .has_byte(\uareceive/has_byte ),
        .has_byte0(\uareceive/has_byte0 ),
        .has_byte_reg(rx_fifo_n_2),
        .\read_ptr_reg[0]_0 (read_ptr),
        .\read_ptr_reg[0]_1 (mem_ctrl_n_2),
        .\read_ptr_reg[2]_0 (p_0_in));
  synchronizer__parameterized0 switch_sync
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .SWITCHES_IBUF(SWITCHES_IBUF),
        .pwropt(pwropt_1),
        .switches_sync(switches_sync));
  fifo_0 tx_fifo
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .D(p_1_in),
        .\FSM_onehot_curr_state_reg[6] ({tx_fifo_n_2,tx_fifo_n_3}),
        .Q({mem_tx_wr_en,mem_we}),
        .din({mem_ctrl_n_8,mem_ctrl_n_9,mem_ctrl_n_10,mem_ctrl_n_11,mem_ctrl_n_12,mem_ctrl_n_13}),
        .dout({tx_fifo_n_4,tx_fifo_n_5,tx_fifo_n_6,tx_fifo_n_7,tx_fifo_n_8,tx_fifo_n_9,tx_fifo_n_10}),
        .\dout_reg[6]_0 (mem_ctrl_n_14),
        .\dout_reg[7]_0 (mem_ctrl_n_15),
        .\fifo_count_reg[0]_0 (bp_n_0),
        .\read_ptr_reg[0]_0 (on_chip_uart_n_1),
        .switches_sync(switches_sync),
        .tx_fifo_empty(tx_fifo_empty),
        .\tx_shift_reg[8] (on_chip_uart_n_3));
  FDRE #(
    .INIT(1'b0)) 
    tx_fifo_empty_delayed_reg
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tx_fifo_empty),
        .Q(tx_fifo_empty_delayed),
        .R(\<const0> ));
endmodule
