module MUX_2X1 (
    input  IN_0,
    input  IN_1,
    input  SEL,
    output OUT
);

assign OUT=(SEL)?IN_1:IN_0;
    
endmodule
