`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:27:24 02/22/2017 
// Design Name: 
// Module Name:    ALU 
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
module ALU(b_bus,
				acc,
				ctrl,
				z,
				n,
				o,
				out,
				clk_100
    );

input clk_100;
input [15:0] b_bus;
input [15:0] acc;
input [4:0] ctrl;
output wire z,n,o;
output reg [15:0] out;

parameter 	ZERO		=5'b00000,
				ONE		=5'b00001,
				NONE		=5'b00010,
				ONE28		=5'b00011,
				A			=5'b00100,
				B			=5'b00101,
				NA			=5'b00110,
				NB			=5'b00111,
				NOTA		=5'b01000,
				NOTB		=5'b01001,
				ADD		=5'b01010,
				SUB		=5'b01011,
				MUL		=5'b01100,
				INCA		=5'b01101,
				DECA		=5'b01110,
				INCB		=5'b01111,
				DECB		=5'b10000,
				SFTL8		=5'b10001,
				SFTR8		=5'b10010,
				XOR		=5'b10011,
				SHFL		=5'b10100,
				SHFR		=5'b10101,
				LESSAB	=5'b10110,
				GRETAB	=5'b10111,
				NOP		=5'b11000;


//
//initial begin
//	z <= 0;
//	o <= 0;
//	n <= 0;
//end
assign z= ~(|out);
//always@(posedge clk_100) begin
//	z <= ~(|out);
//end

always@(b_bus,acc,ctrl) begin

	case(ctrl)
		ZERO		:	 out 		= 0;
		ONE		:	 out 		= 1;
		NONE		:	 out 		= -1;
		ONE28		:   out     = 128 + b_bus ;
		A			:	 out 		= acc;
		B			:	 out		= b_bus;
		NA			:	 out 		= -acc;
		NB			:	 out 		= -b_bus;
		NOTA		:	 out 		= ~acc;
		NOTB		:	 out 		= ~b_bus;
		ADD		:	 out     = acc + b_bus;
		SUB		:	 out 		=  b_bus - acc;
		MUL		:	 out 		= acc * b_bus;
		INCA		:	 out     = acc + 1;			//INCACC ACC,4'b0000  means R1 <= R1 +1 , operand 2 means nothing 
		DECA		:	 out 		= acc - 1;
		INCB		:	 out     = b_bus + 1;    //done  INCREG R1,4'b0000  means R1 <= R1 +1 , operand 2 means nothing 
		DECB		:   out 		= b_bus - 1;
		SFTL8		:	 out 		=  b_bus << 8;
		SFTR8		:	 out     =  acc >> 8;
		XOR		:	 out 		= acc ^ b_bus;
		SHFL		:	 out     = b_bus << acc;
		SHFR		:	 out 		= b_bus >> acc;
		LESSAB	:	 out 		= acc < b_bus;
		GRETAB	:	 out		= acc > b_bus;
		NOP		:   out 		= 15'bz;

	
	endcase
end


endmodule
