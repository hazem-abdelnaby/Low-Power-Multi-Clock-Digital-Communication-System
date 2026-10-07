module FIFO_WR 
(
    input W_INC,
    input W_CLK,W_RST,
    input [3:0] rptr_sync,
    output reg [3:0] wptr,
    output wire [2:0] waddr,
    output FULL
);
reg [3:0] wptr_bi;

assign FULL=((wptr[3:2] == ~(rptr_sync[3:2])) && (wptr[1:0]==rptr_sync[1:0]))? 1'b1 : 1'b0;
assign waddr = wptr_bi[2:0];

always @(posedge W_CLK or negedge W_RST)
begin
    if(!W_RST)
    begin
        wptr_bi <= 'b0;
    end
    else
    begin
        if(W_INC && !FULL)
        begin
            wptr_bi <= wptr_bi + 1'b1;
        end
    end
end
always @(posedge W_CLK or negedge W_RST)
begin
    if (!W_RST) begin
        wptr<='d0;
    end
    else
    begin
    case (wptr_bi)
            4'd0:wptr<='d0;
            4'd1:wptr<='d1;
            4'd2:wptr<='d3;
            4'd3:wptr<='d2;
            4'd4:wptr<='d6;
            4'd5:wptr<='d7;
            4'd6:wptr<='d5;
            4'd7:wptr<='d4;
            4'd8:wptr<='d12;
            4'd9:wptr<='d13;
            4'd10:wptr<='d15;
            4'd11:wptr<='d14;
            4'd12:wptr<='d10;
            4'd13:wptr<='d11;
            4'd14:wptr<='d9;
            4'd15:wptr<='d8;
            default:wptr<='d0;
    endcase
    end
end

endmodule

