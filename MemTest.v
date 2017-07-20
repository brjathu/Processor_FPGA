`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:04:44 02/16/2017
// Design Name:   RAM
// Module Name:   /home/brjathu/FPGA/uart-ayya/MemTest.v
// Project Name:  uart-ayya
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RAM
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module MemTest;

	// Inputs
	reg clka;
	reg [0:0] wea;
	reg [7:0] addra;
	reg [7:0] dina;

	// Outputs
	wire [7:0] douta;

	// Instantiate the Unit Under Test (UUT)
	RAM uut (
		.clka(clka), 
		.wea(wea), 
		.addra(addra), 
		.dina(dina), 
		.douta(douta)
	);
	
	always begin
		#5 clka = ~clka;
	end

	initial begin
		// Initialize Inputs
		clka = 0;
		wea = 1;
		addra = 0;
		dina = 0;

		// Wait 100 ns for global reset to finish
		#10000;
        
		addra = 8'b00001111;
		dina = 8'b10101010;
		#10000
      addra = 8'b01010101;		
		// Add stimulus here

	end
      
endmodule

