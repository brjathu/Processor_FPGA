`timescale 1ns / 1ps

module testClock;

	// Inputs
	reg clk_100;

	// Outputs
	wire clk_s;

	// Instantiate the Unit Under Test (UUT)
	clock_divider #(.num_clk(5)) uut (
		.clk_100(clk_100), 
		.clk_s(clk_s)
	);
	
	always begin
		#5 clk_100 = ~clk_100;
	end

	initial begin
		// Initialize Inputs
		clk_100 = 0;
	end
      
endmodule

