`timescale 1ns / 50ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:47:05 02/21/2017
// Design Name:   BRAM_TEST
// Module Name:   /home/brjathu/FPGA/uart-ayya/bram_ttest.v
// Project Name:  uart-ayya
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

module bram_ttest;

	// Inputs
	reg clk_100;
	reg rx;
	reg [2:0] ctrlSw;

	// Outputs
	wire tx;
	wire led_rx;
	wire led_tx;
	wire [2:0] ledInd;
	wire we_io;
	wire [15 : 0] addr_io;
	wire [15:0] data_in_io;
	wire [15:0] data_out_io;
	wire ready;
	wire clr;
	wire [5:0] state;
	wire send;
	wire [15:0] c_bus;
	
	 wire [15:0] memory_addr_pro;
	 wire [15:0] memory_data_in_pro;
	 wire [15:0] memory_data_out_pro;
	 wire we_pro;
	 wire pro_clk;
	 wire [15:0] tester;
	 wire z;
	 wire [8:0] test_ins;
	//local
	reg [9:0] data;
	reg [15:0] x;
	reg [15:0] y;
	
	//file handling
	//reg [7:0] data_f [65655:0];
	
	
	parameter buad_time =104166;   //115200 - 434 

	// Instantiate the Unit Under Test (UUT)
	BRAM_TEST uut (
		.clk_100(clk_100), 
		.rx(rx), 
		.tx(tx), 
		.led_rx(led_rx), 
		.led_tx(led_tx), 
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
		.clr(clr),
		.send(send),
		.state(state),
		
		.z(z),
		.tester(tester),
		.c_bus(c_bus),
		.test_ins(test_ins)
		
	);
	

	always begin
	#5 clk_100 = ~clk_100;
	end
	initial begin
		
		//$readmemh("/home/brjathu/sample2.txt",data_f); 
		
		// Initialize Inputs
		clk_100 = 0;
		rx = 1;
		ctrlSw = 0;	
		
		#100
      ctrlSw[0] = 0;
		ctrlSw[1] = 1;
      ctrlSw[2] = 0;
		
		 
	
		// Add stimulus here

	end
      
endmodule

