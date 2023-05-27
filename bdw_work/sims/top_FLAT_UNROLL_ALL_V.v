//
// Top-level Verilog module

// One of these modules is created for each testcase that involves
// co-simulation.  This one is for the 'FLAT_UNROLL_ALL_V' testcase.
// The top-level module contains:
//	- An instances of a co-simulation wrapper module for each instance
//	  simulating in Verilog.
//	- Hub initialization calls that load the shared library for the
//	  simulation.
//
// You can add any other legal Verilog to this template file, and it appear in
// the verilog module.

`timescale 1 ps / 1 ps

module top;

	// RTL wrapper instances for cosim.
	dut_cosim dut0();


	integer n_cur_time;
	initial n_cur_time=0;
	reg [63:0] cur_time;
	initial cur_time=0;

	`include "hub.v"

    reg[2048:0] dump_file;

	// Load library and begin co-simulation.
	initial begin

        // For gate-level simulations we back-annotate the instances with delays
        // from the SDF file
        

		// Open the trace file if that's appropriate.
		
			$value$plusargs("BDW_VLOG_DUMPFILE+%s",dump_file);
		if ( hubCurrentProjectDoesTrace( hub_trace_vcd ) )
			$dumpfile( dump_file );
		if ( hubCurrentProjectDoesTrace( hub_trace_vcd ) ) begin
		$dumpvars( 0, dut0.clk );
		$dumpvars( 0, dut0.rst );
		$dumpvars( 0, dut0.din_busy );
		$dumpvars( 0, dut0.din_vld );
		$dumpvars( 0, dut0.din_data );
		$dumpvars( 0, dut0.dout_busy );
		$dumpvars( 0, dut0.dout_vld );
		$dumpvars( 0, dut0.dout_data );
			$dumpvars( 4, dut0.dut0 );
		end


		// If the SystemC shared library will be loaded using +qbSetOption+libdef=libname.so
		// from the Verilog simulator's command line, the following line can be left
		// out.  In order to load the shared library directly from Verilog, uncomment
		// the following line using either ther automatically generated SIM_EXEC string,
		// or a hard-coded string giving the path to the shared library.
		//hubLoadLibrary( "bdw_work/sims/FLAT_UNROLL_ALL_V/sim_FLAT_UNROLL_ALL_V.so", "" );

		// Begin a co-simulation.
		// This task returns after esc_end_cosim() is called from SystemC.
		hubStartCosim;
		#100 $stop;
	end
endmodule

//
// The following wrapper modules are used only for NCSim cosims.
//

`ifdef BDW_NCSC

module dut_nc_cosim(clk,
 rst,
 din_busy,
 din_vld,
 din_data,
 dout_busy,
 dout_vld,
 dout_data
);

input clk;
wire clk;
input rst;
wire rst;
output din_busy;
wire din_busy;
input din_vld;
wire din_vld;
input din_data;
wire din_data;
input dout_busy;
wire dout_busy;
output dout_vld;
wire dout_vld;
output dout_data;
wire[15:0] dout_data;

	reg din_vld_delayed;
	always @ (din_vld) din_vld_delayed <= din_vld;
	reg din_data_delayed;
	always @ (din_data) din_data_delayed <= din_data;
	reg dout_busy_delayed;
	always @ (dout_busy) dout_busy_delayed <= dout_busy;
dut dut0( 	.clk(clk),
	.rst(rst),
	.din_busy(din_busy),
	.din_vld(din_vld_delayed),
	.din_data(din_data_delayed),
	.dout_busy(dout_busy_delayed),
	.dout_vld(dout_vld),
	.dout_data(dout_data)
);

   `include "hub.v"

	reg[2048:0] dump_file;

   initial begin


	$value$plusargs("BDW_VLOG_DUMPFILE+%s",dump_file);
if ( hubCurrentProjectDoesTrace( hub_trace_vcd ) )
	$dumpfile( dump_file );
if ( hubCurrentProjectDoesTrace( hub_trace_vcd ) ) begin
$dumpvars( 0, dut0.clk );
$dumpvars( 0, dut0.rst );
$dumpvars( 0, dut0.din_busy );
$dumpvars( 0, dut0.din_vld );
$dumpvars( 0, dut0.din_data );
$dumpvars( 0, dut0.dout_busy );
$dumpvars( 0, dut0.dout_vld );
$dumpvars( 0, dut0.dout_data );
	$dumpvars( 4, dut0 );
end
   end

endmodule


`endif


