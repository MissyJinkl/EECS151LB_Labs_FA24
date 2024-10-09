set ABS_TOP                         /home/tmp/eecs151-agk/fpga-labs-fa24-MissyJinkl/lab4
set TOP                            z1top
set FPGA_PART                      xc7z020clg400-1
set_param general.maxThreads       4
set_param general.maxBackupLogs    0
set RTL { /home/tmp/eecs151-agk/fpga-labs-fa24-MissyJinkl/lab4/src/button_parser.v /home/tmp/eecs151-agk/fpga-labs-fa24-MissyJinkl/lab4/src/dac.v /home/tmp/eecs151-agk/fpga-labs-fa24-MissyJinkl/lab4/src/debouncer.v /home/tmp/eecs151-agk/fpga-labs-fa24-MissyJinkl/lab4/src/edge_detector.v /home/tmp/eecs151-agk/fpga-labs-fa24-MissyJinkl/lab4/src/fcw_ram.v /home/tmp/eecs151-agk/fpga-labs-fa24-MissyJinkl/lab4/src/fsm.v /home/tmp/eecs151-agk/fpga-labs-fa24-MissyJinkl/lab4/src/nco.v /home/tmp/eecs151-agk/fpga-labs-fa24-MissyJinkl/lab4/src/sq_wave_gen.v /home/tmp/eecs151-agk/fpga-labs-fa24-MissyJinkl/lab4/src/synchronizer.v /home/tmp/eecs151-agk/fpga-labs-fa24-MissyJinkl/lab4/src/z1top.v }
set CONSTRAINTS { /home/tmp/eecs151-agk/fpga-labs-fa24-MissyJinkl/lab4/src/z1top.xdc }
