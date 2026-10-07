module Parity_Checker (
input par_chk_en,sampled_data,PAR_TYP,
input [0:7] P_DATA,
output reg par_err
);
reg par_bit;

always @(*)
begin
  if(par_chk_en)
    begin
    if(PAR_TYP)
        par_err=((~(^P_DATA))!=sampled_data);
    else
        par_err=((^P_DATA)!=sampled_data);
    end
  else
    begin
     par_err=1'b0; 
    end
end
endmodule
