module UART_TOP (
    input TX_CLK,
    input RX_CLK,
    input RST,
    input [7:0] TX_IN_P,
    input TX_IN_V,
    input RX_IN_S,
    input [0:5] prescale,
    input PAR_TYP,
    input PAR_EN,
    output TX_OUT_S,
    output [0:7] RX_OUT_P,
    output RX_OUT_V,
    output busy,
    output stp_err,
    output par_err,
    output strt_glitch
);

    Top_TX U0 (
        .CLK(TX_CLK),
        .RST(RST),
        .P_DATA(TX_IN_P),
        .Data_Valid(TX_IN_V),
        .TX_OUT(TX_OUT_S),
        .busy(busy),
        .PAR_TYP(PAR_TYP),
        .PAR_EN(PAR_EN)
    );

    TOP_RX U1 (
        .CLK(RX_CLK),
        .RST(RST),
        .RX_IN(RX_IN_S),
        .prescale(prescale),
        .P_DATA(RX_OUT_P),
        .data_valid(RX_OUT_V),
        .PAR_TYP(PAR_TYP),
        .PAR_EN(PAR_EN),
        .stp_err(stp_err),
        .par_err(par_err),
        .strt_glitch(strt_glitch)
    );
    
endmodule
