`timescale 1ns/1ps

module UART_tb #(
    parameter TX_CLK_PERIOD = 8680,
    parameter RX_CLK_PERIOD = 8680/32
)();

    reg         TX_CLK_tb;
    reg         RX_CLK_tb;
    reg         RST_tb;
    reg  [7:0]  TX_IN_P_tb;
    reg         TX_IN_V_tb;
    reg         RX_IN_S_tb;
    reg  [5:0]  prescale_tb;
    reg         PAR_TYP_tb;
    reg         PAR_EN_tb;
    wire        TX_OUT_S_tb;
    wire [7:0]  RX_OUT_P_tb;
    wire        RX_OUT_V_tb;
    wire        busy_tb;
    wire        stp_err_tb;
    wire        par_err_tb;
    wire        strt_glitch_tb;
    integer     i;
    integer     j;
    integer     k;
    integer     l;
    integer     m;
    reg [7:0]   mem_IN_0 [0:19];
    reg [7:0]   mem_EXP_0 [0:19];
    reg [7:0]   mem_IN_1 [0:19];
    reg [7:0]   mem_EXP_1 [0:19];
    reg [7:0]   mem_LOOP [0:19];


    reg  loopback_en = 1'b0;
    wire rx_in_mux = loopback_en ? TX_OUT_S_tb : RX_IN_S_tb;

    reg tx_test_done=1'b0;
    reg rx_test_done=1'b0;

    
    UART_TOP DUT(
        .TX_CLK(TX_CLK_tb),
        .RX_CLK(RX_CLK_tb),
        .RST(RST_tb),
        .TX_IN_P(TX_IN_P_tb),
        .TX_IN_V(TX_IN_V_tb),
        .RX_IN_S(rx_in_mux),
        .prescale(prescale_tb),
        .PAR_TYP(PAR_TYP_tb),
        .PAR_EN(PAR_EN_tb),
        .TX_OUT_S(TX_OUT_S_tb),
        .RX_OUT_P(RX_OUT_P_tb),
        .RX_OUT_V(RX_OUT_V_tb),
        .busy(busy_tb),
        .stp_err(stp_err_tb),
        .par_err(par_err_tb),
        .strt_glitch(strt_glitch_tb)
    );
    always #(TX_CLK_PERIOD/2) TX_CLK_tb = ~TX_CLK_tb;
    always #(RX_CLK_PERIOD/2) RX_CLK_tb = ~RX_CLK_tb;


    initial begin
        $dumpfile("UART.vcd");
        $dumpvars;

        initializer();

        #TX_CLK_PERIOD;

        RST_tb = 1'b1;

        #TX_CLK_PERIOD;

        $readmemh("IN_0.txt", mem_IN_0);
        $readmemh("EXP_0.txt", mem_EXP_0);
        #TX_CLK_PERIOD;
        for (j = 0; j < 20; j = j + 1) 
        begin
            transimting_data(mem_IN_0[j], mem_EXP_0[j]);
        end

        tx_test_done=1'b1;
        #(200*TX_CLK_PERIOD);
        $stop;

    end
    initial 
    begin
       initializer();

        #TX_CLK_PERIOD;

        RST_tb = 1'b1;

        #TX_CLK_PERIOD;

        $readmemh("IN_1.txt", mem_IN_1);

        $readmemh("EXP_1.txt", mem_EXP_1);
        #TX_CLK_PERIOD;
        for (k = 0; k < 20; k = k + 1) 
        begin
            receiving_data(mem_IN_1[k], mem_EXP_1[k]);
        end 
        rx_test_done=1'b1;
    end

    initial begin
        wait (rx_test_done&&tx_test_done);
        loopback_en = 1'b1;
        $readmemh("LOOP.txt", mem_LOOP);

        for (m = 0; m < 20; m = m + 1) begin
            loopback_data(mem_LOOP[m]);
        end
        #(500*TX_CLK_PERIOD);
        $stop;
    end


    task 
        initializer();
        begin
            TX_CLK_tb = 1'b0;
            RX_CLK_tb = 1'b0;
            RST_tb = 1'b0;
            TX_IN_P_tb = 8'h00;
            TX_IN_V_tb = 1'b0;
            RX_IN_S_tb = 1'b1;
            prescale_tb = 6'd32;
            PAR_TYP_tb = 1'b0;
            PAR_EN_tb =1'b0;
        end 
    endtask
    task 
        transimting_data(input [7:0] IN_0, input [7:0]EXP_0);
        begin
            TX_IN_P_tb = IN_0;
            TX_IN_V_tb = 1'b1;

            #TX_CLK_PERIOD;
            TX_IN_V_tb = 1'b0;
            // start bit
            wait (TX_OUT_S_tb == 1'b0);

            // data bits

            #(2*TX_CLK_PERIOD);
            for (l = 0; l < 8; l = l + 1) begin
                if (TX_OUT_S_tb !== EXP_0[l]) 
                begin
                    $display("Error: TX_OUT_S_tb mismatch at bit %d. Expected: %b, Got: %b", l, EXP_0[l], TX_OUT_S_tb);
                end
                else
                begin
                    $display("TX_OUT_S_tb matches at bit %d. Value: %b", l, TX_OUT_S_tb);
                end
                #TX_CLK_PERIOD;
            end
            // stop bit
            if (TX_OUT_S_tb !== 1'b1) 
            begin
                $display("STOP bit fails. Expected: 1'b1, Got: %b", TX_OUT_S_tb);
            end
            else
            begin
                $display("STOP bit passes. Value: %b", TX_OUT_S_tb);
            end
            #TX_CLK_PERIOD;
        end
        endtask
        task
        receiving_data(input [7:0] IN_1, input [7:0] EXP_1);
        begin
            // Start bit
            RX_IN_S_tb = 1'b0;
            #TX_CLK_PERIOD;

            // Data bits
            for (i = 0; i < 8; i = i + 1) begin
                RX_IN_S_tb = IN_1[i];
                #TX_CLK_PERIOD;
            end

            // Stop bit
            RX_IN_S_tb = 1'b1;
            #TX_CLK_PERIOD;
            wait (RX_OUT_V_tb == 1'b1);

            if (RX_OUT_P_tb !== EXP_1) begin
                $display("Error: RX_OUT_P_tb mismatch. Expected: %b, Got: %b", EXP_1, RX_OUT_P_tb);
            end 
            else begin
                $display("RX_OUT_P_tb matches. Value: %b", RX_OUT_P_tb);
            end

        end
        endtask

        task 
                loopback_data(input [7:0] data);
        begin
            TX_IN_P_tb = data;
            TX_IN_V_tb = 1'b1;
            #TX_CLK_PERIOD;
            TX_IN_V_tb = 1'b0;

            wait (RX_OUT_V_tb == 1'b1);

            if (RX_OUT_P_tb !== data) begin
                $display("Error: LOOPBACK mismatch. Sent: %b, Got: %b", data, RX_OUT_P_tb);
            end else begin
                $display("LOOPBACK PASS. Sent/Got: %b", data);
            end

            @(negedge RX_OUT_V_tb);
            #TX_CLK_PERIOD;
        end
        endtask

endmodule