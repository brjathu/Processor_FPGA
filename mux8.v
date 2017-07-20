module  mux8(
inst_in      , // Mux first input
addr_in      , // Mux Second input
jumpc           , // Select input
mux_out   // Mux output
);
//inputs
input [7:0] inst_in;
input [7:0] addr_in;
input jumpc;

//outputs
output wire [7:0] mux_out;


assign mux_out = (jumpc) ? inst_in : addr_in;

endmodule 