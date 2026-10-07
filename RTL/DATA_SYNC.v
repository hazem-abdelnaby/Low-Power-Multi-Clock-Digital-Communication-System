module DATA_SYNC #(
parameter BUS_WIDTH=8,
	  	  NUM_STAGES=2
)
(
input [0:BUS_WIDTH-1] 		unsync_bus,
input 				  		bus_enable,
input 				  		CLK,
input    			  		RST,
output reg [BUS_WIDTH-1:0]  sync_bus,
output reg 					enable_pulse
);
reg stage[0:NUM_STAGES-1];
reg enable_flop;
wire enable_pulse_IN;
integer i;

always @ (posedge CLK or negedge RST)
begin
	if (!RST)
	begin
	  for(i=0;i<NUM_STAGES;i=i+1)
	  begin
	   stage[i]<=1'b0;
	  end
	end
	else
	begin
	stage[0]<=bus_enable;
	for (i=0;i<NUM_STAGES-1;i=i+1)
	begin
	stage[i+1]<=stage[i];
	end

	end
end

always @ (posedge CLK or negedge RST)
begin
	if(!RST)
	begin	
	enable_flop<=1'b0;
	end
	else
	begin
	enable_flop<=stage[NUM_STAGES-1];
	end
end
assign enable_pulse_IN=stage[NUM_STAGES-1]&&!enable_flop;

always @ (posedge CLK or negedge RST)
begin
	if(!RST)
	sync_bus<='b0;
	else if (enable_pulse_IN)
	sync_bus<=unsync_bus;
	else
	sync_bus<=sync_bus;
end
always @ (posedge CLK or negedge RST)
begin
if(!RST)
enable_pulse<=1'b0;
else
enable_pulse<=enable_pulse_IN;

end

endmodule
