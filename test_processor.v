`timescale 1ns / 10ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:20:32 02/23/2017
// Design Name:   u_processor
// Module Name:   /home/brjathu/FPGA/uart-ayya/test_processor.v
// Project Name:  uart-ayya
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: u_processor
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_processor;

	// Inputs
	reg clk_100;
	reg [15:0] memory_in;
	reg hit;

	// Outputs
	wire memory_write_en;
	wire [38:0] control_signals;
	wire [15 :0] instruction;
	wire [7:0] mux8;
	wire [15:0] b_bus;
	wire [15:0] c_bus;
	wire [15:0] acc;
	wire [15:0] tester;
	wire [15:0] address_out;
	wire [15:0] memory_out;
	

	// Instantiate the Unit Under Test (UUT)
	u_processor uut (
		.clk_100(clk_100), 
		.memory_write_en(memory_write_en),
		.control_signals(control_signals),
		.instruction(instruction),
		.mux8(mux8),
		.b_bus(b_bus),
		.c_bus(c_bus),
		.acc(acc),
		.tester(tester),
		.address_out(address_out),
		.memory_out(memory_out),
		.memory_in(memory_in),
		.hit(hit)
	);
	
	always begin
	#5 clk_100 = ~clk_100;
	
	end
	

	initial begin
		// Initialize Inputs
		clk_100 = 1;
		memory_in = 0;
		hit = 0;

		// Wait 100 ns for global reset to finish
		#7
		memory_in = {5'b11100,3'b000, 4'b0110, 4'b0011};  //load r6,r3
		#18
		memory_in =15;
		#50
		hit=1;
		
		#20
		memory_in = 16'b1111100000000000;

		
        
		// Add stimulus here

	end
      
endmodule

