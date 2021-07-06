`timescale 1ns/1ns

module top_tb;
  
  reg 			clk;
  reg 			rst_n;
 // reg [10:0] 	count;
  
//  wire    refresh;
 
  wire [7:0]	graphic_lcd_d;
  wire			graphic_lcd_rw;
  wire			graphic_lcd_en;
  wire			graphic_lcd_di;
  wire			graphic_lcd_rst;
  wire          graphic_lcd_cs1;
  wire			graphic_lcd_cs2;
  
  initial
	begin
		clk = 0;
		rst_n = 1;
	//	count = 0;
		#20 rst_n = 0;
		#20 rst_n = 1;
	end
	
always #5 clk =~clk;

/*
always @ (posedge clk or negedge rst_n)
begin
	if(!rst_n)
		count = 0;
	else
		count = count + 1;
end
*/
//assign refresh  = count[9];



top top1(
		.clk(clk),
		.rst_n(rst_n),
		.auto_i(1'b1),
		.manual_i(1'b0),
		.graphic_lcd_d(graphic_lcd_d),
		.graphic_lcd_rw(graphic_lcd_rw),
		.graphic_lcd_en(graphic_lcd_en),
		.graphic_lcd_di(graphic_lcd_di),
		.graphic_lcd_rst(graphic_lcd_rst),
		.graphic_lcd_cs1(graphic_lcd_cs1),
		.graphic_lcd_cs2(graphic_lcd_cs2)
);


endmodule



