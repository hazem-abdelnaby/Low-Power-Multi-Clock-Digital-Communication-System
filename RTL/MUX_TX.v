module MUX_TX(
input [1:0] mux_sel,
input ser_data,par_bit,
input CLK,RST,
output reg TX_OUT
);
reg TX_INNER;
always @(*)
begin
  TX_INNER=1'b1;
  case(mux_sel)
    2'b00:begin
      TX_INNER=1'b0;
    end
    2'b01:begin
      TX_INNER=1'b1;
    end
    2'b10:begin
      TX_INNER=ser_data;
    end
    2'b11:begin
      TX_INNER=par_bit;
    end
    endcase
end
always @(posedge CLK or negedge RST) begin
  if (!RST)
  TX_OUT<=1'b1;
  else
  TX_OUT<=TX_INNER;
  
end
endmodule