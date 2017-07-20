`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:40:48 02/23/2017
// Design Name:   control_unit
// Module Name:   /home/brjathu/FPGA/uart-ayya/test_cu.v
// Project Name:  uart-ayya
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: control_unit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_cu;

	// Inputs
	reg [7:0] addr_ins;
	reg [3:0] operand1;
	reg [3:0] operand2;
	reg en;
	reg clk;

	// Outputs
	wire [39:0] data_out;

	// Instantiate the Unit Under Test (UUT)
	control_unit uut (
		.addr_ins(addr_ins), 
		.operand1(operand1), 
		.operand2(operand2), 
		.en(en), 
		.clk(clk), 
		.data_out(data_out)
	);
	
	always begin
	#5 clk = ~clk;
	end
	
	
	initial begin
		// Initialize Inputs
		addr_ins = 0;
		operand1 = 0;
		operand2 = 0;
		en = 0;
		clk = 1;

		// Wait 100 ns for global reset to finish
		#100;
       
		// Add stimulus here

	end
      
endmodule

