module ClkDiv #(
parameter Div_width=8
)
(
input i_ref_clk,i_rst_n,i_clk_en,
input [Div_width-1:0] i_div_ratio,
output wire o_div_clk
);
reg div_clk;
reg [Div_width-1:0] counter;
wire CLK_DIV_EN;
wire odd;
wire [Div_width-1:0] half_cycle;
reg duty;




assign odd=i_div_ratio[0];

assign half_cycle=(odd)?(i_div_ratio-1'b1)>>1:i_div_ratio>>1;

assign CLK_DIV_EN = i_clk_en && (i_div_ratio!='b0) && (i_div_ratio!='b1);

assign o_div_clk = (CLK_DIV_EN)? div_clk:i_ref_clk;

always @(posedge i_ref_clk or negedge i_rst_n)
begin
  if(!i_rst_n)
    begin
      div_clk<=1'b0;
      counter<='b0;
      duty<=1'b0;
    end
  else
    begin
      if (CLK_DIV_EN)
        begin
        if(!odd && (half_cycle-1'b1==counter))
          begin
            div_clk<=~div_clk;
            counter<='b0;
          end
        else if (odd && counter==half_cycle-1'b1 && !duty)
          begin
            div_clk<=~div_clk;
            counter<='b0;
            duty<=1'b1;
          end
        else if (odd && duty && counter==half_cycle)
          begin
            div_clk<=~div_clk;
            counter<='b0;
            duty<=1'b0;
          end
        else 
          begin
            counter<=counter+1'b1;
          end 
      end 
    end
end

endmodule