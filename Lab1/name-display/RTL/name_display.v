/********************************************************
Function:Display some word, like author's name,ID and university
Author:Zheng Xioajie
Student ID:20212020177
********************************************************/

module display_ZhengXiaojie(clk, rst, lcd_en, lcd_rs, lcd_rw, lcd_db, lcd_rst);
  input clk,
        rst;
  output  lcd_en,
          lcd_rs, // Register Select , 0: Select command register , 1: Select data bits register
          lcd_rw, // Read/Write , 0：write , 1: No function
          lcd_rst; //Reset signal , 1: Clears entire LCD display and returns the cursor to home position (upper-left corner).
  output [7:0]lcd_db; //Data Bits
  
  reg    [7:0]lcd_db;
  reg    [6:0]cnt_lcd; //128 count variable 
  reg    [7:0]word1;
  reg    [7:0]word2;

  assign lcd_rw  = 1'b0; //lcd write mode
  assign lcd_rs  = 1'b1; //select data bits register
  assign lcd_rst = rst;  
  assign lcd_en  = cnt_lcd[0]; //lcd_en changes follow cnt_lcd[0]

 
  always @(posedge clk or posedge rst)
    if (rst)  cnt_lcd <= 0;
    else      cnt_lcd <= cnt_lcd + 1;
         
		 
  always @(posedge clk or posedge rst)
    if (rst)                        lcd_db <= 0;
    else if (lcd_en & cnt_lcd[6]) 	lcd_db <= word1; 
    else if (lcd_en & ~cnt_lcd[6]) 	lcd_db <= word2;
    else                            lcd_db <= 0;

always @(cnt_lcd)
   case(cnt_lcd[5:1])
   'h0 : word1 = 'h00;    //space
   'h1 : word1 = 'h00;    //space
   'h2 : word1 = 'h00;    // space
   'h3 : word1 = 'h37;    // W
   'h4 : word1 = 'h45;    // e
   'h5 : word1 = 'h4C;    // l
   'h6 : word1 = 'h43;    // c
   'h7 : word1 = 'h4F;    // o
   'h8 : word1 = 'h4D;    // m
   'h9 : word1 = 'h45;    // e
   'hA : word1 = 'h00;    // space
   'hB : word1 = 'h34;  // T
   'hC : word1 = 'h4F;  // o
   'hD : word1 = 'h00;    // space
   'hE : word1 = 'h00;    //space
   'hF : word1 = 'h00;    //space
   'h10 : word1 = 'h26;  // F
   'h11 : word1 = 'h35; // U
   'h12 : word1 = 'h24; // D
   'h13 : word1 = 'h21; // A
   'h14 : word1 = 'h2e; // N
   'h15 : word1 = 'h00; // space
   'h16 : word1 = 'h35; // U
   'h17 : word1 = 'h4e; // n
   'h18 : word1 = 'h49; // i
   'h19 : word1 = 'h56; // v
   'h1A : word1 = 'h45; // e
   'h1B : word1 = 'h52; // r
   'h1C : word1 = 'h53; // s
   'h1D : word1 = 'h49; // i
   'h1E : word1 = 'h54; // t
   'h1F : word1 = 'h59; // y
   default : word1 = 'h00;
   endcase

always @(cnt_lcd)
   case(cnt_lcd[5:1])
   'h0 : word2 = 'h00; //space
   'h1 : word2 = 'h00; //space
   'h2 : word2 = 'h00; //space
   'h3 : word2 = 'h3A; // Z
   'h4 : word2 = 'h48; // h
   'h5 : word2 = 'h45; // e
   'h6 : word2 = 'h4E; // n
   'h7 : word2 = 'h47; // g
   'h8 : word2 = 'h00; // space
   'h9 : word2 = 'h38; // X
   'hA : word2 = 'h49; // i
   'hB : word2 = 'h41; // a
   'hC : word2 = 'h4F; // 0
   'hD : word2 = 'h4A; // j
   'hE : word2 = 'h49; // i
   'hF : word2 = 'h45; // e
   'h10 : word2 = 'h00; //space
   'h11 : word2 = 'h00; //space
   'h12 : word2 = 'h00; //space
   default : word2 = 'h00;
   endcase
             
endmodule