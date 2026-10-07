module Start_Checker (
input strt_chk_en,sampled_data,
output reg strt_glitch
);
always @ (*)
begin 
  strt_glitch=1'b0;
  if(strt_chk_en)
    begin
    if(sampled_data==1'b0)
      begin
        strt_glitch=1'b0;
      end
  else 
      begin
        strt_glitch=1'b1; 
      end
    end
  else 
    begin
     strt_glitch=1'b0; 
    end
  
end
endmodule
