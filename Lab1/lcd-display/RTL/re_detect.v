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
// Filename       : lcd_name_top.v
// Author         : Renfeng Dou
// Created        : 2012-10-23
// Description    : 
//               
// $Id$ 
//------------------------------------------------------------------- 

//synopsys_translate_off
`timescale 1ns/1ns
//synopsys_translate_on

module re_detect(
			clk,
			rst_n,
			sig_i,
			sig_o
);

// ********************************************
//                                             
//    INPUT / OUTPUT DECLARATION               
//                                             
// ********************************************
input		clk;
input		rst_n;
input		sig_i;
output		sig_o;

// ********************************************      
//                                             
//    Register DECLARATION                         
//                                             
// ********************************************
reg [1:0]	sample_r;

// ********************************************
//                                             
//    Wire DECLARATION                         
//                                             
// ********************************************
reg			sig_o;

// *******************************************
//                                             
//    Combinational Logic                         
//                                             
// ********************************************
always @ (sample_r)
	sig_o	= (~sample_r[1])&sample_r[0];

// ********************************************
//                                             
//    Sequential Logic                         
//                                             
// ********************************************
always @ (posedge clk or negedge rst_n)
begin
	if(!rst_n)
		begin
			sample_r	<= 2'b00;
		end
	else
		begin
			sample_r	<= {sample_r[0],sig_i};
		end
end




endmodule
