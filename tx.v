`timescale 1ns / 1ps

module tx(
			clk_s,
			send,
			busy,
			data_in,
			tx,
			led_tx
    );
	 
input 		clk_s,send;
input [7:0] data_in;
output reg 	busy,tx,led_tx;

reg [6:0] 	counter;
reg [2:0] 	state;


reg [15:0] 	bit_per_clk;


initial begin
	counter 		<= 	0;
	state 		<= 	2'b00;
	tx  			<= 	1;  // tx is logic high when idle
	busy 			<= 	0;
	bit_per_clk <=		0;
	led_tx  		<=    0;
end

//state 2'b00 is idle
//state 2'b01 is start state
//state 2'b10 is data transmitting state
//state 2'b11 is stop state

always@(posedge clk_s) begin
	if(state == 2'b00) begin 
		if(send && ~busy) begin
			counter 		<= 	0;
			state 		<= 	2'b01;
		end
	end
	else if(state == 2'b01) begin
		tx 			<= 		0;
		busy 			<= 		1;
		led_tx		<=			1;
		state 		<= 		2'b10;
	end
	else if(state == 2'b10) begin
		if(counter < 8) begin
			tx			<= 	data_in[counter];  //lsb is transmitted first
			counter 	<= 	counter + 1;
		end
		else begin
			tx 		<= 	1;
			state 	<= 	2'b11;
		end
	end
	
	else if(state == 2'b11) begin
		state 		<= 	2'b00;
		tx 			<= 	1;
		busy 			<= 	0;
		led_tx		<=		0;
		counter 		<= 	0;
	end
end

endmodule
