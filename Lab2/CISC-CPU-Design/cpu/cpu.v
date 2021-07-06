module cpu ( sys_rst ,
             sys_clk ,
			    p_out ,
			    p_in
);

//******************************************
//        input/output declaration
//******************************************	
input sys_rst,sys_clk;
input  [ 7 : 0 ] p_in;
output [ 7 : 0 ] p_out;

//******************************************
//           wire declaration
//******************************************
wire	[ 11 : 0 ]	add_bus;
wire	[ 7 : 0 ]	d_ram, q_ram, q_rom;
wire	[ 7 : 0 ]	p_out;
wire			   	syn_clk, slow_clk;
wire			   	rom_cs, ram_cs, mem_rd, mem_wr;

//******************************************
//           reg declaration
//******************************************
reg	[ 7 : 0 ] 	d_in;

//******************************************
//            ram&rom read
//******************************************	
always @ ( ram_cs or q_rom or q_ram )
	if ( ram_cs )
		d_in <= q_ram;
	else
		d_in <= q_rom;
		
//******************************************
//            controller&datapath
//******************************************		
pc		PC0
		(	.sys_clk ( sys_clk ),
			.sys_rst ( sys_rst ),			
			.add_bus ( add_bus ),
			.d_in ( d_in ),
			.d_out ( d_ram ),
			.p_in ( p_in ),
			.p_out ( p_out ),		
			.syn_clk ( syn_clk ),
			.rom_cs ( rom_cs ),
			.ram_cs ( ram_cs ),
			.mem_rd ( mem_rd ),
			.mem_wr ( mem_wr ),		
			.slow_clk ( slow_clk )
);

//******************************************
//            instantiate the 4KB ROM
//******************************************			
ROM4KB	ROM0
		(	.address ( add_bus [ 11 : 0 ] ),
			.clock ( sys_clk ),
			.clken ( rom_cs & mem_rd ),
			.aclr( sys_rst ),
			.q ( q_rom )
);
		
//******************************************
//            instantiate the 4KB RAMj
//******************************************		
RAM4KB	RAM0
		(	.clock ( syn_clk ),
			.clken ( ram_cs ),
			.aclr (sys_rst ),
			.wren ( mem_wr ),
			.address ( add_bus [ 11 : 0 ] ),
			.data ( d_ram ),
			.q (q_ram )
);	             
	
endmodule 
