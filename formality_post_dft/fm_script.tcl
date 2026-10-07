###############################################################################
########################### Setup #############################################
###############################################################################

set synopsys_auto_setup true

# SVF generated from Design Compiler
set_svf "/home/ICer/Project/System/dft/System_TOP.svf"

###############################################################################
################# Refrence container ##########################################
###############################################################################

# Read RTL files
read_verilog -container Ref "/home/ICer/Project/System/dft/rtl_dft/ALU.v"
read_verilog -container Ref "/home/ICer/Project/System/dft/rtl_dft/ASYNC_FIFO.v"
read_verilog -container Ref "/home/ICer/Project/System/dft/rtl_dft/ClkDiv.v"
read_verilog -container Ref "/home/ICer/Project/System/dft/rtl_dft/Clock_Gating.v"
read_verilog -container Ref "/home/ICer/Project/System/dft/rtl_dft/data_sampling.v"
read_verilog -container Ref "/home/ICer/Project/System/dft/rtl_dft/DATA_SYNC.v"
read_verilog -container Ref "/home/ICer/Project/System/dft/rtl_dft/deserializer.v"
read_verilog -container Ref "/home/ICer/Project/System/dft/rtl_dft/DF_SYNC.v"
read_verilog -container Ref "/home/ICer/Project/System/dft/rtl_dft/Domain_1_TOP_DFT.v"
read_verilog -container Ref "/home/ICer/Project/System/dft/rtl_dft/Domain_2_TOP_DFT.v"
read_verilog -container Ref "/home/ICer/Project/System/dft/rtl_dft/edge_bit_counter.v"
read_verilog -container Ref "/home/ICer/Project/System/dft/rtl_dft/FIFO_MEM_CNTRL.v"
read_verilog -container Ref "/home/ICer/Project/System/dft/rtl_dft/FIFO_RD.v"
read_verilog -container Ref "/home/ICer/Project/System/dft/rtl_dft/FIFO_WR.v"
read_verilog -container Ref "/home/ICer/Project/System/dft/rtl_dft/FSM_RX.v"
read_verilog -container Ref "/home/ICer/Project/System/dft/rtl_dft/FSM_TX.v"
read_verilog -container Ref "/home/ICer/Project/System/dft/rtl_dft/MUX_2X1.v"
read_verilog -container Ref "/home/ICer/Project/System/dft/rtl_dft/MUX_TX.v"
read_verilog -container Ref "/home/ICer/Project/System/dft/rtl_dft/Parity_Calc_TX.v"
read_verilog -container Ref "/home/ICer/Project/System/dft/rtl_dft/Parity_Checker_RX.v"
read_verilog -container Ref "/home/ICer/Project/System/dft/rtl_dft/prescale_MUX.v"
read_verilog -container Ref "/home/ICer/Project/System/dft/rtl_dft/PULSE_GEN.v"
read_verilog -container Ref "/home/ICer/Project/System/dft/rtl_dft/RegFile.v"
read_verilog -container Ref "/home/ICer/Project/System/dft/rtl_dft/RST_SYNC.v"
read_verilog -container Ref "/home/ICer/Project/System/dft/rtl_dft/serializer_TX.v"
read_verilog -container Ref "/home/ICer/Project/System/dft/rtl_dft/Start_Checker.v"
read_verilog -container Ref "/home/ICer/Project/System/dft/rtl_dft/Stop_Checker_RX.v"
read_verilog -container Ref "/home/ICer/Project/System/dft/rtl_dft/System_TOP_DFT.v"
read_verilog -container Ref "/home/ICer/Project/System/dft/rtl_dft/SYS_CTRL.v"
read_verilog -container Ref "/home/ICer/Project/System/dft/rtl_dft/TOP_RX.v"
read_verilog -container Ref "/home/ICer/Project/System/dft/rtl_dft/TOP_TX.v"
read_verilog -container Ref "/home/ICer/Project/System/dft/rtl_dft/UART_TOP.v"

# Read std cells library
read_db -container Ref "/home/ICer/Project/System/std_cells/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"

# Set top design
set_top System_TOP

# Check loaded designs
report_designs

# Set reference design
set_reference_design System_TOP

###############################################################################
################# Implemintation container ####################################
###############################################################################

# Read synthesized netlist
read_verilog -netlist -container Imp "/home/ICer/Project/System/dft/System_TOP_netlist.v"

# Read std cells library
read_db -container Imp "/home/ICer/Project/System/std_cells/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"

# Set top design
set_top System_TOP

# Check loaded designs
report_designs

# Set implementation design
set_implementation_design System_TOP

###############################################################################
############################ Matching #########################################
###############################################################################

match

###############################################################################
######################### Run Verification ####################################
###############################################################################

set successful [verify]

if {!$successful} {
    diagnose
    analyze_points -failing
}

set_dont_verify_points -type port Ref:/WORK/*/SO

###############################################################################
########################### Reporting #########################################
###############################################################################

report_unmatched_points > "unmatched_points.rpt"
report_failing_points   > "failing_points.rpt"
report_passing_points   > "passing_points.rpt"
report_aborted_points   > "aborted_points.rpt"
report_guidance -summary  

exit
