module FSM_TX(
input Data_Valid,ser_done,PAR_EN,
input CLK,RST,
output reg busy,ser_en,
output reg [1:0] mux_sel
);
reg [2:0] cur_state;
reg [2:0] next_state;
localparam idle=3'b000,
           start=3'b001,
           serial=3'b011,
           stop=3'b111,
           parity=3'b110;

always @ (*)
begin
  busy=1'b0;
  ser_en=1'b0;
  mux_sel=2'b01;
  next_state=idle;
  case (cur_state)
    
    idle:
    begin
      busy=1'b0;
      ser_en=1'b0;
      mux_sel=2'b01;
      if(Data_Valid)
        begin
          next_state=start;
        end
      else
        begin
          next_state=idle;
        end
    end
    start:
    begin
      busy=1'b1;
      ser_en=1'b1;
      mux_sel=2'b00;
      next_state=serial;
    end
    serial:
    begin
      busy=1'b1;
      ser_en=1'b1;
      mux_sel=2'b10;
      casex({ser_done,PAR_EN})
        2'b0x:
        begin
          next_state=serial;
        end
        2'b10:
        begin
          next_state=stop;
        end
        2'b11:
        begin
          next_state=parity;
        end
      endcase
    end
    stop:
    begin
      busy=1'b1;
      ser_en=1'b0;
      mux_sel=2'b01;
      next_state=idle;
    end
    parity:
    begin
      busy=1'b1;
      ser_en=1'b0;
      mux_sel=2'b11;
      next_state=stop;
    end
    default:
    begin
      busy=1'b0;
      ser_en=1'b0;
      mux_sel=2'b01;
      next_state=idle;
    end
  endcase    
end


always @ (posedge CLK or negedge RST)
begin
  if(!RST)
    begin
      cur_state<=idle;
    end
  else
    begin
      cur_state<=next_state;
    end
  
  
end
endmodule
