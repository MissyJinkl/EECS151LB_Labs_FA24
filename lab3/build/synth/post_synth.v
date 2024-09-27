// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Fri Sep 27 09:46:55 2024
// Host        : c111-3.EECS.Berkeley.EDU running 64-bit Red Hat Enterprise Linux release 8.10 (Ootpa)
// Command     : write_verilog -force -file post_synth.v
// Design      : z1top
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module button_parser
   (SR,
    Q,
    \edge_detect_pulse_reg[1] ,
    \edge_detect_pulse_reg[2] ,
    CLK_125MHZ_FPGA_IBUF_BUFG,
    running,
    D);
  output [0:0]SR;
  output [0:0]Q;
  output \edge_detect_pulse_reg[1] ;
  output \edge_detect_pulse_reg[2] ;
  input CLK_125MHZ_FPGA_IBUF_BUFG;
  input running;
  input [3:0]D;

  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [3:0]D;
  wire [0:0]Q;
  wire [0:0]SR;
  wire [3:0]debounced_signals;
  wire \edge_detect_pulse_reg[1] ;
  wire \edge_detect_pulse_reg[2] ;
  wire running;
  wire [3:0]synchronized_signals;

  debouncer button_debouncer
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .D(debounced_signals),
        .Q(synchronized_signals));
  edge_detector button_edge_detector
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .D(debounced_signals),
        .Q(Q),
        .SR(SR),
        .\edge_detect_pulse_reg[1]_0 (\edge_detect_pulse_reg[1] ),
        .\edge_detect_pulse_reg[2]_0 (\edge_detect_pulse_reg[2] ),
        .running(running));
  synchronizer button_synchronizer
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .D(D),
        .Q(synchronized_signals));
endmodule

module counter
   (running,
    Q,
    CLK_125MHZ_FPGA_IBUF_BUFG,
    running_reg_0,
    \counter_reg[3]_0 ,
    \counter_reg[2]_0 ,
    SR);
  output running;
  output [3:0]Q;
  input CLK_125MHZ_FPGA_IBUF_BUFG;
  input running_reg_0;
  input \counter_reg[3]_0 ;
  input [0:0]\counter_reg[2]_0 ;
  input [0:0]SR;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [3:0]Q;
  wire [0:0]SR;
  wire \counter[3]_i_2_n_0 ;
  wire \counter[3]_i_4_n_0 ;
  wire \counter[3]_i_6_n_0 ;
  wire [0:0]\counter_reg[2]_0 ;
  wire \counter_reg[3]_0 ;
  wire cycle_counter;
  wire \cycle_counter[0]_i_10_n_0 ;
  wire \cycle_counter[0]_i_3_n_0 ;
  wire \cycle_counter[0]_i_4_n_0 ;
  wire \cycle_counter[0]_i_5_n_0 ;
  wire \cycle_counter[0]_i_6_n_0 ;
  wire \cycle_counter[0]_i_7_n_0 ;
  wire \cycle_counter[0]_i_8_n_0 ;
  wire \cycle_counter[0]_i_9_n_0 ;
  wire [26:0]cycle_counter_reg;
  wire \cycle_counter_reg[0]_i_2_n_0 ;
  wire \cycle_counter_reg[0]_i_2_n_1 ;
  wire \cycle_counter_reg[0]_i_2_n_2 ;
  wire \cycle_counter_reg[0]_i_2_n_3 ;
  wire \cycle_counter_reg[0]_i_2_n_4 ;
  wire \cycle_counter_reg[0]_i_2_n_5 ;
  wire \cycle_counter_reg[0]_i_2_n_6 ;
  wire \cycle_counter_reg[0]_i_2_n_7 ;
  wire \cycle_counter_reg[12]_i_1_n_0 ;
  wire \cycle_counter_reg[12]_i_1_n_1 ;
  wire \cycle_counter_reg[12]_i_1_n_2 ;
  wire \cycle_counter_reg[12]_i_1_n_3 ;
  wire \cycle_counter_reg[12]_i_1_n_4 ;
  wire \cycle_counter_reg[12]_i_1_n_5 ;
  wire \cycle_counter_reg[12]_i_1_n_6 ;
  wire \cycle_counter_reg[12]_i_1_n_7 ;
  wire \cycle_counter_reg[16]_i_1_n_0 ;
  wire \cycle_counter_reg[16]_i_1_n_1 ;
  wire \cycle_counter_reg[16]_i_1_n_2 ;
  wire \cycle_counter_reg[16]_i_1_n_3 ;
  wire \cycle_counter_reg[16]_i_1_n_4 ;
  wire \cycle_counter_reg[16]_i_1_n_5 ;
  wire \cycle_counter_reg[16]_i_1_n_6 ;
  wire \cycle_counter_reg[16]_i_1_n_7 ;
  wire \cycle_counter_reg[20]_i_1_n_0 ;
  wire \cycle_counter_reg[20]_i_1_n_1 ;
  wire \cycle_counter_reg[20]_i_1_n_2 ;
  wire \cycle_counter_reg[20]_i_1_n_3 ;
  wire \cycle_counter_reg[20]_i_1_n_4 ;
  wire \cycle_counter_reg[20]_i_1_n_5 ;
  wire \cycle_counter_reg[20]_i_1_n_6 ;
  wire \cycle_counter_reg[20]_i_1_n_7 ;
  wire \cycle_counter_reg[24]_i_1_n_2 ;
  wire \cycle_counter_reg[24]_i_1_n_3 ;
  wire \cycle_counter_reg[24]_i_1_n_5 ;
  wire \cycle_counter_reg[24]_i_1_n_6 ;
  wire \cycle_counter_reg[24]_i_1_n_7 ;
  wire \cycle_counter_reg[4]_i_1_n_0 ;
  wire \cycle_counter_reg[4]_i_1_n_1 ;
  wire \cycle_counter_reg[4]_i_1_n_2 ;
  wire \cycle_counter_reg[4]_i_1_n_3 ;
  wire \cycle_counter_reg[4]_i_1_n_4 ;
  wire \cycle_counter_reg[4]_i_1_n_5 ;
  wire \cycle_counter_reg[4]_i_1_n_6 ;
  wire \cycle_counter_reg[4]_i_1_n_7 ;
  wire \cycle_counter_reg[8]_i_1_n_0 ;
  wire \cycle_counter_reg[8]_i_1_n_1 ;
  wire \cycle_counter_reg[8]_i_1_n_2 ;
  wire \cycle_counter_reg[8]_i_1_n_3 ;
  wire \cycle_counter_reg[8]_i_1_n_4 ;
  wire \cycle_counter_reg[8]_i_1_n_5 ;
  wire \cycle_counter_reg[8]_i_1_n_6 ;
  wire \cycle_counter_reg[8]_i_1_n_7 ;
  wire [3:0]p_0_in__3;
  wire running;
  wire running_reg_0;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(Q[0]),
        .O(p_0_in__3[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h56A9)) 
    \counter[1]_i_1 
       (.I0(Q[0]),
        .I1(running),
        .I2(\counter_reg[2]_0 ),
        .I3(Q[1]),
        .O(p_0_in__3[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h777E8881)) 
    \counter[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(running),
        .I3(\counter_reg[2]_0 ),
        .I4(Q[2]),
        .O(p_0_in__3[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFF45454544)) 
    \counter[3]_i_2 
       (.I0(\cycle_counter[0]_i_7_n_0 ),
        .I1(cycle_counter_reg[23]),
        .I2(\cycle_counter[0]_i_6_n_0 ),
        .I3(\counter[3]_i_4_n_0 ),
        .I4(\cycle_counter[0]_i_3_n_0 ),
        .I5(\counter_reg[3]_0 ),
        .O(\counter[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7F7F7FFE80808001)) 
    \counter[3]_i_3 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(running),
        .I4(\counter_reg[2]_0 ),
        .I5(Q[3]),
        .O(p_0_in__3[3]));
  LUT6 #(
    .INIT(64'h00000000FFFF8A88)) 
    \counter[3]_i_4 
       (.I0(cycle_counter_reg[14]),
        .I1(cycle_counter_reg[13]),
        .I2(\counter[3]_i_6_n_0 ),
        .I3(\cycle_counter[0]_i_9_n_0 ),
        .I4(cycle_counter_reg[15]),
        .I5(\cycle_counter[0]_i_5_n_0 ),
        .O(\counter[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \counter[3]_i_6 
       (.I0(cycle_counter_reg[12]),
        .I1(cycle_counter_reg[11]),
        .O(\counter[3]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\counter[3]_i_2_n_0 ),
        .D(p_0_in__3[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\counter[3]_i_2_n_0 ),
        .D(p_0_in__3[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\counter[3]_i_2_n_0 ),
        .D(p_0_in__3[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\counter[3]_i_2_n_0 ),
        .D(p_0_in__3[3]),
        .Q(Q[3]),
        .R(SR));
  LUT6 #(
    .INIT(64'h00000000FFFF00AE)) 
    \cycle_counter[0]_i_1 
       (.I0(\cycle_counter[0]_i_3_n_0 ),
        .I1(\cycle_counter[0]_i_4_n_0 ),
        .I2(\cycle_counter[0]_i_5_n_0 ),
        .I3(\cycle_counter[0]_i_6_n_0 ),
        .I4(cycle_counter_reg[23]),
        .I5(\cycle_counter[0]_i_7_n_0 ),
        .O(cycle_counter));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \cycle_counter[0]_i_10 
       (.I0(cycle_counter_reg[1]),
        .I1(cycle_counter_reg[5]),
        .I2(cycle_counter_reg[4]),
        .I3(cycle_counter_reg[3]),
        .I4(cycle_counter_reg[0]),
        .I5(cycle_counter_reg[2]),
        .O(\cycle_counter[0]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \cycle_counter[0]_i_3 
       (.I0(cycle_counter_reg[19]),
        .I1(cycle_counter_reg[18]),
        .O(\cycle_counter[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEAAAAAAAAAAA)) 
    \cycle_counter[0]_i_4 
       (.I0(cycle_counter_reg[15]),
        .I1(\cycle_counter[0]_i_9_n_0 ),
        .I2(cycle_counter_reg[12]),
        .I3(cycle_counter_reg[11]),
        .I4(cycle_counter_reg[13]),
        .I5(cycle_counter_reg[14]),
        .O(\cycle_counter[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \cycle_counter[0]_i_5 
       (.I0(cycle_counter_reg[17]),
        .I1(cycle_counter_reg[16]),
        .O(\cycle_counter[0]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \cycle_counter[0]_i_6 
       (.I0(cycle_counter_reg[22]),
        .I1(cycle_counter_reg[20]),
        .I2(cycle_counter_reg[21]),
        .O(\cycle_counter[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \cycle_counter[0]_i_7 
       (.I0(cycle_counter_reg[24]),
        .I1(cycle_counter_reg[25]),
        .I2(cycle_counter_reg[26]),
        .I3(running),
        .O(\cycle_counter[0]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cycle_counter[0]_i_8 
       (.I0(cycle_counter_reg[0]),
        .O(\cycle_counter[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFD00)) 
    \cycle_counter[0]_i_9 
       (.I0(\cycle_counter[0]_i_10_n_0 ),
        .I1(cycle_counter_reg[6]),
        .I2(cycle_counter_reg[7]),
        .I3(cycle_counter_reg[8]),
        .I4(cycle_counter_reg[9]),
        .I5(cycle_counter_reg[10]),
        .O(\cycle_counter[0]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_counter_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(running),
        .D(\cycle_counter_reg[0]_i_2_n_7 ),
        .Q(cycle_counter_reg[0]),
        .R(cycle_counter));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cycle_counter_reg[0]_i_2 
       (.CI(\<const0> ),
        .CO({\cycle_counter_reg[0]_i_2_n_0 ,\cycle_counter_reg[0]_i_2_n_1 ,\cycle_counter_reg[0]_i_2_n_2 ,\cycle_counter_reg[0]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O({\cycle_counter_reg[0]_i_2_n_4 ,\cycle_counter_reg[0]_i_2_n_5 ,\cycle_counter_reg[0]_i_2_n_6 ,\cycle_counter_reg[0]_i_2_n_7 }),
        .S({cycle_counter_reg[3:1],\cycle_counter[0]_i_8_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_counter_reg[10] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(running),
        .D(\cycle_counter_reg[8]_i_1_n_5 ),
        .Q(cycle_counter_reg[10]),
        .R(cycle_counter));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_counter_reg[11] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(running),
        .D(\cycle_counter_reg[8]_i_1_n_4 ),
        .Q(cycle_counter_reg[11]),
        .R(cycle_counter));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_counter_reg[12] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(running),
        .D(\cycle_counter_reg[12]_i_1_n_7 ),
        .Q(cycle_counter_reg[12]),
        .R(cycle_counter));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cycle_counter_reg[12]_i_1 
       (.CI(\cycle_counter_reg[8]_i_1_n_0 ),
        .CO({\cycle_counter_reg[12]_i_1_n_0 ,\cycle_counter_reg[12]_i_1_n_1 ,\cycle_counter_reg[12]_i_1_n_2 ,\cycle_counter_reg[12]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\cycle_counter_reg[12]_i_1_n_4 ,\cycle_counter_reg[12]_i_1_n_5 ,\cycle_counter_reg[12]_i_1_n_6 ,\cycle_counter_reg[12]_i_1_n_7 }),
        .S(cycle_counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_counter_reg[13] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(running),
        .D(\cycle_counter_reg[12]_i_1_n_6 ),
        .Q(cycle_counter_reg[13]),
        .R(cycle_counter));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_counter_reg[14] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(running),
        .D(\cycle_counter_reg[12]_i_1_n_5 ),
        .Q(cycle_counter_reg[14]),
        .R(cycle_counter));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_counter_reg[15] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(running),
        .D(\cycle_counter_reg[12]_i_1_n_4 ),
        .Q(cycle_counter_reg[15]),
        .R(cycle_counter));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_counter_reg[16] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(running),
        .D(\cycle_counter_reg[16]_i_1_n_7 ),
        .Q(cycle_counter_reg[16]),
        .R(cycle_counter));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cycle_counter_reg[16]_i_1 
       (.CI(\cycle_counter_reg[12]_i_1_n_0 ),
        .CO({\cycle_counter_reg[16]_i_1_n_0 ,\cycle_counter_reg[16]_i_1_n_1 ,\cycle_counter_reg[16]_i_1_n_2 ,\cycle_counter_reg[16]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\cycle_counter_reg[16]_i_1_n_4 ,\cycle_counter_reg[16]_i_1_n_5 ,\cycle_counter_reg[16]_i_1_n_6 ,\cycle_counter_reg[16]_i_1_n_7 }),
        .S(cycle_counter_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_counter_reg[17] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(running),
        .D(\cycle_counter_reg[16]_i_1_n_6 ),
        .Q(cycle_counter_reg[17]),
        .R(cycle_counter));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_counter_reg[18] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(running),
        .D(\cycle_counter_reg[16]_i_1_n_5 ),
        .Q(cycle_counter_reg[18]),
        .R(cycle_counter));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_counter_reg[19] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(running),
        .D(\cycle_counter_reg[16]_i_1_n_4 ),
        .Q(cycle_counter_reg[19]),
        .R(cycle_counter));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_counter_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(running),
        .D(\cycle_counter_reg[0]_i_2_n_6 ),
        .Q(cycle_counter_reg[1]),
        .R(cycle_counter));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_counter_reg[20] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(running),
        .D(\cycle_counter_reg[20]_i_1_n_7 ),
        .Q(cycle_counter_reg[20]),
        .R(cycle_counter));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cycle_counter_reg[20]_i_1 
       (.CI(\cycle_counter_reg[16]_i_1_n_0 ),
        .CO({\cycle_counter_reg[20]_i_1_n_0 ,\cycle_counter_reg[20]_i_1_n_1 ,\cycle_counter_reg[20]_i_1_n_2 ,\cycle_counter_reg[20]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\cycle_counter_reg[20]_i_1_n_4 ,\cycle_counter_reg[20]_i_1_n_5 ,\cycle_counter_reg[20]_i_1_n_6 ,\cycle_counter_reg[20]_i_1_n_7 }),
        .S(cycle_counter_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_counter_reg[21] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(running),
        .D(\cycle_counter_reg[20]_i_1_n_6 ),
        .Q(cycle_counter_reg[21]),
        .R(cycle_counter));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_counter_reg[22] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(running),
        .D(\cycle_counter_reg[20]_i_1_n_5 ),
        .Q(cycle_counter_reg[22]),
        .R(cycle_counter));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_counter_reg[23] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(running),
        .D(\cycle_counter_reg[20]_i_1_n_4 ),
        .Q(cycle_counter_reg[23]),
        .R(cycle_counter));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_counter_reg[24] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(running),
        .D(\cycle_counter_reg[24]_i_1_n_7 ),
        .Q(cycle_counter_reg[24]),
        .R(cycle_counter));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cycle_counter_reg[24]_i_1 
       (.CI(\cycle_counter_reg[20]_i_1_n_0 ),
        .CO({\cycle_counter_reg[24]_i_1_n_2 ,\cycle_counter_reg[24]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\cycle_counter_reg[24]_i_1_n_5 ,\cycle_counter_reg[24]_i_1_n_6 ,\cycle_counter_reg[24]_i_1_n_7 }),
        .S({\<const0> ,cycle_counter_reg[26:24]}));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_counter_reg[25] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(running),
        .D(\cycle_counter_reg[24]_i_1_n_6 ),
        .Q(cycle_counter_reg[25]),
        .R(cycle_counter));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_counter_reg[26] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(running),
        .D(\cycle_counter_reg[24]_i_1_n_5 ),
        .Q(cycle_counter_reg[26]),
        .R(cycle_counter));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_counter_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(running),
        .D(\cycle_counter_reg[0]_i_2_n_5 ),
        .Q(cycle_counter_reg[2]),
        .R(cycle_counter));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_counter_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(running),
        .D(\cycle_counter_reg[0]_i_2_n_4 ),
        .Q(cycle_counter_reg[3]),
        .R(cycle_counter));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_counter_reg[4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(running),
        .D(\cycle_counter_reg[4]_i_1_n_7 ),
        .Q(cycle_counter_reg[4]),
        .R(cycle_counter));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cycle_counter_reg[4]_i_1 
       (.CI(\cycle_counter_reg[0]_i_2_n_0 ),
        .CO({\cycle_counter_reg[4]_i_1_n_0 ,\cycle_counter_reg[4]_i_1_n_1 ,\cycle_counter_reg[4]_i_1_n_2 ,\cycle_counter_reg[4]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\cycle_counter_reg[4]_i_1_n_4 ,\cycle_counter_reg[4]_i_1_n_5 ,\cycle_counter_reg[4]_i_1_n_6 ,\cycle_counter_reg[4]_i_1_n_7 }),
        .S(cycle_counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_counter_reg[5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(running),
        .D(\cycle_counter_reg[4]_i_1_n_6 ),
        .Q(cycle_counter_reg[5]),
        .R(cycle_counter));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_counter_reg[6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(running),
        .D(\cycle_counter_reg[4]_i_1_n_5 ),
        .Q(cycle_counter_reg[6]),
        .R(cycle_counter));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_counter_reg[7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(running),
        .D(\cycle_counter_reg[4]_i_1_n_4 ),
        .Q(cycle_counter_reg[7]),
        .R(cycle_counter));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_counter_reg[8] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(running),
        .D(\cycle_counter_reg[8]_i_1_n_7 ),
        .Q(cycle_counter_reg[8]),
        .R(cycle_counter));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cycle_counter_reg[8]_i_1 
       (.CI(\cycle_counter_reg[4]_i_1_n_0 ),
        .CO({\cycle_counter_reg[8]_i_1_n_0 ,\cycle_counter_reg[8]_i_1_n_1 ,\cycle_counter_reg[8]_i_1_n_2 ,\cycle_counter_reg[8]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\cycle_counter_reg[8]_i_1_n_4 ,\cycle_counter_reg[8]_i_1_n_5 ,\cycle_counter_reg[8]_i_1_n_6 ,\cycle_counter_reg[8]_i_1_n_7 }),
        .S(cycle_counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_counter_reg[9] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(running),
        .D(\cycle_counter_reg[8]_i_1_n_6 ),
        .Q(cycle_counter_reg[9]),
        .R(cycle_counter));
  FDRE #(
    .INIT(1'b0)) 
    running_reg
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(running_reg_0),
        .Q(running),
        .R(\<const0> ));
endmodule

module dac
   (CO,
    Q,
    E,
    \counter_reg[6]_0 ,
    DI,
    S,
    code,
    CLK_125MHZ_FPGA_IBUF_BUFG);
  output [0:0]CO;
  output [1:0]Q;
  output [0:0]E;
  output \counter_reg[6]_0 ;
  input [0:0]DI;
  input [0:0]S;
  input [1:0]code;
  input CLK_125MHZ_FPGA_IBUF_BUFG;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [0:0]CO;
  wire [0:0]DI;
  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]S;
  wire [1:0]code;
  wire [7:0]counter;
  wire \counter[9]_i_2_n_0 ;
  wire [9:0]counter_0;
  wire \counter_reg[6]_0 ;
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
    \counter[0]_i_1__0 
       (.I0(counter[0]),
        .O(counter_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1__0 
       (.I0(counter[0]),
        .I1(counter[1]),
        .O(counter_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter[2]_i_1__0 
       (.I0(counter[1]),
        .I1(counter[0]),
        .I2(counter[2]),
        .O(counter_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter[3]_i_1__0 
       (.I0(counter[2]),
        .I1(counter[0]),
        .I2(counter[1]),
        .I3(counter[3]),
        .O(counter_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \counter[4]_i_1 
       (.I0(counter[0]),
        .I1(counter[1]),
        .I2(counter[2]),
        .I3(counter[3]),
        .I4(counter[4]),
        .O(counter_0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \counter[5]_i_1 
       (.I0(counter[4]),
        .I1(counter[3]),
        .I2(counter[2]),
        .I3(counter[1]),
        .I4(counter[0]),
        .I5(counter[5]),
        .O(counter_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \counter[6]_i_1 
       (.I0(\counter[9]_i_2_n_0 ),
        .I1(counter[6]),
        .O(counter_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \counter[7]_i_1 
       (.I0(counter[6]),
        .I1(\counter[9]_i_2_n_0 ),
        .I2(counter[7]),
        .O(counter_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hBF40)) 
    \counter[8]_i_1 
       (.I0(\counter[9]_i_2_n_0 ),
        .I1(counter[6]),
        .I2(counter[7]),
        .I3(Q[0]),
        .O(counter_0[8]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hFF7F0080)) 
    \counter[9]_i_1 
       (.I0(Q[0]),
        .I1(counter[7]),
        .I2(counter[6]),
        .I3(\counter[9]_i_2_n_0 ),
        .I4(Q[1]),
        .O(counter_0[9]));
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
        .D(counter_0[0]),
        .Q(counter[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(counter_0[1]),
        .Q(counter[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(counter_0[2]),
        .Q(counter[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(counter_0[3]),
        .Q(counter[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(counter_0[4]),
        .Q(counter[4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(counter_0[5]),
        .Q(counter[5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(counter_0[6]),
        .Q(counter[6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(counter_0[7]),
        .Q(counter[7]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(counter_0[8]),
        .Q(Q[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(counter_0[9]),
        .Q(Q[1]),
        .R(\<const0> ));
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
        .DI({\<const0> ,\<const0> ,\<const0> ,DI}),
        .S({\<const0> ,\<const0> ,\<const0> ,S}));
  LUT3 #(
    .INIT(8'h70)) 
    pwm0_carry_i_1
       (.I0(counter[7]),
        .I1(counter[6]),
        .I2(code[0]),
        .O(pwm0_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h70)) 
    pwm0_carry_i_2
       (.I0(counter[5]),
        .I1(counter[4]),
        .I2(code[1]),
        .O(pwm0_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h70)) 
    pwm0_carry_i_3
       (.I0(counter[3]),
        .I1(counter[2]),
        .I2(code[0]),
        .O(pwm0_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pwm0_carry_i_4
       (.I0(counter[1]),
        .O(pwm0_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h81)) 
    pwm0_carry_i_5
       (.I0(code[0]),
        .I1(counter[6]),
        .I2(counter[7]),
        .O(pwm0_carry_i_5_n_0));
  LUT3 #(
    .INIT(8'h81)) 
    pwm0_carry_i_6
       (.I0(code[1]),
        .I1(counter[4]),
        .I2(counter[5]),
        .O(pwm0_carry_i_6_n_0));
  LUT3 #(
    .INIT(8'h81)) 
    pwm0_carry_i_7
       (.I0(code[0]),
        .I1(counter[2]),
        .I2(counter[3]),
        .O(pwm0_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pwm0_carry_i_8
       (.I0(counter[1]),
        .I1(counter[0]),
        .O(pwm0_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \sample_counter[7]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(counter[7]),
        .I3(counter[6]),
        .I4(\counter[9]_i_2_n_0 ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hBFFF)) 
    wave_state_i_2
       (.I0(\counter[9]_i_2_n_0 ),
        .I1(counter[6]),
        .I2(counter[7]),
        .I3(Q[0]),
        .O(\counter_reg[6]_0 ));
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
    .INIT(64'h0000000000000080)) 
    \debounce_logic[0].debounced_signal[0]_i_1 
       (.I0(\debounce_logic[0].saturating_counter_reg[0]_0 [6]),
        .I1(\debounce_logic[0].saturating_counter_reg[0]_0 [7]),
        .I2(\debounce_logic[0].saturating_counter[0][7]_i_4_n_0 ),
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
        .I1(\debounce_logic[0].saturating_counter_reg[0]_0 [1]),
        .I2(\debounce_logic[0].saturating_counter_reg[0]_0 [0]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \debounce_logic[0].saturating_counter[0][3]_i_1 
       (.I0(\debounce_logic[0].saturating_counter_reg[0]_0 [3]),
        .I1(\debounce_logic[0].saturating_counter_reg[0]_0 [0]),
        .I2(\debounce_logic[0].saturating_counter_reg[0]_0 [1]),
        .I3(\debounce_logic[0].saturating_counter_reg[0]_0 [2]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \debounce_logic[0].saturating_counter[0][4]_i_1 
       (.I0(\debounce_logic[0].saturating_counter_reg[0]_0 [4]),
        .I1(\debounce_logic[0].saturating_counter_reg[0]_0 [2]),
        .I2(\debounce_logic[0].saturating_counter_reg[0]_0 [1]),
        .I3(\debounce_logic[0].saturating_counter_reg[0]_0 [0]),
        .I4(\debounce_logic[0].saturating_counter_reg[0]_0 [3]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \debounce_logic[0].saturating_counter[0][5]_i_1 
       (.I0(\debounce_logic[0].saturating_counter_reg[0]_0 [5]),
        .I1(\debounce_logic[0].saturating_counter_reg[0]_0 [3]),
        .I2(\debounce_logic[0].saturating_counter_reg[0]_0 [0]),
        .I3(\debounce_logic[0].saturating_counter_reg[0]_0 [1]),
        .I4(\debounce_logic[0].saturating_counter_reg[0]_0 [2]),
        .I5(\debounce_logic[0].saturating_counter_reg[0]_0 [4]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \debounce_logic[0].saturating_counter[0][6]_i_1 
       (.I0(\debounce_logic[0].saturating_counter_reg[0]_0 [6]),
        .I1(\debounce_logic[0].saturating_counter_reg[0]_0 [4]),
        .I2(\debounce_logic[0].saturating_counter[0][7]_i_4_n_0 ),
        .I3(\debounce_logic[0].saturating_counter_reg[0]_0 [3]),
        .I4(\debounce_logic[0].saturating_counter_reg[0]_0 [5]),
        .O(p_0_in[6]));
  LUT2 #(
    .INIT(4'h2)) 
    \debounce_logic[0].saturating_counter[0][7]_i_1 
       (.I0(\wrapping_counter[15]_i_1_n_0 ),
        .I1(Q[0]),
        .O(\debounce_logic[0].saturating_counter[0][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02AAAAAA)) 
    \debounce_logic[0].saturating_counter[0][7]_i_2 
       (.I0(\wrapping_counter[15]_i_1_n_0 ),
        .I1(\debounce_logic[0].saturating_counter[0][7]_i_4_n_0 ),
        .I2(\debounce_logic[0].saturating_counter[0][7]_i_5_n_0 ),
        .I3(\debounce_logic[0].saturating_counter_reg[0]_0 [6]),
        .I4(\debounce_logic[0].saturating_counter_reg[0]_0 [7]),
        .O(saturating_counter));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \debounce_logic[0].saturating_counter[0][7]_i_3 
       (.I0(\debounce_logic[0].saturating_counter_reg[0]_0 [7]),
        .I1(\debounce_logic[0].saturating_counter_reg[0]_0 [5]),
        .I2(\debounce_logic[0].saturating_counter_reg[0]_0 [3]),
        .I3(\debounce_logic[0].saturating_counter[0][7]_i_4_n_0 ),
        .I4(\debounce_logic[0].saturating_counter_reg[0]_0 [4]),
        .I5(\debounce_logic[0].saturating_counter_reg[0]_0 [6]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \debounce_logic[0].saturating_counter[0][7]_i_4 
       (.I0(\debounce_logic[0].saturating_counter_reg[0]_0 [2]),
        .I1(\debounce_logic[0].saturating_counter_reg[0]_0 [1]),
        .I2(\debounce_logic[0].saturating_counter_reg[0]_0 [0]),
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
        .D(p_0_in[3]),
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
    .INIT(64'h0000000000000080)) 
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
        .I1(\debounce_logic[1].saturating_counter_reg[1]_1 [1]),
        .I2(\debounce_logic[1].saturating_counter_reg[1]_1 [0]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \debounce_logic[1].saturating_counter[1][3]_i_1 
       (.I0(\debounce_logic[1].saturating_counter_reg[1]_1 [3]),
        .I1(\debounce_logic[1].saturating_counter_reg[1]_1 [0]),
        .I2(\debounce_logic[1].saturating_counter_reg[1]_1 [1]),
        .I3(\debounce_logic[1].saturating_counter_reg[1]_1 [2]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \debounce_logic[1].saturating_counter[1][4]_i_1 
       (.I0(\debounce_logic[1].saturating_counter_reg[1]_1 [4]),
        .I1(\debounce_logic[1].saturating_counter_reg[1]_1 [2]),
        .I2(\debounce_logic[1].saturating_counter_reg[1]_1 [1]),
        .I3(\debounce_logic[1].saturating_counter_reg[1]_1 [0]),
        .I4(\debounce_logic[1].saturating_counter_reg[1]_1 [3]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \debounce_logic[1].saturating_counter[1][5]_i_1 
       (.I0(\debounce_logic[1].saturating_counter_reg[1]_1 [5]),
        .I1(\debounce_logic[1].saturating_counter_reg[1]_1 [3]),
        .I2(\debounce_logic[1].saturating_counter_reg[1]_1 [0]),
        .I3(\debounce_logic[1].saturating_counter_reg[1]_1 [1]),
        .I4(\debounce_logic[1].saturating_counter_reg[1]_1 [2]),
        .I5(\debounce_logic[1].saturating_counter_reg[1]_1 [4]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \debounce_logic[1].saturating_counter[1][6]_i_1 
       (.I0(\debounce_logic[1].saturating_counter_reg[1]_1 [6]),
        .I1(\debounce_logic[1].saturating_counter_reg[1]_1 [4]),
        .I2(\debounce_logic[1].saturating_counter[1][7]_i_4_n_0 ),
        .I3(\debounce_logic[1].saturating_counter_reg[1]_1 [3]),
        .I4(\debounce_logic[1].saturating_counter_reg[1]_1 [5]),
        .O(p_0_in__0[6]));
  LUT2 #(
    .INIT(4'h2)) 
    \debounce_logic[1].saturating_counter[1][7]_i_1 
       (.I0(\wrapping_counter[15]_i_1_n_0 ),
        .I1(Q[1]),
        .O(\debounce_logic[1].saturating_counter[1][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02AAAAAA)) 
    \debounce_logic[1].saturating_counter[1][7]_i_2 
       (.I0(\wrapping_counter[15]_i_1_n_0 ),
        .I1(\debounce_logic[1].saturating_counter[1][7]_i_4_n_0 ),
        .I2(\debounce_logic[1].saturating_counter[1][7]_i_5_n_0 ),
        .I3(\debounce_logic[1].saturating_counter_reg[1]_1 [6]),
        .I4(\debounce_logic[1].saturating_counter_reg[1]_1 [7]),
        .O(\debounce_logic[1].saturating_counter[1][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \debounce_logic[1].saturating_counter[1][7]_i_3 
       (.I0(\debounce_logic[1].saturating_counter_reg[1]_1 [7]),
        .I1(\debounce_logic[1].saturating_counter_reg[1]_1 [5]),
        .I2(\debounce_logic[1].saturating_counter_reg[1]_1 [3]),
        .I3(\debounce_logic[1].saturating_counter[1][7]_i_4_n_0 ),
        .I4(\debounce_logic[1].saturating_counter_reg[1]_1 [4]),
        .I5(\debounce_logic[1].saturating_counter_reg[1]_1 [6]),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \debounce_logic[1].saturating_counter[1][7]_i_4 
       (.I0(\debounce_logic[1].saturating_counter_reg[1]_1 [2]),
        .I1(\debounce_logic[1].saturating_counter_reg[1]_1 [1]),
        .I2(\debounce_logic[1].saturating_counter_reg[1]_1 [0]),
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
        .D(p_0_in__0[3]),
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
    .INIT(64'h0000000000000080)) 
    \debounce_logic[2].debounced_signal[2]_i_1 
       (.I0(\debounce_logic[2].saturating_counter_reg[2]_2 [6]),
        .I1(\debounce_logic[2].saturating_counter_reg[2]_2 [7]),
        .I2(\debounce_logic[2].saturating_counter[2][7]_i_4_n_0 ),
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
        .I1(\debounce_logic[2].saturating_counter_reg[2]_2 [1]),
        .I2(\debounce_logic[2].saturating_counter_reg[2]_2 [0]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \debounce_logic[2].saturating_counter[2][3]_i_1 
       (.I0(\debounce_logic[2].saturating_counter_reg[2]_2 [3]),
        .I1(\debounce_logic[2].saturating_counter_reg[2]_2 [0]),
        .I2(\debounce_logic[2].saturating_counter_reg[2]_2 [1]),
        .I3(\debounce_logic[2].saturating_counter_reg[2]_2 [2]),
        .O(p_0_in__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \debounce_logic[2].saturating_counter[2][4]_i_1 
       (.I0(\debounce_logic[2].saturating_counter_reg[2]_2 [4]),
        .I1(\debounce_logic[2].saturating_counter_reg[2]_2 [2]),
        .I2(\debounce_logic[2].saturating_counter_reg[2]_2 [1]),
        .I3(\debounce_logic[2].saturating_counter_reg[2]_2 [0]),
        .I4(\debounce_logic[2].saturating_counter_reg[2]_2 [3]),
        .O(p_0_in__1[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \debounce_logic[2].saturating_counter[2][5]_i_1 
       (.I0(\debounce_logic[2].saturating_counter_reg[2]_2 [5]),
        .I1(\debounce_logic[2].saturating_counter_reg[2]_2 [3]),
        .I2(\debounce_logic[2].saturating_counter_reg[2]_2 [0]),
        .I3(\debounce_logic[2].saturating_counter_reg[2]_2 [1]),
        .I4(\debounce_logic[2].saturating_counter_reg[2]_2 [2]),
        .I5(\debounce_logic[2].saturating_counter_reg[2]_2 [4]),
        .O(p_0_in__1[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \debounce_logic[2].saturating_counter[2][6]_i_1 
       (.I0(\debounce_logic[2].saturating_counter_reg[2]_2 [6]),
        .I1(\debounce_logic[2].saturating_counter_reg[2]_2 [4]),
        .I2(\debounce_logic[2].saturating_counter[2][7]_i_4_n_0 ),
        .I3(\debounce_logic[2].saturating_counter_reg[2]_2 [3]),
        .I4(\debounce_logic[2].saturating_counter_reg[2]_2 [5]),
        .O(p_0_in__1[6]));
  LUT2 #(
    .INIT(4'h2)) 
    \debounce_logic[2].saturating_counter[2][7]_i_1 
       (.I0(\wrapping_counter[15]_i_1_n_0 ),
        .I1(Q[2]),
        .O(\debounce_logic[2].saturating_counter[2][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02AAAAAA)) 
    \debounce_logic[2].saturating_counter[2][7]_i_2 
       (.I0(\wrapping_counter[15]_i_1_n_0 ),
        .I1(\debounce_logic[2].saturating_counter[2][7]_i_4_n_0 ),
        .I2(\debounce_logic[2].saturating_counter[2][7]_i_5_n_0 ),
        .I3(\debounce_logic[2].saturating_counter_reg[2]_2 [6]),
        .I4(\debounce_logic[2].saturating_counter_reg[2]_2 [7]),
        .O(\debounce_logic[2].saturating_counter[2][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \debounce_logic[2].saturating_counter[2][7]_i_3 
       (.I0(\debounce_logic[2].saturating_counter_reg[2]_2 [7]),
        .I1(\debounce_logic[2].saturating_counter_reg[2]_2 [5]),
        .I2(\debounce_logic[2].saturating_counter_reg[2]_2 [3]),
        .I3(\debounce_logic[2].saturating_counter[2][7]_i_4_n_0 ),
        .I4(\debounce_logic[2].saturating_counter_reg[2]_2 [4]),
        .I5(\debounce_logic[2].saturating_counter_reg[2]_2 [6]),
        .O(p_0_in__1[7]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \debounce_logic[2].saturating_counter[2][7]_i_4 
       (.I0(\debounce_logic[2].saturating_counter_reg[2]_2 [2]),
        .I1(\debounce_logic[2].saturating_counter_reg[2]_2 [1]),
        .I2(\debounce_logic[2].saturating_counter_reg[2]_2 [0]),
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
    .INIT(64'h0000000000000080)) 
    \debounce_logic[3].debounced_signal[3]_i_1 
       (.I0(\debounce_logic[3].saturating_counter_reg[3]_3 [6]),
        .I1(\debounce_logic[3].saturating_counter_reg[3]_3 [7]),
        .I2(\debounce_logic[3].saturating_counter[3][7]_i_4_n_0 ),
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
        .I1(\debounce_logic[3].saturating_counter_reg[3]_3 [1]),
        .I2(\debounce_logic[3].saturating_counter_reg[3]_3 [0]),
        .O(p_0_in__2[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \debounce_logic[3].saturating_counter[3][3]_i_1 
       (.I0(\debounce_logic[3].saturating_counter_reg[3]_3 [3]),
        .I1(\debounce_logic[3].saturating_counter_reg[3]_3 [0]),
        .I2(\debounce_logic[3].saturating_counter_reg[3]_3 [1]),
        .I3(\debounce_logic[3].saturating_counter_reg[3]_3 [2]),
        .O(p_0_in__2[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \debounce_logic[3].saturating_counter[3][4]_i_1 
       (.I0(\debounce_logic[3].saturating_counter_reg[3]_3 [4]),
        .I1(\debounce_logic[3].saturating_counter_reg[3]_3 [2]),
        .I2(\debounce_logic[3].saturating_counter_reg[3]_3 [1]),
        .I3(\debounce_logic[3].saturating_counter_reg[3]_3 [0]),
        .I4(\debounce_logic[3].saturating_counter_reg[3]_3 [3]),
        .O(p_0_in__2[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \debounce_logic[3].saturating_counter[3][5]_i_1 
       (.I0(\debounce_logic[3].saturating_counter_reg[3]_3 [5]),
        .I1(\debounce_logic[3].saturating_counter_reg[3]_3 [3]),
        .I2(\debounce_logic[3].saturating_counter_reg[3]_3 [0]),
        .I3(\debounce_logic[3].saturating_counter_reg[3]_3 [1]),
        .I4(\debounce_logic[3].saturating_counter_reg[3]_3 [2]),
        .I5(\debounce_logic[3].saturating_counter_reg[3]_3 [4]),
        .O(p_0_in__2[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \debounce_logic[3].saturating_counter[3][6]_i_1 
       (.I0(\debounce_logic[3].saturating_counter_reg[3]_3 [6]),
        .I1(\debounce_logic[3].saturating_counter_reg[3]_3 [4]),
        .I2(\debounce_logic[3].saturating_counter[3][7]_i_4_n_0 ),
        .I3(\debounce_logic[3].saturating_counter_reg[3]_3 [3]),
        .I4(\debounce_logic[3].saturating_counter_reg[3]_3 [5]),
        .O(p_0_in__2[6]));
  LUT2 #(
    .INIT(4'h2)) 
    \debounce_logic[3].saturating_counter[3][7]_i_1 
       (.I0(\wrapping_counter[15]_i_1_n_0 ),
        .I1(Q[3]),
        .O(\debounce_logic[3].saturating_counter[3][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02AAAAAA)) 
    \debounce_logic[3].saturating_counter[3][7]_i_2 
       (.I0(\wrapping_counter[15]_i_1_n_0 ),
        .I1(\debounce_logic[3].saturating_counter[3][7]_i_4_n_0 ),
        .I2(\debounce_logic[3].saturating_counter[3][7]_i_5_n_0 ),
        .I3(\debounce_logic[3].saturating_counter_reg[3]_3 [6]),
        .I4(\debounce_logic[3].saturating_counter_reg[3]_3 [7]),
        .O(\debounce_logic[3].saturating_counter[3][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \debounce_logic[3].saturating_counter[3][7]_i_3 
       (.I0(\debounce_logic[3].saturating_counter_reg[3]_3 [7]),
        .I1(\debounce_logic[3].saturating_counter_reg[3]_3 [5]),
        .I2(\debounce_logic[3].saturating_counter_reg[3]_3 [3]),
        .I3(\debounce_logic[3].saturating_counter[3][7]_i_4_n_0 ),
        .I4(\debounce_logic[3].saturating_counter_reg[3]_3 [4]),
        .I5(\debounce_logic[3].saturating_counter_reg[3]_3 [6]),
        .O(p_0_in__2[7]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \debounce_logic[3].saturating_counter[3][7]_i_4 
       (.I0(\debounce_logic[3].saturating_counter_reg[3]_3 [2]),
        .I1(\debounce_logic[3].saturating_counter_reg[3]_3 [1]),
        .I2(\debounce_logic[3].saturating_counter_reg[3]_3 [0]),
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
   (SR,
    Q,
    \edge_detect_pulse_reg[1]_0 ,
    \edge_detect_pulse_reg[2]_0 ,
    running,
    D,
    CLK_125MHZ_FPGA_IBUF_BUFG);
  output [0:0]SR;
  output [0:0]Q;
  output \edge_detect_pulse_reg[1]_0 ;
  output \edge_detect_pulse_reg[2]_0 ;
  input running;
  input [3:0]D;
  input CLK_125MHZ_FPGA_IBUF_BUFG;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [3:0]D;
  wire [0:0]Q;
  wire [0:0]SR;
  wire [3:1]buttons_pressed;
  wire \edge_detect_pulse[0]_i_1_n_0 ;
  wire \edge_detect_pulse[1]_i_1_n_0 ;
  wire \edge_detect_pulse[2]_i_1_n_0 ;
  wire \edge_detect_pulse[3]_i_1_n_0 ;
  wire \edge_detect_pulse_reg[1]_0 ;
  wire \edge_detect_pulse_reg[2]_0 ;
  wire running;
  wire [3:0]signal_in_d;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \counter[3]_i_1 
       (.I0(Q),
        .I1(running),
        .I2(buttons_pressed[3]),
        .I3(buttons_pressed[1]),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \counter[3]_i_5 
       (.I0(buttons_pressed[1]),
        .I1(Q),
        .I2(running),
        .O(\edge_detect_pulse_reg[1]_0 ));
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
        .Q(Q),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \edge_detect_pulse_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\edge_detect_pulse[1]_i_1_n_0 ),
        .Q(buttons_pressed[1]),
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
        .Q(buttons_pressed[3]),
        .R(\<const0> ));
  LUT2 #(
    .INIT(4'h6)) 
    running_i_1
       (.I0(buttons_pressed[2]),
        .I1(running),
        .O(\edge_detect_pulse_reg[2]_0 ));
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
   (DI,
    code,
    S,
    CLK_125MHZ_FPGA_IBUF_BUFG,
    Q,
    wave_state_reg_0,
    E);
  output [0:0]DI;
  output [1:0]code;
  output [0:0]S;
  input CLK_125MHZ_FPGA_IBUF_BUFG;
  input [1:0]Q;
  input wave_state_reg_0;
  input [0:0]E;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK_125MHZ_FPGA_IBUF_BUFG;
  wire [0:0]DI;
  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]S;
  wire [1:0]code;
  wire \code[2]_i_1_n_0 ;
  wire [7:0]sample_counter;
  wire \sample_counter[3]_i_2_n_0 ;
  wire \sample_counter[6]_i_2_n_0 ;
  wire \sample_counter[7]_i_3_n_0 ;
  wire \sample_counter[7]_i_4_n_0 ;
  wire \sample_counter[7]_i_5_n_0 ;
  wire [7:0]sample_counter_0;
  wire wave_state;
  wire wave_state_i_1_n_0;
  wire wave_state_i_3_n_0;
  wire wave_state_reg_0;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \code[2]_i_1 
       (.I0(wave_state),
        .O(\code[2]_i_1_n_0 ));
  FDRE \code_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\code[2]_i_1_n_0 ),
        .Q(code[0]),
        .R(\<const0> ));
  FDRE \code_reg[4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(\<const1> ),
        .D(wave_state),
        .Q(code[1]),
        .R(\<const0> ));
  LUT4 #(
    .INIT(16'h22B2)) 
    pwm0_carry__0_i_1
       (.I0(code[1]),
        .I1(Q[1]),
        .I2(code[0]),
        .I3(Q[0]),
        .O(DI));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm0_carry__0_i_2
       (.I0(code[1]),
        .I1(Q[1]),
        .I2(code[0]),
        .I3(Q[0]),
        .O(S));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h00F7)) 
    \sample_counter[0]_i_1 
       (.I0(sample_counter[1]),
        .I1(sample_counter[3]),
        .I2(\sample_counter[3]_i_2_n_0 ),
        .I3(sample_counter[0]),
        .O(sample_counter_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h0FB0)) 
    \sample_counter[1]_i_1 
       (.I0(\sample_counter[3]_i_2_n_0 ),
        .I1(sample_counter[3]),
        .I2(sample_counter[1]),
        .I3(sample_counter[0]),
        .O(sample_counter_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \sample_counter[2]_i_1 
       (.I0(sample_counter[1]),
        .I1(sample_counter[0]),
        .I2(sample_counter[2]),
        .O(sample_counter_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h62CCC8CC)) 
    \sample_counter[3]_i_1 
       (.I0(sample_counter[0]),
        .I1(sample_counter[3]),
        .I2(\sample_counter[3]_i_2_n_0 ),
        .I3(sample_counter[1]),
        .I4(sample_counter[2]),
        .O(sample_counter_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \sample_counter[3]_i_2 
       (.I0(sample_counter[5]),
        .I1(sample_counter[6]),
        .I2(sample_counter[2]),
        .I3(sample_counter[4]),
        .I4(sample_counter[7]),
        .O(\sample_counter[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \sample_counter[4]_i_1 
       (.I0(sample_counter[1]),
        .I1(sample_counter[3]),
        .I2(sample_counter[0]),
        .I3(sample_counter[2]),
        .I4(sample_counter[4]),
        .O(sample_counter_0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \sample_counter[5]_i_1 
       (.I0(sample_counter[4]),
        .I1(sample_counter[2]),
        .I2(sample_counter[0]),
        .I3(sample_counter[3]),
        .I4(sample_counter[1]),
        .I5(sample_counter[5]),
        .O(sample_counter_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hBF40)) 
    \sample_counter[6]_i_1 
       (.I0(\sample_counter[6]_i_2_n_0 ),
        .I1(sample_counter[4]),
        .I2(sample_counter[5]),
        .I3(sample_counter[6]),
        .O(sample_counter_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \sample_counter[6]_i_2 
       (.I0(sample_counter[2]),
        .I1(sample_counter[0]),
        .I2(sample_counter[3]),
        .I3(sample_counter[1]),
        .O(\sample_counter[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCCC6C8828)) 
    \sample_counter[7]_i_2 
       (.I0(sample_counter[0]),
        .I1(sample_counter[7]),
        .I2(sample_counter[2]),
        .I3(\sample_counter[7]_i_3_n_0 ),
        .I4(\sample_counter[7]_i_4_n_0 ),
        .I5(\sample_counter[7]_i_5_n_0 ),
        .O(sample_counter_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \sample_counter[7]_i_3 
       (.I0(sample_counter[5]),
        .I1(sample_counter[4]),
        .I2(sample_counter[6]),
        .O(\sample_counter[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sample_counter[7]_i_4 
       (.I0(sample_counter[4]),
        .I1(sample_counter[2]),
        .I2(sample_counter[6]),
        .I3(sample_counter[5]),
        .O(\sample_counter[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \sample_counter[7]_i_5 
       (.I0(sample_counter[1]),
        .I1(sample_counter[3]),
        .O(\sample_counter[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sample_counter_reg[0] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(sample_counter_0[0]),
        .Q(sample_counter[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \sample_counter_reg[1] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(sample_counter_0[1]),
        .Q(sample_counter[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \sample_counter_reg[2] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(sample_counter_0[2]),
        .Q(sample_counter[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \sample_counter_reg[3] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(sample_counter_0[3]),
        .Q(sample_counter[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \sample_counter_reg[4] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(sample_counter_0[4]),
        .Q(sample_counter[4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \sample_counter_reg[5] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(sample_counter_0[5]),
        .Q(sample_counter[5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \sample_counter_reg[6] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(sample_counter_0[6]),
        .Q(sample_counter[6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \sample_counter_reg[7] 
       (.C(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CE(E),
        .D(sample_counter_0[7]),
        .Q(sample_counter[7]),
        .R(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hFFEF0010)) 
    wave_state_i_1
       (.I0(wave_state_reg_0),
        .I1(sample_counter[0]),
        .I2(Q[1]),
        .I3(wave_state_i_3_n_0),
        .I4(wave_state),
        .O(wave_state_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    wave_state_i_3
       (.I0(\sample_counter[3]_i_2_n_0 ),
        .I1(sample_counter[3]),
        .I2(sample_counter[1]),
        .O(wave_state_i_3_n_0));
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
  wire [5:0]LEDS;
  wire [3:0]LEDS_OBUF;
  wire [1:0]SWITCHES;
  wire bp_n_2;
  wire bp_n_3;
  wire [0:0]buttons_pressed;
  wire [4:2]code;
  wire [9:8]counter;
  wire counter_0;
  wire dac_n_4;
  wire gen_n_0;
  wire gen_n_3;
  wire next_sample;
  wire running;

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
       (.I(\<const1> ),
        .O(LEDS[4]));
  OBUF \LEDS_OBUF[5]_inst 
       (.I(\<const1> ),
        .O(LEDS[5]));
  IBUF \SWITCHES_IBUF[1]_inst 
       (.I(SWITCHES[1]),
        .O(AUD_SD_OBUF));
  VCC VCC
       (.P(\<const1> ));
  button_parser bp
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .D(BUTTONS_IBUF),
        .Q(buttons_pressed),
        .SR(counter_0),
        .\edge_detect_pulse_reg[1] (bp_n_2),
        .\edge_detect_pulse_reg[2] (bp_n_3),
        .running(running));
  counter count
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .Q(LEDS_OBUF),
        .SR(counter_0),
        .\counter_reg[2]_0 (buttons_pressed),
        .\counter_reg[3]_0 (bp_n_2),
        .running(running),
        .running_reg_0(bp_n_3));
  dac dac
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .CO(AUD_PWM_OBUF),
        .DI(gen_n_0),
        .E(next_sample),
        .Q(counter),
        .S(gen_n_3),
        .code({code[4],code[2]}),
        .\counter_reg[6]_0 (dac_n_4));
  sq_wave_gen gen
       (.CLK_125MHZ_FPGA_IBUF_BUFG(CLK_125MHZ_FPGA_IBUF_BUFG),
        .DI(gen_n_0),
        .E(next_sample),
        .Q(counter),
        .S(gen_n_3),
        .code({code[4],code[2]}),
        .wave_state_reg_0(dac_n_4));
endmodule
