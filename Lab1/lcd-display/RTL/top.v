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

module top(
		clk,
		rst_n,
		auto_i,
		manual_i,
		graphic_lcd_d,
		graphic_lcd_rw,
		graphic_lcd_en,
		graphic_lcd_di,
		graphic_lcd_rst,
		graphic_lcd_cs1,
		graphic_lcd_cs2
);

// ********************************************
//                                             
//    INPUT / OUTPUT DECLARATION               
//                                             
// ********************************************
input			clk;
input			rst_n;
input			auto_i;
input			manual_i;
output [7:0]	graphic_lcd_d;
output			graphic_lcd_rw;
output			graphic_lcd_en;
output			graphic_lcd_di;
output			graphic_lcd_rst;
output			graphic_lcd_cs1;
output			graphic_lcd_cs2;

// ********************************************
//                                             
//    Wire DECLARATION                         
//                                             
// ********************************************
wire		refresh;
wire		refresh_w;

wire [8:0]	left_rom_lcd_data_w;
wire [8:0]	right_rom_lcd_data_w;
wire [9:0]	left_rom_len_w;
wire [9:0]	right_rom_len_w;

wire [8:0]	left_rom_lcd_data_w1;
wire [8:0]	right_rom_lcd_data_w1;
wire [9:0]	left_rom_len_w1;
wire [9:0]	right_rom_len_w1;

wire		sync_right;
wire		sync_right1;

wire		sync_left1;

wire		clk_on_w;
wire		mode;

// ********************************************
//                                             
//    Sub Modules                              
//                                             
// ********************************************


graphic_lcd_driver g_l_d1(
				.clk(clk),
				.rst_n(rst_n),
				.refresh_i(refresh_w),
				.lcd_d_o(graphic_lcd_d),
				.lcd_di_o(graphic_lcd_di),
				.lcd_rw_o(graphic_lcd_rw),
				.lcd_en_o(graphic_lcd_en),
				.lcd_rst_o(graphic_lcd_rst),
				.cs1(graphic_lcd_cs1),
				.cs2(graphic_lcd_cs2),
				.left_rom_d_i(left_rom_lcd_data_w),
				.left_rom_length_i(left_rom_len_w),
				.right_rom_d_i(right_rom_lcd_data_w),
				.right_rom_length_i(right_rom_len_w),
				.sync_right(sync_right),
				.mode(mode)
);

left_pic_rom l_p_r(
                .clk(clk),
                .rst_n(rst_n),
                .sync_i(sync_left1),
                .en_i(graphic_lcd_en),
                .d_o(left_rom_lcd_data_w1),
                .length_o(left_rom_len_w1)
);

right_pic_rom r_p_r(
                .clk(clk),
                .rst_n(rst_n),
                .sync_i(sync_right1),
                .en_i(graphic_lcd_en),
                .d_o(right_rom_lcd_data_w1),
                .length_o(right_rom_len_w1)
);


re_detect re_detect1(
				.clk(clk),
				.rst_n(rst_n),
				.sig_i(refresh|manual_i),
				.sig_o(refresh_w)
);

clk_div clk_div1(
				.clk(clk),
				.rst_n(rst_n),
				.on_i(auto_i),
				.clk_o(refresh)
);
switch switch1(
				.sel_i(mode),
				.left_rom_d_i(left_rom_lcd_data_w1),
				.left_rom_length_i(left_rom_len_w1),
				.right_rom_d_i(right_rom_lcd_data_w1),
				.right_rom_length_i(right_rom_len_w1),
				.left_rom_d_o(left_rom_lcd_data_w),
				.left_rom_length_o(left_rom_len_w),
				.right_rom_d_o(right_rom_lcd_data_w),
				.right_rom_length_o(right_rom_len_w),				
				.left_sync_i(graphic_lcd_rst),				
				.right_sync_i(sync_right),
				.left_sync_o(sync_left1),
				.right_sync_o(sync_right1)
);


endmodule
