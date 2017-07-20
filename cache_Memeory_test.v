`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:43:24 07/20/2017
// Design Name:   bram
// Module Name:   /home/brjathu/FPGA/Processor_FPGA/cache_Memeory_test.v
// Project Name:  processor_final_version4-uart_ledsignals_ok
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bram
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module cache_Memeory_test;

	// Inputs
	reg clka;
	reg ena;
	reg [0:0] wea;
	reg [15:0] addra;
	reg [15:0] dina;
	reg clkb;
	reg enb;
	reg [0:0] web;
	reg [15:0] addrb;
	reg [15:0] dinb;

	// Outputs
	wire [15:0] douta;
	wire [15:0] doutb;

	// Instantiate the Unit Under Test (UUT)
	bram uut (
		.clka(clka), 
		.ena(ena), 
		.wea(wea), 
		.addra(addra), 
		.dina(dina), 
		.douta(douta), 
		.clkb(clkb), 
		.enb(enb), 
		.web(web), 
		.addrb(addrb), 
		.dinb(dinb), 
		.doutb(doutb)
	);

	initial begin
		// Initialize Inputs
		clka = 0;
		ena = 0;
		wea = 0;
		addra = 0;
		dina = 0;
		clkb = 0;
		enb = 0;
		web = 0;
		addrb = 0;
		dinb = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

