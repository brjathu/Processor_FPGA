`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:47:00 07/20/2017
// Design Name:   cache
// Module Name:   /home/brjathu/FPGA/Processor_FPGA/cacheTest.v
// Project Name:  processor_final_version4-uart_ledsignals_ok
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: cache
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module cacheTest;

	// Inputs
	reg [15:0] data_in_from_pro;
	reg [15:0] data_in_from_mem;
	reg [15:0] addr_in;
	reg memory_write_en;
	reg clk_100;

	// Outputs
	wire [15:0] data_out_to_pro;
	wire [15:0] data_out_to_mem;
	wire [15:0] addr_out;
	wire hit;

	// Instantiate the Unit Under Test (UUT)
	cache uut (
		.data_in_from_pro(data_in_from_pro), 
		.data_in_from_mem(data_in_from_mem), 
		.data_out_to_pro(data_out_to_pro), 
		.data_out_to_mem(data_out_to_mem), 
		.addr_in(addr_in), 
		.addr_out(addr_out), 
		.hit(hit), 
		.memory_write_en(memory_write_en), 
		.clk_100(clk_100)
	);
	
	always begin
		#5 clk_100 = ~clk_100;
	end

	initial begin
		// Initialize Inputs
		data_in_from_pro = 0;
		data_in_from_mem = 0;
		addr_in = 16'b11110000_000001_01;
		memory_write_en = 0;
		clk_100 = 0;

		// Wait 100 ns for global reset to finish
		#100;
       
	end
      
endmodule

