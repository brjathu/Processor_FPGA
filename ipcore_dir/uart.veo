///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 2017 Xilinx, Inc.
// All Rights Reserved
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor     : Xilinx
// \   \   \/     Version    : 14.7
//  \   \         Application: Xilinx CORE Generator
//  /   /         Filename   : uart.veo
// /___/   /\     Timestamp  : Fri Mar 03 03:24:07 +0530 2017
// \   \  /  \
//  \___\/\___\
//
// Design Name: ISE Instantiation template
///////////////////////////////////////////////////////////////////////////////

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
uart YourInstanceName (
    .CONTROL(CONTROL), // INOUT BUS [35:0]
    .ASYNC_IN(ASYNC_IN), // IN BUS [7:0]
    .ASYNC_OUT(ASYNC_OUT) // OUT BUS [7:0]
);

// INST_TAG_END ------ End INSTANTIATION Template ---------
