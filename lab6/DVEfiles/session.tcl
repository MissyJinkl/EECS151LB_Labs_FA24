# Begin_DVE_Session_Save_Info
# DVE reload session
# Saved on Wed Oct 23 19:35:03 2024
# Designs open: 1
#   V1: /home/tmp/eecs151-agk/fpga-labs-fa24-MissyJinkl/lab6/sim/mem_controller_tb.vpd
# Toplevel windows open: 4
# 	TopLevel.1
# 	TopLevel.2
# 	TopLevel.3
# 	TopLevel.4
#   Source.1: mem_controller_tb
#   Wave.1: 10 signals
#   Wave.2: 20 signals
#   Wave.3: 12 signals
#   Group count = 3
#   Group Group1 signal count = 10
#   Group Group2 signal count = 20
#   Group Group3 signal count = 12
# End_DVE_Session_Save_Info

# DVE version: P-2019.06_Full64
# DVE build date: May 31 2019 21:08:21


#<Session mode="Reload" path="/home/tmp/eecs151-agk/fpga-labs-fa24-MissyJinkl/lab6/DVEfiles/session.tcl" type="Debug">

gui_set_loading_session_type Reload
gui_continuetime_set

# Close design
if { [gui_sim_state -check active] } {
    gui_sim_terminate
}
gui_close_db -all
gui_expr_clear_all
gui_clear_window -type Wave
gui_clear_window -type List

# Application preferences
gui_set_pref_value -key app_default_font -value {Helvetica,10,-1,5,50,0,0,0,0,0}
gui_src_preferences -tabstop 8 -maxbits 24 -windownumber 1
#<WindowLayout>

# DVE top-level session


# Create and position top-level window: TopLevel.1

set TopLevel.1 TopLevel.1

# Docked window settings
set HSPane.1 HSPane.1
set Hier.1 Hier.1
set DLPane.1 DLPane.1
set Data.1 Data.1
set Console.1 Console.1
gui_sync_global -id ${TopLevel.1} -option true

# MDI window settings
set Source.1 Source.1
gui_update_layout -id ${Source.1} {{show_state maximized} {dock_state undocked} {dock_on_new_line false}}

# End MDI window settings


# Create and position top-level window: TopLevel.2

set TopLevel.2 TopLevel.2

# Docked window settings
gui_sync_global -id ${TopLevel.2} -option true

# MDI window settings
set Wave.1 Wave.1
gui_update_layout -id ${Wave.1} {{show_state maximized} {dock_state undocked} {dock_on_new_line false} {child_wave_left 557} {child_wave_right 1357} {child_wave_colname 276} {child_wave_colvalue 277} {child_wave_col1 0} {child_wave_col2 1}}

# End MDI window settings


# Create and position top-level window: TopLevel.3

set TopLevel.3 TopLevel.3

# Docked window settings
gui_sync_global -id ${TopLevel.3} -option true

# MDI window settings
set Wave.2 Wave.2
gui_update_layout -id ${Wave.2} {{show_state maximized} {dock_state undocked} {dock_on_new_line false} {child_wave_left 557} {child_wave_right 1357} {child_wave_colname 276} {child_wave_colvalue 277} {child_wave_col1 0} {child_wave_col2 1}}

# End MDI window settings


# Create and position top-level window: TopLevel.4

set TopLevel.4 TopLevel.4

# Docked window settings
gui_sync_global -id ${TopLevel.4} -option true

# MDI window settings
set Wave.3 Wave.3
gui_update_layout -id ${Wave.3} {{show_state maximized} {dock_state undocked} {dock_on_new_line false} {child_wave_left 524} {child_wave_right 1279} {child_wave_colname 260} {child_wave_colvalue 260} {child_wave_col1 0} {child_wave_col2 1}}

# End MDI window settings


#</WindowLayout>

#<Database>

# DVE Open design session: 

if { ![gui_is_db_opened -db {/home/tmp/eecs151-agk/fpga-labs-fa24-MissyJinkl/lab6/sim/mem_controller_tb.vpd}] } {
	gui_open_db -design V1 -file /home/tmp/eecs151-agk/fpga-labs-fa24-MissyJinkl/lab6/sim/mem_controller_tb.vpd -nosource
}
gui_set_precision 10ps
gui_set_time_units 10ps
#</Database>

# DVE Global setting session: 


# Global: Bus

# Global: Expressions

# Global: Signal Time Shift

# Global: Signal Compare

# Global: Signal Groups
gui_load_child_values {mem_controller_tb.rx_fifo}
gui_load_child_values {mem_controller_tb}
gui_load_child_values {mem_controller_tb.mem_ctrl}


set _session_group_7 Group1
gui_sg_create "$_session_group_7"
set Group1 "$_session_group_7"

gui_sg_addsignal -group "$_session_group_7" { mem_controller_tb.clk mem_controller_tb.rst mem_controller_tb.mem_rx_empty mem_controller_tb.mem_tx_full mem_controller_tb.mem_rx_rd_en mem_controller_tb.mem_tx_wr_en mem_controller_tb.rx_dout mem_controller_tb.LEDS mem_controller_tb.tb_rx_wr_en mem_controller_tb.tb_rx_din }

set _session_group_8 Group2
gui_sg_create "$_session_group_8"
set Group2 "$_session_group_8"

gui_sg_addsignal -group "$_session_group_8" { mem_controller_tb.mem_ctrl.clk mem_controller_tb.mem_ctrl.rst mem_controller_tb.mem_ctrl.rx_fifo_empty mem_controller_tb.mem_ctrl.tx_fifo_full mem_controller_tb.mem_ctrl.din mem_controller_tb.mem_ctrl.rx_fifo_rd_en mem_controller_tb.mem_ctrl.tx_fifo_wr_en mem_controller_tb.mem_ctrl.dout mem_controller_tb.mem_ctrl.state_leds mem_controller_tb.mem_ctrl.mem_we mem_controller_tb.mem_ctrl.mem_addr mem_controller_tb.mem_ctrl.mem_din mem_controller_tb.mem_ctrl.mem_dout mem_controller_tb.mem_ctrl.curr_state mem_controller_tb.mem_ctrl.next_state mem_controller_tb.mem_ctrl.pkt_rd_cnt mem_controller_tb.mem_ctrl.cmd mem_controller_tb.mem_ctrl.addr mem_controller_tb.mem_ctrl.data mem_controller_tb.mem_ctrl.handshake }
gui_set_radix -radix {decimal} -signals {V1:mem_controller_tb.mem_ctrl.din}
gui_set_radix -radix {unsigned} -signals {V1:mem_controller_tb.mem_ctrl.din}
gui_set_radix -radix {decimal} -signals {V1:mem_controller_tb.mem_ctrl.cmd}
gui_set_radix -radix {unsigned} -signals {V1:mem_controller_tb.mem_ctrl.cmd}

set _session_group_9 Group3
gui_sg_create "$_session_group_9"
set Group3 "$_session_group_9"

gui_sg_addsignal -group "$_session_group_9" { mem_controller_tb.rx_fifo.clk mem_controller_tb.rx_fifo.rst mem_controller_tb.rx_fifo.wr_en mem_controller_tb.rx_fifo.din mem_controller_tb.rx_fifo.full mem_controller_tb.rx_fifo.rd_en mem_controller_tb.rx_fifo.dout mem_controller_tb.rx_fifo.empty mem_controller_tb.rx_fifo.read_ptr mem_controller_tb.rx_fifo.write_ptr mem_controller_tb.rx_fifo.fifo_count mem_controller_tb.rx_fifo.mem }
gui_set_radix -radix {decimal} -signals {V1:mem_controller_tb.rx_fifo.din}
gui_set_radix -radix {unsigned} -signals {V1:mem_controller_tb.rx_fifo.din}
gui_set_radix -radix {decimal} -signals {V1:mem_controller_tb.rx_fifo.dout}
gui_set_radix -radix {unsigned} -signals {V1:mem_controller_tb.rx_fifo.dout}

# Global: Highlighting

# Global: Stack
gui_change_stack_mode -mode list

# Post database loading setting...

# Restore C1 time
gui_set_time -C1_only 233417



# Save global setting...

# Wave/List view global setting
gui_cov_show_value -switch false

# Close all empty TopLevel windows
foreach __top [gui_ekki_get_window_ids -type TopLevel] {
    if { [llength [gui_ekki_get_window_ids -parent $__top]] == 0} {
        gui_close_window -window $__top
    }
}
gui_set_loading_session_type noSession
# DVE View/pane content session: 


# Hier 'Hier.1'
gui_show_window -window ${Hier.1}
gui_list_set_filter -id ${Hier.1} -list { {Package 1} {All 0} {Process 1} {VirtPowSwitch 0} {UnnamedProcess 1} {UDP 0} {Function 1} {Block 1} {SrsnAndSpaCell 0} {OVA Unit 1} {LeafScCell 1} {LeafVlgCell 1} {Interface 1} {LeafVhdCell 1} {$unit 1} {NamedBlock 1} {Task 1} {VlgPackage 1} {ClassDef 1} {VirtIsoCell 0} }
gui_list_set_filter -id ${Hier.1} -text {*} -force
gui_change_design -id ${Hier.1} -design V1
catch {gui_list_expand -id ${Hier.1} mem_controller_tb}
catch {gui_list_select -id ${Hier.1} {mem_controller_tb.rx_fifo}}
gui_view_scroll -id ${Hier.1} -vertical -set 0
gui_view_scroll -id ${Hier.1} -horizontal -set 0

# Data 'Data.1'
gui_list_set_filter -id ${Data.1} -list { {Buffer 1} {Input 1} {Others 1} {Linkage 1} {Output 1} {LowPower 1} {Parameter 1} {All 1} {Aggregate 1} {LibBaseMember 1} {Event 1} {Assertion 1} {Constant 1} {Interface 1} {BaseMembers 1} {Signal 1} {$unit 1} {Inout 1} {Variable 1} }
gui_list_set_filter -id ${Data.1} -text {*}
gui_list_show_data -id ${Data.1} {mem_controller_tb.rx_fifo}
gui_show_window -window ${Data.1}
catch { gui_list_select -id ${Data.1} {mem_controller_tb.rx_fifo.clk mem_controller_tb.rx_fifo.rst mem_controller_tb.rx_fifo.wr_en mem_controller_tb.rx_fifo.din mem_controller_tb.rx_fifo.full mem_controller_tb.rx_fifo.rd_en mem_controller_tb.rx_fifo.dout mem_controller_tb.rx_fifo.empty mem_controller_tb.rx_fifo.read_ptr mem_controller_tb.rx_fifo.write_ptr mem_controller_tb.rx_fifo.fifo_count mem_controller_tb.rx_fifo.mem }}
gui_view_scroll -id ${Data.1} -vertical -set 0
gui_view_scroll -id ${Data.1} -horizontal -set 0
gui_view_scroll -id ${Hier.1} -vertical -set 0
gui_view_scroll -id ${Hier.1} -horizontal -set 0

# Source 'Source.1'
gui_src_value_annotate -id ${Source.1} -switch false
gui_set_env TOGGLE::VALUEANNOTATE 0
gui_open_source -id ${Source.1}  -replace -active mem_controller_tb /home/tmp/eecs151-agk/fpga-labs-fa24-MissyJinkl/lab6/sim/mem_controller_tb.v
gui_view_scroll -id ${Source.1} -vertical -set 480
gui_src_set_reusable -id ${Source.1}

# View 'Wave.1'
gui_wv_sync -id ${Wave.1} -switch false
set groupExD [gui_get_pref_value -category Wave -key exclusiveSG]
gui_set_pref_value -category Wave -key exclusiveSG -value {false}
set origWaveHeight [gui_get_pref_value -category Wave -key waveRowHeight]
gui_list_set_height -id Wave -height 25
set origGroupCreationState [gui_list_create_group_when_add -wave]
gui_list_create_group_when_add -wave -disable
gui_wv_zoom_timerange -id ${Wave.1} 68050 398898
gui_list_add_group -id ${Wave.1} -after {New Group} {Group1}
gui_seek_criteria -id ${Wave.1} {Any Edge}


gui_set_pref_value -category Wave -key exclusiveSG -value $groupExD
gui_list_set_height -id Wave -height $origWaveHeight
if {$origGroupCreationState} {
	gui_list_create_group_when_add -wave -enable
}
if { $groupExD } {
 gui_msg_report -code DVWW028
}
gui_list_set_filter -id ${Wave.1} -list { {Buffer 1} {Input 1} {Others 1} {Linkage 1} {Output 1} {Parameter 1} {All 1} {Aggregate 1} {LibBaseMember 1} {Event 1} {Assertion 1} {Constant 1} {Interface 1} {BaseMembers 1} {Signal 1} {$unit 1} {Inout 1} {Variable 1} }
gui_list_set_filter -id ${Wave.1} -text {*}
gui_list_set_insertion_bar  -id ${Wave.1} -group Group1  -position in

gui_marker_move -id ${Wave.1} {C1} 233417
gui_view_scroll -id ${Wave.1} -vertical -set 0
gui_show_grid -id ${Wave.1} -enable false

# View 'Wave.2'
gui_wv_sync -id ${Wave.2} -switch false
set groupExD [gui_get_pref_value -category Wave -key exclusiveSG]
gui_set_pref_value -category Wave -key exclusiveSG -value {false}
set origWaveHeight [gui_get_pref_value -category Wave -key waveRowHeight]
gui_list_set_height -id Wave -height 25
set origGroupCreationState [gui_list_create_group_when_add -wave]
gui_list_create_group_when_add -wave -disable
gui_wv_zoom_timerange -id ${Wave.2} 207044 222750
gui_list_add_group -id ${Wave.2} -after {New Group} {Group2}
gui_list_select -id ${Wave.2} {mem_controller_tb.mem_ctrl.cmd }
gui_seek_criteria -id ${Wave.2} {Any Edge}


gui_set_pref_value -category Wave -key exclusiveSG -value $groupExD
gui_list_set_height -id Wave -height $origWaveHeight
if {$origGroupCreationState} {
	gui_list_create_group_when_add -wave -enable
}
if { $groupExD } {
 gui_msg_report -code DVWW028
}
gui_list_set_filter -id ${Wave.2} -list { {Buffer 1} {Input 1} {Others 1} {Linkage 1} {Output 1} {Parameter 1} {All 1} {Aggregate 1} {LibBaseMember 1} {Event 1} {Assertion 1} {Constant 1} {Interface 1} {BaseMembers 1} {Signal 1} {$unit 1} {Inout 1} {Variable 1} }
gui_list_set_filter -id ${Wave.2} -text {*}
gui_list_set_insertion_bar  -id ${Wave.2} -group Group2  -position in

gui_marker_move -id ${Wave.2} {C1} 233417
gui_view_scroll -id ${Wave.2} -vertical -set 0
gui_show_grid -id ${Wave.2} -enable false

# View 'Wave.3'
gui_wv_sync -id ${Wave.3} -switch false
set groupExD [gui_get_pref_value -category Wave -key exclusiveSG]
gui_set_pref_value -category Wave -key exclusiveSG -value {false}
set origWaveHeight [gui_get_pref_value -category Wave -key waveRowHeight]
gui_list_set_height -id Wave -height 25
set origGroupCreationState [gui_list_create_group_when_add -wave]
gui_list_create_group_when_add -wave -disable
gui_wv_zoom_timerange -id ${Wave.3} 200217 226914
gui_list_add_group -id ${Wave.3} -after {New Group} {Group3}
gui_list_select -id ${Wave.3} {mem_controller_tb.rx_fifo.dout }
gui_seek_criteria -id ${Wave.3} {Any Edge}



gui_set_env TOGGLE::DEFAULT_WAVE_WINDOW ${Wave.3}
gui_set_pref_value -category Wave -key exclusiveSG -value $groupExD
gui_list_set_height -id Wave -height $origWaveHeight
if {$origGroupCreationState} {
	gui_list_create_group_when_add -wave -enable
}
if { $groupExD } {
 gui_msg_report -code DVWW028
}
gui_list_set_filter -id ${Wave.3} -list { {Buffer 1} {Input 1} {Others 1} {Linkage 1} {Output 1} {Parameter 1} {All 1} {Aggregate 1} {LibBaseMember 1} {Event 1} {Assertion 1} {Constant 1} {Interface 1} {BaseMembers 1} {Signal 1} {$unit 1} {Inout 1} {Variable 1} }
gui_list_set_filter -id ${Wave.3} -text {*}
gui_list_set_insertion_bar  -id ${Wave.3} -group Group3  -position in

gui_marker_move -id ${Wave.3} {C1} 233417
gui_view_scroll -id ${Wave.3} -vertical -set 0
gui_show_grid -id ${Wave.3} -enable false
# Restore toplevel window zorder
# The toplevel window could be closed if it has no view/pane
if {[gui_exist_window -window ${TopLevel.4}]} {
	gui_set_active_window -window ${TopLevel.4}
	gui_set_active_window -window ${Wave.3}
}
if {[gui_exist_window -window ${TopLevel.1}]} {
	gui_set_active_window -window ${TopLevel.1}
	gui_set_active_window -window ${Source.1}
	gui_set_active_window -window ${DLPane.1}
}
if {[gui_exist_window -window ${TopLevel.3}]} {
	gui_set_active_window -window ${TopLevel.3}
	gui_set_active_window -window ${Wave.2}
}
if {[gui_exist_window -window ${TopLevel.2}]} {
	gui_set_active_window -window ${TopLevel.2}
	gui_set_active_window -window ${Wave.1}
}
#</Session>

