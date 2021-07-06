//******************************************
//             datapath
//******************************************	
module datapath (	sys_clk,
						op_clk,
						sys_rst,	
						w_acc,
						w_ax,
						w_bx,
						w_p,
						w_flag,
						w_pc,
						w_sp,
						w_oplo,
						w_ophi,
						w_opl,
						add_mux,
						bbus_mux,
						alu_func,
						flag_mux,
						pc_mux,
						sp_mux,
						add_bus,
						d_in,
						d_out,
						p_in,
						p_out,			
						reg_flag,
						reg_opl
);

//******************************************
//        input/output declaration
//******************************************
input						sys_clk, op_clk, sys_rst;
input						w_acc, w_ax, w_bx, w_p, w_flag, w_pc, w_sp, w_oplo, w_ophi, w_opl;
input		[ 1 : 0 ]	add_mux;
input		[ 2 : 0 ]	bbus_mux;
input		[ 3 : 0 ]	alu_func;
input			       	flag_mux, pc_mux, sp_mux;
input		[ 7 : 0 ]	d_in, p_in;
output	[ 7 : 0 ]	d_out, p_out;
output	[ 11 : 0 ]	add_bus;
output	[ 2 : 0 ]	reg_flag;
output	[ 7 : 0 ]	reg_opl;

//******************************************
//           wire declaration
//******************************************
wire	[ 2 : 0 ]	reg_flag;

//******************************************
//           reg declaration
//******************************************	
reg	[ 7 : 0 ]	reg_acc, reg_ax, reg_bx;
reg	[ 7 : 0 ]	b_bus;
reg	[ 11 : 0 ]	reg_pc, reg_sp;
reg	[ 7 : 0 ]	reg_opl, reg_oplo;
reg	[ 3 : 0 ]	reg_ophi;
reg			      carry, pos, zero, cout;
reg	[ 11 : 0 ]	add_bus;
reg	[ 7 : 0 ]	d_out, p_out;

//*******************************************************
//       REGISTER
//*******************************************************	
always @( posedge sys_clk or posedge sys_rst )
	if ( sys_rst )
		reg_acc <= 0;
	else if ( w_acc )
		reg_acc <= d_out;
always @( posedge sys_clk or posedge sys_rst )
	if ( sys_rst )
		reg_ax <= 0;
	else if ( w_ax )
		reg_ax <= d_out;
always @( posedge sys_clk or posedge sys_rst )
	if ( sys_rst )
		reg_bx <= 0;
	else if ( w_bx )
		reg_bx <= d_out;
always @( posedge sys_clk or posedge sys_rst )
	if ( sys_rst )
		p_out <= 0;
	else if ( w_p )
		p_out <= d_out;
		
//*******************************************************
//      Opcode_Latch register 8 bit 
//*******************************************************
always @ (posedge op_clk or posedge sys_rst )
	if ( sys_rst )
		reg_opl <= 0;
	else if ( w_opl )
		reg_opl <= d_in;
		
//*******************************************************
// PC
//*******************************************************
always @( posedge sys_clk or posedge sys_rst )
	if ( sys_rst )
		reg_pc <= 0;
	else if ( w_pc )
		casex ( pc_mux )
			1'b0:	reg_pc <= { reg_ophi, reg_oplo };
			default:reg_pc <= reg_pc + 1;
		endcase
		
//*******************************************************
// SP 
//*******************************************************
	always @( posedge sys_clk or posedge sys_rst )
	if ( sys_rst )
		reg_sp <= 12'hFFF;
	else if ( w_sp )
		casex ( sp_mux )
			1'b0:	reg_sp <= reg_sp + 1;
			default:reg_sp <= reg_sp - 1;
		endcase

//*******************************************************
// 					ADDX mux
//*******************************************************		  
always @( add_mux or reg_pc or reg_sp or reg_ophi or reg_oplo )
	casex (add_mux)
		2'b00:	add_bus <= { reg_ophi, reg_oplo };
		2'b01:	add_bus <= reg_pc;
		default:add_bus <= reg_sp;
	endcase 

//*******************************************************
// Arithmetic Logic Unit
//*******************************************************
always @( reg_acc or b_bus or alu_func )
	casex ( alu_func )
		4'b0000:{ cout, d_out } <= reg_acc + b_bus;
		4'b0001:{ cout, d_out } <= reg_acc - b_bus;
		4'b0010:begin
				d_out <= reg_acc & b_bus;
				cout <= 0;
			end
		4'b0011:begin
				d_out <= reg_acc | b_bus;
				cout <= 0;
			end
		4'b0100:begin
				d_out <= reg_acc ^ b_bus;
				cout <= 0;
			end
		4'b0101:begin
				d_out <= ~ reg_acc;
				cout <= 0;
			end
		4'b0110:begin
				d_out <= { 1'b0, reg_acc [ 7 : 1 ] };
				cout <= reg_acc [ 0 ];
			end
		4'b0111:begin
				d_out <= { reg_acc [ 6 : 0 ], 1'b0 };
				cout <= reg_acc [ 7 ];
			end
		4'b1000:begin
				d_out <= b_bus;
				cout <= 0;
			end
		default:begin
				d_out <= reg_acc;
				cout <= 0;
			end
	endcase
	
//*******************************************************
//Define flag register
//*******************************************************
always @( posedge sys_clk or posedge sys_rst )
	if ( sys_rst )
	begin
		pos <= 0;
		zero <= 0;
		carry <= 0;
	end
	else if ( w_flag )
		casex ( flag_mux )
			1'b1:	begin
					zero <= ~ ( | d_out );	
					pos <= ~( d_out [ 7 ] );
					carry <= cout;	
				end
			default:begin
				zero <= d_out [ 5 ];	
				pos <= d_out [ 6 ];
				carry <= d_out [ 7 ];
				end
		endcase	
assign reg_flag = { carry, pos, zero };

//*******************************************************
//Define b_bus
//*******************************************************
always @( reg_ax or reg_bx or reg_flag or reg_pc or reg_ophi or reg_oplo or p_in or bbus_mux )
	case ( bbus_mux )
		3'b001:	b_bus <= reg_ax;
		3'b010: b_bus <= reg_bx;
		3'b011: b_bus <= reg_pc [ 7 : 0 ];
		3'b100: b_bus <= { reg_flag, 1'b0, reg_pc [ 11 : 8 ] };
		3'b101: b_bus <= p_in;
		default:b_bus <= reg_oplo;
	endcase

//*******************************************************
//Define d_bus 
//*******************************************************
always @( posedge op_clk or posedge sys_rst )
	if ( sys_rst )
		reg_oplo <= 0;
	else if ( w_oplo )
		reg_oplo <= d_in;	
always @( posedge op_clk or posedge sys_rst )
	if ( sys_rst )
		reg_ophi <= 0;
	else if ( w_ophi )
		reg_ophi <= d_in [ 3 : 0 ];

endmodule

