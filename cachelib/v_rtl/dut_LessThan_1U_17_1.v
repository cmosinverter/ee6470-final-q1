`timescale 1ps / 1ps
/*****************************************************************************
    Verilog RTL Description
    
    Configured at: 17:40:24 CST (+0800), Wednesday 24 May 2023
    Configured on: ws26
    Configured by: m111061617 (m111061617)
    
    Created by: Stratus DpOpt 21.05.01 
*******************************************************************************/

module dut_LessThan_1U_17_1 (
	in1,
	out1
	); /* architecture "behavioural" */ 
input [4:0] in1;
output  out1;
wire  asc001;

assign asc001 = ((10'B1000000000 ^ 10'B0000001000)>(10'B1000000000 ^ {{5{in1[4]}}, in1}));

assign out1 = asc001;
endmodule

/* CADENCE  ubTxTAw= : u9/ySxbfrwZIxEzHVQQV8Q== ** DO NOT EDIT THIS LINE ******/


