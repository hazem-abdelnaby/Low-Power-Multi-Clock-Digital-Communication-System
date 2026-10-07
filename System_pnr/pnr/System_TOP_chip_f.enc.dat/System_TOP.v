module System_TOP (
	REF_CLK, 
	UART_CLK, 
	RST_N, 
	UART_RX_IN, 
	test_mode, 
	scan_clk, 
	scan_rst, 
	SE, 
	SI, 
	SO, 
	UART_TX_O, 
	parity_error, 
	framing_error);
   input REF_CLK;
   input UART_CLK;
   input RST_N;
   input UART_RX_IN;
   input test_mode;
   input scan_clk;
   input scan_rst;
   input SE;
   input [3:0] SI;
   output [3:0] SO;
   output UART_TX_O;
   output parity_error;
   output framing_error;

   // Internal wires
   wire FE_PHN27_scan_rst;
   wire FE_PHN26_scan_rst;
   wire FE_PHN25_scan_rst;
   wire FE_PHN24_scan_rst;
   wire UART_CLK__L2_N0;
   wire UART_CLK__L1_N0;
   wire REF_CLK__L2_N0;
   wire REF_CLK__L1_N0;
   wire scan_clk__L13_N0;
   wire scan_clk__L12_N0;
   wire scan_clk__L11_N0;
   wire scan_clk__L10_N1;
   wire scan_clk__L10_N0;
   wire scan_clk__L9_N1;
   wire scan_clk__L9_N0;
   wire scan_clk__L8_N0;
   wire scan_clk__L7_N0;
   wire scan_clk__L6_N0;
   wire scan_clk__L5_N0;
   wire scan_clk__L4_N0;
   wire scan_clk__L3_N0;
   wire scan_clk__L2_N0;
   wire scan_clk__L1_N0;
   wire REF_CLK_O__L7_N15;
   wire REF_CLK_O__L7_N14;
   wire REF_CLK_O__L7_N13;
   wire REF_CLK_O__L7_N12;
   wire REF_CLK_O__L7_N11;
   wire REF_CLK_O__L7_N10;
   wire REF_CLK_O__L7_N9;
   wire REF_CLK_O__L7_N8;
   wire REF_CLK_O__L7_N7;
   wire REF_CLK_O__L7_N6;
   wire REF_CLK_O__L7_N5;
   wire REF_CLK_O__L7_N4;
   wire REF_CLK_O__L7_N3;
   wire REF_CLK_O__L7_N2;
   wire REF_CLK_O__L7_N1;
   wire REF_CLK_O__L7_N0;
   wire REF_CLK_O__L6_N7;
   wire REF_CLK_O__L6_N6;
   wire REF_CLK_O__L6_N5;
   wire REF_CLK_O__L6_N4;
   wire REF_CLK_O__L6_N3;
   wire REF_CLK_O__L6_N2;
   wire REF_CLK_O__L6_N1;
   wire REF_CLK_O__L6_N0;
   wire REF_CLK_O__L5_N3;
   wire REF_CLK_O__L5_N2;
   wire REF_CLK_O__L5_N1;
   wire REF_CLK_O__L5_N0;
   wire REF_CLK_O__L4_N1;
   wire REF_CLK_O__L4_N0;
   wire REF_CLK_O__L3_N0;
   wire REF_CLK_O__L2_N1;
   wire REF_CLK_O__L2_N0;
   wire REF_CLK_O__L1_N0;
   wire UART_CLK_O__L13_N1;
   wire UART_CLK_O__L13_N0;
   wire UART_CLK_O__L12_N0;
   wire UART_CLK_O__L11_N0;
   wire UART_CLK_O__L10_N0;
   wire UART_CLK_O__L9_N0;
   wire UART_CLK_O__L8_N0;
   wire UART_CLK_O__L7_N2;
   wire UART_CLK_O__L7_N1;
   wire UART_CLK_O__L7_N0;
   wire UART_CLK_O__L6_N1;
   wire UART_CLK_O__L6_N0;
   wire UART_CLK_O__L5_N1;
   wire UART_CLK_O__L5_N0;
   wire UART_CLK_O__L4_N0;
   wire UART_CLK_O__L3_N2;
   wire UART_CLK_O__L3_N1;
   wire UART_CLK_O__L3_N0;
   wire UART_CLK_O__L2_N0;
   wire UART_CLK_O__L1_N0;
   wire TX_CLK_O__L3_N3;
   wire TX_CLK_O__L3_N2;
   wire TX_CLK_O__L3_N1;
   wire TX_CLK_O__L3_N0;
   wire TX_CLK_O__L2_N0;
   wire TX_CLK_O__L1_N0;
   wire FE_OFN8_SE;
   wire FE_OFN2_SYNC_RST_1;
   wire FE_OFN0_SYNC_RST_2;
   wire N2;
   wire RX_D_VLD_SYNC;
   wire REF_CLK_O;
   wire SYNC_RST_1;
   wire FULL;
   wire WR_INC;
   wire F_EMPTY;
   wire SYNC_RST_2;
   wire UART_CLK_O;
   wire RD_INC;
   wire RX_OUT_V;
   wire stp_err;
   wire strt_glitch;
   wire TX_CLK_O;
   wire sync_rst_1_int;
   wire sync_rst_2_int;
   wire n4;
   wire n9;
   wire n13;
   wire n14;
   wire [7:0] RX_P_DATA;
   wire [7:0] WR_DATA;
   wire [7:0] UART_CONF;
   wire [7:0] Div_Ratio;
   wire [7:0] RD_DATA;
   wire [0:7] RX_OUT_P;

   assign N2 = test_mode ;

   DLY4X1M FE_PHC27_scan_rst (.Y(FE_PHN27_scan_rst), 
	.A(FE_PHN25_scan_rst));
   DLY4X1M FE_PHC26_scan_rst (.Y(FE_PHN26_scan_rst), 
	.A(FE_PHN24_scan_rst));
   DLY4X1M FE_PHC25_scan_rst (.Y(FE_PHN25_scan_rst), 
	.A(scan_rst));
   DLY4X1M FE_PHC24_scan_rst (.Y(FE_PHN24_scan_rst), 
	.A(scan_rst));
   CLKINVX40M UART_CLK__L2_I0 (.Y(UART_CLK__L2_N0), 
	.A(UART_CLK__L1_N0));
   CLKINVX40M UART_CLK__L1_I0 (.Y(UART_CLK__L1_N0), 
	.A(UART_CLK));
   CLKINVX40M REF_CLK__L2_I0 (.Y(REF_CLK__L2_N0), 
	.A(REF_CLK__L1_N0));
   CLKINVX40M REF_CLK__L1_I0 (.Y(REF_CLK__L1_N0), 
	.A(REF_CLK));
   CLKINVX32M scan_clk__L13_I0 (.Y(scan_clk__L13_N0), 
	.A(scan_clk__L12_N0));
   CLKINVX40M scan_clk__L12_I0 (.Y(scan_clk__L12_N0), 
	.A(scan_clk__L11_N0));
   CLKBUFX40M scan_clk__L11_I0 (.Y(scan_clk__L11_N0), 
	.A(scan_clk__L10_N1));
   CLKBUFX40M scan_clk__L10_I1 (.Y(scan_clk__L10_N1), 
	.A(scan_clk__L9_N1));
   CLKBUFX24M scan_clk__L10_I0 (.Y(scan_clk__L10_N0), 
	.A(scan_clk__L9_N0));
   CLKBUFX24M scan_clk__L9_I1 (.Y(scan_clk__L9_N1), 
	.A(scan_clk__L8_N0));
   CLKBUFX24M scan_clk__L9_I0 (.Y(scan_clk__L9_N0), 
	.A(scan_clk__L8_N0));
   CLKBUFX24M scan_clk__L8_I0 (.Y(scan_clk__L8_N0), 
	.A(scan_clk__L7_N0));
   CLKBUFX24M scan_clk__L7_I0 (.Y(scan_clk__L7_N0), 
	.A(scan_clk__L6_N0));
   CLKBUFX24M scan_clk__L6_I0 (.Y(scan_clk__L6_N0), 
	.A(scan_clk__L5_N0));
   CLKBUFX24M scan_clk__L5_I0 (.Y(scan_clk__L5_N0), 
	.A(scan_clk__L4_N0));
   CLKBUFX24M scan_clk__L4_I0 (.Y(scan_clk__L4_N0), 
	.A(scan_clk__L3_N0));
   BUFX8M scan_clk__L3_I0 (.Y(scan_clk__L3_N0), 
	.A(scan_clk__L2_N0));
   CLKINVX40M scan_clk__L2_I0 (.Y(scan_clk__L2_N0), 
	.A(scan_clk__L1_N0));
   CLKINVX40M scan_clk__L1_I0 (.Y(scan_clk__L1_N0), 
	.A(scan_clk));
   CLKINVX32M REF_CLK_O__L7_I15 (.Y(REF_CLK_O__L7_N15), 
	.A(REF_CLK_O__L6_N7));
   CLKINVX32M REF_CLK_O__L7_I14 (.Y(REF_CLK_O__L7_N14), 
	.A(REF_CLK_O__L6_N7));
   CLKINVX32M REF_CLK_O__L7_I13 (.Y(REF_CLK_O__L7_N13), 
	.A(REF_CLK_O__L6_N6));
   CLKINVX32M REF_CLK_O__L7_I12 (.Y(REF_CLK_O__L7_N12), 
	.A(REF_CLK_O__L6_N6));
   CLKINVX32M REF_CLK_O__L7_I11 (.Y(REF_CLK_O__L7_N11), 
	.A(REF_CLK_O__L6_N5));
   CLKINVX32M REF_CLK_O__L7_I10 (.Y(REF_CLK_O__L7_N10), 
	.A(REF_CLK_O__L6_N5));
   CLKINVX32M REF_CLK_O__L7_I9 (.Y(REF_CLK_O__L7_N9), 
	.A(REF_CLK_O__L6_N4));
   CLKINVX32M REF_CLK_O__L7_I8 (.Y(REF_CLK_O__L7_N8), 
	.A(REF_CLK_O__L6_N4));
   CLKINVX32M REF_CLK_O__L7_I7 (.Y(REF_CLK_O__L7_N7), 
	.A(REF_CLK_O__L6_N3));
   CLKINVX32M REF_CLK_O__L7_I6 (.Y(REF_CLK_O__L7_N6), 
	.A(REF_CLK_O__L6_N3));
   CLKINVX32M REF_CLK_O__L7_I5 (.Y(REF_CLK_O__L7_N5), 
	.A(REF_CLK_O__L6_N2));
   CLKINVX32M REF_CLK_O__L7_I4 (.Y(REF_CLK_O__L7_N4), 
	.A(REF_CLK_O__L6_N2));
   CLKINVX32M REF_CLK_O__L7_I3 (.Y(REF_CLK_O__L7_N3), 
	.A(REF_CLK_O__L6_N1));
   CLKINVX32M REF_CLK_O__L7_I2 (.Y(REF_CLK_O__L7_N2), 
	.A(REF_CLK_O__L6_N1));
   CLKINVX32M REF_CLK_O__L7_I1 (.Y(REF_CLK_O__L7_N1), 
	.A(REF_CLK_O__L6_N0));
   CLKINVX32M REF_CLK_O__L7_I0 (.Y(REF_CLK_O__L7_N0), 
	.A(REF_CLK_O__L6_N0));
   CLKINVX40M REF_CLK_O__L6_I7 (.Y(REF_CLK_O__L6_N7), 
	.A(REF_CLK_O__L5_N3));
   CLKINVX40M REF_CLK_O__L6_I6 (.Y(REF_CLK_O__L6_N6), 
	.A(REF_CLK_O__L5_N3));
   CLKINVX40M REF_CLK_O__L6_I5 (.Y(REF_CLK_O__L6_N5), 
	.A(REF_CLK_O__L5_N2));
   CLKINVX40M REF_CLK_O__L6_I4 (.Y(REF_CLK_O__L6_N4), 
	.A(REF_CLK_O__L5_N2));
   CLKINVX40M REF_CLK_O__L6_I3 (.Y(REF_CLK_O__L6_N3), 
	.A(REF_CLK_O__L5_N1));
   CLKINVX40M REF_CLK_O__L6_I2 (.Y(REF_CLK_O__L6_N2), 
	.A(REF_CLK_O__L5_N1));
   CLKINVX40M REF_CLK_O__L6_I1 (.Y(REF_CLK_O__L6_N1), 
	.A(REF_CLK_O__L5_N0));
   CLKINVX40M REF_CLK_O__L6_I0 (.Y(REF_CLK_O__L6_N0), 
	.A(REF_CLK_O__L5_N0));
   CLKINVX40M REF_CLK_O__L5_I3 (.Y(REF_CLK_O__L5_N3), 
	.A(REF_CLK_O__L4_N1));
   CLKINVX40M REF_CLK_O__L5_I2 (.Y(REF_CLK_O__L5_N2), 
	.A(REF_CLK_O__L4_N1));
   CLKINVX40M REF_CLK_O__L5_I1 (.Y(REF_CLK_O__L5_N1), 
	.A(REF_CLK_O__L4_N0));
   CLKINVX40M REF_CLK_O__L5_I0 (.Y(REF_CLK_O__L5_N0), 
	.A(REF_CLK_O__L4_N0));
   CLKINVX40M REF_CLK_O__L4_I1 (.Y(REF_CLK_O__L4_N1), 
	.A(REF_CLK_O__L3_N0));
   CLKINVX40M REF_CLK_O__L4_I0 (.Y(REF_CLK_O__L4_N0), 
	.A(REF_CLK_O__L3_N0));
   CLKINVX40M REF_CLK_O__L3_I0 (.Y(REF_CLK_O__L3_N0), 
	.A(REF_CLK_O__L2_N1));
   CLKBUFX24M REF_CLK_O__L2_I1 (.Y(REF_CLK_O__L2_N1), 
	.A(REF_CLK_O__L1_N0));
   CLKINVX6M REF_CLK_O__L2_I0 (.Y(REF_CLK_O__L2_N0), 
	.A(REF_CLK_O__L1_N0));
   CLKINVX6M REF_CLK_O__L1_I0 (.Y(REF_CLK_O__L1_N0), 
	.A(REF_CLK_O));
   CLKINVX32M UART_CLK_O__L13_I1 (.Y(UART_CLK_O__L13_N1), 
	.A(UART_CLK_O__L12_N0));
   CLKINVX32M UART_CLK_O__L13_I0 (.Y(UART_CLK_O__L13_N0), 
	.A(UART_CLK_O__L12_N0));
   CLKINVX40M UART_CLK_O__L12_I0 (.Y(UART_CLK_O__L12_N0), 
	.A(UART_CLK_O__L11_N0));
   CLKINVX40M UART_CLK_O__L11_I0 (.Y(UART_CLK_O__L11_N0), 
	.A(UART_CLK_O__L10_N0));
   CLKBUFX40M UART_CLK_O__L10_I0 (.Y(UART_CLK_O__L10_N0), 
	.A(UART_CLK_O__L9_N0));
   CLKBUFX20M UART_CLK_O__L9_I0 (.Y(UART_CLK_O__L9_N0), 
	.A(UART_CLK_O__L8_N0));
   CLKBUFX20M UART_CLK_O__L8_I0 (.Y(UART_CLK_O__L8_N0), 
	.A(UART_CLK_O__L7_N2));
   CLKBUFX20M UART_CLK_O__L7_I2 (.Y(UART_CLK_O__L7_N2), 
	.A(UART_CLK_O__L6_N1));
   CLKINVX32M UART_CLK_O__L7_I1 (.Y(UART_CLK_O__L7_N1), 
	.A(UART_CLK_O__L6_N0));
   CLKINVX32M UART_CLK_O__L7_I0 (.Y(UART_CLK_O__L7_N0), 
	.A(UART_CLK_O__L6_N0));
   CLKBUFX20M UART_CLK_O__L6_I1 (.Y(UART_CLK_O__L6_N1), 
	.A(UART_CLK_O__L5_N1));
   CLKINVX40M UART_CLK_O__L6_I0 (.Y(UART_CLK_O__L6_N0), 
	.A(UART_CLK_O__L5_N0));
   CLKBUFX20M UART_CLK_O__L5_I1 (.Y(UART_CLK_O__L5_N1), 
	.A(UART_CLK_O__L4_N0));
   CLKINVX32M UART_CLK_O__L5_I0 (.Y(UART_CLK_O__L5_N0), 
	.A(UART_CLK_O__L4_N0));
   CLKBUFX20M UART_CLK_O__L4_I0 (.Y(UART_CLK_O__L4_N0), 
	.A(UART_CLK_O__L3_N2));
   CLKBUFX20M UART_CLK_O__L3_I2 (.Y(UART_CLK_O__L3_N2), 
	.A(UART_CLK_O__L2_N0));
   CLKINVX32M UART_CLK_O__L3_I1 (.Y(UART_CLK_O__L3_N1), 
	.A(UART_CLK_O__L2_N0));
   CLKINVX32M UART_CLK_O__L3_I0 (.Y(UART_CLK_O__L3_N0), 
	.A(UART_CLK_O__L2_N0));
   CLKINVX32M UART_CLK_O__L2_I0 (.Y(UART_CLK_O__L2_N0), 
	.A(UART_CLK_O__L1_N0));
   CLKBUFX16M UART_CLK_O__L1_I0 (.Y(UART_CLK_O__L1_N0), 
	.A(UART_CLK_O));
   CLKBUFX40M TX_CLK_O__L3_I3 (.Y(TX_CLK_O__L3_N3), 
	.A(TX_CLK_O__L2_N0));
   CLKBUFX40M TX_CLK_O__L3_I2 (.Y(TX_CLK_O__L3_N2), 
	.A(TX_CLK_O__L2_N0));
   CLKBUFX40M TX_CLK_O__L3_I1 (.Y(TX_CLK_O__L3_N1), 
	.A(TX_CLK_O__L2_N0));
   CLKBUFX40M TX_CLK_O__L3_I0 (.Y(TX_CLK_O__L3_N0), 
	.A(TX_CLK_O__L2_N0));
   BUFX32M TX_CLK_O__L2_I0 (.Y(TX_CLK_O__L2_N0), 
	.A(TX_CLK_O__L1_N0));
   CLKBUFX12M TX_CLK_O__L1_I0 (.Y(TX_CLK_O__L1_N0), 
	.A(TX_CLK_O));
   BUFX4M FE_OFC8_SE (.Y(FE_OFN8_SE), 
	.A(SE));
   BUFX4M FE_OFC2_SYNC_RST_1 (.Y(FE_OFN2_SYNC_RST_1), 
	.A(SYNC_RST_1));
   BUFX4M FE_OFC0_SYNC_RST_2 (.Y(FE_OFN0_SYNC_RST_2), 
	.A(SYNC_RST_2));
   OR2X4M U4 (.Y(framing_error), 
	.B(strt_glitch), 
	.A(stp_err));
   MX2X8M U5 (.Y(SYNC_RST_2), 
	.S0(N2), 
	.B(FE_PHN26_scan_rst), 
	.A(sync_rst_2_int));
   MX2X8M U6 (.Y(SYNC_RST_1), 
	.S0(N2), 
	.B(FE_PHN27_scan_rst), 
	.A(sync_rst_1_int));
   INVXLM U8 (.Y(n13), 
	.A(FE_OFN8_SE));
   CLKINVX2M U9 (.Y(n14), 
	.A(n13));
   Domain_1_TOP_test_1 Domain_1_TOP_U0 (.RX_P_DATA({ RX_P_DATA[7],
		RX_P_DATA[6],
		RX_P_DATA[5],
		RX_P_DATA[4],
		RX_P_DATA[3],
		RX_P_DATA[2],
		RX_P_DATA[1],
		RX_P_DATA[0] }), 
	.RX_D_VLD(RX_D_VLD_SYNC), 
	.REF_CLK(REF_CLK_O__L2_N0), 
	.RST(SYNC_RST_1), 
	.FULL(FULL), 
	.test_mode(N2), 
	.WR_DATA({ WR_DATA[7],
		WR_DATA[6],
		WR_DATA[5],
		WR_DATA[4],
		WR_DATA[3],
		WR_DATA[2],
		WR_DATA[1],
		WR_DATA[0] }), 
	.WR_INC(WR_INC), 
	.UART_CONF({ UART_CONF[7],
		UART_CONF[6],
		UART_CONF[5],
		UART_CONF[4],
		UART_CONF[3],
		UART_CONF[2],
		UART_CONF[1],
		UART_CONF[0] }), 
	.REG3({ Div_Ratio[7],
		Div_Ratio[6],
		Div_Ratio[5],
		Div_Ratio[4],
		Div_Ratio[3],
		Div_Ratio[2],
		Div_Ratio[1],
		Div_Ratio[0] }), 
	.test_si2(SI[3]), 
	.test_si1(SI[2]), 
	.test_so3(n4), 
	.test_so2(SO[2]), 
	.test_so1(SO[1]), 
	.test_se(FE_OFN8_SE), 
	.FE_OFN2_SYNC_RST_1(FE_OFN2_SYNC_RST_1), 
	.REF_CLK_O__L7_N0(REF_CLK_O__L7_N0), 
	.REF_CLK_O__L7_N1(REF_CLK_O__L7_N1), 
	.REF_CLK_O__L7_N10(REF_CLK_O__L7_N10), 
	.REF_CLK_O__L7_N11(REF_CLK_O__L7_N11), 
	.REF_CLK_O__L7_N12(REF_CLK_O__L7_N12), 
	.REF_CLK_O__L7_N13(REF_CLK_O__L7_N13), 
	.REF_CLK_O__L7_N14(REF_CLK_O__L7_N14), 
	.REF_CLK_O__L7_N15(REF_CLK_O__L7_N15), 
	.REF_CLK_O__L7_N2(REF_CLK_O__L7_N2), 
	.REF_CLK_O__L7_N8(REF_CLK_O__L7_N8), 
	.REF_CLK_O__L7_N9(REF_CLK_O__L7_N9));
   Domain_2_TOP_test_1 Domain_2_TOP_U1 (.prescale({ UART_CONF[7],
		UART_CONF[6],
		UART_CONF[5],
		UART_CONF[4],
		UART_CONF[3],
		UART_CONF[2] }), 
	.Div_Ratio({ Div_Ratio[7],
		Div_Ratio[6],
		Div_Ratio[5],
		Div_Ratio[4],
		Div_Ratio[3],
		Div_Ratio[2],
		Div_Ratio[1],
		Div_Ratio[0] }), 
	.F_EMPTY(F_EMPTY), 
	.RD_DATA({ RD_DATA[7],
		RD_DATA[6],
		RD_DATA[5],
		RD_DATA[4],
		RD_DATA[3],
		RD_DATA[2],
		RD_DATA[1],
		RD_DATA[0] }), 
	.RST(SYNC_RST_2), 
	.UART_CLK(UART_CLK_O__L13_N0), 
	.RX_IN(UART_RX_IN), 
	.PAR_EN(UART_CONF[0]), 
	.PAR_TYP(UART_CONF[1]), 
	.test_mode(N2), 
	.scan_clk(scan_clk__L13_N0), 
	.RD_INC(RD_INC), 
	.RX_OUT_P({ RX_OUT_P[0],
		RX_OUT_P[1],
		RX_OUT_P[2],
		RX_OUT_P[3],
		RX_OUT_P[4],
		RX_OUT_P[5],
		RX_OUT_P[6],
		RX_OUT_P[7] }), 
	.RX_OUT_V(RX_OUT_V), 
	.stp_err(stp_err), 
	.par_err(parity_error), 
	.strt_glitch(strt_glitch), 
	.TX_CLK_O(TX_CLK_O), 
	.test_si(n4), 
	.test_so(SO[3]), 
	.test_se(FE_OFN8_SE), 
	.FE_OFN0_SYNC_RST_2(FE_OFN0_SYNC_RST_2), 
	.TX_CLK_O__L3_N0(TX_CLK_O__L3_N0), 
	.TX_CLK_O__L3_N1(TX_CLK_O__L3_N1), 
	.TX_CLK_O__L3_N2(TX_CLK_O__L3_N2), 
	.TX_CLK_O__L3_N3(TX_CLK_O__L3_N3), 
	.UART_CLK_O__L13_N1(UART_CLK_O__L13_N1), 
	.UART_CLK_O__L3_N0(UART_CLK_O__L3_N0), 
	.UART_CLK_O__L3_N1(UART_CLK_O__L3_N1), 
	.UART_CLK_O__L7_N0(UART_CLK_O__L7_N0), 
	.UART_CLK_O__L7_N1(UART_CLK_O__L7_N1));
   DATA_SYNC_test_1 DATA_SYNC_U2 (.unsync_bus({ RX_OUT_P[0],
		RX_OUT_P[1],
		RX_OUT_P[2],
		RX_OUT_P[3],
		RX_OUT_P[4],
		RX_OUT_P[5],
		RX_OUT_P[6],
		RX_OUT_P[7] }), 
	.bus_enable(RX_OUT_V), 
	.CLK(REF_CLK_O__L7_N3), 
	.RST(SYNC_RST_1), 
	.sync_bus({ RX_P_DATA[7],
		RX_P_DATA[6],
		RX_P_DATA[5],
		RX_P_DATA[4],
		RX_P_DATA[3],
		RX_P_DATA[2],
		RX_P_DATA[1],
		RX_P_DATA[0] }), 
	.enable_pulse(RX_D_VLD_SYNC), 
	.test_si(n9), 
	.test_se(n14), 
	.FE_OFN2_SYNC_RST_1(FE_OFN2_SYNC_RST_1));
   RST_SYNC_0 RST_SYNC_U3 (.RST(RST_N), 
	.CLK(REF_CLK_O__L7_N6), 
	.SYNC_RST(sync_rst_1_int));
   RST_SYNC_1 RST_SYNC_U4 (.RST(RST_N), 
	.CLK(UART_CLK_O__L13_N1), 
	.SYNC_RST(sync_rst_2_int));
   ASYNC_FIFO_test_1 ASYNC_FIFO_U5 (.W_CLK(REF_CLK_O__L7_N0), 
	.W_RST(SYNC_RST_1), 
	.R_CLK(TX_CLK_O__L3_N0), 
	.R_RST(SYNC_RST_2), 
	.WR_DATA({ WR_DATA[7],
		WR_DATA[6],
		WR_DATA[5],
		WR_DATA[4],
		WR_DATA[3],
		WR_DATA[2],
		WR_DATA[1],
		WR_DATA[0] }), 
	.W_INC(WR_INC), 
	.R_INC(RD_INC), 
	.RD_DATA({ RD_DATA[7],
		RD_DATA[6],
		RD_DATA[5],
		RD_DATA[4],
		RD_DATA[3],
		RD_DATA[2],
		RD_DATA[1],
		RD_DATA[0] }), 
	.FULL(FULL), 
	.EMPTY(F_EMPTY), 
	.test_si2(SI[1]), 
	.test_si1(SI[0]), 
	.test_so2(n9), 
	.test_so1(SO[0]), 
	.test_se(SE), 
	.FE_OFN0_SYNC_RST_2(FE_OFN0_SYNC_RST_2), 
	.FE_OFN2_SYNC_RST_1(FE_OFN2_SYNC_RST_1), 
	.FE_OFN8_SE(FE_OFN8_SE), 
	.TX_CLK_O__L3_N2(TX_CLK_O__L3_N2), 
	.REF_CLK_O__L7_N1(REF_CLK_O__L7_N1), 
	.REF_CLK_O__L7_N3(REF_CLK_O__L7_N3), 
	.REF_CLK_O__L7_N4(REF_CLK_O__L7_N4), 
	.REF_CLK_O__L7_N5(REF_CLK_O__L7_N5), 
	.REF_CLK_O__L7_N6(REF_CLK_O__L7_N6), 
	.REF_CLK_O__L7_N7(REF_CLK_O__L7_N7));
   MUX_2X1_0 MUX_2X1_U6 (.IN_0(REF_CLK__L2_N0), 
	.IN_1(scan_clk__L10_N0), 
	.SEL(N2), 
	.OUT(REF_CLK_O));
   MUX_2X1_3 MUX_2X1_U7 (.IN_0(UART_CLK__L2_N0), 
	.IN_1(scan_clk__L2_N0), 
	.SEL(N2), 
	.OUT(UART_CLK_O));
endmodule

/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Wed Oct  7 01:12:27 2026
/////////////////////////////////////////////////////////////
module Clock_Gating (
	CLK_EN, 
	CLK, 
	GATED_CLK);
   input CLK_EN;
   input CLK;
   output GATED_CLK;

   TLATNCAX4M U0 (.ECK(GATED_CLK), 
	.E(CLK_EN), 
	.CK(CLK));
endmodule

module ALU_DW_div_uns_0 (
	a, 
	b, 
	quotient, 
	remainder, 
	divide_by_0, 
	n136, 
	n138, 
	n147, 
	n149, 
	n148, 
	n139, 
	n151, 
	n152, 
	n153, 
	n154, 
	n155, 
	n157, 
	n156);
   input [7:0] a;
   input [7:0] b;
   output [7:0] quotient;
   output [7:0] remainder;
   output divide_by_0;
   input n136;
   input n138;
   input n147;
   input n149;
   input n148;
   input n139;
   input n151;
   input n152;
   input n153;
   input n154;
   input n155;
   input n157;
   input n156;

   // Internal wires
   wire \u_div/SumTmp[1][0] ;
   wire \u_div/SumTmp[1][1] ;
   wire \u_div/SumTmp[1][2] ;
   wire \u_div/SumTmp[1][3] ;
   wire \u_div/SumTmp[1][4] ;
   wire \u_div/SumTmp[1][5] ;
   wire \u_div/SumTmp[1][6] ;
   wire \u_div/SumTmp[2][0] ;
   wire \u_div/SumTmp[2][1] ;
   wire \u_div/SumTmp[2][2] ;
   wire \u_div/SumTmp[2][3] ;
   wire \u_div/SumTmp[2][4] ;
   wire \u_div/SumTmp[2][5] ;
   wire \u_div/SumTmp[3][0] ;
   wire \u_div/SumTmp[3][1] ;
   wire \u_div/SumTmp[3][2] ;
   wire \u_div/SumTmp[3][3] ;
   wire \u_div/SumTmp[3][4] ;
   wire \u_div/SumTmp[4][0] ;
   wire \u_div/SumTmp[4][1] ;
   wire \u_div/SumTmp[4][2] ;
   wire \u_div/SumTmp[4][3] ;
   wire \u_div/SumTmp[5][0] ;
   wire \u_div/SumTmp[5][1] ;
   wire \u_div/SumTmp[5][2] ;
   wire \u_div/SumTmp[6][0] ;
   wire \u_div/SumTmp[6][1] ;
   wire \u_div/SumTmp[7][0] ;
   wire \u_div/CryTmp[0][1] ;
   wire \u_div/CryTmp[0][2] ;
   wire \u_div/CryTmp[0][3] ;
   wire \u_div/CryTmp[0][4] ;
   wire \u_div/CryTmp[0][5] ;
   wire \u_div/CryTmp[0][6] ;
   wire \u_div/CryTmp[0][7] ;
   wire \u_div/CryTmp[1][1] ;
   wire \u_div/CryTmp[1][2] ;
   wire \u_div/CryTmp[1][3] ;
   wire \u_div/CryTmp[1][4] ;
   wire \u_div/CryTmp[1][5] ;
   wire \u_div/CryTmp[1][6] ;
   wire \u_div/CryTmp[1][7] ;
   wire \u_div/CryTmp[2][1] ;
   wire \u_div/CryTmp[2][2] ;
   wire \u_div/CryTmp[2][3] ;
   wire \u_div/CryTmp[2][4] ;
   wire \u_div/CryTmp[2][5] ;
   wire \u_div/CryTmp[2][6] ;
   wire \u_div/CryTmp[3][1] ;
   wire \u_div/CryTmp[3][2] ;
   wire \u_div/CryTmp[3][3] ;
   wire \u_div/CryTmp[3][4] ;
   wire \u_div/CryTmp[3][5] ;
   wire \u_div/CryTmp[4][1] ;
   wire \u_div/CryTmp[4][2] ;
   wire \u_div/CryTmp[4][3] ;
   wire \u_div/CryTmp[4][4] ;
   wire \u_div/CryTmp[5][1] ;
   wire \u_div/CryTmp[5][2] ;
   wire \u_div/CryTmp[5][3] ;
   wire \u_div/CryTmp[6][1] ;
   wire \u_div/CryTmp[6][2] ;
   wire \u_div/CryTmp[7][1] ;
   wire \u_div/PartRem[1][1] ;
   wire \u_div/PartRem[1][2] ;
   wire \u_div/PartRem[1][3] ;
   wire \u_div/PartRem[1][4] ;
   wire \u_div/PartRem[1][5] ;
   wire \u_div/PartRem[1][6] ;
   wire \u_div/PartRem[1][7] ;
   wire \u_div/PartRem[2][1] ;
   wire \u_div/PartRem[2][2] ;
   wire \u_div/PartRem[2][3] ;
   wire \u_div/PartRem[2][4] ;
   wire \u_div/PartRem[2][5] ;
   wire \u_div/PartRem[2][6] ;
   wire \u_div/PartRem[3][1] ;
   wire \u_div/PartRem[3][2] ;
   wire \u_div/PartRem[3][3] ;
   wire \u_div/PartRem[3][4] ;
   wire \u_div/PartRem[3][5] ;
   wire \u_div/PartRem[4][1] ;
   wire \u_div/PartRem[4][2] ;
   wire \u_div/PartRem[4][3] ;
   wire \u_div/PartRem[4][4] ;
   wire \u_div/PartRem[5][1] ;
   wire \u_div/PartRem[5][2] ;
   wire \u_div/PartRem[5][3] ;
   wire \u_div/PartRem[6][1] ;
   wire \u_div/PartRem[6][2] ;
   wire \u_div/PartRem[7][1] ;
   wire n2;
   wire n3;
   wire n4;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;

   ADDFX2M \u_div/u_fa_PartRem_0_2_5  (.S(\u_div/SumTmp[2][5] ), 
	.CO(\u_div/CryTmp[2][6] ), 
	.CI(\u_div/CryTmp[2][5] ), 
	.B(n13), 
	.A(\u_div/PartRem[3][5] ));
   ADDFX2M \u_div/u_fa_PartRem_0_4_3  (.S(\u_div/SumTmp[4][3] ), 
	.CO(\u_div/CryTmp[4][4] ), 
	.CI(\u_div/CryTmp[4][3] ), 
	.B(n15), 
	.A(\u_div/PartRem[5][3] ));
   ADDFX2M \u_div/u_fa_PartRem_0_5_2  (.S(\u_div/SumTmp[5][2] ), 
	.CO(\u_div/CryTmp[5][3] ), 
	.CI(\u_div/CryTmp[5][2] ), 
	.B(n16), 
	.A(\u_div/PartRem[6][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_6_1  (.S(\u_div/SumTmp[6][1] ), 
	.CO(\u_div/CryTmp[6][2] ), 
	.CI(\u_div/CryTmp[6][1] ), 
	.B(n17), 
	.A(\u_div/PartRem[7][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_3_4  (.S(\u_div/SumTmp[3][4] ), 
	.CO(\u_div/CryTmp[3][5] ), 
	.CI(\u_div/CryTmp[3][4] ), 
	.B(n14), 
	.A(\u_div/PartRem[4][4] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_6  (.CO(\u_div/CryTmp[0][7] ), 
	.CI(\u_div/CryTmp[0][6] ), 
	.B(n12), 
	.A(\u_div/PartRem[1][6] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_7  (.CO(quotient[0]), 
	.CI(\u_div/CryTmp[0][7] ), 
	.B(n11), 
	.A(\u_div/PartRem[1][7] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_1  (.CO(\u_div/CryTmp[0][2] ), 
	.CI(\u_div/CryTmp[0][1] ), 
	.B(n17), 
	.A(\u_div/PartRem[1][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_1  (.S(\u_div/SumTmp[1][1] ), 
	.CO(\u_div/CryTmp[1][2] ), 
	.CI(\u_div/CryTmp[1][1] ), 
	.B(n17), 
	.A(\u_div/PartRem[2][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_2_1  (.S(\u_div/SumTmp[2][1] ), 
	.CO(\u_div/CryTmp[2][2] ), 
	.CI(\u_div/CryTmp[2][1] ), 
	.B(n17), 
	.A(\u_div/PartRem[3][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_3_1  (.S(\u_div/SumTmp[3][1] ), 
	.CO(\u_div/CryTmp[3][2] ), 
	.CI(\u_div/CryTmp[3][1] ), 
	.B(n17), 
	.A(\u_div/PartRem[4][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_4_1  (.S(\u_div/SumTmp[4][1] ), 
	.CO(\u_div/CryTmp[4][2] ), 
	.CI(\u_div/CryTmp[4][1] ), 
	.B(n17), 
	.A(\u_div/PartRem[5][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_5_1  (.S(\u_div/SumTmp[5][1] ), 
	.CO(\u_div/CryTmp[5][2] ), 
	.CI(\u_div/CryTmp[5][1] ), 
	.B(n17), 
	.A(\u_div/PartRem[6][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_4  (.CO(\u_div/CryTmp[0][5] ), 
	.CI(\u_div/CryTmp[0][4] ), 
	.B(n14), 
	.A(\u_div/PartRem[1][4] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_5  (.CO(\u_div/CryTmp[0][6] ), 
	.CI(\u_div/CryTmp[0][5] ), 
	.B(n13), 
	.A(\u_div/PartRem[1][5] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_5  (.S(\u_div/SumTmp[1][5] ), 
	.CO(\u_div/CryTmp[1][6] ), 
	.CI(\u_div/CryTmp[1][5] ), 
	.B(n13), 
	.A(\u_div/PartRem[2][5] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_4  (.S(\u_div/SumTmp[1][4] ), 
	.CO(\u_div/CryTmp[1][5] ), 
	.CI(\u_div/CryTmp[1][4] ), 
	.B(n14), 
	.A(\u_div/PartRem[2][4] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_2  (.CO(\u_div/CryTmp[0][3] ), 
	.CI(\u_div/CryTmp[0][2] ), 
	.B(n16), 
	.A(\u_div/PartRem[1][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_3  (.CO(\u_div/CryTmp[0][4] ), 
	.CI(\u_div/CryTmp[0][3] ), 
	.B(n15), 
	.A(\u_div/PartRem[1][3] ));
   ADDFX2M \u_div/u_fa_PartRem_0_2_4  (.S(\u_div/SumTmp[2][4] ), 
	.CO(\u_div/CryTmp[2][5] ), 
	.CI(\u_div/CryTmp[2][4] ), 
	.B(n14), 
	.A(\u_div/PartRem[3][4] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_3  (.S(\u_div/SumTmp[1][3] ), 
	.CO(\u_div/CryTmp[1][4] ), 
	.CI(\u_div/CryTmp[1][3] ), 
	.B(n15), 
	.A(\u_div/PartRem[2][3] ));
   ADDFX2M \u_div/u_fa_PartRem_0_2_3  (.S(\u_div/SumTmp[2][3] ), 
	.CO(\u_div/CryTmp[2][4] ), 
	.CI(\u_div/CryTmp[2][3] ), 
	.B(n15), 
	.A(\u_div/PartRem[3][3] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_2  (.S(\u_div/SumTmp[1][2] ), 
	.CO(\u_div/CryTmp[1][3] ), 
	.CI(\u_div/CryTmp[1][2] ), 
	.B(n16), 
	.A(\u_div/PartRem[2][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_3_3  (.S(\u_div/SumTmp[3][3] ), 
	.CO(\u_div/CryTmp[3][4] ), 
	.CI(\u_div/CryTmp[3][3] ), 
	.B(n15), 
	.A(\u_div/PartRem[4][3] ));
   ADDFX2M \u_div/u_fa_PartRem_0_2_2  (.S(\u_div/SumTmp[2][2] ), 
	.CO(\u_div/CryTmp[2][3] ), 
	.CI(\u_div/CryTmp[2][2] ), 
	.B(n16), 
	.A(\u_div/PartRem[3][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_3_2  (.S(\u_div/SumTmp[3][2] ), 
	.CO(\u_div/CryTmp[3][3] ), 
	.CI(\u_div/CryTmp[3][2] ), 
	.B(n16), 
	.A(\u_div/PartRem[4][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_4_2  (.S(\u_div/SumTmp[4][2] ), 
	.CO(\u_div/CryTmp[4][3] ), 
	.CI(\u_div/CryTmp[4][2] ), 
	.B(n16), 
	.A(\u_div/PartRem[5][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_6  (.S(\u_div/SumTmp[1][6] ), 
	.CO(\u_div/CryTmp[1][7] ), 
	.CI(\u_div/CryTmp[1][6] ), 
	.B(n12), 
	.A(\u_div/PartRem[2][6] ));
   INVX2M U1 (.Y(n18), 
	.A(b[0]));
   XNOR2X2M U2 (.Y(\u_div/SumTmp[7][0] ), 
	.B(a[7]), 
	.A(n18));
   XNOR2X2M U3 (.Y(\u_div/SumTmp[6][0] ), 
	.B(a[6]), 
	.A(n18));
   XNOR2X2M U4 (.Y(\u_div/SumTmp[5][0] ), 
	.B(a[5]), 
	.A(n18));
   XNOR2X2M U5 (.Y(\u_div/SumTmp[4][0] ), 
	.B(a[4]), 
	.A(n18));
   XNOR2X2M U6 (.Y(\u_div/SumTmp[3][0] ), 
	.B(a[3]), 
	.A(n18));
   XNOR2X2M U7 (.Y(\u_div/SumTmp[2][0] ), 
	.B(a[2]), 
	.A(n18));
   OR2X2M U8 (.Y(\u_div/CryTmp[7][1] ), 
	.B(a[7]), 
	.A(n18));
   NAND2X2M U9 (.Y(\u_div/CryTmp[5][1] ), 
	.B(n4), 
	.A(n3));
   INVX2M U10 (.Y(n4), 
	.A(a[5]));
   INVX2M U11 (.Y(n3), 
	.A(n18));
   NAND2X2M U12 (.Y(\u_div/CryTmp[4][1] ), 
	.B(n6), 
	.A(n3));
   INVX2M U13 (.Y(n6), 
	.A(a[4]));
   NAND2X2M U15 (.Y(\u_div/CryTmp[3][1] ), 
	.B(n7), 
	.A(n3));
   INVX2M U16 (.Y(n7), 
	.A(a[3]));
   NAND2X2M U17 (.Y(\u_div/CryTmp[2][1] ), 
	.B(n8), 
	.A(n3));
   INVX2M U18 (.Y(n8), 
	.A(a[2]));
   NAND2X2M U19 (.Y(\u_div/CryTmp[1][1] ), 
	.B(n9), 
	.A(n3));
   INVX2M U20 (.Y(n9), 
	.A(a[1]));
   NAND2X2M U21 (.Y(\u_div/CryTmp[0][1] ), 
	.B(n10), 
	.A(n3));
   INVX2M U22 (.Y(n10), 
	.A(a[0]));
   NAND2X2M U23 (.Y(\u_div/CryTmp[6][1] ), 
	.B(n2), 
	.A(n3));
   INVX2M U24 (.Y(n2), 
	.A(a[6]));
   XNOR2X2M U26 (.Y(\u_div/SumTmp[1][0] ), 
	.B(a[1]), 
	.A(n18));
   INVX2M U27 (.Y(n12), 
	.A(b[6]));
   INVX2M U28 (.Y(n17), 
	.A(b[1]));
   INVX2M U29 (.Y(n16), 
	.A(b[2]));
   INVX2M U30 (.Y(n15), 
	.A(b[3]));
   INVX2M U31 (.Y(n14), 
	.A(b[4]));
   INVX2M U32 (.Y(n13), 
	.A(b[5]));
   INVX2M U33 (.Y(n11), 
	.A(b[7]));
   CLKMX2X2M U34 (.Y(\u_div/PartRem[1][7] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][6] ), 
	.A(\u_div/PartRem[2][6] ));
   CLKMX2X2M U35 (.Y(\u_div/PartRem[2][6] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][5] ), 
	.A(\u_div/PartRem[3][5] ));
   CLKMX2X2M U36 (.Y(\u_div/PartRem[3][5] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][4] ), 
	.A(\u_div/PartRem[4][4] ));
   CLKMX2X2M U37 (.Y(\u_div/PartRem[4][4] ), 
	.S0(quotient[4]), 
	.B(\u_div/SumTmp[4][3] ), 
	.A(\u_div/PartRem[5][3] ));
   CLKMX2X2M U38 (.Y(\u_div/PartRem[5][3] ), 
	.S0(quotient[5]), 
	.B(\u_div/SumTmp[5][2] ), 
	.A(\u_div/PartRem[6][2] ));
   CLKMX2X2M U39 (.Y(\u_div/PartRem[6][2] ), 
	.S0(quotient[6]), 
	.B(\u_div/SumTmp[6][1] ), 
	.A(\u_div/PartRem[7][1] ));
   CLKMX2X2M U40 (.Y(\u_div/PartRem[7][1] ), 
	.S0(quotient[7]), 
	.B(\u_div/SumTmp[7][0] ), 
	.A(a[7]));
   CLKMX2X2M U41 (.Y(\u_div/PartRem[1][6] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][5] ), 
	.A(\u_div/PartRem[2][5] ));
   CLKMX2X2M U42 (.Y(\u_div/PartRem[2][5] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][4] ), 
	.A(\u_div/PartRem[3][4] ));
   CLKMX2X2M U43 (.Y(\u_div/PartRem[3][4] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][3] ), 
	.A(\u_div/PartRem[4][3] ));
   CLKMX2X2M U44 (.Y(\u_div/PartRem[4][3] ), 
	.S0(quotient[4]), 
	.B(\u_div/SumTmp[4][2] ), 
	.A(\u_div/PartRem[5][2] ));
   CLKMX2X2M U45 (.Y(\u_div/PartRem[5][2] ), 
	.S0(quotient[5]), 
	.B(\u_div/SumTmp[5][1] ), 
	.A(\u_div/PartRem[6][1] ));
   CLKMX2X2M U46 (.Y(\u_div/PartRem[6][1] ), 
	.S0(quotient[6]), 
	.B(\u_div/SumTmp[6][0] ), 
	.A(a[6]));
   CLKMX2X2M U47 (.Y(\u_div/PartRem[1][5] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][4] ), 
	.A(\u_div/PartRem[2][4] ));
   CLKMX2X2M U48 (.Y(\u_div/PartRem[2][4] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][3] ), 
	.A(\u_div/PartRem[3][3] ));
   CLKMX2X2M U49 (.Y(\u_div/PartRem[3][3] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][2] ), 
	.A(\u_div/PartRem[4][2] ));
   CLKMX2X2M U50 (.Y(\u_div/PartRem[4][2] ), 
	.S0(quotient[4]), 
	.B(\u_div/SumTmp[4][1] ), 
	.A(\u_div/PartRem[5][1] ));
   CLKMX2X2M U51 (.Y(\u_div/PartRem[5][1] ), 
	.S0(quotient[5]), 
	.B(\u_div/SumTmp[5][0] ), 
	.A(a[5]));
   CLKMX2X2M U52 (.Y(\u_div/PartRem[1][4] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][3] ), 
	.A(\u_div/PartRem[2][3] ));
   CLKMX2X2M U53 (.Y(\u_div/PartRem[2][3] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][2] ), 
	.A(\u_div/PartRem[3][2] ));
   CLKMX2X2M U54 (.Y(\u_div/PartRem[3][2] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][1] ), 
	.A(\u_div/PartRem[4][1] ));
   CLKMX2X2M U55 (.Y(\u_div/PartRem[4][1] ), 
	.S0(quotient[4]), 
	.B(\u_div/SumTmp[4][0] ), 
	.A(a[4]));
   CLKMX2X2M U56 (.Y(\u_div/PartRem[1][3] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][2] ), 
	.A(\u_div/PartRem[2][2] ));
   CLKMX2X2M U57 (.Y(\u_div/PartRem[2][2] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][1] ), 
	.A(\u_div/PartRem[3][1] ));
   CLKMX2X2M U58 (.Y(\u_div/PartRem[3][1] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][0] ), 
	.A(a[3]));
   CLKMX2X2M U59 (.Y(\u_div/PartRem[1][2] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][1] ), 
	.A(\u_div/PartRem[2][1] ));
   CLKMX2X2M U60 (.Y(\u_div/PartRem[2][1] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][0] ), 
	.A(a[2]));
   CLKMX2X2M U61 (.Y(\u_div/PartRem[1][1] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][0] ), 
	.A(a[1]));
   AND4X1M U62 (.Y(quotient[7]), 
	.D(n16), 
	.C(n17), 
	.B(n19), 
	.A(\u_div/CryTmp[7][1] ));
   AND3X1M U63 (.Y(quotient[6]), 
	.C(\u_div/CryTmp[6][2] ), 
	.B(n16), 
	.A(n19));
   AND2X1M U64 (.Y(quotient[5]), 
	.B(n19), 
	.A(\u_div/CryTmp[5][3] ));
   AND2X1M U65 (.Y(n19), 
	.B(n15), 
	.A(n20));
   AND2X1M U66 (.Y(quotient[4]), 
	.B(n20), 
	.A(\u_div/CryTmp[4][4] ));
   AND3X1M U67 (.Y(n20), 
	.C(n13), 
	.B(n14), 
	.A(n21));
   AND3X1M U68 (.Y(quotient[3]), 
	.C(\u_div/CryTmp[3][5] ), 
	.B(n13), 
	.A(n21));
   AND2X1M U69 (.Y(quotient[2]), 
	.B(n21), 
	.A(\u_div/CryTmp[2][6] ));
   NOR2X1M U70 (.Y(n21), 
	.B(b[7]), 
	.A(b[6]));
   AND2X1M U71 (.Y(quotient[1]), 
	.B(n11), 
	.A(\u_div/CryTmp[1][7] ));
endmodule

module ALU_DW01_sub_0 (
	A, 
	B, 
	CI, 
	DIFF, 
	CO, 
	n134, 
	n136, 
	n138, 
	n147, 
	n149, 
	n148, 
	n139, 
	n157);
   input [8:0] A;
   input [8:0] B;
   input CI;
   output [8:0] DIFF;
   output CO;
   input n134;
   input n136;
   input n138;
   input n147;
   input n149;
   input n148;
   input n139;
   input n157;

   // Internal wires
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire [9:0] carry;

   ADDFX2M U2_7 (.S(DIFF[7]), 
	.CO(carry[8]), 
	.CI(carry[7]), 
	.B(n2), 
	.A(A[7]));
   ADDFX2M U2_1 (.S(DIFF[1]), 
	.CO(carry[2]), 
	.CI(carry[1]), 
	.B(n8), 
	.A(A[1]));
   ADDFX2M U2_5 (.S(DIFF[5]), 
	.CO(carry[6]), 
	.CI(carry[5]), 
	.B(n4), 
	.A(A[5]));
   ADDFX2M U2_4 (.S(DIFF[4]), 
	.CO(carry[5]), 
	.CI(carry[4]), 
	.B(n5), 
	.A(A[4]));
   ADDFX2M U2_3 (.S(DIFF[3]), 
	.CO(carry[4]), 
	.CI(carry[3]), 
	.B(n6), 
	.A(A[3]));
   ADDFX2M U2_2 (.S(DIFF[2]), 
	.CO(carry[3]), 
	.CI(carry[2]), 
	.B(n7), 
	.A(A[2]));
   ADDFX2M U2_6 (.S(DIFF[6]), 
	.CO(carry[7]), 
	.CI(carry[6]), 
	.B(n3), 
	.A(A[6]));
   INVX2M U1 (.Y(n3), 
	.A(B[6]));
   XNOR2X2M U2 (.Y(DIFF[0]), 
	.B(A[0]), 
	.A(n9));
   INVX2M U3 (.Y(n9), 
	.A(B[0]));
   INVX2M U4 (.Y(n7), 
	.A(B[2]));
   INVX2M U5 (.Y(n6), 
	.A(B[3]));
   INVX2M U6 (.Y(n5), 
	.A(B[4]));
   INVX2M U7 (.Y(n4), 
	.A(B[5]));
   INVX2M U8 (.Y(n8), 
	.A(B[1]));
   NAND2X2M U9 (.Y(carry[1]), 
	.B(n1), 
	.A(B[0]));
   INVX2M U10 (.Y(n1), 
	.A(A[0]));
   INVX2M U11 (.Y(n2), 
	.A(B[7]));
   CLKINVX1M U12 (.Y(DIFF[8]), 
	.A(carry[8]));
endmodule

module ALU_DW01_add_0 (
	A, 
	B, 
	CI, 
	SUM, 
	CO);
   input [8:0] A;
   input [8:0] B;
   input CI;
   output [8:0] SUM;
   output CO;

   // Internal wires
   wire n1;
   wire [8:1] carry;

   ADDFX2M U1_7 (.S(SUM[7]), 
	.CO(SUM[8]), 
	.CI(carry[7]), 
	.B(B[7]), 
	.A(A[7]));
   ADDFX2M U1_1 (.S(SUM[1]), 
	.CO(carry[2]), 
	.CI(n1), 
	.B(B[1]), 
	.A(A[1]));
   ADDFX2M U1_5 (.S(SUM[5]), 
	.CO(carry[6]), 
	.CI(carry[5]), 
	.B(B[5]), 
	.A(A[5]));
   ADDFX2M U1_4 (.S(SUM[4]), 
	.CO(carry[5]), 
	.CI(carry[4]), 
	.B(B[4]), 
	.A(A[4]));
   ADDFX2M U1_3 (.S(SUM[3]), 
	.CO(carry[4]), 
	.CI(carry[3]), 
	.B(B[3]), 
	.A(A[3]));
   ADDFX2M U1_2 (.S(SUM[2]), 
	.CO(carry[3]), 
	.CI(carry[2]), 
	.B(B[2]), 
	.A(A[2]));
   ADDFX2M U1_6 (.S(SUM[6]), 
	.CO(carry[7]), 
	.CI(carry[6]), 
	.B(B[6]), 
	.A(A[6]));
   AND2X2M U1 (.Y(n1), 
	.B(A[0]), 
	.A(B[0]));
   CLKXOR2X2M U2 (.Y(SUM[0]), 
	.B(A[0]), 
	.A(B[0]));
endmodule

module ALU_DW01_add_1 (
	A, 
	B, 
	CI, 
	SUM, 
	CO);
   input [13:0] A;
   input [13:0] B;
   input CI;
   output [13:0] SUM;
   output CO;

   // Internal wires
   wire n1;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;

   AOI21BX2M U2 (.Y(n1), 
	.B0N(n19), 
	.A1(A[12]), 
	.A0(n18));
   NAND2X2M U3 (.Y(n15), 
	.B(B[7]), 
	.A(A[7]));
   XNOR2X2M U4 (.Y(SUM[13]), 
	.B(n1), 
	.A(B[13]));
   XNOR2X2M U5 (.Y(SUM[7]), 
	.B(n8), 
	.A(A[7]));
   INVX2M U6 (.Y(n8), 
	.A(B[7]));
   INVX2M U7 (.Y(n9), 
	.A(A[6]));
   INVX2M U8 (.Y(SUM[6]), 
	.A(n9));
   BUFX2M U9 (.Y(SUM[0]), 
	.A(A[0]));
   BUFX2M U10 (.Y(SUM[1]), 
	.A(A[1]));
   BUFX2M U11 (.Y(SUM[2]), 
	.A(A[2]));
   BUFX2M U12 (.Y(SUM[3]), 
	.A(A[3]));
   BUFX2M U13 (.Y(SUM[4]), 
	.A(A[4]));
   BUFX2M U14 (.Y(SUM[5]), 
	.A(A[5]));
   XNOR2X1M U15 (.Y(SUM[9]), 
	.B(n11), 
	.A(n10));
   NOR2X1M U16 (.Y(n11), 
	.B(n13), 
	.A(n12));
   CLKXOR2X2M U17 (.Y(SUM[8]), 
	.B(n15), 
	.A(n14));
   NAND2BX1M U18 (.Y(n14), 
	.B(n17), 
	.AN(n16));
   OAI21X1M U19 (.Y(n19), 
	.B0(B[12]), 
	.A1(n18), 
	.A0(A[12]));
   XOR3XLM U20 (.Y(SUM[12]), 
	.C(n18), 
	.B(A[12]), 
	.A(B[12]));
   OAI21BX1M U21 (.Y(n18), 
	.B0N(n22), 
	.A1(n21), 
	.A0(n20));
   XNOR2X1M U22 (.Y(SUM[11]), 
	.B(n23), 
	.A(n21));
   NOR2X1M U23 (.Y(n23), 
	.B(n20), 
	.A(n22));
   NOR2X1M U24 (.Y(n20), 
	.B(A[11]), 
	.A(B[11]));
   AND2X1M U25 (.Y(n22), 
	.B(A[11]), 
	.A(B[11]));
   OA21X1M U26 (.Y(n21), 
	.B0(n26), 
	.A1(n25), 
	.A0(n24));
   CLKXOR2X2M U27 (.Y(SUM[10]), 
	.B(n25), 
	.A(n27));
   AOI2BB1X1M U28 (.Y(n25), 
	.B0(n12), 
	.A1N(n13), 
	.A0N(n10));
   AND2X1M U29 (.Y(n12), 
	.B(A[9]), 
	.A(B[9]));
   NOR2X1M U30 (.Y(n13), 
	.B(A[9]), 
	.A(B[9]));
   OA21X1M U31 (.Y(n10), 
	.B0(n17), 
	.A1(n16), 
	.A0(n15));
   CLKNAND2X2M U32 (.Y(n17), 
	.B(A[8]), 
	.A(B[8]));
   NOR2X1M U33 (.Y(n16), 
	.B(A[8]), 
	.A(B[8]));
   NAND2BX1M U34 (.Y(n27), 
	.B(n26), 
	.AN(n24));
   CLKNAND2X2M U35 (.Y(n26), 
	.B(A[10]), 
	.A(B[10]));
   NOR2X1M U36 (.Y(n24), 
	.B(A[10]), 
	.A(B[10]));
endmodule

module ALU_DW02_mult_0 (
	A, 
	B, 
	TC, 
	PRODUCT, 
	n134, 
	n136, 
	n138, 
	n147, 
	n149, 
	n148, 
	n150, 
	n139, 
	n151, 
	n152, 
	n153, 
	n154, 
	n155, 
	n157, 
	n156);
   input [7:0] A;
   input [7:0] B;
   input TC;
   output [15:0] PRODUCT;
   input n134;
   input n136;
   input n138;
   input n147;
   input n149;
   input n148;
   input n150;
   input n139;
   input n151;
   input n152;
   input n153;
   input n154;
   input n155;
   input n157;
   input n156;

   // Internal wires
   wire \ab[7][7] ;
   wire \ab[7][6] ;
   wire \ab[7][5] ;
   wire \ab[7][4] ;
   wire \ab[7][3] ;
   wire \ab[7][2] ;
   wire \ab[7][1] ;
   wire \ab[7][0] ;
   wire \ab[6][7] ;
   wire \ab[6][6] ;
   wire \ab[6][5] ;
   wire \ab[6][4] ;
   wire \ab[6][3] ;
   wire \ab[6][2] ;
   wire \ab[6][1] ;
   wire \ab[6][0] ;
   wire \ab[5][7] ;
   wire \ab[5][6] ;
   wire \ab[5][5] ;
   wire \ab[5][4] ;
   wire \ab[5][3] ;
   wire \ab[5][2] ;
   wire \ab[5][1] ;
   wire \ab[5][0] ;
   wire \ab[4][7] ;
   wire \ab[4][6] ;
   wire \ab[4][5] ;
   wire \ab[4][4] ;
   wire \ab[4][3] ;
   wire \ab[4][2] ;
   wire \ab[4][1] ;
   wire \ab[4][0] ;
   wire \ab[3][7] ;
   wire \ab[3][6] ;
   wire \ab[3][5] ;
   wire \ab[3][4] ;
   wire \ab[3][3] ;
   wire \ab[3][2] ;
   wire \ab[3][1] ;
   wire \ab[3][0] ;
   wire \ab[2][7] ;
   wire \ab[2][6] ;
   wire \ab[2][5] ;
   wire \ab[2][4] ;
   wire \ab[2][3] ;
   wire \ab[2][2] ;
   wire \ab[2][1] ;
   wire \ab[2][0] ;
   wire \ab[1][7] ;
   wire \ab[1][6] ;
   wire \ab[1][5] ;
   wire \ab[1][4] ;
   wire \ab[1][3] ;
   wire \ab[1][2] ;
   wire \ab[1][1] ;
   wire \ab[1][0] ;
   wire \ab[0][7] ;
   wire \ab[0][6] ;
   wire \ab[0][5] ;
   wire \ab[0][4] ;
   wire \ab[0][3] ;
   wire \ab[0][2] ;
   wire \ab[0][1] ;
   wire \CARRYB[7][6] ;
   wire \CARRYB[7][5] ;
   wire \CARRYB[7][4] ;
   wire \CARRYB[7][3] ;
   wire \CARRYB[7][2] ;
   wire \CARRYB[7][1] ;
   wire \CARRYB[7][0] ;
   wire \CARRYB[6][6] ;
   wire \CARRYB[6][5] ;
   wire \CARRYB[6][4] ;
   wire \CARRYB[6][3] ;
   wire \CARRYB[6][2] ;
   wire \CARRYB[6][1] ;
   wire \CARRYB[6][0] ;
   wire \CARRYB[5][6] ;
   wire \CARRYB[5][5] ;
   wire \CARRYB[5][4] ;
   wire \CARRYB[5][3] ;
   wire \CARRYB[5][2] ;
   wire \CARRYB[5][1] ;
   wire \CARRYB[5][0] ;
   wire \CARRYB[4][6] ;
   wire \CARRYB[4][5] ;
   wire \CARRYB[4][4] ;
   wire \CARRYB[4][3] ;
   wire \CARRYB[4][2] ;
   wire \CARRYB[4][1] ;
   wire \CARRYB[4][0] ;
   wire \CARRYB[3][6] ;
   wire \CARRYB[3][5] ;
   wire \CARRYB[3][4] ;
   wire \CARRYB[3][3] ;
   wire \CARRYB[3][2] ;
   wire \CARRYB[3][1] ;
   wire \CARRYB[3][0] ;
   wire \CARRYB[2][6] ;
   wire \CARRYB[2][5] ;
   wire \CARRYB[2][4] ;
   wire \CARRYB[2][3] ;
   wire \CARRYB[2][2] ;
   wire \CARRYB[2][1] ;
   wire \CARRYB[2][0] ;
   wire \SUMB[7][6] ;
   wire \SUMB[7][5] ;
   wire \SUMB[7][4] ;
   wire \SUMB[7][3] ;
   wire \SUMB[7][2] ;
   wire \SUMB[7][1] ;
   wire \SUMB[7][0] ;
   wire \SUMB[6][6] ;
   wire \SUMB[6][5] ;
   wire \SUMB[6][4] ;
   wire \SUMB[6][3] ;
   wire \SUMB[6][2] ;
   wire \SUMB[6][1] ;
   wire \SUMB[5][6] ;
   wire \SUMB[5][5] ;
   wire \SUMB[5][4] ;
   wire \SUMB[5][3] ;
   wire \SUMB[5][2] ;
   wire \SUMB[5][1] ;
   wire \SUMB[4][6] ;
   wire \SUMB[4][5] ;
   wire \SUMB[4][4] ;
   wire \SUMB[4][3] ;
   wire \SUMB[4][2] ;
   wire \SUMB[4][1] ;
   wire \SUMB[3][6] ;
   wire \SUMB[3][5] ;
   wire \SUMB[3][4] ;
   wire \SUMB[3][3] ;
   wire \SUMB[3][2] ;
   wire \SUMB[3][1] ;
   wire \SUMB[2][6] ;
   wire \SUMB[2][5] ;
   wire \SUMB[2][4] ;
   wire \SUMB[2][3] ;
   wire \SUMB[2][2] ;
   wire \SUMB[2][1] ;
   wire \SUMB[1][6] ;
   wire \SUMB[1][5] ;
   wire \SUMB[1][4] ;
   wire \SUMB[1][3] ;
   wire \SUMB[1][2] ;
   wire \SUMB[1][1] ;
   wire \A1[12] ;
   wire \A1[11] ;
   wire \A1[10] ;
   wire \A1[9] ;
   wire \A1[8] ;
   wire \A1[7] ;
   wire \A1[6] ;
   wire \A1[4] ;
   wire \A1[3] ;
   wire \A1[2] ;
   wire \A1[1] ;
   wire \A1[0] ;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;

   ADDFX2M S5_6 (.S(\SUMB[7][6] ), 
	.CO(\CARRYB[7][6] ), 
	.CI(\ab[6][7] ), 
	.B(\CARRYB[6][6] ), 
	.A(\ab[7][6] ));
   ADDFX2M S1_6_0 (.S(\A1[4] ), 
	.CO(\CARRYB[6][0] ), 
	.CI(\SUMB[5][1] ), 
	.B(\CARRYB[5][0] ), 
	.A(\ab[6][0] ));
   ADDFX2M S1_5_0 (.S(\A1[3] ), 
	.CO(\CARRYB[5][0] ), 
	.CI(\SUMB[4][1] ), 
	.B(\CARRYB[4][0] ), 
	.A(\ab[5][0] ));
   ADDFX2M S1_4_0 (.S(\A1[2] ), 
	.CO(\CARRYB[4][0] ), 
	.CI(\SUMB[3][1] ), 
	.B(\CARRYB[3][0] ), 
	.A(\ab[4][0] ));
   ADDFX2M S1_3_0 (.S(\A1[1] ), 
	.CO(\CARRYB[3][0] ), 
	.CI(\SUMB[2][1] ), 
	.B(\CARRYB[2][0] ), 
	.A(\ab[3][0] ));
   ADDFX2M S1_2_0 (.S(\A1[0] ), 
	.CO(\CARRYB[2][0] ), 
	.CI(\SUMB[1][1] ), 
	.B(n7), 
	.A(\ab[2][0] ));
   ADDFX2M S3_6_6 (.S(\SUMB[6][6] ), 
	.CO(\CARRYB[6][6] ), 
	.CI(\ab[5][7] ), 
	.B(\CARRYB[5][6] ), 
	.A(\ab[6][6] ));
   ADDFX2M S2_6_5 (.S(\SUMB[6][5] ), 
	.CO(\CARRYB[6][5] ), 
	.CI(\SUMB[5][6] ), 
	.B(\CARRYB[5][5] ), 
	.A(\ab[6][5] ));
   ADDFX2M S3_5_6 (.S(\SUMB[5][6] ), 
	.CO(\CARRYB[5][6] ), 
	.CI(\ab[4][7] ), 
	.B(\CARRYB[4][6] ), 
	.A(\ab[5][6] ));
   ADDFX2M S4_5 (.S(\SUMB[7][5] ), 
	.CO(\CARRYB[7][5] ), 
	.CI(\SUMB[6][6] ), 
	.B(\CARRYB[6][5] ), 
	.A(\ab[7][5] ));
   ADDFX2M S4_4 (.S(\SUMB[7][4] ), 
	.CO(\CARRYB[7][4] ), 
	.CI(\SUMB[6][5] ), 
	.B(\CARRYB[6][4] ), 
	.A(\ab[7][4] ));
   ADDFX2M S3_2_6 (.S(\SUMB[2][6] ), 
	.CO(\CARRYB[2][6] ), 
	.CI(\ab[1][7] ), 
	.B(n9), 
	.A(\ab[2][6] ));
   ADDFX2M S2_6_2 (.S(\SUMB[6][2] ), 
	.CO(\CARRYB[6][2] ), 
	.CI(\SUMB[5][3] ), 
	.B(\CARRYB[5][2] ), 
	.A(\ab[6][2] ));
   ADDFX2M S2_5_3 (.S(\SUMB[5][3] ), 
	.CO(\CARRYB[5][3] ), 
	.CI(\SUMB[4][4] ), 
	.B(\CARRYB[4][3] ), 
	.A(\ab[5][3] ));
   ADDFX2M S2_6_1 (.S(\SUMB[6][1] ), 
	.CO(\CARRYB[6][1] ), 
	.CI(\SUMB[5][2] ), 
	.B(\CARRYB[5][1] ), 
	.A(\ab[6][1] ));
   ADDFX2M S2_4_4 (.S(\SUMB[4][4] ), 
	.CO(\CARRYB[4][4] ), 
	.CI(\SUMB[3][5] ), 
	.B(\CARRYB[3][4] ), 
	.A(\ab[4][4] ));
   ADDFX2M S2_5_1 (.S(\SUMB[5][1] ), 
	.CO(\CARRYB[5][1] ), 
	.CI(\SUMB[4][2] ), 
	.B(\CARRYB[4][1] ), 
	.A(\ab[5][1] ));
   ADDFX2M S2_5_2 (.S(\SUMB[5][2] ), 
	.CO(\CARRYB[5][2] ), 
	.CI(\SUMB[4][3] ), 
	.B(\CARRYB[4][2] ), 
	.A(\ab[5][2] ));
   ADDFX2M S2_3_5 (.S(\SUMB[3][5] ), 
	.CO(\CARRYB[3][5] ), 
	.CI(\SUMB[2][6] ), 
	.B(\CARRYB[2][5] ), 
	.A(\ab[3][5] ));
   ADDFX2M S2_4_1 (.S(\SUMB[4][1] ), 
	.CO(\CARRYB[4][1] ), 
	.CI(\SUMB[3][2] ), 
	.B(\CARRYB[3][1] ), 
	.A(\ab[4][1] ));
   ADDFX2M S2_4_2 (.S(\SUMB[4][2] ), 
	.CO(\CARRYB[4][2] ), 
	.CI(\SUMB[3][3] ), 
	.B(\CARRYB[3][2] ), 
	.A(\ab[4][2] ));
   ADDFX2M S2_3_1 (.S(\SUMB[3][1] ), 
	.CO(\CARRYB[3][1] ), 
	.CI(\SUMB[2][2] ), 
	.B(\CARRYB[2][1] ), 
	.A(\ab[3][1] ));
   ADDFX2M S2_3_2 (.S(\SUMB[3][2] ), 
	.CO(\CARRYB[3][2] ), 
	.CI(\SUMB[2][3] ), 
	.B(\CARRYB[2][2] ), 
	.A(\ab[3][2] ));
   ADDFX2M S2_3_4 (.S(\SUMB[3][4] ), 
	.CO(\CARRYB[3][4] ), 
	.CI(\SUMB[2][5] ), 
	.B(\CARRYB[2][4] ), 
	.A(\ab[3][4] ));
   ADDFX2M S2_2_1 (.S(\SUMB[2][1] ), 
	.CO(\CARRYB[2][1] ), 
	.CI(\SUMB[1][2] ), 
	.B(n6), 
	.A(\ab[2][1] ));
   ADDFX2M S2_2_2 (.S(\SUMB[2][2] ), 
	.CO(\CARRYB[2][2] ), 
	.CI(\SUMB[1][3] ), 
	.B(n5), 
	.A(\ab[2][2] ));
   ADDFX2M S2_6_4 (.S(\SUMB[6][4] ), 
	.CO(\CARRYB[6][4] ), 
	.CI(\SUMB[5][5] ), 
	.B(\CARRYB[5][4] ), 
	.A(\ab[6][4] ));
   ADDFX2M S2_5_5 (.S(\SUMB[5][5] ), 
	.CO(\CARRYB[5][5] ), 
	.CI(\SUMB[4][6] ), 
	.B(\CARRYB[4][5] ), 
	.A(\ab[5][5] ));
   ADDFX2M S2_6_3 (.S(\SUMB[6][3] ), 
	.CO(\CARRYB[6][3] ), 
	.CI(\SUMB[5][4] ), 
	.B(\CARRYB[5][3] ), 
	.A(\ab[6][3] ));
   ADDFX2M S3_4_6 (.S(\SUMB[4][6] ), 
	.CO(\CARRYB[4][6] ), 
	.CI(\ab[3][7] ), 
	.B(\CARRYB[3][6] ), 
	.A(\ab[4][6] ));
   ADDFX2M S2_5_4 (.S(\SUMB[5][4] ), 
	.CO(\CARRYB[5][4] ), 
	.CI(\SUMB[4][5] ), 
	.B(\CARRYB[4][4] ), 
	.A(\ab[5][4] ));
   ADDFX2M S2_4_5 (.S(\SUMB[4][5] ), 
	.CO(\CARRYB[4][5] ), 
	.CI(\SUMB[3][6] ), 
	.B(\CARRYB[3][5] ), 
	.A(\ab[4][5] ));
   ADDFX2M S3_3_6 (.S(\SUMB[3][6] ), 
	.CO(\CARRYB[3][6] ), 
	.CI(\ab[2][7] ), 
	.B(\CARRYB[2][6] ), 
	.A(\ab[3][6] ));
   ADDFX2M S2_4_3 (.S(\SUMB[4][3] ), 
	.CO(\CARRYB[4][3] ), 
	.CI(\SUMB[3][4] ), 
	.B(\CARRYB[3][3] ), 
	.A(\ab[4][3] ));
   ADDFX2M S2_3_3 (.S(\SUMB[3][3] ), 
	.CO(\CARRYB[3][3] ), 
	.CI(\SUMB[2][4] ), 
	.B(\CARRYB[2][3] ), 
	.A(\ab[3][3] ));
   ADDFX2M S2_2_3 (.S(\SUMB[2][3] ), 
	.CO(\CARRYB[2][3] ), 
	.CI(\SUMB[1][4] ), 
	.B(n4), 
	.A(\ab[2][3] ));
   ADDFX2M S2_2_4 (.S(\SUMB[2][4] ), 
	.CO(\CARRYB[2][4] ), 
	.CI(\SUMB[1][5] ), 
	.B(n3), 
	.A(\ab[2][4] ));
   ADDFX2M S2_2_5 (.S(\SUMB[2][5] ), 
	.CO(\CARRYB[2][5] ), 
	.CI(\SUMB[1][6] ), 
	.B(n8), 
	.A(\ab[2][5] ));
   ADDFX2M S4_1 (.S(\SUMB[7][1] ), 
	.CO(\CARRYB[7][1] ), 
	.CI(\SUMB[6][2] ), 
	.B(\CARRYB[6][1] ), 
	.A(\ab[7][1] ));
   ADDFX2M S4_0 (.S(\SUMB[7][0] ), 
	.CO(\CARRYB[7][0] ), 
	.CI(\SUMB[6][1] ), 
	.B(\CARRYB[6][0] ), 
	.A(\ab[7][0] ));
   ADDFX2M S4_3 (.S(\SUMB[7][3] ), 
	.CO(\CARRYB[7][3] ), 
	.CI(\SUMB[6][4] ), 
	.B(\CARRYB[6][3] ), 
	.A(\ab[7][3] ));
   ADDFX2M S4_2 (.S(\SUMB[7][2] ), 
	.CO(\CARRYB[7][2] ), 
	.CI(\SUMB[6][3] ), 
	.B(\CARRYB[6][2] ), 
	.A(\ab[7][2] ));
   AND2X2M U2 (.Y(n3), 
	.B(\ab[1][4] ), 
	.A(\ab[0][5] ));
   AND2X2M U3 (.Y(n4), 
	.B(\ab[1][3] ), 
	.A(\ab[0][4] ));
   AND2X2M U4 (.Y(n5), 
	.B(\ab[1][2] ), 
	.A(\ab[0][3] ));
   AND2X2M U5 (.Y(n6), 
	.B(\ab[1][1] ), 
	.A(\ab[0][2] ));
   AND2X2M U6 (.Y(n7), 
	.B(\ab[1][0] ), 
	.A(\ab[0][1] ));
   AND2X2M U7 (.Y(n8), 
	.B(\ab[1][5] ), 
	.A(\ab[0][6] ));
   AND2X2M U8 (.Y(n9), 
	.B(\ab[1][6] ), 
	.A(\ab[0][7] ));
   AND2X2M U9 (.Y(n10), 
	.B(\ab[7][7] ), 
	.A(\CARRYB[7][6] ));
   INVX2M U10 (.Y(n22), 
	.A(\ab[0][6] ));
   CLKXOR2X2M U11 (.Y(\A1[7] ), 
	.B(\SUMB[7][2] ), 
	.A(\CARRYB[7][1] ));
   CLKXOR2X2M U12 (.Y(\A1[8] ), 
	.B(\SUMB[7][3] ), 
	.A(\CARRYB[7][2] ));
   INVX2M U13 (.Y(n23), 
	.A(\ab[0][7] ));
   INVX2M U14 (.Y(n21), 
	.A(\ab[0][5] ));
   INVX2M U15 (.Y(n20), 
	.A(\ab[0][4] ));
   INVX2M U16 (.Y(n19), 
	.A(\ab[0][3] ));
   AND2X2M U17 (.Y(n11), 
	.B(\SUMB[7][1] ), 
	.A(\CARRYB[7][0] ));
   AND2X2M U18 (.Y(n12), 
	.B(\SUMB[7][2] ), 
	.A(\CARRYB[7][1] ));
   CLKXOR2X2M U19 (.Y(\A1[10] ), 
	.B(\SUMB[7][5] ), 
	.A(\CARRYB[7][4] ));
   CLKXOR2X2M U20 (.Y(\A1[9] ), 
	.B(\SUMB[7][4] ), 
	.A(\CARRYB[7][3] ));
   CLKXOR2X2M U21 (.Y(\A1[11] ), 
	.B(\SUMB[7][6] ), 
	.A(\CARRYB[7][5] ));
   INVX2M U22 (.Y(n18), 
	.A(\ab[0][2] ));
   AND2X2M U23 (.Y(n13), 
	.B(\SUMB[7][4] ), 
	.A(\CARRYB[7][3] ));
   AND2X2M U24 (.Y(n14), 
	.B(\SUMB[7][3] ), 
	.A(\CARRYB[7][2] ));
   AND2X2M U25 (.Y(n15), 
	.B(\SUMB[7][5] ), 
	.A(\CARRYB[7][4] ));
   CLKXOR2X2M U26 (.Y(\A1[12] ), 
	.B(\ab[7][7] ), 
	.A(\CARRYB[7][6] ));
   XNOR2X2M U27 (.Y(\A1[6] ), 
	.B(n17), 
	.A(\CARRYB[7][0] ));
   INVX2M U28 (.Y(n17), 
	.A(\SUMB[7][1] ));
   AND2X2M U29 (.Y(n16), 
	.B(\SUMB[7][6] ), 
	.A(\CARRYB[7][5] ));
   CLKXOR2X2M U30 (.Y(PRODUCT[1]), 
	.B(\ab[0][1] ), 
	.A(\ab[1][0] ));
   XNOR2X2M U31 (.Y(\SUMB[1][6] ), 
	.B(n23), 
	.A(\ab[1][6] ));
   XNOR2X2M U32 (.Y(\SUMB[1][5] ), 
	.B(n22), 
	.A(\ab[1][5] ));
   XNOR2X2M U33 (.Y(\SUMB[1][4] ), 
	.B(n21), 
	.A(\ab[1][4] ));
   XNOR2X2M U34 (.Y(\SUMB[1][3] ), 
	.B(n20), 
	.A(\ab[1][3] ));
   XNOR2X2M U35 (.Y(\SUMB[1][2] ), 
	.B(n19), 
	.A(\ab[1][2] ));
   INVX2M U36 (.Y(n38), 
	.A(A[1]));
   INVX2M U37 (.Y(n39), 
	.A(A[0]));
   INVX2M U38 (.Y(n25), 
	.A(B[6]));
   XNOR2X2M U39 (.Y(\SUMB[1][1] ), 
	.B(n18), 
	.A(\ab[1][1] ));
   INVX2M U40 (.Y(n36), 
	.A(A[3]));
   INVX2M U41 (.Y(n37), 
	.A(A[2]));
   INVX2M U42 (.Y(n35), 
	.A(A[4]));
   INVX2M U43 (.Y(n32), 
	.A(A[7]));
   INVX2M U44 (.Y(n33), 
	.A(A[6]));
   INVX2M U45 (.Y(n34), 
	.A(A[5]));
   INVX2M U46 (.Y(n28), 
	.A(B[3]));
   INVX2M U47 (.Y(n24), 
	.A(B[7]));
   INVX2M U48 (.Y(n27), 
	.A(B[4]));
   INVX2M U49 (.Y(n26), 
	.A(B[5]));
   INVX2M U50 (.Y(n31), 
	.A(B[0]));
   INVX2M U51 (.Y(n29), 
	.A(B[2]));
   INVX2M U52 (.Y(n30), 
	.A(B[1]));
   NOR2X1M U54 (.Y(\ab[7][7] ), 
	.B(n24), 
	.A(n32));
   NOR2X1M U55 (.Y(\ab[7][6] ), 
	.B(n25), 
	.A(n32));
   NOR2X1M U56 (.Y(\ab[7][5] ), 
	.B(n26), 
	.A(n32));
   NOR2X1M U57 (.Y(\ab[7][4] ), 
	.B(n27), 
	.A(n32));
   NOR2X1M U58 (.Y(\ab[7][3] ), 
	.B(n28), 
	.A(n32));
   NOR2X1M U59 (.Y(\ab[7][2] ), 
	.B(n29), 
	.A(n32));
   NOR2X1M U60 (.Y(\ab[7][1] ), 
	.B(n30), 
	.A(n32));
   NOR2X1M U61 (.Y(\ab[7][0] ), 
	.B(n31), 
	.A(n32));
   NOR2X1M U62 (.Y(\ab[6][7] ), 
	.B(n33), 
	.A(n24));
   NOR2X1M U63 (.Y(\ab[6][6] ), 
	.B(n33), 
	.A(n25));
   NOR2X1M U64 (.Y(\ab[6][5] ), 
	.B(n33), 
	.A(n26));
   NOR2X1M U65 (.Y(\ab[6][4] ), 
	.B(n33), 
	.A(n27));
   NOR2X1M U66 (.Y(\ab[6][3] ), 
	.B(n33), 
	.A(n28));
   NOR2X1M U67 (.Y(\ab[6][2] ), 
	.B(n33), 
	.A(n29));
   NOR2X1M U68 (.Y(\ab[6][1] ), 
	.B(n33), 
	.A(n30));
   NOR2X1M U69 (.Y(\ab[6][0] ), 
	.B(n33), 
	.A(n31));
   NOR2X1M U70 (.Y(\ab[5][7] ), 
	.B(n34), 
	.A(n24));
   NOR2X1M U71 (.Y(\ab[5][6] ), 
	.B(n34), 
	.A(n25));
   NOR2X1M U72 (.Y(\ab[5][5] ), 
	.B(n34), 
	.A(n26));
   NOR2X1M U73 (.Y(\ab[5][4] ), 
	.B(n34), 
	.A(n27));
   NOR2X1M U74 (.Y(\ab[5][3] ), 
	.B(n34), 
	.A(n28));
   NOR2X1M U75 (.Y(\ab[5][2] ), 
	.B(n34), 
	.A(n29));
   NOR2X1M U76 (.Y(\ab[5][1] ), 
	.B(n34), 
	.A(n30));
   NOR2X1M U77 (.Y(\ab[5][0] ), 
	.B(n34), 
	.A(n31));
   NOR2X1M U78 (.Y(\ab[4][7] ), 
	.B(n35), 
	.A(n24));
   NOR2X1M U79 (.Y(\ab[4][6] ), 
	.B(n35), 
	.A(n25));
   NOR2X1M U80 (.Y(\ab[4][5] ), 
	.B(n35), 
	.A(n26));
   NOR2X1M U81 (.Y(\ab[4][4] ), 
	.B(n35), 
	.A(n27));
   NOR2X1M U82 (.Y(\ab[4][3] ), 
	.B(n35), 
	.A(n28));
   NOR2X1M U83 (.Y(\ab[4][2] ), 
	.B(n35), 
	.A(n29));
   NOR2X1M U84 (.Y(\ab[4][1] ), 
	.B(n35), 
	.A(n30));
   NOR2X1M U85 (.Y(\ab[4][0] ), 
	.B(n35), 
	.A(n31));
   NOR2X1M U86 (.Y(\ab[3][7] ), 
	.B(n36), 
	.A(n24));
   NOR2X1M U87 (.Y(\ab[3][6] ), 
	.B(n36), 
	.A(n25));
   NOR2X1M U88 (.Y(\ab[3][5] ), 
	.B(n36), 
	.A(n26));
   NOR2X1M U89 (.Y(\ab[3][4] ), 
	.B(n36), 
	.A(n27));
   NOR2X1M U90 (.Y(\ab[3][3] ), 
	.B(n36), 
	.A(n28));
   NOR2X1M U91 (.Y(\ab[3][2] ), 
	.B(n36), 
	.A(n29));
   NOR2X1M U92 (.Y(\ab[3][1] ), 
	.B(n36), 
	.A(n30));
   NOR2X1M U93 (.Y(\ab[3][0] ), 
	.B(n36), 
	.A(n31));
   NOR2X1M U94 (.Y(\ab[2][7] ), 
	.B(n37), 
	.A(n24));
   NOR2X1M U95 (.Y(\ab[2][6] ), 
	.B(n37), 
	.A(n25));
   NOR2X1M U96 (.Y(\ab[2][5] ), 
	.B(n37), 
	.A(n26));
   NOR2X1M U97 (.Y(\ab[2][4] ), 
	.B(n37), 
	.A(n27));
   NOR2X1M U98 (.Y(\ab[2][3] ), 
	.B(n37), 
	.A(n28));
   NOR2X1M U99 (.Y(\ab[2][2] ), 
	.B(n37), 
	.A(n29));
   NOR2X1M U100 (.Y(\ab[2][1] ), 
	.B(n37), 
	.A(n30));
   NOR2X1M U101 (.Y(\ab[2][0] ), 
	.B(n37), 
	.A(n31));
   NOR2X1M U102 (.Y(\ab[1][7] ), 
	.B(n38), 
	.A(n24));
   NOR2X1M U103 (.Y(\ab[1][6] ), 
	.B(n38), 
	.A(n25));
   NOR2X1M U104 (.Y(\ab[1][5] ), 
	.B(n38), 
	.A(n26));
   NOR2X1M U105 (.Y(\ab[1][4] ), 
	.B(n38), 
	.A(n27));
   NOR2X1M U106 (.Y(\ab[1][3] ), 
	.B(n38), 
	.A(n28));
   NOR2X1M U107 (.Y(\ab[1][2] ), 
	.B(n38), 
	.A(n29));
   NOR2X1M U108 (.Y(\ab[1][1] ), 
	.B(n38), 
	.A(n30));
   NOR2X1M U109 (.Y(\ab[1][0] ), 
	.B(n38), 
	.A(n31));
   NOR2X1M U110 (.Y(\ab[0][7] ), 
	.B(n39), 
	.A(n24));
   NOR2X1M U111 (.Y(\ab[0][6] ), 
	.B(n39), 
	.A(n25));
   NOR2X1M U112 (.Y(\ab[0][5] ), 
	.B(n39), 
	.A(n26));
   NOR2X1M U113 (.Y(\ab[0][4] ), 
	.B(n39), 
	.A(n27));
   NOR2X1M U114 (.Y(\ab[0][3] ), 
	.B(n39), 
	.A(n28));
   NOR2X1M U115 (.Y(\ab[0][2] ), 
	.B(n39), 
	.A(n29));
   NOR2X1M U116 (.Y(\ab[0][1] ), 
	.B(n39), 
	.A(n30));
   NOR2X1M U117 (.Y(PRODUCT[0]), 
	.B(n39), 
	.A(n31));
   ALU_DW01_add_1 FS_1 (.A({ 1'b0,
		\A1[12] ,
		\A1[11] ,
		\A1[10] ,
		\A1[9] ,
		\A1[8] ,
		\A1[7] ,
		\A1[6] ,
		\SUMB[7][0] ,
		\A1[4] ,
		\A1[3] ,
		\A1[2] ,
		\A1[1] ,
		\A1[0]  }), 
	.B({ n10,
		n16,
		n15,
		n13,
		n14,
		n12,
		n11,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0 }), 
	.CI(1'b0), 
	.SUM({ PRODUCT[15],
		PRODUCT[14],
		PRODUCT[13],
		PRODUCT[12],
		PRODUCT[11],
		PRODUCT[10],
		PRODUCT[9],
		PRODUCT[8],
		PRODUCT[7],
		PRODUCT[6],
		PRODUCT[5],
		PRODUCT[4],
		PRODUCT[3],
		PRODUCT[2] }));
endmodule

module ALU_test_1 (
	CLK, 
	RST, 
	A, 
	B, 
	ALU_FUN, 
	Enable, 
	ALU_OUT, 
	OUT_VALID, 
	test_si, 
	test_se, 
	FE_OFN5_SYNC_RST_1);
   input CLK;
   input RST;
   input [7:0] A;
   input [7:0] B;
   input [3:0] ALU_FUN;
   input Enable;
   output [15:0] ALU_OUT;
   output OUT_VALID;
   input test_si;
   input test_se;
   input FE_OFN5_SYNC_RST_1;

   // Internal wires
   wire FE_OFN7_n52;
   wire N90;
   wire N91;
   wire N92;
   wire N93;
   wire N94;
   wire N95;
   wire N96;
   wire N97;
   wire N98;
   wire N99;
   wire N100;
   wire N101;
   wire N102;
   wire N103;
   wire N104;
   wire N105;
   wire N106;
   wire N107;
   wire N108;
   wire N109;
   wire N110;
   wire N111;
   wire N112;
   wire N113;
   wire N114;
   wire N115;
   wire N116;
   wire N117;
   wire N118;
   wire N119;
   wire N120;
   wire N121;
   wire N122;
   wire N123;
   wire N124;
   wire N125;
   wire N126;
   wire N127;
   wire N128;
   wire N129;
   wire N130;
   wire N131;
   wire N156;
   wire N157;
   wire N158;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n75;
   wire n76;
   wire n77;
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n82;
   wire n83;
   wire n84;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire n90;
   wire n91;
   wire n92;
   wire n93;
   wire n94;
   wire n95;
   wire n96;
   wire n97;
   wire n98;
   wire n99;
   wire n100;
   wire n101;
   wire n102;
   wire n103;
   wire n104;
   wire n105;
   wire n106;
   wire n107;
   wire n108;
   wire n109;
   wire n110;
   wire n111;
   wire n112;
   wire n113;
   wire n114;
   wire n115;
   wire n116;
   wire n117;
   wire n118;
   wire n119;
   wire n120;
   wire n121;
   wire n122;
   wire n123;
   wire n124;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n125;
   wire n126;
   wire n127;
   wire n128;
   wire n129;
   wire n130;
   wire n131;
   wire n132;
   wire n133;
   wire n134;
   wire n135;
   wire n136;
   wire n137;
   wire n138;
   wire n139;
   wire n140;
   wire n141;
   wire n142;
   wire n143;
   wire n144;
   wire n145;
   wire n146;
   wire n147;
   wire n148;
   wire n149;
   wire n150;
   wire n151;
   wire n152;
   wire n153;
   wire n154;
   wire n155;
   wire n156;
   wire n157;
   wire n161;
   wire n162;
   wire [15:0] ALU_OUT_INNER;

   BUFX2M FE_OFC7_n52 (.Y(FE_OFN7_n52), 
	.A(n52));
   SDFFRQX2M \ALU_OUT_reg[7]  (.SI(ALU_OUT[6]), 
	.SE(n162), 
	.RN(FE_OFN5_SYNC_RST_1), 
	.Q(ALU_OUT[7]), 
	.D(ALU_OUT_INNER[7]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[6]  (.SI(ALU_OUT[5]), 
	.SE(n162), 
	.RN(FE_OFN5_SYNC_RST_1), 
	.Q(ALU_OUT[6]), 
	.D(ALU_OUT_INNER[6]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[5]  (.SI(ALU_OUT[4]), 
	.SE(n162), 
	.RN(FE_OFN5_SYNC_RST_1), 
	.Q(ALU_OUT[5]), 
	.D(ALU_OUT_INNER[5]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[4]  (.SI(ALU_OUT[3]), 
	.SE(n162), 
	.RN(FE_OFN5_SYNC_RST_1), 
	.Q(ALU_OUT[4]), 
	.D(ALU_OUT_INNER[4]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[3]  (.SI(ALU_OUT[2]), 
	.SE(n162), 
	.RN(FE_OFN5_SYNC_RST_1), 
	.Q(ALU_OUT[3]), 
	.D(ALU_OUT_INNER[3]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[2]  (.SI(ALU_OUT[1]), 
	.SE(n162), 
	.RN(FE_OFN5_SYNC_RST_1), 
	.Q(ALU_OUT[2]), 
	.D(ALU_OUT_INNER[2]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[1]  (.SI(ALU_OUT[0]), 
	.SE(n162), 
	.RN(FE_OFN5_SYNC_RST_1), 
	.Q(ALU_OUT[1]), 
	.D(ALU_OUT_INNER[1]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[0]  (.SI(test_si), 
	.SE(n162), 
	.RN(FE_OFN5_SYNC_RST_1), 
	.Q(ALU_OUT[0]), 
	.D(ALU_OUT_INNER[0]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[15]  (.SI(ALU_OUT[14]), 
	.SE(n162), 
	.RN(RST), 
	.Q(ALU_OUT[15]), 
	.D(ALU_OUT_INNER[15]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[14]  (.SI(ALU_OUT[13]), 
	.SE(n162), 
	.RN(RST), 
	.Q(ALU_OUT[14]), 
	.D(ALU_OUT_INNER[14]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[13]  (.SI(ALU_OUT[12]), 
	.SE(n162), 
	.RN(RST), 
	.Q(ALU_OUT[13]), 
	.D(ALU_OUT_INNER[13]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[12]  (.SI(ALU_OUT[11]), 
	.SE(n162), 
	.RN(FE_OFN5_SYNC_RST_1), 
	.Q(ALU_OUT[12]), 
	.D(ALU_OUT_INNER[12]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[11]  (.SI(ALU_OUT[10]), 
	.SE(n162), 
	.RN(FE_OFN5_SYNC_RST_1), 
	.Q(ALU_OUT[11]), 
	.D(ALU_OUT_INNER[11]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[10]  (.SI(ALU_OUT[9]), 
	.SE(n162), 
	.RN(FE_OFN5_SYNC_RST_1), 
	.Q(ALU_OUT[10]), 
	.D(ALU_OUT_INNER[10]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[9]  (.SI(ALU_OUT[8]), 
	.SE(n162), 
	.RN(FE_OFN5_SYNC_RST_1), 
	.Q(ALU_OUT[9]), 
	.D(ALU_OUT_INNER[9]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[8]  (.SI(ALU_OUT[7]), 
	.SE(n162), 
	.RN(FE_OFN5_SYNC_RST_1), 
	.Q(ALU_OUT[8]), 
	.D(ALU_OUT_INNER[8]), 
	.CK(CLK));
   SDFFRQX2M OUT_VALID_reg (.SI(ALU_OUT[15]), 
	.SE(n162), 
	.RN(RST), 
	.Q(OUT_VALID), 
	.D(Enable), 
	.CK(CLK));
   NOR3BX2M U7 (.Y(n66), 
	.C(ALU_FUN[2]), 
	.B(n145), 
	.AN(n122));
   NOR3X2M U23 (.Y(n52), 
	.C(n145), 
	.B(ALU_FUN[2]), 
	.A(n142));
   OAI2BB1X2M U25 (.Y(ALU_OUT_INNER[14]), 
	.B0(n49), 
	.A1N(n48), 
	.A0N(N122));
   OAI2BB1X2M U26 (.Y(ALU_OUT_INNER[15]), 
	.B0(n49), 
	.A1N(n48), 
	.A0N(N123));
   OAI2BB1X2M U27 (.Y(ALU_OUT_INNER[12]), 
	.B0(n49), 
	.A1N(n48), 
	.A0N(N120));
   OAI2BB1X2M U28 (.Y(ALU_OUT_INNER[11]), 
	.B0(n49), 
	.A1N(n48), 
	.A0N(N119));
   OAI2BB1X2M U29 (.Y(ALU_OUT_INNER[13]), 
	.B0(n49), 
	.A1N(n48), 
	.A0N(N121));
   OAI2BB1X2M U30 (.Y(ALU_OUT_INNER[9]), 
	.B0(n49), 
	.A1N(n48), 
	.A0N(N117));
   OAI2BB1X2M U31 (.Y(ALU_OUT_INNER[10]), 
	.B0(n49), 
	.A1N(n48), 
	.A0N(N118));
   INVX2M U32 (.Y(n141), 
	.A(Enable));
   OAI2BB1X2M U33 (.Y(n64), 
	.B0(n118), 
	.A1N(n122), 
	.A0N(n144));
   OAI2BB1X2M U34 (.Y(n65), 
	.B0(n118), 
	.A1N(n116), 
	.A0N(n117));
   NOR2BX2M U35 (.Y(n54), 
	.B(n142), 
	.AN(n123));
   AND2X2M U36 (.Y(n59), 
	.B(n122), 
	.A(n116));
   NOR2BX2M U37 (.Y(n48), 
	.B(n141), 
	.AN(FE_OFN7_n52));
   NAND2X2M U38 (.Y(n49), 
	.B(n140), 
	.A(Enable));
   AND2X2M U39 (.Y(n67), 
	.B(n122), 
	.A(n123));
   NOR2X2M U41 (.Y(n58), 
	.B(n142), 
	.A(n124));
   INVX2M U42 (.Y(n142), 
	.A(n117));
   INVX2M U43 (.Y(n143), 
	.A(n108));
   INVX2M U44 (.Y(n144), 
	.A(n124));
   AOI31X2M U45 (.Y(ALU_OUT_INNER[0]), 
	.B0(n141), 
	.A2(n112), 
	.A1(n111), 
	.A0(n110));
   AOI22X1M U46 (.Y(n110), 
	.B1(n54), 
	.B0(N90), 
	.A1(n67), 
	.A0(N99));
   AOI211X2M U47 (.Y(n112), 
	.C0(n114), 
	.B0(n113), 
	.A1(n157), 
	.A0(n58));
   AOI222X1M U48 (.Y(n111), 
	.C1(n66), 
	.C0(N124), 
	.B1(n59), 
	.B0(A[0]), 
	.A1(FE_OFN7_n52), 
	.A0(N108));
   AOI31X2M U49 (.Y(ALU_OUT_INNER[1]), 
	.B0(n141), 
	.A2(n100), 
	.A1(n99), 
	.A0(n98));
   AOI222X1M U50 (.Y(n98), 
	.C1(n67), 
	.C0(N100), 
	.B1(FE_OFN7_n52), 
	.B0(N109), 
	.A1(n54), 
	.A0(N91));
   AOI211X2M U51 (.Y(n100), 
	.C0(n102), 
	.B0(n101), 
	.A1(n143), 
	.A0(A[2]));
   AOI222X1M U52 (.Y(n99), 
	.C1(n59), 
	.C0(A[1]), 
	.B1(n156), 
	.B0(n58), 
	.A1(n66), 
	.A0(N125));
   AOI31X2M U53 (.Y(ALU_OUT_INNER[2]), 
	.B0(n141), 
	.A2(n94), 
	.A1(n93), 
	.A0(n92));
   AOI22X1M U54 (.Y(n92), 
	.B1(n54), 
	.B0(N92), 
	.A1(n67), 
	.A0(N101));
   AOI221XLM U55 (.Y(n94), 
	.C0(n95), 
	.B1(n155), 
	.B0(n58), 
	.A1(n143), 
	.A0(A[3]));
   AOI222X1M U56 (.Y(n93), 
	.C1(n66), 
	.C0(N126), 
	.B1(n59), 
	.B0(A[2]), 
	.A1(FE_OFN7_n52), 
	.A0(N110));
   AOI31X2M U57 (.Y(ALU_OUT_INNER[3]), 
	.B0(n141), 
	.A2(n88), 
	.A1(n87), 
	.A0(n86));
   AOI22X1M U58 (.Y(n86), 
	.B1(n54), 
	.B0(N93), 
	.A1(n67), 
	.A0(N102));
   AOI221XLM U59 (.Y(n88), 
	.C0(n89), 
	.B1(n154), 
	.B0(n58), 
	.A1(n143), 
	.A0(A[4]));
   AOI222X1M U60 (.Y(n87), 
	.C1(n66), 
	.C0(N127), 
	.B1(n59), 
	.B0(A[3]), 
	.A1(FE_OFN7_n52), 
	.A0(N111));
   AOI31X2M U61 (.Y(ALU_OUT_INNER[4]), 
	.B0(n141), 
	.A2(n82), 
	.A1(n81), 
	.A0(n80));
   AOI22X1M U62 (.Y(n80), 
	.B1(n54), 
	.B0(N94), 
	.A1(n67), 
	.A0(N103));
   AOI221XLM U63 (.Y(n82), 
	.C0(n83), 
	.B1(n153), 
	.B0(n58), 
	.A1(A[5]), 
	.A0(n143));
   AOI222X1M U64 (.Y(n81), 
	.C1(n66), 
	.C0(N128), 
	.B1(n59), 
	.B0(A[4]), 
	.A1(FE_OFN7_n52), 
	.A0(N112));
   AOI31X2M U65 (.Y(ALU_OUT_INNER[5]), 
	.B0(n141), 
	.A2(n76), 
	.A1(n75), 
	.A0(n74));
   AOI22X1M U66 (.Y(n74), 
	.B1(n54), 
	.B0(N95), 
	.A1(n67), 
	.A0(N104));
   AOI221XLM U67 (.Y(n76), 
	.C0(n77), 
	.B1(n152), 
	.B0(n58), 
	.A1(A[6]), 
	.A0(n143));
   AOI222X1M U68 (.Y(n75), 
	.C1(n66), 
	.C0(N129), 
	.B1(n59), 
	.B0(A[5]), 
	.A1(FE_OFN7_n52), 
	.A0(N113));
   AOI31X2M U69 (.Y(ALU_OUT_INNER[6]), 
	.B0(n141), 
	.A2(n70), 
	.A1(n69), 
	.A0(n68));
   AOI22X1M U70 (.Y(n68), 
	.B1(n54), 
	.B0(N96), 
	.A1(n67), 
	.A0(N105));
   AOI221XLM U71 (.Y(n70), 
	.C0(n71), 
	.B1(n151), 
	.B0(n58), 
	.A1(A[7]), 
	.A0(n143));
   AOI222X1M U72 (.Y(n69), 
	.C1(n66), 
	.C0(N130), 
	.B1(A[6]), 
	.B0(n59), 
	.A1(FE_OFN7_n52), 
	.A0(N114));
   AOI31X2M U73 (.Y(ALU_OUT_INNER[7]), 
	.B0(n141), 
	.A2(n57), 
	.A1(n56), 
	.A0(n55));
   AOI22X1M U74 (.Y(n55), 
	.B1(n54), 
	.B0(N97), 
	.A1(n67), 
	.A0(N106));
   AOI221XLM U75 (.Y(n57), 
	.C0(n60), 
	.B1(A[7]), 
	.B0(n59), 
	.A1(n150), 
	.A0(n58));
   AOI22X1M U76 (.Y(n56), 
	.B1(FE_OFN7_n52), 
	.B0(N115), 
	.A1(n66), 
	.A0(N131));
   AOI21X2M U77 (.Y(ALU_OUT_INNER[8]), 
	.B0(n141), 
	.A1(n51), 
	.A0(n50));
   AOI21X2M U78 (.Y(n50), 
	.B0(n140), 
	.A1(n54), 
	.A0(N98));
   AOI2BB2XLM U79 (.Y(n51), 
	.B1(FE_OFN7_n52), 
	.B0(N116), 
	.A1N(n53), 
	.A0N(n150));
   OAI222X1M U80 (.Y(n71), 
	.C1(n152), 
	.C0(n53), 
	.B1(n73), 
	.B0(B[6]), 
	.A1(n139), 
	.A0(n72));
   AOI221XLM U81 (.Y(n73), 
	.C0(n58), 
	.B1(n151), 
	.B0(n64), 
	.A1(n63), 
	.A0(A[6]));
   AOI221XLM U82 (.Y(n72), 
	.C0(n59), 
	.B1(n65), 
	.B0(A[6]), 
	.A1(n151), 
	.A0(n63));
   NOR2X2M U83 (.Y(n123), 
	.B(ALU_FUN[1]), 
	.A(ALU_FUN[2]));
   AND3X2M U84 (.Y(n63), 
	.C(ALU_FUN[3]), 
	.B(n146), 
	.A(n123));
   INVX2M U85 (.Y(n139), 
	.A(B[6]));
   NAND3X2M U86 (.Y(n53), 
	.C(ALU_FUN[3]), 
	.B(n146), 
	.A(n144));
   NAND2X2M U87 (.Y(n124), 
	.B(ALU_FUN[1]), 
	.A(ALU_FUN[2]));
   INVX2M U88 (.Y(n146), 
	.A(ALU_FUN[0]));
   NOR2X2M U89 (.Y(n122), 
	.B(ALU_FUN[3]), 
	.A(n146));
   NOR2X2M U90 (.Y(n117), 
	.B(ALU_FUN[0]), 
	.A(ALU_FUN[3]));
   NAND3X2M U91 (.Y(n108), 
	.C(n116), 
	.B(ALU_FUN[0]), 
	.A(ALU_FUN[3]));
   INVX2M U92 (.Y(n140), 
	.A(n109));
   AOI211X2M U93 (.Y(n109), 
	.C0(n64), 
	.B0(n58), 
	.A1(n67), 
	.A0(N107));
   INVX2M U94 (.Y(n145), 
	.A(ALU_FUN[1]));
   NAND3X2M U95 (.Y(n118), 
	.C(ALU_FUN[3]), 
	.B(ALU_FUN[0]), 
	.A(n123));
   AND2X2M U96 (.Y(n116), 
	.B(n145), 
	.A(ALU_FUN[2]));
   AND4X2M U97 (.Y(n107), 
	.D(n146), 
	.C(ALU_FUN[3]), 
	.B(n116), 
	.A(N158));
   INVX2M U98 (.Y(n156), 
	.A(A[1]));
   INVX2M U99 (.Y(n157), 
	.A(A[0]));
   INVX2M U100 (.Y(n151), 
	.A(A[6]));
   INVX2M U101 (.Y(n150), 
	.A(A[7]));
   INVX2M U102 (.Y(n154), 
	.A(A[3]));
   INVX2M U103 (.Y(n155), 
	.A(A[2]));
   INVX2M U104 (.Y(n152), 
	.A(A[5]));
   INVX2M U105 (.Y(n153), 
	.A(A[4]));
   INVX2M U114 (.Y(n137), 
	.A(n42));
   OAI222X1M U115 (.Y(n95), 
	.C1(n156), 
	.C0(n53), 
	.B1(n97), 
	.B0(B[2]), 
	.A1(n136), 
	.A0(n96));
   AOI221XLM U116 (.Y(n97), 
	.C0(n58), 
	.B1(n155), 
	.B0(n64), 
	.A1(n63), 
	.A0(A[2]));
   AOI221XLM U117 (.Y(n96), 
	.C0(n59), 
	.B1(n65), 
	.B0(A[2]), 
	.A1(n155), 
	.A0(n63));
   OAI222X1M U118 (.Y(n89), 
	.C1(n155), 
	.C0(n53), 
	.B1(n91), 
	.B0(B[3]), 
	.A1(n138), 
	.A0(n90));
   AOI221XLM U119 (.Y(n91), 
	.C0(n58), 
	.B1(n154), 
	.B0(n64), 
	.A1(n63), 
	.A0(A[3]));
   AOI221XLM U120 (.Y(n90), 
	.C0(n59), 
	.B1(n65), 
	.B0(A[3]), 
	.A1(n154), 
	.A0(n63));
   OAI222X1M U121 (.Y(n83), 
	.C1(n154), 
	.C0(n53), 
	.B1(n85), 
	.B0(B[4]), 
	.A1(n149), 
	.A0(n84));
   INVX2M U122 (.Y(n149), 
	.A(B[4]));
   AOI221XLM U123 (.Y(n85), 
	.C0(n58), 
	.B1(n153), 
	.B0(n64), 
	.A1(n63), 
	.A0(A[4]));
   AOI221XLM U124 (.Y(n84), 
	.C0(n59), 
	.B1(n65), 
	.B0(A[4]), 
	.A1(n153), 
	.A0(n63));
   OAI222X1M U125 (.Y(n77), 
	.C1(n153), 
	.C0(n53), 
	.B1(n79), 
	.B0(B[5]), 
	.A1(n148), 
	.A0(n78));
   INVX2M U126 (.Y(n148), 
	.A(B[5]));
   AOI221XLM U127 (.Y(n79), 
	.C0(n58), 
	.B1(n152), 
	.B0(n64), 
	.A1(n63), 
	.A0(A[5]));
   AOI221XLM U128 (.Y(n78), 
	.C0(n59), 
	.B1(n65), 
	.B0(A[5]), 
	.A1(n152), 
	.A0(n63));
   OAI222X1M U129 (.Y(n60), 
	.C1(n151), 
	.C0(n53), 
	.B1(n62), 
	.B0(B[7]), 
	.A1(n147), 
	.A0(n61));
   INVX2M U130 (.Y(n147), 
	.A(B[7]));
   AOI221XLM U131 (.Y(n62), 
	.C0(n58), 
	.B1(n150), 
	.B0(n64), 
	.A1(A[7]), 
	.A0(n63));
   AOI221XLM U132 (.Y(n61), 
	.C0(n59), 
	.B1(n65), 
	.B0(A[7]), 
	.A1(n150), 
	.A0(n63));
   INVX2M U133 (.Y(n135), 
	.A(n31));
   OAI2B2X1M U134 (.Y(n114), 
	.B1(n156), 
	.B0(n108), 
	.A1N(B[0]), 
	.A0(n115));
   AOI221XLM U135 (.Y(n115), 
	.C0(n59), 
	.B1(n65), 
	.B0(A[0]), 
	.A1(n157), 
	.A0(n63));
   OAI2B2X1M U136 (.Y(n102), 
	.B1(n157), 
	.B0(n53), 
	.A1N(B[1]), 
	.A0(n103));
   AOI221XLM U137 (.Y(n103), 
	.C0(n59), 
	.B1(n65), 
	.B0(A[1]), 
	.A1(n156), 
	.A0(n63));
   OAI21X2M U138 (.Y(n113), 
	.B0(n120), 
	.A1(n119), 
	.A0(B[0]));
   AOI221XLM U139 (.Y(n119), 
	.C0(n58), 
	.B1(n157), 
	.B0(n64), 
	.A1(n63), 
	.A0(A[0]));
   AOI31X2M U140 (.Y(n120), 
	.B0(n107), 
	.A2(n121), 
	.A1(ALU_FUN[3]), 
	.A0(N156));
   NOR3X2M U141 (.Y(n121), 
	.C(ALU_FUN[0]), 
	.B(ALU_FUN[2]), 
	.A(n145));
   OAI21X2M U142 (.Y(n101), 
	.B0(n105), 
	.A1(n104), 
	.A0(B[1]));
   AOI221XLM U143 (.Y(n104), 
	.C0(n58), 
	.B1(n156), 
	.B0(n64), 
	.A1(n63), 
	.A0(A[1]));
   AOI31X2M U144 (.Y(n105), 
	.B0(n107), 
	.A2(n106), 
	.A1(ALU_FUN[3]), 
	.A0(N157));
   NOR3X2M U145 (.Y(n106), 
	.C(n145), 
	.B(ALU_FUN[2]), 
	.A(n146));
   INVX2M U147 (.Y(n134), 
	.A(B[0]));
   INVX2M U148 (.Y(n136), 
	.A(B[2]));
   INVX2M U149 (.Y(n138), 
	.A(B[3]));
   NOR2X1M U150 (.Y(n130), 
	.B(B[7]), 
	.A(n150));
   NAND2BX1M U151 (.Y(n46), 
	.B(A[4]), 
	.AN(B[4]));
   NAND2BX1M U152 (.Y(n35), 
	.B(B[4]), 
	.AN(A[4]));
   CLKNAND2X2M U153 (.Y(n125), 
	.B(n35), 
	.A(n46));
   NOR2X1M U154 (.Y(n43), 
	.B(A[3]), 
	.A(n138));
   NOR2X1M U155 (.Y(n34), 
	.B(A[2]), 
	.A(n136));
   NOR2X1M U156 (.Y(n31), 
	.B(A[0]), 
	.A(n134));
   CLKNAND2X2M U157 (.Y(n45), 
	.B(n136), 
	.A(A[2]));
   NAND2BX1M U158 (.Y(n40), 
	.B(n45), 
	.AN(n34));
   AOI21X1M U159 (.Y(n32), 
	.B0(B[1]), 
	.A1(n156), 
	.A0(n31));
   AOI211X1M U160 (.Y(n33), 
	.C0(n32), 
	.B0(n40), 
	.A1(n135), 
	.A0(A[1]));
   CLKNAND2X2M U161 (.Y(n44), 
	.B(n138), 
	.A(A[3]));
   OAI31X1M U162 (.Y(n36), 
	.B0(n44), 
	.A2(n33), 
	.A1(n34), 
	.A0(n43));
   NAND2BX1M U163 (.Y(n128), 
	.B(B[5]), 
	.AN(A[5]));
   OAI211X1M U164 (.Y(n37), 
	.C0(n128), 
	.B0(n35), 
	.A1(n36), 
	.A0(n125));
   NAND2BX1M U165 (.Y(n47), 
	.B(A[5]), 
	.AN(B[5]));
   XNOR2X1M U166 (.Y(n127), 
	.B(B[6]), 
	.A(A[6]));
   AOI32X1M U167 (.Y(n38), 
	.B1(n151), 
	.B0(B[6]), 
	.A2(n127), 
	.A1(n47), 
	.A0(n37));
   CLKNAND2X2M U168 (.Y(n131), 
	.B(n150), 
	.A(B[7]));
   OAI21X1M U169 (.Y(N158), 
	.B0(n131), 
	.A1(n38), 
	.A0(n130));
   CLKNAND2X2M U170 (.Y(n41), 
	.B(n134), 
	.A(A[0]));
   OA21X1M U171 (.Y(n39), 
	.B0(B[1]), 
	.A1(n156), 
	.A0(n41));
   AOI211X1M U172 (.Y(n42), 
	.C0(n39), 
	.B0(n40), 
	.A1(n156), 
	.A0(n41));
   AOI31X1M U173 (.Y(n126), 
	.B0(n43), 
	.A2(n44), 
	.A1(n45), 
	.A0(n137));
   OAI2B11X1M U174 (.Y(n129), 
	.C0(n46), 
	.B0(n47), 
	.A1N(n126), 
	.A0(n125));
   AOI32X1M U175 (.Y(n132), 
	.B1(n139), 
	.B0(A[6]), 
	.A2(n127), 
	.A1(n128), 
	.A0(n129));
   AOI2B1X1M U176 (.Y(n133), 
	.B0(n130), 
	.A1N(n132), 
	.A0(n131));
   CLKINVX1M U177 (.Y(N157), 
	.A(n133));
   NOR2X1M U178 (.Y(N156), 
	.B(N157), 
	.A(N158));
   INVXLM U180 (.Y(n161), 
	.A(test_se));
   CLKINVX2M U181 (.Y(n162), 
	.A(n161));
   ALU_DW_div_uns_0 div_26 (.a({ A[7],
		A[6],
		A[5],
		A[4],
		A[3],
		A[2],
		A[1],
		A[0] }), 
	.b({ B[7],
		B[6],
		B[5],
		B[4],
		B[3],
		B[2],
		B[1],
		B[0] }), 
	.quotient({ N131,
		N130,
		N129,
		N128,
		N127,
		N126,
		N125,
		N124 }), 
	.n136(n136), 
	.n138(n138), 
	.n147(n147), 
	.n149(n149), 
	.n148(n148), 
	.n139(n139), 
	.n151(n151), 
	.n152(n152), 
	.n153(n153), 
	.n154(n154), 
	.n155(n155), 
	.n157(n157), 
	.n156(n156));
   ALU_DW01_sub_0 sub_24 (.A({ 1'b0,
		A[7],
		A[6],
		A[5],
		A[4],
		A[3],
		A[2],
		A[1],
		A[0] }), 
	.B({ 1'b0,
		B[7],
		B[6],
		B[5],
		B[4],
		B[3],
		B[2],
		B[1],
		B[0] }), 
	.CI(1'b0), 
	.DIFF({ N107,
		N106,
		N105,
		N104,
		N103,
		N102,
		N101,
		N100,
		N99 }), 
	.n134(n134), 
	.n136(n136), 
	.n138(n138), 
	.n147(n147), 
	.n149(n149), 
	.n148(n148), 
	.n139(n139), 
	.n157(n157));
   ALU_DW01_add_0 add_23 (.A({ 1'b0,
		A[7],
		A[6],
		A[5],
		A[4],
		A[3],
		A[2],
		A[1],
		A[0] }), 
	.B({ 1'b0,
		B[7],
		B[6],
		B[5],
		B[4],
		B[3],
		B[2],
		B[1],
		B[0] }), 
	.CI(1'b0), 
	.SUM({ N98,
		N97,
		N96,
		N95,
		N94,
		N93,
		N92,
		N91,
		N90 }));
   ALU_DW02_mult_0 mult_25 (.A({ A[7],
		A[6],
		A[5],
		A[4],
		A[3],
		A[2],
		A[1],
		A[0] }), 
	.B({ B[7],
		B[6],
		B[5],
		B[4],
		B[3],
		B[2],
		B[1],
		B[0] }), 
	.TC(1'b0), 
	.PRODUCT({ N123,
		N122,
		N121,
		N120,
		N119,
		N118,
		N117,
		N116,
		N115,
		N114,
		N113,
		N112,
		N111,
		N110,
		N109,
		N108 }), 
	.n134(n134), 
	.n136(n136), 
	.n138(n138), 
	.n147(n147), 
	.n149(n149), 
	.n148(n148), 
	.n150(n150), 
	.n139(n139), 
	.n151(n151), 
	.n152(n152), 
	.n153(n153), 
	.n154(n154), 
	.n155(n155), 
	.n157(n157), 
	.n156(n156));
endmodule

module RegFile_test_1 (
	CLK, 
	RST, 
	Address, 
	WrEn, 
	RdEn, 
	WrData, 
	RdData, 
	RdData_Valid, 
	REG0, 
	REG1, 
	REG2, 
	REG3, 
	test_si2, 
	test_si1, 
	test_so2, 
	test_so1, 
	test_se, 
	FE_OFN5_SYNC_RST_1, 
	REF_CLK_O__L7_N11, 
	REF_CLK_O__L7_N12, 
	REF_CLK_O__L7_N13, 
	REF_CLK_O__L7_N14, 
	REF_CLK_O__L7_N15, 
	REF_CLK_O__L7_N2, 
	REF_CLK_O__L7_N8, 
	REF_CLK_O__L7_N9);
   input CLK;
   input RST;
   input [3:0] Address;
   input WrEn;
   input RdEn;
   input [7:0] WrData;
   output [7:0] RdData;
   output RdData_Valid;
   output [7:0] REG0;
   output [7:0] REG1;
   output [7:0] REG2;
   output [7:0] REG3;
   input test_si2;
   input test_si1;
   output test_so2;
   output test_so1;
   input test_se;
   input FE_OFN5_SYNC_RST_1;
   input REF_CLK_O__L7_N11;
   input REF_CLK_O__L7_N12;
   input REF_CLK_O__L7_N13;
   input REF_CLK_O__L7_N14;
   input REF_CLK_O__L7_N15;
   input REF_CLK_O__L7_N2;
   input REF_CLK_O__L7_N8;
   input REF_CLK_O__L7_N9;

   // Internal wires
   wire FE_PHN8_SI_2_;
   wire FE_PHN7_SI_2_;
   wire FE_PHN6_SI_2_;
   wire FE_OFN4_SYNC_RST_1;
   wire FE_OFN3_SYNC_RST_1;
   wire N11;
   wire N12;
   wire N13;
   wire N14;
   wire \regArr[15][7] ;
   wire \regArr[15][6] ;
   wire \regArr[15][5] ;
   wire \regArr[15][4] ;
   wire \regArr[15][3] ;
   wire \regArr[15][2] ;
   wire \regArr[15][1] ;
   wire \regArr[15][0] ;
   wire \regArr[14][7] ;
   wire \regArr[14][6] ;
   wire \regArr[14][5] ;
   wire \regArr[14][4] ;
   wire \regArr[14][3] ;
   wire \regArr[14][2] ;
   wire \regArr[14][1] ;
   wire \regArr[14][0] ;
   wire \regArr[13][7] ;
   wire \regArr[13][6] ;
   wire \regArr[13][5] ;
   wire \regArr[13][4] ;
   wire \regArr[13][3] ;
   wire \regArr[13][2] ;
   wire \regArr[13][1] ;
   wire \regArr[13][0] ;
   wire \regArr[12][7] ;
   wire \regArr[12][6] ;
   wire \regArr[12][5] ;
   wire \regArr[12][4] ;
   wire \regArr[12][3] ;
   wire \regArr[12][2] ;
   wire \regArr[12][1] ;
   wire \regArr[12][0] ;
   wire \regArr[11][7] ;
   wire \regArr[11][6] ;
   wire \regArr[11][5] ;
   wire \regArr[11][4] ;
   wire \regArr[11][3] ;
   wire \regArr[11][2] ;
   wire \regArr[11][1] ;
   wire \regArr[11][0] ;
   wire \regArr[10][7] ;
   wire \regArr[10][6] ;
   wire \regArr[10][5] ;
   wire \regArr[10][4] ;
   wire \regArr[10][3] ;
   wire \regArr[10][2] ;
   wire \regArr[10][1] ;
   wire \regArr[10][0] ;
   wire \regArr[9][7] ;
   wire \regArr[9][6] ;
   wire \regArr[9][5] ;
   wire \regArr[9][4] ;
   wire \regArr[9][3] ;
   wire \regArr[9][2] ;
   wire \regArr[9][1] ;
   wire \regArr[9][0] ;
   wire \regArr[8][7] ;
   wire \regArr[8][6] ;
   wire \regArr[8][5] ;
   wire \regArr[8][4] ;
   wire \regArr[8][3] ;
   wire \regArr[8][2] ;
   wire \regArr[8][1] ;
   wire \regArr[8][0] ;
   wire \regArr[7][7] ;
   wire \regArr[7][6] ;
   wire \regArr[7][5] ;
   wire \regArr[7][4] ;
   wire \regArr[7][3] ;
   wire \regArr[7][2] ;
   wire \regArr[7][1] ;
   wire \regArr[7][0] ;
   wire \regArr[6][7] ;
   wire \regArr[6][6] ;
   wire \regArr[6][5] ;
   wire \regArr[6][4] ;
   wire \regArr[6][3] ;
   wire \regArr[6][2] ;
   wire \regArr[6][1] ;
   wire \regArr[6][0] ;
   wire \regArr[5][7] ;
   wire \regArr[5][6] ;
   wire \regArr[5][5] ;
   wire \regArr[5][4] ;
   wire \regArr[5][3] ;
   wire \regArr[5][2] ;
   wire \regArr[5][1] ;
   wire \regArr[5][0] ;
   wire \regArr[4][7] ;
   wire \regArr[4][6] ;
   wire \regArr[4][5] ;
   wire \regArr[4][4] ;
   wire \regArr[4][3] ;
   wire \regArr[4][2] ;
   wire \regArr[4][1] ;
   wire \regArr[4][0] ;
   wire N36;
   wire N37;
   wire N38;
   wire N39;
   wire N40;
   wire N41;
   wire N42;
   wire N43;
   wire n150;
   wire n151;
   wire n152;
   wire n153;
   wire n154;
   wire n155;
   wire n156;
   wire n157;
   wire n158;
   wire n159;
   wire n160;
   wire n161;
   wire n162;
   wire n163;
   wire n164;
   wire n165;
   wire n166;
   wire n167;
   wire n168;
   wire n169;
   wire n170;
   wire n171;
   wire n172;
   wire n173;
   wire n174;
   wire n175;
   wire n176;
   wire n177;
   wire n178;
   wire n179;
   wire n180;
   wire n181;
   wire n182;
   wire n183;
   wire n184;
   wire n185;
   wire n186;
   wire n187;
   wire n188;
   wire n189;
   wire n190;
   wire n191;
   wire n192;
   wire n193;
   wire n194;
   wire n195;
   wire n196;
   wire n197;
   wire n198;
   wire n199;
   wire n200;
   wire n201;
   wire n202;
   wire n203;
   wire n204;
   wire n205;
   wire n206;
   wire n207;
   wire n208;
   wire n209;
   wire n210;
   wire n211;
   wire n212;
   wire n213;
   wire n214;
   wire n215;
   wire n216;
   wire n217;
   wire n218;
   wire n219;
   wire n220;
   wire n221;
   wire n222;
   wire n223;
   wire n224;
   wire n225;
   wire n226;
   wire n227;
   wire n228;
   wire n229;
   wire n230;
   wire n231;
   wire n232;
   wire n233;
   wire n234;
   wire n235;
   wire n236;
   wire n237;
   wire n238;
   wire n239;
   wire n240;
   wire n241;
   wire n242;
   wire n243;
   wire n244;
   wire n245;
   wire n246;
   wire n247;
   wire n248;
   wire n249;
   wire n250;
   wire n251;
   wire n252;
   wire n253;
   wire n254;
   wire n255;
   wire n256;
   wire n257;
   wire n258;
   wire n259;
   wire n260;
   wire n261;
   wire n262;
   wire n263;
   wire n264;
   wire n265;
   wire n266;
   wire n267;
   wire n268;
   wire n269;
   wire n270;
   wire n271;
   wire n272;
   wire n273;
   wire n274;
   wire n275;
   wire n276;
   wire n277;
   wire n278;
   wire n279;
   wire n280;
   wire n281;
   wire n282;
   wire n283;
   wire n284;
   wire n285;
   wire n286;
   wire n287;
   wire n288;
   wire n289;
   wire n290;
   wire n291;
   wire n292;
   wire n293;
   wire n294;
   wire n295;
   wire n296;
   wire n297;
   wire n298;
   wire n299;
   wire n300;
   wire n301;
   wire n302;
   wire n303;
   wire n304;
   wire n305;
   wire n306;
   wire n307;
   wire n308;
   wire n309;
   wire n310;
   wire n311;
   wire n312;
   wire n313;
   wire n314;
   wire n138;
   wire n139;
   wire n140;
   wire n141;
   wire n142;
   wire n143;
   wire n144;
   wire n145;
   wire n146;
   wire n147;
   wire n148;
   wire n149;
   wire n315;
   wire n316;
   wire n317;
   wire n318;
   wire n319;
   wire n320;
   wire n321;
   wire n322;
   wire n323;
   wire n324;
   wire n325;
   wire n326;
   wire n327;
   wire n328;
   wire n329;
   wire n330;
   wire n331;
   wire n332;
   wire n333;
   wire n334;
   wire n335;
   wire n336;
   wire n337;
   wire n338;
   wire n339;
   wire n340;
   wire n341;
   wire n342;
   wire n343;
   wire n344;
   wire n345;
   wire n346;
   wire n347;
   wire n348;
   wire n349;
   wire n350;
   wire n351;
   wire n352;
   wire n353;
   wire n354;
   wire n355;
   wire n356;
   wire n357;
   wire n358;
   wire n359;
   wire n360;
   wire n361;
   wire n362;
   wire n363;
   wire n364;
   wire n365;
   wire n366;
   wire n367;
   wire n368;
   wire n369;
   wire n370;
   wire n371;
   wire n372;
   wire n373;
   wire n374;
   wire n375;
   wire n376;
   wire n377;
   wire n378;
   wire n379;
   wire n380;
   wire n381;
   wire n382;
   wire n383;
   wire n384;
   wire n385;
   wire n386;
   wire n387;
   wire n388;
   wire n389;
   wire n390;
   wire n391;
   wire n392;
   wire n393;
   wire n394;
   wire n395;
   wire n396;
   wire n397;
   wire n398;
   wire n399;
   wire n400;
   wire n401;
   wire n402;
   wire n403;
   wire n404;
   wire n405;
   wire n406;
   wire n407;
   wire n408;
   wire n409;
   wire n410;
   wire n411;
   wire n413;
   wire n414;
   wire n430;
   wire n431;
   wire n432;
   wire n433;
   wire n434;
   wire n435;
   wire n436;
   wire n437;
   wire n438;
   wire n439;
   wire n440;
   wire n444;
   wire n445;
   wire n446;
   wire n447;
   wire n448;
   wire n449;

   assign N11 = Address[0] ;
   assign N12 = Address[1] ;
   assign N13 = Address[2] ;
   assign N14 = Address[3] ;
   assign test_so2 = \regArr[15][7]  ;
   assign test_so1 = \regArr[6][6]  ;

   DLY4X1M FE_PHC8_SI_2_ (.Y(FE_PHN8_SI_2_), 
	.A(FE_PHN7_SI_2_));
   DLY4X1M FE_PHC7_SI_2_ (.Y(FE_PHN7_SI_2_), 
	.A(FE_PHN6_SI_2_));
   DLY4X1M FE_PHC6_SI_2_ (.Y(FE_PHN6_SI_2_), 
	.A(test_si2));
   BUFX6M FE_OFC4_SYNC_RST_1 (.Y(FE_OFN4_SYNC_RST_1), 
	.A(RST));
   BUFX4M FE_OFC3_SYNC_RST_1 (.Y(FE_OFN3_SYNC_RST_1), 
	.A(RST));
   SDFFRQX2M \regArr_reg[15][7]  (.SI(\regArr[15][6] ), 
	.SE(n444), 
	.RN(RST), 
	.Q(\regArr[15][7] ), 
	.D(n306), 
	.CK(REF_CLK_O__L7_N15));
   SDFFRQX2M \regArr_reg[15][6]  (.SI(\regArr[15][5] ), 
	.SE(n448), 
	.RN(RST), 
	.Q(\regArr[15][6] ), 
	.D(n305), 
	.CK(REF_CLK_O__L7_N15));
   SDFFRQX2M \regArr_reg[15][5]  (.SI(\regArr[15][4] ), 
	.SE(n447), 
	.RN(RST), 
	.Q(\regArr[15][5] ), 
	.D(n304), 
	.CK(REF_CLK_O__L7_N15));
   SDFFRQX2M \regArr_reg[15][4]  (.SI(\regArr[15][3] ), 
	.SE(n446), 
	.RN(FE_OFN3_SYNC_RST_1), 
	.Q(\regArr[15][4] ), 
	.D(n303), 
	.CK(REF_CLK_O__L7_N12));
   SDFFRQX2M \regArr_reg[15][3]  (.SI(\regArr[15][2] ), 
	.SE(n445), 
	.RN(FE_OFN3_SYNC_RST_1), 
	.Q(\regArr[15][3] ), 
	.D(n302), 
	.CK(REF_CLK_O__L7_N12));
   SDFFRQX2M \regArr_reg[15][2]  (.SI(\regArr[15][1] ), 
	.SE(n448), 
	.RN(FE_OFN3_SYNC_RST_1), 
	.Q(\regArr[15][2] ), 
	.D(n301), 
	.CK(REF_CLK_O__L7_N12));
   SDFFRQX2M \regArr_reg[15][1]  (.SI(\regArr[15][0] ), 
	.SE(n447), 
	.RN(FE_OFN3_SYNC_RST_1), 
	.Q(\regArr[15][1] ), 
	.D(n300), 
	.CK(REF_CLK_O__L7_N12));
   SDFFRQX2M \regArr_reg[15][0]  (.SI(\regArr[14][7] ), 
	.SE(n446), 
	.RN(RST), 
	.Q(\regArr[15][0] ), 
	.D(n299), 
	.CK(REF_CLK_O__L7_N14));
   SDFFRQX2M \regArr_reg[13][7]  (.SI(\regArr[13][6] ), 
	.SE(n444), 
	.RN(RST), 
	.Q(\regArr[13][7] ), 
	.D(n290), 
	.CK(REF_CLK_O__L7_N14));
   SDFFRQX2M \regArr_reg[13][6]  (.SI(\regArr[13][5] ), 
	.SE(n448), 
	.RN(RST), 
	.Q(\regArr[13][6] ), 
	.D(n289), 
	.CK(REF_CLK_O__L7_N14));
   SDFFRQX2M \regArr_reg[13][5]  (.SI(\regArr[13][4] ), 
	.SE(n447), 
	.RN(RST), 
	.Q(\regArr[13][5] ), 
	.D(n288), 
	.CK(REF_CLK_O__L7_N14));
   SDFFRQX2M \regArr_reg[13][4]  (.SI(\regArr[13][3] ), 
	.SE(n446), 
	.RN(FE_OFN3_SYNC_RST_1), 
	.Q(\regArr[13][4] ), 
	.D(n287), 
	.CK(REF_CLK_O__L7_N12));
   SDFFRQX2M \regArr_reg[13][3]  (.SI(\regArr[13][2] ), 
	.SE(n445), 
	.RN(FE_OFN3_SYNC_RST_1), 
	.Q(\regArr[13][3] ), 
	.D(n286), 
	.CK(REF_CLK_O__L7_N12));
   SDFFRQX2M \regArr_reg[13][2]  (.SI(\regArr[13][1] ), 
	.SE(n448), 
	.RN(FE_OFN3_SYNC_RST_1), 
	.Q(\regArr[13][2] ), 
	.D(n285), 
	.CK(REF_CLK_O__L7_N9));
   SDFFRQX2M \regArr_reg[13][1]  (.SI(\regArr[13][0] ), 
	.SE(n447), 
	.RN(FE_OFN3_SYNC_RST_1), 
	.Q(\regArr[13][1] ), 
	.D(n284), 
	.CK(REF_CLK_O__L7_N9));
   SDFFRQX2M \regArr_reg[13][0]  (.SI(\regArr[12][7] ), 
	.SE(n446), 
	.RN(FE_OFN3_SYNC_RST_1), 
	.Q(\regArr[13][0] ), 
	.D(n283), 
	.CK(REF_CLK_O__L7_N12));
   SDFFRQX2M \regArr_reg[11][7]  (.SI(\regArr[11][6] ), 
	.SE(n444), 
	.RN(FE_OFN3_SYNC_RST_1), 
	.Q(\regArr[11][7] ), 
	.D(n274), 
	.CK(REF_CLK_O__L7_N9));
   SDFFRQX2M \regArr_reg[11][6]  (.SI(\regArr[11][5] ), 
	.SE(n448), 
	.RN(FE_OFN4_SYNC_RST_1), 
	.Q(\regArr[11][6] ), 
	.D(n273), 
	.CK(REF_CLK_O__L7_N8));
   SDFFRQX2M \regArr_reg[11][5]  (.SI(\regArr[11][4] ), 
	.SE(n447), 
	.RN(FE_OFN4_SYNC_RST_1), 
	.Q(\regArr[11][5] ), 
	.D(n272), 
	.CK(REF_CLK_O__L7_N8));
   SDFFRQX2M \regArr_reg[11][4]  (.SI(\regArr[11][3] ), 
	.SE(n446), 
	.RN(FE_OFN4_SYNC_RST_1), 
	.Q(\regArr[11][4] ), 
	.D(n271), 
	.CK(REF_CLK_O__L7_N8));
   SDFFRQX2M \regArr_reg[11][3]  (.SI(\regArr[11][2] ), 
	.SE(n445), 
	.RN(FE_OFN4_SYNC_RST_1), 
	.Q(\regArr[11][3] ), 
	.D(n270), 
	.CK(REF_CLK_O__L7_N8));
   SDFFRQX2M \regArr_reg[11][2]  (.SI(\regArr[11][1] ), 
	.SE(n448), 
	.RN(FE_OFN4_SYNC_RST_1), 
	.Q(\regArr[11][2] ), 
	.D(n269), 
	.CK(REF_CLK_O__L7_N8));
   SDFFRQX2M \regArr_reg[11][1]  (.SI(\regArr[11][0] ), 
	.SE(n447), 
	.RN(FE_OFN3_SYNC_RST_1), 
	.Q(\regArr[11][1] ), 
	.D(n268), 
	.CK(REF_CLK_O__L7_N9));
   SDFFRQX2M \regArr_reg[11][0]  (.SI(\regArr[10][7] ), 
	.SE(n446), 
	.RN(FE_OFN3_SYNC_RST_1), 
	.Q(\regArr[11][0] ), 
	.D(n267), 
	.CK(REF_CLK_O__L7_N9));
   SDFFRQX2M \regArr_reg[9][7]  (.SI(\regArr[9][6] ), 
	.SE(n444), 
	.RN(FE_OFN3_SYNC_RST_1), 
	.Q(\regArr[9][7] ), 
	.D(n258), 
	.CK(REF_CLK_O__L7_N9));
   SDFFRQX2M \regArr_reg[9][6]  (.SI(\regArr[9][5] ), 
	.SE(n448), 
	.RN(FE_OFN4_SYNC_RST_1), 
	.Q(\regArr[9][6] ), 
	.D(n257), 
	.CK(REF_CLK_O__L7_N9));
   SDFFRQX2M \regArr_reg[9][5]  (.SI(\regArr[9][4] ), 
	.SE(n447), 
	.RN(FE_OFN4_SYNC_RST_1), 
	.Q(\regArr[9][5] ), 
	.D(n256), 
	.CK(REF_CLK_O__L7_N8));
   SDFFRQX2M \regArr_reg[9][4]  (.SI(\regArr[9][3] ), 
	.SE(n446), 
	.RN(FE_OFN4_SYNC_RST_1), 
	.Q(\regArr[9][4] ), 
	.D(n255), 
	.CK(REF_CLK_O__L7_N8));
   SDFFRQX2M \regArr_reg[9][3]  (.SI(\regArr[9][2] ), 
	.SE(n445), 
	.RN(FE_OFN4_SYNC_RST_1), 
	.Q(\regArr[9][3] ), 
	.D(n254), 
	.CK(REF_CLK_O__L7_N8));
   SDFFRQX2M \regArr_reg[9][2]  (.SI(\regArr[9][1] ), 
	.SE(n448), 
	.RN(FE_OFN4_SYNC_RST_1), 
	.Q(\regArr[9][2] ), 
	.D(n253), 
	.CK(REF_CLK_O__L7_N8));
   SDFFRQX2M \regArr_reg[9][1]  (.SI(\regArr[9][0] ), 
	.SE(n447), 
	.RN(FE_OFN3_SYNC_RST_1), 
	.Q(\regArr[9][1] ), 
	.D(n252), 
	.CK(REF_CLK_O__L7_N9));
   SDFFRQX2M \regArr_reg[9][0]  (.SI(\regArr[8][7] ), 
	.SE(n446), 
	.RN(FE_OFN3_SYNC_RST_1), 
	.Q(\regArr[9][0] ), 
	.D(n251), 
	.CK(REF_CLK_O__L7_N9));
   SDFFRQX2M \regArr_reg[7][7]  (.SI(\regArr[7][6] ), 
	.SE(n444), 
	.RN(FE_OFN3_SYNC_RST_1), 
	.Q(\regArr[7][7] ), 
	.D(n242), 
	.CK(REF_CLK_O__L7_N11));
   SDFFRQX2M \regArr_reg[7][6]  (.SI(\regArr[7][5] ), 
	.SE(n448), 
	.RN(FE_OFN4_SYNC_RST_1), 
	.Q(\regArr[7][6] ), 
	.D(n241), 
	.CK(REF_CLK_O__L7_N11));
   SDFFRQX2M \regArr_reg[7][5]  (.SI(\regArr[7][4] ), 
	.SE(n447), 
	.RN(FE_OFN4_SYNC_RST_1), 
	.Q(\regArr[7][5] ), 
	.D(n240), 
	.CK(REF_CLK_O__L7_N11));
   SDFFRQX2M \regArr_reg[7][4]  (.SI(\regArr[7][3] ), 
	.SE(n446), 
	.RN(FE_OFN4_SYNC_RST_1), 
	.Q(\regArr[7][4] ), 
	.D(n239), 
	.CK(REF_CLK_O__L7_N11));
   SDFFRQX2M \regArr_reg[7][3]  (.SI(\regArr[7][2] ), 
	.SE(n445), 
	.RN(FE_OFN4_SYNC_RST_1), 
	.Q(\regArr[7][3] ), 
	.D(n238), 
	.CK(REF_CLK_O__L7_N11));
   SDFFRQX2M \regArr_reg[7][2]  (.SI(\regArr[7][1] ), 
	.SE(n448), 
	.RN(FE_OFN4_SYNC_RST_1), 
	.Q(\regArr[7][2] ), 
	.D(n237), 
	.CK(REF_CLK_O__L7_N11));
   SDFFRQX2M \regArr_reg[7][1]  (.SI(\regArr[7][0] ), 
	.SE(n447), 
	.RN(FE_OFN4_SYNC_RST_1), 
	.Q(\regArr[7][1] ), 
	.D(n236), 
	.CK(REF_CLK_O__L7_N11));
   SDFFRQX2M \regArr_reg[7][0]  (.SI(\regArr[6][7] ), 
	.SE(n446), 
	.RN(FE_OFN3_SYNC_RST_1), 
	.Q(\regArr[7][0] ), 
	.D(n235), 
	.CK(REF_CLK_O__L7_N13));
   SDFFRQX2M \regArr_reg[5][7]  (.SI(\regArr[5][6] ), 
	.SE(n444), 
	.RN(FE_OFN5_SYNC_RST_1), 
	.Q(\regArr[5][7] ), 
	.D(n226), 
	.CK(REF_CLK_O__L7_N13));
   SDFFRQX2M \regArr_reg[5][6]  (.SI(\regArr[5][5] ), 
	.SE(n448), 
	.RN(FE_OFN4_SYNC_RST_1), 
	.Q(\regArr[5][6] ), 
	.D(n225), 
	.CK(REF_CLK_O__L7_N11));
   SDFFRQX2M \regArr_reg[5][5]  (.SI(\regArr[5][4] ), 
	.SE(n447), 
	.RN(FE_OFN4_SYNC_RST_1), 
	.Q(\regArr[5][5] ), 
	.D(n224), 
	.CK(CLK));
   SDFFRQX2M \regArr_reg[5][4]  (.SI(\regArr[5][3] ), 
	.SE(n446), 
	.RN(FE_OFN4_SYNC_RST_1), 
	.Q(\regArr[5][4] ), 
	.D(n223), 
	.CK(CLK));
   SDFFRQX2M \regArr_reg[5][3]  (.SI(\regArr[5][2] ), 
	.SE(n445), 
	.RN(FE_OFN4_SYNC_RST_1), 
	.Q(\regArr[5][3] ), 
	.D(n222), 
	.CK(REF_CLK_O__L7_N11));
   SDFFRQX2M \regArr_reg[5][2]  (.SI(\regArr[5][1] ), 
	.SE(n448), 
	.RN(FE_OFN4_SYNC_RST_1), 
	.Q(\regArr[5][2] ), 
	.D(n221), 
	.CK(REF_CLK_O__L7_N11));
   SDFFRQX2M \regArr_reg[5][1]  (.SI(\regArr[5][0] ), 
	.SE(n447), 
	.RN(FE_OFN5_SYNC_RST_1), 
	.Q(\regArr[5][1] ), 
	.D(n220), 
	.CK(REF_CLK_O__L7_N13));
   SDFFRQX2M \regArr_reg[5][0]  (.SI(\regArr[4][7] ), 
	.SE(n446), 
	.RN(FE_OFN5_SYNC_RST_1), 
	.Q(\regArr[5][0] ), 
	.D(n219), 
	.CK(REF_CLK_O__L7_N13));
   SDFFRQX2M \regArr_reg[14][7]  (.SI(\regArr[14][6] ), 
	.SE(n444), 
	.RN(RST), 
	.Q(\regArr[14][7] ), 
	.D(n298), 
	.CK(REF_CLK_O__L7_N14));
   SDFFRQX2M \regArr_reg[14][6]  (.SI(\regArr[14][5] ), 
	.SE(n448), 
	.RN(RST), 
	.Q(\regArr[14][6] ), 
	.D(n297), 
	.CK(REF_CLK_O__L7_N14));
   SDFFRQX2M \regArr_reg[14][5]  (.SI(\regArr[14][4] ), 
	.SE(n447), 
	.RN(RST), 
	.Q(\regArr[14][5] ), 
	.D(n296), 
	.CK(REF_CLK_O__L7_N12));
   SDFFRQX2M \regArr_reg[14][4]  (.SI(\regArr[14][3] ), 
	.SE(n446), 
	.RN(RST), 
	.Q(\regArr[14][4] ), 
	.D(n295), 
	.CK(REF_CLK_O__L7_N12));
   SDFFRQX2M \regArr_reg[14][3]  (.SI(\regArr[14][2] ), 
	.SE(n445), 
	.RN(FE_OFN3_SYNC_RST_1), 
	.Q(\regArr[14][3] ), 
	.D(n294), 
	.CK(REF_CLK_O__L7_N12));
   SDFFRQX2M \regArr_reg[14][2]  (.SI(\regArr[14][1] ), 
	.SE(n448), 
	.RN(FE_OFN3_SYNC_RST_1), 
	.Q(\regArr[14][2] ), 
	.D(n293), 
	.CK(REF_CLK_O__L7_N12));
   SDFFRQX2M \regArr_reg[14][1]  (.SI(\regArr[14][0] ), 
	.SE(n447), 
	.RN(FE_OFN3_SYNC_RST_1), 
	.Q(\regArr[14][1] ), 
	.D(n292), 
	.CK(REF_CLK_O__L7_N14));
   SDFFRQX2M \regArr_reg[14][0]  (.SI(\regArr[13][7] ), 
	.SE(n446), 
	.RN(RST), 
	.Q(\regArr[14][0] ), 
	.D(n291), 
	.CK(REF_CLK_O__L7_N14));
   SDFFRQX2M \regArr_reg[12][7]  (.SI(\regArr[12][6] ), 
	.SE(n444), 
	.RN(FE_OFN3_SYNC_RST_1), 
	.Q(\regArr[12][7] ), 
	.D(n282), 
	.CK(REF_CLK_O__L7_N12));
   SDFFRQX2M \regArr_reg[12][6]  (.SI(\regArr[12][5] ), 
	.SE(n448), 
	.RN(FE_OFN3_SYNC_RST_1), 
	.Q(\regArr[12][6] ), 
	.D(n281), 
	.CK(REF_CLK_O__L7_N12));
   SDFFRQX2M \regArr_reg[12][5]  (.SI(\regArr[12][4] ), 
	.SE(n447), 
	.RN(FE_OFN3_SYNC_RST_1), 
	.Q(\regArr[12][5] ), 
	.D(n280), 
	.CK(REF_CLK_O__L7_N12));
   SDFFRQX2M \regArr_reg[12][4]  (.SI(\regArr[12][3] ), 
	.SE(n446), 
	.RN(FE_OFN3_SYNC_RST_1), 
	.Q(\regArr[12][4] ), 
	.D(n279), 
	.CK(REF_CLK_O__L7_N12));
   SDFFRQX2M \regArr_reg[12][3]  (.SI(\regArr[12][2] ), 
	.SE(n445), 
	.RN(FE_OFN3_SYNC_RST_1), 
	.Q(\regArr[12][3] ), 
	.D(n278), 
	.CK(REF_CLK_O__L7_N12));
   SDFFRQX2M \regArr_reg[12][2]  (.SI(\regArr[12][1] ), 
	.SE(n448), 
	.RN(FE_OFN3_SYNC_RST_1), 
	.Q(\regArr[12][2] ), 
	.D(n277), 
	.CK(REF_CLK_O__L7_N12));
   SDFFRQX2M \regArr_reg[12][1]  (.SI(\regArr[12][0] ), 
	.SE(n447), 
	.RN(FE_OFN3_SYNC_RST_1), 
	.Q(\regArr[12][1] ), 
	.D(n276), 
	.CK(REF_CLK_O__L7_N9));
   SDFFRQX2M \regArr_reg[12][0]  (.SI(\regArr[11][7] ), 
	.SE(n446), 
	.RN(FE_OFN3_SYNC_RST_1), 
	.Q(\regArr[12][0] ), 
	.D(n275), 
	.CK(REF_CLK_O__L7_N9));
   SDFFRQX2M \regArr_reg[10][7]  (.SI(\regArr[10][6] ), 
	.SE(n444), 
	.RN(FE_OFN3_SYNC_RST_1), 
	.Q(\regArr[10][7] ), 
	.D(n266), 
	.CK(REF_CLK_O__L7_N9));
   SDFFRQX2M \regArr_reg[10][6]  (.SI(\regArr[10][5] ), 
	.SE(n448), 
	.RN(FE_OFN4_SYNC_RST_1), 
	.Q(\regArr[10][6] ), 
	.D(n265), 
	.CK(REF_CLK_O__L7_N8));
   SDFFRQX2M \regArr_reg[10][5]  (.SI(\regArr[10][4] ), 
	.SE(n447), 
	.RN(FE_OFN4_SYNC_RST_1), 
	.Q(\regArr[10][5] ), 
	.D(n264), 
	.CK(REF_CLK_O__L7_N8));
   SDFFRQX2M \regArr_reg[10][4]  (.SI(\regArr[10][3] ), 
	.SE(n446), 
	.RN(FE_OFN4_SYNC_RST_1), 
	.Q(\regArr[10][4] ), 
	.D(n263), 
	.CK(REF_CLK_O__L7_N8));
   SDFFRQX2M \regArr_reg[10][3]  (.SI(\regArr[10][2] ), 
	.SE(n445), 
	.RN(FE_OFN4_SYNC_RST_1), 
	.Q(\regArr[10][3] ), 
	.D(n262), 
	.CK(REF_CLK_O__L7_N8));
   SDFFRQX2M \regArr_reg[10][2]  (.SI(\regArr[10][1] ), 
	.SE(n448), 
	.RN(FE_OFN4_SYNC_RST_1), 
	.Q(\regArr[10][2] ), 
	.D(n261), 
	.CK(REF_CLK_O__L7_N8));
   SDFFRQX2M \regArr_reg[10][1]  (.SI(\regArr[10][0] ), 
	.SE(n447), 
	.RN(FE_OFN3_SYNC_RST_1), 
	.Q(\regArr[10][1] ), 
	.D(n260), 
	.CK(REF_CLK_O__L7_N9));
   SDFFRQX2M \regArr_reg[10][0]  (.SI(\regArr[9][7] ), 
	.SE(n446), 
	.RN(FE_OFN3_SYNC_RST_1), 
	.Q(\regArr[10][0] ), 
	.D(n259), 
	.CK(REF_CLK_O__L7_N9));
   SDFFRQX2M \regArr_reg[8][7]  (.SI(\regArr[8][6] ), 
	.SE(n444), 
	.RN(FE_OFN3_SYNC_RST_1), 
	.Q(\regArr[8][7] ), 
	.D(n250), 
	.CK(REF_CLK_O__L7_N9));
   SDFFRQX2M \regArr_reg[8][6]  (.SI(\regArr[8][5] ), 
	.SE(n448), 
	.RN(FE_OFN3_SYNC_RST_1), 
	.Q(\regArr[8][6] ), 
	.D(n249), 
	.CK(REF_CLK_O__L7_N9));
   SDFFRQX2M \regArr_reg[8][5]  (.SI(\regArr[8][4] ), 
	.SE(n447), 
	.RN(FE_OFN4_SYNC_RST_1), 
	.Q(\regArr[8][5] ), 
	.D(n248), 
	.CK(REF_CLK_O__L7_N8));
   SDFFRQX2M \regArr_reg[8][4]  (.SI(\regArr[8][3] ), 
	.SE(n446), 
	.RN(FE_OFN4_SYNC_RST_1), 
	.Q(\regArr[8][4] ), 
	.D(n247), 
	.CK(REF_CLK_O__L7_N8));
   SDFFRQX2M \regArr_reg[8][3]  (.SI(\regArr[8][2] ), 
	.SE(n445), 
	.RN(FE_OFN4_SYNC_RST_1), 
	.Q(\regArr[8][3] ), 
	.D(n246), 
	.CK(REF_CLK_O__L7_N8));
   SDFFRQX2M \regArr_reg[8][2]  (.SI(\regArr[8][1] ), 
	.SE(n448), 
	.RN(FE_OFN4_SYNC_RST_1), 
	.Q(\regArr[8][2] ), 
	.D(n245), 
	.CK(REF_CLK_O__L7_N8));
   SDFFRQX2M \regArr_reg[8][1]  (.SI(\regArr[8][0] ), 
	.SE(n447), 
	.RN(FE_OFN4_SYNC_RST_1), 
	.Q(\regArr[8][1] ), 
	.D(n244), 
	.CK(REF_CLK_O__L7_N13));
   SDFFRQX2M \regArr_reg[8][0]  (.SI(\regArr[7][7] ), 
	.SE(n446), 
	.RN(FE_OFN4_SYNC_RST_1), 
	.Q(\regArr[8][0] ), 
	.D(n243), 
	.CK(REF_CLK_O__L7_N13));
   SDFFRQX2M \regArr_reg[6][7]  (.SI(FE_PHN8_SI_2_), 
	.SE(n444), 
	.RN(FE_OFN3_SYNC_RST_1), 
	.Q(\regArr[6][7] ), 
	.D(n234), 
	.CK(REF_CLK_O__L7_N13));
   SDFFRQX2M \regArr_reg[6][6]  (.SI(\regArr[6][5] ), 
	.SE(n448), 
	.RN(FE_OFN4_SYNC_RST_1), 
	.Q(\regArr[6][6] ), 
	.D(n233), 
	.CK(REF_CLK_O__L7_N11));
   SDFFRQX2M \regArr_reg[6][5]  (.SI(\regArr[6][4] ), 
	.SE(n447), 
	.RN(FE_OFN4_SYNC_RST_1), 
	.Q(\regArr[6][5] ), 
	.D(n232), 
	.CK(REF_CLK_O__L7_N11));
   SDFFRQX2M \regArr_reg[6][4]  (.SI(\regArr[6][3] ), 
	.SE(n446), 
	.RN(FE_OFN4_SYNC_RST_1), 
	.Q(\regArr[6][4] ), 
	.D(n231), 
	.CK(REF_CLK_O__L7_N11));
   SDFFRQX2M \regArr_reg[6][3]  (.SI(\regArr[6][2] ), 
	.SE(n445), 
	.RN(FE_OFN4_SYNC_RST_1), 
	.Q(\regArr[6][3] ), 
	.D(n230), 
	.CK(REF_CLK_O__L7_N11));
   SDFFRQX2M \regArr_reg[6][2]  (.SI(\regArr[6][1] ), 
	.SE(n448), 
	.RN(FE_OFN4_SYNC_RST_1), 
	.Q(\regArr[6][2] ), 
	.D(n229), 
	.CK(REF_CLK_O__L7_N11));
   SDFFRQX2M \regArr_reg[6][1]  (.SI(\regArr[6][0] ), 
	.SE(n447), 
	.RN(FE_OFN5_SYNC_RST_1), 
	.Q(\regArr[6][1] ), 
	.D(n228), 
	.CK(REF_CLK_O__L7_N13));
   SDFFRQX2M \regArr_reg[6][0]  (.SI(\regArr[5][7] ), 
	.SE(n446), 
	.RN(FE_OFN5_SYNC_RST_1), 
	.Q(\regArr[6][0] ), 
	.D(n227), 
	.CK(REF_CLK_O__L7_N13));
   SDFFRQX2M \regArr_reg[4][7]  (.SI(\regArr[4][6] ), 
	.SE(n444), 
	.RN(FE_OFN5_SYNC_RST_1), 
	.Q(\regArr[4][7] ), 
	.D(n218), 
	.CK(REF_CLK_O__L7_N11));
   SDFFRQX2M \regArr_reg[4][6]  (.SI(\regArr[4][5] ), 
	.SE(n448), 
	.RN(FE_OFN4_SYNC_RST_1), 
	.Q(\regArr[4][6] ), 
	.D(n217), 
	.CK(REF_CLK_O__L7_N11));
   SDFFRQX2M \regArr_reg[4][5]  (.SI(\regArr[4][4] ), 
	.SE(n447), 
	.RN(FE_OFN4_SYNC_RST_1), 
	.Q(\regArr[4][5] ), 
	.D(n216), 
	.CK(REF_CLK_O__L7_N11));
   SDFFRQX2M \regArr_reg[4][4]  (.SI(\regArr[4][3] ), 
	.SE(n446), 
	.RN(FE_OFN4_SYNC_RST_1), 
	.Q(\regArr[4][4] ), 
	.D(n215), 
	.CK(CLK));
   SDFFRQX2M \regArr_reg[4][3]  (.SI(\regArr[4][2] ), 
	.SE(n445), 
	.RN(FE_OFN4_SYNC_RST_1), 
	.Q(\regArr[4][3] ), 
	.D(n214), 
	.CK(CLK));
   SDFFRQX2M \regArr_reg[4][2]  (.SI(\regArr[4][1] ), 
	.SE(n448), 
	.RN(FE_OFN4_SYNC_RST_1), 
	.Q(\regArr[4][2] ), 
	.D(n213), 
	.CK(CLK));
   SDFFRQX2M \regArr_reg[4][1]  (.SI(\regArr[4][0] ), 
	.SE(n447), 
	.RN(FE_OFN5_SYNC_RST_1), 
	.Q(\regArr[4][1] ), 
	.D(n212), 
	.CK(REF_CLK_O__L7_N13));
   SDFFRQX2M \regArr_reg[4][0]  (.SI(REG3[7]), 
	.SE(n446), 
	.RN(FE_OFN5_SYNC_RST_1), 
	.Q(\regArr[4][0] ), 
	.D(n211), 
	.CK(REF_CLK_O__L7_N15));
   SDFFRQX2M \RdData_reg[7]  (.SI(RdData[6]), 
	.SE(n444), 
	.RN(FE_OFN5_SYNC_RST_1), 
	.Q(RdData[7]), 
	.D(n314), 
	.CK(REF_CLK_O__L7_N13));
   SDFFRQX2M \RdData_reg[6]  (.SI(RdData[5]), 
	.SE(n448), 
	.RN(FE_OFN5_SYNC_RST_1), 
	.Q(RdData[6]), 
	.D(n313), 
	.CK(REF_CLK_O__L7_N13));
   SDFFRQX2M \RdData_reg[5]  (.SI(RdData[4]), 
	.SE(n447), 
	.RN(RST), 
	.Q(RdData[5]), 
	.D(n312), 
	.CK(REF_CLK_O__L7_N15));
   SDFFRQX2M \RdData_reg[4]  (.SI(RdData[3]), 
	.SE(n446), 
	.RN(RST), 
	.Q(RdData[4]), 
	.D(n311), 
	.CK(REF_CLK_O__L7_N15));
   SDFFRQX2M \RdData_reg[3]  (.SI(RdData[2]), 
	.SE(n445), 
	.RN(RST), 
	.Q(RdData[3]), 
	.D(n310), 
	.CK(REF_CLK_O__L7_N15));
   SDFFRQX2M \RdData_reg[2]  (.SI(RdData[1]), 
	.SE(n448), 
	.RN(RST), 
	.Q(RdData[2]), 
	.D(n309), 
	.CK(REF_CLK_O__L7_N15));
   SDFFRQX2M \RdData_reg[1]  (.SI(RdData[0]), 
	.SE(n447), 
	.RN(RST), 
	.Q(RdData[1]), 
	.D(n308), 
	.CK(REF_CLK_O__L7_N15));
   SDFFRQX2M \RdData_reg[0]  (.SI(RdData_Valid), 
	.SE(n446), 
	.RN(RST), 
	.Q(RdData[0]), 
	.D(n307), 
	.CK(REF_CLK_O__L7_N15));
   SDFFRQX2M \regArr_reg[3][1]  (.SI(REG3[0]), 
	.SE(n444), 
	.RN(RST), 
	.Q(REG3[1]), 
	.D(n204), 
	.CK(REF_CLK_O__L7_N2));
   SDFFRQX2M \regArr_reg[3][3]  (.SI(REG3[2]), 
	.SE(n448), 
	.RN(RST), 
	.Q(REG3[3]), 
	.D(n206), 
	.CK(REF_CLK_O__L7_N2));
   SDFFRQX2M \regArr_reg[3][2]  (.SI(REG3[1]), 
	.SE(n447), 
	.RN(FE_OFN5_SYNC_RST_1), 
	.Q(REG3[2]), 
	.D(n205), 
	.CK(REF_CLK_O__L7_N2));
   SDFFRQX2M \regArr_reg[3][4]  (.SI(REG3[3]), 
	.SE(n446), 
	.RN(RST), 
	.Q(REG3[4]), 
	.D(n207), 
	.CK(REF_CLK_O__L7_N15));
   SDFFRQX2M \regArr_reg[3][7]  (.SI(REG3[6]), 
	.SE(n445), 
	.RN(FE_OFN5_SYNC_RST_1), 
	.Q(REG3[7]), 
	.D(n210), 
	.CK(REF_CLK_O__L7_N15));
   SDFFRQX2M \regArr_reg[3][6]  (.SI(REG3[5]), 
	.SE(n448), 
	.RN(FE_OFN5_SYNC_RST_1), 
	.Q(REG3[6]), 
	.D(n209), 
	.CK(REF_CLK_O__L7_N15));
   SDFFSQX2M \regArr_reg[3][5]  (.SN(RST), 
	.SI(REG3[4]), 
	.SE(n448), 
	.Q(REG3[5]), 
	.D(n208), 
	.CK(REF_CLK_O__L7_N2));
   SDFFRQX2M \regArr_reg[3][0]  (.SI(REG2[7]), 
	.SE(n447), 
	.RN(FE_OFN5_SYNC_RST_1), 
	.Q(REG3[0]), 
	.D(n203), 
	.CK(REF_CLK_O__L7_N15));
   SDFFRQX2M RdData_Valid_reg (.SI(test_si1), 
	.SE(n446), 
	.RN(RST), 
	.Q(RdData_Valid), 
	.D(n178), 
	.CK(REF_CLK_O__L7_N15));
   SDFFRQX2M \regArr_reg[2][0]  (.SI(REG1[7]), 
	.SE(n444), 
	.RN(FE_OFN5_SYNC_RST_1), 
	.Q(REG2[0]), 
	.D(n195), 
	.CK(REF_CLK_O__L7_N13));
   SDFFRQX2M \regArr_reg[2][1]  (.SI(REG2[0]), 
	.SE(n448), 
	.RN(RST), 
	.Q(REG2[1]), 
	.D(n196), 
	.CK(REF_CLK_O__L7_N2));
   SDFFSQX2M \regArr_reg[2][7]  (.SN(RST), 
	.SI(REG2[6]), 
	.SE(n447), 
	.Q(REG2[7]), 
	.D(n202), 
	.CK(REF_CLK_O__L7_N2));
   SDFFRQX2M \regArr_reg[2][3]  (.SI(REG2[2]), 
	.SE(n447), 
	.RN(RST), 
	.Q(REG2[3]), 
	.D(n198), 
	.CK(REF_CLK_O__L7_N2));
   SDFFRQX2M \regArr_reg[2][4]  (.SI(REG2[3]), 
	.SE(n446), 
	.RN(RST), 
	.Q(REG2[4]), 
	.D(n199), 
	.CK(REF_CLK_O__L7_N15));
   SDFFRQX2M \regArr_reg[2][6]  (.SI(REG2[5]), 
	.SE(n445), 
	.RN(FE_OFN5_SYNC_RST_1), 
	.Q(REG2[6]), 
	.D(n201), 
	.CK(REF_CLK_O__L7_N15));
   SDFFRQX2M \regArr_reg[2][2]  (.SI(REG2[1]), 
	.SE(n448), 
	.RN(RST), 
	.Q(REG2[2]), 
	.D(n197), 
	.CK(REF_CLK_O__L7_N2));
   SDFFRQX2M \regArr_reg[2][5]  (.SI(REG2[4]), 
	.SE(n447), 
	.RN(RST), 
	.Q(REG2[5]), 
	.D(n200), 
	.CK(REF_CLK_O__L7_N2));
   SDFFRQX2M \regArr_reg[0][1]  (.SI(REG0[0]), 
	.SE(n446), 
	.RN(FE_OFN5_SYNC_RST_1), 
	.Q(REG0[1]), 
	.D(n180), 
	.CK(CLK));
   SDFFRQX2M \regArr_reg[0][0]  (.SI(RdData[7]), 
	.SE(n444), 
	.RN(FE_OFN5_SYNC_RST_1), 
	.Q(REG0[0]), 
	.D(n179), 
	.CK(REF_CLK_O__L7_N13));
   SDFFRQX2M \regArr_reg[0][2]  (.SI(REG0[1]), 
	.SE(n448), 
	.RN(FE_OFN4_SYNC_RST_1), 
	.Q(REG0[2]), 
	.D(n181), 
	.CK(CLK));
   SDFFRQX2M \regArr_reg[0][3]  (.SI(REG0[2]), 
	.SE(n447), 
	.RN(FE_OFN4_SYNC_RST_1), 
	.Q(REG0[3]), 
	.D(n182), 
	.CK(CLK));
   SDFFRQX2M \regArr_reg[0][4]  (.SI(REG0[3]), 
	.SE(n446), 
	.RN(FE_OFN4_SYNC_RST_1), 
	.Q(REG0[4]), 
	.D(n183), 
	.CK(CLK));
   SDFFRQX2M \regArr_reg[0][5]  (.SI(REG0[4]), 
	.SE(n445), 
	.RN(FE_OFN4_SYNC_RST_1), 
	.Q(REG0[5]), 
	.D(n184), 
	.CK(CLK));
   SDFFRQX2M \regArr_reg[0][6]  (.SI(REG0[5]), 
	.SE(n448), 
	.RN(FE_OFN4_SYNC_RST_1), 
	.Q(REG0[6]), 
	.D(n185), 
	.CK(CLK));
   SDFFRQX2M \regArr_reg[1][6]  (.SI(REG1[5]), 
	.SE(n447), 
	.RN(FE_OFN4_SYNC_RST_1), 
	.Q(REG1[6]), 
	.D(n193), 
	.CK(CLK));
   SDFFRQX2M \regArr_reg[0][7]  (.SI(REG0[6]), 
	.SE(n446), 
	.RN(FE_OFN5_SYNC_RST_1), 
	.Q(REG0[7]), 
	.D(n186), 
	.CK(REF_CLK_O__L7_N13));
   SDFFRQX2M \regArr_reg[1][1]  (.SI(REG1[0]), 
	.SE(n444), 
	.RN(FE_OFN5_SYNC_RST_1), 
	.Q(REG1[1]), 
	.D(n188), 
	.CK(CLK));
   SDFFRQX2M \regArr_reg[1][5]  (.SI(REG1[4]), 
	.SE(n448), 
	.RN(FE_OFN4_SYNC_RST_1), 
	.Q(REG1[5]), 
	.D(n192), 
	.CK(CLK));
   SDFFRQX2M \regArr_reg[1][4]  (.SI(REG1[3]), 
	.SE(n447), 
	.RN(FE_OFN4_SYNC_RST_1), 
	.Q(REG1[4]), 
	.D(n191), 
	.CK(CLK));
   SDFFRQX2M \regArr_reg[1][7]  (.SI(REG1[6]), 
	.SE(n446), 
	.RN(FE_OFN5_SYNC_RST_1), 
	.Q(REG1[7]), 
	.D(n194), 
	.CK(REF_CLK_O__L7_N13));
   SDFFRQX2M \regArr_reg[1][3]  (.SI(REG1[2]), 
	.SE(n445), 
	.RN(FE_OFN4_SYNC_RST_1), 
	.Q(REG1[3]), 
	.D(n190), 
	.CK(CLK));
   SDFFRQX2M \regArr_reg[1][2]  (.SI(REG1[1]), 
	.SE(n446), 
	.RN(FE_OFN4_SYNC_RST_1), 
	.Q(REG1[2]), 
	.D(n189), 
	.CK(CLK));
   SDFFRQX2M \regArr_reg[1][0]  (.SI(REG0[7]), 
	.SE(n444), 
	.RN(FE_OFN5_SYNC_RST_1), 
	.Q(REG1[0]), 
	.D(n187), 
	.CK(REF_CLK_O__L7_N13));
   NOR2X2M U140 (.Y(n157), 
	.B(N13), 
	.A(n440));
   NOR2X2M U141 (.Y(n152), 
	.B(N13), 
	.A(N12));
   INVX2M U142 (.Y(n438), 
	.A(n177));
   INVX2M U143 (.Y(n413), 
	.A(n141));
   INVX2M U144 (.Y(n410), 
	.A(n138));
   NAND2X2M U145 (.Y(n177), 
	.B(n439), 
	.A(RdEn));
   NOR2X2M U146 (.Y(n150), 
	.B(RdEn), 
	.A(n439));
   OR2X2M U157 (.Y(n138), 
	.B(n409), 
	.A(n440));
   INVX2M U159 (.Y(n414), 
	.A(n140));
   INVX2M U160 (.Y(n411), 
	.A(n139));
   NAND2X2M U161 (.Y(n154), 
	.B(n152), 
	.A(n155));
   NAND2X2M U162 (.Y(n156), 
	.B(n153), 
	.A(n157));
   NAND2X2M U163 (.Y(n158), 
	.B(n155), 
	.A(n157));
   NAND2X2M U164 (.Y(n159), 
	.B(n153), 
	.A(n160));
   NAND2X2M U165 (.Y(n161), 
	.B(n155), 
	.A(n160));
   NAND2X2M U166 (.Y(n162), 
	.B(n153), 
	.A(n163));
   NAND2X2M U167 (.Y(n165), 
	.B(n155), 
	.A(n163));
   NAND2X2M U168 (.Y(n166), 
	.B(n152), 
	.A(n167));
   NAND2X2M U169 (.Y(n168), 
	.B(n152), 
	.A(n169));
   NAND2X2M U170 (.Y(n170), 
	.B(n157), 
	.A(n167));
   NAND2X2M U171 (.Y(n171), 
	.B(n157), 
	.A(n169));
   NAND2X2M U172 (.Y(n172), 
	.B(n160), 
	.A(n167));
   NAND2X2M U173 (.Y(n173), 
	.B(n160), 
	.A(n169));
   NAND2X2M U174 (.Y(n174), 
	.B(n163), 
	.A(n167));
   NAND2X2M U175 (.Y(n176), 
	.B(n163), 
	.A(n169));
   NAND2X2M U176 (.Y(n151), 
	.B(n153), 
	.A(n152));
   AND2X2M U177 (.Y(n153), 
	.B(n409), 
	.A(n164));
   AND2X2M U178 (.Y(n167), 
	.B(n409), 
	.A(n175));
   INVX2M U179 (.Y(n439), 
	.A(WrEn));
   OR2X2M U185 (.Y(n139), 
	.B(N11), 
	.A(n440));
   OR2X2M U186 (.Y(n140), 
	.B(N12), 
	.A(N11));
   OR2X2M U187 (.Y(n141), 
	.B(N12), 
	.A(n409));
   INVX2M U188 (.Y(n409), 
	.A(N11));
   INVX2M U189 (.Y(n408), 
	.A(N13));
   INVX2M U190 (.Y(n407), 
	.A(N14));
   AND2X2M U191 (.Y(n155), 
	.B(N11), 
	.A(n164));
   AND2X2M U192 (.Y(n169), 
	.B(N11), 
	.A(n175));
   AND2X2M U193 (.Y(n160), 
	.B(n440), 
	.A(N13));
   AND2X2M U194 (.Y(n163), 
	.B(N12), 
	.A(N13));
   NOR2BX2M U195 (.Y(n164), 
	.B(N14), 
	.AN(n150));
   INVX2M U196 (.Y(n440), 
	.A(N12));
   AND2X2M U197 (.Y(n175), 
	.B(n150), 
	.A(N14));
   AO22X1M U198 (.Y(n307), 
	.B1(n177), 
	.B0(RdData[0]), 
	.A1(n438), 
	.A0(N43));
   AO22X1M U199 (.Y(n308), 
	.B1(n177), 
	.B0(RdData[1]), 
	.A1(n438), 
	.A0(N42));
   AO22X1M U200 (.Y(n309), 
	.B1(n177), 
	.B0(RdData[2]), 
	.A1(n438), 
	.A0(N41));
   AO22X1M U201 (.Y(n310), 
	.B1(n177), 
	.B0(RdData[3]), 
	.A1(n438), 
	.A0(N40));
   AO22X1M U202 (.Y(n311), 
	.B1(n177), 
	.B0(RdData[4]), 
	.A1(n438), 
	.A0(N39));
   AO22X1M U203 (.Y(n312), 
	.B1(n177), 
	.B0(RdData[5]), 
	.A1(n438), 
	.A0(N38));
   AO22X1M U204 (.Y(n313), 
	.B1(n177), 
	.B0(RdData[6]), 
	.A1(n438), 
	.A0(N37));
   AO22X1M U205 (.Y(n314), 
	.B1(n177), 
	.B0(RdData[7]), 
	.A1(n438), 
	.A0(N36));
   INVX2M U206 (.Y(n430), 
	.A(WrData[0]));
   INVX2M U207 (.Y(n431), 
	.A(WrData[1]));
   INVX2M U208 (.Y(n432), 
	.A(WrData[2]));
   INVX2M U209 (.Y(n433), 
	.A(WrData[3]));
   INVX2M U210 (.Y(n434), 
	.A(WrData[4]));
   INVX2M U211 (.Y(n435), 
	.A(WrData[5]));
   INVX2M U212 (.Y(n436), 
	.A(WrData[6]));
   INVX2M U213 (.Y(n437), 
	.A(WrData[7]));
   OAI2BB2X1M U214 (.Y(n179), 
	.B1(n430), 
	.B0(n151), 
	.A1N(n151), 
	.A0N(REG0[0]));
   OAI2BB2X1M U215 (.Y(n180), 
	.B1(n431), 
	.B0(n151), 
	.A1N(n151), 
	.A0N(REG0[1]));
   OAI2BB2X1M U216 (.Y(n181), 
	.B1(n432), 
	.B0(n151), 
	.A1N(n151), 
	.A0N(REG0[2]));
   OAI2BB2X1M U217 (.Y(n182), 
	.B1(n433), 
	.B0(n151), 
	.A1N(n151), 
	.A0N(REG0[3]));
   OAI2BB2X1M U218 (.Y(n183), 
	.B1(n434), 
	.B0(n151), 
	.A1N(n151), 
	.A0N(REG0[4]));
   OAI2BB2X1M U219 (.Y(n184), 
	.B1(n435), 
	.B0(n151), 
	.A1N(n151), 
	.A0N(REG0[5]));
   OAI2BB2X1M U220 (.Y(n185), 
	.B1(n436), 
	.B0(n151), 
	.A1N(n151), 
	.A0N(REG0[6]));
   OAI2BB2X1M U221 (.Y(n186), 
	.B1(n437), 
	.B0(n151), 
	.A1N(n151), 
	.A0N(REG0[7]));
   OAI2BB2X1M U222 (.Y(n195), 
	.B1(n156), 
	.B0(n430), 
	.A1N(n156), 
	.A0N(REG2[0]));
   OAI2BB2X1M U223 (.Y(n196), 
	.B1(n156), 
	.B0(n431), 
	.A1N(n156), 
	.A0N(REG2[1]));
   OAI2BB2X1M U224 (.Y(n197), 
	.B1(n156), 
	.B0(n432), 
	.A1N(n156), 
	.A0N(REG2[2]));
   OAI2BB2X1M U225 (.Y(n198), 
	.B1(n156), 
	.B0(n433), 
	.A1N(n156), 
	.A0N(REG2[3]));
   OAI2BB2X1M U226 (.Y(n199), 
	.B1(n156), 
	.B0(n434), 
	.A1N(n156), 
	.A0N(REG2[4]));
   OAI2BB2X1M U227 (.Y(n200), 
	.B1(n156), 
	.B0(n435), 
	.A1N(n156), 
	.A0N(REG2[5]));
   OAI2BB2X1M U228 (.Y(n201), 
	.B1(n156), 
	.B0(n436), 
	.A1N(n156), 
	.A0N(REG2[6]));
   OAI2BB2X1M U229 (.Y(n203), 
	.B1(n158), 
	.B0(n430), 
	.A1N(n158), 
	.A0N(REG3[0]));
   OAI2BB2X1M U230 (.Y(n204), 
	.B1(n158), 
	.B0(n431), 
	.A1N(n158), 
	.A0N(REG3[1]));
   OAI2BB2X1M U231 (.Y(n205), 
	.B1(n158), 
	.B0(n432), 
	.A1N(n158), 
	.A0N(REG3[2]));
   OAI2BB2X1M U232 (.Y(n206), 
	.B1(n158), 
	.B0(n433), 
	.A1N(n158), 
	.A0N(REG3[3]));
   OAI2BB2X1M U233 (.Y(n207), 
	.B1(n158), 
	.B0(n434), 
	.A1N(n158), 
	.A0N(REG3[4]));
   OAI2BB2X1M U234 (.Y(n209), 
	.B1(n158), 
	.B0(n436), 
	.A1N(n158), 
	.A0N(REG3[6]));
   OAI2BB2X1M U235 (.Y(n210), 
	.B1(n158), 
	.B0(n437), 
	.A1N(n158), 
	.A0N(REG3[7]));
   OAI2BB2X1M U236 (.Y(n187), 
	.B1(n154), 
	.B0(n430), 
	.A1N(n154), 
	.A0N(REG1[0]));
   OAI2BB2X1M U237 (.Y(n188), 
	.B1(n154), 
	.B0(n431), 
	.A1N(n154), 
	.A0N(REG1[1]));
   OAI2BB2X1M U238 (.Y(n189), 
	.B1(n154), 
	.B0(n432), 
	.A1N(n154), 
	.A0N(REG1[2]));
   OAI2BB2X1M U239 (.Y(n190), 
	.B1(n154), 
	.B0(n433), 
	.A1N(n154), 
	.A0N(REG1[3]));
   OAI2BB2X1M U240 (.Y(n191), 
	.B1(n154), 
	.B0(n434), 
	.A1N(n154), 
	.A0N(REG1[4]));
   OAI2BB2X1M U241 (.Y(n192), 
	.B1(n154), 
	.B0(n435), 
	.A1N(n154), 
	.A0N(REG1[5]));
   OAI2BB2X1M U242 (.Y(n193), 
	.B1(n154), 
	.B0(n436), 
	.A1N(n154), 
	.A0N(REG1[6]));
   OAI2BB2X1M U243 (.Y(n194), 
	.B1(n154), 
	.B0(n437), 
	.A1N(n154), 
	.A0N(REG1[7]));
   OAI2BB2X1M U244 (.Y(n243), 
	.B1(n166), 
	.B0(n430), 
	.A1N(n166), 
	.A0N(\regArr[8][0] ));
   OAI2BB2X1M U245 (.Y(n244), 
	.B1(n166), 
	.B0(n431), 
	.A1N(n166), 
	.A0N(\regArr[8][1] ));
   OAI2BB2X1M U246 (.Y(n245), 
	.B1(n166), 
	.B0(n432), 
	.A1N(n166), 
	.A0N(\regArr[8][2] ));
   OAI2BB2X1M U247 (.Y(n246), 
	.B1(n166), 
	.B0(n433), 
	.A1N(n166), 
	.A0N(\regArr[8][3] ));
   OAI2BB2X1M U248 (.Y(n247), 
	.B1(n166), 
	.B0(n434), 
	.A1N(n166), 
	.A0N(\regArr[8][4] ));
   OAI2BB2X1M U249 (.Y(n248), 
	.B1(n166), 
	.B0(n435), 
	.A1N(n166), 
	.A0N(\regArr[8][5] ));
   OAI2BB2X1M U250 (.Y(n249), 
	.B1(n166), 
	.B0(n436), 
	.A1N(n166), 
	.A0N(\regArr[8][6] ));
   OAI2BB2X1M U251 (.Y(n250), 
	.B1(n166), 
	.B0(n437), 
	.A1N(n166), 
	.A0N(\regArr[8][7] ));
   OAI2BB2X1M U252 (.Y(n251), 
	.B1(n168), 
	.B0(n430), 
	.A1N(n168), 
	.A0N(\regArr[9][0] ));
   OAI2BB2X1M U253 (.Y(n252), 
	.B1(n168), 
	.B0(n431), 
	.A1N(n168), 
	.A0N(\regArr[9][1] ));
   OAI2BB2X1M U254 (.Y(n253), 
	.B1(n168), 
	.B0(n432), 
	.A1N(n168), 
	.A0N(\regArr[9][2] ));
   OAI2BB2X1M U255 (.Y(n254), 
	.B1(n168), 
	.B0(n433), 
	.A1N(n168), 
	.A0N(\regArr[9][3] ));
   OAI2BB2X1M U256 (.Y(n255), 
	.B1(n168), 
	.B0(n434), 
	.A1N(n168), 
	.A0N(\regArr[9][4] ));
   OAI2BB2X1M U257 (.Y(n256), 
	.B1(n168), 
	.B0(n435), 
	.A1N(n168), 
	.A0N(\regArr[9][5] ));
   OAI2BB2X1M U258 (.Y(n257), 
	.B1(n168), 
	.B0(n436), 
	.A1N(n168), 
	.A0N(\regArr[9][6] ));
   OAI2BB2X1M U259 (.Y(n258), 
	.B1(n168), 
	.B0(n437), 
	.A1N(n168), 
	.A0N(\regArr[9][7] ));
   OAI2BB2X1M U260 (.Y(n259), 
	.B1(n170), 
	.B0(n430), 
	.A1N(n170), 
	.A0N(\regArr[10][0] ));
   OAI2BB2X1M U261 (.Y(n260), 
	.B1(n170), 
	.B0(n431), 
	.A1N(n170), 
	.A0N(\regArr[10][1] ));
   OAI2BB2X1M U262 (.Y(n261), 
	.B1(n170), 
	.B0(n432), 
	.A1N(n170), 
	.A0N(\regArr[10][2] ));
   OAI2BB2X1M U263 (.Y(n262), 
	.B1(n170), 
	.B0(n433), 
	.A1N(n170), 
	.A0N(\regArr[10][3] ));
   OAI2BB2X1M U264 (.Y(n263), 
	.B1(n170), 
	.B0(n434), 
	.A1N(n170), 
	.A0N(\regArr[10][4] ));
   OAI2BB2X1M U265 (.Y(n264), 
	.B1(n170), 
	.B0(n435), 
	.A1N(n170), 
	.A0N(\regArr[10][5] ));
   OAI2BB2X1M U266 (.Y(n265), 
	.B1(n170), 
	.B0(n436), 
	.A1N(n170), 
	.A0N(\regArr[10][6] ));
   OAI2BB2X1M U267 (.Y(n266), 
	.B1(n170), 
	.B0(n437), 
	.A1N(n170), 
	.A0N(\regArr[10][7] ));
   OAI2BB2X1M U268 (.Y(n267), 
	.B1(n171), 
	.B0(n430), 
	.A1N(n171), 
	.A0N(\regArr[11][0] ));
   OAI2BB2X1M U269 (.Y(n268), 
	.B1(n171), 
	.B0(n431), 
	.A1N(n171), 
	.A0N(\regArr[11][1] ));
   OAI2BB2X1M U270 (.Y(n269), 
	.B1(n171), 
	.B0(n432), 
	.A1N(n171), 
	.A0N(\regArr[11][2] ));
   OAI2BB2X1M U271 (.Y(n270), 
	.B1(n171), 
	.B0(n433), 
	.A1N(n171), 
	.A0N(\regArr[11][3] ));
   OAI2BB2X1M U272 (.Y(n271), 
	.B1(n171), 
	.B0(n434), 
	.A1N(n171), 
	.A0N(\regArr[11][4] ));
   OAI2BB2X1M U273 (.Y(n272), 
	.B1(n171), 
	.B0(n435), 
	.A1N(n171), 
	.A0N(\regArr[11][5] ));
   OAI2BB2X1M U274 (.Y(n273), 
	.B1(n171), 
	.B0(n436), 
	.A1N(n171), 
	.A0N(\regArr[11][6] ));
   OAI2BB2X1M U275 (.Y(n274), 
	.B1(n171), 
	.B0(n437), 
	.A1N(n171), 
	.A0N(\regArr[11][7] ));
   OAI2BB2X1M U276 (.Y(n202), 
	.B1(n156), 
	.B0(n437), 
	.A1N(n156), 
	.A0N(REG2[7]));
   OAI2BB2X1M U277 (.Y(n208), 
	.B1(n158), 
	.B0(n435), 
	.A1N(n158), 
	.A0N(REG3[5]));
   OAI2BB2X1M U278 (.Y(n211), 
	.B1(n159), 
	.B0(n430), 
	.A1N(n159), 
	.A0N(\regArr[4][0] ));
   OAI2BB2X1M U279 (.Y(n212), 
	.B1(n159), 
	.B0(n431), 
	.A1N(n159), 
	.A0N(\regArr[4][1] ));
   OAI2BB2X1M U280 (.Y(n213), 
	.B1(n159), 
	.B0(n432), 
	.A1N(n159), 
	.A0N(\regArr[4][2] ));
   OAI2BB2X1M U281 (.Y(n214), 
	.B1(n159), 
	.B0(n433), 
	.A1N(n159), 
	.A0N(\regArr[4][3] ));
   OAI2BB2X1M U282 (.Y(n215), 
	.B1(n159), 
	.B0(n434), 
	.A1N(n159), 
	.A0N(\regArr[4][4] ));
   OAI2BB2X1M U283 (.Y(n216), 
	.B1(n159), 
	.B0(n435), 
	.A1N(n159), 
	.A0N(\regArr[4][5] ));
   OAI2BB2X1M U284 (.Y(n217), 
	.B1(n159), 
	.B0(n436), 
	.A1N(n159), 
	.A0N(\regArr[4][6] ));
   OAI2BB2X1M U285 (.Y(n218), 
	.B1(n159), 
	.B0(n437), 
	.A1N(n159), 
	.A0N(\regArr[4][7] ));
   OAI2BB2X1M U286 (.Y(n219), 
	.B1(n161), 
	.B0(n430), 
	.A1N(n161), 
	.A0N(\regArr[5][0] ));
   OAI2BB2X1M U287 (.Y(n220), 
	.B1(n161), 
	.B0(n431), 
	.A1N(n161), 
	.A0N(\regArr[5][1] ));
   OAI2BB2X1M U288 (.Y(n221), 
	.B1(n161), 
	.B0(n432), 
	.A1N(n161), 
	.A0N(\regArr[5][2] ));
   OAI2BB2X1M U289 (.Y(n222), 
	.B1(n161), 
	.B0(n433), 
	.A1N(n161), 
	.A0N(\regArr[5][3] ));
   OAI2BB2X1M U290 (.Y(n223), 
	.B1(n161), 
	.B0(n434), 
	.A1N(n161), 
	.A0N(\regArr[5][4] ));
   OAI2BB2X1M U291 (.Y(n224), 
	.B1(n161), 
	.B0(n435), 
	.A1N(n161), 
	.A0N(\regArr[5][5] ));
   OAI2BB2X1M U292 (.Y(n225), 
	.B1(n161), 
	.B0(n436), 
	.A1N(n161), 
	.A0N(\regArr[5][6] ));
   OAI2BB2X1M U293 (.Y(n226), 
	.B1(n161), 
	.B0(n437), 
	.A1N(n161), 
	.A0N(\regArr[5][7] ));
   OAI2BB2X1M U294 (.Y(n227), 
	.B1(n162), 
	.B0(n430), 
	.A1N(n162), 
	.A0N(\regArr[6][0] ));
   OAI2BB2X1M U295 (.Y(n228), 
	.B1(n162), 
	.B0(n431), 
	.A1N(n162), 
	.A0N(\regArr[6][1] ));
   OAI2BB2X1M U296 (.Y(n229), 
	.B1(n162), 
	.B0(n432), 
	.A1N(n162), 
	.A0N(\regArr[6][2] ));
   OAI2BB2X1M U297 (.Y(n230), 
	.B1(n162), 
	.B0(n433), 
	.A1N(n162), 
	.A0N(\regArr[6][3] ));
   OAI2BB2X1M U298 (.Y(n231), 
	.B1(n162), 
	.B0(n434), 
	.A1N(n162), 
	.A0N(\regArr[6][4] ));
   OAI2BB2X1M U299 (.Y(n232), 
	.B1(n162), 
	.B0(n435), 
	.A1N(n162), 
	.A0N(\regArr[6][5] ));
   OAI2BB2X1M U300 (.Y(n233), 
	.B1(n162), 
	.B0(n436), 
	.A1N(n162), 
	.A0N(\regArr[6][6] ));
   OAI2BB2X1M U301 (.Y(n234), 
	.B1(n162), 
	.B0(n437), 
	.A1N(n162), 
	.A0N(\regArr[6][7] ));
   OAI2BB2X1M U302 (.Y(n235), 
	.B1(n165), 
	.B0(n430), 
	.A1N(n165), 
	.A0N(\regArr[7][0] ));
   OAI2BB2X1M U303 (.Y(n236), 
	.B1(n165), 
	.B0(n431), 
	.A1N(n165), 
	.A0N(\regArr[7][1] ));
   OAI2BB2X1M U304 (.Y(n237), 
	.B1(n165), 
	.B0(n432), 
	.A1N(n165), 
	.A0N(\regArr[7][2] ));
   OAI2BB2X1M U305 (.Y(n238), 
	.B1(n165), 
	.B0(n433), 
	.A1N(n165), 
	.A0N(\regArr[7][3] ));
   OAI2BB2X1M U306 (.Y(n239), 
	.B1(n165), 
	.B0(n434), 
	.A1N(n165), 
	.A0N(\regArr[7][4] ));
   OAI2BB2X1M U307 (.Y(n240), 
	.B1(n165), 
	.B0(n435), 
	.A1N(n165), 
	.A0N(\regArr[7][5] ));
   OAI2BB2X1M U308 (.Y(n241), 
	.B1(n165), 
	.B0(n436), 
	.A1N(n165), 
	.A0N(\regArr[7][6] ));
   OAI2BB2X1M U309 (.Y(n242), 
	.B1(n165), 
	.B0(n437), 
	.A1N(n165), 
	.A0N(\regArr[7][7] ));
   OAI2BB2X1M U310 (.Y(n275), 
	.B1(n172), 
	.B0(n430), 
	.A1N(n172), 
	.A0N(\regArr[12][0] ));
   OAI2BB2X1M U311 (.Y(n276), 
	.B1(n172), 
	.B0(n431), 
	.A1N(n172), 
	.A0N(\regArr[12][1] ));
   OAI2BB2X1M U312 (.Y(n277), 
	.B1(n172), 
	.B0(n432), 
	.A1N(n172), 
	.A0N(\regArr[12][2] ));
   OAI2BB2X1M U313 (.Y(n278), 
	.B1(n172), 
	.B0(n433), 
	.A1N(n172), 
	.A0N(\regArr[12][3] ));
   OAI2BB2X1M U314 (.Y(n279), 
	.B1(n172), 
	.B0(n434), 
	.A1N(n172), 
	.A0N(\regArr[12][4] ));
   OAI2BB2X1M U315 (.Y(n280), 
	.B1(n172), 
	.B0(n435), 
	.A1N(n172), 
	.A0N(\regArr[12][5] ));
   OAI2BB2X1M U316 (.Y(n281), 
	.B1(n172), 
	.B0(n436), 
	.A1N(n172), 
	.A0N(\regArr[12][6] ));
   OAI2BB2X1M U317 (.Y(n282), 
	.B1(n172), 
	.B0(n437), 
	.A1N(n172), 
	.A0N(\regArr[12][7] ));
   OAI2BB2X1M U318 (.Y(n283), 
	.B1(n173), 
	.B0(n430), 
	.A1N(n173), 
	.A0N(\regArr[13][0] ));
   OAI2BB2X1M U319 (.Y(n284), 
	.B1(n173), 
	.B0(n431), 
	.A1N(n173), 
	.A0N(\regArr[13][1] ));
   OAI2BB2X1M U320 (.Y(n285), 
	.B1(n173), 
	.B0(n432), 
	.A1N(n173), 
	.A0N(\regArr[13][2] ));
   OAI2BB2X1M U321 (.Y(n286), 
	.B1(n173), 
	.B0(n433), 
	.A1N(n173), 
	.A0N(\regArr[13][3] ));
   OAI2BB2X1M U322 (.Y(n287), 
	.B1(n173), 
	.B0(n434), 
	.A1N(n173), 
	.A0N(\regArr[13][4] ));
   OAI2BB2X1M U323 (.Y(n288), 
	.B1(n173), 
	.B0(n435), 
	.A1N(n173), 
	.A0N(\regArr[13][5] ));
   OAI2BB2X1M U324 (.Y(n289), 
	.B1(n173), 
	.B0(n436), 
	.A1N(n173), 
	.A0N(\regArr[13][6] ));
   OAI2BB2X1M U325 (.Y(n290), 
	.B1(n173), 
	.B0(n437), 
	.A1N(n173), 
	.A0N(\regArr[13][7] ));
   OAI2BB2X1M U326 (.Y(n291), 
	.B1(n174), 
	.B0(n430), 
	.A1N(n174), 
	.A0N(\regArr[14][0] ));
   OAI2BB2X1M U327 (.Y(n292), 
	.B1(n174), 
	.B0(n431), 
	.A1N(n174), 
	.A0N(\regArr[14][1] ));
   OAI2BB2X1M U328 (.Y(n293), 
	.B1(n174), 
	.B0(n432), 
	.A1N(n174), 
	.A0N(\regArr[14][2] ));
   OAI2BB2X1M U329 (.Y(n294), 
	.B1(n174), 
	.B0(n433), 
	.A1N(n174), 
	.A0N(\regArr[14][3] ));
   OAI2BB2X1M U330 (.Y(n295), 
	.B1(n174), 
	.B0(n434), 
	.A1N(n174), 
	.A0N(\regArr[14][4] ));
   OAI2BB2X1M U331 (.Y(n296), 
	.B1(n174), 
	.B0(n435), 
	.A1N(n174), 
	.A0N(\regArr[14][5] ));
   OAI2BB2X1M U332 (.Y(n297), 
	.B1(n174), 
	.B0(n436), 
	.A1N(n174), 
	.A0N(\regArr[14][6] ));
   OAI2BB2X1M U333 (.Y(n298), 
	.B1(n174), 
	.B0(n437), 
	.A1N(n174), 
	.A0N(\regArr[14][7] ));
   OAI2BB2X1M U334 (.Y(n299), 
	.B1(n176), 
	.B0(n430), 
	.A1N(n176), 
	.A0N(\regArr[15][0] ));
   OAI2BB2X1M U335 (.Y(n300), 
	.B1(n176), 
	.B0(n431), 
	.A1N(n176), 
	.A0N(\regArr[15][1] ));
   OAI2BB2X1M U336 (.Y(n301), 
	.B1(n176), 
	.B0(n432), 
	.A1N(n176), 
	.A0N(\regArr[15][2] ));
   OAI2BB2X1M U337 (.Y(n302), 
	.B1(n176), 
	.B0(n433), 
	.A1N(n176), 
	.A0N(\regArr[15][3] ));
   OAI2BB2X1M U338 (.Y(n303), 
	.B1(n176), 
	.B0(n434), 
	.A1N(n176), 
	.A0N(\regArr[15][4] ));
   OAI2BB2X1M U339 (.Y(n304), 
	.B1(n176), 
	.B0(n435), 
	.A1N(n176), 
	.A0N(\regArr[15][5] ));
   OAI2BB2X1M U340 (.Y(n305), 
	.B1(n176), 
	.B0(n436), 
	.A1N(n176), 
	.A0N(\regArr[15][6] ));
   OAI2BB2X1M U341 (.Y(n306), 
	.B1(n176), 
	.B0(n437), 
	.A1N(n176), 
	.A0N(\regArr[15][7] ));
   AO21XLM U342 (.Y(n178), 
	.B0(n438), 
	.A1(n150), 
	.A0(RdData_Valid));
   AOI22X1M U343 (.Y(n143), 
	.B1(n410), 
	.B0(\regArr[11][0] ), 
	.A1(n411), 
	.A0(\regArr[10][0] ));
   AOI22X1M U344 (.Y(n142), 
	.B1(n413), 
	.B0(\regArr[9][0] ), 
	.A1(n414), 
	.A0(\regArr[8][0] ));
   CLKNAND2X2M U345 (.Y(n391), 
	.B(n408), 
	.A(N14));
   AOI21X1M U346 (.Y(n318), 
	.B0(n391), 
	.A1(n142), 
	.A0(n143));
   AOI22X1M U347 (.Y(n145), 
	.B1(n410), 
	.B0(\regArr[15][0] ), 
	.A1(n411), 
	.A0(\regArr[14][0] ));
   AOI22X1M U348 (.Y(n144), 
	.B1(n413), 
	.B0(\regArr[13][0] ), 
	.A1(n414), 
	.A0(\regArr[12][0] ));
   CLKNAND2X2M U349 (.Y(n394), 
	.B(N13), 
	.A(N14));
   AOI21X1M U350 (.Y(n317), 
	.B0(n394), 
	.A1(n144), 
	.A0(n145));
   AOI22X1M U351 (.Y(n147), 
	.B1(n410), 
	.B0(REG3[0]), 
	.A1(n411), 
	.A0(REG2[0]));
   AOI22X1M U352 (.Y(n146), 
	.B1(n413), 
	.B0(REG1[0]), 
	.A1(n414), 
	.A0(REG0[0]));
   CLKNAND2X2M U353 (.Y(n397), 
	.B(n407), 
	.A(n408));
   AOI21X1M U354 (.Y(n316), 
	.B0(n397), 
	.A1(n146), 
	.A0(n147));
   AOI22X1M U355 (.Y(n149), 
	.B1(n410), 
	.B0(\regArr[7][0] ), 
	.A1(n411), 
	.A0(\regArr[6][0] ));
   AOI22X1M U356 (.Y(n148), 
	.B1(n413), 
	.B0(\regArr[5][0] ), 
	.A1(n414), 
	.A0(\regArr[4][0] ));
   CLKNAND2X2M U357 (.Y(n400), 
	.B(n407), 
	.A(N13));
   AOI21X1M U358 (.Y(n315), 
	.B0(n400), 
	.A1(n148), 
	.A0(n149));
   OR4X1M U359 (.Y(N43), 
	.D(n315), 
	.C(n316), 
	.B(n317), 
	.A(n318));
   AOI22X1M U360 (.Y(n320), 
	.B1(n410), 
	.B0(\regArr[11][1] ), 
	.A1(n411), 
	.A0(\regArr[10][1] ));
   AOI22X1M U361 (.Y(n319), 
	.B1(n413), 
	.B0(\regArr[9][1] ), 
	.A1(n414), 
	.A0(\regArr[8][1] ));
   AOI21X1M U362 (.Y(n330), 
	.B0(n391), 
	.A1(n319), 
	.A0(n320));
   AOI22X1M U363 (.Y(n322), 
	.B1(n410), 
	.B0(\regArr[15][1] ), 
	.A1(n411), 
	.A0(\regArr[14][1] ));
   AOI22X1M U364 (.Y(n321), 
	.B1(n413), 
	.B0(\regArr[13][1] ), 
	.A1(n414), 
	.A0(\regArr[12][1] ));
   AOI21X1M U365 (.Y(n329), 
	.B0(n394), 
	.A1(n321), 
	.A0(n322));
   AOI22X1M U366 (.Y(n324), 
	.B1(n410), 
	.B0(REG3[1]), 
	.A1(n411), 
	.A0(REG2[1]));
   AOI22X1M U367 (.Y(n323), 
	.B1(n413), 
	.B0(REG1[1]), 
	.A1(n414), 
	.A0(REG0[1]));
   AOI21X1M U368 (.Y(n328), 
	.B0(n397), 
	.A1(n323), 
	.A0(n324));
   AOI22X1M U369 (.Y(n326), 
	.B1(n410), 
	.B0(\regArr[7][1] ), 
	.A1(n411), 
	.A0(\regArr[6][1] ));
   AOI22X1M U370 (.Y(n325), 
	.B1(n413), 
	.B0(\regArr[5][1] ), 
	.A1(n414), 
	.A0(\regArr[4][1] ));
   AOI21X1M U371 (.Y(n327), 
	.B0(n400), 
	.A1(n325), 
	.A0(n326));
   OR4X1M U372 (.Y(N42), 
	.D(n327), 
	.C(n328), 
	.B(n329), 
	.A(n330));
   AOI22X1M U373 (.Y(n332), 
	.B1(n410), 
	.B0(\regArr[11][2] ), 
	.A1(n411), 
	.A0(\regArr[10][2] ));
   AOI22X1M U374 (.Y(n331), 
	.B1(n413), 
	.B0(\regArr[9][2] ), 
	.A1(n414), 
	.A0(\regArr[8][2] ));
   AOI21X1M U375 (.Y(n342), 
	.B0(n391), 
	.A1(n331), 
	.A0(n332));
   AOI22X1M U376 (.Y(n334), 
	.B1(n410), 
	.B0(\regArr[15][2] ), 
	.A1(n411), 
	.A0(\regArr[14][2] ));
   AOI22X1M U377 (.Y(n333), 
	.B1(n413), 
	.B0(\regArr[13][2] ), 
	.A1(n414), 
	.A0(\regArr[12][2] ));
   AOI21X1M U378 (.Y(n341), 
	.B0(n394), 
	.A1(n333), 
	.A0(n334));
   AOI22X1M U379 (.Y(n336), 
	.B1(n410), 
	.B0(REG3[2]), 
	.A1(n411), 
	.A0(REG2[2]));
   AOI22X1M U380 (.Y(n335), 
	.B1(n413), 
	.B0(REG1[2]), 
	.A1(n414), 
	.A0(REG0[2]));
   AOI21X1M U381 (.Y(n340), 
	.B0(n397), 
	.A1(n335), 
	.A0(n336));
   AOI22X1M U382 (.Y(n338), 
	.B1(n410), 
	.B0(\regArr[7][2] ), 
	.A1(n411), 
	.A0(\regArr[6][2] ));
   AOI22X1M U383 (.Y(n337), 
	.B1(n413), 
	.B0(\regArr[5][2] ), 
	.A1(n414), 
	.A0(\regArr[4][2] ));
   AOI21X1M U384 (.Y(n339), 
	.B0(n400), 
	.A1(n337), 
	.A0(n338));
   OR4X1M U385 (.Y(N41), 
	.D(n339), 
	.C(n340), 
	.B(n341), 
	.A(n342));
   AOI22X1M U386 (.Y(n344), 
	.B1(n410), 
	.B0(\regArr[11][3] ), 
	.A1(n411), 
	.A0(\regArr[10][3] ));
   AOI22X1M U387 (.Y(n343), 
	.B1(n413), 
	.B0(\regArr[9][3] ), 
	.A1(n414), 
	.A0(\regArr[8][3] ));
   AOI21X1M U388 (.Y(n354), 
	.B0(n391), 
	.A1(n343), 
	.A0(n344));
   AOI22X1M U389 (.Y(n346), 
	.B1(n410), 
	.B0(\regArr[15][3] ), 
	.A1(n411), 
	.A0(\regArr[14][3] ));
   AOI22X1M U390 (.Y(n345), 
	.B1(n413), 
	.B0(\regArr[13][3] ), 
	.A1(n414), 
	.A0(\regArr[12][3] ));
   AOI21X1M U391 (.Y(n353), 
	.B0(n394), 
	.A1(n345), 
	.A0(n346));
   AOI22X1M U392 (.Y(n348), 
	.B1(n410), 
	.B0(REG3[3]), 
	.A1(n411), 
	.A0(REG2[3]));
   AOI22X1M U393 (.Y(n347), 
	.B1(n413), 
	.B0(REG1[3]), 
	.A1(n414), 
	.A0(REG0[3]));
   AOI21X1M U394 (.Y(n352), 
	.B0(n397), 
	.A1(n347), 
	.A0(n348));
   AOI22X1M U395 (.Y(n350), 
	.B1(n410), 
	.B0(\regArr[7][3] ), 
	.A1(n411), 
	.A0(\regArr[6][3] ));
   AOI22X1M U396 (.Y(n349), 
	.B1(n413), 
	.B0(\regArr[5][3] ), 
	.A1(n414), 
	.A0(\regArr[4][3] ));
   AOI21X1M U397 (.Y(n351), 
	.B0(n400), 
	.A1(n349), 
	.A0(n350));
   OR4X1M U398 (.Y(N40), 
	.D(n351), 
	.C(n352), 
	.B(n353), 
	.A(n354));
   AOI22X1M U399 (.Y(n356), 
	.B1(n410), 
	.B0(\regArr[11][4] ), 
	.A1(n411), 
	.A0(\regArr[10][4] ));
   AOI22X1M U400 (.Y(n355), 
	.B1(n413), 
	.B0(\regArr[9][4] ), 
	.A1(n414), 
	.A0(\regArr[8][4] ));
   AOI21X1M U401 (.Y(n366), 
	.B0(n391), 
	.A1(n355), 
	.A0(n356));
   AOI22X1M U402 (.Y(n358), 
	.B1(n410), 
	.B0(\regArr[15][4] ), 
	.A1(n411), 
	.A0(\regArr[14][4] ));
   AOI22X1M U403 (.Y(n357), 
	.B1(n413), 
	.B0(\regArr[13][4] ), 
	.A1(n414), 
	.A0(\regArr[12][4] ));
   AOI21X1M U404 (.Y(n365), 
	.B0(n394), 
	.A1(n357), 
	.A0(n358));
   AOI22X1M U405 (.Y(n360), 
	.B1(n410), 
	.B0(REG3[4]), 
	.A1(n411), 
	.A0(REG2[4]));
   AOI22X1M U406 (.Y(n359), 
	.B1(n413), 
	.B0(REG1[4]), 
	.A1(n414), 
	.A0(REG0[4]));
   AOI21X1M U407 (.Y(n364), 
	.B0(n397), 
	.A1(n359), 
	.A0(n360));
   AOI22X1M U408 (.Y(n362), 
	.B1(n410), 
	.B0(\regArr[7][4] ), 
	.A1(n411), 
	.A0(\regArr[6][4] ));
   AOI22X1M U409 (.Y(n361), 
	.B1(n413), 
	.B0(\regArr[5][4] ), 
	.A1(n414), 
	.A0(\regArr[4][4] ));
   AOI21X1M U410 (.Y(n363), 
	.B0(n400), 
	.A1(n361), 
	.A0(n362));
   OR4X1M U411 (.Y(N39), 
	.D(n363), 
	.C(n364), 
	.B(n365), 
	.A(n366));
   AOI22X1M U412 (.Y(n368), 
	.B1(n410), 
	.B0(\regArr[11][5] ), 
	.A1(n411), 
	.A0(\regArr[10][5] ));
   AOI22X1M U413 (.Y(n367), 
	.B1(n413), 
	.B0(\regArr[9][5] ), 
	.A1(n414), 
	.A0(\regArr[8][5] ));
   AOI21X1M U414 (.Y(n378), 
	.B0(n391), 
	.A1(n367), 
	.A0(n368));
   AOI22X1M U415 (.Y(n370), 
	.B1(n410), 
	.B0(\regArr[15][5] ), 
	.A1(n411), 
	.A0(\regArr[14][5] ));
   AOI22X1M U416 (.Y(n369), 
	.B1(n413), 
	.B0(\regArr[13][5] ), 
	.A1(n414), 
	.A0(\regArr[12][5] ));
   AOI21X1M U417 (.Y(n377), 
	.B0(n394), 
	.A1(n369), 
	.A0(n370));
   AOI22X1M U418 (.Y(n372), 
	.B1(n410), 
	.B0(REG3[5]), 
	.A1(n411), 
	.A0(REG2[5]));
   AOI22X1M U419 (.Y(n371), 
	.B1(n413), 
	.B0(REG1[5]), 
	.A1(n414), 
	.A0(REG0[5]));
   AOI21X1M U420 (.Y(n376), 
	.B0(n397), 
	.A1(n371), 
	.A0(n372));
   AOI22X1M U421 (.Y(n374), 
	.B1(n410), 
	.B0(\regArr[7][5] ), 
	.A1(n411), 
	.A0(\regArr[6][5] ));
   AOI22X1M U422 (.Y(n373), 
	.B1(n413), 
	.B0(\regArr[5][5] ), 
	.A1(n414), 
	.A0(\regArr[4][5] ));
   AOI21X1M U423 (.Y(n375), 
	.B0(n400), 
	.A1(n373), 
	.A0(n374));
   OR4X1M U424 (.Y(N38), 
	.D(n375), 
	.C(n376), 
	.B(n377), 
	.A(n378));
   AOI22X1M U425 (.Y(n380), 
	.B1(n410), 
	.B0(\regArr[11][6] ), 
	.A1(n411), 
	.A0(\regArr[10][6] ));
   AOI22X1M U426 (.Y(n379), 
	.B1(n413), 
	.B0(\regArr[9][6] ), 
	.A1(n414), 
	.A0(\regArr[8][6] ));
   AOI21X1M U427 (.Y(n390), 
	.B0(n391), 
	.A1(n379), 
	.A0(n380));
   AOI22X1M U428 (.Y(n382), 
	.B1(n410), 
	.B0(\regArr[15][6] ), 
	.A1(n411), 
	.A0(\regArr[14][6] ));
   AOI22X1M U429 (.Y(n381), 
	.B1(n413), 
	.B0(\regArr[13][6] ), 
	.A1(n414), 
	.A0(\regArr[12][6] ));
   AOI21X1M U430 (.Y(n389), 
	.B0(n394), 
	.A1(n381), 
	.A0(n382));
   AOI22X1M U431 (.Y(n384), 
	.B1(n410), 
	.B0(REG3[6]), 
	.A1(n411), 
	.A0(REG2[6]));
   AOI22X1M U432 (.Y(n383), 
	.B1(n413), 
	.B0(REG1[6]), 
	.A1(n414), 
	.A0(REG0[6]));
   AOI21X1M U433 (.Y(n388), 
	.B0(n397), 
	.A1(n383), 
	.A0(n384));
   AOI22X1M U434 (.Y(n386), 
	.B1(n410), 
	.B0(\regArr[7][6] ), 
	.A1(n411), 
	.A0(\regArr[6][6] ));
   AOI22X1M U435 (.Y(n385), 
	.B1(n413), 
	.B0(\regArr[5][6] ), 
	.A1(n414), 
	.A0(\regArr[4][6] ));
   AOI21X1M U436 (.Y(n387), 
	.B0(n400), 
	.A1(n385), 
	.A0(n386));
   OR4X1M U437 (.Y(N37), 
	.D(n387), 
	.C(n388), 
	.B(n389), 
	.A(n390));
   AOI22X1M U438 (.Y(n393), 
	.B1(n410), 
	.B0(\regArr[11][7] ), 
	.A1(n411), 
	.A0(\regArr[10][7] ));
   AOI22X1M U439 (.Y(n392), 
	.B1(n413), 
	.B0(\regArr[9][7] ), 
	.A1(n414), 
	.A0(\regArr[8][7] ));
   AOI21X1M U440 (.Y(n406), 
	.B0(n391), 
	.A1(n392), 
	.A0(n393));
   AOI22X1M U441 (.Y(n396), 
	.B1(n410), 
	.B0(\regArr[15][7] ), 
	.A1(n411), 
	.A0(\regArr[14][7] ));
   AOI22X1M U442 (.Y(n395), 
	.B1(n413), 
	.B0(\regArr[13][7] ), 
	.A1(n414), 
	.A0(\regArr[12][7] ));
   AOI21X1M U443 (.Y(n405), 
	.B0(n394), 
	.A1(n395), 
	.A0(n396));
   AOI22X1M U444 (.Y(n399), 
	.B1(n410), 
	.B0(REG3[7]), 
	.A1(n411), 
	.A0(REG2[7]));
   AOI22X1M U445 (.Y(n398), 
	.B1(n413), 
	.B0(REG1[7]), 
	.A1(n414), 
	.A0(REG0[7]));
   AOI21X1M U446 (.Y(n404), 
	.B0(n397), 
	.A1(n398), 
	.A0(n399));
   AOI22X1M U447 (.Y(n402), 
	.B1(n410), 
	.B0(\regArr[7][7] ), 
	.A1(n411), 
	.A0(\regArr[6][7] ));
   AOI22X1M U448 (.Y(n401), 
	.B1(n413), 
	.B0(\regArr[5][7] ), 
	.A1(n414), 
	.A0(\regArr[4][7] ));
   AOI21X1M U449 (.Y(n403), 
	.B0(n400), 
	.A1(n401), 
	.A0(n402));
   OR4X1M U450 (.Y(N36), 
	.D(n403), 
	.C(n404), 
	.B(n405), 
	.A(n406));
   INVXLM U451 (.Y(n449), 
	.A(test_se));
   INVX2M U452 (.Y(n444), 
	.A(n449));
   INVX2M U453 (.Y(n445), 
	.A(n449));
   DLY1X4M U454 (.Y(n446), 
	.A(test_se));
   DLY1X4M U455 (.Y(n447), 
	.A(test_se));
   DLY1X4M U456 (.Y(n448), 
	.A(test_se));
endmodule

module SYS_CTRL_test_1 (
	CLK, 
	RST, 
	ALU_OUT, 
	FULL, 
	OUT_Valid, 
	RdData, 
	RdData_Valid, 
	RX_P_DATA, 
	RX_D_VLD, 
	ALU_FUN, 
	WR_INC, 
	WR_DATA, 
	EN, 
	CLK_EN, 
	Address, 
	WrEn, 
	RdEn, 
	WrData, 
	test_si2, 
	test_si1, 
	test_so2, 
	test_so1, 
	test_se, 
	FE_OFN2_SYNC_RST_1, 
	FE_OFN1_SYNC_RST_1, 
	REF_CLK_O__L7_N1, 
	REF_CLK_O__L7_N14, 
	REF_CLK_O__L7_N2);
   input CLK;
   input RST;
   input [15:0] ALU_OUT;
   input FULL;
   input OUT_Valid;
   input [7:0] RdData;
   input RdData_Valid;
   input [7:0] RX_P_DATA;
   input RX_D_VLD;
   output [3:0] ALU_FUN;
   output WR_INC;
   output [7:0] WR_DATA;
   output EN;
   output CLK_EN;
   output [3:0] Address;
   output WrEn;
   output RdEn;
   output [7:0] WrData;
   input test_si2;
   input test_si1;
   output test_so2;
   output test_so1;
   input test_se;
   input FE_OFN2_SYNC_RST_1;
   input FE_OFN1_SYNC_RST_1;
   input REF_CLK_O__L7_N1;
   input REF_CLK_O__L7_N14;
   input REF_CLK_O__L7_N2;

   // Internal wires
   wire FE_PHN11_SI_3_;
   wire FE_PHN10_SI_3_;
   wire FE_PHN9_SI_3_;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n95;
   wire n96;
   wire n97;
   wire n98;
   wire n99;
   wire n100;
   wire n101;
   wire n102;
   wire n103;
   wire n104;
   wire n105;
   wire n106;
   wire n107;
   wire n108;
   wire n109;
   wire n110;
   wire n111;
   wire n112;
   wire n113;
   wire n114;
   wire n115;
   wire n116;
   wire n117;
   wire n118;
   wire n119;
   wire n120;
   wire n121;
   wire n122;
   wire n123;
   wire n124;
   wire n125;
   wire n126;
   wire n127;
   wire n128;
   wire n129;
   wire n130;
   wire n131;
   wire n132;
   wire n133;
   wire n134;
   wire n135;
   wire n136;
   wire n137;
   wire n138;
   wire n139;
   wire n140;
   wire n141;
   wire n142;
   wire n143;
   wire n144;
   wire n145;
   wire n146;
   wire n147;
   wire n148;
   wire n149;
   wire n150;
   wire n151;
   wire n152;
   wire n153;
   wire n154;
   wire n155;
   wire n156;
   wire n157;
   wire n158;
   wire n159;
   wire n160;
   wire n161;
   wire n162;
   wire n163;
   wire n164;
   wire n165;
   wire n166;
   wire n167;
   wire n168;
   wire n169;
   wire n170;
   wire n171;
   wire n172;
   wire n173;
   wire n174;
   wire n175;
   wire n176;
   wire n177;
   wire n178;
   wire n179;
   wire n180;
   wire n181;
   wire n182;
   wire n183;
   wire n184;
   wire n185;
   wire n186;
   wire n187;
   wire n188;
   wire n73;
   wire n74;
   wire n75;
   wire n76;
   wire n77;
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n82;
   wire n83;
   wire n84;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire n90;
   wire n91;
   wire n92;
   wire n93;
   wire n94;
   wire n189;
   wire n190;
   wire n193;
   wire n194;
   wire n195;
   wire n196;
   wire n197;
   wire n198;
   wire n199;
   wire n200;
   wire n201;
   wire n202;
   wire n203;
   wire n205;
   wire n206;
   wire n207;
   wire n208;
   wire n209;
   wire n210;
   wire n211;
   wire n212;
   wire n213;
   wire n214;
   wire n215;
   wire n216;
   wire n217;
   wire n218;
   wire n219;
   wire n220;
   wire n221;
   wire n222;
   wire n223;
   wire n226;
   wire n227;
   wire n228;
   wire n229;
   wire [4:0] cur_state;
   wire [4:0] nxt_state;

   DLY4X1M FE_PHC11_SI_3_ (.Y(FE_PHN11_SI_3_), 
	.A(FE_PHN10_SI_3_));
   DLY4X1M FE_PHC10_SI_3_ (.Y(FE_PHN10_SI_3_), 
	.A(FE_PHN9_SI_3_));
   DLY4X1M FE_PHC9_SI_3_ (.Y(FE_PHN9_SI_3_), 
	.A(test_si2));
   SDFFRX1M \opA_reg_reg[1]  (.SI(n219), 
	.SE(n228), 
	.RN(FE_OFN1_SYNC_RST_1), 
	.QN(n56), 
	.Q(n218), 
	.D(n181), 
	.CK(REF_CLK_O__L7_N14));
   SDFFRX1M \opA_reg_reg[2]  (.SI(n218), 
	.SE(n227), 
	.RN(FE_OFN1_SYNC_RST_1), 
	.QN(n55), 
	.Q(n217), 
	.D(n182), 
	.CK(REF_CLK_O__L7_N14));
   SDFFRX1M \opA_reg_reg[3]  (.SI(n217), 
	.SE(n229), 
	.RN(FE_OFN1_SYNC_RST_1), 
	.QN(n54), 
	.Q(n216), 
	.D(n183), 
	.CK(REF_CLK_O__L7_N1));
   SDFFRX1M \opA_reg_reg[4]  (.SI(n216), 
	.SE(n228), 
	.RN(FE_OFN2_SYNC_RST_1), 
	.QN(n53), 
	.Q(n215), 
	.D(n184), 
	.CK(REF_CLK_O__L7_N1));
   SDFFRX1M \opA_reg_reg[5]  (.SI(n215), 
	.SE(n227), 
	.RN(FE_OFN2_SYNC_RST_1), 
	.QN(n52), 
	.Q(n214), 
	.D(n185), 
	.CK(REF_CLK_O__L7_N1));
   SDFFRX1M \opA_reg_reg[6]  (.SI(n214), 
	.SE(n229), 
	.RN(FE_OFN2_SYNC_RST_1), 
	.QN(n51), 
	.Q(n213), 
	.D(n186), 
	.CK(CLK));
   SDFFRX1M \opA_reg_reg[7]  (.SI(n213), 
	.SE(n228), 
	.RN(RST), 
	.QN(n50), 
	.Q(n212), 
	.D(n187), 
	.CK(CLK));
   SDFFRX1M \opA_reg_reg[0]  (.SI(cur_state[4]), 
	.SE(n227), 
	.RN(FE_OFN1_SYNC_RST_1), 
	.QN(n57), 
	.Q(n219), 
	.D(n188), 
	.CK(REF_CLK_O__L7_N14));
   SDFFRX1M \opB_reg_reg[1]  (.SI(n211), 
	.SE(n229), 
	.RN(FE_OFN1_SYNC_RST_1), 
	.QN(n64), 
	.Q(n210), 
	.D(n173), 
	.CK(CLK));
   SDFFRX1M \opB_reg_reg[2]  (.SI(n210), 
	.SE(n228), 
	.RN(FE_OFN1_SYNC_RST_1), 
	.QN(n63), 
	.Q(n209), 
	.D(n174), 
	.CK(REF_CLK_O__L7_N1));
   SDFFRX1M \opB_reg_reg[3]  (.SI(n209), 
	.SE(n227), 
	.RN(FE_OFN2_SYNC_RST_1), 
	.QN(n62), 
	.Q(n208), 
	.D(n175), 
	.CK(REF_CLK_O__L7_N1));
   SDFFRX1M \opB_reg_reg[4]  (.SI(n208), 
	.SE(n229), 
	.RN(FE_OFN2_SYNC_RST_1), 
	.QN(n61), 
	.Q(n207), 
	.D(n176), 
	.CK(REF_CLK_O__L7_N1));
   SDFFRX1M \opB_reg_reg[5]  (.SI(n207), 
	.SE(n228), 
	.RN(FE_OFN2_SYNC_RST_1), 
	.QN(n60), 
	.Q(n206), 
	.D(n177), 
	.CK(CLK));
   SDFFRX1M \opB_reg_reg[6]  (.SI(n206), 
	.SE(n227), 
	.RN(FE_OFN2_SYNC_RST_1), 
	.QN(n59), 
	.Q(n205), 
	.D(n178), 
	.CK(CLK));
   SDFFRX1M \opB_reg_reg[0]  (.SI(n212), 
	.SE(n228), 
	.RN(RST), 
	.QN(n65), 
	.Q(n211), 
	.D(n180), 
	.CK(CLK));
   SDFFRX1M \wr_data_reg_reg[1]  (.SI(n199), 
	.SE(n227), 
	.RN(FE_OFN1_SYNC_RST_1), 
	.QN(n48), 
	.Q(n198), 
	.D(n161), 
	.CK(REF_CLK_O__L7_N14));
   SDFFRX1M \wr_data_reg_reg[2]  (.SI(n198), 
	.SE(n229), 
	.RN(FE_OFN1_SYNC_RST_1), 
	.QN(n47), 
	.Q(n197), 
	.D(n162), 
	.CK(REF_CLK_O__L7_N14));
   SDFFRX1M \wr_data_reg_reg[3]  (.SI(n197), 
	.SE(n228), 
	.RN(FE_OFN1_SYNC_RST_1), 
	.QN(n46), 
	.Q(n196), 
	.D(n163), 
	.CK(REF_CLK_O__L7_N14));
   SDFFRX1M \wr_data_reg_reg[4]  (.SI(n196), 
	.SE(n227), 
	.RN(FE_OFN2_SYNC_RST_1), 
	.QN(n45), 
	.Q(n195), 
	.D(n164), 
	.CK(REF_CLK_O__L7_N1));
   SDFFRX1M \wr_data_reg_reg[5]  (.SI(n195), 
	.SE(n229), 
	.RN(FE_OFN2_SYNC_RST_1), 
	.QN(n44), 
	.Q(n194), 
	.D(n165), 
	.CK(REF_CLK_O__L7_N1));
   SDFFRX1M \wr_data_reg_reg[6]  (.SI(n194), 
	.SE(n228), 
	.RN(FE_OFN2_SYNC_RST_1), 
	.QN(n43), 
	.Q(n193), 
	.D(n166), 
	.CK(CLK));
   SDFFRX1M \wr_data_reg_reg[7]  (.SI(n193), 
	.SE(n227), 
	.RN(RST), 
	.QN(n42), 
	.Q(test_so2), 
	.D(n167), 
	.CK(CLK));
   SDFFRX1M \wr_data_reg_reg[0]  (.SI(n200), 
	.SE(n229), 
	.RN(FE_OFN1_SYNC_RST_1), 
	.QN(n49), 
	.Q(n199), 
	.D(n168), 
	.CK(REF_CLK_O__L7_N14));
   SDFFRX1M \wr_addr_reg_reg[0]  (.SI(FE_PHN11_SI_3_), 
	.SE(n228), 
	.RN(FE_OFN1_SYNC_RST_1), 
	.QN(n41), 
	.Q(n203), 
	.D(n160), 
	.CK(REF_CLK_O__L7_N14));
   SDFFRX1M \wr_addr_reg_reg[1]  (.SI(n203), 
	.SE(n227), 
	.RN(FE_OFN1_SYNC_RST_1), 
	.QN(n40), 
	.Q(n202), 
	.D(n157), 
	.CK(REF_CLK_O__L7_N14));
   SDFFRX1M \wr_addr_reg_reg[2]  (.SI(n202), 
	.SE(n229), 
	.RN(FE_OFN1_SYNC_RST_1), 
	.QN(n39), 
	.Q(n201), 
	.D(n158), 
	.CK(REF_CLK_O__L7_N14));
   SDFFRX1M \wr_addr_reg_reg[3]  (.SI(n201), 
	.SE(n228), 
	.RN(FE_OFN1_SYNC_RST_1), 
	.QN(n38), 
	.Q(n200), 
	.D(n159), 
	.CK(REF_CLK_O__L7_N14));
   SDFFRX1M \alu_fun_reg_reg[1]  (.SI(n223), 
	.SE(n227), 
	.RN(FE_OFN1_SYNC_RST_1), 
	.QN(n68), 
	.Q(n222), 
	.D(n169), 
	.CK(REF_CLK_O__L7_N2));
   SDFFRX1M \alu_fun_reg_reg[2]  (.SI(n222), 
	.SE(n229), 
	.RN(FE_OFN1_SYNC_RST_1), 
	.QN(n67), 
	.Q(n221), 
	.D(n170), 
	.CK(REF_CLK_O__L7_N2));
   SDFFRX1M \alu_fun_reg_reg[3]  (.SI(n221), 
	.SE(n228), 
	.RN(FE_OFN1_SYNC_RST_1), 
	.QN(n66), 
	.Q(n220), 
	.D(n171), 
	.CK(REF_CLK_O__L7_N2));
   SDFFRX1M \alu_fun_reg_reg[0]  (.SI(test_si1), 
	.SE(n227), 
	.RN(FE_OFN1_SYNC_RST_1), 
	.QN(n69), 
	.Q(n223), 
	.D(n172), 
	.CK(REF_CLK_O__L7_N2));
   SDFFRQX2M \cur_state_reg[1]  (.SI(cur_state[0]), 
	.SE(n227), 
	.RN(FE_OFN1_SYNC_RST_1), 
	.Q(cur_state[1]), 
	.D(nxt_state[1]), 
	.CK(REF_CLK_O__L7_N2));
   SDFFRQX2M \cur_state_reg[3]  (.SI(cur_state[2]), 
	.SE(n229), 
	.RN(RST), 
	.Q(cur_state[3]), 
	.D(nxt_state[3]), 
	.CK(CLK));
   SDFFRQX2M \cur_state_reg[2]  (.SI(cur_state[1]), 
	.SE(n228), 
	.RN(FE_OFN1_SYNC_RST_1), 
	.Q(cur_state[2]), 
	.D(nxt_state[2]), 
	.CK(REF_CLK_O__L7_N2));
   SDFFRQX2M \cur_state_reg[4]  (.SI(cur_state[3]), 
	.SE(n227), 
	.RN(FE_OFN1_SYNC_RST_1), 
	.Q(cur_state[4]), 
	.D(nxt_state[4]), 
	.CK(CLK));
   SDFFRQX2M \cur_state_reg[0]  (.SI(n220), 
	.SE(n229), 
	.RN(FE_OFN1_SYNC_RST_1), 
	.Q(cur_state[0]), 
	.D(nxt_state[0]), 
	.CK(REF_CLK_O__L7_N2));
   NOR2X2M U40 (.Y(ALU_FUN[2]), 
	.B(n67), 
	.A(n76));
   NOR3X2M U41 (.Y(n119), 
	.C(n84), 
	.B(cur_state[4]), 
	.A(cur_state[3]));
   NOR2X2M U42 (.Y(Address[2]), 
	.B(n39), 
	.A(n155));
   NOR2X2M U43 (.Y(ALU_FUN[0]), 
	.B(n69), 
	.A(n76));
   INVX2M U44 (.Y(n76), 
	.A(EN));
   AND3X2M U46 (.Y(n155), 
	.C(n100), 
	.B(n144), 
	.A(n142));
   NAND3X2M U47 (.Y(EN), 
	.C(n143), 
	.B(n107), 
	.A(n106));
   INVX2M U48 (.Y(n77), 
	.A(n95));
   INVX2M U49 (.Y(n83), 
	.A(n139));
   AOI21X2M U50 (.Y(WR_INC), 
	.B0(FULL), 
	.A1(n144), 
	.A0(n143));
   NAND2X2M U51 (.Y(n101), 
	.B(n153), 
	.A(n83));
   NAND4X2M U52 (.Y(nxt_state[3]), 
	.D(n97), 
	.C(n95), 
	.B(n78), 
	.A(n96));
   NOR2BX2M U53 (.Y(n97), 
	.B(n99), 
	.AN(n98));
   INVX2M U54 (.Y(RdEn), 
	.A(n100));
   INVX2M U55 (.Y(n78), 
	.A(n141));
   INVX2M U56 (.Y(n80), 
	.A(n144));
   NAND3X2M U57 (.Y(WrEn), 
	.C(n142), 
	.B(n108), 
	.A(n126));
   INVX2M U58 (.Y(n74), 
	.A(n138));
   OAI21X2M U59 (.Y(nxt_state[4]), 
	.B0(n96), 
	.A1(n95), 
	.A0(FULL));
   NOR2X2M U61 (.Y(n153), 
	.B(n79), 
	.A(n85));
   NAND2X2M U62 (.Y(n108), 
	.B(n154), 
	.A(n134));
   NAND2X2M U63 (.Y(n100), 
	.B(n153), 
	.A(n113));
   NAND2X2M U64 (.Y(n95), 
	.B(n154), 
	.A(n153));
   NAND2X2M U65 (.Y(n106), 
	.B(n154), 
	.A(n114));
   NOR2X2M U66 (.Y(n143), 
	.B(n129), 
	.A(n77));
   NAND2X2M U67 (.Y(n142), 
	.B(n119), 
	.A(n134));
   NAND2X2M U68 (.Y(n144), 
	.B(n119), 
	.A(n114));
   NAND2X2M U69 (.Y(n107), 
	.B(n83), 
	.A(n114));
   NAND2X2M U70 (.Y(n139), 
	.B(n84), 
	.A(n156));
   NOR3BX2M U71 (.Y(n98), 
	.C(n120), 
	.B(n140), 
	.AN(n126));
   NOR3X2M U72 (.Y(n111), 
	.C(n90), 
	.B(n110), 
	.A(n94));
   OAI211X2M U73 (.Y(n118), 
	.C0(n73), 
	.B0(n126), 
	.A1(n87), 
	.A0(n107));
   INVX2M U74 (.Y(n73), 
	.A(n104));
   NAND3X2M U75 (.Y(n126), 
	.C(n154), 
	.B(n85), 
	.A(n79));
   NAND2X2M U76 (.Y(n131), 
	.B(n153), 
	.A(n119));
   INVX2M U77 (.Y(n81), 
	.A(n122));
   OAI2BB1X2M U78 (.Y(n120), 
	.B0(n101), 
	.A1N(n83), 
	.A0N(n134));
   NAND4X2M U79 (.Y(n99), 
	.D(n108), 
	.C(n107), 
	.B(n106), 
	.A(n105));
   OR2X2M U80 (.Y(n105), 
	.B(n110), 
	.A(n109));
   NAND4X2M U81 (.Y(n104), 
	.D(n96), 
	.C(n95), 
	.B(n128), 
	.A(n127));
   NAND2BX2M U82 (.Y(n127), 
	.B(n190), 
	.AN(n131));
   NAND4BX1M U83 (.Y(n128), 
	.D(n91), 
	.C(n189), 
	.B(n130), 
	.AN(n110));
   NAND2X2M U84 (.Y(n96), 
	.B(n129), 
	.A(FULL));
   NOR2X2M U86 (.Y(n141), 
	.B(n131), 
	.A(n190));
   NOR3X2M U87 (.Y(n138), 
	.C(n139), 
	.B(n79), 
	.A(n190));
   OAI22X1M U88 (.Y(n125), 
	.B1(n110), 
	.B0(n109), 
	.A1(n106), 
	.A0(n87));
   INVX2M U89 (.Y(n75), 
	.A(n115));
   INVX2M U90 (.Y(n82), 
	.A(n121));
   AO21XLM U91 (.Y(n133), 
	.B0(n120), 
	.A1(n113), 
	.A0(n134));
   NOR3X2M U92 (.Y(n113), 
	.C(cur_state[1]), 
	.B(cur_state[4]), 
	.A(cur_state[3]));
   OAI21X2M U93 (.Y(Address[0]), 
	.B0(n108), 
	.A1(n41), 
	.A0(n155));
   NOR2X2M U94 (.Y(Address[1]), 
	.B(n40), 
	.A(n155));
   NOR2X2M U95 (.Y(n114), 
	.B(cur_state[0]), 
	.A(n85));
   NOR2X2M U96 (.Y(n134), 
	.B(cur_state[2]), 
	.A(n79));
   NOR2X2M U97 (.Y(ALU_FUN[1]), 
	.B(n68), 
	.A(n76));
   NOR2X2M U98 (.Y(Address[3]), 
	.B(n38), 
	.A(n155));
   AND4X2M U99 (.Y(n129), 
	.D(cur_state[3]), 
	.C(cur_state[1]), 
	.B(n153), 
	.A(cur_state[4]));
   NOR2BX2M U100 (.Y(n156), 
	.B(cur_state[4]), 
	.AN(cur_state[3]));
   INVX2M U101 (.Y(n79), 
	.A(cur_state[0]));
   AND2X2M U102 (.Y(n154), 
	.B(cur_state[1]), 
	.A(n156));
   INVX2M U103 (.Y(n85), 
	.A(cur_state[2]));
   NOR2X2M U104 (.Y(ALU_FUN[3]), 
	.B(n66), 
	.A(n76));
   INVX2M U105 (.Y(n84), 
	.A(cur_state[1]));
   NOR3X2M U106 (.Y(n140), 
	.C(n139), 
	.B(cur_state[2]), 
	.A(cur_state[0]));
   OAI222X1M U107 (.Y(WrData[0]), 
	.C1(n142), 
	.C0(n49), 
	.B1(n108), 
	.B0(n65), 
	.A1(n126), 
	.A0(n57));
   OAI222X1M U108 (.Y(WrData[1]), 
	.C1(n142), 
	.C0(n48), 
	.B1(n108), 
	.B0(n64), 
	.A1(n126), 
	.A0(n56));
   OAI222X1M U109 (.Y(WrData[2]), 
	.C1(n142), 
	.C0(n47), 
	.B1(n108), 
	.B0(n63), 
	.A1(n126), 
	.A0(n55));
   OAI222X1M U110 (.Y(WrData[3]), 
	.C1(n142), 
	.C0(n46), 
	.B1(n108), 
	.B0(n62), 
	.A1(n126), 
	.A0(n54));
   OAI222X1M U111 (.Y(WrData[4]), 
	.C1(n142), 
	.C0(n45), 
	.B1(n108), 
	.B0(n61), 
	.A1(n126), 
	.A0(n53));
   OAI222X1M U112 (.Y(WrData[5]), 
	.C1(n142), 
	.C0(n44), 
	.B1(n108), 
	.B0(n60), 
	.A1(n126), 
	.A0(n52));
   OAI222X1M U113 (.Y(WrData[6]), 
	.C1(n142), 
	.C0(n43), 
	.B1(n108), 
	.B0(n59), 
	.A1(n126), 
	.A0(n51));
   OAI222X1M U114 (.Y(WrData[7]), 
	.C1(n142), 
	.C0(n42), 
	.B1(n108), 
	.B0(n58), 
	.A1(n126), 
	.A0(n50));
   NAND2X2M U115 (.Y(n122), 
	.B(RX_D_VLD), 
	.A(n140));
   NAND4X2M U116 (.Y(n110), 
	.D(n135), 
	.C(RX_P_DATA[7]), 
	.B(n113), 
	.A(RX_P_DATA[3]));
   NOR3X2M U117 (.Y(n135), 
	.C(cur_state[0]), 
	.B(cur_state[2]), 
	.A(n190));
   OAI22X1M U118 (.Y(n180), 
	.B1(n65), 
	.B0(n81), 
	.A1(n122), 
	.A0(n189));
   OAI22X1M U119 (.Y(n179), 
	.B1(n58), 
	.B0(n81), 
	.A1(n122), 
	.A0(n88));
   OAI22X1M U120 (.Y(n178), 
	.B1(n59), 
	.B0(n81), 
	.A1(n122), 
	.A0(n89));
   OAI22X1M U121 (.Y(n177), 
	.B1(n60), 
	.B0(n81), 
	.A1(n122), 
	.A0(n90));
   OAI22X1M U122 (.Y(n176), 
	.B1(n61), 
	.B0(n81), 
	.A1(n122), 
	.A0(n91));
   OAI22X1M U123 (.Y(n175), 
	.B1(n62), 
	.B0(n81), 
	.A1(n122), 
	.A0(n92));
   OAI22X1M U124 (.Y(n174), 
	.B1(n63), 
	.B0(n81), 
	.A1(n122), 
	.A0(n93));
   OAI22X1M U125 (.Y(n173), 
	.B1(n64), 
	.B0(n81), 
	.A1(n122), 
	.A0(n94));
   OAI22X1M U126 (.Y(n188), 
	.B1(n57), 
	.B0(n141), 
	.A1(n78), 
	.A0(n189));
   OAI22X1M U127 (.Y(n187), 
	.B1(n50), 
	.B0(n141), 
	.A1(n78), 
	.A0(n88));
   OAI22X1M U128 (.Y(n186), 
	.B1(n51), 
	.B0(n141), 
	.A1(n78), 
	.A0(n89));
   OAI22X1M U129 (.Y(n185), 
	.B1(n52), 
	.B0(n141), 
	.A1(n78), 
	.A0(n90));
   OAI22X1M U130 (.Y(n184), 
	.B1(n53), 
	.B0(n141), 
	.A1(n78), 
	.A0(n91));
   OAI22X1M U131 (.Y(n183), 
	.B1(n54), 
	.B0(n141), 
	.A1(n78), 
	.A0(n92));
   OAI22X1M U132 (.Y(n182), 
	.B1(n55), 
	.B0(n141), 
	.A1(n78), 
	.A0(n93));
   OAI22X1M U133 (.Y(n181), 
	.B1(n56), 
	.B0(n141), 
	.A1(n78), 
	.A0(n94));
   OAI2BB1X2M U134 (.Y(WR_DATA[0]), 
	.B0(n152), 
	.A1N(n80), 
	.A0N(RdData[0]));
   AOI22X1M U135 (.Y(n152), 
	.B1(n77), 
	.B0(ALU_OUT[0]), 
	.A1(n129), 
	.A0(ALU_OUT[8]));
   OAI2BB1X2M U136 (.Y(WR_DATA[1]), 
	.B0(n151), 
	.A1N(n80), 
	.A0N(RdData[1]));
   AOI22X1M U137 (.Y(n151), 
	.B1(n77), 
	.B0(ALU_OUT[1]), 
	.A1(n129), 
	.A0(ALU_OUT[9]));
   OAI2BB1X2M U138 (.Y(WR_DATA[2]), 
	.B0(n150), 
	.A1N(n80), 
	.A0N(RdData[2]));
   AOI22X1M U139 (.Y(n150), 
	.B1(n77), 
	.B0(ALU_OUT[2]), 
	.A1(n129), 
	.A0(ALU_OUT[10]));
   OAI2BB1X2M U140 (.Y(WR_DATA[3]), 
	.B0(n149), 
	.A1N(n80), 
	.A0N(RdData[3]));
   AOI22X1M U141 (.Y(n149), 
	.B1(n77), 
	.B0(ALU_OUT[3]), 
	.A1(n129), 
	.A0(ALU_OUT[11]));
   OAI2BB1X2M U142 (.Y(WR_DATA[4]), 
	.B0(n148), 
	.A1N(n80), 
	.A0N(RdData[4]));
   AOI22X1M U143 (.Y(n148), 
	.B1(n77), 
	.B0(ALU_OUT[4]), 
	.A1(n129), 
	.A0(ALU_OUT[12]));
   OAI2BB1X2M U144 (.Y(WR_DATA[5]), 
	.B0(n147), 
	.A1N(n80), 
	.A0N(RdData[5]));
   AOI22X1M U145 (.Y(n147), 
	.B1(n77), 
	.B0(ALU_OUT[5]), 
	.A1(n129), 
	.A0(ALU_OUT[13]));
   OAI2BB1X2M U146 (.Y(WR_DATA[6]), 
	.B0(n146), 
	.A1N(n80), 
	.A0N(RdData[6]));
   AOI22X1M U147 (.Y(n146), 
	.B1(n77), 
	.B0(ALU_OUT[6]), 
	.A1(n129), 
	.A0(ALU_OUT[14]));
   OAI2BB1X2M U148 (.Y(WR_DATA[7]), 
	.B0(n145), 
	.A1N(n80), 
	.A0N(RdData[7]));
   AOI22X1M U149 (.Y(n145), 
	.B1(n77), 
	.B0(ALU_OUT[7]), 
	.A1(n129), 
	.A0(ALU_OUT[15]));
   INVX2M U150 (.Y(n190), 
	.A(RX_D_VLD));
   NAND4X2M U151 (.Y(nxt_state[1]), 
	.D(n117), 
	.C(n116), 
	.B(n115), 
	.A(n106));
   AOI32X1M U152 (.Y(n116), 
	.B1(n120), 
	.B0(RX_D_VLD), 
	.A2(n119), 
	.A1(n85), 
	.A0(n79));
   AOI221XLM U153 (.Y(n117), 
	.C0(n118), 
	.B1(RdEn), 
	.B0(RdData_Valid), 
	.A1(FULL), 
	.A0(n80));
   NAND4X2M U154 (.Y(nxt_state[0]), 
	.D(n124), 
	.C(n123), 
	.B(n122), 
	.A(n121));
   AOI32X1M U155 (.Y(n123), 
	.B1(n190), 
	.B0(n133), 
	.A2(n132), 
	.A1(n189), 
	.A0(n111));
   AOI211X2M U156 (.Y(n124), 
	.C0(n118), 
	.B0(n125), 
	.A1(n86), 
	.A0(RdEn));
   NOR3X2M U157 (.Y(n132), 
	.C(RX_P_DATA[4]), 
	.B(RX_P_DATA[6]), 
	.A(RX_P_DATA[2]));
   NAND4X2M U158 (.Y(nxt_state[2]), 
	.D(n103), 
	.C(n102), 
	.B(n101), 
	.A(n100));
   AOI32X1M U159 (.Y(n102), 
	.B1(n114), 
	.B0(n113), 
	.A2(n112), 
	.A1(RX_P_DATA[4]), 
	.A0(n111));
   AOI211X2M U160 (.Y(n103), 
	.C0(n99), 
	.B0(n104), 
	.A1(FULL), 
	.A0(n80));
   NOR3X2M U161 (.Y(n112), 
	.C(RX_P_DATA[2]), 
	.B(RX_P_DATA[6]), 
	.A(n189));
   NAND3X2M U162 (.Y(n115), 
	.C(n113), 
	.B(RX_D_VLD), 
	.A(n134));
   NAND3X2M U163 (.Y(n121), 
	.C(n137), 
	.B(n136), 
	.A(RX_D_VLD));
   NOR3X2M U164 (.Y(n137), 
	.C(cur_state[3]), 
	.B(cur_state[4]), 
	.A(cur_state[0]));
   XNOR2X2M U165 (.Y(n136), 
	.B(cur_state[1]), 
	.A(n85));
   OAI22X1M U166 (.Y(n172), 
	.B1(n69), 
	.B0(n138), 
	.A1(n74), 
	.A0(n189));
   OAI22X1M U167 (.Y(n171), 
	.B1(n66), 
	.B0(n138), 
	.A1(n74), 
	.A0(n92));
   OAI22X1M U168 (.Y(n170), 
	.B1(n67), 
	.B0(n138), 
	.A1(n74), 
	.A0(n93));
   OAI22X1M U169 (.Y(n169), 
	.B1(n68), 
	.B0(n138), 
	.A1(n74), 
	.A0(n94));
   OAI22X1M U170 (.Y(n168), 
	.B1(n49), 
	.B0(n75), 
	.A1(n115), 
	.A0(n189));
   OAI22X1M U171 (.Y(n167), 
	.B1(n42), 
	.B0(n75), 
	.A1(n115), 
	.A0(n88));
   OAI22X1M U172 (.Y(n166), 
	.B1(n43), 
	.B0(n75), 
	.A1(n115), 
	.A0(n89));
   OAI22X1M U173 (.Y(n165), 
	.B1(n44), 
	.B0(n75), 
	.A1(n115), 
	.A0(n90));
   OAI22X1M U174 (.Y(n164), 
	.B1(n45), 
	.B0(n75), 
	.A1(n115), 
	.A0(n91));
   OAI22X1M U175 (.Y(n163), 
	.B1(n46), 
	.B0(n75), 
	.A1(n115), 
	.A0(n92));
   OAI22X1M U176 (.Y(n162), 
	.B1(n47), 
	.B0(n75), 
	.A1(n115), 
	.A0(n93));
   OAI22X1M U177 (.Y(n161), 
	.B1(n48), 
	.B0(n75), 
	.A1(n115), 
	.A0(n94));
   OAI22X1M U178 (.Y(n160), 
	.B1(n41), 
	.B0(n82), 
	.A1(n121), 
	.A0(n189));
   OAI22X1M U179 (.Y(n159), 
	.B1(n38), 
	.B0(n82), 
	.A1(n121), 
	.A0(n92));
   OAI22X1M U180 (.Y(n158), 
	.B1(n39), 
	.B0(n82), 
	.A1(n121), 
	.A0(n93));
   OAI22X1M U181 (.Y(n157), 
	.B1(n40), 
	.B0(n82), 
	.A1(n121), 
	.A0(n94));
   INVX2M U182 (.Y(n87), 
	.A(OUT_Valid));
   INVX2M U183 (.Y(n86), 
	.A(RdData_Valid));
   NOR4X1M U184 (.Y(n130), 
	.D(RX_P_DATA[5]), 
	.C(RX_P_DATA[1]), 
	.B(n93), 
	.A(n89));
   INVX2M U185 (.Y(n93), 
	.A(RX_P_DATA[2]));
   INVX2M U186 (.Y(n189), 
	.A(RX_P_DATA[0]));
   INVX2M U187 (.Y(n94), 
	.A(RX_P_DATA[1]));
   INVX2M U188 (.Y(n89), 
	.A(RX_P_DATA[6]));
   NAND3X2M U189 (.Y(n109), 
	.C(RX_P_DATA[4]), 
	.B(n130), 
	.A(RX_P_DATA[0]));
   INVX2M U190 (.Y(n90), 
	.A(RX_P_DATA[5]));
   INVX2M U191 (.Y(n92), 
	.A(RX_P_DATA[3]));
   INVX2M U192 (.Y(n91), 
	.A(RX_P_DATA[4]));
   INVX2M U193 (.Y(n88), 
	.A(RX_P_DATA[7]));
   NAND4X2M U194 (.Y(CLK_EN), 
	.D(n76), 
	.C(n131), 
	.B(n108), 
	.A(n98));
   INVXLM U195 (.Y(n226), 
	.A(test_se));
   CLKINVX2M U196 (.Y(n227), 
	.A(n226));
   CLKINVX2M U197 (.Y(n228), 
	.A(n226));
   CLKINVX2M U198 (.Y(n229), 
	.A(n226));
   SDFFRX2M \opB_reg_reg[7]  (.SI(n205), 
	.SE(n229), 
	.RN(RST), 
	.QN(n58), 
	.Q(test_so1), 
	.D(n179), 
	.CK(CLK));
endmodule

module Domain_1_TOP_test_1 (
	RX_P_DATA, 
	RX_D_VLD, 
	REF_CLK, 
	RST, 
	FULL, 
	test_mode, 
	WR_DATA, 
	WR_INC, 
	UART_CONF, 
	REG3, 
	test_si2, 
	test_si1, 
	test_so3, 
	test_so2, 
	test_so1, 
	test_se, 
	FE_OFN2_SYNC_RST_1, 
	REF_CLK_O__L7_N0, 
	REF_CLK_O__L7_N1, 
	REF_CLK_O__L7_N10, 
	REF_CLK_O__L7_N11, 
	REF_CLK_O__L7_N12, 
	REF_CLK_O__L7_N13, 
	REF_CLK_O__L7_N14, 
	REF_CLK_O__L7_N15, 
	REF_CLK_O__L7_N2, 
	REF_CLK_O__L7_N8, 
	REF_CLK_O__L7_N9);
   input [7:0] RX_P_DATA;
   input RX_D_VLD;
   input REF_CLK;
   input RST;
   input FULL;
   input test_mode;
   output [7:0] WR_DATA;
   output WR_INC;
   output [7:0] UART_CONF;
   output [7:0] REG3;
   input test_si2;
   input test_si1;
   output test_so3;
   output test_so2;
   output test_so1;
   input test_se;
   input FE_OFN2_SYNC_RST_1;
   input REF_CLK_O__L7_N0;
   input REF_CLK_O__L7_N1;
   input REF_CLK_O__L7_N10;
   input REF_CLK_O__L7_N11;
   input REF_CLK_O__L7_N12;
   input REF_CLK_O__L7_N13;
   input REF_CLK_O__L7_N14;
   input REF_CLK_O__L7_N15;
   input REF_CLK_O__L7_N2;
   input REF_CLK_O__L7_N8;
   input REF_CLK_O__L7_N9;

   // Internal wires
   wire GATED_CLK__L3_N0;
   wire GATED_CLK__L2_N0;
   wire GATED_CLK__L1_N0;
   wire FE_OFN5_SYNC_RST_1;
   wire FE_OFN1_SYNC_RST_1;
   wire CLK_EN_O;
   wire GATED_CLK;
   wire EN;
   wire OUT_Valid;
   wire WrEn;
   wire RdEn;
   wire RdData_Valid;
   wire CLK_EN;
   wire n6;
   wire [7:0] REG0;
   wire [7:0] REG1;
   wire [3:0] ALU_FUN;
   wire [15:0] ALU_OUT;
   wire [3:0] Address;
   wire [7:0] WrData;
   wire [7:0] RdData;

   CLKINVX40M GATED_CLK__L3_I0 (.Y(GATED_CLK__L3_N0), 
	.A(GATED_CLK__L2_N0));
   CLKINVX32M GATED_CLK__L2_I0 (.Y(GATED_CLK__L2_N0), 
	.A(GATED_CLK__L1_N0));
   CLKBUFX12M GATED_CLK__L1_I0 (.Y(GATED_CLK__L1_N0), 
	.A(GATED_CLK));
   BUFX4M FE_OFC5_SYNC_RST_1 (.Y(FE_OFN5_SYNC_RST_1), 
	.A(FE_OFN1_SYNC_RST_1));
   BUFX6M FE_OFC1_SYNC_RST_1 (.Y(FE_OFN1_SYNC_RST_1), 
	.A(RST));
   OR2X2M U3 (.Y(CLK_EN_O), 
	.B(test_mode), 
	.A(CLK_EN));
   Clock_Gating Clock_Gating_U0 (.CLK_EN(CLK_EN_O), 
	.CLK(REF_CLK), 
	.GATED_CLK(GATED_CLK));
   ALU_test_1 ALU_U1 (.CLK(GATED_CLK__L3_N0), 
	.RST(FE_OFN1_SYNC_RST_1), 
	.A({ REG0[7],
		REG0[6],
		REG0[5],
		REG0[4],
		REG0[3],
		REG0[2],
		REG0[1],
		REG0[0] }), 
	.B({ REG1[7],
		REG1[6],
		REG1[5],
		REG1[4],
		REG1[3],
		REG1[2],
		REG1[1],
		REG1[0] }), 
	.ALU_FUN({ ALU_FUN[3],
		ALU_FUN[2],
		ALU_FUN[1],
		ALU_FUN[0] }), 
	.Enable(EN), 
	.ALU_OUT({ ALU_OUT[15],
		ALU_OUT[14],
		ALU_OUT[13],
		ALU_OUT[12],
		ALU_OUT[11],
		ALU_OUT[10],
		ALU_OUT[9],
		ALU_OUT[8],
		ALU_OUT[7],
		ALU_OUT[6],
		ALU_OUT[5],
		ALU_OUT[4],
		ALU_OUT[3],
		ALU_OUT[2],
		ALU_OUT[1],
		ALU_OUT[0] }), 
	.OUT_VALID(OUT_Valid), 
	.test_si(RX_P_DATA[7]), 
	.test_se(test_se), 
	.FE_OFN5_SYNC_RST_1(FE_OFN5_SYNC_RST_1));
   RegFile_test_1 RegFile_U2 (.CLK(REF_CLK_O__L7_N10), 
	.RST(FE_OFN1_SYNC_RST_1), 
	.Address({ Address[3],
		Address[2],
		Address[1],
		Address[0] }), 
	.WrEn(WrEn), 
	.RdEn(RdEn), 
	.WrData({ WrData[7],
		WrData[6],
		WrData[5],
		WrData[4],
		WrData[3],
		WrData[2],
		WrData[1],
		WrData[0] }), 
	.RdData({ RdData[7],
		RdData[6],
		RdData[5],
		RdData[4],
		RdData[3],
		RdData[2],
		RdData[1],
		RdData[0] }), 
	.RdData_Valid(RdData_Valid), 
	.REG0({ REG0[7],
		REG0[6],
		REG0[5],
		REG0[4],
		REG0[3],
		REG0[2],
		REG0[1],
		REG0[0] }), 
	.REG1({ REG1[7],
		REG1[6],
		REG1[5],
		REG1[4],
		REG1[3],
		REG1[2],
		REG1[1],
		REG1[0] }), 
	.REG2({ UART_CONF[7],
		UART_CONF[6],
		UART_CONF[5],
		UART_CONF[4],
		UART_CONF[3],
		UART_CONF[2],
		UART_CONF[1],
		UART_CONF[0] }), 
	.REG3({ REG3[7],
		REG3[6],
		REG3[5],
		REG3[4],
		REG3[3],
		REG3[2],
		REG3[1],
		REG3[0] }), 
	.test_si2(test_si1), 
	.test_si1(OUT_Valid), 
	.test_so2(n6), 
	.test_so1(test_so1), 
	.test_se(test_se), 
	.FE_OFN5_SYNC_RST_1(FE_OFN5_SYNC_RST_1), 
	.REF_CLK_O__L7_N11(REF_CLK_O__L7_N11), 
	.REF_CLK_O__L7_N12(REF_CLK_O__L7_N12), 
	.REF_CLK_O__L7_N13(REF_CLK_O__L7_N13), 
	.REF_CLK_O__L7_N14(REF_CLK_O__L7_N14), 
	.REF_CLK_O__L7_N15(REF_CLK_O__L7_N15), 
	.REF_CLK_O__L7_N2(REF_CLK_O__L7_N2), 
	.REF_CLK_O__L7_N8(REF_CLK_O__L7_N8), 
	.REF_CLK_O__L7_N9(REF_CLK_O__L7_N9));
   SYS_CTRL_test_1 SYS_CTRL_U3 (.CLK(REF_CLK_O__L7_N0), 
	.RST(RST), 
	.ALU_OUT({ ALU_OUT[15],
		ALU_OUT[14],
		ALU_OUT[13],
		ALU_OUT[12],
		ALU_OUT[11],
		ALU_OUT[10],
		ALU_OUT[9],
		ALU_OUT[8],
		ALU_OUT[7],
		ALU_OUT[6],
		ALU_OUT[5],
		ALU_OUT[4],
		ALU_OUT[3],
		ALU_OUT[2],
		ALU_OUT[1],
		ALU_OUT[0] }), 
	.FULL(FULL), 
	.OUT_Valid(OUT_Valid), 
	.RdData({ RdData[7],
		RdData[6],
		RdData[5],
		RdData[4],
		RdData[3],
		RdData[2],
		RdData[1],
		RdData[0] }), 
	.RdData_Valid(RdData_Valid), 
	.RX_P_DATA({ RX_P_DATA[7],
		RX_P_DATA[6],
		RX_P_DATA[5],
		RX_P_DATA[4],
		RX_P_DATA[3],
		RX_P_DATA[2],
		RX_P_DATA[1],
		RX_P_DATA[0] }), 
	.RX_D_VLD(RX_D_VLD), 
	.ALU_FUN({ ALU_FUN[3],
		ALU_FUN[2],
		ALU_FUN[1],
		ALU_FUN[0] }), 
	.WR_INC(WR_INC), 
	.WR_DATA({ WR_DATA[7],
		WR_DATA[6],
		WR_DATA[5],
		WR_DATA[4],
		WR_DATA[3],
		WR_DATA[2],
		WR_DATA[1],
		WR_DATA[0] }), 
	.EN(EN), 
	.CLK_EN(CLK_EN), 
	.Address({ Address[3],
		Address[2],
		Address[1],
		Address[0] }), 
	.WrEn(WrEn), 
	.RdEn(RdEn), 
	.WrData({ WrData[7],
		WrData[6],
		WrData[5],
		WrData[4],
		WrData[3],
		WrData[2],
		WrData[1],
		WrData[0] }), 
	.test_si2(test_si2), 
	.test_si1(n6), 
	.test_so2(test_so3), 
	.test_so1(test_so2), 
	.test_se(test_se), 
	.FE_OFN2_SYNC_RST_1(FE_OFN2_SYNC_RST_1), 
	.FE_OFN1_SYNC_RST_1(FE_OFN1_SYNC_RST_1), 
	.REF_CLK_O__L7_N1(REF_CLK_O__L7_N1), 
	.REF_CLK_O__L7_N14(REF_CLK_O__L7_N14), 
	.REF_CLK_O__L7_N2(REF_CLK_O__L7_N2));
endmodule

module FSM_TX_test_1 (
	Data_Valid, 
	ser_done, 
	PAR_EN, 
	CLK, 
	RST, 
	busy, 
	ser_en, 
	mux_sel, 
	test_si, 
	test_so, 
	test_se, 
	TX_CLK_O__L3_N3);
   input Data_Valid;
   input ser_done;
   input PAR_EN;
   input CLK;
   input RST;
   output busy;
   output ser_en;
   output [1:0] mux_sel;
   input test_si;
   output test_so;
   input test_se;
   input TX_CLK_O__L3_N3;

   // Internal wires
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n4;
   wire n5;
   wire [2:0] cur_state;
   wire [2:0] next_state;

   assign test_so = cur_state[2] ;

   SDFFRQX2M \cur_state_reg[2]  (.SI(cur_state[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(cur_state[2]), 
	.D(next_state[2]), 
	.CK(CLK));
   SDFFRQX2M \cur_state_reg[1]  (.SI(cur_state[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(cur_state[1]), 
	.D(next_state[1]), 
	.CK(TX_CLK_O__L3_N3));
   SDFFRQX2M \cur_state_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(cur_state[0]), 
	.D(next_state[0]), 
	.CK(TX_CLK_O__L3_N3));
   OR2X2M U6 (.Y(busy), 
	.B(next_state[1]), 
	.A(n11));
   NOR2X2M U7 (.Y(n11), 
	.B(n4), 
	.A(n5));
   NAND2X2M U8 (.Y(ser_en), 
	.B(n8), 
	.A(n6));
   NAND2X2M U9 (.Y(mux_sel[1]), 
	.B(n7), 
	.A(n6));
   NAND2BX2M U10 (.Y(next_state[1]), 
	.B(n7), 
	.AN(ser_en));
   NAND2BX2M U11 (.Y(n7), 
	.B(n11), 
	.AN(cur_state[0]));
   NAND3X2M U12 (.Y(n6), 
	.C(cur_state[1]), 
	.B(n5), 
	.A(cur_state[0]));
   NAND3X2M U13 (.Y(n8), 
	.C(cur_state[0]), 
	.B(n5), 
	.A(n4));
   OAI2B1X2M U14 (.Y(next_state[2]), 
	.B0(n7), 
	.A1N(ser_done), 
	.A0(n6));
   INVX2M U15 (.Y(n5), 
	.A(cur_state[2]));
   NAND2X2M U16 (.Y(mux_sel[0]), 
	.B(n5), 
	.A(cur_state[0]));
   NAND3X2M U17 (.Y(next_state[0]), 
	.C(n9), 
	.B(n8), 
	.A(n7));
   AOI32X1M U18 (.Y(n9), 
	.B1(cur_state[0]), 
	.B0(n10), 
	.A2(Data_Valid), 
	.A1(n5), 
	.A0(n4));
   AOI21X2M U19 (.Y(n10), 
	.B0(cur_state[2]), 
	.A1(ser_done), 
	.A0(PAR_EN));
   INVX2M U20 (.Y(n4), 
	.A(cur_state[1]));
endmodule

module serializer_TX_test_1 (
	P_DATA, 
	ser_en, 
	CLK, 
	RST, 
	ser_data, 
	ser_done, 
	test_si, 
	test_se);
   input [7:0] P_DATA;
   input ser_en;
   input CLK;
   input RST;
   output ser_data;
   output ser_done;
   input test_si;
   input test_se;

   // Internal wires
   wire Counter_Done;
   wire N10;
   wire N11;
   wire N12;
   wire N13;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n50;
   wire n51;
   wire [3:0] Counter;
   wire [7:0] P_DATA_Hold;

   SDFFRQX2M \P_DATA_Hold_reg[6]  (.SI(P_DATA_Hold[5]), 
	.SE(n51), 
	.RN(RST), 
	.Q(P_DATA_Hold[6]), 
	.D(n40), 
	.CK(CLK));
   SDFFRQX2M \P_DATA_Hold_reg[5]  (.SI(P_DATA_Hold[4]), 
	.SE(n51), 
	.RN(RST), 
	.Q(P_DATA_Hold[5]), 
	.D(n41), 
	.CK(CLK));
   SDFFRQX2M \P_DATA_Hold_reg[4]  (.SI(P_DATA_Hold[3]), 
	.SE(n51), 
	.RN(RST), 
	.Q(P_DATA_Hold[4]), 
	.D(n42), 
	.CK(CLK));
   SDFFRQX2M \P_DATA_Hold_reg[3]  (.SI(P_DATA_Hold[2]), 
	.SE(n51), 
	.RN(RST), 
	.Q(P_DATA_Hold[3]), 
	.D(n43), 
	.CK(CLK));
   SDFFRQX2M \P_DATA_Hold_reg[2]  (.SI(P_DATA_Hold[1]), 
	.SE(n51), 
	.RN(RST), 
	.Q(P_DATA_Hold[2]), 
	.D(n44), 
	.CK(CLK));
   SDFFRQX2M \P_DATA_Hold_reg[1]  (.SI(P_DATA_Hold[0]), 
	.SE(n51), 
	.RN(RST), 
	.Q(P_DATA_Hold[1]), 
	.D(n45), 
	.CK(CLK));
   SDFFRQX2M \P_DATA_Hold_reg[0]  (.SI(Counter[3]), 
	.SE(n51), 
	.RN(RST), 
	.Q(P_DATA_Hold[0]), 
	.D(n39), 
	.CK(CLK));
   SDFFRQX2M Counter_Done_reg (.SI(test_si), 
	.SE(n51), 
	.RN(RST), 
	.Q(Counter_Done), 
	.D(n46), 
	.CK(CLK));
   SDFFRQX2M ser_data_reg (.SI(P_DATA_Hold[6]), 
	.SE(n51), 
	.RN(RST), 
	.Q(ser_data), 
	.D(n38), 
	.CK(CLK));
   SDFFRQX2M ser_done_reg (.SI(ser_data), 
	.SE(n51), 
	.RN(RST), 
	.Q(ser_done), 
	.D(n47), 
	.CK(CLK));
   SDFFRQX2M \Counter_reg[2]  (.SI(Counter[1]), 
	.SE(n51), 
	.RN(RST), 
	.Q(Counter[2]), 
	.D(N12), 
	.CK(CLK));
   SDFFRQX2M \Counter_reg[1]  (.SI(Counter[0]), 
	.SE(n51), 
	.RN(RST), 
	.Q(Counter[1]), 
	.D(N11), 
	.CK(CLK));
   SDFFRQX2M \Counter_reg[0]  (.SI(Counter_Done), 
	.SE(n51), 
	.RN(RST), 
	.Q(Counter[0]), 
	.D(N10), 
	.CK(CLK));
   SDFFRQX2M \Counter_reg[3]  (.SI(Counter[2]), 
	.SE(n51), 
	.RN(RST), 
	.Q(Counter[3]), 
	.D(N13), 
	.CK(CLK));
   AO21XLM U11 (.Y(n15), 
	.B0(n20), 
	.A1(Counter_Done), 
	.A0(n17));
   NOR4X1M U18 (.Y(n31), 
	.D(Counter[3]), 
	.C(Counter[2]), 
	.B(Counter[1]), 
	.A(Counter[0]));
   INVX2M U19 (.Y(n20), 
	.A(ser_en));
   OAI32X1M U20 (.Y(N12), 
	.B1(n19), 
	.B0(n34), 
	.A2(n18), 
	.A1(n16), 
	.A0(n36));
   NAND2X2M U21 (.Y(n36), 
	.B(n19), 
	.A(ser_en));
   NOR2X2M U22 (.Y(n23), 
	.B(n15), 
	.A(n17));
   NOR2X2M U23 (.Y(n22), 
	.B(n31), 
	.A(n15));
   NOR2X2M U24 (.Y(n32), 
	.B(n33), 
	.A(n20));
   AOI21X2M U25 (.Y(n34), 
	.B0(N10), 
	.A1(ser_en), 
	.A0(n18));
   INVX2M U26 (.Y(n17), 
	.A(n31));
   NOR4X1M U27 (.Y(n33), 
	.D(Counter[3]), 
	.C(n16), 
	.B(n18), 
	.A(n19));
   OAI2B2X1M U28 (.Y(N13), 
	.B1(n20), 
	.B0(n35), 
	.A1N(Counter[3]), 
	.A0(n34));
   AOI21X2M U29 (.Y(n35), 
	.B0(n33), 
	.A1(n19), 
	.A0(Counter[3]));
   OAI2BB2X1M U30 (.Y(n46), 
	.B1(n20), 
	.B0(n32), 
	.A1N(n32), 
	.A0N(Counter_Done));
   OAI2BB2X1M U31 (.Y(n47), 
	.B1(n20), 
	.B0(n32), 
	.A1N(n32), 
	.A0N(ser_done));
   NOR2X2M U32 (.Y(N10), 
	.B(Counter[0]), 
	.A(n20));
   INVX2M U33 (.Y(n19), 
	.A(Counter[2]));
   INVX2M U34 (.Y(n16), 
	.A(Counter[0]));
   INVX2M U35 (.Y(n18), 
	.A(Counter[1]));
   NOR2X2M U36 (.Y(N11), 
	.B(n20), 
	.A(n37));
   XNOR2X2M U37 (.Y(n37), 
	.B(Counter[1]), 
	.A(Counter[0]));
   OAI2BB1X2M U38 (.Y(n38), 
	.B0(n21), 
	.A1N(n15), 
	.A0N(ser_data));
   AOI22X1M U39 (.Y(n21), 
	.B1(n23), 
	.B0(P_DATA[0]), 
	.A1(n22), 
	.A0(P_DATA_Hold[0]));
   OAI2BB1X2M U40 (.Y(n39), 
	.B0(n24), 
	.A1N(P_DATA_Hold[0]), 
	.A0N(n15));
   AOI22X1M U41 (.Y(n24), 
	.B1(n23), 
	.B0(P_DATA[1]), 
	.A1(n22), 
	.A0(P_DATA_Hold[1]));
   OAI2BB1X2M U42 (.Y(n45), 
	.B0(n30), 
	.A1N(P_DATA_Hold[1]), 
	.A0N(n15));
   AOI22X1M U43 (.Y(n30), 
	.B1(n23), 
	.B0(P_DATA[2]), 
	.A1(n22), 
	.A0(P_DATA_Hold[2]));
   OAI2BB1X2M U44 (.Y(n44), 
	.B0(n29), 
	.A1N(P_DATA_Hold[2]), 
	.A0N(n15));
   AOI22X1M U45 (.Y(n29), 
	.B1(n23), 
	.B0(P_DATA[3]), 
	.A1(n22), 
	.A0(P_DATA_Hold[3]));
   OAI2BB1X2M U46 (.Y(n43), 
	.B0(n28), 
	.A1N(P_DATA_Hold[3]), 
	.A0N(n15));
   AOI22X1M U47 (.Y(n28), 
	.B1(n23), 
	.B0(P_DATA[4]), 
	.A1(n22), 
	.A0(P_DATA_Hold[4]));
   OAI2BB1X2M U48 (.Y(n42), 
	.B0(n27), 
	.A1N(P_DATA_Hold[4]), 
	.A0N(n15));
   AOI22X1M U49 (.Y(n27), 
	.B1(n23), 
	.B0(P_DATA[5]), 
	.A1(n22), 
	.A0(P_DATA_Hold[5]));
   OAI2BB1X2M U50 (.Y(n41), 
	.B0(n26), 
	.A1N(P_DATA_Hold[5]), 
	.A0N(n15));
   AOI22X1M U51 (.Y(n26), 
	.B1(n23), 
	.B0(P_DATA[6]), 
	.A1(n22), 
	.A0(P_DATA_Hold[6]));
   OAI2BB1X2M U52 (.Y(n40), 
	.B0(n25), 
	.A1N(P_DATA_Hold[6]), 
	.A0N(n15));
   NAND2X2M U53 (.Y(n25), 
	.B(n23), 
	.A(P_DATA[7]));
   INVXLM U54 (.Y(n50), 
	.A(test_se));
   CLKINVX2M U55 (.Y(n51), 
	.A(n50));
endmodule

module MUX_TX_test_1 (
	mux_sel, 
	ser_data, 
	par_bit, 
	CLK, 
	RST, 
	TX_OUT, 
	test_si, 
	test_se);
   input [1:0] mux_sel;
   input ser_data;
   input par_bit;
   input CLK;
   input RST;
   output TX_OUT;
   input test_si;
   input test_se;

   // Internal wires
   wire TX_INNER;
   wire n3;
   wire n4;
   wire n2;

   SDFFSQX2M TX_OUT_reg (.SN(RST), 
	.SI(test_si), 
	.SE(test_se), 
	.Q(TX_OUT), 
	.D(TX_INNER), 
	.CK(CLK));
   OAI21X2M U4 (.Y(TX_INNER), 
	.B0(n4), 
	.A1(n2), 
	.A0(n3));
   NAND3X2M U5 (.Y(n4), 
	.C(ser_data), 
	.B(n2), 
	.A(mux_sel[1]));
   NOR2BX2M U6 (.Y(n3), 
	.B(par_bit), 
	.AN(mux_sel[1]));
   INVX2M U7 (.Y(n2), 
	.A(mux_sel[0]));
endmodule

module Parity_Calc_TX_test_1 (
	P_DATA, 
	Data_Valid, 
	PAR_TYP, 
	CLK, 
	RST, 
	par_bit, 
	test_si, 
	test_se, 
	FE_OFN0_SYNC_RST_2, 
	TX_CLK_O__L3_N2, 
	TX_CLK_O__L3_N3);
   input [7:0] P_DATA;
   input Data_Valid;
   input PAR_TYP;
   input CLK;
   input RST;
   output par_bit;
   input test_si;
   input test_se;
   input FE_OFN0_SYNC_RST_2;
   input TX_CLK_O__L3_N2;
   input TX_CLK_O__L3_N3;

   // Internal wires
   wire par_bit_inner;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n7;
   wire n9;
   wire n11;
   wire n13;
   wire n15;
   wire n17;
   wire n19;
   wire n21;
   wire [7:0] P_DATA_Hold;

   SDFFRQX2M \P_DATA_Hold_reg[5]  (.SI(P_DATA_Hold[4]), 
	.SE(test_se), 
	.RN(FE_OFN0_SYNC_RST_2), 
	.Q(P_DATA_Hold[5]), 
	.D(n17), 
	.CK(TX_CLK_O__L3_N3));
   SDFFRQX2M \P_DATA_Hold_reg[1]  (.SI(P_DATA_Hold[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(P_DATA_Hold[1]), 
	.D(n9), 
	.CK(CLK));
   SDFFRQX2M \P_DATA_Hold_reg[4]  (.SI(P_DATA_Hold[3]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(P_DATA_Hold[4]), 
	.D(n15), 
	.CK(TX_CLK_O__L3_N2));
   SDFFRQX2M \P_DATA_Hold_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(P_DATA_Hold[0]), 
	.D(n7), 
	.CK(TX_CLK_O__L3_N3));
   SDFFRQX2M \P_DATA_Hold_reg[6]  (.SI(P_DATA_Hold[5]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(P_DATA_Hold[6]), 
	.D(n19), 
	.CK(TX_CLK_O__L3_N3));
   SDFFRQX2M \P_DATA_Hold_reg[2]  (.SI(P_DATA_Hold[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(P_DATA_Hold[2]), 
	.D(n11), 
	.CK(CLK));
   SDFFRQX2M \P_DATA_Hold_reg[7]  (.SI(P_DATA_Hold[6]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(P_DATA_Hold[7]), 
	.D(n21), 
	.CK(TX_CLK_O__L3_N3));
   SDFFRQX2M \P_DATA_Hold_reg[3]  (.SI(P_DATA_Hold[2]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(P_DATA_Hold[3]), 
	.D(n13), 
	.CK(TX_CLK_O__L3_N2));
   SDFFRQX2M par_bit_reg (.SI(P_DATA_Hold[7]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(par_bit), 
	.D(par_bit_inner), 
	.CK(TX_CLK_O__L3_N3));
   XOR3XLM U3 (.Y(par_bit_inner), 
	.C(PAR_TYP), 
	.B(n2), 
	.A(n1));
   XOR3XLM U4 (.Y(n2), 
	.C(n3), 
	.B(P_DATA_Hold[0]), 
	.A(P_DATA_Hold[1]));
   XOR3XLM U5 (.Y(n1), 
	.C(n4), 
	.B(P_DATA_Hold[4]), 
	.A(P_DATA_Hold[5]));
   CLKXOR2X2M U6 (.Y(n3), 
	.B(P_DATA_Hold[2]), 
	.A(P_DATA_Hold[3]));
   AO2B2X2M U7 (.Y(n7), 
	.B1(Data_Valid), 
	.B0(P_DATA[0]), 
	.A1N(Data_Valid), 
	.A0(P_DATA_Hold[0]));
   AO2B2X2M U8 (.Y(n9), 
	.B1(Data_Valid), 
	.B0(P_DATA[1]), 
	.A1N(Data_Valid), 
	.A0(P_DATA_Hold[1]));
   AO2B2X2M U9 (.Y(n11), 
	.B1(Data_Valid), 
	.B0(P_DATA[2]), 
	.A1N(Data_Valid), 
	.A0(P_DATA_Hold[2]));
   AO2B2X2M U10 (.Y(n13), 
	.B1(Data_Valid), 
	.B0(P_DATA[3]), 
	.A1N(Data_Valid), 
	.A0(P_DATA_Hold[3]));
   AO2B2X2M U11 (.Y(n15), 
	.B1(Data_Valid), 
	.B0(P_DATA[4]), 
	.A1N(Data_Valid), 
	.A0(P_DATA_Hold[4]));
   AO2B2X2M U12 (.Y(n17), 
	.B1(Data_Valid), 
	.B0(P_DATA[5]), 
	.A1N(Data_Valid), 
	.A0(P_DATA_Hold[5]));
   AO2B2X2M U13 (.Y(n19), 
	.B1(Data_Valid), 
	.B0(P_DATA[6]), 
	.A1N(Data_Valid), 
	.A0(P_DATA_Hold[6]));
   AO2B2X2M U14 (.Y(n21), 
	.B1(Data_Valid), 
	.B0(P_DATA[7]), 
	.A1N(Data_Valid), 
	.A0(P_DATA_Hold[7]));
   CLKXOR2X2M U15 (.Y(n4), 
	.B(P_DATA_Hold[6]), 
	.A(P_DATA_Hold[7]));
endmodule

module Top_TX_test_1 (
	Data_Valid, 
	PAR_TYP, 
	PAR_EN, 
	P_DATA, 
	CLK, 
	RST, 
	TX_OUT, 
	busy, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN0_SYNC_RST_2, 
	TX_CLK_O__L3_N1, 
	TX_CLK_O__L3_N2, 
	TX_CLK_O__L3_N3);
   input Data_Valid;
   input PAR_TYP;
   input PAR_EN;
   input [7:0] P_DATA;
   input CLK;
   input RST;
   output TX_OUT;
   output busy;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN0_SYNC_RST_2;
   input TX_CLK_O__L3_N1;
   input TX_CLK_O__L3_N2;
   input TX_CLK_O__L3_N3;

   // Internal wires
   wire ser_done;
   wire ser_en;
   wire ser_data;
   wire par_bit;
   wire n4;
   wire [1:0] mux_sel;

   assign test_so = par_bit ;

   FSM_TX_test_1 U1 (.Data_Valid(Data_Valid), 
	.ser_done(ser_done), 
	.PAR_EN(PAR_EN), 
	.CLK(TX_CLK_O__L3_N1), 
	.RST(RST), 
	.busy(busy), 
	.ser_en(ser_en), 
	.mux_sel({ mux_sel[1],
		mux_sel[0] }), 
	.test_si(test_si), 
	.test_so(n4), 
	.test_se(test_se), 
	.TX_CLK_O__L3_N3(TX_CLK_O__L3_N3));
   serializer_TX_test_1 U2 (.P_DATA({ P_DATA[7],
		P_DATA[6],
		P_DATA[5],
		P_DATA[4],
		P_DATA[3],
		P_DATA[2],
		P_DATA[1],
		P_DATA[0] }), 
	.ser_en(ser_en), 
	.CLK(TX_CLK_O__L3_N1), 
	.RST(RST), 
	.ser_data(ser_data), 
	.ser_done(ser_done), 
	.test_si(n4), 
	.test_se(test_se));
   MUX_TX_test_1 U3 (.mux_sel({ mux_sel[1],
		mux_sel[0] }), 
	.ser_data(ser_data), 
	.par_bit(par_bit), 
	.CLK(TX_CLK_O__L3_N3), 
	.RST(RST), 
	.TX_OUT(TX_OUT), 
	.test_si(ser_done), 
	.test_se(test_se));
   Parity_Calc_TX_test_1 U4 (.P_DATA({ P_DATA[7],
		P_DATA[6],
		P_DATA[5],
		P_DATA[4],
		P_DATA[3],
		P_DATA[2],
		P_DATA[1],
		P_DATA[0] }), 
	.Data_Valid(Data_Valid), 
	.PAR_TYP(PAR_TYP), 
	.CLK(CLK), 
	.RST(RST), 
	.par_bit(par_bit), 
	.test_si(TX_OUT), 
	.test_se(test_se), 
	.FE_OFN0_SYNC_RST_2(FE_OFN0_SYNC_RST_2), 
	.TX_CLK_O__L3_N2(TX_CLK_O__L3_N2), 
	.TX_CLK_O__L3_N3(TX_CLK_O__L3_N3));
endmodule

module FSM_RX_test_1 (
	PAR_EN, 
	RX_IN, 
	strt_glitch, 
	stp_err, 
	par_err, 
	edge_cnt_done, 
	CLK, 
	RST, 
	bit_cnt, 
	enable, 
	stp_en, 
	deser_en, 
	strt_chk_en, 
	par_chk_en, 
	data_valid, 
	data_sample_en, 
	test_si, 
	test_so, 
	test_se);
   input PAR_EN;
   input RX_IN;
   input strt_glitch;
   input stp_err;
   input par_err;
   input edge_cnt_done;
   input CLK;
   input RST;
   input [0:3] bit_cnt;
   output enable;
   output stp_en;
   output deser_en;
   output strt_chk_en;
   output par_chk_en;
   output data_valid;
   output data_sample_en;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n25;
   wire [0:2] cur_state;
   wire [0:2] nxt_state;

   assign test_so = cur_state[2] ;

   SDFFRQX2M \cur_state_reg[1]  (.SI(cur_state[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(cur_state[1]), 
	.D(nxt_state[1]), 
	.CK(CLK));
   SDFFRQX2M \cur_state_reg[2]  (.SI(cur_state[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(cur_state[2]), 
	.D(nxt_state[2]), 
	.CK(CLK));
   SDFFRQX2M \cur_state_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(cur_state[0]), 
	.D(nxt_state[0]), 
	.CK(CLK));
   INVX2M U6 (.Y(n6), 
	.A(par_err));
   NOR3X2M U7 (.Y(data_valid), 
	.C(n11), 
	.B(n9), 
	.A(n25));
   INVX2M U8 (.Y(n8), 
	.A(deser_en));
   INVX2M U9 (.Y(n10), 
	.A(stp_en));
   INVX2M U10 (.Y(n7), 
	.A(strt_glitch));
   NOR3X2M U11 (.Y(deser_en), 
	.C(n25), 
	.B(cur_state[0]), 
	.A(n9));
   NOR3X2M U12 (.Y(stp_en), 
	.C(n25), 
	.B(cur_state[2]), 
	.A(n11));
   OAI211X2M U13 (.Y(nxt_state[2]), 
	.C0(n14), 
	.B0(n13), 
	.A1(n8), 
	.A0(n12));
   NOR4BBX1M U14 (.Y(n12), 
	.D(bit_cnt[1]), 
	.C(bit_cnt[2]), 
	.BN(bit_cnt[0]), 
	.AN(bit_cnt[3]));
   OAI21X2M U15 (.Y(n13), 
	.B0(strt_chk_en), 
	.A1(n7), 
	.A0(n5));
   AOI32X1M U16 (.Y(n14), 
	.B1(n17), 
	.B0(n16), 
	.A2(n15), 
	.A1(n9), 
	.A0(n25));
   NOR3X2M U17 (.Y(par_chk_en), 
	.C(n25), 
	.B(cur_state[2]), 
	.A(cur_state[0]));
   NOR3X2M U18 (.Y(strt_chk_en), 
	.C(n9), 
	.B(cur_state[1]), 
	.A(cur_state[0]));
   OAI31X1M U19 (.Y(nxt_state[0]), 
	.B0(n24), 
	.A2(n23), 
	.A1(n8), 
	.A0(n22));
   NAND2X2M U20 (.Y(n23), 
	.B(bit_cnt[3]), 
	.A(bit_cnt[0]));
   OR3X2M U21 (.Y(n22), 
	.C(bit_cnt[2]), 
	.B(bit_cnt[1]), 
	.A(PAR_EN));
   AOI32X1M U22 (.Y(n24), 
	.B1(n19), 
	.B0(stp_en), 
	.A2(par_chk_en), 
	.A1(n6), 
	.A0(edge_cnt_done));
   NOR4BX1M U23 (.Y(n17), 
	.D(n10), 
	.C(bit_cnt[1]), 
	.B(stp_err), 
	.AN(bit_cnt[0]));
   OAI2B11X2M U24 (.Y(nxt_state[1]), 
	.C0(n21), 
	.B0(n20), 
	.A1N(n19), 
	.A0(n10));
   AOI31X2M U25 (.Y(n21), 
	.B0(deser_en), 
	.A2(strt_chk_en), 
	.A1(n7), 
	.A0(edge_cnt_done));
   OAI21X2M U26 (.Y(n20), 
	.B0(par_chk_en), 
	.A1(n6), 
	.A0(n5));
   INVX2M U27 (.Y(n25), 
	.A(cur_state[1]));
   INVX2M U28 (.Y(n9), 
	.A(cur_state[2]));
   INVX2M U29 (.Y(n11), 
	.A(cur_state[0]));
   NOR3BX2M U30 (.Y(n16), 
	.C(n5), 
	.B(n18), 
	.AN(bit_cnt[2]));
   CLKXOR2X2M U31 (.Y(n18), 
	.B(PAR_EN), 
	.A(bit_cnt[3]));
   INVX2M U32 (.Y(n5), 
	.A(edge_cnt_done));
   NOR2X2M U33 (.Y(n15), 
	.B(RX_IN), 
	.A(cur_state[0]));
   NAND2X2M U34 (.Y(n19), 
	.B(edge_cnt_done), 
	.A(stp_err));
   OR4X1M U36 (.Y(data_sample_en), 
	.D(strt_chk_en), 
	.C(stp_en), 
	.B(par_chk_en), 
	.A(deser_en));
endmodule

module data_sampling_test_1 (
	edge_cnt, 
	data_sample_en, 
	RX_IN, 
	CLK, 
	RST, 
	prescale, 
	sampled_data, 
	test_si, 
	test_se);
   input [0:4] edge_cnt;
   input data_sample_en;
   input RX_IN;
   input CLK;
   input RST;
   input [0:5] prescale;
   output sampled_data;
   input test_si;
   input test_se;

   // Internal wires
   wire sample_1;
   wire sample_2;
   wire n5;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n35;

   SDFFRQX2M sample_2_reg (.SI(sample_1), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sample_2), 
	.D(n33), 
	.CK(CLK));
   SDFFRQX2M sample_1_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sample_1), 
	.D(n32), 
	.CK(CLK));
   SDFFRX1M sample_3_reg (.SI(sample_2), 
	.SE(test_se), 
	.RN(RST), 
	.QN(n5), 
	.Q(n35), 
	.D(n31), 
	.CK(CLK));
   SDFFRQX2M sampled_data_reg (.SI(n35), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sampled_data), 
	.D(n30), 
	.CK(CLK));
   INVX2M U7 (.Y(n12), 
	.A(RX_IN));
   OAI211X2M U8 (.Y(n15), 
	.C0(data_sample_en), 
	.B0(n20), 
	.A1(n28), 
	.A0(n27));
   NOR4X1M U9 (.Y(n27), 
	.D(n9), 
	.C(n22), 
	.B(edge_cnt[0]), 
	.A(edge_cnt[1]));
   NOR2X2M U10 (.Y(n28), 
	.B(n29), 
	.A(edge_cnt[2]));
   AOI33X2M U11 (.Y(n29), 
	.B2(edge_cnt[1]), 
	.B1(n7), 
	.B0(n25), 
	.A2(edge_cnt[0]), 
	.A1(n8), 
	.A0(n24));
   NOR3X2M U12 (.Y(n25), 
	.C(n11), 
	.B(prescale[2]), 
	.A(prescale[0]));
   NOR3X2M U13 (.Y(n24), 
	.C(n10), 
	.B(prescale[2]), 
	.A(prescale[1]));
   OAI2BB2X1M U14 (.Y(n32), 
	.B1(n18), 
	.B0(n12), 
	.A1N(sample_1), 
	.A0N(n18));
   NAND4X2M U15 (.Y(n18), 
	.D(n21), 
	.C(n20), 
	.B(n7), 
	.A(n19));
   OAI32X1M U16 (.Y(n19), 
	.B1(n9), 
	.B0(n23), 
	.A2(edge_cnt[1]), 
	.A1(edge_cnt[2]), 
	.A0(n22));
   AND3X2M U17 (.Y(n21), 
	.C(edge_cnt[3]), 
	.B(data_sample_en), 
	.A(edge_cnt[4]));
   OAI2BB2X1M U18 (.Y(n33), 
	.B1(n26), 
	.B0(n12), 
	.A1N(sample_2), 
	.A0N(n26));
   OR3X2M U19 (.Y(n26), 
	.C(n15), 
	.B(edge_cnt[4]), 
	.A(edge_cnt[3]));
   OAI2BB2X1M U20 (.Y(n30), 
	.B1(n14), 
	.B0(n13), 
	.A1N(n14), 
	.A0N(sampled_data));
   AOI21X2M U21 (.Y(n13), 
	.B0(n16), 
	.A1(sample_1), 
	.A0(sample_2));
   NAND3BX2M U22 (.Y(n14), 
	.C(edge_cnt[3]), 
	.B(n6), 
	.AN(n15));
   AOI2BB1X2M U23 (.Y(n16), 
	.B0(n5), 
	.A1N(sample_1), 
	.A0N(sample_2));
   OAI2BB2X1M U24 (.Y(n31), 
	.B1(n5), 
	.B0(n17), 
	.A1N(RX_IN), 
	.A0N(n17));
   NOR3X2M U25 (.Y(n17), 
	.C(n6), 
	.B(edge_cnt[3]), 
	.A(n15));
   INVX2M U26 (.Y(n11), 
	.A(prescale[1]));
   INVX2M U27 (.Y(n10), 
	.A(prescale[0]));
   INVX2M U28 (.Y(n8), 
	.A(edge_cnt[1]));
   NOR3X2M U29 (.Y(n20), 
	.C(prescale[3]), 
	.B(prescale[4]), 
	.A(prescale[5]));
   AOI22X1M U30 (.Y(n23), 
	.B1(n8), 
	.B0(n25), 
	.A1(n24), 
	.A0(edge_cnt[1]));
   NAND3X2M U31 (.Y(n22), 
	.C(prescale[2]), 
	.B(n11), 
	.A(n10));
   INVX2M U32 (.Y(n9), 
	.A(edge_cnt[2]));
   INVX2M U33 (.Y(n7), 
	.A(edge_cnt[0]));
   INVX2M U34 (.Y(n6), 
	.A(edge_cnt[4]));
endmodule

module desrializer_test_1 (
	sampled_data, 
	deser_en, 
	edge_cnt_done, 
	CLK, 
	RST, 
	P_DATA, 
	test_se, 
	RX_CLK_O__L4_N1);
   input sampled_data;
   input deser_en;
   input edge_cnt_done;
   input CLK;
   input RST;
   output [0:7] P_DATA;
   input test_se;
   input RX_CLK_O__L4_N1;

   // Internal wires
   wire Counter_done;
   wire N16;
   wire n10;
   wire n11;
   wire n12;
   wire n15;
   wire n17;
   wire n19;
   wire n21;
   wire n23;
   wire n25;
   wire n27;
   wire n29;
   wire n32;
   wire n34;
   wire n36;
   wire n38;
   wire n40;
   wire n42;
   wire n44;
   wire n46;
   wire n48;
   wire n50;
   wire n52;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n13;
   wire n16;
   wire n18;
   wire n20;
   wire [0:3] Counter;
   wire [0:7] DATA;

   SDFFRQX2M \Counter_reg[1]  (.SI(Counter_done), 
	.SE(n20), 
	.RN(RST), 
	.Q(Counter[1]), 
	.D(n32), 
	.CK(RX_CLK_O__L4_N1));
   SDFFRQX2M \DATA_reg[7]  (.SI(DATA[6]), 
	.SE(n18), 
	.RN(RST), 
	.Q(DATA[7]), 
	.D(n38), 
	.CK(RX_CLK_O__L4_N1));
   SDFFRQX2M \Counter_reg[3]  (.SI(Counter[2]), 
	.SE(n20), 
	.RN(RST), 
	.Q(Counter[3]), 
	.D(n36), 
	.CK(RX_CLK_O__L4_N1));
   SDFFRQX2M \DATA_reg[0]  (.SI(Counter[3]), 
	.SE(n18), 
	.RN(RST), 
	.Q(DATA[0]), 
	.D(n52), 
	.CK(CLK));
   SDFFRQX2M \DATA_reg[1]  (.SI(DATA[0]), 
	.SE(n20), 
	.RN(RST), 
	.Q(DATA[1]), 
	.D(n50), 
	.CK(CLK));
   SDFFRQX2M \DATA_reg[2]  (.SI(DATA[1]), 
	.SE(n18), 
	.RN(RST), 
	.Q(DATA[2]), 
	.D(n48), 
	.CK(CLK));
   SDFFRQX2M \DATA_reg[3]  (.SI(DATA[2]), 
	.SE(n20), 
	.RN(RST), 
	.Q(DATA[3]), 
	.D(n46), 
	.CK(CLK));
   SDFFRQX2M \DATA_reg[4]  (.SI(DATA[3]), 
	.SE(n18), 
	.RN(RST), 
	.Q(DATA[4]), 
	.D(n44), 
	.CK(CLK));
   SDFFRQX2M \DATA_reg[5]  (.SI(DATA[4]), 
	.SE(n20), 
	.RN(RST), 
	.Q(DATA[5]), 
	.D(n42), 
	.CK(CLK));
   SDFFRQX2M \DATA_reg[6]  (.SI(DATA[5]), 
	.SE(n18), 
	.RN(RST), 
	.Q(DATA[6]), 
	.D(n40), 
	.CK(RX_CLK_O__L4_N1));
   SDFFRQX2M Counter_done_reg (.SI(sampled_data), 
	.SE(n20), 
	.RN(RST), 
	.Q(Counter_done), 
	.D(N16), 
	.CK(CLK));
   SDFFRQX2M \Counter_reg[2]  (.SI(Counter[1]), 
	.SE(n18), 
	.RN(RST), 
	.Q(Counter[2]), 
	.D(n34), 
	.CK(CLK));
   SDFFRQX2M \P_DATA_reg[1]  (.SI(P_DATA[0]), 
	.SE(n20), 
	.RN(RST), 
	.Q(P_DATA[1]), 
	.D(n27), 
	.CK(CLK));
   SDFFRQX2M \P_DATA_reg[5]  (.SI(P_DATA[4]), 
	.SE(n18), 
	.RN(RST), 
	.Q(P_DATA[5]), 
	.D(n19), 
	.CK(CLK));
   SDFFRQX2M \P_DATA_reg[0]  (.SI(DATA[7]), 
	.SE(n20), 
	.RN(RST), 
	.Q(P_DATA[0]), 
	.D(n29), 
	.CK(CLK));
   SDFFRQX2M \P_DATA_reg[4]  (.SI(P_DATA[3]), 
	.SE(n18), 
	.RN(RST), 
	.Q(P_DATA[4]), 
	.D(n21), 
	.CK(CLK));
   SDFFRQX2M \P_DATA_reg[3]  (.SI(P_DATA[2]), 
	.SE(n20), 
	.RN(RST), 
	.Q(P_DATA[3]), 
	.D(n23), 
	.CK(CLK));
   SDFFRQX2M \P_DATA_reg[7]  (.SI(P_DATA[6]), 
	.SE(n18), 
	.RN(RST), 
	.Q(P_DATA[7]), 
	.D(n15), 
	.CK(RX_CLK_O__L4_N1));
   SDFFRQX2M \P_DATA_reg[2]  (.SI(P_DATA[1]), 
	.SE(n20), 
	.RN(RST), 
	.Q(P_DATA[2]), 
	.D(n25), 
	.CK(CLK));
   SDFFRQX2M \P_DATA_reg[6]  (.SI(P_DATA[5]), 
	.SE(n18), 
	.RN(RST), 
	.Q(P_DATA[6]), 
	.D(n17), 
	.CK(CLK));
   INVX2M U3 (.Y(n1), 
	.A(n12));
   OAI22X1M U4 (.Y(n38), 
	.B1(n12), 
	.B0(n8), 
	.A1(n9), 
	.A0(n1));
   OAI22X1M U5 (.Y(n40), 
	.B1(n12), 
	.B0(n7), 
	.A1(n8), 
	.A0(n1));
   OAI22X1M U6 (.Y(n42), 
	.B1(n12), 
	.B0(n6), 
	.A1(n7), 
	.A0(n1));
   OAI22X1M U7 (.Y(n44), 
	.B1(n12), 
	.B0(n5), 
	.A1(n6), 
	.A0(n1));
   OAI22X1M U8 (.Y(n46), 
	.B1(n12), 
	.B0(n4), 
	.A1(n5), 
	.A0(n1));
   OAI22X1M U9 (.Y(n48), 
	.B1(n12), 
	.B0(n3), 
	.A1(n4), 
	.A0(n1));
   OAI22X1M U10 (.Y(n50), 
	.B1(n12), 
	.B0(n2), 
	.A1(n3), 
	.A0(n1));
   NAND2X2M U11 (.Y(n12), 
	.B(deser_en), 
	.A(edge_cnt_done));
   XNOR2X2M U12 (.Y(n32), 
	.B(n10), 
	.A(Counter[1]));
   NAND2X2M U13 (.Y(n10), 
	.B(n11), 
	.A(Counter[2]));
   AND2X2M U14 (.Y(n11), 
	.B(n1), 
	.A(Counter[3]));
   CLKXOR2X2M U15 (.Y(n34), 
	.B(n11), 
	.A(Counter[2]));
   XNOR2X2M U16 (.Y(n36), 
	.B(n12), 
	.A(Counter[3]));
   INVX2M U17 (.Y(n13), 
	.A(Counter_done));
   OAI2BB2X1M U18 (.Y(n15), 
	.B1(n9), 
	.B0(n13), 
	.A1N(n13), 
	.A0N(P_DATA[7]));
   OAI2BB2X1M U19 (.Y(n17), 
	.B1(n8), 
	.B0(n13), 
	.A1N(n13), 
	.A0N(P_DATA[6]));
   OAI2BB2X1M U20 (.Y(n19), 
	.B1(n7), 
	.B0(n13), 
	.A1N(n13), 
	.A0N(P_DATA[5]));
   OAI2BB2X1M U21 (.Y(n21), 
	.B1(n6), 
	.B0(n13), 
	.A1N(n13), 
	.A0N(P_DATA[4]));
   OAI2BB2X1M U22 (.Y(n23), 
	.B1(n5), 
	.B0(n13), 
	.A1N(n13), 
	.A0N(P_DATA[3]));
   OAI2BB2X1M U23 (.Y(n25), 
	.B1(n4), 
	.B0(n13), 
	.A1N(n13), 
	.A0N(P_DATA[2]));
   OAI2BB2X1M U24 (.Y(n27), 
	.B1(n3), 
	.B0(n13), 
	.A1N(n13), 
	.A0N(P_DATA[1]));
   OAI2BB2X1M U25 (.Y(n29), 
	.B1(n2), 
	.B0(n13), 
	.A1N(n13), 
	.A0N(P_DATA[0]));
   OAI2BB2X1M U26 (.Y(n52), 
	.B1(n2), 
	.B0(n1), 
	.A1N(n1), 
	.A0N(sampled_data));
   INVX2M U27 (.Y(n2), 
	.A(DATA[0]));
   INVX2M U28 (.Y(n8), 
	.A(DATA[6]));
   INVX2M U29 (.Y(n7), 
	.A(DATA[5]));
   INVX2M U30 (.Y(n6), 
	.A(DATA[4]));
   INVX2M U31 (.Y(n5), 
	.A(DATA[3]));
   INVX2M U32 (.Y(n4), 
	.A(DATA[2]));
   INVX2M U33 (.Y(n3), 
	.A(DATA[1]));
   AND3X2M U34 (.Y(N16), 
	.C(Counter[2]), 
	.B(n11), 
	.A(Counter[1]));
   INVX2M U35 (.Y(n9), 
	.A(DATA[7]));
   INVXLM U56 (.Y(n16), 
	.A(test_se));
   CLKINVX2M U57 (.Y(n18), 
	.A(n16));
   CLKINVX2M U58 (.Y(n20), 
	.A(n16));
endmodule

module edge_bit_counter_test_1 (
	enable, 
	PAR_EN, 
	CLK, 
	RST, 
	prescale, 
	edge_cnt_done, 
	edge_cnt, 
	bit_cnt, 
	test_si, 
	test_se, 
	FE_OFN0_SYNC_RST_2, 
	RX_CLK_O__L4_N1);
   input enable;
   input PAR_EN;
   input CLK;
   input RST;
   input [0:5] prescale;
   output edge_cnt_done;
   output [0:4] edge_cnt;
   output [0:3] bit_cnt;
   input test_si;
   input test_se;
   input FE_OFN0_SYNC_RST_2;
   input RX_CLK_O__L4_N1;

   // Internal wires
   wire N27;
   wire N28;
   wire N29;
   wire N30;
   wire N31;
   wire N32;
   wire N36;
   wire N37;
   wire N38;
   wire N45;
   wire N46;
   wire N47;
   wire N48;
   wire N49;
   wire N50;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire \add_56/carry[4] ;
   wire \add_56/carry[3] ;
   wire \add_56/carry[2] ;
   wire n1;
   wire n2;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;

   SDFFRQX2M \bit_cnt_reg[1]  (.SI(bit_cnt[0]), 
	.SE(test_se), 
	.RN(FE_OFN0_SYNC_RST_2), 
	.Q(bit_cnt[1]), 
	.D(n34), 
	.CK(RX_CLK_O__L4_N1));
   SDFFRQX2M \bit_cnt_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(FE_OFN0_SYNC_RST_2), 
	.Q(bit_cnt[0]), 
	.D(n33), 
	.CK(RX_CLK_O__L4_N1));
   SDFFRQX2M \bit_cnt_reg[2]  (.SI(bit_cnt[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(bit_cnt[2]), 
	.D(n35), 
	.CK(RX_CLK_O__L4_N1));
   SDFFRQX2M \bit_cnt_reg[3]  (.SI(bit_cnt[2]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(bit_cnt[3]), 
	.D(n36), 
	.CK(RX_CLK_O__L4_N1));
   SDFFRQX2M edge_cnt_done_reg (.SI(bit_cnt[3]), 
	.SE(test_se), 
	.RN(FE_OFN0_SYNC_RST_2), 
	.Q(edge_cnt_done), 
	.D(N50), 
	.CK(RX_CLK_O__L4_N1));
   SDFFRQX4M \edge_cnt_reg[4]  (.SI(edge_cnt[3]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(edge_cnt[4]), 
	.D(N45), 
	.CK(CLK));
   SDFFRQX2M \edge_cnt_reg[0]  (.SI(edge_cnt_done), 
	.SE(test_se), 
	.RN(FE_OFN0_SYNC_RST_2), 
	.Q(edge_cnt[0]), 
	.D(N49), 
	.CK(RX_CLK_O__L4_N1));
   SDFFRQX2M \edge_cnt_reg[2]  (.SI(edge_cnt[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(edge_cnt[2]), 
	.D(N47), 
	.CK(CLK));
   SDFFRQX2M \edge_cnt_reg[3]  (.SI(edge_cnt[2]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(edge_cnt[3]), 
	.D(N46), 
	.CK(CLK));
   SDFFRQX2M \edge_cnt_reg[1]  (.SI(edge_cnt[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(edge_cnt[1]), 
	.D(N48), 
	.CK(CLK));
   INVX2M U7 (.Y(n47), 
	.A(enable));
   NAND2X2M U14 (.Y(n32), 
	.B(n1), 
	.A(enable));
   OAI21X2M U15 (.Y(n36), 
	.B0(n31), 
	.A1(n29), 
	.A0(n43));
   NAND4X2M U16 (.Y(n31), 
	.D(n43), 
	.C(n30), 
	.B(n29), 
	.A(enable));
   NOR2BX2M U17 (.Y(N46), 
	.B(n32), 
	.AN(N36));
   NOR2BX2M U18 (.Y(N47), 
	.B(n32), 
	.AN(N37));
   NOR2BX2M U19 (.Y(N48), 
	.B(n32), 
	.AN(N38));
   NOR2X2M U20 (.Y(N50), 
	.B(n1), 
	.A(n47));
   INVX2M U21 (.Y(n42), 
	.A(n24));
   OAI32X1M U22 (.Y(n34), 
	.B1(n27), 
	.B0(n21), 
	.A2(n47), 
	.A1(n26), 
	.A0(n46));
   AO21XLM U23 (.Y(n27), 
	.B0(bit_cnt[1]), 
	.A1(PAR_EN), 
	.A0(bit_cnt[0]));
   NOR2X2M U24 (.Y(n26), 
	.B(n43), 
	.A(n24));
   OAI32X1M U25 (.Y(n35), 
	.B1(n29), 
	.B0(n44), 
	.A2(n28), 
	.A1(n45), 
	.A0(n47));
   INVX2M U26 (.Y(n45), 
	.A(n30));
   AOI32X1M U27 (.Y(n28), 
	.B1(n43), 
	.B0(n42), 
	.A2(bit_cnt[3]), 
	.A1(n44), 
	.A0(n29));
   INVX2M U28 (.Y(n44), 
	.A(bit_cnt[2]));
   OAI31X1M U29 (.Y(n33), 
	.B0(n22), 
	.A2(n21), 
	.A1(bit_cnt[0]), 
	.A0(n46));
   OAI211X2M U30 (.Y(n22), 
	.C0(bit_cnt[0]), 
	.B0(enable), 
	.A1(n24), 
	.A0(n23));
   CLKXOR2X2M U31 (.Y(n23), 
	.B(bit_cnt[3]), 
	.A(n25));
   NAND2X2M U32 (.Y(n25), 
	.B(n48), 
	.A(n46));
   NAND2BX2M U33 (.Y(n29), 
	.B(enable), 
	.AN(edge_cnt_done));
   OR4X1M U34 (.Y(n1), 
	.D(n38), 
	.C(n39), 
	.B(n40), 
	.A(n41));
   NAND3X2M U35 (.Y(n21), 
	.C(enable), 
	.B(n42), 
	.A(bit_cnt[3]));
   OR2X2M U36 (.Y(n13), 
	.B(prescale[5]), 
	.A(prescale[4]));
   NOR2X2M U37 (.Y(N49), 
	.B(n32), 
	.A(n2));
   XNOR2X2M U38 (.Y(n2), 
	.B(edge_cnt[0]), 
	.A(\add_56/carry[4] ));
   NOR2X2M U39 (.Y(N45), 
	.B(n32), 
	.A(edge_cnt[4]));
   INVX2M U40 (.Y(n17), 
	.A(prescale[2]));
   NAND4X2M U41 (.Y(n30), 
	.D(n46), 
	.C(n48), 
	.B(bit_cnt[2]), 
	.A(bit_cnt[0]));
   NAND2X2M U42 (.Y(n24), 
	.B(bit_cnt[2]), 
	.A(edge_cnt_done));
   INVX2M U43 (.Y(n43), 
	.A(bit_cnt[3]));
   INVX2M U44 (.Y(n46), 
	.A(bit_cnt[1]));
   INVX2M U45 (.Y(n48), 
	.A(PAR_EN));
   ADDHX1M U46 (.S(N36), 
	.CO(\add_56/carry[2] ), 
	.B(edge_cnt[4]), 
	.A(edge_cnt[3]));
   ADDHX1M U47 (.S(N37), 
	.CO(\add_56/carry[3] ), 
	.B(\add_56/carry[2] ), 
	.A(edge_cnt[2]));
   ADDHX1M U48 (.S(N38), 
	.CO(\add_56/carry[4] ), 
	.B(\add_56/carry[3] ), 
	.A(edge_cnt[1]));
   CLKINVX1M U49 (.Y(N27), 
	.A(prescale[5]));
   OAI2BB1X1M U50 (.Y(N28), 
	.B0(n13), 
	.A1N(prescale[4]), 
	.A0N(prescale[5]));
   NOR2X1M U51 (.Y(n14), 
	.B(prescale[3]), 
	.A(n13));
   AO21XLM U52 (.Y(N29), 
	.B0(n14), 
	.A1(prescale[3]), 
	.A0(n13));
   CLKNAND2X2M U53 (.Y(n15), 
	.B(n17), 
	.A(n14));
   OAI21X1M U54 (.Y(N30), 
	.B0(n15), 
	.A1(n17), 
	.A0(n14));
   XNOR2X1M U55 (.Y(N31), 
	.B(n15), 
	.A(prescale[1]));
   NOR2X1M U56 (.Y(n16), 
	.B(n15), 
	.A(prescale[1]));
   CLKXOR2X2M U57 (.Y(N32), 
	.B(n16), 
	.A(prescale[0]));
   NOR2BX1M U58 (.Y(n18), 
	.B(edge_cnt[4]), 
	.AN(N27));
   OAI2B2X1M U59 (.Y(n37), 
	.B1(n18), 
	.B0(N28), 
	.A1N(edge_cnt[3]), 
	.A0(n18));
   NOR2BX1M U60 (.Y(n19), 
	.B(N27), 
	.AN(edge_cnt[4]));
   OAI2B2X1M U61 (.Y(n20), 
	.B1(n19), 
	.B0(edge_cnt[3]), 
	.A1N(N28), 
	.A0(n19));
   NAND3BX1M U62 (.Y(n41), 
	.C(n20), 
	.B(n37), 
	.AN(N32));
   CLKXOR2X2M U63 (.Y(n40), 
	.B(edge_cnt[0]), 
	.A(N31));
   CLKXOR2X2M U64 (.Y(n39), 
	.B(edge_cnt[2]), 
	.A(N29));
   CLKXOR2X2M U65 (.Y(n38), 
	.B(edge_cnt[1]), 
	.A(N30));
endmodule

module Stop_Checker_RX (
	stp_en, 
	sampled_data, 
	stp_err);
   input stp_en;
   input sampled_data;
   output stp_err;

   NOR2BX2M U2 (.Y(stp_err), 
	.B(sampled_data), 
	.AN(stp_en));
endmodule

module Parity_Checker (
	par_chk_en, 
	sampled_data, 
	PAR_TYP, 
	P_DATA, 
	par_err);
   input par_chk_en;
   input sampled_data;
   input PAR_TYP;
   input [0:7] P_DATA;
   output par_err;

   // Internal wires
   wire FE_OFN6_parity_error;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;

   BUFX2M FE_OFC6_parity_error (.Y(par_err), 
	.A(FE_OFN6_parity_error));
   NOR2BX2M U2 (.Y(FE_OFN6_parity_error), 
	.B(n1), 
	.AN(par_chk_en));
   XOR3XLM U3 (.Y(n1), 
	.C(n4), 
	.B(n3), 
	.A(n2));
   XNOR2X2M U4 (.Y(n4), 
	.B(PAR_TYP), 
	.A(sampled_data));
   XOR3XLM U5 (.Y(n3), 
	.C(n5), 
	.B(P_DATA[4]), 
	.A(P_DATA[5]));
   XNOR2X2M U6 (.Y(n5), 
	.B(P_DATA[6]), 
	.A(P_DATA[7]));
   XOR3XLM U7 (.Y(n2), 
	.C(n6), 
	.B(P_DATA[0]), 
	.A(P_DATA[1]));
   XNOR2X2M U8 (.Y(n6), 
	.B(P_DATA[2]), 
	.A(P_DATA[3]));
endmodule

module Start_Checker (
	strt_chk_en, 
	sampled_data, 
	strt_glitch);
   input strt_chk_en;
   input sampled_data;
   output strt_glitch;

   AND2X2M U2 (.Y(strt_glitch), 
	.B(sampled_data), 
	.A(strt_chk_en));
endmodule

module TOP_RX_test_1 (
	RX_IN, 
	PAR_EN, 
	PAR_TYP, 
	CLK, 
	RST, 
	prescale, 
	stp_err, 
	par_err, 
	strt_glitch, 
	data_valid, 
	P_DATA, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN0_SYNC_RST_2, 
	RX_CLK_O__L4_N1);
   input RX_IN;
   input PAR_EN;
   input PAR_TYP;
   input CLK;
   input RST;
   input [0:5] prescale;
   output stp_err;
   output par_err;
   output strt_glitch;
   output data_valid;
   output [0:7] P_DATA;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN0_SYNC_RST_2;
   input RX_CLK_O__L4_N1;

   // Internal wires
   wire FE_PT0_;
   wire FE_UNCONNECTED_0;
   wire stp_en;
   wire deser_en;
   wire strt_chk_en;
   wire par_chk_en;
   wire data_sample_en;
   wire sampled_data;
   wire edge_cnt_done;
   wire n4;
   wire [0:4] edge_cnt;
   wire [0:3] bit_cnt;

   assign test_so = edge_cnt[4] ;

   FSM_RX_test_1 U1 (.PAR_EN(PAR_EN), 
	.RX_IN(RX_IN), 
	.strt_glitch(strt_glitch), 
	.stp_err(stp_err), 
	.par_err(par_err), 
	.edge_cnt_done(edge_cnt_done), 
	.CLK(RX_CLK_O__L4_N1), 
	.RST(RST), 
	.bit_cnt({ bit_cnt[0],
		bit_cnt[1],
		bit_cnt[2],
		bit_cnt[3] }), 
	.enable(FE_PT0_), 
	.stp_en(stp_en), 
	.deser_en(deser_en), 
	.strt_chk_en(strt_chk_en), 
	.par_chk_en(par_chk_en), 
	.data_valid(data_valid), 
	.data_sample_en(data_sample_en), 
	.test_si(test_si), 
	.test_so(n4), 
	.test_se(test_se));
   data_sampling_test_1 U2 (.edge_cnt({ edge_cnt[0],
		edge_cnt[1],
		edge_cnt[2],
		edge_cnt[3],
		edge_cnt[4] }), 
	.data_sample_en(data_sample_en), 
	.RX_IN(RX_IN), 
	.CLK(RX_CLK_O__L4_N1), 
	.RST(RST), 
	.prescale({ prescale[0],
		prescale[1],
		prescale[2],
		prescale[3],
		prescale[4],
		prescale[5] }), 
	.sampled_data(sampled_data), 
	.test_si(n4), 
	.test_se(test_se));
   desrializer_test_1 U3 (.sampled_data(sampled_data), 
	.deser_en(deser_en), 
	.edge_cnt_done(edge_cnt_done), 
	.CLK(CLK), 
	.RST(FE_OFN0_SYNC_RST_2), 
	.P_DATA({ P_DATA[0],
		P_DATA[1],
		P_DATA[2],
		P_DATA[3],
		P_DATA[4],
		P_DATA[5],
		P_DATA[6],
		P_DATA[7] }), 
	.test_se(test_se), 
	.RX_CLK_O__L4_N1(RX_CLK_O__L4_N1));
   edge_bit_counter_test_1 U4 (.enable(data_sample_en), 
	.PAR_EN(PAR_EN), 
	.CLK(CLK), 
	.RST(RST), 
	.prescale({ prescale[0],
		prescale[1],
		prescale[2],
		prescale[3],
		prescale[4],
		prescale[5] }), 
	.edge_cnt_done(edge_cnt_done), 
	.edge_cnt({ edge_cnt[0],
		edge_cnt[1],
		edge_cnt[2],
		edge_cnt[3],
		edge_cnt[4] }), 
	.bit_cnt({ bit_cnt[0],
		bit_cnt[1],
		bit_cnt[2],
		bit_cnt[3] }), 
	.test_si(P_DATA[7]), 
	.test_se(test_se), 
	.FE_OFN0_SYNC_RST_2(FE_OFN0_SYNC_RST_2), 
	.RX_CLK_O__L4_N1(RX_CLK_O__L4_N1));
   Stop_Checker_RX U5 (.stp_en(stp_en), 
	.sampled_data(sampled_data), 
	.stp_err(stp_err));
   Parity_Checker U6 (.par_chk_en(par_chk_en), 
	.sampled_data(sampled_data), 
	.PAR_TYP(PAR_TYP), 
	.P_DATA({ P_DATA[0],
		P_DATA[1],
		P_DATA[2],
		P_DATA[3],
		P_DATA[4],
		P_DATA[5],
		P_DATA[6],
		P_DATA[7] }), 
	.par_err(par_err));
   Start_Checker U7 (.strt_chk_en(strt_chk_en), 
	.sampled_data(sampled_data), 
	.strt_glitch(strt_glitch));
endmodule

module UART_TOP_test_1 (
	TX_CLK, 
	RX_CLK, 
	RST, 
	TX_IN_P, 
	TX_IN_V, 
	RX_IN_S, 
	prescale, 
	PAR_TYP, 
	PAR_EN, 
	TX_OUT_S, 
	RX_OUT_P, 
	RX_OUT_V, 
	busy, 
	stp_err, 
	par_err, 
	strt_glitch, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN0_SYNC_RST_2, 
	RX_CLK_O__L4_N1, 
	TX_CLK_O__L3_N1, 
	TX_CLK_O__L3_N2, 
	TX_CLK_O__L3_N3);
   input TX_CLK;
   input RX_CLK;
   input RST;
   input [7:0] TX_IN_P;
   input TX_IN_V;
   input RX_IN_S;
   input [0:5] prescale;
   input PAR_TYP;
   input PAR_EN;
   output TX_OUT_S;
   output [0:7] RX_OUT_P;
   output RX_OUT_V;
   output busy;
   output stp_err;
   output par_err;
   output strt_glitch;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN0_SYNC_RST_2;
   input RX_CLK_O__L4_N1;
   input TX_CLK_O__L3_N1;
   input TX_CLK_O__L3_N2;
   input TX_CLK_O__L3_N3;

   // Internal wires
   wire n5;

   Top_TX_test_1 U0 (.Data_Valid(TX_IN_V), 
	.PAR_TYP(PAR_TYP), 
	.PAR_EN(PAR_EN), 
	.P_DATA({ TX_IN_P[7],
		TX_IN_P[6],
		TX_IN_P[5],
		TX_IN_P[4],
		TX_IN_P[3],
		TX_IN_P[2],
		TX_IN_P[1],
		TX_IN_P[0] }), 
	.CLK(TX_CLK), 
	.RST(RST), 
	.TX_OUT(TX_OUT_S), 
	.busy(busy), 
	.test_si(test_si), 
	.test_so(n5), 
	.test_se(test_se), 
	.FE_OFN0_SYNC_RST_2(FE_OFN0_SYNC_RST_2), 
	.TX_CLK_O__L3_N1(TX_CLK_O__L3_N1), 
	.TX_CLK_O__L3_N2(TX_CLK_O__L3_N2), 
	.TX_CLK_O__L3_N3(TX_CLK_O__L3_N3));
   TOP_RX_test_1 U1 (.RX_IN(RX_IN_S), 
	.PAR_EN(PAR_EN), 
	.PAR_TYP(PAR_TYP), 
	.CLK(RX_CLK), 
	.RST(RST), 
	.prescale({ prescale[0],
		prescale[1],
		prescale[2],
		prescale[3],
		prescale[4],
		prescale[5] }), 
	.stp_err(stp_err), 
	.par_err(par_err), 
	.strt_glitch(strt_glitch), 
	.data_valid(RX_OUT_V), 
	.P_DATA({ RX_OUT_P[0],
		RX_OUT_P[1],
		RX_OUT_P[2],
		RX_OUT_P[3],
		RX_OUT_P[4],
		RX_OUT_P[5],
		RX_OUT_P[6],
		RX_OUT_P[7] }), 
	.test_si(n5), 
	.test_so(test_so), 
	.test_se(test_se), 
	.FE_OFN0_SYNC_RST_2(FE_OFN0_SYNC_RST_2), 
	.RX_CLK_O__L4_N1(RX_CLK_O__L4_N1));
endmodule

module ClkDiv_0_DW01_inc_0 (
	A, 
	SUM);
   input [7:0] A;
   output [7:0] SUM;

   // Internal wires
   wire [7:2] carry;

   ADDHX1M U1_1_6 (.S(SUM[6]), 
	.CO(carry[7]), 
	.B(carry[6]), 
	.A(A[6]));
   ADDHX1M U1_1_5 (.S(SUM[5]), 
	.CO(carry[6]), 
	.B(carry[5]), 
	.A(A[5]));
   ADDHX1M U1_1_4 (.S(SUM[4]), 
	.CO(carry[5]), 
	.B(carry[4]), 
	.A(A[4]));
   ADDHX1M U1_1_3 (.S(SUM[3]), 
	.CO(carry[4]), 
	.B(carry[3]), 
	.A(A[3]));
   ADDHX1M U1_1_2 (.S(SUM[2]), 
	.CO(carry[3]), 
	.B(carry[2]), 
	.A(A[2]));
   ADDHX1M U1_1_1 (.S(SUM[1]), 
	.CO(carry[2]), 
	.B(A[0]), 
	.A(A[1]));
   CLKXOR2X2M U1 (.Y(SUM[7]), 
	.B(A[7]), 
	.A(carry[7]));
   CLKINVX1M U2 (.Y(SUM[0]), 
	.A(A[0]));
endmodule

module ClkDiv_test_0 (
	i_ref_clk, 
	i_rst_n, 
	i_clk_en, 
	i_div_ratio, 
	o_div_clk, 
	test_si, 
	test_so, 
	test_se, 
	UART_CLK_O__L3_N1, 
	UART_CLK_O__L7_N1);
   input i_ref_clk;
   input i_rst_n;
   input i_clk_en;
   input [7:0] i_div_ratio;
   output o_div_clk;
   input test_si;
   output test_so;
   input test_se;
   input UART_CLK_O__L3_N1;
   input UART_CLK_O__L7_N1;

   // Internal wires
   wire FE_PHN29_div_clk__Exclude_0_NET;
   wire div_clk__Exclude_0_NET;
   wire HTIE_LTIEHI_NET;
   wire N2;
   wire N7;
   wire N8;
   wire N9;
   wire N10;
   wire N11;
   wire N12;
   wire N13;
   wire div_clk;
   wire duty;
   wire N19;
   wire N20;
   wire N21;
   wire N22;
   wire N23;
   wire N24;
   wire N25;
   wire N26;
   wire N44;
   wire N45;
   wire N46;
   wire N47;
   wire N48;
   wire N49;
   wire N50;
   wire N51;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n67;
   wire n68;
   wire [6:0] half_cycle;
   wire [7:0] counter;

   assign test_so = duty ;

   DLY4X1M FE_PHC29_div_clk__Exclude_0_NET (.Y(FE_PHN29_div_clk__Exclude_0_NET), 
	.A(div_clk__Exclude_0_NET));
   BUFX8M div_clk__Exclude_0 (.Y(div_clk__Exclude_0_NET), 
	.A(div_clk));
   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   SDFFRQX2M duty_reg (.SI(FE_PHN29_div_clk__Exclude_0_NET), 
	.SE(n68), 
	.RN(i_rst_n), 
	.Q(duty), 
	.D(n41), 
	.CK(i_ref_clk));
   SDFFRQX2M div_clk_reg (.SI(counter[7]), 
	.SE(n68), 
	.RN(i_rst_n), 
	.Q(div_clk), 
	.D(n32), 
	.CK(UART_CLK_O__L3_N1));
   SDFFRQX2M \counter_reg[5]  (.SI(counter[4]), 
	.SE(n68), 
	.RN(i_rst_n), 
	.Q(counter[5]), 
	.D(n35), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[6]  (.SI(counter[5]), 
	.SE(n68), 
	.RN(i_rst_n), 
	.Q(counter[6]), 
	.D(n34), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[7]  (.SI(counter[6]), 
	.SE(n68), 
	.RN(i_rst_n), 
	.Q(counter[7]), 
	.D(n33), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[0]  (.SI(test_si), 
	.SE(n68), 
	.RN(i_rst_n), 
	.Q(counter[0]), 
	.D(n40), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[1]  (.SI(counter[0]), 
	.SE(n68), 
	.RN(i_rst_n), 
	.Q(counter[1]), 
	.D(n39), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[2]  (.SI(counter[1]), 
	.SE(n68), 
	.RN(i_rst_n), 
	.Q(counter[2]), 
	.D(n38), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[3]  (.SI(counter[2]), 
	.SE(n68), 
	.RN(i_rst_n), 
	.Q(counter[3]), 
	.D(n37), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[4]  (.SI(counter[3]), 
	.SE(n68), 
	.RN(i_rst_n), 
	.Q(counter[4]), 
	.D(n36), 
	.CK(i_ref_clk));
   OR2X2M U6 (.Y(n8), 
	.B(half_cycle[0]), 
	.A(half_cycle[1]));
   NAND2BX2M U7 (.Y(n25), 
	.B(HTIE_LTIEHI_NET), 
	.AN(n63));
   INVX2M U8 (.Y(n26), 
	.A(i_div_ratio[0]));
   INVX2M U13 (.Y(n7), 
	.A(i_div_ratio[5]));
   MX2X2M U17 (.Y(o_div_clk), 
	.S0(N2), 
	.B(div_clk), 
	.A(UART_CLK_O__L7_N1));
   OR2X1M U18 (.Y(n1), 
	.B(i_div_ratio[0]), 
	.A(i_div_ratio[1]));
   OAI2BB1X1M U19 (.Y(N7), 
	.B0(n1), 
	.A1N(i_div_ratio[1]), 
	.A0N(i_div_ratio[0]));
   OR2X1M U20 (.Y(n2), 
	.B(i_div_ratio[2]), 
	.A(n1));
   OAI2BB1X1M U21 (.Y(N8), 
	.B0(n2), 
	.A1N(i_div_ratio[2]), 
	.A0N(n1));
   OR2X1M U22 (.Y(n3), 
	.B(i_div_ratio[3]), 
	.A(n2));
   OAI2BB1X1M U23 (.Y(N9), 
	.B0(n3), 
	.A1N(i_div_ratio[3]), 
	.A0N(n2));
   NOR2X1M U24 (.Y(n4), 
	.B(i_div_ratio[4]), 
	.A(n3));
   AO21XLM U25 (.Y(N10), 
	.B0(n4), 
	.A1(i_div_ratio[4]), 
	.A0(n3));
   CLKNAND2X2M U26 (.Y(n5), 
	.B(n7), 
	.A(n4));
   OAI21X1M U27 (.Y(N11), 
	.B0(n5), 
	.A1(n7), 
	.A0(n4));
   XNOR2X1M U28 (.Y(N12), 
	.B(n5), 
	.A(i_div_ratio[6]));
   NOR2X1M U29 (.Y(n6), 
	.B(n5), 
	.A(i_div_ratio[6]));
   CLKXOR2X2M U30 (.Y(N13), 
	.B(n6), 
	.A(i_div_ratio[7]));
   CLKINVX1M U31 (.Y(N19), 
	.A(half_cycle[0]));
   OAI2BB1X1M U32 (.Y(N20), 
	.B0(n8), 
	.A1N(half_cycle[1]), 
	.A0N(half_cycle[0]));
   OR2X1M U33 (.Y(n9), 
	.B(half_cycle[2]), 
	.A(n8));
   OAI2BB1X1M U34 (.Y(N21), 
	.B0(n9), 
	.A1N(half_cycle[2]), 
	.A0N(n8));
   OR2X1M U35 (.Y(n20), 
	.B(half_cycle[3]), 
	.A(n9));
   OAI2BB1X1M U36 (.Y(N22), 
	.B0(n20), 
	.A1N(half_cycle[3]), 
	.A0N(n9));
   OR2X1M U37 (.Y(n21), 
	.B(half_cycle[4]), 
	.A(n20));
   OAI2BB1X1M U38 (.Y(N23), 
	.B0(n21), 
	.A1N(half_cycle[4]), 
	.A0N(n20));
   XNOR2X1M U39 (.Y(N24), 
	.B(n21), 
	.A(half_cycle[5]));
   NOR3X1M U40 (.Y(N26), 
	.C(n21), 
	.B(half_cycle[6]), 
	.A(half_cycle[5]));
   OAI21X1M U41 (.Y(n22), 
	.B0(half_cycle[6]), 
	.A1(n21), 
	.A0(half_cycle[5]));
   NAND2BX1M U42 (.Y(N25), 
	.B(n22), 
	.AN(N26));
   MXI2X1M U43 (.Y(n41), 
	.S0(duty), 
	.B(n24), 
	.A(n23));
   NOR4X1M U44 (.Y(n24), 
	.D(n28), 
	.C(n27), 
	.B(n26), 
	.A(n25));
   OR4X1M U45 (.Y(n23), 
	.D(n30), 
	.C(n29), 
	.B(n25), 
	.A(n26));
   AO22X1M U46 (.Y(n40), 
	.B1(n31), 
	.B0(N44), 
	.A1(counter[0]), 
	.A0(n25));
   AO22X1M U47 (.Y(n39), 
	.B1(n31), 
	.B0(N45), 
	.A1(counter[1]), 
	.A0(n25));
   AO22X1M U48 (.Y(n38), 
	.B1(n31), 
	.B0(N46), 
	.A1(counter[2]), 
	.A0(n25));
   AO22X1M U49 (.Y(n37), 
	.B1(n31), 
	.B0(N47), 
	.A1(counter[3]), 
	.A0(n25));
   AO22X1M U50 (.Y(n36), 
	.B1(n31), 
	.B0(N48), 
	.A1(counter[4]), 
	.A0(n25));
   AO22X1M U51 (.Y(n35), 
	.B1(n31), 
	.B0(N49), 
	.A1(counter[5]), 
	.A0(n25));
   AO22X1M U52 (.Y(n34), 
	.B1(n31), 
	.B0(N50), 
	.A1(counter[6]), 
	.A0(n25));
   OAI2BB2X1M U53 (.Y(n33), 
	.B1(n42), 
	.B0(N2), 
	.A1N(n31), 
	.A0N(N51));
   NOR2BX1M U54 (.Y(n31), 
	.B(n25), 
	.AN(n43));
   CLKXOR2X2M U55 (.Y(n32), 
	.B(n44), 
	.A(div_clk__Exclude_0_NET));
   NOR2X1M U56 (.Y(n44), 
	.B(n25), 
	.A(n43));
   MXI2X1M U57 (.Y(n43), 
	.S0(n47), 
	.B(n46), 
	.A(n45));
   AND2X1M U58 (.Y(n47), 
	.B(i_div_ratio[0]), 
	.A(duty));
   NOR2X1M U59 (.Y(n46), 
	.B(n28), 
	.A(n27));
   NAND4X1M U60 (.Y(n28), 
	.D(n42), 
	.C(n50), 
	.B(n49), 
	.A(n48));
   XNOR2X1M U61 (.Y(n50), 
	.B(counter[0]), 
	.A(half_cycle[0]));
   XNOR2X1M U62 (.Y(n49), 
	.B(counter[1]), 
	.A(half_cycle[1]));
   XNOR2X1M U63 (.Y(n48), 
	.B(counter[2]), 
	.A(half_cycle[2]));
   NAND4X1M U64 (.Y(n27), 
	.D(n54), 
	.C(n53), 
	.B(n52), 
	.A(n51));
   XNOR2X1M U65 (.Y(n54), 
	.B(counter[3]), 
	.A(half_cycle[3]));
   XNOR2X1M U66 (.Y(n53), 
	.B(counter[4]), 
	.A(half_cycle[4]));
   XNOR2X1M U67 (.Y(n52), 
	.B(counter[5]), 
	.A(half_cycle[5]));
   XNOR2X1M U68 (.Y(n51), 
	.B(counter[6]), 
	.A(half_cycle[6]));
   NOR2X1M U69 (.Y(n45), 
	.B(n29), 
	.A(n30));
   NAND4X1M U70 (.Y(n29), 
	.D(n58), 
	.C(n57), 
	.B(n56), 
	.A(n55));
   XNOR2X1M U71 (.Y(n58), 
	.B(N19), 
	.A(counter[0]));
   XNOR2X1M U72 (.Y(n57), 
	.B(N20), 
	.A(counter[1]));
   XNOR2X1M U73 (.Y(n56), 
	.B(N21), 
	.A(counter[2]));
   CLKXOR2X2M U74 (.Y(n55), 
	.B(N26), 
	.A(n42));
   CLKINVX1M U75 (.Y(n42), 
	.A(counter[7]));
   NAND4X1M U76 (.Y(n30), 
	.D(n62), 
	.C(n61), 
	.B(n60), 
	.A(n59));
   XNOR2X1M U77 (.Y(n62), 
	.B(N22), 
	.A(counter[3]));
   XNOR2X1M U78 (.Y(n61), 
	.B(N23), 
	.A(counter[4]));
   XNOR2X1M U79 (.Y(n60), 
	.B(N24), 
	.A(counter[5]));
   XNOR2X1M U80 (.Y(n59), 
	.B(N25), 
	.A(counter[6]));
   CLKMX2X2M U81 (.Y(half_cycle[6]), 
	.S0(n26), 
	.B(i_div_ratio[7]), 
	.A(N13));
   CLKMX2X2M U82 (.Y(half_cycle[5]), 
	.S0(n26), 
	.B(i_div_ratio[6]), 
	.A(N12));
   CLKMX2X2M U83 (.Y(half_cycle[4]), 
	.S0(n26), 
	.B(i_div_ratio[5]), 
	.A(N11));
   CLKMX2X2M U84 (.Y(half_cycle[3]), 
	.S0(n26), 
	.B(i_div_ratio[4]), 
	.A(N10));
   CLKMX2X2M U85 (.Y(half_cycle[2]), 
	.S0(n26), 
	.B(i_div_ratio[3]), 
	.A(N9));
   CLKMX2X2M U86 (.Y(half_cycle[1]), 
	.S0(n26), 
	.B(i_div_ratio[2]), 
	.A(N8));
   CLKMX2X2M U87 (.Y(half_cycle[0]), 
	.S0(n26), 
	.B(i_div_ratio[1]), 
	.A(N7));
   CLKINVX1M U88 (.Y(N2), 
	.A(n25));
   NOR4BX1M U89 (.Y(n63), 
	.D(i_div_ratio[1]), 
	.C(i_div_ratio[3]), 
	.B(i_div_ratio[2]), 
	.AN(n64));
   NOR4X1M U90 (.Y(n64), 
	.D(i_div_ratio[4]), 
	.C(i_div_ratio[5]), 
	.B(i_div_ratio[6]), 
	.A(i_div_ratio[7]));
   INVXLM U91 (.Y(n67), 
	.A(test_se));
   CLKINVX2M U92 (.Y(n68), 
	.A(n67));
   ClkDiv_0_DW01_inc_0 add_58 (.A({ counter[7],
		counter[6],
		counter[5],
		counter[4],
		counter[3],
		counter[2],
		counter[1],
		counter[0] }), 
	.SUM({ N51,
		N50,
		N49,
		N48,
		N47,
		N46,
		N45,
		N44 }));
endmodule

module ClkDiv_1_DW01_inc_0 (
	A, 
	SUM);
   input [7:0] A;
   output [7:0] SUM;

   // Internal wires
   wire [7:2] carry;

   ADDHX1M U1_1_6 (.S(SUM[6]), 
	.CO(carry[7]), 
	.B(carry[6]), 
	.A(A[6]));
   ADDHX1M U1_1_5 (.S(SUM[5]), 
	.CO(carry[6]), 
	.B(carry[5]), 
	.A(A[5]));
   ADDHX1M U1_1_4 (.S(SUM[4]), 
	.CO(carry[5]), 
	.B(carry[4]), 
	.A(A[4]));
   ADDHX1M U1_1_3 (.S(SUM[3]), 
	.CO(carry[4]), 
	.B(carry[3]), 
	.A(A[3]));
   ADDHX1M U1_1_2 (.S(SUM[2]), 
	.CO(carry[3]), 
	.B(carry[2]), 
	.A(A[2]));
   ADDHX1M U1_1_1 (.S(SUM[1]), 
	.CO(carry[2]), 
	.B(A[0]), 
	.A(A[1]));
   CLKXOR2X2M U1 (.Y(SUM[7]), 
	.B(A[7]), 
	.A(carry[7]));
   CLKINVX1M U2 (.Y(SUM[0]), 
	.A(A[0]));
endmodule

module ClkDiv_test_1 (
	i_ref_clk, 
	i_rst_n, 
	i_clk_en, 
	i_div_ratio, 
	o_div_clk, 
	test_si, 
	test_so, 
	test_se, 
	UART_CLK_O__L13_N1, 
	UART_CLK_O__L3_N0, 
	UART_CLK_O__L7_N0);
   input i_ref_clk;
   input i_rst_n;
   input i_clk_en;
   input [7:0] i_div_ratio;
   output o_div_clk;
   input test_si;
   output test_so;
   input test_se;
   input UART_CLK_O__L13_N1;
   input UART_CLK_O__L3_N0;
   input UART_CLK_O__L7_N0;

   // Internal wires
   wire FE_PHN28_div_clk__Exclude_0_NET;
   wire div_clk__Exclude_0_NET;
   wire HTIE_LTIEHI_NET;
   wire LTIE_LTIELO_NET;
   wire N2;
   wire N7;
   wire N8;
   wire N9;
   wire N10;
   wire N11;
   wire N12;
   wire N13;
   wire div_clk;
   wire duty;
   wire N19;
   wire N20;
   wire N21;
   wire N22;
   wire N23;
   wire N24;
   wire N25;
   wire N26;
   wire N44;
   wire N45;
   wire N46;
   wire N47;
   wire N48;
   wire N49;
   wire N50;
   wire N51;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n87;
   wire n88;
   wire [6:0] half_cycle;
   wire [7:0] counter;

   assign test_so = duty ;

   DLY4X1M FE_PHC28_div_clk__Exclude_0_NET (.Y(FE_PHN28_div_clk__Exclude_0_NET), 
	.A(div_clk__Exclude_0_NET));
   BUFX8M div_clk__Exclude_0 (.Y(div_clk__Exclude_0_NET), 
	.A(div_clk));
   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   TIELOM LTIE_LTIELO (.Y(LTIE_LTIELO_NET));
   SDFFRQX2M duty_reg (.SI(FE_PHN28_div_clk__Exclude_0_NET), 
	.SE(n88), 
	.RN(i_rst_n), 
	.Q(duty), 
	.D(n65), 
	.CK(UART_CLK_O__L13_N1));
   SDFFRQX2M div_clk_reg (.SI(counter[7]), 
	.SE(n88), 
	.RN(i_rst_n), 
	.Q(div_clk), 
	.D(n74), 
	.CK(UART_CLK_O__L3_N0));
   SDFFRQX2M \counter_reg[7]  (.SI(counter[6]), 
	.SE(n88), 
	.RN(i_rst_n), 
	.Q(counter[7]), 
	.D(n73), 
	.CK(UART_CLK_O__L13_N1));
   SDFFRQX2M \counter_reg[0]  (.SI(test_si), 
	.SE(n88), 
	.RN(i_rst_n), 
	.Q(counter[0]), 
	.D(n66), 
	.CK(UART_CLK_O__L13_N1));
   SDFFRQX2M \counter_reg[1]  (.SI(counter[0]), 
	.SE(n88), 
	.RN(i_rst_n), 
	.Q(counter[1]), 
	.D(n67), 
	.CK(UART_CLK_O__L13_N1));
   SDFFRQX2M \counter_reg[2]  (.SI(counter[1]), 
	.SE(n88), 
	.RN(i_rst_n), 
	.Q(counter[2]), 
	.D(n68), 
	.CK(UART_CLK_O__L13_N1));
   SDFFRQX2M \counter_reg[3]  (.SI(counter[2]), 
	.SE(n88), 
	.RN(i_rst_n), 
	.Q(counter[3]), 
	.D(n69), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[4]  (.SI(counter[3]), 
	.SE(n88), 
	.RN(i_rst_n), 
	.Q(counter[4]), 
	.D(n70), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[5]  (.SI(counter[4]), 
	.SE(n88), 
	.RN(i_rst_n), 
	.Q(counter[5]), 
	.D(n71), 
	.CK(UART_CLK_O__L13_N1));
   SDFFRQX2M \counter_reg[6]  (.SI(counter[5]), 
	.SE(n88), 
	.RN(i_rst_n), 
	.Q(counter[6]), 
	.D(n72), 
	.CK(UART_CLK_O__L13_N1));
   OR2X2M U6 (.Y(n8), 
	.B(half_cycle[0]), 
	.A(half_cycle[1]));
   INVX2M U7 (.Y(n26), 
	.A(i_div_ratio[0]));
   NAND2BX2M U8 (.Y(n25), 
	.B(HTIE_LTIEHI_NET), 
	.AN(n63));
   INVX2M U13 (.Y(n7), 
	.A(LTIE_LTIELO_NET));
   MX2X2M U17 (.Y(o_div_clk), 
	.S0(N2), 
	.B(div_clk), 
	.A(UART_CLK_O__L7_N0));
   OR2X1M U18 (.Y(n1), 
	.B(i_div_ratio[0]), 
	.A(i_div_ratio[1]));
   OAI2BB1X1M U19 (.Y(N7), 
	.B0(n1), 
	.A1N(i_div_ratio[1]), 
	.A0N(i_div_ratio[0]));
   OR2X1M U20 (.Y(n2), 
	.B(i_div_ratio[2]), 
	.A(n1));
   OAI2BB1X1M U21 (.Y(N8), 
	.B0(n2), 
	.A1N(i_div_ratio[2]), 
	.A0N(n1));
   OR2X1M U22 (.Y(n3), 
	.B(LTIE_LTIELO_NET), 
	.A(n2));
   OAI2BB1X1M U23 (.Y(N9), 
	.B0(n3), 
	.A1N(LTIE_LTIELO_NET), 
	.A0N(n2));
   NOR2X1M U24 (.Y(n4), 
	.B(LTIE_LTIELO_NET), 
	.A(n3));
   AO21XLM U25 (.Y(N10), 
	.B0(n4), 
	.A1(LTIE_LTIELO_NET), 
	.A0(n3));
   CLKNAND2X2M U26 (.Y(n5), 
	.B(n7), 
	.A(n4));
   OAI21X1M U27 (.Y(N11), 
	.B0(n5), 
	.A1(n7), 
	.A0(n4));
   XNOR2X1M U28 (.Y(N12), 
	.B(n5), 
	.A(LTIE_LTIELO_NET));
   NOR2X1M U29 (.Y(n6), 
	.B(n5), 
	.A(LTIE_LTIELO_NET));
   CLKXOR2X2M U30 (.Y(N13), 
	.B(n6), 
	.A(LTIE_LTIELO_NET));
   CLKINVX1M U31 (.Y(N19), 
	.A(half_cycle[0]));
   OAI2BB1X1M U32 (.Y(N20), 
	.B0(n8), 
	.A1N(half_cycle[1]), 
	.A0N(half_cycle[0]));
   OR2X1M U33 (.Y(n9), 
	.B(half_cycle[2]), 
	.A(n8));
   OAI2BB1X1M U34 (.Y(N21), 
	.B0(n9), 
	.A1N(half_cycle[2]), 
	.A0N(n8));
   OR2X1M U35 (.Y(n20), 
	.B(half_cycle[3]), 
	.A(n9));
   OAI2BB1X1M U36 (.Y(N22), 
	.B0(n20), 
	.A1N(half_cycle[3]), 
	.A0N(n9));
   OR2X1M U37 (.Y(n21), 
	.B(half_cycle[4]), 
	.A(n20));
   OAI2BB1X1M U38 (.Y(N23), 
	.B0(n21), 
	.A1N(half_cycle[4]), 
	.A0N(n20));
   XNOR2X1M U39 (.Y(N24), 
	.B(n21), 
	.A(half_cycle[5]));
   NOR3X1M U40 (.Y(N26), 
	.C(n21), 
	.B(half_cycle[6]), 
	.A(half_cycle[5]));
   OAI21X1M U41 (.Y(n22), 
	.B0(half_cycle[6]), 
	.A1(n21), 
	.A0(half_cycle[5]));
   NAND2BX1M U42 (.Y(N25), 
	.B(n22), 
	.AN(N26));
   MXI2X1M U43 (.Y(n65), 
	.S0(duty), 
	.B(n24), 
	.A(n23));
   NOR4X1M U44 (.Y(n24), 
	.D(n28), 
	.C(n27), 
	.B(n26), 
	.A(n25));
   OR4X1M U45 (.Y(n23), 
	.D(n30), 
	.C(n29), 
	.B(n25), 
	.A(n26));
   AO22X1M U46 (.Y(n66), 
	.B1(n31), 
	.B0(N44), 
	.A1(counter[0]), 
	.A0(n25));
   AO22X1M U47 (.Y(n67), 
	.B1(n31), 
	.B0(N45), 
	.A1(counter[1]), 
	.A0(n25));
   AO22X1M U48 (.Y(n68), 
	.B1(n31), 
	.B0(N46), 
	.A1(counter[2]), 
	.A0(n25));
   AO22X1M U49 (.Y(n69), 
	.B1(n31), 
	.B0(N47), 
	.A1(counter[3]), 
	.A0(n25));
   AO22X1M U50 (.Y(n70), 
	.B1(n31), 
	.B0(N48), 
	.A1(counter[4]), 
	.A0(n25));
   AO22X1M U51 (.Y(n71), 
	.B1(n31), 
	.B0(N49), 
	.A1(counter[5]), 
	.A0(n25));
   AO22X1M U52 (.Y(n72), 
	.B1(n31), 
	.B0(N50), 
	.A1(counter[6]), 
	.A0(n25));
   OAI2BB2X1M U53 (.Y(n73), 
	.B1(n42), 
	.B0(N2), 
	.A1N(n31), 
	.A0N(N51));
   NOR2BX1M U54 (.Y(n31), 
	.B(n25), 
	.AN(n43));
   CLKXOR2X2M U55 (.Y(n74), 
	.B(n44), 
	.A(div_clk__Exclude_0_NET));
   NOR2X1M U56 (.Y(n44), 
	.B(n25), 
	.A(n43));
   MXI2X1M U57 (.Y(n43), 
	.S0(n47), 
	.B(n46), 
	.A(n45));
   AND2X1M U58 (.Y(n47), 
	.B(i_div_ratio[0]), 
	.A(duty));
   NOR2X1M U59 (.Y(n46), 
	.B(n28), 
	.A(n27));
   NAND4X1M U60 (.Y(n28), 
	.D(n42), 
	.C(n50), 
	.B(n49), 
	.A(n48));
   XNOR2X1M U61 (.Y(n50), 
	.B(counter[0]), 
	.A(half_cycle[0]));
   XNOR2X1M U62 (.Y(n49), 
	.B(counter[1]), 
	.A(half_cycle[1]));
   XNOR2X1M U63 (.Y(n48), 
	.B(counter[2]), 
	.A(half_cycle[2]));
   NAND4X1M U64 (.Y(n27), 
	.D(n54), 
	.C(n53), 
	.B(n52), 
	.A(n51));
   XNOR2X1M U65 (.Y(n54), 
	.B(counter[3]), 
	.A(half_cycle[3]));
   XNOR2X1M U66 (.Y(n53), 
	.B(counter[4]), 
	.A(half_cycle[4]));
   XNOR2X1M U67 (.Y(n52), 
	.B(counter[5]), 
	.A(half_cycle[5]));
   XNOR2X1M U68 (.Y(n51), 
	.B(counter[6]), 
	.A(half_cycle[6]));
   NOR2X1M U69 (.Y(n45), 
	.B(n29), 
	.A(n30));
   NAND4X1M U70 (.Y(n29), 
	.D(n58), 
	.C(n57), 
	.B(n56), 
	.A(n55));
   XNOR2X1M U71 (.Y(n58), 
	.B(N19), 
	.A(counter[0]));
   XNOR2X1M U72 (.Y(n57), 
	.B(N20), 
	.A(counter[1]));
   XNOR2X1M U73 (.Y(n56), 
	.B(N21), 
	.A(counter[2]));
   CLKXOR2X2M U74 (.Y(n55), 
	.B(N26), 
	.A(n42));
   CLKINVX1M U75 (.Y(n42), 
	.A(counter[7]));
   NAND4X1M U76 (.Y(n30), 
	.D(n62), 
	.C(n61), 
	.B(n60), 
	.A(n59));
   XNOR2X1M U77 (.Y(n62), 
	.B(N22), 
	.A(counter[3]));
   XNOR2X1M U78 (.Y(n61), 
	.B(N23), 
	.A(counter[4]));
   XNOR2X1M U79 (.Y(n60), 
	.B(N24), 
	.A(counter[5]));
   XNOR2X1M U80 (.Y(n59), 
	.B(N25), 
	.A(counter[6]));
   CLKMX2X2M U81 (.Y(half_cycle[6]), 
	.S0(n26), 
	.B(LTIE_LTIELO_NET), 
	.A(N13));
   CLKMX2X2M U82 (.Y(half_cycle[5]), 
	.S0(n26), 
	.B(LTIE_LTIELO_NET), 
	.A(N12));
   CLKMX2X2M U83 (.Y(half_cycle[4]), 
	.S0(n26), 
	.B(LTIE_LTIELO_NET), 
	.A(N11));
   CLKMX2X2M U84 (.Y(half_cycle[3]), 
	.S0(n26), 
	.B(LTIE_LTIELO_NET), 
	.A(N10));
   CLKMX2X2M U85 (.Y(half_cycle[2]), 
	.S0(n26), 
	.B(LTIE_LTIELO_NET), 
	.A(N9));
   CLKMX2X2M U86 (.Y(half_cycle[1]), 
	.S0(n26), 
	.B(i_div_ratio[2]), 
	.A(N8));
   CLKMX2X2M U87 (.Y(half_cycle[0]), 
	.S0(n26), 
	.B(i_div_ratio[1]), 
	.A(N7));
   CLKINVX1M U88 (.Y(N2), 
	.A(n25));
   NOR4BX1M U89 (.Y(n63), 
	.D(i_div_ratio[1]), 
	.C(LTIE_LTIELO_NET), 
	.B(i_div_ratio[2]), 
	.AN(n64));
   NOR4X1M U90 (.Y(n64), 
	.D(LTIE_LTIELO_NET), 
	.C(LTIE_LTIELO_NET), 
	.B(LTIE_LTIELO_NET), 
	.A(LTIE_LTIELO_NET));
   INVXLM U91 (.Y(n87), 
	.A(test_se));
   CLKINVX2M U92 (.Y(n88), 
	.A(n87));
   ClkDiv_1_DW01_inc_0 add_58 (.A({ counter[7],
		counter[6],
		counter[5],
		counter[4],
		counter[3],
		counter[2],
		counter[1],
		counter[0] }), 
	.SUM({ N51,
		N50,
		N49,
		N48,
		N47,
		N46,
		N45,
		N44 }));
endmodule

module PULSE_GEN_test_1 (
	CLK, 
	RST, 
	LVL_SIG, 
	PULSE_SIG, 
	test_si, 
	test_se);
   input CLK;
   input RST;
   input LVL_SIG;
   output PULSE_SIG;
   input test_si;
   input test_se;

   // Internal wires
   wire LVL_SIG_OLD;
   wire pulse;

   SDFFRQX2M LVL_SIG_OLD_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(LVL_SIG_OLD), 
	.D(LVL_SIG), 
	.CK(CLK));
   SDFFRQX2M PULSE_SIG_reg (.SI(LVL_SIG_OLD), 
	.SE(test_se), 
	.RN(RST), 
	.Q(PULSE_SIG), 
	.D(pulse), 
	.CK(CLK));
   NOR2BX2M U5 (.Y(pulse), 
	.B(LVL_SIG_OLD), 
	.AN(LVL_SIG));
endmodule

module prescale_MUX (
	prescale, 
	div_ratio_RX);
   input [0:5] prescale;
   output [7:0] div_ratio_RX;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire n1;
   wire n2;
   wire n3;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   OAI21X2M U13 (.Y(div_ratio_RX[0]), 
	.B0(n2), 
	.A1(n3), 
	.A0(n1));
   AND2X2M U14 (.Y(div_ratio_RX[2]), 
	.B(n2), 
	.A(n1));
   AND2X2M U15 (.Y(div_ratio_RX[1]), 
	.B(n3), 
	.A(n2));
   NOR3BX2M U16 (.Y(n3), 
	.C(prescale[2]), 
	.B(prescale[0]), 
	.AN(prescale[1]));
   NOR3BX2M U17 (.Y(n1), 
	.C(prescale[1]), 
	.B(prescale[0]), 
	.AN(prescale[2]));
   NOR3X2M U18 (.Y(n2), 
	.C(prescale[3]), 
	.B(prescale[4]), 
	.A(prescale[5]));
   INVX2M U3 (.Y(div_ratio_RX[7]), 
	.A(HTIE_LTIEHI_NET));
   INVX2M U5 (.Y(div_ratio_RX[6]), 
	.A(HTIE_LTIEHI_NET));
   INVX2M U7 (.Y(div_ratio_RX[5]), 
	.A(HTIE_LTIEHI_NET));
   INVX2M U9 (.Y(div_ratio_RX[4]), 
	.A(HTIE_LTIEHI_NET));
   INVX2M U11 (.Y(div_ratio_RX[3]), 
	.A(HTIE_LTIEHI_NET));
endmodule

module MUX_2X1_2 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   // Internal wires
   wire N0;

   assign N0 = SEL ;

   MX2X2M U1 (.Y(OUT), 
	.S0(N0), 
	.B(IN_1), 
	.A(IN_0));
endmodule

module MUX_2X1_1 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   // Internal wires
   wire N0;

   assign N0 = SEL ;

   MX2X2M U1 (.Y(OUT), 
	.S0(N0), 
	.B(IN_1), 
	.A(IN_0));
endmodule

module Domain_2_TOP_test_1 (
	prescale, 
	Div_Ratio, 
	F_EMPTY, 
	RD_DATA, 
	RST, 
	UART_CLK, 
	RX_IN, 
	PAR_EN, 
	PAR_TYP, 
	test_mode, 
	scan_clk, 
	RD_INC, 
	RX_OUT_P, 
	RX_OUT_V, 
	TX_OUT_S, 
	stp_err, 
	par_err, 
	strt_glitch, 
	TX_CLK_O, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN0_SYNC_RST_2, 
	TX_CLK_O__L3_N0, 
	TX_CLK_O__L3_N1, 
	TX_CLK_O__L3_N2, 
	TX_CLK_O__L3_N3, 
	UART_CLK_O__L13_N1, 
	UART_CLK_O__L3_N0, 
	UART_CLK_O__L3_N1, 
	UART_CLK_O__L7_N0, 
	UART_CLK_O__L7_N1);
   input [0:5] prescale;
   input [7:0] Div_Ratio;
   input F_EMPTY;
   input [7:0] RD_DATA;
   input RST;
   input UART_CLK;
   input RX_IN;
   input PAR_EN;
   input PAR_TYP;
   input test_mode;
   input scan_clk;
   output RD_INC;
   output [0:7] RX_OUT_P;
   output RX_OUT_V;
   output TX_OUT_S;
   output stp_err;
   output par_err;
   output strt_glitch;
   output TX_CLK_O;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN0_SYNC_RST_2;
   input TX_CLK_O__L3_N0;
   input TX_CLK_O__L3_N1;
   input TX_CLK_O__L3_N2;
   input TX_CLK_O__L3_N3;
   input UART_CLK_O__L13_N1;
   input UART_CLK_O__L3_N0;
   input UART_CLK_O__L3_N1;
   input UART_CLK_O__L7_N0;
   input UART_CLK_O__L7_N1;

   // Internal wires
   wire TX_CLK__L1_N0;
   wire RX_CLK_O__L4_N1;
   wire RX_CLK_O__L4_N0;
   wire RX_CLK_O__L3_N0;
   wire RX_CLK_O__L2_N0;
   wire RX_CLK_O__L1_N0;
   wire RX_CLK_O;
   wire busy;
   wire TX_CLK;
   wire RX_CLK;
   wire n6;
   wire n7;
   wire [7:0] div_ratio_RX;
   wire SYNOPSYS_UNCONNECTED__0;
   wire SYNOPSYS_UNCONNECTED__1;
   wire SYNOPSYS_UNCONNECTED__2;
   wire SYNOPSYS_UNCONNECTED__3;
   wire SYNOPSYS_UNCONNECTED__4;

   CLKBUFX12M TX_CLK__L1_I0 (.Y(TX_CLK__L1_N0), 
	.A(TX_CLK));
   CLKINVX40M RX_CLK_O__L4_I1 (.Y(RX_CLK_O__L4_N1), 
	.A(RX_CLK_O__L3_N0));
   CLKINVX40M RX_CLK_O__L4_I0 (.Y(RX_CLK_O__L4_N0), 
	.A(RX_CLK_O__L3_N0));
   CLKINVX40M RX_CLK_O__L3_I0 (.Y(RX_CLK_O__L3_N0), 
	.A(RX_CLK_O__L2_N0));
   CLKBUFX40M RX_CLK_O__L2_I0 (.Y(RX_CLK_O__L2_N0), 
	.A(RX_CLK_O__L1_N0));
   CLKBUFX12M RX_CLK_O__L1_I0 (.Y(RX_CLK_O__L1_N0), 
	.A(RX_CLK_O));
   UART_TOP_test_1 UART_U0 (.TX_CLK(TX_CLK_O__L3_N0), 
	.RX_CLK(RX_CLK_O__L4_N0), 
	.RST(RST), 
	.TX_IN_P({ RD_DATA[7],
		RD_DATA[6],
		RD_DATA[5],
		RD_DATA[4],
		RD_DATA[3],
		RD_DATA[2],
		RD_DATA[1],
		RD_DATA[0] }), 
	.TX_IN_V(F_EMPTY), 
	.RX_IN_S(RX_IN), 
	.prescale({ prescale[0],
		prescale[1],
		prescale[2],
		prescale[3],
		prescale[4],
		prescale[5] }), 
	.PAR_TYP(PAR_TYP), 
	.PAR_EN(PAR_EN), 
	.TX_OUT_S(TX_OUT_S), 
	.RX_OUT_P({ RX_OUT_P[0],
		RX_OUT_P[1],
		RX_OUT_P[2],
		RX_OUT_P[3],
		RX_OUT_P[4],
		RX_OUT_P[5],
		RX_OUT_P[6],
		RX_OUT_P[7] }), 
	.RX_OUT_V(RX_OUT_V), 
	.busy(busy), 
	.stp_err(stp_err), 
	.par_err(par_err), 
	.strt_glitch(strt_glitch), 
	.test_si(RD_INC), 
	.test_so(test_so), 
	.test_se(test_se), 
	.FE_OFN0_SYNC_RST_2(FE_OFN0_SYNC_RST_2), 
	.RX_CLK_O__L4_N1(RX_CLK_O__L4_N1), 
	.TX_CLK_O__L3_N1(TX_CLK_O__L3_N1), 
	.TX_CLK_O__L3_N2(TX_CLK_O__L3_N2), 
	.TX_CLK_O__L3_N3(TX_CLK_O__L3_N3));
   ClkDiv_test_0 ClkDiv_U1_TX (.i_ref_clk(UART_CLK), 
	.i_rst_n(RST), 
	.i_clk_en(1'b1), 
	.i_div_ratio({ Div_Ratio[7],
		Div_Ratio[6],
		Div_Ratio[5],
		Div_Ratio[4],
		Div_Ratio[3],
		Div_Ratio[2],
		Div_Ratio[1],
		Div_Ratio[0] }), 
	.o_div_clk(TX_CLK), 
	.test_si(test_si), 
	.test_so(n7), 
	.test_se(test_se), 
	.UART_CLK_O__L3_N1(UART_CLK_O__L3_N1), 
	.UART_CLK_O__L7_N1(UART_CLK_O__L7_N1));
   ClkDiv_test_1 ClkDiv_U2_RX (.i_ref_clk(UART_CLK), 
	.i_rst_n(RST), 
	.i_clk_en(1'b1), 
	.i_div_ratio({ 1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		div_ratio_RX[2],
		div_ratio_RX[1],
		div_ratio_RX[0] }), 
	.o_div_clk(RX_CLK), 
	.test_si(n7), 
	.test_so(n6), 
	.test_se(test_se), 
	.UART_CLK_O__L13_N1(UART_CLK_O__L13_N1), 
	.UART_CLK_O__L3_N0(UART_CLK_O__L3_N0), 
	.UART_CLK_O__L7_N0(UART_CLK_O__L7_N0));
   PULSE_GEN_test_1 PULSE_GEN_U3 (.CLK(TX_CLK_O__L3_N3), 
	.RST(RST), 
	.LVL_SIG(busy), 
	.PULSE_SIG(RD_INC), 
	.test_si(n6), 
	.test_se(test_se));
   prescale_MUX prescale_MUX_U4 (.prescale({ prescale[0],
		prescale[1],
		prescale[2],
		prescale[3],
		prescale[4],
		prescale[5] }), 
	.div_ratio_RX({ SYNOPSYS_UNCONNECTED__0,
		SYNOPSYS_UNCONNECTED__1,
		SYNOPSYS_UNCONNECTED__2,
		SYNOPSYS_UNCONNECTED__3,
		SYNOPSYS_UNCONNECTED__4,
		div_ratio_RX[2],
		div_ratio_RX[1],
		div_ratio_RX[0] }));
   MUX_2X1_2 MUX_2X1_U5 (.IN_0(RX_CLK), 
	.IN_1(scan_clk), 
	.SEL(test_mode), 
	.OUT(RX_CLK_O));
   MUX_2X1_1 MUX_2X1_U6 (.IN_0(TX_CLK__L1_N0), 
	.IN_1(scan_clk), 
	.SEL(test_mode), 
	.OUT(TX_CLK_O));
endmodule

module DATA_SYNC_test_1 (
	unsync_bus, 
	bus_enable, 
	CLK, 
	RST, 
	sync_bus, 
	enable_pulse, 
	test_si, 
	test_se, 
	FE_OFN2_SYNC_RST_1);
   input [0:7] unsync_bus;
   input bus_enable;
   input CLK;
   input RST;
   output [7:0] sync_bus;
   output enable_pulse;
   input test_si;
   input test_se;
   input FE_OFN2_SYNC_RST_1;

   // Internal wires
   wire enable_flop;
   wire n1;
   wire n4;
   wire n6;
   wire n8;
   wire n10;
   wire n12;
   wire n14;
   wire n16;
   wire n18;
   wire n22;
   wire [0:1] stage;

   SDFFRQX2M enable_flop_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(enable_flop), 
	.D(stage[1]), 
	.CK(CLK));
   SDFFRQX2M \stage_reg[1]  (.SI(stage[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(stage[1]), 
	.D(stage[0]), 
	.CK(CLK));
   SDFFRQX2M \sync_bus_reg[7]  (.SI(sync_bus[6]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_bus[7]), 
	.D(n18), 
	.CK(CLK));
   SDFFRQX2M \sync_bus_reg[0]  (.SI(stage[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_bus[0]), 
	.D(n4), 
	.CK(CLK));
   SDFFRQX2M \sync_bus_reg[3]  (.SI(sync_bus[2]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_bus[3]), 
	.D(n10), 
	.CK(CLK));
   SDFFRQX2M \sync_bus_reg[5]  (.SI(sync_bus[4]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_bus[5]), 
	.D(n14), 
	.CK(CLK));
   SDFFRQX2M \sync_bus_reg[1]  (.SI(sync_bus[0]), 
	.SE(test_se), 
	.RN(FE_OFN2_SYNC_RST_1), 
	.Q(sync_bus[1]), 
	.D(n6), 
	.CK(CLK));
   SDFFRQX2M \sync_bus_reg[2]  (.SI(sync_bus[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_bus[2]), 
	.D(n8), 
	.CK(CLK));
   SDFFRQX2M \sync_bus_reg[6]  (.SI(sync_bus[5]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_bus[6]), 
	.D(n16), 
	.CK(CLK));
   SDFFRQX2M \sync_bus_reg[4]  (.SI(sync_bus[3]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_bus[4]), 
	.D(n12), 
	.CK(CLK));
   SDFFRQX2M enable_pulse_reg (.SI(enable_flop), 
	.SE(test_se), 
	.RN(RST), 
	.Q(enable_pulse), 
	.D(n22), 
	.CK(CLK));
   SDFFRQX2M \stage_reg[0]  (.SI(enable_pulse), 
	.SE(test_se), 
	.RN(RST), 
	.Q(stage[0]), 
	.D(bus_enable), 
	.CK(CLK));
   INVX2M U3 (.Y(n22), 
	.A(n1));
   NAND2BX2M U4 (.Y(n1), 
	.B(stage[1]), 
	.AN(enable_flop));
   AO22X1M U5 (.Y(n4), 
	.B1(n1), 
	.B0(sync_bus[0]), 
	.A1(n22), 
	.A0(unsync_bus[7]));
   AO22X1M U6 (.Y(n6), 
	.B1(n1), 
	.B0(sync_bus[1]), 
	.A1(n22), 
	.A0(unsync_bus[6]));
   AO22X1M U7 (.Y(n8), 
	.B1(n1), 
	.B0(sync_bus[2]), 
	.A1(n22), 
	.A0(unsync_bus[5]));
   AO22X1M U8 (.Y(n10), 
	.B1(n1), 
	.B0(sync_bus[3]), 
	.A1(n22), 
	.A0(unsync_bus[4]));
   AO22X1M U9 (.Y(n12), 
	.B1(n1), 
	.B0(sync_bus[4]), 
	.A1(n22), 
	.A0(unsync_bus[3]));
   AO22X1M U10 (.Y(n14), 
	.B1(n1), 
	.B0(sync_bus[5]), 
	.A1(n22), 
	.A0(unsync_bus[2]));
   AO22X1M U11 (.Y(n16), 
	.B1(n1), 
	.B0(sync_bus[6]), 
	.A1(n22), 
	.A0(unsync_bus[1]));
   AO22X1M U12 (.Y(n18), 
	.B1(n1), 
	.B0(sync_bus[7]), 
	.A1(n22), 
	.A0(unsync_bus[0]));
endmodule

module RST_SYNC_0 (
	RST, 
	CLK, 
	SYNC_RST);
   input RST;
   input CLK;
   output SYNC_RST;

   // Internal wires
   wire FE_PHN23_RST_N;
   wire FE_PHN22_RST_N;
   wire FE_PHN21_RST_N;
   wire FE_PHN17_RST_N;
   wire FE_PHN16_RST_N;
   wire FE_PHN15_RST_N;
   wire HTIE_LTIEHI_NET;
   wire LTIE_LTIELO_NET;
   wire [1:0] stage;

   DLY4X1M FE_PHC23_RST_N (.Y(FE_PHN23_RST_N), 
	.A(FE_PHN17_RST_N));
   DLY4X1M FE_PHC22_RST_N (.Y(FE_PHN22_RST_N), 
	.A(FE_PHN16_RST_N));
   DLY4X1M FE_PHC21_RST_N (.Y(FE_PHN21_RST_N), 
	.A(FE_PHN15_RST_N));
   DLY4X1M FE_PHC17_RST_N (.Y(FE_PHN17_RST_N), 
	.A(RST));
   DLY4X1M FE_PHC16_RST_N (.Y(FE_PHN16_RST_N), 
	.A(RST));
   DLY4X1M FE_PHC15_RST_N (.Y(FE_PHN15_RST_N), 
	.A(RST));
   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   TIELOM LTIE_LTIELO (.Y(LTIE_LTIELO_NET));
   SDFFRQX2M SYNC_RST_reg (.SI(LTIE_LTIELO_NET), 
	.SE(LTIE_LTIELO_NET), 
	.RN(FE_PHN23_RST_N), 
	.Q(SYNC_RST), 
	.D(stage[1]), 
	.CK(CLK));
   SDFFRQX2M \stage_reg[0]  (.SI(LTIE_LTIELO_NET), 
	.SE(LTIE_LTIELO_NET), 
	.RN(FE_PHN22_RST_N), 
	.Q(stage[0]), 
	.D(HTIE_LTIEHI_NET), 
	.CK(CLK));
   SDFFRQX2M \stage_reg[1]  (.SI(LTIE_LTIELO_NET), 
	.SE(LTIE_LTIELO_NET), 
	.RN(FE_PHN21_RST_N), 
	.Q(stage[1]), 
	.D(stage[0]), 
	.CK(CLK));
endmodule

module RST_SYNC_1 (
	RST, 
	CLK, 
	SYNC_RST);
   input RST;
   input CLK;
   output SYNC_RST;

   // Internal wires
   wire FE_PHN20_RST_N;
   wire FE_PHN19_RST_N;
   wire FE_PHN18_RST_N;
   wire FE_PHN14_RST_N;
   wire FE_PHN13_RST_N;
   wire FE_PHN12_RST_N;
   wire HTIE_LTIEHI_NET;
   wire LTIE_LTIELO_NET;
   wire [1:0] stage;

   DLY4X1M FE_PHC20_RST_N (.Y(FE_PHN20_RST_N), 
	.A(FE_PHN14_RST_N));
   DLY4X1M FE_PHC19_RST_N (.Y(FE_PHN19_RST_N), 
	.A(FE_PHN13_RST_N));
   DLY4X1M FE_PHC18_RST_N (.Y(FE_PHN18_RST_N), 
	.A(FE_PHN12_RST_N));
   DLY4X1M FE_PHC14_RST_N (.Y(FE_PHN14_RST_N), 
	.A(RST));
   DLY4X1M FE_PHC13_RST_N (.Y(FE_PHN13_RST_N), 
	.A(RST));
   DLY4X1M FE_PHC12_RST_N (.Y(FE_PHN12_RST_N), 
	.A(RST));
   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   TIELOM LTIE_LTIELO (.Y(LTIE_LTIELO_NET));
   SDFFRQX2M SYNC_RST_reg (.SI(LTIE_LTIELO_NET), 
	.SE(LTIE_LTIELO_NET), 
	.RN(FE_PHN19_RST_N), 
	.Q(SYNC_RST), 
	.D(stage[1]), 
	.CK(CLK));
   SDFFRQX2M \stage_reg[0]  (.SI(LTIE_LTIELO_NET), 
	.SE(LTIE_LTIELO_NET), 
	.RN(FE_PHN20_RST_N), 
	.Q(stage[0]), 
	.D(HTIE_LTIEHI_NET), 
	.CK(CLK));
   SDFFRQX2M \stage_reg[1]  (.SI(LTIE_LTIELO_NET), 
	.SE(LTIE_LTIELO_NET), 
	.RN(FE_PHN18_RST_N), 
	.Q(stage[1]), 
	.D(stage[0]), 
	.CK(CLK));
endmodule

module FIFO_MEM_CNTRL_test_1 (
	WR_DATA, 
	W_CLK, 
	W_RST, 
	R_CLK, 
	R_RST, 
	wclken, 
	waddr, 
	raddr, 
	RD_DATA, 
	test_si, 
	test_se, 
	FE_OFN0_SYNC_RST_2, 
	FE_OFN2_SYNC_RST_1, 
	TX_CLK_O__L3_N2, 
	REF_CLK_O__L7_N1, 
	REF_CLK_O__L7_N3, 
	REF_CLK_O__L7_N4, 
	REF_CLK_O__L7_N5, 
	REF_CLK_O__L7_N6, 
	REF_CLK_O__L7_N7);
   input [7:0] WR_DATA;
   input W_CLK;
   input W_RST;
   input R_CLK;
   input R_RST;
   input wclken;
   input [2:0] waddr;
   input [2:0] raddr;
   output [7:0] RD_DATA;
   input test_si;
   input test_se;
   input FE_OFN0_SYNC_RST_2;
   input FE_OFN2_SYNC_RST_1;
   input TX_CLK_O__L3_N2;
   input REF_CLK_O__L7_N1;
   input REF_CLK_O__L7_N3;
   input REF_CLK_O__L7_N4;
   input REF_CLK_O__L7_N5;
   input REF_CLK_O__L7_N6;
   input REF_CLK_O__L7_N7;

   // Internal wires
   wire FE_PHN2_SI_0_;
   wire FE_PHN1_SI_0_;
   wire FE_PHN0_SI_0_;
   wire N10;
   wire N11;
   wire N12;
   wire \FIFO_MEM[0][7] ;
   wire \FIFO_MEM[0][6] ;
   wire \FIFO_MEM[0][5] ;
   wire \FIFO_MEM[0][4] ;
   wire \FIFO_MEM[0][3] ;
   wire \FIFO_MEM[0][2] ;
   wire \FIFO_MEM[0][1] ;
   wire \FIFO_MEM[0][0] ;
   wire \FIFO_MEM[1][7] ;
   wire \FIFO_MEM[1][6] ;
   wire \FIFO_MEM[1][5] ;
   wire \FIFO_MEM[1][4] ;
   wire \FIFO_MEM[1][3] ;
   wire \FIFO_MEM[1][2] ;
   wire \FIFO_MEM[1][1] ;
   wire \FIFO_MEM[1][0] ;
   wire \FIFO_MEM[2][7] ;
   wire \FIFO_MEM[2][6] ;
   wire \FIFO_MEM[2][5] ;
   wire \FIFO_MEM[2][4] ;
   wire \FIFO_MEM[2][3] ;
   wire \FIFO_MEM[2][2] ;
   wire \FIFO_MEM[2][1] ;
   wire \FIFO_MEM[2][0] ;
   wire \FIFO_MEM[3][7] ;
   wire \FIFO_MEM[3][6] ;
   wire \FIFO_MEM[3][5] ;
   wire \FIFO_MEM[3][4] ;
   wire \FIFO_MEM[3][3] ;
   wire \FIFO_MEM[3][2] ;
   wire \FIFO_MEM[3][1] ;
   wire \FIFO_MEM[3][0] ;
   wire \FIFO_MEM[4][7] ;
   wire \FIFO_MEM[4][6] ;
   wire \FIFO_MEM[4][5] ;
   wire \FIFO_MEM[4][4] ;
   wire \FIFO_MEM[4][3] ;
   wire \FIFO_MEM[4][2] ;
   wire \FIFO_MEM[4][1] ;
   wire \FIFO_MEM[4][0] ;
   wire \FIFO_MEM[5][7] ;
   wire \FIFO_MEM[5][6] ;
   wire \FIFO_MEM[5][5] ;
   wire \FIFO_MEM[5][4] ;
   wire \FIFO_MEM[5][3] ;
   wire \FIFO_MEM[5][2] ;
   wire \FIFO_MEM[5][1] ;
   wire \FIFO_MEM[5][0] ;
   wire \FIFO_MEM[6][7] ;
   wire \FIFO_MEM[6][6] ;
   wire \FIFO_MEM[6][5] ;
   wire \FIFO_MEM[6][4] ;
   wire \FIFO_MEM[6][3] ;
   wire \FIFO_MEM[6][2] ;
   wire \FIFO_MEM[6][1] ;
   wire \FIFO_MEM[6][0] ;
   wire \FIFO_MEM[7][7] ;
   wire \FIFO_MEM[7][6] ;
   wire \FIFO_MEM[7][5] ;
   wire \FIFO_MEM[7][4] ;
   wire \FIFO_MEM[7][3] ;
   wire \FIFO_MEM[7][2] ;
   wire \FIFO_MEM[7][1] ;
   wire \FIFO_MEM[7][0] ;
   wire N32;
   wire N33;
   wire N34;
   wire N35;
   wire N36;
   wire N37;
   wire N38;
   wire N39;
   wire n83;
   wire n84;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire n90;
   wire n91;
   wire n92;
   wire n93;
   wire n94;
   wire n95;
   wire n96;
   wire n97;
   wire n98;
   wire n99;
   wire n100;
   wire n101;
   wire n102;
   wire n103;
   wire n104;
   wire n105;
   wire n106;
   wire n107;
   wire n108;
   wire n109;
   wire n110;
   wire n111;
   wire n112;
   wire n113;
   wire n114;
   wire n115;
   wire n116;
   wire n117;
   wire n118;
   wire n119;
   wire n120;
   wire n121;
   wire n122;
   wire n123;
   wire n124;
   wire n125;
   wire n126;
   wire n127;
   wire n128;
   wire n129;
   wire n130;
   wire n131;
   wire n132;
   wire n133;
   wire n134;
   wire n135;
   wire n136;
   wire n137;
   wire n138;
   wire n139;
   wire n140;
   wire n141;
   wire n142;
   wire n143;
   wire n144;
   wire n145;
   wire n146;
   wire n147;
   wire n148;
   wire n149;
   wire n150;
   wire n151;
   wire n152;
   wire n153;
   wire n154;
   wire n155;
   wire n156;
   wire n73;
   wire n74;
   wire n75;
   wire n76;
   wire n77;
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n82;
   wire n157;
   wire n158;
   wire n159;
   wire n160;
   wire n161;
   wire n162;
   wire n163;
   wire n164;
   wire n165;
   wire n166;
   wire n167;
   wire n168;
   wire n169;
   wire n170;
   wire n171;
   wire n172;
   wire n173;
   wire n174;
   wire n175;
   wire n176;
   wire n177;
   wire n178;
   wire n179;
   wire n180;
   wire n181;
   wire n182;
   wire n183;
   wire n184;
   wire n185;
   wire n198;
   wire n199;
   wire n200;
   wire n201;
   wire n202;
   wire n203;
   wire n204;
   wire n205;
   wire n206;
   wire n207;
   wire n210;
   wire n211;
   wire n212;
   wire n213;
   wire n214;

   assign N10 = raddr[0] ;
   assign N11 = raddr[1] ;
   assign N12 = raddr[2] ;

   DLY4X1M FE_PHC2_SI_0_ (.Y(FE_PHN2_SI_0_), 
	.A(FE_PHN1_SI_0_));
   DLY4X1M FE_PHC1_SI_0_ (.Y(FE_PHN1_SI_0_), 
	.A(FE_PHN0_SI_0_));
   DLY4X1M FE_PHC0_SI_0_ (.Y(FE_PHN0_SI_0_), 
	.A(test_si));
   SDFFRQX2M \FIFO_MEM_reg[0][7]  (.SI(\FIFO_MEM[0][6] ), 
	.SE(n211), 
	.RN(FE_OFN2_SYNC_RST_1), 
	.Q(\FIFO_MEM[0][7] ), 
	.D(n156), 
	.CK(REF_CLK_O__L7_N4));
   SDFFRQX2M \FIFO_MEM_reg[0][6]  (.SI(\FIFO_MEM[0][5] ), 
	.SE(n214), 
	.RN(FE_OFN2_SYNC_RST_1), 
	.Q(\FIFO_MEM[0][6] ), 
	.D(n155), 
	.CK(REF_CLK_O__L7_N4));
   SDFFRQX2M \FIFO_MEM_reg[0][5]  (.SI(\FIFO_MEM[0][4] ), 
	.SE(n213), 
	.RN(FE_OFN2_SYNC_RST_1), 
	.Q(\FIFO_MEM[0][5] ), 
	.D(n154), 
	.CK(REF_CLK_O__L7_N4));
   SDFFRQX2M \FIFO_MEM_reg[0][4]  (.SI(\FIFO_MEM[0][3] ), 
	.SE(n212), 
	.RN(W_RST), 
	.Q(\FIFO_MEM[0][4] ), 
	.D(n153), 
	.CK(REF_CLK_O__L7_N5));
   SDFFRQX2M \FIFO_MEM_reg[0][3]  (.SI(\FIFO_MEM[0][2] ), 
	.SE(n211), 
	.RN(W_RST), 
	.Q(\FIFO_MEM[0][3] ), 
	.D(n152), 
	.CK(REF_CLK_O__L7_N5));
   SDFFRQX2M \FIFO_MEM_reg[0][2]  (.SI(\FIFO_MEM[0][1] ), 
	.SE(n214), 
	.RN(W_RST), 
	.Q(\FIFO_MEM[0][2] ), 
	.D(n151), 
	.CK(REF_CLK_O__L7_N5));
   SDFFRQX2M \FIFO_MEM_reg[0][1]  (.SI(\FIFO_MEM[0][0] ), 
	.SE(n213), 
	.RN(W_RST), 
	.Q(\FIFO_MEM[0][1] ), 
	.D(n150), 
	.CK(REF_CLK_O__L7_N5));
   SDFFRQX2M \FIFO_MEM_reg[0][0]  (.SI(FE_PHN2_SI_0_), 
	.SE(n212), 
	.RN(W_RST), 
	.Q(\FIFO_MEM[0][0] ), 
	.D(n149), 
	.CK(REF_CLK_O__L7_N5));
   SDFFRQX2M \FIFO_MEM_reg[1][7]  (.SI(\FIFO_MEM[1][6] ), 
	.SE(n211), 
	.RN(FE_OFN2_SYNC_RST_1), 
	.Q(\FIFO_MEM[1][7] ), 
	.D(n148), 
	.CK(REF_CLK_O__L7_N4));
   SDFFRQX2M \FIFO_MEM_reg[1][6]  (.SI(\FIFO_MEM[1][5] ), 
	.SE(n214), 
	.RN(FE_OFN2_SYNC_RST_1), 
	.Q(\FIFO_MEM[1][6] ), 
	.D(n147), 
	.CK(REF_CLK_O__L7_N4));
   SDFFRQX2M \FIFO_MEM_reg[1][5]  (.SI(\FIFO_MEM[1][4] ), 
	.SE(n213), 
	.RN(W_RST), 
	.Q(\FIFO_MEM[1][5] ), 
	.D(n146), 
	.CK(W_CLK));
   SDFFRQX2M \FIFO_MEM_reg[1][4]  (.SI(\FIFO_MEM[1][3] ), 
	.SE(n212), 
	.RN(FE_OFN2_SYNC_RST_1), 
	.Q(\FIFO_MEM[1][4] ), 
	.D(n145), 
	.CK(W_CLK));
   SDFFRQX2M \FIFO_MEM_reg[1][3]  (.SI(\FIFO_MEM[1][2] ), 
	.SE(n211), 
	.RN(FE_OFN2_SYNC_RST_1), 
	.Q(\FIFO_MEM[1][3] ), 
	.D(n144), 
	.CK(W_CLK));
   SDFFRQX2M \FIFO_MEM_reg[1][2]  (.SI(\FIFO_MEM[1][1] ), 
	.SE(n214), 
	.RN(FE_OFN2_SYNC_RST_1), 
	.Q(\FIFO_MEM[1][2] ), 
	.D(n143), 
	.CK(REF_CLK_O__L7_N1));
   SDFFRQX2M \FIFO_MEM_reg[1][1]  (.SI(\FIFO_MEM[1][0] ), 
	.SE(n213), 
	.RN(FE_OFN2_SYNC_RST_1), 
	.Q(\FIFO_MEM[1][1] ), 
	.D(n142), 
	.CK(REF_CLK_O__L7_N1));
   SDFFRQX2M \FIFO_MEM_reg[1][0]  (.SI(\FIFO_MEM[0][7] ), 
	.SE(n212), 
	.RN(FE_OFN2_SYNC_RST_1), 
	.Q(\FIFO_MEM[1][0] ), 
	.D(n141), 
	.CK(REF_CLK_O__L7_N1));
   SDFFRQX2M \FIFO_MEM_reg[4][7]  (.SI(\FIFO_MEM[4][6] ), 
	.SE(n211), 
	.RN(W_RST), 
	.Q(\FIFO_MEM[4][7] ), 
	.D(n124), 
	.CK(REF_CLK_O__L7_N4));
   SDFFRQX2M \FIFO_MEM_reg[4][6]  (.SI(\FIFO_MEM[4][5] ), 
	.SE(n214), 
	.RN(W_RST), 
	.Q(\FIFO_MEM[4][6] ), 
	.D(n123), 
	.CK(REF_CLK_O__L7_N4));
   SDFFRQX2M \FIFO_MEM_reg[4][5]  (.SI(\FIFO_MEM[4][4] ), 
	.SE(n213), 
	.RN(FE_OFN2_SYNC_RST_1), 
	.Q(\FIFO_MEM[4][5] ), 
	.D(n122), 
	.CK(REF_CLK_O__L7_N4));
   SDFFRQX2M \FIFO_MEM_reg[4][4]  (.SI(\FIFO_MEM[4][3] ), 
	.SE(n212), 
	.RN(W_RST), 
	.Q(\FIFO_MEM[4][4] ), 
	.D(n121), 
	.CK(REF_CLK_O__L7_N4));
   SDFFRQX2M \FIFO_MEM_reg[4][3]  (.SI(\FIFO_MEM[4][2] ), 
	.SE(n211), 
	.RN(W_RST), 
	.Q(\FIFO_MEM[4][3] ), 
	.D(n120), 
	.CK(REF_CLK_O__L7_N5));
   SDFFRQX2M \FIFO_MEM_reg[4][2]  (.SI(\FIFO_MEM[4][1] ), 
	.SE(n214), 
	.RN(W_RST), 
	.Q(\FIFO_MEM[4][2] ), 
	.D(n119), 
	.CK(REF_CLK_O__L7_N5));
   SDFFRQX2M \FIFO_MEM_reg[4][1]  (.SI(\FIFO_MEM[4][0] ), 
	.SE(n213), 
	.RN(W_RST), 
	.Q(\FIFO_MEM[4][1] ), 
	.D(n118), 
	.CK(REF_CLK_O__L7_N5));
   SDFFRQX2M \FIFO_MEM_reg[4][0]  (.SI(\FIFO_MEM[3][7] ), 
	.SE(n212), 
	.RN(W_RST), 
	.Q(\FIFO_MEM[4][0] ), 
	.D(n117), 
	.CK(REF_CLK_O__L7_N5));
   SDFFRQX2M \FIFO_MEM_reg[5][7]  (.SI(\FIFO_MEM[5][6] ), 
	.SE(n211), 
	.RN(FE_OFN2_SYNC_RST_1), 
	.Q(\FIFO_MEM[5][7] ), 
	.D(n116), 
	.CK(REF_CLK_O__L7_N4));
   SDFFRQX2M \FIFO_MEM_reg[5][6]  (.SI(\FIFO_MEM[5][5] ), 
	.SE(n214), 
	.RN(W_RST), 
	.Q(\FIFO_MEM[5][6] ), 
	.D(n115), 
	.CK(REF_CLK_O__L7_N3));
   SDFFRQX2M \FIFO_MEM_reg[5][5]  (.SI(\FIFO_MEM[5][4] ), 
	.SE(n213), 
	.RN(W_RST), 
	.Q(\FIFO_MEM[5][5] ), 
	.D(n114), 
	.CK(REF_CLK_O__L7_N7));
   SDFFRQX2M \FIFO_MEM_reg[5][4]  (.SI(\FIFO_MEM[5][3] ), 
	.SE(n212), 
	.RN(W_RST), 
	.Q(\FIFO_MEM[5][4] ), 
	.D(n113), 
	.CK(REF_CLK_O__L7_N6));
   SDFFRQX2M \FIFO_MEM_reg[5][3]  (.SI(\FIFO_MEM[5][2] ), 
	.SE(n211), 
	.RN(W_RST), 
	.Q(\FIFO_MEM[5][3] ), 
	.D(n112), 
	.CK(REF_CLK_O__L7_N6));
   SDFFRQX2M \FIFO_MEM_reg[5][2]  (.SI(\FIFO_MEM[5][1] ), 
	.SE(n214), 
	.RN(W_RST), 
	.Q(\FIFO_MEM[5][2] ), 
	.D(n111), 
	.CK(REF_CLK_O__L7_N6));
   SDFFRQX2M \FIFO_MEM_reg[5][1]  (.SI(\FIFO_MEM[5][0] ), 
	.SE(n213), 
	.RN(W_RST), 
	.Q(\FIFO_MEM[5][1] ), 
	.D(n110), 
	.CK(REF_CLK_O__L7_N5));
   SDFFRQX2M \FIFO_MEM_reg[5][0]  (.SI(\FIFO_MEM[4][7] ), 
	.SE(n212), 
	.RN(W_RST), 
	.Q(\FIFO_MEM[5][0] ), 
	.D(n109), 
	.CK(REF_CLK_O__L7_N5));
   SDFFRQX2M \FIFO_MEM_reg[6][7]  (.SI(\FIFO_MEM[6][6] ), 
	.SE(n211), 
	.RN(FE_OFN2_SYNC_RST_1), 
	.Q(\FIFO_MEM[6][7] ), 
	.D(n108), 
	.CK(REF_CLK_O__L7_N4));
   SDFFRQX2M \FIFO_MEM_reg[6][6]  (.SI(\FIFO_MEM[6][5] ), 
	.SE(n214), 
	.RN(FE_OFN2_SYNC_RST_1), 
	.Q(\FIFO_MEM[6][6] ), 
	.D(n107), 
	.CK(REF_CLK_O__L7_N4));
   SDFFRQX2M \FIFO_MEM_reg[6][5]  (.SI(\FIFO_MEM[6][4] ), 
	.SE(n213), 
	.RN(FE_OFN2_SYNC_RST_1), 
	.Q(\FIFO_MEM[6][5] ), 
	.D(n106), 
	.CK(REF_CLK_O__L7_N4));
   SDFFRQX2M \FIFO_MEM_reg[6][4]  (.SI(\FIFO_MEM[6][3] ), 
	.SE(n212), 
	.RN(W_RST), 
	.Q(\FIFO_MEM[6][4] ), 
	.D(n105), 
	.CK(REF_CLK_O__L7_N5));
   SDFFRQX2M \FIFO_MEM_reg[6][3]  (.SI(\FIFO_MEM[6][2] ), 
	.SE(n211), 
	.RN(W_RST), 
	.Q(\FIFO_MEM[6][3] ), 
	.D(n104), 
	.CK(REF_CLK_O__L7_N5));
   SDFFRQX2M \FIFO_MEM_reg[6][2]  (.SI(\FIFO_MEM[6][1] ), 
	.SE(n214), 
	.RN(W_RST), 
	.Q(\FIFO_MEM[6][2] ), 
	.D(n103), 
	.CK(REF_CLK_O__L7_N5));
   SDFFRQX2M \FIFO_MEM_reg[6][1]  (.SI(\FIFO_MEM[6][0] ), 
	.SE(n213), 
	.RN(W_RST), 
	.Q(\FIFO_MEM[6][1] ), 
	.D(n102), 
	.CK(REF_CLK_O__L7_N5));
   SDFFRQX2M \FIFO_MEM_reg[6][0]  (.SI(\FIFO_MEM[5][7] ), 
	.SE(n212), 
	.RN(W_RST), 
	.Q(\FIFO_MEM[6][0] ), 
	.D(n101), 
	.CK(REF_CLK_O__L7_N5));
   SDFFRQX2M \FIFO_MEM_reg[7][7]  (.SI(\FIFO_MEM[7][6] ), 
	.SE(n211), 
	.RN(W_RST), 
	.Q(\FIFO_MEM[7][7] ), 
	.D(n100), 
	.CK(REF_CLK_O__L7_N6));
   SDFFRQX2M \FIFO_MEM_reg[7][6]  (.SI(\FIFO_MEM[7][5] ), 
	.SE(n214), 
	.RN(W_RST), 
	.Q(\FIFO_MEM[7][6] ), 
	.D(n99), 
	.CK(REF_CLK_O__L7_N7));
   SDFFRQX2M \FIFO_MEM_reg[7][5]  (.SI(\FIFO_MEM[7][4] ), 
	.SE(n213), 
	.RN(W_RST), 
	.Q(\FIFO_MEM[7][5] ), 
	.D(n98), 
	.CK(REF_CLK_O__L7_N7));
   SDFFRQX2M \FIFO_MEM_reg[7][4]  (.SI(\FIFO_MEM[7][3] ), 
	.SE(n212), 
	.RN(W_RST), 
	.Q(\FIFO_MEM[7][4] ), 
	.D(n97), 
	.CK(REF_CLK_O__L7_N6));
   SDFFRQX2M \FIFO_MEM_reg[7][3]  (.SI(\FIFO_MEM[7][2] ), 
	.SE(n211), 
	.RN(W_RST), 
	.Q(\FIFO_MEM[7][3] ), 
	.D(n96), 
	.CK(REF_CLK_O__L7_N6));
   SDFFRQX2M \FIFO_MEM_reg[7][2]  (.SI(\FIFO_MEM[7][1] ), 
	.SE(n214), 
	.RN(W_RST), 
	.Q(\FIFO_MEM[7][2] ), 
	.D(n95), 
	.CK(REF_CLK_O__L7_N6));
   SDFFRQX2M \FIFO_MEM_reg[7][1]  (.SI(\FIFO_MEM[7][0] ), 
	.SE(n213), 
	.RN(W_RST), 
	.Q(\FIFO_MEM[7][1] ), 
	.D(n94), 
	.CK(REF_CLK_O__L7_N6));
   SDFFRQX2M \FIFO_MEM_reg[7][0]  (.SI(\FIFO_MEM[6][7] ), 
	.SE(n212), 
	.RN(W_RST), 
	.Q(\FIFO_MEM[7][0] ), 
	.D(n93), 
	.CK(REF_CLK_O__L7_N6));
   SDFFRQX2M \FIFO_MEM_reg[2][7]  (.SI(\FIFO_MEM[2][6] ), 
	.SE(n211), 
	.RN(FE_OFN2_SYNC_RST_1), 
	.Q(\FIFO_MEM[2][7] ), 
	.D(n140), 
	.CK(REF_CLK_O__L7_N1));
   SDFFRQX2M \FIFO_MEM_reg[2][6]  (.SI(\FIFO_MEM[2][5] ), 
	.SE(n214), 
	.RN(FE_OFN2_SYNC_RST_1), 
	.Q(\FIFO_MEM[2][6] ), 
	.D(n139), 
	.CK(REF_CLK_O__L7_N1));
   SDFFRQX2M \FIFO_MEM_reg[2][5]  (.SI(\FIFO_MEM[2][4] ), 
	.SE(n213), 
	.RN(W_RST), 
	.Q(\FIFO_MEM[2][5] ), 
	.D(n138), 
	.CK(REF_CLK_O__L7_N4));
   SDFFRQX2M \FIFO_MEM_reg[2][4]  (.SI(\FIFO_MEM[2][3] ), 
	.SE(n212), 
	.RN(W_RST), 
	.Q(\FIFO_MEM[2][4] ), 
	.D(n137), 
	.CK(REF_CLK_O__L7_N5));
   SDFFRQX2M \FIFO_MEM_reg[2][3]  (.SI(\FIFO_MEM[2][2] ), 
	.SE(n211), 
	.RN(W_RST), 
	.Q(\FIFO_MEM[2][3] ), 
	.D(n136), 
	.CK(REF_CLK_O__L7_N4));
   SDFFRQX2M \FIFO_MEM_reg[2][2]  (.SI(\FIFO_MEM[2][1] ), 
	.SE(n214), 
	.RN(W_RST), 
	.Q(\FIFO_MEM[2][2] ), 
	.D(n135), 
	.CK(REF_CLK_O__L7_N5));
   SDFFRQX2M \FIFO_MEM_reg[2][1]  (.SI(\FIFO_MEM[2][0] ), 
	.SE(n213), 
	.RN(W_RST), 
	.Q(\FIFO_MEM[2][1] ), 
	.D(n134), 
	.CK(REF_CLK_O__L7_N5));
   SDFFRQX2M \FIFO_MEM_reg[2][0]  (.SI(\FIFO_MEM[1][7] ), 
	.SE(n212), 
	.RN(W_RST), 
	.Q(\FIFO_MEM[2][0] ), 
	.D(n133), 
	.CK(REF_CLK_O__L7_N4));
   SDFFRQX2M \FIFO_MEM_reg[3][7]  (.SI(\FIFO_MEM[3][6] ), 
	.SE(n211), 
	.RN(FE_OFN2_SYNC_RST_1), 
	.Q(\FIFO_MEM[3][7] ), 
	.D(n132), 
	.CK(REF_CLK_O__L7_N4));
   SDFFRQX2M \FIFO_MEM_reg[3][6]  (.SI(\FIFO_MEM[3][5] ), 
	.SE(n214), 
	.RN(FE_OFN2_SYNC_RST_1), 
	.Q(\FIFO_MEM[3][6] ), 
	.D(n131), 
	.CK(REF_CLK_O__L7_N3));
   SDFFRQX2M \FIFO_MEM_reg[3][5]  (.SI(\FIFO_MEM[3][4] ), 
	.SE(n213), 
	.RN(FE_OFN2_SYNC_RST_1), 
	.Q(\FIFO_MEM[3][5] ), 
	.D(n130), 
	.CK(REF_CLK_O__L7_N3));
   SDFFRQX2M \FIFO_MEM_reg[3][4]  (.SI(\FIFO_MEM[3][3] ), 
	.SE(n212), 
	.RN(FE_OFN2_SYNC_RST_1), 
	.Q(\FIFO_MEM[3][4] ), 
	.D(n129), 
	.CK(W_CLK));
   SDFFRQX2M \FIFO_MEM_reg[3][3]  (.SI(\FIFO_MEM[3][2] ), 
	.SE(n211), 
	.RN(FE_OFN2_SYNC_RST_1), 
	.Q(\FIFO_MEM[3][3] ), 
	.D(n128), 
	.CK(W_CLK));
   SDFFRQX2M \FIFO_MEM_reg[3][2]  (.SI(\FIFO_MEM[3][1] ), 
	.SE(n214), 
	.RN(FE_OFN2_SYNC_RST_1), 
	.Q(\FIFO_MEM[3][2] ), 
	.D(n127), 
	.CK(REF_CLK_O__L7_N1));
   SDFFRQX2M \FIFO_MEM_reg[3][1]  (.SI(\FIFO_MEM[3][0] ), 
	.SE(n213), 
	.RN(FE_OFN2_SYNC_RST_1), 
	.Q(\FIFO_MEM[3][1] ), 
	.D(n126), 
	.CK(REF_CLK_O__L7_N1));
   SDFFRQX2M \FIFO_MEM_reg[3][0]  (.SI(\FIFO_MEM[2][7] ), 
	.SE(n212), 
	.RN(FE_OFN2_SYNC_RST_1), 
	.Q(\FIFO_MEM[3][0] ), 
	.D(n125), 
	.CK(REF_CLK_O__L7_N1));
   SDFFRQX2M \RD_DATA_reg[6]  (.SI(RD_DATA[5]), 
	.SE(n211), 
	.RN(FE_OFN0_SYNC_RST_2), 
	.Q(RD_DATA[6]), 
	.D(N33), 
	.CK(TX_CLK_O__L3_N2));
   SDFFRQX2M \RD_DATA_reg[5]  (.SI(RD_DATA[4]), 
	.SE(n214), 
	.RN(FE_OFN0_SYNC_RST_2), 
	.Q(RD_DATA[5]), 
	.D(N34), 
	.CK(TX_CLK_O__L3_N2));
   SDFFRQX2M \RD_DATA_reg[4]  (.SI(RD_DATA[3]), 
	.SE(n213), 
	.RN(R_RST), 
	.Q(RD_DATA[4]), 
	.D(N35), 
	.CK(R_CLK));
   SDFFRQX2M \RD_DATA_reg[3]  (.SI(RD_DATA[2]), 
	.SE(n212), 
	.RN(R_RST), 
	.Q(RD_DATA[3]), 
	.D(N36), 
	.CK(R_CLK));
   SDFFRQX2M \RD_DATA_reg[2]  (.SI(RD_DATA[1]), 
	.SE(n211), 
	.RN(R_RST), 
	.Q(RD_DATA[2]), 
	.D(N37), 
	.CK(R_CLK));
   SDFFRQX2M \RD_DATA_reg[1]  (.SI(RD_DATA[0]), 
	.SE(n214), 
	.RN(R_RST), 
	.Q(RD_DATA[1]), 
	.D(N38), 
	.CK(R_CLK));
   SDFFRQX2M \RD_DATA_reg[0]  (.SI(\FIFO_MEM[7][7] ), 
	.SE(n213), 
	.RN(R_RST), 
	.Q(RD_DATA[0]), 
	.D(N39), 
	.CK(R_CLK));
   SDFFRQX2M \RD_DATA_reg[7]  (.SI(RD_DATA[6]), 
	.SE(n212), 
	.RN(FE_OFN0_SYNC_RST_2), 
	.Q(RD_DATA[7]), 
	.D(N32), 
	.CK(TX_CLK_O__L3_N2));
   NAND3X2M U87 (.Y(n87), 
	.C(n85), 
	.B(n199), 
	.A(n198));
   NAND3X2M U88 (.Y(n92), 
	.C(n89), 
	.B(n199), 
	.A(n198));
   NOR2X2M U89 (.Y(n179), 
	.B(n184), 
	.A(n183));
   NAND3X2M U90 (.Y(n86), 
	.C(waddr[0]), 
	.B(n199), 
	.A(n85));
   NAND3X2M U91 (.Y(n83), 
	.C(waddr[1]), 
	.B(n85), 
	.A(waddr[0]));
   NOR2BX2M U92 (.Y(n89), 
	.B(waddr[2]), 
	.AN(wclken));
   OAI2BB2X1M U93 (.Y(n93), 
	.B1(n207), 
	.B0(n83), 
	.A1N(n83), 
	.A0N(\FIFO_MEM[7][0] ));
   OAI2BB2X1M U94 (.Y(n94), 
	.B1(n206), 
	.B0(n83), 
	.A1N(n83), 
	.A0N(\FIFO_MEM[7][1] ));
   OAI2BB2X1M U95 (.Y(n95), 
	.B1(n205), 
	.B0(n83), 
	.A1N(n83), 
	.A0N(\FIFO_MEM[7][2] ));
   OAI2BB2X1M U96 (.Y(n96), 
	.B1(n204), 
	.B0(n83), 
	.A1N(n83), 
	.A0N(\FIFO_MEM[7][3] ));
   OAI2BB2X1M U97 (.Y(n97), 
	.B1(n203), 
	.B0(n83), 
	.A1N(n83), 
	.A0N(\FIFO_MEM[7][4] ));
   OAI2BB2X1M U98 (.Y(n98), 
	.B1(n202), 
	.B0(n83), 
	.A1N(n83), 
	.A0N(\FIFO_MEM[7][5] ));
   OAI2BB2X1M U99 (.Y(n99), 
	.B1(n201), 
	.B0(n83), 
	.A1N(n83), 
	.A0N(\FIFO_MEM[7][6] ));
   OAI2BB2X1M U100 (.Y(n100), 
	.B1(n200), 
	.B0(n83), 
	.A1N(n83), 
	.A0N(\FIFO_MEM[7][7] ));
   OAI2BB2X1M U101 (.Y(n109), 
	.B1(n86), 
	.B0(n207), 
	.A1N(n86), 
	.A0N(\FIFO_MEM[5][0] ));
   OAI2BB2X1M U102 (.Y(n110), 
	.B1(n86), 
	.B0(n206), 
	.A1N(n86), 
	.A0N(\FIFO_MEM[5][1] ));
   OAI2BB2X1M U103 (.Y(n111), 
	.B1(n86), 
	.B0(n205), 
	.A1N(n86), 
	.A0N(\FIFO_MEM[5][2] ));
   OAI2BB2X1M U104 (.Y(n112), 
	.B1(n86), 
	.B0(n204), 
	.A1N(n86), 
	.A0N(\FIFO_MEM[5][3] ));
   OAI2BB2X1M U105 (.Y(n113), 
	.B1(n86), 
	.B0(n203), 
	.A1N(n86), 
	.A0N(\FIFO_MEM[5][4] ));
   OAI2BB2X1M U106 (.Y(n114), 
	.B1(n86), 
	.B0(n202), 
	.A1N(n86), 
	.A0N(\FIFO_MEM[5][5] ));
   OAI2BB2X1M U107 (.Y(n115), 
	.B1(n86), 
	.B0(n201), 
	.A1N(n86), 
	.A0N(\FIFO_MEM[5][6] ));
   OAI2BB2X1M U108 (.Y(n116), 
	.B1(n86), 
	.B0(n200), 
	.A1N(n86), 
	.A0N(\FIFO_MEM[5][7] ));
   OAI2BB2X1M U109 (.Y(n149), 
	.B1(n92), 
	.B0(n207), 
	.A1N(n92), 
	.A0N(\FIFO_MEM[0][0] ));
   OAI2BB2X1M U110 (.Y(n150), 
	.B1(n92), 
	.B0(n206), 
	.A1N(n92), 
	.A0N(\FIFO_MEM[0][1] ));
   OAI2BB2X1M U111 (.Y(n151), 
	.B1(n92), 
	.B0(n205), 
	.A1N(n92), 
	.A0N(\FIFO_MEM[0][2] ));
   OAI2BB2X1M U112 (.Y(n152), 
	.B1(n92), 
	.B0(n204), 
	.A1N(n92), 
	.A0N(\FIFO_MEM[0][3] ));
   OAI2BB2X1M U113 (.Y(n153), 
	.B1(n92), 
	.B0(n203), 
	.A1N(n92), 
	.A0N(\FIFO_MEM[0][4] ));
   OAI2BB2X1M U114 (.Y(n154), 
	.B1(n92), 
	.B0(n202), 
	.A1N(n92), 
	.A0N(\FIFO_MEM[0][5] ));
   OAI2BB2X1M U115 (.Y(n155), 
	.B1(n92), 
	.B0(n201), 
	.A1N(n92), 
	.A0N(\FIFO_MEM[0][6] ));
   OAI2BB2X1M U116 (.Y(n156), 
	.B1(n92), 
	.B0(n200), 
	.A1N(n92), 
	.A0N(\FIFO_MEM[0][7] ));
   OAI2BB2X1M U117 (.Y(n117), 
	.B1(n87), 
	.B0(n207), 
	.A1N(n87), 
	.A0N(\FIFO_MEM[4][0] ));
   OAI2BB2X1M U118 (.Y(n118), 
	.B1(n87), 
	.B0(n206), 
	.A1N(n87), 
	.A0N(\FIFO_MEM[4][1] ));
   OAI2BB2X1M U119 (.Y(n119), 
	.B1(n87), 
	.B0(n205), 
	.A1N(n87), 
	.A0N(\FIFO_MEM[4][2] ));
   OAI2BB2X1M U120 (.Y(n120), 
	.B1(n87), 
	.B0(n204), 
	.A1N(n87), 
	.A0N(\FIFO_MEM[4][3] ));
   OAI2BB2X1M U121 (.Y(n121), 
	.B1(n87), 
	.B0(n203), 
	.A1N(n87), 
	.A0N(\FIFO_MEM[4][4] ));
   OAI2BB2X1M U122 (.Y(n122), 
	.B1(n87), 
	.B0(n202), 
	.A1N(n87), 
	.A0N(\FIFO_MEM[4][5] ));
   OAI2BB2X1M U123 (.Y(n123), 
	.B1(n87), 
	.B0(n201), 
	.A1N(n87), 
	.A0N(\FIFO_MEM[4][6] ));
   OAI2BB2X1M U124 (.Y(n124), 
	.B1(n87), 
	.B0(n200), 
	.A1N(n87), 
	.A0N(\FIFO_MEM[4][7] ));
   INVX2M U125 (.Y(n207), 
	.A(WR_DATA[0]));
   INVX2M U126 (.Y(n206), 
	.A(WR_DATA[1]));
   INVX2M U127 (.Y(n205), 
	.A(WR_DATA[2]));
   INVX2M U128 (.Y(n204), 
	.A(WR_DATA[3]));
   INVX2M U129 (.Y(n203), 
	.A(WR_DATA[4]));
   INVX2M U130 (.Y(n202), 
	.A(WR_DATA[5]));
   INVX2M U131 (.Y(n201), 
	.A(WR_DATA[6]));
   INVX2M U132 (.Y(n200), 
	.A(WR_DATA[7]));
   OAI2BB2X1M U133 (.Y(n102), 
	.B1(n84), 
	.B0(n206), 
	.A1N(n84), 
	.A0N(\FIFO_MEM[6][1] ));
   OAI2BB2X1M U134 (.Y(n103), 
	.B1(n84), 
	.B0(n205), 
	.A1N(n84), 
	.A0N(\FIFO_MEM[6][2] ));
   OAI2BB2X1M U135 (.Y(n104), 
	.B1(n84), 
	.B0(n204), 
	.A1N(n84), 
	.A0N(\FIFO_MEM[6][3] ));
   OAI2BB2X1M U136 (.Y(n105), 
	.B1(n84), 
	.B0(n203), 
	.A1N(n84), 
	.A0N(\FIFO_MEM[6][4] ));
   OAI2BB2X1M U137 (.Y(n106), 
	.B1(n84), 
	.B0(n202), 
	.A1N(n84), 
	.A0N(\FIFO_MEM[6][5] ));
   OAI2BB2X1M U138 (.Y(n107), 
	.B1(n84), 
	.B0(n201), 
	.A1N(n84), 
	.A0N(\FIFO_MEM[6][6] ));
   OAI2BB2X1M U139 (.Y(n108), 
	.B1(n84), 
	.B0(n200), 
	.A1N(n84), 
	.A0N(\FIFO_MEM[6][7] ));
   OAI2BB2X1M U140 (.Y(n125), 
	.B1(n88), 
	.B0(n207), 
	.A1N(n88), 
	.A0N(\FIFO_MEM[3][0] ));
   OAI2BB2X1M U141 (.Y(n126), 
	.B1(n88), 
	.B0(n206), 
	.A1N(n88), 
	.A0N(\FIFO_MEM[3][1] ));
   OAI2BB2X1M U142 (.Y(n127), 
	.B1(n88), 
	.B0(n205), 
	.A1N(n88), 
	.A0N(\FIFO_MEM[3][2] ));
   OAI2BB2X1M U143 (.Y(n128), 
	.B1(n88), 
	.B0(n204), 
	.A1N(n88), 
	.A0N(\FIFO_MEM[3][3] ));
   OAI2BB2X1M U144 (.Y(n129), 
	.B1(n88), 
	.B0(n203), 
	.A1N(n88), 
	.A0N(\FIFO_MEM[3][4] ));
   OAI2BB2X1M U145 (.Y(n130), 
	.B1(n88), 
	.B0(n202), 
	.A1N(n88), 
	.A0N(\FIFO_MEM[3][5] ));
   OAI2BB2X1M U146 (.Y(n131), 
	.B1(n88), 
	.B0(n201), 
	.A1N(n88), 
	.A0N(\FIFO_MEM[3][6] ));
   OAI2BB2X1M U147 (.Y(n132), 
	.B1(n88), 
	.B0(n200), 
	.A1N(n88), 
	.A0N(\FIFO_MEM[3][7] ));
   OAI2BB2X1M U148 (.Y(n133), 
	.B1(n90), 
	.B0(n207), 
	.A1N(n90), 
	.A0N(\FIFO_MEM[2][0] ));
   OAI2BB2X1M U149 (.Y(n134), 
	.B1(n90), 
	.B0(n206), 
	.A1N(n90), 
	.A0N(\FIFO_MEM[2][1] ));
   OAI2BB2X1M U150 (.Y(n135), 
	.B1(n90), 
	.B0(n205), 
	.A1N(n90), 
	.A0N(\FIFO_MEM[2][2] ));
   OAI2BB2X1M U151 (.Y(n136), 
	.B1(n90), 
	.B0(n204), 
	.A1N(n90), 
	.A0N(\FIFO_MEM[2][3] ));
   OAI2BB2X1M U152 (.Y(n137), 
	.B1(n90), 
	.B0(n203), 
	.A1N(n90), 
	.A0N(\FIFO_MEM[2][4] ));
   OAI2BB2X1M U153 (.Y(n138), 
	.B1(n90), 
	.B0(n202), 
	.A1N(n90), 
	.A0N(\FIFO_MEM[2][5] ));
   OAI2BB2X1M U154 (.Y(n139), 
	.B1(n90), 
	.B0(n201), 
	.A1N(n90), 
	.A0N(\FIFO_MEM[2][6] ));
   OAI2BB2X1M U155 (.Y(n140), 
	.B1(n90), 
	.B0(n200), 
	.A1N(n90), 
	.A0N(\FIFO_MEM[2][7] ));
   OAI2BB2X1M U156 (.Y(n141), 
	.B1(n91), 
	.B0(n207), 
	.A1N(n91), 
	.A0N(\FIFO_MEM[1][0] ));
   OAI2BB2X1M U157 (.Y(n142), 
	.B1(n91), 
	.B0(n206), 
	.A1N(n91), 
	.A0N(\FIFO_MEM[1][1] ));
   OAI2BB2X1M U158 (.Y(n143), 
	.B1(n91), 
	.B0(n205), 
	.A1N(n91), 
	.A0N(\FIFO_MEM[1][2] ));
   OAI2BB2X1M U159 (.Y(n144), 
	.B1(n91), 
	.B0(n204), 
	.A1N(n91), 
	.A0N(\FIFO_MEM[1][3] ));
   OAI2BB2X1M U160 (.Y(n145), 
	.B1(n91), 
	.B0(n203), 
	.A1N(n91), 
	.A0N(\FIFO_MEM[1][4] ));
   OAI2BB2X1M U161 (.Y(n146), 
	.B1(n91), 
	.B0(n202), 
	.A1N(n91), 
	.A0N(\FIFO_MEM[1][5] ));
   OAI2BB2X1M U162 (.Y(n147), 
	.B1(n91), 
	.B0(n201), 
	.A1N(n91), 
	.A0N(\FIFO_MEM[1][6] ));
   OAI2BB2X1M U163 (.Y(n148), 
	.B1(n91), 
	.B0(n200), 
	.A1N(n91), 
	.A0N(\FIFO_MEM[1][7] ));
   OAI2BB2X1M U164 (.Y(n101), 
	.B1(n207), 
	.B0(n84), 
	.A1N(n84), 
	.A0N(\FIFO_MEM[6][0] ));
   AND2X2M U165 (.Y(n85), 
	.B(waddr[2]), 
	.A(wclken));
   NAND3X2M U166 (.Y(n88), 
	.C(n89), 
	.B(waddr[0]), 
	.A(waddr[1]));
   NAND3X2M U167 (.Y(n90), 
	.C(n89), 
	.B(n198), 
	.A(waddr[1]));
   NAND3X2M U168 (.Y(n91), 
	.C(n89), 
	.B(n199), 
	.A(waddr[0]));
   NAND3X2M U169 (.Y(n84), 
	.C(waddr[1]), 
	.B(n198), 
	.A(n85));
   NOR2X2M U170 (.Y(n180), 
	.B(N11), 
	.A(n183));
   NOR2X2M U171 (.Y(n176), 
	.B(N12), 
	.A(N11));
   INVX2M U172 (.Y(n199), 
	.A(waddr[1]));
   INVX2M U173 (.Y(n198), 
	.A(waddr[0]));
   NOR2X2M U174 (.Y(n177), 
	.B(N12), 
	.A(n184));
   INVX2M U175 (.Y(n184), 
	.A(N11));
   INVX2M U176 (.Y(n183), 
	.A(N12));
   INVX2M U177 (.Y(n185), 
	.A(N10));
   AO22X1M U178 (.Y(n73), 
	.B1(n176), 
	.B0(\FIFO_MEM[1][0] ), 
	.A1(n177), 
	.A0(\FIFO_MEM[3][0] ));
   AOI221XLM U179 (.Y(n76), 
	.C0(n73), 
	.B1(n179), 
	.B0(\FIFO_MEM[7][0] ), 
	.A1(n180), 
	.A0(\FIFO_MEM[5][0] ));
   AO22X1M U180 (.Y(n74), 
	.B1(n176), 
	.B0(\FIFO_MEM[0][0] ), 
	.A1(n177), 
	.A0(\FIFO_MEM[2][0] ));
   AOI221XLM U181 (.Y(n75), 
	.C0(n74), 
	.B1(n179), 
	.B0(\FIFO_MEM[6][0] ), 
	.A1(n180), 
	.A0(\FIFO_MEM[4][0] ));
   OAI22X1M U182 (.Y(N39), 
	.B1(n75), 
	.B0(N10), 
	.A1(n76), 
	.A0(n185));
   AO22X1M U183 (.Y(n77), 
	.B1(n176), 
	.B0(\FIFO_MEM[1][1] ), 
	.A1(n177), 
	.A0(\FIFO_MEM[3][1] ));
   AOI221XLM U184 (.Y(n80), 
	.C0(n77), 
	.B1(n179), 
	.B0(\FIFO_MEM[7][1] ), 
	.A1(n180), 
	.A0(\FIFO_MEM[5][1] ));
   AO22X1M U185 (.Y(n78), 
	.B1(n176), 
	.B0(\FIFO_MEM[0][1] ), 
	.A1(n177), 
	.A0(\FIFO_MEM[2][1] ));
   AOI221XLM U186 (.Y(n79), 
	.C0(n78), 
	.B1(n179), 
	.B0(\FIFO_MEM[6][1] ), 
	.A1(n180), 
	.A0(\FIFO_MEM[4][1] ));
   OAI22X1M U187 (.Y(N38), 
	.B1(n79), 
	.B0(N10), 
	.A1(n80), 
	.A0(n185));
   AO22X1M U188 (.Y(n81), 
	.B1(n176), 
	.B0(\FIFO_MEM[1][2] ), 
	.A1(n177), 
	.A0(\FIFO_MEM[3][2] ));
   AOI221XLM U189 (.Y(n158), 
	.C0(n81), 
	.B1(n179), 
	.B0(\FIFO_MEM[7][2] ), 
	.A1(n180), 
	.A0(\FIFO_MEM[5][2] ));
   AO22X1M U190 (.Y(n82), 
	.B1(n176), 
	.B0(\FIFO_MEM[0][2] ), 
	.A1(n177), 
	.A0(\FIFO_MEM[2][2] ));
   AOI221XLM U191 (.Y(n157), 
	.C0(n82), 
	.B1(n179), 
	.B0(\FIFO_MEM[6][2] ), 
	.A1(n180), 
	.A0(\FIFO_MEM[4][2] ));
   OAI22X1M U192 (.Y(N37), 
	.B1(n157), 
	.B0(N10), 
	.A1(n158), 
	.A0(n185));
   AO22X1M U193 (.Y(n159), 
	.B1(n176), 
	.B0(\FIFO_MEM[1][3] ), 
	.A1(n177), 
	.A0(\FIFO_MEM[3][3] ));
   AOI221XLM U194 (.Y(n162), 
	.C0(n159), 
	.B1(n179), 
	.B0(\FIFO_MEM[7][3] ), 
	.A1(n180), 
	.A0(\FIFO_MEM[5][3] ));
   AO22X1M U195 (.Y(n160), 
	.B1(n176), 
	.B0(\FIFO_MEM[0][3] ), 
	.A1(n177), 
	.A0(\FIFO_MEM[2][3] ));
   AOI221XLM U196 (.Y(n161), 
	.C0(n160), 
	.B1(n179), 
	.B0(\FIFO_MEM[6][3] ), 
	.A1(n180), 
	.A0(\FIFO_MEM[4][3] ));
   OAI22X1M U197 (.Y(N36), 
	.B1(n161), 
	.B0(N10), 
	.A1(n162), 
	.A0(n185));
   AO22X1M U198 (.Y(n163), 
	.B1(n176), 
	.B0(\FIFO_MEM[1][4] ), 
	.A1(n177), 
	.A0(\FIFO_MEM[3][4] ));
   AOI221XLM U199 (.Y(n166), 
	.C0(n163), 
	.B1(n179), 
	.B0(\FIFO_MEM[7][4] ), 
	.A1(n180), 
	.A0(\FIFO_MEM[5][4] ));
   AO22X1M U200 (.Y(n164), 
	.B1(n176), 
	.B0(\FIFO_MEM[0][4] ), 
	.A1(n177), 
	.A0(\FIFO_MEM[2][4] ));
   AOI221XLM U201 (.Y(n165), 
	.C0(n164), 
	.B1(n179), 
	.B0(\FIFO_MEM[6][4] ), 
	.A1(n180), 
	.A0(\FIFO_MEM[4][4] ));
   OAI22X1M U202 (.Y(N35), 
	.B1(n165), 
	.B0(N10), 
	.A1(n166), 
	.A0(n185));
   AO22X1M U203 (.Y(n167), 
	.B1(n176), 
	.B0(\FIFO_MEM[1][5] ), 
	.A1(n177), 
	.A0(\FIFO_MEM[3][5] ));
   AOI221XLM U204 (.Y(n170), 
	.C0(n167), 
	.B1(n179), 
	.B0(\FIFO_MEM[7][5] ), 
	.A1(n180), 
	.A0(\FIFO_MEM[5][5] ));
   AO22X1M U205 (.Y(n168), 
	.B1(n176), 
	.B0(\FIFO_MEM[0][5] ), 
	.A1(n177), 
	.A0(\FIFO_MEM[2][5] ));
   AOI221XLM U206 (.Y(n169), 
	.C0(n168), 
	.B1(n179), 
	.B0(\FIFO_MEM[6][5] ), 
	.A1(n180), 
	.A0(\FIFO_MEM[4][5] ));
   OAI22X1M U207 (.Y(N34), 
	.B1(n169), 
	.B0(N10), 
	.A1(n170), 
	.A0(n185));
   AO22X1M U208 (.Y(n171), 
	.B1(n176), 
	.B0(\FIFO_MEM[1][6] ), 
	.A1(n177), 
	.A0(\FIFO_MEM[3][6] ));
   AOI221XLM U209 (.Y(n174), 
	.C0(n171), 
	.B1(n179), 
	.B0(\FIFO_MEM[7][6] ), 
	.A1(n180), 
	.A0(\FIFO_MEM[5][6] ));
   AO22X1M U210 (.Y(n172), 
	.B1(n176), 
	.B0(\FIFO_MEM[0][6] ), 
	.A1(n177), 
	.A0(\FIFO_MEM[2][6] ));
   AOI221XLM U211 (.Y(n173), 
	.C0(n172), 
	.B1(n179), 
	.B0(\FIFO_MEM[6][6] ), 
	.A1(n180), 
	.A0(\FIFO_MEM[4][6] ));
   OAI22X1M U212 (.Y(N33), 
	.B1(n173), 
	.B0(N10), 
	.A1(n174), 
	.A0(n185));
   AO22X1M U213 (.Y(n175), 
	.B1(n176), 
	.B0(\FIFO_MEM[1][7] ), 
	.A1(n177), 
	.A0(\FIFO_MEM[3][7] ));
   AOI221XLM U214 (.Y(n182), 
	.C0(n175), 
	.B1(n179), 
	.B0(\FIFO_MEM[7][7] ), 
	.A1(n180), 
	.A0(\FIFO_MEM[5][7] ));
   AO22X1M U215 (.Y(n178), 
	.B1(n176), 
	.B0(\FIFO_MEM[0][7] ), 
	.A1(n177), 
	.A0(\FIFO_MEM[2][7] ));
   AOI221XLM U216 (.Y(n181), 
	.C0(n178), 
	.B1(n179), 
	.B0(\FIFO_MEM[6][7] ), 
	.A1(n180), 
	.A0(\FIFO_MEM[4][7] ));
   OAI22X1M U217 (.Y(N32), 
	.B1(n181), 
	.B0(N10), 
	.A1(n185), 
	.A0(n182));
   INVXLM U218 (.Y(n210), 
	.A(test_se));
   INVX2M U219 (.Y(n211), 
	.A(n210));
   INVX2M U220 (.Y(n212), 
	.A(n210));
   INVX2M U221 (.Y(n213), 
	.A(n210));
   INVX2M U222 (.Y(n214), 
	.A(n210));
endmodule

module FIFO_WR_test_1 (
	W_INC, 
	W_CLK, 
	W_RST, 
	rptr_sync, 
	wptr, 
	waddr, 
	FULL, 
	test_si, 
	test_se, 
	REF_CLK_O__L7_N6, 
	REF_CLK_O__L7_N7);
   input W_INC;
   input W_CLK;
   input W_RST;
   input [3:0] rptr_sync;
   output [3:0] wptr;
   output [2:0] waddr;
   output FULL;
   input test_si;
   input test_se;
   input REF_CLK_O__L7_N6;
   input REF_CLK_O__L7_N7;

   // Internal wires
   wire N94;
   wire N95;
   wire N96;
   wire N97;
   wire n5;
   wire n6;
   wire n7;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n18;
   wire n21;
   wire n23;
   wire n25;
   wire n1;

   SDFFRQX2M \wptr_bi_reg[3]  (.SI(waddr[2]), 
	.SE(test_se), 
	.RN(W_RST), 
	.Q(N97), 
	.D(n18), 
	.CK(REF_CLK_O__L7_N7));
   SDFFRQX2M \wptr_bi_reg[2]  (.SI(waddr[1]), 
	.SE(test_se), 
	.RN(W_RST), 
	.Q(waddr[2]), 
	.D(n21), 
	.CK(W_CLK));
   SDFFRQX2M \wptr_bi_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(W_RST), 
	.Q(waddr[0]), 
	.D(n25), 
	.CK(REF_CLK_O__L7_N6));
   SDFFRQX2M \wptr_reg[0]  (.SI(N97), 
	.SE(test_se), 
	.RN(W_RST), 
	.Q(wptr[0]), 
	.D(N94), 
	.CK(REF_CLK_O__L7_N7));
   SDFFRQX2M \wptr_reg[1]  (.SI(wptr[0]), 
	.SE(test_se), 
	.RN(W_RST), 
	.Q(wptr[1]), 
	.D(N95), 
	.CK(REF_CLK_O__L7_N7));
   SDFFRQX2M \wptr_reg[3]  (.SI(wptr[2]), 
	.SE(test_se), 
	.RN(W_RST), 
	.Q(wptr[3]), 
	.D(N97), 
	.CK(REF_CLK_O__L7_N7));
   SDFFRQX2M \wptr_reg[2]  (.SI(wptr[1]), 
	.SE(test_se), 
	.RN(W_RST), 
	.Q(wptr[2]), 
	.D(N96), 
	.CK(REF_CLK_O__L7_N7));
   SDFFRQX2M \wptr_bi_reg[1]  (.SI(waddr[0]), 
	.SE(test_se), 
	.RN(W_RST), 
	.Q(waddr[1]), 
	.D(n23), 
	.CK(REF_CLK_O__L7_N7));
   NOR2X2M U3 (.Y(n7), 
	.B(n9), 
	.A(n1));
   NAND2X2M U4 (.Y(n9), 
	.B(n10), 
	.A(W_INC));
   INVX2M U5 (.Y(FULL), 
	.A(n10));
   XNOR2X2M U6 (.Y(n21), 
	.B(n6), 
	.A(waddr[2]));
   XNOR2X2M U7 (.Y(n25), 
	.B(n9), 
	.A(waddr[0]));
   XNOR2X2M U8 (.Y(n18), 
	.B(n5), 
	.A(N97));
   NAND2BX2M U9 (.Y(n5), 
	.B(waddr[2]), 
	.AN(n6));
   NAND4X2M U10 (.Y(n10), 
	.D(n14), 
	.C(n13), 
	.B(n12), 
	.A(n11));
   XNOR2X2M U11 (.Y(n11), 
	.B(rptr_sync[0]), 
	.A(wptr[0]));
   XNOR2X2M U12 (.Y(n12), 
	.B(rptr_sync[1]), 
	.A(wptr[1]));
   CLKXOR2X2M U13 (.Y(n13), 
	.B(rptr_sync[2]), 
	.A(wptr[2]));
   NAND2X2M U14 (.Y(n6), 
	.B(n7), 
	.A(waddr[1]));
   CLKXOR2X2M U15 (.Y(n14), 
	.B(rptr_sync[3]), 
	.A(wptr[3]));
   CLKXOR2X2M U16 (.Y(n23), 
	.B(n7), 
	.A(waddr[1]));
   XNOR2X2M U17 (.Y(N94), 
	.B(n1), 
	.A(waddr[1]));
   INVX2M U18 (.Y(n1), 
	.A(waddr[0]));
   CLKXOR2X2M U19 (.Y(N95), 
	.B(waddr[1]), 
	.A(waddr[2]));
   CLKXOR2X2M U20 (.Y(N96), 
	.B(N97), 
	.A(waddr[2]));
endmodule

module FIFO_RD_test_1 (
	R_INC, 
	R_CLK, 
	R_RST, 
	wptr_sync, 
	rptr, 
	raddr, 
	EMPTY, 
	test_si, 
	test_se, 
	FE_OFN0_SYNC_RST_2, 
	TX_CLK_O__L3_N2);
   input R_INC;
   input R_CLK;
   input R_RST;
   input [3:0] wptr_sync;
   output [3:0] rptr;
   output [2:0] raddr;
   output EMPTY;
   input test_si;
   input test_se;
   input FE_OFN0_SYNC_RST_2;
   input TX_CLK_O__L3_N2;

   // Internal wires
   wire N90;
   wire N91;
   wire N92;
   wire N93;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n1;
   wire n2;
   wire n11;
   wire n12;

   SDFFRQX2M \rptr_reg[0]  (.SI(N93), 
	.SE(test_se), 
	.RN(R_RST), 
	.Q(rptr[0]), 
	.D(N90), 
	.CK(R_CLK));
   SDFFRQX2M \rptr_reg[3]  (.SI(rptr[2]), 
	.SE(test_se), 
	.RN(R_RST), 
	.Q(rptr[3]), 
	.D(N93), 
	.CK(R_CLK));
   SDFFRQX2M \rptr_reg[2]  (.SI(rptr[1]), 
	.SE(test_se), 
	.RN(R_RST), 
	.Q(rptr[2]), 
	.D(N92), 
	.CK(R_CLK));
   SDFFRQX2M \rptr_reg[1]  (.SI(rptr[0]), 
	.SE(test_se), 
	.RN(R_RST), 
	.Q(rptr[1]), 
	.D(N91), 
	.CK(R_CLK));
   SDFFRQX2M \rptr_bi_reg[3]  (.SI(raddr[2]), 
	.SE(test_se), 
	.RN(R_RST), 
	.Q(N93), 
	.D(n25), 
	.CK(R_CLK));
   SDFFRQX2M \rptr_bi_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(FE_OFN0_SYNC_RST_2), 
	.Q(raddr[0]), 
	.D(n28), 
	.CK(TX_CLK_O__L3_N2));
   SDFFRQX2M \rptr_bi_reg[2]  (.SI(raddr[1]), 
	.SE(test_se), 
	.RN(R_RST), 
	.Q(raddr[2]), 
	.D(n26), 
	.CK(R_CLK));
   SDFFRQX2M \rptr_bi_reg[1]  (.SI(raddr[0]), 
	.SE(test_se), 
	.RN(R_RST), 
	.Q(raddr[1]), 
	.D(n27), 
	.CK(R_CLK));
   NOR2X2M U11 (.Y(n18), 
	.B(n19), 
	.A(n2));
   XNOR2X2M U13 (.Y(n24), 
	.B(rptr[2]), 
	.A(wptr_sync[2]));
   XNOR2X2M U14 (.Y(N91), 
	.B(raddr[1]), 
	.A(n11));
   XNOR2X2M U15 (.Y(n26), 
	.B(n17), 
	.A(raddr[2]));
   XNOR2X2M U16 (.Y(N90), 
	.B(n2), 
	.A(raddr[1]));
   XNOR2X2M U17 (.Y(n28), 
	.B(n19), 
	.A(raddr[0]));
   NAND4X2M U18 (.Y(EMPTY), 
	.D(n24), 
	.C(n23), 
	.B(n22), 
	.A(n21));
   XNOR2X2M U19 (.Y(n21), 
	.B(rptr[1]), 
	.A(wptr_sync[1]));
   XNOR2X2M U20 (.Y(n22), 
	.B(rptr[0]), 
	.A(wptr_sync[0]));
   XNOR2X2M U21 (.Y(n23), 
	.B(rptr[3]), 
	.A(wptr_sync[3]));
   OAI211X2M U22 (.Y(n25), 
	.C0(n16), 
	.B0(n15), 
	.A1(n12), 
	.A0(n1));
   NAND3X2M U23 (.Y(n15), 
	.C(raddr[2]), 
	.B(n12), 
	.A(n1));
   INVX2M U24 (.Y(n12), 
	.A(N93));
   INVX2M U25 (.Y(n1), 
	.A(n17));
   NAND2X2M U26 (.Y(n17), 
	.B(n18), 
	.A(raddr[1]));
   OAI21X2M U27 (.Y(N92), 
	.B0(n16), 
	.A1(n11), 
	.A0(N93));
   INVX2M U28 (.Y(n11), 
	.A(raddr[2]));
   NAND2X2M U29 (.Y(n19), 
	.B(EMPTY), 
	.A(R_INC));
   NAND2X2M U30 (.Y(n16), 
	.B(n11), 
	.A(N93));
   INVX2M U31 (.Y(n2), 
	.A(raddr[0]));
   CLKXOR2X2M U32 (.Y(n27), 
	.B(n18), 
	.A(raddr[1]));
endmodule

module DF_SYNC_test_1 (
	W_CLK, 
	W_RST, 
	R_RST, 
	R_CLK, 
	wptr, 
	rptr, 
	wptr_sync, 
	rptr_sync, 
	test_si1, 
	test_so1, 
	test_se, 
	FE_OFN0_SYNC_RST_2, 
	REF_CLK_O__L7_N7);
   input W_CLK;
   input W_RST;
   input R_RST;
   input R_CLK;
   input [3:0] wptr;
   input [3:0] rptr;
   output [3:0] wptr_sync;
   output [3:0] rptr_sync;
   input test_si1;
   output test_so1;
   input test_se;
   input FE_OFN0_SYNC_RST_2;
   input REF_CLK_O__L7_N7;

   // Internal wires
   wire FE_PHN5_SI_1_;
   wire FE_PHN4_SI_1_;
   wire FE_PHN3_SI_1_;
   wire n3;
   wire n4;
   wire [3:0] wptr_sync1;
   wire [3:0] rptr_sync1;

   assign test_so1 = wptr_sync1[2] ;

   DLY4X1M FE_PHC5_SI_1_ (.Y(FE_PHN5_SI_1_), 
	.A(FE_PHN4_SI_1_));
   DLY4X1M FE_PHC4_SI_1_ (.Y(FE_PHN4_SI_1_), 
	.A(FE_PHN3_SI_1_));
   DLY4X1M FE_PHC3_SI_1_ (.Y(FE_PHN3_SI_1_), 
	.A(test_si1));
   SDFFRQX2M \wptr_sync_reg[3]  (.SI(wptr_sync[2]), 
	.SE(n4), 
	.RN(FE_OFN0_SYNC_RST_2), 
	.Q(wptr_sync[3]), 
	.D(wptr_sync1[3]), 
	.CK(R_CLK));
   SDFFRQX2M \wptr_sync_reg[2]  (.SI(wptr_sync[1]), 
	.SE(n4), 
	.RN(FE_OFN0_SYNC_RST_2), 
	.Q(wptr_sync[2]), 
	.D(wptr_sync1[2]), 
	.CK(R_CLK));
   SDFFRQX2M \wptr_sync_reg[1]  (.SI(wptr_sync[0]), 
	.SE(n4), 
	.RN(FE_OFN0_SYNC_RST_2), 
	.Q(wptr_sync[1]), 
	.D(wptr_sync1[1]), 
	.CK(R_CLK));
   SDFFRQX2M \wptr_sync_reg[0]  (.SI(wptr_sync1[3]), 
	.SE(n4), 
	.RN(FE_OFN0_SYNC_RST_2), 
	.Q(wptr_sync[0]), 
	.D(wptr_sync1[0]), 
	.CK(R_CLK));
   SDFFRQX2M \rptr_sync_reg[1]  (.SI(rptr_sync[0]), 
	.SE(n4), 
	.RN(W_RST), 
	.Q(rptr_sync[1]), 
	.D(rptr_sync1[1]), 
	.CK(REF_CLK_O__L7_N7));
   SDFFRQX2M \rptr_sync_reg[0]  (.SI(rptr_sync1[3]), 
	.SE(n4), 
	.RN(W_RST), 
	.Q(rptr_sync[0]), 
	.D(rptr_sync1[0]), 
	.CK(REF_CLK_O__L7_N7));
   SDFFRQX2M \rptr_sync_reg[3]  (.SI(rptr_sync[2]), 
	.SE(n4), 
	.RN(W_RST), 
	.Q(rptr_sync[3]), 
	.D(rptr_sync1[3]), 
	.CK(REF_CLK_O__L7_N7));
   SDFFRQX2M \rptr_sync_reg[2]  (.SI(rptr_sync[1]), 
	.SE(n4), 
	.RN(W_RST), 
	.Q(rptr_sync[2]), 
	.D(rptr_sync1[2]), 
	.CK(REF_CLK_O__L7_N7));
   SDFFRQX2M \wptr_sync1_reg[3]  (.SI(FE_PHN5_SI_1_), 
	.SE(n4), 
	.RN(R_RST), 
	.Q(wptr_sync1[3]), 
	.D(wptr[3]), 
	.CK(R_CLK));
   SDFFRQX4M \wptr_sync1_reg[2]  (.SI(wptr_sync1[1]), 
	.SE(n4), 
	.RN(FE_OFN0_SYNC_RST_2), 
	.Q(wptr_sync1[2]), 
	.D(wptr[2]), 
	.CK(R_CLK));
   SDFFRQX2M \wptr_sync1_reg[1]  (.SI(wptr_sync1[0]), 
	.SE(n4), 
	.RN(FE_OFN0_SYNC_RST_2), 
	.Q(wptr_sync1[1]), 
	.D(wptr[1]), 
	.CK(R_CLK));
   SDFFRQX2M \wptr_sync1_reg[0]  (.SI(rptr_sync[3]), 
	.SE(n4), 
	.RN(FE_OFN0_SYNC_RST_2), 
	.Q(wptr_sync1[0]), 
	.D(wptr[0]), 
	.CK(R_CLK));
   SDFFRQX2M \rptr_sync1_reg[3]  (.SI(rptr_sync1[2]), 
	.SE(n4), 
	.RN(W_RST), 
	.Q(rptr_sync1[3]), 
	.D(rptr[3]), 
	.CK(W_CLK));
   SDFFRQX2M \rptr_sync1_reg[2]  (.SI(rptr_sync1[1]), 
	.SE(n4), 
	.RN(W_RST), 
	.Q(rptr_sync1[2]), 
	.D(rptr[2]), 
	.CK(REF_CLK_O__L7_N7));
   SDFFRQX2M \rptr_sync1_reg[1]  (.SI(rptr_sync1[0]), 
	.SE(n4), 
	.RN(W_RST), 
	.Q(rptr_sync1[1]), 
	.D(rptr[1]), 
	.CK(REF_CLK_O__L7_N7));
   SDFFRQX2M \rptr_sync1_reg[0]  (.SI(rptr[3]), 
	.SE(n4), 
	.RN(W_RST), 
	.Q(rptr_sync1[0]), 
	.D(rptr[0]), 
	.CK(W_CLK));
   INVXLM U19 (.Y(n3), 
	.A(test_se));
   INVX2M U20 (.Y(n4), 
	.A(n3));
endmodule

module ASYNC_FIFO_test_1 (
	W_CLK, 
	W_RST, 
	R_CLK, 
	R_RST, 
	WR_DATA, 
	W_INC, 
	R_INC, 
	RD_DATA, 
	FULL, 
	EMPTY, 
	test_si2, 
	test_si1, 
	test_so2, 
	test_so1, 
	test_se, 
	FE_OFN0_SYNC_RST_2, 
	FE_OFN2_SYNC_RST_1, 
	FE_OFN8_SE, 
	TX_CLK_O__L3_N2, 
	REF_CLK_O__L7_N1, 
	REF_CLK_O__L7_N3, 
	REF_CLK_O__L7_N4, 
	REF_CLK_O__L7_N5, 
	REF_CLK_O__L7_N6, 
	REF_CLK_O__L7_N7);
   input W_CLK;
   input W_RST;
   input R_CLK;
   input R_RST;
   input [7:0] WR_DATA;
   input W_INC;
   input R_INC;
   output [7:0] RD_DATA;
   output FULL;
   output EMPTY;
   input test_si2;
   input test_si1;
   output test_so2;
   output test_so1;
   input test_se;
   input FE_OFN0_SYNC_RST_2;
   input FE_OFN2_SYNC_RST_1;
   input FE_OFN8_SE;
   input TX_CLK_O__L3_N2;
   input REF_CLK_O__L7_N1;
   input REF_CLK_O__L7_N3;
   input REF_CLK_O__L7_N4;
   input REF_CLK_O__L7_N5;
   input REF_CLK_O__L7_N6;
   input REF_CLK_O__L7_N7;

   // Internal wires
   wire _0_net_;
   wire [2:0] waddr;
   wire [2:0] raddr;
   wire [3:0] rptr_sync;
   wire [3:0] wptr;
   wire [3:0] wptr_sync;
   wire [3:0] rptr;

   assign test_so2 = wptr_sync[3] ;

   NOR2BX2M U5 (.Y(_0_net_), 
	.B(FULL), 
	.AN(W_INC));
   FIFO_MEM_CNTRL_test_1 U1 (.WR_DATA({ WR_DATA[7],
		WR_DATA[6],
		WR_DATA[5],
		WR_DATA[4],
		WR_DATA[3],
		WR_DATA[2],
		WR_DATA[1],
		WR_DATA[0] }), 
	.W_CLK(W_CLK), 
	.W_RST(W_RST), 
	.R_CLK(R_CLK), 
	.R_RST(R_RST), 
	.wclken(_0_net_), 
	.waddr({ waddr[2],
		waddr[1],
		waddr[0] }), 
	.raddr({ raddr[2],
		raddr[1],
		raddr[0] }), 
	.RD_DATA({ RD_DATA[7],
		RD_DATA[6],
		RD_DATA[5],
		RD_DATA[4],
		RD_DATA[3],
		RD_DATA[2],
		RD_DATA[1],
		RD_DATA[0] }), 
	.test_si(test_si1), 
	.test_se(test_se), 
	.FE_OFN0_SYNC_RST_2(FE_OFN0_SYNC_RST_2), 
	.FE_OFN2_SYNC_RST_1(FE_OFN2_SYNC_RST_1), 
	.TX_CLK_O__L3_N2(TX_CLK_O__L3_N2), 
	.REF_CLK_O__L7_N1(REF_CLK_O__L7_N1), 
	.REF_CLK_O__L7_N3(REF_CLK_O__L7_N3), 
	.REF_CLK_O__L7_N4(REF_CLK_O__L7_N4), 
	.REF_CLK_O__L7_N5(REF_CLK_O__L7_N5), 
	.REF_CLK_O__L7_N6(REF_CLK_O__L7_N6), 
	.REF_CLK_O__L7_N7(REF_CLK_O__L7_N7));
   FIFO_WR_test_1 U2 (.W_INC(W_INC), 
	.W_CLK(REF_CLK_O__L7_N3), 
	.W_RST(W_RST), 
	.rptr_sync({ rptr_sync[3],
		rptr_sync[2],
		rptr_sync[1],
		rptr_sync[0] }), 
	.wptr({ wptr[3],
		wptr[2],
		wptr[1],
		wptr[0] }), 
	.waddr({ waddr[2],
		waddr[1],
		waddr[0] }), 
	.FULL(FULL), 
	.test_si(RD_DATA[7]), 
	.test_se(FE_OFN8_SE), 
	.REF_CLK_O__L7_N6(REF_CLK_O__L7_N6), 
	.REF_CLK_O__L7_N7(REF_CLK_O__L7_N7));
   FIFO_RD_test_1 U3 (.R_INC(R_INC), 
	.R_CLK(R_CLK), 
	.R_RST(R_RST), 
	.wptr_sync({ wptr_sync[3],
		wptr_sync[2],
		wptr_sync[1],
		wptr_sync[0] }), 
	.rptr({ rptr[3],
		rptr[2],
		rptr[1],
		rptr[0] }), 
	.raddr({ raddr[2],
		raddr[1],
		raddr[0] }), 
	.EMPTY(EMPTY), 
	.test_si(wptr[3]), 
	.test_se(FE_OFN8_SE), 
	.FE_OFN0_SYNC_RST_2(FE_OFN0_SYNC_RST_2), 
	.TX_CLK_O__L3_N2(TX_CLK_O__L3_N2));
   DF_SYNC_test_1 U4 (.W_CLK(REF_CLK_O__L7_N6), 
	.W_RST(W_RST), 
	.R_RST(R_RST), 
	.R_CLK(TX_CLK_O__L3_N2), 
	.wptr({ wptr[3],
		wptr[2],
		wptr[1],
		wptr[0] }), 
	.rptr({ rptr[3],
		rptr[2],
		rptr[1],
		rptr[0] }), 
	.wptr_sync({ wptr_sync[3],
		wptr_sync[2],
		wptr_sync[1],
		wptr_sync[0] }), 
	.rptr_sync({ rptr_sync[3],
		rptr_sync[2],
		rptr_sync[1],
		rptr_sync[0] }), 
	.test_si1(test_si2), 
	.test_so1(test_so1), 
	.test_se(FE_OFN8_SE), 
	.FE_OFN0_SYNC_RST_2(FE_OFN0_SYNC_RST_2), 
	.REF_CLK_O__L7_N7(REF_CLK_O__L7_N7));
endmodule

module MUX_2X1_0 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   // Internal wires
   wire N0;

   assign N0 = SEL ;

   MX2X6M U1 (.Y(OUT), 
	.S0(N0), 
	.B(IN_1), 
	.A(IN_0));
endmodule

module MUX_2X1_3 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   // Internal wires
   wire N0;

   assign N0 = SEL ;

   MX2X2M U1 (.Y(OUT), 
	.S0(N0), 
	.B(IN_1), 
	.A(IN_0));
endmodule

