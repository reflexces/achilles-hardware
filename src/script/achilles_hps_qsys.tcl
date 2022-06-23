# Generate HPS component and peripherals
# sourced from achilles_qsys_script_GENERATED.tcl
# process add_achilles_hps_qsys_components called from achilles_qsys_script_GENERATED.tcl
# expected process parameters:
#   som_ver = turbo, indus, lite
#   ghrd_type = pr, std

proc add_achilles_hps_qsys_components {som_ver ghrd_type} {

   # system clock and reset

   add_instance sys_pll altera_iopll
   set_instance_parameter_value sys_pll {gui_number_of_clocks} {2}
   set_instance_parameter_value sys_pll {gui_reference_clock_frequency} {25.0}
   set_instance_parameter_value sys_pll {gui_reference_clock_frequency_ps} {40000.0}
   set_instance_parameter_value sys_pll {gui_use_locked} {1}
   set_instance_parameter_value sys_pll {hp_qsys_scripting_mode} {0}
   set_interface_property sys_pll_reset EXPORT_OF sys_pll.reset
   set_interface_property sys_pll_ref_clk EXPORT_OF sys_pll.refclk
   set_interface_property sys_pll_locked EXPORT_OF sys_pll.locked
   set_interface_property sys_pll_outclk1 EXPORT_OF sys_pll.outclk1
   
   add_instance h2f_lw_clk clock_source
   set_instance_parameter_value h2f_lw_clk {clockFrequency} {100000000.0}
   set_instance_parameter_value h2f_lw_clk {clockFrequencyKnown} {1}
   set_instance_parameter_value h2f_lw_clk {resetSynchronousEdges} {DEASSERT}
   add_interface h2f_lw_clk clock sink
   add_interface hps_sys_rst_n reset sink
   set_interface_property hps_sys_rst_n EXPORT_OF h2f_lw_clk.clk_in_reset
   add_connection sys_pll.outclk0 h2f_lw_clk.clk_in

   # HPS and peripherals

   variable hps_io_list

   proc set_hps_io {io_index io_type} {

     global hps_io_list
     lappend hps_io_list $io_type
   }

   set_hps_io  IO_DEDICATED_04   SDMMC:D0
   set_hps_io  IO_DEDICATED_05   SDMMC:CMD
   set_hps_io  IO_DEDICATED_06   SDMMC:CCLK
   set_hps_io  IO_DEDICATED_07   SDMMC:D1
   set_hps_io  IO_DEDICATED_08   SDMMC:D2
   set_hps_io  IO_DEDICATED_09   SDMMC:D3
   set_hps_io  IO_DEDICATED_10   NONE
   set_hps_io  IO_DEDICATED_11   NONE
   set_hps_io  IO_DEDICATED_12   SDMMC:D4
   set_hps_io  IO_DEDICATED_13   SDMMC:D5
   set_hps_io  IO_DEDICATED_14   SDMMC:D6
   set_hps_io  IO_DEDICATED_15   SDMMC:D7
   set_hps_io  IO_DEDICATED_16   GPIO
   set_hps_io  IO_DEDICATED_17   GPIO
   set_hps_io  IO_SHARED_Q1_01   UART0:CTS_N
   set_hps_io  IO_SHARED_Q1_02   UART0:RTS_N
   set_hps_io  IO_SHARED_Q1_03   UART0:TX
   set_hps_io  IO_SHARED_Q1_04   UART0:RX
   set_hps_io  IO_SHARED_Q1_05   I2C0:SDA
   set_hps_io  IO_SHARED_Q1_06   I2C0:SCL
   set_hps_io  IO_SHARED_Q1_07   MDIO2:MDIO
   set_hps_io  IO_SHARED_Q1_08   MDIO2:MDC
   set_hps_io  IO_SHARED_Q1_09   MDIO1:MDIO
   set_hps_io  IO_SHARED_Q1_10   MDIO1:MDC
   set_hps_io  IO_SHARED_Q1_11   NONE
   set_hps_io  IO_SHARED_Q1_12   NONE
   set_hps_io  IO_SHARED_Q2_01   USB1:CLK
   set_hps_io  IO_SHARED_Q2_02   USB1:STP
   set_hps_io  IO_SHARED_Q2_03   USB1:DIR
   set_hps_io  IO_SHARED_Q2_04   USB1:DATA0
   set_hps_io  IO_SHARED_Q2_05   USB1:DATA1
   set_hps_io  IO_SHARED_Q2_06   USB1:NXT
   set_hps_io  IO_SHARED_Q2_07   USB1:DATA2
   set_hps_io  IO_SHARED_Q2_08   USB1:DATA3
   set_hps_io  IO_SHARED_Q2_09   USB1:DATA4
   set_hps_io  IO_SHARED_Q2_10   USB1:DATA5
   set_hps_io  IO_SHARED_Q2_11   USB1:DATA6
   set_hps_io  IO_SHARED_Q2_12   USB1:DATA7
   set_hps_io  IO_SHARED_Q3_01   EMAC1:TX_CLK
   set_hps_io  IO_SHARED_Q3_02   EMAC1:TX_CTL
   set_hps_io  IO_SHARED_Q3_03   EMAC1:RX_CLK
   set_hps_io  IO_SHARED_Q3_04   EMAC1:RX_CTL
   set_hps_io  IO_SHARED_Q3_05   EMAC1:TXD0
   set_hps_io  IO_SHARED_Q3_06   EMAC1:TXD1
   set_hps_io  IO_SHARED_Q3_07   EMAC1:RXD0
   set_hps_io  IO_SHARED_Q3_08   EMAC1:RXD1
   set_hps_io  IO_SHARED_Q3_09   EMAC1:TXD2
   set_hps_io  IO_SHARED_Q3_10   EMAC1:TXD3
   set_hps_io  IO_SHARED_Q3_11   EMAC1:RXD2
   set_hps_io  IO_SHARED_Q3_12   EMAC1:RXD3
   set_hps_io  IO_SHARED_Q4_01   EMAC2:TX_CLK
   set_hps_io  IO_SHARED_Q4_02   EMAC2:TX_CTL
   set_hps_io  IO_SHARED_Q4_03   EMAC2:RX_CLK
   set_hps_io  IO_SHARED_Q4_04   EMAC2:RX_CTL
   set_hps_io  IO_SHARED_Q4_05   EMAC2:TXD0
   set_hps_io  IO_SHARED_Q4_06   EMAC2:TXD1
   set_hps_io  IO_SHARED_Q4_07   EMAC2:RXD0
   set_hps_io  IO_SHARED_Q4_08   EMAC2:RXD1
   set_hps_io  IO_SHARED_Q4_09   EMAC2:TXD2
   set_hps_io  IO_SHARED_Q4_10   EMAC2:TXD3
   set_hps_io  IO_SHARED_Q4_11   EMAC2:RXD2
   set_hps_io  IO_SHARED_Q4_12   EMAC2:RXD3

   add_instance hps altera_arria10_hps
   set_instance_parameter_value hps {MPU_EVENTS_Enable} {0}
   set_instance_parameter_value hps {F2S_Width} {0}
   set_instance_parameter_value hps {S2F_Width} {0}
   set_instance_parameter_value hps {LWH2F_Enable} {1}
   set_instance_parameter_value hps {F2SDRAM_PORT_CONFIG} {6}
   set_instance_parameter_value hps {F2SDRAM0_ENABLED} {1}
   set_instance_parameter_value hps {F2SDRAM2_ENABLED} {1}
   set_instance_parameter_value hps {F2SINTERRUPT_Enable} {1}
   set_instance_parameter_value hps {HPS_IO_Enable} $hps_io_list
   set_instance_parameter_value hps {SDMMC_PinMuxing} {IO}
   set_instance_parameter_value hps {SDMMC_Mode} {8-bit}
   set_instance_parameter_value hps {USB1_PinMuxing} {IO}
   set_instance_parameter_value hps {USB1_Mode} {default}
   set_instance_parameter_value hps {EMAC1_PinMuxing} {IO}
   set_instance_parameter_value hps {EMAC1_Mode} {RGMII_with_MDIO}
   set_instance_parameter_value hps {EMAC2_PinMuxing} {IO}
   set_instance_parameter_value hps {EMAC2_Mode} {RGMII_with_MDIO}
   set_instance_parameter_value hps {UART0_PinMuxing} {IO}
   set_instance_parameter_value hps {UART0_Mode} {Flow_control}
   set_instance_parameter_value hps {I2C0_PinMuxing} {IO}
   set_instance_parameter_value hps {I2C0_Mode} {default}
   set_instance_parameter_value hps {F2H_COLD_RST_Enable} {1}
   set_instance_parameter_value hps {F2H_WARM_RST_Enable} {1}
   set_instance_parameter_value hps {H2F_USER0_CLK_Enable} {1}
   set_instance_parameter_value hps {H2F_USER0_CLK_FREQ} {100}
   set_instance_parameter_value hps {H2F_USER1_CLK_Enable} {1}
   set_instance_parameter_value hps {H2F_USER1_CLK_FREQ} {100}
   set_instance_parameter_value hps {CLK_SDMMC_SOURCE} {1}

   add_interface hps_f2h_cold_reset_req reset sink
   set_interface_property hps_f2h_cold_reset_req EXPORT_OF hps.f2h_cold_reset_req
   add_interface hps_f2h_warm_reset_req reset sink
   set_interface_property hps_f2h_warm_reset_req EXPORT_OF hps.f2h_warm_reset_req
   add_interface hps_h2f_user0_clock clock source
   set_interface_property hps_h2f_user0_clock EXPORT_OF hps.h2f_user0_clock
   add_interface hps_h2f_user1_clock clock source
   set_interface_property hps_h2f_user1_clock EXPORT_OF hps.h2f_user1_clock
   add_connection h2f_lw_clk.clk_reset hps.f2sdram0_reset
   add_connection h2f_lw_clk.clk_reset hps.f2sdram2_reset
   add_connection hps.h2f_user1_clock hps.f2sdram0_clock
   add_connection hps.h2f_user1_clock hps.f2sdram2_clock
   add_interface hps_io conduit end
   set_interface_property hps_io EXPORT_OF hps.hps_io
   add_interface hps_out_rstn reset source
   set_interface_property hps_out_rstn EXPORT_OF hps.h2f_reset
   add_connection h2f_lw_clk.clk hps.h2f_lw_axi_clock
   add_connection h2f_lw_clk.clk_reset hps.h2f_lw_axi_reset
   set_interface_property hps_f2h_irq0 EXPORT_OF hps.f2h_irq0
   set_interface_property hps_f2h_irq1 EXPORT_OF hps.f2h_irq1

   # HPS DDR4 controller
   
   add_instance hps_ddr4_ctrl altera_emif_a10_hps
   add_interface hps_ddr_rstn reset sink
   set_interface_property hps_ddr_rstn EXPORT_OF hps_ddr4_ctrl.global_reset_reset_sink
   add_interface hps_ddr_ref_clk clock sink
   set_interface_property hps_ddr_ref_clk EXPORT_OF hps_ddr4_ctrl.pll_ref_clk_clock_sink
   add_interface hps_ddr_oct conduit end
   set_interface_property hps_ddr_oct EXPORT_OF hps_ddr4_ctrl.oct_conduit_end
   add_interface hps_ddr_mem conduit end
   set_interface_property hps_ddr_mem EXPORT_OF hps_ddr4_ctrl.mem_conduit_end
   add_connection hps_ddr4_ctrl.hps_emif_conduit_end hps.emif

   # DDR timing parameters come from set_ddr_params proc in achilles_ddr4_parameters.tcl

   set_ddr_params $som_ver hps

   # JTAG master

   add_instance jtag_master altera_jtag_avalon_master
   add_connection h2f_lw_clk.clk jtag_master.clk
   add_connection h2f_lw_clk.clk_reset jtag_master.clk_reset

   # LED PIO

   add_instance pio_led altera_avalon_pio
   set_instance_parameter_value pio_led {direction} {Output}
   set_instance_parameter_value pio_led {width} {1}
   set_instance_parameter_value pio_led {resetValue} {1.0}
   add_connection h2f_lw_clk.clk pio_led.clk
   add_connection h2f_lw_clk.clk_reset pio_led.reset
   add_connection jtag_master.master_reset pio_led.reset
   add_connection hps.h2f_lw_axi_master pio_led.s1
   add_connection jtag_master.master pio_led.s1
   add_interface pio_led conduit end
   set_interface_property pio_led EXPORT_OF pio_led.external_connection
   set_connection_parameter_value hps.h2f_lw_axi_master/pio_led.s1 baseAddress {0x00000100}
   set_connection_parameter_value jtag_master.master/pio_led.s1 baseAddress {0x00000100}

   # System ID

   add_instance system_id altera_avalon_sysid_qsys
   set_instance_parameter_value system_id id {537113343}
   add_connection h2f_lw_clk.clk system_id.clk
   add_connection h2f_lw_clk.clk_reset system_id.reset
   add_connection jtag_master.master_reset system_id.reset
   add_connection hps.h2f_lw_axi_master system_id.control_slave
   add_connection jtag_master.master system_id.control_slave
   set_connection_parameter_value hps.h2f_lw_axi_master/system_id.control_slave baseAddress {0x00000000}
   set_connection_parameter_value jtag_master.master/system_id.control_slave baseAddress {0x00000000}

   # PR Region Controller

   if {$ghrd_type == "pr"} {
      add_instance pr_region_controller altera_pr_region_controller
      set_instance_parameter_value pr_region_controller {ENABLE_IRQ} {0}
      set_instance_parameter_value pr_region_controller {ENABLE_PR_REGION_FREEZE} {1}
      set_instance_parameter_value pr_region_controller {NUM_INTF_BRIDGE} {1}
      add_connection h2f_lw_clk.clk pr_region_controller.clock
      add_connection h2f_lw_clk.clk_reset pr_region_controller.reset
      set_interface_property pr_region_ctrl_pr_handshake EXPORT_OF pr_region_controller.pr_handshake
      set_interface_property pr_region_ctrl_reset_source EXPORT_OF pr_region_controller.reset_source
      set_interface_property pr_region_ctrl_bridge_freeze0 EXPORT_OF pr_region_controller.bridge_freeze0
      set_interface_property pr_region_ctrl_pr_region_freeze0 EXPORT_OF pr_region_controller.pr_region_freeze0
      add_connection hps.h2f_lw_axi_master pr_region_controller.avl_csr
      set_connection_parameter_value hps.h2f_lw_axi_master/pr_region_controller.avl_csr baseAddress {0x00001000}
   }
   
   # UART
   
   add_instance rs232_uart altera_up_avalon_rs232
   add_connection h2f_lw_clk.clk rs232_uart.clk
   add_connection h2f_lw_clk.clk_reset rs232_uart.reset
   add_connection jtag_master.master_reset rs232_uart.reset
   add_connection jtag_master.master rs232_uart.avalon_rs232_slave
   add_connection hps.h2f_lw_axi_master rs232_uart.avalon_rs232_slave
   set_interface_property rs232_uart_interrupt EXPORT_OF rs232_uart.interrupt
   set_interface_property rs232_uart_external_interface EXPORT_OF rs232_uart.external_interface   
   set_connection_parameter_value hps.h2f_lw_axi_master/rs232_uart.avalon_rs232_slave baseAddress {0x00000200}
   set_connection_parameter_value jtag_master.master/rs232_uart.avalon_rs232_slave baseAddress {0x00000200}

   # JTAG Sources & Probes

   add_instance jtag_src_prb altera_in_system_sources_probes
   set_instance_parameter_value jtag_src_prb {create_source_clock} {1}
   set_instance_parameter_value jtag_src_prb {instance_id} {CTRL}
   set_instance_parameter_value jtag_src_prb {probe_width} {128}
   set_instance_parameter_value jtag_src_prb {source_initial_value} {0}
   set_instance_parameter_value jtag_src_prb {source_width} {128}
   set_instance_property jtag_src_prb AUTO_EXPORT true
   add_connection h2f_lw_clk.clk jtag_src_prb.source_clk
   set_interface_property jtag_src_prb_sources EXPORT_OF jtag_src_prb.sources
   set_interface_property jtag_src_prb_probes EXPORT_OF jtag_src_prb.probes

}
