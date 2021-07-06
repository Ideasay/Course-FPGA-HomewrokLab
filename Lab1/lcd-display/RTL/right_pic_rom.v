//-------------------------------------------------------------------
//
//  COPYRIGHT (C) 2012, Renfeng Dou, Fudan University
//   
//  THIS FILE MAY NOT BE MODIFIED OR REDISTRIBUTED WITHOUT THE 
//  EXPRESSED WRITTEN CONSENT OF Renfeng Dou
//  
//  Renfeng Dou			    email:12212020002@fudan.edu.cn  
//  Fudan University          www.fudan.edu.cn    
//-------------------------------------------------------------------
// Filename       : right_pic_rom.v
// Author         : Renfeng Dou
// Created        : 2020/11/3 0:00:00
// Description    : ROM file for VeriInstrument Graphic LCD
//               
//------------------------------------------------------------------- 

//synopsys_translate_off
`timescale 1ns/1ns
//synopsys_translate_on

module right_pic_rom(
                  clk,
                  rst_n,
                  sync_i,
                  en_i,
                  d_o,
                  length_o
);

input         clk;
input         rst_n;
input         sync_i;
input         en_i;
output [8:0]  d_o;
output [9:0]  length_o;

reg [9:0]     counter_r;

reg [8:0]     d_o;
reg [9:0]     length_o;

always @ (counter_r)
begin
  case(counter_r)
  10'd0: d_o =   {8'h3e,1'b0};
  10'd1: d_o =   {8'hb8,1'b0};
  10'd2: d_o =   {8'h44,1'b0};
  10'd3: d_o =   {8'h01,1'b1};
  10'd4: d_o =   {8'h01,1'b1};
  10'd5: d_o =   {8'h03,1'b1};
  10'd6: d_o =   {8'h07,1'b1};
  10'd7: d_o =   {8'h07,1'b1};
  10'd8: d_o =   {8'h0f,1'b1};
  10'd9: d_o =   {8'h1f,1'b1};
  10'd10: d_o =   {8'h3f,1'b1};
  10'd11: d_o =   {8'h7e,1'b1};
  10'd12: d_o =   {8'hf8,1'b1};
  10'd13: d_o =   {8'hf8,1'b1};
  10'd14: d_o =   {8'h00,1'b1};
  10'd15: d_o =   {8'h00,1'b1};
  10'd16: d_o =   {8'h00,1'b1};
  10'd17: d_o =   {8'h00,1'b1};
  10'd18: d_o =   {8'h00,1'b1};
  10'd19: d_o =   {8'h00,1'b1};
  10'd20: d_o =   {8'h40,1'b1};
  10'd21: d_o =   {8'hc0,1'b1};
  10'd22: d_o =   {8'hc0,1'b1};
  10'd23: d_o =   {8'h80,1'b1};
  10'd24: d_o =   {8'h80,1'b1};
  10'd25: d_o =   {8'h00,1'b1};
  10'd26: d_o =   {8'h00,1'b1};
  10'd27: d_o =   {8'h00,1'b1};
  10'd28: d_o =   {8'h00,1'b1};
  10'd29: d_o =   {8'h00,1'b1};
  10'd30: d_o =   {8'h00,1'b1};
  10'd31: d_o =   {8'h00,1'b1};
  10'd32: d_o =   {8'h00,1'b1};
  10'd33: d_o =   {8'h00,1'b1};
  10'd34: d_o =   {8'h00,1'b1};
  10'd35: d_o =   {8'h00,1'b1};
  10'd36: d_o =   {8'h00,1'b1};
  10'd37: d_o =   {8'h00,1'b1};
  10'd38: d_o =   {8'h00,1'b1};
  10'd39: d_o =   {8'h10,1'b1};
  10'd40: d_o =   {8'h30,1'b1};
  10'd41: d_o =   {8'h30,1'b1};
  10'd42: d_o =   {8'h70,1'b1};
  10'd43: d_o =   {8'hf0,1'b1};
  10'd44: d_o =   {8'hf0,1'b1};
  10'd45: d_o =   {8'he0,1'b1};
  10'd46: d_o =   {8'he0,1'b1};
  10'd47: d_o =   {8'hc0,1'b1};
  10'd48: d_o =   {8'hb9,1'b0};
  10'd49: d_o =   {8'h44,1'b0};
  10'd50: d_o =   {8'h80,1'b1};
  10'd51: d_o =   {8'he0,1'b1};
  10'd52: d_o =   {8'hf0,1'b1};
  10'd53: d_o =   {8'hf0,1'b1};
  10'd54: d_o =   {8'hf0,1'b1};
  10'd55: d_o =   {8'hc0,1'b1};
  10'd56: d_o =   {8'h80,1'b1};
  10'd57: d_o =   {8'h00,1'b1};
  10'd58: d_o =   {8'h00,1'b1};
  10'd59: d_o =   {8'h00,1'b1};
  10'd60: d_o =   {8'h00,1'b1};
  10'd61: d_o =   {8'h00,1'b1};
  10'd62: d_o =   {8'h00,1'b1};
  10'd63: d_o =   {8'h00,1'b1};
  10'd64: d_o =   {8'h00,1'b1};
  10'd65: d_o =   {8'h00,1'b1};
  10'd66: d_o =   {8'h01,1'b1};
  10'd67: d_o =   {8'h03,1'b1};
  10'd68: d_o =   {8'h0f,1'b1};
  10'd69: d_o =   {8'h7f,1'b1};
  10'd70: d_o =   {8'h7f,1'b1};
  10'd71: d_o =   {8'h3f,1'b1};
  10'd72: d_o =   {8'h1e,1'b1};
  10'd73: d_o =   {8'h0e,1'b1};
  10'd74: d_o =   {8'h0f,1'b1};
  10'd75: d_o =   {8'h0d,1'b1};
  10'd76: d_o =   {8'h0f,1'b1};
  10'd77: d_o =   {8'h0f,1'b1};
  10'd78: d_o =   {8'h0d,1'b1};
  10'd79: d_o =   {8'h0c,1'b1};
  10'd80: d_o =   {8'h0c,1'b1};
  10'd81: d_o =   {8'h0c,1'b1};
  10'd82: d_o =   {8'h0c,1'b1};
  10'd83: d_o =   {8'h0c,1'b1};
  10'd84: d_o =   {8'h0c,1'b1};
  10'd85: d_o =   {8'h0d,1'b1};
  10'd86: d_o =   {8'h0f,1'b1};
  10'd87: d_o =   {8'h1f,1'b1};
  10'd88: d_o =   {8'h1f,1'b1};
  10'd89: d_o =   {8'hff,1'b1};
  10'd90: d_o =   {8'h7f,1'b1};
  10'd91: d_o =   {8'h3e,1'b1};
  10'd92: d_o =   {8'h1c,1'b1};
  10'd93: d_o =   {8'h1c,1'b1};
  10'd94: d_o =   {8'h1c,1'b1};
  10'd95: d_o =   {8'h18,1'b1};
  10'd96: d_o =   {8'h18,1'b1};
  10'd97: d_o =   {8'h18,1'b1};
  10'd98: d_o =   {8'h18,1'b1};
  10'd99: d_o =   {8'h18,1'b1};
  10'd100: d_o =   {8'h18,1'b1};
  10'd101: d_o =   {8'h38,1'b1};
  10'd102: d_o =   {8'h38,1'b1};
  10'd103: d_o =   {8'h38,1'b1};
  10'd104: d_o =   {8'h38,1'b1};
  10'd105: d_o =   {8'h3c,1'b1};
  10'd106: d_o =   {8'h38,1'b1};
  10'd107: d_o =   {8'h08,1'b1};
  10'd108: d_o =   {8'hba,1'b0};
  10'd109: d_o =   {8'h50,1'b0};
  10'd110: d_o =   {8'h03,1'b1};
  10'd111: d_o =   {8'h04,1'b1};
  10'd112: d_o =   {8'h1d,1'b1};
  10'd113: d_o =   {8'h73,1'b1};
  10'd114: d_o =   {8'hc7,1'b1};
  10'd115: d_o =   {8'h0f,1'b1};
  10'd116: d_o =   {8'h0f,1'b1};
  10'd117: d_o =   {8'hbe,1'b1};
  10'd118: d_o =   {8'h3c,1'b1};
  10'd119: d_o =   {8'h7c,1'b1};
  10'd120: d_o =   {8'hf8,1'b1};
  10'd121: d_o =   {8'hf0,1'b1};
  10'd122: d_o =   {8'hc0,1'b1};
  10'd123: d_o =   {8'hc0,1'b1};
  10'd124: d_o =   {8'h80,1'b1};
  10'd125: d_o =   {8'hf0,1'b1};
  10'd126: d_o =   {8'hfc,1'b1};
  10'd127: d_o =   {8'h7c,1'b1};
  10'd128: d_o =   {8'h3c,1'b1};
  10'd129: d_o =   {8'h3c,1'b1};
  10'd130: d_o =   {8'h7c,1'b1};
  10'd131: d_o =   {8'h7c,1'b1};
  10'd132: d_o =   {8'hf8,1'b1};
  10'd133: d_o =   {8'hf8,1'b1};
  10'd134: d_o =   {8'hf0,1'b1};
  10'd135: d_o =   {8'he0,1'b1};
  10'd136: d_o =   {8'hc0,1'b1};
  10'd137: d_o =   {8'h80,1'b1};
  10'd138: d_o =   {8'hbb,1'b0};
  10'd139: d_o =   {8'h4f,1'b0};
  10'd140: d_o =   {8'h40,1'b1};
  10'd141: d_o =   {8'he0,1'b1};
  10'd142: d_o =   {8'he0,1'b1};
  10'd143: d_o =   {8'he0,1'b1};
  10'd144: d_o =   {8'hc0,1'b1};
  10'd145: d_o =   {8'h80,1'b1};
  10'd146: d_o =   {8'h3f,1'b0};
  default:d_o =   {8'h00,1'b1};
  endcase
end

always @ (posedge clk or negedge rst_n)
begin
  if(!rst_n)
      begin
          length_o    <= 10'd146;
          counter_r   <= 10'd0;
      end
  else
      begin
          length_o  <= 10'd146;
          if(sync_i)
              counter_r   <= 10'd0;
          else if(!en_i)
              if(counter_r<length_o)
                  counter_r   <= counter_r + 1'b1;
      end
end

endmodule
