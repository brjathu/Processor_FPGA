`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:22:09 04/25/2017
// Design Name:   io_module
// Module Name:   /home/brjathu/FPGA/processor_final_version3/io_module_test.v
// Project Name:  processor_final_version3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: io_module
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module io_module_test;

	// Inputs
	reg clk_100;
	reg rx;
	reg [15:0] data_in_io;
	reg ctrl_io_receive;
	reg ctrl_io_send;

	// Outputs
	wire tx;
	wire [15:0] data_out_io;
	wire [15:0] addr_io;
	wire we_io;
	wire led_rx;
	wire led_tx;
	wire ready;
	wire clr;
	wire [5:0] state;
	wire send;
	wire [7:0] data_buffer;
	
		//local
	reg [9:0] data;
	reg [3:0] x;
	
	parameter buad_time =8680;

	// Instantiate the Unit Under Test (UUT)
	io_module uut (
		.clk_100(clk_100), 
		.rx(rx), 
		.tx(tx), 
		.data_in_io(data_in_io), 
		.data_out_io(data_out_io), 
		.addr_io(addr_io), 
		.we_io(we_io), 
		.ctrl_io_receive(ctrl_io_receive), 
		.ctrl_io_send(ctrl_io_send), 
		.led_rx(led_rx), 
		.led_tx(led_tx), 
		.ready(ready), 
		.clr(clr), 
		.state(state), 
		.send(send),
		  .data_buffer(data_buffer)
	);
	
	
	bram bram(
  .clka(clk_100), // input clka
  .wea(we_io), // input [0 : 0] wea
  .addra(addr_io), // input [15 : 0] addra
  .dina(data_out_io), // input [15 : 0] dina
  .douta(data_in_io), // output [15 : 0] douta
  .ena(1'b1),
  .clkb(1'b0), // input clkb
  .web(1'b0), // input [0 : 0] web
  .addrb(1'bz), // input [15 : 0] addrb
  .dinb(1'bz), // input [15 : 0] dinb
  //.doutb(1'bz), // output [15 : 0] doutb
  .enb(1'b0)
);
	
	always begin
	#50 clk_100 =~ clk_100;
	end
	initial begin
		// Initialize Inputs
		clk_100 = 0;
		rx = 1;
		data_in_io = 0;
		ctrl_io_receive = 1;
		ctrl_io_send = 0;

		// Wait 100 ns for global reset to finish
		#100;
      
		
		#104160
		data =10'b 1000011110;
		for(x = 0 ; x<10; x= x + 1) begin
			#buad_time rx=data[x];
		end
		
		
		#50416
		data =10'b 1111100000;
		for(x = 0 ; x<10; x= x + 1) begin
			#buad_time rx=data[x];
		end
		
		#104160
		data =10'b 1110011000;
		for(x = 0 ; x<10; x= x + 1) begin
			#buad_time rx=data[x];
		end
		
		
		#50416
		data =10'b 1000110000;
		for(x = 0 ; x<10; x= x + 1) begin
			#buad_time rx=data[x];
		end
		
		// Add stimulus here

	end
      
endmodule

