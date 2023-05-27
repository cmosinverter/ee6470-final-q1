`timescale 1ps / 1ps
/*****************************************************************************
    Verilog RTL Description
    
    Configured at: 16:38:12 CST (+0800), Thursday 18 May 2023
    Configured on: ws26
    Configured by: m111061617 (m111061617)
    
    Created by: Stratus DpOpt 21.05.01 
*******************************************************************************/

module dut_AnyAdd2u6Cati0u3_1 (
	in2,
	in1,
	out1
	); /* architecture "behavioural" */ 
input [2:0] in2;
input [5:0] in1;
output  out1;
wire  asc001;
wire [5:0] asc002,
	asc003;

assign asc003 = {in2,3'B000};

assign asc002 = 
	+(asc003)
	+(in1);

assign asc001 = 
	(|asc002);

assign out1 = asc001;
endmodule

/* CADENCE  ubj1TA8= : u9/ySxbfrwZIxEzHVQQV8Q== ** DO NOT EDIT THIS LINE ******/



