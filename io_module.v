`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:00:53 02/26/2017 
// Design Name: 
// Module Name:    io_module 
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
module io_module(
	clk_100,
	rx,
	tx,
	data_in_io,
	data_out_io,
	addr_io,
	we_io,
	ctrl_io_receive,
	ctrl_io_send,
	led_rx,
	led_tx,
	ready,
	state,
	send
    );

	input clk_100,rx;
	input ctrl_io_receive;
	input ctrl_io_send;
	input [15:0] data_in_io;
	output reg [15:0] addr_io;
	output reg [15:0] data_out_io;
	output tx;
	output reg we_io;
	output wire led_rx;
	output wire led_tx;
	
	//local
	output reg send;
	output wire ready;
	wire busy;
	reg [7:0] data_in;
	wire [7:0] data_out;
	output reg [5:0] state;
	reg [15:0] auto_send;
	wire RxD_idle;
	
	//parameters
	parameter start_image_loc=36864-1;
	parameter end_image_loc = 53247;
	
	
	
	initial begin
		addr_io 		<= 0;
		data_out_io <= 0;
		we_io 		<= 0;
		data_in 		<= 0;
		send 			<= 0;
		state 		<= 0;
		auto_send   <= 0;
	end
	
	
	async_receiver uutrx (
		.clk(clk_100), 
		.RxD(rx), 
		.RxD_data_ready(ready), 
		.RxD_data(data_out), 
		.RxD_idle(RxD_idle)
//		.RxD_endofpacket(RxD_endofpacket)
	);
	
	
	async_transmitter uuttx (
		.clk(clk_100), 
		.TxD_start(send), 
		.TxD_data(data_in), 
		.TxD(tx), 
		.TxD_busy(busy)
	);
	
	
	
	assign led_tx = busy;
	assign led_rx = ~RxD_idle;
	
	
				
	always@(posedge clk_100) begin
		
		//first byte
		if(ctrl_io_receive == 1 && ctrl_io_send == 0) begin
			if(ready==1 && state == 0) begin
				data_out_io[15:8] 	<= data_out;
				state 		<= 1;
			end
			else if(ready== 0 && state == 1) begin
				state 		<= 2;
			end
			
			//second byte
			else if(ready == 1 && state == 2) begin
				data_out_io[7:0] 	<= data_out;
				state 			<= 5;
			end
			else if(ready== 1 && state == 5) begin
				we_io 			<= 1;
				addr_io 			<= addr_io + 1;
				state 			<= 6;
			end
			else if(ready== 1 && state == 6) begin
				state 			<= 7;
			end
			else if(ready== 0 && state == 7) begin
				we_io				<= 0;
				state 			<= 0;
			end
		end
		
		
		//reviceing part
		if(ctrl_io_receive == 0 && ctrl_io_send == 1) begin
		
			if(auto_send < 1000 ) begin
				auto_send 		<= auto_send + 1;
				state 			<= 0;
				addr_io 			<= end_image_loc;
			end
			else begin
				if(addr_io != start_image_loc) begin
					if(state== 0 && busy == 0) begin
						data_in 	<= data_in_io[7:0];							
						state 	<= 1;				
					end
					else if(state== 1  && busy == 0 ) begin
						state 	<= 2;
					end
					else if(state== 2  && busy == 0) begin
						send 		<= 1;
						state 	<= 3;
					end
					else if(state== 3 && busy == 1) begin
						state 	<= 4;
					end
					else if(state== 4  && busy == 1) begin
						send 		<= 0;
						addr_io 	<= addr_io - 1;
						state 	<= 0;
					end
				end
			end
		
		end
	end

endmodule
