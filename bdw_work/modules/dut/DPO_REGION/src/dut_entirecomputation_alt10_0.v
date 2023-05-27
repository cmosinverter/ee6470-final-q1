`timescale 1ps / 1ps
/*****************************************************************************
    Verilog RTL Description
    
    Configured at: 15:23:05 CST (+0800), Friday 26 May 2023
    Configured on: ws26
    Configured by: m111061617 (m111061617)
    
    Created by: Stratus DpOpt 21.05.01 
*******************************************************************************/

module dut_entirecomputation_alt10_0 (
	in1,
	in2,
	in3,
	out1
	); /* architecture "behavioural" */ 
input  in1;
input [3:0] in2,
	in3;
output [4:0] out1;
wire [4:0] asc001,
	asc002;

assign asc002 = 
	+(in2)
	+(in3);

reg [4:0] asc001_tmp_0;
assign asc001 = asc001_tmp_0;
always @ (in1 or asc002) begin
	case (in1)
		1'B1 : asc001_tmp_0 = 5'B00000 ;
		default : asc001_tmp_0 = asc002 ;
	endcase
end

assign out1 = asc001;
endmodule

/* CADENCE  v7D2Sg4= : u9/ySxbfrwZIxEzHVQQV8Q== ** DO NOT EDIT THIS LINE ******/


