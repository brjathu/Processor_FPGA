`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:36:18 02/16/2017 
// Design Name: 
// Module Name:    BRAM_TEST 
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
//////////////////////// //////////////////////////////////////////////////////////
module BRAM_TEST(
			clk_100,
			rx,
			tx,
			led_rx,
			led_tx,
			led_pro,
			ledInd,
			ctrlSw,
			addr_io,
			data_in_io,
			data_out_io,
			we_io,
			
			memory_addr_pro,
         memory_data_in_pro,
         memory_data_out_pro,
         we_pro,
			pro_clk,
			ready,
			state,
			send,
			
			z,
			tester,
			c_bus,
			test_ins,
			hit
	    );
	 
	 
input 		clk_100,	rx;
input 		[2:0] ctrlSw;
output 		led_rx,	led_tx,	tx, led_pro;
output 		[2:0] ledInd;
output 		ready;
output 		send;
output 		[5:0] state;
wire 			busy;

output wire z;
output [15:0] tester;
output wire [8:0] test_ins;

reg [15:0] counter;
reg sw1;

output wire [15:0] c_bus;

//IO
output wire 			[15:0] data_out_io;
output wire 			[15:0] data_in_io;
output wire 			[15:0] addr_io;
output wire 			we_io;

//processor buses
output wire [15:0] memory_addr_pro;
output wire [15:0] memory_data_in_pro;
output wire [15:0] memory_data_out_pro;
output wire we_pro;
wire finished;


//give indicators of which mode the device is at now
assign      ledInd = ctrlSw;
assign 		led_pro = ~finished && sw1;

//cache
output wire hit;

wire ena,enb;
wire clk_10;
wire w;
output wire pro_clk;

assign enb = ctrlSw[1];
assign ena = ctrlSw[0] || ctrlSw[2];
assign w=sw1;

	
assign pro_clk = clk_10 && w;	

	initial begin
		sw1 <= 0;
		counter <= 0;
	end
	
	
	always@(posedge clk_10) begin
		if(counter == 1 && ctrlSw[1] == 1) begin
			sw1 <= 1;
		end
		else
			counter <= counter + 1;
		if(ctrlSw[1] == 0) begin
			sw1 <= 0;
		end	
	end

clock_divider #(.num_clk(5)) cd10 (
		.clk_100(clk_100), 
		.clk_s(clk_10)
	);						
						
//initialize the Block RAM	 for data memory			
bram bram(
  .clka(clk_10), // input clka
  .wea(we_io), // input [0 : 0] wea
  .addra(addr_io), // input [15 : 0] addra
  .dina(data_out_io), // input [15 : 0] dina
  .douta(data_in_io), // output [15 : 0] douta
  .ena(ena),
  .clkb(pro_clk), // input clkb
  .web(we_pro), // input [0 : 0] web
  .addrb(memory_addr_pro), // input [15 : 0] addrb
  .dinb(memory_data_out_pro), // input [15 : 0] dinb
  .doutb(memory_data_in_pro), // output [15 : 0] doutb
  .enb(enb)
);

io_module io(
		.clk_100(clk_10), 
		.rx(rx), 
		.tx(tx), 
		.data_in_io(data_in_io), 
		.data_out_io(data_out_io), 
		.addr_io(addr_io), 
		.we_io(we_io), 
		.ctrl_io_send(ctrlSw[2]), 
		.ctrl_io_receive(ctrlSw[0]),
		.led_rx(led_rx), 
		.led_tx(led_tx),
		.ready(ready),
		.send(send),
		.state(state)
	);

u_processor upro(
		.clk_100(pro_clk),
		.memory_write_en(we_pro),
		.address_out(memory_addr_pro),
		.memory_out(memory_data_out_pro),
		.memory_in(memory_data_in_pro),
		.tester(tester),
		.z(z),
		.c_bus(c_bus),
		.test_ins(test_ins),
		.hit(hit)
    );

cache c(
		.hit(hit)
		);

endmodule