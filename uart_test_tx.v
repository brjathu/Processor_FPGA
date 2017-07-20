`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:00:52 02/16/2017
// Design Name:   uart
// Module Name:   /home/brjathu/FPGA/uart-ayya/uart_Test.v
// Project Name:  uart-ayya
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: uart
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module uart_test_tx;

	// Inputs
	reg clk_100;
	reg rx;
	reg [7:0] data_in;
	reg send;
	reg clr;

	// Outputs
	wire tx;
	wire led_rx;
	wire led_tx;
	wire [7:0] data_out;
	wire busy;
	wire ready;

	// Instantiate the Unit Under Test (UUT)
	uart uut (
		.clk_100(clk_100), 
		.tx(tx), 
		.rx(rx), 
		.led_rx(led_rx), 
		.led_tx(led_tx), 
		.data_in(data_in), 
		.data_out(data_out), 
		.send(send), 
		.busy(busy), 
		.clr(clr), 
		.ready(ready)
	);

	always begin
		#5 clk_100 = ~clk_100;
	end
	
	initial begin
		// Initialize Inputs
		clk_100 = 0;
		rx = 1;
		data_in = 0;
		clr = 0;
		send = 0;
		//
		//reset to finish 00100011
		#104160
		send = 1;
		#100
		data_in= 8'b00000000;
		
		#1000000
		data_in= 8'b11101111;
		#1000000
		send = 0;
		end
      
endmodule

