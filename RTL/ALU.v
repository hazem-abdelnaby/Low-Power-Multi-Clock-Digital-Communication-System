module ALU #(
    parameter DATA_WIDTH =8,
              FUN_WIDTH =4
) (
    input CLK,
    input RST,
    input [DATA_WIDTH-1:0] A,B,
    input [FUN_WIDTH-1:0]  ALU_FUN,
    input Enable,                   
    output reg [(DATA_WIDTH*2)-1:0] ALU_OUT,
    output reg OUT_VALID
);
reg [(DATA_WIDTH*2)-1:0] ALU_OUT_INNER; 
reg OUT_VALID_INNER;
always @(*) 
begin
    ALU_OUT_INNER='b0;
    OUT_VALID_INNER=1'b0;
    if (Enable) 
    begin
        OUT_VALID_INNER=1'b1;
        case (ALU_FUN)
        4'b0000: ALU_OUT_INNER=A+B;
        4'b0001: ALU_OUT_INNER=A-B;
        4'b0010: ALU_OUT_INNER=A*B;
        4'b0011: ALU_OUT_INNER=A/B;
        4'b0100: ALU_OUT_INNER=A&B;
        4'b0101: ALU_OUT_INNER=A|B;
        4'b0110: ALU_OUT_INNER=~(A&B);
        4'b0111: ALU_OUT_INNER=~(A|B);
        4'b1000: ALU_OUT_INNER=A^B;
        4'b1001: ALU_OUT_INNER=~(A^B);
        4'b1010: begin
              if (A==B)
                 ALU_OUT_INNER = 'b1;
              else
                 ALU_OUT_INNER = 'b0;
              end
        4'b1011: begin
               if (A>B)
                 ALU_OUT_INNER = 'b10;
               else
                 ALU_OUT_INNER = 'b0;
              end 
        4'b1100: begin
               if (A<B)
                 ALU_OUT_INNER = 'b11;
               else
                 ALU_OUT_INNER = 'b0;
              end
        4'b1101: ALU_OUT_INNER = A>>1;
        4'b1110: ALU_OUT_INNER = A<<1;
        default: ALU_OUT_INNER = 'b0;
        endcase 
    end
    else
    begin
      OUT_VALID_INNER=1'b0;
    end   
end

always @(posedge CLK or negedge RST) begin
    if(!RST)
    begin
      ALU_OUT<='b0;
      OUT_VALID<=1'b0;
    end
    else
    begin
     ALU_OUT<=ALU_OUT_INNER;
     OUT_VALID<=OUT_VALID_INNER; 
    end
    
end

    
endmodule
