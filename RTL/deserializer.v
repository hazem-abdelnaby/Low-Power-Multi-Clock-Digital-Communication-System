module desrializer(
input sampled_data,deser_en,edge_cnt_done,
input CLK,RST,
output reg [0:7] P_DATA
);
reg [0:7] DATA;
reg [0:3] Counter;
reg Counter_done;

always@(posedge CLK or negedge RST)
begin
  if(!RST)
    begin
      DATA<=8'b0;
      Counter<=4'b0;
      Counter_done<=1'b0;
    end
  else if(deser_en&&edge_cnt_done)
    begin
      DATA<={sampled_data, DATA[0:6]};
      if(Counter==4'd7)
        begin
          Counter_done<=1'b1;
          Counter<=4'b0;
        end
      else
      begin
        Counter_done<=1'b0;
        Counter<=Counter+1'b1;
      end
    end  
  else
    begin
      Counter_done<=1'b0;
    end
end


always @(posedge CLK or negedge RST)
begin
  if(!RST)
    begin
      P_DATA<=8'b0;
    end
  else
    begin
      if(Counter_done==1'b1)
        begin
          P_DATA<= DATA;
        end
    end
end
endmodule



