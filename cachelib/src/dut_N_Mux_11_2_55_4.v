`timescale 1ps / 1ps
/*****************************************************************************
    Verilog RTL Description
    
    Configured at: 19:41:32 CST (+0800), Wednesday 24 May 2023
    Configured on: ws26
    Configured by: m111061617 (m111061617)
    
    Created by: Stratus DpOpt 21.05.01 
*******************************************************************************/

module dut_N_Mux_11_2_55_4 (
	in2,
	ctrl1,
	out1
	); /* architecture "behavioural" */ 
input [10:0] in2;
input  ctrl1;
output [10:0] out1;
wire [10:0] asc001;

reg [10:0] asc001_tmp_0;
assign asc001 = asc001_tmp_0;
always @ (ctrl1 or in2) begin
	case (ctrl1)
		1'B1 : asc001_tmp_0 = 11'B00000000000 ;
		default : asc001_tmp_0 = in2 ;
	endcase
end

assign out1 = asc001;
endmodule

/* CADENCE  uLT2Qgo= : u9/ySxbfrwZIxEzHVQQV8Q== ** DO NOT EDIT THIS LINE ******/



