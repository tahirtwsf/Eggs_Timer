# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -msgmgr_mode ooc_run
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir {U:/Lab 9/Egg_timer/Egg_timer.cache/wt} [current_project]
set_property parent.project_path {U:/Lab 9/Egg_timer/Egg_timer.xpr} [current_project]
set_property XPM_LIBRARIES XPM_CDC [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part digilentinc.com:nexys4_ddr:part0:1.1 [current_project]
set_property ip_output_repo {u:/Lab 9/Egg_timer/Egg_timer.cache/ip} [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_ip -quiet {{U:/Lab 9/Egg_timer/Egg_timer.srcs/sources_1/ip/c_counter_binary_1/c_counter_binary_1.xci}}
set_property is_locked true [get_files {{U:/Lab 9/Egg_timer/Egg_timer.srcs/sources_1/ip/c_counter_binary_1/c_counter_binary_1.xci}}]

foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

set cached_ip [config_ip_cache -export -no_bom -use_project_ipc -dir {U:/Lab 9/Egg_timer/Egg_timer.runs/c_counter_binary_1_synth_1} -new_name c_counter_binary_1 -ip [get_ips c_counter_binary_1]]

if { $cached_ip eq {} } {

synth_design -top c_counter_binary_1 -part xc7a100tcsg324-1 -mode out_of_context

#---------------------------------------------------------
# Generate Checkpoint/Stub/Simulation Files For IP Cache
#---------------------------------------------------------
catch {
 write_checkpoint -force -noxdef -rename_prefix c_counter_binary_1_ c_counter_binary_1.dcp

 set ipCachedFiles {}
 write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ c_counter_binary_1_stub.v
 lappend ipCachedFiles c_counter_binary_1_stub.v

 write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ c_counter_binary_1_stub.vhdl
 lappend ipCachedFiles c_counter_binary_1_stub.vhdl

 write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ c_counter_binary_1_sim_netlist.v
 lappend ipCachedFiles c_counter_binary_1_sim_netlist.v

 write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ c_counter_binary_1_sim_netlist.vhdl
 lappend ipCachedFiles c_counter_binary_1_sim_netlist.vhdl

 config_ip_cache -add -dcp c_counter_binary_1.dcp -move_files $ipCachedFiles -use_project_ipc -ip [get_ips c_counter_binary_1]
}

rename_ref -prefix_all c_counter_binary_1_

write_checkpoint -force -noxdef c_counter_binary_1.dcp

catch { report_utilization -file c_counter_binary_1_utilization_synth.rpt -pb c_counter_binary_1_utilization_synth.pb }

if { [catch {
  file copy -force {U:/Lab 9/Egg_timer/Egg_timer.runs/c_counter_binary_1_synth_1/c_counter_binary_1.dcp} {U:/Lab 9/Egg_timer/Egg_timer.srcs/sources_1/ip/c_counter_binary_1/c_counter_binary_1.dcp}
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  write_verilog -force -mode synth_stub {U:/Lab 9/Egg_timer/Egg_timer.srcs/sources_1/ip/c_counter_binary_1/c_counter_binary_1_stub.v}
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode synth_stub {U:/Lab 9/Egg_timer/Egg_timer.srcs/sources_1/ip/c_counter_binary_1/c_counter_binary_1_stub.vhdl}
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_verilog -force -mode funcsim {U:/Lab 9/Egg_timer/Egg_timer.srcs/sources_1/ip/c_counter_binary_1/c_counter_binary_1_sim_netlist.v}
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode funcsim {U:/Lab 9/Egg_timer/Egg_timer.srcs/sources_1/ip/c_counter_binary_1/c_counter_binary_1_sim_netlist.vhdl}
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}


} else {


if { [catch {
  file copy -force {U:/Lab 9/Egg_timer/Egg_timer.runs/c_counter_binary_1_synth_1/c_counter_binary_1.dcp} {U:/Lab 9/Egg_timer/Egg_timer.srcs/sources_1/ip/c_counter_binary_1/c_counter_binary_1.dcp}
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  file rename -force {U:/Lab 9/Egg_timer/Egg_timer.runs/c_counter_binary_1_synth_1/c_counter_binary_1_stub.v} {U:/Lab 9/Egg_timer/Egg_timer.srcs/sources_1/ip/c_counter_binary_1/c_counter_binary_1_stub.v}
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force {U:/Lab 9/Egg_timer/Egg_timer.runs/c_counter_binary_1_synth_1/c_counter_binary_1_stub.vhdl} {U:/Lab 9/Egg_timer/Egg_timer.srcs/sources_1/ip/c_counter_binary_1/c_counter_binary_1_stub.vhdl}
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force {U:/Lab 9/Egg_timer/Egg_timer.runs/c_counter_binary_1_synth_1/c_counter_binary_1_sim_netlist.v} {U:/Lab 9/Egg_timer/Egg_timer.srcs/sources_1/ip/c_counter_binary_1/c_counter_binary_1_sim_netlist.v}
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  file rename -force {U:/Lab 9/Egg_timer/Egg_timer.runs/c_counter_binary_1_synth_1/c_counter_binary_1_sim_netlist.vhdl} {U:/Lab 9/Egg_timer/Egg_timer.srcs/sources_1/ip/c_counter_binary_1/c_counter_binary_1_sim_netlist.vhdl}
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

}; # end if cached_ip 

if {[file isdir {U:/Lab 9/Egg_timer/Egg_timer.ip_user_files/ip/c_counter_binary_1}]} {
  catch { 
    file copy -force {{U:/Lab 9/Egg_timer/Egg_timer.srcs/sources_1/ip/c_counter_binary_1/c_counter_binary_1_stub.v}} {U:/Lab 9/Egg_timer/Egg_timer.ip_user_files/ip/c_counter_binary_1}
  }
}

if {[file isdir {U:/Lab 9/Egg_timer/Egg_timer.ip_user_files/ip/c_counter_binary_1}]} {
  catch { 
    file copy -force {{U:/Lab 9/Egg_timer/Egg_timer.srcs/sources_1/ip/c_counter_binary_1/c_counter_binary_1_stub.vhdl}} {U:/Lab 9/Egg_timer/Egg_timer.ip_user_files/ip/c_counter_binary_1}
  }
}
