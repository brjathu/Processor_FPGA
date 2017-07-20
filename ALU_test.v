`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:08:56 02/22/2017
// Design Name:   ALU
// Module Name:   /home/brjathu/FPGA/uart-ayya/ALU_test.v
// Project Name:  uart-ayya
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALU_test;

	// Inputs
	reg [15:0] b_bus;
	reg [15:0] acc;
	reg [4:0] ctrl;
	reg clk_100;

	// Outputs
	wire z;
	wire n;
	wire o;
	wire [15:0] out;
	
	
	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.b_bus(b_bus), 
		.acc(acc), 
		.ctrl(ctrl), 
		.z(z), 
		.n(n), 
		.o(o), 
		.out(out),
		.clk_100(clk_100)
	);
	always begin
	#5 clk_100 = ~clk_100;
	end

	initial begin
		// Initialize Inputs
		b_bus = 0;
		acc = 0;
		ctrl = 0;
		clk_100 = 0;

		// Wait 100 ns for global reset to finish
		
		
		
		
		#100;
		ctrl = 0;
      b_bus=15;
		acc = 12;
		// zero
		
		
		#100;
		//one
		ctrl = 1;
      b_bus=15;
		acc = 12;
		
				#100;
		//A-B
		ctrl = 11;
      b_bus=12;
		acc = 12;
		
		#100;
		//negetive one
		ctrl = 2;
      b_bus=15;
		acc = 12;
		
		
		#100;
		//128 
		ctrl = 3;
      b_bus=15;
		acc = 12;
		
		
		#100;
		//A
		ctrl = 4;
      b_bus=16;
		acc  =12;
		
		
		#100;
		//B
		ctrl = 5;
      b_bus=15;
		acc = 12;
		
		
		#100;
		//-A
		ctrl = 6;
      b_bus=15;
		acc = 12;
		
		
		
		#100;
		//-B
		ctrl = 7;
      b_bus=15;
		acc = 12;
		
		
		
		#100;
		//not A
		ctrl = 8;
      b_bus=15;
		acc = 12;
		
		
		#100;
		//not B
		ctrl = 9;
      b_bus=15;
		acc = 12;
		
		
		
		#100;
		//A+B
		ctrl = 10;
      b_bus=16'b1111111111111111;
		acc = 1;
				
		#100;
		//A*B
		ctrl = 12;
      b_bus=15;
		acc = 12;
		
		
		
		#100;
		///A+1
		ctrl = 13;
      b_bus=15;
		acc = 12;
		
		#100;
		//A-1
		ctrl = 14;
      b_bus=15;
		acc = 12;
		
		#100;
		//B+1
		ctrl = 15;
      b_bus=15;
		acc = 12;
		
		
		#100;
		//B-1
		ctrl = 16;
      b_bus=15;
		acc = 12;
		
		#100;
		//and
		ctrl = 17;
      b_bus=15;
		acc = 12;
		
		#100;
		//or
		ctrl = 18;
      b_bus=15;
		acc = 12;
		
		
		#100;
		//xor
		ctrl = 19;
      b_bus=15;
		acc = 12;
		
		#100;
		//shift left
		ctrl = 20;
      b_bus=0;
		acc = 12;
		
		
		#100;
		//shift right
		ctrl = 21;
      b_bus=2;
		acc = 12;
		
		#100;
		//less than
		ctrl = 22;
      b_bus=2;
		acc = 12;
		
		#100;
		//greater than
		ctrl = 23;
      b_bus=2;
		acc = 12;
		
		
		

	end
      
endmodule

