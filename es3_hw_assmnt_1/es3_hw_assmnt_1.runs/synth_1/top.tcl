# 
# Synthesis run script generated by Vivado
# 

debug::add_scope template.lib 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Users/s1301217/Desktop/ES3_Lab_Upgrade/Upgrade/Assessment_1_Calculator/es3_hw_assmnt_1/es3_hw_assmnt_1.cache/wt [current_project]
set_property parent.project_path C:/Users/s1301217/Desktop/ES3_Lab_Upgrade/Upgrade/Assessment_1_Calculator/es3_hw_assmnt_1/es3_hw_assmnt_1.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
add_files C:/Users/s1301217/Desktop/ES3_Lab_Upgrade/Upgrade/Assessment_1_Calculator/es3_hw_assmnt_1/es3_hw_assmnt_1.srcs/sources_1/bd/mb_system/mb_system.bd
set_property used_in_implementation false [get_files -all c:/Users/s1301217/Desktop/ES3_Lab_Upgrade/Upgrade/Assessment_1_Calculator/es3_hw_assmnt_1/es3_hw_assmnt_1.srcs/sources_1/bd/mb_system/ip/mb_system_microblaze_0_0/mb_system_microblaze_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/s1301217/Desktop/ES3_Lab_Upgrade/Upgrade/Assessment_1_Calculator/es3_hw_assmnt_1/es3_hw_assmnt_1.srcs/sources_1/bd/mb_system/ip/mb_system_microblaze_0_0/mb_system_microblaze_0_0_ooc_debug.xdc]
set_property used_in_implementation false [get_files -all c:/Users/s1301217/Desktop/ES3_Lab_Upgrade/Upgrade/Assessment_1_Calculator/es3_hw_assmnt_1/es3_hw_assmnt_1.srcs/sources_1/bd/mb_system/ip/mb_system_microblaze_0_0/mb_system_microblaze_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/s1301217/Desktop/ES3_Lab_Upgrade/Upgrade/Assessment_1_Calculator/es3_hw_assmnt_1/es3_hw_assmnt_1.srcs/sources_1/bd/mb_system/ip/mb_system_dlmb_v10_0/mb_system_dlmb_v10_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/s1301217/Desktop/ES3_Lab_Upgrade/Upgrade/Assessment_1_Calculator/es3_hw_assmnt_1/es3_hw_assmnt_1.srcs/sources_1/bd/mb_system/ip/mb_system_dlmb_v10_0/mb_system_dlmb_v10_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/s1301217/Desktop/ES3_Lab_Upgrade/Upgrade/Assessment_1_Calculator/es3_hw_assmnt_1/es3_hw_assmnt_1.srcs/sources_1/bd/mb_system/ip/mb_system_ilmb_v10_0/mb_system_ilmb_v10_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/s1301217/Desktop/ES3_Lab_Upgrade/Upgrade/Assessment_1_Calculator/es3_hw_assmnt_1/es3_hw_assmnt_1.srcs/sources_1/bd/mb_system/ip/mb_system_ilmb_v10_0/mb_system_ilmb_v10_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/s1301217/Desktop/ES3_Lab_Upgrade/Upgrade/Assessment_1_Calculator/es3_hw_assmnt_1/es3_hw_assmnt_1.srcs/sources_1/bd/mb_system/ip/mb_system_dlmb_bram_if_cntlr_0/mb_system_dlmb_bram_if_cntlr_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/s1301217/Desktop/ES3_Lab_Upgrade/Upgrade/Assessment_1_Calculator/es3_hw_assmnt_1/es3_hw_assmnt_1.srcs/sources_1/bd/mb_system/ip/mb_system_ilmb_bram_if_cntlr_0/mb_system_ilmb_bram_if_cntlr_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/s1301217/Desktop/ES3_Lab_Upgrade/Upgrade/Assessment_1_Calculator/es3_hw_assmnt_1/es3_hw_assmnt_1.srcs/sources_1/bd/mb_system/ip/mb_system_lmb_bram_0/mb_system_lmb_bram_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/s1301217/Desktop/ES3_Lab_Upgrade/Upgrade/Assessment_1_Calculator/es3_hw_assmnt_1/es3_hw_assmnt_1.srcs/sources_1/bd/mb_system/ip/mb_system_rst_clk_wiz_1_100M_0/mb_system_rst_clk_wiz_1_100M_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/s1301217/Desktop/ES3_Lab_Upgrade/Upgrade/Assessment_1_Calculator/es3_hw_assmnt_1/es3_hw_assmnt_1.srcs/sources_1/bd/mb_system/ip/mb_system_rst_clk_wiz_1_100M_0/mb_system_rst_clk_wiz_1_100M_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/s1301217/Desktop/ES3_Lab_Upgrade/Upgrade/Assessment_1_Calculator/es3_hw_assmnt_1/es3_hw_assmnt_1.srcs/sources_1/bd/mb_system/ip/mb_system_rst_clk_wiz_1_100M_0/mb_system_rst_clk_wiz_1_100M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/s1301217/Desktop/ES3_Lab_Upgrade/Upgrade/Assessment_1_Calculator/es3_hw_assmnt_1/es3_hw_assmnt_1.srcs/sources_1/bd/mb_system/ip/mb_system_axi_gpio_0_0/mb_system_axi_gpio_0_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/s1301217/Desktop/ES3_Lab_Upgrade/Upgrade/Assessment_1_Calculator/es3_hw_assmnt_1/es3_hw_assmnt_1.srcs/sources_1/bd/mb_system/ip/mb_system_axi_gpio_0_0/mb_system_axi_gpio_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/s1301217/Desktop/ES3_Lab_Upgrade/Upgrade/Assessment_1_Calculator/es3_hw_assmnt_1/es3_hw_assmnt_1.srcs/sources_1/bd/mb_system/ip/mb_system_axi_gpio_0_0/mb_system_axi_gpio_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/s1301217/Desktop/ES3_Lab_Upgrade/Upgrade/Assessment_1_Calculator/es3_hw_assmnt_1/es3_hw_assmnt_1.srcs/sources_1/bd/mb_system/ip/mb_system_gpio_leds_0/mb_system_gpio_leds_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/s1301217/Desktop/ES3_Lab_Upgrade/Upgrade/Assessment_1_Calculator/es3_hw_assmnt_1/es3_hw_assmnt_1.srcs/sources_1/bd/mb_system/ip/mb_system_gpio_leds_0/mb_system_gpio_leds_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/s1301217/Desktop/ES3_Lab_Upgrade/Upgrade/Assessment_1_Calculator/es3_hw_assmnt_1/es3_hw_assmnt_1.srcs/sources_1/bd/mb_system/ip/mb_system_gpio_leds_0/mb_system_gpio_leds_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/s1301217/Desktop/ES3_Lab_Upgrade/Upgrade/Assessment_1_Calculator/es3_hw_assmnt_1/es3_hw_assmnt_1.srcs/sources_1/bd/mb_system/ip/mb_system_gpio_s_switches_0/mb_system_gpio_s_switches_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/s1301217/Desktop/ES3_Lab_Upgrade/Upgrade/Assessment_1_Calculator/es3_hw_assmnt_1/es3_hw_assmnt_1.srcs/sources_1/bd/mb_system/ip/mb_system_gpio_s_switches_0/mb_system_gpio_s_switches_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/s1301217/Desktop/ES3_Lab_Upgrade/Upgrade/Assessment_1_Calculator/es3_hw_assmnt_1/es3_hw_assmnt_1.srcs/sources_1/bd/mb_system/ip/mb_system_gpio_s_switches_0/mb_system_gpio_s_switches_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/s1301217/Desktop/ES3_Lab_Upgrade/Upgrade/Assessment_1_Calculator/es3_hw_assmnt_1/es3_hw_assmnt_1.srcs/sources_1/bd/mb_system/ip/mb_system_gpio_leds_1/mb_system_gpio_leds_1_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/s1301217/Desktop/ES3_Lab_Upgrade/Upgrade/Assessment_1_Calculator/es3_hw_assmnt_1/es3_hw_assmnt_1.srcs/sources_1/bd/mb_system/ip/mb_system_gpio_leds_1/mb_system_gpio_leds_1_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/s1301217/Desktop/ES3_Lab_Upgrade/Upgrade/Assessment_1_Calculator/es3_hw_assmnt_1/es3_hw_assmnt_1.srcs/sources_1/bd/mb_system/ip/mb_system_gpio_leds_1/mb_system_gpio_leds_1.xdc]
set_property used_in_implementation false [get_files -all c:/Users/s1301217/Desktop/ES3_Lab_Upgrade/Upgrade/Assessment_1_Calculator/es3_hw_assmnt_1/es3_hw_assmnt_1.srcs/sources_1/bd/mb_system/ip/mb_system_gpio_7seg_0/mb_system_gpio_7seg_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/s1301217/Desktop/ES3_Lab_Upgrade/Upgrade/Assessment_1_Calculator/es3_hw_assmnt_1/es3_hw_assmnt_1.srcs/sources_1/bd/mb_system/ip/mb_system_gpio_7seg_0/mb_system_gpio_7seg_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/s1301217/Desktop/ES3_Lab_Upgrade/Upgrade/Assessment_1_Calculator/es3_hw_assmnt_1/es3_hw_assmnt_1.srcs/sources_1/bd/mb_system/ip/mb_system_gpio_7seg_0/mb_system_gpio_7seg_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/s1301217/Desktop/ES3_Lab_Upgrade/Upgrade/Assessment_1_Calculator/es3_hw_assmnt_1/es3_hw_assmnt_1.srcs/sources_1/bd/mb_system/ip/mb_system_gpio_s_switches_1/mb_system_gpio_s_switches_1_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/s1301217/Desktop/ES3_Lab_Upgrade/Upgrade/Assessment_1_Calculator/es3_hw_assmnt_1/es3_hw_assmnt_1.srcs/sources_1/bd/mb_system/ip/mb_system_gpio_s_switches_1/mb_system_gpio_s_switches_1_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/s1301217/Desktop/ES3_Lab_Upgrade/Upgrade/Assessment_1_Calculator/es3_hw_assmnt_1/es3_hw_assmnt_1.srcs/sources_1/bd/mb_system/ip/mb_system_gpio_s_switches_1/mb_system_gpio_s_switches_1.xdc]
set_property used_in_implementation false [get_files -all c:/Users/s1301217/Desktop/ES3_Lab_Upgrade/Upgrade/Assessment_1_Calculator/es3_hw_assmnt_1/es3_hw_assmnt_1.srcs/sources_1/bd/mb_system/ip/mb_system_gpio_s_switches_2/mb_system_gpio_s_switches_2_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/s1301217/Desktop/ES3_Lab_Upgrade/Upgrade/Assessment_1_Calculator/es3_hw_assmnt_1/es3_hw_assmnt_1.srcs/sources_1/bd/mb_system/ip/mb_system_gpio_s_switches_2/mb_system_gpio_s_switches_2_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/s1301217/Desktop/ES3_Lab_Upgrade/Upgrade/Assessment_1_Calculator/es3_hw_assmnt_1/es3_hw_assmnt_1.srcs/sources_1/bd/mb_system/ip/mb_system_gpio_s_switches_2/mb_system_gpio_s_switches_2.xdc]
set_property used_in_implementation false [get_files -all c:/Users/s1301217/Desktop/ES3_Lab_Upgrade/Upgrade/Assessment_1_Calculator/es3_hw_assmnt_1/es3_hw_assmnt_1.srcs/sources_1/bd/mb_system/ip/mb_system_gpio_s_switches_3/mb_system_gpio_s_switches_3_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/s1301217/Desktop/ES3_Lab_Upgrade/Upgrade/Assessment_1_Calculator/es3_hw_assmnt_1/es3_hw_assmnt_1.srcs/sources_1/bd/mb_system/ip/mb_system_gpio_s_switches_3/mb_system_gpio_s_switches_3_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/s1301217/Desktop/ES3_Lab_Upgrade/Upgrade/Assessment_1_Calculator/es3_hw_assmnt_1/es3_hw_assmnt_1.srcs/sources_1/bd/mb_system/ip/mb_system_gpio_s_switches_3/mb_system_gpio_s_switches_3.xdc]
set_property used_in_implementation false [get_files -all c:/Users/s1301217/Desktop/ES3_Lab_Upgrade/Upgrade/Assessment_1_Calculator/es3_hw_assmnt_1/es3_hw_assmnt_1.srcs/sources_1/bd/mb_system/ip/mb_system_gpio_vga_hs_0/mb_system_gpio_vga_hs_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/s1301217/Desktop/ES3_Lab_Upgrade/Upgrade/Assessment_1_Calculator/es3_hw_assmnt_1/es3_hw_assmnt_1.srcs/sources_1/bd/mb_system/ip/mb_system_gpio_vga_hs_0/mb_system_gpio_vga_hs_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/s1301217/Desktop/ES3_Lab_Upgrade/Upgrade/Assessment_1_Calculator/es3_hw_assmnt_1/es3_hw_assmnt_1.srcs/sources_1/bd/mb_system/ip/mb_system_gpio_vga_hs_0/mb_system_gpio_vga_hs_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/s1301217/Desktop/ES3_Lab_Upgrade/Upgrade/Assessment_1_Calculator/es3_hw_assmnt_1/es3_hw_assmnt_1.srcs/sources_1/bd/mb_system/ip/mb_system_gpio_p_btn_u_0/mb_system_gpio_p_btn_u_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/s1301217/Desktop/ES3_Lab_Upgrade/Upgrade/Assessment_1_Calculator/es3_hw_assmnt_1/es3_hw_assmnt_1.srcs/sources_1/bd/mb_system/ip/mb_system_gpio_p_btn_u_0/mb_system_gpio_p_btn_u_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/s1301217/Desktop/ES3_Lab_Upgrade/Upgrade/Assessment_1_Calculator/es3_hw_assmnt_1/es3_hw_assmnt_1.srcs/sources_1/bd/mb_system/ip/mb_system_gpio_p_btn_u_0/mb_system_gpio_p_btn_u_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/s1301217/Desktop/ES3_Lab_Upgrade/Upgrade/Assessment_1_Calculator/es3_hw_assmnt_1/es3_hw_assmnt_1.srcs/sources_1/bd/mb_system/ip/mb_system_gpio_p_btn_u_1/mb_system_gpio_p_btn_u_1_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/s1301217/Desktop/ES3_Lab_Upgrade/Upgrade/Assessment_1_Calculator/es3_hw_assmnt_1/es3_hw_assmnt_1.srcs/sources_1/bd/mb_system/ip/mb_system_gpio_p_btn_u_1/mb_system_gpio_p_btn_u_1_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/s1301217/Desktop/ES3_Lab_Upgrade/Upgrade/Assessment_1_Calculator/es3_hw_assmnt_1/es3_hw_assmnt_1.srcs/sources_1/bd/mb_system/ip/mb_system_gpio_p_btn_u_1/mb_system_gpio_p_btn_u_1.xdc]
set_property used_in_implementation false [get_files -all c:/Users/s1301217/Desktop/ES3_Lab_Upgrade/Upgrade/Assessment_1_Calculator/es3_hw_assmnt_1/es3_hw_assmnt_1.srcs/sources_1/bd/mb_system/ip/mb_system_gpio_p_btn_u_2/mb_system_gpio_p_btn_u_2_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/s1301217/Desktop/ES3_Lab_Upgrade/Upgrade/Assessment_1_Calculator/es3_hw_assmnt_1/es3_hw_assmnt_1.srcs/sources_1/bd/mb_system/ip/mb_system_gpio_p_btn_u_2/mb_system_gpio_p_btn_u_2_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/s1301217/Desktop/ES3_Lab_Upgrade/Upgrade/Assessment_1_Calculator/es3_hw_assmnt_1/es3_hw_assmnt_1.srcs/sources_1/bd/mb_system/ip/mb_system_gpio_p_btn_u_2/mb_system_gpio_p_btn_u_2.xdc]
set_property used_in_implementation false [get_files -all c:/Users/s1301217/Desktop/ES3_Lab_Upgrade/Upgrade/Assessment_1_Calculator/es3_hw_assmnt_1/es3_hw_assmnt_1.srcs/sources_1/bd/mb_system/ip/mb_system_axi_uartlite_0_0/mb_system_axi_uartlite_0_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/s1301217/Desktop/ES3_Lab_Upgrade/Upgrade/Assessment_1_Calculator/es3_hw_assmnt_1/es3_hw_assmnt_1.srcs/sources_1/bd/mb_system/ip/mb_system_axi_uartlite_0_0/mb_system_axi_uartlite_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/s1301217/Desktop/ES3_Lab_Upgrade/Upgrade/Assessment_1_Calculator/es3_hw_assmnt_1/es3_hw_assmnt_1.srcs/sources_1/bd/mb_system/ip/mb_system_axi_uartlite_0_0/mb_system_axi_uartlite_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/s1301217/Desktop/ES3_Lab_Upgrade/Upgrade/Assessment_1_Calculator/es3_hw_assmnt_1/es3_hw_assmnt_1.srcs/sources_1/bd/mb_system/ip/mb_system_mdm_0_0/mb_system_mdm_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/s1301217/Desktop/ES3_Lab_Upgrade/Upgrade/Assessment_1_Calculator/es3_hw_assmnt_1/es3_hw_assmnt_1.srcs/sources_1/bd/mb_system/ip/mb_system_mdm_0_0/mb_system_mdm_0_0_ooc_trace.xdc]
set_property used_in_implementation false [get_files -all c:/Users/s1301217/Desktop/ES3_Lab_Upgrade/Upgrade/Assessment_1_Calculator/es3_hw_assmnt_1/es3_hw_assmnt_1.srcs/sources_1/bd/mb_system/ip/mb_system_fit_timer_0_0/mb_system_fit_timer_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/s1301217/Desktop/ES3_Lab_Upgrade/Upgrade/Assessment_1_Calculator/es3_hw_assmnt_1/es3_hw_assmnt_1.srcs/sources_1/bd/mb_system/ip/mb_system_axi_intc_0_0/mb_system_axi_intc_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/s1301217/Desktop/ES3_Lab_Upgrade/Upgrade/Assessment_1_Calculator/es3_hw_assmnt_1/es3_hw_assmnt_1.srcs/sources_1/bd/mb_system/ip/mb_system_axi_intc_0_0/mb_system_axi_intc_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/Users/s1301217/Desktop/ES3_Lab_Upgrade/Upgrade/Assessment_1_Calculator/es3_hw_assmnt_1/es3_hw_assmnt_1.srcs/sources_1/bd/mb_system/ip/mb_system_axi_intc_0_0/mb_system_axi_intc_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/s1301217/Desktop/ES3_Lab_Upgrade/Upgrade/Assessment_1_Calculator/es3_hw_assmnt_1/es3_hw_assmnt_1.srcs/sources_1/bd/mb_system/ip/mb_system_xbar_0/mb_system_xbar_0_ooc.xdc]
set_property used_in_implementation false [get_files -all C:/Users/s1301217/Desktop/ES3_Lab_Upgrade/Upgrade/Assessment_1_Calculator/es3_hw_assmnt_1/es3_hw_assmnt_1.srcs/sources_1/bd/mb_system/mb_system_ooc.xdc]
set_property is_locked true [get_files C:/Users/s1301217/Desktop/ES3_Lab_Upgrade/Upgrade/Assessment_1_Calculator/es3_hw_assmnt_1/es3_hw_assmnt_1.srcs/sources_1/bd/mb_system/mb_system.bd]

read_verilog -library xil_defaultlib {
  C:/Users/s1301217/Desktop/ES3_Lab_Upgrade/Upgrade/Assessment_1_Calculator/es3_hw_assmnt_1/es3_hw_assmnt_1.srcs/sources_1/imports/hdl/mb_system_wrapper.v
  C:/Users/s1301217/Desktop/ES3_Lab_Upgrade/Upgrade/Assessment_1_Calculator/es3_hw_assmnt_1/es3_hw_assmnt_1.srcs/sources_1/new/top.v
}
read_xdc C:/Users/s1301217/Desktop/ES3_Lab_Upgrade/Upgrade/Assessment_1_Calculator/es3_hw_assmnt_1/es3_hw_assmnt_1.srcs/constrs_1/imports/sources_1/constraints.xdc
set_property used_in_implementation false [get_files C:/Users/s1301217/Desktop/ES3_Lab_Upgrade/Upgrade/Assessment_1_Calculator/es3_hw_assmnt_1/es3_hw_assmnt_1.srcs/constrs_1/imports/sources_1/constraints.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
synth_design -top top -part xc7a35tcpg236-1
write_checkpoint -noxdef top.dcp
catch { report_utilization -file top_utilization_synth.rpt -pb top_utilization_synth.pb }