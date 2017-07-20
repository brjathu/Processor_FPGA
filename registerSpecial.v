`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:48:03 02/22/2017 
// Design Name: 
// Module Name:    register 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module registerSpecial(
			write_en,
			read_en,
			data_in,
			data_out,
			clk,
			memory_bus_in,
			memory_bus_out,
			rd,
			wr,
			to_cu
    );
	 
	 parameter bit_width=16;
	 parameter init_val = 0;
	 
	 input write_en,read_en,clk;
	 input [bit_width - 1:0] data_in;
	 output wire [bit_width - 1 : 0] data_out;
	 
	 input wire [bit_width - 1 : 0] memory_bus_in;
	 output wire [bit_width - 1 : 0] memory_bus_out;
	 
	 input rd,wr;
	 output wire [15:0] to_cu;
	 
	 
	 reg [bit_width - 1 : 0] store;
	 
	 initial begin
		store<=init_val;
	 end
	 
	 
	 always@(posedge clk) begin
		if(write_en == 1) begin
			store <= data_in;
		end
		
		if(rd==1) 
			store <= memory_bus_in;
	 end
	 
	 assign data_out = read_en ? store : 16'bz;
	 assign memory_bus_out = wr ? store : 16'bz;
	 assign to_cu = store;

endmodule
