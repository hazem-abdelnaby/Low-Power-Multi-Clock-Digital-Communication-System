`timescale 1ns/1ps
module RST_SYNC_tb #(
    parameter NUM_STAGES = 2
);
reg RST_tb;
reg CLK_tb;
wire SYNC_RST_tb;

RST_SYNC #(
    .NUM_STAGES(NUM_STAGES)
) DUT 
(
    .RST(RST_tb),
    .CLK(CLK_tb),
    .SYNC_RST(SYNC_RST_tb)
);
always #5 CLK_tb = ~CLK_tb;
initial
begin
    CLK_tb =1'b0;
    RST_tb = 1'b0;
    #10;
    RST_tb = 1'b1;
    #(10*NUM_STAGES);
    if (SYNC_RST_tb !== 1'b1)
    begin
        $display("Test failed: SYNC_RST_tb is not 1 after reset");
    end
    else
    begin
        $display("Test passed: SYNC_RST_tb is 1 after reset");
    end
    
    #70
    $stop;

end

    
endmodule
