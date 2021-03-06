transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/zhengxjie/Desktop/DE2_LAB/work/cpu {C:/Users/zhengxjie/Desktop/DE2_LAB/work/cpu/RAM4KB.v}
vlog -vlog01compat -work work +incdir+C:/Users/zhengxjie/Desktop/DE2_LAB/work/cpu {C:/Users/zhengxjie/Desktop/DE2_LAB/work/cpu/ROM4KB.v}
vlog -vlog01compat -work work +incdir+C:/Users/zhengxjie/Desktop/DE2_LAB/work/cpu {C:/Users/zhengxjie/Desktop/DE2_LAB/work/cpu/cpu.v}
vlog -vlog01compat -work work +incdir+C:/Users/zhengxjie/Desktop/DE2_LAB/work/cpu {C:/Users/zhengxjie/Desktop/DE2_LAB/work/cpu/pc.v}
vlog -vlog01compat -work work +incdir+C:/Users/zhengxjie/Desktop/DE2_LAB/work/cpu {C:/Users/zhengxjie/Desktop/DE2_LAB/work/cpu/datapath.v}
vlog -vlog01compat -work work +incdir+C:/Users/zhengxjie/Desktop/DE2_LAB/work/cpu {C:/Users/zhengxjie/Desktop/DE2_LAB/work/cpu/ctr.v}

vlog -vlog01compat -work work +incdir+C:/Users/zhengxjie/Desktop/DE2_LAB/work/cpu/simulation/modelsim {C:/Users/zhengxjie/Desktop/DE2_LAB/work/cpu/simulation/modelsim/cpu_tb.vt}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  cpu_tb

add wave *
view structure
view signals
run -all
