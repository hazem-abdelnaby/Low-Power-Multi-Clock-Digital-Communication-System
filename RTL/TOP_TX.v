module Top_TX(
input Data_Valid,PAR_TYP,PAR_EN,
input [7:0] P_DATA,
input CLK,RST,
output TX_OUT,busy
);
wire ser_done,ser_en,ser_data,par_bit;
wire [1:0] mux_sel;

FSM_TX U1(
.Data_Valid (Data_Valid),
.ser_done (ser_done),
.PAR_EN (PAR_EN),
.CLK (CLK),
.RST (RST),
.busy (busy),
.ser_en (ser_en),
.mux_sel (mux_sel)
);

serializer_TX U2 (
.P_DATA (P_DATA),
.ser_en (ser_en),
.CLK (CLK),
.RST (RST),
.ser_data (ser_data),
.ser_done (ser_done)
);

MUX_TX U3(
.mux_sel (mux_sel),
.ser_data (ser_data),
.par_bit (par_bit),
.TX_OUT (TX_OUT),
.CLK (CLK),
.RST (RST) 
);

Parity_Calc_TX U4(
.P_DATA (P_DATA),
.Data_Valid (Data_Valid),
.PAR_TYP (PAR_TYP),
.CLK (CLK),
.RST (RST),
.par_bit (par_bit)
);

endmodule

  
