//******************************************
//            controller
//******************************************	
module ctr (	sys_clk,
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
					reg_flag,
					reg_opl,			
					rom_cs,
					ram_cs,
					mem_rd,
					mem_wr,	
					state
);

//******************************************
//        input/output declaration
//******************************************	
input						sys_clk, sys_rst;
output					w_acc, w_ax, w_bx, w_p, w_flag, w_pc, w_sp, w_opl, w_oplo, w_ophi;
input		[ 2 : 0 ]	reg_flag;
input		[ 7 : 0 ]	reg_opl;
output	[ 1 : 0 ]	add_mux;
output	[ 2 : 0 ]	bbus_mux;
output	[ 3 : 0 ]	alu_func;
output			 		flag_mux, pc_mux, sp_mux;
output					rom_cs, ram_cs, mem_rd, mem_wr;
output	[ 2 : 0 ]	state;


//******************************************
//           reg declaration
//******************************************
reg					w_acc, w_ax, w_bx, w_p, w_flag, w_pc, w_sp, w_opl, w_oplo, w_ophi;
reg	[ 1 : 0 ]	add_mux; 
reg	[ 2 : 0 ]	bbus_mux;
reg	[ 3 : 0 ]	alu_func;
reg			      flag_mux, pc_mux, sp_mux;
reg			      rom_cs, ram_cs, mem_rd, mem_wr;
reg	[ 2 : 0 ]	state;

//******************************************
//           parameter declaration
//******************************************	
parameter s0 = 3'b000, s1 = 3'b001, s2 = 3'b010, s3 = 3'b011, s4 = 3'b100, s5 = 3'b101;


//********************************************************************************
//  Controller State machine
//******************************************	*************************************
always @( posedge sys_clk or posedge sys_rst )
	if ( sys_rst )
	begin
     	rom_cs		<= 1'b0;
      ram_cs		<= 1'b0;
      mem_rd		<= 1'b0;
		mem_wr		<= 1'b0;		
		w_acc		<= 1'b0;
		w_ax		<= 1'b0;
		w_bx		<= 1'b0;
		w_p		<= 1'b0;
		w_flag		<= 1'b0;
		w_pc      	<= 1'b0;
		w_sp		<= 1'b0;
		w_opl	     	<= 1'b0;
		w_oplo	    	<= 1'b0;
		w_ophi		<= 1'b0;
		add_mux		<= 2'b01;
		bbus_mux	<= 3'b000;				
		alu_func	<= 4'b0000;
		flag_mux	<= 1'b1;
		pc_mux		<= 1'b1;
		sp_mux		<= 1'b1;
		state		<= s0;
	end	
	else
		case ( state )
		s0:	
		begin
				rom_cs		<= 1'b1;
				ram_cs		<= 1'b0;
				mem_rd		<= 1'b1;
				mem_wr		<= 1'b0;				
				w_acc		<= 1'b0;
				w_ax		<= 1'b0;
				w_bx		<= 1'b0;
				w_p		<= 1'b0;
				w_flag		<= 1'b0;
				w_pc		<= 1'b1;
				w_sp		<= 1'b0;			
				w_opl		<= 1'b1;
				w_oplo		<= 1'b0;
				w_ophi		<= 1'b0;                
				add_mux		<= 2'b01;
				bbus_mux	<= 3'b000;																							
				alu_func	<= 4'bx;
				flag_mux	<= 1'b1;
				pc_mux		<= 1'b1;
				sp_mux		<= 1'b1;
				state		<= s1;
		end
		
		//********************************************************************************
      //       REGISTER DIRECT INSTRUCTIONS 
      //******************************************	*************************************
		s1:	
		begin
				rom_cs		<= 1'b0;
				mem_rd		<= 1'b0;
				w_pc		<= 1'b0;	
				w_opl		<= 1'b0;		
				// ALU opcode - register direct
				if ( ( reg_opl [ 7 : 6 ] == 2'b00 ) && ( reg_opl [ 2 : 0 ] != 3'b111 ) )
				begin
					w_acc		<= 1'b1;
					w_flag		<= 1'b1;		
					bbus_mux	<= reg_opl [ 2 : 0 ];
					alu_func	<= reg_opl [ 6 : 3 ];
					state		<= s0;
				end
				// CMPACC opcode - register direct
				else if ( ( reg_opl [ 7 : 3 ] == 5'b01000 ) && ( reg_opl [ 2 : 0 ] != 3'b111 ) )
				begin
					w_flag		<= 1'b1;					
					bbus_mux	<= reg_opl [ 2 : 0 ];
					alu_func	<= 4'b0001;		
					state		<= s0;					
				end				
				// LDACC - register direct
				else if ( ( reg_opl [ 7 : 3 ] == 5'b10001 ) && ( reg_opl [ 2 : 0 ] != 3'b111 ) )
				begin
					w_acc		<= 1'b1;	
					bbus_mux	<= reg_opl [ 2 : 0 ];
					alu_func	<= 4'b1000;
					state		<= s0;								
				end
				// STACC - register direct
				else if ( ( reg_opl [ 7 : 3 ] == 5'b10010 ) && ( reg_opl [ 2 : 0 ] != 3'b111 ) )
				begin
					case ( reg_opl [ 2 : 0 ] )
						3'b001:	w_ax	<= 1'b1;
						3'b010: w_bx	<= 1'b1;
						3'b100:	begin
								w_flag		<= 1'b1;
								flag_mux	<= 1'b0;
							end
						3'b101:	w_p	<= 1'b1;
						default:;
					endcase		
					bbus_mux	<= 3'b001;	
					alu_func	<= 4'b1001;	
					state		<= s0;
				end
				// PUSH
				else if ( reg_opl [ 7 : 3 ] == 5'b01110 )
				begin
					ram_cs		<= 1'b1;	
					mem_wr	<= 1'b1;				
					w_sp		<= 1'b1;
					add_mux		<= 2'b10;					
					bbus_mux	<= reg_opl [ 2 : 0 ];	
					if ( reg_opl [ 2 : 0 ] == 3'b000 )
						alu_func	<= 4'b1001;
					else	
						alu_func	<= 4'b1000;								
					state		<= s0;					
				end
				// POP, RET part I, increment SP
				else if ( reg_opl [ 7 : 3 ] == 5'b01111 || reg_opl [ 7 : 0 ] == 8'b11011110 )
				begin					
					w_sp		<= 1'b1;		
					sp_mux		<= 1'b0;
					state		<= s2;
				end
				else
					state		<= s2;
		end
		
		//********************************************************************************
      //       IMMEDIATE INSTRUCTIONS
      //******************************************	*************************************		
		s2:	
		begin
				if ( ( reg_opl [ 7 : 6] == 2'b10 ) && ( reg_opl [ 2 : 0 ] == 3'b111 ) )
				begin
				        rom_cs		<= 1'b1;		
				        mem_rd		<= 1'b1;				    
				        case ( reg_opl [ 5 : 3 ] )
				        	3'b000:	w_acc		<= 1'b1;
				        	3'b001: w_ax		<= 1'b1;
				        	3'b010: w_bx		<= 1'b1;
				        	3'b101: w_p		<= 1'b1;
				        	default:;			
				        endcase
				        w_pc		<= 1'b1;					        
				        w_oplo		<= 1'b1;					        
				        bbus_mux	<= 3'b110;
				        alu_func	<= 4'b1000;				        
				        state		<= s0;
				end
				// ALU op - immediate
				else if ( ( reg_opl [ 7 : 6 ] == 2'b00 ) && ( reg_opl [ 2 : 0 ] == 3'b111 ) )
				begin
					rom_cs		<= 1'b1;	
					mem_rd		<= 1'b1;					
					w_acc		<= 1'b1;		
					w_flag		<= 1'b1;	
					w_pc		<= 1'b1;						
					w_oplo		<= 1'b1;						
					bbus_mux	<= 3'b110;
					alu_func	<= reg_opl [ 6 : 3 ];						
					state		<= s0;						
				end
				// CMPACC op - immediate
				else if ( ( reg_opl [ 7 : 3 ] == 5'b01000 ) && ( reg_opl [ 2 : 0 ] == 3'b111 ) )
				begin
					rom_cs		<= 1'b1;
					mem_rd		<= 1'b1;					
					w_flag		<= 1'b1;	
					w_pc		<= 1'b1;		
					w_oplo		<= 1'b1;					
					bbus_mux	<= 3'b110;	
					alu_func	<= 4'b001;						
					state		<= s0;
				end 
				// POP, part II, load data from [SP]
				else if ( reg_opl [ 7 : 3 ] == 5'b01111 )
				begin
					ram_cs		<= 1'b1;	
					mem_rd		<= 1'b1;					
					case ( reg_opl [ 2 : 0 ] )
						3'b000: w_acc	<= 1'b1;
						3'b001: w_ax	<= 1'b1;
						3'b010: w_bx	<= 1'b1;
						3'b100: 
						begin
							w_flag		<= 1'b1;
							flag_mux	<= 1'b0;
						end
						default: w_p	<= 1'b1;
					endcase
					w_sp		<= 1'b0;							
					w_oplo		<= 1'b1;							
					add_mux		<= 2'b10;	
					bbus_mux	<= 3'b110;		
					alu_func	<= 4'b1000;						
					state		<= s0;					
				end		
				// RET, part II, load hi byte of saved PC
				else if ( reg_opl [ 7 : 0 ] == 8'b11011110 )
				begin
					ram_cs		<= 1'b1;
					mem_rd		<= 1'b1;						
					w_sp		<= 1'b1;							
					w_ophi		<= 1'b1;							
					add_mux		<= 2'b10;	
					bbus_mux	<= 3'b110;	
					alu_func	<= 4'b1000;	
					sp_mux		<= 1'b0;						
					state		<= s3;
				end
				else
				begin
					rom_cs		<= 1'b1;	
					mem_rd		<= 1'b1;					
					w_pc		<= 1'b1;							
					w_oplo		<= 1'b1;						
					bbus_mux	<= 3'b110;
					alu_func	<= 4'b1000;
					pc_mux		<= 1'b1;					
					state		<= s3;
				end
		end
		//********************************************************************************
      //       BRANCHING INSTRUCTIONS
      //******************************************	*************************************	
		s3:	
		begin
				if ( ( reg_opl [ 7 ] == 1'b1 ) && ( reg_opl [ 2 : 0 ] == 3'b000 ) )
				begin	
					w_ophi		<= 1'b1;	
					w_oplo		<= 1'b0;	
					bbus_mux	<= 3'b110;
					alu_func	<= 4'b1000;	
					case ( reg_opl [ 6 : 3 ] )
						4'b0011:if ( reg_flag [ 0 ] == 1'b1 )	// JE
								pc_mux	<= 0;
							else
								pc_mux	<= 1;
						4'b0100:if ( reg_flag [ 0 ] == 1'b0 )	// JNE
								pc_mux	<= 0;
							else
								pc_mux	<= 1;
						4'b0101:if ( reg_flag [ 1 ] == 1'b1 )	// JP
								pc_mux	<= 0;
							else
								pc_mux	<= 1;
						4'b0110:if ( reg_flag [ 1 ] == 1'b0 )	// JN
								pc_mux	<= 0;
							else
								pc_mux	<= 1;
						4'b0111:if ( reg_flag [ 2 ] == 1'b1 )	// JC
								pc_mux	<= 0;
							else
								pc_mux	<= 1;
						4'b1000:if ( reg_flag [ 2 ] == 1'b0 )	// JNC
								pc_mux	<= 0;
							else
								pc_mux	<= 1;
						4'b1001:pc_mux	<= 0;			// JMP unconditional
						default:;
					endcase					
					state		<= s0;
				end 
				// RET, part III, load lo byte of saved PC
				else if ( reg_opl [ 7 : 0 ] == 8'b11011110 )
				begin
					w_flag		<= 1'b1;
					w_pc		<= 1'b1;
					w_sp		<= 1'b0;						
					w_ophi		<= 1'b0;
					w_oplo		<= 1'b1;				
					add_mux		<= 2'b10;
					bbus_mux	<= 3'b100;
					alu_func	<= 4'b1000;
					pc_mux		<= 1'b0;
					sp_mux		<= 1'b1;				
					state		<= s0;
				end
				// CALL, part I
				else
				begin
					w_ophi		<= 1'b1;			
					w_oplo		<= 1'b0;					
					state		<= s4;
				end
		end
		
		//********************************************************************************
      //       DIRECT INSTRUCTIONS
      //******************************************	*************************************
		s4:	
		begin
				rom_cs		<= 1'b0;
				w_pc		<= 1'b0;		
				w_ophi		<= 1'b0;				
				// LDM and STM instructions
				if ( ( reg_opl [ 7 : 4 ] == 5'b0110 ) && ( reg_opl [ 2 : 0 ] != 3'b111 ) )
				begin
					ram_cs		<= 1'b1;			
					add_mux		<= 2'b00;	
					bbus_mux	<= 3'b110;	
					alu_func	<= 4'b1000;	
					pc_mux		<= 1'b1;
					// if it is STM
					if ( reg_opl [ 3 ] == 1'b1 )
					begin
						mem_wr		<= 1'b1;
						bbus_mux	<= reg_opl [ 2 : 0 ];
						if ( reg_opl [ 2 : 0 ] == 3'b000 )
							alu_func	<= 4'b1001;	
					end
					// if it is LDM
					else
					begin
						mem_rd		<= 1'b1;						
						case ( reg_opl [ 2 : 0 ] )
							3'b001: w_ax	<= 1'b1;
							3'b010: w_bx	<= 1'b1;
							3'b101: w_p	<= 1'b1;
							3'b100:	
							begin
									w_flag		<= 1'b1;
									flag_mux	<= 1'b0;
							end
							default:w_acc	<= 1'b1;
						endcase						
						w_oplo		<= 1'b1;
					end
					state		<= s0;
				end
				// CALL
				else if ( reg_opl [ 7 : 0 ] == 8'b11010110 )
				begin
					ram_cs		<= 1'b1;
					mem_wr		<= 1'b1;	
					w_sp		<= 1'b1;							
					add_mux		<= 2'b10;	
					bbus_mux	<= 3'b011;
					alu_func	<= 4'b1000;	
					pc_mux		<= 1'b0;
					sp_mux		<= 1'b1;					
					state		<= s5;
				end 			
		end
		
		//********************************************************************************
      //       CALL
      //********************************************************************************
		s5:	
		begin
				w_pc		<= 1'b1;
				bbus_mux	<= 3'b100;
				state		<= s0;
		end			
	endcase

endmodule
