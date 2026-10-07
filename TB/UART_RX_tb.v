`timescale 1ns/1ps

module UART_RX_tb;

reg RX_IN_tb;
reg PAR_EN_tb;
reg PAR_TYP_tb;
reg CLK_tb;
reg RST_tb;
reg [0:5] prescale_tb;

wire stp_err_tb;
wire par_err_tb;
wire strt_glitch_tb;
wire data_valid_tb;
wire [0:7] P_DATA_tb;


reg [0:7] IN_1 [7:0];
reg [0:7] OUT_1 [7:0];

reg [0:7] IN_2 [7:0];
reg [0:7] OUT_2 [7:0];

integer i=0;
integer z=0;
integer j=0;

localparam scale_1=8,
           scale_2=16,
           scale_3=32;
localparam BIT_PERIOD = 8680;

TOP_RX DUT (
    .RX_IN(RX_IN_tb),
    .PAR_EN(PAR_EN_tb),
    .PAR_TYP(PAR_TYP_tb),
    .CLK(CLK_tb),
    .RST(RST_tb),
    .prescale(prescale_tb),
    .stp_err(stp_err_tb),
    .par_err(par_err_tb),
    .strt_glitch(strt_glitch_tb),
    .data_valid(data_valid_tb),
    .P_DATA(P_DATA_tb)
);

parameter clock_period = 542;

initial
begin
  $dumpfile("UART_RX.vcd");
  $dumpvars;
  initializer;
  
  #clock_period
  
  RST_tb=1'b1;
  
  #clock_period
    $readmemb("IN_1.txt",IN_1);
    $readmemb("OUT_1.txt",OUT_1);
for(z=0;z<8;z=z+1)
  begin
    testing_16_no_PAR(IN_1[z],OUT_1[z]);
    #(BIT_PERIOD);
  end
    $readmemb("IN_2.txt",IN_2);
    $readmemb("OUT_2.txt",OUT_2);
 for(j=0;j<8;j=j+1)
  begin
    testing_16_with_PAR(IN_2[j],OUT_2[j]);
    #(BIT_PERIOD);
  end
  #(3*BIT_PERIOD);
  $stop; 
end


always #(clock_period/2) CLK_tb=~CLK_tb;

task initializer();
  begin
    RX_IN_tb=1'b1;
    PAR_EN_tb=1'b0;
    PAR_TYP_tb=1'b0;
    CLK_tb=1'b0;
    RST_tb=1'b0;
    prescale_tb=scale_2;
  end
endtask

task testing_16_no_PAR (
input [0:7] DATA_IN_1,
input [0:7] DATA_OUT_1 
);
begin
    #BIT_PERIOD
    RX_IN_tb = 1'b0;

    if(!strt_glitch_tb)
        $display("START BIT PASSED");
    else
        $display("START BIT FAILED");
   for(i=0;i<8;i=i+1)
    begin
      #BIT_PERIOD
      RX_IN_tb=DATA_IN_1[i];
    end
    #BIT_PERIOD
    RX_IN_tb=1'b1;
    if(!stp_err_tb)
        $display("STOP BIT PASSED");
    else
    $display("STOP BIT FAILED");
    
    
    
    $display("Waiting for data_valid...");
    repeat(50) @(posedge CLK_tb);
    $display("After waiting:");
    $display("P_DATA_tb = %b", P_DATA_tb);
    $display("Expected  = %b", DATA_OUT_1);
    if(P_DATA_tb==DATA_OUT_1)
      begin
        $display("the byte is trasmitted correct");
      end
    else
      begin
        $display("the byte is trasmitted incorrect XXXXXXXXXXXXXXXXXXXXX");
      end
end
endtask
task testing_16_with_PAR (
input [0:7] DATA_IN_2,
input [0:7] DATA_OUT_2 
);
begin
    #BIT_PERIOD
    PAR_EN_tb=1'b1;
    PAR_TYP_tb=1'b0;
    RX_IN_tb = 1'b0;

    if(!strt_glitch_tb)
        $display("START BIT PASSED");
    else
        $display("START BIT FAILED");
   for(i=0;i<8;i=i+1)
    begin
      #BIT_PERIOD
      RX_IN_tb=DATA_IN_2[i];
    end
    
    #BIT_PERIOD
    RX_IN_tb = ^DATA_IN_2;
    if (!par_err_tb)
      $display("PARITY BIT PASSED");
     else
    $display("PARITY BIT FAILED"); 
    #BIT_PERIOD
    RX_IN_tb=1'b1;
    if(!stp_err_tb)
        $display("STOP BIT PASSED");
    else
    $display("STOP BIT FAILED");
    $display("Waiting for data_valid...");
    repeat(50) @(posedge CLK_tb);
    $display("After waiting:");
    $display("P_DATA_tb = %b", P_DATA_tb);
    $display("Expected  = %b", DATA_OUT_2);
    if(P_DATA_tb==DATA_OUT_2)
      begin
        $display("the byte is trasmitted correct");
      end
    else
      begin
        $display("the byte is trasmitted incorrect XXXXXXXXXXXXXXX");
      end
end
endtask
endmodule