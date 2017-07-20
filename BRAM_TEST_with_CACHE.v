`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:53:39 07/20/2017
// Design Name:   BRAM_TEST
// Module Name:   /home/brjathu/FPGA/Processor_FPGA/BRAM_TEST_with_CACHE.v
// Project Name:  processor_final_version4-uart_ledsignals_ok
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: BRAM_TEST
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module BRAM_TEST_with_CACHE;

	// Inputs
	reg clk_100;
	reg rx;
	reg [2:0] ctrlSw;

	// Outputs
	wire tx;
	wire led_rx;
	wire led_tx;
	wire led_pro;
	wire [2:0] ledInd;
	wire [15:0] addr_io;
	wire [15:0] data_in_io;
	wire [15:0] data_out_io;
	wire we_io;
	wire [15:0] memory_addr_pro;
	wire [15:0] memory_data_in_pro;
	wire [15:0] memory_data_out_pro;
	wire we_pro;
	wire pro_clk;
	wire ready;
	wire [5:0] state;
	wire send;
	wire z;
	wire [15:0] tester;
	wire [15:0] c_bus;
	wire [8:0] test_ins;
	wire hit;
	
	
	
	
	//internals
	reg [9:0] data;
	reg [3:0] x;
	
	parameter buad_time =8680;

	// Instantiate the Unit Under Test (UUT)
	BRAM_TEST uut (
		.clk_100(clk_100), 
		.rx(rx), 
		.tx(tx), 
		.led_rx(led_rx), 
		.led_tx(led_tx), 
		.led_pro(led_pro), 
		.ledInd(ledInd), 
		.ctrlSw(ctrlSw), 
		.addr_io(addr_io), 
		.data_in_io(data_in_io), 
		.data_out_io(data_out_io), 
		.we_io(we_io), 
		.memory_addr_pro(memory_addr_pro), 
		.memory_data_in_pro(memory_data_in_pro), 
		.memory_data_out_pro(memory_data_out_pro), 
		.we_pro(we_pro), 
		.pro_clk(pro_clk), 
		.ready(ready), 
		.state(state), 
		.send(send), 
		.z(z), 
		.tester(tester), 
		.c_bus(c_bus), 
		.test_ins(test_ins), 
		.hit(hit)
	);
	
	
	always begin
	#5 clk_100 = ~clk_100;
	end

	initial begin
		// Initialize Inputs
		clk_100 = 0;
		rx = 1;
		ctrlSw[0] = 1;
		ctrlSw[1] = 0;
      ctrlSw[2] = 0;

		// Wait 100 ns for global reset to finish
		#100;

		  
		#104160
		data =10'b 1_11101_000_0; //store R1,r2
		for(x = 0 ; x<10; x= x + 1) begin
			#buad_time rx=data[x];
		end
		
		
		#104160
		data =10'b 1_0001_0010_0; // r1,r2
		for(x = 0 ; x<10; x= x + 1) begin
			#buad_time rx=data[x];
		end
		
		#104160
		data =10'b 11111_11110; // r1,r2
		for(x = 0 ; x<10; x= x + 1) begin
			#buad_time rx=data[x];
		end
		
		#104160
		data =10'b 11111_11110; // r1,r2
		for(x = 0 ; x<10; x= x + 1) begin
			#buad_time rx=data[x];
		end
		// Add stimulus here

		#104160
		ctrlSw[0] = 0;
		ctrlSw[1] = 1;
      ctrlSw[2] = 0;
	end
      
endmodule

