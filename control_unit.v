`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:50:43 02/22/2017 
// Design Name: 
// Module Name:    control_unit 
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
module control_unit(
			addr_ins,
			operand1,
			operand2,
			en,
			clk,
			data_out,
			immediate,
			finished,
			reset,
			hit
    );
	 
	 input [8:0] addr_ins;
	 input [3:0] operand1;
	 input [3:0] operand2;
	 input reset;
	 input en;
	 input clk;
	 input hit;
	 output reg finished;
	 output reg [38:0] data_out;
	 reg [15:0] write_loc;
	 
		//immediate operations
		output reg [15:0] immediate;
	 
	 
	 
	 parameter CLRREG1 = 9'b011010000,
				  CLRREG2 = 9'b011010001,
	 
				  ADD1 	 = 9'b001010000,
				  ADD2 	 = 9'b001010001,
				  
				  ADDI1 	 = 9'b011001000,
				  ADDI2 	 = 9'b011001001,
				  
				  SUBI1	 = 9'b001011000,
				  SUBI2	 = 9'b001011001,
				  
				  ADDL1   = 9'b010001000,
				  ADDL2   = 9'b010001001,
				  ADDL3   = 9'b010001010,
				  ADDL4   = 9'b010001011,
				  
				  ADDH1   = 9'b010010000,
				  ADDH2   = 9'b010010001,
				  ADDH3   = 9'b010010010,
				  ADDH4   = 9'b010010011,
				
				  
				  LOD1281 = 9'b011011000,
				  LOD1282 = 9'b011011001,
				  LOD1283 = 9'b011011010,
				  
				  INC1281 = 9'b000011000,
				  INC1282 = 9'b000011001,
				  
				  INCACC1 = 9'b001101000,
				  
				  CPYREG1 = 9'b000101000,
				  CPYREG2 = 9'b000101001,
				  
				  CPYACC1 = 9'b000100000,
				  CPYACC2 = 9'b000100001,
				  
				  SHFLI1  = 9'b010100000,
				  SHFLI2  = 9'b010100001,
				  
				  SHFRI1  = 9'b010101000,
				  SHFRI2  = 9'b010101001,
				  
				  LOAD1	 = 9'b011100000,
				  LOAD2	 = 9'b111100110,
				  LOAD3	 = 9'b011100010,
				  LOAD4	 = 9'b011100011,
				  LOAD_WAIT = 9'b011100110,
				  
				  STORE1  = 9'b011101000,
				  STORE2  = 9'b011101001,
				  STORE3  = 9'b011101010,
					
				  GOTOZ1  = 9'b010110000,
				  
				  GOTOZ2  = 9'b010110001,
				  
				  GOTOZ3  = 9'b110110001,
				  
				  FETCH1 = 9'b000000000,
				  
				  INCPC	= 9'b000000001,
				  HALT	= 9'b011111111;
				 
				  
				  
	
	 initial begin
		data_out 	<= 0;
		write_loc 	<= 0;
		finished    <= 0;
	 end
	 
	 
	 
	 always@(negedge clk) begin
		if(addr_ins== 9'b011001000 || addr_ins == 9'b010100000 ||  addr_ins == 9'b010101000 || addr_ins == 9'b001011000) begin
			immediate <= {12'b0,operand2};
		end
		else if(addr_ins == 9'b010110001) begin
			immediate <= {8'b0,operand1,operand2};
		end
		else begin
			immediate <= 16'bz;
		end
		
		if(addr_ins==9'b011111111) begin
			finished <= 1;
		end
		write_loc <= (1 << operand1);
		//$display("%b,   %b", operand1, write_loc) ;
		case(addr_ins) 
			
			
			CLRREG1  : data_out <= {5'b11010,3'b001,3'b000,5'b11000,     16'b0 				,4'b0,3'b000};
			CLRREG2  : data_out <= {5'b00000,3'b001,3'b000,5'b00000, write_loc ,4'b0,3'b000};
			
			ADD1 		: data_out <= {5'b01010,3'b001,3'b000,5'b00101,16'b1000000000000000,(operand1),3'b000};
		   ADD2 		: data_out <= {5'b00000,3'b001,3'b000,5'b01010, write_loc 			 ,(operand2),3'b000};
			
			ADDI1		: data_out <= {5'b11001,3'b001,3'b000,5'b00101,16'b1000000000000000, 4'b0 ,3'b000};
			ADDI2		: data_out <= {5'b00000,3'b001,3'b000,5'b01010, write_loc 			 , (operand1) ,3'b000};
			
			SUBI1		: data_out <= {5'b01011,3'b001,3'b000,5'b00101,16'b1000000000000000, 4'b0 ,3'b000};
			SUBI2		: data_out <= {5'b00000,3'b001,3'b000,5'b01011, write_loc +16'b1000000000000000 , (operand1) ,3'b000};
			
			ADDL1		: data_out <= {5'b10001,3'b001,3'b000,5'b11000,16'b0 , 4'b 0,3'b000};
			ADDL2		: data_out <= {5'b10001,3'b010,3'b000,5'b10001, 16'b1000000000000000	 , (operand2) ,3'b000};
			ADDL3		: data_out <= {5'b10001,3'b011,3'b000,5'b10010, 16'b1000000000000000	 , 4'b0 ,3'b000};
			ADDL4		: data_out <= {5'b00000,3'b001,3'b000,5'b01010, write_loc 	 , (operand1) ,3'b000};
			
			ADDH1		: data_out <= {5'b10010,3'b001,3'b000,5'b11000,16'b0 , 4'b 0,3'b000};
			ADDH2		: data_out <= {5'b10010,3'b010,3'b000,5'b00101, 16'b1000000000000000	 , (operand2) ,3'b000};
			ADDH3		: data_out <= {5'b10010,3'b011,3'b000,5'b10010, 16'b1000000000000000	 , 4'b0 ,3'b000};
			ADDH4		: data_out <= {5'b00000,3'b001,3'b000,5'b01010, write_loc 	 , (operand1) ,3'b000};
			
			
			LOD1281  : data_out <= {5'b11011,3'b001,3'b000,5'b11000,     16'b0 				,4'b0,3'b000};
			LOD1282  : data_out <= {5'b11011,3'b010,3'b000,5'b00000, write_loc 			,  4'b0 ,3'b000};
			LOD1283  : data_out <= {5'b00000,3'b001,3'b000,5'b00011, write_loc 			, (operand1) ,3'b000};
			
			INC1281  : data_out <= {5'b00011,3'b001,3'b000,5'b11000,     16'b0 				,4'b0,3'b000};
			INC1282  : data_out <= {5'b00000,3'b001,3'b000,5'b00011, write_loc 			,(operand1),3'b000};
			
			INCACC1  : data_out <= {5'b00000,3'b001,3'b000,5'b01101, 16'b1000000000000000	, 4'b0 ,3'b000};
			
			CPYREG1   : data_out <= {5'b00101,3'b001,3'b000,5'b11000,     16'b0 				,4'b0,3'b000};
			CPYREG2   : data_out <= {5'b00000,3'b001,3'b000,5'b00101, write_loc 			,(operand2),3'b000};
			
			CPYACC1   : data_out <= {5'b00100,3'b001,3'b000,5'b11000,     16'b0 				,4'b0,3'b000};
			CPYACC2   : data_out <= {5'b00000,3'b001,3'b000,5'b00100, write_loc 			,  4'b0 ,3'b000};
			
			SHFLI1	: data_out <= {5'b10100,3'b001,3'b000,5'b00101,16'b1000000000000000, 4'b0 ,3'b000};
			SHFLI2	: data_out <= {5'b00000,3'b001,3'b000,5'b10100, write_loc 			 , (operand1) ,3'b000};
			
			SHFRI1	: data_out <= {5'b10101,3'b001,3'b000,5'b00101,16'b1000000000000000, 4'b0 ,3'b000};
			SHFRI2	: data_out <= {5'b00000,3'b001,3'b000,5'b10101, write_loc 			 , (operand1) ,3'b000};
			
			LOAD1		: data_out <= {5'b11100,3'b110,3'b000,5'b00101,   16'b0001000000000000 		,(operand2),3'b000};
			LOAD2		: data_out <= {5'b11100,3'b010,3'b000,5'b11000,   16'b0    		      , 4'b0  ,3'b000};
			LOAD3		: data_out <= {5'b11100,3'b011,3'b000,5'b11000,   16'b0    		      , 4'b0  ,3'b000};
			LOAD4    : data_out <= {5'b00000,3'b001,3'b000,5'b00101,   write_loc 			, 4'b1011 ,3'b000};
			LOAD_WAIT: data_out <= {5'b11100,3'b110,3'b000,5'b11000,   16'b0              , 4'b0  ,3'b010};
			
			STORE1	: data_out <= {5'b11101,3'b001,3'b000,5'b00101,   16'b0001000000000000 		,(operand1),3'b000};
			STORE2	: data_out <= {5'b11101,3'b010,3'b000,5'b00101,   16'b0000100000000000   , (operand2)  ,3'b000};
			STORE3   : data_out <= {5'b00000,3'b001,3'b000,5'b11000,   16'b0			, 4'b0 ,3'b100};
			
			GOTOZ1    : data_out <= {5'b10110,3'b001,3'b001,5'b00100,   16'b0			, 4'b0 ,3'b000};			
			GOTOZ2    : data_out <= {5'b00000,3'b000,3'b000,5'b00101,   16'b0100000000000000		, 4'b0 ,3'b000};
			GOTOZ3    : data_out <= {5'b00000,3'b001,3'b000,5'b00100,   16'b0			, 4'b0 ,3'b000};	
			
			INCPC		: data_out <= {5'b00000,3'b000,3'b000,5'b01111, 16'b0100000000000000, 4'b1110	,3'b000};
			FETCH1 	: data_out <= {5'b00000,3'b001,3'b100,5'b11000, 16'b0000000000000000, 4'b0000	,3'b001};
			
			HALT		: data_out <= {5'b11111,3'b000,3'b100,5'b11000,16'b0000000000000000, 4'b0000	,3'b000};
			
		endcase
		//$display("%b,  %b,   %b,   %b,   %b,   %b,    %b",data_out[38:34],data_out[33:31],data_out[30:28],data_out[27:23],data_out[22:7],data_out[6:3],data_out[2:0],); 
	 end


endmodule
