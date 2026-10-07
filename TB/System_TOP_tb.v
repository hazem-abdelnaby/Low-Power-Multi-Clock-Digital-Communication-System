`timescale 1ns/1ps

module System_TOP_tb
/*
############################################################################
############################################################################
###################### parameter declaration ###############################
############################################################################
############################################################################
*/
#(
    parameter   DATA_WIDTH = 8,
                FUN_WIDTH  = 4,
                ADD_WIDTH  = 4,
                DEPTH      = 16,
                Div_width  =8,
                BUS_WIDTH  =8,
                NUM_STAGES =2,
                FIFO_WIDTH =8,
                NUM_CHAINS =4
) ();
localparam REF_CLK_Period   =20 ;       //50 MHz
localparam UART_CLK_Period  =271.267 ;  //~ 3.6864 MHz
localparam CMD_1 =8'hAA ;
localparam CMD_2 =8'hBB ;
localparam CMD_3 =8'hCC ;
localparam CMD_4 =8'hDD ;
/*
############################################################################
############################################################################
######################   TB ports declaration   ############################
############################################################################
############################################################################
*/

    reg     REF_CLK_tb;
    reg     UART_CLK_tb;
    reg     RST_tb;
    reg     RX_IN_tb;
    wire    TX_OUT_S_tb;
    wire    par_err_tb;
    wire    framing_error_tb;
    integer i;
    
/*
############################################################################
############################################################################
######################      initial block       ############################
############################################################################
############################################################################
*/    

initial begin
    //recording functions
    $dumpfile ("System_TOP.vcd");
    $dumpvars;

    //setting up the System into known state
    Initializer;
    Rest_deassertion;

    //checkig RX and the data sync
    Sending_Frame_To_RX(8'hEE);
    Checking_RX_D_Arrived(8'hEE);

    //------------------------------------------- test one testing the Command 1 ----------------------------------------
    Sending_Frame_To_RX(8'hAA);
    Checking_Command_Selection;
    Command_1(8'hFF,8'b1110);

    // Basic sanity — repeat of your working case
    Sending_Frame_To_RX(8'hAA);
    Checking_Command_Selection;
    Command_1(8'hFF, 8'b0100);   // addr 0x4, all-ones data

    // All-zeros data
    Sending_Frame_To_RX(8'hAA);
    Checking_Command_Selection;
    Command_1(8'h00, 8'b0101);   // addr 0x5, all-zeros data

    // Alternating bit pattern (good for catching bit-order mistakes)
    Sending_Frame_To_RX(8'hAA);
    Checking_Command_Selection;
    Command_1(8'b10101010, 8'b0110);  // addr 0x6

    // Reverse alternating pattern
    Sending_Frame_To_RX(8'hAA);
    Checking_Command_Selection;
    Command_1(8'b01010101, 8'b0111);  // addr 0x7

    // Highest normal address in your reserved-safe range
    Sending_Frame_To_RX(8'hAA);
    Checking_Command_Selection;
    Command_1(8'h3C, 8'b1111);   // addr 0xF (highest 4-bit address)

    // Single bit set (LSB)
    Sending_Frame_To_RX(8'hAA);
    Checking_Command_Selection;
    Command_1(8'b00000001, 8'b1000);  // addr 0x8

    // Single bit set (MSB)
    Sending_Frame_To_RX(8'hAA);
    Checking_Command_Selection;
    Command_1(8'b10000000, 8'b1001);  // addr 0x9

    // Re-write same address as test 1, different data — checks overwrite works
    Sending_Frame_To_RX(8'hAA);
    Checking_Command_Selection;
    Command_1(8'hCC, 8'b0100);   // addr 0x4 again

    // Adjacent addresses back-to-back
    Sending_Frame_To_RX(8'hAA);
    Checking_Command_Selection;
    Command_1(8'hDD, 8'b1010);   // addr 0xA

    Sending_Frame_To_RX(8'hAA);
    Checking_Command_Selection;
    Command_1(8'hEE, 8'b1011);   // addr 0xB

    //------------------------------------------- test two testing the Command 2 ----------------------------------------

    // uusing command 2 to read the data i wrote in the reg file in test one

    //1
    Sending_Frame_To_RX(8'hBB);
    Checking_Command_Selection;
    Command_2(8'b1110);

    //2
    Sending_Frame_To_RX(8'hBB);
    Checking_Command_Selection;
    Command_2(8'b0100);

    //3
    Sending_Frame_To_RX(8'hBB);
    Checking_Command_Selection;
    Command_2(8'b0101);

    //4
    Sending_Frame_To_RX(8'hBB);
    Checking_Command_Selection;
    Command_2(8'b0110);

    //5
    Sending_Frame_To_RX(8'hBB);
    Checking_Command_Selection;
    Command_2(8'b0111);

    //6
    Sending_Frame_To_RX(8'hBB);
    Checking_Command_Selection;
    Command_2(8'b1111);

    //7
    Sending_Frame_To_RX(8'hBB);
    Checking_Command_Selection;
    Command_2(8'b1000);

    //8
    Sending_Frame_To_RX(8'hBB);
    Checking_Command_Selection;
    Command_2(8'b1001);

    //9
    Sending_Frame_To_RX(8'hBB);
    Checking_Command_Selection;
    Command_2(8'b1010);

    //10
    Sending_Frame_To_RX(8'hBB);
    Checking_Command_Selection;
    Command_2(8'b1011);


    //------------------------------------------- test three testing the Command 3 ----------------------------------------
    // addition
    //1
    Sending_Frame_To_RX(8'hCC);
    Checking_Command_Selection;
    Command_3(8'd56,8'd66,8'd0,8'd122,8'd0);
    //2
    Sending_Frame_To_RX(8'hCC);
    Checking_Command_Selection;
    Command_3(8'd255,8'd255,8'd0,8'b1111_1110,8'd1);


    // subtraction
    //1
    Sending_Frame_To_RX(8'hCC);
    Checking_Command_Selection;
    Command_3(8'd122,8'd56,8'd1,8'd66,8'd0);
    //2
    Sending_Frame_To_RX(8'hCC);
    Checking_Command_Selection;
    Command_3(8'd66,8'd3,8'd1,8'd63,8'd0);

    // multiblcation
    //1
    Sending_Frame_To_RX(8'hCC);
    Checking_Command_Selection;
    Command_3(8'd255,8'd255,8'd2,8'b0000_0001,8'b1111_1110);
    //2
    Sending_Frame_To_RX(8'hCC);
    Checking_Command_Selection;
    Command_3(8'd86,8'd128,8'd2,8'd0,8'b0010_1011);

    // division
    //1
    Sending_Frame_To_RX(8'hCC);
    Checking_Command_Selection;
    Command_3(8'd255,8'd5,8'd3,8'd51,8'd0);
    //2
    Sending_Frame_To_RX(8'hCC);
    Checking_Command_Selection;
    Command_3(8'd128,8'd2,8'd3,8'd64,8'd0);
    // 3
    Sending_Frame_To_RX(8'hCC);
    Checking_Command_Selection;
    Command_3(8'd128,8'd5,8'd3,8'd25,8'd0);

    // AND
    //1
    Sending_Frame_To_RX(8'hCC);
    Checking_Command_Selection;
    Command_3(8'd255,8'd255,8'd4,8'b1111_1111,8'b0);
    //2
    Sending_Frame_To_RX(8'hCC);
    Checking_Command_Selection;
    Command_3(8'd86,8'd128,8'd4,8'd0,8'b0);

    // OR
    //1
    Sending_Frame_To_RX(8'hCC);
    Checking_Command_Selection;
    Command_3(8'd255,8'd0,8'd5,8'b1111_1111,8'b0);
    //2
    Sending_Frame_To_RX(8'hCC);
    Checking_Command_Selection;
    Command_3(8'd86,8'd128,8'd5,8'b1101_0110,8'b0);

    // NAND
    //1
    Sending_Frame_To_RX(8'hCC);
    Checking_Command_Selection;
    Command_3(8'd255,8'd0,8'd6,8'b1111_1111,8'b1111_1111);
    //2
    Sending_Frame_To_RX(8'hCC);
    Checking_Command_Selection;
    Command_3(8'd86,8'd128,8'd6,8'b1111_1111,8'b1111_1111);

    // NOR
    //1
    Sending_Frame_To_RX(8'hCC);
    Checking_Command_Selection;
    Command_3(8'd255,8'd0,8'd7,8'b0,8'b1111_1111);
    //2
    Sending_Frame_To_RX(8'hCC);
    Checking_Command_Selection;
    Command_3(8'd86,8'd128,8'd7,8'b0010_1001,8'b1111_1111);

    // XOR
    //1
    Sending_Frame_To_RX(8'hCC);
    Checking_Command_Selection;
    Command_3(8'd255,8'd0,8'd8,8'b1111_1111,8'b0);
    //2
    Sending_Frame_To_RX(8'hCC);
    Checking_Command_Selection;
    Command_3(8'd86,8'd128,8'd8,8'b1101_0110,8'b0000_0000);

    // XNOR
    //1
    Sending_Frame_To_RX(8'hCC);
    Checking_Command_Selection;
    Command_3(8'd255,8'd0,8'd9,8'b0,8'b1111_1111);
    //2
    Sending_Frame_To_RX(8'hCC);
    Checking_Command_Selection;
    Command_3(8'd86,8'd128,8'd9,8'b0010_1001,8'b1111_1111);

    // equal
    //1 
    Sending_Frame_To_RX(8'hCC);
    Checking_Command_Selection;
    Command_3(8'd50,8'd50,8'd10,8'd1,8'd0);
    //2
    Sending_Frame_To_RX(8'hCC);
    Checking_Command_Selection;
    Command_3(8'd50,8'd51,8'd10,8'd0,8'd0);

    // greater than 
    //1
    Sending_Frame_To_RX(8'hCC);
    Checking_Command_Selection;
    Command_3(8'd100,8'd50,8'd11,8'd2,8'd0);
    //2
    Sending_Frame_To_RX(8'hCC);
    Checking_Command_Selection;
    Command_3(8'd50,8'd100,8'd11,8'd0,8'd0);

    // less than
    //1
    Sending_Frame_To_RX(8'hCC);
    Checking_Command_Selection;
    Command_3(8'd50,8'd100,8'd12,8'd3,8'd0);
    //2
    Sending_Frame_To_RX(8'hCC);
    Checking_Command_Selection;
    Command_3(8'd100,8'd50,8'd12,8'd0,8'd0);

    // shift right
    //1
    Sending_Frame_To_RX(8'hCC);
    Checking_Command_Selection;
    Command_3(8'd100,8'd0,8'd13,8'd50,8'd0);
    //2
    Sending_Frame_To_RX(8'hCC);
    Checking_Command_Selection;
    Command_3(8'd255,8'd0,8'd13,8'b0111_1111,8'd0);

    // shift left
    //1
    Sending_Frame_To_RX(8'hCC);
    Checking_Command_Selection;
    Command_3(8'd50,8'd0,8'd14,8'd100,8'd0);
    //2
    Sending_Frame_To_RX(8'hCC);
    Checking_Command_Selection;
    Command_3(8'd255,8'd0,8'd14,8'b1111_1110,8'd1);
    //3
    Sending_Frame_To_RX(8'hCC);
    Checking_Command_Selection;
    Command_3(8'd232,8'd154,8'd14,8'b1101_0000,8'd1);


    //------------------------------------------- test four testing the Command 4 ----------------------------------------
    //A= 232
    //B= 154
    Sending_Frame_To_RX(8'hDD);
    Checking_Command_Selection;
    Command_4(8'd0,8'b1000_0010,8'd1);

    //A= 232
    //B= 154
    // 232 == 154 -> 0
    Sending_Frame_To_RX(8'hDD);
    Checking_Command_Selection;
    Command_4(8'd10,8'd0,8'd0);

    //A= 232
    //B= 154
    // 232 > 154 -> 2
    Sending_Frame_To_RX(8'hDD);
    Checking_Command_Selection;
    Command_4(8'd11,8'd2,8'd0);

    //A= 232
    //B= 154
    // 232 < 154 is false -> 0
    Sending_Frame_To_RX(8'hDD);
    Checking_Command_Selection;
    Command_4(8'd12,8'd0,8'd0);

    //A= 232
    //B= 154
    // 232 >> 1 = 116 -> 0111_0100
    Sending_Frame_To_RX(8'hDD);
    Checking_Command_Selection;
    Command_4(8'd13,8'b0111_0100,8'd0);

    //A= 232
    //B= 154
    // 232 << 1 = 464 -> low byte 1101_0000, high byte 1
    Sending_Frame_To_RX(8'hDD);
    Checking_Command_Selection;
    Command_4(8'd14,8'b1101_0000,8'd1);








    #(2000*UART_CLK_Period);
    $stop;
    
end

/*
############################################################################
############################################################################
######################      Clocks setup        ############################
############################################################################
############################################################################
*/

always #(REF_CLK_Period/2) REF_CLK_tb=~REF_CLK_tb;
always #(UART_CLK_Period/2) UART_CLK_tb=~UART_CLK_tb;

/*
############################################################################
############################################################################
####################### intance the system top #############################
############################################################################
############################################################################
*/

System_TOP #(
    .DATA_WIDTH (DATA_WIDTH),
    .FUN_WIDTH (FUN_WIDTH),
    .ADD_WIDTH (ADD_WIDTH),
    .DEPTH (DEPTH),
    .Div_width (Div_width),
    .BUS_WIDTH (BUS_WIDTH),
    .NUM_STAGES (NUM_STAGES),
    .FIFO_WIDTH (FIFO_WIDTH),
    .NUM_CHAINS (NUM_CHAINS)
)DUT(
    .REF_CLK (REF_CLK_tb),
    .UART_CLK (UART_CLK_tb),
    .RST_N (RST_tb),
    .UART_RX_IN (RX_IN_tb),
    .UART_TX_O (TX_OUT_S_tb),
    .framing_error (framing_error_tb),
    .parity_error (par_err_tb)
);

/*
############################################################################
############################################################################
#######################       initializer      #############################
############################################################################
############################################################################
*/

task Initializer();
begin
    REF_CLK_tb=1'b0;
    UART_CLK_tb=1'b0;
    RST_tb=1'b0;
    RX_IN_tb=1'b0;
end
endtask

/*
############################################################################
############################################################################
#######################    Reset deassertion   #############################
############################################################################
############################################################################
*/

task Rest_deassertion();
begin
    #(2*UART_CLK_Period);
    RST_tb=1'b1;
    #(2*UART_CLK_Period);
end
endtask

/*
#############################################################################
#############################################################################
####################### sending frame to the RX #############################
#############################################################################
#############################################################################
*/

task Sending_Frame_To_RX(
    input [7:0] Frame
    );
begin
            // Start bit
            RX_IN_tb = 1'b0;
            #(UART_CLK_Period*32);

            // Data bits
            for (i = 0; i < 8; i = i + 1) begin
                RX_IN_tb = Frame[i];
                #(UART_CLK_Period*32);
            end

            // Stop bit
            RX_IN_tb = 1'b1;
            #(UART_CLK_Period*32);
            wait (DUT.Domain_2_TOP_U1.RX_OUT_V == 1'b1);

            if (DUT.Domain_2_TOP_U1.RX_OUT_P!== Frame) begin
                $display("Error: RX_OUT_P mismatch. Expected: %b, Got: %b", Frame, DUT.Domain_2_TOP_U1.RX_OUT_P);
            end 
            else begin
                $display("RX_OUT_P matches. Value: %b", DUT.Domain_2_TOP_U1.RX_OUT_P);
            end
end
endtask

/*
#############################################################################
#############################################################################
#######################  checking RX_D Arrived  #############################
#############################################################################
#############################################################################
*/

task Checking_RX_D_Arrived (
    input [7:0] Frame
    );
begin
    wait(DUT.Domain_2_TOP_U1.RX_OUT_V == 1'b1);
    #(REF_CLK_Period*4);
    if (Frame==DUT.Domain_1_TOP_U0.RX_P_DATA) begin
        $display("RX_OUT_P Arrived Sucessfull. Value: %b", DUT.Domain_1_TOP_U0.RX_P_DATA);
    end
    else
    begin
        $display("RX_OUT_P Arrived INCORECT XX. Expected: %b, Got: %b" ,Frame, DUT.Domain_1_TOP_U0.RX_P_DATA);
    end
end
endtask

/*
################################################################################
################################################################################
####################### checking command selection #############################
################################################################################
################################################################################
*/

task Checking_Command_Selection();
begin
    wait(DUT.Domain_1_TOP_U0.RX_D_VLD == 1'b1);
    @(posedge REF_CLK_tb);
    @(negedge REF_CLK_tb);
  case (DUT.Domain_1_TOP_U0.RX_P_DATA)
    CMD_1:begin
      if (DUT.Domain_1_TOP_U0.SYS_CTRL_U3.cur_state==5'b00001) begin
        $display("the command selection worked sucessfull");
      end
      else
      begin
        $display("the command selection INCORECT XX");
      end
    end
    CMD_2:begin
      if (DUT.Domain_1_TOP_U0.SYS_CTRL_U3.cur_state==5'b00100) begin
        $display("the command selection worked sucessfull");
      end
      else
      begin
        $display("the command selection INCORECT XX");
      end
    end
    CMD_3:begin
      if (DUT.Domain_1_TOP_U0.SYS_CTRL_U3.cur_state==5'b00111) begin
        $display("the command selection worked sucessfull");
      end
      else
      begin
        $display("the command selection INCORECT XX");
      end
    end
    CMD_4:begin
      if (DUT.Domain_1_TOP_U0.SYS_CTRL_U3.cur_state==5'b01101) begin
        $display("the command selection worked sucessfull");
      end
      else
      begin
        $display("the command selection INCORECT XX");
      end
    end 
    default:begin
      if (DUT.Domain_1_TOP_U0.SYS_CTRL_U3.cur_state==5'b00000) begin
        $display("the command selection worked sucessfull");
      end
      else
      begin
        $display("the command selection INCORECT XX");
      end
    end
  endcase
end
endtask


/*
#############################################################################
#############################################################################
#######################   Command 1 (writing)   #############################
#############################################################################
#############################################################################
*/

task Command_1(
    input  [7:0] WR_DATA,
    input  [7:0] WR_ADD
    );//writing
begin
    wait(DUT.Domain_1_TOP_U0.SYS_CTRL_U3.cur_state==5'b00001);
    Sending_Frame_To_RX(WR_DATA);
    wait(DUT.Domain_1_TOP_U0.SYS_CTRL_U3.cur_state==5'b00010);
    Sending_Frame_To_RX(WR_ADD);
    wait(DUT.Domain_1_TOP_U0.SYS_CTRL_U3.cur_state==5'b00011);
    @(posedge REF_CLK_tb);
    @(negedge REF_CLK_tb);
    if (DUT.Domain_1_TOP_U0.RegFile_U2.regArr[WR_ADD]==WR_DATA) begin
        $display ("The 1 command works sucessfull");
    end
    else
    begin
      $display ("The 1 command works INCORRECT XX EXP=%b  Stored=%b",WR_DATA,DUT.Domain_1_TOP_U0.RegFile_U2.regArr[WR_ADD]);
    end
end
endtask

/*
#############################################################################
#############################################################################
#######################   Command 2 (raeding)   #############################
#############################################################################
#############################################################################
*/

task Command_2(
    input [7:0] RD_ADD
);
begin
    wait(DUT.Domain_1_TOP_U0.SYS_CTRL_U3.cur_state==5'b00100);
    Sending_Frame_To_RX(RD_ADD);
    wait(DUT.Domain_1_TOP_U0.SYS_CTRL_U3.cur_state==5'b00101);
    wait(DUT.Domain_1_TOP_U0.SYS_CTRL_U3.cur_state==5'b00110);   
    @(negedge REF_CLK_tb);
    if (DUT.Domain_1_TOP_U0.WR_DATA==DUT.Domain_1_TOP_U0.RegFile_U2.regArr[RD_ADD]) begin
        $display ("The 2 command works sucessfull");
    end
    else
    begin
        $display ("The 2 command works INCORRECT EXP=%b  GOT=%b",DUT.Domain_1_TOP_U0.RegFile_U2.regArr[RD_ADD],DUT.Domain_1_TOP_U0.WR_DATA);
    end
end
endtask

/*
#######################################################################################################
#######################################################################################################
#######################   Command 3 (takes A,B,FUN prcess them and send)  #############################
#######################################################################################################
#######################################################################################################
*/

task Command_3(
    input [7:0] A,
    input [7:0] B,
    input [7:0] FUN,
    input [7:0] EXP_1,
    input [7:0] EXP_2
);
begin
    wait(DUT.Domain_1_TOP_U0.SYS_CTRL_U3.cur_state==5'b00111);
    Sending_Frame_To_RX(A);
    wait(DUT.Domain_1_TOP_U0.SYS_CTRL_U3.cur_state==5'b01000);
    Sending_Frame_To_RX(B);
    wait(DUT.Domain_1_TOP_U0.SYS_CTRL_U3.cur_state==5'b01001);
    Sending_Frame_To_RX(FUN);
    wait(DUT.Domain_1_TOP_U0.SYS_CTRL_U3.cur_state==5'b01010);
    wait(DUT.Domain_1_TOP_U0.SYS_CTRL_U3.cur_state==5'b01011);
    wait(DUT.Domain_1_TOP_U0.SYS_CTRL_U3.cur_state==5'b01100);
    wait(DUT.Domain_1_TOP_U0.SYS_CTRL_U3.cur_state==5'b01111);
    @(negedge REF_CLK_tb);
    if (DUT.Domain_1_TOP_U0.WR_DATA==EXP_1) begin
        $display ("The 3 command works sucessfull frame 1 ALU_OUT [7:0]");
    end
    else
    begin
        $display ("The 3 command works INCORRECT EXP=%b  GOT=%b",EXP_1,DUT.Domain_1_TOP_U0.WR_DATA);
    end

    wait(DUT.Domain_1_TOP_U0.SYS_CTRL_U3.cur_state==5'b11111);
    @(negedge REF_CLK_tb);
    if (DUT.Domain_1_TOP_U0.WR_DATA==EXP_2) begin
        $display ("The 3 command works sucessfull frame 2 ALU_OUT [15:8]");
    end
    else
    begin
        $display ("The 3 command works INCORRECT EXP=%b  GOT=%b",EXP_2,DUT.Domain_1_TOP_U0.WR_DATA);
    end

end
endtask

/*
#######################################################################################################
#######################################################################################################
#######################     Command 4 (takes FUN prcess them and send)    #############################
#######################################################################################################
#######################################################################################################
*/

task Command_4(
    input [7:0] FUN,
    input [7:0] EXP_1,
    input [7:0] EXP_2
);
begin
    wait(DUT.Domain_1_TOP_U0.SYS_CTRL_U3.cur_state==5'b01101);
    Sending_Frame_To_RX(FUN);
    wait(DUT.Domain_1_TOP_U0.SYS_CTRL_U3.cur_state==5'b01110);
    wait(DUT.Domain_1_TOP_U0.SYS_CTRL_U3.cur_state==5'b01111);
    @(negedge REF_CLK_tb);
    if (DUT.Domain_1_TOP_U0.WR_DATA==EXP_1) begin
        $display ("The 4 command works sucessfull frame 1 ALU_OUT [7:0]");
    end
    else
    begin
        $display ("The 4 command works INCORRECT EXP=%b  GOT=%b",EXP_1,DUT.Domain_1_TOP_U0.WR_DATA);
    end
    wait(DUT.Domain_1_TOP_U0.SYS_CTRL_U3.cur_state==5'b11111);
    @(negedge REF_CLK_tb);
    if (DUT.Domain_1_TOP_U0.WR_DATA==EXP_2) begin
        $display ("The 4 command works sucessfull frame 2 ALU_OUT [15:8]");
    end
    else
    begin
        $display ("The 4 command works INCORRECT EXP=%b  GOT=%b",EXP_2,DUT.Domain_1_TOP_U0.WR_DATA);
    end
end
endtask

endmodule
