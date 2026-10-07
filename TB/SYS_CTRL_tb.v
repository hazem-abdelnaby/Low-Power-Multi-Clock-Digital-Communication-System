`timescale 1ns/1ps

module SYS_CTRL_tb#(
    parameter CLK_Preiod =20
) ();

    reg               CLK_tb;
    reg               RST_tb;
    reg  [7:0]        ALU_OUT_tb;
    reg               OUT_Valid_tb;
    reg               FULL_tb;
    reg  [7:0]        RdData_tb;
    reg               RdData_Valid_tb;
    reg  [7:0]        RX_P_DATA_tb;
    reg               RX_D_VLD_tb;
    wire [3:0]        ALU_FUN_tb;
    wire              EN_tb;
    wire              CLK_EN_tb;
    wire [3:0]        Address_tb;
    wire              WrEn_tb;
    wire              RdEn_tb;
    wire [7:0]        WrData_tb;
    wire [7:0]        TX_P_DATA_tb;
    wire              TX_D_VLD_tb;
    wire              clk_div_en_tb;
    wire [7:0]        WR_DATA_tb;
    wire              WR_INC_tb;   

initial begin
    $dumpfile("SYS_CTRL.vcd");
    $dumpvars;

    Initializer;

    #CLK_Preiod

    RST_tb=1'b1;

    #(3*CLK_Preiod)


    // testing command 1 write command IDLE->WAIT_WR_DATA->WAIT_WR_ADD->writing->IDLE
    //test one
    RX_P_DATA_tb=8'hAA;
    #CLK_Preiod
    RX_D_VLD_tb=1'b1;
    #(CLK_Preiod)
    RX_D_VLD_tb=1'b0;
    #(4*CLK_Preiod)
    RX_P_DATA_tb=8'hFF;
    #CLK_Preiod
    RX_D_VLD_tb=1'b1;
    #(CLK_Preiod)
    RX_D_VLD_tb=1'b0;
    #CLK_Preiod
    #(4*CLK_Preiod)
    RX_P_DATA_tb=8'd14;
    #CLK_Preiod
    RX_D_VLD_tb=1'b1;
    #(CLK_Preiod)
    RX_D_VLD_tb=1'b0;
    #CLK_Preiod
    RdData_Valid_tb=1'b1;
    #CLK_Preiod
    RdData_Valid_tb=1'b0;
    #(8*CLK_Preiod);
    //test two
    RX_P_DATA_tb=8'hAA;
    #CLK_Preiod
    RX_D_VLD_tb=1'b1;
    #(CLK_Preiod)
    RX_D_VLD_tb=1'b0;
    #(4*CLK_Preiod)
    RX_P_DATA_tb=8'h00;
    #CLK_Preiod
    RX_D_VLD_tb=1'b1;
    #(CLK_Preiod)
    RX_D_VLD_tb=1'b0;
    #CLK_Preiod
    #(4*CLK_Preiod)
    RX_P_DATA_tb=8'd15;
    #CLK_Preiod
    RX_D_VLD_tb=1'b1;
    #(CLK_Preiod)
    RX_D_VLD_tb=1'b0;
    #CLK_Preiod
    RdData_Valid_tb=1'b1;
    #CLK_Preiod
    RdData_Valid_tb=1'b0;
    #(8*CLK_Preiod);

    // testing command 2 IDLE->WAIT_RD_ADD->Reading->RESBOND_RD->IDLE
    //test one
    RX_P_DATA_tb=8'hBB;
    #(2*CLK_Preiod)
    RX_D_VLD_tb=1'b1;
    #(CLK_Preiod)
    RX_D_VLD_tb=1'b0;
    #(3*CLK_Preiod)
    RX_P_DATA_tb=8'd15;
    #(2*CLK_Preiod)
    RX_D_VLD_tb=1'b1;
    #(CLK_Preiod)
    RX_D_VLD_tb=1'b0;
    #(3*CLK_Preiod)
    RdData_Valid_tb=1'b1;
    #(CLK_Preiod)
    RdData_Valid_tb=1'b0;
    #(8*CLK_Preiod);
    //test ywo
    RX_P_DATA_tb=8'hBB;
    #(2*CLK_Preiod)
    RX_D_VLD_tb=1'b1;
    #(CLK_Preiod)
    RX_D_VLD_tb=1'b0;
    #(3*CLK_Preiod)
    RX_P_DATA_tb=8'd12;
    #(2*CLK_Preiod)
    RX_D_VLD_tb=1'b1;
    #(CLK_Preiod)
    RX_D_VLD_tb=1'b0;
    #(3*CLK_Preiod)
    RdData_Valid_tb=1'b1;
    #(CLK_Preiod)
    RdData_Valid_tb=1'b0;
    #(8*CLK_Preiod);

    //test command 3 IDLE -> WAIT_A-> WAIT_B-> Processing-> Responding
    // test one
    RX_P_DATA_tb=8'hCC;
    #(2*CLK_Preiod)
    RX_D_VLD_tb=1'b1;
    #(CLK_Preiod)
    RX_D_VLD_tb=1'b0;
    #(6*CLK_Preiod)
    RX_P_DATA_tb=8'd17;
    #(2*CLK_Preiod)
    RX_D_VLD_tb=1'b1;
    #(CLK_Preiod)
    RX_D_VLD_tb=1'b0;
    #(6*CLK_Preiod)
    RX_P_DATA_tb=8'd50;
    #(2*CLK_Preiod)
    RX_D_VLD_tb=1'b1;
    #(CLK_Preiod)
    RX_D_VLD_tb=1'b0;
    #(6*CLK_Preiod)
    RX_P_DATA_tb=8'b0000;
    #(2*CLK_Preiod)
    RX_D_VLD_tb=1'b1;
    #(CLK_Preiod)
    RX_D_VLD_tb=1'b0;
    #(6*CLK_Preiod)
    OUT_Valid_tb=1'b1;
    #CLK_Preiod;
    OUT_Valid_tb=1'b0;
    #(6*CLK_Preiod);

    // test two
    RX_P_DATA_tb=8'hCC;
    #(2*CLK_Preiod)
    RX_D_VLD_tb=1'b1;
    #(CLK_Preiod)
    RX_D_VLD_tb=1'b0;
    #(6*CLK_Preiod)
    RX_P_DATA_tb=8'd60;
    #(2*CLK_Preiod)
    RX_D_VLD_tb=1'b1;
    #(CLK_Preiod)
    RX_D_VLD_tb=1'b0;
    #(6*CLK_Preiod)
    RX_P_DATA_tb=8'd100;
    #(2*CLK_Preiod)
    RX_D_VLD_tb=1'b1;
    #(CLK_Preiod)
    RX_D_VLD_tb=1'b0;
    #(6*CLK_Preiod)
    RX_P_DATA_tb=8'b0000;
    #(2*CLK_Preiod)
    RX_D_VLD_tb=1'b1;
    #(CLK_Preiod)
    RX_D_VLD_tb=1'b0;
    #(6*CLK_Preiod)
    OUT_Valid_tb=1'b1;
    #CLK_Preiod;
    OUT_Valid_tb=1'b0;
    #(6*CLK_Preiod);


    // test command 4 IDLE -> wait_fun -> processing -> responding

    RX_P_DATA_tb=8'hDD;
    #(2*CLK_Preiod)
    RX_D_VLD_tb=1'b1;
    #(CLK_Preiod)
    RX_D_VLD_tb=1'b0;
    #(6*CLK_Preiod)
    RX_P_DATA_tb=8'b1100;
    #(2*CLK_Preiod)
    RX_D_VLD_tb=1'b1;
    #(CLK_Preiod)
    RX_D_VLD_tb=1'b0;
    #(6*CLK_Preiod)
    RX_D_VLD_tb=1'b1;
    #(CLK_Preiod)
    RX_D_VLD_tb=1'b0;
    #(6*CLK_Preiod)
    RX_P_DATA_tb=8'b0000;
    #(2*CLK_Preiod)
    RX_D_VLD_tb=1'b1;
    #(CLK_Preiod)
    RX_D_VLD_tb=1'b0;
    #(6*CLK_Preiod)
    OUT_Valid_tb=1'b1;
    #CLK_Preiod;
    OUT_Valid_tb=1'b0;
    #(6*CLK_Preiod)


    #(80*CLK_Preiod);
    $stop;
end
always #(CLK_Preiod/2) CLK_tb=~CLK_tb;

SYS_CTRL DUT(
    .CLK (CLK_tb),                
    .RST (RST_tb),
    .ALU_OUT (ALU_OUT_tb),
    .OUT_Valid  (OUT_Valid_tb),
    .RdData (RdData_tb),
    .RdData_Valid (RdData_Valid_tb),
    .RX_P_DATA  (RX_P_DATA_tb),
    .RX_D_VLD (RX_D_VLD_tb),
    .ALU_FUN  (ALU_FUN_tb),
    .EN (EN_tb),
    .CLK_EN (CLK_EN_tb),
    .Address (Address_tb),
    .WrEn (WrEn_tb),
    .RdEn (RdEn_tb),
    .WrData  (WrData_tb),
    .TX_P_DATA  (TX_P_DATA_tb),
    .TX_D_VLD (TX_D_VLD_tb),
    .clk_div_en (clk_div_en_tb),
    .WR_INC (WR_INC_tb),
    .WR_DATA (WR_DATA_tb),
    .FULL (FULL_tb)
);

task Initializer();
begin
CLK_tb =1'b0;
RST_tb =1'b0;
FULL_tb=1'b0;
ALU_OUT_tb =4'b0000;
OUT_Valid_tb=1'b0;
RdData_tb=8'b0;
RdData_Valid_tb=1'b0;
RX_P_DATA_tb=8'b0;
RX_D_VLD_tb=1'b0;
end
endtask

    
endmodule