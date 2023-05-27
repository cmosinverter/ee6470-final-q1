`timescale 1ps / 1ps
/*****************************************************************************
    Verilog RTL Description
    
    Configured at: 16:38:11 CST (+0800), Thursday 18 May 2023
    Configured on: ws26
    Configured by: m111061617 (m111061617)
    
    Created by: Stratus DpOpt 21.05.01 
*******************************************************************************/

module dut_Add2Cati0Subi1u3u6_1 (
	in2,
	in1,
	out1
	); /* architecture "behavioural" */ 
input [5:0] in2;
input [2:0] in1;
output [5:0] out1;
wire [5:0] asc001,
	asc002;
wire [2:0] asc004;

assign asc004 = 
	+(in1)
	-(3'B001);

assign asc002 = {asc004,3'B000};

assign asc001 = 
	+(in2)
	+(asc002);

assign out1 = asc001;
endmodule

/* CADENCE  uLH0TA0= : u9/ySxbfrwZIxEzHVQQV8Q== ** DO NOT EDIT THIS LINE ******/



