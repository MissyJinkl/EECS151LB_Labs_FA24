set ABS_TOP                         /home/tmp/eecs151-agk/fpga-labs-fa24-MissyJinkl/lab6
set TOP                            z1top
set FPGA_PART                      xc7z020clg400-1
set_param general.maxThreads       4
set_param general.maxBackupLogs    0
set RTL { /home/tmp/eecs151-agk/fpga-labs-fa24-MissyJinkl/lab6/src/button_parser.v /home/tmp/eecs151-agk/fpga-labs-fa24-MissyJinkl/lab6/src/dac.v /home/tmp/eecs151-agk/fpga-labs-fa24-MissyJinkl/lab6/src/debouncer.v /home/tmp/eecs151-agk/fpga-labs-fa24-MissyJinkl/lab6/src/edge_detector.v /home/tmp/eecs151-agk/fpga-labs-fa24-MissyJinkl/lab6/src/fifo.v /home/tmp/eecs151-agk/fpga-labs-fa24-MissyJinkl/lab6/src/fixed_length_piano.v /home/tmp/eecs151-agk/fpga-labs-fa24-MissyJinkl/lab6/src/mem_controller.v /home/tmp/eecs151-agk/fpga-labs-fa24-MissyJinkl/lab6/src/memory.v /home/tmp/eecs151-agk/fpga-labs-fa24-MissyJinkl/lab6/src/nco.v /home/tmp/eecs151-agk/fpga-labs-fa24-MissyJinkl/lab6/src/piano_scale_rom.v /home/tmp/eecs151-agk/fpga-labs-fa24-MissyJinkl/lab6/src/synchronizer.v /home/tmp/eecs151-agk/fpga-labs-fa24-MissyJinkl/lab6/src/uart.v /home/tmp/eecs151-agk/fpga-labs-fa24-MissyJinkl/lab6/src/uart_receiver.v /home/tmp/eecs151-agk/fpga-labs-fa24-MissyJinkl/lab6/src/uart_transmitter.v /home/tmp/eecs151-agk/fpga-labs-fa24-MissyJinkl/lab6/src/z1top.v }
set CONSTRAINTS { /home/tmp/eecs151-agk/fpga-labs-fa24-MissyJinkl/lab6/src/z1top.xdc }