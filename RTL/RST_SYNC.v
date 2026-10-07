module RST_SYNC #(
    parameter NUM_STAGES = 2
)
(
    input         RST,
    input         CLK,
    output reg    SYNC_RST
);
reg [NUM_STAGES-1:0] stage;
integer i;
always @(posedge CLK or negedge RST) 
begin
    if (!RST) 
    begin
        SYNC_RST <= 1'b0;
        for (i=0;i<NUM_STAGES;i=i+1) 
        begin
            stage[i] <= 1'b0;
        end
    end 
    else 
    begin

        stage[0] <= 1'b1;
        for (i=0;i<NUM_STAGES-1;i=i+1) 
        begin
            stage[i+1] <= stage[i];
        end
        SYNC_RST <= stage[NUM_STAGES-1];
    end
end

    
endmodule
