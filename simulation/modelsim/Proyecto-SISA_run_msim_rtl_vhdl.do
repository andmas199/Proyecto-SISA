transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/pec02/Desktop/Proyecto-SISA/src/sisa.vhd}
vcom -93 -work work {C:/Users/pec02/Desktop/Proyecto-SISA/src/memory/MemoryController.vhd}
vcom -93 -work work {C:/Users/pec02/Desktop/Proyecto-SISA/src/memory/SRAMController.vhd}
vcom -93 -work work {C:/Users/pec02/Desktop/Proyecto-SISA/src/processor/control_unit/unidad_control.vhd}
vcom -93 -work work {C:/Users/pec02/Desktop/Proyecto-SISA/src/processor/control_unit/multi.vhd}
vcom -93 -work work {C:/Users/pec02/Desktop/Proyecto-SISA/src/processor/control_unit/control_l.vhd}
vcom -93 -work work {C:/Users/pec02/Desktop/Proyecto-SISA/src/processor/datapath/regfile.vhd}
vcom -93 -work work {C:/Users/pec02/Desktop/Proyecto-SISA/src/processor/datapath/datapath.vhd}
vcom -93 -work work {C:/Users/pec02/Desktop/Proyecto-SISA/src/processor/datapath/alu.vhd}
vcom -93 -work work {C:/Users/pec02/Desktop/Proyecto-SISA/src/processor/proc.vhd}

vcom -93 -work work {C:/Users/pec02/Desktop/Proyecto-SISA/test/test_sisa.vhd}
vcom -93 -work work {C:/Users/pec02/Desktop/Proyecto-SISA/test/async_64Kx16.vhd}
vcom -93 -work work {C:/Users/pec02/Desktop/Proyecto-SISA/test/package_timing.vhd}
vcom -93 -work work {C:/Users/pec02/Desktop/Proyecto-SISA/test/package_utility.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  test_sisa

add wave *
view structure
view signals
run -all
