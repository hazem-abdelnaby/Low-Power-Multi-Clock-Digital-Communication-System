`timescale 1ns/1ps

module DATA_SYNC_tb;

parameter BUS_WIDTH=8;
parameter NUM_STAGES=2;

reg [BUS_WIDTH-1:0] unsync_bus;
reg bus_enable;
reg CLK,RST;
wire [BUS_WIDTH-1:0] sync_bus;
wire enable_pulse;

DATA_SYNC #(BUS_WIDTH,NUM_STAGES) DUT
(
.unsync_bus(unsync_bus),
.bus_enable(bus_enable),
.CLK(CLK),
.RST(RST),
.sync_bus(sync_bus),
.enable_pulse(enable_pulse)
);

initial CLK=0;
always #5 CLK=~CLK;

initial
begin
RST=0;
bus_enable=0;
unsync_bus=0;
repeat(2) @(posedge CLK);
RST=1;

// test 1
unsync_bus=8'hA5;
bus_enable=1;
@(posedge CLK);
bus_enable=0;
wait(enable_pulse);
if(sync_bus==8'hA5)
	$display("TEST1 PASS sync_bus=%h",sync_bus);
else
	$display("TEST1 FAIL sync_bus=%h expected=A5",sync_bus);
@(posedge CLK);

// test 2
unsync_bus=8'h3C;
bus_enable=1;
@(posedge CLK);
bus_enable=0;
wait(enable_pulse);
if(sync_bus==8'h3C)
	$display("TEST2 PASS sync_bus=%h",sync_bus);
else
	$display("TEST2 FAIL sync_bus=%h expected=3C",sync_bus);
@(posedge CLK);

// test 3
unsync_bus=8'hAA;
bus_enable=1;
@(posedge CLK);
bus_enable=0;
wait(enable_pulse);
if(sync_bus==8'hAA)
	$display("TEST3 PASS sync_bus=%h",sync_bus);
else
	$display("TEST3 FAIL sync_bus=%h expected=3C",sync_bus);
@(posedge CLK);

// test 4
unsync_bus=8'h44;
bus_enable=1;
@(posedge CLK);
bus_enable=0;
wait(enable_pulse);
if(sync_bus==8'h44)
	$display("TEST4 PASS sync_bus=%h",sync_bus);
else
	$display("TEST4 FAIL sync_bus=%h expected=3C",sync_bus);
@(posedge CLK);



$stop;
end

endmodule
