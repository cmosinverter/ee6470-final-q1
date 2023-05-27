`timescale 1ps / 1ps
/*****************************************************************************
    Verilog RTL Description
    
    Configured at: 15:23:47 CST (+0800), Friday 26 May 2023
    Configured on: ws26
    Configured by: m111061617 (m111061617)
    
    Created by: Stratus DpOpt 21.05.01 
*******************************************************************************/

module dut_entirecomputation_alt1_0 (
	in1,
	in2,
	out1
	); /* architecture "behavioural" */ 
input  in1,
	in2;
output  out1;
wire  asc001,
	asc003;

assign asc003 = 
	((~in1));

assign asc001 = 
	(asc003)
	&(in2);

assign out1 = asc001;
endmodule

/* CADENCE  ubLzSg0= : u9/ySxbfrwZIxEzHVQQV8Q== ** DO NOT EDIT THIS LINE ******/

