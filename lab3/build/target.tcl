set ABS_TOP                         /home/tmp/eecs151-agk/fpga-labs-fa24-MissyJinkl/lab3
set TOP                            z1top
set FPGA_PART                      xc7z020clg400-1
set_param general.maxThreads       4
set_param general.maxBackupLogs    0
set RTL { /home/tmp/eecs151-agk/fpga-labs-fa24-MissyJinkl/lab3/src/button_parser.v /home/tmp/eecs151-agk/fpga-labs-fa24-MissyJinkl/lab3/src/counter.v /home/tmp/eecs151-agk/fpga-labs-fa24-MissyJinkl/lab3/src/dac.v /home/tmp/eecs151-agk/fpga-labs-fa24-MissyJinkl/lab3/src/debouncer.v /home/tmp/eecs151-agk/fpga-labs-fa24-MissyJinkl/lab3/src/edge_detector.v /home/tmp/eecs151-agk/fpga-labs-fa24-MissyJinkl/lab3/src/sq_wave_gen.v /home/tmp/eecs151-agk/fpga-labs-fa24-MissyJinkl/lab3/src/synchronizer.v /home/tmp/eecs151-agk/fpga-labs-fa24-MissyJinkl/lab3/src/z1top.v }
set CONSTRAINTS { /home/tmp/eecs151-agk/fpga-labs-fa24-MissyJinkl/lab3/src/z1top.xdc }
