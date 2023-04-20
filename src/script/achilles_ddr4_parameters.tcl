# Achilles DDR4 memory parameters
# sourced from achilles_qsys_script_GENERATED.tcl
# process set_ddr_params called from achilles_hps_qsys.tcl
# expected process parameters:
#   rev = v2, v5
#   som = turbo, indus, lite
#   host = hps, fpga

proc set_ddr_params {rev som host} {

   if {($rev == "v2") && ($som == "turbo")} {
      # parameters for v2 Turbo SOM with Micron MT40A1G16KNR-075:E
      set_instance_parameter_value ${host}_ddr4_ctrl {BOARD_DDR4_AC_TO_CK_SKEW_NS} {-0.024}
      set_instance_parameter_value ${host}_ddr4_ctrl {BOARD_DDR4_BRD_SKEW_WITHIN_AC_NS} {0.029}
      set_instance_parameter_value ${host}_ddr4_ctrl {BOARD_DDR4_DQS_TO_CK_SKEW_NS} {-0.33}
      set_instance_parameter_value ${host}_ddr4_ctrl {BOARD_DDR4_MAX_CK_DELAY_NS} {0.5}
      set_instance_parameter_value ${host}_ddr4_ctrl {BOARD_DDR4_MAX_DQS_DELAY_NS} {0.19}
      set_instance_parameter_value ${host}_ddr4_ctrl {BOARD_DDR4_SKEW_BETWEEN_DQS_NS} {0.07}
      set_instance_parameter_value ${host}_ddr4_ctrl {PROTOCOL_ENUM} {PROTOCOL_DDR4}
      set_instance_parameter_value ${host}_ddr4_ctrl {PHY_DDR4_MEM_CLK_FREQ_MHZ} {1200}
      set_instance_parameter_value ${host}_ddr4_ctrl {PHY_DDR4_DEFAULT_REF_CLK_FREQ} {0}
      set_instance_parameter_value ${host}_ddr4_ctrl {PHY_DDR4_HPS_ENABLE_EARLY_RELEASE} {1}
      set_instance_parameter_value ${host}_ddr4_ctrl {PHY_DDR4_USER_REF_CLK_FREQ_MHZ} {150}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_BANK_GROUP_WIDTH} {2}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_ALERT_N_PLACEMENT_ENUM} {DDR4_ALERT_N_PLACEMENT_AUTO}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_ALERT_N_DQS_GROUP} {0}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_READ_DBI} {1}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TCL} {16}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_WTCL} {16}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_RTT_NOM_ENUM} {DDR4_RTT_NOM_RZQ_4}
      set_instance_parameter_value ${host}_ddr4_ctrl {PHY_DDR4_DEFAULT_IO} {0}
      set_instance_parameter_value ${host}_ddr4_ctrl {PHY_DDR4_USER_AC_IO_STD_ENUM} {IO_STD_SSTL_12}
      set_instance_parameter_value ${host}_ddr4_ctrl {PHY_DDR4_USER_AC_MODE_ENUM} {OUT_OCT_40_CAL}
      set_instance_parameter_value ${host}_ddr4_ctrl {PHY_DDR4_USER_CK_IO_STD_ENUM} {IO_STD_SSTL_12}
      set_instance_parameter_value ${host}_ddr4_ctrl {PHY_DDR4_USER_CK_MODE_ENUM} {OUT_OCT_40_CAL}
      set_instance_parameter_value ${host}_ddr4_ctrl {PHY_DDR4_USER_DATA_IO_STD_ENUM} {IO_STD_POD_12}
      set_instance_parameter_value ${host}_ddr4_ctrl {PHY_DDR4_USER_DATA_OUT_MODE_ENUM} {OUT_OCT_34_CAL}
      set_instance_parameter_value ${host}_ddr4_ctrl {PHY_DDR4_USER_DATA_IN_MODE_ENUM} {IN_OCT_120_CAL}
      set_instance_parameter_value ${host}_ddr4_ctrl {PHY_DDR4_USER_PLL_REF_CLK_IO_STD_ENUM} {IO_STD_CMOS_12}
      set_instance_parameter_value ${host}_ddr4_ctrl {PHY_DDR4_USER_RZQ_IO_STD_ENUM} {IO_STD_CMOS_12}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_SPEEDBIN_ENUM} {DDR4_SPEEDBIN_2400}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_DRV_STR_ENUM} {DDR4_DRV_STR_10}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_FORMAT_ENUM} {MEM_FORMAT_DISCRETE}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_ROW_ADDR_WIDTH} {16}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TDQSCK_PS} {175}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TDQSQ_UI} {0.17}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TIH_PS} {87}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TIS_PS} {62}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TQH_UI} {0.74}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TQSH_CYC} {0.4}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TRAS_NS} {32.49}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TRFC_NS} {350.0}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_VDIVW_TOTAL} {130}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TRCD_NS} {13.28}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TRP_NS} {13.28}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TRRD_S_CYC} {4}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TRRD_L_CYC} {6}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TFAW_NS} {23.3}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TWTR_S_CYC} {3}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TWTR_L_CYC} {9}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_LRDIMM_VREFDQ_VALUE} {1D}
      set_instance_parameter_value ${host}_ddr4_ctrl {DIAG_DDR4_SKIP_CA_DESKEW} {1}
      set_instance_parameter_value ${host}_ddr4_ctrl {DIAG_DDR4_SKIP_CA_LEVEL} {1}
      set_instance_parameter_value ${host}_ddr4_ctrl {SHORT_QSYS_INTERFACE_NAMES} {0}
   }
   if {($rev == "v2") && ($som == "indus")} {
      # parameters for v2 Indus SOM with Nanya NT5AD512M16C4-HRI
      set_instance_parameter_value ${host}_ddr4_ctrl {BOARD_DDR4_AC_TO_CK_SKEW_NS} {-0.024}
      set_instance_parameter_value ${host}_ddr4_ctrl {BOARD_DDR4_BRD_SKEW_WITHIN_AC_NS} {0.029}
      set_instance_parameter_value ${host}_ddr4_ctrl {BOARD_DDR4_DQS_TO_CK_SKEW_NS} {-0.33}
      set_instance_parameter_value ${host}_ddr4_ctrl {BOARD_DDR4_MAX_CK_DELAY_NS} {0.5}
      set_instance_parameter_value ${host}_ddr4_ctrl {BOARD_DDR4_MAX_DQS_DELAY_NS} {0.19}
      set_instance_parameter_value ${host}_ddr4_ctrl {BOARD_DDR4_SKEW_BETWEEN_DQS_NS} {0.07}
      set_instance_parameter_value ${host}_ddr4_ctrl {PROTOCOL_ENUM} {PROTOCOL_DDR4}
      set_instance_parameter_value ${host}_ddr4_ctrl {PHY_DDR4_MEM_CLK_FREQ_MHZ} {1200}
      set_instance_parameter_value ${host}_ddr4_ctrl {PHY_DDR4_DEFAULT_REF_CLK_FREQ} {0}
      set_instance_parameter_value ${host}_ddr4_ctrl {PHY_DDR4_HPS_ENABLE_EARLY_RELEASE} {1}
      set_instance_parameter_value ${host}_ddr4_ctrl {PHY_DDR4_USER_REF_CLK_FREQ_MHZ} {150}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_BANK_GROUP_WIDTH} {1}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_ALERT_N_PLACEMENT_ENUM} {DDR4_ALERT_N_PLACEMENT_AUTO}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_ALERT_N_DQS_GROUP} {0}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_READ_DBI} {1}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TCL} {20}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_WTCL} {12}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_RTT_NOM_ENUM} {DDR4_RTT_NOM_RZQ_4}
      set_instance_parameter_value ${host}_ddr4_ctrl {PHY_DDR4_DEFAULT_IO} {0}
      set_instance_parameter_value ${host}_ddr4_ctrl {PHY_DDR4_USER_AC_IO_STD_ENUM} {IO_STD_SSTL_12}
      set_instance_parameter_value ${host}_ddr4_ctrl {PHY_DDR4_USER_AC_MODE_ENUM} {OUT_OCT_40_CAL}
      set_instance_parameter_value ${host}_ddr4_ctrl {PHY_DDR4_USER_CK_IO_STD_ENUM} {IO_STD_SSTL_12}
      set_instance_parameter_value ${host}_ddr4_ctrl {PHY_DDR4_USER_CK_MODE_ENUM} {OUT_OCT_40_CAL}
      set_instance_parameter_value ${host}_ddr4_ctrl {PHY_DDR4_USER_DATA_IO_STD_ENUM} {IO_STD_POD_12}
      set_instance_parameter_value ${host}_ddr4_ctrl {PHY_DDR4_USER_DATA_OUT_MODE_ENUM} {OUT_OCT_34_CAL}
      set_instance_parameter_value ${host}_ddr4_ctrl {PHY_DDR4_USER_DATA_IN_MODE_ENUM} {IN_OCT_120_CAL}
      set_instance_parameter_value ${host}_ddr4_ctrl {PHY_DDR4_USER_PLL_REF_CLK_IO_STD_ENUM} {IO_STD_CMOS_12}
      set_instance_parameter_value ${host}_ddr4_ctrl {PHY_DDR4_USER_RZQ_IO_STD_ENUM} {IO_STD_CMOS_12}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_SPEEDBIN_ENUM} {DDR4_SPEEDBIN_2666}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_DRV_STR_ENUM} {DDR4_DRV_STR_10}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_FORMAT_ENUM} {MEM_FORMAT_DISCRETE}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_ROW_ADDR_WIDTH} {16}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TDQSCK_PS} {170}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TDQSQ_UI} {0.18}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TIH_DC_MV} {65}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TIH_PS} {80}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TIS_AC_MV} {90}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TIS_PS} {55}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TQH_UI} {0.74}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TQSH_CYC} {0.4}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TRAS_NS} {32.0}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TRFC_NS} {260.0}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TDIVW_TOTAL_UI} {0.22}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_VDIVW_TOTAL} {120}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TRCD_NS} {14.16}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TRP_NS} {14.16}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TRRD_S_CYC} {7}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TRRD_L_CYC} {8}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TFAW_NS} {30.0}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TWTR_S_CYC} {3}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TWTR_L_CYC} {9}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_LRDIMM_VREFDQ_VALUE} {1D}
      set_instance_parameter_value ${host}_ddr4_ctrl {DIAG_DDR4_SKIP_CA_DESKEW} {1}
      set_instance_parameter_value ${host}_ddr4_ctrl {DIAG_DDR4_SKIP_CA_LEVEL} {1}
      set_instance_parameter_value ${host}_ddr4_ctrl {SHORT_QSYS_INTERFACE_NAMES} {0}
   }
   if {($rev == "v2") && ($som == "lite")} {
      # parameters for v2 Lite SOM with Nanya NT5AD512M16C4-HRI
      set_instance_parameter_value ${host}_ddr4_ctrl {BOARD_DDR4_AC_TO_CK_SKEW_NS} {0.0}
      set_instance_parameter_value ${host}_ddr4_ctrl {BOARD_DDR4_BRD_SKEW_WITHIN_AC_NS} {0.03}
      set_instance_parameter_value ${host}_ddr4_ctrl {BOARD_DDR4_DQS_TO_CK_SKEW_NS} {0.5}
      set_instance_parameter_value ${host}_ddr4_ctrl {BOARD_DDR4_MAX_CK_DELAY_NS} {0.6}
      set_instance_parameter_value ${host}_ddr4_ctrl {BOARD_DDR4_MAX_DQS_DELAY_NS} {0.6}
      set_instance_parameter_value ${host}_ddr4_ctrl {BOARD_DDR4_SKEW_BETWEEN_DQS_NS} {0.02}
      set_instance_parameter_value ${host}_ddr4_ctrl {PROTOCOL_ENUM} {PROTOCOL_DDR4}
      set_instance_parameter_value ${host}_ddr4_ctrl {PHY_DDR4_MEM_CLK_FREQ_MHZ} {1066.66}
      set_instance_parameter_value ${host}_ddr4_ctrl {PHY_DDR4_DEFAULT_REF_CLK_FREQ} {0}
      set_instance_parameter_value ${host}_ddr4_ctrl {PHY_DDR4_HPS_ENABLE_EARLY_RELEASE} {1}
      set_instance_parameter_value ${host}_ddr4_ctrl {PHY_DDR4_USER_REF_CLK_FREQ_MHZ} {133.333}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_BANK_GROUP_WIDTH} {1}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_ALERT_N_PLACEMENT_ENUM} {DDR4_ALERT_N_PLACEMENT_DATA_LANES}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_ALERT_N_DQS_GROUP} {0}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_READ_DBI} {1}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TCL} {18}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_WTCL} {14}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_RTT_NOM_ENUM} {DDR4_RTT_NOM_RZQ_4}
      set_instance_parameter_value ${host}_ddr4_ctrl {PHY_DDR4_DEFAULT_IO} {0}
      set_instance_parameter_value ${host}_ddr4_ctrl {PHY_DDR4_USER_AC_IO_STD_ENUM} {IO_STD_SSTL_12}
      set_instance_parameter_value ${host}_ddr4_ctrl {PHY_DDR4_USER_AC_MODE_ENUM} {OUT_OCT_40_CAL}
      set_instance_parameter_value ${host}_ddr4_ctrl {PHY_DDR4_USER_CK_IO_STD_ENUM} {IO_STD_SSTL_12}
      set_instance_parameter_value ${host}_ddr4_ctrl {PHY_DDR4_USER_CK_MODE_ENUM} {OUT_OCT_40_CAL}
      set_instance_parameter_value ${host}_ddr4_ctrl {PHY_DDR4_USER_DATA_IO_STD_ENUM} {IO_STD_POD_12}
      set_instance_parameter_value ${host}_ddr4_ctrl {PHY_DDR4_USER_DATA_OUT_MODE_ENUM} {OUT_OCT_34_CAL}
      set_instance_parameter_value ${host}_ddr4_ctrl {PHY_DDR4_USER_DATA_IN_MODE_ENUM} {IN_OCT_120_CAL}
      set_instance_parameter_value ${host}_ddr4_ctrl {PHY_DDR4_USER_PLL_REF_CLK_IO_STD_ENUM} {IO_STD_CMOS_12}
      set_instance_parameter_value ${host}_ddr4_ctrl {PHY_DDR4_USER_RZQ_IO_STD_ENUM} {IO_STD_CMOS_12}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_SPEEDBIN_ENUM} {DDR4_SPEEDBIN_2666}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_DRV_STR_ENUM} {DDR4_DRV_STR_10}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_FORMAT_ENUM} {MEM_FORMAT_DISCRETE}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_ROW_ADDR_WIDTH} {16}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TDQSCK_PS} {170}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TDQSQ_UI} {0.18}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TIH_DC_MV} {75}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TIH_PS} {95}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TIS_AC_MV} {100}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TIS_PS} {60}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TQH_UI} {0.72}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TDVWP_UI} {0.63}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TQSH_CYC} {0.4}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TRAS_NS} {32.0}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TRFC_NS} {350.0}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TDIVW_TOTAL_UI} {0.2}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_VDIVW_TOTAL} {136}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TRCD_NS} {13.5}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TRP_NS} {13.5}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TRRD_S_CYC} {7}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TRRD_L_CYC} {8}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TFAW_NS} {30.0}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TWTR_S_CYC} {4}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TWTR_L_CYC} {10}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_LRDIMM_VREFDQ_VALUE} {1D}
      set_instance_parameter_value ${host}_ddr4_ctrl {DIAG_DDR4_SKIP_CA_DESKEW} {1}
      set_instance_parameter_value ${host}_ddr4_ctrl {DIAG_DDR4_SKIP_CA_LEVEL} {1}
      set_instance_parameter_value ${host}_ddr4_ctrl {SHORT_QSYS_INTERFACE_NAMES} {0}
   }   
   if {($rev == "v5") && ($som == "indus")} {
      # parameters for v5 Indus SOM with Micron MT40A1G16TB-062E IT:F
      set_instance_parameter_value ${host}_ddr4_ctrl {BOARD_DDR4_IS_SKEW_WITHIN_AC_DESKEWED} {1}
      if {$host == "hps"} {
         set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_ALERT_N_PLACEMENT_ENUM} {DDR4_ALERT_N_PLACEMENT_DATA_LANES}
      } elseif {$host == "fpga"} {
         set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_ALERT_N_PLACEMENT_ENUM} {DDR4_ALERT_N_PLACEMENT_AC_LANES}
         set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_ALERT_N_AC_PIN} {7}
      }
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_BANK_GROUP_WIDTH} {1}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_DQ_WIDTH} {32}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_DRV_STR_ENUM} {DDR4_DRV_STR_10}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_FORMAT_ENUM} {MEM_FORMAT_DISCRETE}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_LRDIMM_VREFDQ_VALUE} {1D}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_ROW_ADDR_WIDTH} {17}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_RTT_NOM_ENUM} {DDR4_RTT_NOM_RZQ_5}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_R_ODT0_4X4} {off off off off}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_R_ODT1_4X4} {off off on on}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_R_ODT2_4X4} {off off off off}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_R_ODT3_4X4} {on on off off}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_SPEEDBIN_ENUM} {DDR4_SPEEDBIN_3200}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TCL} {22}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TDIVW_TOTAL_UI} {0.23}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TDQSCK_PS} {160}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TDQSQ_UI} {0.2}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TFAW_NS} {20.0}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TIH_DC_MV} {65}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TIH_PS} {65}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TIS_AC_MV} {90}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TIS_PS} {40}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TQH_UI} {0.7}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TQSH_CYC} {0.4}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TRCD_NS} {13.75}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TRFC_NS} {350.0}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TRP_NS} {13.75}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TWTR_L_CYC} {5}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_VDIVW_TOTAL} {110}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_WTCL} {18}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_W_ODT0_4X4} {on on off off}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_W_ODT1_4X4} {off off on on}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_W_ODT2_4X4} {off off on on}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_W_ODT3_4X4} {on on off off}
      set_instance_parameter_value ${host}_ddr4_ctrl {PHY_DDR4_DEFAULT_IO} {0}
      set_instance_parameter_value ${host}_ddr4_ctrl {PHY_DDR4_DEFAULT_REF_CLK_FREQ} {0}
      set_instance_parameter_value ${host}_ddr4_ctrl {PHY_DDR4_HPS_ENABLE_EARLY_RELEASE} {1}
      set_instance_parameter_value ${host}_ddr4_ctrl {PHY_DDR4_MEM_CLK_FREQ_MHZ} {1200}
      set_instance_parameter_value ${host}_ddr4_ctrl {PHY_DDR4_USER_AC_IO_STD_ENUM} {IO_STD_SSTL_12}
      set_instance_parameter_value ${host}_ddr4_ctrl {PHY_DDR4_USER_AC_MODE_ENUM} {OUT_OCT_60_CAL}
      set_instance_parameter_value ${host}_ddr4_ctrl {PHY_DDR4_USER_AC_SLEW_RATE_ENUM} {SLEW_RATE_FAST}
      set_instance_parameter_value ${host}_ddr4_ctrl {PHY_DDR4_USER_CK_IO_STD_ENUM} {IO_STD_SSTL_12}
      set_instance_parameter_value ${host}_ddr4_ctrl {PHY_DDR4_USER_CK_MODE_ENUM} {OUT_OCT_60_CAL}
      set_instance_parameter_value ${host}_ddr4_ctrl {PHY_DDR4_USER_CK_SLEW_RATE_ENUM} {SLEW_RATE_FAST}
      set_instance_parameter_value ${host}_ddr4_ctrl {PHY_DDR4_USER_DATA_IN_MODE_ENUM} {IN_OCT_120_CAL}
      set_instance_parameter_value ${host}_ddr4_ctrl {PHY_DDR4_USER_DATA_IO_STD_ENUM} {IO_STD_POD_12}
      set_instance_parameter_value ${host}_ddr4_ctrl {PHY_DDR4_USER_DATA_OUT_MODE_ENUM} {OUT_OCT_60_CAL}
      set_instance_parameter_value ${host}_ddr4_ctrl {PHY_DDR4_USER_PLL_REF_CLK_IO_STD_ENUM} {IO_STD_CMOS_12}
      set_instance_parameter_value ${host}_ddr4_ctrl {PHY_DDR4_USER_REF_CLK_FREQ_MHZ} {150.0}
      set_instance_parameter_value ${host}_ddr4_ctrl {PHY_DDR4_USER_RZQ_IO_STD_ENUM} {IO_STD_CMOS_12}
      set_instance_parameter_value ${host}_ddr4_ctrl {PROTOCOL_ENUM} {PROTOCOL_DDR4}
      set_instance_parameter_value ${host}_ddr4_ctrl {SHORT_QSYS_INTERFACE_NAMES} {0}
   }
   if {($rev == "v5") && ($som == "lite")} {
      # parameters for v5 Lite SOM with Micron MT40A1G16TB-062E IT:F
      set_instance_parameter_value ${host}_ddr4_ctrl {BOARD_DDR4_IS_SKEW_WITHIN_AC_DESKEWED} {1}
      if {$host == "hps"} {
         set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_ALERT_N_PLACEMENT_ENUM} {DDR4_ALERT_N_PLACEMENT_DATA_LANES}
      } elseif {$host == "fpga"} {
         set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_ALERT_N_PLACEMENT_ENUM} {DDR4_ALERT_N_PLACEMENT_AC_LANES}
         set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_ALERT_N_AC_PIN} {7}
      }
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_BANK_GROUP_WIDTH} {1}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_DQ_WIDTH} {32}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_DRV_STR_ENUM} {DDR4_DRV_STR_10}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_FORMAT_ENUM} {MEM_FORMAT_DISCRETE}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_LRDIMM_VREFDQ_VALUE} {1D}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_ROW_ADDR_WIDTH} {17}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_RTT_NOM_ENUM} {DDR4_RTT_NOM_RZQ_5}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_R_ODT0_4X4} {off off off off}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_R_ODT1_4X4} {off off on on}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_R_ODT2_4X4} {off off off off}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_R_ODT3_4X4} {on on off off}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_SPEEDBIN_ENUM} {DDR4_SPEEDBIN_3200}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TCL} {22}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TDIVW_TOTAL_UI} {0.23}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TDQSCK_PS} {160}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TDQSQ_UI} {0.2}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TFAW_NS} {28.0}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TIH_DC_MV} {65}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TIH_PS} {65}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TIS_AC_MV} {90}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TIS_PS} {40}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TQH_UI} {0.7}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TQSH_CYC} {0.4}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TRCD_NS} {13.75}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TRFC_NS} {350.0}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TRP_NS} {13.75}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_TWTR_L_CYC} {5}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_VDIVW_TOTAL} {110}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_WTCL} {18}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_W_ODT0_4X4} {on on off off}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_W_ODT1_4X4} {off off on on}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_W_ODT2_4X4} {off off on on}
      set_instance_parameter_value ${host}_ddr4_ctrl {MEM_DDR4_W_ODT3_4X4} {on on off off}
      set_instance_parameter_value ${host}_ddr4_ctrl {PHY_DDR4_DEFAULT_IO} {0}
      set_instance_parameter_value ${host}_ddr4_ctrl {PHY_DDR4_DEFAULT_REF_CLK_FREQ} {0}
      set_instance_parameter_value ${host}_ddr4_ctrl {PHY_DDR4_HPS_ENABLE_EARLY_RELEASE} {1}
      set_instance_parameter_value ${host}_ddr4_ctrl {PHY_DDR4_MEM_CLK_FREQ_MHZ} {1066.66}
      set_instance_parameter_value ${host}_ddr4_ctrl {PHY_DDR4_USER_AC_IO_STD_ENUM} {IO_STD_SSTL_12}
      set_instance_parameter_value ${host}_ddr4_ctrl {PHY_DDR4_USER_AC_MODE_ENUM} {OUT_OCT_60_CAL}
      set_instance_parameter_value ${host}_ddr4_ctrl {PHY_DDR4_USER_AC_SLEW_RATE_ENUM} {SLEW_RATE_FAST}
      set_instance_parameter_value ${host}_ddr4_ctrl {PHY_DDR4_USER_CK_IO_STD_ENUM} {IO_STD_SSTL_12}
      set_instance_parameter_value ${host}_ddr4_ctrl {PHY_DDR4_USER_CK_MODE_ENUM} {OUT_OCT_60_CAL}
      set_instance_parameter_value ${host}_ddr4_ctrl {PHY_DDR4_USER_CK_SLEW_RATE_ENUM} {SLEW_RATE_FAST}
      set_instance_parameter_value ${host}_ddr4_ctrl {PHY_DDR4_USER_DATA_IN_MODE_ENUM} {IN_OCT_120_CAL}
      set_instance_parameter_value ${host}_ddr4_ctrl {PHY_DDR4_USER_DATA_IO_STD_ENUM} {IO_STD_POD_12}
      set_instance_parameter_value ${host}_ddr4_ctrl {PHY_DDR4_USER_DATA_OUT_MODE_ENUM} {OUT_OCT_60_CAL}
      set_instance_parameter_value ${host}_ddr4_ctrl {PHY_DDR4_USER_PLL_REF_CLK_IO_STD_ENUM} {IO_STD_CMOS_12}
      set_instance_parameter_value ${host}_ddr4_ctrl {PHY_DDR4_USER_REF_CLK_FREQ_MHZ} {133.333}
      set_instance_parameter_value ${host}_ddr4_ctrl {PHY_DDR4_USER_RZQ_IO_STD_ENUM} {IO_STD_CMOS_12}
      set_instance_parameter_value ${host}_ddr4_ctrl {PROTOCOL_ENUM} {PROTOCOL_DDR4}
      set_instance_parameter_value ${host}_ddr4_ctrl {SHORT_QSYS_INTERFACE_NAMES} {0}
   }
}
