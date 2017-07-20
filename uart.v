`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:48:53 01/25/2017 
// Design Name: 
// Module Name:    uart 
// Project Name: 		UART Implementation
// Target Devices: 	MimasV2
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
module uart(
				clk_100,
				tx,
				rx,
				led_rx,
				led_tx,
				data_in,
				data_out,
				send,
				busy,
				clr,
				ready
				);


parameter baud_num=521;
input clk_100,rx,send,clr;
input [7:0] data_in;
output led_rx,led_tx,tx,busy,ready;//added reg
output [7:0] data_out;


wire clk_s;					
						
//initialize the clock divider for baurdrate
clock_divider #(.num_clk(baud_num)) cds(.clk_100(clk_100),
						.clk_s(clk_s)
						);

//initialize the transmitter
tx trans(.clk_s(clk_s),
			.send(send),
			.busy(busy),
			.data_in(data_in),
			.tx(tx),
			.led_tx(led_tx)
			);
			
//initialize the reciver		
rx #(.num_clk(baud_num)) recive(.clk(clk_100),
				.rx(rx),
				.data_out(data_out),
				.ready(ready),
				.led_rx(led_rx),
				.clr(clr)
				);

endmodule
