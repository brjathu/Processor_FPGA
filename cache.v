`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:03:27 06/25/2017 
// Design Name: 
// Module Name:    cache 
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
module cache(
		data_in_from_pro,
		data_in_from_mem,
		data_out_to_pro,
		data_out_to_mem,
		addr_in,
		addr_out,
		hit,
		memory_write_en,
		clk_100
		
    );

input wire [15:0] data_in_from_pro;
input wire [15:0] data_in_from_mem;
output reg [15:0] data_out_to_pro;
output reg [15:0] data_out_to_mem;
input wire [15:0] addr_in;
reg [15:0] addr_in_reg;
output reg [15:0] addr_out;


output reg hit;
input wire memory_write_en;
input wire clk_100;

reg [63:0] cache_memory [63:0];
reg [7:0] tag [63:0];
reg [2:0] counter;
reg [2:0] counter_mem;

initial begin
	hit= 0;
	tag[1] = 8'b11110000;
//	tag[2] = 8'b00001111;
	cache_memory[0] = 64'hffff_ffff_fff0_ffff;
	counter = 0;
	counter_mem = 0;
end 

always@(posedge clk_100) begin
	addr_in_reg <= addr_in;
	if(memory_write_en == 0)begin
		if(tag[addr_in_reg[7:2]] == addr_in_reg[15:8]) begin
			if(addr_in_reg[1:0] == 0) begin
				data_out_to_pro <= cache_memory[addr_in_reg[7:2]][15:0];
			end
			else if(addr_in_reg[1:0] == 1) begin
				data_out_to_pro <= cache_memory[addr_in_reg[7:2]][31:16];
			end
			else if(addr_in_reg[1:0] == 2) begin
				data_out_to_pro <= cache_memory[addr_in_reg[7:2]][47:32];
			end
			else if(addr_in_reg[1:0] == 3) begin
				data_out_to_pro <= cache_memory[addr_in_reg[7:2]][63:48];
			end
			
			hit <= 1;
			//make hit=1
			
		end
		else begin
			//make hit=0
			hit <= 0;
			if(counter == 0) begin
				addr_out <= {addr_in[15:2],2'b00};
				if(counter_mem != 4) begin
					counter_mem <= counter_mem + 1;
				end
				else begin
					
					cache_memory[addr_in_reg[7:2]][15:0] <= data_in_from_mem;
					counter_mem <= 0;
					counter <= 1;
				end
			end
			
			
			else if(counter == 1) begin
				addr_out <= {addr_in[15:2],2'b01};
				if(counter_mem != 4) begin
					counter_mem <= counter_mem + 1;
				end
				else begin
					cache_memory[addr_in_reg[7:2]][31:16] <= data_in_from_mem;
					counter_mem <= 0;
					counter <= 2;
				end
			end
			
			
			
			else if(counter == 2) begin
				addr_out <= {addr_in[15:2],2'b10};
				if(counter_mem != 4) begin
					counter_mem <= counter_mem + 1;
				end
				else begin
					cache_memory[addr_in_reg[7:2]][47:32] <= data_in_from_mem;
					counter_mem <= 0;
					counter <= 3;
				end
			
			end
			
			
			
			else if(counter == 3) begin
				addr_out <= {addr_in[15:2],2'b11};
				if(counter_mem != 4) begin
					counter_mem <= counter_mem + 1;
				end
				else begin
					cache_memory[addr_in_reg[7:2]][63:48] <= data_in_from_mem;
					counter_mem <= 0;
					counter <= 4;
				end
			
			end
			
			
			else if(counter == 4) begin
				counter <= 0;
				tag[addr_in_reg[7:2]] <= addr_in_reg[15:8];
			end
			
			
		end
	end
	else begin
		data_out_to_mem   <= data_in_from_pro;
		addr_out 			<= addr_in;
	
	end

end

endmodule
