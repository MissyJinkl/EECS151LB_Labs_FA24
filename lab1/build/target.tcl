set ABS_TOP                         /home/tmp/eecs151-agk/fpga-labs-fa24-MissyJinkl/lab1
set TOP                            z1top
set FPGA_PART                      xc7z020clg400-1
set_param general.maxThreads       4
set_param general.maxBackupLogs    0
set RTL { /home/tmp/eecs151-agk/fpga-labs-fa24-MissyJinkl/lab1/src/d_flip_flop.v /home/tmp/eecs151-agk/fpga-labs-fa24-MissyJinkl/lab1/src/decoder_4_to_16.v /home/tmp/eecs151-agk/fpga-labs-fa24-MissyJinkl/lab1/src/four_bit_comparator_always.v /home/tmp/eecs151-agk/fpga-labs-fa24-MissyJinkl/lab1/src/line_decoder.v /home/tmp/eecs151-agk/fpga-labs-fa24-MissyJinkl/lab1/src/one_bit_comparator_always.v /home/tmp/eecs151-agk/fpga-labs-fa24-MissyJinkl/lab1/src/one_bit_comparator_behavioral.v /home/tmp/eecs151-agk/fpga-labs-fa24-MissyJinkl/lab1/src/one_bit_comparator_structural.v /home/tmp/eecs151-agk/fpga-labs-fa24-MissyJinkl/lab1/src/shift_register_behavioral.v /home/tmp/eecs151-agk/fpga-labs-fa24-MissyJinkl/lab1/src/shift_register_structural.v /home/tmp/eecs151-agk/fpga-labs-fa24-MissyJinkl/lab1/src/simple_counter.v /home/tmp/eecs151-agk/fpga-labs-fa24-MissyJinkl/lab1/src/z1top.v }
set CONSTRAINTS { /home/tmp/eecs151-agk/fpga-labs-fa24-MissyJinkl/lab1/src/z1top.xdc }
