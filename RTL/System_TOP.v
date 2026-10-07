module System_TOP#(
    parameter DATA_WIDTH = 8,
              FUN_WIDTH  = 4,
              ADD_WIDTH  = 4,
              DEPTH      = 16,
              Div_width  =8,
              BUS_WIDTH  =8,
              NUM_STAGES =2,
              FIFO_WIDTH =8,
              NUM_CHAINS =4
) (
    input                       REF_CLK,
    input                       UART_CLK,
    input                       RST_N,
    input                       UART_RX_IN,
    output                      UART_TX_O,
    output                      framing_error,
    output                      parity_error
);
wire stp_err;
wire strt_glitch;
wire SYNC_RST_1;
wire SYNC_RST_2;
wire FULL;
wire [DATA_WIDTH-1:0] WR_DATA;
wire WR_INC;
wire [DATA_WIDTH-1:0] UART_CONF;
wire [DATA_WIDTH-1:0] RX_P_DATA;
wire RX_D_VLD;
wire RX_D_VLD_SYNC;
wire [0:5]prescale;
wire [DATA_WIDTH-1:0] Div_Ratio;
wire F_EMPTY;
wire [DATA_WIDTH-1:0] RD_DATA;
wire PAR_EN;
wire PAR_TYP;
wire RD_INC;
wire [0:DATA_WIDTH-1] RX_OUT_P;
wire RX_OUT_V;
wire TX_CLK_O;

Domain_1_TOP #(
    .DATA_WIDTH (DATA_WIDTH),
    .FUN_WIDTH (FUN_WIDTH),
    .ADD_WIDTH (ADD_WIDTH),
    .DEPTH (DEPTH)
)Domain_1_TOP_U0(
    .RX_P_DATA (RX_P_DATA),
    .RX_D_VLD (RX_D_VLD_SYNC),
    .REF_CLK (REF_CLK),
    .RST (SYNC_RST_1),
    .FULL (FULL),
    .WR_DATA (WR_DATA),
    .WR_INC (WR_INC),
    .UART_CONF (UART_CONF),
    .REG3 (Div_Ratio)
);


Domain_2_TOP #(
    .Div_width (Div_width)
) Domain_2_TOP_U1(
    .prescale (prescale),
    .Div_Ratio (Div_Ratio),
    .F_EMPTY (F_EMPTY),
    .RD_DATA (RD_DATA),
    .RST (SYNC_RST_2),
    .UART_CLK (UART_CLK),
    .RX_IN (UART_RX_IN),
    .PAR_EN (PAR_EN),
    .PAR_TYP (PAR_TYP),
    .RD_INC (RD_INC),
    .RX_OUT_P (RX_OUT_P),
    .RX_OUT_V (RX_OUT_V),
    .TX_OUT_S (UART_TX_O),
    .stp_err (stp_err),
    .par_err (parity_error),
    .strt_glitch (strt_glitch),
    .TX_CLK_O (TX_CLK_O)
);

//DATA_SYNC RX_DATA -> SYS_CTRL

DATA_SYNC #(
    .BUS_WIDTH (BUS_WIDTH),
    .NUM_STAGES (NUM_STAGES)
) DATA_SYNC_U2(
    .unsync_bus (RX_OUT_P),
    .bus_enable (RX_OUT_V),
    .CLK (REF_CLK),
    .RST (SYNC_RST_1),
    .sync_bus (RX_P_DATA),
    .enable_pulse (RX_D_VLD_SYNC)
);

//RST_SYNC for the domain_1

RST_SYNC #(
    .NUM_STAGES (NUM_STAGES)
)RST_SYNC_U3(
    .RST (RST_N),
    .CLK (REF_CLK),
    .SYNC_RST (SYNC_RST_1)
);

//RST_SYNC for the domain_2

RST_SYNC #(
    .NUM_STAGES (NUM_STAGES)
)RST_SYNC_U4(
    .RST (RST_N),
    .CLK (UART_CLK),
    .SYNC_RST (SYNC_RST_2)
);

// ASYNC_FIFO Domain_1(fast) -> Domain_2(slow)

ASYNC_FIFO #(
    .DATA_WIDTH (DATA_WIDTH),
    .FIFO_WIDTH (FIFO_WIDTH)
) ASYNC_FIFO_U5(
    .W_CLK (REF_CLK),
    .W_RST (SYNC_RST_1),
    .R_CLK (TX_CLK_O),
    .R_RST (SYNC_RST_2),
    .WR_DATA (WR_DATA),
    .W_INC (WR_INC),
    .R_INC (RD_INC),
    .RD_DATA (RD_DATA),
    .FULL (FULL),
    .EMPTY (F_EMPTY)
);

// UART_CONFIG assign

assign PAR_EN    = UART_CONF[0];
assign PAR_TYP   = UART_CONF[1];
assign prescale  = UART_CONF[7:2];

//framing error

assign framing_error = stp_err|strt_glitch; 

    
endmodule
