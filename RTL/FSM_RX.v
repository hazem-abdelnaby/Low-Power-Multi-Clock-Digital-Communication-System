module FSM_RX(
input PAR_EN,RX_IN,strt_glitch,stp_err,par_err,edge_cnt_done,
input CLK,RST,
input [0:3] bit_cnt,
output reg enable,stp_en,deser_en,strt_chk_en,par_chk_en,data_valid,data_sample_en
);
reg [0:2] cur_state;
reg [0:2] nxt_state;
localparam IDLE=3'b000,
           start=3'b001,
           data=3'b011,
           parity=3'b010,
           stop=3'b110,
           valid=3'b111;

always@(*)
begin
  enable=1'b0;
  stp_en=1'b0;
  deser_en=1'b0;
  strt_chk_en=1'b0;
  par_chk_en=1'b0;
  data_valid=1'b0;
  nxt_state=3'b0;
  data_sample_en=1'b0;
  case(cur_state)
    IDLE:
    begin
      stp_en=1'b0;
      deser_en=1'b0;
      par_chk_en=1'b0;
      data_valid=1'b0;
      enable=1'b0;
      strt_chk_en=1'b0;
      if(!RX_IN)
        begin
          nxt_state=start;
        end
      else
        begin
          nxt_state=IDLE;
        end
    end
    start:
    begin
      stp_en=1'b0;
      deser_en=1'b0;
      par_chk_en=1'b0;
      data_valid=1'b0;
      enable=1'b1;
      strt_chk_en=1'b1;
      data_sample_en=1'b1;
      if(edge_cnt_done)
      begin
        if(strt_glitch)
            nxt_state = IDLE;
        else
          begin
            nxt_state = data;
          end
      end
      else
        begin
          nxt_state = start;
        end
    end
    data:
    begin
      stp_en=1'b0;
      deser_en=1'b1;
      par_chk_en=1'b0;
      data_valid=1'b0;
      enable=1'b1;
      strt_chk_en=1'b0;
      data_sample_en=1'b1;
      if((bit_cnt==4'd9)&&PAR_EN)
        begin
         nxt_state=parity; 
        end
      else if((bit_cnt==4'd9)&&!PAR_EN)
        begin
          nxt_state=stop;
        end
      else
        begin
          nxt_state=data;
        end
    end
    parity:
    begin
    stp_en=1'b0;
    deser_en=1'b0;
    data_valid=1'b0;
    enable=1'b1;
    par_chk_en=1'b1;
    data_sample_en=1'b1;
    strt_chk_en=1'b0;
  if(edge_cnt_done)
  begin
    if(par_err)
      nxt_state=IDLE;
    else
      nxt_state=stop;
  end
    else
    begin
    nxt_state=parity;
    end
  end
    stop:
    begin
      stp_en=1'b1;
      deser_en=1'b0;
      par_chk_en=1'b0;
      data_valid=1'b0;
      enable=1'b1;
      strt_chk_en=1'b0;
      data_sample_en=1'b1;
      if(edge_cnt_done)
    begin
    if(stp_err)
      begin
        nxt_state=IDLE;
      end
    else if((bit_cnt==4'd10)&&!PAR_EN)
      begin 
        nxt_state= valid;
      end
    else if((bit_cnt==4'd11)&&PAR_EN)
      begin
        nxt_state=valid;
      end
    else
      begin
        nxt_state = stop;
      end
    end
    else
    begin
      nxt_state = stop;
    end
    end
    valid:
    begin
      stp_en=1'b0;
      deser_en=1'b0;
      par_chk_en=1'b0;
      data_valid=1'b1;
      enable=1'b0;
      strt_chk_en=1'b0; 
      nxt_state=IDLE; 
      data_sample_en=1'b0;
    end
    default:
    begin
      enable=1'b0;
      stp_en=1'b0;
      deser_en=1'b0;
      strt_chk_en=1'b0;
      par_chk_en=1'b0;
      data_valid=1'b0;
      nxt_state=3'b0;
      data_sample_en=1'b0;
    end
  endcase
end

always@(posedge CLK or negedge RST)
begin
  if(!RST)
    begin
      cur_state<=IDLE;
    end
  else
    begin
      cur_state<=nxt_state;
    end
end
endmodule