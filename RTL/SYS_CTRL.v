module SYS_CTRL (
    input               CLK,
    input               RST,
    input  [15:0]       ALU_OUT,
    input               FULL,
    input               OUT_Valid,
    input  [7:0]        RdData,
    input               RdData_Valid,
    input  [7:0]        RX_P_DATA,
    input               RX_D_VLD,
    output reg [3:0]    ALU_FUN,
    output reg          WR_INC,
    output reg [7:0]    WR_DATA,
    output reg          EN,
    output reg          CLK_EN,
    output reg [3:0]    Address,
    output reg          WrEn,
    output reg          RdEn,
    output reg [7:0]    WrData
);
reg [4:0]cur_state;
reg [4:0]nxt_state;
//binary encoding
localparam IDLE           =5'b00000 ;
localparam WAIT_WR_DATA   =5'b00001 ;
localparam WAIT_WR_ADD    =5'b00010 ;
localparam Writing        =5'b00011 ;
localparam WAIT_RD_ADD    =5'b00100 ;
localparam Reading        =5'b00101 ;
localparam RESPOND_RD     =5'b00110 ;
localparam WAIT_A         =5'b00111 ;
localparam WAIT_B         =5'b01000 ;
localparam WAIT_FUN_CMD3  =5'b01001 ;
localparam WR_A           =5'b01010 ;
localparam WR_B           =5'b01011 ; 
localparam PROCESSING_3   =5'b01100 ;
localparam WAIT_FUN_CMD4  =5'b01101 ;
localparam PROCESSING_4   =5'b01110 ; 
localparam RESPOND_ALU_1  =5'b01111 ; 
localparam RESPOND_ALU_2  =5'b11111 ;

reg [7:0] wr_data_reg;
reg [3:0] wr_addr_reg;
reg [7:0] opA_reg;
reg [7:0] opB_reg;
reg [3:0] alu_fun_reg;


always @(*) 
begin
    ALU_FUN=4'b0;
    EN=1'b0;
    CLK_EN=1'b0;
    Address=4'b0;
    WrEn=1'b0;
    RdEn=1'b0;
    WrData=8'b0;
    nxt_state=IDLE;
    WR_INC=1'b0;
    WR_DATA=8'b0;
    case (cur_state)
        IDLE:
        begin
        if(RX_D_VLD) begin
        // command selection
          case (RX_P_DATA)
            8'hAA:begin
              nxt_state =WAIT_WR_DATA;
            end
            8'hBB:begin
              nxt_state =WAIT_RD_ADD;
            end
            8'hCC:begin
              nxt_state =WAIT_A;
            end 
            8'hDD:begin
              nxt_state =WAIT_FUN_CMD4;
            end
            default:nxt_state=IDLE; 
          endcase
        end
        else
         nxt_state=IDLE;
        end
        //command 1
        WAIT_WR_DATA:begin
          if (RX_D_VLD) begin
            nxt_state=WAIT_WR_ADD;
          end
          else
          begin
            nxt_state=WAIT_WR_DATA;
          end
        end
        WAIT_WR_ADD:begin
          if (RX_D_VLD) begin
            nxt_state=Writing;
          end
          else
          begin
            nxt_state=WAIT_WR_ADD;
          end
        end
        Writing:begin
          WrEn=1'b1;
          Address=wr_addr_reg;
          WrData=wr_data_reg;
          nxt_state=IDLE;
        end

        //command 2

        WAIT_RD_ADD:begin
          if (RX_D_VLD) begin
            nxt_state=Reading;
          end
          else
          begin
            nxt_state=WAIT_RD_ADD;
          end
        end
        Reading:begin
          RdEn=1'b1;
          Address=wr_addr_reg;
          if (RdData_Valid) begin
            nxt_state=RESPOND_RD;
          end
          else
          begin
            nxt_state=Reading;
          end 
        end
        RESPOND_RD:begin
          WR_DATA = RdData;
          Address= wr_addr_reg;
          if (!FULL) begin
            WR_INC= 1'b1;
            nxt_state = IDLE;
          end
          else begin
            WR_INC= 1'b0;
            nxt_state = RESPOND_RD;
          end
        end

        //command 3

        WAIT_A:begin
          CLK_EN=1'b1;
          if (RX_D_VLD) begin
            nxt_state=WAIT_B;
          end
          else
          begin
            nxt_state=WAIT_A;
          end
        end
        WAIT_B:begin
          CLK_EN=1'b1;
          if (RX_D_VLD) begin
            nxt_state=WAIT_FUN_CMD3;
          end
          else
          begin
            nxt_state=WAIT_B;
          end
        end
        WAIT_FUN_CMD3:begin
          CLK_EN=1'b1;
          if (RX_D_VLD) begin
            nxt_state=WR_A;
          end
          else
          begin
            nxt_state=WAIT_FUN_CMD3;
          end
        end
        WR_A:begin
          CLK_EN=1'b1;
          WrEn=1'b1;
          Address=4'b0000;
          WrData=opA_reg;
          nxt_state=WR_B;
        end
        WR_B:begin
          WrEn=1'b1;
          Address=4'b0001;
          WrData=opB_reg;
          nxt_state=PROCESSING_3;
          CLK_EN=1'b1;
        end
        PROCESSING_3:begin
          CLK_EN=1'b1;
          EN=1'b1;
          ALU_FUN=alu_fun_reg;
          if (OUT_Valid) begin
            nxt_state=RESPOND_ALU_1;
          end
          else
          begin
            nxt_state=PROCESSING_3;
          end
        end
        RESPOND_ALU_1:begin
          CLK_EN= 1'b1;
          EN= 1'b1;
          ALU_FUN= alu_fun_reg;
          WR_DATA = ALU_OUT [7:0];
          if (!FULL) begin
            WR_INC= 1'b1;
            nxt_state = RESPOND_ALU_2;
          end
          else begin
            WR_INC= 1'b0;
            nxt_state = RESPOND_ALU_1;
          end
        end
        
        RESPOND_ALU_2:begin
          CLK_EN= 1'b1;
          EN= 1'b1;
          ALU_FUN= alu_fun_reg;
          WR_DATA = ALU_OUT [15:8];
          if (!FULL) begin
            WR_INC= 1'b1;
            nxt_state = IDLE;
          end
          else begin
            WR_INC= 1'b0;
            nxt_state = RESPOND_ALU_2;
          end
        end
        

        //command 4

        WAIT_FUN_CMD4:begin
          CLK_EN=1'b1;
          if (RX_D_VLD) begin
            nxt_state=PROCESSING_4;
          end
          else
          begin
            nxt_state=WAIT_FUN_CMD4;
          end
        end
        PROCESSING_4:begin
          CLK_EN=1'b1;
          EN=1'b1;
          ALU_FUN=alu_fun_reg;
          if (OUT_Valid) begin
            nxt_state=RESPOND_ALU_1;
          end
          else
          begin
            nxt_state=PROCESSING_4;
          end
        end

        default:begin
          ALU_FUN=4'b0;
          EN=1'b0;
          CLK_EN=1'b0;
          Address=4'b0;
          WrEn=1'b0;
          RdEn=1'b0;
          WrData=8'b0;
          nxt_state=IDLE;
          WR_INC=1'b0;
          WR_DATA=8'b0;
        end 
    endcase
end

always @(posedge CLK or negedge RST)
begin
    if (!RST) begin
        wr_data_reg<=8'b0;
        wr_addr_reg<=4'b0;
    end
    else
    begin
      if (cur_state==WAIT_WR_DATA && RX_D_VLD) wr_data_reg <= RX_P_DATA;
      else if (cur_state==WAIT_WR_ADD && RX_D_VLD || cur_state==WAIT_RD_ADD && RX_D_VLD) wr_addr_reg <= RX_P_DATA[3:0];
    end
end
always @(posedge CLK or negedge RST) begin
    if (!RST) begin
        opA_reg<=8'b0;
        opB_reg<=8'b0;
        alu_fun_reg<=4'b0;
    end
    else
    begin
      if(cur_state==WAIT_A && RX_D_VLD) opA_reg<=RX_P_DATA;
      else if (cur_state==WAIT_B && RX_D_VLD) opB_reg<=RX_P_DATA;
      else if (cur_state==WAIT_FUN_CMD3 && RX_D_VLD || cur_state==WAIT_FUN_CMD4 && RX_D_VLD) alu_fun_reg<=RX_P_DATA[3:0];
    end
end

always @(posedge CLK or negedge RST) 
begin
    if (!RST) begin
        cur_state<=IDLE;
    end
    else
    begin
        cur_state<=nxt_state;
    end
end

endmodule
 
