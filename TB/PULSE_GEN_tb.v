`timescale 1ns/1ps

module PULSE_GEN_tb ();

    reg CLK_tb;
    reg RST_tb;
    reg LVL_SIG_tb;
    wire PULSE_SIG_tb;
    parameter CLK_Period = 8680;

    always #(CLK_Period/2) CLK_tb= ~CLK_tb;
    initial 
    begin
        $dumpfile("PULSE_GEN.vcd");
        $dumpvars;
        initializer;

        #CLK_Period

        RST_tb=1'b1;

        #CLK_Period

        LVL_SIG_tb=1'b1;
        #(11*CLK_Period)
        LVL_SIG_tb=1'b0;

        #CLK_Period
        LVL_SIG_tb=1'b1;

        #(20*CLK_Period);
        $stop; 
    end
    PULSE_GEN DUT(
        .CLK (CLK_tb),
        .RST (RST_tb),
        .LVL_SIG (LVL_SIG_tb),
        .PULSE_SIG (PULSE_SIG_tb)
    );
    task 
        initializer();
    begin
      CLK_tb=1'b0;
      RST_tb=1'b0;
      LVL_SIG_tb=1'b0;
    end
    endtask


    
endmodule
