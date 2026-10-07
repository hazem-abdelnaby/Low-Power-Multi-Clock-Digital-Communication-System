###################################################################

# Created by write_sdc on Wed Oct 7 00:45:57 2026

###################################################################
set sdc_version 2.1

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_operating_conditions -max scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -max_library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -min scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c -min_library scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c [get_ports UART_RX_IN]
set_load -pin_load 0.1 [get_ports UART_TX_O]
set_load -pin_load 0.1 [get_ports framing_error]
set_load -pin_load 0.1 [get_ports parity_error]
set_case_analysis 1 [get_pins Domain_2_TOP_U1/ClkDiv_U2_RX/i_clk_en]
set_case_analysis 0 [get_pins {Domain_2_TOP_U1/ClkDiv_U2_RX/i_div_ratio[7]}]
set_case_analysis 0 [get_pins {Domain_2_TOP_U1/ClkDiv_U2_RX/i_div_ratio[6]}]
set_case_analysis 0 [get_pins {Domain_2_TOP_U1/ClkDiv_U2_RX/i_div_ratio[5]}]
set_case_analysis 0 [get_pins {Domain_2_TOP_U1/ClkDiv_U2_RX/i_div_ratio[4]}]
set_case_analysis 0 [get_pins {Domain_2_TOP_U1/ClkDiv_U2_RX/i_div_ratio[3]}]
set_case_analysis 0 [get_pins {Domain_2_TOP_U1/ClkDiv_U2_RX/i_div_ratio[2]}]
set_case_analysis 0 [get_pins {Domain_2_TOP_U1/ClkDiv_U2_RX/i_div_ratio[1]}]
set_case_analysis 1 [get_pins {Domain_2_TOP_U1/ClkDiv_U2_RX/i_div_ratio[0]}]
set_case_analysis 1 [get_pins Domain_2_TOP_U1/ClkDiv_U1_TX/i_clk_en]
set_case_analysis 0 [get_pins {Domain_2_TOP_U1/ClkDiv_U1_TX/i_div_ratio[7]}]
set_case_analysis 0 [get_pins {Domain_2_TOP_U1/ClkDiv_U1_TX/i_div_ratio[6]}]
set_case_analysis 1 [get_pins {Domain_2_TOP_U1/ClkDiv_U1_TX/i_div_ratio[5]}]
set_case_analysis 0 [get_pins {Domain_2_TOP_U1/ClkDiv_U1_TX/i_div_ratio[4]}]
set_case_analysis 0 [get_pins {Domain_2_TOP_U1/ClkDiv_U1_TX/i_div_ratio[3]}]
set_case_analysis 0 [get_pins {Domain_2_TOP_U1/ClkDiv_U1_TX/i_div_ratio[2]}]
set_case_analysis 0 [get_pins {Domain_2_TOP_U1/ClkDiv_U1_TX/i_div_ratio[1]}]
set_case_analysis 0 [get_pins {Domain_2_TOP_U1/ClkDiv_U1_TX/i_div_ratio[0]}]
create_clock [get_ports UART_CLK]  -period 271.267  -waveform {0 135.633}
set_clock_uncertainty -setup 0.2  [get_clocks UART_CLK]
set_clock_uncertainty -hold 0.1  [get_clocks UART_CLK]
set_clock_transition -max -rise 0.05 [get_clocks UART_CLK]
set_clock_transition -max -fall 0.05 [get_clocks UART_CLK]
set_clock_transition -min -rise 0.05 [get_clocks UART_CLK]
set_clock_transition -min -fall 0.05 [get_clocks UART_CLK]
create_clock [get_ports REF_CLK]  -period 20  -waveform {0 10}
set_clock_uncertainty -setup 0.2  [get_clocks REF_CLK]
set_clock_uncertainty -hold 0.1  [get_clocks REF_CLK]
set_clock_transition -max -rise 0.05 [get_clocks REF_CLK]
set_clock_transition -max -fall 0.05 [get_clocks REF_CLK]
set_clock_transition -min -rise 0.05 [get_clocks REF_CLK]
set_clock_transition -min -fall 0.05 [get_clocks REF_CLK]
create_generated_clock [get_pins Domain_2_TOP_U1/ClkDiv_U2_RX/o_div_clk] -name RX_CLK -source [get_ports UART_CLK] -master_clock UART_CLK -add -combinational
create_generated_clock [get_pins Domain_2_TOP_U1/ClkDiv_U1_TX/o_div_clk]  -name TX_CLK  -source [get_ports UART_CLK]  -master_clock UART_CLK  -divide_by 32  -add
group_path -name INOUT  -from [list [get_ports REF_CLK] [get_ports UART_CLK] [get_ports RST_N] [get_ports UART_RX_IN]]  -to [list [get_ports UART_TX_O] [get_ports framing_error] [get_ports parity_error]]
group_path -name INREG  -from [list [get_ports REF_CLK] [get_ports UART_CLK] [get_ports RST_N] [get_ports UART_RX_IN]]
group_path -name REGOUT  -to [list [get_ports UART_TX_O] [get_ports framing_error] [get_ports parity_error]]
set_max_delay 40  -from [list [get_pins {Domain_2_TOP_U1/RX_OUT_P[0]}] [get_pins {Domain_2_TOP_U1/RX_OUT_P[1]}] [get_pins {Domain_2_TOP_U1/RX_OUT_P[2]}] [get_pins {Domain_2_TOP_U1/RX_OUT_P[3]}] [get_pins {Domain_2_TOP_U1/RX_OUT_P[4]}] [get_pins {Domain_2_TOP_U1/RX_OUT_P[5]}] [get_pins {Domain_2_TOP_U1/RX_OUT_P[6]}] [get_pins {Domain_2_TOP_U1/RX_OUT_P[7]}]]  -to [list [get_pins {Domain_1_TOP_U0/RX_P_DATA[7]}] [get_pins {Domain_1_TOP_U0/RX_P_DATA[6]}] [get_pins {Domain_1_TOP_U0/RX_P_DATA[5]}] [get_pins {Domain_1_TOP_U0/RX_P_DATA[4]}] [get_pins {Domain_1_TOP_U0/RX_P_DATA[3]}] [get_pins {Domain_1_TOP_U0/RX_P_DATA[2]}] [get_pins {Domain_1_TOP_U0/RX_P_DATA[1]}] [get_pins {Domain_1_TOP_U0/RX_P_DATA[0]}]]
set_input_delay -clock UART_CLK  54.2534  [get_ports UART_RX_IN]
set_output_delay -clock UART_CLK  54.2534  [get_ports UART_TX_O]
set_output_delay -clock UART_CLK  54.2534  [get_ports framing_error]
set_output_delay -clock UART_CLK  54.2534  [get_ports parity_error]
set_clock_groups -asynchronous -name UART_CLK_1 -group [list [get_clocks UART_CLK] [get_clocks RX_CLK] [get_clocks TX_CLK]] -group [get_clocks REF_CLK]
