module Domain_2_TOP#(
    parameter Div_width  =8
) (
    input   [0:5]             prescale,
    input   [Div_width-1:0]   Div_Ratio,
    input                     F_EMPTY,
    input   [7:0]             RD_DATA,
    input                     RST,
    input                     UART_CLK,
    input                     RX_IN,
    input                     PAR_EN,
    input                     PAR_TYP,
    input                     test_mode,
    input                     scan_clk,
    output                    RD_INC,
    output   [0:7]            RX_OUT_P,
    output                    RX_OUT_V,
    output                    TX_OUT_S,
    output                    stp_err,
    output                    par_err,
    output                    strt_glitch,
    output                    TX_CLK_O
);
wire                    busy;
wire                    TX_CLK;
wire                    RX_CLK;
wire  [Div_width-1:0]   div_ratio_RX;
wire                    i_clk_en ;
wire                    RX_CLK_O; 
wire                    TX_CLK_O_1;           

UART_TOP UART_U0(
    .TX_CLK (TX_CLK_O_1),
    .RX_CLK (RX_CLK_O),
    .RST (RST),
    .TX_IN_P (RD_DATA),
    .TX_IN_V (~F_EMPTY),
    .RX_IN_S (RX_IN),
    .prescale (prescale),
    .PAR_TYP (PAR_TYP),
    .PAR_EN (PAR_EN),
    .TX_OUT_S (TX_OUT_S),
    .RX_OUT_P (RX_OUT_P),
    .RX_OUT_V (RX_OUT_V),
    .busy (busy),
    .stp_err (stp_err),
    .par_err (par_err),
    .strt_glitch (strt_glitch)
);

//TX clock_divider
ClkDiv#(.Div_width(Div_width)) ClkDiv_U1_TX(
    .i_ref_clk (UART_CLK),
    .i_rst_n (RST),
    .i_clk_en (i_clk_en),
    .i_div_ratio (Div_Ratio),
    .o_div_clk (TX_CLK)
);


//RX clock_divider
ClkDiv#(.Div_width(Div_width)) ClkDiv_U2_RX(
    .i_ref_clk (UART_CLK),
    .i_rst_n (RST),
    .i_clk_en (i_clk_en),
    .i_div_ratio (div_ratio_RX),
    .o_div_clk (RX_CLK)
);

PULSE_GEN PULSE_GEN_U3(
    .CLK (TX_CLK_O_1),
    .RST (RST),
    .LVL_SIG (busy),
    .PULSE_SIG (RD_INC)
);

prescale_MUX prescale_MUX_U4(
    .prescale (prescale),
    .div_ratio_RX (div_ratio_RX)
);

// RX clk muxed with the scan clk
MUX_2X1 MUX_2X1_U5(
    .IN_0 (RX_CLK),
    .IN_1 (scan_clk),
    .SEL  (test_mode),
    .OUT  (RX_CLK_O)
);

// TX clk muxed with the scan clk

MUX_2X1 MUX_2X1_U6(
    .IN_0 (TX_CLK),
    .IN_1 (scan_clk),
    .SEL  (test_mode),
    .OUT  (TX_CLK_O_1)
);



assign i_clk_en=1'b1;
assign TX_CLK_O=TX_CLK_O_1;
    
endmodule
