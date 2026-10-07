module edge_bit_counter 
(
input enable,PAR_EN,
input CLK,RST,
input [0:5] prescale,
output reg edge_cnt_done,
output reg [0:4] edge_cnt,
output reg [0:3] bit_cnt
);

always @(posedge CLK or negedge RST)
begin
  if(!RST)
    begin
      bit_cnt<=4'b0;
    end
  else
    begin
      if(!enable)
        begin
          bit_cnt <= 4'b0;
        end
        else if(edge_cnt_done)
          begin
            if((PAR_EN && bit_cnt==4'd11) || (!PAR_EN && bit_cnt==4'd10))
              begin
                bit_cnt<=4'b0;
              end
            else
              begin
                bit_cnt<=bit_cnt+1'b1;
              end
          end
    end
end

always@(posedge CLK or negedge RST)
begin
  if(!RST)
    begin
      edge_cnt<=5'b0;
      edge_cnt_done<=1'b0;
    end
  else
    begin
      if(enable)
        begin
        if(edge_cnt==prescale-1'b1)
          begin
            edge_cnt_done<=1'b1;
            edge_cnt<=5'b0;
          end
        else
          begin
            edge_cnt_done<=1'b0;
            edge_cnt<=edge_cnt+1'b1;
          end
        end
      else
        begin
          edge_cnt<=5'b0;
          edge_cnt_done<=1'b0;
        end
    end  
end

endmodule