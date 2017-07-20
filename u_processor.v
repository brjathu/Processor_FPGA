`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:40:08 02/22/2017 
// Design Name: 
// Module Name:    u_processor 
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
module u_processor(
		clk_100,
		memory_write_en,
		control_signals,
		instruction,
		mux8,
		b_bus,
		c_bus,
		acc,
		tester,
		address_out,
		memory_out,
		memory_in,
		test_ins,
		
		z,
		finished,
		hit
    );
	input clk_100;
	output wire memory_write_en;
	 
	//final buses
	output wire [15:0] address_out;
	output wire [15:0] memory_out;
	input wire [15:0] memory_in;
	input wire hit;
	
	//test
	output [38:0] control_signals;
	output [15:0] instruction;
	output [7:0] mux8;
	output [15:0] b_bus;
	output [15:0] c_bus;
	output [15:0] acc;
	output wire [15:0] tester;
	output wire [8:0] test_ins;
	
	wire [15:0] memory_addr;
	wire [15:0] memory_data_in;
	wire [15:0] memory_data_out;
	
	wire [15:0] pc_addr;
	wire [15:0] ir_data;
	
	
//decoder
wire [15:0] read_signals;


//control unit
wire [38:0] control_signals;
output wire finished;

//instruction fetching data
wire [15:0] instruction; 


//mux 2
wire mux2;

//mux8
wire [7:0] mux8;
//alu
output wire z;

//local
wire [15:0] b_bus;
wire [15:0] acc; //bus form Accumulator
wire [15:0] c_bus;

//test
assign test_ins={ (z && control_signals[28]) || (hit && (control_signals[1] || control_signals[0])) , mux8};

assign memory_write_en =  control_signals[2] ;

//assign buses
assign address_out = ( control_signals[0] == 1 ) ? pc_addr : 16'bz;
assign address_out = ( control_signals[1] == 1 ||  control_signals[2] == 1) ? memory_addr : 16'bz;

assign memory_out  = ( control_signals[1] == 1 ||  control_signals[2] == 1) ? memory_data_out : 16'bz;

assign memory_data_in  =( control_signals[1] == 1) ? memory_in  : 16'bz;
assign ir_data  =( control_signals[0] == 1 ) ? memory_in  : 16'bz;

ALU alu(		.b_bus(b_bus),
				.acc(acc),
				.ctrl(control_signals[27:23]),
		 		.z(z),
		//		.n(n),
		//		.o(o),
				.out(c_bus)
    );

control_unit cu(

			.addr_ins({ (z && control_signals[28]) || (hit && (control_signals[1] || control_signals[0])) , mux8}),
			.operand1(instruction[7:4]),
			.operand2(instruction[3:0]),
			.en(en),
			.clk(clk_100),
			.data_out(control_signals)	,
			.immediate(b_bus),
			.finished(finished),
			.hit(hit)
    );
	 
decoder16 de(
		.binary_in( control_signals[6:3])  , //  4 bit binary input
		.decoder_out(read_signals) //  16-bit out 
		);
		
mux8 m8( 
		.inst_in( instruction[15:8])     , // Mux first input
		.addr_in ( control_signals[38:31])    , // Mux Second input
		.jumpc(control_signals[30])         , // Select input
		.mux_out(mux8)   // Mux output
);



//mux2 m2(
//		.data_one(n),
//		.data_two(z),
//		.sel_one(control_signals[29]), //jumpn
//		.sel_two(control_signals[28]), //jumz
//		.data_out(mux2)
//    );


//general purpose registers 
register #(.bit_width(16),.init_val(0)) R0(control_signals[7],1'b0,c_bus,b_bus,clk_100);  
register #(.bit_width(16),.init_val(6)) R1(control_signals[8],read_signals[1],c_bus,b_bus,clk_100 );
register #(.bit_width(16),.init_val(15)) R2(control_signals[9],read_signals[2],c_bus,b_bus,clk_100 );
register #(.bit_width(16),.init_val(0)) R3(control_signals[10],read_signals[3],c_bus,b_bus,clk_100);
register #(.bit_width(16),.init_val(0)) R4(control_signals[11],read_signals[4],c_bus,b_bus,clk_100);
register #(.bit_width(16),.init_val(7)) R5(control_signals[12],read_signals[5],c_bus,b_bus,clk_100 , tester );
register #(.bit_width(16),.init_val(0)) R6(control_signals[13],read_signals[6],c_bus,b_bus,clk_100     );
register #(.bit_width(16),.init_val(0)) R7(control_signals[14],read_signals[7],c_bus,b_bus,clk_100);
register #(.bit_width(16),.init_val(0)) R8(control_signals[15],read_signals[8],c_bus,b_bus,clk_100);
register #(.bit_width(16),.init_val(0)) R9(control_signals[16],read_signals[9],c_bus,b_bus,clk_100);
register #(.bit_width(16),.init_val(0)) R10(control_signals[17],read_signals[10],c_bus,b_bus,clk_100);


wire [15:0] test;  // to short unnessary wires

//memeory registers
registerSpecial #(.bit_width(16)) MDR(control_signals[18],read_signals[11],c_bus,b_bus,clk_100, memory_data_in ,memory_data_out , control_signals[1], control_signals[2]  ); 
registerSpecial #(.bit_width(16)) MAR(control_signals[19],read_signals[12],c_bus,b_bus,clk_100, test, memory_addr , 1'b0, control_signals[2] || control_signals[1]);   

registerSpecial #(.bit_width(16)) IR(control_signals[20],read_signals[13],c_bus,b_bus,clk_100 , ir_data, test, control_signals[0] , 1'b0 ,instruction ); 
registerSpecial #(.bit_width(16),.init_val(1)) PC(control_signals[21],read_signals[14],c_bus,b_bus,clk_100 , test  , pc_addr , 1'b0 ,  control_signals[0]   );  


//ACCumulator directly connected to ALU
register #(.bit_width(16),.init_val(20)) ACC(control_signals[22],1'b1,c_bus,acc,clk_100);

always@(posedge clk_100) begin
//$display("\n register value- %b ", z);
//$display("in - %b",instruction);
end


endmodule
