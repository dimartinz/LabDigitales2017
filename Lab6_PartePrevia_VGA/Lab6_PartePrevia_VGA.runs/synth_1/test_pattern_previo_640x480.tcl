# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/Diego/LabDigitales2017/Lab6_PartePrevia_VGA/Lab6_PartePrevia_VGA.cache/wt [current_project]
set_property parent.project_path C:/Users/Diego/LabDigitales2017/Lab6_PartePrevia_VGA/Lab6_PartePrevia_VGA.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo c:/Users/Diego/LabDigitales2017/Lab6_PartePrevia_VGA/Lab6_PartePrevia_VGA.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib {
  C:/Users/Diego/LabDigitales2017/Lab6_PartePrevia_VGA/Lab6_PartePrevia_VGA.srcs/sources_1/imports/Lab6_PS2_VGA_reference/video_testpattern.v
  C:/Users/Diego/LabDigitales2017/Lab6_PartePrevia_VGA/Lab6_PartePrevia_VGA.srcs/sources_1/imports/Lab6_PS2_VGA_reference/driver_vga.v
  C:/Users/Diego/LabDigitales2017/Lab6_PartePrevia_VGA/Lab6_PartePrevia_VGA.srcs/sources_1/imports/Lab6_PS2_VGA_reference/test_pattern_previo.v
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc {{C:/Users/Diego/LabDigitales2017/Lab6_PartePrevia_VGA/Lab6_PartePrevia_VGA.srcs/constrs_1/imports/LabDigitales2017/The Final Alcachofita.xdc}}
set_property used_in_implementation false [get_files {{C:/Users/Diego/LabDigitales2017/Lab6_PartePrevia_VGA/Lab6_PartePrevia_VGA.srcs/constrs_1/imports/LabDigitales2017/The Final Alcachofita.xdc}}]


synth_design -top test_pattern_previo_640x480 -part xc7a100tcsg324-1


write_checkpoint -force -noxdef test_pattern_previo_640x480.dcp

catch { report_utilization -file test_pattern_previo_640x480_utilization_synth.rpt -pb test_pattern_previo_640x480_utilization_synth.pb }