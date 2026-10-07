    module DF_SYNC (
        input  W_CLK,W_RST,
        input  R_RST,R_CLK,
        input  [3:0] wptr,rptr,
        output reg [3:0] wptr_sync,rptr_sync
    );
    reg  [3:0] wptr_sync1;
    reg  [3:0] rptr_sync1;

    always @(posedge R_CLK or negedge R_RST)
    begin
        if(!R_RST)
        begin
            wptr_sync1 <= 'b0;
            wptr_sync <= 'b0;
        end
        else
        begin
            wptr_sync1 <= wptr;
            wptr_sync <= wptr_sync1;
        end
    end
    always @(posedge W_CLK or negedge W_RST)
    begin
        if(!W_RST)
        begin
            rptr_sync1 <= 'b0;
            rptr_sync <= 'b0;
        end
        else
        begin
            rptr_sync1 <= rptr;
            rptr_sync <= rptr_sync1;
        end
    end
        
    endmodule
