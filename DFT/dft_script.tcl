
########################### Define Top Module ############################
                                                   
set top_module System_TOP

##################### SVF file ######################

set_svf System_TOP.svf

##################### Define Working Library Directory ######################
                                                   
define_design_lib work -path ./work

################## Design Compiler Library Files setup ######################

lappend search_path ICer@IC_EDA /home/ICer/Project/System/std_cells
lappend search_path ICer@IC_EDA /home/ICer/Project/System/dft/rtl_dft

set SSLIB "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"
set TTLIB "scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set FFLIB "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"

## Standard Cell libraries 
set target_library [list $SSLIB $TTLIB $FFLIB]

## Standard Cell & Hard Macros libraries 
set link_library [list * $SSLIB $TTLIB $FFLIB]  

#echo "###############################################"
#echo "############# Reading RTL Files  ##############"
#echo "###############################################"



#System files

read_file -format verilog ALU.v
read_file -format verilog ASYNC_FIFO.v
read_file -format verilog ClkDiv.v
read_file -format verilog Clock_Gating.v
read_file -format verilog data_sampling.v
read_file -format verilog DATA_SYNC.v
read_file -format verilog deserializer.v
read_file -format verilog DF_SYNC.v
read_file -format verilog Domain_1_TOP_DFT.v
read_file -format verilog Domain_2_TOP_DFT.v
read_file -format verilog edge_bit_counter.v
read_file -format verilog FIFO_MEM_CNTRL.v
read_file -format verilog FIFO_RD.v
read_file -format verilog FIFO_WR.v
read_file -format verilog FSM_RX.v
read_file -format verilog FSM_TX.v
read_file -format verilog MUX_TX.v
read_file -format verilog Parity_Calc_TX.v
read_file -format verilog Parity_Checker_RX.v
read_file -format verilog prescale_MUX.v
read_file -format verilog PULSE_GEN.v
read_file -format verilog RegFile.v
read_file -format verilog RST_SYNC.v
read_file -format verilog serializer_TX.v
read_file -format verilog Start_Checker.v
read_file -format verilog Stop_Checker_RX.v
read_file -format verilog System_TOP_DFT.v
read_file -format verilog SYS_CTRL.v
read_file -format verilog TOP_RX.v
read_file -format verilog TOP_TX.v
read_file -format verilog UART_TOP.v
read_file -format verilog MUX_2X1.v





###################### Defining toplevel ###################################

current_design $top_module

#################### Liniking All The Design Parts #########################
puts "###############################################"
puts "######## Liniking All The Design Parts ########"
puts "###############################################"

link 

#################### Liniking All The Design Parts #########################
puts "###############################################"
puts "######## checking design consistency ##########"
puts "###############################################"

check_design

############################### Path groups ################################
puts "###############################################"
puts "################ Path groups ##################"
puts "###############################################"

group_path -name INREG -from [all_inputs]
group_path -name REGOUT -to [all_outputs]
group_path -name INOUT -from [all_inputs] -to [all_outputs]

#################### Define Design Constraints #########################
puts "###############################################"
puts "############ Design Constraints #### ##########"
puts "###############################################"

source -echo ./cons.tcl

###################### Mapping and optimization ########################
puts "###############################################"
puts "########## Mapping & Optimization #############"
puts "###############################################"

compile -scan -map_effort high

#############################################################################
# Write out Design after initial compile
#############################################################################
#############################################################################
# Write out Design after initial compile
#############################################################################
set_scan_configuration -max_length 110

set_scan_configuration -chain_count 4

set_dft_signal -view existing_dft -type ScanClock -port [get_ports scan_clk] -timing {45 55}
set_dft_signal -port [get_ports scan_rst] -type Reset  	   -view existing_dft -active_state 0
set_dft_signal -port [get_ports test_mode] -type Constant  -view existing_dft -active_state 1
set_dft_signal -port [get_ports test_mode] -type TestMode  -view spec 	      -active_state 1
set_dft_signal -port [get_ports SE] -type ScanEnable  	   -view spec         -active_state 1 -usage scan
set_dft_signal -port [get_ports {SI[0] SI[1] SI[2] SI[3]}] -type ScanDataIn
set_dft_signal -port [get_ports {SO[0] SO[1] SO[2] SO[3]}] -type ScanDataOut


report_dft_signal > ports.rpt


create_test_protocol




dft_drc -verbose




preview_dft -show scan_summary




insert_dft

compile -incremental


write_file -format verilog -hierarchy -output "System_TOP_netlist.v"
write_file -format ddc -hierarchy -output "System_TOP_netlist.ddc"
write_sdc -nosplit "System_TOP_CAP.sdc" 
write_sdf "System_TOP.sdf"
dft_drc -verbose -coverage_estimate

################# reporting #######################
report_area -hierarchy > area.rpt
report_power -hierarchy > power.rpt
report_timing -max_paths 100 -delay_type max > setup.rpt
report_timing -max_paths 100 -delay_type min > hold.rpt
report_clock -attributes > clocks.rpt	
dft_drc -coverage_estimate > dft_drc_post_dft.rpt
report_constraint -all_violators > constraints.rpt



################# starting graphical user interface #######################

#gui_start


exit
