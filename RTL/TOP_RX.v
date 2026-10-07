module TOP_RX(
input RX_IN,PAR_EN,PAR_TYP,
input CLK,RST,
input [0:5] prescale,
output stp_err,par_err,strt_glitch,data_valid,
output [0:7] P_DATA
);
wire [0:4] edge_cnt;
wire [0:3] bit_cnt;
wire enable,stp_en,deser_en,strt_chk_en,par_chk_en,data_sample_en,sampled_data,edge_cnt_done;



FSM_RX U1(
.RX_IN (RX_IN),
.PAR_EN (PAR_EN),
.strt_glitch (strt_glitch),
.par_err (par_err),
.stp_err (stp_err),
.CLK (CLK),
.RST (RST),
.bit_cnt (bit_cnt),
.enable (enable),
.stp_en (stp_en),
.deser_en (deser_en),
.strt_chk_en (strt_chk_en),
.par_chk_en (par_chk_en),
.data_valid (data_valid),
.data_sample_en (data_sample_en),
.edge_cnt_done (edge_cnt_done)
);

data_sampling U2(
.edge_cnt (edge_cnt),
.data_sample_en (data_sample_en),
.RX_IN (RX_IN),
.CLK (CLK),
.RST (RST),
.prescale (prescale),
.sampled_data (sampled_data)
);

desrializer U3(
.sampled_data (sampled_data),
.deser_en (deser_en),
.edge_cnt_done (edge_cnt_done),
.CLK (CLK),
.RST (RST),
.P_DATA (P_DATA)
);

edge_bit_counter U4(
.enable (enable),
.PAR_EN (PAR_EN),
.CLK (CLK),
.RST (RST),
.prescale (prescale),
.edge_cnt_done (edge_cnt_done),
.edge_cnt (edge_cnt),
.bit_cnt (bit_cnt)
);

Stop_Checker_RX U5(
.stp_en (stp_en),
.sampled_data (sampled_data),
.stp_err (stp_err)
);

Parity_Checker U6(
.par_chk_en (par_chk_en),
.sampled_data (sampled_data),
.PAR_TYP (PAR_TYP),
.P_DATA (P_DATA),
.par_err (par_err)
);

Start_Checker U7(
.strt_chk_en (strt_chk_en),
.sampled_data (sampled_data),
.strt_glitch (strt_glitch)
);

endmodule