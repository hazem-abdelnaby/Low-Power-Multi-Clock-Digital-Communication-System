`timescale 1ns/1ps
module ClkDiv_tb#(
parameter Div_width=8
);
  reg i_ref_clk_tb;
  reg i_rst_n_tb;
  reg i_clk_en_tb;
  reg [Div_width-1:0] i_div_ratio_tb;
  wire o_div_clk_tb;
initial
begin
  $dumpfile ("ClkDiv.vcd");
  $dumpvars;
  initailizer();
  
  #10
  i_rst_n_tb=1'b1;
  i_clk_en_tb=1'b1;
  #10
  
  $display("Divsion ratio= %d",i_div_ratio_tb);
  if (o_div_clk_tb==i_ref_clk_tb)
    $display ("the test of Divsion ratio= %d  sucessfull",i_div_ratio_tb);
  else
    $display ("the test of Divsion ratio= %d  failed XXXXXXXXXXXXX",i_div_ratio_tb);
    
  #30
  i_div_ratio_tb='d4;
  
  #120
  
  i_div_ratio_tb='d7;
  
  #210
  i_div_ratio_tb='d6;
  #180
  i_div_ratio_tb='d9;
  #270
  i_div_ratio_tb='d10;
  #300
  i_div_ratio_tb='d21;
  #630
  #100
  $stop; 
end 

always #5 i_ref_clk_tb=~i_ref_clk_tb;

ClkDiv DUT 
(
.i_ref_clk (i_ref_clk_tb),
.i_rst_n (i_rst_n_tb),
.i_clk_en (i_clk_en_tb),
.i_div_ratio (i_div_ratio_tb),
.o_div_clk (o_div_clk_tb)
);

task initailizer();
  begin
    i_ref_clk_tb=1'b0;
    i_rst_n_tb=1'b0;
    i_clk_en_tb=1'b0;
    i_div_ratio_tb='b0;
  end
endtask


endmodule




