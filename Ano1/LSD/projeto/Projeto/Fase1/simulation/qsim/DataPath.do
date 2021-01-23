onerror {exit -code 1}
vlib work
vcom -work work DataPath.vho
vcom -work work Teste_IMemory.vwf.vht
vsim -novopt -c -t 1ps -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.IMemory_vhd_vec_tst
vcd file -direction DataPath.msim.vcd
vcd add -internal IMemory_vhd_vec_tst/*
vcd add -internal IMemory_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f

