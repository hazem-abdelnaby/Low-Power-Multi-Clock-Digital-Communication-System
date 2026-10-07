/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Wed Oct  7 01:12:27 2026
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
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(n7), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(\A1[0] ) );
  ADDFX2M S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .CI(\ab[5][7] ), .CO(
        \CARRYB[6][6] ), .S(\SUMB[6][6] ) );
  ADDFX2M S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .CI(\SUMB[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  ADDFX2M S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .CI(\ab[4][7] ), .CO(
        \CARRYB[5][6] ), .S(\SUMB[5][6] ) );
  ADDFX2M S4_5 ( .A(\ab[7][5] ), .B(\CARRYB[6][5] ), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  ADDFX2M S4_4 ( .A(\ab[7][4] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  ADDFX2M S3_2_6 ( .A(\ab[2][6] ), .B(n9), .CI(\ab[1][7] ), .CO(\CARRYB[2][6] ), .S(\SUMB[2][6] ) );
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
  ADDFX2M S2_2_1 ( .A(\ab[2][1] ), .B(n6), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n5), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  ADDFX2M S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .CI(\SUMB[5][5] ), .CO(
        \CARRYB[6][4] ), .S(\SUMB[6][4] ) );
  ADDFX2M S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .CI(\SUMB[4][6] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  ADDFX2M S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .CI(\SUMB[5][4] ), .CO(
        \CARRYB[6][3] ), .S(\SUMB[6][3] ) );
  ADDFX2M S3_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .CI(\ab[3][7] ), .CO(
        \CARRYB[4][6] ), .S(\SUMB[4][6] ) );
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
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n4), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n3), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  ADDFX2M S2_2_5 ( .A(\ab[2][5] ), .B(n8), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  ADDFX2M S4_1 ( .A(\ab[7][1] ), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  ADDFX2M S4_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\SUMB[7][0] ) );
  ADDFX2M S4_3 ( .A(\ab[7][3] ), .B(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  ADDFX2M S4_2 ( .A(\ab[7][2] ), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  AND2X2M U2 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n3) );
  AND2X2M U3 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n4) );
  AND2X2M U4 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n5) );
  AND2X2M U5 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n6) );
  AND2X2M U6 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Y(n7) );
  AND2X2M U7 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n8) );
  AND2X2M U8 ( .A(\ab[0][7] ), .B(\ab[1][6] ), .Y(n9) );
  AND2X2M U9 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(n10) );
  INVX2M U10 ( .A(\ab[0][6] ), .Y(n22) );
  CLKXOR2X2M U11 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(\A1[7] ) );
  CLKXOR2X2M U12 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(\A1[8] ) );
  INVX2M U13 ( .A(\ab[0][7] ), .Y(n23) );
  INVX2M U14 ( .A(\ab[0][5] ), .Y(n21) );
  INVX2M U15 ( .A(\ab[0][4] ), .Y(n20) );
  INVX2M U16 ( .A(\ab[0][3] ), .Y(n19) );
  AND2X2M U17 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(n11) );
  AND2X2M U18 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(n12) );
  CLKXOR2X2M U19 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(\A1[10] ) );
  CLKXOR2X2M U20 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(\A1[9] ) );
  CLKXOR2X2M U21 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(\A1[11] ) );
  INVX2M U22 ( .A(\ab[0][2] ), .Y(n18) );
  AND2X2M U23 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(n13) );
  AND2X2M U24 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(n14) );
  AND2X2M U25 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(n15) );
  CLKXOR2X2M U26 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(\A1[12] ) );
  XNOR2X2M U27 ( .A(\CARRYB[7][0] ), .B(n17), .Y(\A1[6] ) );
  INVX2M U28 ( .A(\SUMB[7][1] ), .Y(n17) );
  AND2X2M U29 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(n16) );
  CLKXOR2X2M U30 ( .A(\ab[1][0] ), .B(\ab[0][1] ), .Y(PRODUCT[1]) );
  XNOR2X2M U31 ( .A(\ab[1][6] ), .B(n23), .Y(\SUMB[1][6] ) );
  XNOR2X2M U32 ( .A(\ab[1][5] ), .B(n22), .Y(\SUMB[1][5] ) );
  XNOR2X2M U33 ( .A(\ab[1][4] ), .B(n21), .Y(\SUMB[1][4] ) );
  XNOR2X2M U34 ( .A(\ab[1][3] ), .B(n20), .Y(\SUMB[1][3] ) );
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
  ALU_DW01_add_1 FS_1 ( .A({1'b0, \A1[12] , \A1[11] , \A1[10] , \A1[9] , 
        \A1[8] , \A1[7] , \A1[6] , \SUMB[7][0] , \A1[4] , \A1[3] , \A1[2] , 
        \A1[1] , \A1[0] }), .B({n10, n16, n15, n13, n14, n12, n11, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(PRODUCT[15:2]) );
endmodule


module ALU_test_1 ( CLK, RST, A, B, ALU_FUN, Enable, ALU_OUT, OUT_VALID, 
        test_si, test_se );
  input [7:0] A;
  input [7:0] B;
  input [3:0] ALU_FUN;
  output [15:0] ALU_OUT;
  input CLK, RST, Enable, test_si, test_se;
  output OUT_VALID;
  wire   N90, N91, N92, N93, N94, N95, N96, N97, N98, N99, N100, N101, N102,
         N103, N104, N105, N106, N107, N108, N109, N110, N111, N112, N113,
         N114, N115, N116, N117, N118, N119, N120, N121, N122, N123, N124,
         N125, N126, N127, N128, N129, N130, N131, N156, N157, N158, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115,
         n116, n117, n118, n119, n120, n121, n122, n123, n124, n3, n4, n5, n6,
         n7, n8, n9, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n161, n162;
  wire   [15:0] ALU_OUT_INNER;

  SDFFRQX2M \ALU_OUT_reg[7]  ( .D(ALU_OUT_INNER[7]), .SI(ALU_OUT[6]), .SE(n162), .CK(CLK), .RN(RST), .Q(ALU_OUT[7]) );
  SDFFRQX2M \ALU_OUT_reg[6]  ( .D(ALU_OUT_INNER[6]), .SI(ALU_OUT[5]), .SE(n162), .CK(CLK), .RN(RST), .Q(ALU_OUT[6]) );
  SDFFRQX2M \ALU_OUT_reg[5]  ( .D(ALU_OUT_INNER[5]), .SI(ALU_OUT[4]), .SE(n162), .CK(CLK), .RN(RST), .Q(ALU_OUT[5]) );
  SDFFRQX2M \ALU_OUT_reg[4]  ( .D(ALU_OUT_INNER[4]), .SI(ALU_OUT[3]), .SE(n162), .CK(CLK), .RN(RST), .Q(ALU_OUT[4]) );
  SDFFRQX2M \ALU_OUT_reg[3]  ( .D(ALU_OUT_INNER[3]), .SI(ALU_OUT[2]), .SE(n162), .CK(CLK), .RN(RST), .Q(ALU_OUT[3]) );
  SDFFRQX2M \ALU_OUT_reg[2]  ( .D(ALU_OUT_INNER[2]), .SI(ALU_OUT[1]), .SE(n162), .CK(CLK), .RN(RST), .Q(ALU_OUT[2]) );
  SDFFRQX2M \ALU_OUT_reg[1]  ( .D(ALU_OUT_INNER[1]), .SI(ALU_OUT[0]), .SE(n162), .CK(CLK), .RN(RST), .Q(ALU_OUT[1]) );
  SDFFRQX2M \ALU_OUT_reg[0]  ( .D(ALU_OUT_INNER[0]), .SI(test_si), .SE(n162), 
        .CK(CLK), .RN(RST), .Q(ALU_OUT[0]) );
  SDFFRQX2M \ALU_OUT_reg[15]  ( .D(ALU_OUT_INNER[15]), .SI(ALU_OUT[14]), .SE(
        n162), .CK(CLK), .RN(RST), .Q(ALU_OUT[15]) );
  SDFFRQX2M \ALU_OUT_reg[14]  ( .D(ALU_OUT_INNER[14]), .SI(ALU_OUT[13]), .SE(
        n162), .CK(CLK), .RN(RST), .Q(ALU_OUT[14]) );
  SDFFRQX2M \ALU_OUT_reg[13]  ( .D(ALU_OUT_INNER[13]), .SI(ALU_OUT[12]), .SE(
        n162), .CK(CLK), .RN(RST), .Q(ALU_OUT[13]) );
  SDFFRQX2M \ALU_OUT_reg[12]  ( .D(ALU_OUT_INNER[12]), .SI(ALU_OUT[11]), .SE(
        n162), .CK(CLK), .RN(RST), .Q(ALU_OUT[12]) );
  SDFFRQX2M \ALU_OUT_reg[11]  ( .D(ALU_OUT_INNER[11]), .SI(ALU_OUT[10]), .SE(
        n162), .CK(CLK), .RN(RST), .Q(ALU_OUT[11]) );
  SDFFRQX2M \ALU_OUT_reg[10]  ( .D(ALU_OUT_INNER[10]), .SI(ALU_OUT[9]), .SE(
        n162), .CK(CLK), .RN(RST), .Q(ALU_OUT[10]) );
  SDFFRQX2M \ALU_OUT_reg[9]  ( .D(ALU_OUT_INNER[9]), .SI(ALU_OUT[8]), .SE(n162), .CK(CLK), .RN(RST), .Q(ALU_OUT[9]) );
  SDFFRQX2M \ALU_OUT_reg[8]  ( .D(ALU_OUT_INNER[8]), .SI(ALU_OUT[7]), .SE(n162), .CK(CLK), .RN(RST), .Q(ALU_OUT[8]) );
  SDFFRQX2M OUT_VALID_reg ( .D(Enable), .SI(ALU_OUT[15]), .SE(n162), .CK(CLK), 
        .RN(RST), .Q(OUT_VALID) );
  NOR3BX2M U7 ( .AN(n122), .B(n145), .C(ALU_FUN[2]), .Y(n66) );
  NOR3X2M U23 ( .A(n142), .B(ALU_FUN[2]), .C(n145), .Y(n52) );
  BUFX2M U24 ( .A(A[6]), .Y(n28) );
  OAI2BB1X2M U25 ( .A0N(N122), .A1N(n48), .B0(n49), .Y(ALU_OUT_INNER[14]) );
  OAI2BB1X2M U26 ( .A0N(N123), .A1N(n48), .B0(n49), .Y(ALU_OUT_INNER[15]) );
  OAI2BB1X2M U27 ( .A0N(N120), .A1N(n48), .B0(n49), .Y(ALU_OUT_INNER[12]) );
  OAI2BB1X2M U28 ( .A0N(N119), .A1N(n48), .B0(n49), .Y(ALU_OUT_INNER[11]) );
  OAI2BB1X2M U29 ( .A0N(N121), .A1N(n48), .B0(n49), .Y(ALU_OUT_INNER[13]) );
  OAI2BB1X2M U30 ( .A0N(N117), .A1N(n48), .B0(n49), .Y(ALU_OUT_INNER[9]) );
  OAI2BB1X2M U31 ( .A0N(N118), .A1N(n48), .B0(n49), .Y(ALU_OUT_INNER[10]) );
  INVX2M U32 ( .A(Enable), .Y(n141) );
  OAI2BB1X2M U33 ( .A0N(n144), .A1N(n122), .B0(n118), .Y(n64) );
  OAI2BB1X2M U34 ( .A0N(n117), .A1N(n116), .B0(n118), .Y(n65) );
  NOR2BX2M U35 ( .AN(n123), .B(n142), .Y(n54) );
  AND2X2M U36 ( .A(n116), .B(n122), .Y(n59) );
  NOR2BX2M U37 ( .AN(n52), .B(n141), .Y(n48) );
  NAND2X2M U38 ( .A(Enable), .B(n140), .Y(n49) );
  AND2X2M U39 ( .A(n123), .B(n122), .Y(n67) );
  BUFX2M U40 ( .A(n58), .Y(n30) );
  NOR2X2M U41 ( .A(n124), .B(n142), .Y(n58) );
  INVX2M U42 ( .A(n117), .Y(n142) );
  INVX2M U43 ( .A(n108), .Y(n143) );
  INVX2M U44 ( .A(n124), .Y(n144) );
  AOI31X2M U45 ( .A0(n110), .A1(n111), .A2(n112), .B0(n141), .Y(
        ALU_OUT_INNER[0]) );
  AOI22X1M U46 ( .A0(N99), .A1(n67), .B0(N90), .B1(n54), .Y(n110) );
  AOI211X2M U47 ( .A0(n30), .A1(n157), .B0(n113), .C0(n114), .Y(n112) );
  AOI222X1M U48 ( .A0(N108), .A1(n52), .B0(n5), .B1(n59), .C0(N124), .C1(n66), 
        .Y(n111) );
  AOI31X2M U49 ( .A0(n98), .A1(n99), .A2(n100), .B0(n141), .Y(ALU_OUT_INNER[1]) );
  AOI222X1M U50 ( .A0(N91), .A1(n54), .B0(N109), .B1(n52), .C0(N100), .C1(n67), 
        .Y(n98) );
  AOI211X2M U51 ( .A0(n7), .A1(n143), .B0(n101), .C0(n102), .Y(n100) );
  AOI222X1M U52 ( .A0(N125), .A1(n66), .B0(n30), .B1(n156), .C0(n6), .C1(n59), 
        .Y(n99) );
  AOI31X2M U53 ( .A0(n92), .A1(n93), .A2(n94), .B0(n141), .Y(ALU_OUT_INNER[2])
         );
  AOI22X1M U54 ( .A0(N101), .A1(n67), .B0(N92), .B1(n54), .Y(n92) );
  AOI221XLM U55 ( .A0(n8), .A1(n143), .B0(n30), .B1(n155), .C0(n95), .Y(n94)
         );
  AOI222X1M U56 ( .A0(N110), .A1(n52), .B0(n7), .B1(n59), .C0(N126), .C1(n66), 
        .Y(n93) );
  AOI31X2M U57 ( .A0(n86), .A1(n87), .A2(n88), .B0(n141), .Y(ALU_OUT_INNER[3])
         );
  AOI22X1M U58 ( .A0(N102), .A1(n67), .B0(N93), .B1(n54), .Y(n86) );
  AOI221XLM U59 ( .A0(n9), .A1(n143), .B0(n30), .B1(n154), .C0(n89), .Y(n88)
         );
  AOI222X1M U60 ( .A0(N111), .A1(n52), .B0(n8), .B1(n59), .C0(N127), .C1(n66), 
        .Y(n87) );
  AOI31X2M U61 ( .A0(n80), .A1(n81), .A2(n82), .B0(n141), .Y(ALU_OUT_INNER[4])
         );
  AOI22X1M U62 ( .A0(N103), .A1(n67), .B0(N94), .B1(n54), .Y(n80) );
  AOI221XLM U63 ( .A0(n143), .A1(n27), .B0(n30), .B1(n153), .C0(n83), .Y(n82)
         );
  AOI222X1M U64 ( .A0(N112), .A1(n52), .B0(n9), .B1(n59), .C0(N128), .C1(n66), 
        .Y(n81) );
  AOI31X2M U65 ( .A0(n74), .A1(n75), .A2(n76), .B0(n141), .Y(ALU_OUT_INNER[5])
         );
  AOI22X1M U66 ( .A0(N104), .A1(n67), .B0(N95), .B1(n54), .Y(n74) );
  AOI221XLM U67 ( .A0(n143), .A1(n28), .B0(n30), .B1(n152), .C0(n77), .Y(n76)
         );
  AOI222X1M U68 ( .A0(N113), .A1(n52), .B0(n27), .B1(n59), .C0(N129), .C1(n66), 
        .Y(n75) );
  AOI31X2M U69 ( .A0(n68), .A1(n69), .A2(n70), .B0(n141), .Y(ALU_OUT_INNER[6])
         );
  AOI22X1M U70 ( .A0(N105), .A1(n67), .B0(N96), .B1(n54), .Y(n68) );
  AOI221XLM U71 ( .A0(n143), .A1(n29), .B0(n30), .B1(n151), .C0(n71), .Y(n70)
         );
  AOI222X1M U72 ( .A0(N114), .A1(n52), .B0(n59), .B1(n28), .C0(N130), .C1(n66), 
        .Y(n69) );
  AOI31X2M U73 ( .A0(n55), .A1(n56), .A2(n57), .B0(n141), .Y(ALU_OUT_INNER[7])
         );
  AOI22X1M U74 ( .A0(N106), .A1(n67), .B0(N97), .B1(n54), .Y(n55) );
  AOI221XLM U75 ( .A0(n30), .A1(n150), .B0(n59), .B1(n29), .C0(n60), .Y(n57)
         );
  AOI22X1M U76 ( .A0(N131), .A1(n66), .B0(N115), .B1(n52), .Y(n56) );
  AOI21X2M U77 ( .A0(n50), .A1(n51), .B0(n141), .Y(ALU_OUT_INNER[8]) );
  AOI21X2M U78 ( .A0(N98), .A1(n54), .B0(n140), .Y(n50) );
  AOI2BB2XLM U79 ( .B0(N116), .B1(n52), .A0N(n150), .A1N(n53), .Y(n51) );
  OAI222X1M U80 ( .A0(n72), .A1(n139), .B0(n4), .B1(n73), .C0(n53), .C1(n152), 
        .Y(n71) );
  AOI221XLM U81 ( .A0(n28), .A1(n63), .B0(n64), .B1(n151), .C0(n30), .Y(n73)
         );
  AOI221XLM U82 ( .A0(n63), .A1(n151), .B0(n28), .B1(n65), .C0(n59), .Y(n72)
         );
  NOR2X2M U83 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n123) );
  AND3X2M U84 ( .A(n123), .B(n146), .C(n3), .Y(n63) );
  INVX2M U85 ( .A(n4), .Y(n139) );
  NAND3X2M U86 ( .A(n144), .B(n146), .C(n3), .Y(n53) );
  NAND2X2M U87 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n124) );
  INVX2M U88 ( .A(ALU_FUN[0]), .Y(n146) );
  NOR2X2M U89 ( .A(n146), .B(n3), .Y(n122) );
  NOR2X2M U90 ( .A(n3), .B(ALU_FUN[0]), .Y(n117) );
  NAND3X2M U91 ( .A(n3), .B(ALU_FUN[0]), .C(n116), .Y(n108) );
  INVX2M U92 ( .A(n109), .Y(n140) );
  AOI211X2M U93 ( .A0(N107), .A1(n67), .B0(n30), .C0(n64), .Y(n109) );
  INVX2M U94 ( .A(ALU_FUN[1]), .Y(n145) );
  NAND3X2M U95 ( .A(n123), .B(ALU_FUN[0]), .C(n3), .Y(n118) );
  AND2X2M U96 ( .A(ALU_FUN[2]), .B(n145), .Y(n116) );
  AND4X2M U97 ( .A(N158), .B(n116), .C(n3), .D(n146), .Y(n107) );
  INVX2M U98 ( .A(n6), .Y(n156) );
  INVX2M U99 ( .A(n5), .Y(n157) );
  INVX2M U100 ( .A(n28), .Y(n151) );
  INVX2M U101 ( .A(n29), .Y(n150) );
  INVX2M U102 ( .A(n8), .Y(n154) );
  INVX2M U103 ( .A(n7), .Y(n155) );
  INVX2M U104 ( .A(n27), .Y(n152) );
  INVX2M U105 ( .A(n9), .Y(n153) );
  BUFX2M U106 ( .A(A[7]), .Y(n29) );
  BUFX2M U107 ( .A(B[6]), .Y(n4) );
  BUFX2M U108 ( .A(A[5]), .Y(n27) );
  BUFX2M U109 ( .A(A[4]), .Y(n9) );
  BUFX2M U110 ( .A(A[3]), .Y(n8) );
  BUFX2M U111 ( .A(A[2]), .Y(n7) );
  BUFX2M U112 ( .A(A[1]), .Y(n6) );
  BUFX2M U113 ( .A(A[0]), .Y(n5) );
  INVX2M U114 ( .A(n42), .Y(n137) );
  OAI222X1M U115 ( .A0(n96), .A1(n136), .B0(B[2]), .B1(n97), .C0(n53), .C1(
        n156), .Y(n95) );
  AOI221XLM U116 ( .A0(n7), .A1(n63), .B0(n64), .B1(n155), .C0(n30), .Y(n97)
         );
  AOI221XLM U117 ( .A0(n63), .A1(n155), .B0(n7), .B1(n65), .C0(n59), .Y(n96)
         );
  OAI222X1M U118 ( .A0(n90), .A1(n138), .B0(B[3]), .B1(n91), .C0(n53), .C1(
        n155), .Y(n89) );
  AOI221XLM U119 ( .A0(n8), .A1(n63), .B0(n64), .B1(n154), .C0(n30), .Y(n91)
         );
  AOI221XLM U120 ( .A0(n63), .A1(n154), .B0(n8), .B1(n65), .C0(n59), .Y(n90)
         );
  OAI222X1M U121 ( .A0(n84), .A1(n149), .B0(B[4]), .B1(n85), .C0(n53), .C1(
        n154), .Y(n83) );
  INVX2M U122 ( .A(B[4]), .Y(n149) );
  AOI221XLM U123 ( .A0(n9), .A1(n63), .B0(n64), .B1(n153), .C0(n30), .Y(n85)
         );
  AOI221XLM U124 ( .A0(n63), .A1(n153), .B0(n9), .B1(n65), .C0(n59), .Y(n84)
         );
  OAI222X1M U125 ( .A0(n78), .A1(n148), .B0(B[5]), .B1(n79), .C0(n53), .C1(
        n153), .Y(n77) );
  INVX2M U126 ( .A(B[5]), .Y(n148) );
  AOI221XLM U127 ( .A0(n27), .A1(n63), .B0(n64), .B1(n152), .C0(n30), .Y(n79)
         );
  AOI221XLM U128 ( .A0(n63), .A1(n152), .B0(n27), .B1(n65), .C0(n59), .Y(n78)
         );
  OAI222X1M U129 ( .A0(n61), .A1(n147), .B0(B[7]), .B1(n62), .C0(n53), .C1(
        n151), .Y(n60) );
  INVX2M U130 ( .A(B[7]), .Y(n147) );
  AOI221XLM U131 ( .A0(n63), .A1(n29), .B0(n64), .B1(n150), .C0(n30), .Y(n62)
         );
  AOI221XLM U132 ( .A0(n63), .A1(n150), .B0(n29), .B1(n65), .C0(n59), .Y(n61)
         );
  INVX2M U133 ( .A(n31), .Y(n135) );
  OAI2B2X1M U134 ( .A1N(B[0]), .A0(n115), .B0(n108), .B1(n156), .Y(n114) );
  AOI221XLM U135 ( .A0(n63), .A1(n157), .B0(n5), .B1(n65), .C0(n59), .Y(n115)
         );
  OAI2B2X1M U136 ( .A1N(B[1]), .A0(n103), .B0(n53), .B1(n157), .Y(n102) );
  AOI221XLM U137 ( .A0(n63), .A1(n156), .B0(n6), .B1(n65), .C0(n59), .Y(n103)
         );
  OAI21X2M U138 ( .A0(B[0]), .A1(n119), .B0(n120), .Y(n113) );
  AOI221XLM U139 ( .A0(n5), .A1(n63), .B0(n64), .B1(n157), .C0(n30), .Y(n119)
         );
  AOI31X2M U140 ( .A0(N156), .A1(n3), .A2(n121), .B0(n107), .Y(n120) );
  NOR3X2M U141 ( .A(n145), .B(ALU_FUN[2]), .C(ALU_FUN[0]), .Y(n121) );
  OAI21X2M U142 ( .A0(B[1]), .A1(n104), .B0(n105), .Y(n101) );
  AOI221XLM U143 ( .A0(n6), .A1(n63), .B0(n64), .B1(n156), .C0(n30), .Y(n104)
         );
  AOI31X2M U144 ( .A0(N157), .A1(n3), .A2(n106), .B0(n107), .Y(n105) );
  NOR3X2M U145 ( .A(n146), .B(ALU_FUN[2]), .C(n145), .Y(n106) );
  BUFX2M U146 ( .A(ALU_FUN[3]), .Y(n3) );
  INVX2M U147 ( .A(B[0]), .Y(n134) );
  INVX2M U148 ( .A(B[2]), .Y(n136) );
  INVX2M U149 ( .A(B[3]), .Y(n138) );
  NOR2X1M U150 ( .A(n150), .B(B[7]), .Y(n130) );
  NAND2BX1M U151 ( .AN(B[4]), .B(n9), .Y(n46) );
  NAND2BX1M U152 ( .AN(n9), .B(B[4]), .Y(n35) );
  CLKNAND2X2M U153 ( .A(n46), .B(n35), .Y(n125) );
  NOR2X1M U154 ( .A(n138), .B(n8), .Y(n43) );
  NOR2X1M U155 ( .A(n136), .B(n7), .Y(n34) );
  NOR2X1M U156 ( .A(n134), .B(n5), .Y(n31) );
  CLKNAND2X2M U157 ( .A(n7), .B(n136), .Y(n45) );
  NAND2BX1M U158 ( .AN(n34), .B(n45), .Y(n40) );
  AOI21X1M U159 ( .A0(n31), .A1(n156), .B0(B[1]), .Y(n32) );
  AOI211X1M U160 ( .A0(n6), .A1(n135), .B0(n40), .C0(n32), .Y(n33) );
  CLKNAND2X2M U161 ( .A(n8), .B(n138), .Y(n44) );
  OAI31X1M U162 ( .A0(n43), .A1(n34), .A2(n33), .B0(n44), .Y(n36) );
  NAND2BX1M U163 ( .AN(n27), .B(B[5]), .Y(n128) );
  OAI211X1M U164 ( .A0(n125), .A1(n36), .B0(n35), .C0(n128), .Y(n37) );
  NAND2BX1M U165 ( .AN(B[5]), .B(n27), .Y(n47) );
  XNOR2X1M U166 ( .A(n28), .B(n4), .Y(n127) );
  AOI32X1M U167 ( .A0(n37), .A1(n47), .A2(n127), .B0(n4), .B1(n151), .Y(n38)
         );
  CLKNAND2X2M U168 ( .A(B[7]), .B(n150), .Y(n131) );
  OAI21X1M U169 ( .A0(n130), .A1(n38), .B0(n131), .Y(N158) );
  CLKNAND2X2M U170 ( .A(n5), .B(n134), .Y(n41) );
  OA21X1M U171 ( .A0(n41), .A1(n156), .B0(B[1]), .Y(n39) );
  AOI211X1M U172 ( .A0(n41), .A1(n156), .B0(n40), .C0(n39), .Y(n42) );
  AOI31X1M U173 ( .A0(n137), .A1(n45), .A2(n44), .B0(n43), .Y(n126) );
  OAI2B11X1M U174 ( .A1N(n126), .A0(n125), .B0(n47), .C0(n46), .Y(n129) );
  AOI32X1M U175 ( .A0(n129), .A1(n128), .A2(n127), .B0(n28), .B1(n139), .Y(
        n132) );
  AOI2B1X1M U176 ( .A1N(n132), .A0(n131), .B0(n130), .Y(n133) );
  CLKINVX1M U177 ( .A(n133), .Y(N157) );
  NOR2X1M U178 ( .A(N158), .B(N157), .Y(N156) );
  INVXLM U180 ( .A(test_se), .Y(n161) );
  INVXLM U181 ( .A(n161), .Y(n162) );
  ALU_DW_div_uns_0 div_26 ( .a({n29, n28, n27, n9, n8, n7, n6, n5}), .b({B[7], 
        n4, B[5:0]}), .quotient({N131, N130, N129, N128, N127, N126, N125, 
        N124}) );
  ALU_DW01_sub_0 sub_24 ( .A({1'b0, n29, n28, n27, n9, n8, n7, n6, n5}), .B({
        1'b0, B[7], n4, B[5:0]}), .CI(1'b0), .DIFF({N107, N106, N105, N104, 
        N103, N102, N101, N100, N99}) );
  ALU_DW01_add_0 add_23 ( .A({1'b0, n29, n28, n27, n9, n8, n7, n6, n5}), .B({
        1'b0, B[7], n4, B[5:0]}), .CI(1'b0), .SUM({N98, N97, N96, N95, N94, 
        N93, N92, N91, N90}) );
  ALU_DW02_mult_0 mult_25 ( .A({n29, n28, n27, n9, n8, n7, n6, n5}), .B({B[7], 
        n4, B[5:0]}), .TC(1'b0), .PRODUCT({N123, N122, N121, N120, N119, N118, 
        N117, N116, N115, N114, N113, N112, N111, N110, N109, N108}) );
endmodule


module RegFile_test_1 ( CLK, RST, Address, WrEn, RdEn, WrData, RdData, 
        RdData_Valid, REG0, REG1, REG2, REG3, test_si2, test_si1, test_so2, 
        test_so1, test_se );
  input [3:0] Address;
  input [7:0] WrData;
  output [7:0] RdData;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  output [7:0] REG3;
  input CLK, RST, WrEn, RdEn, test_si2, test_si1, test_se;
  output RdData_Valid, test_so2, test_so1;
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
         \regArr[4][0] , N36, N37, N38, N39, N40, N41, N42, N43, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206,
         n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, n228,
         n229, n230, n231, n232, n233, n234, n235, n236, n237, n238, n239,
         n240, n241, n242, n243, n244, n245, n246, n247, n248, n249, n250,
         n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, n261,
         n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, n272,
         n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283,
         n284, n285, n286, n287, n288, n289, n290, n291, n292, n293, n294,
         n295, n296, n297, n298, n299, n300, n301, n302, n303, n304, n305,
         n306, n307, n308, n309, n310, n311, n312, n313, n314, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n315,
         n316, n317, n318, n319, n320, n321, n322, n323, n324, n325, n326,
         n327, n328, n329, n330, n331, n332, n333, n334, n335, n336, n337,
         n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, n348,
         n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359,
         n360, n361, n362, n363, n364, n365, n366, n367, n368, n369, n370,
         n371, n372, n373, n374, n375, n376, n377, n378, n379, n380, n381,
         n382, n383, n384, n385, n386, n387, n388, n389, n390, n391, n392,
         n393, n394, n395, n396, n397, n398, n399, n400, n401, n402, n403,
         n404, n405, n406, n407, n408, n409, n410, n411, n412, n413, n414,
         n415, n416, n417, n418, n419, n420, n421, n422, n423, n424, n425,
         n426, n427, n428, n429, n430, n431, n432, n433, n434, n435, n436,
         n437, n438, n439, n440, n444, n445, n446, n447, n448, n449;
  assign N11 = Address[0];
  assign N12 = Address[1];
  assign N13 = Address[2];
  assign N14 = Address[3];
  assign test_so2 = \regArr[15][7] ;
  assign test_so1 = \regArr[6][6] ;

  SDFFRQX2M \regArr_reg[15][7]  ( .D(n306), .SI(\regArr[15][6] ), .SE(n444), 
        .CK(CLK), .RN(n424), .Q(\regArr[15][7] ) );
  SDFFRQX2M \regArr_reg[15][6]  ( .D(n305), .SI(\regArr[15][5] ), .SE(n448), 
        .CK(CLK), .RN(n424), .Q(\regArr[15][6] ) );
  SDFFRQX2M \regArr_reg[15][5]  ( .D(n304), .SI(\regArr[15][4] ), .SE(n447), 
        .CK(CLK), .RN(n424), .Q(\regArr[15][5] ) );
  SDFFRQX2M \regArr_reg[15][4]  ( .D(n303), .SI(\regArr[15][3] ), .SE(n446), 
        .CK(CLK), .RN(n424), .Q(\regArr[15][4] ) );
  SDFFRQX2M \regArr_reg[15][3]  ( .D(n302), .SI(\regArr[15][2] ), .SE(n445), 
        .CK(CLK), .RN(n423), .Q(\regArr[15][3] ) );
  SDFFRQX2M \regArr_reg[15][2]  ( .D(n301), .SI(\regArr[15][1] ), .SE(n448), 
        .CK(CLK), .RN(n423), .Q(\regArr[15][2] ) );
  SDFFRQX2M \regArr_reg[15][1]  ( .D(n300), .SI(\regArr[15][0] ), .SE(n447), 
        .CK(CLK), .RN(n423), .Q(\regArr[15][1] ) );
  SDFFRQX2M \regArr_reg[15][0]  ( .D(n299), .SI(\regArr[14][7] ), .SE(n446), 
        .CK(CLK), .RN(n423), .Q(\regArr[15][0] ) );
  SDFFRQX2M \regArr_reg[13][7]  ( .D(n290), .SI(\regArr[13][6] ), .SE(n444), 
        .CK(CLK), .RN(n423), .Q(\regArr[13][7] ) );
  SDFFRQX2M \regArr_reg[13][6]  ( .D(n289), .SI(\regArr[13][5] ), .SE(n448), 
        .CK(CLK), .RN(n423), .Q(\regArr[13][6] ) );
  SDFFRQX2M \regArr_reg[13][5]  ( .D(n288), .SI(\regArr[13][4] ), .SE(n447), 
        .CK(CLK), .RN(n422), .Q(\regArr[13][5] ) );
  SDFFRQX2M \regArr_reg[13][4]  ( .D(n287), .SI(\regArr[13][3] ), .SE(n446), 
        .CK(CLK), .RN(n422), .Q(\regArr[13][4] ) );
  SDFFRQX2M \regArr_reg[13][3]  ( .D(n286), .SI(\regArr[13][2] ), .SE(n445), 
        .CK(CLK), .RN(n422), .Q(\regArr[13][3] ) );
  SDFFRQX2M \regArr_reg[13][2]  ( .D(n285), .SI(\regArr[13][1] ), .SE(n448), 
        .CK(CLK), .RN(n422), .Q(\regArr[13][2] ) );
  SDFFRQX2M \regArr_reg[13][1]  ( .D(n284), .SI(\regArr[13][0] ), .SE(n447), 
        .CK(CLK), .RN(n422), .Q(\regArr[13][1] ) );
  SDFFRQX2M \regArr_reg[13][0]  ( .D(n283), .SI(\regArr[12][7] ), .SE(n446), 
        .CK(CLK), .RN(n422), .Q(\regArr[13][0] ) );
  SDFFRQX2M \regArr_reg[11][7]  ( .D(n274), .SI(\regArr[11][6] ), .SE(n444), 
        .CK(CLK), .RN(n421), .Q(\regArr[11][7] ) );
  SDFFRQX2M \regArr_reg[11][6]  ( .D(n273), .SI(\regArr[11][5] ), .SE(n448), 
        .CK(CLK), .RN(n421), .Q(\regArr[11][6] ) );
  SDFFRQX2M \regArr_reg[11][5]  ( .D(n272), .SI(\regArr[11][4] ), .SE(n447), 
        .CK(CLK), .RN(n421), .Q(\regArr[11][5] ) );
  SDFFRQX2M \regArr_reg[11][4]  ( .D(n271), .SI(\regArr[11][3] ), .SE(n446), 
        .CK(CLK), .RN(n421), .Q(\regArr[11][4] ) );
  SDFFRQX2M \regArr_reg[11][3]  ( .D(n270), .SI(\regArr[11][2] ), .SE(n445), 
        .CK(CLK), .RN(n421), .Q(\regArr[11][3] ) );
  SDFFRQX2M \regArr_reg[11][2]  ( .D(n269), .SI(\regArr[11][1] ), .SE(n448), 
        .CK(CLK), .RN(n421), .Q(\regArr[11][2] ) );
  SDFFRQX2M \regArr_reg[11][1]  ( .D(n268), .SI(\regArr[11][0] ), .SE(n447), 
        .CK(CLK), .RN(n421), .Q(\regArr[11][1] ) );
  SDFFRQX2M \regArr_reg[11][0]  ( .D(n267), .SI(\regArr[10][7] ), .SE(n446), 
        .CK(CLK), .RN(n421), .Q(\regArr[11][0] ) );
  SDFFRQX2M \regArr_reg[9][7]  ( .D(n258), .SI(\regArr[9][6] ), .SE(n444), 
        .CK(CLK), .RN(n420), .Q(\regArr[9][7] ) );
  SDFFRQX2M \regArr_reg[9][6]  ( .D(n257), .SI(\regArr[9][5] ), .SE(n448), 
        .CK(CLK), .RN(n420), .Q(\regArr[9][6] ) );
  SDFFRQX2M \regArr_reg[9][5]  ( .D(n256), .SI(\regArr[9][4] ), .SE(n447), 
        .CK(CLK), .RN(n420), .Q(\regArr[9][5] ) );
  SDFFRQX2M \regArr_reg[9][4]  ( .D(n255), .SI(\regArr[9][3] ), .SE(n446), 
        .CK(CLK), .RN(n420), .Q(\regArr[9][4] ) );
  SDFFRQX2M \regArr_reg[9][3]  ( .D(n254), .SI(\regArr[9][2] ), .SE(n445), 
        .CK(CLK), .RN(n420), .Q(\regArr[9][3] ) );
  SDFFRQX2M \regArr_reg[9][2]  ( .D(n253), .SI(\regArr[9][1] ), .SE(n448), 
        .CK(CLK), .RN(n420), .Q(\regArr[9][2] ) );
  SDFFRQX2M \regArr_reg[9][1]  ( .D(n252), .SI(\regArr[9][0] ), .SE(n447), 
        .CK(CLK), .RN(n420), .Q(\regArr[9][1] ) );
  SDFFRQX2M \regArr_reg[9][0]  ( .D(n251), .SI(\regArr[8][7] ), .SE(n446), 
        .CK(CLK), .RN(n420), .Q(\regArr[9][0] ) );
  SDFFRQX2M \regArr_reg[7][7]  ( .D(n242), .SI(\regArr[7][6] ), .SE(n444), 
        .CK(CLK), .RN(n419), .Q(\regArr[7][7] ) );
  SDFFRQX2M \regArr_reg[7][6]  ( .D(n241), .SI(\regArr[7][5] ), .SE(n448), 
        .CK(CLK), .RN(n419), .Q(\regArr[7][6] ) );
  SDFFRQX2M \regArr_reg[7][5]  ( .D(n240), .SI(\regArr[7][4] ), .SE(n447), 
        .CK(CLK), .RN(n419), .Q(\regArr[7][5] ) );
  SDFFRQX2M \regArr_reg[7][4]  ( .D(n239), .SI(\regArr[7][3] ), .SE(n446), 
        .CK(CLK), .RN(n419), .Q(\regArr[7][4] ) );
  SDFFRQX2M \regArr_reg[7][3]  ( .D(n238), .SI(\regArr[7][2] ), .SE(n445), 
        .CK(CLK), .RN(n419), .Q(\regArr[7][3] ) );
  SDFFRQX2M \regArr_reg[7][2]  ( .D(n237), .SI(\regArr[7][1] ), .SE(n448), 
        .CK(CLK), .RN(n419), .Q(\regArr[7][2] ) );
  SDFFRQX2M \regArr_reg[7][1]  ( .D(n236), .SI(\regArr[7][0] ), .SE(n447), 
        .CK(CLK), .RN(n419), .Q(\regArr[7][1] ) );
  SDFFRQX2M \regArr_reg[7][0]  ( .D(n235), .SI(\regArr[6][7] ), .SE(n446), 
        .CK(CLK), .RN(n419), .Q(\regArr[7][0] ) );
  SDFFRQX2M \regArr_reg[5][7]  ( .D(n226), .SI(\regArr[5][6] ), .SE(n444), 
        .CK(CLK), .RN(n418), .Q(\regArr[5][7] ) );
  SDFFRQX2M \regArr_reg[5][6]  ( .D(n225), .SI(\regArr[5][5] ), .SE(n448), 
        .CK(CLK), .RN(n418), .Q(\regArr[5][6] ) );
  SDFFRQX2M \regArr_reg[5][5]  ( .D(n224), .SI(\regArr[5][4] ), .SE(n447), 
        .CK(CLK), .RN(n418), .Q(\regArr[5][5] ) );
  SDFFRQX2M \regArr_reg[5][4]  ( .D(n223), .SI(\regArr[5][3] ), .SE(n446), 
        .CK(CLK), .RN(n418), .Q(\regArr[5][4] ) );
  SDFFRQX2M \regArr_reg[5][3]  ( .D(n222), .SI(\regArr[5][2] ), .SE(n445), 
        .CK(CLK), .RN(n418), .Q(\regArr[5][3] ) );
  SDFFRQX2M \regArr_reg[5][2]  ( .D(n221), .SI(\regArr[5][1] ), .SE(n448), 
        .CK(CLK), .RN(n418), .Q(\regArr[5][2] ) );
  SDFFRQX2M \regArr_reg[5][1]  ( .D(n220), .SI(\regArr[5][0] ), .SE(n447), 
        .CK(CLK), .RN(n418), .Q(\regArr[5][1] ) );
  SDFFRQX2M \regArr_reg[5][0]  ( .D(n219), .SI(\regArr[4][7] ), .SE(n446), 
        .CK(CLK), .RN(n417), .Q(\regArr[5][0] ) );
  SDFFRQX2M \regArr_reg[14][7]  ( .D(n298), .SI(\regArr[14][6] ), .SE(n444), 
        .CK(CLK), .RN(n423), .Q(\regArr[14][7] ) );
  SDFFRQX2M \regArr_reg[14][6]  ( .D(n297), .SI(\regArr[14][5] ), .SE(n448), 
        .CK(CLK), .RN(n423), .Q(\regArr[14][6] ) );
  SDFFRQX2M \regArr_reg[14][5]  ( .D(n296), .SI(\regArr[14][4] ), .SE(n447), 
        .CK(CLK), .RN(n423), .Q(\regArr[14][5] ) );
  SDFFRQX2M \regArr_reg[14][4]  ( .D(n295), .SI(\regArr[14][3] ), .SE(n446), 
        .CK(CLK), .RN(n423), .Q(\regArr[14][4] ) );
  SDFFRQX2M \regArr_reg[14][3]  ( .D(n294), .SI(\regArr[14][2] ), .SE(n445), 
        .CK(CLK), .RN(n423), .Q(\regArr[14][3] ) );
  SDFFRQX2M \regArr_reg[14][2]  ( .D(n293), .SI(\regArr[14][1] ), .SE(n448), 
        .CK(CLK), .RN(n423), .Q(\regArr[14][2] ) );
  SDFFRQX2M \regArr_reg[14][1]  ( .D(n292), .SI(\regArr[14][0] ), .SE(n447), 
        .CK(CLK), .RN(n423), .Q(\regArr[14][1] ) );
  SDFFRQX2M \regArr_reg[14][0]  ( .D(n291), .SI(\regArr[13][7] ), .SE(n446), 
        .CK(CLK), .RN(n423), .Q(\regArr[14][0] ) );
  SDFFRQX2M \regArr_reg[12][7]  ( .D(n282), .SI(\regArr[12][6] ), .SE(n444), 
        .CK(CLK), .RN(n422), .Q(\regArr[12][7] ) );
  SDFFRQX2M \regArr_reg[12][6]  ( .D(n281), .SI(\regArr[12][5] ), .SE(n448), 
        .CK(CLK), .RN(n422), .Q(\regArr[12][6] ) );
  SDFFRQX2M \regArr_reg[12][5]  ( .D(n280), .SI(\regArr[12][4] ), .SE(n447), 
        .CK(CLK), .RN(n422), .Q(\regArr[12][5] ) );
  SDFFRQX2M \regArr_reg[12][4]  ( .D(n279), .SI(\regArr[12][3] ), .SE(n446), 
        .CK(CLK), .RN(n422), .Q(\regArr[12][4] ) );
  SDFFRQX2M \regArr_reg[12][3]  ( .D(n278), .SI(\regArr[12][2] ), .SE(n445), 
        .CK(CLK), .RN(n422), .Q(\regArr[12][3] ) );
  SDFFRQX2M \regArr_reg[12][2]  ( .D(n277), .SI(\regArr[12][1] ), .SE(n448), 
        .CK(CLK), .RN(n422), .Q(\regArr[12][2] ) );
  SDFFRQX2M \regArr_reg[12][1]  ( .D(n276), .SI(\regArr[12][0] ), .SE(n447), 
        .CK(CLK), .RN(n422), .Q(\regArr[12][1] ) );
  SDFFRQX2M \regArr_reg[12][0]  ( .D(n275), .SI(\regArr[11][7] ), .SE(n446), 
        .CK(CLK), .RN(n422), .Q(\regArr[12][0] ) );
  SDFFRQX2M \regArr_reg[10][7]  ( .D(n266), .SI(\regArr[10][6] ), .SE(n444), 
        .CK(CLK), .RN(n421), .Q(\regArr[10][7] ) );
  SDFFRQX2M \regArr_reg[10][6]  ( .D(n265), .SI(\regArr[10][5] ), .SE(n448), 
        .CK(CLK), .RN(n421), .Q(\regArr[10][6] ) );
  SDFFRQX2M \regArr_reg[10][5]  ( .D(n264), .SI(\regArr[10][4] ), .SE(n447), 
        .CK(CLK), .RN(n421), .Q(\regArr[10][5] ) );
  SDFFRQX2M \regArr_reg[10][4]  ( .D(n263), .SI(\regArr[10][3] ), .SE(n446), 
        .CK(CLK), .RN(n421), .Q(\regArr[10][4] ) );
  SDFFRQX2M \regArr_reg[10][3]  ( .D(n262), .SI(\regArr[10][2] ), .SE(n445), 
        .CK(CLK), .RN(n421), .Q(\regArr[10][3] ) );
  SDFFRQX2M \regArr_reg[10][2]  ( .D(n261), .SI(\regArr[10][1] ), .SE(n448), 
        .CK(CLK), .RN(n421), .Q(\regArr[10][2] ) );
  SDFFRQX2M \regArr_reg[10][1]  ( .D(n260), .SI(\regArr[10][0] ), .SE(n447), 
        .CK(CLK), .RN(n420), .Q(\regArr[10][1] ) );
  SDFFRQX2M \regArr_reg[10][0]  ( .D(n259), .SI(\regArr[9][7] ), .SE(n446), 
        .CK(CLK), .RN(n420), .Q(\regArr[10][0] ) );
  SDFFRQX2M \regArr_reg[8][7]  ( .D(n250), .SI(\regArr[8][6] ), .SE(n444), 
        .CK(CLK), .RN(n420), .Q(\regArr[8][7] ) );
  SDFFRQX2M \regArr_reg[8][6]  ( .D(n249), .SI(\regArr[8][5] ), .SE(n448), 
        .CK(CLK), .RN(n420), .Q(\regArr[8][6] ) );
  SDFFRQX2M \regArr_reg[8][5]  ( .D(n248), .SI(\regArr[8][4] ), .SE(n447), 
        .CK(CLK), .RN(n420), .Q(\regArr[8][5] ) );
  SDFFRQX2M \regArr_reg[8][4]  ( .D(n247), .SI(\regArr[8][3] ), .SE(n446), 
        .CK(CLK), .RN(n420), .Q(\regArr[8][4] ) );
  SDFFRQX2M \regArr_reg[8][3]  ( .D(n246), .SI(\regArr[8][2] ), .SE(n445), 
        .CK(CLK), .RN(n419), .Q(\regArr[8][3] ) );
  SDFFRQX2M \regArr_reg[8][2]  ( .D(n245), .SI(\regArr[8][1] ), .SE(n448), 
        .CK(CLK), .RN(n419), .Q(\regArr[8][2] ) );
  SDFFRQX2M \regArr_reg[8][1]  ( .D(n244), .SI(\regArr[8][0] ), .SE(n447), 
        .CK(CLK), .RN(n419), .Q(\regArr[8][1] ) );
  SDFFRQX2M \regArr_reg[8][0]  ( .D(n243), .SI(\regArr[7][7] ), .SE(n446), 
        .CK(CLK), .RN(n419), .Q(\regArr[8][0] ) );
  SDFFRQX2M \regArr_reg[6][7]  ( .D(n234), .SI(test_si2), .SE(n444), .CK(CLK), 
        .RN(n419), .Q(\regArr[6][7] ) );
  SDFFRQX2M \regArr_reg[6][6]  ( .D(n233), .SI(\regArr[6][5] ), .SE(n448), 
        .CK(CLK), .RN(n418), .Q(\regArr[6][6] ) );
  SDFFRQX2M \regArr_reg[6][5]  ( .D(n232), .SI(\regArr[6][4] ), .SE(n447), 
        .CK(CLK), .RN(n418), .Q(\regArr[6][5] ) );
  SDFFRQX2M \regArr_reg[6][4]  ( .D(n231), .SI(\regArr[6][3] ), .SE(n446), 
        .CK(CLK), .RN(n418), .Q(\regArr[6][4] ) );
  SDFFRQX2M \regArr_reg[6][3]  ( .D(n230), .SI(\regArr[6][2] ), .SE(n445), 
        .CK(CLK), .RN(n418), .Q(\regArr[6][3] ) );
  SDFFRQX2M \regArr_reg[6][2]  ( .D(n229), .SI(\regArr[6][1] ), .SE(n448), 
        .CK(CLK), .RN(n418), .Q(\regArr[6][2] ) );
  SDFFRQX2M \regArr_reg[6][1]  ( .D(n228), .SI(\regArr[6][0] ), .SE(n447), 
        .CK(CLK), .RN(n418), .Q(\regArr[6][1] ) );
  SDFFRQX2M \regArr_reg[6][0]  ( .D(n227), .SI(\regArr[5][7] ), .SE(n446), 
        .CK(CLK), .RN(n418), .Q(\regArr[6][0] ) );
  SDFFRQX2M \regArr_reg[4][7]  ( .D(n218), .SI(\regArr[4][6] ), .SE(n444), 
        .CK(CLK), .RN(n417), .Q(\regArr[4][7] ) );
  SDFFRQX2M \regArr_reg[4][6]  ( .D(n217), .SI(\regArr[4][5] ), .SE(n448), 
        .CK(CLK), .RN(n417), .Q(\regArr[4][6] ) );
  SDFFRQX2M \regArr_reg[4][5]  ( .D(n216), .SI(\regArr[4][4] ), .SE(n447), 
        .CK(CLK), .RN(n417), .Q(\regArr[4][5] ) );
  SDFFRQX2M \regArr_reg[4][4]  ( .D(n215), .SI(\regArr[4][3] ), .SE(n446), 
        .CK(CLK), .RN(n417), .Q(\regArr[4][4] ) );
  SDFFRQX2M \regArr_reg[4][3]  ( .D(n214), .SI(\regArr[4][2] ), .SE(n445), 
        .CK(CLK), .RN(n417), .Q(\regArr[4][3] ) );
  SDFFRQX2M \regArr_reg[4][2]  ( .D(n213), .SI(\regArr[4][1] ), .SE(n448), 
        .CK(CLK), .RN(n417), .Q(\regArr[4][2] ) );
  SDFFRQX2M \regArr_reg[4][1]  ( .D(n212), .SI(\regArr[4][0] ), .SE(n447), 
        .CK(CLK), .RN(n417), .Q(\regArr[4][1] ) );
  SDFFRQX2M \regArr_reg[4][0]  ( .D(n211), .SI(REG3[7]), .SE(n446), .CK(CLK), 
        .RN(n417), .Q(\regArr[4][0] ) );
  SDFFRQX2M \RdData_reg[7]  ( .D(n314), .SI(RdData[6]), .SE(n444), .CK(CLK), 
        .RN(n415), .Q(RdData[7]) );
  SDFFRQX2M \RdData_reg[6]  ( .D(n313), .SI(RdData[5]), .SE(n448), .CK(CLK), 
        .RN(n424), .Q(RdData[6]) );
  SDFFRQX2M \RdData_reg[5]  ( .D(n312), .SI(RdData[4]), .SE(n447), .CK(CLK), 
        .RN(n424), .Q(RdData[5]) );
  SDFFRQX2M \RdData_reg[4]  ( .D(n311), .SI(RdData[3]), .SE(n446), .CK(CLK), 
        .RN(n424), .Q(RdData[4]) );
  SDFFRQX2M \RdData_reg[3]  ( .D(n310), .SI(RdData[2]), .SE(n445), .CK(CLK), 
        .RN(n424), .Q(RdData[3]) );
  SDFFRQX2M \RdData_reg[2]  ( .D(n309), .SI(RdData[1]), .SE(n448), .CK(CLK), 
        .RN(n424), .Q(RdData[2]) );
  SDFFRQX2M \RdData_reg[1]  ( .D(n308), .SI(RdData[0]), .SE(n447), .CK(CLK), 
        .RN(n424), .Q(RdData[1]) );
  SDFFRQX2M \RdData_reg[0]  ( .D(n307), .SI(RdData_Valid), .SE(n446), .CK(CLK), 
        .RN(n424), .Q(RdData[0]) );
  SDFFRQX2M \regArr_reg[3][1]  ( .D(n204), .SI(REG3[0]), .SE(n444), .CK(CLK), 
        .RN(n416), .Q(REG3[1]) );
  SDFFRQX2M \regArr_reg[3][3]  ( .D(n206), .SI(REG3[2]), .SE(n448), .CK(CLK), 
        .RN(n417), .Q(REG3[3]) );
  SDFFRQX2M \regArr_reg[3][2]  ( .D(n205), .SI(REG3[1]), .SE(n447), .CK(CLK), 
        .RN(n417), .Q(REG3[2]) );
  SDFFRQX2M \regArr_reg[3][4]  ( .D(n207), .SI(REG3[3]), .SE(n446), .CK(CLK), 
        .RN(n417), .Q(REG3[4]) );
  SDFFRQX2M \regArr_reg[3][7]  ( .D(n210), .SI(REG3[6]), .SE(n445), .CK(CLK), 
        .RN(n417), .Q(REG3[7]) );
  SDFFRQX2M \regArr_reg[3][6]  ( .D(n209), .SI(REG3[5]), .SE(n448), .CK(CLK), 
        .RN(n417), .Q(REG3[6]) );
  SDFFSQX2M \regArr_reg[3][5]  ( .D(n208), .SI(REG3[4]), .SE(n448), .CK(CLK), 
        .SN(n415), .Q(REG3[5]) );
  SDFFRQX2M \regArr_reg[3][0]  ( .D(n203), .SI(REG2[7]), .SE(n447), .CK(CLK), 
        .RN(n416), .Q(REG3[0]) );
  SDFFRQX2M RdData_Valid_reg ( .D(n178), .SI(test_si1), .SE(n446), .CK(CLK), 
        .RN(n419), .Q(RdData_Valid) );
  SDFFRQX2M \regArr_reg[2][0]  ( .D(n195), .SI(REG1[7]), .SE(n444), .CK(CLK), 
        .RN(n416), .Q(REG2[0]) );
  SDFFRQX2M \regArr_reg[2][1]  ( .D(n196), .SI(REG2[0]), .SE(n448), .CK(CLK), 
        .RN(n416), .Q(REG2[1]) );
  SDFFSQX2M \regArr_reg[2][7]  ( .D(n202), .SI(REG2[6]), .SE(n447), .CK(CLK), 
        .SN(n415), .Q(REG2[7]) );
  SDFFRQX2M \regArr_reg[2][3]  ( .D(n198), .SI(REG2[2]), .SE(n447), .CK(CLK), 
        .RN(n416), .Q(REG2[3]) );
  SDFFRQX2M \regArr_reg[2][4]  ( .D(n199), .SI(REG2[3]), .SE(n446), .CK(CLK), 
        .RN(n416), .Q(REG2[4]) );
  SDFFRQX2M \regArr_reg[2][6]  ( .D(n201), .SI(REG2[5]), .SE(n445), .CK(CLK), 
        .RN(n416), .Q(REG2[6]) );
  SDFFRQX2M \regArr_reg[2][2]  ( .D(n197), .SI(REG2[1]), .SE(n448), .CK(CLK), 
        .RN(n416), .Q(REG2[2]) );
  SDFFRQX2M \regArr_reg[2][5]  ( .D(n200), .SI(REG2[4]), .SE(n447), .CK(CLK), 
        .RN(n416), .Q(REG2[5]) );
  SDFFRQX2M \regArr_reg[0][1]  ( .D(n180), .SI(REG0[0]), .SE(n446), .CK(CLK), 
        .RN(n415), .Q(REG0[1]) );
  SDFFRQX2M \regArr_reg[0][0]  ( .D(n179), .SI(RdData[7]), .SE(n444), .CK(CLK), 
        .RN(n415), .Q(REG0[0]) );
  SDFFRQX2M \regArr_reg[0][2]  ( .D(n181), .SI(REG0[1]), .SE(n448), .CK(CLK), 
        .RN(n415), .Q(REG0[2]) );
  SDFFRQX2M \regArr_reg[0][3]  ( .D(n182), .SI(REG0[2]), .SE(n447), .CK(CLK), 
        .RN(n415), .Q(REG0[3]) );
  SDFFRQX2M \regArr_reg[0][4]  ( .D(n183), .SI(REG0[3]), .SE(n446), .CK(CLK), 
        .RN(n415), .Q(REG0[4]) );
  SDFFRQX2M \regArr_reg[0][5]  ( .D(n184), .SI(REG0[4]), .SE(n445), .CK(CLK), 
        .RN(n415), .Q(REG0[5]) );
  SDFFRQX2M \regArr_reg[0][6]  ( .D(n185), .SI(REG0[5]), .SE(n448), .CK(CLK), 
        .RN(n415), .Q(REG0[6]) );
  SDFFRQX2M \regArr_reg[1][6]  ( .D(n193), .SI(REG1[5]), .SE(n447), .CK(CLK), 
        .RN(n416), .Q(REG1[6]) );
  SDFFRQX2M \regArr_reg[0][7]  ( .D(n186), .SI(REG0[6]), .SE(n446), .CK(CLK), 
        .RN(n415), .Q(REG0[7]) );
  SDFFRQX2M \regArr_reg[1][1]  ( .D(n188), .SI(REG1[0]), .SE(n444), .CK(CLK), 
        .RN(n415), .Q(REG1[1]) );
  SDFFRQX2M \regArr_reg[1][5]  ( .D(n192), .SI(REG1[4]), .SE(n448), .CK(CLK), 
        .RN(n416), .Q(REG1[5]) );
  SDFFRQX2M \regArr_reg[1][4]  ( .D(n191), .SI(REG1[3]), .SE(n447), .CK(CLK), 
        .RN(n416), .Q(REG1[4]) );
  SDFFRQX2M \regArr_reg[1][7]  ( .D(n194), .SI(REG1[6]), .SE(n446), .CK(CLK), 
        .RN(n416), .Q(REG1[7]) );
  SDFFRQX2M \regArr_reg[1][3]  ( .D(n190), .SI(REG1[2]), .SE(n445), .CK(CLK), 
        .RN(n416), .Q(REG1[3]) );
  SDFFRQX2M \regArr_reg[1][2]  ( .D(n189), .SI(REG1[1]), .SE(n446), .CK(CLK), 
        .RN(n415), .Q(REG1[2]) );
  SDFFRQX2M \regArr_reg[1][0]  ( .D(n187), .SI(REG0[7]), .SE(n444), .CK(CLK), 
        .RN(n415), .Q(REG1[0]) );
  NOR2X2M U140 ( .A(n440), .B(N13), .Y(n157) );
  NOR2X2M U141 ( .A(N12), .B(N13), .Y(n152) );
  INVX2M U142 ( .A(n177), .Y(n438) );
  INVX2M U143 ( .A(n412), .Y(n413) );
  INVX2M U144 ( .A(n138), .Y(n410) );
  NAND2X2M U145 ( .A(RdEn), .B(n439), .Y(n177) );
  NOR2X2M U146 ( .A(n439), .B(RdEn), .Y(n150) );
  BUFX2M U147 ( .A(n429), .Y(n415) );
  BUFX2M U148 ( .A(n429), .Y(n416) );
  BUFX2M U149 ( .A(n428), .Y(n417) );
  BUFX2M U150 ( .A(n428), .Y(n418) );
  BUFX2M U151 ( .A(n427), .Y(n419) );
  BUFX2M U152 ( .A(n427), .Y(n420) );
  BUFX2M U153 ( .A(n426), .Y(n421) );
  BUFX2M U154 ( .A(n426), .Y(n422) );
  BUFX2M U155 ( .A(n425), .Y(n423) );
  BUFX2M U156 ( .A(n425), .Y(n424) );
  OR2X2M U157 ( .A(n440), .B(n409), .Y(n138) );
  BUFX2M U158 ( .A(n141), .Y(n412) );
  INVX2M U159 ( .A(n140), .Y(n414) );
  INVX2M U160 ( .A(n139), .Y(n411) );
  NAND2X2M U161 ( .A(n155), .B(n152), .Y(n154) );
  NAND2X2M U162 ( .A(n157), .B(n153), .Y(n156) );
  NAND2X2M U163 ( .A(n157), .B(n155), .Y(n158) );
  NAND2X2M U164 ( .A(n160), .B(n153), .Y(n159) );
  NAND2X2M U165 ( .A(n160), .B(n155), .Y(n161) );
  NAND2X2M U166 ( .A(n163), .B(n153), .Y(n162) );
  NAND2X2M U167 ( .A(n163), .B(n155), .Y(n165) );
  NAND2X2M U168 ( .A(n167), .B(n152), .Y(n166) );
  NAND2X2M U169 ( .A(n169), .B(n152), .Y(n168) );
  NAND2X2M U170 ( .A(n167), .B(n157), .Y(n170) );
  NAND2X2M U171 ( .A(n169), .B(n157), .Y(n171) );
  NAND2X2M U172 ( .A(n167), .B(n160), .Y(n172) );
  NAND2X2M U173 ( .A(n169), .B(n160), .Y(n173) );
  NAND2X2M U174 ( .A(n167), .B(n163), .Y(n174) );
  NAND2X2M U175 ( .A(n169), .B(n163), .Y(n176) );
  NAND2X2M U176 ( .A(n152), .B(n153), .Y(n151) );
  AND2X2M U177 ( .A(n164), .B(n409), .Y(n153) );
  AND2X2M U178 ( .A(n175), .B(n409), .Y(n167) );
  INVX2M U179 ( .A(WrEn), .Y(n439) );
  BUFX2M U180 ( .A(RST), .Y(n428) );
  BUFX2M U181 ( .A(RST), .Y(n427) );
  BUFX2M U182 ( .A(RST), .Y(n426) );
  BUFX2M U183 ( .A(RST), .Y(n425) );
  BUFX2M U184 ( .A(RST), .Y(n429) );
  OR2X2M U185 ( .A(n440), .B(N11), .Y(n139) );
  OR2X2M U186 ( .A(N11), .B(N12), .Y(n140) );
  OR2X2M U187 ( .A(n409), .B(N12), .Y(n141) );
  INVX2M U188 ( .A(N11), .Y(n409) );
  INVX2M U189 ( .A(N13), .Y(n408) );
  INVX2M U190 ( .A(N14), .Y(n407) );
  AND2X2M U191 ( .A(n164), .B(N11), .Y(n155) );
  AND2X2M U192 ( .A(n175), .B(N11), .Y(n169) );
  AND2X2M U193 ( .A(N13), .B(n440), .Y(n160) );
  AND2X2M U194 ( .A(N13), .B(N12), .Y(n163) );
  NOR2BX2M U195 ( .AN(n150), .B(N14), .Y(n164) );
  INVX2M U196 ( .A(N12), .Y(n440) );
  AND2X2M U197 ( .A(N14), .B(n150), .Y(n175) );
  AO22X1M U198 ( .A0(N43), .A1(n438), .B0(RdData[0]), .B1(n177), .Y(n307) );
  AO22X1M U199 ( .A0(N42), .A1(n438), .B0(RdData[1]), .B1(n177), .Y(n308) );
  AO22X1M U200 ( .A0(N41), .A1(n438), .B0(RdData[2]), .B1(n177), .Y(n309) );
  AO22X1M U201 ( .A0(N40), .A1(n438), .B0(RdData[3]), .B1(n177), .Y(n310) );
  AO22X1M U202 ( .A0(N39), .A1(n438), .B0(RdData[4]), .B1(n177), .Y(n311) );
  AO22X1M U203 ( .A0(N38), .A1(n438), .B0(RdData[5]), .B1(n177), .Y(n312) );
  AO22X1M U204 ( .A0(N37), .A1(n438), .B0(RdData[6]), .B1(n177), .Y(n313) );
  AO22X1M U205 ( .A0(N36), .A1(n438), .B0(RdData[7]), .B1(n177), .Y(n314) );
  INVX2M U206 ( .A(WrData[0]), .Y(n430) );
  INVX2M U207 ( .A(WrData[1]), .Y(n431) );
  INVX2M U208 ( .A(WrData[2]), .Y(n432) );
  INVX2M U209 ( .A(WrData[3]), .Y(n433) );
  INVX2M U210 ( .A(WrData[4]), .Y(n434) );
  INVX2M U211 ( .A(WrData[5]), .Y(n435) );
  INVX2M U212 ( .A(WrData[6]), .Y(n436) );
  INVX2M U213 ( .A(WrData[7]), .Y(n437) );
  OAI2BB2X1M U214 ( .B0(n151), .B1(n430), .A0N(REG0[0]), .A1N(n151), .Y(n179)
         );
  OAI2BB2X1M U215 ( .B0(n151), .B1(n431), .A0N(REG0[1]), .A1N(n151), .Y(n180)
         );
  OAI2BB2X1M U216 ( .B0(n151), .B1(n432), .A0N(REG0[2]), .A1N(n151), .Y(n181)
         );
  OAI2BB2X1M U217 ( .B0(n151), .B1(n433), .A0N(REG0[3]), .A1N(n151), .Y(n182)
         );
  OAI2BB2X1M U218 ( .B0(n151), .B1(n434), .A0N(REG0[4]), .A1N(n151), .Y(n183)
         );
  OAI2BB2X1M U219 ( .B0(n151), .B1(n435), .A0N(REG0[5]), .A1N(n151), .Y(n184)
         );
  OAI2BB2X1M U220 ( .B0(n151), .B1(n436), .A0N(REG0[6]), .A1N(n151), .Y(n185)
         );
  OAI2BB2X1M U221 ( .B0(n151), .B1(n437), .A0N(REG0[7]), .A1N(n151), .Y(n186)
         );
  OAI2BB2X1M U222 ( .B0(n430), .B1(n156), .A0N(REG2[0]), .A1N(n156), .Y(n195)
         );
  OAI2BB2X1M U223 ( .B0(n431), .B1(n156), .A0N(REG2[1]), .A1N(n156), .Y(n196)
         );
  OAI2BB2X1M U224 ( .B0(n432), .B1(n156), .A0N(REG2[2]), .A1N(n156), .Y(n197)
         );
  OAI2BB2X1M U225 ( .B0(n433), .B1(n156), .A0N(REG2[3]), .A1N(n156), .Y(n198)
         );
  OAI2BB2X1M U226 ( .B0(n434), .B1(n156), .A0N(REG2[4]), .A1N(n156), .Y(n199)
         );
  OAI2BB2X1M U227 ( .B0(n435), .B1(n156), .A0N(REG2[5]), .A1N(n156), .Y(n200)
         );
  OAI2BB2X1M U228 ( .B0(n436), .B1(n156), .A0N(REG2[6]), .A1N(n156), .Y(n201)
         );
  OAI2BB2X1M U229 ( .B0(n430), .B1(n158), .A0N(REG3[0]), .A1N(n158), .Y(n203)
         );
  OAI2BB2X1M U230 ( .B0(n431), .B1(n158), .A0N(REG3[1]), .A1N(n158), .Y(n204)
         );
  OAI2BB2X1M U231 ( .B0(n432), .B1(n158), .A0N(REG3[2]), .A1N(n158), .Y(n205)
         );
  OAI2BB2X1M U232 ( .B0(n433), .B1(n158), .A0N(REG3[3]), .A1N(n158), .Y(n206)
         );
  OAI2BB2X1M U233 ( .B0(n434), .B1(n158), .A0N(REG3[4]), .A1N(n158), .Y(n207)
         );
  OAI2BB2X1M U234 ( .B0(n436), .B1(n158), .A0N(REG3[6]), .A1N(n158), .Y(n209)
         );
  OAI2BB2X1M U235 ( .B0(n437), .B1(n158), .A0N(REG3[7]), .A1N(n158), .Y(n210)
         );
  OAI2BB2X1M U236 ( .B0(n430), .B1(n154), .A0N(REG1[0]), .A1N(n154), .Y(n187)
         );
  OAI2BB2X1M U237 ( .B0(n431), .B1(n154), .A0N(REG1[1]), .A1N(n154), .Y(n188)
         );
  OAI2BB2X1M U238 ( .B0(n432), .B1(n154), .A0N(REG1[2]), .A1N(n154), .Y(n189)
         );
  OAI2BB2X1M U239 ( .B0(n433), .B1(n154), .A0N(REG1[3]), .A1N(n154), .Y(n190)
         );
  OAI2BB2X1M U240 ( .B0(n434), .B1(n154), .A0N(REG1[4]), .A1N(n154), .Y(n191)
         );
  OAI2BB2X1M U241 ( .B0(n435), .B1(n154), .A0N(REG1[5]), .A1N(n154), .Y(n192)
         );
  OAI2BB2X1M U242 ( .B0(n436), .B1(n154), .A0N(REG1[6]), .A1N(n154), .Y(n193)
         );
  OAI2BB2X1M U243 ( .B0(n437), .B1(n154), .A0N(REG1[7]), .A1N(n154), .Y(n194)
         );
  OAI2BB2X1M U244 ( .B0(n430), .B1(n166), .A0N(\regArr[8][0] ), .A1N(n166), 
        .Y(n243) );
  OAI2BB2X1M U245 ( .B0(n431), .B1(n166), .A0N(\regArr[8][1] ), .A1N(n166), 
        .Y(n244) );
  OAI2BB2X1M U246 ( .B0(n432), .B1(n166), .A0N(\regArr[8][2] ), .A1N(n166), 
        .Y(n245) );
  OAI2BB2X1M U247 ( .B0(n433), .B1(n166), .A0N(\regArr[8][3] ), .A1N(n166), 
        .Y(n246) );
  OAI2BB2X1M U248 ( .B0(n434), .B1(n166), .A0N(\regArr[8][4] ), .A1N(n166), 
        .Y(n247) );
  OAI2BB2X1M U249 ( .B0(n435), .B1(n166), .A0N(\regArr[8][5] ), .A1N(n166), 
        .Y(n248) );
  OAI2BB2X1M U250 ( .B0(n436), .B1(n166), .A0N(\regArr[8][6] ), .A1N(n166), 
        .Y(n249) );
  OAI2BB2X1M U251 ( .B0(n437), .B1(n166), .A0N(\regArr[8][7] ), .A1N(n166), 
        .Y(n250) );
  OAI2BB2X1M U252 ( .B0(n430), .B1(n168), .A0N(\regArr[9][0] ), .A1N(n168), 
        .Y(n251) );
  OAI2BB2X1M U253 ( .B0(n431), .B1(n168), .A0N(\regArr[9][1] ), .A1N(n168), 
        .Y(n252) );
  OAI2BB2X1M U254 ( .B0(n432), .B1(n168), .A0N(\regArr[9][2] ), .A1N(n168), 
        .Y(n253) );
  OAI2BB2X1M U255 ( .B0(n433), .B1(n168), .A0N(\regArr[9][3] ), .A1N(n168), 
        .Y(n254) );
  OAI2BB2X1M U256 ( .B0(n434), .B1(n168), .A0N(\regArr[9][4] ), .A1N(n168), 
        .Y(n255) );
  OAI2BB2X1M U257 ( .B0(n435), .B1(n168), .A0N(\regArr[9][5] ), .A1N(n168), 
        .Y(n256) );
  OAI2BB2X1M U258 ( .B0(n436), .B1(n168), .A0N(\regArr[9][6] ), .A1N(n168), 
        .Y(n257) );
  OAI2BB2X1M U259 ( .B0(n437), .B1(n168), .A0N(\regArr[9][7] ), .A1N(n168), 
        .Y(n258) );
  OAI2BB2X1M U260 ( .B0(n430), .B1(n170), .A0N(\regArr[10][0] ), .A1N(n170), 
        .Y(n259) );
  OAI2BB2X1M U261 ( .B0(n431), .B1(n170), .A0N(\regArr[10][1] ), .A1N(n170), 
        .Y(n260) );
  OAI2BB2X1M U262 ( .B0(n432), .B1(n170), .A0N(\regArr[10][2] ), .A1N(n170), 
        .Y(n261) );
  OAI2BB2X1M U263 ( .B0(n433), .B1(n170), .A0N(\regArr[10][3] ), .A1N(n170), 
        .Y(n262) );
  OAI2BB2X1M U264 ( .B0(n434), .B1(n170), .A0N(\regArr[10][4] ), .A1N(n170), 
        .Y(n263) );
  OAI2BB2X1M U265 ( .B0(n435), .B1(n170), .A0N(\regArr[10][5] ), .A1N(n170), 
        .Y(n264) );
  OAI2BB2X1M U266 ( .B0(n436), .B1(n170), .A0N(\regArr[10][6] ), .A1N(n170), 
        .Y(n265) );
  OAI2BB2X1M U267 ( .B0(n437), .B1(n170), .A0N(\regArr[10][7] ), .A1N(n170), 
        .Y(n266) );
  OAI2BB2X1M U268 ( .B0(n430), .B1(n171), .A0N(\regArr[11][0] ), .A1N(n171), 
        .Y(n267) );
  OAI2BB2X1M U269 ( .B0(n431), .B1(n171), .A0N(\regArr[11][1] ), .A1N(n171), 
        .Y(n268) );
  OAI2BB2X1M U270 ( .B0(n432), .B1(n171), .A0N(\regArr[11][2] ), .A1N(n171), 
        .Y(n269) );
  OAI2BB2X1M U271 ( .B0(n433), .B1(n171), .A0N(\regArr[11][3] ), .A1N(n171), 
        .Y(n270) );
  OAI2BB2X1M U272 ( .B0(n434), .B1(n171), .A0N(\regArr[11][4] ), .A1N(n171), 
        .Y(n271) );
  OAI2BB2X1M U273 ( .B0(n435), .B1(n171), .A0N(\regArr[11][5] ), .A1N(n171), 
        .Y(n272) );
  OAI2BB2X1M U274 ( .B0(n436), .B1(n171), .A0N(\regArr[11][6] ), .A1N(n171), 
        .Y(n273) );
  OAI2BB2X1M U275 ( .B0(n437), .B1(n171), .A0N(\regArr[11][7] ), .A1N(n171), 
        .Y(n274) );
  OAI2BB2X1M U276 ( .B0(n437), .B1(n156), .A0N(REG2[7]), .A1N(n156), .Y(n202)
         );
  OAI2BB2X1M U277 ( .B0(n435), .B1(n158), .A0N(REG3[5]), .A1N(n158), .Y(n208)
         );
  OAI2BB2X1M U278 ( .B0(n430), .B1(n159), .A0N(\regArr[4][0] ), .A1N(n159), 
        .Y(n211) );
  OAI2BB2X1M U279 ( .B0(n431), .B1(n159), .A0N(\regArr[4][1] ), .A1N(n159), 
        .Y(n212) );
  OAI2BB2X1M U280 ( .B0(n432), .B1(n159), .A0N(\regArr[4][2] ), .A1N(n159), 
        .Y(n213) );
  OAI2BB2X1M U281 ( .B0(n433), .B1(n159), .A0N(\regArr[4][3] ), .A1N(n159), 
        .Y(n214) );
  OAI2BB2X1M U282 ( .B0(n434), .B1(n159), .A0N(\regArr[4][4] ), .A1N(n159), 
        .Y(n215) );
  OAI2BB2X1M U283 ( .B0(n435), .B1(n159), .A0N(\regArr[4][5] ), .A1N(n159), 
        .Y(n216) );
  OAI2BB2X1M U284 ( .B0(n436), .B1(n159), .A0N(\regArr[4][6] ), .A1N(n159), 
        .Y(n217) );
  OAI2BB2X1M U285 ( .B0(n437), .B1(n159), .A0N(\regArr[4][7] ), .A1N(n159), 
        .Y(n218) );
  OAI2BB2X1M U286 ( .B0(n430), .B1(n161), .A0N(\regArr[5][0] ), .A1N(n161), 
        .Y(n219) );
  OAI2BB2X1M U287 ( .B0(n431), .B1(n161), .A0N(\regArr[5][1] ), .A1N(n161), 
        .Y(n220) );
  OAI2BB2X1M U288 ( .B0(n432), .B1(n161), .A0N(\regArr[5][2] ), .A1N(n161), 
        .Y(n221) );
  OAI2BB2X1M U289 ( .B0(n433), .B1(n161), .A0N(\regArr[5][3] ), .A1N(n161), 
        .Y(n222) );
  OAI2BB2X1M U290 ( .B0(n434), .B1(n161), .A0N(\regArr[5][4] ), .A1N(n161), 
        .Y(n223) );
  OAI2BB2X1M U291 ( .B0(n435), .B1(n161), .A0N(\regArr[5][5] ), .A1N(n161), 
        .Y(n224) );
  OAI2BB2X1M U292 ( .B0(n436), .B1(n161), .A0N(\regArr[5][6] ), .A1N(n161), 
        .Y(n225) );
  OAI2BB2X1M U293 ( .B0(n437), .B1(n161), .A0N(\regArr[5][7] ), .A1N(n161), 
        .Y(n226) );
  OAI2BB2X1M U294 ( .B0(n430), .B1(n162), .A0N(\regArr[6][0] ), .A1N(n162), 
        .Y(n227) );
  OAI2BB2X1M U295 ( .B0(n431), .B1(n162), .A0N(\regArr[6][1] ), .A1N(n162), 
        .Y(n228) );
  OAI2BB2X1M U296 ( .B0(n432), .B1(n162), .A0N(\regArr[6][2] ), .A1N(n162), 
        .Y(n229) );
  OAI2BB2X1M U297 ( .B0(n433), .B1(n162), .A0N(\regArr[6][3] ), .A1N(n162), 
        .Y(n230) );
  OAI2BB2X1M U298 ( .B0(n434), .B1(n162), .A0N(\regArr[6][4] ), .A1N(n162), 
        .Y(n231) );
  OAI2BB2X1M U299 ( .B0(n435), .B1(n162), .A0N(\regArr[6][5] ), .A1N(n162), 
        .Y(n232) );
  OAI2BB2X1M U300 ( .B0(n436), .B1(n162), .A0N(\regArr[6][6] ), .A1N(n162), 
        .Y(n233) );
  OAI2BB2X1M U301 ( .B0(n437), .B1(n162), .A0N(\regArr[6][7] ), .A1N(n162), 
        .Y(n234) );
  OAI2BB2X1M U302 ( .B0(n430), .B1(n165), .A0N(\regArr[7][0] ), .A1N(n165), 
        .Y(n235) );
  OAI2BB2X1M U303 ( .B0(n431), .B1(n165), .A0N(\regArr[7][1] ), .A1N(n165), 
        .Y(n236) );
  OAI2BB2X1M U304 ( .B0(n432), .B1(n165), .A0N(\regArr[7][2] ), .A1N(n165), 
        .Y(n237) );
  OAI2BB2X1M U305 ( .B0(n433), .B1(n165), .A0N(\regArr[7][3] ), .A1N(n165), 
        .Y(n238) );
  OAI2BB2X1M U306 ( .B0(n434), .B1(n165), .A0N(\regArr[7][4] ), .A1N(n165), 
        .Y(n239) );
  OAI2BB2X1M U307 ( .B0(n435), .B1(n165), .A0N(\regArr[7][5] ), .A1N(n165), 
        .Y(n240) );
  OAI2BB2X1M U308 ( .B0(n436), .B1(n165), .A0N(\regArr[7][6] ), .A1N(n165), 
        .Y(n241) );
  OAI2BB2X1M U309 ( .B0(n437), .B1(n165), .A0N(\regArr[7][7] ), .A1N(n165), 
        .Y(n242) );
  OAI2BB2X1M U310 ( .B0(n430), .B1(n172), .A0N(\regArr[12][0] ), .A1N(n172), 
        .Y(n275) );
  OAI2BB2X1M U311 ( .B0(n431), .B1(n172), .A0N(\regArr[12][1] ), .A1N(n172), 
        .Y(n276) );
  OAI2BB2X1M U312 ( .B0(n432), .B1(n172), .A0N(\regArr[12][2] ), .A1N(n172), 
        .Y(n277) );
  OAI2BB2X1M U313 ( .B0(n433), .B1(n172), .A0N(\regArr[12][3] ), .A1N(n172), 
        .Y(n278) );
  OAI2BB2X1M U314 ( .B0(n434), .B1(n172), .A0N(\regArr[12][4] ), .A1N(n172), 
        .Y(n279) );
  OAI2BB2X1M U315 ( .B0(n435), .B1(n172), .A0N(\regArr[12][5] ), .A1N(n172), 
        .Y(n280) );
  OAI2BB2X1M U316 ( .B0(n436), .B1(n172), .A0N(\regArr[12][6] ), .A1N(n172), 
        .Y(n281) );
  OAI2BB2X1M U317 ( .B0(n437), .B1(n172), .A0N(\regArr[12][7] ), .A1N(n172), 
        .Y(n282) );
  OAI2BB2X1M U318 ( .B0(n430), .B1(n173), .A0N(\regArr[13][0] ), .A1N(n173), 
        .Y(n283) );
  OAI2BB2X1M U319 ( .B0(n431), .B1(n173), .A0N(\regArr[13][1] ), .A1N(n173), 
        .Y(n284) );
  OAI2BB2X1M U320 ( .B0(n432), .B1(n173), .A0N(\regArr[13][2] ), .A1N(n173), 
        .Y(n285) );
  OAI2BB2X1M U321 ( .B0(n433), .B1(n173), .A0N(\regArr[13][3] ), .A1N(n173), 
        .Y(n286) );
  OAI2BB2X1M U322 ( .B0(n434), .B1(n173), .A0N(\regArr[13][4] ), .A1N(n173), 
        .Y(n287) );
  OAI2BB2X1M U323 ( .B0(n435), .B1(n173), .A0N(\regArr[13][5] ), .A1N(n173), 
        .Y(n288) );
  OAI2BB2X1M U324 ( .B0(n436), .B1(n173), .A0N(\regArr[13][6] ), .A1N(n173), 
        .Y(n289) );
  OAI2BB2X1M U325 ( .B0(n437), .B1(n173), .A0N(\regArr[13][7] ), .A1N(n173), 
        .Y(n290) );
  OAI2BB2X1M U326 ( .B0(n430), .B1(n174), .A0N(\regArr[14][0] ), .A1N(n174), 
        .Y(n291) );
  OAI2BB2X1M U327 ( .B0(n431), .B1(n174), .A0N(\regArr[14][1] ), .A1N(n174), 
        .Y(n292) );
  OAI2BB2X1M U328 ( .B0(n432), .B1(n174), .A0N(\regArr[14][2] ), .A1N(n174), 
        .Y(n293) );
  OAI2BB2X1M U329 ( .B0(n433), .B1(n174), .A0N(\regArr[14][3] ), .A1N(n174), 
        .Y(n294) );
  OAI2BB2X1M U330 ( .B0(n434), .B1(n174), .A0N(\regArr[14][4] ), .A1N(n174), 
        .Y(n295) );
  OAI2BB2X1M U331 ( .B0(n435), .B1(n174), .A0N(\regArr[14][5] ), .A1N(n174), 
        .Y(n296) );
  OAI2BB2X1M U332 ( .B0(n436), .B1(n174), .A0N(\regArr[14][6] ), .A1N(n174), 
        .Y(n297) );
  OAI2BB2X1M U333 ( .B0(n437), .B1(n174), .A0N(\regArr[14][7] ), .A1N(n174), 
        .Y(n298) );
  OAI2BB2X1M U334 ( .B0(n430), .B1(n176), .A0N(\regArr[15][0] ), .A1N(n176), 
        .Y(n299) );
  OAI2BB2X1M U335 ( .B0(n431), .B1(n176), .A0N(\regArr[15][1] ), .A1N(n176), 
        .Y(n300) );
  OAI2BB2X1M U336 ( .B0(n432), .B1(n176), .A0N(\regArr[15][2] ), .A1N(n176), 
        .Y(n301) );
  OAI2BB2X1M U337 ( .B0(n433), .B1(n176), .A0N(\regArr[15][3] ), .A1N(n176), 
        .Y(n302) );
  OAI2BB2X1M U338 ( .B0(n434), .B1(n176), .A0N(\regArr[15][4] ), .A1N(n176), 
        .Y(n303) );
  OAI2BB2X1M U339 ( .B0(n435), .B1(n176), .A0N(\regArr[15][5] ), .A1N(n176), 
        .Y(n304) );
  OAI2BB2X1M U340 ( .B0(n436), .B1(n176), .A0N(\regArr[15][6] ), .A1N(n176), 
        .Y(n305) );
  OAI2BB2X1M U341 ( .B0(n437), .B1(n176), .A0N(\regArr[15][7] ), .A1N(n176), 
        .Y(n306) );
  AO21XLM U342 ( .A0(RdData_Valid), .A1(n150), .B0(n438), .Y(n178) );
  AOI22X1M U343 ( .A0(\regArr[10][0] ), .A1(n411), .B0(\regArr[11][0] ), .B1(
        n410), .Y(n143) );
  AOI22X1M U344 ( .A0(\regArr[8][0] ), .A1(n414), .B0(\regArr[9][0] ), .B1(
        n413), .Y(n142) );
  CLKNAND2X2M U345 ( .A(N14), .B(n408), .Y(n391) );
  AOI21X1M U346 ( .A0(n143), .A1(n142), .B0(n391), .Y(n318) );
  AOI22X1M U347 ( .A0(\regArr[14][0] ), .A1(n411), .B0(\regArr[15][0] ), .B1(
        n410), .Y(n145) );
  AOI22X1M U348 ( .A0(\regArr[12][0] ), .A1(n414), .B0(\regArr[13][0] ), .B1(
        n413), .Y(n144) );
  CLKNAND2X2M U349 ( .A(N14), .B(N13), .Y(n394) );
  AOI21X1M U350 ( .A0(n145), .A1(n144), .B0(n394), .Y(n317) );
  AOI22X1M U351 ( .A0(REG2[0]), .A1(n411), .B0(REG3[0]), .B1(n410), .Y(n147)
         );
  AOI22X1M U352 ( .A0(REG0[0]), .A1(n414), .B0(REG1[0]), .B1(n413), .Y(n146)
         );
  CLKNAND2X2M U353 ( .A(n408), .B(n407), .Y(n397) );
  AOI21X1M U354 ( .A0(n147), .A1(n146), .B0(n397), .Y(n316) );
  AOI22X1M U355 ( .A0(\regArr[6][0] ), .A1(n411), .B0(\regArr[7][0] ), .B1(
        n410), .Y(n149) );
  AOI22X1M U356 ( .A0(\regArr[4][0] ), .A1(n414), .B0(\regArr[5][0] ), .B1(
        n413), .Y(n148) );
  CLKNAND2X2M U357 ( .A(N13), .B(n407), .Y(n400) );
  AOI21X1M U358 ( .A0(n149), .A1(n148), .B0(n400), .Y(n315) );
  OR4X1M U359 ( .A(n318), .B(n317), .C(n316), .D(n315), .Y(N43) );
  AOI22X1M U360 ( .A0(\regArr[10][1] ), .A1(n411), .B0(\regArr[11][1] ), .B1(
        n410), .Y(n320) );
  AOI22X1M U361 ( .A0(\regArr[8][1] ), .A1(n414), .B0(\regArr[9][1] ), .B1(
        n413), .Y(n319) );
  AOI21X1M U362 ( .A0(n320), .A1(n319), .B0(n391), .Y(n330) );
  AOI22X1M U363 ( .A0(\regArr[14][1] ), .A1(n411), .B0(\regArr[15][1] ), .B1(
        n410), .Y(n322) );
  AOI22X1M U364 ( .A0(\regArr[12][1] ), .A1(n414), .B0(\regArr[13][1] ), .B1(
        n413), .Y(n321) );
  AOI21X1M U365 ( .A0(n322), .A1(n321), .B0(n394), .Y(n329) );
  AOI22X1M U366 ( .A0(REG2[1]), .A1(n411), .B0(REG3[1]), .B1(n410), .Y(n324)
         );
  AOI22X1M U367 ( .A0(REG0[1]), .A1(n414), .B0(REG1[1]), .B1(n413), .Y(n323)
         );
  AOI21X1M U368 ( .A0(n324), .A1(n323), .B0(n397), .Y(n328) );
  AOI22X1M U369 ( .A0(\regArr[6][1] ), .A1(n411), .B0(\regArr[7][1] ), .B1(
        n410), .Y(n326) );
  AOI22X1M U370 ( .A0(\regArr[4][1] ), .A1(n414), .B0(\regArr[5][1] ), .B1(
        n413), .Y(n325) );
  AOI21X1M U371 ( .A0(n326), .A1(n325), .B0(n400), .Y(n327) );
  OR4X1M U372 ( .A(n330), .B(n329), .C(n328), .D(n327), .Y(N42) );
  AOI22X1M U373 ( .A0(\regArr[10][2] ), .A1(n411), .B0(\regArr[11][2] ), .B1(
        n410), .Y(n332) );
  AOI22X1M U374 ( .A0(\regArr[8][2] ), .A1(n414), .B0(\regArr[9][2] ), .B1(
        n413), .Y(n331) );
  AOI21X1M U375 ( .A0(n332), .A1(n331), .B0(n391), .Y(n342) );
  AOI22X1M U376 ( .A0(\regArr[14][2] ), .A1(n411), .B0(\regArr[15][2] ), .B1(
        n410), .Y(n334) );
  AOI22X1M U377 ( .A0(\regArr[12][2] ), .A1(n414), .B0(\regArr[13][2] ), .B1(
        n413), .Y(n333) );
  AOI21X1M U378 ( .A0(n334), .A1(n333), .B0(n394), .Y(n341) );
  AOI22X1M U379 ( .A0(REG2[2]), .A1(n411), .B0(REG3[2]), .B1(n410), .Y(n336)
         );
  AOI22X1M U380 ( .A0(REG0[2]), .A1(n414), .B0(REG1[2]), .B1(n413), .Y(n335)
         );
  AOI21X1M U381 ( .A0(n336), .A1(n335), .B0(n397), .Y(n340) );
  AOI22X1M U382 ( .A0(\regArr[6][2] ), .A1(n411), .B0(\regArr[7][2] ), .B1(
        n410), .Y(n338) );
  AOI22X1M U383 ( .A0(\regArr[4][2] ), .A1(n414), .B0(\regArr[5][2] ), .B1(
        n413), .Y(n337) );
  AOI21X1M U384 ( .A0(n338), .A1(n337), .B0(n400), .Y(n339) );
  OR4X1M U385 ( .A(n342), .B(n341), .C(n340), .D(n339), .Y(N41) );
  AOI22X1M U386 ( .A0(\regArr[10][3] ), .A1(n411), .B0(\regArr[11][3] ), .B1(
        n410), .Y(n344) );
  AOI22X1M U387 ( .A0(\regArr[8][3] ), .A1(n414), .B0(\regArr[9][3] ), .B1(
        n413), .Y(n343) );
  AOI21X1M U388 ( .A0(n344), .A1(n343), .B0(n391), .Y(n354) );
  AOI22X1M U389 ( .A0(\regArr[14][3] ), .A1(n411), .B0(\regArr[15][3] ), .B1(
        n410), .Y(n346) );
  AOI22X1M U390 ( .A0(\regArr[12][3] ), .A1(n414), .B0(\regArr[13][3] ), .B1(
        n413), .Y(n345) );
  AOI21X1M U391 ( .A0(n346), .A1(n345), .B0(n394), .Y(n353) );
  AOI22X1M U392 ( .A0(REG2[3]), .A1(n411), .B0(REG3[3]), .B1(n410), .Y(n348)
         );
  AOI22X1M U393 ( .A0(REG0[3]), .A1(n414), .B0(REG1[3]), .B1(n413), .Y(n347)
         );
  AOI21X1M U394 ( .A0(n348), .A1(n347), .B0(n397), .Y(n352) );
  AOI22X1M U395 ( .A0(\regArr[6][3] ), .A1(n411), .B0(\regArr[7][3] ), .B1(
        n410), .Y(n350) );
  AOI22X1M U396 ( .A0(\regArr[4][3] ), .A1(n414), .B0(\regArr[5][3] ), .B1(
        n413), .Y(n349) );
  AOI21X1M U397 ( .A0(n350), .A1(n349), .B0(n400), .Y(n351) );
  OR4X1M U398 ( .A(n354), .B(n353), .C(n352), .D(n351), .Y(N40) );
  AOI22X1M U399 ( .A0(\regArr[10][4] ), .A1(n411), .B0(\regArr[11][4] ), .B1(
        n410), .Y(n356) );
  AOI22X1M U400 ( .A0(\regArr[8][4] ), .A1(n414), .B0(\regArr[9][4] ), .B1(
        n413), .Y(n355) );
  AOI21X1M U401 ( .A0(n356), .A1(n355), .B0(n391), .Y(n366) );
  AOI22X1M U402 ( .A0(\regArr[14][4] ), .A1(n411), .B0(\regArr[15][4] ), .B1(
        n410), .Y(n358) );
  AOI22X1M U403 ( .A0(\regArr[12][4] ), .A1(n414), .B0(\regArr[13][4] ), .B1(
        n413), .Y(n357) );
  AOI21X1M U404 ( .A0(n358), .A1(n357), .B0(n394), .Y(n365) );
  AOI22X1M U405 ( .A0(REG2[4]), .A1(n411), .B0(REG3[4]), .B1(n410), .Y(n360)
         );
  AOI22X1M U406 ( .A0(REG0[4]), .A1(n414), .B0(REG1[4]), .B1(n413), .Y(n359)
         );
  AOI21X1M U407 ( .A0(n360), .A1(n359), .B0(n397), .Y(n364) );
  AOI22X1M U408 ( .A0(\regArr[6][4] ), .A1(n411), .B0(\regArr[7][4] ), .B1(
        n410), .Y(n362) );
  AOI22X1M U409 ( .A0(\regArr[4][4] ), .A1(n414), .B0(\regArr[5][4] ), .B1(
        n413), .Y(n361) );
  AOI21X1M U410 ( .A0(n362), .A1(n361), .B0(n400), .Y(n363) );
  OR4X1M U411 ( .A(n366), .B(n365), .C(n364), .D(n363), .Y(N39) );
  AOI22X1M U412 ( .A0(\regArr[10][5] ), .A1(n411), .B0(\regArr[11][5] ), .B1(
        n410), .Y(n368) );
  AOI22X1M U413 ( .A0(\regArr[8][5] ), .A1(n414), .B0(\regArr[9][5] ), .B1(
        n413), .Y(n367) );
  AOI21X1M U414 ( .A0(n368), .A1(n367), .B0(n391), .Y(n378) );
  AOI22X1M U415 ( .A0(\regArr[14][5] ), .A1(n411), .B0(\regArr[15][5] ), .B1(
        n410), .Y(n370) );
  AOI22X1M U416 ( .A0(\regArr[12][5] ), .A1(n414), .B0(\regArr[13][5] ), .B1(
        n413), .Y(n369) );
  AOI21X1M U417 ( .A0(n370), .A1(n369), .B0(n394), .Y(n377) );
  AOI22X1M U418 ( .A0(REG2[5]), .A1(n411), .B0(REG3[5]), .B1(n410), .Y(n372)
         );
  AOI22X1M U419 ( .A0(REG0[5]), .A1(n414), .B0(REG1[5]), .B1(n413), .Y(n371)
         );
  AOI21X1M U420 ( .A0(n372), .A1(n371), .B0(n397), .Y(n376) );
  AOI22X1M U421 ( .A0(\regArr[6][5] ), .A1(n411), .B0(\regArr[7][5] ), .B1(
        n410), .Y(n374) );
  AOI22X1M U422 ( .A0(\regArr[4][5] ), .A1(n414), .B0(\regArr[5][5] ), .B1(
        n413), .Y(n373) );
  AOI21X1M U423 ( .A0(n374), .A1(n373), .B0(n400), .Y(n375) );
  OR4X1M U424 ( .A(n378), .B(n377), .C(n376), .D(n375), .Y(N38) );
  AOI22X1M U425 ( .A0(\regArr[10][6] ), .A1(n411), .B0(\regArr[11][6] ), .B1(
        n410), .Y(n380) );
  AOI22X1M U426 ( .A0(\regArr[8][6] ), .A1(n414), .B0(\regArr[9][6] ), .B1(
        n413), .Y(n379) );
  AOI21X1M U427 ( .A0(n380), .A1(n379), .B0(n391), .Y(n390) );
  AOI22X1M U428 ( .A0(\regArr[14][6] ), .A1(n411), .B0(\regArr[15][6] ), .B1(
        n410), .Y(n382) );
  AOI22X1M U429 ( .A0(\regArr[12][6] ), .A1(n414), .B0(\regArr[13][6] ), .B1(
        n413), .Y(n381) );
  AOI21X1M U430 ( .A0(n382), .A1(n381), .B0(n394), .Y(n389) );
  AOI22X1M U431 ( .A0(REG2[6]), .A1(n411), .B0(REG3[6]), .B1(n410), .Y(n384)
         );
  AOI22X1M U432 ( .A0(REG0[6]), .A1(n414), .B0(REG1[6]), .B1(n413), .Y(n383)
         );
  AOI21X1M U433 ( .A0(n384), .A1(n383), .B0(n397), .Y(n388) );
  AOI22X1M U434 ( .A0(\regArr[6][6] ), .A1(n411), .B0(\regArr[7][6] ), .B1(
        n410), .Y(n386) );
  AOI22X1M U435 ( .A0(\regArr[4][6] ), .A1(n414), .B0(\regArr[5][6] ), .B1(
        n413), .Y(n385) );
  AOI21X1M U436 ( .A0(n386), .A1(n385), .B0(n400), .Y(n387) );
  OR4X1M U437 ( .A(n390), .B(n389), .C(n388), .D(n387), .Y(N37) );
  AOI22X1M U438 ( .A0(\regArr[10][7] ), .A1(n411), .B0(\regArr[11][7] ), .B1(
        n410), .Y(n393) );
  AOI22X1M U439 ( .A0(\regArr[8][7] ), .A1(n414), .B0(\regArr[9][7] ), .B1(
        n413), .Y(n392) );
  AOI21X1M U440 ( .A0(n393), .A1(n392), .B0(n391), .Y(n406) );
  AOI22X1M U441 ( .A0(\regArr[14][7] ), .A1(n411), .B0(\regArr[15][7] ), .B1(
        n410), .Y(n396) );
  AOI22X1M U442 ( .A0(\regArr[12][7] ), .A1(n414), .B0(\regArr[13][7] ), .B1(
        n413), .Y(n395) );
  AOI21X1M U443 ( .A0(n396), .A1(n395), .B0(n394), .Y(n405) );
  AOI22X1M U444 ( .A0(REG2[7]), .A1(n411), .B0(REG3[7]), .B1(n410), .Y(n399)
         );
  AOI22X1M U445 ( .A0(REG0[7]), .A1(n414), .B0(REG1[7]), .B1(n413), .Y(n398)
         );
  AOI21X1M U446 ( .A0(n399), .A1(n398), .B0(n397), .Y(n404) );
  AOI22X1M U447 ( .A0(\regArr[6][7] ), .A1(n411), .B0(\regArr[7][7] ), .B1(
        n410), .Y(n402) );
  AOI22X1M U448 ( .A0(\regArr[4][7] ), .A1(n414), .B0(\regArr[5][7] ), .B1(
        n413), .Y(n401) );
  AOI21X1M U449 ( .A0(n402), .A1(n401), .B0(n400), .Y(n403) );
  OR4X1M U450 ( .A(n406), .B(n405), .C(n404), .D(n403), .Y(N36) );
  INVXLM U451 ( .A(test_se), .Y(n449) );
  INVXLM U452 ( .A(n449), .Y(n444) );
  INVXLM U453 ( .A(n449), .Y(n445) );
  DLY1X1M U454 ( .A(test_se), .Y(n446) );
  DLY1X1M U455 ( .A(test_se), .Y(n447) );
  DLY1X1M U456 ( .A(test_se), .Y(n448) );
endmodule


module SYS_CTRL_test_1 ( CLK, RST, ALU_OUT, FULL, OUT_Valid, RdData, 
        RdData_Valid, RX_P_DATA, RX_D_VLD, ALU_FUN, WR_INC, WR_DATA, EN, 
        CLK_EN, Address, WrEn, RdEn, WrData, test_si2, test_si1, test_so2, 
        test_so1, test_se );
  input [15:0] ALU_OUT;
  input [7:0] RdData;
  input [7:0] RX_P_DATA;
  output [3:0] ALU_FUN;
  output [7:0] WR_DATA;
  output [3:0] Address;
  output [7:0] WrData;
  input CLK, RST, FULL, OUT_Valid, RdData_Valid, RX_D_VLD, test_si2, test_si1,
         test_se;
  output WR_INC, EN, CLK_EN, WrEn, RdEn, test_so2, test_so1;
  wire   n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n189, n190, n193, n194, n195, n196,
         n197, n198, n199, n200, n201, n202, n203, n205, n206, n207, n208,
         n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219,
         n220, n221, n222, n223, n226, n227, n228, n229;
  wire   [4:0] cur_state;
  wire   [4:0] nxt_state;

  SDFFRX1M \opA_reg_reg[1]  ( .D(n181), .SI(n219), .SE(n228), .CK(CLK), .RN(
        n71), .Q(n218), .QN(n56) );
  SDFFRX1M \opA_reg_reg[2]  ( .D(n182), .SI(n218), .SE(n227), .CK(CLK), .RN(
        n71), .Q(n217), .QN(n55) );
  SDFFRX1M \opA_reg_reg[3]  ( .D(n183), .SI(n217), .SE(n229), .CK(CLK), .RN(
        n71), .Q(n216), .QN(n54) );
  SDFFRX1M \opA_reg_reg[4]  ( .D(n184), .SI(n216), .SE(n228), .CK(CLK), .RN(
        RST), .Q(n215), .QN(n53) );
  SDFFRX1M \opA_reg_reg[5]  ( .D(n185), .SI(n215), .SE(n227), .CK(CLK), .RN(
        n71), .Q(n214), .QN(n52) );
  SDFFRX1M \opA_reg_reg[6]  ( .D(n186), .SI(n214), .SE(n229), .CK(CLK), .RN(
        n71), .Q(n213), .QN(n51) );
  SDFFRX1M \opA_reg_reg[7]  ( .D(n187), .SI(n213), .SE(n228), .CK(CLK), .RN(
        n71), .Q(n212), .QN(n50) );
  SDFFRX1M \opA_reg_reg[0]  ( .D(n188), .SI(cur_state[4]), .SE(n227), .CK(CLK), 
        .RN(RST), .Q(n219), .QN(n57) );
  SDFFRX1M \opB_reg_reg[1]  ( .D(n173), .SI(n211), .SE(n229), .CK(CLK), .RN(
        n71), .Q(n210), .QN(n64) );
  SDFFRX1M \opB_reg_reg[2]  ( .D(n174), .SI(n210), .SE(n228), .CK(CLK), .RN(
        n71), .Q(n209), .QN(n63) );
  SDFFRX1M \opB_reg_reg[3]  ( .D(n175), .SI(n209), .SE(n227), .CK(CLK), .RN(
        n71), .Q(n208), .QN(n62) );
  SDFFRX1M \opB_reg_reg[4]  ( .D(n176), .SI(n208), .SE(n229), .CK(CLK), .RN(
        n71), .Q(n207), .QN(n61) );
  SDFFRX1M \opB_reg_reg[5]  ( .D(n177), .SI(n207), .SE(n228), .CK(CLK), .RN(
        n71), .Q(n206), .QN(n60) );
  SDFFRX1M \opB_reg_reg[6]  ( .D(n178), .SI(n206), .SE(n227), .CK(CLK), .RN(
        n71), .Q(n205), .QN(n59) );
  SDFFRX1M \opB_reg_reg[0]  ( .D(n180), .SI(n212), .SE(n228), .CK(CLK), .RN(
        n71), .Q(n211), .QN(n65) );
  SDFFRX1M \wr_data_reg_reg[1]  ( .D(n161), .SI(n199), .SE(n227), .CK(CLK), 
        .RN(n71), .Q(n198), .QN(n48) );
  SDFFRX1M \wr_data_reg_reg[2]  ( .D(n162), .SI(n198), .SE(n229), .CK(CLK), 
        .RN(RST), .Q(n197), .QN(n47) );
  SDFFRX1M \wr_data_reg_reg[3]  ( .D(n163), .SI(n197), .SE(n228), .CK(CLK), 
        .RN(n71), .Q(n196), .QN(n46) );
  SDFFRX1M \wr_data_reg_reg[4]  ( .D(n164), .SI(n196), .SE(n227), .CK(CLK), 
        .RN(RST), .Q(n195), .QN(n45) );
  SDFFRX1M \wr_data_reg_reg[5]  ( .D(n165), .SI(n195), .SE(n229), .CK(CLK), 
        .RN(n71), .Q(n194), .QN(n44) );
  SDFFRX1M \wr_data_reg_reg[6]  ( .D(n166), .SI(n194), .SE(n228), .CK(CLK), 
        .RN(n71), .Q(n193), .QN(n43) );
  SDFFRX1M \wr_data_reg_reg[7]  ( .D(n167), .SI(n193), .SE(n227), .CK(CLK), 
        .RN(n71), .Q(test_so2), .QN(n42) );
  SDFFRX1M \wr_data_reg_reg[0]  ( .D(n168), .SI(n200), .SE(n229), .CK(CLK), 
        .RN(n71), .Q(n199), .QN(n49) );
  SDFFRX1M \wr_addr_reg_reg[0]  ( .D(n160), .SI(test_si2), .SE(n228), .CK(CLK), 
        .RN(n71), .Q(n203), .QN(n41) );
  SDFFRX1M \wr_addr_reg_reg[1]  ( .D(n157), .SI(n203), .SE(n227), .CK(CLK), 
        .RN(RST), .Q(n202), .QN(n40) );
  SDFFRX1M \wr_addr_reg_reg[2]  ( .D(n158), .SI(n202), .SE(n229), .CK(CLK), 
        .RN(n71), .Q(n201), .QN(n39) );
  SDFFRX1M \wr_addr_reg_reg[3]  ( .D(n159), .SI(n201), .SE(n228), .CK(CLK), 
        .RN(RST), .Q(n200), .QN(n38) );
  SDFFRX1M \alu_fun_reg_reg[1]  ( .D(n169), .SI(n223), .SE(n227), .CK(CLK), 
        .RN(n71), .Q(n222), .QN(n68) );
  SDFFRX1M \alu_fun_reg_reg[2]  ( .D(n170), .SI(n222), .SE(n229), .CK(CLK), 
        .RN(n71), .Q(n221), .QN(n67) );
  SDFFRX1M \alu_fun_reg_reg[3]  ( .D(n171), .SI(n221), .SE(n228), .CK(CLK), 
        .RN(n71), .Q(n220), .QN(n66) );
  SDFFRX1M \alu_fun_reg_reg[0]  ( .D(n172), .SI(test_si1), .SE(n227), .CK(CLK), 
        .RN(n71), .Q(n223), .QN(n69) );
  SDFFRQX2M \cur_state_reg[1]  ( .D(nxt_state[1]), .SI(cur_state[0]), .SE(n227), .CK(CLK), .RN(RST), .Q(cur_state[1]) );
  SDFFRQX2M \cur_state_reg[3]  ( .D(nxt_state[3]), .SI(cur_state[2]), .SE(n229), .CK(CLK), .RN(n71), .Q(cur_state[3]) );
  SDFFRQX2M \cur_state_reg[2]  ( .D(nxt_state[2]), .SI(cur_state[1]), .SE(n228), .CK(CLK), .RN(RST), .Q(cur_state[2]) );
  SDFFRQX2M \cur_state_reg[4]  ( .D(nxt_state[4]), .SI(cur_state[3]), .SE(n227), .CK(CLK), .RN(n71), .Q(cur_state[4]) );
  SDFFRQX2M \cur_state_reg[0]  ( .D(nxt_state[0]), .SI(n220), .SE(n229), .CK(
        CLK), .RN(n71), .Q(cur_state[0]) );
  NOR2X2M U40 ( .A(n76), .B(n67), .Y(ALU_FUN[2]) );
  NOR3X2M U41 ( .A(cur_state[3]), .B(cur_state[4]), .C(n84), .Y(n119) );
  NOR2X2M U42 ( .A(n155), .B(n39), .Y(Address[2]) );
  NOR2X2M U43 ( .A(n76), .B(n69), .Y(ALU_FUN[0]) );
  INVX2M U44 ( .A(EN), .Y(n76) );
  INVX2M U45 ( .A(n72), .Y(n71) );
  AND3X2M U46 ( .A(n142), .B(n144), .C(n100), .Y(n155) );
  NAND3X2M U47 ( .A(n106), .B(n107), .C(n143), .Y(EN) );
  INVX2M U48 ( .A(n95), .Y(n77) );
  INVX2M U49 ( .A(n139), .Y(n83) );
  AOI21X2M U50 ( .A0(n143), .A1(n144), .B0(FULL), .Y(WR_INC) );
  NAND2X2M U51 ( .A(n83), .B(n153), .Y(n101) );
  NAND4X2M U52 ( .A(n96), .B(n78), .C(n95), .D(n97), .Y(nxt_state[3]) );
  NOR2BX2M U53 ( .AN(n98), .B(n99), .Y(n97) );
  INVX2M U54 ( .A(n100), .Y(RdEn) );
  INVX2M U55 ( .A(n70), .Y(n78) );
  INVX2M U56 ( .A(n144), .Y(n80) );
  NAND3X2M U57 ( .A(n126), .B(n108), .C(n142), .Y(WrEn) );
  INVX2M U58 ( .A(n138), .Y(n74) );
  OAI21X2M U59 ( .A0(FULL), .A1(n95), .B0(n96), .Y(nxt_state[4]) );
  INVX2M U60 ( .A(RST), .Y(n72) );
  NOR2X2M U61 ( .A(n85), .B(n79), .Y(n153) );
  NAND2X2M U62 ( .A(n134), .B(n154), .Y(n108) );
  NAND2X2M U63 ( .A(n113), .B(n153), .Y(n100) );
  NAND2X2M U64 ( .A(n153), .B(n154), .Y(n95) );
  NAND2X2M U65 ( .A(n114), .B(n154), .Y(n106) );
  NOR2X2M U66 ( .A(n77), .B(n129), .Y(n143) );
  NAND2X2M U67 ( .A(n134), .B(n119), .Y(n142) );
  NAND2X2M U68 ( .A(n114), .B(n119), .Y(n144) );
  NAND2X2M U69 ( .A(n114), .B(n83), .Y(n107) );
  NAND2X2M U70 ( .A(n156), .B(n84), .Y(n139) );
  NOR3BX2M U71 ( .AN(n126), .B(n140), .C(n120), .Y(n98) );
  NOR3X2M U72 ( .A(n94), .B(n110), .C(n90), .Y(n111) );
  OAI211X2M U73 ( .A0(n107), .A1(n87), .B0(n126), .C0(n73), .Y(n118) );
  INVX2M U74 ( .A(n104), .Y(n73) );
  NAND3X2M U75 ( .A(n79), .B(n85), .C(n154), .Y(n126) );
  NAND2X2M U76 ( .A(n119), .B(n153), .Y(n131) );
  INVX2M U77 ( .A(n122), .Y(n81) );
  OAI2BB1X2M U78 ( .A0N(n134), .A1N(n83), .B0(n101), .Y(n120) );
  NAND4X2M U79 ( .A(n105), .B(n106), .C(n107), .D(n108), .Y(n99) );
  OR2X2M U80 ( .A(n109), .B(n110), .Y(n105) );
  NAND4X2M U81 ( .A(n127), .B(n128), .C(n95), .D(n96), .Y(n104) );
  NAND2BX2M U82 ( .AN(n131), .B(n190), .Y(n127) );
  NAND4BX1M U83 ( .AN(n110), .B(n130), .C(n189), .D(n91), .Y(n128) );
  NAND2X2M U84 ( .A(FULL), .B(n129), .Y(n96) );
  BUFX2M U85 ( .A(n141), .Y(n70) );
  NOR2X2M U86 ( .A(n190), .B(n131), .Y(n141) );
  NOR3X2M U87 ( .A(n190), .B(n79), .C(n139), .Y(n138) );
  OAI22X1M U88 ( .A0(n87), .A1(n106), .B0(n109), .B1(n110), .Y(n125) );
  INVX2M U89 ( .A(n115), .Y(n75) );
  INVX2M U90 ( .A(n121), .Y(n82) );
  AO21XLM U91 ( .A0(n134), .A1(n113), .B0(n120), .Y(n133) );
  NOR3X2M U92 ( .A(cur_state[3]), .B(cur_state[4]), .C(cur_state[1]), .Y(n113)
         );
  OAI21X2M U93 ( .A0(n155), .A1(n41), .B0(n108), .Y(Address[0]) );
  NOR2X2M U94 ( .A(n155), .B(n40), .Y(Address[1]) );
  NOR2X2M U95 ( .A(n85), .B(cur_state[0]), .Y(n114) );
  NOR2X2M U96 ( .A(n79), .B(cur_state[2]), .Y(n134) );
  NOR2X2M U97 ( .A(n76), .B(n68), .Y(ALU_FUN[1]) );
  NOR2X2M U98 ( .A(n155), .B(n38), .Y(Address[3]) );
  AND4X2M U99 ( .A(cur_state[4]), .B(n153), .C(cur_state[1]), .D(cur_state[3]), 
        .Y(n129) );
  NOR2BX2M U100 ( .AN(cur_state[3]), .B(cur_state[4]), .Y(n156) );
  INVX2M U101 ( .A(cur_state[0]), .Y(n79) );
  AND2X2M U102 ( .A(n156), .B(cur_state[1]), .Y(n154) );
  INVX2M U103 ( .A(cur_state[2]), .Y(n85) );
  NOR2X2M U104 ( .A(n76), .B(n66), .Y(ALU_FUN[3]) );
  INVX2M U105 ( .A(cur_state[1]), .Y(n84) );
  NOR3X2M U106 ( .A(cur_state[0]), .B(cur_state[2]), .C(n139), .Y(n140) );
  OAI222X1M U107 ( .A0(n57), .A1(n126), .B0(n65), .B1(n108), .C0(n49), .C1(
        n142), .Y(WrData[0]) );
  OAI222X1M U108 ( .A0(n56), .A1(n126), .B0(n64), .B1(n108), .C0(n48), .C1(
        n142), .Y(WrData[1]) );
  OAI222X1M U109 ( .A0(n55), .A1(n126), .B0(n63), .B1(n108), .C0(n47), .C1(
        n142), .Y(WrData[2]) );
  OAI222X1M U110 ( .A0(n54), .A1(n126), .B0(n62), .B1(n108), .C0(n46), .C1(
        n142), .Y(WrData[3]) );
  OAI222X1M U111 ( .A0(n53), .A1(n126), .B0(n61), .B1(n108), .C0(n45), .C1(
        n142), .Y(WrData[4]) );
  OAI222X1M U112 ( .A0(n52), .A1(n126), .B0(n60), .B1(n108), .C0(n44), .C1(
        n142), .Y(WrData[5]) );
  OAI222X1M U113 ( .A0(n51), .A1(n126), .B0(n59), .B1(n108), .C0(n43), .C1(
        n142), .Y(WrData[6]) );
  OAI222X1M U114 ( .A0(n50), .A1(n126), .B0(n58), .B1(n108), .C0(n42), .C1(
        n142), .Y(WrData[7]) );
  NAND2X2M U115 ( .A(n140), .B(RX_D_VLD), .Y(n122) );
  NAND4X2M U116 ( .A(RX_P_DATA[3]), .B(n113), .C(RX_P_DATA[7]), .D(n135), .Y(
        n110) );
  NOR3X2M U117 ( .A(n190), .B(cur_state[2]), .C(cur_state[0]), .Y(n135) );
  OAI22X1M U118 ( .A0(n189), .A1(n122), .B0(n81), .B1(n65), .Y(n180) );
  OAI22X1M U119 ( .A0(n88), .A1(n122), .B0(n81), .B1(n58), .Y(n179) );
  OAI22X1M U120 ( .A0(n89), .A1(n122), .B0(n81), .B1(n59), .Y(n178) );
  OAI22X1M U121 ( .A0(n90), .A1(n122), .B0(n81), .B1(n60), .Y(n177) );
  OAI22X1M U122 ( .A0(n91), .A1(n122), .B0(n81), .B1(n61), .Y(n176) );
  OAI22X1M U123 ( .A0(n92), .A1(n122), .B0(n81), .B1(n62), .Y(n175) );
  OAI22X1M U124 ( .A0(n93), .A1(n122), .B0(n81), .B1(n63), .Y(n174) );
  OAI22X1M U125 ( .A0(n94), .A1(n122), .B0(n81), .B1(n64), .Y(n173) );
  OAI22X1M U126 ( .A0(n189), .A1(n78), .B0(n70), .B1(n57), .Y(n188) );
  OAI22X1M U127 ( .A0(n88), .A1(n78), .B0(n70), .B1(n50), .Y(n187) );
  OAI22X1M U128 ( .A0(n89), .A1(n78), .B0(n70), .B1(n51), .Y(n186) );
  OAI22X1M U129 ( .A0(n90), .A1(n78), .B0(n70), .B1(n52), .Y(n185) );
  OAI22X1M U130 ( .A0(n91), .A1(n78), .B0(n70), .B1(n53), .Y(n184) );
  OAI22X1M U131 ( .A0(n92), .A1(n78), .B0(n70), .B1(n54), .Y(n183) );
  OAI22X1M U132 ( .A0(n93), .A1(n78), .B0(n70), .B1(n55), .Y(n182) );
  OAI22X1M U133 ( .A0(n94), .A1(n78), .B0(n70), .B1(n56), .Y(n181) );
  OAI2BB1X2M U134 ( .A0N(RdData[0]), .A1N(n80), .B0(n152), .Y(WR_DATA[0]) );
  AOI22X1M U135 ( .A0(ALU_OUT[8]), .A1(n129), .B0(ALU_OUT[0]), .B1(n77), .Y(
        n152) );
  OAI2BB1X2M U136 ( .A0N(RdData[1]), .A1N(n80), .B0(n151), .Y(WR_DATA[1]) );
  AOI22X1M U137 ( .A0(ALU_OUT[9]), .A1(n129), .B0(ALU_OUT[1]), .B1(n77), .Y(
        n151) );
  OAI2BB1X2M U138 ( .A0N(RdData[2]), .A1N(n80), .B0(n150), .Y(WR_DATA[2]) );
  AOI22X1M U139 ( .A0(ALU_OUT[10]), .A1(n129), .B0(ALU_OUT[2]), .B1(n77), .Y(
        n150) );
  OAI2BB1X2M U140 ( .A0N(RdData[3]), .A1N(n80), .B0(n149), .Y(WR_DATA[3]) );
  AOI22X1M U141 ( .A0(ALU_OUT[11]), .A1(n129), .B0(ALU_OUT[3]), .B1(n77), .Y(
        n149) );
  OAI2BB1X2M U142 ( .A0N(RdData[4]), .A1N(n80), .B0(n148), .Y(WR_DATA[4]) );
  AOI22X1M U143 ( .A0(ALU_OUT[12]), .A1(n129), .B0(ALU_OUT[4]), .B1(n77), .Y(
        n148) );
  OAI2BB1X2M U144 ( .A0N(RdData[5]), .A1N(n80), .B0(n147), .Y(WR_DATA[5]) );
  AOI22X1M U145 ( .A0(ALU_OUT[13]), .A1(n129), .B0(ALU_OUT[5]), .B1(n77), .Y(
        n147) );
  OAI2BB1X2M U146 ( .A0N(RdData[6]), .A1N(n80), .B0(n146), .Y(WR_DATA[6]) );
  AOI22X1M U147 ( .A0(ALU_OUT[14]), .A1(n129), .B0(ALU_OUT[6]), .B1(n77), .Y(
        n146) );
  OAI2BB1X2M U148 ( .A0N(RdData[7]), .A1N(n80), .B0(n145), .Y(WR_DATA[7]) );
  AOI22X1M U149 ( .A0(ALU_OUT[15]), .A1(n129), .B0(ALU_OUT[7]), .B1(n77), .Y(
        n145) );
  INVX2M U150 ( .A(RX_D_VLD), .Y(n190) );
  NAND4X2M U151 ( .A(n106), .B(n115), .C(n116), .D(n117), .Y(nxt_state[1]) );
  AOI32X1M U152 ( .A0(n79), .A1(n85), .A2(n119), .B0(RX_D_VLD), .B1(n120), .Y(
        n116) );
  AOI221XLM U153 ( .A0(n80), .A1(FULL), .B0(RdData_Valid), .B1(RdEn), .C0(n118), .Y(n117) );
  NAND4X2M U154 ( .A(n121), .B(n122), .C(n123), .D(n124), .Y(nxt_state[0]) );
  AOI32X1M U155 ( .A0(n111), .A1(n189), .A2(n132), .B0(n133), .B1(n190), .Y(
        n123) );
  AOI211X2M U156 ( .A0(RdEn), .A1(n86), .B0(n125), .C0(n118), .Y(n124) );
  NOR3X2M U157 ( .A(RX_P_DATA[2]), .B(RX_P_DATA[6]), .C(RX_P_DATA[4]), .Y(n132) );
  NAND4X2M U158 ( .A(n100), .B(n101), .C(n102), .D(n103), .Y(nxt_state[2]) );
  AOI32X1M U159 ( .A0(n111), .A1(RX_P_DATA[4]), .A2(n112), .B0(n113), .B1(n114), .Y(n102) );
  AOI211X2M U160 ( .A0(n80), .A1(FULL), .B0(n104), .C0(n99), .Y(n103) );
  NOR3X2M U161 ( .A(n189), .B(RX_P_DATA[6]), .C(RX_P_DATA[2]), .Y(n112) );
  NAND3X2M U162 ( .A(n134), .B(RX_D_VLD), .C(n113), .Y(n115) );
  NAND3X2M U163 ( .A(RX_D_VLD), .B(n136), .C(n137), .Y(n121) );
  NOR3X2M U164 ( .A(cur_state[0]), .B(cur_state[4]), .C(cur_state[3]), .Y(n137) );
  XNOR2X2M U165 ( .A(n85), .B(cur_state[1]), .Y(n136) );
  OAI22X1M U166 ( .A0(n189), .A1(n74), .B0(n138), .B1(n69), .Y(n172) );
  OAI22X1M U167 ( .A0(n92), .A1(n74), .B0(n138), .B1(n66), .Y(n171) );
  OAI22X1M U168 ( .A0(n93), .A1(n74), .B0(n138), .B1(n67), .Y(n170) );
  OAI22X1M U169 ( .A0(n94), .A1(n74), .B0(n138), .B1(n68), .Y(n169) );
  OAI22X1M U170 ( .A0(n189), .A1(n115), .B0(n75), .B1(n49), .Y(n168) );
  OAI22X1M U171 ( .A0(n88), .A1(n115), .B0(n75), .B1(n42), .Y(n167) );
  OAI22X1M U172 ( .A0(n89), .A1(n115), .B0(n75), .B1(n43), .Y(n166) );
  OAI22X1M U173 ( .A0(n90), .A1(n115), .B0(n75), .B1(n44), .Y(n165) );
  OAI22X1M U174 ( .A0(n91), .A1(n115), .B0(n75), .B1(n45), .Y(n164) );
  OAI22X1M U175 ( .A0(n92), .A1(n115), .B0(n75), .B1(n46), .Y(n163) );
  OAI22X1M U176 ( .A0(n93), .A1(n115), .B0(n75), .B1(n47), .Y(n162) );
  OAI22X1M U177 ( .A0(n94), .A1(n115), .B0(n75), .B1(n48), .Y(n161) );
  OAI22X1M U178 ( .A0(n189), .A1(n121), .B0(n82), .B1(n41), .Y(n160) );
  OAI22X1M U179 ( .A0(n92), .A1(n121), .B0(n82), .B1(n38), .Y(n159) );
  OAI22X1M U180 ( .A0(n93), .A1(n121), .B0(n82), .B1(n39), .Y(n158) );
  OAI22X1M U181 ( .A0(n94), .A1(n121), .B0(n82), .B1(n40), .Y(n157) );
  INVX2M U182 ( .A(OUT_Valid), .Y(n87) );
  INVX2M U183 ( .A(RdData_Valid), .Y(n86) );
  NOR4X1M U184 ( .A(n89), .B(n93), .C(RX_P_DATA[1]), .D(RX_P_DATA[5]), .Y(n130) );
  INVX2M U185 ( .A(RX_P_DATA[2]), .Y(n93) );
  INVX2M U186 ( .A(RX_P_DATA[0]), .Y(n189) );
  INVX2M U187 ( .A(RX_P_DATA[1]), .Y(n94) );
  INVX2M U188 ( .A(RX_P_DATA[6]), .Y(n89) );
  NAND3X2M U189 ( .A(RX_P_DATA[0]), .B(n130), .C(RX_P_DATA[4]), .Y(n109) );
  INVX2M U190 ( .A(RX_P_DATA[5]), .Y(n90) );
  INVX2M U191 ( .A(RX_P_DATA[3]), .Y(n92) );
  INVX2M U192 ( .A(RX_P_DATA[4]), .Y(n91) );
  INVX2M U193 ( .A(RX_P_DATA[7]), .Y(n88) );
  NAND4X2M U194 ( .A(n98), .B(n108), .C(n131), .D(n76), .Y(CLK_EN) );
  INVXLM U195 ( .A(test_se), .Y(n226) );
  INVXLM U196 ( .A(n226), .Y(n227) );
  INVXLM U197 ( .A(n226), .Y(n228) );
  INVXLM U198 ( .A(n226), .Y(n229) );
  SDFFRX2M \opB_reg_reg[7]  ( .D(n179), .SI(n205), .SE(n229), .CK(CLK), .RN(
        n71), .Q(test_so1), .QN(n58) );
endmodule


module Domain_1_TOP_test_1 ( RX_P_DATA, RX_D_VLD, REF_CLK, RST, FULL, 
        test_mode, WR_DATA, WR_INC, UART_CONF, REG3, test_si2, test_si1, 
        test_so3, test_so2, test_so1, test_se );
  input [7:0] RX_P_DATA;
  output [7:0] WR_DATA;
  output [7:0] UART_CONF;
  output [7:0] REG3;
  input RX_D_VLD, REF_CLK, RST, FULL, test_mode, test_si2, test_si1, test_se;
  output WR_INC, test_so3, test_so2, test_so1;
  wire   CLK_EN_O, GATED_CLK, EN, OUT_Valid, WrEn, RdEn, RdData_Valid, CLK_EN,
         n1, n2, n6;
  wire   [7:0] REG0;
  wire   [7:0] REG1;
  wire   [3:0] ALU_FUN;
  wire   [15:0] ALU_OUT;
  wire   [3:0] Address;
  wire   [7:0] WrData;
  wire   [7:0] RdData;

  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
  OR2X2M U3 ( .A(CLK_EN), .B(test_mode), .Y(CLK_EN_O) );
  Clock_Gating Clock_Gating_U0 ( .CLK_EN(CLK_EN_O), .CLK(REF_CLK), .GATED_CLK(
        GATED_CLK) );
  ALU_test_1 ALU_U1 ( .CLK(GATED_CLK), .RST(n1), .A(REG0), .B(REG1), .ALU_FUN(
        ALU_FUN), .Enable(EN), .ALU_OUT(ALU_OUT), .OUT_VALID(OUT_Valid), 
        .test_si(RX_P_DATA[7]), .test_se(test_se) );
  RegFile_test_1 RegFile_U2 ( .CLK(REF_CLK), .RST(n1), .Address(Address), 
        .WrEn(WrEn), .RdEn(RdEn), .WrData(WrData), .RdData(RdData), 
        .RdData_Valid(RdData_Valid), .REG0(REG0), .REG1(REG1), .REG2(UART_CONF), .REG3(REG3), .test_si2(test_si1), .test_si1(OUT_Valid), .test_so2(n6), 
        .test_so1(test_so1), .test_se(test_se) );
  SYS_CTRL_test_1 SYS_CTRL_U3 ( .CLK(REF_CLK), .RST(n1), .ALU_OUT(ALU_OUT), 
        .FULL(FULL), .OUT_Valid(OUT_Valid), .RdData(RdData), .RdData_Valid(
        RdData_Valid), .RX_P_DATA(RX_P_DATA), .RX_D_VLD(RX_D_VLD), .ALU_FUN(
        ALU_FUN), .WR_INC(WR_INC), .WR_DATA(WR_DATA), .EN(EN), .CLK_EN(CLK_EN), 
        .Address(Address), .WrEn(WrEn), .RdEn(RdEn), .WrData(WrData), 
        .test_si2(test_si2), .test_si1(n6), .test_so2(test_so3), .test_so1(
        test_so2), .test_se(test_se) );
endmodule


module FSM_TX_test_1 ( Data_Valid, ser_done, PAR_EN, CLK, RST, busy, ser_en, 
        mux_sel, test_si, test_so, test_se );
  output [1:0] mux_sel;
  input Data_Valid, ser_done, PAR_EN, CLK, RST, test_si, test_se;
  output busy, ser_en, test_so;
  wire   n6, n7, n8, n9, n10, n11, n4, n5;
  wire   [2:0] cur_state;
  wire   [2:0] next_state;
  assign test_so = cur_state[2];

  SDFFRQX2M \cur_state_reg[2]  ( .D(next_state[2]), .SI(cur_state[1]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(cur_state[2]) );
  SDFFRQX2M \cur_state_reg[1]  ( .D(next_state[1]), .SI(cur_state[0]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(cur_state[1]) );
  SDFFRQX2M \cur_state_reg[0]  ( .D(next_state[0]), .SI(test_si), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(cur_state[0]) );
  OR2X2M U6 ( .A(n11), .B(next_state[1]), .Y(busy) );
  NOR2X2M U7 ( .A(n5), .B(n4), .Y(n11) );
  NAND2X2M U8 ( .A(n6), .B(n8), .Y(ser_en) );
  NAND2X2M U9 ( .A(n6), .B(n7), .Y(mux_sel[1]) );
  NAND2BX2M U10 ( .AN(ser_en), .B(n7), .Y(next_state[1]) );
  NAND2BX2M U11 ( .AN(cur_state[0]), .B(n11), .Y(n7) );
  NAND3X2M U12 ( .A(cur_state[0]), .B(n5), .C(cur_state[1]), .Y(n6) );
  NAND3X2M U13 ( .A(n4), .B(n5), .C(cur_state[0]), .Y(n8) );
  OAI2B1X2M U14 ( .A1N(ser_done), .A0(n6), .B0(n7), .Y(next_state[2]) );
  INVX2M U15 ( .A(cur_state[2]), .Y(n5) );
  NAND2X2M U16 ( .A(cur_state[0]), .B(n5), .Y(mux_sel[0]) );
  NAND3X2M U17 ( .A(n7), .B(n8), .C(n9), .Y(next_state[0]) );
  AOI32X1M U18 ( .A0(n4), .A1(n5), .A2(Data_Valid), .B0(n10), .B1(cur_state[0]), .Y(n9) );
  AOI21X2M U19 ( .A0(PAR_EN), .A1(ser_done), .B0(cur_state[2]), .Y(n10) );
  INVX2M U20 ( .A(cur_state[1]), .Y(n4) );
endmodule


module serializer_TX_test_1 ( P_DATA, ser_en, CLK, RST, ser_data, ser_done, 
        test_si, test_se );
  input [7:0] P_DATA;
  input ser_en, CLK, RST, test_si, test_se;
  output ser_data, ser_done;
  wire   Counter_Done, N10, N11, N12, N13, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n15, n16, n17, n18, n19, n20, n50, n51;
  wire   [3:0] Counter;
  wire   [7:0] P_DATA_Hold;

  SDFFRQX2M \P_DATA_Hold_reg[6]  ( .D(n40), .SI(P_DATA_Hold[5]), .SE(n51), 
        .CK(CLK), .RN(RST), .Q(P_DATA_Hold[6]) );
  SDFFRQX2M \P_DATA_Hold_reg[5]  ( .D(n41), .SI(P_DATA_Hold[4]), .SE(n51), 
        .CK(CLK), .RN(RST), .Q(P_DATA_Hold[5]) );
  SDFFRQX2M \P_DATA_Hold_reg[4]  ( .D(n42), .SI(P_DATA_Hold[3]), .SE(n51), 
        .CK(CLK), .RN(RST), .Q(P_DATA_Hold[4]) );
  SDFFRQX2M \P_DATA_Hold_reg[3]  ( .D(n43), .SI(P_DATA_Hold[2]), .SE(n51), 
        .CK(CLK), .RN(RST), .Q(P_DATA_Hold[3]) );
  SDFFRQX2M \P_DATA_Hold_reg[2]  ( .D(n44), .SI(P_DATA_Hold[1]), .SE(n51), 
        .CK(CLK), .RN(RST), .Q(P_DATA_Hold[2]) );
  SDFFRQX2M \P_DATA_Hold_reg[1]  ( .D(n45), .SI(P_DATA_Hold[0]), .SE(n51), 
        .CK(CLK), .RN(RST), .Q(P_DATA_Hold[1]) );
  SDFFRQX2M \P_DATA_Hold_reg[0]  ( .D(n39), .SI(Counter[3]), .SE(n51), .CK(CLK), .RN(RST), .Q(P_DATA_Hold[0]) );
  SDFFRQX2M Counter_Done_reg ( .D(n46), .SI(test_si), .SE(n51), .CK(CLK), .RN(
        RST), .Q(Counter_Done) );
  SDFFRQX2M ser_data_reg ( .D(n38), .SI(P_DATA_Hold[6]), .SE(n51), .CK(CLK), 
        .RN(RST), .Q(ser_data) );
  SDFFRQX2M ser_done_reg ( .D(n47), .SI(ser_data), .SE(n51), .CK(CLK), .RN(RST), .Q(ser_done) );
  SDFFRQX2M \Counter_reg[2]  ( .D(N12), .SI(Counter[1]), .SE(n51), .CK(CLK), 
        .RN(RST), .Q(Counter[2]) );
  SDFFRQX2M \Counter_reg[1]  ( .D(N11), .SI(Counter[0]), .SE(n51), .CK(CLK), 
        .RN(RST), .Q(Counter[1]) );
  SDFFRQX2M \Counter_reg[0]  ( .D(N10), .SI(Counter_Done), .SE(n51), .CK(CLK), 
        .RN(RST), .Q(Counter[0]) );
  SDFFRQX2M \Counter_reg[3]  ( .D(N13), .SI(Counter[2]), .SE(n51), .CK(CLK), 
        .RN(RST), .Q(Counter[3]) );
  AO21XLM U11 ( .A0(n17), .A1(Counter_Done), .B0(n20), .Y(n15) );
  NOR4X1M U18 ( .A(Counter[0]), .B(Counter[1]), .C(Counter[2]), .D(Counter[3]), 
        .Y(n31) );
  INVX2M U19 ( .A(ser_en), .Y(n20) );
  OAI32X1M U20 ( .A0(n36), .A1(n16), .A2(n18), .B0(n34), .B1(n19), .Y(N12) );
  NAND2X2M U21 ( .A(ser_en), .B(n19), .Y(n36) );
  NOR2X2M U22 ( .A(n17), .B(n15), .Y(n23) );
  NOR2X2M U23 ( .A(n15), .B(n31), .Y(n22) );
  NOR2X2M U24 ( .A(n20), .B(n33), .Y(n32) );
  AOI21X2M U25 ( .A0(n18), .A1(ser_en), .B0(N10), .Y(n34) );
  INVX2M U26 ( .A(n31), .Y(n17) );
  NOR4X1M U27 ( .A(n19), .B(n18), .C(n16), .D(Counter[3]), .Y(n33) );
  OAI2B2X1M U28 ( .A1N(Counter[3]), .A0(n34), .B0(n35), .B1(n20), .Y(N13) );
  AOI21X2M U29 ( .A0(Counter[3]), .A1(n19), .B0(n33), .Y(n35) );
  OAI2BB2X1M U30 ( .B0(n32), .B1(n20), .A0N(Counter_Done), .A1N(n32), .Y(n46)
         );
  OAI2BB2X1M U31 ( .B0(n32), .B1(n20), .A0N(ser_done), .A1N(n32), .Y(n47) );
  NOR2X2M U32 ( .A(n20), .B(Counter[0]), .Y(N10) );
  INVX2M U33 ( .A(Counter[2]), .Y(n19) );
  INVX2M U34 ( .A(Counter[0]), .Y(n16) );
  INVX2M U35 ( .A(Counter[1]), .Y(n18) );
  NOR2X2M U36 ( .A(n37), .B(n20), .Y(N11) );
  XNOR2X2M U37 ( .A(Counter[0]), .B(Counter[1]), .Y(n37) );
  OAI2BB1X2M U38 ( .A0N(ser_data), .A1N(n15), .B0(n21), .Y(n38) );
  AOI22X1M U39 ( .A0(P_DATA_Hold[0]), .A1(n22), .B0(P_DATA[0]), .B1(n23), .Y(
        n21) );
  OAI2BB1X2M U40 ( .A0N(n15), .A1N(P_DATA_Hold[0]), .B0(n24), .Y(n39) );
  AOI22X1M U41 ( .A0(P_DATA_Hold[1]), .A1(n22), .B0(P_DATA[1]), .B1(n23), .Y(
        n24) );
  OAI2BB1X2M U42 ( .A0N(n15), .A1N(P_DATA_Hold[1]), .B0(n30), .Y(n45) );
  AOI22X1M U43 ( .A0(P_DATA_Hold[2]), .A1(n22), .B0(P_DATA[2]), .B1(n23), .Y(
        n30) );
  OAI2BB1X2M U44 ( .A0N(n15), .A1N(P_DATA_Hold[2]), .B0(n29), .Y(n44) );
  AOI22X1M U45 ( .A0(P_DATA_Hold[3]), .A1(n22), .B0(P_DATA[3]), .B1(n23), .Y(
        n29) );
  OAI2BB1X2M U46 ( .A0N(n15), .A1N(P_DATA_Hold[3]), .B0(n28), .Y(n43) );
  AOI22X1M U47 ( .A0(P_DATA_Hold[4]), .A1(n22), .B0(P_DATA[4]), .B1(n23), .Y(
        n28) );
  OAI2BB1X2M U48 ( .A0N(n15), .A1N(P_DATA_Hold[4]), .B0(n27), .Y(n42) );
  AOI22X1M U49 ( .A0(P_DATA_Hold[5]), .A1(n22), .B0(P_DATA[5]), .B1(n23), .Y(
        n27) );
  OAI2BB1X2M U50 ( .A0N(n15), .A1N(P_DATA_Hold[5]), .B0(n26), .Y(n41) );
  AOI22X1M U51 ( .A0(P_DATA_Hold[6]), .A1(n22), .B0(P_DATA[6]), .B1(n23), .Y(
        n26) );
  OAI2BB1X2M U52 ( .A0N(n15), .A1N(P_DATA_Hold[6]), .B0(n25), .Y(n40) );
  NAND2X2M U53 ( .A(P_DATA[7]), .B(n23), .Y(n25) );
  INVXLM U54 ( .A(test_se), .Y(n50) );
  INVXLM U55 ( .A(n50), .Y(n51) );
endmodule


module MUX_TX_test_1 ( mux_sel, ser_data, par_bit, CLK, RST, TX_OUT, test_si, 
        test_se );
  input [1:0] mux_sel;
  input ser_data, par_bit, CLK, RST, test_si, test_se;
  output TX_OUT;
  wire   TX_INNER, n3, n4, n2;

  SDFFSQX2M TX_OUT_reg ( .D(TX_INNER), .SI(test_si), .SE(test_se), .CK(CLK), 
        .SN(RST), .Q(TX_OUT) );
  OAI21X2M U4 ( .A0(n3), .A1(n2), .B0(n4), .Y(TX_INNER) );
  NAND3X2M U5 ( .A(mux_sel[1]), .B(n2), .C(ser_data), .Y(n4) );
  NOR2BX2M U6 ( .AN(mux_sel[1]), .B(par_bit), .Y(n3) );
  INVX2M U7 ( .A(mux_sel[0]), .Y(n2) );
endmodule


module Parity_Calc_TX_test_1 ( P_DATA, Data_Valid, PAR_TYP, CLK, RST, par_bit, 
        test_si, test_se );
  input [7:0] P_DATA;
  input Data_Valid, PAR_TYP, CLK, RST, test_si, test_se;
  output par_bit;
  wire   par_bit_inner, n1, n2, n3, n4, n7, n9, n11, n13, n15, n17, n19, n21;
  wire   [7:0] P_DATA_Hold;

  SDFFRQX2M \P_DATA_Hold_reg[5]  ( .D(n17), .SI(P_DATA_Hold[4]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(P_DATA_Hold[5]) );
  SDFFRQX2M \P_DATA_Hold_reg[1]  ( .D(n9), .SI(P_DATA_Hold[0]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(P_DATA_Hold[1]) );
  SDFFRQX2M \P_DATA_Hold_reg[4]  ( .D(n15), .SI(P_DATA_Hold[3]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(P_DATA_Hold[4]) );
  SDFFRQX2M \P_DATA_Hold_reg[0]  ( .D(n7), .SI(test_si), .SE(test_se), .CK(CLK), .RN(RST), .Q(P_DATA_Hold[0]) );
  SDFFRQX2M \P_DATA_Hold_reg[6]  ( .D(n19), .SI(P_DATA_Hold[5]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(P_DATA_Hold[6]) );
  SDFFRQX2M \P_DATA_Hold_reg[2]  ( .D(n11), .SI(P_DATA_Hold[1]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(P_DATA_Hold[2]) );
  SDFFRQX2M \P_DATA_Hold_reg[7]  ( .D(n21), .SI(P_DATA_Hold[6]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(P_DATA_Hold[7]) );
  SDFFRQX2M \P_DATA_Hold_reg[3]  ( .D(n13), .SI(P_DATA_Hold[2]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(P_DATA_Hold[3]) );
  SDFFRQX2M par_bit_reg ( .D(par_bit_inner), .SI(P_DATA_Hold[7]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(par_bit) );
  XOR3XLM U3 ( .A(n1), .B(n2), .C(PAR_TYP), .Y(par_bit_inner) );
  XOR3XLM U4 ( .A(P_DATA_Hold[1]), .B(P_DATA_Hold[0]), .C(n3), .Y(n2) );
  XOR3XLM U5 ( .A(P_DATA_Hold[5]), .B(P_DATA_Hold[4]), .C(n4), .Y(n1) );
  CLKXOR2X2M U6 ( .A(P_DATA_Hold[3]), .B(P_DATA_Hold[2]), .Y(n3) );
  AO2B2X2M U7 ( .B0(P_DATA[0]), .B1(Data_Valid), .A0(P_DATA_Hold[0]), .A1N(
        Data_Valid), .Y(n7) );
  AO2B2X2M U8 ( .B0(P_DATA[1]), .B1(Data_Valid), .A0(P_DATA_Hold[1]), .A1N(
        Data_Valid), .Y(n9) );
  AO2B2X2M U9 ( .B0(P_DATA[2]), .B1(Data_Valid), .A0(P_DATA_Hold[2]), .A1N(
        Data_Valid), .Y(n11) );
  AO2B2X2M U10 ( .B0(P_DATA[3]), .B1(Data_Valid), .A0(P_DATA_Hold[3]), .A1N(
        Data_Valid), .Y(n13) );
  AO2B2X2M U11 ( .B0(P_DATA[4]), .B1(Data_Valid), .A0(P_DATA_Hold[4]), .A1N(
        Data_Valid), .Y(n15) );
  AO2B2X2M U12 ( .B0(P_DATA[5]), .B1(Data_Valid), .A0(P_DATA_Hold[5]), .A1N(
        Data_Valid), .Y(n17) );
  AO2B2X2M U13 ( .B0(P_DATA[6]), .B1(Data_Valid), .A0(P_DATA_Hold[6]), .A1N(
        Data_Valid), .Y(n19) );
  AO2B2X2M U14 ( .B0(P_DATA[7]), .B1(Data_Valid), .A0(P_DATA_Hold[7]), .A1N(
        Data_Valid), .Y(n21) );
  CLKXOR2X2M U15 ( .A(P_DATA_Hold[7]), .B(P_DATA_Hold[6]), .Y(n4) );
endmodule


module Top_TX_test_1 ( Data_Valid, PAR_TYP, PAR_EN, P_DATA, CLK, RST, TX_OUT, 
        busy, test_si, test_so, test_se );
  input [7:0] P_DATA;
  input Data_Valid, PAR_TYP, PAR_EN, CLK, RST, test_si, test_se;
  output TX_OUT, busy, test_so;
  wire   ser_done, ser_en, ser_data, par_bit, n1, n2, n4;
  wire   [1:0] mux_sel;
  assign test_so = par_bit;

  INVX2M U5 ( .A(n2), .Y(n1) );
  INVX2M U6 ( .A(RST), .Y(n2) );
  FSM_TX_test_1 U1 ( .Data_Valid(Data_Valid), .ser_done(ser_done), .PAR_EN(
        PAR_EN), .CLK(CLK), .RST(n1), .busy(busy), .ser_en(ser_en), .mux_sel(
        mux_sel), .test_si(test_si), .test_so(n4), .test_se(test_se) );
  serializer_TX_test_1 U2 ( .P_DATA(P_DATA), .ser_en(ser_en), .CLK(CLK), .RST(
        n1), .ser_data(ser_data), .ser_done(ser_done), .test_si(n4), .test_se(
        test_se) );
  MUX_TX_test_1 U3 ( .mux_sel(mux_sel), .ser_data(ser_data), .par_bit(par_bit), 
        .CLK(CLK), .RST(n1), .TX_OUT(TX_OUT), .test_si(ser_done), .test_se(
        test_se) );
  Parity_Calc_TX_test_1 U4 ( .P_DATA(P_DATA), .Data_Valid(Data_Valid), 
        .PAR_TYP(PAR_TYP), .CLK(CLK), .RST(n1), .par_bit(par_bit), .test_si(
        TX_OUT), .test_se(test_se) );
endmodule


module FSM_RX_test_1 ( PAR_EN, RX_IN, strt_glitch, stp_err, par_err, 
        edge_cnt_done, CLK, RST, bit_cnt, enable, stp_en, deser_en, 
        strt_chk_en, par_chk_en, data_valid, data_sample_en, test_si, test_so, 
        test_se );
  input [0:3] bit_cnt;
  input PAR_EN, RX_IN, strt_glitch, stp_err, par_err, edge_cnt_done, CLK, RST,
         test_si, test_se;
  output enable, stp_en, deser_en, strt_chk_en, par_chk_en, data_valid,
         data_sample_en, test_so;
  wire   n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n5,
         n6, n7, n8, n9, n10, n11, n25;
  wire   [0:2] cur_state;
  wire   [0:2] nxt_state;
  assign test_so = cur_state[2];

  SDFFRQX2M \cur_state_reg[1]  ( .D(nxt_state[1]), .SI(cur_state[0]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(cur_state[1]) );
  SDFFRQX2M \cur_state_reg[2]  ( .D(nxt_state[2]), .SI(cur_state[1]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(cur_state[2]) );
  SDFFRQX2M \cur_state_reg[0]  ( .D(nxt_state[0]), .SI(test_si), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(cur_state[0]) );
  INVX2M U6 ( .A(par_err), .Y(n6) );
  NOR3X2M U7 ( .A(n25), .B(n9), .C(n11), .Y(data_valid) );
  INVX2M U8 ( .A(deser_en), .Y(n8) );
  INVX2M U9 ( .A(stp_en), .Y(n10) );
  INVX2M U10 ( .A(strt_glitch), .Y(n7) );
  NOR3X2M U11 ( .A(n9), .B(cur_state[0]), .C(n25), .Y(deser_en) );
  NOR3X2M U12 ( .A(n11), .B(cur_state[2]), .C(n25), .Y(stp_en) );
  OAI211X2M U13 ( .A0(n12), .A1(n8), .B0(n13), .C0(n14), .Y(nxt_state[2]) );
  NOR4BBX1M U14 ( .AN(bit_cnt[3]), .BN(bit_cnt[0]), .C(bit_cnt[2]), .D(
        bit_cnt[1]), .Y(n12) );
  OAI21X2M U15 ( .A0(n5), .A1(n7), .B0(strt_chk_en), .Y(n13) );
  AOI32X1M U16 ( .A0(n25), .A1(n9), .A2(n15), .B0(n16), .B1(n17), .Y(n14) );
  NOR3X2M U17 ( .A(cur_state[0]), .B(cur_state[2]), .C(n25), .Y(par_chk_en) );
  NOR3X2M U18 ( .A(cur_state[0]), .B(cur_state[1]), .C(n9), .Y(strt_chk_en) );
  OAI31X1M U19 ( .A0(n22), .A1(n8), .A2(n23), .B0(n24), .Y(nxt_state[0]) );
  NAND2X2M U20 ( .A(bit_cnt[0]), .B(bit_cnt[3]), .Y(n23) );
  OR3X2M U21 ( .A(PAR_EN), .B(bit_cnt[1]), .C(bit_cnt[2]), .Y(n22) );
  AOI32X1M U22 ( .A0(edge_cnt_done), .A1(n6), .A2(par_chk_en), .B0(stp_en), 
        .B1(n19), .Y(n24) );
  NOR4BX1M U23 ( .AN(bit_cnt[0]), .B(stp_err), .C(bit_cnt[1]), .D(n10), .Y(n17) );
  OAI2B11X2M U24 ( .A1N(n19), .A0(n10), .B0(n20), .C0(n21), .Y(nxt_state[1])
         );
  AOI31X2M U25 ( .A0(edge_cnt_done), .A1(n7), .A2(strt_chk_en), .B0(deser_en), 
        .Y(n21) );
  OAI21X2M U26 ( .A0(n5), .A1(n6), .B0(par_chk_en), .Y(n20) );
  INVX2M U27 ( .A(cur_state[1]), .Y(n25) );
  INVX2M U28 ( .A(cur_state[2]), .Y(n9) );
  INVX2M U29 ( .A(cur_state[0]), .Y(n11) );
  NOR3BX2M U30 ( .AN(bit_cnt[2]), .B(n18), .C(n5), .Y(n16) );
  CLKXOR2X2M U31 ( .A(bit_cnt[3]), .B(PAR_EN), .Y(n18) );
  INVX2M U32 ( .A(edge_cnt_done), .Y(n5) );
  NOR2X2M U33 ( .A(cur_state[0]), .B(RX_IN), .Y(n15) );
  NAND2X2M U34 ( .A(stp_err), .B(edge_cnt_done), .Y(n19) );
  BUFX2M U35 ( .A(data_sample_en), .Y(enable) );
  OR4X1M U36 ( .A(deser_en), .B(par_chk_en), .C(stp_en), .D(strt_chk_en), .Y(
        data_sample_en) );
endmodule


module data_sampling_test_1 ( edge_cnt, data_sample_en, RX_IN, CLK, RST, 
        prescale, sampled_data, test_si, test_se );
  input [0:4] edge_cnt;
  input [0:5] prescale;
  input data_sample_en, RX_IN, CLK, RST, test_si, test_se;
  output sampled_data;
  wire   sample_1, sample_2, n5, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n6, n7,
         n8, n9, n10, n11, n12, n35;

  SDFFRQX2M sample_2_reg ( .D(n33), .SI(sample_1), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(sample_2) );
  SDFFRQX2M sample_1_reg ( .D(n32), .SI(test_si), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(sample_1) );
  SDFFRX1M sample_3_reg ( .D(n31), .SI(sample_2), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(n35), .QN(n5) );
  SDFFRQX2M sampled_data_reg ( .D(n30), .SI(n35), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(sampled_data) );
  INVX2M U7 ( .A(RX_IN), .Y(n12) );
  OAI211X2M U8 ( .A0(n27), .A1(n28), .B0(n20), .C0(data_sample_en), .Y(n15) );
  NOR4X1M U9 ( .A(edge_cnt[1]), .B(edge_cnt[0]), .C(n22), .D(n9), .Y(n27) );
  NOR2X2M U10 ( .A(edge_cnt[2]), .B(n29), .Y(n28) );
  AOI33X2M U11 ( .A0(n24), .A1(n8), .A2(edge_cnt[0]), .B0(n25), .B1(n7), .B2(
        edge_cnt[1]), .Y(n29) );
  NOR3X2M U12 ( .A(prescale[0]), .B(prescale[2]), .C(n11), .Y(n25) );
  NOR3X2M U13 ( .A(prescale[1]), .B(prescale[2]), .C(n10), .Y(n24) );
  OAI2BB2X1M U14 ( .B0(n12), .B1(n18), .A0N(n18), .A1N(sample_1), .Y(n32) );
  NAND4X2M U15 ( .A(n19), .B(n7), .C(n20), .D(n21), .Y(n18) );
  OAI32X1M U16 ( .A0(n22), .A1(edge_cnt[2]), .A2(edge_cnt[1]), .B0(n23), .B1(
        n9), .Y(n19) );
  AND3X2M U17 ( .A(edge_cnt[4]), .B(data_sample_en), .C(edge_cnt[3]), .Y(n21)
         );
  OAI2BB2X1M U18 ( .B0(n12), .B1(n26), .A0N(n26), .A1N(sample_2), .Y(n33) );
  OR3X2M U19 ( .A(edge_cnt[3]), .B(edge_cnt[4]), .C(n15), .Y(n26) );
  OAI2BB2X1M U20 ( .B0(n13), .B1(n14), .A0N(sampled_data), .A1N(n14), .Y(n30)
         );
  AOI21X2M U21 ( .A0(sample_2), .A1(sample_1), .B0(n16), .Y(n13) );
  NAND3BX2M U22 ( .AN(n15), .B(n6), .C(edge_cnt[3]), .Y(n14) );
  AOI2BB1X2M U23 ( .A0N(sample_2), .A1N(sample_1), .B0(n5), .Y(n16) );
  OAI2BB2X1M U24 ( .B0(n17), .B1(n5), .A0N(n17), .A1N(RX_IN), .Y(n31) );
  NOR3X2M U25 ( .A(n15), .B(edge_cnt[3]), .C(n6), .Y(n17) );
  INVX2M U26 ( .A(prescale[1]), .Y(n11) );
  INVX2M U27 ( .A(prescale[0]), .Y(n10) );
  INVX2M U28 ( .A(edge_cnt[1]), .Y(n8) );
  NOR3X2M U29 ( .A(prescale[5]), .B(prescale[4]), .C(prescale[3]), .Y(n20) );
  AOI22X1M U30 ( .A0(edge_cnt[1]), .A1(n24), .B0(n25), .B1(n8), .Y(n23) );
  NAND3X2M U31 ( .A(n10), .B(n11), .C(prescale[2]), .Y(n22) );
  INVX2M U32 ( .A(edge_cnt[2]), .Y(n9) );
  INVX2M U33 ( .A(edge_cnt[0]), .Y(n7) );
  INVX2M U34 ( .A(edge_cnt[4]), .Y(n6) );
endmodule


module desrializer_test_1 ( sampled_data, deser_en, edge_cnt_done, CLK, RST, 
        P_DATA, test_se );
  output [0:7] P_DATA;
  input sampled_data, deser_en, edge_cnt_done, CLK, RST, test_se;
  wire   Counter_done, N16, n10, n11, n12, n15, n17, n19, n21, n23, n25, n27,
         n29, n32, n34, n36, n38, n40, n42, n44, n46, n48, n50, n52, n1, n2,
         n3, n4, n5, n6, n7, n8, n9, n13, n16, n18, n20;
  wire   [0:3] Counter;
  wire   [0:7] DATA;

  SDFFRQX2M \Counter_reg[1]  ( .D(n32), .SI(Counter_done), .SE(n20), .CK(CLK), 
        .RN(RST), .Q(Counter[1]) );
  SDFFRQX2M \DATA_reg[7]  ( .D(n38), .SI(DATA[6]), .SE(n18), .CK(CLK), .RN(RST), .Q(DATA[7]) );
  SDFFRQX2M \Counter_reg[3]  ( .D(n36), .SI(Counter[2]), .SE(n20), .CK(CLK), 
        .RN(RST), .Q(Counter[3]) );
  SDFFRQX2M \DATA_reg[0]  ( .D(n52), .SI(Counter[3]), .SE(n18), .CK(CLK), .RN(
        RST), .Q(DATA[0]) );
  SDFFRQX2M \DATA_reg[1]  ( .D(n50), .SI(DATA[0]), .SE(n20), .CK(CLK), .RN(RST), .Q(DATA[1]) );
  SDFFRQX2M \DATA_reg[2]  ( .D(n48), .SI(DATA[1]), .SE(n18), .CK(CLK), .RN(RST), .Q(DATA[2]) );
  SDFFRQX2M \DATA_reg[3]  ( .D(n46), .SI(DATA[2]), .SE(n20), .CK(CLK), .RN(RST), .Q(DATA[3]) );
  SDFFRQX2M \DATA_reg[4]  ( .D(n44), .SI(DATA[3]), .SE(n18), .CK(CLK), .RN(RST), .Q(DATA[4]) );
  SDFFRQX2M \DATA_reg[5]  ( .D(n42), .SI(DATA[4]), .SE(n20), .CK(CLK), .RN(RST), .Q(DATA[5]) );
  SDFFRQX2M \DATA_reg[6]  ( .D(n40), .SI(DATA[5]), .SE(n18), .CK(CLK), .RN(RST), .Q(DATA[6]) );
  SDFFRQX2M Counter_done_reg ( .D(N16), .SI(sampled_data), .SE(n20), .CK(CLK), 
        .RN(RST), .Q(Counter_done) );
  SDFFRQX2M \Counter_reg[2]  ( .D(n34), .SI(Counter[1]), .SE(n18), .CK(CLK), 
        .RN(RST), .Q(Counter[2]) );
  SDFFRQX2M \P_DATA_reg[1]  ( .D(n27), .SI(P_DATA[0]), .SE(n20), .CK(CLK), 
        .RN(RST), .Q(P_DATA[1]) );
  SDFFRQX2M \P_DATA_reg[5]  ( .D(n19), .SI(P_DATA[4]), .SE(n18), .CK(CLK), 
        .RN(RST), .Q(P_DATA[5]) );
  SDFFRQX2M \P_DATA_reg[0]  ( .D(n29), .SI(DATA[7]), .SE(n20), .CK(CLK), .RN(
        RST), .Q(P_DATA[0]) );
  SDFFRQX2M \P_DATA_reg[4]  ( .D(n21), .SI(P_DATA[3]), .SE(n18), .CK(CLK), 
        .RN(RST), .Q(P_DATA[4]) );
  SDFFRQX2M \P_DATA_reg[3]  ( .D(n23), .SI(P_DATA[2]), .SE(n20), .CK(CLK), 
        .RN(RST), .Q(P_DATA[3]) );
  SDFFRQX2M \P_DATA_reg[7]  ( .D(n15), .SI(P_DATA[6]), .SE(n18), .CK(CLK), 
        .RN(RST), .Q(P_DATA[7]) );
  SDFFRQX2M \P_DATA_reg[2]  ( .D(n25), .SI(P_DATA[1]), .SE(n20), .CK(CLK), 
        .RN(RST), .Q(P_DATA[2]) );
  SDFFRQX2M \P_DATA_reg[6]  ( .D(n17), .SI(P_DATA[5]), .SE(n18), .CK(CLK), 
        .RN(RST), .Q(P_DATA[6]) );
  INVX2M U3 ( .A(n12), .Y(n1) );
  OAI22X1M U4 ( .A0(n1), .A1(n9), .B0(n8), .B1(n12), .Y(n38) );
  OAI22X1M U5 ( .A0(n1), .A1(n8), .B0(n7), .B1(n12), .Y(n40) );
  OAI22X1M U6 ( .A0(n1), .A1(n7), .B0(n6), .B1(n12), .Y(n42) );
  OAI22X1M U7 ( .A0(n1), .A1(n6), .B0(n5), .B1(n12), .Y(n44) );
  OAI22X1M U8 ( .A0(n1), .A1(n5), .B0(n4), .B1(n12), .Y(n46) );
  OAI22X1M U9 ( .A0(n1), .A1(n4), .B0(n3), .B1(n12), .Y(n48) );
  OAI22X1M U10 ( .A0(n1), .A1(n3), .B0(n2), .B1(n12), .Y(n50) );
  NAND2X2M U11 ( .A(edge_cnt_done), .B(deser_en), .Y(n12) );
  XNOR2X2M U12 ( .A(Counter[1]), .B(n10), .Y(n32) );
  NAND2X2M U13 ( .A(Counter[2]), .B(n11), .Y(n10) );
  AND2X2M U14 ( .A(Counter[3]), .B(n1), .Y(n11) );
  CLKXOR2X2M U15 ( .A(Counter[2]), .B(n11), .Y(n34) );
  XNOR2X2M U16 ( .A(Counter[3]), .B(n12), .Y(n36) );
  INVX2M U17 ( .A(Counter_done), .Y(n13) );
  OAI2BB2X1M U18 ( .B0(n13), .B1(n9), .A0N(P_DATA[7]), .A1N(n13), .Y(n15) );
  OAI2BB2X1M U19 ( .B0(n13), .B1(n8), .A0N(P_DATA[6]), .A1N(n13), .Y(n17) );
  OAI2BB2X1M U20 ( .B0(n13), .B1(n7), .A0N(P_DATA[5]), .A1N(n13), .Y(n19) );
  OAI2BB2X1M U21 ( .B0(n13), .B1(n6), .A0N(P_DATA[4]), .A1N(n13), .Y(n21) );
  OAI2BB2X1M U22 ( .B0(n13), .B1(n5), .A0N(P_DATA[3]), .A1N(n13), .Y(n23) );
  OAI2BB2X1M U23 ( .B0(n13), .B1(n4), .A0N(P_DATA[2]), .A1N(n13), .Y(n25) );
  OAI2BB2X1M U24 ( .B0(n13), .B1(n3), .A0N(P_DATA[1]), .A1N(n13), .Y(n27) );
  OAI2BB2X1M U25 ( .B0(n13), .B1(n2), .A0N(P_DATA[0]), .A1N(n13), .Y(n29) );
  OAI2BB2X1M U26 ( .B0(n1), .B1(n2), .A0N(sampled_data), .A1N(n1), .Y(n52) );
  INVX2M U27 ( .A(DATA[0]), .Y(n2) );
  INVX2M U28 ( .A(DATA[6]), .Y(n8) );
  INVX2M U29 ( .A(DATA[5]), .Y(n7) );
  INVX2M U30 ( .A(DATA[4]), .Y(n6) );
  INVX2M U31 ( .A(DATA[3]), .Y(n5) );
  INVX2M U32 ( .A(DATA[2]), .Y(n4) );
  INVX2M U33 ( .A(DATA[1]), .Y(n3) );
  AND3X2M U34 ( .A(Counter[1]), .B(n11), .C(Counter[2]), .Y(N16) );
  INVX2M U35 ( .A(DATA[7]), .Y(n9) );
  INVXLM U56 ( .A(test_se), .Y(n16) );
  INVXLM U57 ( .A(n16), .Y(n18) );
  INVXLM U58 ( .A(n16), .Y(n20) );
endmodule


module edge_bit_counter_test_1 ( enable, PAR_EN, CLK, RST, prescale, 
        edge_cnt_done, edge_cnt, bit_cnt, test_si, test_se );
  input [0:5] prescale;
  output [0:4] edge_cnt;
  output [0:3] bit_cnt;
  input enable, PAR_EN, CLK, RST, test_si, test_se;
  output edge_cnt_done;
  wire   N27, N28, N29, N30, N31, N32, N36, N37, N38, N45, N46, N47, N48, N49,
         N50, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, \add_56/carry[4] , \add_56/carry[3] ,
         \add_56/carry[2] , n1, n2, n13, n14, n15, n16, n17, n18, n19, n20,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48;

  SDFFRQX2M \bit_cnt_reg[1]  ( .D(n34), .SI(bit_cnt[0]), .SE(test_se), .CK(CLK), .RN(RST), .Q(bit_cnt[1]) );
  SDFFRQX2M \bit_cnt_reg[0]  ( .D(n33), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(bit_cnt[0]) );
  SDFFRQX2M \bit_cnt_reg[2]  ( .D(n35), .SI(bit_cnt[1]), .SE(test_se), .CK(CLK), .RN(RST), .Q(bit_cnt[2]) );
  SDFFRQX2M \bit_cnt_reg[3]  ( .D(n36), .SI(bit_cnt[2]), .SE(test_se), .CK(CLK), .RN(RST), .Q(bit_cnt[3]) );
  SDFFRQX2M edge_cnt_done_reg ( .D(N50), .SI(bit_cnt[3]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(edge_cnt_done) );
  SDFFRQX2M \edge_cnt_reg[4]  ( .D(N45), .SI(edge_cnt[3]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(edge_cnt[4]) );
  SDFFRQX2M \edge_cnt_reg[0]  ( .D(N49), .SI(edge_cnt_done), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(edge_cnt[0]) );
  SDFFRQX2M \edge_cnt_reg[2]  ( .D(N47), .SI(edge_cnt[1]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(edge_cnt[2]) );
  SDFFRQX2M \edge_cnt_reg[3]  ( .D(N46), .SI(edge_cnt[2]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(edge_cnt[3]) );
  SDFFRQX2M \edge_cnt_reg[1]  ( .D(N48), .SI(edge_cnt[0]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(edge_cnt[1]) );
  INVX2M U7 ( .A(enable), .Y(n47) );
  NAND2X2M U14 ( .A(enable), .B(n1), .Y(n32) );
  OAI21X2M U15 ( .A0(n43), .A1(n29), .B0(n31), .Y(n36) );
  NAND4X2M U16 ( .A(enable), .B(n29), .C(n30), .D(n43), .Y(n31) );
  NOR2BX2M U17 ( .AN(N36), .B(n32), .Y(N46) );
  NOR2BX2M U18 ( .AN(N37), .B(n32), .Y(N47) );
  NOR2BX2M U19 ( .AN(N38), .B(n32), .Y(N48) );
  NOR2X2M U20 ( .A(n47), .B(n1), .Y(N50) );
  INVX2M U21 ( .A(n24), .Y(n42) );
  OAI32X1M U22 ( .A0(n46), .A1(n26), .A2(n47), .B0(n21), .B1(n27), .Y(n34) );
  AO21XLM U23 ( .A0(bit_cnt[0]), .A1(PAR_EN), .B0(bit_cnt[1]), .Y(n27) );
  NOR2X2M U24 ( .A(n24), .B(n43), .Y(n26) );
  OAI32X1M U25 ( .A0(n47), .A1(n45), .A2(n28), .B0(n44), .B1(n29), .Y(n35) );
  INVX2M U26 ( .A(n30), .Y(n45) );
  AOI32X1M U27 ( .A0(n29), .A1(n44), .A2(bit_cnt[3]), .B0(n42), .B1(n43), .Y(
        n28) );
  INVX2M U28 ( .A(bit_cnt[2]), .Y(n44) );
  OAI31X1M U29 ( .A0(n46), .A1(bit_cnt[0]), .A2(n21), .B0(n22), .Y(n33) );
  OAI211X2M U30 ( .A0(n23), .A1(n24), .B0(enable), .C0(bit_cnt[0]), .Y(n22) );
  CLKXOR2X2M U31 ( .A(n25), .B(bit_cnt[3]), .Y(n23) );
  NAND2X2M U32 ( .A(n46), .B(n48), .Y(n25) );
  NAND2BX2M U33 ( .AN(edge_cnt_done), .B(enable), .Y(n29) );
  OR4X1M U34 ( .A(n41), .B(n40), .C(n39), .D(n38), .Y(n1) );
  NAND3X2M U35 ( .A(bit_cnt[3]), .B(n42), .C(enable), .Y(n21) );
  OR2X2M U36 ( .A(prescale[4]), .B(prescale[5]), .Y(n13) );
  NOR2X2M U37 ( .A(n2), .B(n32), .Y(N49) );
  XNOR2X2M U38 ( .A(\add_56/carry[4] ), .B(edge_cnt[0]), .Y(n2) );
  NOR2X2M U39 ( .A(edge_cnt[4]), .B(n32), .Y(N45) );
  INVX2M U40 ( .A(prescale[2]), .Y(n17) );
  NAND4X2M U41 ( .A(bit_cnt[0]), .B(bit_cnt[2]), .C(n48), .D(n46), .Y(n30) );
  NAND2X2M U42 ( .A(edge_cnt_done), .B(bit_cnt[2]), .Y(n24) );
  INVX2M U43 ( .A(bit_cnt[3]), .Y(n43) );
  INVX2M U44 ( .A(bit_cnt[1]), .Y(n46) );
  INVX2M U45 ( .A(PAR_EN), .Y(n48) );
  ADDHX1M U46 ( .A(edge_cnt[3]), .B(edge_cnt[4]), .CO(\add_56/carry[2] ), .S(
        N36) );
  ADDHX1M U47 ( .A(edge_cnt[2]), .B(\add_56/carry[2] ), .CO(\add_56/carry[3] ), 
        .S(N37) );
  ADDHX1M U48 ( .A(edge_cnt[1]), .B(\add_56/carry[3] ), .CO(\add_56/carry[4] ), 
        .S(N38) );
  CLKINVX1M U49 ( .A(prescale[5]), .Y(N27) );
  OAI2BB1X1M U50 ( .A0N(prescale[5]), .A1N(prescale[4]), .B0(n13), .Y(N28) );
  NOR2X1M U51 ( .A(n13), .B(prescale[3]), .Y(n14) );
  AO21XLM U52 ( .A0(n13), .A1(prescale[3]), .B0(n14), .Y(N29) );
  CLKNAND2X2M U53 ( .A(n14), .B(n17), .Y(n15) );
  OAI21X1M U54 ( .A0(n14), .A1(n17), .B0(n15), .Y(N30) );
  XNOR2X1M U55 ( .A(prescale[1]), .B(n15), .Y(N31) );
  NOR2X1M U56 ( .A(prescale[1]), .B(n15), .Y(n16) );
  CLKXOR2X2M U57 ( .A(prescale[0]), .B(n16), .Y(N32) );
  NOR2BX1M U58 ( .AN(N27), .B(edge_cnt[4]), .Y(n18) );
  OAI2B2X1M U59 ( .A1N(edge_cnt[3]), .A0(n18), .B0(N28), .B1(n18), .Y(n37) );
  NOR2BX1M U60 ( .AN(edge_cnt[4]), .B(N27), .Y(n19) );
  OAI2B2X1M U61 ( .A1N(N28), .A0(n19), .B0(edge_cnt[3]), .B1(n19), .Y(n20) );
  NAND3BX1M U62 ( .AN(N32), .B(n37), .C(n20), .Y(n41) );
  CLKXOR2X2M U63 ( .A(N31), .B(edge_cnt[0]), .Y(n40) );
  CLKXOR2X2M U64 ( .A(N29), .B(edge_cnt[2]), .Y(n39) );
  CLKXOR2X2M U65 ( .A(N30), .B(edge_cnt[1]), .Y(n38) );
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

  NOR2BX4M U2 ( .AN(par_chk_en), .B(n1), .Y(par_err) );
  XOR3XLM U3 ( .A(n2), .B(n3), .C(n4), .Y(n1) );
  XNOR2X2M U4 ( .A(sampled_data), .B(PAR_TYP), .Y(n4) );
  XOR3XLM U5 ( .A(P_DATA[5]), .B(P_DATA[4]), .C(n5), .Y(n3) );
  XNOR2X2M U6 ( .A(P_DATA[7]), .B(P_DATA[6]), .Y(n5) );
  XOR3XLM U7 ( .A(P_DATA[1]), .B(P_DATA[0]), .C(n6), .Y(n2) );
  XNOR2X2M U8 ( .A(P_DATA[3]), .B(P_DATA[2]), .Y(n6) );
endmodule


module Start_Checker ( strt_chk_en, sampled_data, strt_glitch );
  input strt_chk_en, sampled_data;
  output strt_glitch;


  AND2X2M U2 ( .A(strt_chk_en), .B(sampled_data), .Y(strt_glitch) );
endmodule


module TOP_RX_test_1 ( RX_IN, PAR_EN, PAR_TYP, CLK, RST, prescale, stp_err, 
        par_err, strt_glitch, data_valid, P_DATA, test_si, test_so, test_se );
  input [0:5] prescale;
  output [0:7] P_DATA;
  input RX_IN, PAR_EN, PAR_TYP, CLK, RST, test_si, test_se;
  output stp_err, par_err, strt_glitch, data_valid, test_so;
  wire   enable, stp_en, deser_en, strt_chk_en, par_chk_en, data_sample_en,
         sampled_data, edge_cnt_done, n1, n2, n4;
  wire   [0:4] edge_cnt;
  wire   [0:3] bit_cnt;
  assign test_so = edge_cnt[4];

  INVX4M U8 ( .A(n2), .Y(n1) );
  INVX2M U9 ( .A(RST), .Y(n2) );
  FSM_RX_test_1 U1 ( .PAR_EN(PAR_EN), .RX_IN(RX_IN), .strt_glitch(strt_glitch), 
        .stp_err(stp_err), .par_err(par_err), .edge_cnt_done(edge_cnt_done), 
        .CLK(CLK), .RST(n1), .bit_cnt(bit_cnt), .enable(enable), .stp_en(
        stp_en), .deser_en(deser_en), .strt_chk_en(strt_chk_en), .par_chk_en(
        par_chk_en), .data_valid(data_valid), .data_sample_en(data_sample_en), 
        .test_si(test_si), .test_so(n4), .test_se(test_se) );
  data_sampling_test_1 U2 ( .edge_cnt(edge_cnt), .data_sample_en(
        data_sample_en), .RX_IN(RX_IN), .CLK(CLK), .RST(n1), .prescale(
        prescale), .sampled_data(sampled_data), .test_si(n4), .test_se(test_se) );
  desrializer_test_1 U3 ( .sampled_data(sampled_data), .deser_en(deser_en), 
        .edge_cnt_done(edge_cnt_done), .CLK(CLK), .RST(n1), .P_DATA(P_DATA), 
        .test_se(test_se) );
  edge_bit_counter_test_1 U4 ( .enable(enable), .PAR_EN(PAR_EN), .CLK(CLK), 
        .RST(n1), .prescale(prescale), .edge_cnt_done(edge_cnt_done), 
        .edge_cnt(edge_cnt), .bit_cnt(bit_cnt), .test_si(P_DATA[7]), .test_se(
        test_se) );
  Stop_Checker_RX U5 ( .stp_en(stp_en), .sampled_data(sampled_data), .stp_err(
        stp_err) );
  Parity_Checker U6 ( .par_chk_en(par_chk_en), .sampled_data(sampled_data), 
        .PAR_TYP(PAR_TYP), .P_DATA(P_DATA), .par_err(par_err) );
  Start_Checker U7 ( .strt_chk_en(strt_chk_en), .sampled_data(sampled_data), 
        .strt_glitch(strt_glitch) );
endmodule


module UART_TOP_test_1 ( TX_CLK, RX_CLK, RST, TX_IN_P, TX_IN_V, RX_IN_S, 
        prescale, PAR_TYP, PAR_EN, TX_OUT_S, RX_OUT_P, RX_OUT_V, busy, stp_err, 
        par_err, strt_glitch, test_si, test_so, test_se );
  input [7:0] TX_IN_P;
  input [0:5] prescale;
  output [0:7] RX_OUT_P;
  input TX_CLK, RX_CLK, RST, TX_IN_V, RX_IN_S, PAR_TYP, PAR_EN, test_si,
         test_se;
  output TX_OUT_S, RX_OUT_V, busy, stp_err, par_err, strt_glitch, test_so;
  wire   n1, n2, n5;

  INVX2M U2 ( .A(n2), .Y(n1) );
  INVX2M U3 ( .A(RST), .Y(n2) );
  Top_TX_test_1 U0 ( .Data_Valid(TX_IN_V), .PAR_TYP(PAR_TYP), .PAR_EN(PAR_EN), 
        .P_DATA(TX_IN_P), .CLK(TX_CLK), .RST(n1), .TX_OUT(TX_OUT_S), .busy(
        busy), .test_si(test_si), .test_so(n5), .test_se(test_se) );
  TOP_RX_test_1 U1 ( .RX_IN(RX_IN_S), .PAR_EN(PAR_EN), .PAR_TYP(PAR_TYP), 
        .CLK(RX_CLK), .RST(n1), .prescale(prescale), .stp_err(stp_err), 
        .par_err(par_err), .strt_glitch(strt_glitch), .data_valid(RX_OUT_V), 
        .P_DATA(RX_OUT_P), .test_si(n5), .test_so(test_so), .test_se(test_se)
         );
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


module ClkDiv_test_0 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, o_div_clk, 
        test_si, test_so, test_se );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en, test_si, test_se;
  output o_div_clk, test_so;
  wire   N2, N7, N8, N9, N10, N11, N12, N13, div_clk, duty, N19, N20, N21, N22,
         N23, N24, N25, N26, N44, N45, N46, N47, N48, N49, N50, N51, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n67, n68;
  wire   [6:0] half_cycle;
  wire   [7:0] counter;
  assign test_so = duty;

  SDFFRQX2M duty_reg ( .D(n41), .SI(div_clk), .SE(n68), .CK(i_ref_clk), .RN(
        i_rst_n), .Q(duty) );
  SDFFRQX2M div_clk_reg ( .D(n32), .SI(counter[7]), .SE(n68), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(div_clk) );
  SDFFRQX2M \counter_reg[5]  ( .D(n35), .SI(counter[4]), .SE(n68), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[5]) );
  SDFFRQX2M \counter_reg[6]  ( .D(n34), .SI(counter[5]), .SE(n68), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[6]) );
  SDFFRQX2M \counter_reg[7]  ( .D(n33), .SI(counter[6]), .SE(n68), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[7]) );
  SDFFRQX2M \counter_reg[0]  ( .D(n40), .SI(test_si), .SE(n68), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(counter[0]) );
  SDFFRQX2M \counter_reg[1]  ( .D(n39), .SI(counter[0]), .SE(n68), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[1]) );
  SDFFRQX2M \counter_reg[2]  ( .D(n38), .SI(counter[1]), .SE(n68), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[2]) );
  SDFFRQX2M \counter_reg[3]  ( .D(n37), .SI(counter[2]), .SE(n68), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[3]) );
  SDFFRQX2M \counter_reg[4]  ( .D(n36), .SI(counter[3]), .SE(n68), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[4]) );
  OR2X2M U6 ( .A(half_cycle[1]), .B(half_cycle[0]), .Y(n8) );
  NAND2BX2M U7 ( .AN(n63), .B(i_clk_en), .Y(n25) );
  INVX2M U8 ( .A(i_div_ratio[0]), .Y(n26) );
  INVX2M U13 ( .A(i_div_ratio[5]), .Y(n7) );
  MX2X2M U17 ( .A(i_ref_clk), .B(div_clk), .S0(N2), .Y(o_div_clk) );
  OR2X1M U18 ( .A(i_div_ratio[1]), .B(i_div_ratio[0]), .Y(n1) );
  OAI2BB1X1M U19 ( .A0N(i_div_ratio[0]), .A1N(i_div_ratio[1]), .B0(n1), .Y(N7)
         );
  OR2X1M U20 ( .A(n1), .B(i_div_ratio[2]), .Y(n2) );
  OAI2BB1X1M U21 ( .A0N(n1), .A1N(i_div_ratio[2]), .B0(n2), .Y(N8) );
  OR2X1M U22 ( .A(n2), .B(i_div_ratio[3]), .Y(n3) );
  OAI2BB1X1M U23 ( .A0N(n2), .A1N(i_div_ratio[3]), .B0(n3), .Y(N9) );
  NOR2X1M U24 ( .A(n3), .B(i_div_ratio[4]), .Y(n4) );
  AO21XLM U25 ( .A0(n3), .A1(i_div_ratio[4]), .B0(n4), .Y(N10) );
  CLKNAND2X2M U26 ( .A(n4), .B(n7), .Y(n5) );
  OAI21X1M U27 ( .A0(n4), .A1(n7), .B0(n5), .Y(N11) );
  XNOR2X1M U28 ( .A(i_div_ratio[6]), .B(n5), .Y(N12) );
  NOR2X1M U29 ( .A(i_div_ratio[6]), .B(n5), .Y(n6) );
  CLKXOR2X2M U30 ( .A(i_div_ratio[7]), .B(n6), .Y(N13) );
  CLKINVX1M U31 ( .A(half_cycle[0]), .Y(N19) );
  OAI2BB1X1M U32 ( .A0N(half_cycle[0]), .A1N(half_cycle[1]), .B0(n8), .Y(N20)
         );
  OR2X1M U33 ( .A(n8), .B(half_cycle[2]), .Y(n9) );
  OAI2BB1X1M U34 ( .A0N(n8), .A1N(half_cycle[2]), .B0(n9), .Y(N21) );
  OR2X1M U35 ( .A(n9), .B(half_cycle[3]), .Y(n20) );
  OAI2BB1X1M U36 ( .A0N(n9), .A1N(half_cycle[3]), .B0(n20), .Y(N22) );
  OR2X1M U37 ( .A(n20), .B(half_cycle[4]), .Y(n21) );
  OAI2BB1X1M U38 ( .A0N(n20), .A1N(half_cycle[4]), .B0(n21), .Y(N23) );
  XNOR2X1M U39 ( .A(half_cycle[5]), .B(n21), .Y(N24) );
  NOR3X1M U40 ( .A(half_cycle[5]), .B(half_cycle[6]), .C(n21), .Y(N26) );
  OAI21X1M U41 ( .A0(half_cycle[5]), .A1(n21), .B0(half_cycle[6]), .Y(n22) );
  NAND2BX1M U42 ( .AN(N26), .B(n22), .Y(N25) );
  MXI2X1M U43 ( .A(n23), .B(n24), .S0(duty), .Y(n41) );
  NOR4X1M U44 ( .A(n25), .B(n26), .C(n27), .D(n28), .Y(n24) );
  OR4X1M U45 ( .A(n26), .B(n25), .C(n29), .D(n30), .Y(n23) );
  AO22X1M U46 ( .A0(n25), .A1(counter[0]), .B0(N44), .B1(n31), .Y(n40) );
  AO22X1M U47 ( .A0(n25), .A1(counter[1]), .B0(N45), .B1(n31), .Y(n39) );
  AO22X1M U48 ( .A0(n25), .A1(counter[2]), .B0(N46), .B1(n31), .Y(n38) );
  AO22X1M U49 ( .A0(n25), .A1(counter[3]), .B0(N47), .B1(n31), .Y(n37) );
  AO22X1M U50 ( .A0(n25), .A1(counter[4]), .B0(N48), .B1(n31), .Y(n36) );
  AO22X1M U51 ( .A0(n25), .A1(counter[5]), .B0(N49), .B1(n31), .Y(n35) );
  AO22X1M U52 ( .A0(n25), .A1(counter[6]), .B0(N50), .B1(n31), .Y(n34) );
  OAI2BB2X1M U53 ( .B0(N2), .B1(n42), .A0N(N51), .A1N(n31), .Y(n33) );
  NOR2BX1M U54 ( .AN(n43), .B(n25), .Y(n31) );
  CLKXOR2X2M U55 ( .A(div_clk), .B(n44), .Y(n32) );
  NOR2X1M U56 ( .A(n43), .B(n25), .Y(n44) );
  MXI2X1M U57 ( .A(n45), .B(n46), .S0(n47), .Y(n43) );
  AND2X1M U58 ( .A(duty), .B(i_div_ratio[0]), .Y(n47) );
  NOR2X1M U59 ( .A(n27), .B(n28), .Y(n46) );
  NAND4X1M U60 ( .A(n48), .B(n49), .C(n50), .D(n42), .Y(n28) );
  XNOR2X1M U61 ( .A(half_cycle[0]), .B(counter[0]), .Y(n50) );
  XNOR2X1M U62 ( .A(half_cycle[1]), .B(counter[1]), .Y(n49) );
  XNOR2X1M U63 ( .A(half_cycle[2]), .B(counter[2]), .Y(n48) );
  NAND4X1M U64 ( .A(n51), .B(n52), .C(n53), .D(n54), .Y(n27) );
  XNOR2X1M U65 ( .A(half_cycle[3]), .B(counter[3]), .Y(n54) );
  XNOR2X1M U66 ( .A(half_cycle[4]), .B(counter[4]), .Y(n53) );
  XNOR2X1M U67 ( .A(half_cycle[5]), .B(counter[5]), .Y(n52) );
  XNOR2X1M U68 ( .A(half_cycle[6]), .B(counter[6]), .Y(n51) );
  NOR2X1M U69 ( .A(n30), .B(n29), .Y(n45) );
  NAND4X1M U70 ( .A(n55), .B(n56), .C(n57), .D(n58), .Y(n29) );
  XNOR2X1M U71 ( .A(counter[0]), .B(N19), .Y(n58) );
  XNOR2X1M U72 ( .A(counter[1]), .B(N20), .Y(n57) );
  XNOR2X1M U73 ( .A(counter[2]), .B(N21), .Y(n56) );
  CLKXOR2X2M U74 ( .A(n42), .B(N26), .Y(n55) );
  CLKINVX1M U75 ( .A(counter[7]), .Y(n42) );
  NAND4X1M U76 ( .A(n59), .B(n60), .C(n61), .D(n62), .Y(n30) );
  XNOR2X1M U77 ( .A(counter[3]), .B(N22), .Y(n62) );
  XNOR2X1M U78 ( .A(counter[4]), .B(N23), .Y(n61) );
  XNOR2X1M U79 ( .A(counter[5]), .B(N24), .Y(n60) );
  XNOR2X1M U80 ( .A(counter[6]), .B(N25), .Y(n59) );
  CLKMX2X2M U81 ( .A(N13), .B(i_div_ratio[7]), .S0(n26), .Y(half_cycle[6]) );
  CLKMX2X2M U82 ( .A(N12), .B(i_div_ratio[6]), .S0(n26), .Y(half_cycle[5]) );
  CLKMX2X2M U83 ( .A(N11), .B(i_div_ratio[5]), .S0(n26), .Y(half_cycle[4]) );
  CLKMX2X2M U84 ( .A(N10), .B(i_div_ratio[4]), .S0(n26), .Y(half_cycle[3]) );
  CLKMX2X2M U85 ( .A(N9), .B(i_div_ratio[3]), .S0(n26), .Y(half_cycle[2]) );
  CLKMX2X2M U86 ( .A(N8), .B(i_div_ratio[2]), .S0(n26), .Y(half_cycle[1]) );
  CLKMX2X2M U87 ( .A(N7), .B(i_div_ratio[1]), .S0(n26), .Y(half_cycle[0]) );
  CLKINVX1M U88 ( .A(n25), .Y(N2) );
  NOR4BX1M U89 ( .AN(n64), .B(i_div_ratio[2]), .C(i_div_ratio[3]), .D(
        i_div_ratio[1]), .Y(n63) );
  NOR4X1M U90 ( .A(i_div_ratio[7]), .B(i_div_ratio[6]), .C(i_div_ratio[5]), 
        .D(i_div_ratio[4]), .Y(n64) );
  INVXLM U91 ( .A(test_se), .Y(n67) );
  INVXLM U92 ( .A(n67), .Y(n68) );
  ClkDiv_0_DW01_inc_0 add_58 ( .A(counter), .SUM({N51, N50, N49, N48, N47, N46, 
        N45, N44}) );
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


module ClkDiv_test_1 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, o_div_clk, 
        test_si, test_so, test_se );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en, test_si, test_se;
  output o_div_clk, test_so;
  wire   N2, N7, N8, N9, N10, N11, N12, N13, div_clk, duty, N19, N20, N21, N22,
         N23, N24, N25, N26, N44, N45, N46, N47, N48, N49, N50, N51, n1, n2,
         n3, n4, n5, n6, n7, n8, n9, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n87, n88;
  wire   [6:0] half_cycle;
  wire   [7:0] counter;
  assign test_so = duty;

  SDFFRQX2M duty_reg ( .D(n65), .SI(div_clk), .SE(n88), .CK(i_ref_clk), .RN(
        i_rst_n), .Q(duty) );
  SDFFRQX2M div_clk_reg ( .D(n74), .SI(counter[7]), .SE(n88), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(div_clk) );
  SDFFRQX2M \counter_reg[7]  ( .D(n73), .SI(counter[6]), .SE(n88), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[7]) );
  SDFFRQX2M \counter_reg[0]  ( .D(n66), .SI(test_si), .SE(n88), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(counter[0]) );
  SDFFRQX2M \counter_reg[1]  ( .D(n67), .SI(counter[0]), .SE(n88), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[1]) );
  SDFFRQX2M \counter_reg[2]  ( .D(n68), .SI(counter[1]), .SE(n88), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[2]) );
  SDFFRQX2M \counter_reg[3]  ( .D(n69), .SI(counter[2]), .SE(n88), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[3]) );
  SDFFRQX2M \counter_reg[4]  ( .D(n70), .SI(counter[3]), .SE(n88), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[4]) );
  SDFFRQX2M \counter_reg[5]  ( .D(n71), .SI(counter[4]), .SE(n88), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[5]) );
  SDFFRQX2M \counter_reg[6]  ( .D(n72), .SI(counter[5]), .SE(n88), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[6]) );
  OR2X2M U6 ( .A(half_cycle[1]), .B(half_cycle[0]), .Y(n8) );
  INVX2M U7 ( .A(i_div_ratio[0]), .Y(n26) );
  NAND2BX2M U8 ( .AN(n63), .B(i_clk_en), .Y(n25) );
  INVX2M U13 ( .A(i_div_ratio[5]), .Y(n7) );
  MX2X2M U17 ( .A(i_ref_clk), .B(div_clk), .S0(N2), .Y(o_div_clk) );
  OR2X1M U18 ( .A(i_div_ratio[1]), .B(i_div_ratio[0]), .Y(n1) );
  OAI2BB1X1M U19 ( .A0N(i_div_ratio[0]), .A1N(i_div_ratio[1]), .B0(n1), .Y(N7)
         );
  OR2X1M U20 ( .A(n1), .B(i_div_ratio[2]), .Y(n2) );
  OAI2BB1X1M U21 ( .A0N(n1), .A1N(i_div_ratio[2]), .B0(n2), .Y(N8) );
  OR2X1M U22 ( .A(n2), .B(i_div_ratio[3]), .Y(n3) );
  OAI2BB1X1M U23 ( .A0N(n2), .A1N(i_div_ratio[3]), .B0(n3), .Y(N9) );
  NOR2X1M U24 ( .A(n3), .B(i_div_ratio[4]), .Y(n4) );
  AO21XLM U25 ( .A0(n3), .A1(i_div_ratio[4]), .B0(n4), .Y(N10) );
  CLKNAND2X2M U26 ( .A(n4), .B(n7), .Y(n5) );
  OAI21X1M U27 ( .A0(n4), .A1(n7), .B0(n5), .Y(N11) );
  XNOR2X1M U28 ( .A(i_div_ratio[6]), .B(n5), .Y(N12) );
  NOR2X1M U29 ( .A(i_div_ratio[6]), .B(n5), .Y(n6) );
  CLKXOR2X2M U30 ( .A(i_div_ratio[7]), .B(n6), .Y(N13) );
  CLKINVX1M U31 ( .A(half_cycle[0]), .Y(N19) );
  OAI2BB1X1M U32 ( .A0N(half_cycle[0]), .A1N(half_cycle[1]), .B0(n8), .Y(N20)
         );
  OR2X1M U33 ( .A(n8), .B(half_cycle[2]), .Y(n9) );
  OAI2BB1X1M U34 ( .A0N(n8), .A1N(half_cycle[2]), .B0(n9), .Y(N21) );
  OR2X1M U35 ( .A(n9), .B(half_cycle[3]), .Y(n20) );
  OAI2BB1X1M U36 ( .A0N(n9), .A1N(half_cycle[3]), .B0(n20), .Y(N22) );
  OR2X1M U37 ( .A(n20), .B(half_cycle[4]), .Y(n21) );
  OAI2BB1X1M U38 ( .A0N(n20), .A1N(half_cycle[4]), .B0(n21), .Y(N23) );
  XNOR2X1M U39 ( .A(half_cycle[5]), .B(n21), .Y(N24) );
  NOR3X1M U40 ( .A(half_cycle[5]), .B(half_cycle[6]), .C(n21), .Y(N26) );
  OAI21X1M U41 ( .A0(half_cycle[5]), .A1(n21), .B0(half_cycle[6]), .Y(n22) );
  NAND2BX1M U42 ( .AN(N26), .B(n22), .Y(N25) );
  MXI2X1M U43 ( .A(n23), .B(n24), .S0(duty), .Y(n65) );
  NOR4X1M U44 ( .A(n25), .B(n26), .C(n27), .D(n28), .Y(n24) );
  OR4X1M U45 ( .A(n26), .B(n25), .C(n29), .D(n30), .Y(n23) );
  AO22X1M U46 ( .A0(n25), .A1(counter[0]), .B0(N44), .B1(n31), .Y(n66) );
  AO22X1M U47 ( .A0(n25), .A1(counter[1]), .B0(N45), .B1(n31), .Y(n67) );
  AO22X1M U48 ( .A0(n25), .A1(counter[2]), .B0(N46), .B1(n31), .Y(n68) );
  AO22X1M U49 ( .A0(n25), .A1(counter[3]), .B0(N47), .B1(n31), .Y(n69) );
  AO22X1M U50 ( .A0(n25), .A1(counter[4]), .B0(N48), .B1(n31), .Y(n70) );
  AO22X1M U51 ( .A0(n25), .A1(counter[5]), .B0(N49), .B1(n31), .Y(n71) );
  AO22X1M U52 ( .A0(n25), .A1(counter[6]), .B0(N50), .B1(n31), .Y(n72) );
  OAI2BB2X1M U53 ( .B0(N2), .B1(n42), .A0N(N51), .A1N(n31), .Y(n73) );
  NOR2BX1M U54 ( .AN(n43), .B(n25), .Y(n31) );
  CLKXOR2X2M U55 ( .A(div_clk), .B(n44), .Y(n74) );
  NOR2X1M U56 ( .A(n43), .B(n25), .Y(n44) );
  MXI2X1M U57 ( .A(n45), .B(n46), .S0(n47), .Y(n43) );
  AND2X1M U58 ( .A(duty), .B(i_div_ratio[0]), .Y(n47) );
  NOR2X1M U59 ( .A(n27), .B(n28), .Y(n46) );
  NAND4X1M U60 ( .A(n48), .B(n49), .C(n50), .D(n42), .Y(n28) );
  XNOR2X1M U61 ( .A(half_cycle[0]), .B(counter[0]), .Y(n50) );
  XNOR2X1M U62 ( .A(half_cycle[1]), .B(counter[1]), .Y(n49) );
  XNOR2X1M U63 ( .A(half_cycle[2]), .B(counter[2]), .Y(n48) );
  NAND4X1M U64 ( .A(n51), .B(n52), .C(n53), .D(n54), .Y(n27) );
  XNOR2X1M U65 ( .A(half_cycle[3]), .B(counter[3]), .Y(n54) );
  XNOR2X1M U66 ( .A(half_cycle[4]), .B(counter[4]), .Y(n53) );
  XNOR2X1M U67 ( .A(half_cycle[5]), .B(counter[5]), .Y(n52) );
  XNOR2X1M U68 ( .A(half_cycle[6]), .B(counter[6]), .Y(n51) );
  NOR2X1M U69 ( .A(n30), .B(n29), .Y(n45) );
  NAND4X1M U70 ( .A(n55), .B(n56), .C(n57), .D(n58), .Y(n29) );
  XNOR2X1M U71 ( .A(counter[0]), .B(N19), .Y(n58) );
  XNOR2X1M U72 ( .A(counter[1]), .B(N20), .Y(n57) );
  XNOR2X1M U73 ( .A(counter[2]), .B(N21), .Y(n56) );
  CLKXOR2X2M U74 ( .A(n42), .B(N26), .Y(n55) );
  CLKINVX1M U75 ( .A(counter[7]), .Y(n42) );
  NAND4X1M U76 ( .A(n59), .B(n60), .C(n61), .D(n62), .Y(n30) );
  XNOR2X1M U77 ( .A(counter[3]), .B(N22), .Y(n62) );
  XNOR2X1M U78 ( .A(counter[4]), .B(N23), .Y(n61) );
  XNOR2X1M U79 ( .A(counter[5]), .B(N24), .Y(n60) );
  XNOR2X1M U80 ( .A(counter[6]), .B(N25), .Y(n59) );
  CLKMX2X2M U81 ( .A(N13), .B(i_div_ratio[7]), .S0(n26), .Y(half_cycle[6]) );
  CLKMX2X2M U82 ( .A(N12), .B(i_div_ratio[6]), .S0(n26), .Y(half_cycle[5]) );
  CLKMX2X2M U83 ( .A(N11), .B(i_div_ratio[5]), .S0(n26), .Y(half_cycle[4]) );
  CLKMX2X2M U84 ( .A(N10), .B(i_div_ratio[4]), .S0(n26), .Y(half_cycle[3]) );
  CLKMX2X2M U85 ( .A(N9), .B(i_div_ratio[3]), .S0(n26), .Y(half_cycle[2]) );
  CLKMX2X2M U86 ( .A(N8), .B(i_div_ratio[2]), .S0(n26), .Y(half_cycle[1]) );
  CLKMX2X2M U87 ( .A(N7), .B(i_div_ratio[1]), .S0(n26), .Y(half_cycle[0]) );
  CLKINVX1M U88 ( .A(n25), .Y(N2) );
  NOR4BX1M U89 ( .AN(n64), .B(i_div_ratio[2]), .C(i_div_ratio[3]), .D(
        i_div_ratio[1]), .Y(n63) );
  NOR4X1M U90 ( .A(i_div_ratio[7]), .B(i_div_ratio[6]), .C(i_div_ratio[5]), 
        .D(i_div_ratio[4]), .Y(n64) );
  INVXLM U91 ( .A(test_se), .Y(n87) );
  INVXLM U92 ( .A(n87), .Y(n88) );
  ClkDiv_1_DW01_inc_0 add_58 ( .A(counter), .SUM({N51, N50, N49, N48, N47, N46, 
        N45, N44}) );
endmodule


module PULSE_GEN_test_1 ( CLK, RST, LVL_SIG, PULSE_SIG, test_si, test_se );
  input CLK, RST, LVL_SIG, test_si, test_se;
  output PULSE_SIG;
  wire   LVL_SIG_OLD, pulse;

  SDFFRQX2M LVL_SIG_OLD_reg ( .D(LVL_SIG), .SI(test_si), .SE(test_se), .CK(CLK), .RN(RST), .Q(LVL_SIG_OLD) );
  SDFFRQX2M PULSE_SIG_reg ( .D(pulse), .SI(LVL_SIG_OLD), .SE(test_se), .CK(CLK), .RN(RST), .Q(PULSE_SIG) );
  NOR2BX2M U5 ( .AN(LVL_SIG), .B(LVL_SIG_OLD), .Y(pulse) );
endmodule


module prescale_MUX ( prescale, div_ratio_RX );
  input [0:5] prescale;
  output [7:0] div_ratio_RX;
  wire   n1, n2, n3;

  OAI21X2M U13 ( .A0(n1), .A1(n3), .B0(n2), .Y(div_ratio_RX[0]) );
  AND2X2M U14 ( .A(n1), .B(n2), .Y(div_ratio_RX[2]) );
  AND2X2M U15 ( .A(n2), .B(n3), .Y(div_ratio_RX[1]) );
  NOR3BX2M U16 ( .AN(prescale[1]), .B(prescale[0]), .C(prescale[2]), .Y(n3) );
  NOR3BX2M U17 ( .AN(prescale[2]), .B(prescale[0]), .C(prescale[1]), .Y(n1) );
  NOR3X2M U18 ( .A(prescale[5]), .B(prescale[4]), .C(prescale[3]), .Y(n2) );
  INVX2M U3 ( .A(1'b1), .Y(div_ratio_RX[7]) );
  INVX2M U5 ( .A(1'b1), .Y(div_ratio_RX[6]) );
  INVX2M U7 ( .A(1'b1), .Y(div_ratio_RX[5]) );
  INVX2M U9 ( .A(1'b1), .Y(div_ratio_RX[4]) );
  INVX2M U11 ( .A(1'b1), .Y(div_ratio_RX[3]) );
endmodule


module MUX_2X1_2 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module MUX_2X1_1 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module Domain_2_TOP_test_1 ( prescale, Div_Ratio, F_EMPTY, RD_DATA, RST, 
        UART_CLK, RX_IN, PAR_EN, PAR_TYP, test_mode, scan_clk, RD_INC, 
        RX_OUT_P, RX_OUT_V, TX_OUT_S, stp_err, par_err, strt_glitch, TX_CLK_O, 
        test_si, test_so, test_se );
  input [0:5] prescale;
  input [7:0] Div_Ratio;
  input [7:0] RD_DATA;
  output [0:7] RX_OUT_P;
  input F_EMPTY, RST, UART_CLK, RX_IN, PAR_EN, PAR_TYP, test_mode, scan_clk,
         test_si, test_se;
  output RD_INC, RX_OUT_V, TX_OUT_S, stp_err, par_err, strt_glitch, TX_CLK_O,
         test_so;
  wire   RX_CLK_O, busy, TX_CLK, RX_CLK, n1, n2, n3, n6, n7;
  wire   [7:0] div_ratio_RX;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4;

  INVX2M U2 ( .A(F_EMPTY), .Y(n1) );
  INVX2M U3 ( .A(n3), .Y(n2) );
  INVX2M U4 ( .A(RST), .Y(n3) );
  UART_TOP_test_1 UART_U0 ( .TX_CLK(TX_CLK_O), .RX_CLK(RX_CLK_O), .RST(n2), 
        .TX_IN_P(RD_DATA), .TX_IN_V(n1), .RX_IN_S(RX_IN), .prescale(prescale), 
        .PAR_TYP(PAR_TYP), .PAR_EN(PAR_EN), .TX_OUT_S(TX_OUT_S), .RX_OUT_P(
        RX_OUT_P), .RX_OUT_V(RX_OUT_V), .busy(busy), .stp_err(stp_err), 
        .par_err(par_err), .strt_glitch(strt_glitch), .test_si(RD_INC), 
        .test_so(test_so), .test_se(test_se) );
  ClkDiv_test_0 ClkDiv_U1_TX ( .i_ref_clk(UART_CLK), .i_rst_n(n2), .i_clk_en(
        1'b1), .i_div_ratio(Div_Ratio), .o_div_clk(TX_CLK), .test_si(test_si), 
        .test_so(n7), .test_se(test_se) );
  ClkDiv_test_1 ClkDiv_U2_RX ( .i_ref_clk(UART_CLK), .i_rst_n(n2), .i_clk_en(
        1'b1), .i_div_ratio({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, div_ratio_RX[2:0]}), 
        .o_div_clk(RX_CLK), .test_si(n7), .test_so(n6), .test_se(test_se) );
  PULSE_GEN_test_1 PULSE_GEN_U3 ( .CLK(TX_CLK_O), .RST(n2), .LVL_SIG(busy), 
        .PULSE_SIG(RD_INC), .test_si(n6), .test_se(test_se) );
  prescale_MUX prescale_MUX_U4 ( .prescale(prescale), .div_ratio_RX({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, div_ratio_RX[2:0]}) );
  MUX_2X1_2 MUX_2X1_U5 ( .IN_0(RX_CLK), .IN_1(scan_clk), .SEL(test_mode), 
        .OUT(RX_CLK_O) );
  MUX_2X1_1 MUX_2X1_U6 ( .IN_0(TX_CLK), .IN_1(scan_clk), .SEL(test_mode), 
        .OUT(TX_CLK_O) );
endmodule


module DATA_SYNC_test_1 ( unsync_bus, bus_enable, CLK, RST, sync_bus, 
        enable_pulse, test_si, test_se );
  input [0:7] unsync_bus;
  output [7:0] sync_bus;
  input bus_enable, CLK, RST, test_si, test_se;
  output enable_pulse;
  wire   enable_flop, n1, n4, n6, n8, n10, n12, n14, n16, n18, n22;
  wire   [0:1] stage;

  SDFFRQX2M enable_flop_reg ( .D(stage[1]), .SI(test_si), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(enable_flop) );
  SDFFRQX2M \stage_reg[1]  ( .D(stage[0]), .SI(stage[0]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(stage[1]) );
  SDFFRQX2M \sync_bus_reg[7]  ( .D(n18), .SI(sync_bus[6]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[7]) );
  SDFFRQX2M \sync_bus_reg[0]  ( .D(n4), .SI(stage[1]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(sync_bus[0]) );
  SDFFRQX2M \sync_bus_reg[3]  ( .D(n10), .SI(sync_bus[2]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[3]) );
  SDFFRQX2M \sync_bus_reg[5]  ( .D(n14), .SI(sync_bus[4]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[5]) );
  SDFFRQX2M \sync_bus_reg[1]  ( .D(n6), .SI(sync_bus[0]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[1]) );
  SDFFRQX2M \sync_bus_reg[2]  ( .D(n8), .SI(sync_bus[1]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[2]) );
  SDFFRQX2M \sync_bus_reg[6]  ( .D(n16), .SI(sync_bus[5]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[6]) );
  SDFFRQX2M \sync_bus_reg[4]  ( .D(n12), .SI(sync_bus[3]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[4]) );
  SDFFRQX2M enable_pulse_reg ( .D(n22), .SI(enable_flop), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(enable_pulse) );
  SDFFRQX2M \stage_reg[0]  ( .D(bus_enable), .SI(enable_pulse), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(stage[0]) );
  INVX2M U3 ( .A(n1), .Y(n22) );
  NAND2BX2M U4 ( .AN(enable_flop), .B(stage[1]), .Y(n1) );
  AO22X1M U5 ( .A0(unsync_bus[7]), .A1(n22), .B0(sync_bus[0]), .B1(n1), .Y(n4)
         );
  AO22X1M U6 ( .A0(unsync_bus[6]), .A1(n22), .B0(sync_bus[1]), .B1(n1), .Y(n6)
         );
  AO22X1M U7 ( .A0(unsync_bus[5]), .A1(n22), .B0(sync_bus[2]), .B1(n1), .Y(n8)
         );
  AO22X1M U8 ( .A0(unsync_bus[4]), .A1(n22), .B0(sync_bus[3]), .B1(n1), .Y(n10) );
  AO22X1M U9 ( .A0(unsync_bus[3]), .A1(n22), .B0(sync_bus[4]), .B1(n1), .Y(n12) );
  AO22X1M U10 ( .A0(unsync_bus[2]), .A1(n22), .B0(sync_bus[5]), .B1(n1), .Y(
        n14) );
  AO22X1M U11 ( .A0(unsync_bus[1]), .A1(n22), .B0(sync_bus[6]), .B1(n1), .Y(
        n16) );
  AO22X1M U12 ( .A0(unsync_bus[0]), .A1(n22), .B0(sync_bus[7]), .B1(n1), .Y(
        n18) );
endmodule


module RST_SYNC_0 ( RST, CLK, SYNC_RST );
  input RST, CLK;
  output SYNC_RST;

  wire   [1:0] stage;

  SDFFRQX2M SYNC_RST_reg ( .D(stage[1]), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        RST), .Q(SYNC_RST) );
  SDFFRQX2M \stage_reg[0]  ( .D(1'b1), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(RST), .Q(stage[0]) );
  SDFFRQX2M \stage_reg[1]  ( .D(stage[0]), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(stage[1]) );
endmodule


module RST_SYNC_1 ( RST, CLK, SYNC_RST );
  input RST, CLK;
  output SYNC_RST;

  wire   [1:0] stage;

  SDFFRQX2M SYNC_RST_reg ( .D(stage[1]), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        RST), .Q(SYNC_RST) );
  SDFFRQX2M \stage_reg[0]  ( .D(1'b1), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(RST), .Q(stage[0]) );
  SDFFRQX2M \stage_reg[1]  ( .D(stage[0]), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(stage[1]) );
endmodule


module FIFO_MEM_CNTRL_test_1 ( WR_DATA, W_CLK, W_RST, R_CLK, R_RST, wclken, 
        waddr, raddr, RD_DATA, test_si, test_se );
  input [7:0] WR_DATA;
  input [2:0] waddr;
  input [2:0] raddr;
  output [7:0] RD_DATA;
  input W_CLK, W_RST, R_CLK, R_RST, wclken, test_si, test_se;
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
         \FIFO_MEM[7][0] , N32, N33, N34, N35, N36, N37, N38, N39, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201,
         n202, n203, n204, n205, n206, n207, n210, n211, n212, n213, n214;
  assign N10 = raddr[0];
  assign N11 = raddr[1];
  assign N12 = raddr[2];

  SDFFRQX2M \FIFO_MEM_reg[0][7]  ( .D(n156), .SI(\FIFO_MEM[0][6] ), .SE(n211), 
        .CK(W_CLK), .RN(n192), .Q(\FIFO_MEM[0][7] ) );
  SDFFRQX2M \FIFO_MEM_reg[0][6]  ( .D(n155), .SI(\FIFO_MEM[0][5] ), .SE(n214), 
        .CK(W_CLK), .RN(n192), .Q(\FIFO_MEM[0][6] ) );
  SDFFRQX2M \FIFO_MEM_reg[0][5]  ( .D(n154), .SI(\FIFO_MEM[0][4] ), .SE(n213), 
        .CK(W_CLK), .RN(n192), .Q(\FIFO_MEM[0][5] ) );
  SDFFRQX2M \FIFO_MEM_reg[0][4]  ( .D(n153), .SI(\FIFO_MEM[0][3] ), .SE(n212), 
        .CK(W_CLK), .RN(n192), .Q(\FIFO_MEM[0][4] ) );
  SDFFRQX2M \FIFO_MEM_reg[0][3]  ( .D(n152), .SI(\FIFO_MEM[0][2] ), .SE(n211), 
        .CK(W_CLK), .RN(n192), .Q(\FIFO_MEM[0][3] ) );
  SDFFRQX2M \FIFO_MEM_reg[0][2]  ( .D(n151), .SI(\FIFO_MEM[0][1] ), .SE(n214), 
        .CK(W_CLK), .RN(n192), .Q(\FIFO_MEM[0][2] ) );
  SDFFRQX2M \FIFO_MEM_reg[0][1]  ( .D(n150), .SI(\FIFO_MEM[0][0] ), .SE(n213), 
        .CK(W_CLK), .RN(n192), .Q(\FIFO_MEM[0][1] ) );
  SDFFRQX2M \FIFO_MEM_reg[0][0]  ( .D(n149), .SI(test_si), .SE(n212), .CK(
        W_CLK), .RN(n192), .Q(\FIFO_MEM[0][0] ) );
  SDFFRQX2M \FIFO_MEM_reg[1][7]  ( .D(n148), .SI(\FIFO_MEM[1][6] ), .SE(n211), 
        .CK(W_CLK), .RN(n192), .Q(\FIFO_MEM[1][7] ) );
  SDFFRQX2M \FIFO_MEM_reg[1][6]  ( .D(n147), .SI(\FIFO_MEM[1][5] ), .SE(n214), 
        .CK(W_CLK), .RN(n192), .Q(\FIFO_MEM[1][6] ) );
  SDFFRQX2M \FIFO_MEM_reg[1][5]  ( .D(n146), .SI(\FIFO_MEM[1][4] ), .SE(n213), 
        .CK(W_CLK), .RN(n192), .Q(\FIFO_MEM[1][5] ) );
  SDFFRQX2M \FIFO_MEM_reg[1][4]  ( .D(n145), .SI(\FIFO_MEM[1][3] ), .SE(n212), 
        .CK(W_CLK), .RN(n192), .Q(\FIFO_MEM[1][4] ) );
  SDFFRQX2M \FIFO_MEM_reg[1][3]  ( .D(n144), .SI(\FIFO_MEM[1][2] ), .SE(n211), 
        .CK(W_CLK), .RN(n193), .Q(\FIFO_MEM[1][3] ) );
  SDFFRQX2M \FIFO_MEM_reg[1][2]  ( .D(n143), .SI(\FIFO_MEM[1][1] ), .SE(n214), 
        .CK(W_CLK), .RN(n193), .Q(\FIFO_MEM[1][2] ) );
  SDFFRQX2M \FIFO_MEM_reg[1][1]  ( .D(n142), .SI(\FIFO_MEM[1][0] ), .SE(n213), 
        .CK(W_CLK), .RN(n193), .Q(\FIFO_MEM[1][1] ) );
  SDFFRQX2M \FIFO_MEM_reg[1][0]  ( .D(n141), .SI(\FIFO_MEM[0][7] ), .SE(n212), 
        .CK(W_CLK), .RN(n193), .Q(\FIFO_MEM[1][0] ) );
  SDFFRQX2M \FIFO_MEM_reg[4][7]  ( .D(n124), .SI(\FIFO_MEM[4][6] ), .SE(n211), 
        .CK(W_CLK), .RN(n194), .Q(\FIFO_MEM[4][7] ) );
  SDFFRQX2M \FIFO_MEM_reg[4][6]  ( .D(n123), .SI(\FIFO_MEM[4][5] ), .SE(n214), 
        .CK(W_CLK), .RN(n194), .Q(\FIFO_MEM[4][6] ) );
  SDFFRQX2M \FIFO_MEM_reg[4][5]  ( .D(n122), .SI(\FIFO_MEM[4][4] ), .SE(n213), 
        .CK(W_CLK), .RN(n194), .Q(\FIFO_MEM[4][5] ) );
  SDFFRQX2M \FIFO_MEM_reg[4][4]  ( .D(n121), .SI(\FIFO_MEM[4][3] ), .SE(n212), 
        .CK(W_CLK), .RN(n194), .Q(\FIFO_MEM[4][4] ) );
  SDFFRQX2M \FIFO_MEM_reg[4][3]  ( .D(n120), .SI(\FIFO_MEM[4][2] ), .SE(n211), 
        .CK(W_CLK), .RN(n195), .Q(\FIFO_MEM[4][3] ) );
  SDFFRQX2M \FIFO_MEM_reg[4][2]  ( .D(n119), .SI(\FIFO_MEM[4][1] ), .SE(n214), 
        .CK(W_CLK), .RN(n195), .Q(\FIFO_MEM[4][2] ) );
  SDFFRQX2M \FIFO_MEM_reg[4][1]  ( .D(n118), .SI(\FIFO_MEM[4][0] ), .SE(n213), 
        .CK(W_CLK), .RN(n195), .Q(\FIFO_MEM[4][1] ) );
  SDFFRQX2M \FIFO_MEM_reg[4][0]  ( .D(n117), .SI(\FIFO_MEM[3][7] ), .SE(n212), 
        .CK(W_CLK), .RN(n195), .Q(\FIFO_MEM[4][0] ) );
  SDFFRQX2M \FIFO_MEM_reg[5][7]  ( .D(n116), .SI(\FIFO_MEM[5][6] ), .SE(n211), 
        .CK(W_CLK), .RN(n195), .Q(\FIFO_MEM[5][7] ) );
  SDFFRQX2M \FIFO_MEM_reg[5][6]  ( .D(n115), .SI(\FIFO_MEM[5][5] ), .SE(n214), 
        .CK(W_CLK), .RN(n195), .Q(\FIFO_MEM[5][6] ) );
  SDFFRQX2M \FIFO_MEM_reg[5][5]  ( .D(n114), .SI(\FIFO_MEM[5][4] ), .SE(n213), 
        .CK(W_CLK), .RN(n195), .Q(\FIFO_MEM[5][5] ) );
  SDFFRQX2M \FIFO_MEM_reg[5][4]  ( .D(n113), .SI(\FIFO_MEM[5][3] ), .SE(n212), 
        .CK(W_CLK), .RN(n195), .Q(\FIFO_MEM[5][4] ) );
  SDFFRQX2M \FIFO_MEM_reg[5][3]  ( .D(n112), .SI(\FIFO_MEM[5][2] ), .SE(n211), 
        .CK(W_CLK), .RN(n195), .Q(\FIFO_MEM[5][3] ) );
  SDFFRQX2M \FIFO_MEM_reg[5][2]  ( .D(n111), .SI(\FIFO_MEM[5][1] ), .SE(n214), 
        .CK(W_CLK), .RN(n195), .Q(\FIFO_MEM[5][2] ) );
  SDFFRQX2M \FIFO_MEM_reg[5][1]  ( .D(n110), .SI(\FIFO_MEM[5][0] ), .SE(n213), 
        .CK(W_CLK), .RN(n195), .Q(\FIFO_MEM[5][1] ) );
  SDFFRQX2M \FIFO_MEM_reg[5][0]  ( .D(n109), .SI(\FIFO_MEM[4][7] ), .SE(n212), 
        .CK(W_CLK), .RN(n195), .Q(\FIFO_MEM[5][0] ) );
  SDFFRQX2M \FIFO_MEM_reg[6][7]  ( .D(n108), .SI(\FIFO_MEM[6][6] ), .SE(n211), 
        .CK(W_CLK), .RN(n196), .Q(\FIFO_MEM[6][7] ) );
  SDFFRQX2M \FIFO_MEM_reg[6][6]  ( .D(n107), .SI(\FIFO_MEM[6][5] ), .SE(n214), 
        .CK(W_CLK), .RN(n196), .Q(\FIFO_MEM[6][6] ) );
  SDFFRQX2M \FIFO_MEM_reg[6][5]  ( .D(n106), .SI(\FIFO_MEM[6][4] ), .SE(n213), 
        .CK(W_CLK), .RN(n196), .Q(\FIFO_MEM[6][5] ) );
  SDFFRQX2M \FIFO_MEM_reg[6][4]  ( .D(n105), .SI(\FIFO_MEM[6][3] ), .SE(n212), 
        .CK(W_CLK), .RN(n196), .Q(\FIFO_MEM[6][4] ) );
  SDFFRQX2M \FIFO_MEM_reg[6][3]  ( .D(n104), .SI(\FIFO_MEM[6][2] ), .SE(n211), 
        .CK(W_CLK), .RN(n196), .Q(\FIFO_MEM[6][3] ) );
  SDFFRQX2M \FIFO_MEM_reg[6][2]  ( .D(n103), .SI(\FIFO_MEM[6][1] ), .SE(n214), 
        .CK(W_CLK), .RN(n196), .Q(\FIFO_MEM[6][2] ) );
  SDFFRQX2M \FIFO_MEM_reg[6][1]  ( .D(n102), .SI(\FIFO_MEM[6][0] ), .SE(n213), 
        .CK(W_CLK), .RN(n196), .Q(\FIFO_MEM[6][1] ) );
  SDFFRQX2M \FIFO_MEM_reg[6][0]  ( .D(n101), .SI(\FIFO_MEM[5][7] ), .SE(n212), 
        .CK(W_CLK), .RN(n196), .Q(\FIFO_MEM[6][0] ) );
  SDFFRQX2M \FIFO_MEM_reg[7][7]  ( .D(n100), .SI(\FIFO_MEM[7][6] ), .SE(n211), 
        .CK(W_CLK), .RN(n196), .Q(\FIFO_MEM[7][7] ) );
  SDFFRQX2M \FIFO_MEM_reg[7][6]  ( .D(n99), .SI(\FIFO_MEM[7][5] ), .SE(n214), 
        .CK(W_CLK), .RN(n196), .Q(\FIFO_MEM[7][6] ) );
  SDFFRQX2M \FIFO_MEM_reg[7][5]  ( .D(n98), .SI(\FIFO_MEM[7][4] ), .SE(n213), 
        .CK(W_CLK), .RN(n196), .Q(\FIFO_MEM[7][5] ) );
  SDFFRQX2M \FIFO_MEM_reg[7][4]  ( .D(n97), .SI(\FIFO_MEM[7][3] ), .SE(n212), 
        .CK(W_CLK), .RN(n196), .Q(\FIFO_MEM[7][4] ) );
  SDFFRQX2M \FIFO_MEM_reg[7][3]  ( .D(n96), .SI(\FIFO_MEM[7][2] ), .SE(n211), 
        .CK(W_CLK), .RN(n197), .Q(\FIFO_MEM[7][3] ) );
  SDFFRQX2M \FIFO_MEM_reg[7][2]  ( .D(n95), .SI(\FIFO_MEM[7][1] ), .SE(n214), 
        .CK(W_CLK), .RN(n197), .Q(\FIFO_MEM[7][2] ) );
  SDFFRQX2M \FIFO_MEM_reg[7][1]  ( .D(n94), .SI(\FIFO_MEM[7][0] ), .SE(n213), 
        .CK(W_CLK), .RN(n197), .Q(\FIFO_MEM[7][1] ) );
  SDFFRQX2M \FIFO_MEM_reg[7][0]  ( .D(n93), .SI(\FIFO_MEM[6][7] ), .SE(n212), 
        .CK(W_CLK), .RN(n197), .Q(\FIFO_MEM[7][0] ) );
  SDFFRQX2M \FIFO_MEM_reg[2][7]  ( .D(n140), .SI(\FIFO_MEM[2][6] ), .SE(n211), 
        .CK(W_CLK), .RN(n193), .Q(\FIFO_MEM[2][7] ) );
  SDFFRQX2M \FIFO_MEM_reg[2][6]  ( .D(n139), .SI(\FIFO_MEM[2][5] ), .SE(n214), 
        .CK(W_CLK), .RN(n193), .Q(\FIFO_MEM[2][6] ) );
  SDFFRQX2M \FIFO_MEM_reg[2][5]  ( .D(n138), .SI(\FIFO_MEM[2][4] ), .SE(n213), 
        .CK(W_CLK), .RN(n193), .Q(\FIFO_MEM[2][5] ) );
  SDFFRQX2M \FIFO_MEM_reg[2][4]  ( .D(n137), .SI(\FIFO_MEM[2][3] ), .SE(n212), 
        .CK(W_CLK), .RN(n193), .Q(\FIFO_MEM[2][4] ) );
  SDFFRQX2M \FIFO_MEM_reg[2][3]  ( .D(n136), .SI(\FIFO_MEM[2][2] ), .SE(n211), 
        .CK(W_CLK), .RN(n193), .Q(\FIFO_MEM[2][3] ) );
  SDFFRQX2M \FIFO_MEM_reg[2][2]  ( .D(n135), .SI(\FIFO_MEM[2][1] ), .SE(n214), 
        .CK(W_CLK), .RN(n193), .Q(\FIFO_MEM[2][2] ) );
  SDFFRQX2M \FIFO_MEM_reg[2][1]  ( .D(n134), .SI(\FIFO_MEM[2][0] ), .SE(n213), 
        .CK(W_CLK), .RN(n193), .Q(\FIFO_MEM[2][1] ) );
  SDFFRQX2M \FIFO_MEM_reg[2][0]  ( .D(n133), .SI(\FIFO_MEM[1][7] ), .SE(n212), 
        .CK(W_CLK), .RN(n193), .Q(\FIFO_MEM[2][0] ) );
  SDFFRQX2M \FIFO_MEM_reg[3][7]  ( .D(n132), .SI(\FIFO_MEM[3][6] ), .SE(n211), 
        .CK(W_CLK), .RN(n194), .Q(\FIFO_MEM[3][7] ) );
  SDFFRQX2M \FIFO_MEM_reg[3][6]  ( .D(n131), .SI(\FIFO_MEM[3][5] ), .SE(n214), 
        .CK(W_CLK), .RN(n194), .Q(\FIFO_MEM[3][6] ) );
  SDFFRQX2M \FIFO_MEM_reg[3][5]  ( .D(n130), .SI(\FIFO_MEM[3][4] ), .SE(n213), 
        .CK(W_CLK), .RN(n194), .Q(\FIFO_MEM[3][5] ) );
  SDFFRQX2M \FIFO_MEM_reg[3][4]  ( .D(n129), .SI(\FIFO_MEM[3][3] ), .SE(n212), 
        .CK(W_CLK), .RN(n194), .Q(\FIFO_MEM[3][4] ) );
  SDFFRQX2M \FIFO_MEM_reg[3][3]  ( .D(n128), .SI(\FIFO_MEM[3][2] ), .SE(n211), 
        .CK(W_CLK), .RN(n194), .Q(\FIFO_MEM[3][3] ) );
  SDFFRQX2M \FIFO_MEM_reg[3][2]  ( .D(n127), .SI(\FIFO_MEM[3][1] ), .SE(n214), 
        .CK(W_CLK), .RN(n194), .Q(\FIFO_MEM[3][2] ) );
  SDFFRQX2M \FIFO_MEM_reg[3][1]  ( .D(n126), .SI(\FIFO_MEM[3][0] ), .SE(n213), 
        .CK(W_CLK), .RN(n194), .Q(\FIFO_MEM[3][1] ) );
  SDFFRQX2M \FIFO_MEM_reg[3][0]  ( .D(n125), .SI(\FIFO_MEM[2][7] ), .SE(n212), 
        .CK(W_CLK), .RN(n194), .Q(\FIFO_MEM[3][0] ) );
  SDFFRQX2M \RD_DATA_reg[6]  ( .D(N33), .SI(RD_DATA[5]), .SE(n211), .CK(R_CLK), 
        .RN(R_RST), .Q(RD_DATA[6]) );
  SDFFRQX2M \RD_DATA_reg[5]  ( .D(N34), .SI(RD_DATA[4]), .SE(n214), .CK(R_CLK), 
        .RN(R_RST), .Q(RD_DATA[5]) );
  SDFFRQX2M \RD_DATA_reg[4]  ( .D(N35), .SI(RD_DATA[3]), .SE(n213), .CK(R_CLK), 
        .RN(R_RST), .Q(RD_DATA[4]) );
  SDFFRQX2M \RD_DATA_reg[3]  ( .D(N36), .SI(RD_DATA[2]), .SE(n212), .CK(R_CLK), 
        .RN(R_RST), .Q(RD_DATA[3]) );
  SDFFRQX2M \RD_DATA_reg[2]  ( .D(N37), .SI(RD_DATA[1]), .SE(n211), .CK(R_CLK), 
        .RN(R_RST), .Q(RD_DATA[2]) );
  SDFFRQX2M \RD_DATA_reg[1]  ( .D(N38), .SI(RD_DATA[0]), .SE(n214), .CK(R_CLK), 
        .RN(R_RST), .Q(RD_DATA[1]) );
  SDFFRQX2M \RD_DATA_reg[0]  ( .D(N39), .SI(\FIFO_MEM[7][7] ), .SE(n213), .CK(
        R_CLK), .RN(R_RST), .Q(RD_DATA[0]) );
  SDFFRQX2M \RD_DATA_reg[7]  ( .D(N32), .SI(RD_DATA[6]), .SE(n212), .CK(R_CLK), 
        .RN(R_RST), .Q(RD_DATA[7]) );
  BUFX2M U75 ( .A(n84), .Y(n189) );
  BUFX2M U76 ( .A(n88), .Y(n188) );
  BUFX2M U77 ( .A(n90), .Y(n187) );
  BUFX2M U78 ( .A(n91), .Y(n186) );
  BUFX2M U79 ( .A(n191), .Y(n196) );
  BUFX2M U80 ( .A(n191), .Y(n195) );
  BUFX2M U81 ( .A(n190), .Y(n194) );
  BUFX2M U82 ( .A(n190), .Y(n193) );
  BUFX2M U83 ( .A(n190), .Y(n192) );
  BUFX2M U84 ( .A(n191), .Y(n197) );
  BUFX2M U85 ( .A(W_RST), .Y(n191) );
  BUFX2M U86 ( .A(W_RST), .Y(n190) );
  NAND3X2M U87 ( .A(n198), .B(n199), .C(n85), .Y(n87) );
  NAND3X2M U88 ( .A(n198), .B(n199), .C(n89), .Y(n92) );
  NOR2X2M U89 ( .A(n183), .B(n184), .Y(n179) );
  NAND3X2M U90 ( .A(n85), .B(n199), .C(waddr[0]), .Y(n86) );
  NAND3X2M U91 ( .A(waddr[0]), .B(n85), .C(waddr[1]), .Y(n83) );
  NOR2BX2M U92 ( .AN(wclken), .B(waddr[2]), .Y(n89) );
  OAI2BB2X1M U93 ( .B0(n83), .B1(n207), .A0N(\FIFO_MEM[7][0] ), .A1N(n83), .Y(
        n93) );
  OAI2BB2X1M U94 ( .B0(n83), .B1(n206), .A0N(\FIFO_MEM[7][1] ), .A1N(n83), .Y(
        n94) );
  OAI2BB2X1M U95 ( .B0(n83), .B1(n205), .A0N(\FIFO_MEM[7][2] ), .A1N(n83), .Y(
        n95) );
  OAI2BB2X1M U96 ( .B0(n83), .B1(n204), .A0N(\FIFO_MEM[7][3] ), .A1N(n83), .Y(
        n96) );
  OAI2BB2X1M U97 ( .B0(n83), .B1(n203), .A0N(\FIFO_MEM[7][4] ), .A1N(n83), .Y(
        n97) );
  OAI2BB2X1M U98 ( .B0(n83), .B1(n202), .A0N(\FIFO_MEM[7][5] ), .A1N(n83), .Y(
        n98) );
  OAI2BB2X1M U99 ( .B0(n83), .B1(n201), .A0N(\FIFO_MEM[7][6] ), .A1N(n83), .Y(
        n99) );
  OAI2BB2X1M U100 ( .B0(n83), .B1(n200), .A0N(\FIFO_MEM[7][7] ), .A1N(n83), 
        .Y(n100) );
  OAI2BB2X1M U101 ( .B0(n207), .B1(n86), .A0N(\FIFO_MEM[5][0] ), .A1N(n86), 
        .Y(n109) );
  OAI2BB2X1M U102 ( .B0(n206), .B1(n86), .A0N(\FIFO_MEM[5][1] ), .A1N(n86), 
        .Y(n110) );
  OAI2BB2X1M U103 ( .B0(n205), .B1(n86), .A0N(\FIFO_MEM[5][2] ), .A1N(n86), 
        .Y(n111) );
  OAI2BB2X1M U104 ( .B0(n204), .B1(n86), .A0N(\FIFO_MEM[5][3] ), .A1N(n86), 
        .Y(n112) );
  OAI2BB2X1M U105 ( .B0(n203), .B1(n86), .A0N(\FIFO_MEM[5][4] ), .A1N(n86), 
        .Y(n113) );
  OAI2BB2X1M U106 ( .B0(n202), .B1(n86), .A0N(\FIFO_MEM[5][5] ), .A1N(n86), 
        .Y(n114) );
  OAI2BB2X1M U107 ( .B0(n201), .B1(n86), .A0N(\FIFO_MEM[5][6] ), .A1N(n86), 
        .Y(n115) );
  OAI2BB2X1M U108 ( .B0(n200), .B1(n86), .A0N(\FIFO_MEM[5][7] ), .A1N(n86), 
        .Y(n116) );
  OAI2BB2X1M U109 ( .B0(n207), .B1(n92), .A0N(\FIFO_MEM[0][0] ), .A1N(n92), 
        .Y(n149) );
  OAI2BB2X1M U110 ( .B0(n206), .B1(n92), .A0N(\FIFO_MEM[0][1] ), .A1N(n92), 
        .Y(n150) );
  OAI2BB2X1M U111 ( .B0(n205), .B1(n92), .A0N(\FIFO_MEM[0][2] ), .A1N(n92), 
        .Y(n151) );
  OAI2BB2X1M U112 ( .B0(n204), .B1(n92), .A0N(\FIFO_MEM[0][3] ), .A1N(n92), 
        .Y(n152) );
  OAI2BB2X1M U113 ( .B0(n203), .B1(n92), .A0N(\FIFO_MEM[0][4] ), .A1N(n92), 
        .Y(n153) );
  OAI2BB2X1M U114 ( .B0(n202), .B1(n92), .A0N(\FIFO_MEM[0][5] ), .A1N(n92), 
        .Y(n154) );
  OAI2BB2X1M U115 ( .B0(n201), .B1(n92), .A0N(\FIFO_MEM[0][6] ), .A1N(n92), 
        .Y(n155) );
  OAI2BB2X1M U116 ( .B0(n200), .B1(n92), .A0N(\FIFO_MEM[0][7] ), .A1N(n92), 
        .Y(n156) );
  OAI2BB2X1M U117 ( .B0(n207), .B1(n87), .A0N(\FIFO_MEM[4][0] ), .A1N(n87), 
        .Y(n117) );
  OAI2BB2X1M U118 ( .B0(n206), .B1(n87), .A0N(\FIFO_MEM[4][1] ), .A1N(n87), 
        .Y(n118) );
  OAI2BB2X1M U119 ( .B0(n205), .B1(n87), .A0N(\FIFO_MEM[4][2] ), .A1N(n87), 
        .Y(n119) );
  OAI2BB2X1M U120 ( .B0(n204), .B1(n87), .A0N(\FIFO_MEM[4][3] ), .A1N(n87), 
        .Y(n120) );
  OAI2BB2X1M U121 ( .B0(n203), .B1(n87), .A0N(\FIFO_MEM[4][4] ), .A1N(n87), 
        .Y(n121) );
  OAI2BB2X1M U122 ( .B0(n202), .B1(n87), .A0N(\FIFO_MEM[4][5] ), .A1N(n87), 
        .Y(n122) );
  OAI2BB2X1M U123 ( .B0(n201), .B1(n87), .A0N(\FIFO_MEM[4][6] ), .A1N(n87), 
        .Y(n123) );
  OAI2BB2X1M U124 ( .B0(n200), .B1(n87), .A0N(\FIFO_MEM[4][7] ), .A1N(n87), 
        .Y(n124) );
  INVX2M U125 ( .A(WR_DATA[0]), .Y(n207) );
  INVX2M U126 ( .A(WR_DATA[1]), .Y(n206) );
  INVX2M U127 ( .A(WR_DATA[2]), .Y(n205) );
  INVX2M U128 ( .A(WR_DATA[3]), .Y(n204) );
  INVX2M U129 ( .A(WR_DATA[4]), .Y(n203) );
  INVX2M U130 ( .A(WR_DATA[5]), .Y(n202) );
  INVX2M U131 ( .A(WR_DATA[6]), .Y(n201) );
  INVX2M U132 ( .A(WR_DATA[7]), .Y(n200) );
  OAI2BB2X1M U133 ( .B0(n206), .B1(n189), .A0N(\FIFO_MEM[6][1] ), .A1N(n189), 
        .Y(n102) );
  OAI2BB2X1M U134 ( .B0(n205), .B1(n189), .A0N(\FIFO_MEM[6][2] ), .A1N(n189), 
        .Y(n103) );
  OAI2BB2X1M U135 ( .B0(n204), .B1(n189), .A0N(\FIFO_MEM[6][3] ), .A1N(n189), 
        .Y(n104) );
  OAI2BB2X1M U136 ( .B0(n203), .B1(n189), .A0N(\FIFO_MEM[6][4] ), .A1N(n189), 
        .Y(n105) );
  OAI2BB2X1M U137 ( .B0(n202), .B1(n189), .A0N(\FIFO_MEM[6][5] ), .A1N(n189), 
        .Y(n106) );
  OAI2BB2X1M U138 ( .B0(n201), .B1(n189), .A0N(\FIFO_MEM[6][6] ), .A1N(n189), 
        .Y(n107) );
  OAI2BB2X1M U139 ( .B0(n200), .B1(n189), .A0N(\FIFO_MEM[6][7] ), .A1N(n189), 
        .Y(n108) );
  OAI2BB2X1M U140 ( .B0(n207), .B1(n188), .A0N(\FIFO_MEM[3][0] ), .A1N(n188), 
        .Y(n125) );
  OAI2BB2X1M U141 ( .B0(n206), .B1(n188), .A0N(\FIFO_MEM[3][1] ), .A1N(n188), 
        .Y(n126) );
  OAI2BB2X1M U142 ( .B0(n205), .B1(n188), .A0N(\FIFO_MEM[3][2] ), .A1N(n188), 
        .Y(n127) );
  OAI2BB2X1M U143 ( .B0(n204), .B1(n188), .A0N(\FIFO_MEM[3][3] ), .A1N(n188), 
        .Y(n128) );
  OAI2BB2X1M U144 ( .B0(n203), .B1(n188), .A0N(\FIFO_MEM[3][4] ), .A1N(n188), 
        .Y(n129) );
  OAI2BB2X1M U145 ( .B0(n202), .B1(n188), .A0N(\FIFO_MEM[3][5] ), .A1N(n188), 
        .Y(n130) );
  OAI2BB2X1M U146 ( .B0(n201), .B1(n188), .A0N(\FIFO_MEM[3][6] ), .A1N(n188), 
        .Y(n131) );
  OAI2BB2X1M U147 ( .B0(n200), .B1(n188), .A0N(\FIFO_MEM[3][7] ), .A1N(n188), 
        .Y(n132) );
  OAI2BB2X1M U148 ( .B0(n207), .B1(n187), .A0N(\FIFO_MEM[2][0] ), .A1N(n187), 
        .Y(n133) );
  OAI2BB2X1M U149 ( .B0(n206), .B1(n187), .A0N(\FIFO_MEM[2][1] ), .A1N(n187), 
        .Y(n134) );
  OAI2BB2X1M U150 ( .B0(n205), .B1(n187), .A0N(\FIFO_MEM[2][2] ), .A1N(n187), 
        .Y(n135) );
  OAI2BB2X1M U151 ( .B0(n204), .B1(n187), .A0N(\FIFO_MEM[2][3] ), .A1N(n187), 
        .Y(n136) );
  OAI2BB2X1M U152 ( .B0(n203), .B1(n187), .A0N(\FIFO_MEM[2][4] ), .A1N(n187), 
        .Y(n137) );
  OAI2BB2X1M U153 ( .B0(n202), .B1(n187), .A0N(\FIFO_MEM[2][5] ), .A1N(n187), 
        .Y(n138) );
  OAI2BB2X1M U154 ( .B0(n201), .B1(n187), .A0N(\FIFO_MEM[2][6] ), .A1N(n187), 
        .Y(n139) );
  OAI2BB2X1M U155 ( .B0(n200), .B1(n187), .A0N(\FIFO_MEM[2][7] ), .A1N(n187), 
        .Y(n140) );
  OAI2BB2X1M U156 ( .B0(n207), .B1(n186), .A0N(\FIFO_MEM[1][0] ), .A1N(n186), 
        .Y(n141) );
  OAI2BB2X1M U157 ( .B0(n206), .B1(n186), .A0N(\FIFO_MEM[1][1] ), .A1N(n186), 
        .Y(n142) );
  OAI2BB2X1M U158 ( .B0(n205), .B1(n186), .A0N(\FIFO_MEM[1][2] ), .A1N(n186), 
        .Y(n143) );
  OAI2BB2X1M U159 ( .B0(n204), .B1(n186), .A0N(\FIFO_MEM[1][3] ), .A1N(n186), 
        .Y(n144) );
  OAI2BB2X1M U160 ( .B0(n203), .B1(n186), .A0N(\FIFO_MEM[1][4] ), .A1N(n186), 
        .Y(n145) );
  OAI2BB2X1M U161 ( .B0(n202), .B1(n186), .A0N(\FIFO_MEM[1][5] ), .A1N(n186), 
        .Y(n146) );
  OAI2BB2X1M U162 ( .B0(n201), .B1(n186), .A0N(\FIFO_MEM[1][6] ), .A1N(n186), 
        .Y(n147) );
  OAI2BB2X1M U163 ( .B0(n200), .B1(n186), .A0N(\FIFO_MEM[1][7] ), .A1N(n186), 
        .Y(n148) );
  OAI2BB2X1M U164 ( .B0(n189), .B1(n207), .A0N(\FIFO_MEM[6][0] ), .A1N(n189), 
        .Y(n101) );
  AND2X2M U165 ( .A(wclken), .B(waddr[2]), .Y(n85) );
  NAND3X2M U166 ( .A(waddr[1]), .B(waddr[0]), .C(n89), .Y(n88) );
  NAND3X2M U167 ( .A(waddr[1]), .B(n198), .C(n89), .Y(n90) );
  NAND3X2M U168 ( .A(waddr[0]), .B(n199), .C(n89), .Y(n91) );
  NAND3X2M U169 ( .A(n85), .B(n198), .C(waddr[1]), .Y(n84) );
  NOR2X2M U170 ( .A(n183), .B(N11), .Y(n180) );
  NOR2X2M U171 ( .A(N11), .B(N12), .Y(n176) );
  INVX2M U172 ( .A(waddr[1]), .Y(n199) );
  INVX2M U173 ( .A(waddr[0]), .Y(n198) );
  NOR2X2M U174 ( .A(n184), .B(N12), .Y(n177) );
  INVX2M U175 ( .A(N11), .Y(n184) );
  INVX2M U176 ( .A(N12), .Y(n183) );
  INVX2M U177 ( .A(N10), .Y(n185) );
  AO22X1M U178 ( .A0(\FIFO_MEM[3][0] ), .A1(n177), .B0(\FIFO_MEM[1][0] ), .B1(
        n176), .Y(n73) );
  AOI221XLM U179 ( .A0(\FIFO_MEM[5][0] ), .A1(n180), .B0(\FIFO_MEM[7][0] ), 
        .B1(n179), .C0(n73), .Y(n76) );
  AO22X1M U180 ( .A0(\FIFO_MEM[2][0] ), .A1(n177), .B0(\FIFO_MEM[0][0] ), .B1(
        n176), .Y(n74) );
  AOI221XLM U181 ( .A0(\FIFO_MEM[4][0] ), .A1(n180), .B0(\FIFO_MEM[6][0] ), 
        .B1(n179), .C0(n74), .Y(n75) );
  OAI22X1M U182 ( .A0(n185), .A1(n76), .B0(N10), .B1(n75), .Y(N39) );
  AO22X1M U183 ( .A0(\FIFO_MEM[3][1] ), .A1(n177), .B0(\FIFO_MEM[1][1] ), .B1(
        n176), .Y(n77) );
  AOI221XLM U184 ( .A0(\FIFO_MEM[5][1] ), .A1(n180), .B0(\FIFO_MEM[7][1] ), 
        .B1(n179), .C0(n77), .Y(n80) );
  AO22X1M U185 ( .A0(\FIFO_MEM[2][1] ), .A1(n177), .B0(\FIFO_MEM[0][1] ), .B1(
        n176), .Y(n78) );
  AOI221XLM U186 ( .A0(\FIFO_MEM[4][1] ), .A1(n180), .B0(\FIFO_MEM[6][1] ), 
        .B1(n179), .C0(n78), .Y(n79) );
  OAI22X1M U187 ( .A0(n185), .A1(n80), .B0(N10), .B1(n79), .Y(N38) );
  AO22X1M U188 ( .A0(\FIFO_MEM[3][2] ), .A1(n177), .B0(\FIFO_MEM[1][2] ), .B1(
        n176), .Y(n81) );
  AOI221XLM U189 ( .A0(\FIFO_MEM[5][2] ), .A1(n180), .B0(\FIFO_MEM[7][2] ), 
        .B1(n179), .C0(n81), .Y(n158) );
  AO22X1M U190 ( .A0(\FIFO_MEM[2][2] ), .A1(n177), .B0(\FIFO_MEM[0][2] ), .B1(
        n176), .Y(n82) );
  AOI221XLM U191 ( .A0(\FIFO_MEM[4][2] ), .A1(n180), .B0(\FIFO_MEM[6][2] ), 
        .B1(n179), .C0(n82), .Y(n157) );
  OAI22X1M U192 ( .A0(n185), .A1(n158), .B0(N10), .B1(n157), .Y(N37) );
  AO22X1M U193 ( .A0(\FIFO_MEM[3][3] ), .A1(n177), .B0(\FIFO_MEM[1][3] ), .B1(
        n176), .Y(n159) );
  AOI221XLM U194 ( .A0(\FIFO_MEM[5][3] ), .A1(n180), .B0(\FIFO_MEM[7][3] ), 
        .B1(n179), .C0(n159), .Y(n162) );
  AO22X1M U195 ( .A0(\FIFO_MEM[2][3] ), .A1(n177), .B0(\FIFO_MEM[0][3] ), .B1(
        n176), .Y(n160) );
  AOI221XLM U196 ( .A0(\FIFO_MEM[4][3] ), .A1(n180), .B0(\FIFO_MEM[6][3] ), 
        .B1(n179), .C0(n160), .Y(n161) );
  OAI22X1M U197 ( .A0(n185), .A1(n162), .B0(N10), .B1(n161), .Y(N36) );
  AO22X1M U198 ( .A0(\FIFO_MEM[3][4] ), .A1(n177), .B0(\FIFO_MEM[1][4] ), .B1(
        n176), .Y(n163) );
  AOI221XLM U199 ( .A0(\FIFO_MEM[5][4] ), .A1(n180), .B0(\FIFO_MEM[7][4] ), 
        .B1(n179), .C0(n163), .Y(n166) );
  AO22X1M U200 ( .A0(\FIFO_MEM[2][4] ), .A1(n177), .B0(\FIFO_MEM[0][4] ), .B1(
        n176), .Y(n164) );
  AOI221XLM U201 ( .A0(\FIFO_MEM[4][4] ), .A1(n180), .B0(\FIFO_MEM[6][4] ), 
        .B1(n179), .C0(n164), .Y(n165) );
  OAI22X1M U202 ( .A0(n185), .A1(n166), .B0(N10), .B1(n165), .Y(N35) );
  AO22X1M U203 ( .A0(\FIFO_MEM[3][5] ), .A1(n177), .B0(\FIFO_MEM[1][5] ), .B1(
        n176), .Y(n167) );
  AOI221XLM U204 ( .A0(\FIFO_MEM[5][5] ), .A1(n180), .B0(\FIFO_MEM[7][5] ), 
        .B1(n179), .C0(n167), .Y(n170) );
  AO22X1M U205 ( .A0(\FIFO_MEM[2][5] ), .A1(n177), .B0(\FIFO_MEM[0][5] ), .B1(
        n176), .Y(n168) );
  AOI221XLM U206 ( .A0(\FIFO_MEM[4][5] ), .A1(n180), .B0(\FIFO_MEM[6][5] ), 
        .B1(n179), .C0(n168), .Y(n169) );
  OAI22X1M U207 ( .A0(n185), .A1(n170), .B0(N10), .B1(n169), .Y(N34) );
  AO22X1M U208 ( .A0(\FIFO_MEM[3][6] ), .A1(n177), .B0(\FIFO_MEM[1][6] ), .B1(
        n176), .Y(n171) );
  AOI221XLM U209 ( .A0(\FIFO_MEM[5][6] ), .A1(n180), .B0(\FIFO_MEM[7][6] ), 
        .B1(n179), .C0(n171), .Y(n174) );
  AO22X1M U210 ( .A0(\FIFO_MEM[2][6] ), .A1(n177), .B0(\FIFO_MEM[0][6] ), .B1(
        n176), .Y(n172) );
  AOI221XLM U211 ( .A0(\FIFO_MEM[4][6] ), .A1(n180), .B0(\FIFO_MEM[6][6] ), 
        .B1(n179), .C0(n172), .Y(n173) );
  OAI22X1M U212 ( .A0(n185), .A1(n174), .B0(N10), .B1(n173), .Y(N33) );
  AO22X1M U213 ( .A0(\FIFO_MEM[3][7] ), .A1(n177), .B0(\FIFO_MEM[1][7] ), .B1(
        n176), .Y(n175) );
  AOI221XLM U214 ( .A0(\FIFO_MEM[5][7] ), .A1(n180), .B0(\FIFO_MEM[7][7] ), 
        .B1(n179), .C0(n175), .Y(n182) );
  AO22X1M U215 ( .A0(\FIFO_MEM[2][7] ), .A1(n177), .B0(\FIFO_MEM[0][7] ), .B1(
        n176), .Y(n178) );
  AOI221XLM U216 ( .A0(\FIFO_MEM[4][7] ), .A1(n180), .B0(\FIFO_MEM[6][7] ), 
        .B1(n179), .C0(n178), .Y(n181) );
  OAI22X1M U217 ( .A0(n182), .A1(n185), .B0(N10), .B1(n181), .Y(N32) );
  INVXLM U218 ( .A(test_se), .Y(n210) );
  INVXLM U219 ( .A(n210), .Y(n211) );
  INVXLM U220 ( .A(n210), .Y(n212) );
  INVXLM U221 ( .A(n210), .Y(n213) );
  INVXLM U222 ( .A(n210), .Y(n214) );
endmodule


module FIFO_WR_test_1 ( W_INC, W_CLK, W_RST, rptr_sync, wptr, waddr, FULL, 
        test_si, test_se );
  input [3:0] rptr_sync;
  output [3:0] wptr;
  output [2:0] waddr;
  input W_INC, W_CLK, W_RST, test_si, test_se;
  output FULL;
  wire   N94, N95, N96, N97, n5, n6, n7, n9, n10, n11, n12, n13, n14, n18, n21,
         n23, n25, n1;

  SDFFRQX2M \wptr_bi_reg[3]  ( .D(n18), .SI(waddr[2]), .SE(test_se), .CK(W_CLK), .RN(W_RST), .Q(N97) );
  SDFFRQX2M \wptr_bi_reg[2]  ( .D(n21), .SI(waddr[1]), .SE(test_se), .CK(W_CLK), .RN(W_RST), .Q(waddr[2]) );
  SDFFRQX2M \wptr_bi_reg[0]  ( .D(n25), .SI(test_si), .SE(test_se), .CK(W_CLK), 
        .RN(W_RST), .Q(waddr[0]) );
  SDFFRQX2M \wptr_reg[0]  ( .D(N94), .SI(N97), .SE(test_se), .CK(W_CLK), .RN(
        W_RST), .Q(wptr[0]) );
  SDFFRQX2M \wptr_reg[1]  ( .D(N95), .SI(wptr[0]), .SE(test_se), .CK(W_CLK), 
        .RN(W_RST), .Q(wptr[1]) );
  SDFFRQX2M \wptr_reg[3]  ( .D(N97), .SI(wptr[2]), .SE(test_se), .CK(W_CLK), 
        .RN(W_RST), .Q(wptr[3]) );
  SDFFRQX2M \wptr_reg[2]  ( .D(N96), .SI(wptr[1]), .SE(test_se), .CK(W_CLK), 
        .RN(W_RST), .Q(wptr[2]) );
  SDFFRQX2M \wptr_bi_reg[1]  ( .D(n23), .SI(waddr[0]), .SE(test_se), .CK(W_CLK), .RN(W_RST), .Q(waddr[1]) );
  NOR2X2M U3 ( .A(n1), .B(n9), .Y(n7) );
  NAND2X2M U4 ( .A(W_INC), .B(n10), .Y(n9) );
  INVX2M U5 ( .A(n10), .Y(FULL) );
  XNOR2X2M U6 ( .A(waddr[2]), .B(n6), .Y(n21) );
  XNOR2X2M U7 ( .A(waddr[0]), .B(n9), .Y(n25) );
  XNOR2X2M U8 ( .A(N97), .B(n5), .Y(n18) );
  NAND2BX2M U9 ( .AN(n6), .B(waddr[2]), .Y(n5) );
  NAND4X2M U10 ( .A(n11), .B(n12), .C(n13), .D(n14), .Y(n10) );
  XNOR2X2M U11 ( .A(wptr[0]), .B(rptr_sync[0]), .Y(n11) );
  XNOR2X2M U12 ( .A(wptr[1]), .B(rptr_sync[1]), .Y(n12) );
  CLKXOR2X2M U13 ( .A(wptr[2]), .B(rptr_sync[2]), .Y(n13) );
  NAND2X2M U14 ( .A(waddr[1]), .B(n7), .Y(n6) );
  CLKXOR2X2M U15 ( .A(wptr[3]), .B(rptr_sync[3]), .Y(n14) );
  CLKXOR2X2M U16 ( .A(waddr[1]), .B(n7), .Y(n23) );
  XNOR2X2M U17 ( .A(waddr[1]), .B(n1), .Y(N94) );
  INVX2M U18 ( .A(waddr[0]), .Y(n1) );
  CLKXOR2X2M U19 ( .A(waddr[2]), .B(waddr[1]), .Y(N95) );
  CLKXOR2X2M U20 ( .A(waddr[2]), .B(N97), .Y(N96) );
endmodule


module FIFO_RD_test_1 ( R_INC, R_CLK, R_RST, wptr_sync, rptr, raddr, EMPTY, 
        test_si, test_se );
  input [3:0] wptr_sync;
  output [3:0] rptr;
  output [2:0] raddr;
  input R_INC, R_CLK, R_RST, test_si, test_se;
  output EMPTY;
  wire   N90, N91, N92, N93, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n1, n2, n11, n12;

  SDFFRQX2M \rptr_reg[0]  ( .D(N90), .SI(N93), .SE(test_se), .CK(R_CLK), .RN(
        R_RST), .Q(rptr[0]) );
  SDFFRQX2M \rptr_reg[3]  ( .D(N93), .SI(rptr[2]), .SE(test_se), .CK(R_CLK), 
        .RN(R_RST), .Q(rptr[3]) );
  SDFFRQX2M \rptr_reg[2]  ( .D(N92), .SI(rptr[1]), .SE(test_se), .CK(R_CLK), 
        .RN(R_RST), .Q(rptr[2]) );
  SDFFRQX2M \rptr_reg[1]  ( .D(N91), .SI(rptr[0]), .SE(test_se), .CK(R_CLK), 
        .RN(R_RST), .Q(rptr[1]) );
  SDFFRQX2M \rptr_bi_reg[3]  ( .D(n25), .SI(raddr[2]), .SE(test_se), .CK(R_CLK), .RN(R_RST), .Q(N93) );
  SDFFRQX2M \rptr_bi_reg[0]  ( .D(n28), .SI(test_si), .SE(test_se), .CK(R_CLK), 
        .RN(R_RST), .Q(raddr[0]) );
  SDFFRQX2M \rptr_bi_reg[2]  ( .D(n26), .SI(raddr[1]), .SE(test_se), .CK(R_CLK), .RN(R_RST), .Q(raddr[2]) );
  SDFFRQX2M \rptr_bi_reg[1]  ( .D(n27), .SI(raddr[0]), .SE(test_se), .CK(R_CLK), .RN(R_RST), .Q(raddr[1]) );
  NOR2X2M U11 ( .A(n2), .B(n19), .Y(n18) );
  INVX2M U12 ( .A(n20), .Y(EMPTY) );
  XNOR2X2M U13 ( .A(wptr_sync[2]), .B(rptr[2]), .Y(n24) );
  XNOR2X2M U14 ( .A(n11), .B(raddr[1]), .Y(N91) );
  XNOR2X2M U15 ( .A(raddr[2]), .B(n17), .Y(n26) );
  XNOR2X2M U16 ( .A(raddr[1]), .B(n2), .Y(N90) );
  XNOR2X2M U17 ( .A(raddr[0]), .B(n19), .Y(n28) );
  NAND4X2M U18 ( .A(n21), .B(n22), .C(n23), .D(n24), .Y(n20) );
  XNOR2X2M U19 ( .A(wptr_sync[1]), .B(rptr[1]), .Y(n21) );
  XNOR2X2M U20 ( .A(wptr_sync[0]), .B(rptr[0]), .Y(n22) );
  XNOR2X2M U21 ( .A(wptr_sync[3]), .B(rptr[3]), .Y(n23) );
  OAI211X2M U22 ( .A0(n1), .A1(n12), .B0(n15), .C0(n16), .Y(n25) );
  NAND3X2M U23 ( .A(n1), .B(n12), .C(raddr[2]), .Y(n15) );
  INVX2M U24 ( .A(N93), .Y(n12) );
  INVX2M U25 ( .A(n17), .Y(n1) );
  NAND2X2M U26 ( .A(raddr[1]), .B(n18), .Y(n17) );
  OAI21X2M U27 ( .A0(N93), .A1(n11), .B0(n16), .Y(N92) );
  INVX2M U28 ( .A(raddr[2]), .Y(n11) );
  NAND2X2M U29 ( .A(R_INC), .B(n20), .Y(n19) );
  NAND2X2M U30 ( .A(N93), .B(n11), .Y(n16) );
  INVX2M U31 ( .A(raddr[0]), .Y(n2) );
  CLKXOR2X2M U32 ( .A(raddr[1]), .B(n18), .Y(n27) );
endmodule


module DF_SYNC_test_1 ( W_CLK, W_RST, R_RST, R_CLK, wptr, rptr, wptr_sync, 
        rptr_sync, test_si1, test_so1, test_se );
  input [3:0] wptr;
  input [3:0] rptr;
  output [3:0] wptr_sync;
  output [3:0] rptr_sync;
  input W_CLK, W_RST, R_RST, R_CLK, test_si1, test_se;
  output test_so1;
  wire   n3, n4;
  wire   [3:0] wptr_sync1;
  wire   [3:0] rptr_sync1;
  assign test_so1 = wptr_sync1[2];

  SDFFRQX2M \wptr_sync_reg[3]  ( .D(wptr_sync1[3]), .SI(wptr_sync[2]), .SE(n4), 
        .CK(R_CLK), .RN(R_RST), .Q(wptr_sync[3]) );
  SDFFRQX2M \wptr_sync_reg[2]  ( .D(wptr_sync1[2]), .SI(wptr_sync[1]), .SE(n4), 
        .CK(R_CLK), .RN(R_RST), .Q(wptr_sync[2]) );
  SDFFRQX2M \wptr_sync_reg[1]  ( .D(wptr_sync1[1]), .SI(wptr_sync[0]), .SE(n4), 
        .CK(R_CLK), .RN(R_RST), .Q(wptr_sync[1]) );
  SDFFRQX2M \wptr_sync_reg[0]  ( .D(wptr_sync1[0]), .SI(wptr_sync1[3]), .SE(n4), .CK(R_CLK), .RN(R_RST), .Q(wptr_sync[0]) );
  SDFFRQX2M \rptr_sync_reg[1]  ( .D(rptr_sync1[1]), .SI(rptr_sync[0]), .SE(n4), 
        .CK(W_CLK), .RN(W_RST), .Q(rptr_sync[1]) );
  SDFFRQX2M \rptr_sync_reg[0]  ( .D(rptr_sync1[0]), .SI(rptr_sync1[3]), .SE(n4), .CK(W_CLK), .RN(W_RST), .Q(rptr_sync[0]) );
  SDFFRQX2M \rptr_sync_reg[3]  ( .D(rptr_sync1[3]), .SI(rptr_sync[2]), .SE(n4), 
        .CK(W_CLK), .RN(W_RST), .Q(rptr_sync[3]) );
  SDFFRQX2M \rptr_sync_reg[2]  ( .D(rptr_sync1[2]), .SI(rptr_sync[1]), .SE(n4), 
        .CK(W_CLK), .RN(W_RST), .Q(rptr_sync[2]) );
  SDFFRQX2M \wptr_sync1_reg[3]  ( .D(wptr[3]), .SI(test_si1), .SE(n4), .CK(
        R_CLK), .RN(R_RST), .Q(wptr_sync1[3]) );
  SDFFRQX2M \wptr_sync1_reg[2]  ( .D(wptr[2]), .SI(wptr_sync1[1]), .SE(n4), 
        .CK(R_CLK), .RN(R_RST), .Q(wptr_sync1[2]) );
  SDFFRQX2M \wptr_sync1_reg[1]  ( .D(wptr[1]), .SI(wptr_sync1[0]), .SE(n4), 
        .CK(R_CLK), .RN(R_RST), .Q(wptr_sync1[1]) );
  SDFFRQX2M \wptr_sync1_reg[0]  ( .D(wptr[0]), .SI(rptr_sync[3]), .SE(n4), 
        .CK(R_CLK), .RN(R_RST), .Q(wptr_sync1[0]) );
  SDFFRQX2M \rptr_sync1_reg[3]  ( .D(rptr[3]), .SI(rptr_sync1[2]), .SE(n4), 
        .CK(W_CLK), .RN(W_RST), .Q(rptr_sync1[3]) );
  SDFFRQX2M \rptr_sync1_reg[2]  ( .D(rptr[2]), .SI(rptr_sync1[1]), .SE(n4), 
        .CK(W_CLK), .RN(W_RST), .Q(rptr_sync1[2]) );
  SDFFRQX2M \rptr_sync1_reg[1]  ( .D(rptr[1]), .SI(rptr_sync1[0]), .SE(n4), 
        .CK(W_CLK), .RN(W_RST), .Q(rptr_sync1[1]) );
  SDFFRQX2M \rptr_sync1_reg[0]  ( .D(rptr[0]), .SI(rptr[3]), .SE(n4), .CK(
        W_CLK), .RN(W_RST), .Q(rptr_sync1[0]) );
  INVXLM U19 ( .A(test_se), .Y(n3) );
  INVXLM U20 ( .A(n3), .Y(n4) );
endmodule


module ASYNC_FIFO_test_1 ( W_CLK, W_RST, R_CLK, R_RST, WR_DATA, W_INC, R_INC, 
        RD_DATA, FULL, EMPTY, test_si2, test_si1, test_so2, test_so1, test_se
 );
  input [7:0] WR_DATA;
  output [7:0] RD_DATA;
  input W_CLK, W_RST, R_CLK, R_RST, W_INC, R_INC, test_si2, test_si1, test_se;
  output FULL, EMPTY, test_so2, test_so1;
  wire   _0_net_, n1, n2, n3, n4;
  wire   [2:0] waddr;
  wire   [2:0] raddr;
  wire   [3:0] rptr_sync;
  wire   [3:0] wptr;
  wire   [3:0] wptr_sync;
  wire   [3:0] rptr;
  assign test_so2 = wptr_sync[3];

  NOR2BX2M U5 ( .AN(W_INC), .B(FULL), .Y(_0_net_) );
  INVX2M U6 ( .A(n2), .Y(n1) );
  INVX2M U7 ( .A(R_RST), .Y(n2) );
  INVX2M U8 ( .A(n4), .Y(n3) );
  INVX2M U9 ( .A(W_RST), .Y(n4) );
  FIFO_MEM_CNTRL_test_1 U1 ( .WR_DATA(WR_DATA), .W_CLK(W_CLK), .W_RST(n3), 
        .R_CLK(R_CLK), .R_RST(n1), .wclken(_0_net_), .waddr(waddr), .raddr(
        raddr), .RD_DATA(RD_DATA), .test_si(test_si1), .test_se(test_se) );
  FIFO_WR_test_1 U2 ( .W_INC(W_INC), .W_CLK(W_CLK), .W_RST(n3), .rptr_sync(
        rptr_sync), .wptr(wptr), .waddr(waddr), .FULL(FULL), .test_si(
        RD_DATA[7]), .test_se(test_se) );
  FIFO_RD_test_1 U3 ( .R_INC(R_INC), .R_CLK(R_CLK), .R_RST(n1), .wptr_sync(
        wptr_sync), .rptr(rptr), .raddr(raddr), .EMPTY(EMPTY), .test_si(
        wptr[3]), .test_se(test_se) );
  DF_SYNC_test_1 U4 ( .W_CLK(W_CLK), .W_RST(n3), .R_RST(n1), .R_CLK(R_CLK), 
        .wptr(wptr), .rptr(rptr), .wptr_sync(wptr_sync), .rptr_sync(rptr_sync), 
        .test_si1(test_si2), .test_so1(test_so1), .test_se(test_se) );
endmodule


module MUX_2X1_0 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X6M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module MUX_2X1_3 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module System_TOP ( REF_CLK, UART_CLK, RST_N, UART_RX_IN, test_mode, scan_clk, 
        scan_rst, SE, SI, SO, UART_TX_O, parity_error, framing_error );
  input [3:0] SI;
  output [3:0] SO;
  input REF_CLK, UART_CLK, RST_N, UART_RX_IN, test_mode, scan_clk, scan_rst,
         SE;
  output UART_TX_O, parity_error, framing_error;
  wire   N2, RX_D_VLD_SYNC, REF_CLK_O, SYNC_RST_1, FULL, WR_INC, F_EMPTY,
         SYNC_RST_2, UART_CLK_O, RD_INC, RX_OUT_V, stp_err, strt_glitch,
         TX_CLK_O, sync_rst_1_int, sync_rst_2_int, n1, n4, n9, n13, n14;
  wire   [7:0] RX_P_DATA;
  wire   [7:0] WR_DATA;
  wire   [7:0] UART_CONF;
  wire   [7:0] Div_Ratio;
  wire   [7:0] RD_DATA;
  wire   [0:7] RX_OUT_P;
  assign N2 = test_mode;

  OR2X2M U4 ( .A(stp_err), .B(strt_glitch), .Y(framing_error) );
  MX2X2M U5 ( .A(sync_rst_2_int), .B(scan_rst), .S0(N2), .Y(SYNC_RST_2) );
  MX2X2M U6 ( .A(sync_rst_1_int), .B(scan_rst), .S0(N2), .Y(SYNC_RST_1) );
  BUFX2M U7 ( .A(UART_RX_IN), .Y(n1) );
  INVXLM U8 ( .A(SE), .Y(n13) );
  INVXLM U9 ( .A(n13), .Y(n14) );
  Domain_1_TOP_test_1 Domain_1_TOP_U0 ( .RX_P_DATA(RX_P_DATA), .RX_D_VLD(
        RX_D_VLD_SYNC), .REF_CLK(REF_CLK_O), .RST(SYNC_RST_1), .FULL(FULL), 
        .test_mode(N2), .WR_DATA(WR_DATA), .WR_INC(WR_INC), .UART_CONF(
        UART_CONF), .REG3(Div_Ratio), .test_si2(SI[3]), .test_si1(SI[2]), 
        .test_so3(n4), .test_so2(SO[2]), .test_so1(SO[1]), .test_se(SE) );
  Domain_2_TOP_test_1 Domain_2_TOP_U1 ( .prescale(UART_CONF[7:2]), .Div_Ratio(
        Div_Ratio), .F_EMPTY(F_EMPTY), .RD_DATA(RD_DATA), .RST(SYNC_RST_2), 
        .UART_CLK(UART_CLK_O), .RX_IN(n1), .PAR_EN(UART_CONF[0]), .PAR_TYP(
        UART_CONF[1]), .test_mode(N2), .scan_clk(scan_clk), .RD_INC(RD_INC), 
        .RX_OUT_P(RX_OUT_P), .RX_OUT_V(RX_OUT_V), .stp_err(stp_err), .par_err(
        parity_error), .strt_glitch(strt_glitch), .TX_CLK_O(TX_CLK_O), 
        .test_si(n4), .test_so(SO[3]), .test_se(SE) );
  DATA_SYNC_test_1 DATA_SYNC_U2 ( .unsync_bus(RX_OUT_P), .bus_enable(RX_OUT_V), 
        .CLK(REF_CLK_O), .RST(SYNC_RST_1), .sync_bus(RX_P_DATA), 
        .enable_pulse(RX_D_VLD_SYNC), .test_si(n9), .test_se(n14) );
  RST_SYNC_0 RST_SYNC_U3 ( .RST(RST_N), .CLK(REF_CLK_O), .SYNC_RST(
        sync_rst_1_int) );
  RST_SYNC_1 RST_SYNC_U4 ( .RST(RST_N), .CLK(UART_CLK_O), .SYNC_RST(
        sync_rst_2_int) );
  ASYNC_FIFO_test_1 ASYNC_FIFO_U5 ( .W_CLK(REF_CLK_O), .W_RST(SYNC_RST_1), 
        .R_CLK(TX_CLK_O), .R_RST(SYNC_RST_2), .WR_DATA(WR_DATA), .W_INC(WR_INC), .R_INC(RD_INC), .RD_DATA(RD_DATA), .FULL(FULL), .EMPTY(F_EMPTY), .test_si2(
        SI[1]), .test_si1(SI[0]), .test_so2(n9), .test_so1(SO[0]), .test_se(SE) );
  MUX_2X1_0 MUX_2X1_U6 ( .IN_0(REF_CLK), .IN_1(scan_clk), .SEL(N2), .OUT(
        REF_CLK_O) );
  MUX_2X1_3 MUX_2X1_U7 ( .IN_0(UART_CLK), .IN_1(scan_clk), .SEL(N2), .OUT(
        UART_CLK_O) );
endmodule

