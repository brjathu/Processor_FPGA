`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:18:55 02/22/2017
// Design Name:   register
// Module Name:   /home/brjathu/FPGA/uart-ayya/test_register.v
// Project Name:  uart-ayya
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: register
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_register;

	// Inputs
	reg write_en;
	reg read_en;
	reg [15:0] data_in;
	reg clk;

	// Outputs
	wire [15:0] data_out;
	wire [15:0] store;

	// Instantiate the Unit Under Test (UUT)
	register uut (
		.write_en(write_en), 
		.read_en(read_en), 
		.data_in(data_in), 
		.data_out(data_out), 
		.clk(clk),
		.store(store)
	);

	always begin
	#5 clk = ~clk;
	end
	
	
	initial begin
		// Initialize Inputs
		write_en = 0;
		read_en = 0;
		data_in = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
		write_en=1;
		#100
		data_in = 15;
		
		#100
		read_en = 1;
		// Add stimulus here

		#100
		read_en = 0;

	end
      
endmodule

