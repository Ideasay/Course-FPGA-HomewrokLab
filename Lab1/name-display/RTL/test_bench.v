`timescale 1ms/1us
`define halfperiod 10

 module test_bench;
 
  reg clk,rst;
 
  wire   lcd_en;
  wire   [7:0]lcd_db;
  wire   lcd_rs, 
         lcd_rw, 
         lcd_rst;
  
  initial 
     begin 
	     clk=0;
		 rst=0;
		 #2 rst=1;
		 #10 rst=0;
	 end
	 
  always #(`halfperiod) clk=~clk;
      
  
  display_ZhengXiaojie m(.clk(clk),.rst(rst),.lcd_en(lcd_en),.lcd_db(lcd_db),.lcd_rs(lcd_rs),.lcd_rw(lcd_rw),.lcd_rst(lcd_rst));
  
endmodule 