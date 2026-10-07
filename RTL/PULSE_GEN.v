module PULSE_GEN (
    input CLK,
    input RST,
    input LVL_SIG,
    output reg PULSE_SIG
);
reg LVL_SIG_OLD;
wire pulse;

assign pulse = (!LVL_SIG_OLD&LVL_SIG);
always @(posedge CLK or negedge RST) begin
    if(!RST)
    begin
      LVL_SIG_OLD<=1'b0;
    end
    else
    begin
      LVL_SIG_OLD<=LVL_SIG;
    end
end

always @(posedge CLK or negedge RST) begin
    if (!RST) 
    begin
        PULSE_SIG<=1'b0;
    end
    else
    begin
      PULSE_SIG<=pulse;
    end
    
end

    
endmodule