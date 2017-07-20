`timescale 1ns / 1ps

module rx(
		clk,
		rx,
		data_out,
		ready,
		led_rx,
		clr
    );

parameter num_clk = 5208;
input 				clk,rx,clr;
output reg [7:0] 	data_out;
output reg 			ready;
output reg 			led_rx;

reg [2:0] 			state;
reg [15:0] 			counter;
reg [5:0] 			num_bits;
reg [7:0] 			buffer;


initial begin 
	ready			<=		0;
	data_out 	<= 	0;
	buffer 		<= 	0;
	state 		<= 	0;
	num_bits 	<= 	0;
	counter 		<= 	0;
	led_rx 		<= 	0;
end


//state 2'b00 is idle
//state 2'b01 is start reciveing state
//state 2'b10 is reciveing 8 bits state
//state 2'b11 is stop state

always@(posedge clk) begin
	// clear the data_out and buffer
	if(clr) begin
		data_out 	<= 	0;
		buffer 		<= 	0;
		ready 		<= 	0;
	end
	
	//state process
	if(state == 2'b00) begin
		if(rx == 0) begin
			counter 	<= 	0;
			state 	<= 	2'b01;
		end
	end
	else if(state == 2'b01) begin
		if(counter == num_clk) begin
			if(rx == 0) begin
				state 	<= 	2'b10;
				counter 	<= 	0;
				buffer 	<= 	0;
				ready 	<= 	0;
				num_bits <= 	0;
				led_rx		<=		1;
			end
		end
		else begin
			counter 		<= 	counter +1 ;
		end
	end
	else if(state == 2'b10) begin
		if(counter == num_clk*2 ) begin
			buffer[num_bits] 	<= 	rx;
			num_bits 			<= 	num_bits + 1;
			counter 				<= 	0;
			if(num_bits == 8) begin
				state 			<= 	2'b11;
				counter 			<=    0;
			end
		end
		else begin
			counter 				<= 	counter +1 ;
		end
	end
	else if(state == 2'b11) begin
		if(counter == num_clk*2) begin
			if(rx == 1) begin
				data_out 	<= 	buffer;
				counter 		<= counter + 1;	
			end
			else begin
				buffer 		<= 	0;
				led_rx		<= 	0;
			end
		end
		if(counter == num_clk*2+ 1) begin
				state 		<= 	2'b00;
				ready 		<= 	1;
				buffer 		<= 	0;
				led_rx		<=		0;
		end
		else begin
			counter <= counter +1 ;
		end
	end
end



endmodule
