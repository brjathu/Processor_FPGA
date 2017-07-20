`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:45:03 02/23/2017
// Design Name:   registerSpecial
// Module Name:   /home/brjathu/FPGA/uart-ayya/test_ir.v
// Project Name:  uart-ayya
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: registerSpecial
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_ir;

	// Inputs
	reg write_en;
	reg read_en;
	reg [15:0] data_in;
	reg clk;
	reg rd;
	reg wr;

	// Outputs
	wire [15:0] data_out;
	wire [15:0] to_cu;

	// Bidirs
	wire [15:0] memory_bus;

	// Instantiate the Unit Under Test (UUT)
	registerSpecial uut (
		.write_en(write_en), 
		.read_en(read_en), 
		.data_in(data_in), 
		.data_out(data_out), 
		.clk(clk), 
		.memory_bus(memory_bus), 
		.rd(rd), 
		.wr(wr), 
		.to_cu(to_cu)
	);
	
	always begin
	#5 clk=~clk;
	end

	initial begin
		// Initialize Inputs
		write_en = 0;
		read_en = 0;
		data_in = 0;
		clk = 0;
		rd = 0;
		wr = 0;
	
		// Wait 100 ns for global reset to finish
		#102;
        wr =1;
		// Add stimulus here

	end
      
endmodule

