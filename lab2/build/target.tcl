set ABS_TOP                         /home/tmp/eecs151-agk/fpga-labs-fa24-MissyJinkl/lab2
set TOP                            z1top
set FPGA_PART                      xc7z020clg400-1
set_param general.maxThreads       4
set_param general.maxBackupLogs    0
set RTL { /home/tmp/eecs151-agk/fpga-labs-fa24-MissyJinkl/lab2/src/adder_tester.v /home/tmp/eecs151-agk/fpga-labs-fa24-MissyJinkl/lab2/src/behavioral_adder.v /home/tmp/eecs151-agk/fpga-labs-fa24-MissyJinkl/lab2/src/counter.v /home/tmp/eecs151-agk/fpga-labs-fa24-MissyJinkl/lab2/src/full_adder.v /home/tmp/eecs151-agk/fpga-labs-fa24-MissyJinkl/lab2/src/structural_adder.v /home/tmp/eecs151-agk/fpga-labs-fa24-MissyJinkl/lab2/src/z1top.v }
set CONSTRAINTS { /home/tmp/eecs151-agk/fpga-labs-fa24-MissyJinkl/lab2/src/z1top.xdc }
