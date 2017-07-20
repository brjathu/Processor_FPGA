`timescale 1ns / 1ps

module clock_divider
	
	(
			clk_100,
			clk_s
    );
	 
parameter 	num_clk = 5208;
input 		clk_100;
output reg 	clk_s;

//we are using buardrate of 9600
// our clock is 100Mz
// so we need a counter value of  10000000/9600/2 = 5208
reg[16:0] counter;

initial begin
	counter 			<=		0;
	clk_s 			<= 	0;
end


always @(posedge clk_100) begin
		counter 	<= 	counter + 1;
		if(counter == num_clk - 1) begin
			clk_s 	<= 	~clk_s;    //toggle the clk_s 
			counter 	<=		0;
		end
end


endmodule
