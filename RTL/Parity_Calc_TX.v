module Parity_Calc_TX(
input [7:0] P_DATA,
input Data_Valid,PAR_TYP,
input CLK,RST,
output reg par_bit
);
reg [7:0] P_DATA_Hold;
wire par_bit_inner;

assign par_bit_inner=(PAR_TYP)?~(^P_DATA_Hold):^P_DATA_Hold;

always @ (posedge CLK or negedge RST)
begin
  if(!RST)
    begin
      par_bit<=1'b0;
      P_DATA_Hold<=8'b0;
      
    end
  else
    begin
      
      if(Data_Valid)
      begin
        P_DATA_Hold<=P_DATA;
      end    
      par_bit<=par_bit_inner;
    end
      
end
endmodule