module Stop_Checker_RX (
input stp_en,sampled_data,
output reg stp_err
);

always @(*)
begin
  stp_err=1'b0;
  if(stp_en)
    begin
      if(sampled_data==1'b1)
        begin
          stp_err=1'b0;
        end
      else
        begin
          stp_err=1'b1;
        end 
    end
  else
    begin
      stp_err=1'b0;
    end
  
end
endmodule
