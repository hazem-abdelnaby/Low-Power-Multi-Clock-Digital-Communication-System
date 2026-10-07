module serializer_TX (
input [7:0] P_DATA,
input ser_en,
input CLK,RST,
output reg ser_data,
output reg ser_done
);
reg [7:0] P_DATA_Hold;
reg Counter_Done;
reg [3:0] Counter;

always @ (posedge CLK or negedge RST)
begin
  if(!RST)
    begin
      Counter<=4'b0;
      Counter_Done<=1'b0;
      ser_done<=1'b0;
    end
  else
    begin
      if(ser_en)
        begin
          Counter<=Counter+1'b1;
          if (Counter==4'b0111)
          begin
            Counter_Done<=1'b1;
            ser_done<=1'b1;
          end
        
        end
      else
          begin
            Counter<=4'b0;
            Counter_Done<=1'b0;
            ser_done<=1'b0;
          end
    end
  
end
always @ (posedge CLK or negedge RST)
begin
  if(!RST)
    begin
      ser_data<=1'b0;
      P_DATA_Hold<=8'b0;
    end
  else
    begin
      if(ser_en)
        begin
          if(Counter==0)
            begin
              P_DATA_Hold<=P_DATA>>1;
              ser_data<=P_DATA[0];
            end
          else if(!Counter_Done)
            begin
              P_DATA_Hold<=P_DATA_Hold>>1;
              ser_data<=P_DATA_Hold[0];
            end
        end
    end
end

endmodule
