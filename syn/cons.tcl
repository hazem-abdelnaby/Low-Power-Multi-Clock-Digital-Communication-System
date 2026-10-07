
# Constraints
# ----------------------------------------------------------------------------
#
# 1. Master Clock Definitions
#
# 2. Generated Clock Definitions
#
# 3. Clock Uncertainties
#
# 4. Clock Latencies 
#
# 5. Clock Relationships
#
# 6. set input/output delay on ports
#
# 7. Driving cells
#
# 8. Output load

####################################################################################
           #########################################################
                  #### Section 0 : DC Variables ####
           #########################################################
#################################################################################### 

# Prevent assign statements in the generated netlist (must be applied before compile command)
set_fix_multiple_port_nets -all -buffer_constants -feedthroughs

####################################################################################
           #########################################################
                  #### Section 1 : Clock Definition ####
           #########################################################
#################################################################################### 
# 1. Master Clock Definitions 
# 2. Generated Clock Definitions
# 3. Clock Latencies
# 4. Clock Uncertainties
# 4. Clock Transitions
####################################################################################
##################################### UART_CLK ##############################################
set CLK_NAME_UART UART_CLK
set CLK_PER_UART 271.267 
set CLK_SETUP_SKEW 0.20
set CLK_HOLD_SKEW 0.1
set CLK_LAT 0
set CLK_Transition 0.05


create_clock -period "$CLK_PER_UART" -name "$CLK_NAME_UART" [get_ports UART_CLK]

set_clock_uncertainty -setup "$CLK_SETUP_SKEW" [get_clock "$CLK_NAME_UART"]

set_clock_uncertainty -hold "$CLK_HOLD_SKEW" [get_clock "$CLK_NAME_UART"]

set_clock_transition "$CLK_Transition" [get_clock "$CLK_NAME_UART"]




set_dont_touch_network [get_ports UART_CLK]

##################################### REF_CLK ##############################################

set CLK_NAME_REF REF_CLK
set CLK_PER_REF 20 


create_clock -period "$CLK_PER_REF" -name "$CLK_NAME_REF" [get_ports REF_CLK]

set_clock_uncertainty -setup "$CLK_SETUP_SKEW" [get_clock "$CLK_NAME_REF"]

set_clock_uncertainty -hold "$CLK_HOLD_SKEW" [get_clock "$CLK_NAME_REF"]

set_clock_transition "$CLK_Transition" [get_clock "$CLK_NAME_REF"]




set_dont_touch_network [get_ports REF_CLK]
		   
					  

####################################################################################
           #########################################################
                  #### Section 2 : Clocks Relationships ####
           #########################################################
####################################################################################
###  RX_CLK
create_generated_clock -master_clock "$CLK_NAME_UART" \
                       -source [get_ports "$CLK_NAME_UART"] \
                       -name "RX_CLK" -combinational \
                       [get_pins Domain_2_TOP_U1/ClkDiv_U2_RX/o_div_clk]

### TX_CLK
create_generated_clock -master_clock "$CLK_NAME_UART" \
                       -source [get_ports "$CLK_NAME_UART"] \
                       -name "TX_CLK" -divide_by 32\
                       [get_pins Domain_2_TOP_U1/ClkDiv_U1_TX/o_div_clk]

### set case analysis for the by pass mux in the clk divider and the division ratio

set_case_analysis 1 [get_pins Domain_2_TOP_U1/ClkDiv_U1_TX/i_clk_en]
set_case_analysis 1 [get_pins Domain_2_TOP_U1/ClkDiv_U2_RX/i_clk_en]

set_case_analysis 0 [get_pins Domain_2_TOP_U1/ClkDiv_U1_TX/i_div_ratio[0]]
set_case_analysis 0 [get_pins Domain_2_TOP_U1/ClkDiv_U1_TX/i_div_ratio[1]]
set_case_analysis 0 [get_pins Domain_2_TOP_U1/ClkDiv_U1_TX/i_div_ratio[2]]
set_case_analysis 0 [get_pins Domain_2_TOP_U1/ClkDiv_U1_TX/i_div_ratio[3]]
set_case_analysis 0 [get_pins Domain_2_TOP_U1/ClkDiv_U1_TX/i_div_ratio[4]]
set_case_analysis 1 [get_pins Domain_2_TOP_U1/ClkDiv_U1_TX/i_div_ratio[5]]
set_case_analysis 0 [get_pins Domain_2_TOP_U1/ClkDiv_U1_TX/i_div_ratio[6]]
set_case_analysis 0 [get_pins Domain_2_TOP_U1/ClkDiv_U1_TX/i_div_ratio[7]]


set_case_analysis 1 [get_pins Domain_2_TOP_U1/ClkDiv_U2_RX/i_div_ratio[0]]
set_case_analysis 0 [get_pins Domain_2_TOP_U1/ClkDiv_U2_RX/i_div_ratio[1]]
set_case_analysis 0 [get_pins Domain_2_TOP_U1/ClkDiv_U2_RX/i_div_ratio[2]]
set_case_analysis 0 [get_pins Domain_2_TOP_U1/ClkDiv_U2_RX/i_div_ratio[3]]
set_case_analysis 0 [get_pins Domain_2_TOP_U1/ClkDiv_U2_RX/i_div_ratio[4]]
set_case_analysis 0 [get_pins Domain_2_TOP_U1/ClkDiv_U2_RX/i_div_ratio[5]]
set_case_analysis 0 [get_pins Domain_2_TOP_U1/ClkDiv_U2_RX/i_div_ratio[6]]
set_case_analysis 0 [get_pins Domain_2_TOP_U1/ClkDiv_U2_RX/i_div_ratio[7]]


### clock groups

set_clock_groups -asynchronous -group [get_clocks [list $CLK_NAME_UART RX_CLK TX_CLK]] \
                               -group [get_clocks $CLK_NAME_REF]

####################################################################################
           #########################################################
             #### Section 3 : set input/output delay on ports ####
           #########################################################
####################################################################################

set in_delay  [expr 0.2*$CLK_PER_UART]
set out_delay [expr 0.2*$CLK_PER_UART]
#Constrain Input Paths & Output paths
set_input_delay  "$in_delay"  -clock      "$CLK_NAME_UART"   [get_ports UART_RX_IN]
set_output_delay "$out_delay" -clock      "$CLK_NAME_UART"   [get_ports UART_TX_O]
set_output_delay "$out_delay" -clock      "$CLK_NAME_UART"   [get_ports parity_error]
set_output_delay "$out_delay" -clock      "$CLK_NAME_UART"   [get_ports framing_error]




####################################################################################
           #########################################################
                  #### Section 4 : Driving cells ####
           #########################################################
####################################################################################

set_driving_cell -lib_cell BUFX2M -library "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c" [get_ports UART_RX_IN]

####################################################################################
           #########################################################
                  #### Section 5 : Output load ####
           #########################################################
####################################################################################
set_load 0.1 [get_ports UART_TX_O]
set_load 0.1 [get_ports parity_error]
set_load 0.1 [get_ports framing_error]

####################################################################################
           #########################################################
                 #### Section 6 : Operating Condition ####
           #########################################################
####################################################################################

# Define the Worst Library for Max(#setup) analysis
# Define the Best Library for Min(hold) analysis
set_operating_conditions -max_library "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c" -max "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c" \
			 -min_library "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c" -min "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c"		





####################################################################################

           #########################################################
                  #### Section 7 : wireload Model ####
           #########################################################
####################################################################################


####################################################################################
           #########################################################
                  #### Section 8 : multicycle path ####
           #########################################################
####################################################################################

set_max_delay [expr 2*$CLK_PER_REF] -from [get_pins Domain_2_TOP_U1/RX_OUT_P] -to [get_ports Domain_1_TOP_U0/RX_P_DATA]

