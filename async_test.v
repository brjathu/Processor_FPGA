`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:59:36 04/25/2017
// Design Name:   async_transmitter
// Module Name:   /home/brjathu/FPGA/processor_final_version3/async_test.v
// Project Name:  processor_final_version3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: async_transmitter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module async_test;

	// Inputs
	reg clk;
	reg TxD_start;
	reg [7:0] TxD_data;

	// Outputs
	wire TxD;
	wire TxD_busy;

	// Instantiate the Unit Under Test (UUT)
	async_transmitter uut (
		.clk(clk), 
		.TxD_start(TxD_start), 
		.TxD_data(TxD_data), 
		.TxD(TxD), 
		.TxD_busy(TxD_busy)
	);
	
	always begin
	#50 clk=~clk;
	end
	initial begin
		// Initialize Inputs
		clk = 0;
		TxD_start = 0;
		TxD_data = 0;

		// Wait 100 ns for global reset to finish
		#10000;
		TxD_start = 1;
		TxD_data = 8'b00001111;
		
		#10000;
		TxD_start = 0;
        
		// Add stimulus here

	end
      
endmodule

