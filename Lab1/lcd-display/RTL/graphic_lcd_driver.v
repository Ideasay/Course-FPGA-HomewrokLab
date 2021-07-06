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
// Filename       : graphic_lcd_driver.v
// Author         : Renfeng Dou
// Created        : 2012-10-24
// Description    : 
//               
// $Id$ 
//------------------------------------------------------------------- 

//synopsys_translate_off
`timescale 1ns/1ns
//synopsys_translate_on

module graphic_lcd_driver(
				//control signal
				clk,
				rst_n,
				//lcd driver control
				refresh_i,
				//lcd interface
				lcd_d_o,
				lcd_di_o,
				lcd_rw_o,
				lcd_en_o,
				lcd_rst_o,
				cs1,
				cs2,
				//ROM data
				left_rom_d_i,
				left_rom_length_i,
				right_rom_d_i,
				right_rom_length_i,
				sync_right,
				mode
);

// ********************************************
//                                             
//    INPUT / OUTPUT DECLARATION               
//                                             
// ********************************************
input			clk;				//clock
input 			rst_n;				//module reset
input			refresh_i;			//lcd refresh
output [7:0]	lcd_d_o;			//lcd DB out
output			lcd_di_o;			//lcd DI out
output			lcd_rw_o;			//lcd RW out
output			lcd_en_o;			//lcd EN out
output			lcd_rst_o;			//lcd RST(sync)
output			cs1;				//Disp. Block Select
output			cs2;				//Disp. Block Select
input [8:0]		left_rom_d_i;		//left_ROM DB
input [9:0]		left_rom_length_i;	//left_ROM length
input [8:0]		right_rom_d_i;		//right_ROM DB
input [9:0]		right_rom_length_i;	//right_ROM length
output			sync_right;
output			mode;

// ********************************************
//                                             
//    Parameter DECLARATION                     
//                                             
// ********************************************
parameter	INIT		= 3'b000,	//INIT state
			IDLE		= 3'b001,	//IDLE state
			UPDATE_L	= 3'b010,	//UPDATE L state
			UPDATE_R	= 3'b011,	//UPDATE R state
			L2R			= 3'b100,
			RST			= 3'b101;	//RST state
				

// ********************************************      
//                                             
//    Register DECLARATION                         
//                                             
// ********************************************
reg [2:0]		state;

reg [9:0]		counter;



//reg [1:0]		L2R_counter;


// ********************************************
//                                             
//    Wire DECLARATION                         
//                                             
// ********************************************
reg [7:0]		lcd_d_o;		//lcd DB out
reg				lcd_di_o;		//lcd DI out
reg				lcd_rw_o;		//lcd RW out
reg				lcd_en_o;		//lcd EN out
reg				lcd_rst_o;		//lcd RST(sync)	
reg     		cs1;
reg     		cs2;
reg				sync_right;
reg 			mode;

// *******************************************
//                                             
//    Combinational Logic                         
//                                             
// ********************************************


always @ (left_rom_d_i or right_rom_d_i or cs1)
begin
	cs2	= ~cs1;
	if(cs1)
		{lcd_d_o,lcd_di_o}	= left_rom_d_i;
	else
		{lcd_d_o,lcd_di_o}	= right_rom_d_i;
end

//assign sync_right = (state==L2R)? 1'b1:1'b0;

// ********************************************
//                                             
//    Sequential Logic                         
//                                             
// ********************************************

always @ (posedge clk or negedge rst_n)
begin
	if(!rst_n)
		begin
			state		<= INIT;
		end
	else
		case(state)
		INIT:begin
			if(refresh_i)
				state	<= UPDATE_L;
			else
				state	<= INIT;
			end
		IDLE:begin
			if(refresh_i)
				state	<= RST;
			else
				state	<= IDLE;
			end
		UPDATE_L:begin
			if(counter==left_rom_length_i)
				state	<= L2R;
			else
				state	<= UPDATE_L;
			end
		UPDATE_R:begin
			if(counter==right_rom_length_i)
				state	<= IDLE;
			else
				state	<= UPDATE_R;
			end
		RST:begin
				state	<= UPDATE_L;
			end
		L2R:
			begin
				//if(L2R_counter==2'b01)
					state	<= UPDATE_R;
				//else
					//state	<= L2R;
			end
		endcase
end

//always @ (posedge clk or negedge rst_n)
//begin
//	if(!rst_n)
//		L2R_counter	<= 2'b00;
//	else if(state == L2R)
//		L2R_counter	<= L2R_counter + 1'b1;
//	else
//		L2R_counter	<= 2'b00;			
//end

always @ (posedge clk or negedge rst_n)
begin
	if(!rst_n)
		sync_right	<= 1'b0;
	else
		begin
			if(state==L2R)
				sync_right	<= 1'b1;
			else
				sync_right	<= 1'b0;
		end
end


always @ (posedge clk or negedge rst_n)
begin
	if(!rst_n)
		lcd_rw_o	<= 1'b0;
	else
		lcd_rw_o	<= 1'b0;
end

always @ (posedge clk or negedge rst_n)
begin
	if(!rst_n)
		mode	<= 1'b0;
	else
		begin
			if(state==RST)
				mode	<= mode + 1'b1;
			else
				mode	<= mode;
		end
end



always @ (posedge clk or negedge rst_n)
begin
	if(!rst_n)
		begin
			lcd_en_o	<= 1'b0;
			lcd_rst_o	<= 1'b1;
			cs1  <= 1'b0;
		end
	else
		begin
			if(state==INIT)
				begin
					lcd_en_o	<= 1'b0;
					lcd_rst_o	<= 1'b1;
				end
			else if(state==IDLE)
				begin
					lcd_en_o	<= 1'b0;
					lcd_rst_o	<= 1'b0;
				end
			else if(state==RST)
				begin
					lcd_rst_o	<= 1'b1;
				end
			else if(state==UPDATE_L)
				begin
				    cs1			<= 1'b1;
					lcd_rst_o	<= 1'b0;
					lcd_en_o	<= ~lcd_en_o;
				end
			else if(state==UPDATE_R)
				begin
					cs1			<= 1'b0;
					lcd_rst_o	<= 1'b0;
					lcd_en_o	<= ~lcd_en_o;
				end
			else if(state == L2R)
				begin
					cs1			<= 1'b1;
					lcd_rst_o	<= 1'b0;
					lcd_en_o	<= 1'b0;
				end
				
		end
end

always @ (posedge clk or negedge rst_n)
begin
	if(!rst_n)
		counter		<= 10'd0;
	else
		begin
			if(state==IDLE)
				counter <= 10'd0;
			else if(state==L2R)
				counter <= 10'd0;
			else if(lcd_en_o)
				counter	<= counter + 1'b1;
			else
				counter	<= counter;
		end
end




endmodule


