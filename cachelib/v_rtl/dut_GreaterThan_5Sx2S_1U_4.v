`timescale 1ps / 1ps
/*****************************************************************************
    Verilog RTL Description
    
    Configured at: 17:40:12 CST (+0800), Wednesday 24 May 2023
    Configured on: ws26
    Configured by: m111061617 (m111061617)
    
    Created by: Stratus DpOpt 21.05.01 
*******************************************************************************/

module dut_GreaterThan_5Sx2S_1U_4 (
	in2,
	in1,
	out1
	); /* architecture "behavioural" */ 
input [4:0] in2;
input [1:0] in1;
output  out1;
wire  asc001;

assign asc001 = ((10'B1000000000 ^ {{5{in2[4]}}, in2})>(10'B1000000000 ^ {{8{in1[1]}}, in1}));

assign out1 = asc001;
endmodule

/* CADENCE  ubb5Sg0= : u9/ySxbfrwZIxEzHVQQV8Q== ** DO NOT EDIT THIS LINE ******/


