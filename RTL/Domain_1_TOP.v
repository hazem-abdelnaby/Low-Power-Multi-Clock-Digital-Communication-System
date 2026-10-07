module Domain_1_TOP #(
    parameter DATA_WIDTH = 8,
              FUN_WIDTH  = 4,
              ADD_WIDTH  = 4,
              DEPTH      = 16
) (
    input  [7:0]               RX_P_DATA,
    input                      RX_D_VLD,
    input                      REF_CLK,
    input                      RST,
    input                      FULL,
    output [DATA_WIDTH-1:0]    WR_DATA,
    output                     WR_INC,
    output [DATA_WIDTH-1:0]    UART_CONF,
    output [DATA_WIDTH-1:0]    REG3
);
    wire [ADD_WIDTH-1:0]   Address;
    wire                    WrEn;
    wire                    RdEn;
    wire [DATA_WIDTH-1:0]  WrData;
    wire [DATA_WIDTH-1:0]  RdData;
    wire                    RdData_Valid;
    wire [DATA_WIDTH-1:0]  REG0;
    wire [DATA_WIDTH-1:0]  REG1;
    wire [DATA_WIDTH-1:0]  REG2;
    wire [FUN_WIDTH-1:0]   ALU_FUN;
    wire                    EN;
    wire [(DATA_WIDTH*2)-1:0]  ALU_OUT;
    wire                    OUT_Valid;
    wire                    CLK_EN;
    wire                    GATED_CLK;
    wire [DATA_WIDTH-1:0]  TX_P_DATA;


    Clock_Gating Clock_Gating_U0 (
        .CLK_EN    (CLK_EN),
        .CLK       (REF_CLK),
        .GATED_CLK (GATED_CLK)
    );

    ALU ALU_U1 (
        .CLK       (GATED_CLK),
        .RST       (RST),
        .A         (REG0),
        .B         (REG1),
        .ALU_FUN   (ALU_FUN),
        .Enable    (EN),
        .ALU_OUT   (ALU_OUT),
        .OUT_VALID (OUT_Valid)
    );

    RegFile #(
        .ADD_WIDTH  (ADD_WIDTH),
        .DATA_WIDTH (DATA_WIDTH),
        .DEPTH      (DEPTH)
    ) RegFile_U2 (
        .CLK          (REF_CLK),
        .RST          (RST),
        .Address      (Address),
        .WrEn         (WrEn),
        .RdEn         (RdEn),
        .WrData       (WrData),
        .RdData       (RdData),
        .RdData_Valid (RdData_Valid),
        .REG0         (REG0),
        .REG1         (REG1),
        .REG2         (REG2),
        .REG3         (REG3)
    );

    SYS_CTRL SYS_CTRL_U3 (
        .CLK          (REF_CLK),
        .RST          (RST),
        .ALU_OUT      (ALU_OUT),
        .OUT_Valid    (OUT_Valid),
        .RdData       (RdData),
        .RdData_Valid (RdData_Valid),
        .RX_P_DATA    (RX_P_DATA),
        .RX_D_VLD     (RX_D_VLD),
        .FULL         (FULL),
        .ALU_FUN      (ALU_FUN),
        .EN           (EN),
        .CLK_EN       (CLK_EN),
        .Address      (Address),
        .WrEn         (WrEn),
        .WR_DATA      (WR_DATA),
        .RdEn         (RdEn),
        .WrData       (WrData),
        .WR_INC       (WR_INC)
    );


    assign UART_CONF = REG2;

endmodule