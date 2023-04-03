# processes to create Quartus project, create PR revisions, and generate the script achilles_qsys_script_GENERATED.tcl
# sourced from achilles_ghrd_build_flow.tcl

set family "Arria 10"

post_message "Achilles SOM revision = $som_rev"
post_message "Achilles SOM version = $som_ver"
post_message "Achilles GHRD Type = $ghrd_type"
post_message "Quartus tool path = $quartus(quartus_rootpath)"

if {$som_ver == "lite"} {
  set device 10AS027H3F34E2SG
} else {
  set device 10AS066H2F34I1HG
}

proc create_quartus_project {project_name revision_name} {

   global family
   global device
   global som_rev
   global som_ver
   global ghrd_type
   
   project_new -revision $revision_name $project_name -overwrite
   
   # project assignments

   set_global_assignment -name FAMILY $family
   set_global_assignment -name DEVICE $device
   set_global_assignment -name VHDL_INPUT_VERSION VHDL_2008
   set_global_assignment -name PROJECT_OUTPUT_DIRECTORY output_files
   
   # default assignments

   set_global_assignment -name QSYS_FILE achilles_hps.qsys
   set_global_assignment -name VHDL_FILE src/hdl/achilles_ghrd.vhd
   set_global_assignment -name VHDL_FILE src/hdl/delayed_rst.vhd
   set_global_assignment -name VHDL_FILE src/hdl/sync_rst.vhd
   set_global_assignment -name VHDL_FILE src/hdl/tick_gen.vhd
   set_global_assignment -name VHDL_FILE src/hdl/blink_led_default.vhd
   set_global_assignment -name SDC_FILE src/script/achilles_ghrd.sdc
   set_global_assignment -name ENABLE_HPS_INTERNAL_TIMING ON
   
   # globals
   
   set_global_assignment -name SYNCHRONIZER_IDENTIFICATION AUTO
   set_global_assignment -name USE_TIMEQUEST_TIMING_ANALYZER ON
   set_global_assignment -name TIMEQUEST_DO_REPORT_TIMING ON
   set_global_assignment -name TIMEQUEST_DO_CCPP_REMOVAL ON
#   set_global_assignment -name TIMEQUEST_REPORT_SCRIPT src/script/achilles_report_timing.tcl
   set_global_assignment -name ON_CHIP_BITSTREAM_DECOMPRESSION OFF
   
   # Fitter assignments
   
   set_global_assignment -name DEVICE_IO_STANDARD_ALL "1.2 V"
   set_global_assignment -name IOBANK_VCCIO 1.8V -section_id 2A
   set_global_assignment -name IOBANK_VCCIO 1.2V -section_id 2J
   set_global_assignment -name IOBANK_VCCIO 1.2V -section_id 2K
   set_global_assignment -name IOBANK_VCCIO 1.8V -section_id 2L
   set_global_assignment -name IOBANK_VCCIO 1.2V -section_id 3A
   set_global_assignment -name IOBANK_VCCIO 1.2V -section_id 3B
   set_global_assignment -name IOBANK_VCCIO 1.8V -section_id 3D
   set_global_assignment -name IOBANK_VCCIO 1.8V -section_id 3C
   if {($som_ver == "turbo") || ($som_ver == "indus")} {
      set_global_assignment -name IOBANK_VCCIO 1.8V -section_id 2I
      set_global_assignment -name IOBANK_VCCIO 1.8V -section_id 3E
      set_global_assignment -name IOBANK_VCCIO 1.8V -section_id 3F
   }

   if {$ghrd_type == "pr"} {
      set_instance_assignment -name PARTITION pr_partition -to i_blink_led -entity achilles_ghrd
      set_instance_assignment -name PARTITION_COLOUR 4294940037 -to i_blink_led -entity achilles_ghrd
      set_instance_assignment -name PARTIAL_RECONFIGURATION_PARTITION ON -to i_blink_led -entity achilles_ghrd
      set_instance_assignment -name EXPORT_PARTITION_SNAPSHOT_FINAL achilles_ghrd_static.qdb -to | -entity achilles_ghrd
      set_instance_assignment -name PLACE_REGION "X4 Y2 X23 Y21" -to i_blink_led
      set_instance_assignment -name RESERVE_PLACE_REGION ON -to i_blink_led
      set_instance_assignment -name CORE_ONLY_PLACE_REGION ON -to i_blink_led
      set_instance_assignment -name REGION_NAME i_blink_led -to i_blink_led
      set_instance_assignment -name ROUTE_REGION "X3 Y1 X24 Y22" -to i_blink_led
      set_instance_assignment -name RESERVE_ROUTE_REGION OFF -to i_blink_led
      set_instance_assignment -name PARTITION_COLOUR 4287731711 -to achilles_ghrd -entity achilles_ghrd
      set_instance_assignment -name PARTITION_COLOUR 4289944831 -to auto_fab_0 -entity achilles_ghrd
      set_global_assignment -name REVISION_TYPE PR_BASE
      set_global_assignment -name GENERATE_PR_RBF_FILE ON
      # next line required by https://www.intel.com/content/www/us/en/support/programmable/articles/000074245.html
      if {$som_ver == "lite"} {
         set_instance_assignment -name EMPTY_PLACE_REGION "X0 Y59 X150 Y59-R:C-empty_region" -to |
      }
   }
   
   # Programmer Assignments

   set_global_assignment -name HPS_EARLY_IO_RELEASE ON
   
   # used to control HDL compilation based on SOM version & GHRD type
   set_parameter -name som_rev $som_rev
   set_parameter -name som_ver $som_ver
   set_parameter -name ghrd_type $ghrd_type

   # FPGA I/O standard and pin assignments
   source src/script/achilles_io_pinout.tcl
   
   project_close
}

proc create_pr_revision {revision_name base_revision} {

   global quartus_project_name

   project_open -revision $base_revision $quartus_project_name
   create_revision $revision_name -based_on $base_revision -new_rev_type impl -root_partition_qdb_file ${base_revision}_static.qdb
   set_current_revision $revision_name
   set_global_assignment -name VHDL_FILE src/hdl/blink_led_default.vhd -remove
   set_global_assignment -name VHDL_FILE src/hdl/$revision_name.vhd
   set_instance_assignment -name ENTITY_REBINDING $revision_name -to i_blink_led -entity $base_revision
   
   project_close
}

# Dynamically generate a script to create the qsys system so we can launch it with the qsys-script command 
proc create_qsys_project_script {} {

   global quartus_project_name
   global family
   global device
   global som_rev
   global som_ver
   global ghrd_type
   
   set QSYS_FILE [open "achilles_qsys_script_GENERATED.tcl" "w"]
   puts $QSYS_FILE "# ************************************"
   puts $QSYS_FILE "# Auto-generated file.  Do not modify."
   puts $QSYS_FILE "# ************************************"
   puts $QSYS_FILE "set project_name $quartus_project_name"
   puts $QSYS_FILE "package require qsys"
   puts $QSYS_FILE "set_project_property DEVICE_FAMILY {$family}"
   puts $QSYS_FILE "set_project_property DEVICE $device"
   puts $QSYS_FILE "source src/script/achilles_hps_qsys.tcl"
   puts $QSYS_FILE "source src/script/achilles_ddr4_parameters.tcl"
   puts $QSYS_FILE "add_achilles_hps_qsys_components $som_rev $som_ver $ghrd_type"
   puts $QSYS_FILE "set_domain_assignment {\$system} {qsys_mm.maxAdditionalLatency} {4}"
   puts $QSYS_FILE "set_domain_assignment {\$system} {qsys_mm.clockCrossingAdapter} {AUTO}"
   puts $QSYS_FILE "set_domain_assignment {\$system} {qsys_mm.burstAdapterImplementation} {PER_BURST_TYPE_CONVERTER}"
   puts $QSYS_FILE "save_system {achilles_hps.qsys}"
   close $QSYS_FILE   
}
