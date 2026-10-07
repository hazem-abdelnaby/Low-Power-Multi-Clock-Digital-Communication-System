module FIFO_RD #(
    
) (
    input R_INC,
    input R_CLK,R_RST,
    input [3:0] wptr_sync,
    output reg [3:0] rptr,
    output wire [2:0] raddr,
    output EMPTY
);
reg [3:0] rptr_bi;


assign raddr = rptr_bi[2:0];
assign EMPTY=(rptr==wptr_sync)? 1'b1 : 1'b0;

always @(posedge R_CLK or negedge R_RST)
begin
    if(!R_RST)
    begin
        rptr_bi <= 'b0;
    end
    else
    begin
        if(R_INC && !EMPTY)
        begin
            rptr_bi <= rptr_bi + 1'b1;
        end
    end
end
always @(posedge R_CLK or negedge R_RST) 
begin
    if (!R_RST) begin
        rptr<='b0;
        
    end
    else
    begin
     case (rptr_bi)
            4'd0:rptr<='d0;
            4'd1:rptr<='d1;
            4'd2:rptr<='d3;
            4'd3:rptr<='d2;
            4'd4:rptr<='d6;
            4'd5:rptr<='d7;
            4'd6:rptr<='d5;
            4'd7:rptr<='d4;
            4'd8:rptr<='d12;
            4'd9:rptr<='d13;
            4'd10:rptr<='d15;
            4'd11:rptr<='d14;
            4'd12:rptr<='d10;
            4'd13:rptr<='d11;
            4'd14:rptr<='d9;
            4'd15:rptr<='d8;
            default:rptr<='d0;
    endcase
    end
end

    
endmodule
