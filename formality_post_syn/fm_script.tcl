###############################################################################
########################### Setup #############################################
###############################################################################

set synopsys_auto_setup true

# SVF generated from Design Compiler
set_svf "/home/ICer/Project/System/syn/System_TOP.svf"

###############################################################################
################# Refrence container ##########################################
###############################################################################

# Read RTL files
read_verilog -container Ref "/home/ICer/Project/System/rtl/ALU.v"
read_verilog -container Ref "/home/ICer/Project/System/rtl/ASYNC_FIFO.v"
read_verilog -container Ref "/home/ICer/Project/System/rtl/ClkDiv.v"
read_verilog -container Ref "/home/ICer/Project/System/rtl/Clock_Gating.v"
read_verilog -container Ref "/home/ICer/Project/System/rtl/data_sampling.v"
read_verilog -container Ref "/home/ICer/Project/System/rtl/DATA_SYNC.v"
read_verilog -container Ref "/home/ICer/Project/System/rtl/deserializer.v"
read_verilog -container Ref "/home/ICer/Project/System/rtl/DF_SYNC.v"
read_verilog -container Ref "/home/ICer/Project/System/rtl/Domain_1_TOP.v"
read_verilog -container Ref "/home/ICer/Project/System/rtl/Domain_2_TOP.v"
read_verilog -container Ref "/home/ICer/Project/System/rtl/edge_bit_counter.v"
read_verilog -container Ref "/home/ICer/Project/System/rtl/FIFO_MEM_CNTRL.v"
read_verilog -container Ref "/home/ICer/Project/System/rtl/FIFO_RD.v"
read_verilog -container Ref "/home/ICer/Project/System/rtl/FIFO_WR.v"
read_verilog -container Ref "/home/ICer/Project/System/rtl/FSM_RX.v"
read_verilog -container Ref "/home/ICer/Project/System/rtl/FSM_TX.v"
read_verilog -container Ref "/home/ICer/Project/System/rtl/MUX_TX.v"
read_verilog -container Ref "/home/ICer/Project/System/rtl/Parity_Calc_TX.v"
read_verilog -container Ref "/home/ICer/Project/System/rtl/Parity_Checker_RX.v"
read_verilog -container Ref "/home/ICer/Project/System/rtl/prescale_MUX.v"
read_verilog -container Ref "/home/ICer/Project/System/rtl/PULSE_GEN.v"
read_verilog -container Ref "/home/ICer/Project/System/rtl/RegFile.v"
read_verilog -container Ref "/home/ICer/Project/System/rtl/RST_SYNC.v"
read_verilog -container Ref "/home/ICer/Project/System/rtl/serializer_TX.v"
read_verilog -container Ref "/home/ICer/Project/System/rtl/Start_Checker.v"
read_verilog -container Ref "/home/ICer/Project/System/rtl/Stop_Checker_RX.v"
read_verilog -container Ref "/home/ICer/Project/System/rtl/System_TOP.v"
read_verilog -container Ref "/home/ICer/Project/System/rtl/SYS_CTRL.v"
read_verilog -container Ref "/home/ICer/Project/System/rtl/TOP_RX.v"
read_verilog -container Ref "/home/ICer/Project/System/rtl/TOP_TX.v"
read_verilog -container Ref "/home/ICer/Project/System/rtl/UART_TOP.v"

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
read_verilog -netlist -container Imp "/home/ICer/Project/System/syn/System_TOP_netlist.v"

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

###############################################################################
########################### Reporting #########################################
###############################################################################

report_unmatched_points > "unmatched_points.rpt"
report_failing_points   > "failing_points.rpt"
report_passing_points   > "passing_points.rpt"
report_aborted_points   > "aborted_points.rpt"

exit
