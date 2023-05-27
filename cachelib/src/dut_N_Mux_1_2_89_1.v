`timescale 1ps / 1ps
/*****************************************************************************
    Verilog RTL Description
    
    Configured at: 21:03:44 CST (+0800), Tuesday 16 May 2023
    Configured on: ws26
    Configured by: m111061617 (m111061617)
    
    Created by: Stratus DpOpt 21.05.01 
*******************************************************************************/

module dut_N_Mux_1_2_89_1 (
	in2,
	ctrl1,
	out1
	); /* architecture "behavioural" */ 
input  in2,
	ctrl1;
output  out1;
wire  asc001;

reg [0:0] asc001_tmp_0;
assign asc001 = asc001_tmp_0;
always @ (ctrl1 or in2) begin
	case (ctrl1)
		1'B1 : asc001_tmp_0 = in2 ;
		default : asc001_tmp_0 = 1'B1 ;
	endcase
end

assign out1 = asc001;
endmodule

/* CADENCE  uLH2TQ4= : u9/ySxbfrwZIxEzHVQQV8Q== ** DO NOT EDIT THIS LINE ******/



