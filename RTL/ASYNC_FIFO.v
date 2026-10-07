module ASYNC_FIFO #(
    parameter DATA_WIDTH = 8,
              FIFO_WIDTH = 8
) 
(
    input                   W_CLK,
    input                   W_RST,
    input                   R_CLK,
    input                   R_RST,
    input [DATA_WIDTH-1:0]  WR_DATA,
    input                   W_INC,
    input                   R_INC,
    output [DATA_WIDTH-1:0] RD_DATA,
    output                  FULL,
    output                  EMPTY
);
wire [3:0] wptr,rptr;
wire [3:0] wptr_sync,rptr_sync;
wire [2:0] waddr,raddr;

FIFO_MEM_CNTRL #(
    .DATA_WIDTH(DATA_WIDTH),
    .FIFO_WIDTH(FIFO_WIDTH)
) U1
(
    .WR_DATA(WR_DATA),
    .W_CLK(W_CLK),
    .W_RST(W_RST),
    .R_CLK(R_CLK),
    .R_RST(R_RST),
    .wclken(W_INC && !FULL),
    .waddr(waddr),
    .raddr(raddr),
    .RD_DATA(RD_DATA)
);

FIFO_WR U2
(
    .W_INC(W_INC),
    .W_CLK(W_CLK),
    .W_RST(W_RST),
    .rptr_sync(rptr_sync),
    .wptr(wptr),
    .waddr(waddr),
    .FULL(FULL)
);

FIFO_RD U3
(
    .R_INC(R_INC),
    .R_CLK(R_CLK),
    .R_RST(R_RST),
    .wptr_sync(wptr_sync),
    .rptr(rptr),
    .raddr(raddr),
    .EMPTY(EMPTY)
);
DF_SYNC U4
(
    .W_CLK(W_CLK),
    .W_RST(W_RST),
    .R_CLK(R_CLK),
    .R_RST(R_RST),
    .wptr(wptr),
    .rptr(rptr),
    .wptr_sync(wptr_sync),
    .rptr_sync(rptr_sync)
);



    
endmodule
