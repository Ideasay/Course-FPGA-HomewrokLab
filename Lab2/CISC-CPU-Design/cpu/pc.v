//******************************************
//            controller&datapath&clock
//******************************************	
module pc (	sys_clk,
		      sys_rst,
		      add_bus,
		      d_in,
		      d_out,
		      p_in,
		      p_out,
				syn_clk,
		      rom_cs,
		      ram_cs,
		      mem_rd,
		      mem_wr,
		      slow_clk
);

//******************************************
//        input/output declaration
//******************************************	
input			         sys_clk, sys_rst;
output	[ 11 : 0 ]	add_bus;
input	   [ 7 : 0 ]	d_in, p_in;
output	[ 7 : 0 ]	d_out, p_out;
output			      rom_cs, ram_cs, mem_rd, mem_wr;
output			      syn_clk;
output			      slow_clk;

//******************************************
//           wire declaration
//******************************************
wire			      w_acc, w_ax, w_bx, w_p, w_flag, w_pc, w_sp, w_oplo,w_ophi,w_opl;
wire	[ 1 : 0 ]	add_mux;
wire	[ 2 : 0 ]	bbus_mux;
wire	[ 3 : 0 ]	alu_func;
wire			      flag_mux;
wire          		pc_mux, sp_mux;
wire	[ 2 : 0 ]	reg_flag;
wire	[ 7 : 0 ]	reg_opl;
wire			      op_clk;
wire	[ 2 : 0 ]	state;

//******************************************
//           reg declaration
//****************************************** 
reg	[ 2 : 0 ]	state_gate;
reg	[ 2 : 0 ]	state_clk;

//******************************************
//              clock generation
//******************************************
assign syn_clk = state_clk [ 0 ];
assign op_clk = state_clk [ 1 ];
assign slow_clk = state_clk [ 2 ];
always @( posedge sys_clk or posedge sys_rst )
	if ( sys_rst )
	begin state_gate <= 0; state_clk <= 0;
	end
	else
		casex ( state_gate )
		3'b000:	begin state_clk <= 2; state_gate <= 1; end 
		3'b001:	begin state_clk <= 6; state_gate <= 2; end 
      	3'b010:	begin state_clk <= 7; state_gate <= 3; end 
      	3'b011:	begin state_clk <= 5; state_gate <= 4; end 
      	3'b100:	begin state_clk <= 4; state_gate <= 5; end 
      	3'b101:	begin state_clk <= 0; state_gate <= 6; end 
      	3'b110:	begin state_clk <= 1; state_gate <= 7; end 
		3'b111:	begin state_clk <= 3; state_gate <= 0; end 
		default:	state_gate <= 0;
		endcase
		
//******************************************
//            instantiate the datapath
//******************************************			
datapath		DATAPATH
	(	.sys_clk ( slow_clk ),
		.op_clk ( op_clk ),
		.sys_rst ( sys_rst ),		
		.w_acc ( w_acc ),
		.w_ax ( w_ax ),
		.w_bx ( w_bx ),
		.w_p ( w_p ),
		.w_flag ( w_flag ),
		.w_pc ( w_pc ),
		.w_sp ( w_sp ),
		.w_oplo ( w_oplo ),
		.w_ophi ( w_ophi ),
		.w_opl ( w_opl ),
		.add_mux ( add_mux ),
		.bbus_mux ( bbus_mux ),
		.alu_func ( alu_func ),
		.flag_mux ( flag_mux ),
		.pc_mux ( pc_mux ),
		.sp_mux ( sp_mux ),		
		.add_bus ( add_bus ),
		.d_in ( d_in ),
		.d_out ( d_out ),
		.p_in ( p_in ),
		.p_out ( p_out ),		
		.reg_flag ( reg_flag ),
		.reg_opl ( reg_opl )
);

//******************************************
//            instantiate the controller
//******************************************
ctr	CTR	(
		.sys_clk	( slow_clk ),
		.sys_rst ( sys_rst ),
		.w_acc ( w_acc ),
		.w_ax ( w_ax ),
		.w_bx ( w_bx ),
		.w_p ( w_p ),
		.w_flag ( w_flag ),
		.w_pc ( w_pc ),
		.w_sp ( w_sp ),
		.w_oplo ( w_oplo ),
		.w_ophi ( w_ophi ),
		.w_opl ( w_opl ),				
		.add_mux ( add_mux ),
		.bbus_mux ( bbus_mux ),
		.alu_func ( alu_func ),
		.flag_mux ( flag_mux ),
		.pc_mux ( pc_mux ),
		.sp_mux ( sp_mux ),	
		.reg_flag ( reg_flag ),
		.reg_opl ( reg_opl ),
		.rom_cs ( rom_cs ),
		.ram_cs ( ram_cs ),
		.mem_rd ( mem_rd ),
		.mem_wr ( mem_wr ),	
		.state ( state )
);

endmodule
