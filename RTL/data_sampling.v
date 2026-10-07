module data_sampling
(
input [0:4] edge_cnt,
input data_sample_en,RX_IN,
input CLK,RST,
input [0:5] prescale,
output reg sampled_data
);
reg sample_1;
reg sample_2;
reg sample_3;
localparam sampling_1=6'd8;
localparam sampling_2=6'd16;
localparam sampling_3=6'd32;

always@(posedge CLK or negedge RST)
begin
  if(!RST)
    begin
      sample_1<=1'b0;
      sample_2<=1'b0;
      sample_3<=1'b0;
      sampled_data<=1'b0;
    end
  else
    begin
      if(data_sample_en)
      begin
      case(prescale)
        sampling_1:
        begin
          case(edge_cnt)
            5'd3:
            begin
              sample_1<=RX_IN; 
            end
            5'd4:
            begin
              sample_2<=RX_IN; 
            end
            5'd5:
            begin
              sample_3<=RX_IN; 
            end
            5'd6:
            begin
              sampled_data<=(sample_1&sample_2)|(sample_2&sample_3)|(sample_1&sample_3);
            end        
          endcase   
        end
        sampling_2:
        begin
            case(edge_cnt)
            5'd7:
            begin
              sample_1<=RX_IN; 
            end
            5'd8:
            begin
              sample_2<=RX_IN; 
            end
            5'd9:
            begin
              sample_3<=RX_IN;
            end
            5'd10:
            begin
              sampled_data<=(sample_1&sample_2)|(sample_2&sample_3)|(sample_1&sample_3);
            end     
          endcase
        end
        sampling_3:
        begin
            case(edge_cnt)
            5'd15:
            begin
              sample_1<=RX_IN; 
            end
            5'd16:
            begin
              sample_2<=RX_IN; 
            end
            5'd17:
            begin
              sample_3<=RX_IN; 
            end
            5'd18:
            begin
              sampled_data<=(sample_1&sample_2)|(sample_2&sample_3)|(sample_1&sample_3);
            end
          endcase
        end
        endcase
    end
  end
end
endmodule