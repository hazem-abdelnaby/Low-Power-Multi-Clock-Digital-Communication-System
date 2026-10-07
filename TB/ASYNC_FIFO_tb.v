`timescale 1ns/1ps
module ASYNC_FIFO_tb#(
    parameter DATA_WIDTH = 8,
              FIFO_WIDTH = 8
)();
reg W_CLK_tb,W_RST_tb,R_CLK_tb,R_RST_tb;
reg [DATA_WIDTH-1:0] WR_DATA_tb;
reg W_INC_tb,R_INC_tb;
wire [DATA_WIDTH-1:0] RD_DATA_tb;
wire FULL_tb,EMPTY_tb;
integer burst_count_w;
integer burst_count_r;
integer z;
integer i;
reg [DATA_WIDTH-1:0] data_array [0:26];


localparam write_CLK_period = 10;
localparam read_CLK_period = 25;


ASYNC_FIFO #(
    .DATA_WIDTH(DATA_WIDTH),
    .FIFO_WIDTH(FIFO_WIDTH)
) DUT
(
    .W_CLK(W_CLK_tb),
    .W_RST(W_RST_tb),
    .R_CLK(R_CLK_tb),
    .R_RST(R_RST_tb),
    .WR_DATA(WR_DATA_tb),
    .W_INC(W_INC_tb),
    .R_INC(R_INC_tb),
    .RD_DATA(RD_DATA_tb),
    .FULL(FULL_tb),
    .EMPTY(EMPTY_tb)
);

always #(write_CLK_period/2) W_CLK_tb = ~W_CLK_tb;
always #(read_CLK_period/2) R_CLK_tb = ~R_CLK_tb;



//write intial block 
initial
begin
$dumpfile("ASYNC_FIFO.vcd");
$dumpvars;
$readmemh("data.txt", data_array);
w_intializaier;
#(write_CLK_period);
W_RST_tb = 1'b1;
#(write_CLK_period);
for(i=0;i<9;i=i+1)
begin
    w_write_data(data_array[i]);
end
#(write_CLK_period*2);
for(i=9;i<18;i=i+1)
begin
    w_write_data(data_array[i]);
end
#(write_CLK_period*2);
for(i=18;i<27;i=i+1)
begin
    w_write_data(data_array[i]);
end


end
task w_intializaier;
begin
    W_CLK_tb = 1'b0;
    W_RST_tb = 1'b0;
    WR_DATA_tb = 'b0;
    W_INC_tb = 1'b0;
end
endtask

task w_write_data
(
    input [DATA_WIDTH-1:0] data
);
begin
    W_INC_tb = 1'b1;
    #(write_CLK_period);
    for(burst_count_w=0;burst_count_w<9;burst_count_w=burst_count_w+1)
    begin
        WR_DATA_tb = data;
        #(write_CLK_period);
    end
    W_INC_tb = 1'b0;
end
endtask



//read intial block

initial
begin
    r_intializaier;
    #(write_CLK_period);
    R_RST_tb = 1'b1;
    #(write_CLK_period);
    for(z=0;z<3;z=z+1)
    begin
        r_read_data;
    end
    #(100*read_CLK_period);
    $stop;
end 

task r_intializaier;
begin
    R_CLK_tb = 1'b0;
    R_RST_tb = 1'b0;
    R_INC_tb = 1'b0;
end
endtask

task r_read_data;
begin
    R_INC_tb = 1'b1;
    #(read_CLK_period);
    for(burst_count_r=0;burst_count_r<9;burst_count_r=burst_count_r+1)
    begin
        #(read_CLK_period);
    end
end
endtask






always @(posedge W_CLK_tb)
begin
    $display("time=%0t, W_CLK=%b, W_RST=%b, WR_DATA=%h, W_INC=%b, FULL=%b, wptr=%d",$time,W_CLK_tb,W_RST_tb,WR_DATA_tb,W_INC_tb,FULL_tb,DUT.U2.wptr);
end
always @(posedge R_CLK_tb)
begin
    $display("time=%0t, R_CLK=%b, R_RST=%b, RD_DATA=%h, R_INC=%b, EMPTY=%b, rptr=%d",$time,R_CLK_tb,R_RST_tb,RD_DATA_tb,R_INC_tb,EMPTY_tb,DUT.U3.rptr);
end
endmodule

