module prescale_MUX (
    input [0:5] prescale,
    output reg [7:0] div_ratio_RX
);
always @(*) 
begin
case (prescale)
    6'd32:div_ratio_RX=8'd1;
    6'd16:div_ratio_RX=8'd2;
    6'd8:div_ratio_RX=8'd4;
    default: div_ratio_RX=8'd1;
endcase
end 
    
endmodule
