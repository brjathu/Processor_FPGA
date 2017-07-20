`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:02:51 04/25/2017
// Design Name:   async_receiver
// Module Name:   /home/brjathu/FPGA/processor_final_version3/async_reciver.v
// Project Name:  processor_final_version3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: async_receiver
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module async_reciver;

	// Inputs
	reg clk;
	reg RxD;

	// Outputs
	wire RxD_data_ready;
	wire [7:0] RxD_data;
	wire RxD_idle;
	wire RxD_endofpacket;
	
	
		
	//local
	reg [9:0] data;
	reg [3:0] x;
	
	parameter buad_time =8680;

	// Instantiate the Unit Under Test (UUT)
	async_receiver uut (
		.clk(clk), 
		.RxD(RxD), 
		.RxD_data_ready(RxD_data_ready), 
		.RxD_data(RxD_data), 
		.RxD_idle(RxD_idle), 
		.RxD_endofpacket(RxD_endofpacket)
	);
	
	always begin
	#50 clk=~clk;
	end

	initial begin
		// Initialize Inputs
		clk = 0;
		RxD = 1;

		// Wait 100 ns for global reset to finish
		
		#104160
		data =10'b 1000011110;
		for(x = 0 ; x<10; x= x + 1) begin
			#buad_time RxD=data[x];
		end
		
		#104160
		data =10'b 1111100000;
		for(x = 0 ; x<10; x= x + 1) begin
			#buad_time RxD=data[x];
		end
		// Add stimulus here

	end
      
endmodule

