//-------------------------------------------------------------------
//                                                                 
//  COPYRIGHT (C) 2012, Renfeng Dou, Fudan University
//                                                                  
//  THIS FILE MAY NOT BE MODIFIED OR REDISTRIBUTED WITHOUT THE      
//  EXPRESSED WRITTEN CONSENT OF Renfeng Dou
//                                                                  
//  Renfeng Dou				email:12212020002@fudan.edu.cn     
//  Fudan University        www.fudan.edu.cn              
//-------------------------------------------------------------------
// Filename       : switch.v
// Author         : Renfeng Dou
// Created        : 2012-10-24
// Description    : 
//               
// $Id$ 
//------------------------------------------------------------------- 

//synopsys_translate_off
`timescale 1ns/1ns
//synopsys_translate_on

module switch(
				sel_i,								
				left_rom_d_i,
				left_rom_length_i,
				right_rom_d_i,
				right_rom_length_i,
				left_rom_d_o,
				left_rom_length_o,
				right_rom_d_o,
				right_rom_length_o,			
				left_sync_i,				
				right_sync_i,
				left_sync_o,
				right_sync_o
);

// ********************************************
//                                             
//    INPUT / OUTPUT DECLARATION               
//                                             
// ********************************************
input			sel_i;
input [8:0]		left_rom_d_i;
input [9:0]		left_rom_length_i;
input [8:0]		right_rom_d_i;
input [9:0]		right_rom_length_i;
output [8:0]	left_rom_d_o;
output [9:0]	left_rom_length_o;
output [8:0]	right_rom_d_o;
output [9:0]	right_rom_length_o;
			
input			left_sync_i;				
input			right_sync_i;
output			left_sync_o;
output			right_sync_o;



// *******************************************
//                                             
//    Combinational Logic                         
//                                             
// ********************************************
assign left_rom_d_o 		= sel_i? left_rom_d_i		:right_rom_d_i;
assign left_rom_length_o 	= sel_i? left_rom_length_i	:right_rom_length_i;
assign right_rom_d_o 		= sel_i? right_rom_d_i		:left_rom_d_i;
assign right_rom_length_o 	= sel_i? right_rom_length_i	:left_rom_length_i;
                             
assign left_sync_o		= sel_i? left_sync_i		:right_sync_i;
assign right_sync_o		= sel_i? right_sync_i		:left_sync_i;



endmodule


