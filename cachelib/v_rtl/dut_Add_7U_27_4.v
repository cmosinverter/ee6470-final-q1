`timescale 1ps / 1ps
/*****************************************************************************
    Verilog RTL Description
    
    Configured at: 19:38:23 CST (+0800), Wednesday 24 May 2023
    Configured on: ws26
    Configured by: m111061617 (m111061617)
    
    Created by: Stratus DpOpt 21.05.01 
*******************************************************************************/

module dut_Add_7U_27_4 (
	in1,
	out1
	); /* architecture "behavioural" */ 
input [6:0] in1;
output [6:0] out1;
wire [6:0] asc001;

assign asc001 = 
	+(in1)
	+(7'B0000001);

assign out1 = asc001;
endmodule

/* CADENCE  urfzSws= : u9/ySxbfrwZIxEzHVQQV8Q== ** DO NOT EDIT THIS LINE ******/


