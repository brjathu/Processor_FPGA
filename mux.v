`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:00:20 02/23/2017 
// Design Name: 
// Module Name:    mux 
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
module mux2(
		data_one,
		data_two,
		sel_one,
		sel_two,
		data_out
    );
	 
	 parameter width = 16;
	 input [width-1:0] data_one;
	 input [width-1:0] data_two;
	 input sel_one,sel_two;
	 output reg [width-1:0] data_out;
	 
	 always @ (sel_one or sel_two or data_one or data_two) begin
		if (sel_one == 1'b0) begin
			 data_out <= data_one;
		end 
		else if (sel_one == 1'b1) begin
			data_out <= data_two ;
		end
		else
			data_out <= 16'bz;
	end


endmodule
