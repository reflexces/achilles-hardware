# ############################################################################################################################################
# ############################################################################################################################################
post_message -type info "############################################################################################################################################"
post_message -type info "# Setting SDC constraints of RxC modules..."
# ############################################################################################################################################
# ############################################################################################################################################

# ############################################################################################################################
# ############################################################################################################################
# Base clocks
# ############################################################################################################################
# ############################################################################################################################
set_time_format -unit ns -decimal_places 3

create_clock -name {clk_25mhz_fpga}         -period  25.000MHz    [get_ports {clk_25mhz_fpga}]
# create_clock -name {clk_a10_0}              -period 100.000MHz    [get_ports {clk_a10_0}]
# create_clock -name {clk_a10_1}              -period 100.000MHz    [get_ports {clk_a10_1}]
#create_clock -name {clk_xcvr_1}             -period 156.250MHz    [get_ports {clk_xcvr[1]}]
#create_clock -name {clk_xcvr_2}             -period 156.250MHz    [get_ports {clk_xcvr[2]}]
#create_clock -name {clk_xcvr_3}             -period 156.250MHz    [get_ports {clk_xcvr[3]}]
# create_clock -name {pcie_0_refclk}          -period 100.000MHz    [get_ports {pcie_0_refclk}]
# create_clock -name {ddr4_pll_ref_clk}       -period 133.250MHz    [get_ports {ddr4_pll_ref_clk}] ; # already define in EMIF IP
# create_clock -name {hps_ddr4_pll_ref_clk}   -period 133.250MHz    [get_ports {hps_ddr4_pll_ref_clk}]
#create_clock -name {fmc_std_gbtclk0}        -period 125.000MHz    [get_ports {fmc_std_gbtclk0}]         ; # set with FMC clocks parameters
#create_clock -name {fmc_std_gbtclk1}        -period 125.000MHz    [get_ports {fmc_std_gbtclk1}]         ; # set with FMC clocks parameters
#create_clock -name {fmc_std_clk0_m2c}       -period 100.000MHz    [get_ports {fmc_std_clk0_m2c}]        ; # set with FMC clocks parameters
#create_clock -name {fmc_std_clk1_m2c}       -period 100.000MHz    [get_ports {fmc_std_clk1_m2c}]        ; # set with FMC clocks parameters
#create_clock -name {fmc_std_clk2_bidir}     -period 100.000MHz    [get_ports {fmc_std_clk2_bidir}]      ; # set with FMC clocks parameters
#create_clock -name {fmc_std_clk3_bidir}     -period 100.000MHz    [get_ports {fmc_std_clk3_bidir}]      ; # set with FMC clocks parameters
#create_clock -name {fmc_bot_gbtclk0}        -period 125.000MHz    [get_ports {fmc_bot_gbtclk0}]         ; # set with FMC clocks parameters
#create_clock -name {fmc_bot_gbtclk1}        -period 125.000MHz    [get_ports {fmc_bot_gbtclk1}]         ; # set with FMC clocks parameters
# create_clock -name {fmc_bot_clk0_m2c}       -period 125.000MHz    [get_ports {fmc_bot_clk0_m2c}]        ; # set with FMC clocks parameters
# create_clock -name {fmc_bot_clk1_m2c}       -period 125.000MHz    [get_ports {fmc_bot_clk1_m2c}]        ; # set with FMC clocks parameters

# ############################################################################################################################
# ############################################################################################################################
# Generated clocks
# ############################################################################################################################
# ############################################################################################################################
derive_pll_clocks
derive_clock_uncertainty

# ############################################################################################################################
# ############################################################################################################################
# Asynchronous groups & False paths
# ############################################################################################################################
# ############################################################################################################################
set_clock_groups \
    -group {clk_25mhz_fpga} \
    -group *i_pll_sys|iopll_0|outclk0 \
    -group {clk_xcvr_1} \
    -group {clk_xcvr_2} \
    -group {clk_xcvr_3} \
    -group {fmc_std_gbtclk0} \
    -group {fmc_std_gbtclk1} \
	-group {fmc_bot_gbtclk0} \
    -group {fmc_bot_gbtclk1} \
    -group {fmc_std_clk0_m2c} \
    -group {fmc_std_clk1_m2c} \
    -group {fmc_std_clk2_bidir} \
    -group {fmc_std_clk3_bidir} \
    -group {*i_lvds_pll|*:i_lvds_pll_ip|iopll_0|*|loaden[0] \
            *i_lvds_pll|*:i_lvds_pll_ip|iopll_0|*|lvds_clk[0] \
            *i_lvds_pll|*:i_lvds_pll_ip|iopll_0|clk_core} \
    -group {*xcvr_native_a10_0*|tx_pma_clk \
            *xcvr_native_a10_0*|tx_coreclkin} \
    -group {*xcvr_native_a10_0*|rx_pma_clk \
            *xcvr_native_a10_0*|rx_coreclkin} \
	-group {*i_ed_synth|*emif_0_*core_usr_clk \
            *i_ed_synth|*emif_0_*ref_clock} \
	-group {*i_hps|ddr4_phy_clk_0 \
            *i_hps|ddr4_phy_clk_l_0 \
            *i_hps|ddr4_wf_clk_0 \
            *i_hps|ddr4_wf_clk_1 \
            *i_hps|ddr4_wf_clk_2} \
    -group {*i_hps|ddr4_phy_clk_1 \
            *i_hps|ddr4_phy_clk_l_1 \
            *i_hps|ddr4_wf_clk_3 \
            *i_hps|ddr4_wf_clk_4 \
            *i_hps|ddr4_wf_clk_5 \
            *i_hps|ddr4_wf_clk_6} \
    -asynchronous

# ############################################################################################################################################
# ############################################################################################################################################
post_message -type info "# Finished SDC constraints of RxC modules."
post_message -type info "############################################################################################################################################"
# ############################################################################################################################################
# ############################################################################################################################################
