/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Wed Oct  7 00:45:57 2026
/////////////////////////////////////////////////////////////


module Clock_Gating ( CLK_EN, CLK, GATED_CLK );
  input CLK_EN, CLK;
  output GATED_CLK;


  TLATNCAX4M U0 ( .E(CLK_EN), .CK(CLK), .ECK(GATED_CLK) );
endmodule


module ALU_DW_div_uns_0 ( a, b, quotient, remainder, divide_by_0 );
  input [7:0] a;
  input [7:0] b;
  output [7:0] quotient;
  output [7:0] remainder;
  output divide_by_0;
  wire   \u_div/SumTmp[1][0] , \u_div/SumTmp[1][1] , \u_div/SumTmp[1][2] ,
         \u_div/SumTmp[1][3] , \u_div/SumTmp[1][4] , \u_div/SumTmp[1][5] ,
         \u_div/SumTmp[1][6] , \u_div/SumTmp[2][0] , \u_div/SumTmp[2][1] ,
         \u_div/SumTmp[2][2] , \u_div/SumTmp[2][3] , \u_div/SumTmp[2][4] ,
         \u_div/SumTmp[2][5] , \u_div/SumTmp[3][0] , \u_div/SumTmp[3][1] ,
         \u_div/SumTmp[3][2] , \u_div/SumTmp[3][3] , \u_div/SumTmp[3][4] ,
         \u_div/SumTmp[4][0] , \u_div/SumTmp[4][1] , \u_div/SumTmp[4][2] ,
         \u_div/SumTmp[4][3] , \u_div/SumTmp[5][0] , \u_div/SumTmp[5][1] ,
         \u_div/SumTmp[5][2] , \u_div/SumTmp[6][0] , \u_div/SumTmp[6][1] ,
         \u_div/SumTmp[7][0] , \u_div/CryTmp[0][1] , \u_div/CryTmp[0][2] ,
         \u_div/CryTmp[0][3] , \u_div/CryTmp[0][4] , \u_div/CryTmp[0][5] ,
         \u_div/CryTmp[0][6] , \u_div/CryTmp[0][7] , \u_div/CryTmp[1][1] ,
         \u_div/CryTmp[1][2] , \u_div/CryTmp[1][3] , \u_div/CryTmp[1][4] ,
         \u_div/CryTmp[1][5] , \u_div/CryTmp[1][6] , \u_div/CryTmp[1][7] ,
         \u_div/CryTmp[2][1] , \u_div/CryTmp[2][2] , \u_div/CryTmp[2][3] ,
         \u_div/CryTmp[2][4] , \u_div/CryTmp[2][5] , \u_div/CryTmp[2][6] ,
         \u_div/CryTmp[3][1] , \u_div/CryTmp[3][2] , \u_div/CryTmp[3][3] ,
         \u_div/CryTmp[3][4] , \u_div/CryTmp[3][5] , \u_div/CryTmp[4][1] ,
         \u_div/CryTmp[4][2] , \u_div/CryTmp[4][3] , \u_div/CryTmp[4][4] ,
         \u_div/CryTmp[5][1] , \u_div/CryTmp[5][2] , \u_div/CryTmp[5][3] ,
         \u_div/CryTmp[6][1] , \u_div/CryTmp[6][2] , \u_div/CryTmp[7][1] ,
         \u_div/PartRem[1][1] , \u_div/PartRem[1][2] , \u_div/PartRem[1][3] ,
         \u_div/PartRem[1][4] , \u_div/PartRem[1][5] , \u_div/PartRem[1][6] ,
         \u_div/PartRem[1][7] , \u_div/PartRem[2][1] , \u_div/PartRem[2][2] ,
         \u_div/PartRem[2][3] , \u_div/PartRem[2][4] , \u_div/PartRem[2][5] ,
         \u_div/PartRem[2][6] , \u_div/PartRem[3][1] , \u_div/PartRem[3][2] ,
         \u_div/PartRem[3][3] , \u_div/PartRem[3][4] , \u_div/PartRem[3][5] ,
         \u_div/PartRem[4][1] , \u_div/PartRem[4][2] , \u_div/PartRem[4][3] ,
         \u_div/PartRem[4][4] , \u_div/PartRem[5][1] , \u_div/PartRem[5][2] ,
         \u_div/PartRem[5][3] , \u_div/PartRem[6][1] , \u_div/PartRem[6][2] ,
         \u_div/PartRem[7][1] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21;

  ADDFX2M \u_div/u_fa_PartRem_0_2_5  ( .A(\u_div/PartRem[3][5] ), .B(n13), 
        .CI(\u_div/CryTmp[2][5] ), .CO(\u_div/CryTmp[2][6] ), .S(
        \u_div/SumTmp[2][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_3  ( .A(\u_div/PartRem[5][3] ), .B(n15), 
        .CI(\u_div/CryTmp[4][3] ), .CO(\u_div/CryTmp[4][4] ), .S(
        \u_div/SumTmp[4][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_2  ( .A(\u_div/PartRem[6][2] ), .B(n16), 
        .CI(\u_div/CryTmp[5][2] ), .CO(\u_div/CryTmp[5][3] ), .S(
        \u_div/SumTmp[5][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_6_1  ( .A(\u_div/PartRem[7][1] ), .B(n17), 
        .CI(\u_div/CryTmp[6][1] ), .CO(\u_div/CryTmp[6][2] ), .S(
        \u_div/SumTmp[6][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_4  ( .A(\u_div/PartRem[4][4] ), .B(n14), 
        .CI(\u_div/CryTmp[3][4] ), .CO(\u_div/CryTmp[3][5] ), .S(
        \u_div/SumTmp[3][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_6  ( .A(\u_div/PartRem[1][6] ), .B(n12), 
        .CI(\u_div/CryTmp[0][6] ), .CO(\u_div/CryTmp[0][7] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_7  ( .A(\u_div/PartRem[1][7] ), .B(n11), 
        .CI(\u_div/CryTmp[0][7] ), .CO(quotient[0]) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_1  ( .A(\u_div/PartRem[1][1] ), .B(n17), 
        .CI(\u_div/CryTmp[0][1] ), .CO(\u_div/CryTmp[0][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_1  ( .A(\u_div/PartRem[2][1] ), .B(n17), 
        .CI(\u_div/CryTmp[1][1] ), .CO(\u_div/CryTmp[1][2] ), .S(
        \u_div/SumTmp[1][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_1  ( .A(\u_div/PartRem[3][1] ), .B(n17), 
        .CI(\u_div/CryTmp[2][1] ), .CO(\u_div/CryTmp[2][2] ), .S(
        \u_div/SumTmp[2][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_1  ( .A(\u_div/PartRem[4][1] ), .B(n17), 
        .CI(\u_div/CryTmp[3][1] ), .CO(\u_div/CryTmp[3][2] ), .S(
        \u_div/SumTmp[3][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_1  ( .A(\u_div/PartRem[5][1] ), .B(n17), 
        .CI(\u_div/CryTmp[4][1] ), .CO(\u_div/CryTmp[4][2] ), .S(
        \u_div/SumTmp[4][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_1  ( .A(\u_div/PartRem[6][1] ), .B(n17), 
        .CI(\u_div/CryTmp[5][1] ), .CO(\u_div/CryTmp[5][2] ), .S(
        \u_div/SumTmp[5][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(n14), 
        .CI(\u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(n13), 
        .CI(\u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_5  ( .A(\u_div/PartRem[2][5] ), .B(n13), 
        .CI(\u_div/CryTmp[1][5] ), .CO(\u_div/CryTmp[1][6] ), .S(
        \u_div/SumTmp[1][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(n14), 
        .CI(\u_div/CryTmp[1][4] ), .CO(\u_div/CryTmp[1][5] ), .S(
        \u_div/SumTmp[1][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(n16), 
        .CI(\u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(n15), 
        .CI(\u_div/CryTmp[0][3] ), .CO(\u_div/CryTmp[0][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_4  ( .A(\u_div/PartRem[3][4] ), .B(n14), 
        .CI(\u_div/CryTmp[2][4] ), .CO(\u_div/CryTmp[2][5] ), .S(
        \u_div/SumTmp[2][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_3  ( .A(\u_div/PartRem[2][3] ), .B(n15), 
        .CI(\u_div/CryTmp[1][3] ), .CO(\u_div/CryTmp[1][4] ), .S(
        \u_div/SumTmp[1][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_3  ( .A(\u_div/PartRem[3][3] ), .B(n15), 
        .CI(\u_div/CryTmp[2][3] ), .CO(\u_div/CryTmp[2][4] ), .S(
        \u_div/SumTmp[2][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_2  ( .A(\u_div/PartRem[2][2] ), .B(n16), 
        .CI(\u_div/CryTmp[1][2] ), .CO(\u_div/CryTmp[1][3] ), .S(
        \u_div/SumTmp[1][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_3  ( .A(\u_div/PartRem[4][3] ), .B(n15), 
        .CI(\u_div/CryTmp[3][3] ), .CO(\u_div/CryTmp[3][4] ), .S(
        \u_div/SumTmp[3][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_2  ( .A(\u_div/PartRem[3][2] ), .B(n16), 
        .CI(\u_div/CryTmp[2][2] ), .CO(\u_div/CryTmp[2][3] ), .S(
        \u_div/SumTmp[2][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_2  ( .A(\u_div/PartRem[4][2] ), .B(n16), 
        .CI(\u_div/CryTmp[3][2] ), .CO(\u_div/CryTmp[3][3] ), .S(
        \u_div/SumTmp[3][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_2  ( .A(\u_div/PartRem[5][2] ), .B(n16), 
        .CI(\u_div/CryTmp[4][2] ), .CO(\u_div/CryTmp[4][3] ), .S(
        \u_div/SumTmp[4][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_6  ( .A(\u_div/PartRem[2][6] ), .B(n12), 
        .CI(\u_div/CryTmp[1][6] ), .CO(\u_div/CryTmp[1][7] ), .S(
        \u_div/SumTmp[1][6] ) );
  INVX2M U1 ( .A(b[0]), .Y(n18) );
  XNOR2X2M U2 ( .A(n18), .B(a[7]), .Y(\u_div/SumTmp[7][0] ) );
  XNOR2X2M U3 ( .A(n18), .B(a[6]), .Y(\u_div/SumTmp[6][0] ) );
  XNOR2X2M U4 ( .A(n18), .B(a[5]), .Y(\u_div/SumTmp[5][0] ) );
  XNOR2X2M U5 ( .A(n18), .B(a[4]), .Y(\u_div/SumTmp[4][0] ) );
  XNOR2X2M U6 ( .A(n18), .B(a[3]), .Y(\u_div/SumTmp[3][0] ) );
  XNOR2X2M U7 ( .A(n18), .B(a[2]), .Y(\u_div/SumTmp[2][0] ) );
  OR2X2M U8 ( .A(n18), .B(a[7]), .Y(\u_div/CryTmp[7][1] ) );
  NAND2X2M U9 ( .A(n3), .B(n4), .Y(\u_div/CryTmp[5][1] ) );
  INVX2M U10 ( .A(a[5]), .Y(n4) );
  INVX2M U11 ( .A(n18), .Y(n3) );
  NAND2X2M U12 ( .A(n5), .B(n6), .Y(\u_div/CryTmp[4][1] ) );
  INVX2M U13 ( .A(a[4]), .Y(n6) );
  INVX2M U14 ( .A(n18), .Y(n5) );
  NAND2X2M U15 ( .A(n5), .B(n7), .Y(\u_div/CryTmp[3][1] ) );
  INVX2M U16 ( .A(a[3]), .Y(n7) );
  NAND2X2M U17 ( .A(n5), .B(n8), .Y(\u_div/CryTmp[2][1] ) );
  INVX2M U18 ( .A(a[2]), .Y(n8) );
  NAND2X2M U19 ( .A(n5), .B(n9), .Y(\u_div/CryTmp[1][1] ) );
  INVX2M U20 ( .A(a[1]), .Y(n9) );
  NAND2X2M U21 ( .A(n5), .B(n10), .Y(\u_div/CryTmp[0][1] ) );
  INVX2M U22 ( .A(a[0]), .Y(n10) );
  NAND2X2M U23 ( .A(n1), .B(n2), .Y(\u_div/CryTmp[6][1] ) );
  INVX2M U24 ( .A(a[6]), .Y(n2) );
  INVX2M U25 ( .A(n18), .Y(n1) );
  XNOR2X2M U26 ( .A(n18), .B(a[1]), .Y(\u_div/SumTmp[1][0] ) );
  INVX2M U27 ( .A(b[6]), .Y(n12) );
  INVX2M U28 ( .A(b[1]), .Y(n17) );
  INVX2M U29 ( .A(b[2]), .Y(n16) );
  INVX2M U30 ( .A(b[3]), .Y(n15) );
  INVX2M U31 ( .A(b[4]), .Y(n14) );
  INVX2M U32 ( .A(b[5]), .Y(n13) );
  INVX2M U33 ( .A(b[7]), .Y(n11) );
  CLKMX2X2M U34 ( .A(\u_div/PartRem[2][6] ), .B(\u_div/SumTmp[1][6] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][7] ) );
  CLKMX2X2M U35 ( .A(\u_div/PartRem[3][5] ), .B(\u_div/SumTmp[2][5] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][6] ) );
  CLKMX2X2M U36 ( .A(\u_div/PartRem[4][4] ), .B(\u_div/SumTmp[3][4] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][5] ) );
  CLKMX2X2M U37 ( .A(\u_div/PartRem[5][3] ), .B(\u_div/SumTmp[4][3] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][4] ) );
  CLKMX2X2M U38 ( .A(\u_div/PartRem[6][2] ), .B(\u_div/SumTmp[5][2] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][3] ) );
  CLKMX2X2M U39 ( .A(\u_div/PartRem[7][1] ), .B(\u_div/SumTmp[6][1] ), .S0(
        quotient[6]), .Y(\u_div/PartRem[6][2] ) );
  CLKMX2X2M U40 ( .A(a[7]), .B(\u_div/SumTmp[7][0] ), .S0(quotient[7]), .Y(
        \u_div/PartRem[7][1] ) );
  CLKMX2X2M U41 ( .A(\u_div/PartRem[2][5] ), .B(\u_div/SumTmp[1][5] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][6] ) );
  CLKMX2X2M U42 ( .A(\u_div/PartRem[3][4] ), .B(\u_div/SumTmp[2][4] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][5] ) );
  CLKMX2X2M U43 ( .A(\u_div/PartRem[4][3] ), .B(\u_div/SumTmp[3][3] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][4] ) );
  CLKMX2X2M U44 ( .A(\u_div/PartRem[5][2] ), .B(\u_div/SumTmp[4][2] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][3] ) );
  CLKMX2X2M U45 ( .A(\u_div/PartRem[6][1] ), .B(\u_div/SumTmp[5][1] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][2] ) );
  CLKMX2X2M U46 ( .A(a[6]), .B(\u_div/SumTmp[6][0] ), .S0(quotient[6]), .Y(
        \u_div/PartRem[6][1] ) );
  CLKMX2X2M U47 ( .A(\u_div/PartRem[2][4] ), .B(\u_div/SumTmp[1][4] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][5] ) );
  CLKMX2X2M U48 ( .A(\u_div/PartRem[3][3] ), .B(\u_div/SumTmp[2][3] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][4] ) );
  CLKMX2X2M U49 ( .A(\u_div/PartRem[4][2] ), .B(\u_div/SumTmp[3][2] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][3] ) );
  CLKMX2X2M U50 ( .A(\u_div/PartRem[5][1] ), .B(\u_div/SumTmp[4][1] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][2] ) );
  CLKMX2X2M U51 ( .A(a[5]), .B(\u_div/SumTmp[5][0] ), .S0(quotient[5]), .Y(
        \u_div/PartRem[5][1] ) );
  CLKMX2X2M U52 ( .A(\u_div/PartRem[2][3] ), .B(\u_div/SumTmp[1][3] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][4] ) );
  CLKMX2X2M U53 ( .A(\u_div/PartRem[3][2] ), .B(\u_div/SumTmp[2][2] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][3] ) );
  CLKMX2X2M U54 ( .A(\u_div/PartRem[4][1] ), .B(\u_div/SumTmp[3][1] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][2] ) );
  CLKMX2X2M U55 ( .A(a[4]), .B(\u_div/SumTmp[4][0] ), .S0(quotient[4]), .Y(
        \u_div/PartRem[4][1] ) );
  CLKMX2X2M U56 ( .A(\u_div/PartRem[2][2] ), .B(\u_div/SumTmp[1][2] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][3] ) );
  CLKMX2X2M U57 ( .A(\u_div/PartRem[3][1] ), .B(\u_div/SumTmp[2][1] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][2] ) );
  CLKMX2X2M U58 ( .A(a[3]), .B(\u_div/SumTmp[3][0] ), .S0(quotient[3]), .Y(
        \u_div/PartRem[3][1] ) );
  CLKMX2X2M U59 ( .A(\u_div/PartRem[2][1] ), .B(\u_div/SumTmp[1][1] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][2] ) );
  CLKMX2X2M U60 ( .A(a[2]), .B(\u_div/SumTmp[2][0] ), .S0(quotient[2]), .Y(
        \u_div/PartRem[2][1] ) );
  CLKMX2X2M U61 ( .A(a[1]), .B(\u_div/SumTmp[1][0] ), .S0(quotient[1]), .Y(
        \u_div/PartRem[1][1] ) );
  AND4X1M U62 ( .A(\u_div/CryTmp[7][1] ), .B(n19), .C(n17), .D(n16), .Y(
        quotient[7]) );
  AND3X1M U63 ( .A(n19), .B(n16), .C(\u_div/CryTmp[6][2] ), .Y(quotient[6]) );
  AND2X1M U64 ( .A(\u_div/CryTmp[5][3] ), .B(n19), .Y(quotient[5]) );
  AND2X1M U65 ( .A(n20), .B(n15), .Y(n19) );
  AND2X1M U66 ( .A(\u_div/CryTmp[4][4] ), .B(n20), .Y(quotient[4]) );
  AND3X1M U67 ( .A(n21), .B(n14), .C(n13), .Y(n20) );
  AND3X1M U68 ( .A(n21), .B(n13), .C(\u_div/CryTmp[3][5] ), .Y(quotient[3]) );
  AND2X1M U69 ( .A(\u_div/CryTmp[2][6] ), .B(n21), .Y(quotient[2]) );
  NOR2X1M U70 ( .A(b[6]), .B(b[7]), .Y(n21) );
  AND2X1M U71 ( .A(\u_div/CryTmp[1][7] ), .B(n11), .Y(quotient[1]) );
endmodule


module ALU_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [9:0] carry;

  ADDFX2M U2_7 ( .A(A[7]), .B(n2), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFX2M U2_1 ( .A(A[1]), .B(n8), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX2M U2_5 ( .A(A[5]), .B(n4), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFX2M U2_4 ( .A(A[4]), .B(n5), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFX2M U2_3 ( .A(A[3]), .B(n6), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFX2M U2_2 ( .A(A[2]), .B(n7), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2M U2_6 ( .A(A[6]), .B(n3), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  INVX2M U1 ( .A(B[6]), .Y(n3) );
  XNOR2X2M U2 ( .A(n9), .B(A[0]), .Y(DIFF[0]) );
  INVX2M U3 ( .A(B[0]), .Y(n9) );
  INVX2M U4 ( .A(B[2]), .Y(n7) );
  INVX2M U5 ( .A(B[3]), .Y(n6) );
  INVX2M U6 ( .A(B[4]), .Y(n5) );
  INVX2M U7 ( .A(B[5]), .Y(n4) );
  INVX2M U8 ( .A(B[1]), .Y(n8) );
  NAND2X2M U9 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  INVX2M U10 ( .A(A[0]), .Y(n1) );
  INVX2M U11 ( .A(B[7]), .Y(n2) );
  CLKINVX1M U12 ( .A(carry[8]), .Y(DIFF[8]) );
endmodule


module ALU_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [8:1] carry;

  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  CLKXOR2X2M U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module ALU_DW01_add_1 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n1, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27;

  AOI21BX2M U2 ( .A0(n18), .A1(A[12]), .B0N(n19), .Y(n1) );
  NAND2X2M U3 ( .A(A[7]), .B(B[7]), .Y(n15) );
  XNOR2X2M U4 ( .A(B[13]), .B(n1), .Y(SUM[13]) );
  XNOR2X2M U5 ( .A(A[7]), .B(n8), .Y(SUM[7]) );
  INVX2M U6 ( .A(B[7]), .Y(n8) );
  INVX2M U7 ( .A(A[6]), .Y(n9) );
  INVX2M U8 ( .A(n9), .Y(SUM[6]) );
  BUFX2M U9 ( .A(A[0]), .Y(SUM[0]) );
  BUFX2M U10 ( .A(A[1]), .Y(SUM[1]) );
  BUFX2M U11 ( .A(A[2]), .Y(SUM[2]) );
  BUFX2M U12 ( .A(A[3]), .Y(SUM[3]) );
  BUFX2M U13 ( .A(A[4]), .Y(SUM[4]) );
  BUFX2M U14 ( .A(A[5]), .Y(SUM[5]) );
  XNOR2X1M U15 ( .A(n10), .B(n11), .Y(SUM[9]) );
  NOR2X1M U16 ( .A(n12), .B(n13), .Y(n11) );
  CLKXOR2X2M U17 ( .A(n14), .B(n15), .Y(SUM[8]) );
  NAND2BX1M U18 ( .AN(n16), .B(n17), .Y(n14) );
  OAI21X1M U19 ( .A0(A[12]), .A1(n18), .B0(B[12]), .Y(n19) );
  XOR3XLM U20 ( .A(B[12]), .B(A[12]), .C(n18), .Y(SUM[12]) );
  OAI21BX1M U21 ( .A0(n20), .A1(n21), .B0N(n22), .Y(n18) );
  XNOR2X1M U22 ( .A(n21), .B(n23), .Y(SUM[11]) );
  NOR2X1M U23 ( .A(n22), .B(n20), .Y(n23) );
  NOR2X1M U24 ( .A(B[11]), .B(A[11]), .Y(n20) );
  AND2X1M U25 ( .A(B[11]), .B(A[11]), .Y(n22) );
  OA21X1M U26 ( .A0(n24), .A1(n25), .B0(n26), .Y(n21) );
  CLKXOR2X2M U27 ( .A(n27), .B(n25), .Y(SUM[10]) );
  AOI2BB1X1M U28 ( .A0N(n10), .A1N(n13), .B0(n12), .Y(n25) );
  AND2X1M U29 ( .A(B[9]), .B(A[9]), .Y(n12) );
  NOR2X1M U30 ( .A(B[9]), .B(A[9]), .Y(n13) );
  OA21X1M U31 ( .A0(n15), .A1(n16), .B0(n17), .Y(n10) );
  CLKNAND2X2M U32 ( .A(B[8]), .B(A[8]), .Y(n17) );
  NOR2X1M U33 ( .A(B[8]), .B(A[8]), .Y(n16) );
  NAND2BX1M U34 ( .AN(n24), .B(n26), .Y(n27) );
  CLKNAND2X2M U35 ( .A(B[10]), .B(A[10]), .Y(n26) );
  NOR2X1M U36 ( .A(B[10]), .B(A[10]), .Y(n24) );
endmodule


module ALU_DW02_mult_0 ( A, B, TC, PRODUCT );
  input [7:0] A;
  input [7:0] B;
  output [15:0] PRODUCT;
  input TC;
  wire   \ab[7][7] , \ab[7][6] , \ab[7][5] , \ab[7][4] , \ab[7][3] ,
         \ab[7][2] , \ab[7][1] , \ab[7][0] , \ab[6][7] , \ab[6][6] ,
         \ab[6][5] , \ab[6][4] , \ab[6][3] , \ab[6][2] , \ab[6][1] ,
         \ab[6][0] , \ab[5][7] , \ab[5][6] , \ab[5][5] , \ab[5][4] ,
         \ab[5][3] , \ab[5][2] , \ab[5][1] , \ab[5][0] , \ab[4][7] ,
         \ab[4][6] , \ab[4][5] , \ab[4][4] , \ab[4][3] , \ab[4][2] ,
         \ab[4][1] , \ab[4][0] , \ab[3][7] , \ab[3][6] , \ab[3][5] ,
         \ab[3][4] , \ab[3][3] , \ab[3][2] , \ab[3][1] , \ab[3][0] ,
         \ab[2][7] , \ab[2][6] , \ab[2][5] , \ab[2][4] , \ab[2][3] ,
         \ab[2][2] , \ab[2][1] , \ab[2][0] , \ab[1][7] , \ab[1][6] ,
         \ab[1][5] , \ab[1][4] , \ab[1][3] , \ab[1][2] , \ab[1][1] ,
         \ab[1][0] , \ab[0][7] , \ab[0][6] , \ab[0][5] , \ab[0][4] ,
         \ab[0][3] , \ab[0][2] , \ab[0][1] , \CARRYB[7][6] , \CARRYB[7][5] ,
         \CARRYB[7][4] , \CARRYB[7][3] , \CARRYB[7][2] , \CARRYB[7][1] ,
         \CARRYB[7][0] , \CARRYB[6][6] , \CARRYB[6][5] , \CARRYB[6][4] ,
         \CARRYB[6][3] , \CARRYB[6][2] , \CARRYB[6][1] , \CARRYB[6][0] ,
         \CARRYB[5][6] , \CARRYB[5][5] , \CARRYB[5][4] , \CARRYB[5][3] ,
         \CARRYB[5][2] , \CARRYB[5][1] , \CARRYB[5][0] , \CARRYB[4][6] ,
         \CARRYB[4][5] , \CARRYB[4][4] , \CARRYB[4][3] , \CARRYB[4][2] ,
         \CARRYB[4][1] , \CARRYB[4][0] , \CARRYB[3][6] , \CARRYB[3][5] ,
         \CARRYB[3][4] , \CARRYB[3][3] , \CARRYB[3][2] , \CARRYB[3][1] ,
         \CARRYB[3][0] , \CARRYB[2][6] , \CARRYB[2][5] , \CARRYB[2][4] ,
         \CARRYB[2][3] , \CARRYB[2][2] , \CARRYB[2][1] , \CARRYB[2][0] ,
         \SUMB[7][6] , \SUMB[7][5] , \SUMB[7][4] , \SUMB[7][3] , \SUMB[7][2] ,
         \SUMB[7][1] , \SUMB[7][0] , \SUMB[6][6] , \SUMB[6][5] , \SUMB[6][4] ,
         \SUMB[6][3] , \SUMB[6][2] , \SUMB[6][1] , \SUMB[5][6] , \SUMB[5][5] ,
         \SUMB[5][4] , \SUMB[5][3] , \SUMB[5][2] , \SUMB[5][1] , \SUMB[4][6] ,
         \SUMB[4][5] , \SUMB[4][4] , \SUMB[4][3] , \SUMB[4][2] , \SUMB[4][1] ,
         \SUMB[3][6] , \SUMB[3][5] , \SUMB[3][4] , \SUMB[3][3] , \SUMB[3][2] ,
         \SUMB[3][1] , \SUMB[2][6] , \SUMB[2][5] , \SUMB[2][4] , \SUMB[2][3] ,
         \SUMB[2][2] , \SUMB[2][1] , \SUMB[1][6] , \SUMB[1][5] , \SUMB[1][4] ,
         \SUMB[1][3] , \SUMB[1][2] , \SUMB[1][1] , \A1[12] , \A1[11] ,
         \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , \A1[4] , \A1[3] ,
         \A1[2] , \A1[1] , \A1[0] , n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39;

  ALU_DW01_add_1 FS_1 ( .A({1'b0, \A1[12] , \A1[11] , \A1[10] , \A1[9] , 
        \A1[8] , \A1[7] , \A1[6] , \SUMB[7][0] , \A1[4] , \A1[3] , \A1[2] , 
        \A1[1] , \A1[0] }), .B({n10, n16, n14, n13, n15, n11, n12, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(PRODUCT[15:2]) );
  ADDFX2M S5_6 ( .A(\ab[7][6] ), .B(\CARRYB[6][6] ), .CI(\ab[6][7] ), .CO(
        \CARRYB[7][6] ), .S(\SUMB[7][6] ) );
  ADDFX2M S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(\SUMB[5][1] ), .CO(
        \CARRYB[6][0] ), .S(\A1[4] ) );
  ADDFX2M S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .CI(\SUMB[4][1] ), .CO(
        \CARRYB[5][0] ), .S(\A1[3] ) );
  ADDFX2M S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(\A1[2] ) );
  ADDFX2M S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(\A1[1] ) );
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(n9), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(\A1[0] ) );
  ADDFX2M S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .CI(\ab[5][7] ), .CO(
        \CARRYB[6][6] ), .S(\SUMB[6][6] ) );
  ADDFX2M S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .CI(\SUMB[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  ADDFX2M S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .CI(\ab[4][7] ), .CO(
        \CARRYB[5][6] ), .S(\SUMB[5][6] ) );
  ADDFX2M S3_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .CI(\ab[3][7] ), .CO(
        \CARRYB[4][6] ), .S(\SUMB[4][6] ) );
  ADDFX2M S4_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\SUMB[7][0] ) );
  ADDFX2M S4_5 ( .A(\ab[7][5] ), .B(\CARRYB[6][5] ), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  ADDFX2M S4_4 ( .A(\ab[7][4] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  ADDFX2M S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .CI(\SUMB[5][3] ), .CO(
        \CARRYB[6][2] ), .S(\SUMB[6][2] ) );
  ADDFX2M S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .CI(\SUMB[4][4] ), .CO(
        \CARRYB[5][3] ), .S(\SUMB[5][3] ) );
  ADDFX2M S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .CI(\SUMB[5][2] ), .CO(
        \CARRYB[6][1] ), .S(\SUMB[6][1] ) );
  ADDFX2M S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[4][4] ), .S(\SUMB[4][4] ) );
  ADDFX2M S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  ADDFX2M S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .CI(\SUMB[4][3] ), .CO(
        \CARRYB[5][2] ), .S(\SUMB[5][2] ) );
  ADDFX2M S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .CI(\SUMB[2][6] ), .CO(
        \CARRYB[3][5] ), .S(\SUMB[3][5] ) );
  ADDFX2M S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  ADDFX2M S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  ADDFX2M S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  ADDFX2M S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  ADDFX2M S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[3][4] ), .S(\SUMB[3][4] ) );
  ADDFX2M S2_2_1 ( .A(\ab[2][1] ), .B(n5), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  ADDFX2M S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .CI(\SUMB[5][5] ), .CO(
        \CARRYB[6][4] ), .S(\SUMB[6][4] ) );
  ADDFX2M S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .CI(\SUMB[4][6] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  ADDFX2M S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .CI(\SUMB[5][4] ), .CO(
        \CARRYB[6][3] ), .S(\SUMB[6][3] ) );
  ADDFX2M S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .CI(\SUMB[4][5] ), .CO(
        \CARRYB[5][4] ), .S(\SUMB[5][4] ) );
  ADDFX2M S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .CI(\SUMB[3][6] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  ADDFX2M S3_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .CI(\ab[2][7] ), .CO(
        \CARRYB[3][6] ), .S(\SUMB[3][6] ) );
  ADDFX2M S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .CI(\SUMB[3][4] ), .CO(
        \CARRYB[4][3] ), .S(\SUMB[4][3] ) );
  ADDFX2M S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  ADDFX2M S3_2_6 ( .A(\ab[2][6] ), .B(n8), .CI(\ab[1][7] ), .CO(\CARRYB[2][6] ), .S(\SUMB[2][6] ) );
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n4), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n7), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  ADDFX2M S2_2_5 ( .A(\ab[2][5] ), .B(n6), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  ADDFX2M S4_1 ( .A(\ab[7][1] ), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  ADDFX2M S4_3 ( .A(\ab[7][3] ), .B(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  ADDFX2M S4_2 ( .A(\ab[7][2] ), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n3), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  AND2X2M U2 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n3) );
  AND2X2M U3 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n4) );
  AND2X2M U4 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n5) );
  AND2X2M U5 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n6) );
  AND2X2M U6 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n7) );
  AND2X2M U7 ( .A(\ab[0][7] ), .B(\ab[1][6] ), .Y(n8) );
  AND2X2M U8 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Y(n9) );
  AND2X2M U9 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(n10) );
  INVX2M U10 ( .A(\ab[0][6] ), .Y(n22) );
  CLKXOR2X2M U11 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(\A1[7] ) );
  CLKXOR2X2M U12 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(\A1[8] ) );
  INVX2M U13 ( .A(\ab[0][7] ), .Y(n23) );
  INVX2M U14 ( .A(\ab[0][5] ), .Y(n21) );
  INVX2M U15 ( .A(\ab[0][4] ), .Y(n20) );
  INVX2M U16 ( .A(\ab[0][3] ), .Y(n19) );
  AND2X2M U17 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(n11) );
  AND2X2M U18 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(n12) );
  CLKXOR2X2M U19 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(\A1[10] ) );
  CLKXOR2X2M U20 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(\A1[11] ) );
  INVX2M U21 ( .A(\ab[0][2] ), .Y(n18) );
  AND2X2M U22 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(n13) );
  AND2X2M U23 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(n14) );
  CLKXOR2X2M U24 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(\A1[9] ) );
  AND2X2M U25 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(n15) );
  CLKXOR2X2M U26 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(\A1[12] ) );
  XNOR2X2M U27 ( .A(\CARRYB[7][0] ), .B(n17), .Y(\A1[6] ) );
  INVX2M U28 ( .A(\SUMB[7][1] ), .Y(n17) );
  AND2X2M U29 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(n16) );
  CLKXOR2X2M U30 ( .A(\ab[1][0] ), .B(\ab[0][1] ), .Y(PRODUCT[1]) );
  XNOR2X2M U31 ( .A(\ab[1][3] ), .B(n20), .Y(\SUMB[1][3] ) );
  XNOR2X2M U32 ( .A(\ab[1][6] ), .B(n23), .Y(\SUMB[1][6] ) );
  XNOR2X2M U33 ( .A(\ab[1][5] ), .B(n22), .Y(\SUMB[1][5] ) );
  XNOR2X2M U34 ( .A(\ab[1][4] ), .B(n21), .Y(\SUMB[1][4] ) );
  XNOR2X2M U35 ( .A(\ab[1][2] ), .B(n19), .Y(\SUMB[1][2] ) );
  INVX2M U36 ( .A(A[1]), .Y(n38) );
  INVX2M U37 ( .A(A[0]), .Y(n39) );
  INVX2M U38 ( .A(B[6]), .Y(n25) );
  XNOR2X2M U39 ( .A(\ab[1][1] ), .B(n18), .Y(\SUMB[1][1] ) );
  INVX2M U40 ( .A(A[3]), .Y(n36) );
  INVX2M U41 ( .A(A[2]), .Y(n37) );
  INVX2M U42 ( .A(A[4]), .Y(n35) );
  INVX2M U43 ( .A(A[7]), .Y(n32) );
  INVX2M U44 ( .A(A[6]), .Y(n33) );
  INVX2M U45 ( .A(A[5]), .Y(n34) );
  INVX2M U46 ( .A(B[3]), .Y(n28) );
  INVX2M U47 ( .A(B[7]), .Y(n24) );
  INVX2M U48 ( .A(B[4]), .Y(n27) );
  INVX2M U49 ( .A(B[5]), .Y(n26) );
  INVX2M U50 ( .A(B[0]), .Y(n31) );
  INVX2M U51 ( .A(B[2]), .Y(n29) );
  INVX2M U52 ( .A(B[1]), .Y(n30) );
  NOR2X1M U54 ( .A(n32), .B(n24), .Y(\ab[7][7] ) );
  NOR2X1M U55 ( .A(n32), .B(n25), .Y(\ab[7][6] ) );
  NOR2X1M U56 ( .A(n32), .B(n26), .Y(\ab[7][5] ) );
  NOR2X1M U57 ( .A(n32), .B(n27), .Y(\ab[7][4] ) );
  NOR2X1M U58 ( .A(n32), .B(n28), .Y(\ab[7][3] ) );
  NOR2X1M U59 ( .A(n32), .B(n29), .Y(\ab[7][2] ) );
  NOR2X1M U60 ( .A(n32), .B(n30), .Y(\ab[7][1] ) );
  NOR2X1M U61 ( .A(n32), .B(n31), .Y(\ab[7][0] ) );
  NOR2X1M U62 ( .A(n24), .B(n33), .Y(\ab[6][7] ) );
  NOR2X1M U63 ( .A(n25), .B(n33), .Y(\ab[6][6] ) );
  NOR2X1M U64 ( .A(n26), .B(n33), .Y(\ab[6][5] ) );
  NOR2X1M U65 ( .A(n27), .B(n33), .Y(\ab[6][4] ) );
  NOR2X1M U66 ( .A(n28), .B(n33), .Y(\ab[6][3] ) );
  NOR2X1M U67 ( .A(n29), .B(n33), .Y(\ab[6][2] ) );
  NOR2X1M U68 ( .A(n30), .B(n33), .Y(\ab[6][1] ) );
  NOR2X1M U69 ( .A(n31), .B(n33), .Y(\ab[6][0] ) );
  NOR2X1M U70 ( .A(n24), .B(n34), .Y(\ab[5][7] ) );
  NOR2X1M U71 ( .A(n25), .B(n34), .Y(\ab[5][6] ) );
  NOR2X1M U72 ( .A(n26), .B(n34), .Y(\ab[5][5] ) );
  NOR2X1M U73 ( .A(n27), .B(n34), .Y(\ab[5][4] ) );
  NOR2X1M U74 ( .A(n28), .B(n34), .Y(\ab[5][3] ) );
  NOR2X1M U75 ( .A(n29), .B(n34), .Y(\ab[5][2] ) );
  NOR2X1M U76 ( .A(n30), .B(n34), .Y(\ab[5][1] ) );
  NOR2X1M U77 ( .A(n31), .B(n34), .Y(\ab[5][0] ) );
  NOR2X1M U78 ( .A(n24), .B(n35), .Y(\ab[4][7] ) );
  NOR2X1M U79 ( .A(n25), .B(n35), .Y(\ab[4][6] ) );
  NOR2X1M U80 ( .A(n26), .B(n35), .Y(\ab[4][5] ) );
  NOR2X1M U81 ( .A(n27), .B(n35), .Y(\ab[4][4] ) );
  NOR2X1M U82 ( .A(n28), .B(n35), .Y(\ab[4][3] ) );
  NOR2X1M U83 ( .A(n29), .B(n35), .Y(\ab[4][2] ) );
  NOR2X1M U84 ( .A(n30), .B(n35), .Y(\ab[4][1] ) );
  NOR2X1M U85 ( .A(n31), .B(n35), .Y(\ab[4][0] ) );
  NOR2X1M U86 ( .A(n24), .B(n36), .Y(\ab[3][7] ) );
  NOR2X1M U87 ( .A(n25), .B(n36), .Y(\ab[3][6] ) );
  NOR2X1M U88 ( .A(n26), .B(n36), .Y(\ab[3][5] ) );
  NOR2X1M U89 ( .A(n27), .B(n36), .Y(\ab[3][4] ) );
  NOR2X1M U90 ( .A(n28), .B(n36), .Y(\ab[3][3] ) );
  NOR2X1M U91 ( .A(n29), .B(n36), .Y(\ab[3][2] ) );
  NOR2X1M U92 ( .A(n30), .B(n36), .Y(\ab[3][1] ) );
  NOR2X1M U93 ( .A(n31), .B(n36), .Y(\ab[3][0] ) );
  NOR2X1M U94 ( .A(n24), .B(n37), .Y(\ab[2][7] ) );
  NOR2X1M U95 ( .A(n25), .B(n37), .Y(\ab[2][6] ) );
  NOR2X1M U96 ( .A(n26), .B(n37), .Y(\ab[2][5] ) );
  NOR2X1M U97 ( .A(n27), .B(n37), .Y(\ab[2][4] ) );
  NOR2X1M U98 ( .A(n28), .B(n37), .Y(\ab[2][3] ) );
  NOR2X1M U99 ( .A(n29), .B(n37), .Y(\ab[2][2] ) );
  NOR2X1M U100 ( .A(n30), .B(n37), .Y(\ab[2][1] ) );
  NOR2X1M U101 ( .A(n31), .B(n37), .Y(\ab[2][0] ) );
  NOR2X1M U102 ( .A(n24), .B(n38), .Y(\ab[1][7] ) );
  NOR2X1M U103 ( .A(n25), .B(n38), .Y(\ab[1][6] ) );
  NOR2X1M U104 ( .A(n26), .B(n38), .Y(\ab[1][5] ) );
  NOR2X1M U105 ( .A(n27), .B(n38), .Y(\ab[1][4] ) );
  NOR2X1M U106 ( .A(n28), .B(n38), .Y(\ab[1][3] ) );
  NOR2X1M U107 ( .A(n29), .B(n38), .Y(\ab[1][2] ) );
  NOR2X1M U108 ( .A(n30), .B(n38), .Y(\ab[1][1] ) );
  NOR2X1M U109 ( .A(n31), .B(n38), .Y(\ab[1][0] ) );
  NOR2X1M U110 ( .A(n24), .B(n39), .Y(\ab[0][7] ) );
  NOR2X1M U111 ( .A(n25), .B(n39), .Y(\ab[0][6] ) );
  NOR2X1M U112 ( .A(n26), .B(n39), .Y(\ab[0][5] ) );
  NOR2X1M U113 ( .A(n27), .B(n39), .Y(\ab[0][4] ) );
  NOR2X1M U114 ( .A(n28), .B(n39), .Y(\ab[0][3] ) );
  NOR2X1M U115 ( .A(n29), .B(n39), .Y(\ab[0][2] ) );
  NOR2X1M U116 ( .A(n30), .B(n39), .Y(\ab[0][1] ) );
  NOR2X1M U117 ( .A(n31), .B(n39), .Y(PRODUCT[0]) );
endmodule


module ALU ( CLK, RST, A, B, ALU_FUN, Enable, ALU_OUT, OUT_VALID );
  input [7:0] A;
  input [7:0] B;
  input [3:0] ALU_FUN;
  output [15:0] ALU_OUT;
  input CLK, RST, Enable;
  output OUT_VALID;
  wire   N90, N91, N92, N93, N94, N95, N96, N97, N98, N99, N100, N101, N102,
         N103, N104, N105, N106, N107, N108, N109, N110, N111, N112, N113,
         N114, N115, N116, N117, N118, N119, N120, N121, N122, N123, N124,
         N125, N126, N127, N128, N129, N130, N131, N156, N157, N158, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140;
  wire   [15:0] ALU_OUT_INNER;

  ALU_DW_div_uns_0 div_26 ( .a({n12, n11, n10, n9, n8, n7, n6, n5}), .b({B[7], 
        n4, B[5:0]}), .quotient({N131, N130, N129, N128, N127, N126, N125, 
        N124}) );
  ALU_DW01_sub_0 sub_24 ( .A({1'b0, n12, n11, n10, n9, n8, n7, n6, n5}), .B({
        1'b0, B[7], n4, B[5:0]}), .CI(1'b0), .DIFF({N107, N106, N105, N104, 
        N103, N102, N101, N100, N99}) );
  ALU_DW01_add_0 add_23 ( .A({1'b0, n12, n11, n10, n9, n8, n7, n6, n5}), .B({
        1'b0, B[7], n4, B[5:0]}), .CI(1'b0), .SUM({N98, N97, N96, N95, N94, 
        N93, N92, N91, N90}) );
  ALU_DW02_mult_0 mult_25 ( .A({n12, n11, n10, n9, n8, n7, n6, n5}), .B({B[7], 
        n4, B[5:0]}), .TC(1'b0), .PRODUCT({N123, N122, N121, N120, N119, N118, 
        N117, N116, N115, N114, N113, N112, N111, N110, N109, N108}) );
  DFFRQX2M \ALU_OUT_reg[7]  ( .D(ALU_OUT_INNER[7]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[7]) );
  DFFRQX2M \ALU_OUT_reg[6]  ( .D(ALU_OUT_INNER[6]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[6]) );
  DFFRQX2M \ALU_OUT_reg[5]  ( .D(ALU_OUT_INNER[5]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[5]) );
  DFFRQX2M \ALU_OUT_reg[4]  ( .D(ALU_OUT_INNER[4]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[4]) );
  DFFRQX2M \ALU_OUT_reg[3]  ( .D(ALU_OUT_INNER[3]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[3]) );
  DFFRQX2M \ALU_OUT_reg[2]  ( .D(ALU_OUT_INNER[2]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[2]) );
  DFFRQX2M \ALU_OUT_reg[1]  ( .D(ALU_OUT_INNER[1]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[1]) );
  DFFRQX2M \ALU_OUT_reg[0]  ( .D(ALU_OUT_INNER[0]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[0]) );
  DFFRQX2M \ALU_OUT_reg[15]  ( .D(ALU_OUT_INNER[15]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[15]) );
  DFFRQX2M \ALU_OUT_reg[14]  ( .D(ALU_OUT_INNER[14]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[14]) );
  DFFRQX2M \ALU_OUT_reg[13]  ( .D(ALU_OUT_INNER[13]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[13]) );
  DFFRQX2M \ALU_OUT_reg[12]  ( .D(ALU_OUT_INNER[12]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[12]) );
  DFFRQX2M \ALU_OUT_reg[11]  ( .D(ALU_OUT_INNER[11]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[11]) );
  DFFRQX2M \ALU_OUT_reg[10]  ( .D(ALU_OUT_INNER[10]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[10]) );
  DFFRQX2M \ALU_OUT_reg[9]  ( .D(ALU_OUT_INNER[9]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[9]) );
  DFFRQX2M \ALU_OUT_reg[8]  ( .D(ALU_OUT_INNER[8]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[8]) );
  DFFRQX2M OUT_VALID_reg ( .D(Enable), .CK(CLK), .RN(RST), .Q(OUT_VALID) );
  NOR3BX2M U3 ( .AN(n105), .B(n128), .C(ALU_FUN[2]), .Y(n49) );
  NOR3X2M U4 ( .A(n125), .B(ALU_FUN[2]), .C(n128), .Y(n35) );
  BUFX2M U7 ( .A(A[6]), .Y(n11) );
  OAI2BB1X2M U8 ( .A0N(N123), .A1N(n31), .B0(n32), .Y(ALU_OUT_INNER[15]) );
  OAI2BB1X2M U9 ( .A0N(N122), .A1N(n31), .B0(n32), .Y(ALU_OUT_INNER[14]) );
  OAI2BB1X2M U10 ( .A0N(N120), .A1N(n31), .B0(n32), .Y(ALU_OUT_INNER[12]) );
  OAI2BB1X2M U11 ( .A0N(N121), .A1N(n31), .B0(n32), .Y(ALU_OUT_INNER[13]) );
  OAI2BB1X2M U12 ( .A0N(N117), .A1N(n31), .B0(n32), .Y(ALU_OUT_INNER[9]) );
  OAI2BB1X2M U13 ( .A0N(N118), .A1N(n31), .B0(n32), .Y(ALU_OUT_INNER[10]) );
  OAI2BB1X2M U14 ( .A0N(N119), .A1N(n31), .B0(n32), .Y(ALU_OUT_INNER[11]) );
  INVX2M U15 ( .A(Enable), .Y(n124) );
  OAI2BB1X2M U16 ( .A0N(n127), .A1N(n105), .B0(n101), .Y(n47) );
  OAI2BB1X2M U17 ( .A0N(n100), .A1N(n99), .B0(n101), .Y(n48) );
  NOR2BX2M U18 ( .AN(n106), .B(n125), .Y(n37) );
  AND2X2M U19 ( .A(n99), .B(n105), .Y(n42) );
  NOR2BX2M U20 ( .AN(n35), .B(n124), .Y(n31) );
  NAND2X2M U21 ( .A(Enable), .B(n123), .Y(n32) );
  AND2X2M U22 ( .A(n106), .B(n105), .Y(n50) );
  BUFX2M U23 ( .A(n41), .Y(n13) );
  NOR2X2M U24 ( .A(n107), .B(n125), .Y(n41) );
  INVX2M U25 ( .A(n100), .Y(n125) );
  INVX2M U26 ( .A(n91), .Y(n126) );
  INVX2M U27 ( .A(n107), .Y(n127) );
  AOI31X2M U28 ( .A0(n93), .A1(n94), .A2(n95), .B0(n124), .Y(ALU_OUT_INNER[0])
         );
  AOI22X1M U29 ( .A0(N99), .A1(n50), .B0(N90), .B1(n37), .Y(n93) );
  AOI211X2M U30 ( .A0(n13), .A1(n140), .B0(n96), .C0(n97), .Y(n95) );
  AOI222X1M U31 ( .A0(N108), .A1(n35), .B0(n5), .B1(n42), .C0(N124), .C1(n49), 
        .Y(n94) );
  AOI31X2M U32 ( .A0(n81), .A1(n82), .A2(n83), .B0(n124), .Y(ALU_OUT_INNER[1])
         );
  AOI222X1M U33 ( .A0(N91), .A1(n37), .B0(N109), .B1(n35), .C0(N100), .C1(n50), 
        .Y(n81) );
  AOI211X2M U34 ( .A0(n7), .A1(n126), .B0(n84), .C0(n85), .Y(n83) );
  AOI222X1M U35 ( .A0(N125), .A1(n49), .B0(n13), .B1(n139), .C0(n6), .C1(n42), 
        .Y(n82) );
  AOI31X2M U36 ( .A0(n75), .A1(n76), .A2(n77), .B0(n124), .Y(ALU_OUT_INNER[2])
         );
  AOI22X1M U37 ( .A0(N101), .A1(n50), .B0(N92), .B1(n37), .Y(n75) );
  AOI221XLM U38 ( .A0(n8), .A1(n126), .B0(n13), .B1(n138), .C0(n78), .Y(n77)
         );
  AOI222X1M U39 ( .A0(N110), .A1(n35), .B0(n7), .B1(n42), .C0(N126), .C1(n49), 
        .Y(n76) );
  AOI31X2M U40 ( .A0(n69), .A1(n70), .A2(n71), .B0(n124), .Y(ALU_OUT_INNER[3])
         );
  AOI22X1M U41 ( .A0(N102), .A1(n50), .B0(N93), .B1(n37), .Y(n69) );
  AOI221XLM U42 ( .A0(n9), .A1(n126), .B0(n13), .B1(n137), .C0(n72), .Y(n71)
         );
  AOI222X1M U43 ( .A0(N111), .A1(n35), .B0(n8), .B1(n42), .C0(N127), .C1(n49), 
        .Y(n70) );
  AOI31X2M U44 ( .A0(n63), .A1(n64), .A2(n65), .B0(n124), .Y(ALU_OUT_INNER[4])
         );
  AOI22X1M U45 ( .A0(N103), .A1(n50), .B0(N94), .B1(n37), .Y(n63) );
  AOI221XLM U46 ( .A0(n126), .A1(n10), .B0(n13), .B1(n136), .C0(n66), .Y(n65)
         );
  AOI222X1M U47 ( .A0(N112), .A1(n35), .B0(n9), .B1(n42), .C0(N128), .C1(n49), 
        .Y(n64) );
  AOI31X2M U48 ( .A0(n57), .A1(n58), .A2(n59), .B0(n124), .Y(ALU_OUT_INNER[5])
         );
  AOI22X1M U49 ( .A0(N104), .A1(n50), .B0(N95), .B1(n37), .Y(n57) );
  AOI221XLM U50 ( .A0(n126), .A1(n11), .B0(n13), .B1(n135), .C0(n60), .Y(n59)
         );
  AOI222X1M U51 ( .A0(N113), .A1(n35), .B0(n10), .B1(n42), .C0(N129), .C1(n49), 
        .Y(n58) );
  AOI31X2M U52 ( .A0(n51), .A1(n52), .A2(n53), .B0(n124), .Y(ALU_OUT_INNER[6])
         );
  AOI22X1M U53 ( .A0(N105), .A1(n50), .B0(N96), .B1(n37), .Y(n51) );
  AOI221XLM U54 ( .A0(n126), .A1(n12), .B0(n13), .B1(n134), .C0(n54), .Y(n53)
         );
  AOI222X1M U55 ( .A0(N114), .A1(n35), .B0(n42), .B1(n11), .C0(N130), .C1(n49), 
        .Y(n52) );
  AOI31X2M U56 ( .A0(n38), .A1(n39), .A2(n40), .B0(n124), .Y(ALU_OUT_INNER[7])
         );
  AOI22X1M U57 ( .A0(N106), .A1(n50), .B0(N97), .B1(n37), .Y(n38) );
  AOI221XLM U58 ( .A0(n13), .A1(n133), .B0(n42), .B1(n12), .C0(n43), .Y(n40)
         );
  AOI22X1M U59 ( .A0(N131), .A1(n49), .B0(N115), .B1(n35), .Y(n39) );
  AOI21X2M U60 ( .A0(n33), .A1(n34), .B0(n124), .Y(ALU_OUT_INNER[8]) );
  AOI21X2M U61 ( .A0(N98), .A1(n37), .B0(n123), .Y(n33) );
  AOI2BB2XLM U62 ( .B0(N116), .B1(n35), .A0N(n133), .A1N(n36), .Y(n34) );
  OAI222X1M U63 ( .A0(n55), .A1(n122), .B0(n4), .B1(n56), .C0(n36), .C1(n135), 
        .Y(n54) );
  AOI221XLM U64 ( .A0(n11), .A1(n46), .B0(n47), .B1(n134), .C0(n13), .Y(n56)
         );
  AOI221XLM U65 ( .A0(n46), .A1(n134), .B0(n11), .B1(n48), .C0(n42), .Y(n55)
         );
  NOR2X2M U66 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n106) );
  AND3X2M U67 ( .A(n106), .B(n129), .C(n3), .Y(n46) );
  INVX2M U68 ( .A(n4), .Y(n122) );
  NAND3X2M U69 ( .A(n127), .B(n129), .C(n3), .Y(n36) );
  NAND2X2M U70 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n107) );
  INVX2M U71 ( .A(ALU_FUN[0]), .Y(n129) );
  NOR2X2M U72 ( .A(n129), .B(n3), .Y(n105) );
  NOR2X2M U73 ( .A(n3), .B(ALU_FUN[0]), .Y(n100) );
  NAND3X2M U74 ( .A(n3), .B(ALU_FUN[0]), .C(n99), .Y(n91) );
  INVX2M U75 ( .A(n92), .Y(n123) );
  AOI211X2M U76 ( .A0(N107), .A1(n50), .B0(n13), .C0(n47), .Y(n92) );
  INVX2M U77 ( .A(ALU_FUN[1]), .Y(n128) );
  NAND3X2M U78 ( .A(n106), .B(ALU_FUN[0]), .C(n3), .Y(n101) );
  AND2X2M U79 ( .A(ALU_FUN[2]), .B(n128), .Y(n99) );
  AND4X2M U80 ( .A(N158), .B(n99), .C(n3), .D(n129), .Y(n90) );
  INVX2M U81 ( .A(n6), .Y(n139) );
  INVX2M U82 ( .A(n5), .Y(n140) );
  INVX2M U83 ( .A(n11), .Y(n134) );
  INVX2M U84 ( .A(n12), .Y(n133) );
  INVX2M U85 ( .A(n8), .Y(n137) );
  INVX2M U86 ( .A(n7), .Y(n138) );
  INVX2M U87 ( .A(n10), .Y(n135) );
  INVX2M U88 ( .A(n9), .Y(n136) );
  BUFX2M U89 ( .A(B[6]), .Y(n4) );
  BUFX2M U90 ( .A(A[7]), .Y(n12) );
  BUFX2M U91 ( .A(A[5]), .Y(n10) );
  BUFX2M U92 ( .A(A[4]), .Y(n9) );
  BUFX2M U93 ( .A(A[3]), .Y(n8) );
  BUFX2M U94 ( .A(A[2]), .Y(n7) );
  BUFX2M U95 ( .A(A[1]), .Y(n6) );
  BUFX2M U96 ( .A(A[0]), .Y(n5) );
  INVX2M U97 ( .A(n25), .Y(n120) );
  OAI222X1M U98 ( .A0(n79), .A1(n119), .B0(B[2]), .B1(n80), .C0(n36), .C1(n139), .Y(n78) );
  AOI221XLM U99 ( .A0(n7), .A1(n46), .B0(n47), .B1(n138), .C0(n13), .Y(n80) );
  AOI221XLM U100 ( .A0(n46), .A1(n138), .B0(n7), .B1(n48), .C0(n42), .Y(n79)
         );
  OAI222X1M U101 ( .A0(n73), .A1(n121), .B0(B[3]), .B1(n74), .C0(n36), .C1(
        n138), .Y(n72) );
  AOI221XLM U102 ( .A0(n8), .A1(n46), .B0(n47), .B1(n137), .C0(n13), .Y(n74)
         );
  AOI221XLM U103 ( .A0(n46), .A1(n137), .B0(n8), .B1(n48), .C0(n42), .Y(n73)
         );
  OAI222X1M U104 ( .A0(n67), .A1(n132), .B0(B[4]), .B1(n68), .C0(n36), .C1(
        n137), .Y(n66) );
  INVX2M U105 ( .A(B[4]), .Y(n132) );
  AOI221XLM U106 ( .A0(n9), .A1(n46), .B0(n47), .B1(n136), .C0(n13), .Y(n68)
         );
  AOI221XLM U107 ( .A0(n46), .A1(n136), .B0(n9), .B1(n48), .C0(n42), .Y(n67)
         );
  OAI222X1M U108 ( .A0(n61), .A1(n131), .B0(B[5]), .B1(n62), .C0(n36), .C1(
        n136), .Y(n60) );
  INVX2M U109 ( .A(B[5]), .Y(n131) );
  AOI221XLM U110 ( .A0(n10), .A1(n46), .B0(n47), .B1(n135), .C0(n13), .Y(n62)
         );
  AOI221XLM U111 ( .A0(n46), .A1(n135), .B0(n10), .B1(n48), .C0(n42), .Y(n61)
         );
  OAI222X1M U112 ( .A0(n44), .A1(n130), .B0(B[7]), .B1(n45), .C0(n36), .C1(
        n134), .Y(n43) );
  INVX2M U113 ( .A(B[7]), .Y(n130) );
  AOI221XLM U114 ( .A0(n46), .A1(n12), .B0(n47), .B1(n133), .C0(n13), .Y(n45)
         );
  AOI221XLM U115 ( .A0(n46), .A1(n133), .B0(n12), .B1(n48), .C0(n42), .Y(n44)
         );
  INVX2M U116 ( .A(n14), .Y(n118) );
  OAI2B2X1M U117 ( .A1N(B[0]), .A0(n98), .B0(n91), .B1(n139), .Y(n97) );
  AOI221XLM U118 ( .A0(n46), .A1(n140), .B0(n5), .B1(n48), .C0(n42), .Y(n98)
         );
  OAI2B2X1M U119 ( .A1N(B[1]), .A0(n86), .B0(n36), .B1(n140), .Y(n85) );
  AOI221XLM U120 ( .A0(n46), .A1(n139), .B0(n6), .B1(n48), .C0(n42), .Y(n86)
         );
  OAI21X2M U121 ( .A0(B[0]), .A1(n102), .B0(n103), .Y(n96) );
  AOI221XLM U122 ( .A0(n5), .A1(n46), .B0(n47), .B1(n140), .C0(n13), .Y(n102)
         );
  AOI31X2M U123 ( .A0(N156), .A1(n3), .A2(n104), .B0(n90), .Y(n103) );
  NOR3X2M U124 ( .A(n128), .B(ALU_FUN[2]), .C(ALU_FUN[0]), .Y(n104) );
  OAI21X2M U125 ( .A0(B[1]), .A1(n87), .B0(n88), .Y(n84) );
  AOI221XLM U126 ( .A0(n6), .A1(n46), .B0(n47), .B1(n139), .C0(n13), .Y(n87)
         );
  AOI31X2M U127 ( .A0(N157), .A1(n3), .A2(n89), .B0(n90), .Y(n88) );
  NOR3X2M U128 ( .A(n129), .B(ALU_FUN[2]), .C(n128), .Y(n89) );
  BUFX2M U129 ( .A(ALU_FUN[3]), .Y(n3) );
  INVX2M U130 ( .A(B[0]), .Y(n117) );
  INVX2M U131 ( .A(B[2]), .Y(n119) );
  INVX2M U132 ( .A(B[3]), .Y(n121) );
  NOR2X1M U133 ( .A(n133), .B(B[7]), .Y(n113) );
  NAND2BX1M U134 ( .AN(B[4]), .B(n9), .Y(n29) );
  NAND2BX1M U135 ( .AN(n9), .B(B[4]), .Y(n18) );
  CLKNAND2X2M U136 ( .A(n29), .B(n18), .Y(n108) );
  NOR2X1M U137 ( .A(n121), .B(n8), .Y(n26) );
  NOR2X1M U138 ( .A(n119), .B(n7), .Y(n17) );
  NOR2X1M U139 ( .A(n117), .B(n5), .Y(n14) );
  CLKNAND2X2M U140 ( .A(n7), .B(n119), .Y(n28) );
  NAND2BX1M U141 ( .AN(n17), .B(n28), .Y(n23) );
  AOI21X1M U142 ( .A0(n14), .A1(n139), .B0(B[1]), .Y(n15) );
  AOI211X1M U143 ( .A0(n6), .A1(n118), .B0(n23), .C0(n15), .Y(n16) );
  CLKNAND2X2M U144 ( .A(n8), .B(n121), .Y(n27) );
  OAI31X1M U145 ( .A0(n26), .A1(n17), .A2(n16), .B0(n27), .Y(n19) );
  NAND2BX1M U146 ( .AN(n10), .B(B[5]), .Y(n111) );
  OAI211X1M U147 ( .A0(n108), .A1(n19), .B0(n18), .C0(n111), .Y(n20) );
  NAND2BX1M U148 ( .AN(B[5]), .B(n10), .Y(n30) );
  XNOR2X1M U149 ( .A(n11), .B(n4), .Y(n110) );
  AOI32X1M U150 ( .A0(n20), .A1(n30), .A2(n110), .B0(n4), .B1(n134), .Y(n21)
         );
  CLKNAND2X2M U151 ( .A(B[7]), .B(n133), .Y(n114) );
  OAI21X1M U152 ( .A0(n113), .A1(n21), .B0(n114), .Y(N158) );
  CLKNAND2X2M U153 ( .A(n5), .B(n117), .Y(n24) );
  OA21X1M U154 ( .A0(n24), .A1(n139), .B0(B[1]), .Y(n22) );
  AOI211X1M U155 ( .A0(n24), .A1(n139), .B0(n23), .C0(n22), .Y(n25) );
  AOI31X1M U156 ( .A0(n120), .A1(n28), .A2(n27), .B0(n26), .Y(n109) );
  OAI2B11X1M U157 ( .A1N(n109), .A0(n108), .B0(n30), .C0(n29), .Y(n112) );
  AOI32X1M U158 ( .A0(n112), .A1(n111), .A2(n110), .B0(n11), .B1(n122), .Y(
        n115) );
  AOI2B1X1M U159 ( .A1N(n115), .A0(n114), .B0(n113), .Y(n116) );
  CLKINVX1M U160 ( .A(n116), .Y(N157) );
  NOR2X1M U161 ( .A(N158), .B(N157), .Y(N156) );
endmodule


module RegFile ( CLK, RST, Address, WrEn, RdEn, WrData, RdData, RdData_Valid, 
        REG0, REG1, REG2, REG3 );
  input [3:0] Address;
  input [7:0] WrData;
  output [7:0] RdData;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  output [7:0] REG3;
  input CLK, RST, WrEn, RdEn;
  output RdData_Valid;
  wire   N11, N12, N13, N14, \regArr[15][7] , \regArr[15][6] , \regArr[15][5] ,
         \regArr[15][4] , \regArr[15][3] , \regArr[15][2] , \regArr[15][1] ,
         \regArr[15][0] , \regArr[14][7] , \regArr[14][6] , \regArr[14][5] ,
         \regArr[14][4] , \regArr[14][3] , \regArr[14][2] , \regArr[14][1] ,
         \regArr[14][0] , \regArr[13][7] , \regArr[13][6] , \regArr[13][5] ,
         \regArr[13][4] , \regArr[13][3] , \regArr[13][2] , \regArr[13][1] ,
         \regArr[13][0] , \regArr[12][7] , \regArr[12][6] , \regArr[12][5] ,
         \regArr[12][4] , \regArr[12][3] , \regArr[12][2] , \regArr[12][1] ,
         \regArr[12][0] , \regArr[11][7] , \regArr[11][6] , \regArr[11][5] ,
         \regArr[11][4] , \regArr[11][3] , \regArr[11][2] , \regArr[11][1] ,
         \regArr[11][0] , \regArr[10][7] , \regArr[10][6] , \regArr[10][5] ,
         \regArr[10][4] , \regArr[10][3] , \regArr[10][2] , \regArr[10][1] ,
         \regArr[10][0] , \regArr[9][7] , \regArr[9][6] , \regArr[9][5] ,
         \regArr[9][4] , \regArr[9][3] , \regArr[9][2] , \regArr[9][1] ,
         \regArr[9][0] , \regArr[8][7] , \regArr[8][6] , \regArr[8][5] ,
         \regArr[8][4] , \regArr[8][3] , \regArr[8][2] , \regArr[8][1] ,
         \regArr[8][0] , \regArr[7][7] , \regArr[7][6] , \regArr[7][5] ,
         \regArr[7][4] , \regArr[7][3] , \regArr[7][2] , \regArr[7][1] ,
         \regArr[7][0] , \regArr[6][7] , \regArr[6][6] , \regArr[6][5] ,
         \regArr[6][4] , \regArr[6][3] , \regArr[6][2] , \regArr[6][1] ,
         \regArr[6][0] , \regArr[5][7] , \regArr[5][6] , \regArr[5][5] ,
         \regArr[5][4] , \regArr[5][3] , \regArr[5][2] , \regArr[5][1] ,
         \regArr[5][0] , \regArr[4][7] , \regArr[4][6] , \regArr[4][5] ,
         \regArr[4][4] , \regArr[4][3] , \regArr[4][2] , \regArr[4][1] ,
         \regArr[4][0] , N36, N37, N38, N39, N40, N41, N42, N43, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n178, n179,
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201,
         n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, n212,
         n213, n214, n215, n216, n217, n218, n219, n220, n221, n222, n223,
         n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, n234,
         n235, n236, n237, n238, n239, n240, n241, n242, n243, n244, n245,
         n246, n247, n248, n249, n250, n251, n252, n253, n254, n255, n256,
         n257, n258, n259, n260, n261, n262, n263, n264, n265, n266, n267,
         n268, n269, n270, n271, n272, n273, n274, n275, n276, n277, n278,
         n279, n280, n281, n282, n283, n284, n285, n286, n287, n288, n289,
         n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, n300,
         n301, n302, n303;
  assign N11 = Address[0];
  assign N12 = Address[1];
  assign N13 = Address[2];
  assign N14 = Address[3];

  DFFRQX2M \regArr_reg[15][7]  ( .D(n169), .CK(CLK), .RN(n287), .Q(
        \regArr[15][7] ) );
  DFFRQX2M \regArr_reg[15][6]  ( .D(n168), .CK(CLK), .RN(n287), .Q(
        \regArr[15][6] ) );
  DFFRQX2M \regArr_reg[15][5]  ( .D(n167), .CK(CLK), .RN(n287), .Q(
        \regArr[15][5] ) );
  DFFRQX2M \regArr_reg[15][4]  ( .D(n166), .CK(CLK), .RN(n287), .Q(
        \regArr[15][4] ) );
  DFFRQX2M \regArr_reg[15][3]  ( .D(n165), .CK(CLK), .RN(n287), .Q(
        \regArr[15][3] ) );
  DFFRQX2M \regArr_reg[15][2]  ( .D(n164), .CK(CLK), .RN(n287), .Q(
        \regArr[15][2] ) );
  DFFRQX2M \regArr_reg[15][1]  ( .D(n163), .CK(CLK), .RN(n287), .Q(
        \regArr[15][1] ) );
  DFFRQX2M \regArr_reg[15][0]  ( .D(n162), .CK(CLK), .RN(n287), .Q(
        \regArr[15][0] ) );
  DFFRQX2M \regArr_reg[13][7]  ( .D(n153), .CK(CLK), .RN(n286), .Q(
        \regArr[13][7] ) );
  DFFRQX2M \regArr_reg[13][6]  ( .D(n152), .CK(CLK), .RN(n286), .Q(
        \regArr[13][6] ) );
  DFFRQX2M \regArr_reg[13][5]  ( .D(n151), .CK(CLK), .RN(n286), .Q(
        \regArr[13][5] ) );
  DFFRQX2M \regArr_reg[13][4]  ( .D(n150), .CK(CLK), .RN(n286), .Q(
        \regArr[13][4] ) );
  DFFRQX2M \regArr_reg[13][3]  ( .D(n149), .CK(CLK), .RN(n286), .Q(
        \regArr[13][3] ) );
  DFFRQX2M \regArr_reg[13][2]  ( .D(n148), .CK(CLK), .RN(n286), .Q(
        \regArr[13][2] ) );
  DFFRQX2M \regArr_reg[13][1]  ( .D(n147), .CK(CLK), .RN(n286), .Q(
        \regArr[13][1] ) );
  DFFRQX2M \regArr_reg[13][0]  ( .D(n146), .CK(CLK), .RN(n286), .Q(
        \regArr[13][0] ) );
  DFFRQX2M \regArr_reg[11][7]  ( .D(n137), .CK(CLK), .RN(n285), .Q(
        \regArr[11][7] ) );
  DFFRQX2M \regArr_reg[11][6]  ( .D(n136), .CK(CLK), .RN(n285), .Q(
        \regArr[11][6] ) );
  DFFRQX2M \regArr_reg[11][5]  ( .D(n135), .CK(CLK), .RN(n285), .Q(
        \regArr[11][5] ) );
  DFFRQX2M \regArr_reg[11][4]  ( .D(n134), .CK(CLK), .RN(n285), .Q(
        \regArr[11][4] ) );
  DFFRQX2M \regArr_reg[11][3]  ( .D(n133), .CK(CLK), .RN(n285), .Q(
        \regArr[11][3] ) );
  DFFRQX2M \regArr_reg[11][2]  ( .D(n132), .CK(CLK), .RN(n285), .Q(
        \regArr[11][2] ) );
  DFFRQX2M \regArr_reg[11][1]  ( .D(n131), .CK(CLK), .RN(n285), .Q(
        \regArr[11][1] ) );
  DFFRQX2M \regArr_reg[11][0]  ( .D(n130), .CK(CLK), .RN(n285), .Q(
        \regArr[11][0] ) );
  DFFRQX2M \regArr_reg[9][7]  ( .D(n121), .CK(CLK), .RN(n284), .Q(
        \regArr[9][7] ) );
  DFFRQX2M \regArr_reg[9][6]  ( .D(n120), .CK(CLK), .RN(n284), .Q(
        \regArr[9][6] ) );
  DFFRQX2M \regArr_reg[9][5]  ( .D(n119), .CK(CLK), .RN(n284), .Q(
        \regArr[9][5] ) );
  DFFRQX2M \regArr_reg[9][4]  ( .D(n118), .CK(CLK), .RN(n284), .Q(
        \regArr[9][4] ) );
  DFFRQX2M \regArr_reg[9][3]  ( .D(n117), .CK(CLK), .RN(n284), .Q(
        \regArr[9][3] ) );
  DFFRQX2M \regArr_reg[9][2]  ( .D(n116), .CK(CLK), .RN(n284), .Q(
        \regArr[9][2] ) );
  DFFRQX2M \regArr_reg[9][1]  ( .D(n115), .CK(CLK), .RN(n284), .Q(
        \regArr[9][1] ) );
  DFFRQX2M \regArr_reg[9][0]  ( .D(n114), .CK(CLK), .RN(n283), .Q(
        \regArr[9][0] ) );
  DFFRQX2M \regArr_reg[7][7]  ( .D(n105), .CK(CLK), .RN(n283), .Q(
        \regArr[7][7] ) );
  DFFRQX2M \regArr_reg[7][6]  ( .D(n104), .CK(CLK), .RN(n283), .Q(
        \regArr[7][6] ) );
  DFFRQX2M \regArr_reg[7][5]  ( .D(n103), .CK(CLK), .RN(n283), .Q(
        \regArr[7][5] ) );
  DFFRQX2M \regArr_reg[7][4]  ( .D(n102), .CK(CLK), .RN(n283), .Q(
        \regArr[7][4] ) );
  DFFRQX2M \regArr_reg[7][3]  ( .D(n101), .CK(CLK), .RN(n283), .Q(
        \regArr[7][3] ) );
  DFFRQX2M \regArr_reg[7][2]  ( .D(n100), .CK(CLK), .RN(n282), .Q(
        \regArr[7][2] ) );
  DFFRQX2M \regArr_reg[7][1]  ( .D(n99), .CK(CLK), .RN(n282), .Q(
        \regArr[7][1] ) );
  DFFRQX2M \regArr_reg[7][0]  ( .D(n98), .CK(CLK), .RN(n282), .Q(
        \regArr[7][0] ) );
  DFFRQX2M \regArr_reg[5][7]  ( .D(n89), .CK(CLK), .RN(n282), .Q(
        \regArr[5][7] ) );
  DFFRQX2M \regArr_reg[5][6]  ( .D(n88), .CK(CLK), .RN(n282), .Q(
        \regArr[5][6] ) );
  DFFRQX2M \regArr_reg[5][5]  ( .D(n87), .CK(CLK), .RN(n282), .Q(
        \regArr[5][5] ) );
  DFFRQX2M \regArr_reg[5][4]  ( .D(n86), .CK(CLK), .RN(n282), .Q(
        \regArr[5][4] ) );
  DFFRQX2M \regArr_reg[5][3]  ( .D(n85), .CK(CLK), .RN(n281), .Q(
        \regArr[5][3] ) );
  DFFRQX2M \regArr_reg[5][2]  ( .D(n84), .CK(CLK), .RN(n281), .Q(
        \regArr[5][2] ) );
  DFFRQX2M \regArr_reg[5][1]  ( .D(n83), .CK(CLK), .RN(n281), .Q(
        \regArr[5][1] ) );
  DFFRQX2M \regArr_reg[5][0]  ( .D(n82), .CK(CLK), .RN(n281), .Q(
        \regArr[5][0] ) );
  DFFRQX2M \regArr_reg[14][7]  ( .D(n161), .CK(CLK), .RN(n287), .Q(
        \regArr[14][7] ) );
  DFFRQX2M \regArr_reg[14][6]  ( .D(n160), .CK(CLK), .RN(n287), .Q(
        \regArr[14][6] ) );
  DFFRQX2M \regArr_reg[14][5]  ( .D(n159), .CK(CLK), .RN(n286), .Q(
        \regArr[14][5] ) );
  DFFRQX2M \regArr_reg[14][4]  ( .D(n158), .CK(CLK), .RN(n286), .Q(
        \regArr[14][4] ) );
  DFFRQX2M \regArr_reg[14][3]  ( .D(n157), .CK(CLK), .RN(n286), .Q(
        \regArr[14][3] ) );
  DFFRQX2M \regArr_reg[14][2]  ( .D(n156), .CK(CLK), .RN(n286), .Q(
        \regArr[14][2] ) );
  DFFRQX2M \regArr_reg[14][1]  ( .D(n155), .CK(CLK), .RN(n286), .Q(
        \regArr[14][1] ) );
  DFFRQX2M \regArr_reg[14][0]  ( .D(n154), .CK(CLK), .RN(n286), .Q(
        \regArr[14][0] ) );
  DFFRQX2M \regArr_reg[12][7]  ( .D(n145), .CK(CLK), .RN(n286), .Q(
        \regArr[12][7] ) );
  DFFRQX2M \regArr_reg[12][6]  ( .D(n144), .CK(CLK), .RN(n285), .Q(
        \regArr[12][6] ) );
  DFFRQX2M \regArr_reg[12][5]  ( .D(n143), .CK(CLK), .RN(n285), .Q(
        \regArr[12][5] ) );
  DFFRQX2M \regArr_reg[12][4]  ( .D(n142), .CK(CLK), .RN(n285), .Q(
        \regArr[12][4] ) );
  DFFRQX2M \regArr_reg[12][3]  ( .D(n141), .CK(CLK), .RN(n285), .Q(
        \regArr[12][3] ) );
  DFFRQX2M \regArr_reg[12][2]  ( .D(n140), .CK(CLK), .RN(n285), .Q(
        \regArr[12][2] ) );
  DFFRQX2M \regArr_reg[12][1]  ( .D(n139), .CK(CLK), .RN(n285), .Q(
        \regArr[12][1] ) );
  DFFRQX2M \regArr_reg[12][0]  ( .D(n138), .CK(CLK), .RN(n285), .Q(
        \regArr[12][0] ) );
  DFFRQX2M \regArr_reg[10][7]  ( .D(n129), .CK(CLK), .RN(n284), .Q(
        \regArr[10][7] ) );
  DFFRQX2M \regArr_reg[10][6]  ( .D(n128), .CK(CLK), .RN(n284), .Q(
        \regArr[10][6] ) );
  DFFRQX2M \regArr_reg[10][5]  ( .D(n127), .CK(CLK), .RN(n284), .Q(
        \regArr[10][5] ) );
  DFFRQX2M \regArr_reg[10][4]  ( .D(n126), .CK(CLK), .RN(n284), .Q(
        \regArr[10][4] ) );
  DFFRQX2M \regArr_reg[10][3]  ( .D(n125), .CK(CLK), .RN(n284), .Q(
        \regArr[10][3] ) );
  DFFRQX2M \regArr_reg[10][2]  ( .D(n124), .CK(CLK), .RN(n284), .Q(
        \regArr[10][2] ) );
  DFFRQX2M \regArr_reg[10][1]  ( .D(n123), .CK(CLK), .RN(n284), .Q(
        \regArr[10][1] ) );
  DFFRQX2M \regArr_reg[10][0]  ( .D(n122), .CK(CLK), .RN(n284), .Q(
        \regArr[10][0] ) );
  DFFRQX2M \regArr_reg[8][7]  ( .D(n113), .CK(CLK), .RN(n283), .Q(
        \regArr[8][7] ) );
  DFFRQX2M \regArr_reg[8][6]  ( .D(n112), .CK(CLK), .RN(n283), .Q(
        \regArr[8][6] ) );
  DFFRQX2M \regArr_reg[8][5]  ( .D(n111), .CK(CLK), .RN(n283), .Q(
        \regArr[8][5] ) );
  DFFRQX2M \regArr_reg[8][4]  ( .D(n110), .CK(CLK), .RN(n283), .Q(
        \regArr[8][4] ) );
  DFFRQX2M \regArr_reg[8][3]  ( .D(n109), .CK(CLK), .RN(n283), .Q(
        \regArr[8][3] ) );
  DFFRQX2M \regArr_reg[8][2]  ( .D(n108), .CK(CLK), .RN(n283), .Q(
        \regArr[8][2] ) );
  DFFRQX2M \regArr_reg[8][1]  ( .D(n107), .CK(CLK), .RN(n283), .Q(
        \regArr[8][1] ) );
  DFFRQX2M \regArr_reg[8][0]  ( .D(n106), .CK(CLK), .RN(n283), .Q(
        \regArr[8][0] ) );
  DFFRQX2M \regArr_reg[6][7]  ( .D(n97), .CK(CLK), .RN(n282), .Q(
        \regArr[6][7] ) );
  DFFRQX2M \regArr_reg[6][6]  ( .D(n96), .CK(CLK), .RN(n282), .Q(
        \regArr[6][6] ) );
  DFFRQX2M \regArr_reg[6][5]  ( .D(n95), .CK(CLK), .RN(n282), .Q(
        \regArr[6][5] ) );
  DFFRQX2M \regArr_reg[6][4]  ( .D(n94), .CK(CLK), .RN(n282), .Q(
        \regArr[6][4] ) );
  DFFRQX2M \regArr_reg[6][3]  ( .D(n93), .CK(CLK), .RN(n282), .Q(
        \regArr[6][3] ) );
  DFFRQX2M \regArr_reg[6][2]  ( .D(n92), .CK(CLK), .RN(n282), .Q(
        \regArr[6][2] ) );
  DFFRQX2M \regArr_reg[6][1]  ( .D(n91), .CK(CLK), .RN(n282), .Q(
        \regArr[6][1] ) );
  DFFRQX2M \regArr_reg[6][0]  ( .D(n90), .CK(CLK), .RN(n282), .Q(
        \regArr[6][0] ) );
  DFFRQX2M \regArr_reg[4][7]  ( .D(n81), .CK(CLK), .RN(n281), .Q(
        \regArr[4][7] ) );
  DFFRQX2M \regArr_reg[4][6]  ( .D(n80), .CK(CLK), .RN(n281), .Q(
        \regArr[4][6] ) );
  DFFRQX2M \regArr_reg[4][5]  ( .D(n79), .CK(CLK), .RN(n281), .Q(
        \regArr[4][5] ) );
  DFFRQX2M \regArr_reg[4][4]  ( .D(n78), .CK(CLK), .RN(n281), .Q(
        \regArr[4][4] ) );
  DFFRQX2M \regArr_reg[4][3]  ( .D(n77), .CK(CLK), .RN(n281), .Q(
        \regArr[4][3] ) );
  DFFRQX2M \regArr_reg[4][2]  ( .D(n76), .CK(CLK), .RN(n281), .Q(
        \regArr[4][2] ) );
  DFFRQX2M \regArr_reg[4][1]  ( .D(n75), .CK(CLK), .RN(n281), .Q(
        \regArr[4][1] ) );
  DFFRQX2M \regArr_reg[4][0]  ( .D(n74), .CK(CLK), .RN(n281), .Q(
        \regArr[4][0] ) );
  DFFRQX2M \RdData_reg[7]  ( .D(n177), .CK(CLK), .RN(n279), .Q(RdData[7]) );
  DFFRQX2M \RdData_reg[6]  ( .D(n176), .CK(CLK), .RN(n288), .Q(RdData[6]) );
  DFFRQX2M \RdData_reg[5]  ( .D(n175), .CK(CLK), .RN(n288), .Q(RdData[5]) );
  DFFRQX2M \RdData_reg[4]  ( .D(n174), .CK(CLK), .RN(n287), .Q(RdData[4]) );
  DFFRQX2M \RdData_reg[3]  ( .D(n173), .CK(CLK), .RN(n287), .Q(RdData[3]) );
  DFFRQX2M \RdData_reg[2]  ( .D(n172), .CK(CLK), .RN(n287), .Q(RdData[2]) );
  DFFRQX2M \RdData_reg[1]  ( .D(n171), .CK(CLK), .RN(n287), .Q(RdData[1]) );
  DFFRQX2M \RdData_reg[0]  ( .D(n170), .CK(CLK), .RN(n287), .Q(RdData[0]) );
  DFFRQX2M \regArr_reg[3][1]  ( .D(n67), .CK(CLK), .RN(n280), .Q(REG3[1]) );
  DFFRQX2M \regArr_reg[3][3]  ( .D(n69), .CK(CLK), .RN(n280), .Q(REG3[3]) );
  DFFRQX2M \regArr_reg[3][2]  ( .D(n68), .CK(CLK), .RN(n280), .Q(REG3[2]) );
  DFFRQX2M \regArr_reg[3][4]  ( .D(n70), .CK(CLK), .RN(n281), .Q(REG3[4]) );
  DFFRQX2M \regArr_reg[3][7]  ( .D(n73), .CK(CLK), .RN(n281), .Q(REG3[7]) );
  DFFRQX2M \regArr_reg[3][6]  ( .D(n72), .CK(CLK), .RN(n281), .Q(REG3[6]) );
  DFFSQX2M \regArr_reg[3][5]  ( .D(n71), .CK(CLK), .SN(n279), .Q(REG3[5]) );
  DFFRQX2M \regArr_reg[3][0]  ( .D(n66), .CK(CLK), .RN(n280), .Q(REG3[0]) );
  DFFRQX2M \regArr_reg[2][1]  ( .D(n59), .CK(CLK), .RN(n280), .Q(REG2[1]) );
  DFFRQX2M RdData_Valid_reg ( .D(n41), .CK(CLK), .RN(n283), .Q(RdData_Valid)
         );
  DFFSQX2M \regArr_reg[2][7]  ( .D(n65), .CK(CLK), .SN(n279), .Q(REG2[7]) );
  DFFRQX2M \regArr_reg[2][3]  ( .D(n61), .CK(CLK), .RN(n280), .Q(REG2[3]) );
  DFFRQX2M \regArr_reg[2][4]  ( .D(n62), .CK(CLK), .RN(n280), .Q(REG2[4]) );
  DFFRQX2M \regArr_reg[2][6]  ( .D(n64), .CK(CLK), .RN(n280), .Q(REG2[6]) );
  DFFRQX2M \regArr_reg[2][2]  ( .D(n60), .CK(CLK), .RN(n280), .Q(REG2[2]) );
  DFFRQX2M \regArr_reg[2][0]  ( .D(n58), .CK(CLK), .RN(n280), .Q(REG2[0]) );
  DFFRQX2M \regArr_reg[2][5]  ( .D(n63), .CK(CLK), .RN(n280), .Q(REG2[5]) );
  DFFRQX2M \regArr_reg[0][1]  ( .D(n43), .CK(CLK), .RN(n279), .Q(REG0[1]) );
  DFFRQX2M \regArr_reg[0][0]  ( .D(n42), .CK(CLK), .RN(n279), .Q(REG0[0]) );
  DFFRQX2M \regArr_reg[0][2]  ( .D(n44), .CK(CLK), .RN(n279), .Q(REG0[2]) );
  DFFRQX2M \regArr_reg[0][3]  ( .D(n45), .CK(CLK), .RN(n279), .Q(REG0[3]) );
  DFFRQX2M \regArr_reg[0][4]  ( .D(n46), .CK(CLK), .RN(n279), .Q(REG0[4]) );
  DFFRQX2M \regArr_reg[0][5]  ( .D(n47), .CK(CLK), .RN(n279), .Q(REG0[5]) );
  DFFRQX2M \regArr_reg[0][7]  ( .D(n49), .CK(CLK), .RN(n279), .Q(REG0[7]) );
  DFFRQX2M \regArr_reg[0][6]  ( .D(n48), .CK(CLK), .RN(n279), .Q(REG0[6]) );
  DFFRQX2M \regArr_reg[1][6]  ( .D(n56), .CK(CLK), .RN(n280), .Q(REG1[6]) );
  DFFRQX2M \regArr_reg[1][1]  ( .D(n51), .CK(CLK), .RN(n279), .Q(REG1[1]) );
  DFFRQX2M \regArr_reg[1][5]  ( .D(n55), .CK(CLK), .RN(n280), .Q(REG1[5]) );
  DFFRQX2M \regArr_reg[1][4]  ( .D(n54), .CK(CLK), .RN(n280), .Q(REG1[4]) );
  DFFRQX2M \regArr_reg[1][7]  ( .D(n57), .CK(CLK), .RN(n280), .Q(REG1[7]) );
  DFFRQX2M \regArr_reg[1][3]  ( .D(n53), .CK(CLK), .RN(n279), .Q(REG1[3]) );
  DFFRQX2M \regArr_reg[1][2]  ( .D(n52), .CK(CLK), .RN(n279), .Q(REG1[2]) );
  DFFRQX2M \regArr_reg[1][0]  ( .D(n50), .CK(CLK), .RN(n279), .Q(REG1[0]) );
  NOR2X2M U3 ( .A(n272), .B(N13), .Y(n20) );
  NOR2X2M U4 ( .A(N12), .B(N13), .Y(n15) );
  INVX2M U5 ( .A(n40), .Y(n302) );
  INVX2M U6 ( .A(n276), .Y(n277) );
  INVX2M U7 ( .A(n1), .Y(n274) );
  NAND2X2M U8 ( .A(RdEn), .B(n303), .Y(n40) );
  NOR2X2M U9 ( .A(n303), .B(RdEn), .Y(n13) );
  BUFX2M U10 ( .A(n293), .Y(n279) );
  BUFX2M U11 ( .A(n293), .Y(n280) );
  BUFX2M U12 ( .A(n292), .Y(n281) );
  BUFX2M U13 ( .A(n292), .Y(n282) );
  BUFX2M U14 ( .A(n291), .Y(n283) );
  BUFX2M U15 ( .A(n291), .Y(n284) );
  BUFX2M U16 ( .A(n290), .Y(n285) );
  BUFX2M U17 ( .A(n290), .Y(n286) );
  BUFX2M U18 ( .A(n289), .Y(n287) );
  BUFX2M U19 ( .A(n289), .Y(n288) );
  OR2X2M U20 ( .A(n272), .B(n273), .Y(n1) );
  BUFX2M U21 ( .A(n4), .Y(n276) );
  INVX2M U22 ( .A(n3), .Y(n275) );
  INVX2M U23 ( .A(n2), .Y(n278) );
  NAND2X2M U24 ( .A(n18), .B(n15), .Y(n17) );
  NAND2X2M U25 ( .A(n20), .B(n16), .Y(n19) );
  NAND2X2M U26 ( .A(n20), .B(n18), .Y(n21) );
  NAND2X2M U27 ( .A(n23), .B(n16), .Y(n22) );
  NAND2X2M U28 ( .A(n23), .B(n18), .Y(n24) );
  NAND2X2M U29 ( .A(n26), .B(n16), .Y(n25) );
  NAND2X2M U30 ( .A(n26), .B(n18), .Y(n28) );
  NAND2X2M U31 ( .A(n30), .B(n15), .Y(n29) );
  NAND2X2M U32 ( .A(n32), .B(n15), .Y(n31) );
  NAND2X2M U33 ( .A(n30), .B(n20), .Y(n33) );
  NAND2X2M U34 ( .A(n32), .B(n20), .Y(n34) );
  NAND2X2M U35 ( .A(n30), .B(n23), .Y(n35) );
  NAND2X2M U36 ( .A(n32), .B(n23), .Y(n36) );
  NAND2X2M U37 ( .A(n30), .B(n26), .Y(n37) );
  NAND2X2M U38 ( .A(n32), .B(n26), .Y(n39) );
  NAND2X2M U39 ( .A(n15), .B(n16), .Y(n14) );
  AND2X2M U40 ( .A(n27), .B(n273), .Y(n16) );
  AND2X2M U41 ( .A(n38), .B(n273), .Y(n30) );
  INVX2M U42 ( .A(WrEn), .Y(n303) );
  BUFX2M U43 ( .A(RST), .Y(n292) );
  BUFX2M U44 ( .A(RST), .Y(n291) );
  BUFX2M U45 ( .A(RST), .Y(n290) );
  BUFX2M U46 ( .A(RST), .Y(n289) );
  BUFX2M U47 ( .A(RST), .Y(n293) );
  OR2X2M U48 ( .A(N11), .B(N12), .Y(n2) );
  OR2X2M U49 ( .A(n272), .B(N11), .Y(n3) );
  OR2X2M U50 ( .A(n273), .B(N12), .Y(n4) );
  INVX2M U51 ( .A(N11), .Y(n273) );
  INVX2M U52 ( .A(N13), .Y(n271) );
  INVX2M U53 ( .A(N12), .Y(n272) );
  AND2X2M U54 ( .A(n27), .B(N11), .Y(n18) );
  AND2X2M U55 ( .A(n38), .B(N11), .Y(n32) );
  AND2X2M U56 ( .A(N13), .B(n272), .Y(n23) );
  AND2X2M U57 ( .A(N13), .B(N12), .Y(n26) );
  NOR2BX2M U58 ( .AN(n13), .B(N14), .Y(n27) );
  AND2X2M U59 ( .A(N14), .B(n13), .Y(n38) );
  INVX2M U60 ( .A(N14), .Y(n270) );
  AO22X1M U61 ( .A0(N43), .A1(n302), .B0(RdData[0]), .B1(n40), .Y(n170) );
  AO22X1M U62 ( .A0(N42), .A1(n302), .B0(RdData[1]), .B1(n40), .Y(n171) );
  AO22X1M U63 ( .A0(N41), .A1(n302), .B0(RdData[2]), .B1(n40), .Y(n172) );
  AO22X1M U64 ( .A0(N40), .A1(n302), .B0(RdData[3]), .B1(n40), .Y(n173) );
  AO22X1M U65 ( .A0(N39), .A1(n302), .B0(RdData[4]), .B1(n40), .Y(n174) );
  AO22X1M U66 ( .A0(N38), .A1(n302), .B0(RdData[5]), .B1(n40), .Y(n175) );
  AO22X1M U67 ( .A0(N37), .A1(n302), .B0(RdData[6]), .B1(n40), .Y(n176) );
  AO22X1M U68 ( .A0(N36), .A1(n302), .B0(RdData[7]), .B1(n40), .Y(n177) );
  INVX2M U69 ( .A(WrData[0]), .Y(n294) );
  INVX2M U70 ( .A(WrData[1]), .Y(n295) );
  INVX2M U71 ( .A(WrData[2]), .Y(n296) );
  INVX2M U72 ( .A(WrData[3]), .Y(n297) );
  INVX2M U73 ( .A(WrData[4]), .Y(n298) );
  INVX2M U74 ( .A(WrData[5]), .Y(n299) );
  INVX2M U75 ( .A(WrData[6]), .Y(n300) );
  INVX2M U76 ( .A(WrData[7]), .Y(n301) );
  OAI2BB2X1M U77 ( .B0(n14), .B1(n294), .A0N(REG0[0]), .A1N(n14), .Y(n42) );
  OAI2BB2X1M U78 ( .B0(n14), .B1(n295), .A0N(REG0[1]), .A1N(n14), .Y(n43) );
  OAI2BB2X1M U79 ( .B0(n14), .B1(n296), .A0N(REG0[2]), .A1N(n14), .Y(n44) );
  OAI2BB2X1M U80 ( .B0(n14), .B1(n297), .A0N(REG0[3]), .A1N(n14), .Y(n45) );
  OAI2BB2X1M U81 ( .B0(n14), .B1(n298), .A0N(REG0[4]), .A1N(n14), .Y(n46) );
  OAI2BB2X1M U82 ( .B0(n14), .B1(n299), .A0N(REG0[5]), .A1N(n14), .Y(n47) );
  OAI2BB2X1M U83 ( .B0(n14), .B1(n300), .A0N(REG0[6]), .A1N(n14), .Y(n48) );
  OAI2BB2X1M U84 ( .B0(n14), .B1(n301), .A0N(REG0[7]), .A1N(n14), .Y(n49) );
  OAI2BB2X1M U85 ( .B0(n294), .B1(n19), .A0N(REG2[0]), .A1N(n19), .Y(n58) );
  OAI2BB2X1M U86 ( .B0(n295), .B1(n19), .A0N(REG2[1]), .A1N(n19), .Y(n59) );
  OAI2BB2X1M U87 ( .B0(n296), .B1(n19), .A0N(REG2[2]), .A1N(n19), .Y(n60) );
  OAI2BB2X1M U88 ( .B0(n297), .B1(n19), .A0N(REG2[3]), .A1N(n19), .Y(n61) );
  OAI2BB2X1M U89 ( .B0(n298), .B1(n19), .A0N(REG2[4]), .A1N(n19), .Y(n62) );
  OAI2BB2X1M U90 ( .B0(n299), .B1(n19), .A0N(REG2[5]), .A1N(n19), .Y(n63) );
  OAI2BB2X1M U91 ( .B0(n300), .B1(n19), .A0N(REG2[6]), .A1N(n19), .Y(n64) );
  OAI2BB2X1M U92 ( .B0(n294), .B1(n21), .A0N(REG3[0]), .A1N(n21), .Y(n66) );
  OAI2BB2X1M U93 ( .B0(n295), .B1(n21), .A0N(REG3[1]), .A1N(n21), .Y(n67) );
  OAI2BB2X1M U94 ( .B0(n296), .B1(n21), .A0N(REG3[2]), .A1N(n21), .Y(n68) );
  OAI2BB2X1M U95 ( .B0(n297), .B1(n21), .A0N(REG3[3]), .A1N(n21), .Y(n69) );
  OAI2BB2X1M U96 ( .B0(n298), .B1(n21), .A0N(REG3[4]), .A1N(n21), .Y(n70) );
  OAI2BB2X1M U97 ( .B0(n300), .B1(n21), .A0N(REG3[6]), .A1N(n21), .Y(n72) );
  OAI2BB2X1M U98 ( .B0(n301), .B1(n21), .A0N(REG3[7]), .A1N(n21), .Y(n73) );
  OAI2BB2X1M U99 ( .B0(n294), .B1(n17), .A0N(REG1[0]), .A1N(n17), .Y(n50) );
  OAI2BB2X1M U100 ( .B0(n295), .B1(n17), .A0N(REG1[1]), .A1N(n17), .Y(n51) );
  OAI2BB2X1M U101 ( .B0(n296), .B1(n17), .A0N(REG1[2]), .A1N(n17), .Y(n52) );
  OAI2BB2X1M U102 ( .B0(n297), .B1(n17), .A0N(REG1[3]), .A1N(n17), .Y(n53) );
  OAI2BB2X1M U103 ( .B0(n298), .B1(n17), .A0N(REG1[4]), .A1N(n17), .Y(n54) );
  OAI2BB2X1M U104 ( .B0(n299), .B1(n17), .A0N(REG1[5]), .A1N(n17), .Y(n55) );
  OAI2BB2X1M U105 ( .B0(n300), .B1(n17), .A0N(REG1[6]), .A1N(n17), .Y(n56) );
  OAI2BB2X1M U106 ( .B0(n301), .B1(n17), .A0N(REG1[7]), .A1N(n17), .Y(n57) );
  OAI2BB2X1M U107 ( .B0(n294), .B1(n29), .A0N(\regArr[8][0] ), .A1N(n29), .Y(
        n106) );
  OAI2BB2X1M U108 ( .B0(n295), .B1(n29), .A0N(\regArr[8][1] ), .A1N(n29), .Y(
        n107) );
  OAI2BB2X1M U109 ( .B0(n296), .B1(n29), .A0N(\regArr[8][2] ), .A1N(n29), .Y(
        n108) );
  OAI2BB2X1M U110 ( .B0(n297), .B1(n29), .A0N(\regArr[8][3] ), .A1N(n29), .Y(
        n109) );
  OAI2BB2X1M U111 ( .B0(n298), .B1(n29), .A0N(\regArr[8][4] ), .A1N(n29), .Y(
        n110) );
  OAI2BB2X1M U112 ( .B0(n299), .B1(n29), .A0N(\regArr[8][5] ), .A1N(n29), .Y(
        n111) );
  OAI2BB2X1M U113 ( .B0(n300), .B1(n29), .A0N(\regArr[8][6] ), .A1N(n29), .Y(
        n112) );
  OAI2BB2X1M U114 ( .B0(n301), .B1(n29), .A0N(\regArr[8][7] ), .A1N(n29), .Y(
        n113) );
  OAI2BB2X1M U115 ( .B0(n294), .B1(n31), .A0N(\regArr[9][0] ), .A1N(n31), .Y(
        n114) );
  OAI2BB2X1M U116 ( .B0(n295), .B1(n31), .A0N(\regArr[9][1] ), .A1N(n31), .Y(
        n115) );
  OAI2BB2X1M U117 ( .B0(n296), .B1(n31), .A0N(\regArr[9][2] ), .A1N(n31), .Y(
        n116) );
  OAI2BB2X1M U118 ( .B0(n297), .B1(n31), .A0N(\regArr[9][3] ), .A1N(n31), .Y(
        n117) );
  OAI2BB2X1M U119 ( .B0(n298), .B1(n31), .A0N(\regArr[9][4] ), .A1N(n31), .Y(
        n118) );
  OAI2BB2X1M U120 ( .B0(n299), .B1(n31), .A0N(\regArr[9][5] ), .A1N(n31), .Y(
        n119) );
  OAI2BB2X1M U121 ( .B0(n300), .B1(n31), .A0N(\regArr[9][6] ), .A1N(n31), .Y(
        n120) );
  OAI2BB2X1M U122 ( .B0(n301), .B1(n31), .A0N(\regArr[9][7] ), .A1N(n31), .Y(
        n121) );
  OAI2BB2X1M U123 ( .B0(n294), .B1(n33), .A0N(\regArr[10][0] ), .A1N(n33), .Y(
        n122) );
  OAI2BB2X1M U124 ( .B0(n295), .B1(n33), .A0N(\regArr[10][1] ), .A1N(n33), .Y(
        n123) );
  OAI2BB2X1M U125 ( .B0(n296), .B1(n33), .A0N(\regArr[10][2] ), .A1N(n33), .Y(
        n124) );
  OAI2BB2X1M U126 ( .B0(n297), .B1(n33), .A0N(\regArr[10][3] ), .A1N(n33), .Y(
        n125) );
  OAI2BB2X1M U127 ( .B0(n298), .B1(n33), .A0N(\regArr[10][4] ), .A1N(n33), .Y(
        n126) );
  OAI2BB2X1M U128 ( .B0(n299), .B1(n33), .A0N(\regArr[10][5] ), .A1N(n33), .Y(
        n127) );
  OAI2BB2X1M U129 ( .B0(n300), .B1(n33), .A0N(\regArr[10][6] ), .A1N(n33), .Y(
        n128) );
  OAI2BB2X1M U130 ( .B0(n301), .B1(n33), .A0N(\regArr[10][7] ), .A1N(n33), .Y(
        n129) );
  OAI2BB2X1M U131 ( .B0(n294), .B1(n34), .A0N(\regArr[11][0] ), .A1N(n34), .Y(
        n130) );
  OAI2BB2X1M U132 ( .B0(n295), .B1(n34), .A0N(\regArr[11][1] ), .A1N(n34), .Y(
        n131) );
  OAI2BB2X1M U133 ( .B0(n296), .B1(n34), .A0N(\regArr[11][2] ), .A1N(n34), .Y(
        n132) );
  OAI2BB2X1M U134 ( .B0(n297), .B1(n34), .A0N(\regArr[11][3] ), .A1N(n34), .Y(
        n133) );
  OAI2BB2X1M U135 ( .B0(n298), .B1(n34), .A0N(\regArr[11][4] ), .A1N(n34), .Y(
        n134) );
  OAI2BB2X1M U136 ( .B0(n299), .B1(n34), .A0N(\regArr[11][5] ), .A1N(n34), .Y(
        n135) );
  OAI2BB2X1M U137 ( .B0(n300), .B1(n34), .A0N(\regArr[11][6] ), .A1N(n34), .Y(
        n136) );
  OAI2BB2X1M U138 ( .B0(n301), .B1(n34), .A0N(\regArr[11][7] ), .A1N(n34), .Y(
        n137) );
  OAI2BB2X1M U139 ( .B0(n294), .B1(n22), .A0N(\regArr[4][0] ), .A1N(n22), .Y(
        n74) );
  OAI2BB2X1M U140 ( .B0(n295), .B1(n22), .A0N(\regArr[4][1] ), .A1N(n22), .Y(
        n75) );
  OAI2BB2X1M U141 ( .B0(n296), .B1(n22), .A0N(\regArr[4][2] ), .A1N(n22), .Y(
        n76) );
  OAI2BB2X1M U142 ( .B0(n297), .B1(n22), .A0N(\regArr[4][3] ), .A1N(n22), .Y(
        n77) );
  OAI2BB2X1M U143 ( .B0(n298), .B1(n22), .A0N(\regArr[4][4] ), .A1N(n22), .Y(
        n78) );
  OAI2BB2X1M U144 ( .B0(n299), .B1(n22), .A0N(\regArr[4][5] ), .A1N(n22), .Y(
        n79) );
  OAI2BB2X1M U145 ( .B0(n300), .B1(n22), .A0N(\regArr[4][6] ), .A1N(n22), .Y(
        n80) );
  OAI2BB2X1M U146 ( .B0(n301), .B1(n22), .A0N(\regArr[4][7] ), .A1N(n22), .Y(
        n81) );
  OAI2BB2X1M U147 ( .B0(n294), .B1(n24), .A0N(\regArr[5][0] ), .A1N(n24), .Y(
        n82) );
  OAI2BB2X1M U148 ( .B0(n295), .B1(n24), .A0N(\regArr[5][1] ), .A1N(n24), .Y(
        n83) );
  OAI2BB2X1M U149 ( .B0(n296), .B1(n24), .A0N(\regArr[5][2] ), .A1N(n24), .Y(
        n84) );
  OAI2BB2X1M U150 ( .B0(n297), .B1(n24), .A0N(\regArr[5][3] ), .A1N(n24), .Y(
        n85) );
  OAI2BB2X1M U151 ( .B0(n298), .B1(n24), .A0N(\regArr[5][4] ), .A1N(n24), .Y(
        n86) );
  OAI2BB2X1M U152 ( .B0(n299), .B1(n24), .A0N(\regArr[5][5] ), .A1N(n24), .Y(
        n87) );
  OAI2BB2X1M U153 ( .B0(n300), .B1(n24), .A0N(\regArr[5][6] ), .A1N(n24), .Y(
        n88) );
  OAI2BB2X1M U154 ( .B0(n301), .B1(n24), .A0N(\regArr[5][7] ), .A1N(n24), .Y(
        n89) );
  OAI2BB2X1M U155 ( .B0(n294), .B1(n25), .A0N(\regArr[6][0] ), .A1N(n25), .Y(
        n90) );
  OAI2BB2X1M U156 ( .B0(n295), .B1(n25), .A0N(\regArr[6][1] ), .A1N(n25), .Y(
        n91) );
  OAI2BB2X1M U157 ( .B0(n296), .B1(n25), .A0N(\regArr[6][2] ), .A1N(n25), .Y(
        n92) );
  OAI2BB2X1M U158 ( .B0(n297), .B1(n25), .A0N(\regArr[6][3] ), .A1N(n25), .Y(
        n93) );
  OAI2BB2X1M U159 ( .B0(n298), .B1(n25), .A0N(\regArr[6][4] ), .A1N(n25), .Y(
        n94) );
  OAI2BB2X1M U160 ( .B0(n299), .B1(n25), .A0N(\regArr[6][5] ), .A1N(n25), .Y(
        n95) );
  OAI2BB2X1M U161 ( .B0(n300), .B1(n25), .A0N(\regArr[6][6] ), .A1N(n25), .Y(
        n96) );
  OAI2BB2X1M U162 ( .B0(n301), .B1(n25), .A0N(\regArr[6][7] ), .A1N(n25), .Y(
        n97) );
  OAI2BB2X1M U163 ( .B0(n294), .B1(n28), .A0N(\regArr[7][0] ), .A1N(n28), .Y(
        n98) );
  OAI2BB2X1M U164 ( .B0(n295), .B1(n28), .A0N(\regArr[7][1] ), .A1N(n28), .Y(
        n99) );
  OAI2BB2X1M U165 ( .B0(n296), .B1(n28), .A0N(\regArr[7][2] ), .A1N(n28), .Y(
        n100) );
  OAI2BB2X1M U166 ( .B0(n297), .B1(n28), .A0N(\regArr[7][3] ), .A1N(n28), .Y(
        n101) );
  OAI2BB2X1M U167 ( .B0(n298), .B1(n28), .A0N(\regArr[7][4] ), .A1N(n28), .Y(
        n102) );
  OAI2BB2X1M U168 ( .B0(n299), .B1(n28), .A0N(\regArr[7][5] ), .A1N(n28), .Y(
        n103) );
  OAI2BB2X1M U169 ( .B0(n300), .B1(n28), .A0N(\regArr[7][6] ), .A1N(n28), .Y(
        n104) );
  OAI2BB2X1M U170 ( .B0(n301), .B1(n28), .A0N(\regArr[7][7] ), .A1N(n28), .Y(
        n105) );
  OAI2BB2X1M U171 ( .B0(n294), .B1(n35), .A0N(\regArr[12][0] ), .A1N(n35), .Y(
        n138) );
  OAI2BB2X1M U172 ( .B0(n295), .B1(n35), .A0N(\regArr[12][1] ), .A1N(n35), .Y(
        n139) );
  OAI2BB2X1M U173 ( .B0(n296), .B1(n35), .A0N(\regArr[12][2] ), .A1N(n35), .Y(
        n140) );
  OAI2BB2X1M U174 ( .B0(n297), .B1(n35), .A0N(\regArr[12][3] ), .A1N(n35), .Y(
        n141) );
  OAI2BB2X1M U175 ( .B0(n298), .B1(n35), .A0N(\regArr[12][4] ), .A1N(n35), .Y(
        n142) );
  OAI2BB2X1M U176 ( .B0(n299), .B1(n35), .A0N(\regArr[12][5] ), .A1N(n35), .Y(
        n143) );
  OAI2BB2X1M U177 ( .B0(n300), .B1(n35), .A0N(\regArr[12][6] ), .A1N(n35), .Y(
        n144) );
  OAI2BB2X1M U178 ( .B0(n301), .B1(n35), .A0N(\regArr[12][7] ), .A1N(n35), .Y(
        n145) );
  OAI2BB2X1M U179 ( .B0(n294), .B1(n36), .A0N(\regArr[13][0] ), .A1N(n36), .Y(
        n146) );
  OAI2BB2X1M U180 ( .B0(n295), .B1(n36), .A0N(\regArr[13][1] ), .A1N(n36), .Y(
        n147) );
  OAI2BB2X1M U181 ( .B0(n296), .B1(n36), .A0N(\regArr[13][2] ), .A1N(n36), .Y(
        n148) );
  OAI2BB2X1M U182 ( .B0(n297), .B1(n36), .A0N(\regArr[13][3] ), .A1N(n36), .Y(
        n149) );
  OAI2BB2X1M U183 ( .B0(n298), .B1(n36), .A0N(\regArr[13][4] ), .A1N(n36), .Y(
        n150) );
  OAI2BB2X1M U184 ( .B0(n299), .B1(n36), .A0N(\regArr[13][5] ), .A1N(n36), .Y(
        n151) );
  OAI2BB2X1M U185 ( .B0(n300), .B1(n36), .A0N(\regArr[13][6] ), .A1N(n36), .Y(
        n152) );
  OAI2BB2X1M U186 ( .B0(n301), .B1(n36), .A0N(\regArr[13][7] ), .A1N(n36), .Y(
        n153) );
  OAI2BB2X1M U187 ( .B0(n294), .B1(n37), .A0N(\regArr[14][0] ), .A1N(n37), .Y(
        n154) );
  OAI2BB2X1M U188 ( .B0(n295), .B1(n37), .A0N(\regArr[14][1] ), .A1N(n37), .Y(
        n155) );
  OAI2BB2X1M U189 ( .B0(n296), .B1(n37), .A0N(\regArr[14][2] ), .A1N(n37), .Y(
        n156) );
  OAI2BB2X1M U190 ( .B0(n297), .B1(n37), .A0N(\regArr[14][3] ), .A1N(n37), .Y(
        n157) );
  OAI2BB2X1M U191 ( .B0(n298), .B1(n37), .A0N(\regArr[14][4] ), .A1N(n37), .Y(
        n158) );
  OAI2BB2X1M U192 ( .B0(n299), .B1(n37), .A0N(\regArr[14][5] ), .A1N(n37), .Y(
        n159) );
  OAI2BB2X1M U193 ( .B0(n300), .B1(n37), .A0N(\regArr[14][6] ), .A1N(n37), .Y(
        n160) );
  OAI2BB2X1M U194 ( .B0(n301), .B1(n37), .A0N(\regArr[14][7] ), .A1N(n37), .Y(
        n161) );
  OAI2BB2X1M U195 ( .B0(n294), .B1(n39), .A0N(\regArr[15][0] ), .A1N(n39), .Y(
        n162) );
  OAI2BB2X1M U196 ( .B0(n295), .B1(n39), .A0N(\regArr[15][1] ), .A1N(n39), .Y(
        n163) );
  OAI2BB2X1M U197 ( .B0(n296), .B1(n39), .A0N(\regArr[15][2] ), .A1N(n39), .Y(
        n164) );
  OAI2BB2X1M U198 ( .B0(n297), .B1(n39), .A0N(\regArr[15][3] ), .A1N(n39), .Y(
        n165) );
  OAI2BB2X1M U199 ( .B0(n298), .B1(n39), .A0N(\regArr[15][4] ), .A1N(n39), .Y(
        n166) );
  OAI2BB2X1M U200 ( .B0(n299), .B1(n39), .A0N(\regArr[15][5] ), .A1N(n39), .Y(
        n167) );
  OAI2BB2X1M U201 ( .B0(n300), .B1(n39), .A0N(\regArr[15][6] ), .A1N(n39), .Y(
        n168) );
  OAI2BB2X1M U202 ( .B0(n301), .B1(n39), .A0N(\regArr[15][7] ), .A1N(n39), .Y(
        n169) );
  OAI2BB2X1M U203 ( .B0(n301), .B1(n19), .A0N(REG2[7]), .A1N(n19), .Y(n65) );
  OAI2BB2X1M U204 ( .B0(n299), .B1(n21), .A0N(REG3[5]), .A1N(n21), .Y(n71) );
  AO21XLM U205 ( .A0(RdData_Valid), .A1(n13), .B0(n302), .Y(n41) );
  AOI22X1M U206 ( .A0(\regArr[10][0] ), .A1(n275), .B0(\regArr[11][0] ), .B1(
        n274), .Y(n6) );
  AOI22X1M U207 ( .A0(\regArr[8][0] ), .A1(n278), .B0(\regArr[9][0] ), .B1(
        n277), .Y(n5) );
  CLKNAND2X2M U208 ( .A(N14), .B(n271), .Y(n254) );
  AOI21X1M U209 ( .A0(n6), .A1(n5), .B0(n254), .Y(n181) );
  AOI22X1M U210 ( .A0(\regArr[14][0] ), .A1(n275), .B0(\regArr[15][0] ), .B1(
        n274), .Y(n8) );
  AOI22X1M U211 ( .A0(\regArr[12][0] ), .A1(n278), .B0(\regArr[13][0] ), .B1(
        n277), .Y(n7) );
  CLKNAND2X2M U212 ( .A(N14), .B(N13), .Y(n257) );
  AOI21X1M U213 ( .A0(n8), .A1(n7), .B0(n257), .Y(n180) );
  AOI22X1M U214 ( .A0(REG2[0]), .A1(n275), .B0(REG3[0]), .B1(n274), .Y(n10) );
  AOI22X1M U215 ( .A0(REG0[0]), .A1(n278), .B0(REG1[0]), .B1(n277), .Y(n9) );
  CLKNAND2X2M U216 ( .A(n271), .B(n270), .Y(n260) );
  AOI21X1M U217 ( .A0(n10), .A1(n9), .B0(n260), .Y(n179) );
  AOI22X1M U218 ( .A0(\regArr[6][0] ), .A1(n275), .B0(\regArr[7][0] ), .B1(
        n274), .Y(n12) );
  AOI22X1M U219 ( .A0(\regArr[4][0] ), .A1(n278), .B0(\regArr[5][0] ), .B1(
        n277), .Y(n11) );
  CLKNAND2X2M U220 ( .A(N13), .B(n270), .Y(n263) );
  AOI21X1M U221 ( .A0(n12), .A1(n11), .B0(n263), .Y(n178) );
  OR4X1M U222 ( .A(n181), .B(n180), .C(n179), .D(n178), .Y(N43) );
  AOI22X1M U223 ( .A0(\regArr[10][1] ), .A1(n275), .B0(\regArr[11][1] ), .B1(
        n274), .Y(n183) );
  AOI22X1M U224 ( .A0(\regArr[8][1] ), .A1(n278), .B0(\regArr[9][1] ), .B1(
        n277), .Y(n182) );
  AOI21X1M U225 ( .A0(n183), .A1(n182), .B0(n254), .Y(n193) );
  AOI22X1M U226 ( .A0(\regArr[14][1] ), .A1(n275), .B0(\regArr[15][1] ), .B1(
        n274), .Y(n185) );
  AOI22X1M U227 ( .A0(\regArr[12][1] ), .A1(n278), .B0(\regArr[13][1] ), .B1(
        n277), .Y(n184) );
  AOI21X1M U228 ( .A0(n185), .A1(n184), .B0(n257), .Y(n192) );
  AOI22X1M U229 ( .A0(REG2[1]), .A1(n275), .B0(REG3[1]), .B1(n274), .Y(n187)
         );
  AOI22X1M U230 ( .A0(REG0[1]), .A1(n278), .B0(REG1[1]), .B1(n277), .Y(n186)
         );
  AOI21X1M U231 ( .A0(n187), .A1(n186), .B0(n260), .Y(n191) );
  AOI22X1M U232 ( .A0(\regArr[6][1] ), .A1(n275), .B0(\regArr[7][1] ), .B1(
        n274), .Y(n189) );
  AOI22X1M U233 ( .A0(\regArr[4][1] ), .A1(n278), .B0(\regArr[5][1] ), .B1(
        n277), .Y(n188) );
  AOI21X1M U234 ( .A0(n189), .A1(n188), .B0(n263), .Y(n190) );
  OR4X1M U235 ( .A(n193), .B(n192), .C(n191), .D(n190), .Y(N42) );
  AOI22X1M U236 ( .A0(\regArr[10][2] ), .A1(n275), .B0(\regArr[11][2] ), .B1(
        n274), .Y(n195) );
  AOI22X1M U237 ( .A0(\regArr[8][2] ), .A1(n278), .B0(\regArr[9][2] ), .B1(
        n277), .Y(n194) );
  AOI21X1M U238 ( .A0(n195), .A1(n194), .B0(n254), .Y(n205) );
  AOI22X1M U239 ( .A0(\regArr[14][2] ), .A1(n275), .B0(\regArr[15][2] ), .B1(
        n274), .Y(n197) );
  AOI22X1M U240 ( .A0(\regArr[12][2] ), .A1(n278), .B0(\regArr[13][2] ), .B1(
        n277), .Y(n196) );
  AOI21X1M U241 ( .A0(n197), .A1(n196), .B0(n257), .Y(n204) );
  AOI22X1M U242 ( .A0(REG2[2]), .A1(n275), .B0(REG3[2]), .B1(n274), .Y(n199)
         );
  AOI22X1M U243 ( .A0(REG0[2]), .A1(n278), .B0(REG1[2]), .B1(n277), .Y(n198)
         );
  AOI21X1M U244 ( .A0(n199), .A1(n198), .B0(n260), .Y(n203) );
  AOI22X1M U245 ( .A0(\regArr[6][2] ), .A1(n275), .B0(\regArr[7][2] ), .B1(
        n274), .Y(n201) );
  AOI22X1M U246 ( .A0(\regArr[4][2] ), .A1(n278), .B0(\regArr[5][2] ), .B1(
        n277), .Y(n200) );
  AOI21X1M U247 ( .A0(n201), .A1(n200), .B0(n263), .Y(n202) );
  OR4X1M U248 ( .A(n205), .B(n204), .C(n203), .D(n202), .Y(N41) );
  AOI22X1M U249 ( .A0(\regArr[10][3] ), .A1(n275), .B0(\regArr[11][3] ), .B1(
        n274), .Y(n207) );
  AOI22X1M U250 ( .A0(\regArr[8][3] ), .A1(n278), .B0(\regArr[9][3] ), .B1(
        n277), .Y(n206) );
  AOI21X1M U251 ( .A0(n207), .A1(n206), .B0(n254), .Y(n217) );
  AOI22X1M U252 ( .A0(\regArr[14][3] ), .A1(n275), .B0(\regArr[15][3] ), .B1(
        n274), .Y(n209) );
  AOI22X1M U253 ( .A0(\regArr[12][3] ), .A1(n278), .B0(\regArr[13][3] ), .B1(
        n277), .Y(n208) );
  AOI21X1M U254 ( .A0(n209), .A1(n208), .B0(n257), .Y(n216) );
  AOI22X1M U255 ( .A0(REG2[3]), .A1(n275), .B0(REG3[3]), .B1(n274), .Y(n211)
         );
  AOI22X1M U256 ( .A0(REG0[3]), .A1(n278), .B0(REG1[3]), .B1(n277), .Y(n210)
         );
  AOI21X1M U257 ( .A0(n211), .A1(n210), .B0(n260), .Y(n215) );
  AOI22X1M U258 ( .A0(\regArr[6][3] ), .A1(n275), .B0(\regArr[7][3] ), .B1(
        n274), .Y(n213) );
  AOI22X1M U259 ( .A0(\regArr[4][3] ), .A1(n278), .B0(\regArr[5][3] ), .B1(
        n277), .Y(n212) );
  AOI21X1M U260 ( .A0(n213), .A1(n212), .B0(n263), .Y(n214) );
  OR4X1M U261 ( .A(n217), .B(n216), .C(n215), .D(n214), .Y(N40) );
  AOI22X1M U262 ( .A0(\regArr[10][4] ), .A1(n275), .B0(\regArr[11][4] ), .B1(
        n274), .Y(n219) );
  AOI22X1M U263 ( .A0(\regArr[8][4] ), .A1(n278), .B0(\regArr[9][4] ), .B1(
        n277), .Y(n218) );
  AOI21X1M U264 ( .A0(n219), .A1(n218), .B0(n254), .Y(n229) );
  AOI22X1M U265 ( .A0(\regArr[14][4] ), .A1(n275), .B0(\regArr[15][4] ), .B1(
        n274), .Y(n221) );
  AOI22X1M U266 ( .A0(\regArr[12][4] ), .A1(n278), .B0(\regArr[13][4] ), .B1(
        n277), .Y(n220) );
  AOI21X1M U267 ( .A0(n221), .A1(n220), .B0(n257), .Y(n228) );
  AOI22X1M U268 ( .A0(REG2[4]), .A1(n275), .B0(REG3[4]), .B1(n274), .Y(n223)
         );
  AOI22X1M U269 ( .A0(REG0[4]), .A1(n278), .B0(REG1[4]), .B1(n277), .Y(n222)
         );
  AOI21X1M U270 ( .A0(n223), .A1(n222), .B0(n260), .Y(n227) );
  AOI22X1M U271 ( .A0(\regArr[6][4] ), .A1(n275), .B0(\regArr[7][4] ), .B1(
        n274), .Y(n225) );
  AOI22X1M U272 ( .A0(\regArr[4][4] ), .A1(n278), .B0(\regArr[5][4] ), .B1(
        n277), .Y(n224) );
  AOI21X1M U273 ( .A0(n225), .A1(n224), .B0(n263), .Y(n226) );
  OR4X1M U274 ( .A(n229), .B(n228), .C(n227), .D(n226), .Y(N39) );
  AOI22X1M U275 ( .A0(\regArr[10][5] ), .A1(n275), .B0(\regArr[11][5] ), .B1(
        n274), .Y(n231) );
  AOI22X1M U276 ( .A0(\regArr[8][5] ), .A1(n278), .B0(\regArr[9][5] ), .B1(
        n277), .Y(n230) );
  AOI21X1M U277 ( .A0(n231), .A1(n230), .B0(n254), .Y(n241) );
  AOI22X1M U278 ( .A0(\regArr[14][5] ), .A1(n275), .B0(\regArr[15][5] ), .B1(
        n274), .Y(n233) );
  AOI22X1M U279 ( .A0(\regArr[12][5] ), .A1(n278), .B0(\regArr[13][5] ), .B1(
        n277), .Y(n232) );
  AOI21X1M U280 ( .A0(n233), .A1(n232), .B0(n257), .Y(n240) );
  AOI22X1M U281 ( .A0(REG2[5]), .A1(n275), .B0(REG3[5]), .B1(n274), .Y(n235)
         );
  AOI22X1M U282 ( .A0(REG0[5]), .A1(n278), .B0(REG1[5]), .B1(n277), .Y(n234)
         );
  AOI21X1M U283 ( .A0(n235), .A1(n234), .B0(n260), .Y(n239) );
  AOI22X1M U284 ( .A0(\regArr[6][5] ), .A1(n275), .B0(\regArr[7][5] ), .B1(
        n274), .Y(n237) );
  AOI22X1M U285 ( .A0(\regArr[4][5] ), .A1(n278), .B0(\regArr[5][5] ), .B1(
        n277), .Y(n236) );
  AOI21X1M U286 ( .A0(n237), .A1(n236), .B0(n263), .Y(n238) );
  OR4X1M U287 ( .A(n241), .B(n240), .C(n239), .D(n238), .Y(N38) );
  AOI22X1M U288 ( .A0(\regArr[10][6] ), .A1(n275), .B0(\regArr[11][6] ), .B1(
        n274), .Y(n243) );
  AOI22X1M U289 ( .A0(\regArr[8][6] ), .A1(n278), .B0(\regArr[9][6] ), .B1(
        n277), .Y(n242) );
  AOI21X1M U290 ( .A0(n243), .A1(n242), .B0(n254), .Y(n253) );
  AOI22X1M U291 ( .A0(\regArr[14][6] ), .A1(n275), .B0(\regArr[15][6] ), .B1(
        n274), .Y(n245) );
  AOI22X1M U292 ( .A0(\regArr[12][6] ), .A1(n278), .B0(\regArr[13][6] ), .B1(
        n277), .Y(n244) );
  AOI21X1M U293 ( .A0(n245), .A1(n244), .B0(n257), .Y(n252) );
  AOI22X1M U294 ( .A0(REG2[6]), .A1(n275), .B0(REG3[6]), .B1(n274), .Y(n247)
         );
  AOI22X1M U295 ( .A0(REG0[6]), .A1(n278), .B0(REG1[6]), .B1(n277), .Y(n246)
         );
  AOI21X1M U296 ( .A0(n247), .A1(n246), .B0(n260), .Y(n251) );
  AOI22X1M U297 ( .A0(\regArr[6][6] ), .A1(n275), .B0(\regArr[7][6] ), .B1(
        n274), .Y(n249) );
  AOI22X1M U298 ( .A0(\regArr[4][6] ), .A1(n278), .B0(\regArr[5][6] ), .B1(
        n277), .Y(n248) );
  AOI21X1M U299 ( .A0(n249), .A1(n248), .B0(n263), .Y(n250) );
  OR4X1M U300 ( .A(n253), .B(n252), .C(n251), .D(n250), .Y(N37) );
  AOI22X1M U301 ( .A0(\regArr[10][7] ), .A1(n275), .B0(\regArr[11][7] ), .B1(
        n274), .Y(n256) );
  AOI22X1M U302 ( .A0(\regArr[8][7] ), .A1(n278), .B0(\regArr[9][7] ), .B1(
        n277), .Y(n255) );
  AOI21X1M U303 ( .A0(n256), .A1(n255), .B0(n254), .Y(n269) );
  AOI22X1M U304 ( .A0(\regArr[14][7] ), .A1(n275), .B0(\regArr[15][7] ), .B1(
        n274), .Y(n259) );
  AOI22X1M U305 ( .A0(\regArr[12][7] ), .A1(n278), .B0(\regArr[13][7] ), .B1(
        n277), .Y(n258) );
  AOI21X1M U306 ( .A0(n259), .A1(n258), .B0(n257), .Y(n268) );
  AOI22X1M U307 ( .A0(REG2[7]), .A1(n275), .B0(REG3[7]), .B1(n274), .Y(n262)
         );
  AOI22X1M U308 ( .A0(REG0[7]), .A1(n278), .B0(REG1[7]), .B1(n277), .Y(n261)
         );
  AOI21X1M U309 ( .A0(n262), .A1(n261), .B0(n260), .Y(n267) );
  AOI22X1M U310 ( .A0(\regArr[6][7] ), .A1(n275), .B0(\regArr[7][7] ), .B1(
        n274), .Y(n265) );
  AOI22X1M U311 ( .A0(\regArr[4][7] ), .A1(n278), .B0(\regArr[5][7] ), .B1(
        n277), .Y(n264) );
  AOI21X1M U312 ( .A0(n265), .A1(n264), .B0(n263), .Y(n266) );
  OR4X1M U313 ( .A(n269), .B(n268), .C(n267), .D(n266), .Y(N36) );
endmodule


module SYS_CTRL ( CLK, RST, ALU_OUT, FULL, OUT_Valid, RdData, RdData_Valid, 
        RX_P_DATA, RX_D_VLD, ALU_FUN, WR_INC, WR_DATA, EN, CLK_EN, Address, 
        WrEn, RdEn, WrData );
  input [15:0] ALU_OUT;
  input [7:0] RdData;
  input [7:0] RX_P_DATA;
  output [3:0] ALU_FUN;
  output [7:0] WR_DATA;
  output [3:0] Address;
  output [7:0] WrData;
  input CLK, RST, FULL, OUT_Valid, RdData_Valid, RX_D_VLD;
  output WR_INC, EN, CLK_EN, WrEn, RdEn;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120,
         n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131,
         n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142,
         n143, n144, n145, n146, n147, n148, n149, n150, n151, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n152, n153, n154, n155;
  wire   [4:0] cur_state;
  wire   [4:0] nxt_state;

  DFFRX1M \opA_reg_reg[1]  ( .D(n144), .CK(CLK), .RN(RST), .QN(n19) );
  DFFRX1M \opA_reg_reg[2]  ( .D(n145), .CK(CLK), .RN(RST), .QN(n18) );
  DFFRX1M \opA_reg_reg[3]  ( .D(n146), .CK(CLK), .RN(RST), .QN(n17) );
  DFFRX1M \opA_reg_reg[4]  ( .D(n147), .CK(CLK), .RN(RST), .QN(n16) );
  DFFRX1M \opA_reg_reg[5]  ( .D(n148), .CK(CLK), .RN(RST), .QN(n15) );
  DFFRX1M \opA_reg_reg[6]  ( .D(n149), .CK(CLK), .RN(RST), .QN(n14) );
  DFFRX1M \opA_reg_reg[7]  ( .D(n150), .CK(CLK), .RN(RST), .QN(n13) );
  DFFRX1M \opA_reg_reg[0]  ( .D(n151), .CK(CLK), .RN(RST), .QN(n20) );
  DFFRX1M \opB_reg_reg[1]  ( .D(n136), .CK(CLK), .RN(n35), .QN(n27) );
  DFFRX1M \opB_reg_reg[2]  ( .D(n137), .CK(CLK), .RN(n35), .QN(n26) );
  DFFRX1M \opB_reg_reg[3]  ( .D(n138), .CK(CLK), .RN(n35), .QN(n25) );
  DFFRX1M \opB_reg_reg[4]  ( .D(n139), .CK(CLK), .RN(n35), .QN(n24) );
  DFFRX1M \opB_reg_reg[5]  ( .D(n140), .CK(CLK), .RN(n35), .QN(n23) );
  DFFRX1M \opB_reg_reg[6]  ( .D(n141), .CK(CLK), .RN(n35), .QN(n22) );
  DFFRX1M \opB_reg_reg[7]  ( .D(n142), .CK(CLK), .RN(n35), .QN(n21) );
  DFFRX1M \opB_reg_reg[0]  ( .D(n143), .CK(CLK), .RN(n35), .QN(n28) );
  DFFRX1M \wr_data_reg_reg[1]  ( .D(n124), .CK(CLK), .RN(n34), .QN(n11) );
  DFFRX1M \wr_data_reg_reg[2]  ( .D(n125), .CK(CLK), .RN(n34), .QN(n10) );
  DFFRX1M \wr_data_reg_reg[3]  ( .D(n126), .CK(CLK), .RN(n34), .QN(n9) );
  DFFRX1M \wr_data_reg_reg[4]  ( .D(n127), .CK(CLK), .RN(n34), .QN(n8) );
  DFFRX1M \wr_data_reg_reg[5]  ( .D(n128), .CK(CLK), .RN(n34), .QN(n7) );
  DFFRX1M \wr_data_reg_reg[6]  ( .D(n129), .CK(CLK), .RN(n34), .QN(n6) );
  DFFRX1M \wr_data_reg_reg[7]  ( .D(n130), .CK(CLK), .RN(n34), .QN(n5) );
  DFFRX1M \wr_data_reg_reg[0]  ( .D(n131), .CK(CLK), .RN(n34), .QN(n12) );
  DFFRX1M \wr_addr_reg_reg[0]  ( .D(n123), .CK(CLK), .RN(n34), .QN(n4) );
  DFFRX1M \wr_addr_reg_reg[1]  ( .D(n120), .CK(CLK), .RN(n34), .QN(n3) );
  DFFRX1M \wr_addr_reg_reg[2]  ( .D(n121), .CK(CLK), .RN(n34), .QN(n2) );
  DFFRX1M \wr_addr_reg_reg[3]  ( .D(n122), .CK(CLK), .RN(n34), .QN(n1) );
  DFFRX1M \alu_fun_reg_reg[1]  ( .D(n132), .CK(CLK), .RN(RST), .QN(n31) );
  DFFRX1M \alu_fun_reg_reg[2]  ( .D(n133), .CK(CLK), .RN(RST), .QN(n30) );
  DFFRX1M \alu_fun_reg_reg[3]  ( .D(n134), .CK(CLK), .RN(RST), .QN(n29) );
  DFFRX1M \alu_fun_reg_reg[0]  ( .D(n135), .CK(CLK), .RN(n34), .QN(n32) );
  DFFRQX2M \cur_state_reg[1]  ( .D(nxt_state[1]), .CK(CLK), .RN(n35), .Q(
        cur_state[1]) );
  DFFRQX2M \cur_state_reg[3]  ( .D(nxt_state[3]), .CK(CLK), .RN(n35), .Q(
        cur_state[3]) );
  DFFRQX2M \cur_state_reg[2]  ( .D(nxt_state[2]), .CK(CLK), .RN(n35), .Q(
        cur_state[2]) );
  DFFRQX2M \cur_state_reg[4]  ( .D(nxt_state[4]), .CK(CLK), .RN(n35), .Q(
        cur_state[4]) );
  DFFRQX2M \cur_state_reg[0]  ( .D(nxt_state[0]), .CK(CLK), .RN(n35), .Q(
        cur_state[0]) );
  NOR2X2M U3 ( .A(n41), .B(n30), .Y(ALU_FUN[2]) );
  NOR3X2M U4 ( .A(cur_state[3]), .B(cur_state[4]), .C(n49), .Y(n82) );
  NOR2X2M U5 ( .A(n118), .B(n2), .Y(Address[2]) );
  NOR2X2M U6 ( .A(n41), .B(n32), .Y(ALU_FUN[0]) );
  INVX2M U7 ( .A(n36), .Y(n35) );
  INVX2M U8 ( .A(EN), .Y(n41) );
  BUFX2M U9 ( .A(n37), .Y(n36) );
  INVX2M U10 ( .A(n37), .Y(n34) );
  AND3X2M U11 ( .A(n105), .B(n107), .C(n63), .Y(n118) );
  NAND3X2M U12 ( .A(n69), .B(n70), .C(n106), .Y(EN) );
  INVX2M U13 ( .A(n58), .Y(n42) );
  INVX2M U14 ( .A(n102), .Y(n48) );
  AOI21X2M U15 ( .A0(n106), .A1(n107), .B0(FULL), .Y(WR_INC) );
  NAND4X2M U16 ( .A(n61), .B(n71), .C(n94), .D(n41), .Y(CLK_EN) );
  NAND2X2M U17 ( .A(n48), .B(n116), .Y(n64) );
  NAND4X2M U18 ( .A(n59), .B(n43), .C(n58), .D(n60), .Y(nxt_state[3]) );
  NOR2BX2M U19 ( .AN(n61), .B(n62), .Y(n60) );
  INVX2M U20 ( .A(n63), .Y(RdEn) );
  INVX2M U21 ( .A(n33), .Y(n43) );
  INVX2M U22 ( .A(n107), .Y(n45) );
  NAND3X2M U23 ( .A(n89), .B(n71), .C(n105), .Y(WrEn) );
  INVX2M U24 ( .A(n101), .Y(n39) );
  OAI21X2M U25 ( .A0(FULL), .A1(n58), .B0(n59), .Y(nxt_state[4]) );
  INVX2M U26 ( .A(RST), .Y(n37) );
  NOR2X2M U27 ( .A(n50), .B(n44), .Y(n116) );
  NAND2X2M U28 ( .A(n97), .B(n117), .Y(n71) );
  NAND2X2M U29 ( .A(n76), .B(n116), .Y(n63) );
  NAND2X2M U30 ( .A(n116), .B(n117), .Y(n58) );
  NAND2X2M U31 ( .A(n77), .B(n117), .Y(n69) );
  NOR2X2M U32 ( .A(n42), .B(n92), .Y(n106) );
  NAND2X2M U33 ( .A(n97), .B(n82), .Y(n105) );
  NAND2X2M U34 ( .A(n77), .B(n82), .Y(n107) );
  NAND2X2M U35 ( .A(n77), .B(n48), .Y(n70) );
  NAND2X2M U36 ( .A(n119), .B(n49), .Y(n102) );
  NOR3BX2M U37 ( .AN(n89), .B(n103), .C(n83), .Y(n61) );
  OAI211X2M U38 ( .A0(n70), .A1(n52), .B0(n89), .C0(n38), .Y(n81) );
  INVX2M U39 ( .A(n67), .Y(n38) );
  NAND3X2M U40 ( .A(n44), .B(n50), .C(n117), .Y(n89) );
  NAND2X2M U41 ( .A(n82), .B(n116), .Y(n94) );
  OAI2BB1X2M U42 ( .A0N(n97), .A1N(n48), .B0(n64), .Y(n83) );
  NAND4X2M U43 ( .A(n68), .B(n69), .C(n70), .D(n71), .Y(n62) );
  OR2X2M U44 ( .A(n72), .B(n73), .Y(n68) );
  NAND4X2M U45 ( .A(n90), .B(n91), .C(n58), .D(n59), .Y(n67) );
  NAND2BX2M U46 ( .AN(n94), .B(n155), .Y(n90) );
  NAND4BX1M U47 ( .AN(n73), .B(n93), .C(n154), .D(n56), .Y(n91) );
  NAND2X2M U48 ( .A(FULL), .B(n92), .Y(n59) );
  BUFX2M U49 ( .A(n104), .Y(n33) );
  NOR2X2M U50 ( .A(n155), .B(n94), .Y(n104) );
  NOR3X2M U51 ( .A(n155), .B(n44), .C(n102), .Y(n101) );
  NOR3X2M U52 ( .A(n153), .B(n73), .C(n55), .Y(n74) );
  OAI22X1M U53 ( .A0(n52), .A1(n69), .B0(n72), .B1(n73), .Y(n88) );
  INVX2M U54 ( .A(n78), .Y(n40) );
  INVX2M U55 ( .A(n85), .Y(n46) );
  INVX2M U56 ( .A(n84), .Y(n47) );
  AO21XLM U57 ( .A0(n97), .A1(n76), .B0(n83), .Y(n96) );
  NOR3X2M U58 ( .A(cur_state[3]), .B(cur_state[4]), .C(cur_state[1]), .Y(n76)
         );
  OAI21X2M U59 ( .A0(n118), .A1(n4), .B0(n71), .Y(Address[0]) );
  NOR2X2M U60 ( .A(n118), .B(n3), .Y(Address[1]) );
  NOR2X2M U61 ( .A(n50), .B(cur_state[0]), .Y(n77) );
  NOR2X2M U62 ( .A(n44), .B(cur_state[2]), .Y(n97) );
  NOR2X2M U63 ( .A(n41), .B(n31), .Y(ALU_FUN[1]) );
  AND4X2M U64 ( .A(cur_state[4]), .B(n116), .C(cur_state[1]), .D(cur_state[3]), 
        .Y(n92) );
  NOR2BX2M U65 ( .AN(cur_state[3]), .B(cur_state[4]), .Y(n119) );
  INVX2M U66 ( .A(cur_state[0]), .Y(n44) );
  AND2X2M U67 ( .A(n119), .B(cur_state[1]), .Y(n117) );
  INVX2M U68 ( .A(cur_state[2]), .Y(n50) );
  NOR2X2M U69 ( .A(n41), .B(n29), .Y(ALU_FUN[3]) );
  INVX2M U70 ( .A(cur_state[1]), .Y(n49) );
  OAI222X1M U71 ( .A0(n20), .A1(n89), .B0(n28), .B1(n71), .C0(n12), .C1(n105), 
        .Y(WrData[0]) );
  OAI222X1M U72 ( .A0(n19), .A1(n89), .B0(n27), .B1(n71), .C0(n11), .C1(n105), 
        .Y(WrData[1]) );
  OAI222X1M U73 ( .A0(n18), .A1(n89), .B0(n26), .B1(n71), .C0(n10), .C1(n105), 
        .Y(WrData[2]) );
  OAI222X1M U74 ( .A0(n17), .A1(n89), .B0(n25), .B1(n71), .C0(n9), .C1(n105), 
        .Y(WrData[3]) );
  OAI222X1M U75 ( .A0(n16), .A1(n89), .B0(n24), .B1(n71), .C0(n8), .C1(n105), 
        .Y(WrData[4]) );
  OAI222X1M U76 ( .A0(n15), .A1(n89), .B0(n23), .B1(n71), .C0(n7), .C1(n105), 
        .Y(WrData[5]) );
  OAI222X1M U77 ( .A0(n14), .A1(n89), .B0(n22), .B1(n71), .C0(n6), .C1(n105), 
        .Y(WrData[6]) );
  OAI222X1M U78 ( .A0(n13), .A1(n89), .B0(n21), .B1(n71), .C0(n5), .C1(n105), 
        .Y(WrData[7]) );
  NOR2X2M U79 ( .A(n118), .B(n1), .Y(Address[3]) );
  NAND4X2M U80 ( .A(RX_P_DATA[3]), .B(n76), .C(RX_P_DATA[7]), .D(n98), .Y(n73)
         );
  NOR3X2M U81 ( .A(n155), .B(cur_state[2]), .C(cur_state[0]), .Y(n98) );
  OAI22X1M U82 ( .A0(n154), .A1(n43), .B0(n33), .B1(n20), .Y(n151) );
  OAI22X1M U83 ( .A0(n53), .A1(n43), .B0(n33), .B1(n13), .Y(n150) );
  OAI22X1M U84 ( .A0(n54), .A1(n43), .B0(n33), .B1(n14), .Y(n149) );
  OAI22X1M U85 ( .A0(n55), .A1(n43), .B0(n33), .B1(n15), .Y(n148) );
  OAI22X1M U86 ( .A0(n56), .A1(n43), .B0(n33), .B1(n16), .Y(n147) );
  OAI22X1M U87 ( .A0(n57), .A1(n43), .B0(n33), .B1(n17), .Y(n146) );
  OAI22X1M U88 ( .A0(n152), .A1(n43), .B0(n33), .B1(n18), .Y(n145) );
  OAI22X1M U89 ( .A0(n153), .A1(n43), .B0(n33), .B1(n19), .Y(n144) );
  OAI2BB1X2M U90 ( .A0N(RdData[0]), .A1N(n45), .B0(n115), .Y(WR_DATA[0]) );
  AOI22X1M U91 ( .A0(ALU_OUT[8]), .A1(n92), .B0(ALU_OUT[0]), .B1(n42), .Y(n115) );
  OAI2BB1X2M U92 ( .A0N(RdData[1]), .A1N(n45), .B0(n114), .Y(WR_DATA[1]) );
  AOI22X1M U93 ( .A0(ALU_OUT[9]), .A1(n92), .B0(ALU_OUT[1]), .B1(n42), .Y(n114) );
  OAI2BB1X2M U94 ( .A0N(RdData[2]), .A1N(n45), .B0(n113), .Y(WR_DATA[2]) );
  AOI22X1M U95 ( .A0(ALU_OUT[10]), .A1(n92), .B0(ALU_OUT[2]), .B1(n42), .Y(
        n113) );
  OAI2BB1X2M U96 ( .A0N(RdData[3]), .A1N(n45), .B0(n112), .Y(WR_DATA[3]) );
  AOI22X1M U97 ( .A0(ALU_OUT[11]), .A1(n92), .B0(ALU_OUT[3]), .B1(n42), .Y(
        n112) );
  OAI2BB1X2M U98 ( .A0N(RdData[4]), .A1N(n45), .B0(n111), .Y(WR_DATA[4]) );
  AOI22X1M U99 ( .A0(ALU_OUT[12]), .A1(n92), .B0(ALU_OUT[4]), .B1(n42), .Y(
        n111) );
  OAI2BB1X2M U100 ( .A0N(RdData[5]), .A1N(n45), .B0(n110), .Y(WR_DATA[5]) );
  AOI22X1M U101 ( .A0(ALU_OUT[13]), .A1(n92), .B0(ALU_OUT[5]), .B1(n42), .Y(
        n110) );
  OAI2BB1X2M U102 ( .A0N(RdData[6]), .A1N(n45), .B0(n109), .Y(WR_DATA[6]) );
  AOI22X1M U103 ( .A0(ALU_OUT[14]), .A1(n92), .B0(ALU_OUT[6]), .B1(n42), .Y(
        n109) );
  OAI2BB1X2M U104 ( .A0N(RdData[7]), .A1N(n45), .B0(n108), .Y(WR_DATA[7]) );
  AOI22X1M U105 ( .A0(ALU_OUT[15]), .A1(n92), .B0(ALU_OUT[7]), .B1(n42), .Y(
        n108) );
  INVX2M U106 ( .A(RX_D_VLD), .Y(n155) );
  NAND4X2M U107 ( .A(n69), .B(n78), .C(n79), .D(n80), .Y(nxt_state[1]) );
  AOI32X1M U108 ( .A0(n44), .A1(n50), .A2(n82), .B0(RX_D_VLD), .B1(n83), .Y(
        n79) );
  AOI221XLM U109 ( .A0(n45), .A1(FULL), .B0(RdData_Valid), .B1(RdEn), .C0(n81), 
        .Y(n80) );
  NAND4X2M U110 ( .A(n84), .B(n85), .C(n86), .D(n87), .Y(nxt_state[0]) );
  AOI32X1M U111 ( .A0(n74), .A1(n154), .A2(n95), .B0(n96), .B1(n155), .Y(n86)
         );
  AOI211X2M U112 ( .A0(RdEn), .A1(n51), .B0(n88), .C0(n81), .Y(n87) );
  NOR3X2M U113 ( .A(RX_P_DATA[2]), .B(RX_P_DATA[6]), .C(RX_P_DATA[4]), .Y(n95)
         );
  NAND4X2M U114 ( .A(n63), .B(n64), .C(n65), .D(n66), .Y(nxt_state[2]) );
  AOI32X1M U115 ( .A0(n74), .A1(RX_P_DATA[4]), .A2(n75), .B0(n76), .B1(n77), 
        .Y(n65) );
  AOI211X2M U116 ( .A0(n45), .A1(FULL), .B0(n67), .C0(n62), .Y(n66) );
  NOR3X2M U117 ( .A(n154), .B(RX_P_DATA[6]), .C(RX_P_DATA[2]), .Y(n75) );
  NAND3X2M U118 ( .A(n97), .B(RX_D_VLD), .C(n76), .Y(n78) );
  NOR3X2M U119 ( .A(cur_state[0]), .B(cur_state[2]), .C(n102), .Y(n103) );
  NAND2X2M U120 ( .A(n103), .B(RX_D_VLD), .Y(n85) );
  NAND3X2M U121 ( .A(RX_D_VLD), .B(n99), .C(n100), .Y(n84) );
  NOR3X2M U122 ( .A(cur_state[0]), .B(cur_state[4]), .C(cur_state[3]), .Y(n100) );
  XNOR2X2M U123 ( .A(n50), .B(cur_state[1]), .Y(n99) );
  OAI22X1M U124 ( .A0(n154), .A1(n39), .B0(n101), .B1(n32), .Y(n135) );
  OAI22X1M U125 ( .A0(n57), .A1(n39), .B0(n101), .B1(n29), .Y(n134) );
  OAI22X1M U126 ( .A0(n152), .A1(n39), .B0(n101), .B1(n30), .Y(n133) );
  OAI22X1M U127 ( .A0(n153), .A1(n39), .B0(n101), .B1(n31), .Y(n132) );
  OAI22X1M U128 ( .A0(n57), .A1(n84), .B0(n47), .B1(n1), .Y(n122) );
  OAI22X1M U129 ( .A0(n152), .A1(n84), .B0(n47), .B1(n2), .Y(n121) );
  OAI22X1M U130 ( .A0(n153), .A1(n84), .B0(n47), .B1(n3), .Y(n120) );
  OAI22X1M U131 ( .A0(n154), .A1(n84), .B0(n47), .B1(n4), .Y(n123) );
  OAI22X1M U132 ( .A0(n154), .A1(n85), .B0(n46), .B1(n28), .Y(n143) );
  OAI22X1M U133 ( .A0(n53), .A1(n85), .B0(n46), .B1(n21), .Y(n142) );
  OAI22X1M U134 ( .A0(n54), .A1(n85), .B0(n46), .B1(n22), .Y(n141) );
  OAI22X1M U135 ( .A0(n55), .A1(n85), .B0(n46), .B1(n23), .Y(n140) );
  OAI22X1M U136 ( .A0(n56), .A1(n85), .B0(n46), .B1(n24), .Y(n139) );
  OAI22X1M U137 ( .A0(n57), .A1(n85), .B0(n46), .B1(n25), .Y(n138) );
  OAI22X1M U138 ( .A0(n152), .A1(n85), .B0(n46), .B1(n26), .Y(n137) );
  OAI22X1M U139 ( .A0(n153), .A1(n85), .B0(n46), .B1(n27), .Y(n136) );
  OAI22X1M U140 ( .A0(n154), .A1(n78), .B0(n40), .B1(n12), .Y(n131) );
  OAI22X1M U141 ( .A0(n53), .A1(n78), .B0(n40), .B1(n5), .Y(n130) );
  OAI22X1M U142 ( .A0(n54), .A1(n78), .B0(n40), .B1(n6), .Y(n129) );
  OAI22X1M U143 ( .A0(n55), .A1(n78), .B0(n40), .B1(n7), .Y(n128) );
  OAI22X1M U144 ( .A0(n56), .A1(n78), .B0(n40), .B1(n8), .Y(n127) );
  OAI22X1M U145 ( .A0(n57), .A1(n78), .B0(n40), .B1(n9), .Y(n126) );
  OAI22X1M U146 ( .A0(n152), .A1(n78), .B0(n40), .B1(n10), .Y(n125) );
  OAI22X1M U147 ( .A0(n153), .A1(n78), .B0(n40), .B1(n11), .Y(n124) );
  INVX2M U148 ( .A(OUT_Valid), .Y(n52) );
  INVX2M U149 ( .A(RdData_Valid), .Y(n51) );
  NOR4X1M U150 ( .A(n54), .B(n152), .C(RX_P_DATA[1]), .D(RX_P_DATA[5]), .Y(n93) );
  INVX2M U151 ( .A(RX_P_DATA[2]), .Y(n152) );
  INVX2M U152 ( .A(RX_P_DATA[0]), .Y(n154) );
  INVX2M U153 ( .A(RX_P_DATA[1]), .Y(n153) );
  INVX2M U154 ( .A(RX_P_DATA[6]), .Y(n54) );
  NAND3X2M U155 ( .A(RX_P_DATA[0]), .B(n93), .C(RX_P_DATA[4]), .Y(n72) );
  INVX2M U156 ( .A(RX_P_DATA[5]), .Y(n55) );
  INVX2M U157 ( .A(RX_P_DATA[3]), .Y(n57) );
  INVX2M U158 ( .A(RX_P_DATA[4]), .Y(n56) );
  INVX2M U159 ( .A(RX_P_DATA[7]), .Y(n53) );
endmodule


module Domain_1_TOP ( RX_P_DATA, RX_D_VLD, REF_CLK, RST, FULL, WR_DATA, WR_INC, 
        UART_CONF, REG3 );
  input [7:0] RX_P_DATA;
  output [7:0] WR_DATA;
  output [7:0] UART_CONF;
  output [7:0] REG3;
  input RX_D_VLD, REF_CLK, RST, FULL;
  output WR_INC;
  wire   CLK_EN, GATED_CLK, EN, OUT_Valid, WrEn, RdEn, RdData_Valid, n1, n2;
  wire   [7:0] REG0;
  wire   [7:0] REG1;
  wire   [3:0] ALU_FUN;
  wire   [15:0] ALU_OUT;
  wire   [3:0] Address;
  wire   [7:0] WrData;
  wire   [7:0] RdData;

  Clock_Gating Clock_Gating_U0 ( .CLK_EN(CLK_EN), .CLK(REF_CLK), .GATED_CLK(
        GATED_CLK) );
  ALU ALU_U1 ( .CLK(GATED_CLK), .RST(n1), .A(REG0), .B(REG1), .ALU_FUN(ALU_FUN), .Enable(EN), .ALU_OUT(ALU_OUT), .OUT_VALID(OUT_Valid) );
  RegFile RegFile_U2 ( .CLK(REF_CLK), .RST(n1), .Address(Address), .WrEn(WrEn), 
        .RdEn(RdEn), .WrData(WrData), .RdData(RdData), .RdData_Valid(
        RdData_Valid), .REG0(REG0), .REG1(REG1), .REG2(UART_CONF), .REG3(REG3)
         );
  SYS_CTRL SYS_CTRL_U3 ( .CLK(REF_CLK), .RST(n1), .ALU_OUT(ALU_OUT), .FULL(
        FULL), .OUT_Valid(OUT_Valid), .RdData(RdData), .RdData_Valid(
        RdData_Valid), .RX_P_DATA(RX_P_DATA), .RX_D_VLD(RX_D_VLD), .ALU_FUN(
        ALU_FUN), .WR_INC(WR_INC), .WR_DATA(WR_DATA), .EN(EN), .CLK_EN(CLK_EN), 
        .Address(Address), .WrEn(WrEn), .RdEn(RdEn), .WrData(WrData) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
endmodule


module FSM_TX ( Data_Valid, ser_done, PAR_EN, CLK, RST, busy, ser_en, mux_sel
 );
  output [1:0] mux_sel;
  input Data_Valid, ser_done, PAR_EN, CLK, RST;
  output busy, ser_en;
  wire   n3, n4, n5, n6, n7, n8, n1, n2;
  wire   [2:0] cur_state;
  wire   [2:0] next_state;

  DFFRQX2M \cur_state_reg[2]  ( .D(next_state[2]), .CK(CLK), .RN(RST), .Q(
        cur_state[2]) );
  DFFRQX2M \cur_state_reg[1]  ( .D(next_state[1]), .CK(CLK), .RN(RST), .Q(
        cur_state[1]) );
  DFFRQX2M \cur_state_reg[0]  ( .D(next_state[0]), .CK(CLK), .RN(RST), .Q(
        cur_state[0]) );
  OR2X2M U3 ( .A(n8), .B(next_state[1]), .Y(busy) );
  NAND2X2M U4 ( .A(n3), .B(n5), .Y(ser_en) );
  NOR2X2M U5 ( .A(n2), .B(n1), .Y(n8) );
  NAND2X2M U6 ( .A(n3), .B(n4), .Y(mux_sel[1]) );
  NAND2BX2M U7 ( .AN(ser_en), .B(n4), .Y(next_state[1]) );
  NAND3X2M U8 ( .A(cur_state[0]), .B(n2), .C(cur_state[1]), .Y(n3) );
  NAND3X2M U9 ( .A(n1), .B(n2), .C(cur_state[0]), .Y(n5) );
  INVX2M U10 ( .A(cur_state[2]), .Y(n2) );
  INVX2M U11 ( .A(cur_state[1]), .Y(n1) );
  NAND2BX2M U12 ( .AN(cur_state[0]), .B(n8), .Y(n4) );
  OAI2B1X2M U13 ( .A1N(ser_done), .A0(n3), .B0(n4), .Y(next_state[2]) );
  NAND2X2M U14 ( .A(cur_state[0]), .B(n2), .Y(mux_sel[0]) );
  NAND3X2M U15 ( .A(n4), .B(n5), .C(n6), .Y(next_state[0]) );
  AOI32X1M U16 ( .A0(n1), .A1(n2), .A2(Data_Valid), .B0(n7), .B1(cur_state[0]), 
        .Y(n6) );
  AOI21X2M U17 ( .A0(PAR_EN), .A1(ser_done), .B0(cur_state[2]), .Y(n7) );
endmodule


module serializer_TX ( P_DATA, ser_en, CLK, RST, ser_data, ser_done );
  input [7:0] P_DATA;
  input ser_en, CLK, RST;
  output ser_data, ser_done;
  wire   Counter_Done, N10, N11, N12, N13, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n1, n2, n3, n4, n5, n6;
  wire   [3:0] Counter;
  wire   [7:0] P_DATA_Hold;

  DFFRQX2M \P_DATA_Hold_reg[6]  ( .D(n26), .CK(CLK), .RN(RST), .Q(
        P_DATA_Hold[6]) );
  DFFRQX2M \P_DATA_Hold_reg[5]  ( .D(n27), .CK(CLK), .RN(RST), .Q(
        P_DATA_Hold[5]) );
  DFFRQX2M \P_DATA_Hold_reg[4]  ( .D(n28), .CK(CLK), .RN(RST), .Q(
        P_DATA_Hold[4]) );
  DFFRQX2M \P_DATA_Hold_reg[3]  ( .D(n29), .CK(CLK), .RN(RST), .Q(
        P_DATA_Hold[3]) );
  DFFRQX2M \P_DATA_Hold_reg[2]  ( .D(n30), .CK(CLK), .RN(RST), .Q(
        P_DATA_Hold[2]) );
  DFFRQX2M \P_DATA_Hold_reg[1]  ( .D(n31), .CK(CLK), .RN(RST), .Q(
        P_DATA_Hold[1]) );
  DFFRQX2M \P_DATA_Hold_reg[0]  ( .D(n25), .CK(CLK), .RN(RST), .Q(
        P_DATA_Hold[0]) );
  DFFRQX2M Counter_Done_reg ( .D(n32), .CK(CLK), .RN(RST), .Q(Counter_Done) );
  DFFRQX2M ser_data_reg ( .D(n24), .CK(CLK), .RN(RST), .Q(ser_data) );
  DFFRQX2M ser_done_reg ( .D(n33), .CK(CLK), .RN(RST), .Q(ser_done) );
  DFFRQX2M \Counter_reg[0]  ( .D(N10), .CK(CLK), .RN(RST), .Q(Counter[0]) );
  DFFRQX2M \Counter_reg[2]  ( .D(N12), .CK(CLK), .RN(RST), .Q(Counter[2]) );
  DFFRQX2M \Counter_reg[1]  ( .D(N11), .CK(CLK), .RN(RST), .Q(Counter[1]) );
  DFFRQX2M \Counter_reg[3]  ( .D(N13), .CK(CLK), .RN(RST), .Q(Counter[3]) );
  AO21XLM U3 ( .A0(n3), .A1(Counter_Done), .B0(n6), .Y(n1) );
  NOR4X1M U4 ( .A(Counter[0]), .B(Counter[1]), .C(Counter[2]), .D(Counter[3]), 
        .Y(n17) );
  INVX2M U5 ( .A(ser_en), .Y(n6) );
  NOR2X2M U6 ( .A(n3), .B(n1), .Y(n9) );
  NOR2X2M U7 ( .A(n1), .B(n17), .Y(n8) );
  INVX2M U8 ( .A(n17), .Y(n3) );
  OAI32X1M U9 ( .A0(n22), .A1(n2), .A2(n4), .B0(n20), .B1(n5), .Y(N12) );
  NAND2X2M U10 ( .A(ser_en), .B(n5), .Y(n22) );
  NOR2X2M U11 ( .A(n6), .B(n19), .Y(n18) );
  AOI21X2M U12 ( .A0(n4), .A1(ser_en), .B0(N10), .Y(n20) );
  OAI2BB1X2M U13 ( .A0N(ser_data), .A1N(n1), .B0(n7), .Y(n24) );
  AOI22X1M U14 ( .A0(P_DATA_Hold[0]), .A1(n8), .B0(P_DATA[0]), .B1(n9), .Y(n7)
         );
  OAI2BB1X2M U15 ( .A0N(n1), .A1N(P_DATA_Hold[0]), .B0(n10), .Y(n25) );
  AOI22X1M U16 ( .A0(P_DATA_Hold[1]), .A1(n8), .B0(P_DATA[1]), .B1(n9), .Y(n10) );
  OAI2BB1X2M U17 ( .A0N(n1), .A1N(P_DATA_Hold[1]), .B0(n16), .Y(n31) );
  AOI22X1M U18 ( .A0(P_DATA_Hold[2]), .A1(n8), .B0(P_DATA[2]), .B1(n9), .Y(n16) );
  OAI2BB1X2M U19 ( .A0N(n1), .A1N(P_DATA_Hold[2]), .B0(n15), .Y(n30) );
  AOI22X1M U20 ( .A0(P_DATA_Hold[3]), .A1(n8), .B0(P_DATA[3]), .B1(n9), .Y(n15) );
  OAI2BB1X2M U21 ( .A0N(n1), .A1N(P_DATA_Hold[3]), .B0(n14), .Y(n29) );
  AOI22X1M U22 ( .A0(P_DATA_Hold[4]), .A1(n8), .B0(P_DATA[4]), .B1(n9), .Y(n14) );
  OAI2BB1X2M U23 ( .A0N(n1), .A1N(P_DATA_Hold[4]), .B0(n13), .Y(n28) );
  AOI22X1M U24 ( .A0(P_DATA_Hold[5]), .A1(n8), .B0(P_DATA[5]), .B1(n9), .Y(n13) );
  OAI2BB1X2M U25 ( .A0N(n1), .A1N(P_DATA_Hold[5]), .B0(n12), .Y(n27) );
  AOI22X1M U26 ( .A0(P_DATA_Hold[6]), .A1(n8), .B0(P_DATA[6]), .B1(n9), .Y(n12) );
  OAI2BB1X2M U27 ( .A0N(n1), .A1N(P_DATA_Hold[6]), .B0(n11), .Y(n26) );
  NAND2X2M U28 ( .A(P_DATA[7]), .B(n9), .Y(n11) );
  NOR4X1M U29 ( .A(n5), .B(n4), .C(n2), .D(Counter[3]), .Y(n19) );
  OAI2B2X1M U30 ( .A1N(Counter[3]), .A0(n20), .B0(n21), .B1(n6), .Y(N13) );
  AOI21X2M U31 ( .A0(Counter[3]), .A1(n5), .B0(n19), .Y(n21) );
  OAI2BB2X1M U32 ( .B0(n18), .B1(n6), .A0N(Counter_Done), .A1N(n18), .Y(n32)
         );
  OAI2BB2X1M U33 ( .B0(n18), .B1(n6), .A0N(ser_done), .A1N(n18), .Y(n33) );
  NOR2X2M U34 ( .A(n6), .B(Counter[0]), .Y(N10) );
  INVX2M U35 ( .A(Counter[2]), .Y(n5) );
  INVX2M U36 ( .A(Counter[0]), .Y(n2) );
  INVX2M U37 ( .A(Counter[1]), .Y(n4) );
  NOR2X2M U38 ( .A(n23), .B(n6), .Y(N11) );
  XNOR2X2M U39 ( .A(Counter[0]), .B(Counter[1]), .Y(n23) );
endmodule


module MUX_TX ( mux_sel, ser_data, par_bit, CLK, RST, TX_OUT );
  input [1:0] mux_sel;
  input ser_data, par_bit, CLK, RST;
  output TX_OUT;
  wire   TX_INNER, n2, n3, n1;

  DFFSQX2M TX_OUT_reg ( .D(TX_INNER), .CK(CLK), .SN(RST), .Q(TX_OUT) );
  OAI21X2M U3 ( .A0(n2), .A1(n1), .B0(n3), .Y(TX_INNER) );
  NAND3X2M U4 ( .A(mux_sel[1]), .B(n1), .C(ser_data), .Y(n3) );
  NOR2BX2M U5 ( .AN(mux_sel[1]), .B(par_bit), .Y(n2) );
  INVX2M U6 ( .A(mux_sel[0]), .Y(n1) );
endmodule


module Parity_Calc_TX ( P_DATA, Data_Valid, PAR_TYP, CLK, RST, par_bit );
  input [7:0] P_DATA;
  input Data_Valid, PAR_TYP, CLK, RST;
  output par_bit;
  wire   par_bit_inner, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;
  wire   [7:0] P_DATA_Hold;

  DFFRQX2M \P_DATA_Hold_reg[5]  ( .D(n10), .CK(CLK), .RN(RST), .Q(
        P_DATA_Hold[5]) );
  DFFRQX2M \P_DATA_Hold_reg[1]  ( .D(n6), .CK(CLK), .RN(RST), .Q(
        P_DATA_Hold[1]) );
  DFFRQX2M \P_DATA_Hold_reg[4]  ( .D(n9), .CK(CLK), .RN(RST), .Q(
        P_DATA_Hold[4]) );
  DFFRQX2M \P_DATA_Hold_reg[0]  ( .D(n5), .CK(CLK), .RN(RST), .Q(
        P_DATA_Hold[0]) );
  DFFRQX2M \P_DATA_Hold_reg[6]  ( .D(n11), .CK(CLK), .RN(RST), .Q(
        P_DATA_Hold[6]) );
  DFFRQX2M \P_DATA_Hold_reg[2]  ( .D(n7), .CK(CLK), .RN(RST), .Q(
        P_DATA_Hold[2]) );
  DFFRQX2M \P_DATA_Hold_reg[7]  ( .D(n12), .CK(CLK), .RN(RST), .Q(
        P_DATA_Hold[7]) );
  DFFRQX2M \P_DATA_Hold_reg[3]  ( .D(n8), .CK(CLK), .RN(RST), .Q(
        P_DATA_Hold[3]) );
  DFFRQX2M par_bit_reg ( .D(par_bit_inner), .CK(CLK), .RN(RST), .Q(par_bit) );
  XOR3XLM U3 ( .A(n1), .B(n2), .C(PAR_TYP), .Y(par_bit_inner) );
  XOR3XLM U4 ( .A(P_DATA_Hold[5]), .B(P_DATA_Hold[4]), .C(n4), .Y(n1) );
  XOR3XLM U5 ( .A(P_DATA_Hold[1]), .B(P_DATA_Hold[0]), .C(n3), .Y(n2) );
  CLKXOR2X2M U6 ( .A(P_DATA_Hold[7]), .B(P_DATA_Hold[6]), .Y(n4) );
  AO2B2X2M U7 ( .B0(P_DATA[0]), .B1(Data_Valid), .A0(P_DATA_Hold[0]), .A1N(
        Data_Valid), .Y(n5) );
  AO2B2X2M U8 ( .B0(P_DATA[1]), .B1(Data_Valid), .A0(P_DATA_Hold[1]), .A1N(
        Data_Valid), .Y(n6) );
  AO2B2X2M U9 ( .B0(P_DATA[2]), .B1(Data_Valid), .A0(P_DATA_Hold[2]), .A1N(
        Data_Valid), .Y(n7) );
  AO2B2X2M U10 ( .B0(P_DATA[3]), .B1(Data_Valid), .A0(P_DATA_Hold[3]), .A1N(
        Data_Valid), .Y(n8) );
  AO2B2X2M U11 ( .B0(P_DATA[4]), .B1(Data_Valid), .A0(P_DATA_Hold[4]), .A1N(
        Data_Valid), .Y(n9) );
  AO2B2X2M U12 ( .B0(P_DATA[5]), .B1(Data_Valid), .A0(P_DATA_Hold[5]), .A1N(
        Data_Valid), .Y(n10) );
  AO2B2X2M U13 ( .B0(P_DATA[6]), .B1(Data_Valid), .A0(P_DATA_Hold[6]), .A1N(
        Data_Valid), .Y(n11) );
  AO2B2X2M U14 ( .B0(P_DATA[7]), .B1(Data_Valid), .A0(P_DATA_Hold[7]), .A1N(
        Data_Valid), .Y(n12) );
  CLKXOR2X2M U15 ( .A(P_DATA_Hold[3]), .B(P_DATA_Hold[2]), .Y(n3) );
endmodule


module Top_TX ( Data_Valid, PAR_TYP, PAR_EN, P_DATA, CLK, RST, TX_OUT, busy );
  input [7:0] P_DATA;
  input Data_Valid, PAR_TYP, PAR_EN, CLK, RST;
  output TX_OUT, busy;
  wire   ser_done, ser_en, ser_data, par_bit, n1, n2;
  wire   [1:0] mux_sel;

  FSM_TX U1 ( .Data_Valid(Data_Valid), .ser_done(ser_done), .PAR_EN(PAR_EN), 
        .CLK(CLK), .RST(n1), .busy(busy), .ser_en(ser_en), .mux_sel(mux_sel)
         );
  serializer_TX U2 ( .P_DATA(P_DATA), .ser_en(ser_en), .CLK(CLK), .RST(n1), 
        .ser_data(ser_data), .ser_done(ser_done) );
  MUX_TX U3 ( .mux_sel(mux_sel), .ser_data(ser_data), .par_bit(par_bit), .CLK(
        CLK), .RST(n1), .TX_OUT(TX_OUT) );
  Parity_Calc_TX U4 ( .P_DATA(P_DATA), .Data_Valid(Data_Valid), .PAR_TYP(
        PAR_TYP), .CLK(CLK), .RST(n1), .par_bit(par_bit) );
  INVX2M U5 ( .A(n2), .Y(n1) );
  INVX2M U6 ( .A(RST), .Y(n2) );
endmodule


module FSM_RX ( PAR_EN, RX_IN, strt_glitch, stp_err, par_err, edge_cnt_done, 
        CLK, RST, bit_cnt, enable, stp_en, deser_en, strt_chk_en, par_chk_en, 
        data_valid, data_sample_en );
  input [0:3] bit_cnt;
  input PAR_EN, RX_IN, strt_glitch, stp_err, par_err, edge_cnt_done, CLK, RST;
  output enable, stp_en, deser_en, strt_chk_en, par_chk_en, data_valid,
         data_sample_en;
  wire   n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n2,
         n3, n4, n5, n6, n7, n8, n22;
  wire   [0:2] cur_state;
  wire   [0:2] nxt_state;

  DFFRQX2M \cur_state_reg[1]  ( .D(nxt_state[1]), .CK(CLK), .RN(RST), .Q(
        cur_state[1]) );
  DFFRQX2M \cur_state_reg[2]  ( .D(nxt_state[2]), .CK(CLK), .RN(RST), .Q(
        cur_state[2]) );
  DFFRQX2M \cur_state_reg[0]  ( .D(nxt_state[0]), .CK(CLK), .RN(RST), .Q(
        cur_state[0]) );
  INVX2M U3 ( .A(par_err), .Y(n3) );
  INVX2M U4 ( .A(deser_en), .Y(n5) );
  INVX2M U5 ( .A(stp_en), .Y(n7) );
  INVX2M U6 ( .A(strt_glitch), .Y(n4) );
  NOR3X2M U7 ( .A(n22), .B(n6), .C(n8), .Y(data_valid) );
  NOR3X2M U8 ( .A(n8), .B(cur_state[2]), .C(n22), .Y(stp_en) );
  NOR3X2M U9 ( .A(cur_state[0]), .B(cur_state[2]), .C(n22), .Y(par_chk_en) );
  NOR3X2M U10 ( .A(cur_state[0]), .B(cur_state[1]), .C(n6), .Y(strt_chk_en) );
  INVX2M U11 ( .A(cur_state[1]), .Y(n22) );
  INVX2M U12 ( .A(cur_state[2]), .Y(n6) );
  INVX2M U13 ( .A(cur_state[0]), .Y(n8) );
  OAI211X2M U14 ( .A0(n9), .A1(n5), .B0(n10), .C0(n11), .Y(nxt_state[2]) );
  NOR4BBX1M U15 ( .AN(bit_cnt[3]), .BN(bit_cnt[0]), .C(bit_cnt[2]), .D(
        bit_cnt[1]), .Y(n9) );
  OAI21X2M U16 ( .A0(n2), .A1(n4), .B0(strt_chk_en), .Y(n10) );
  AOI32X1M U17 ( .A0(n22), .A1(n6), .A2(n12), .B0(n13), .B1(n14), .Y(n11) );
  NOR2X2M U18 ( .A(cur_state[0]), .B(RX_IN), .Y(n12) );
  NOR3X2M U19 ( .A(n6), .B(cur_state[0]), .C(n22), .Y(deser_en) );
  OAI31X1M U20 ( .A0(n19), .A1(n5), .A2(n20), .B0(n21), .Y(nxt_state[0]) );
  NAND2X2M U21 ( .A(bit_cnt[0]), .B(bit_cnt[3]), .Y(n20) );
  OR3X2M U22 ( .A(PAR_EN), .B(bit_cnt[1]), .C(bit_cnt[2]), .Y(n19) );
  AOI32X1M U23 ( .A0(edge_cnt_done), .A1(n3), .A2(par_chk_en), .B0(stp_en), 
        .B1(n16), .Y(n21) );
  NOR3BX2M U24 ( .AN(bit_cnt[2]), .B(n15), .C(n2), .Y(n13) );
  CLKXOR2X2M U25 ( .A(bit_cnt[3]), .B(PAR_EN), .Y(n15) );
  NOR4BX1M U26 ( .AN(bit_cnt[0]), .B(stp_err), .C(bit_cnt[1]), .D(n7), .Y(n14)
         );
  OAI2B11X2M U27 ( .A1N(n16), .A0(n7), .B0(n17), .C0(n18), .Y(nxt_state[1]) );
  AOI31X2M U28 ( .A0(edge_cnt_done), .A1(n4), .A2(strt_chk_en), .B0(deser_en), 
        .Y(n18) );
  OAI21X2M U29 ( .A0(n2), .A1(n3), .B0(par_chk_en), .Y(n17) );
  NAND2X2M U30 ( .A(stp_err), .B(edge_cnt_done), .Y(n16) );
  INVX2M U31 ( .A(edge_cnt_done), .Y(n2) );
  BUFX2M U32 ( .A(data_sample_en), .Y(enable) );
  OR4X1M U33 ( .A(deser_en), .B(par_chk_en), .C(stp_en), .D(strt_chk_en), .Y(
        data_sample_en) );
endmodule


module data_sampling ( edge_cnt, data_sample_en, RX_IN, CLK, RST, prescale, 
        sampled_data );
  input [0:4] edge_cnt;
  input [0:5] prescale;
  input data_sample_en, RX_IN, CLK, RST;
  output sampled_data;
  wire   sample_1, sample_2, n1, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n2, n3,
         n4, n5, n6, n7, n8;

  DFFRQX2M sample_2_reg ( .D(n29), .CK(CLK), .RN(RST), .Q(sample_2) );
  DFFRQX2M sample_1_reg ( .D(n28), .CK(CLK), .RN(RST), .Q(sample_1) );
  DFFRX1M sample_3_reg ( .D(n27), .CK(CLK), .RN(RST), .QN(n1) );
  DFFRQX2M sampled_data_reg ( .D(n26), .CK(CLK), .RN(RST), .Q(sampled_data) );
  INVX2M U3 ( .A(RX_IN), .Y(n8) );
  OAI2BB2X1M U4 ( .B0(n8), .B1(n14), .A0N(n14), .A1N(sample_1), .Y(n28) );
  NAND4X2M U5 ( .A(n15), .B(n3), .C(n16), .D(n17), .Y(n14) );
  OAI32X1M U6 ( .A0(n18), .A1(edge_cnt[2]), .A2(edge_cnt[1]), .B0(n19), .B1(n5), .Y(n15) );
  AND3X2M U7 ( .A(edge_cnt[4]), .B(data_sample_en), .C(edge_cnt[3]), .Y(n17)
         );
  OAI2BB2X1M U8 ( .B0(n8), .B1(n22), .A0N(n22), .A1N(sample_2), .Y(n29) );
  OR3X2M U9 ( .A(edge_cnt[3]), .B(edge_cnt[4]), .C(n11), .Y(n22) );
  OAI2BB2X1M U10 ( .B0(n13), .B1(n1), .A0N(n13), .A1N(RX_IN), .Y(n27) );
  NOR3X2M U11 ( .A(n11), .B(edge_cnt[3]), .C(n2), .Y(n13) );
  OAI211X2M U12 ( .A0(n23), .A1(n24), .B0(n16), .C0(data_sample_en), .Y(n11)
         );
  NOR4X1M U13 ( .A(edge_cnt[1]), .B(edge_cnt[0]), .C(n18), .D(n5), .Y(n23) );
  NOR2X2M U14 ( .A(edge_cnt[2]), .B(n25), .Y(n24) );
  AOI33X2M U15 ( .A0(n20), .A1(n4), .A2(edge_cnt[0]), .B0(n21), .B1(n3), .B2(
        edge_cnt[1]), .Y(n25) );
  AOI22X1M U16 ( .A0(edge_cnt[1]), .A1(n20), .B0(n21), .B1(n4), .Y(n19) );
  OAI2BB2X1M U17 ( .B0(n9), .B1(n10), .A0N(sampled_data), .A1N(n10), .Y(n26)
         );
  AOI21X2M U18 ( .A0(sample_2), .A1(sample_1), .B0(n12), .Y(n9) );
  NAND3BX2M U19 ( .AN(n11), .B(n2), .C(edge_cnt[3]), .Y(n10) );
  AOI2BB1X2M U20 ( .A0N(sample_2), .A1N(sample_1), .B0(n1), .Y(n12) );
  INVX2M U21 ( .A(edge_cnt[2]), .Y(n5) );
  INVX2M U22 ( .A(edge_cnt[1]), .Y(n4) );
  INVX2M U23 ( .A(edge_cnt[0]), .Y(n3) );
  INVX2M U24 ( .A(edge_cnt[4]), .Y(n2) );
  NOR3X2M U25 ( .A(prescale[5]), .B(prescale[4]), .C(prescale[3]), .Y(n16) );
  NOR3X2M U26 ( .A(prescale[0]), .B(prescale[2]), .C(n7), .Y(n21) );
  NOR3X2M U27 ( .A(prescale[1]), .B(prescale[2]), .C(n6), .Y(n20) );
  NAND3X2M U28 ( .A(n6), .B(n7), .C(prescale[2]), .Y(n18) );
  INVX2M U29 ( .A(prescale[1]), .Y(n7) );
  INVX2M U30 ( .A(prescale[0]), .Y(n6) );
endmodule


module desrializer ( sampled_data, deser_en, edge_cnt_done, CLK, RST, P_DATA
 );
  output [0:7] P_DATA;
  input sampled_data, deser_en, edge_cnt_done, CLK, RST;
  wire   Counter_done, N16, n10, n11, n12, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n1, n2,
         n3, n4, n5, n6, n7, n8, n9, n13;
  wire   [0:3] Counter;
  wire   [0:7] DATA;

  DFFRQX2M \Counter_reg[1]  ( .D(n22), .CK(CLK), .RN(RST), .Q(Counter[1]) );
  DFFRQX2M \Counter_reg[3]  ( .D(n24), .CK(CLK), .RN(RST), .Q(Counter[3]) );
  DFFRQX2M \DATA_reg[0]  ( .D(n32), .CK(CLK), .RN(RST), .Q(DATA[0]) );
  DFFRQX2M \DATA_reg[1]  ( .D(n31), .CK(CLK), .RN(RST), .Q(DATA[1]) );
  DFFRQX2M \DATA_reg[2]  ( .D(n30), .CK(CLK), .RN(RST), .Q(DATA[2]) );
  DFFRQX2M \DATA_reg[3]  ( .D(n29), .CK(CLK), .RN(RST), .Q(DATA[3]) );
  DFFRQX2M \DATA_reg[4]  ( .D(n28), .CK(CLK), .RN(RST), .Q(DATA[4]) );
  DFFRQX2M \DATA_reg[5]  ( .D(n27), .CK(CLK), .RN(RST), .Q(DATA[5]) );
  DFFRQX2M \DATA_reg[6]  ( .D(n26), .CK(CLK), .RN(RST), .Q(DATA[6]) );
  DFFRQX2M \DATA_reg[7]  ( .D(n25), .CK(CLK), .RN(RST), .Q(DATA[7]) );
  DFFRQX2M Counter_done_reg ( .D(N16), .CK(CLK), .RN(RST), .Q(Counter_done) );
  DFFRQX2M \Counter_reg[2]  ( .D(n23), .CK(CLK), .RN(RST), .Q(Counter[2]) );
  DFFRQX2M \P_DATA_reg[1]  ( .D(n20), .CK(CLK), .RN(RST), .Q(P_DATA[1]) );
  DFFRQX2M \P_DATA_reg[5]  ( .D(n16), .CK(CLK), .RN(RST), .Q(P_DATA[5]) );
  DFFRQX2M \P_DATA_reg[0]  ( .D(n21), .CK(CLK), .RN(RST), .Q(P_DATA[0]) );
  DFFRQX2M \P_DATA_reg[4]  ( .D(n17), .CK(CLK), .RN(RST), .Q(P_DATA[4]) );
  DFFRQX2M \P_DATA_reg[3]  ( .D(n18), .CK(CLK), .RN(RST), .Q(P_DATA[3]) );
  DFFRQX2M \P_DATA_reg[7]  ( .D(n14), .CK(CLK), .RN(RST), .Q(P_DATA[7]) );
  DFFRQX2M \P_DATA_reg[2]  ( .D(n19), .CK(CLK), .RN(RST), .Q(P_DATA[2]) );
  DFFRQX2M \P_DATA_reg[6]  ( .D(n15), .CK(CLK), .RN(RST), .Q(P_DATA[6]) );
  OAI22X1M U3 ( .A0(n1), .A1(n9), .B0(n8), .B1(n12), .Y(n25) );
  OAI22X1M U4 ( .A0(n1), .A1(n8), .B0(n7), .B1(n12), .Y(n26) );
  OAI22X1M U5 ( .A0(n1), .A1(n7), .B0(n6), .B1(n12), .Y(n27) );
  OAI22X1M U6 ( .A0(n1), .A1(n6), .B0(n5), .B1(n12), .Y(n28) );
  OAI22X1M U7 ( .A0(n1), .A1(n5), .B0(n4), .B1(n12), .Y(n29) );
  OAI22X1M U8 ( .A0(n1), .A1(n4), .B0(n3), .B1(n12), .Y(n30) );
  OAI22X1M U9 ( .A0(n1), .A1(n3), .B0(n2), .B1(n12), .Y(n31) );
  INVX2M U10 ( .A(n12), .Y(n1) );
  NAND2X2M U11 ( .A(edge_cnt_done), .B(deser_en), .Y(n12) );
  XNOR2X2M U12 ( .A(Counter[3]), .B(n12), .Y(n24) );
  XNOR2X2M U13 ( .A(Counter[1]), .B(n10), .Y(n22) );
  NAND2X2M U14 ( .A(Counter[2]), .B(n11), .Y(n10) );
  OAI2BB2X1M U15 ( .B0(n1), .B1(n2), .A0N(sampled_data), .A1N(n1), .Y(n32) );
  AND2X2M U16 ( .A(Counter[3]), .B(n1), .Y(n11) );
  CLKXOR2X2M U17 ( .A(Counter[2]), .B(n11), .Y(n23) );
  AND3X2M U18 ( .A(Counter[1]), .B(n11), .C(Counter[2]), .Y(N16) );
  INVX2M U19 ( .A(Counter_done), .Y(n13) );
  OAI2BB2X1M U20 ( .B0(n13), .B1(n9), .A0N(P_DATA[7]), .A1N(n13), .Y(n14) );
  OAI2BB2X1M U21 ( .B0(n13), .B1(n8), .A0N(P_DATA[6]), .A1N(n13), .Y(n15) );
  OAI2BB2X1M U22 ( .B0(n13), .B1(n7), .A0N(P_DATA[5]), .A1N(n13), .Y(n16) );
  OAI2BB2X1M U23 ( .B0(n13), .B1(n6), .A0N(P_DATA[4]), .A1N(n13), .Y(n17) );
  OAI2BB2X1M U24 ( .B0(n13), .B1(n5), .A0N(P_DATA[3]), .A1N(n13), .Y(n18) );
  OAI2BB2X1M U25 ( .B0(n13), .B1(n4), .A0N(P_DATA[2]), .A1N(n13), .Y(n19) );
  OAI2BB2X1M U26 ( .B0(n13), .B1(n3), .A0N(P_DATA[1]), .A1N(n13), .Y(n20) );
  OAI2BB2X1M U27 ( .B0(n13), .B1(n2), .A0N(P_DATA[0]), .A1N(n13), .Y(n21) );
  INVX2M U28 ( .A(DATA[0]), .Y(n2) );
  INVX2M U29 ( .A(DATA[6]), .Y(n8) );
  INVX2M U30 ( .A(DATA[5]), .Y(n7) );
  INVX2M U31 ( .A(DATA[4]), .Y(n6) );
  INVX2M U32 ( .A(DATA[3]), .Y(n5) );
  INVX2M U33 ( .A(DATA[2]), .Y(n4) );
  INVX2M U34 ( .A(DATA[1]), .Y(n3) );
  INVX2M U35 ( .A(DATA[7]), .Y(n9) );
endmodule


module edge_bit_counter ( enable, PAR_EN, CLK, RST, prescale, edge_cnt_done, 
        edge_cnt, bit_cnt );
  input [0:5] prescale;
  output [0:4] edge_cnt;
  output [0:3] bit_cnt;
  input enable, PAR_EN, CLK, RST;
  output edge_cnt_done;
  wire   N27, N28, N29, N30, N31, N32, N36, N37, N38, N45, N46, N47, N48, N49,
         N50, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, \add_56/carry[4] , \add_56/carry[3] ,
         \add_56/carry[2] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38;

  DFFRQX2M \bit_cnt_reg[1]  ( .D(n24), .CK(CLK), .RN(RST), .Q(bit_cnt[1]) );
  DFFRQX2M \bit_cnt_reg[0]  ( .D(n23), .CK(CLK), .RN(RST), .Q(bit_cnt[0]) );
  DFFRQX2M \bit_cnt_reg[2]  ( .D(n25), .CK(CLK), .RN(RST), .Q(bit_cnt[2]) );
  DFFRQX2M \edge_cnt_reg[4]  ( .D(N45), .CK(CLK), .RN(RST), .Q(edge_cnt[4]) );
  DFFRQX2M \edge_cnt_reg[0]  ( .D(N49), .CK(CLK), .RN(RST), .Q(edge_cnt[0]) );
  DFFRQX2M \edge_cnt_reg[2]  ( .D(N47), .CK(CLK), .RN(RST), .Q(edge_cnt[2]) );
  DFFRQX2M \edge_cnt_reg[3]  ( .D(N46), .CK(CLK), .RN(RST), .Q(edge_cnt[3]) );
  DFFRQX2M \bit_cnt_reg[3]  ( .D(n26), .CK(CLK), .RN(RST), .Q(bit_cnt[3]) );
  DFFRQX2M edge_cnt_done_reg ( .D(N50), .CK(CLK), .RN(RST), .Q(edge_cnt_done)
         );
  DFFRQX2M \edge_cnt_reg[1]  ( .D(N48), .CK(CLK), .RN(RST), .Q(edge_cnt[1]) );
  INVX2M U3 ( .A(enable), .Y(n37) );
  NAND2X2M U4 ( .A(enable), .B(n2), .Y(n22) );
  OAI21X2M U5 ( .A0(n33), .A1(n19), .B0(n21), .Y(n26) );
  NAND4X2M U6 ( .A(enable), .B(n19), .C(n20), .D(n33), .Y(n21) );
  NOR2BX2M U7 ( .AN(N36), .B(n22), .Y(N46) );
  NOR2BX2M U8 ( .AN(N37), .B(n22), .Y(N47) );
  NOR2BX2M U9 ( .AN(N38), .B(n22), .Y(N48) );
  NOR2X2M U10 ( .A(n37), .B(n2), .Y(N50) );
  INVX2M U11 ( .A(n14), .Y(n32) );
  OAI32X1M U12 ( .A0(n36), .A1(n16), .A2(n37), .B0(n11), .B1(n17), .Y(n24) );
  AO21XLM U13 ( .A0(bit_cnt[0]), .A1(PAR_EN), .B0(bit_cnt[1]), .Y(n17) );
  NOR2X2M U14 ( .A(n14), .B(n33), .Y(n16) );
  OAI32X1M U15 ( .A0(n37), .A1(n35), .A2(n18), .B0(n34), .B1(n19), .Y(n25) );
  INVX2M U16 ( .A(n20), .Y(n35) );
  AOI32X1M U17 ( .A0(n19), .A1(n34), .A2(bit_cnt[3]), .B0(n32), .B1(n33), .Y(
        n18) );
  INVX2M U18 ( .A(bit_cnt[2]), .Y(n34) );
  OAI31X1M U19 ( .A0(n36), .A1(bit_cnt[0]), .A2(n11), .B0(n12), .Y(n23) );
  OAI211X2M U20 ( .A0(n13), .A1(n14), .B0(enable), .C0(bit_cnt[0]), .Y(n12) );
  CLKXOR2X2M U21 ( .A(n15), .B(bit_cnt[3]), .Y(n13) );
  NAND2X2M U22 ( .A(n36), .B(n38), .Y(n15) );
  NAND2BX2M U23 ( .AN(edge_cnt_done), .B(enable), .Y(n19) );
  NAND3X2M U24 ( .A(bit_cnt[3]), .B(n32), .C(enable), .Y(n11) );
  NOR2X2M U25 ( .A(n1), .B(n22), .Y(N49) );
  XNOR2X2M U26 ( .A(\add_56/carry[4] ), .B(edge_cnt[0]), .Y(n1) );
  NOR2X2M U27 ( .A(edge_cnt[4]), .B(n22), .Y(N45) );
  OR4X1M U28 ( .A(n31), .B(n30), .C(n29), .D(n28), .Y(n2) );
  NAND2X2M U29 ( .A(edge_cnt_done), .B(bit_cnt[2]), .Y(n14) );
  ADDHX1M U30 ( .A(edge_cnt[3]), .B(edge_cnt[4]), .CO(\add_56/carry[2] ), .S(
        N36) );
  ADDHX1M U31 ( .A(edge_cnt[2]), .B(\add_56/carry[2] ), .CO(\add_56/carry[3] ), 
        .S(N37) );
  ADDHX1M U32 ( .A(edge_cnt[1]), .B(\add_56/carry[3] ), .CO(\add_56/carry[4] ), 
        .S(N38) );
  NAND4X2M U33 ( .A(bit_cnt[0]), .B(bit_cnt[2]), .C(n38), .D(n36), .Y(n20) );
  INVX2M U34 ( .A(bit_cnt[3]), .Y(n33) );
  INVX2M U35 ( .A(bit_cnt[1]), .Y(n36) );
  OR2X2M U36 ( .A(prescale[4]), .B(prescale[5]), .Y(n3) );
  INVX2M U37 ( .A(PAR_EN), .Y(n38) );
  INVX2M U38 ( .A(prescale[2]), .Y(n7) );
  CLKINVX1M U39 ( .A(prescale[5]), .Y(N27) );
  OAI2BB1X1M U40 ( .A0N(prescale[5]), .A1N(prescale[4]), .B0(n3), .Y(N28) );
  NOR2X1M U41 ( .A(n3), .B(prescale[3]), .Y(n4) );
  AO21XLM U42 ( .A0(n3), .A1(prescale[3]), .B0(n4), .Y(N29) );
  CLKNAND2X2M U43 ( .A(n4), .B(n7), .Y(n5) );
  OAI21X1M U44 ( .A0(n4), .A1(n7), .B0(n5), .Y(N30) );
  XNOR2X1M U45 ( .A(prescale[1]), .B(n5), .Y(N31) );
  NOR2X1M U46 ( .A(prescale[1]), .B(n5), .Y(n6) );
  CLKXOR2X2M U47 ( .A(prescale[0]), .B(n6), .Y(N32) );
  NOR2BX1M U48 ( .AN(N27), .B(edge_cnt[4]), .Y(n8) );
  OAI2B2X1M U49 ( .A1N(edge_cnt[3]), .A0(n8), .B0(N28), .B1(n8), .Y(n27) );
  NOR2BX1M U50 ( .AN(edge_cnt[4]), .B(N27), .Y(n9) );
  OAI2B2X1M U51 ( .A1N(N28), .A0(n9), .B0(edge_cnt[3]), .B1(n9), .Y(n10) );
  NAND3BX1M U52 ( .AN(N32), .B(n27), .C(n10), .Y(n31) );
  CLKXOR2X2M U53 ( .A(N31), .B(edge_cnt[0]), .Y(n30) );
  CLKXOR2X2M U54 ( .A(N29), .B(edge_cnt[2]), .Y(n29) );
  CLKXOR2X2M U55 ( .A(N30), .B(edge_cnt[1]), .Y(n28) );
endmodule


module Stop_Checker_RX ( stp_en, sampled_data, stp_err );
  input stp_en, sampled_data;
  output stp_err;


  NOR2BX2M U2 ( .AN(stp_en), .B(sampled_data), .Y(stp_err) );
endmodule


module Parity_Checker ( par_chk_en, sampled_data, PAR_TYP, P_DATA, par_err );
  input [0:7] P_DATA;
  input par_chk_en, sampled_data, PAR_TYP;
  output par_err;
  wire   n1, n2, n3, n4, n5, n6;

  XNOR2X2M U2 ( .A(P_DATA[7]), .B(P_DATA[6]), .Y(n5) );
  NOR2BX4M U3 ( .AN(par_chk_en), .B(n1), .Y(par_err) );
  XOR3XLM U4 ( .A(n2), .B(n3), .C(n4), .Y(n1) );
  XNOR2X2M U5 ( .A(sampled_data), .B(PAR_TYP), .Y(n4) );
  XOR3XLM U6 ( .A(P_DATA[5]), .B(P_DATA[4]), .C(n5), .Y(n3) );
  XOR3XLM U7 ( .A(P_DATA[1]), .B(P_DATA[0]), .C(n6), .Y(n2) );
  XNOR2X2M U8 ( .A(P_DATA[3]), .B(P_DATA[2]), .Y(n6) );
endmodule


module Start_Checker ( strt_chk_en, sampled_data, strt_glitch );
  input strt_chk_en, sampled_data;
  output strt_glitch;


  AND2X2M U2 ( .A(strt_chk_en), .B(sampled_data), .Y(strt_glitch) );
endmodule


module TOP_RX ( RX_IN, PAR_EN, PAR_TYP, CLK, RST, prescale, stp_err, par_err, 
        strt_glitch, data_valid, P_DATA );
  input [0:5] prescale;
  output [0:7] P_DATA;
  input RX_IN, PAR_EN, PAR_TYP, CLK, RST;
  output stp_err, par_err, strt_glitch, data_valid;
  wire   enable, stp_en, deser_en, strt_chk_en, par_chk_en, data_sample_en,
         sampled_data, edge_cnt_done, n1, n2;
  wire   [0:4] edge_cnt;
  wire   [0:3] bit_cnt;

  FSM_RX U1 ( .PAR_EN(PAR_EN), .RX_IN(RX_IN), .strt_glitch(strt_glitch), 
        .stp_err(stp_err), .par_err(par_err), .edge_cnt_done(edge_cnt_done), 
        .CLK(CLK), .RST(n1), .bit_cnt(bit_cnt), .enable(enable), .stp_en(
        stp_en), .deser_en(deser_en), .strt_chk_en(strt_chk_en), .par_chk_en(
        par_chk_en), .data_valid(data_valid), .data_sample_en(data_sample_en)
         );
  data_sampling U2 ( .edge_cnt(edge_cnt), .data_sample_en(data_sample_en), 
        .RX_IN(RX_IN), .CLK(CLK), .RST(n1), .prescale(prescale), 
        .sampled_data(sampled_data) );
  desrializer U3 ( .sampled_data(sampled_data), .deser_en(deser_en), 
        .edge_cnt_done(edge_cnt_done), .CLK(CLK), .RST(n1), .P_DATA(P_DATA) );
  edge_bit_counter U4 ( .enable(enable), .PAR_EN(PAR_EN), .CLK(CLK), .RST(n1), 
        .prescale(prescale), .edge_cnt_done(edge_cnt_done), .edge_cnt(edge_cnt), .bit_cnt(bit_cnt) );
  Stop_Checker_RX U5 ( .stp_en(stp_en), .sampled_data(sampled_data), .stp_err(
        stp_err) );
  Parity_Checker U6 ( .par_chk_en(par_chk_en), .sampled_data(sampled_data), 
        .PAR_TYP(PAR_TYP), .P_DATA(P_DATA), .par_err(par_err) );
  Start_Checker U7 ( .strt_chk_en(strt_chk_en), .sampled_data(sampled_data), 
        .strt_glitch(strt_glitch) );
  INVX4M U8 ( .A(n2), .Y(n1) );
  INVX2M U9 ( .A(RST), .Y(n2) );
endmodule


module UART_TOP ( TX_CLK, RX_CLK, RST, TX_IN_P, TX_IN_V, RX_IN_S, prescale, 
        PAR_TYP, PAR_EN, TX_OUT_S, RX_OUT_P, RX_OUT_V, busy, stp_err, par_err, 
        strt_glitch );
  input [7:0] TX_IN_P;
  input [0:5] prescale;
  output [0:7] RX_OUT_P;
  input TX_CLK, RX_CLK, RST, TX_IN_V, RX_IN_S, PAR_TYP, PAR_EN;
  output TX_OUT_S, RX_OUT_V, busy, stp_err, par_err, strt_glitch;
  wire   n1, n2;

  Top_TX U0 ( .Data_Valid(TX_IN_V), .PAR_TYP(PAR_TYP), .PAR_EN(PAR_EN), 
        .P_DATA(TX_IN_P), .CLK(TX_CLK), .RST(n1), .TX_OUT(TX_OUT_S), .busy(
        busy) );
  TOP_RX U1 ( .RX_IN(RX_IN_S), .PAR_EN(PAR_EN), .PAR_TYP(PAR_TYP), .CLK(RX_CLK), .RST(n1), .prescale(prescale), .stp_err(stp_err), .par_err(par_err), 
        .strt_glitch(strt_glitch), .data_valid(RX_OUT_V), .P_DATA(RX_OUT_P) );
  INVX2M U2 ( .A(n2), .Y(n1) );
  INVX2M U3 ( .A(RST), .Y(n2) );
endmodule


module ClkDiv_0_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX1M U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKXOR2X2M U1 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module ClkDiv_0 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, o_div_clk );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en;
  output o_div_clk;
  wire   N2, N7, N8, N9, N10, N11, N12, N13, div_clk, duty, N19, N20, N21, N22,
         N23, N24, N25, N26, N44, N45, N46, N47, N48, N49, N50, N51, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54;
  wire   [6:0] half_cycle;
  wire   [7:0] counter;

  ClkDiv_0_DW01_inc_0 add_58 ( .A(counter), .SUM({N51, N50, N49, N48, N47, N46, 
        N45, N44}) );
  DFFRQX2M duty_reg ( .D(n31), .CK(i_ref_clk), .RN(i_rst_n), .Q(duty) );
  DFFRQX2M div_clk_reg ( .D(n22), .CK(i_ref_clk), .RN(i_rst_n), .Q(div_clk) );
  DFFRQX2M \counter_reg[7]  ( .D(n23), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[7]) );
  DFFRQX2M \counter_reg[0]  ( .D(n30), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[0]) );
  DFFRQX2M \counter_reg[1]  ( .D(n29), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[1]) );
  DFFRQX2M \counter_reg[2]  ( .D(n28), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[2]) );
  DFFRQX2M \counter_reg[3]  ( .D(n27), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[3]) );
  DFFRQX2M \counter_reg[4]  ( .D(n26), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[4]) );
  DFFRQX2M \counter_reg[5]  ( .D(n25), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[5]) );
  DFFRQX2M \counter_reg[6]  ( .D(n24), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[6]) );
  MX2X2M U3 ( .A(i_ref_clk), .B(div_clk), .S0(N2), .Y(o_div_clk) );
  OR2X2M U4 ( .A(half_cycle[1]), .B(half_cycle[0]), .Y(n8) );
  NAND2BX2M U5 ( .AN(n53), .B(i_clk_en), .Y(n15) );
  INVX2M U6 ( .A(i_div_ratio[0]), .Y(n16) );
  INVX2M U7 ( .A(i_div_ratio[5]), .Y(n7) );
  OR2X1M U8 ( .A(i_div_ratio[1]), .B(i_div_ratio[0]), .Y(n1) );
  OAI2BB1X1M U9 ( .A0N(i_div_ratio[0]), .A1N(i_div_ratio[1]), .B0(n1), .Y(N7)
         );
  OR2X1M U10 ( .A(n1), .B(i_div_ratio[2]), .Y(n2) );
  OAI2BB1X1M U11 ( .A0N(n1), .A1N(i_div_ratio[2]), .B0(n2), .Y(N8) );
  OR2X1M U12 ( .A(n2), .B(i_div_ratio[3]), .Y(n3) );
  OAI2BB1X1M U13 ( .A0N(n2), .A1N(i_div_ratio[3]), .B0(n3), .Y(N9) );
  NOR2X1M U14 ( .A(n3), .B(i_div_ratio[4]), .Y(n4) );
  AO21XLM U15 ( .A0(n3), .A1(i_div_ratio[4]), .B0(n4), .Y(N10) );
  CLKNAND2X2M U16 ( .A(n4), .B(n7), .Y(n5) );
  OAI21X1M U17 ( .A0(n4), .A1(n7), .B0(n5), .Y(N11) );
  XNOR2X1M U18 ( .A(i_div_ratio[6]), .B(n5), .Y(N12) );
  NOR2X1M U19 ( .A(i_div_ratio[6]), .B(n5), .Y(n6) );
  CLKXOR2X2M U20 ( .A(i_div_ratio[7]), .B(n6), .Y(N13) );
  CLKINVX1M U21 ( .A(half_cycle[0]), .Y(N19) );
  OAI2BB1X1M U22 ( .A0N(half_cycle[0]), .A1N(half_cycle[1]), .B0(n8), .Y(N20)
         );
  OR2X1M U23 ( .A(n8), .B(half_cycle[2]), .Y(n9) );
  OAI2BB1X1M U24 ( .A0N(n8), .A1N(half_cycle[2]), .B0(n9), .Y(N21) );
  OR2X1M U25 ( .A(n9), .B(half_cycle[3]), .Y(n10) );
  OAI2BB1X1M U26 ( .A0N(n9), .A1N(half_cycle[3]), .B0(n10), .Y(N22) );
  OR2X1M U27 ( .A(n10), .B(half_cycle[4]), .Y(n11) );
  OAI2BB1X1M U28 ( .A0N(n10), .A1N(half_cycle[4]), .B0(n11), .Y(N23) );
  XNOR2X1M U29 ( .A(half_cycle[5]), .B(n11), .Y(N24) );
  NOR3X1M U30 ( .A(half_cycle[5]), .B(half_cycle[6]), .C(n11), .Y(N26) );
  OAI21X1M U31 ( .A0(half_cycle[5]), .A1(n11), .B0(half_cycle[6]), .Y(n12) );
  NAND2BX1M U32 ( .AN(N26), .B(n12), .Y(N25) );
  MXI2X1M U33 ( .A(n13), .B(n14), .S0(duty), .Y(n31) );
  NOR4X1M U34 ( .A(n15), .B(n16), .C(n17), .D(n18), .Y(n14) );
  OR4X1M U35 ( .A(n16), .B(n15), .C(n19), .D(n20), .Y(n13) );
  AO22X1M U36 ( .A0(n15), .A1(counter[0]), .B0(N44), .B1(n21), .Y(n30) );
  AO22X1M U37 ( .A0(n15), .A1(counter[1]), .B0(N45), .B1(n21), .Y(n29) );
  AO22X1M U38 ( .A0(n15), .A1(counter[2]), .B0(N46), .B1(n21), .Y(n28) );
  AO22X1M U39 ( .A0(n15), .A1(counter[3]), .B0(N47), .B1(n21), .Y(n27) );
  AO22X1M U40 ( .A0(n15), .A1(counter[4]), .B0(N48), .B1(n21), .Y(n26) );
  AO22X1M U41 ( .A0(n15), .A1(counter[5]), .B0(N49), .B1(n21), .Y(n25) );
  AO22X1M U42 ( .A0(n15), .A1(counter[6]), .B0(N50), .B1(n21), .Y(n24) );
  OAI2BB2X1M U43 ( .B0(N2), .B1(n32), .A0N(N51), .A1N(n21), .Y(n23) );
  NOR2BX1M U44 ( .AN(n33), .B(n15), .Y(n21) );
  CLKXOR2X2M U45 ( .A(div_clk), .B(n34), .Y(n22) );
  NOR2X1M U46 ( .A(n33), .B(n15), .Y(n34) );
  MXI2X1M U47 ( .A(n35), .B(n36), .S0(n37), .Y(n33) );
  AND2X1M U48 ( .A(duty), .B(i_div_ratio[0]), .Y(n37) );
  NOR2X1M U49 ( .A(n17), .B(n18), .Y(n36) );
  NAND4X1M U50 ( .A(n38), .B(n39), .C(n40), .D(n32), .Y(n18) );
  XNOR2X1M U51 ( .A(half_cycle[0]), .B(counter[0]), .Y(n40) );
  XNOR2X1M U52 ( .A(half_cycle[1]), .B(counter[1]), .Y(n39) );
  XNOR2X1M U53 ( .A(half_cycle[2]), .B(counter[2]), .Y(n38) );
  NAND4X1M U54 ( .A(n41), .B(n42), .C(n43), .D(n44), .Y(n17) );
  XNOR2X1M U55 ( .A(half_cycle[3]), .B(counter[3]), .Y(n44) );
  XNOR2X1M U56 ( .A(half_cycle[4]), .B(counter[4]), .Y(n43) );
  XNOR2X1M U57 ( .A(half_cycle[5]), .B(counter[5]), .Y(n42) );
  XNOR2X1M U58 ( .A(half_cycle[6]), .B(counter[6]), .Y(n41) );
  NOR2X1M U59 ( .A(n20), .B(n19), .Y(n35) );
  NAND4X1M U60 ( .A(n45), .B(n46), .C(n47), .D(n48), .Y(n19) );
  XNOR2X1M U61 ( .A(counter[0]), .B(N19), .Y(n48) );
  XNOR2X1M U62 ( .A(counter[1]), .B(N20), .Y(n47) );
  XNOR2X1M U63 ( .A(counter[2]), .B(N21), .Y(n46) );
  CLKXOR2X2M U64 ( .A(n32), .B(N26), .Y(n45) );
  CLKINVX1M U65 ( .A(counter[7]), .Y(n32) );
  NAND4X1M U66 ( .A(n49), .B(n50), .C(n51), .D(n52), .Y(n20) );
  XNOR2X1M U67 ( .A(counter[3]), .B(N22), .Y(n52) );
  XNOR2X1M U68 ( .A(counter[4]), .B(N23), .Y(n51) );
  XNOR2X1M U69 ( .A(counter[5]), .B(N24), .Y(n50) );
  XNOR2X1M U70 ( .A(counter[6]), .B(N25), .Y(n49) );
  CLKMX2X2M U71 ( .A(N13), .B(i_div_ratio[7]), .S0(n16), .Y(half_cycle[6]) );
  CLKMX2X2M U72 ( .A(N12), .B(i_div_ratio[6]), .S0(n16), .Y(half_cycle[5]) );
  CLKMX2X2M U73 ( .A(N11), .B(i_div_ratio[5]), .S0(n16), .Y(half_cycle[4]) );
  CLKMX2X2M U74 ( .A(N10), .B(i_div_ratio[4]), .S0(n16), .Y(half_cycle[3]) );
  CLKMX2X2M U75 ( .A(N9), .B(i_div_ratio[3]), .S0(n16), .Y(half_cycle[2]) );
  CLKMX2X2M U76 ( .A(N8), .B(i_div_ratio[2]), .S0(n16), .Y(half_cycle[1]) );
  CLKMX2X2M U77 ( .A(N7), .B(i_div_ratio[1]), .S0(n16), .Y(half_cycle[0]) );
  CLKINVX1M U78 ( .A(n15), .Y(N2) );
  NOR4BX1M U79 ( .AN(n54), .B(i_div_ratio[2]), .C(i_div_ratio[3]), .D(
        i_div_ratio[1]), .Y(n53) );
  NOR4X1M U80 ( .A(i_div_ratio[7]), .B(i_div_ratio[6]), .C(i_div_ratio[5]), 
        .D(i_div_ratio[4]), .Y(n54) );
endmodule


module ClkDiv_1_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX1M U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKXOR2X2M U1 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module ClkDiv_1 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, o_div_clk );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en;
  output o_div_clk;
  wire   N2, N7, N8, N9, N10, N11, N12, N13, div_clk, duty, N19, N20, N21, N22,
         N23, N24, N25, N26, N44, N45, N46, N47, N48, N49, N50, N51, n1, n2,
         n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64;
  wire   [6:0] half_cycle;
  wire   [7:0] counter;

  ClkDiv_1_DW01_inc_0 add_58 ( .A(counter), .SUM({N51, N50, N49, N48, N47, N46, 
        N45, N44}) );
  DFFRQX2M \counter_reg[7]  ( .D(n63), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[7]) );
  DFFRQX2M duty_reg ( .D(n55), .CK(i_ref_clk), .RN(i_rst_n), .Q(duty) );
  DFFRQX2M div_clk_reg ( .D(n64), .CK(i_ref_clk), .RN(i_rst_n), .Q(div_clk) );
  DFFRQX2M \counter_reg[0]  ( .D(n56), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[0]) );
  DFFRQX2M \counter_reg[1]  ( .D(n57), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[1]) );
  DFFRQX2M \counter_reg[2]  ( .D(n58), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[2]) );
  DFFRQX2M \counter_reg[3]  ( .D(n59), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[3]) );
  DFFRQX2M \counter_reg[4]  ( .D(n60), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[4]) );
  DFFRQX2M \counter_reg[5]  ( .D(n61), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[5]) );
  DFFRQX2M \counter_reg[6]  ( .D(n62), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[6]) );
  OR2X2M U3 ( .A(half_cycle[1]), .B(half_cycle[0]), .Y(n8) );
  INVX2M U4 ( .A(i_div_ratio[0]), .Y(n16) );
  MX2X2M U5 ( .A(i_ref_clk), .B(div_clk), .S0(N2), .Y(o_div_clk) );
  NAND2BX2M U6 ( .AN(n53), .B(i_clk_en), .Y(n15) );
  INVX2M U7 ( .A(i_div_ratio[5]), .Y(n7) );
  OR2X1M U8 ( .A(i_div_ratio[1]), .B(i_div_ratio[0]), .Y(n1) );
  OAI2BB1X1M U9 ( .A0N(i_div_ratio[0]), .A1N(i_div_ratio[1]), .B0(n1), .Y(N7)
         );
  OR2X1M U10 ( .A(n1), .B(i_div_ratio[2]), .Y(n2) );
  OAI2BB1X1M U11 ( .A0N(n1), .A1N(i_div_ratio[2]), .B0(n2), .Y(N8) );
  OR2X1M U12 ( .A(n2), .B(i_div_ratio[3]), .Y(n3) );
  OAI2BB1X1M U13 ( .A0N(n2), .A1N(i_div_ratio[3]), .B0(n3), .Y(N9) );
  NOR2X1M U14 ( .A(n3), .B(i_div_ratio[4]), .Y(n4) );
  AO21XLM U15 ( .A0(n3), .A1(i_div_ratio[4]), .B0(n4), .Y(N10) );
  CLKNAND2X2M U16 ( .A(n4), .B(n7), .Y(n5) );
  OAI21X1M U17 ( .A0(n4), .A1(n7), .B0(n5), .Y(N11) );
  XNOR2X1M U18 ( .A(i_div_ratio[6]), .B(n5), .Y(N12) );
  NOR2X1M U19 ( .A(i_div_ratio[6]), .B(n5), .Y(n6) );
  CLKXOR2X2M U20 ( .A(i_div_ratio[7]), .B(n6), .Y(N13) );
  CLKINVX1M U21 ( .A(half_cycle[0]), .Y(N19) );
  OAI2BB1X1M U22 ( .A0N(half_cycle[0]), .A1N(half_cycle[1]), .B0(n8), .Y(N20)
         );
  OR2X1M U23 ( .A(n8), .B(half_cycle[2]), .Y(n9) );
  OAI2BB1X1M U24 ( .A0N(n8), .A1N(half_cycle[2]), .B0(n9), .Y(N21) );
  OR2X1M U25 ( .A(n9), .B(half_cycle[3]), .Y(n10) );
  OAI2BB1X1M U26 ( .A0N(n9), .A1N(half_cycle[3]), .B0(n10), .Y(N22) );
  OR2X1M U27 ( .A(n10), .B(half_cycle[4]), .Y(n11) );
  OAI2BB1X1M U28 ( .A0N(n10), .A1N(half_cycle[4]), .B0(n11), .Y(N23) );
  XNOR2X1M U29 ( .A(half_cycle[5]), .B(n11), .Y(N24) );
  NOR3X1M U30 ( .A(half_cycle[5]), .B(half_cycle[6]), .C(n11), .Y(N26) );
  OAI21X1M U31 ( .A0(half_cycle[5]), .A1(n11), .B0(half_cycle[6]), .Y(n12) );
  NAND2BX1M U32 ( .AN(N26), .B(n12), .Y(N25) );
  MXI2X1M U33 ( .A(n13), .B(n14), .S0(duty), .Y(n55) );
  NOR4X1M U34 ( .A(n15), .B(n16), .C(n17), .D(n18), .Y(n14) );
  OR4X1M U35 ( .A(n16), .B(n15), .C(n19), .D(n20), .Y(n13) );
  AO22X1M U36 ( .A0(n15), .A1(counter[0]), .B0(N44), .B1(n21), .Y(n56) );
  AO22X1M U37 ( .A0(n15), .A1(counter[1]), .B0(N45), .B1(n21), .Y(n57) );
  AO22X1M U38 ( .A0(n15), .A1(counter[2]), .B0(N46), .B1(n21), .Y(n58) );
  AO22X1M U39 ( .A0(n15), .A1(counter[3]), .B0(N47), .B1(n21), .Y(n59) );
  AO22X1M U40 ( .A0(n15), .A1(counter[4]), .B0(N48), .B1(n21), .Y(n60) );
  AO22X1M U41 ( .A0(n15), .A1(counter[5]), .B0(N49), .B1(n21), .Y(n61) );
  AO22X1M U42 ( .A0(n15), .A1(counter[6]), .B0(N50), .B1(n21), .Y(n62) );
  OAI2BB2X1M U43 ( .B0(N2), .B1(n32), .A0N(N51), .A1N(n21), .Y(n63) );
  NOR2BX1M U44 ( .AN(n33), .B(n15), .Y(n21) );
  CLKXOR2X2M U45 ( .A(div_clk), .B(n34), .Y(n64) );
  NOR2X1M U46 ( .A(n33), .B(n15), .Y(n34) );
  MXI2X1M U47 ( .A(n35), .B(n36), .S0(n37), .Y(n33) );
  AND2X1M U48 ( .A(duty), .B(i_div_ratio[0]), .Y(n37) );
  NOR2X1M U49 ( .A(n17), .B(n18), .Y(n36) );
  NAND4X1M U50 ( .A(n38), .B(n39), .C(n40), .D(n32), .Y(n18) );
  XNOR2X1M U51 ( .A(half_cycle[0]), .B(counter[0]), .Y(n40) );
  XNOR2X1M U52 ( .A(half_cycle[1]), .B(counter[1]), .Y(n39) );
  XNOR2X1M U53 ( .A(half_cycle[2]), .B(counter[2]), .Y(n38) );
  NAND4X1M U54 ( .A(n41), .B(n42), .C(n43), .D(n44), .Y(n17) );
  XNOR2X1M U55 ( .A(half_cycle[3]), .B(counter[3]), .Y(n44) );
  XNOR2X1M U56 ( .A(half_cycle[4]), .B(counter[4]), .Y(n43) );
  XNOR2X1M U57 ( .A(half_cycle[5]), .B(counter[5]), .Y(n42) );
  XNOR2X1M U58 ( .A(half_cycle[6]), .B(counter[6]), .Y(n41) );
  NOR2X1M U59 ( .A(n20), .B(n19), .Y(n35) );
  NAND4X1M U60 ( .A(n45), .B(n46), .C(n47), .D(n48), .Y(n19) );
  XNOR2X1M U61 ( .A(counter[0]), .B(N19), .Y(n48) );
  XNOR2X1M U62 ( .A(counter[1]), .B(N20), .Y(n47) );
  XNOR2X1M U63 ( .A(counter[2]), .B(N21), .Y(n46) );
  CLKXOR2X2M U64 ( .A(n32), .B(N26), .Y(n45) );
  CLKINVX1M U65 ( .A(counter[7]), .Y(n32) );
  NAND4X1M U66 ( .A(n49), .B(n50), .C(n51), .D(n52), .Y(n20) );
  XNOR2X1M U67 ( .A(counter[3]), .B(N22), .Y(n52) );
  XNOR2X1M U68 ( .A(counter[4]), .B(N23), .Y(n51) );
  XNOR2X1M U69 ( .A(counter[5]), .B(N24), .Y(n50) );
  XNOR2X1M U70 ( .A(counter[6]), .B(N25), .Y(n49) );
  CLKMX2X2M U71 ( .A(N13), .B(i_div_ratio[7]), .S0(n16), .Y(half_cycle[6]) );
  CLKMX2X2M U72 ( .A(N12), .B(i_div_ratio[6]), .S0(n16), .Y(half_cycle[5]) );
  CLKMX2X2M U73 ( .A(N11), .B(i_div_ratio[5]), .S0(n16), .Y(half_cycle[4]) );
  CLKMX2X2M U74 ( .A(N10), .B(i_div_ratio[4]), .S0(n16), .Y(half_cycle[3]) );
  CLKMX2X2M U75 ( .A(N9), .B(i_div_ratio[3]), .S0(n16), .Y(half_cycle[2]) );
  CLKMX2X2M U76 ( .A(N8), .B(i_div_ratio[2]), .S0(n16), .Y(half_cycle[1]) );
  CLKMX2X2M U77 ( .A(N7), .B(i_div_ratio[1]), .S0(n16), .Y(half_cycle[0]) );
  CLKINVX1M U78 ( .A(n15), .Y(N2) );
  NOR4BX1M U79 ( .AN(n54), .B(i_div_ratio[2]), .C(i_div_ratio[3]), .D(
        i_div_ratio[1]), .Y(n53) );
  NOR4X1M U80 ( .A(i_div_ratio[7]), .B(i_div_ratio[6]), .C(i_div_ratio[5]), 
        .D(i_div_ratio[4]), .Y(n54) );
endmodule


module PULSE_GEN ( CLK, RST, LVL_SIG, PULSE_SIG );
  input CLK, RST, LVL_SIG;
  output PULSE_SIG;
  wire   LVL_SIG_OLD, pulse;

  DFFRQX2M LVL_SIG_OLD_reg ( .D(LVL_SIG), .CK(CLK), .RN(RST), .Q(LVL_SIG_OLD)
         );
  DFFRQX2M PULSE_SIG_reg ( .D(pulse), .CK(CLK), .RN(RST), .Q(PULSE_SIG) );
  NOR2BX2M U3 ( .AN(LVL_SIG), .B(LVL_SIG_OLD), .Y(pulse) );
endmodule


module prescale_MUX ( prescale, div_ratio_RX );
  input [0:5] prescale;
  output [7:0] div_ratio_RX;
  wire   n1, n2, n3;

  INVX2M U3 ( .A(1'b1), .Y(div_ratio_RX[7]) );
  INVX2M U5 ( .A(1'b1), .Y(div_ratio_RX[6]) );
  INVX2M U7 ( .A(1'b1), .Y(div_ratio_RX[5]) );
  INVX2M U9 ( .A(1'b1), .Y(div_ratio_RX[4]) );
  INVX2M U11 ( .A(1'b1), .Y(div_ratio_RX[3]) );
  OAI21X2M U13 ( .A0(n1), .A1(n3), .B0(n2), .Y(div_ratio_RX[0]) );
  AND2X2M U14 ( .A(n1), .B(n2), .Y(div_ratio_RX[2]) );
  AND2X2M U15 ( .A(n2), .B(n3), .Y(div_ratio_RX[1]) );
  NOR3BX2M U16 ( .AN(prescale[1]), .B(prescale[0]), .C(prescale[2]), .Y(n3) );
  NOR3BX2M U17 ( .AN(prescale[2]), .B(prescale[0]), .C(prescale[1]), .Y(n1) );
  NOR3X2M U18 ( .A(prescale[5]), .B(prescale[4]), .C(prescale[3]), .Y(n2) );
endmodule


module Domain_2_TOP ( prescale, Div_Ratio, F_EMPTY, RD_DATA, RST, UART_CLK, 
        RX_IN, PAR_EN, PAR_TYP, RD_INC, RX_OUT_P, RX_OUT_V, TX_OUT_S, stp_err, 
        par_err, strt_glitch, TX_CLK_O );
  input [0:5] prescale;
  input [7:0] Div_Ratio;
  input [7:0] RD_DATA;
  output [0:7] RX_OUT_P;
  input F_EMPTY, RST, UART_CLK, RX_IN, PAR_EN, PAR_TYP;
  output RD_INC, RX_OUT_V, TX_OUT_S, stp_err, par_err, strt_glitch, TX_CLK_O;
  wire   RX_CLK, busy, n1, n2, n3;
  wire   [7:0] div_ratio_RX;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4;

  UART_TOP UART_U0 ( .TX_CLK(TX_CLK_O), .RX_CLK(RX_CLK), .RST(n2), .TX_IN_P(
        RD_DATA), .TX_IN_V(n1), .RX_IN_S(RX_IN), .prescale(prescale), 
        .PAR_TYP(PAR_TYP), .PAR_EN(PAR_EN), .TX_OUT_S(TX_OUT_S), .RX_OUT_P(
        RX_OUT_P), .RX_OUT_V(RX_OUT_V), .busy(busy), .stp_err(stp_err), 
        .par_err(par_err), .strt_glitch(strt_glitch) );
  ClkDiv_0 ClkDiv_U1_TX ( .i_ref_clk(UART_CLK), .i_rst_n(n2), .i_clk_en(1'b1), 
        .i_div_ratio(Div_Ratio), .o_div_clk(TX_CLK_O) );
  ClkDiv_1 ClkDiv_U2_RX ( .i_ref_clk(UART_CLK), .i_rst_n(n2), .i_clk_en(1'b1), 
        .i_div_ratio({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, div_ratio_RX[2:0]}), 
        .o_div_clk(RX_CLK) );
  PULSE_GEN PULSE_GEN_U3 ( .CLK(TX_CLK_O), .RST(n2), .LVL_SIG(busy), 
        .PULSE_SIG(RD_INC) );
  prescale_MUX prescale_MUX_U4 ( .prescale(prescale), .div_ratio_RX({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, div_ratio_RX[2:0]}) );
  INVX2M U2 ( .A(F_EMPTY), .Y(n1) );
  INVX2M U3 ( .A(n3), .Y(n2) );
  INVX2M U4 ( .A(RST), .Y(n3) );
endmodule


module DATA_SYNC ( unsync_bus, bus_enable, CLK, RST, sync_bus, enable_pulse );
  input [0:7] unsync_bus;
  output [7:0] sync_bus;
  input bus_enable, CLK, RST;
  output enable_pulse;
  wire   enable_flop, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10;
  wire   [0:1] stage;

  DFFRQX2M \sync_bus_reg[7]  ( .D(n9), .CK(CLK), .RN(RST), .Q(sync_bus[7]) );
  DFFRQX2M \sync_bus_reg[0]  ( .D(n2), .CK(CLK), .RN(RST), .Q(sync_bus[0]) );
  DFFRQX2M \sync_bus_reg[3]  ( .D(n5), .CK(CLK), .RN(RST), .Q(sync_bus[3]) );
  DFFRQX2M \sync_bus_reg[5]  ( .D(n7), .CK(CLK), .RN(RST), .Q(sync_bus[5]) );
  DFFRQX2M \sync_bus_reg[1]  ( .D(n3), .CK(CLK), .RN(RST), .Q(sync_bus[1]) );
  DFFRQX2M \sync_bus_reg[2]  ( .D(n4), .CK(CLK), .RN(RST), .Q(sync_bus[2]) );
  DFFRQX2M \sync_bus_reg[6]  ( .D(n8), .CK(CLK), .RN(RST), .Q(sync_bus[6]) );
  DFFRQX2M \sync_bus_reg[4]  ( .D(n6), .CK(CLK), .RN(RST), .Q(sync_bus[4]) );
  DFFRQX2M enable_flop_reg ( .D(stage[1]), .CK(CLK), .RN(RST), .Q(enable_flop)
         );
  DFFRQX2M \stage_reg[1]  ( .D(stage[0]), .CK(CLK), .RN(RST), .Q(stage[1]) );
  DFFRQX2M enable_pulse_reg ( .D(n10), .CK(CLK), .RN(RST), .Q(enable_pulse) );
  DFFRQX2M \stage_reg[0]  ( .D(bus_enable), .CK(CLK), .RN(RST), .Q(stage[0])
         );
  INVX2M U3 ( .A(n1), .Y(n10) );
  NAND2BX2M U4 ( .AN(enable_flop), .B(stage[1]), .Y(n1) );
  AO22X1M U5 ( .A0(unsync_bus[7]), .A1(n10), .B0(sync_bus[0]), .B1(n1), .Y(n2)
         );
  AO22X1M U6 ( .A0(unsync_bus[6]), .A1(n10), .B0(sync_bus[1]), .B1(n1), .Y(n3)
         );
  AO22X1M U7 ( .A0(unsync_bus[5]), .A1(n10), .B0(sync_bus[2]), .B1(n1), .Y(n4)
         );
  AO22X1M U8 ( .A0(unsync_bus[4]), .A1(n10), .B0(sync_bus[3]), .B1(n1), .Y(n5)
         );
  AO22X1M U9 ( .A0(unsync_bus[3]), .A1(n10), .B0(sync_bus[4]), .B1(n1), .Y(n6)
         );
  AO22X1M U10 ( .A0(unsync_bus[2]), .A1(n10), .B0(sync_bus[5]), .B1(n1), .Y(n7) );
  AO22X1M U11 ( .A0(unsync_bus[1]), .A1(n10), .B0(sync_bus[6]), .B1(n1), .Y(n8) );
  AO22X1M U12 ( .A0(unsync_bus[0]), .A1(n10), .B0(sync_bus[7]), .B1(n1), .Y(n9) );
endmodule


module RST_SYNC_0 ( RST, CLK, SYNC_RST );
  input RST, CLK;
  output SYNC_RST;

  wire   [1:0] stage;

  DFFRQX2M SYNC_RST_reg ( .D(stage[1]), .CK(CLK), .RN(RST), .Q(SYNC_RST) );
  DFFRQX2M \stage_reg[1]  ( .D(stage[0]), .CK(CLK), .RN(RST), .Q(stage[1]) );
  DFFRQX2M \stage_reg[0]  ( .D(1'b1), .CK(CLK), .RN(RST), .Q(stage[0]) );
endmodule


module RST_SYNC_1 ( RST, CLK, SYNC_RST );
  input RST, CLK;
  output SYNC_RST;

  wire   [1:0] stage;

  DFFRQX2M SYNC_RST_reg ( .D(stage[1]), .CK(CLK), .RN(RST), .Q(SYNC_RST) );
  DFFRQX2M \stage_reg[1]  ( .D(stage[0]), .CK(CLK), .RN(RST), .Q(stage[1]) );
  DFFRQX2M \stage_reg[0]  ( .D(1'b1), .CK(CLK), .RN(RST), .Q(stage[0]) );
endmodule


module FIFO_MEM_CNTRL ( WR_DATA, W_CLK, W_RST, R_CLK, R_RST, wclken, waddr, 
        raddr, RD_DATA );
  input [7:0] WR_DATA;
  input [2:0] waddr;
  input [2:0] raddr;
  output [7:0] RD_DATA;
  input W_CLK, W_RST, R_CLK, R_RST, wclken;
  wire   N10, N11, N12, \FIFO_MEM[0][7] , \FIFO_MEM[0][6] , \FIFO_MEM[0][5] ,
         \FIFO_MEM[0][4] , \FIFO_MEM[0][3] , \FIFO_MEM[0][2] ,
         \FIFO_MEM[0][1] , \FIFO_MEM[0][0] , \FIFO_MEM[1][7] ,
         \FIFO_MEM[1][6] , \FIFO_MEM[1][5] , \FIFO_MEM[1][4] ,
         \FIFO_MEM[1][3] , \FIFO_MEM[1][2] , \FIFO_MEM[1][1] ,
         \FIFO_MEM[1][0] , \FIFO_MEM[2][7] , \FIFO_MEM[2][6] ,
         \FIFO_MEM[2][5] , \FIFO_MEM[2][4] , \FIFO_MEM[2][3] ,
         \FIFO_MEM[2][2] , \FIFO_MEM[2][1] , \FIFO_MEM[2][0] ,
         \FIFO_MEM[3][7] , \FIFO_MEM[3][6] , \FIFO_MEM[3][5] ,
         \FIFO_MEM[3][4] , \FIFO_MEM[3][3] , \FIFO_MEM[3][2] ,
         \FIFO_MEM[3][1] , \FIFO_MEM[3][0] , \FIFO_MEM[4][7] ,
         \FIFO_MEM[4][6] , \FIFO_MEM[4][5] , \FIFO_MEM[4][4] ,
         \FIFO_MEM[4][3] , \FIFO_MEM[4][2] , \FIFO_MEM[4][1] ,
         \FIFO_MEM[4][0] , \FIFO_MEM[5][7] , \FIFO_MEM[5][6] ,
         \FIFO_MEM[5][5] , \FIFO_MEM[5][4] , \FIFO_MEM[5][3] ,
         \FIFO_MEM[5][2] , \FIFO_MEM[5][1] , \FIFO_MEM[5][0] ,
         \FIFO_MEM[6][7] , \FIFO_MEM[6][6] , \FIFO_MEM[6][5] ,
         \FIFO_MEM[6][4] , \FIFO_MEM[6][3] , \FIFO_MEM[6][2] ,
         \FIFO_MEM[6][1] , \FIFO_MEM[6][0] , \FIFO_MEM[7][7] ,
         \FIFO_MEM[7][6] , \FIFO_MEM[7][5] , \FIFO_MEM[7][4] ,
         \FIFO_MEM[7][3] , \FIFO_MEM[7][2] , \FIFO_MEM[7][1] ,
         \FIFO_MEM[7][0] , N32, N33, N34, N35, N36, N37, N38, N39, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134;
  assign N10 = raddr[0];
  assign N11 = raddr[1];
  assign N12 = raddr[2];

  DFFRQX2M \RD_DATA_reg[6]  ( .D(N33), .CK(R_CLK), .RN(R_RST), .Q(RD_DATA[6])
         );
  DFFRQX2M \RD_DATA_reg[5]  ( .D(N34), .CK(R_CLK), .RN(R_RST), .Q(RD_DATA[5])
         );
  DFFRQX2M \RD_DATA_reg[4]  ( .D(N35), .CK(R_CLK), .RN(R_RST), .Q(RD_DATA[4])
         );
  DFFRQX2M \RD_DATA_reg[3]  ( .D(N36), .CK(R_CLK), .RN(R_RST), .Q(RD_DATA[3])
         );
  DFFRQX2M \RD_DATA_reg[2]  ( .D(N37), .CK(R_CLK), .RN(R_RST), .Q(RD_DATA[2])
         );
  DFFRQX2M \RD_DATA_reg[1]  ( .D(N38), .CK(R_CLK), .RN(R_RST), .Q(RD_DATA[1])
         );
  DFFRQX2M \RD_DATA_reg[0]  ( .D(N39), .CK(R_CLK), .RN(R_RST), .Q(RD_DATA[0])
         );
  DFFRQX2M \RD_DATA_reg[7]  ( .D(N32), .CK(R_CLK), .RN(R_RST), .Q(RD_DATA[7])
         );
  DFFRQX2M \FIFO_MEM_reg[0][7]  ( .D(n84), .CK(W_CLK), .RN(n120), .Q(
        \FIFO_MEM[0][7] ) );
  DFFRQX2M \FIFO_MEM_reg[0][6]  ( .D(n83), .CK(W_CLK), .RN(n120), .Q(
        \FIFO_MEM[0][6] ) );
  DFFRQX2M \FIFO_MEM_reg[0][5]  ( .D(n82), .CK(W_CLK), .RN(n120), .Q(
        \FIFO_MEM[0][5] ) );
  DFFRQX2M \FIFO_MEM_reg[0][4]  ( .D(n81), .CK(W_CLK), .RN(n120), .Q(
        \FIFO_MEM[0][4] ) );
  DFFRQX2M \FIFO_MEM_reg[0][3]  ( .D(n80), .CK(W_CLK), .RN(n120), .Q(
        \FIFO_MEM[0][3] ) );
  DFFRQX2M \FIFO_MEM_reg[0][2]  ( .D(n79), .CK(W_CLK), .RN(n120), .Q(
        \FIFO_MEM[0][2] ) );
  DFFRQX2M \FIFO_MEM_reg[0][1]  ( .D(n78), .CK(W_CLK), .RN(n120), .Q(
        \FIFO_MEM[0][1] ) );
  DFFRQX2M \FIFO_MEM_reg[0][0]  ( .D(n77), .CK(W_CLK), .RN(n120), .Q(
        \FIFO_MEM[0][0] ) );
  DFFRQX2M \FIFO_MEM_reg[1][7]  ( .D(n76), .CK(W_CLK), .RN(n120), .Q(
        \FIFO_MEM[1][7] ) );
  DFFRQX2M \FIFO_MEM_reg[1][6]  ( .D(n75), .CK(W_CLK), .RN(n120), .Q(
        \FIFO_MEM[1][6] ) );
  DFFRQX2M \FIFO_MEM_reg[1][5]  ( .D(n74), .CK(W_CLK), .RN(n120), .Q(
        \FIFO_MEM[1][5] ) );
  DFFRQX2M \FIFO_MEM_reg[1][4]  ( .D(n73), .CK(W_CLK), .RN(n120), .Q(
        \FIFO_MEM[1][4] ) );
  DFFRQX2M \FIFO_MEM_reg[1][3]  ( .D(n72), .CK(W_CLK), .RN(n120), .Q(
        \FIFO_MEM[1][3] ) );
  DFFRQX2M \FIFO_MEM_reg[1][2]  ( .D(n71), .CK(W_CLK), .RN(n121), .Q(
        \FIFO_MEM[1][2] ) );
  DFFRQX2M \FIFO_MEM_reg[1][1]  ( .D(n70), .CK(W_CLK), .RN(n121), .Q(
        \FIFO_MEM[1][1] ) );
  DFFRQX2M \FIFO_MEM_reg[1][0]  ( .D(n69), .CK(W_CLK), .RN(n121), .Q(
        \FIFO_MEM[1][0] ) );
  DFFRQX2M \FIFO_MEM_reg[4][7]  ( .D(n52), .CK(W_CLK), .RN(n122), .Q(
        \FIFO_MEM[4][7] ) );
  DFFRQX2M \FIFO_MEM_reg[4][6]  ( .D(n51), .CK(W_CLK), .RN(n122), .Q(
        \FIFO_MEM[4][6] ) );
  DFFRQX2M \FIFO_MEM_reg[4][5]  ( .D(n50), .CK(W_CLK), .RN(n122), .Q(
        \FIFO_MEM[4][5] ) );
  DFFRQX2M \FIFO_MEM_reg[4][4]  ( .D(n49), .CK(W_CLK), .RN(n122), .Q(
        \FIFO_MEM[4][4] ) );
  DFFRQX2M \FIFO_MEM_reg[4][3]  ( .D(n48), .CK(W_CLK), .RN(n122), .Q(
        \FIFO_MEM[4][3] ) );
  DFFRQX2M \FIFO_MEM_reg[4][2]  ( .D(n47), .CK(W_CLK), .RN(n122), .Q(
        \FIFO_MEM[4][2] ) );
  DFFRQX2M \FIFO_MEM_reg[4][1]  ( .D(n46), .CK(W_CLK), .RN(n122), .Q(
        \FIFO_MEM[4][1] ) );
  DFFRQX2M \FIFO_MEM_reg[4][0]  ( .D(n45), .CK(W_CLK), .RN(n123), .Q(
        \FIFO_MEM[4][0] ) );
  DFFRQX2M \FIFO_MEM_reg[5][7]  ( .D(n44), .CK(W_CLK), .RN(n123), .Q(
        \FIFO_MEM[5][7] ) );
  DFFRQX2M \FIFO_MEM_reg[5][6]  ( .D(n43), .CK(W_CLK), .RN(n123), .Q(
        \FIFO_MEM[5][6] ) );
  DFFRQX2M \FIFO_MEM_reg[5][5]  ( .D(n42), .CK(W_CLK), .RN(n123), .Q(
        \FIFO_MEM[5][5] ) );
  DFFRQX2M \FIFO_MEM_reg[5][4]  ( .D(n41), .CK(W_CLK), .RN(n123), .Q(
        \FIFO_MEM[5][4] ) );
  DFFRQX2M \FIFO_MEM_reg[5][3]  ( .D(n40), .CK(W_CLK), .RN(n123), .Q(
        \FIFO_MEM[5][3] ) );
  DFFRQX2M \FIFO_MEM_reg[5][2]  ( .D(n39), .CK(W_CLK), .RN(n123), .Q(
        \FIFO_MEM[5][2] ) );
  DFFRQX2M \FIFO_MEM_reg[5][1]  ( .D(n38), .CK(W_CLK), .RN(n123), .Q(
        \FIFO_MEM[5][1] ) );
  DFFRQX2M \FIFO_MEM_reg[5][0]  ( .D(n37), .CK(W_CLK), .RN(n123), .Q(
        \FIFO_MEM[5][0] ) );
  DFFRQX2M \FIFO_MEM_reg[6][7]  ( .D(n36), .CK(W_CLK), .RN(n123), .Q(
        \FIFO_MEM[6][7] ) );
  DFFRQX2M \FIFO_MEM_reg[6][6]  ( .D(n35), .CK(W_CLK), .RN(n123), .Q(
        \FIFO_MEM[6][6] ) );
  DFFRQX2M \FIFO_MEM_reg[6][5]  ( .D(n34), .CK(W_CLK), .RN(n123), .Q(
        \FIFO_MEM[6][5] ) );
  DFFRQX2M \FIFO_MEM_reg[6][4]  ( .D(n33), .CK(W_CLK), .RN(n123), .Q(
        \FIFO_MEM[6][4] ) );
  DFFRQX2M \FIFO_MEM_reg[6][3]  ( .D(n32), .CK(W_CLK), .RN(n124), .Q(
        \FIFO_MEM[6][3] ) );
  DFFRQX2M \FIFO_MEM_reg[6][2]  ( .D(n31), .CK(W_CLK), .RN(n124), .Q(
        \FIFO_MEM[6][2] ) );
  DFFRQX2M \FIFO_MEM_reg[6][1]  ( .D(n30), .CK(W_CLK), .RN(n124), .Q(
        \FIFO_MEM[6][1] ) );
  DFFRQX2M \FIFO_MEM_reg[6][0]  ( .D(n29), .CK(W_CLK), .RN(n124), .Q(
        \FIFO_MEM[6][0] ) );
  DFFRQX2M \FIFO_MEM_reg[7][7]  ( .D(n28), .CK(W_CLK), .RN(n124), .Q(
        \FIFO_MEM[7][7] ) );
  DFFRQX2M \FIFO_MEM_reg[7][6]  ( .D(n27), .CK(W_CLK), .RN(n124), .Q(
        \FIFO_MEM[7][6] ) );
  DFFRQX2M \FIFO_MEM_reg[7][5]  ( .D(n26), .CK(W_CLK), .RN(n124), .Q(
        \FIFO_MEM[7][5] ) );
  DFFRQX2M \FIFO_MEM_reg[7][4]  ( .D(n25), .CK(W_CLK), .RN(n124), .Q(
        \FIFO_MEM[7][4] ) );
  DFFRQX2M \FIFO_MEM_reg[7][3]  ( .D(n24), .CK(W_CLK), .RN(n124), .Q(
        \FIFO_MEM[7][3] ) );
  DFFRQX2M \FIFO_MEM_reg[7][2]  ( .D(n23), .CK(W_CLK), .RN(n124), .Q(
        \FIFO_MEM[7][2] ) );
  DFFRQX2M \FIFO_MEM_reg[7][1]  ( .D(n22), .CK(W_CLK), .RN(n124), .Q(
        \FIFO_MEM[7][1] ) );
  DFFRQX2M \FIFO_MEM_reg[7][0]  ( .D(n21), .CK(W_CLK), .RN(n124), .Q(
        \FIFO_MEM[7][0] ) );
  DFFRQX2M \FIFO_MEM_reg[2][7]  ( .D(n68), .CK(W_CLK), .RN(n121), .Q(
        \FIFO_MEM[2][7] ) );
  DFFRQX2M \FIFO_MEM_reg[2][6]  ( .D(n67), .CK(W_CLK), .RN(n121), .Q(
        \FIFO_MEM[2][6] ) );
  DFFRQX2M \FIFO_MEM_reg[2][5]  ( .D(n66), .CK(W_CLK), .RN(n121), .Q(
        \FIFO_MEM[2][5] ) );
  DFFRQX2M \FIFO_MEM_reg[2][4]  ( .D(n65), .CK(W_CLK), .RN(n121), .Q(
        \FIFO_MEM[2][4] ) );
  DFFRQX2M \FIFO_MEM_reg[2][3]  ( .D(n64), .CK(W_CLK), .RN(n121), .Q(
        \FIFO_MEM[2][3] ) );
  DFFRQX2M \FIFO_MEM_reg[2][2]  ( .D(n63), .CK(W_CLK), .RN(n121), .Q(
        \FIFO_MEM[2][2] ) );
  DFFRQX2M \FIFO_MEM_reg[2][1]  ( .D(n62), .CK(W_CLK), .RN(n121), .Q(
        \FIFO_MEM[2][1] ) );
  DFFRQX2M \FIFO_MEM_reg[2][0]  ( .D(n61), .CK(W_CLK), .RN(n121), .Q(
        \FIFO_MEM[2][0] ) );
  DFFRQX2M \FIFO_MEM_reg[3][7]  ( .D(n60), .CK(W_CLK), .RN(n121), .Q(
        \FIFO_MEM[3][7] ) );
  DFFRQX2M \FIFO_MEM_reg[3][6]  ( .D(n59), .CK(W_CLK), .RN(n121), .Q(
        \FIFO_MEM[3][6] ) );
  DFFRQX2M \FIFO_MEM_reg[3][5]  ( .D(n58), .CK(W_CLK), .RN(n122), .Q(
        \FIFO_MEM[3][5] ) );
  DFFRQX2M \FIFO_MEM_reg[3][4]  ( .D(n57), .CK(W_CLK), .RN(n122), .Q(
        \FIFO_MEM[3][4] ) );
  DFFRQX2M \FIFO_MEM_reg[3][3]  ( .D(n56), .CK(W_CLK), .RN(n122), .Q(
        \FIFO_MEM[3][3] ) );
  DFFRQX2M \FIFO_MEM_reg[3][2]  ( .D(n55), .CK(W_CLK), .RN(n122), .Q(
        \FIFO_MEM[3][2] ) );
  DFFRQX2M \FIFO_MEM_reg[3][1]  ( .D(n54), .CK(W_CLK), .RN(n122), .Q(
        \FIFO_MEM[3][1] ) );
  DFFRQX2M \FIFO_MEM_reg[3][0]  ( .D(n53), .CK(W_CLK), .RN(n122), .Q(
        \FIFO_MEM[3][0] ) );
  BUFX2M U3 ( .A(n16), .Y(n116) );
  BUFX2M U4 ( .A(n18), .Y(n115) );
  BUFX2M U5 ( .A(n19), .Y(n114) );
  BUFX2M U6 ( .A(n13), .Y(n117) );
  BUFX2M U7 ( .A(n118), .Y(n122) );
  BUFX2M U8 ( .A(n118), .Y(n121) );
  BUFX2M U9 ( .A(n118), .Y(n120) );
  BUFX2M U10 ( .A(n119), .Y(n123) );
  BUFX2M U11 ( .A(n119), .Y(n124) );
  BUFX2M U12 ( .A(W_RST), .Y(n118) );
  BUFX2M U13 ( .A(W_RST), .Y(n119) );
  NAND3X2M U14 ( .A(n125), .B(n126), .C(n12), .Y(n15) );
  NAND3X2M U15 ( .A(n125), .B(n126), .C(n17), .Y(n20) );
  NOR2X2M U16 ( .A(n111), .B(n112), .Y(n107) );
  NAND3X2M U17 ( .A(n12), .B(n126), .C(waddr[0]), .Y(n14) );
  NAND3X2M U18 ( .A(waddr[0]), .B(n12), .C(waddr[1]), .Y(n11) );
  NOR2BX2M U19 ( .AN(wclken), .B(waddr[2]), .Y(n17) );
  OAI2BB2X1M U20 ( .B0(n11), .B1(n134), .A0N(\FIFO_MEM[7][0] ), .A1N(n11), .Y(
        n21) );
  OAI2BB2X1M U21 ( .B0(n11), .B1(n133), .A0N(\FIFO_MEM[7][1] ), .A1N(n11), .Y(
        n22) );
  OAI2BB2X1M U22 ( .B0(n11), .B1(n132), .A0N(\FIFO_MEM[7][2] ), .A1N(n11), .Y(
        n23) );
  OAI2BB2X1M U23 ( .B0(n11), .B1(n131), .A0N(\FIFO_MEM[7][3] ), .A1N(n11), .Y(
        n24) );
  OAI2BB2X1M U24 ( .B0(n11), .B1(n130), .A0N(\FIFO_MEM[7][4] ), .A1N(n11), .Y(
        n25) );
  OAI2BB2X1M U25 ( .B0(n11), .B1(n129), .A0N(\FIFO_MEM[7][5] ), .A1N(n11), .Y(
        n26) );
  OAI2BB2X1M U26 ( .B0(n11), .B1(n128), .A0N(\FIFO_MEM[7][6] ), .A1N(n11), .Y(
        n27) );
  OAI2BB2X1M U27 ( .B0(n11), .B1(n127), .A0N(\FIFO_MEM[7][7] ), .A1N(n11), .Y(
        n28) );
  OAI2BB2X1M U28 ( .B0(n134), .B1(n14), .A0N(\FIFO_MEM[5][0] ), .A1N(n14), .Y(
        n37) );
  OAI2BB2X1M U29 ( .B0(n133), .B1(n14), .A0N(\FIFO_MEM[5][1] ), .A1N(n14), .Y(
        n38) );
  OAI2BB2X1M U30 ( .B0(n132), .B1(n14), .A0N(\FIFO_MEM[5][2] ), .A1N(n14), .Y(
        n39) );
  OAI2BB2X1M U31 ( .B0(n131), .B1(n14), .A0N(\FIFO_MEM[5][3] ), .A1N(n14), .Y(
        n40) );
  OAI2BB2X1M U32 ( .B0(n130), .B1(n14), .A0N(\FIFO_MEM[5][4] ), .A1N(n14), .Y(
        n41) );
  OAI2BB2X1M U33 ( .B0(n129), .B1(n14), .A0N(\FIFO_MEM[5][5] ), .A1N(n14), .Y(
        n42) );
  OAI2BB2X1M U34 ( .B0(n128), .B1(n14), .A0N(\FIFO_MEM[5][6] ), .A1N(n14), .Y(
        n43) );
  OAI2BB2X1M U35 ( .B0(n127), .B1(n14), .A0N(\FIFO_MEM[5][7] ), .A1N(n14), .Y(
        n44) );
  OAI2BB2X1M U36 ( .B0(n134), .B1(n20), .A0N(\FIFO_MEM[0][0] ), .A1N(n20), .Y(
        n77) );
  OAI2BB2X1M U37 ( .B0(n133), .B1(n20), .A0N(\FIFO_MEM[0][1] ), .A1N(n20), .Y(
        n78) );
  OAI2BB2X1M U38 ( .B0(n132), .B1(n20), .A0N(\FIFO_MEM[0][2] ), .A1N(n20), .Y(
        n79) );
  OAI2BB2X1M U39 ( .B0(n131), .B1(n20), .A0N(\FIFO_MEM[0][3] ), .A1N(n20), .Y(
        n80) );
  OAI2BB2X1M U40 ( .B0(n130), .B1(n20), .A0N(\FIFO_MEM[0][4] ), .A1N(n20), .Y(
        n81) );
  OAI2BB2X1M U41 ( .B0(n129), .B1(n20), .A0N(\FIFO_MEM[0][5] ), .A1N(n20), .Y(
        n82) );
  OAI2BB2X1M U42 ( .B0(n128), .B1(n20), .A0N(\FIFO_MEM[0][6] ), .A1N(n20), .Y(
        n83) );
  OAI2BB2X1M U43 ( .B0(n127), .B1(n20), .A0N(\FIFO_MEM[0][7] ), .A1N(n20), .Y(
        n84) );
  OAI2BB2X1M U44 ( .B0(n134), .B1(n15), .A0N(\FIFO_MEM[4][0] ), .A1N(n15), .Y(
        n45) );
  OAI2BB2X1M U45 ( .B0(n133), .B1(n15), .A0N(\FIFO_MEM[4][1] ), .A1N(n15), .Y(
        n46) );
  OAI2BB2X1M U46 ( .B0(n132), .B1(n15), .A0N(\FIFO_MEM[4][2] ), .A1N(n15), .Y(
        n47) );
  OAI2BB2X1M U47 ( .B0(n131), .B1(n15), .A0N(\FIFO_MEM[4][3] ), .A1N(n15), .Y(
        n48) );
  OAI2BB2X1M U48 ( .B0(n130), .B1(n15), .A0N(\FIFO_MEM[4][4] ), .A1N(n15), .Y(
        n49) );
  OAI2BB2X1M U49 ( .B0(n129), .B1(n15), .A0N(\FIFO_MEM[4][5] ), .A1N(n15), .Y(
        n50) );
  OAI2BB2X1M U50 ( .B0(n128), .B1(n15), .A0N(\FIFO_MEM[4][6] ), .A1N(n15), .Y(
        n51) );
  OAI2BB2X1M U51 ( .B0(n127), .B1(n15), .A0N(\FIFO_MEM[4][7] ), .A1N(n15), .Y(
        n52) );
  INVX2M U52 ( .A(WR_DATA[0]), .Y(n134) );
  INVX2M U53 ( .A(WR_DATA[1]), .Y(n133) );
  INVX2M U54 ( .A(WR_DATA[2]), .Y(n132) );
  INVX2M U55 ( .A(WR_DATA[3]), .Y(n131) );
  INVX2M U56 ( .A(WR_DATA[4]), .Y(n130) );
  INVX2M U57 ( .A(WR_DATA[5]), .Y(n129) );
  INVX2M U58 ( .A(WR_DATA[6]), .Y(n128) );
  INVX2M U59 ( .A(WR_DATA[7]), .Y(n127) );
  OAI2BB2X1M U60 ( .B0(n134), .B1(n117), .A0N(\FIFO_MEM[6][0] ), .A1N(n117), 
        .Y(n29) );
  OAI2BB2X1M U61 ( .B0(n133), .B1(n117), .A0N(\FIFO_MEM[6][1] ), .A1N(n117), 
        .Y(n30) );
  OAI2BB2X1M U62 ( .B0(n132), .B1(n117), .A0N(\FIFO_MEM[6][2] ), .A1N(n117), 
        .Y(n31) );
  OAI2BB2X1M U63 ( .B0(n131), .B1(n117), .A0N(\FIFO_MEM[6][3] ), .A1N(n117), 
        .Y(n32) );
  OAI2BB2X1M U64 ( .B0(n130), .B1(n117), .A0N(\FIFO_MEM[6][4] ), .A1N(n117), 
        .Y(n33) );
  OAI2BB2X1M U65 ( .B0(n129), .B1(n117), .A0N(\FIFO_MEM[6][5] ), .A1N(n117), 
        .Y(n34) );
  OAI2BB2X1M U66 ( .B0(n128), .B1(n117), .A0N(\FIFO_MEM[6][6] ), .A1N(n117), 
        .Y(n35) );
  OAI2BB2X1M U67 ( .B0(n127), .B1(n117), .A0N(\FIFO_MEM[6][7] ), .A1N(n117), 
        .Y(n36) );
  OAI2BB2X1M U68 ( .B0(n134), .B1(n116), .A0N(\FIFO_MEM[3][0] ), .A1N(n116), 
        .Y(n53) );
  OAI2BB2X1M U69 ( .B0(n133), .B1(n116), .A0N(\FIFO_MEM[3][1] ), .A1N(n116), 
        .Y(n54) );
  OAI2BB2X1M U70 ( .B0(n132), .B1(n116), .A0N(\FIFO_MEM[3][2] ), .A1N(n116), 
        .Y(n55) );
  OAI2BB2X1M U71 ( .B0(n131), .B1(n116), .A0N(\FIFO_MEM[3][3] ), .A1N(n116), 
        .Y(n56) );
  OAI2BB2X1M U72 ( .B0(n130), .B1(n116), .A0N(\FIFO_MEM[3][4] ), .A1N(n116), 
        .Y(n57) );
  OAI2BB2X1M U73 ( .B0(n129), .B1(n116), .A0N(\FIFO_MEM[3][5] ), .A1N(n116), 
        .Y(n58) );
  OAI2BB2X1M U74 ( .B0(n128), .B1(n116), .A0N(\FIFO_MEM[3][6] ), .A1N(n116), 
        .Y(n59) );
  OAI2BB2X1M U75 ( .B0(n127), .B1(n116), .A0N(\FIFO_MEM[3][7] ), .A1N(n116), 
        .Y(n60) );
  OAI2BB2X1M U76 ( .B0(n134), .B1(n115), .A0N(\FIFO_MEM[2][0] ), .A1N(n115), 
        .Y(n61) );
  OAI2BB2X1M U77 ( .B0(n133), .B1(n115), .A0N(\FIFO_MEM[2][1] ), .A1N(n115), 
        .Y(n62) );
  OAI2BB2X1M U78 ( .B0(n132), .B1(n115), .A0N(\FIFO_MEM[2][2] ), .A1N(n115), 
        .Y(n63) );
  OAI2BB2X1M U79 ( .B0(n131), .B1(n115), .A0N(\FIFO_MEM[2][3] ), .A1N(n115), 
        .Y(n64) );
  OAI2BB2X1M U80 ( .B0(n130), .B1(n115), .A0N(\FIFO_MEM[2][4] ), .A1N(n115), 
        .Y(n65) );
  OAI2BB2X1M U81 ( .B0(n129), .B1(n115), .A0N(\FIFO_MEM[2][5] ), .A1N(n115), 
        .Y(n66) );
  OAI2BB2X1M U82 ( .B0(n128), .B1(n115), .A0N(\FIFO_MEM[2][6] ), .A1N(n115), 
        .Y(n67) );
  OAI2BB2X1M U83 ( .B0(n127), .B1(n115), .A0N(\FIFO_MEM[2][7] ), .A1N(n115), 
        .Y(n68) );
  OAI2BB2X1M U84 ( .B0(n134), .B1(n114), .A0N(\FIFO_MEM[1][0] ), .A1N(n114), 
        .Y(n69) );
  OAI2BB2X1M U85 ( .B0(n133), .B1(n114), .A0N(\FIFO_MEM[1][1] ), .A1N(n114), 
        .Y(n70) );
  OAI2BB2X1M U86 ( .B0(n132), .B1(n114), .A0N(\FIFO_MEM[1][2] ), .A1N(n114), 
        .Y(n71) );
  OAI2BB2X1M U87 ( .B0(n131), .B1(n114), .A0N(\FIFO_MEM[1][3] ), .A1N(n114), 
        .Y(n72) );
  OAI2BB2X1M U88 ( .B0(n130), .B1(n114), .A0N(\FIFO_MEM[1][4] ), .A1N(n114), 
        .Y(n73) );
  OAI2BB2X1M U89 ( .B0(n129), .B1(n114), .A0N(\FIFO_MEM[1][5] ), .A1N(n114), 
        .Y(n74) );
  OAI2BB2X1M U90 ( .B0(n128), .B1(n114), .A0N(\FIFO_MEM[1][6] ), .A1N(n114), 
        .Y(n75) );
  OAI2BB2X1M U91 ( .B0(n127), .B1(n114), .A0N(\FIFO_MEM[1][7] ), .A1N(n114), 
        .Y(n76) );
  AND2X2M U92 ( .A(wclken), .B(waddr[2]), .Y(n12) );
  NAND3X2M U93 ( .A(n12), .B(n125), .C(waddr[1]), .Y(n13) );
  NAND3X2M U94 ( .A(waddr[1]), .B(waddr[0]), .C(n17), .Y(n16) );
  NAND3X2M U95 ( .A(waddr[1]), .B(n125), .C(n17), .Y(n18) );
  NAND3X2M U96 ( .A(waddr[0]), .B(n126), .C(n17), .Y(n19) );
  INVX2M U97 ( .A(waddr[1]), .Y(n126) );
  INVX2M U98 ( .A(waddr[0]), .Y(n125) );
  NOR2X2M U99 ( .A(N11), .B(N12), .Y(n104) );
  NOR2X2M U100 ( .A(n112), .B(N12), .Y(n105) );
  INVX2M U101 ( .A(N11), .Y(n112) );
  NOR2X2M U102 ( .A(n111), .B(N11), .Y(n108) );
  INVX2M U103 ( .A(N12), .Y(n111) );
  INVX2M U104 ( .A(N10), .Y(n113) );
  AO22X1M U105 ( .A0(\FIFO_MEM[3][0] ), .A1(n105), .B0(\FIFO_MEM[1][0] ), .B1(
        n104), .Y(n1) );
  AOI221XLM U106 ( .A0(\FIFO_MEM[5][0] ), .A1(n108), .B0(\FIFO_MEM[7][0] ), 
        .B1(n107), .C0(n1), .Y(n4) );
  AO22X1M U107 ( .A0(\FIFO_MEM[2][0] ), .A1(n105), .B0(\FIFO_MEM[0][0] ), .B1(
        n104), .Y(n2) );
  AOI221XLM U108 ( .A0(\FIFO_MEM[4][0] ), .A1(n108), .B0(\FIFO_MEM[6][0] ), 
        .B1(n107), .C0(n2), .Y(n3) );
  OAI22X1M U109 ( .A0(n113), .A1(n4), .B0(N10), .B1(n3), .Y(N39) );
  AO22X1M U110 ( .A0(\FIFO_MEM[3][1] ), .A1(n105), .B0(\FIFO_MEM[1][1] ), .B1(
        n104), .Y(n5) );
  AOI221XLM U111 ( .A0(\FIFO_MEM[5][1] ), .A1(n108), .B0(\FIFO_MEM[7][1] ), 
        .B1(n107), .C0(n5), .Y(n8) );
  AO22X1M U112 ( .A0(\FIFO_MEM[2][1] ), .A1(n105), .B0(\FIFO_MEM[0][1] ), .B1(
        n104), .Y(n6) );
  AOI221XLM U113 ( .A0(\FIFO_MEM[4][1] ), .A1(n108), .B0(\FIFO_MEM[6][1] ), 
        .B1(n107), .C0(n6), .Y(n7) );
  OAI22X1M U114 ( .A0(n113), .A1(n8), .B0(N10), .B1(n7), .Y(N38) );
  AO22X1M U115 ( .A0(\FIFO_MEM[3][2] ), .A1(n105), .B0(\FIFO_MEM[1][2] ), .B1(
        n104), .Y(n9) );
  AOI221XLM U116 ( .A0(\FIFO_MEM[5][2] ), .A1(n108), .B0(\FIFO_MEM[7][2] ), 
        .B1(n107), .C0(n9), .Y(n86) );
  AO22X1M U117 ( .A0(\FIFO_MEM[2][2] ), .A1(n105), .B0(\FIFO_MEM[0][2] ), .B1(
        n104), .Y(n10) );
  AOI221XLM U118 ( .A0(\FIFO_MEM[4][2] ), .A1(n108), .B0(\FIFO_MEM[6][2] ), 
        .B1(n107), .C0(n10), .Y(n85) );
  OAI22X1M U119 ( .A0(n113), .A1(n86), .B0(N10), .B1(n85), .Y(N37) );
  AO22X1M U120 ( .A0(\FIFO_MEM[3][3] ), .A1(n105), .B0(\FIFO_MEM[1][3] ), .B1(
        n104), .Y(n87) );
  AOI221XLM U121 ( .A0(\FIFO_MEM[5][3] ), .A1(n108), .B0(\FIFO_MEM[7][3] ), 
        .B1(n107), .C0(n87), .Y(n90) );
  AO22X1M U122 ( .A0(\FIFO_MEM[2][3] ), .A1(n105), .B0(\FIFO_MEM[0][3] ), .B1(
        n104), .Y(n88) );
  AOI221XLM U123 ( .A0(\FIFO_MEM[4][3] ), .A1(n108), .B0(\FIFO_MEM[6][3] ), 
        .B1(n107), .C0(n88), .Y(n89) );
  OAI22X1M U124 ( .A0(n113), .A1(n90), .B0(N10), .B1(n89), .Y(N36) );
  AO22X1M U125 ( .A0(\FIFO_MEM[3][4] ), .A1(n105), .B0(\FIFO_MEM[1][4] ), .B1(
        n104), .Y(n91) );
  AOI221XLM U126 ( .A0(\FIFO_MEM[5][4] ), .A1(n108), .B0(\FIFO_MEM[7][4] ), 
        .B1(n107), .C0(n91), .Y(n94) );
  AO22X1M U127 ( .A0(\FIFO_MEM[2][4] ), .A1(n105), .B0(\FIFO_MEM[0][4] ), .B1(
        n104), .Y(n92) );
  AOI221XLM U128 ( .A0(\FIFO_MEM[4][4] ), .A1(n108), .B0(\FIFO_MEM[6][4] ), 
        .B1(n107), .C0(n92), .Y(n93) );
  OAI22X1M U129 ( .A0(n113), .A1(n94), .B0(N10), .B1(n93), .Y(N35) );
  AO22X1M U130 ( .A0(\FIFO_MEM[3][5] ), .A1(n105), .B0(\FIFO_MEM[1][5] ), .B1(
        n104), .Y(n95) );
  AOI221XLM U131 ( .A0(\FIFO_MEM[5][5] ), .A1(n108), .B0(\FIFO_MEM[7][5] ), 
        .B1(n107), .C0(n95), .Y(n98) );
  AO22X1M U132 ( .A0(\FIFO_MEM[2][5] ), .A1(n105), .B0(\FIFO_MEM[0][5] ), .B1(
        n104), .Y(n96) );
  AOI221XLM U133 ( .A0(\FIFO_MEM[4][5] ), .A1(n108), .B0(\FIFO_MEM[6][5] ), 
        .B1(n107), .C0(n96), .Y(n97) );
  OAI22X1M U134 ( .A0(n113), .A1(n98), .B0(N10), .B1(n97), .Y(N34) );
  AO22X1M U135 ( .A0(\FIFO_MEM[3][6] ), .A1(n105), .B0(\FIFO_MEM[1][6] ), .B1(
        n104), .Y(n99) );
  AOI221XLM U136 ( .A0(\FIFO_MEM[5][6] ), .A1(n108), .B0(\FIFO_MEM[7][6] ), 
        .B1(n107), .C0(n99), .Y(n102) );
  AO22X1M U137 ( .A0(\FIFO_MEM[2][6] ), .A1(n105), .B0(\FIFO_MEM[0][6] ), .B1(
        n104), .Y(n100) );
  AOI221XLM U138 ( .A0(\FIFO_MEM[4][6] ), .A1(n108), .B0(\FIFO_MEM[6][6] ), 
        .B1(n107), .C0(n100), .Y(n101) );
  OAI22X1M U139 ( .A0(n113), .A1(n102), .B0(N10), .B1(n101), .Y(N33) );
  AO22X1M U140 ( .A0(\FIFO_MEM[3][7] ), .A1(n105), .B0(\FIFO_MEM[1][7] ), .B1(
        n104), .Y(n103) );
  AOI221XLM U141 ( .A0(\FIFO_MEM[5][7] ), .A1(n108), .B0(\FIFO_MEM[7][7] ), 
        .B1(n107), .C0(n103), .Y(n110) );
  AO22X1M U142 ( .A0(\FIFO_MEM[2][7] ), .A1(n105), .B0(\FIFO_MEM[0][7] ), .B1(
        n104), .Y(n106) );
  AOI221XLM U143 ( .A0(\FIFO_MEM[4][7] ), .A1(n108), .B0(\FIFO_MEM[6][7] ), 
        .B1(n107), .C0(n106), .Y(n109) );
  OAI22X1M U144 ( .A0(n110), .A1(n113), .B0(N10), .B1(n109), .Y(N32) );
endmodule


module FIFO_WR ( W_INC, W_CLK, W_RST, rptr_sync, wptr, waddr, FULL );
  input [3:0] rptr_sync;
  output [3:0] wptr;
  output [2:0] waddr;
  input W_INC, W_CLK, W_RST;
  output FULL;
  wire   N94, N95, N96, N97, n5, n6, n7, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n1;

  DFFRQX2M \wptr_bi_reg[3]  ( .D(n15), .CK(W_CLK), .RN(W_RST), .Q(N97) );
  DFFRQX2M \wptr_bi_reg[2]  ( .D(n16), .CK(W_CLK), .RN(W_RST), .Q(waddr[2]) );
  DFFRQX2M \wptr_bi_reg[0]  ( .D(n18), .CK(W_CLK), .RN(W_RST), .Q(waddr[0]) );
  DFFRQX2M \wptr_reg[0]  ( .D(N94), .CK(W_CLK), .RN(W_RST), .Q(wptr[0]) );
  DFFRQX2M \wptr_reg[1]  ( .D(N95), .CK(W_CLK), .RN(W_RST), .Q(wptr[1]) );
  DFFRQX2M \wptr_reg[3]  ( .D(N97), .CK(W_CLK), .RN(W_RST), .Q(wptr[3]) );
  DFFRQX2M \wptr_reg[2]  ( .D(N96), .CK(W_CLK), .RN(W_RST), .Q(wptr[2]) );
  DFFRQX2M \wptr_bi_reg[1]  ( .D(n17), .CK(W_CLK), .RN(W_RST), .Q(waddr[1]) );
  NOR2X2M U3 ( .A(n1), .B(n9), .Y(n7) );
  NAND2X2M U4 ( .A(W_INC), .B(n10), .Y(n9) );
  INVX2M U5 ( .A(n10), .Y(FULL) );
  XNOR2X2M U6 ( .A(waddr[2]), .B(n6), .Y(n16) );
  XNOR2X2M U7 ( .A(waddr[0]), .B(n9), .Y(n18) );
  XNOR2X2M U8 ( .A(N97), .B(n5), .Y(n15) );
  NAND2BX2M U9 ( .AN(n6), .B(waddr[2]), .Y(n5) );
  NAND4X2M U10 ( .A(n11), .B(n12), .C(n13), .D(n14), .Y(n10) );
  XNOR2X2M U11 ( .A(wptr[0]), .B(rptr_sync[0]), .Y(n11) );
  XNOR2X2M U12 ( .A(wptr[1]), .B(rptr_sync[1]), .Y(n12) );
  CLKXOR2X2M U13 ( .A(wptr[2]), .B(rptr_sync[2]), .Y(n13) );
  NAND2X2M U14 ( .A(waddr[1]), .B(n7), .Y(n6) );
  CLKXOR2X2M U15 ( .A(wptr[3]), .B(rptr_sync[3]), .Y(n14) );
  CLKXOR2X2M U16 ( .A(waddr[1]), .B(n7), .Y(n17) );
  XNOR2X2M U17 ( .A(waddr[1]), .B(n1), .Y(N94) );
  INVX2M U18 ( .A(waddr[0]), .Y(n1) );
  CLKXOR2X2M U19 ( .A(waddr[2]), .B(waddr[1]), .Y(N95) );
  CLKXOR2X2M U20 ( .A(waddr[2]), .B(N97), .Y(N96) );
endmodule


module FIFO_RD ( R_INC, R_CLK, R_RST, wptr_sync, rptr, raddr, EMPTY );
  input [3:0] wptr_sync;
  output [3:0] rptr;
  output [2:0] raddr;
  input R_INC, R_CLK, R_RST;
  output EMPTY;
  wire   N90, N91, N92, N93, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n1, n2, n3, n4;

  DFFRQX2M \rptr_reg[0]  ( .D(N90), .CK(R_CLK), .RN(R_RST), .Q(rptr[0]) );
  DFFRQX2M \rptr_reg[3]  ( .D(N93), .CK(R_CLK), .RN(R_RST), .Q(rptr[3]) );
  DFFRQX2M \rptr_reg[2]  ( .D(N92), .CK(R_CLK), .RN(R_RST), .Q(rptr[2]) );
  DFFRQX2M \rptr_reg[1]  ( .D(N91), .CK(R_CLK), .RN(R_RST), .Q(rptr[1]) );
  DFFRQX2M \rptr_bi_reg[3]  ( .D(n17), .CK(R_CLK), .RN(R_RST), .Q(N93) );
  DFFRQX2M \rptr_bi_reg[0]  ( .D(n20), .CK(R_CLK), .RN(R_RST), .Q(raddr[0]) );
  DFFRQX2M \rptr_bi_reg[2]  ( .D(n18), .CK(R_CLK), .RN(R_RST), .Q(raddr[2]) );
  DFFRQX2M \rptr_bi_reg[1]  ( .D(n19), .CK(R_CLK), .RN(R_RST), .Q(raddr[1]) );
  NOR2X2M U3 ( .A(n2), .B(n11), .Y(n10) );
  INVX2M U4 ( .A(n12), .Y(EMPTY) );
  XNOR2X2M U5 ( .A(wptr_sync[1]), .B(rptr[1]), .Y(n13) );
  XNOR2X2M U6 ( .A(n3), .B(raddr[1]), .Y(N91) );
  XNOR2X2M U7 ( .A(raddr[2]), .B(n9), .Y(n18) );
  XNOR2X2M U8 ( .A(raddr[1]), .B(n2), .Y(N90) );
  XNOR2X2M U9 ( .A(raddr[0]), .B(n11), .Y(n20) );
  NAND4X2M U10 ( .A(n13), .B(n14), .C(n15), .D(n16), .Y(n12) );
  XNOR2X2M U11 ( .A(wptr_sync[3]), .B(rptr[3]), .Y(n15) );
  XNOR2X2M U12 ( .A(wptr_sync[2]), .B(rptr[2]), .Y(n16) );
  XNOR2X2M U13 ( .A(wptr_sync[0]), .B(rptr[0]), .Y(n14) );
  OAI211X2M U14 ( .A0(n1), .A1(n4), .B0(n7), .C0(n8), .Y(n17) );
  NAND3X2M U15 ( .A(n1), .B(n4), .C(raddr[2]), .Y(n7) );
  INVX2M U16 ( .A(N93), .Y(n4) );
  INVX2M U17 ( .A(n9), .Y(n1) );
  NAND2X2M U18 ( .A(raddr[1]), .B(n10), .Y(n9) );
  OAI21X2M U19 ( .A0(N93), .A1(n3), .B0(n8), .Y(N92) );
  INVX2M U20 ( .A(raddr[2]), .Y(n3) );
  NAND2X2M U21 ( .A(R_INC), .B(n12), .Y(n11) );
  NAND2X2M U22 ( .A(N93), .B(n3), .Y(n8) );
  INVX2M U23 ( .A(raddr[0]), .Y(n2) );
  CLKXOR2X2M U24 ( .A(raddr[1]), .B(n10), .Y(n19) );
endmodule


module DF_SYNC ( W_CLK, W_RST, R_RST, R_CLK, wptr, rptr, wptr_sync, rptr_sync
 );
  input [3:0] wptr;
  input [3:0] rptr;
  output [3:0] wptr_sync;
  output [3:0] rptr_sync;
  input W_CLK, W_RST, R_RST, R_CLK;

  wire   [3:0] wptr_sync1;
  wire   [3:0] rptr_sync1;

  DFFRQX2M \wptr_sync_reg[3]  ( .D(wptr_sync1[3]), .CK(R_CLK), .RN(R_RST), .Q(
        wptr_sync[3]) );
  DFFRQX2M \wptr_sync_reg[2]  ( .D(wptr_sync1[2]), .CK(R_CLK), .RN(R_RST), .Q(
        wptr_sync[2]) );
  DFFRQX2M \wptr_sync_reg[1]  ( .D(wptr_sync1[1]), .CK(R_CLK), .RN(R_RST), .Q(
        wptr_sync[1]) );
  DFFRQX2M \wptr_sync_reg[0]  ( .D(wptr_sync1[0]), .CK(R_CLK), .RN(R_RST), .Q(
        wptr_sync[0]) );
  DFFRQX2M \rptr_sync_reg[1]  ( .D(rptr_sync1[1]), .CK(W_CLK), .RN(W_RST), .Q(
        rptr_sync[1]) );
  DFFRQX2M \rptr_sync_reg[0]  ( .D(rptr_sync1[0]), .CK(W_CLK), .RN(W_RST), .Q(
        rptr_sync[0]) );
  DFFRQX2M \rptr_sync_reg[3]  ( .D(rptr_sync1[3]), .CK(W_CLK), .RN(W_RST), .Q(
        rptr_sync[3]) );
  DFFRQX2M \rptr_sync_reg[2]  ( .D(rptr_sync1[2]), .CK(W_CLK), .RN(W_RST), .Q(
        rptr_sync[2]) );
  DFFRQX2M \wptr_sync1_reg[3]  ( .D(wptr[3]), .CK(R_CLK), .RN(R_RST), .Q(
        wptr_sync1[3]) );
  DFFRQX2M \wptr_sync1_reg[2]  ( .D(wptr[2]), .CK(R_CLK), .RN(R_RST), .Q(
        wptr_sync1[2]) );
  DFFRQX2M \wptr_sync1_reg[1]  ( .D(wptr[1]), .CK(R_CLK), .RN(R_RST), .Q(
        wptr_sync1[1]) );
  DFFRQX2M \wptr_sync1_reg[0]  ( .D(wptr[0]), .CK(R_CLK), .RN(R_RST), .Q(
        wptr_sync1[0]) );
  DFFRQX2M \rptr_sync1_reg[3]  ( .D(rptr[3]), .CK(W_CLK), .RN(W_RST), .Q(
        rptr_sync1[3]) );
  DFFRQX2M \rptr_sync1_reg[2]  ( .D(rptr[2]), .CK(W_CLK), .RN(W_RST), .Q(
        rptr_sync1[2]) );
  DFFRQX2M \rptr_sync1_reg[1]  ( .D(rptr[1]), .CK(W_CLK), .RN(W_RST), .Q(
        rptr_sync1[1]) );
  DFFRQX2M \rptr_sync1_reg[0]  ( .D(rptr[0]), .CK(W_CLK), .RN(W_RST), .Q(
        rptr_sync1[0]) );
endmodule


module ASYNC_FIFO ( W_CLK, W_RST, R_CLK, R_RST, WR_DATA, W_INC, R_INC, RD_DATA, 
        FULL, EMPTY );
  input [7:0] WR_DATA;
  output [7:0] RD_DATA;
  input W_CLK, W_RST, R_CLK, R_RST, W_INC, R_INC;
  output FULL, EMPTY;
  wire   _0_net_, n1, n2, n3, n4;
  wire   [2:0] waddr;
  wire   [2:0] raddr;
  wire   [3:0] rptr_sync;
  wire   [3:0] wptr;
  wire   [3:0] wptr_sync;
  wire   [3:0] rptr;

  FIFO_MEM_CNTRL U1 ( .WR_DATA(WR_DATA), .W_CLK(W_CLK), .W_RST(n3), .R_CLK(
        R_CLK), .R_RST(n1), .wclken(_0_net_), .waddr(waddr), .raddr(raddr), 
        .RD_DATA(RD_DATA) );
  FIFO_WR U2 ( .W_INC(W_INC), .W_CLK(W_CLK), .W_RST(n3), .rptr_sync(rptr_sync), 
        .wptr(wptr), .waddr(waddr), .FULL(FULL) );
  FIFO_RD U3 ( .R_INC(R_INC), .R_CLK(R_CLK), .R_RST(n1), .wptr_sync(wptr_sync), 
        .rptr(rptr), .raddr(raddr), .EMPTY(EMPTY) );
  DF_SYNC U4 ( .W_CLK(W_CLK), .W_RST(n3), .R_RST(n1), .R_CLK(R_CLK), .wptr(
        wptr), .rptr(rptr), .wptr_sync(wptr_sync), .rptr_sync(rptr_sync) );
  NOR2BX2M U5 ( .AN(W_INC), .B(FULL), .Y(_0_net_) );
  INVX2M U6 ( .A(n4), .Y(n3) );
  INVX2M U7 ( .A(W_RST), .Y(n4) );
  INVX2M U8 ( .A(n2), .Y(n1) );
  INVX2M U9 ( .A(R_RST), .Y(n2) );
endmodule


module System_TOP ( REF_CLK, UART_CLK, RST_N, UART_RX_IN, UART_TX_O, 
        framing_error, parity_error );
  input REF_CLK, UART_CLK, RST_N, UART_RX_IN;
  output UART_TX_O, framing_error, parity_error;
  wire   RX_D_VLD_SYNC, SYNC_RST_1, FULL, WR_INC, F_EMPTY, SYNC_RST_2, RD_INC,
         RX_OUT_V, stp_err, strt_glitch, TX_CLK_O, n1, n2, n3, n4, n5;
  wire   [7:0] RX_P_DATA;
  wire   [7:0] WR_DATA;
  wire   [7:0] UART_CONF;
  wire   [7:0] Div_Ratio;
  wire   [7:0] RD_DATA;
  wire   [0:7] RX_OUT_P;

  Domain_1_TOP Domain_1_TOP_U0 ( .RX_P_DATA(RX_P_DATA), .RX_D_VLD(
        RX_D_VLD_SYNC), .REF_CLK(REF_CLK), .RST(n4), .FULL(FULL), .WR_DATA(
        WR_DATA), .WR_INC(WR_INC), .UART_CONF(UART_CONF), .REG3(Div_Ratio) );
  Domain_2_TOP Domain_2_TOP_U1 ( .prescale(UART_CONF[7:2]), .Div_Ratio(
        Div_Ratio), .F_EMPTY(F_EMPTY), .RD_DATA(RD_DATA), .RST(n2), .UART_CLK(
        UART_CLK), .RX_IN(n1), .PAR_EN(UART_CONF[0]), .PAR_TYP(UART_CONF[1]), 
        .RD_INC(RD_INC), .RX_OUT_P(RX_OUT_P), .RX_OUT_V(RX_OUT_V), .TX_OUT_S(
        UART_TX_O), .stp_err(stp_err), .par_err(parity_error), .strt_glitch(
        strt_glitch), .TX_CLK_O(TX_CLK_O) );
  DATA_SYNC DATA_SYNC_U2 ( .unsync_bus(RX_OUT_P), .bus_enable(RX_OUT_V), .CLK(
        REF_CLK), .RST(n4), .sync_bus(RX_P_DATA), .enable_pulse(RX_D_VLD_SYNC)
         );
  RST_SYNC_0 RST_SYNC_U3 ( .RST(RST_N), .CLK(REF_CLK), .SYNC_RST(SYNC_RST_1)
         );
  RST_SYNC_1 RST_SYNC_U4 ( .RST(RST_N), .CLK(UART_CLK), .SYNC_RST(SYNC_RST_2)
         );
  ASYNC_FIFO ASYNC_FIFO_U5 ( .W_CLK(REF_CLK), .W_RST(n4), .R_CLK(TX_CLK_O), 
        .R_RST(n2), .WR_DATA(WR_DATA), .W_INC(WR_INC), .R_INC(RD_INC), 
        .RD_DATA(RD_DATA), .FULL(FULL), .EMPTY(F_EMPTY) );
  OR2X2M U2 ( .A(stp_err), .B(strt_glitch), .Y(framing_error) );
  BUFX2M U3 ( .A(UART_RX_IN), .Y(n1) );
  INVX2M U4 ( .A(n5), .Y(n4) );
  INVX2M U5 ( .A(SYNC_RST_1), .Y(n5) );
  INVX2M U6 ( .A(n3), .Y(n2) );
  INVX2M U7 ( .A(SYNC_RST_2), .Y(n3) );
endmodule

