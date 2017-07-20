`timescale 1ns / 1ps

module textRX;

	// Inputs
	reg clk_100;
	reg rx;
	reg clr;

	// Outputs
	wire [7:0] data_out;
	wire ready;
	wire led_rx;
	
	//local
	reg [9:0] data;
	reg [3:0] x;
	
	// Instantiate the Unit Under Test (UUT)
	rx reciver (
		.clk(clk_100), 
		.rx(rx), 
		.data_out(data_out), 
		.ready(ready), 
		.led_rx(led_rx), 
		.clr(clr)
	);
	
	always begin
	#5 clk_100 = ~clk_100;
	end
	initial begin
		// Initialize Inputs
		clk_100 = 0;
		rx = 1;
		clr = 0;

		// Wait 100 ns for global reset to finish
		#1041600
		data =10'b 1000011110;
		for(x = 0 ; x<10; x= x + 1) begin
			#104160 rx=data[x];
		end	

	end
      
endmodule

