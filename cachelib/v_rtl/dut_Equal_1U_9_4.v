`timescale 1ps / 1ps
/*****************************************************************************
    Verilog RTL Description
    
    Configured at: 20:52:11 CST (+0800), Tuesday 16 May 2023
    Configured on: ws26
    Configured by: m111061617 (m111061617)
    
    Created by: Stratus DpOpt 21.05.01 
*******************************************************************************/

module dut_Equal_1U_9_4 (
	in1,
	out1
	); /* architecture "behavioural" */ 
input [5:0] in1;
output  out1;
wire  asc001;

assign asc001 = (11'B00000000010==in1);

assign out1 = asc001;
endmodule

/* CADENCE  urb3Qgg= : u9/ySxbfrwZIxEzHVQQV8Q== ** DO NOT EDIT THIS LINE ******/


