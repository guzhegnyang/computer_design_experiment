# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -id {Synth 8-256} -limit 10000
set_msg_config -id {Synth 8-638} -limit 10000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/guzy0/CPU/CPU.cache/wt [current_project]
set_property parent.project_path C:/Users/guzy0/CPU/CPU.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property vhdl_version vhdl_2k [current_fileset]
add_files C:/Users/guzy0/CPU/IM.coe
add_files -quiet C:/Users/guzy0/CPU/CPU.runs/irom_synth_1/irom.dcp
set_property used_in_implementation false [get_files C:/Users/guzy0/CPU/CPU.runs/irom_synth_1/irom.dcp]
read_verilog -library xil_defaultlib {
  C:/Users/guzy0/CPU/CPU.srcs/sources_1/new/smg_ip_model.v
  C:/Users/guzy0/CPU/CPU.srcs/sources_1/new/alu.v
  C:/Users/guzy0/CPU/CPU.srcs/sources_1/new/regFile.v
  C:/Users/guzy0/CPU/CPU.srcs/sources_1/new/signext.v
  C:/Users/guzy0/CPU/CPU.srcs/sources_1/new/MUX5_2_1.v
  C:/Users/guzy0/CPU/CPU.srcs/sources_1/new/MUX32_4_1.v
  C:/Users/guzy0/CPU/CPU.srcs/sources_1/new/MUX32_2_1.v
  C:/Users/guzy0/CPU/CPU.srcs/sources_1/new/dram.v
  C:/Users/guzy0/CPU/CPU.srcs/sources_1/new/ctr.v
  C:/Users/guzy0/CPU/CPU.srcs/sources_1/new/aluctr.v
  C:/Users/guzy0/CPU/CPU.srcs/sources_1/new/imem.v
  C:/Users/guzy0/CPU/CPU.srcs/sources_1/new/top.v
}
read_xdc C:/Users/guzy0/CPU/CPU.srcs/constrs_1/new/cons.xdc
set_property used_in_implementation false [get_files C:/Users/guzy0/CPU/CPU.srcs/constrs_1/new/cons.xdc]

synth_design -top top -part xc7a35tcpg236-1
write_checkpoint -noxdef top.dcp
catch { report_utilization -file top_utilization_synth.rpt -pb top_utilization_synth.pb }
