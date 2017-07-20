`timescale 1ns / 1ps

module testTx;

	// Inputs
	reg clk_s;
	reg send;
	reg [7:0] data_in;
	// Outputs
	wire busy;
	wire tx;
	wire led_tx;

	// Instantiate the Unit Under Test (UUT)
	tx transmitter (
		.clk_s(clk_s),
		.send(send), 
		.busy(busy), 
		.data_in(data_in), 
		.tx(tx),
		.led_tx(led_tx)
	);


	always begin
	  #5208 clk_s <= ~clk_s;
	end
	
	initial begin
		// Initialize Inputs
		clk_s 	= 0;
		send 		= 0;
		data_in 	= 0;

		// Wait 100 ns for global reset to finish
		#10000;
      send = 1;
		// Add stimulus here
		
		data_in=8'b10101010;
		#20000
		send =0;
		
		
		#150000
		send =1;
		#10000
		data_in=8'b00010001;
		#20000
		send = 0;
	end
      
endmodule

