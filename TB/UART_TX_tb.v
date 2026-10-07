  `timescale 1ns/1ps
module UART_TX_tb #(
parameter clock_period=5
);
reg Data_Valid_tb,PAR_TYP_tb,PAR_EN_tb;
reg [7:0] P_DATA_tb;
reg CLK_tb,RST_tb;
wire TX_OUT_tb,busy_tb;
integer i=0;
integer true=0;
integer j=0;
integer z=0;
reg [7:0] IN_1 [0:10];
reg [7:0] OUT_1 [0:10];
reg [7:0] IN_2 [0:10];
reg [7:0] OUT_2 [0:10];

initial
begin
  $dumpfile("UART_TX.vcd");
  $dumpvars;
  
  initializer();
  reset();
  
    $readmemb("DATA_IN.txt",IN_1);
    $readmemb("Expected_OUT.txt",OUT_1);
    for(j=0;j<6;j=j+1)
    begin
      P_DATA_tb=IN_1[j];
      Data_Valid_tb=1'b1;
      #clock_period
      Data_Valid_tb=1'b0;
      Testing_No_Parity(IN_1[j],OUT_1[j]);
      wait(!busy_tb);
      @(posedge CLK_tb);
    end
    $readmemb("DATA_IN_PAR.txt",IN_2);
    $readmemb("Expected_OUT_PAR.txt",OUT_2);
    for(z=0;z<6;z=z+1)
      begin
        PAR_EN_tb   = 1'b1;
        PAR_TYP_tb  = 1'b1;
        P_DATA_tb   = IN_2[z];
        Data_Valid_tb = 1'b1;

        #clock_period
        Data_Valid_tb = 1'b0;
    	   Testing_Parity(IN_2[z],OUT_2[z]);

        wait(!busy_tb);
        @(posedge CLK_tb);
      end
    #10
    $stop;
end

always #2.5 CLK_tb=~CLK_tb;

Top_TX DUT(
.Data_Valid (Data_Valid_tb),
.PAR_TYP (PAR_TYP_tb),
.PAR_EN (PAR_EN_tb),
.P_DATA (P_DATA_tb),
.CLK (CLK_tb),
.RST (RST_tb),
.TX_OUT (TX_OUT_tb),
.busy (busy_tb)
);


task initializer();
  begin
    Data_Valid_tb=1'b0;
    PAR_TYP_tb=1'b0;
    PAR_EN_tb=1'b0;
    P_DATA_tb=8'b0;
    CLK_tb=1'b0;
    RST_tb=1'b0;
    #clock_period;
  end
endtask

task reset();
  begin
    #clock_period
    RST_tb=1'b1;
    #clock_period;
  end
endtask
  
task Testing_No_Parity(
  input [7:0] DATA_IN,
  input [7:0] DATA_OUT
  );
  begin

    true = 1;
    @(negedge TX_OUT_tb);
    
    if (TX_OUT_tb==1'b0)
      begin
        $display ("start bit works correctly");
      end
    else
      begin
        $display ("start bit works INcorrectly XXXXXX");
        true = 0;
      end

    @(posedge CLK_tb);
    #1;

    for(i=0;i<8;i=i+1)
    begin
      if(TX_OUT_tb!=DATA_OUT[i])
        begin
          true=0;
          $display("bit mismatch in bit %d",i);
        end

      @(posedge CLK_tb);
      #1;
    end
    if(true)
    begin
      $display("TX Out DATA is correct");
      @(negedge CLK_tb);
      if(TX_OUT_tb == 1'b1)
        $display("stop bit works correctly");
      else
        $display("stop bit works INcorrectly XXXXXXXXX");
    end
    else
    begin
      $display("TX Out DATA is INcorrect XXXXXXXXX");
    end

  end
endtask
task Testing_Parity(
  input [7:0] DATA_IN_1,
  input [7:0] DATA_OUT_1
  );
  begin
    true = 1;
    PAR_TYP_tb = 1'b1;

    #clock_period;

  #clock_period;
    if (TX_OUT_tb==1'b0)
      begin
        $display ("start bit works correctly");
      end
    else
      begin
        $display ("start bit works INcorrectly XXXXXX");
        true = 0;
      end

    @(posedge CLK_tb);
    #1;

    for(i=0;i<8;i=i+1)
    begin
      if(TX_OUT_tb!=DATA_OUT_1[i])
        begin
          true=0;
          $display("bit mismatch in bit %d",i);
        end

      @(posedge CLK_tb);
      #1;
    end

    if(true==1)
      begin
        $display("TX Out DATA is correct");
        if (TX_OUT_tb==1'b1)
          begin
            $display("parity bit works correctly");
          end
        else
          begin
            $display("parity bit works INcorrectly XXXXXXXXX");
          end

        @(posedge CLK_tb);
        #1;

        if(TX_OUT_tb==1'b1)
          begin
            $display("stop bit works correctly");
          end
        else
          begin
            $display("stop bit works INcorrectly XXXXXXXXX");
          end
      end
    else
      begin
        $display("TX Out DATA is INcorrect XXXXXXXXX");
      end
  end
endtask
endmodule







