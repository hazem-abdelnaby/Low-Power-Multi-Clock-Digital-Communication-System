module RegFile #(
    parameter ADD_WIDTH =4,
              DATA_WIDTH=8,
              DEPTH =16
) (
   input                  CLK,
   input                  RST,
   input [ADD_WIDTH-1:0]  Address,
   input                  WrEn,
   input                  RdEn,
   input [DATA_WIDTH-1:0] WrData,
   output reg [DATA_WIDTH-1:0]  RdData,
   output reg                   RdData_Valid,
   output [DATA_WIDTH-1:0]      REG0,
   output [DATA_WIDTH-1:0]      REG1,
   output [DATA_WIDTH-1:0]      REG2,
   output [DATA_WIDTH-1:0]      REG3
);
localparam UART_Config =8'b10000000 ;
localparam Div_Ratio =8'b00100000 ;

integer I ; 
  
reg [DATA_WIDTH-1:0] regArr [DEPTH-1:0] ;    

always @(posedge CLK or negedge RST)
 begin
   if(!RST)
    begin
	 RdData_Valid <= 1'b0 ;
	 RdData     <= 'b0 ;
      for (I=0 ; I < DEPTH ; I = I +1)
        begin
		 if(I==2)
          regArr[I] <= UART_Config ;
		 else if (I==3) 
          regArr[I] <= Div_Ratio ;
         else
          regArr[I] <= 'b0 ;		 
        end
     end
   else if (WrEn && !RdEn)
     begin
      regArr[Address] <= WrData ;
     end
   else if (RdEn && !WrEn)
     begin    
       RdData <= regArr[Address] ;
	   RdData_Valid <= 1'b1 ;
     end  
   else
     begin
	   RdData_Valid <= 1'b0 ;
     end	 
  end

assign REG0 = regArr[0] ;
assign REG1 = regArr[1] ;
assign REG2 = regArr[2] ;
assign REG3 = regArr[3] ;


    
endmodule
