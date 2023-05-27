`timescale 1ps / 1ps
/*****************************************************************************
    Verilog RTL Description
    
    Configured at: 19:28:52 CST (+0800), Wednesday 24 May 2023
    Configured on: ws26
    Configured by: m111061617 (m111061617)
    
    Created by: Stratus DpOpt 21.05.01 
*******************************************************************************/

module dut_N_Mux_16_8_1_4 (
	in9,
	in8,
	in7,
	in6,
	in5,
	in4,
	in3,
	in2,
	ctrl1,
	out1
	); /* architecture "behavioural" */ 
input [15:0] in9,
	in8,
	in7,
	in6,
	in5,
	in4,
	in3,
	in2;
input [2:0] ctrl1;
output [15:0] out1;
wire [15:0] asc001;

reg [15:0] asc001_tmp_0;
assign asc001 = asc001_tmp_0;
always @ (ctrl1 or in8 or in7 or in6 or in5 or in4 or in3 or in2 or in9) begin
	case (ctrl1)
		3'B110 : asc001_tmp_0 = in8 ;
		3'B101 : asc001_tmp_0 = in7 ;
		3'B100 : asc001_tmp_0 = in6 ;
		3'B011 : asc001_tmp_0 = in5 ;
		3'B010 : asc001_tmp_0 = in4 ;
		3'B001 : asc001_tmp_0 = in3 ;
		3'B000 : asc001_tmp_0 = in2 ;
		default : asc001_tmp_0 = in9 ;
	endcase
end

assign out1 = asc001;
endmodule

/* CADENCE  vbTzSA4= : u9/ySxbfrwZIxEzHVQQV8Q== ** DO NOT EDIT THIS LINE ******/




