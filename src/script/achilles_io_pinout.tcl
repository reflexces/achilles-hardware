if {($som_ver == "turbo") || ($som_ver == "indus")} {
set_location_assignment PIN_AF27 -to fmc_bot_gbtclk0(n)       ; # BANK 1C : XCVR
set_location_assignment PIN_AF28 -to fmc_bot_gbtclk0            ; # BANK 1C : XCVR
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_bot_gbtclk0(n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_bot_gbtclk0
}
set_location_assignment PIN_AP31 -to fmc_bot_dp_c2m[0](n)     -tag rxc_pin_lpc_xcvr; # BANK 1C : XCVR
set_location_assignment PIN_AP32 -to fmc_bot_dp_c2m[0]        -tag rxc_pin_lpc_xcvr  ; # BANK 1C : XCVR
set_location_assignment PIN_AL29 -to fmc_bot_dp_m2c[0](n)     -tag rxc_pin_lpc_xcvr; # BANK 1C : XCVR
set_location_assignment PIN_AL30 -to fmc_bot_dp_m2c[0]        -tag rxc_pin_lpc_xcvr  ; # BANK 1C : XCVR
set_location_assignment PIN_AM31 -to fmc_bot_dp_c2m[1](n)     -tag rxc_pin_lpc_xcvr; # BANK 1C : XCVR
set_location_assignment PIN_AM32 -to fmc_bot_dp_c2m[1]        -tag rxc_pin_lpc_xcvr  ; # BANK 1C : XCVR
set_location_assignment PIN_AJ29 -to fmc_bot_dp_m2c[1](n)     -tag rxc_pin_lpc_xcvr; # BANK 1C : XCVR
set_location_assignment PIN_AJ30 -to fmc_bot_dp_m2c[1]        -tag rxc_pin_lpc_xcvr  ; # BANK 1C : XCVR
set_location_assignment PIN_AK31 -to fmc_bot_dp_c2m[2](n)     -tag rxc_pin_lpc_xcvr; # BANK 1C : XCVR
set_location_assignment PIN_AK32 -to fmc_bot_dp_c2m[2]        -tag rxc_pin_lpc_xcvr  ; # BANK 1C : XCVR
set_location_assignment PIN_AG29 -to fmc_bot_dp_m2c[2](n)     -tag rxc_pin_lpc_xcvr; # BANK 1C : XCVR
set_location_assignment PIN_AG30 -to fmc_bot_dp_m2c[2]        -tag rxc_pin_lpc_xcvr  ; # BANK 1C : XCVR
set_location_assignment PIN_AH31 -to fmc_bot_dp_c2m[3](n)     -tag rxc_pin_lpc_xcvr; # BANK 1C : XCVR
set_location_assignment PIN_AH32 -to fmc_bot_dp_c2m[3]        -tag rxc_pin_lpc_xcvr  ; # BANK 1C : XCVR
set_location_assignment PIN_AF31 -to fmc_bot_dp_m2c[3](n)     -tag rxc_pin_lpc_xcvr; # BANK 1C : XCVR
set_location_assignment PIN_AF32 -to fmc_bot_dp_m2c[3]        -tag rxc_pin_lpc_xcvr  ; # BANK 1C : XCVR
set_location_assignment PIN_AN33 -to pcie_0_tx[0](n)          -tag rxc_pin_lpc_xcvr; # BANK 1C : XCVR
set_location_assignment PIN_AN34 -to pcie_0_tx[0]             -tag rxc_pin_lpc_xcvr  ; # BANK 1C : XCVR
set_location_assignment PIN_AE29 -to pcie_0_rx[0](n)          -tag rxc_pin_lpc_xcvr; # BANK 1C : XCVR
set_location_assignment PIN_AE30 -to pcie_0_rx[0]             -tag rxc_pin_lpc_xcvr  ; # BANK 1C : XCVR
set_location_assignment PIN_AL33 -to pcie_0_tx[1](n)          -tag rxc_pin_lpc_xcvr; # BANK 1C : XCVR
set_location_assignment PIN_AL34 -to pcie_0_tx[1]             -tag rxc_pin_lpc_xcvr  ; # BANK 1C : XCVR
set_location_assignment PIN_AD31 -to pcie_0_rx[1](n)          -tag rxc_pin_lpc_xcvr; # BANK 1C : XCVR
set_location_assignment PIN_AD32 -to pcie_0_rx[1]             -tag rxc_pin_lpc_xcvr  ; # BANK 1C : XCVR
set_location_assignment PIN_AD27 -to pcie_0_refclk(n)         ; # BANK 1C : XCVR
set_location_assignment PIN_AD28 -to pcie_0_refclk              ; # BANK 1C : XCVR

set_instance_assignment -name IO_STANDARD LVDS -to "pcie_0_refclk(n)"
set_instance_assignment -name IO_STANDARD LVDS -to pcie_0_refclk

set_location_assignment PIN_Y27 -to clk_xcvr[1](n)           ; # BANK 1D : XCVR
set_location_assignment PIN_Y28 -to clk_xcvr[1]                ; # BANK 1D : XCVR
set_instance_assignment -name IO_STANDARD LVDS -to "clk_xcvr[1](n)"        
set_instance_assignment -name IO_STANDARD LVDS -to clk_xcvr[1]

if {($som_ver == "turbo") || ($som_ver == "indus")} {
set_location_assignment PIN_AB27 -to fmc_bot_gbtclk1(n)       ; # BANK 1D : XCVR
set_location_assignment PIN_AB28 -to fmc_bot_gbtclk1            ; # BANK 1D : XCVR
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_bot_gbtclk1(n)"    
set_instance_assignment -name IO_STANDARD LVDS -to fmc_bot_gbtclk1
}
set_location_assignment PIN_AJ33 -to pcie_0_tx[2](n)          -tag rxc_pin_lpc_xcvr; # BANK 1D : XCVR
set_location_assignment PIN_AJ34 -to pcie_0_tx[2]             -tag rxc_pin_lpc_xcvr  ; # BANK 1D : XCVR
set_location_assignment PIN_AC29 -to pcie_0_rx[2](n)          -tag rxc_pin_lpc_xcvr; # BANK 1D : XCVR
set_location_assignment PIN_AC30 -to pcie_0_rx[2]             -tag rxc_pin_lpc_xcvr  ; # BANK 1D : XCVR
set_location_assignment PIN_AG33 -to pcie_0_tx[3](n)          -tag rxc_pin_lpc_xcvr; # BANK 1D : XCVR
set_location_assignment PIN_AG34 -to pcie_0_tx[3]             -tag rxc_pin_lpc_xcvr  ; # BANK 1D : XCVR
set_location_assignment PIN_AB31 -to pcie_0_rx[3](n)          -tag rxc_pin_lpc_xcvr; # BANK 1D : XCVR
set_location_assignment PIN_AB32 -to pcie_0_rx[3]             -tag rxc_pin_lpc_xcvr  ; # BANK 1D : XCVR
set_location_assignment PIN_AE33 -to pcie_0_tx[4](n)          -tag rxc_pin_lpc_xcvr; # BANK 1D : XCVR
set_location_assignment PIN_AE34 -to pcie_0_tx[4]             -tag rxc_pin_lpc_xcvr  ; # BANK 1D : XCVR
set_location_assignment PIN_AA29 -to pcie_0_rx[4](n)          -tag rxc_pin_lpc_xcvr; # BANK 1D : XCVR
set_location_assignment PIN_AA30 -to pcie_0_rx[4]             -tag rxc_pin_lpc_xcvr  ; # BANK 1D : XCVR
set_location_assignment PIN_AC33 -to pcie_0_tx[5](n)          -tag rxc_pin_lpc_xcvr; # BANK 1D : XCVR
set_location_assignment PIN_AC34 -to pcie_0_tx[5]             -tag rxc_pin_lpc_xcvr  ; # BANK 1D : XCVR
set_location_assignment PIN_Y31 -to pcie_0_rx[5](n)           -tag rxc_pin_lpc_xcvr; # BANK 1D : XCVR
set_location_assignment PIN_Y32 -to pcie_0_rx[5]              -tag rxc_pin_lpc_xcvr  ; # BANK 1D : XCVR
set_location_assignment PIN_AA33 -to pcie_0_tx[6](n)          -tag rxc_pin_lpc_xcvr; # BANK 1D : XCVR
set_location_assignment PIN_AA34 -to pcie_0_tx[6]             -tag rxc_pin_lpc_xcvr  ; # BANK 1D : XCVR
set_location_assignment PIN_W29 -to pcie_0_rx[6](n)           -tag rxc_pin_lpc_xcvr; # BANK 1D : XCVR
set_location_assignment PIN_W30 -to pcie_0_rx[6]              -tag rxc_pin_lpc_xcvr  ; # BANK 1D : XCVR
set_location_assignment PIN_W33 -to pcie_0_tx[7](n)           -tag rxc_pin_lpc_xcvr; # BANK 1D : XCVR
set_location_assignment PIN_W34 -to pcie_0_tx[7]              -tag rxc_pin_lpc_xcvr  ; # BANK 1D : XCVR
set_location_assignment PIN_V31 -to pcie_0_rx[7](n)           -tag rxc_pin_lpc_xcvr; # BANK 1D : XCVR
set_location_assignment PIN_V32 -to pcie_0_rx[7]              -tag rxc_pin_lpc_xcvr  ; # BANK 1D : XCVR

set_location_assignment PIN_V27 -to clk_xcvr[2](n)            ; # BANK 1E : XCVR
set_location_assignment PIN_V28 -to clk_xcvr[2]                 ; # BANK 1E : XCVR
set_instance_assignment -name IO_STANDARD LVDS -to "clk_xcvr[2](n)"       
set_instance_assignment -name IO_STANDARD LVDS -to clk_xcvr[2]

if {($som_ver == "turbo") || ($som_ver == "indus")} {
set_location_assignment PIN_T27 -to fmc_std_gbtclk0(n)        ; # BANK 1E : XCVR
set_location_assignment PIN_T28 -to fmc_std_gbtclk0             ; # BANK 1E : XCVR
set_location_assignment PIN_F31 -to fmc_std_dp_c2m[0](n)      -tag rxc_pin_hpc_xcvr; # BANK 1E : XCVR
set_location_assignment PIN_F32 -to fmc_std_dp_c2m[0]         -tag rxc_pin_hpc_xcvr  ; # BANK 1E : XCVR
set_location_assignment PIN_G29 -to fmc_std_dp_m2c[0](n)      -tag rxc_pin_hpc_xcvr; # BANK 1E : XCVR
set_location_assignment PIN_G30 -to fmc_std_dp_m2c[0]         -tag rxc_pin_hpc_xcvr  ; # BANK 1E : XCVR
set_location_assignment PIN_H31 -to fmc_std_dp_c2m[1](n)      -tag rxc_pin_hpc_xcvr; # BANK 1E : XCVR
set_location_assignment PIN_H32 -to fmc_std_dp_c2m[1]         -tag rxc_pin_hpc_xcvr  ; # BANK 1E : XCVR
set_location_assignment PIN_J29 -to fmc_std_dp_m2c[1](n)      -tag rxc_pin_hpc_xcvr; # BANK 1E : XCVR
set_location_assignment PIN_J30 -to fmc_std_dp_m2c[1]         -tag rxc_pin_hpc_xcvr  ; # BANK 1E : XCVR
set_location_assignment PIN_C33 -to fmc_std_dp_c2m[2](n)      -tag rxc_pin_hpc_xcvr; # BANK 1E : XCVR
set_location_assignment PIN_C34 -to fmc_std_dp_c2m[2]         -tag rxc_pin_hpc_xcvr  ; # BANK 1E : XCVR
set_location_assignment PIN_K31 -to fmc_std_dp_m2c[2](n)      -tag rxc_pin_hpc_xcvr; # BANK 1E : XCVR
set_location_assignment PIN_K32 -to fmc_std_dp_m2c[2]         -tag rxc_pin_hpc_xcvr  ; # BANK 1E : XCVR
set_location_assignment PIN_E33 -to fmc_std_dp_c2m[3](n)      -tag rxc_pin_hpc_xcvr; # BANK 1E : XCVR
set_location_assignment PIN_E34 -to fmc_std_dp_c2m[3]         -tag rxc_pin_hpc_xcvr ; # BANK 1E : XCVR
set_location_assignment PIN_L29 -to fmc_std_dp_m2c[3](n)      -tag rxc_pin_hpc_xcvr; # BANK 1E : XCVR
set_location_assignment PIN_L30 -to fmc_std_dp_m2c[3]         -tag rxc_pin_hpc_xcvr  ; # BANK 1E : XCVR
set_location_assignment PIN_G33 -to fmc_std_dp_c2m[4](n)      -tag rxc_pin_hpc_xcvr ; # BANK 1E : XCVR
set_location_assignment PIN_G34 -to fmc_std_dp_c2m[4]         -tag rxc_pin_hpc_xcvr ; # BANK 1E : XCVR
set_location_assignment PIN_M31 -to fmc_std_dp_m2c[4](n)      -tag rxc_pin_hpc_xcvr; # BANK 1E : XCVR
set_location_assignment PIN_M32 -to fmc_std_dp_m2c[4]         -tag rxc_pin_hpc_xcvr ; # BANK 1E : XCVR
set_location_assignment PIN_J33 -to fmc_std_dp_c2m[5](n)      -tag rxc_pin_hpc_xcvr ; # BANK 1E : XCVR
set_location_assignment PIN_J34 -to fmc_std_dp_c2m[5]         -tag rxc_pin_hpc_xcvr; # BANK 1E : XCVR
set_location_assignment PIN_N29 -to fmc_std_dp_m2c[5](n)      -tag rxc_pin_hpc_xcvr ; # BANK 1E : XCVR
set_location_assignment PIN_N30 -to fmc_std_dp_m2c[5]         -tag rxc_pin_hpc_xcvr ; # BANK 1E : XCVR
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_gbtclk0(n)"   
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_gbtclk0
}

set_location_assignment PIN_M27 -to clk_xcvr[3](n)            ; # BANK 1F : XCVR
set_location_assignment PIN_M28 -to clk_xcvr[3]                 ; # BANK 1F : XCVR
set_instance_assignment -name IO_STANDARD LVDS -to "clk_xcvr[3](n)"       
set_instance_assignment -name IO_STANDARD LVDS -to clk_xcvr[3]

if {($som_ver == "turbo") || ($som_ver == "indus")} {
set_location_assignment PIN_P27 -to fmc_std_gbtclk1(n)        ; # BANK 1F : XCVR
set_location_assignment PIN_P28 -to fmc_std_gbtclk1             ; # BANK 1F : XCVR
set_location_assignment PIN_L33 -to fmc_std_dp_c2m[6](n)     -tag rxc_pin_hpc_xcvr ; # BANK 1F : XCVR
set_location_assignment PIN_L34 -to fmc_std_dp_c2m[6]          -tag rxc_pin_hpc_xcvr ; # BANK 1F : XCVR
set_location_assignment PIN_P31 -to fmc_std_dp_m2c[6](n)      -tag rxc_pin_hpc_xcvr; # BANK 1F : XCVR
set_location_assignment PIN_P32 -to fmc_std_dp_m2c[6]           -tag rxc_pin_hpc_xcvr; # BANK 1F : XCVR
set_location_assignment PIN_N33 -to fmc_std_dp_c2m[7](n)      -tag rxc_pin_hpc_xcvr; # BANK 1F : XCVR
set_location_assignment PIN_N34 -to fmc_std_dp_c2m[7]           -tag rxc_pin_hpc_xcvr; # BANK 1F : XCVR
set_location_assignment PIN_R29 -to fmc_std_dp_m2c[7](n)      -tag rxc_pin_hpc_xcvr; # BANK 1F : XCVR
set_location_assignment PIN_R30 -to fmc_std_dp_m2c[7]           -tag rxc_pin_hpc_xcvr; # BANK 1F : XCVR
set_location_assignment PIN_R33 -to fmc_std_dp_c2m[8](n)      -tag rxc_pin_hpc_xcvr; # BANK 1F : XCVR
set_location_assignment PIN_R34 -to fmc_std_dp_c2m[8]          -tag rxc_pin_hpc_xcvr ; # BANK 1F : XCVR
set_location_assignment PIN_T31 -to fmc_std_dp_m2c[8](n)      -tag rxc_pin_hpc_xcvr; # BANK 1F : XCVR
set_location_assignment PIN_T32 -to fmc_std_dp_m2c[8]          -tag rxc_pin_hpc_xcvr ; # BANK 1F : XCVR
set_location_assignment PIN_U33 -to fmc_std_dp_c2m[9](n)      -tag rxc_pin_hpc_xcvr; # BANK 1F : XCVR
set_location_assignment PIN_U34 -to fmc_std_dp_c2m[9]           -tag rxc_pin_hpc_xcvr; # BANK 1F : XCVR
set_location_assignment PIN_U29 -to fmc_std_dp_m2c[9](n)      -tag rxc_pin_hpc_xcvr; # BANK 1F : XCVR
set_location_assignment PIN_U30 -to fmc_std_dp_m2c[9]          -tag rxc_pin_hpc_xcvr ; # BANK 1F : XCVR
set_location_assignment PIN_D31 -to fmc_bot_dp_c2m[4](n)      -tag rxc_pin_lpc_xcvr; # BANK 1F : XCVR
set_location_assignment PIN_D32 -to fmc_bot_dp_c2m[4]          -tag rxc_pin_lpc_xcvr ; # BANK 1F : XCVR
set_location_assignment PIN_E29 -to fmc_bot_dp_m2c[4](n)      -tag rxc_pin_lpc_xcvr; # BANK 1F : XCVR
set_location_assignment PIN_E30 -to fmc_bot_dp_m2c[4]          -tag rxc_pin_lpc_xcvr ; # BANK 1F : XCVR
set_location_assignment PIN_B31 -to fmc_bot_dp_c2m[5](n)      -tag rxc_pin_lpc_xcvr; # BANK 1F : XCVR
set_location_assignment PIN_B32 -to fmc_bot_dp_c2m[5]          -tag rxc_pin_lpc_xcvr ; # BANK 1F : XCVR
set_location_assignment PIN_C29 -to fmc_bot_dp_m2c[5](n)      -tag rxc_pin_lpc_xcvr; # BANK 1F : XCVR
set_location_assignment PIN_C30 -to fmc_bot_dp_m2c[5]           -tag rxc_pin_lpc_xcvr; # BANK 1F : XCVR
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_gbtclk1(n)"   
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_gbtclk1

set_location_assignment PIN_AN18 -to fmc_bot_la_o[0](n)        ; # BANK 3C : 1.8V
set_location_assignment PIN_AM18 -to fmc_bot_la_o[0]             ; # BANK 3C : 1.8V
set_location_assignment PIN_AP17 -to fmc_bot_la_i[0](n)         ; # BANK 3C : 1.8V
set_location_assignment PIN_AP16 -to fmc_bot_la_i[0]              ; # BANK 3C : 1.8V
set_location_assignment PIN_AL18 -to fmc_bot_la_o[1](n)        ; # BANK 3C : 1.8V
set_location_assignment PIN_AK18 -to fmc_bot_la_o[1]             ; # BANK 3C : 1.8V
set_location_assignment PIN_AP15 -to fmc_bot_la_i[1](n)         ; # BANK 3C : 1.8V
set_location_assignment PIN_AN15 -to fmc_bot_la_i[1]              ; # BANK 3C : 1.8V
set_location_assignment PIN_AE18 -to fmc_bot_la_o[2](n)         ; # BANK 3C : 1.8V
set_location_assignment PIN_AD19 -to fmc_bot_la_o[2]              ; # BANK 3C : 1.8V
set_location_assignment PIN_AN17 -to fmc_bot_la_i[2](n)        ; # BANK 3C : 1.8V
set_location_assignment PIN_AM17 -to fmc_bot_la_i[2]             ; # BANK 3C : 1.8V
set_location_assignment PIN_AP14 -to fmc_bot_la_o[3](n)        ; # BANK 3C : 1.8V
set_location_assignment PIN_AN14 -to fmc_bot_la_o[3]             ; # BANK 3C : 1.8V
set_location_assignment PIN_AG18 -to fmc_bot_la_i[3](n)         ; # BANK 3C : 1.8V
set_location_assignment PIN_AF18 -to fmc_bot_la_i[3]              ; # BANK 3C : 1.8V
set_location_assignment PIN_AE19 -to fmc_bot_la_o[4](n)         ; # BANK 3C : 1.8V
set_location_assignment PIN_AF19 -to fmc_bot_la_o[4]              ; # BANK 3C : 1.8V
set_location_assignment PIN_AM16 -to fmc_bot_la_i[4](n)         ; # BANK 3C : 1.8V
set_location_assignment PIN_AL16 -to fmc_bot_la_i[4]              ; # BANK 3C : 1.8V
set_location_assignment PIN_AK17 -to fmc_bot_la_o[5](n)         ; # BANK 3C : 1.8V
set_location_assignment PIN_AJ17 -to fmc_bot_la_o[5]              ; # BANK 3C : 1.8V
set_location_assignment PIN_AH15 -to fmc_bot_la_i[5](n)         ; # BANK 3C : 1.8V clock n
set_location_assignment PIN_AJ15 -to fmc_bot_la_i[5]              ; # BANK 3C : 1.8V clock p
set_location_assignment PIN_AH19 -to fmc_bot_la_o[6](n)       ; # BANK 2A : 1.8V
set_location_assignment PIN_AH18 -to fmc_bot_la_o[6]            ; # BANK 2A : 1.8V
set_location_assignment PIN_AD17 -to fmc_bot_la_i[6](n)       ; # BANK 2A : 1.8V
set_location_assignment PIN_AC17 -to fmc_bot_la_i[6]            ; # BANK 2A : 1.8V
set_location_assignment PIN_AH17 -to fmc_bot_la_o[7](n)       ; # BANK 2A : 1.8V
set_location_assignment PIN_AG17 -to fmc_bot_la_o[7]            ; # BANK 2A : 1.8V
set_location_assignment PIN_T10 -to fmc_bot_la_i[7](n)       ; # BANK 2A : 1.8V
set_location_assignment PIN_U10 -to fmc_bot_la_i[7]            ; # BANK 2A : 1.8V
set_location_assignment PIN_T8 -to fmc_bot_la_o[8](n)       ; # BANK 2A : 1.8V
set_location_assignment PIN_U8 -to fmc_bot_la_o[8]            ; # BANK 2A : 1.8V
set_location_assignment PIN_AF16 -to fmc_bot_la_i[8](n)       ; # BANK 2A : 1.8V
set_location_assignment PIN_AG16 -to fmc_bot_la_i[8]            ; # BANK 2A : 1.8V
set_location_assignment PIN_AH14 -to fmc_bot_la_o[9](n)       ; # BANK 2A : 1.8V
set_location_assignment PIN_AJ14 -to fmc_bot_la_o[9]            ; # BANK 2A : 1.8V
set_location_assignment PIN_R7 -to fmc_bot_la_i[9](n)       ; # BANK 2A : 1.8V
set_location_assignment PIN_R8 -to fmc_bot_la_i[9]            ; # BANK 2A : 1.8V
set_location_assignment PIN_T9 -to fmc_bot_la_o[10]      ; # BANK 2A : 1.8V
set_location_assignment PIN_R9 -to fmc_bot_la_o[10](n)           ; # BANK 2A : 1.8V
set_location_assignment PIN_M8 -to fmc_bot_la_i[10](n)      ; # BANK 2A : 1.8V
set_location_assignment PIN_N8 -to fmc_bot_la_i[10]           ; # BANK 2A : 1.8V
set_location_assignment PIN_P9 -to fmc_bot_la_o[11](n)      ; # BANK 2A : 1.8V
set_location_assignment PIN_N9 -to fmc_bot_la_o[11]           ; # BANK 2A : 1.8V
set_location_assignment PIN_W9 -to fmc_bot_la_i[11](n)      ; # BANK 2A : 1.8V
set_location_assignment PIN_W10 -to fmc_bot_la_i[11]           ; # BANK 2A : 1.8V
set_location_assignment PIN_T6 -to fmc_bot_la_o[12](n)      ; # BANK 2A : 1.8V
set_location_assignment PIN_T5 -to fmc_bot_la_o[12]           ; # BANK 2A : 1.8V
set_location_assignment PIN_V8 -to fmc_bot_la_i[12](n)      ; # BANK 2A : 1.8V
set_location_assignment PIN_V9 -to fmc_bot_la_i[12]           ; # BANK 2A : 1.8V
set_location_assignment PIN_U7 -to fmc_bot_la_o[13](n)      ; # BANK 2A : 1.8V
set_location_assignment PIN_V7 -to fmc_bot_la_o[13]           ; # BANK 2A : 1.8V
set_location_assignment PIN_W7 -to fmc_bot_la_i[13](n)      ; # BANK 2A : 1.8V
set_location_assignment PIN_W6 -to fmc_bot_la_i[13]           ; # BANK 2A : 1.8V
set_location_assignment PIN_L6 -to fmc_bot_la_o[14](n)      ; # BANK 2A : 1.8V
set_location_assignment PIN_K6 -to fmc_bot_la_o[14]           ; # BANK 2A : 1.8V
set_location_assignment PIN_L8 -to fmc_bot_la_i[14](n)      ; # BANK 2A : 1.8V
set_location_assignment PIN_K7 -to fmc_bot_la_i[14]           ; # BANK 2A : 1.8V
set_location_assignment PIN_M7 -to fmc_bot_la_o[15](n)      ; # BANK 2A : 1.8V
set_location_assignment PIN_M6 -to fmc_bot_la_o[15]           ; # BANK 2A : 1.8V
set_location_assignment PIN_P7 -to fmc_bot_la_i[15](n)      ; # BANK 2A : 1.8V
set_location_assignment PIN_N7 -to fmc_bot_la_i[15]           ; # BANK 2A : 1.8V
}
# set_location_assignment PIN_L5 -to fmc_bot_la_o[16](n)      ; # BANK 2A : 1.8V clock n
# set_location_assignment PIN_M5 -to fmc_bot_la_o[16]           ; # BANK 2A : 1.8V clock p
# set_location_assignment PIN_AL15 -to fmc_bot_clk0_m2c(n)      ; # BANK 2A : 1.8V clock n
# set_location_assignment PIN_AM15 -to fmc_bot_clk0_m2c           ; # BANK 2A : 1.8V clock p
# set_location_assignment PIN_AE16 -to pcie_0_perst_n             ; # BANK 2A : 1.8V
# set_location_assignment PIN_AE17 -to clk_sync_pwr               ; # BANK 2A : 1.8V
# set_location_assignment PIN_AK16 -to             ; # BANK 2A : 1.8V reserved for CLKUSR

if {($som_ver == "turbo") || ($som_ver == "indus")} {
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_bot_la_i[0](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_bot_la_i[0]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_bot_la_o[0](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_bot_la_o[0]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_bot_la_i[1](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_bot_la_i[1]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_bot_la_o[1](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_bot_la_o[1]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_bot_la_i[2](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_bot_la_i[2]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_bot_la_o[2](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_bot_la_o[2]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_bot_la_i[3](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_bot_la_i[3]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_bot_la_o[3](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_bot_la_o[3]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_bot_la_i[4](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_bot_la_i[4]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_bot_la_o[4](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_bot_la_o[4]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_bot_la_i[5](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_bot_la_i[5]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_bot_la_o[5](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_bot_la_o[5]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_bot_la_i[9](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_bot_la_i[9]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_bot_la_o[9](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_bot_la_o[9]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_bot_la_i[10](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_bot_la_i[10]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_bot_la_o[10](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_bot_la_o[10]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_bot_la_i[11](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_bot_la_i[11]
# set_instance_assignment -name IO_STANDARD "1.8 V" -to pcie_0_perst_n
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_bot_la_i[6](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_bot_la_i[6]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_bot_la_o[6](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_bot_la_o[6]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_bot_la_i[7](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_bot_la_i[7]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_bot_la_o[7](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_bot_la_o[7]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_bot_la_o[11](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_bot_la_o[11]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_bot_la_i[12](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_bot_la_i[12]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_bot_la_i[13](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_bot_la_i[13]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_bot_la_o[14](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_bot_la_o[14]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_bot_la_o[15](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_bot_la_o[15]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_bot_la_o[16](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_bot_la_o[16]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_bot_la_i[8](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_bot_la_i[8]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_bot_la_o[8](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_bot_la_o[8]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_bot_la_i[15](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_bot_la_i[15]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_bot_la_i[16](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_bot_la_i[16]
# set_instance_assignment -name IO_STANDARD "1.8 V" -to clk_sync_pwr

set_location_assignment PIN_K2 -to fmc_std_la_o[0](n)         ; # BANK 3D : 1.8V
set_location_assignment PIN_K1 -to fmc_std_la_o[0]              ; # BANK 3D : 1.8V
set_location_assignment PIN_K4 -to fmc_std_la_i[0](n)         ; # BANK 3D : 1.8V J5
set_location_assignment PIN_L4 -to fmc_std_la_i[0]              ; # BANK 3D : 1.8V J4
set_location_assignment PIN_J5 -to fmc_std_la_o[1](n)        ; # BANK 3D : 1.8V K4
set_location_assignment PIN_J4 -to fmc_std_la_o[1]             ; # BANK 3D : 1.8V L4
set_location_assignment PIN_J2 -to fmc_std_la_i[1](n)         ; # BANK 3D : 1.8V
set_location_assignment PIN_J1 -to fmc_std_la_i[1]              ; # BANK 3D : 1.8V
set_location_assignment PIN_L1 -to fmc_std_la_o[2](n)         ; # BANK 3D : 1.8V
set_location_assignment PIN_M1 -to fmc_std_la_o[2]             ; # BANK 3D : 1.8V
set_location_assignment PIN_N5 -to fmc_std_la_i[2](n)         ; # BANK 3D : 1.8V
set_location_assignment PIN_N4 -to fmc_std_la_i[2]              ; # BANK 3D : 1.8V
set_location_assignment PIN_K3 -to fmc_std_la_o[3](n)         ; # BANK 3D : 1.8V
set_location_assignment PIN_L3 -to fmc_std_la_o[3]              ; # BANK 3D : 1.8V
set_location_assignment PIN_M3 -to fmc_std_la_i[3](n)         ; # BANK 3D : 1.8V
set_location_assignment PIN_M2 -to fmc_std_la_i[3]              ; # BANK 3D : 1.8V
set_location_assignment PIN_N3 -to fmc_std_la_o[4](n)         ; # BANK 3D : 1.8V
set_location_assignment PIN_N2 -to fmc_std_la_o[4]              ; # BANK 3D : 1.8V
set_location_assignment PIN_P5 -to fmc_std_la_i[4](n)         ; # BANK 3D : 1.8V
set_location_assignment PIN_P4 -to fmc_std_la_i[4]              ; # BANK 3D : 1.8V
set_location_assignment PIN_R3 -to fmc_std_la_o[5](n)         ; # BANK 3D : 1.8V
set_location_assignment PIN_T3 -to fmc_std_la_o[5]              ; # BANK 3D : 1.8V
set_location_assignment PIN_R2 -to fmc_std_la_i[5](n)         ; # BANK 3D : 1.8V
set_location_assignment PIN_P2 -to fmc_std_la_i[5]              ; # BANK 3D : 1.8V
set_location_assignment PIN_P1 -to fmc_std_la_o[6](n)         ; # BANK 3D : 1.8V
set_location_assignment PIN_R1 -to fmc_std_la_o[6]              ; # BANK 3D : 1.8V
set_location_assignment PIN_R4 -to fmc_std_la_i[6](n)         ; # BANK 3D : 1.8V
set_location_assignment PIN_T4 -to fmc_std_la_i[6]              ; # BANK 3D : 1.8V
set_location_assignment PIN_U5 -to fmc_std_la_o[7](n)         ; # BANK 3D : 1.8V
set_location_assignment PIN_U6 -to fmc_std_la_o[7]              ; # BANK 3D : 1.8V
set_location_assignment PIN_T1 -to fmc_std_la_i[7](n)         ; # BANK 3D : 1.8V
set_location_assignment PIN_U1 -to fmc_std_la_i[7]              ; # BANK 3D : 1.8V
set_location_assignment PIN_V3 -to fmc_std_la_o[8](n)         ; # BANK 3D : 1.8V
set_location_assignment PIN_U3 -to fmc_std_la_o[8]              ; # BANK 3D : 1.8V
set_location_assignment PIN_V4 -to fmc_std_la_i[8](n)         ; # BANK 3D : 1.8V
set_location_assignment PIN_V5 -to fmc_std_la_i[8]              ; # BANK 3D : 1.8V
set_location_assignment PIN_Y2 -to fmc_std_la_i[9](n)         ; # BANK 3D : 1.8V
set_location_assignment PIN_Y1 -to fmc_std_la_i[9]              ; # BANK 3D : 1.8V
set_location_assignment PIN_Y4 -to fmc_std_la_o[9](n)         ; # BANK 3D : 1.8V
set_location_assignment PIN_Y3 -to fmc_std_la_o[9]              ; # BANK 3D : 1.8V
set_location_assignment PIN_AC2 -to fmc_std_la_i[10](n)        ; # BANK 3D : 1.8V
set_location_assignment PIN_AC3 -to fmc_std_la_i[10]             ; # BANK 3D : 1.8V
set_location_assignment PIN_U2 -to fmc_std_la_o[10](n)        ; # BANK 3D : 1.8V clock n
set_location_assignment PIN_V2 -to fmc_std_la_o[10]             ; # BANK 3D : 1.8V clock p
set_location_assignment PIN_AB3 -to fmc_std_la_o[11](n)        ; # BANK 3D : 1.8V
set_location_assignment PIN_AB2 -to fmc_std_la_o[11]             ; # BANK 3D : 1.8V
set_location_assignment PIN_AA1 -to fmc_std_la_i[11](n)        ; # BANK 3C : 1.8V
set_location_assignment PIN_AB1 -to fmc_std_la_i[11]             ; # BANK 3C : 1.8V
set_location_assignment PIN_P6 -to fmc_std_clk0_m2c(n)        ; # BANK 3D : 1.8V clock n
set_location_assignment PIN_R6 -to fmc_std_clk0_m2c             ; # BANK 3D : 1.8V clock p
set_location_assignment PIN_Y7 -to fmc_std_la_o[12](n)        ; # BANK 3C : 1.8V
set_location_assignment PIN_Y6 -to fmc_std_la_o[12]             ; # BANK 3C : 1.8V
set_location_assignment PIN_AA6 -to fmc_std_la_i[12](n)        ; # BANK 3C : 1.8V
set_location_assignment PIN_AA5 -to fmc_std_la_i[12]             ; # BANK 3C : 1.8V
set_location_assignment PIN_AA4 -to fmc_std_la_o[13](n)        ; # BANK 3C : 1.8V
set_location_assignment PIN_AA3 -to fmc_std_la_o[13]             ; # BANK 3C : 1.8V
set_location_assignment PIN_W5 -to fmc_std_la_i[13](n)        ; # BANK 3C : 1.8V
set_location_assignment PIN_W4 -to fmc_std_la_i[13]             ; # BANK 3C : 1.8V
set_location_assignment PIN_AA9 -to fmc_std_la_o[14](n)        ; # BANK 3C : 1.8V
set_location_assignment PIN_AA8 -to fmc_std_la_o[14]             ; # BANK 3C : 1.8V
set_location_assignment PIN_Y9 -to fmc_std_la_i[14](n)        ; # BANK 3C : 1.8V
set_location_assignment PIN_Y8 -to fmc_std_la_i[14]             ; # BANK 3C : 1.8V
set_location_assignment PIN_AK14 -to fmc_std_la_o[15](n)        ; # BANK 3C : 1.8V
set_location_assignment PIN_AL14 -to fmc_std_la_o[15]             ; # BANK 3C : 1.8V
set_location_assignment PIN_AK13 -to fmc_std_la_i[15](n)        ; # BANK 3C : 1.8V
set_location_assignment PIN_AL13 -to fmc_std_la_i[15]             ; # BANK 3C : 1.8V
set_location_assignment PIN_AM13 -to fmc_std_la_o[16](n)       ; # BANK 3C : 1.8V
set_location_assignment PIN_AN13 -to fmc_std_la_o[16]            ; # BANK 3C : 1.8V
set_location_assignment PIN_AP12 -to fmc_std_la_i[16](n)       ; # BANK 3C : 1.8V
set_location_assignment PIN_AN12 -to fmc_std_la_i[16]            ; # BANK 3C : 1.8V
set_location_assignment PIN_W2 -to fmc_std_clk1_m2c(n)        ; # BANK 3C : 1.8V clock n
set_location_assignment PIN_W1 -to fmc_std_clk1_m2c             ; # BANK 3C : 1.8V clock p

set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_la_i[8](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_la_i[8]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_la_o[8](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_la_o[8]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_la_i[9](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_la_i[9]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_la_o[9](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_la_o[9]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_la_i[10](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_la_i[10]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_la_o[10](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_la_o[10]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_la_i[11](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_la_i[11]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_la_o[11](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_la_o[11]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_la_i[12](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_la_i[12]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_la_o[12](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_la_o[12]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_la_i[13](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_la_i[13]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_la_o[13](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_la_o[13]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_la_i[14](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_la_i[14]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_la_o[14](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_la_o[14]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_la_i[15](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_la_i[15]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_la_o[15](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_la_o[15]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_la_i[16](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_la_i[16]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_la_o[16](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_la_o[16]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_bot_la_o[12](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_bot_la_o[12]
set_instance_assignment -name IO_STANDARD LVDS -to  "fmc_bot_la_i[14](n)"
set_instance_assignment -name IO_STANDARD LVDS -to  fmc_bot_la_i[14]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_bot_la_o[13](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_bot_la_o[13]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_bot_clk1_m2c(n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_bot_clk1_m2c
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_la_i[0](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_la_i[0]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_la_o[0](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_la_o[0]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_la_i[1](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_la_i[1]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_la_o[1](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_la_o[1]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_la_i[2](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_la_i[2]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_la_o[2](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_la_o[2]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_la_i[3](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_la_i[3]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_la_o[3](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_la_o[3]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_la_i[4](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_la_i[4]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_la_o[4](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_la_o[4]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_la_i[5](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_la_i[5]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_la_o[5](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_la_o[5]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_la_i[6](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_la_i[6]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_la_o[6](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_la_o[6]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_la_i[7](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_la_i[7]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_la_o[7](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_la_o[7]

set_location_assignment PIN_A11 -to fmc_std_ha_o[0](n)         ; # BANK 3E : 1.8V
set_location_assignment PIN_A10 -to fmc_std_ha_o[0]              ; # BANK 3E : 1.8V
set_location_assignment PIN_A9 -to fmc_std_ha_i[0](n)        ; # BANK 3E : 1.8V
set_location_assignment PIN_A8 -to fmc_std_ha_i[0]             ; # BANK 3E : 1.8V
set_location_assignment PIN_B12 -to fmc_std_ha_o[1](n)        ; # BANK 3E : 1.8V
set_location_assignment PIN_B11 -to fmc_std_ha_o[1]             ; # BANK 3E : 1.8V
set_location_assignment PIN_B10 -to fmc_std_ha_i[1](n)         ; # BANK 3E : 1.8V
set_location_assignment PIN_C10 -to fmc_std_ha_i[1]              ; # BANK 3E : 1.8V
set_location_assignment PIN_C13 -to fmc_std_ha_o[2](n)        ; # BANK 3E : 1.8V
set_location_assignment PIN_C12 -to fmc_std_ha_o[2]             ; # BANK 3E : 1.8V
set_location_assignment PIN_A6 -to fmc_std_ha_i[2](n)         ; # BANK 3E : 1.8V
set_location_assignment PIN_B6 -to fmc_std_ha_i[2]              ; # BANK 3E : 1.8V
set_location_assignment PIN_A4 -to fmc_std_ha_o[3](n)         ; # BANK 3E : 1.8V
set_location_assignment PIN_A3 -to fmc_std_ha_o[3]              ; # BANK 3E : 1.8V
set_location_assignment PIN_B8 -to fmc_std_ha_i[3](n)         ; # BANK 3E : 1.8V
set_location_assignment PIN_C8 -to fmc_std_ha_i[3]              ; # BANK 3E : 1.8V
set_location_assignment PIN_C5 -to fmc_std_ha_o[4](n)         ; # BANK 3E : 1.8V
set_location_assignment PIN_D5 -to fmc_std_ha_o[4]              ; # BANK 3E : 1.8V
set_location_assignment PIN_A5 -to fmc_std_ha_i[4](n)         ; # BANK 3E : 1.8V
set_location_assignment PIN_B5 -to fmc_std_ha_i[4]              ; # BANK 3E : 1.8V
set_location_assignment PIN_B7 -to fmc_std_ha_o[5](n)         ; # BANK 3E : 1.8V
set_location_assignment PIN_C7 -to fmc_std_ha_o[5]              ; # BANK 3E : 1.8V
set_location_assignment PIN_C4 -to fmc_std_ha_i[5](n)         ; # BANK 3E : 1.8V
set_location_assignment PIN_D4 -to fmc_std_ha_i[5]              ; # BANK 3E : 1.8V
set_location_assignment PIN_D7 -to fmc_std_ha_o[6](n)         ; # BANK 3E : 1.8V
set_location_assignment PIN_D6 -to fmc_std_ha_o[6]              ; # BANK 3E : 1.8V
set_location_assignment PIN_E12 -to fmc_std_ha_i[6](n)         ; # BANK 3E : 1.8V
set_location_assignment PIN_D12 -to fmc_std_ha_i[6]              ; # BANK 3E : 1.8V
set_location_assignment PIN_C9 -to fmc_std_ha_o[7](n)         ; # BANK 3E : 1.8V
set_location_assignment PIN_D9 -to fmc_std_ha_o[7]              ; # BANK 3E : 1.8V
set_location_assignment PIN_G11 -to fmc_std_ha_i[7](n)        ; # BANK 3E : 1.8V
set_location_assignment PIN_G12 -to fmc_std_ha_i[7]              ; # BANK 3E : 1.8V
set_location_assignment PIN_F13 -to fmc_std_ha_o[8](n)         ; # BANK 3E : 1.8V
set_location_assignment PIN_E13 -to fmc_std_ha_o[8]              ; # BANK 3E : 1.8V
set_location_assignment PIN_E9 -to fmc_std_ha_i[8](n)         ; # BANK 3E : 1.8V
set_location_assignment PIN_E8 -to fmc_std_ha_i[8]              ; # BANK 3E : 1.8V
set_location_assignment PIN_K13 -to fmc_std_ha_o[9](n)        ; # BANK 3E : 1.8V
set_location_assignment PIN_K12 -to fmc_std_ha_o[9]             ; # BANK 3E : 1.8V
set_location_assignment PIN_J12 -to fmc_std_ha_i[9](n)        ; # BANK 3E : 1.8V
set_location_assignment PIN_H12 -to fmc_std_ha_i[9]             ; # BANK 3E : 1.8V
set_location_assignment PIN_M13 -to fmc_std_ha_o[10](n)        ; # BANK 3E : 1.8V
set_location_assignment PIN_L13 -to fmc_std_ha_o[10]             ; # BANK 3E : 1.8V
set_location_assignment PIN_E11 -to fmc_std_ha_i[10](n)        ; # BANK 3E : 1.8V
set_location_assignment PIN_F11 -to fmc_std_ha_i[10]             ; # BANK 3E : 1.8V
set_location_assignment PIN_H13 -to fmc_std_ha_o[11](n)        ; # BANK 3E : 1.8V clock n
set_location_assignment PIN_G13 -to fmc_std_ha_o[11]             ; # BANK 3E : 1.8V clock p
set_location_assignment PIN_M10 -to fmc_std_ha_i[11](n)       ; # BANK 3F : 1.8V clock n
set_location_assignment PIN_N10 -to fmc_std_ha_i[11]            ; # BANK 3F : 1.8V clock p
set_location_assignment PIN_G6 -to fmc_std_clk2_bidir(n)      ; # BANK 3E : 1.8V clock n
set_location_assignment PIN_G5 -to fmc_std_clk2_bidir           ; # BANK 3E : 1.8V clock p
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_ha_i[0](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_ha_i[0]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_ha_o[0](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_ha_o[0]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_ha_i[1](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_ha_i[1]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_ha_o[1](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_ha_o[1]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_ha_i[2](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_ha_i[2]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_ha_o[2](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_ha_o[2]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_ha_i[3](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_ha_i[3]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_ha_o[3](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_ha_o[3]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_ha_i[4](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_ha_i[4]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_ha_o[4](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_ha_o[4]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_ha_i[5](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_ha_i[5]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_ha_o[5](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_ha_o[5]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_ha_i[6](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_ha_i[6]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_ha_o[6](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_ha_o[6]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_ha_i[7](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_ha_i[7]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_ha_o[7](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_ha_o[7]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_ha_i[8](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_ha_i[8]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_ha_o[8](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_ha_o[8]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_ha_i[9](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_ha_i[9]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_ha_o[9](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_ha_o[9]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_ha_i[10](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_ha_i[10]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_ha_o[10](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_ha_o[10]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_ha_i[11](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_ha_i[11]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_ha_o[11](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_ha_o[11]

set_location_assignment PIN_F9 -to fmc_std_hb_o[0](n)        ; # BANK 3F : 1.8V
set_location_assignment PIN_F8 -to fmc_std_hb_o[0]             ; # BANK 3F : 1.8V
set_location_assignment PIN_E3 -to fmc_std_hb_i[0](n)        ; # BANK 3F : 1.8V
set_location_assignment PIN_F3 -to fmc_std_hb_i[0]             ; # BANK 3F : 1.8V
set_location_assignment PIN_F5 -to fmc_std_hb_o[1](n)        ; # BANK 3F : 1.8V
set_location_assignment PIN_F6 -to fmc_std_hb_o[1]             ; # BANK 3F : 1.8V
set_location_assignment PIN_E4 -to fmc_std_hb_i[1](n)        ; # BANK 3F : 1.8V
set_location_assignment PIN_F4 -to fmc_std_hb_i[1]             ; # BANK 3F : 1.8V
set_location_assignment PIN_G7 -to fmc_std_hb_o[2](n)        ; # BANK 3F : 1.8V
set_location_assignment PIN_G8 -to fmc_std_hb_o[2]             ; # BANK 3F : 1.8V
set_location_assignment PIN_E6 -to fmc_std_hb_i[2](n)        ; # BANK 3F : 1.8V
set_location_assignment PIN_E7 -to fmc_std_hb_i[2]             ; # BANK 3F : 1.8V
set_location_assignment PIN_F10 -to fmc_std_hb_o[3](n)        ; # BANK 3F : 1.8V
set_location_assignment PIN_G10 -to fmc_std_hb_o[3]             ; # BANK 3F : 1.8V
set_location_assignment PIN_B3 -to fmc_std_hb_i[3](n)        ; # BANK 3F : 1.8V
set_location_assignment PIN_C3 -to fmc_std_hb_i[3]             ; # BANK 3F : 1.8V
set_location_assignment PIN_H2 -to fmc_std_hb_o[4](n)        ; # BANK 3F : 1.8V
set_location_assignment PIN_H3 -to fmc_std_hb_o[4]             ; # BANK 3F : 1.8V
set_location_assignment PIN_G3 -to fmc_std_hb_i[4](n)        ; # BANK 3F : 1.8V
set_location_assignment PIN_G2 -to fmc_std_hb_i[4]             ; # BANK 3F : 1.8V
set_location_assignment PIN_L11 -to fmc_std_hb_o[5](n)         ; # BANK 3F : 1.8V
set_location_assignment PIN_M11 -to fmc_std_hb_o[5]              ; # BANK 3F : 1.8V
set_location_assignment PIN_D2 -to fmc_std_hb_i[5](n)         ; # BANK 3F : 1.8V
set_location_assignment PIN_E2 -to fmc_std_hb_i[5]              ; # BANK 3F : 1.8V
set_location_assignment PIN_H4 -to fmc_std_hb_o[6](n)         ; # BANK 3F : 1.8V
set_location_assignment PIN_H5 -to fmc_std_hb_o[6]              ; # BANK 3F : 1.8V
set_location_assignment PIN_H7 -to fmc_std_hb_i[6](n)         ; # BANK 3F : 1.8V
set_location_assignment PIN_J6 -to fmc_std_hb_i[6]              ; # BANK 3F : 1.8V
set_location_assignment PIN_D1 -to fmc_std_hb_o[7](n)         ; # BANK 3F : 1.8V
set_location_assignment PIN_E1 -to fmc_std_hb_o[7]              ; # BANK 3F : 1.8V
set_location_assignment PIN_F1 -to fmc_std_hb_i[7](n)         ; # BANK 3F : 1.8V
set_location_assignment PIN_G1 -to fmc_std_hb_i[7]              ; # BANK 3F : 1.8V
set_location_assignment PIN_J9 -to fmc_std_hb_o[8](n)         ; # BANK 3F : 1.8V
set_location_assignment PIN_K9 -to fmc_std_hb_o[8]              ; # BANK 3F : 1.8V
set_location_assignment PIN_J7 -to fmc_std_hb_i[8](n)         ; # BANK 3F : 1.8V
set_location_assignment PIN_K8 -to fmc_std_hb_i[8]              ; # BANK 3F : 1.8V
set_location_assignment PIN_H8 -to fmc_std_hb_o[9](n)        ; # BANK 3F : 1.8V
set_location_assignment PIN_H9 -to fmc_std_hb_o[9]             ; # BANK 3F : 1.8V
set_location_assignment PIN_L10 -to fmc_std_hb_i[9](n)         ; # BANK 3F : 1.8V
set_location_assignment PIN_L9 -to fmc_std_hb_i[9]              ; # BANK 3F : 1.8V
set_location_assignment PIN_J11 -to fmc_std_hb_o[10](n)       ; # BANK 3F : 1.8V
set_location_assignment PIN_K11 -to fmc_std_hb_o[10]            ; # BANK 3F : 1.8V
set_location_assignment PIN_H10 -to fmc_std_hb_i[10](n)        ; # BANK 3F : 1.8V
set_location_assignment PIN_J10 -to fmc_std_hb_i[10]             ; # BANK 3F : 1.8V
set_location_assignment PIN_D10 -to fmc_std_clk3_bidir(n)      ; # BANK 3F : 1.8V clock n
set_location_assignment PIN_D11 -to fmc_std_clk3_bidir           ; # BANK 3F : 1.8V clock p
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_hb_i[0](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_hb_i[0]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_hb_o[0](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_hb_o[0]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_hb_i[1](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_hb_i[1]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_hb_o[1](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_hb_o[1]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_hb_i[2](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_hb_i[2]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_hb_o[2](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_hb_o[2]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_hb_i[3](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_hb_i[3]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_hb_o[3](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_hb_o[3]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_hb_i[4](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_hb_i[4]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_hb_o[4](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_hb_o[4]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_hb_i[5](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_hb_i[5]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_hb_o[5](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_hb_o[5]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_hb_i[6](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_hb_i[6]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_hb_o[6](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_hb_o[6]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_hb_i[7](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_hb_i[7]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_hb_o[7](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_hb_o[7]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_hb_i[8](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_hb_i[8]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_hb_o[8](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_hb_o[8]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_hb_i[9](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_hb_i[9]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_clk3_bidir(n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_clk3_bidir
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_hb_o[9](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_hb_o[9]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_hb_i[10](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_hb_i[10]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_hb_o[10](n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_hb_o[10]
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_clk2_bidir(n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_clk2_bidir
}

#if {($som_ver == "turbo") || ($som_ver == "indus")} {
# set_location_assignment PIN_AL19 -to fx3_dq[0]                  ; # BANK 2I : 1.8V
# set_location_assignment PIN_AN19 -to fx3_dq[1]                  ; # BANK 2I : 1.8V
# set_location_assignment PIN_AP19 -to fx3_dq[2]                  ; # BANK 2I : 1.8V
# set_location_assignment PIN_AM20 -to fx3_dq[3]                  ; # BANK 2I : 1.8V
# set_location_assignment PIN_AJ19 -to fx3_dq[4]                  ; # BANK 2I : 1.8V
# set_location_assignment PIN_AK19 -to fx3_dq[5]                  ; # BANK 2I : 1.8V
# set_location_assignment PIN_AL20 -to fx3_dq[6]                  ; # BANK 2I : 1.8V
# set_location_assignment PIN_AL21 -to fx3_dq[7]                  ; # BANK 2I : 1.8V
# set_location_assignment PIN_AK21 -to fx3_a[0]                   ; # BANK 2I : 1.8V
# set_location_assignment PIN_AM21 -to fx3_a[1]                   ; # BANK 2I : 1.8V
# set_location_assignment PIN_AJ21 -to fx3_sloe_n                 ; # BANK 2I : 1.8V
# set_location_assignment PIN_AJ20 -to fx3_slrd_n                 ; # BANK 2I : 1.8V
# set_location_assignment PIN_AE6  -to fx3_slwr_n                 ; # BANK 2K : 1.2V
# set_location_assignment PIN_B26  -to fx3_flaga                  ; # BANK 2K : 1.2V
# set_location_assignment PIN_C24  -to fx3_flagb                  ; # BANK 2K : 1.2V
# set_location_assignment PIN_B23  -to fx3_flagc                  ; # BANK 2K : 1.2V
# set_location_assignment PIN_C23  -to fx3_flagd                  ; # BANK 2K : 1.2V
# set_location_assignment PIN_AJ6 -to fx3_pktend_n                ; # BANK 3B : 1.2V
# set_location_assignment PIN_AC4 -to fx3_pclk                    ; # BANK 3B : 1.2V
# set_location_assignment PIN_AD5 -to fx3_slcs_n                  ; # BANK 3B : 1.2V
# set_instance_assignment -name IO_STANDARD "1.8V" -to fx3_dq[0]     
# set_instance_assignment -name IO_STANDARD "1.8V" -to fx3_dq[1]
# set_instance_assignment -name IO_STANDARD "1.8V" -to fx3_dq[2]
# set_instance_assignment -name IO_STANDARD "1.8V" -to fx3_dq[3]
# set_instance_assignment -name IO_STANDARD "1.8V" -to fx3_dq[4]
# set_instance_assignment -name IO_STANDARD "1.8V" -to fx3_dq[5]
# set_instance_assignment -name IO_STANDARD "1.8V" -to fx3_dq[6]
# set_instance_assignment -name IO_STANDARD "1.8V" -to fx3_dq[7]
# set_instance_assignment -name IO_STANDARD "1.8V" -to fx3_a[0]
# set_instance_assignment -name IO_STANDARD "1.8V" -to fx3_a[1]
# set_instance_assignment -name IO_STANDARD "1.8V" -to fx3_sloe_n
# set_instance_assignment -name IO_STANDARD "1.8V" -to fx3_slrd_n
# set_instance_assignment -name IO_STANDARD "1.2V" -to fx3_slwr_n
# set_instance_assignment -name IO_STANDARD "1.2V" -to fx3_flaga
# set_instance_assignment -name IO_STANDARD "1.2V" -to fx3_flagb
# set_instance_assignment -name IO_STANDARD "1.2V" -to fx3_flagc
# set_instance_assignment -name IO_STANDARD "1.2V" -to fx3_flagd
# set_instance_assignment -name IO_STANDARD "1.2V" -to fx3_pktend_n
# set_instance_assignment -name IO_STANDARD "1.2V" -to fx3_pclk
# set_instance_assignment -name IO_STANDARD "1.2V" -to fx3_slcs_n
#}

# Group DQ8
set_location_assignment PIN_AM27 -to hps_ddr4_dbi_n[2]          ; # BANK 2J : 1.2V
set_location_assignment PIN_AP25 -to hps_ddr4_dq[20]            ; # BANK 2J : 1.2V
set_location_assignment PIN_AK27 -to hps_ddr4_dq[21]            ; # BANK 2J : 1.2V
set_location_assignment PIN_AN27 -to hps_ddr4_dq[23]            ; # BANK 2J : 1.2V
set_location_assignment PIN_AP27 -to hps_ddr4_dq[18]            ; # BANK 2J : 1.2V
set_location_assignment PIN_AL26 -to hps_ddr4_dq[17]            ; # BANK 2J : 1.2V
set_location_assignment PIN_AM26 -to hps_ddr4_dqs_n[2]          ; # BANK 2J : 1.2V
set_location_assignment PIN_AM25 -to hps_ddr4_dqs[2]            ; # BANK 2J : 1.2V
set_location_assignment PIN_AN25 -to hps_ddr4_dq[22]            ; # BANK 2J : 1.2V
set_location_assignment PIN_AP26 -to hps_ddr4_dq[16]            ; # BANK 2J : 1.2V
set_location_assignment PIN_AK26 -to hps_ddr4_dq[19]            ; # BANK 2J : 1.2V
# set_location_assignment PIN_AC24 -to                  ; # BANK 2J : 1.2V
# Group DQ9
set_location_assignment PIN_AD25 -to hps_ddr4_dbi_n[3]          ; # BANK 2J : 1.2V
set_location_assignment PIN_AJ25 -to hps_ddr4_dq[28]            ; # BANK 2J : 1.2V
set_location_assignment PIN_AH27 -to hps_ddr4_dq[27]            ; # BANK 2J : 1.2V
set_location_assignment PIN_AE24 -to hps_ddr4_dq[29]            ; # BANK 2J : 1.2V
set_location_assignment PIN_AH25 -to hps_ddr4_dq[30]            ; # BANK 2J : 1.2V
set_location_assignment PIN_AJ26 -to hps_ddr4_dq[26]            ; # BANK 2J : 1.2V
set_location_assignment PIN_AJ27 -to hps_ddr4_dq[24]            ; # BANK 2J : 1.2V
set_location_assignment PIN_AD24 -to hps_ddr4_dq[25]            ; # BANK 2J : 1.2V
set_location_assignment PIN_AG25 -to hps_ddr4_dqs[3]            ; # BANK 2J : 1.2V
set_location_assignment PIN_AF25 -to hps_ddr4_dqs_n[3]          ; # BANK 2J : 1.2V
set_location_assignment PIN_AH26 -to hps_ddr4_dq[31]            ; # BANK 2J : 1.2V clock n
set_location_assignment PIN_AL27 -to hps_ddr4_pll_ref_clk       ; # BANK 2J : 1.2V clock p
# Group DQ10
set_location_assignment PIN_AL25 -to hps_ddr4_dq[5]             ; # BANK 2J : 1.2V
set_location_assignment PIN_AM23 -to hps_ddr4_dq[6]             ; # BANK 2J : 1.2V
set_location_assignment PIN_AN22 -to hps_ddr4_dqs_n[0]          ; # BANK 2J : 1.2V
set_location_assignment PIN_AM22 -to hps_ddr4_dqs[0]            ; # BANK 2J : 1.2V
set_location_assignment PIN_AL24 -to hps_ddr4_dq[3]             ; # BANK 2J : 1.2V
set_location_assignment PIN_AN24 -to hps_ddr4_dq[1]             ; # BANK 2J : 1.2V
set_location_assignment PIN_AP20 -to hps_ddr4_dq[4]             ; # BANK 2J : 1.2V
set_location_assignment PIN_AN20 -to hps_ddr4_alert_n[0]        ; # BANK 2J : 1.2V
set_location_assignment PIN_AP24 -to hps_ddr4_dbi_n[0]          ; # BANK 2J : 1.2V clock n
set_location_assignment PIN_AN23 -to hps_ddr4_dq[7]             ; # BANK 2J : 1.2V clock p
set_location_assignment PIN_AP22 -to hps_ddr4_dq[2]             ; # BANK 2J : 1.2V
set_location_assignment PIN_AP21 -to hps_ddr4_dq[0]             ; # BANK 2J : 1.2V
# Group DQ11
set_location_assignment PIN_AE23 -to hps_ddr4_dbi_n[1]          ; # BANK 2J : 1.2V
set_location_assignment PIN_AG23 -to hps_ddr4_dq[14]            ; # BANK 2J : 1.2V
set_location_assignment PIN_AJ24 -to hps_ddr4_dq[13]            ; # BANK 2J : 1.2V
set_location_assignment PIN_AL23 -to hps_ddr4_dq[15]            ; # BANK 2J : 1.2V
set_location_assignment PIN_AK24 -to hps_ddr4_dq[11]            ; # BANK 2J : 1.2V
set_location_assignment PIN_AF23 -to hps_ddr4_dq[12]            ; # BANK 2J : 1.2V
set_location_assignment PIN_AH24 -to hps_ddr4_dqs_n[1]          ; # BANK 2J : 1.2V
set_location_assignment PIN_AH23 -to hps_ddr4_dqs[1]            ; # BANK 2J : 1.2V
set_location_assignment PIN_AF24 -to hps_ddr4_dq[9]             ; # BANK 2J : 1.2V
set_location_assignment PIN_AK23 -to hps_ddr4_dq[8]             ; # BANK 2J : 1.2V
set_location_assignment PIN_AK22 -to hps_ddr4_dq[10]            ; # BANK 2J : 1.2V

# Group DQ4
# set_location_assignment PIN_B27 -to                       ; # BANK 2K : 1.2V
# set_location_assignment PIN_C27 -to                       ; # BANK 2K : 1.2V
# set_location_assignment PIN_D24 -to                       ; # BANK 2K : 1.2V
# set_location_assignment PIN_C24 -to                       ; # BANK 2K : 1.2V
# set_location_assignment PIN_A25 -to                       ; # BANK 2K : 1.2V
# set_location_assignment PIN_B25 -to                       ; # BANK 2K : 1.2V
# set_location_assignment PIN_A24 -to                       ; # BANK 2K : 1.2V
# set_location_assignment PIN_A23 -to                       ; # BANK 2K : 1.2V
# Group DQ5
set_location_assignment PIN_C25 -to hps_ddr4_bg[0]              ; # BANK 2K : 1.2V
set_location_assignment PIN_D25 -to hps_ddr4_ba[1]              ; # BANK 2K : 1.2V
set_location_assignment PIN_D26 -to hps_ddr4_ba[0]              ; # BANK 2K : 1.2V
# set_location_assignment PIN_E26 -to                       ; # BANK 2K : 1.2V
set_location_assignment PIN_F23 -to hps_ddr4_a[16]              ; # BANK 2K : 1.2V
set_location_assignment PIN_E22 -to hps_ddr4_a[15]              ; # BANK 2K : 1.2V
set_location_assignment PIN_F24 -to hps_ddr4_a[12]              ; # BANK 2K : 1.2V
set_location_assignment PIN_F25 -to hps_ddr4_oct_rzqin          ; # BANK 2K : 1.2V
# set_location_assignment PIN_AH8 -to clk_a10_1                   ; # BANK 2K : 1.2V clock n
# set_location_assignment PIN_E23 -to clk_a10_0                   ; # BANK 2K : 1.2V clock p
set_location_assignment PIN_D27 -to hps_ddr4_a[14]              ; # BANK 2K : 1.2V
set_location_assignment PIN_E27 -to hps_ddr4_a[13]              ; # BANK 2K : 1.2V
# Group DQ6
set_location_assignment PIN_J22 -to hps_ddr4_a[9]               ; # BANK 2K : 1.2V
set_location_assignment PIN_H22 -to hps_ddr4_a[8]               ; # BANK 2K : 1.2V
set_location_assignment PIN_G25 -to hps_ddr4_a[5]               ; # BANK 2K : 1.2V
set_location_assignment PIN_H25 -to hps_ddr4_a[4]               ; # BANK 2K : 1.2V
set_location_assignment PIN_G22 -to hps_ddr4_a[3]               ; # BANK 2K : 1.2V
set_location_assignment PIN_G23 -to hps_ddr4_a[2]               ; # BANK 2K : 1.2V
set_location_assignment PIN_G27 -to hps_ddr4_a[1]               ; # BANK 2K : 1.2V
set_location_assignment PIN_H27 -to hps_ddr4_a[0]               ; # BANK 2K : 1.2V
set_location_assignment PIN_F26 -to hps_ddr4_a[11]              ; # BANK 2K : 1.2V clock n
set_location_assignment PIN_G26 -to hps_ddr4_a[10]              ; # BANK 2K : 1.2V clock p
set_location_assignment PIN_H23 -to hps_ddr4_a[7]               ; # BANK 2K : 1.2V
set_location_assignment PIN_H24 -to hps_ddr4_a[6]               ; # BANK 2K : 1.2V
# Group DQ7
set_location_assignment PIN_K22 -to hps_ddr4_par[0]             ; # BANK 2K : 1.2V
# set_location_assignment PIN_K23 -to                       ; # BANK 2K : 1.2V
set_location_assignment PIN_M23 -to hps_ddr4_ck_n[0]            ; # BANK 2K : 1.2V
set_location_assignment PIN_L23 -to hps_ddr4_ck[0]              ; # BANK 2K : 1.2V
# set_location_assignment PIN_J26 -to                       ; # BANK 2K : 1.2V
set_location_assignment PIN_J27 -to hps_ddr4_cke[0]             ; # BANK 2K : 1.2V
# set_location_assignment PIN_J25 -to                       ; # BANK 2K : 1.2V
set_location_assignment PIN_K25 -to hps_ddr4_odt[0]             ; # BANK 2K : 1.2V
set_location_assignment PIN_J24 -to hps_ddr4_act_n[0]           ; # BANK 2K : 1.2V
set_location_assignment PIN_K24 -to hps_ddr4_cs_n[0]            ; # BANK 2K : 1.2V
set_location_assignment PIN_L24 -to hps_ddr4_reset_n[0]         ; # BANK 2K : 1.2V
if {$som_ver == "turbo"} {
set_location_assignment PIN_M24 -to hps_ddr4_bg[1]              ; # BANK 2K : 1.2V
}
# set_instance_assignment -name IO_STANDARD "1.2V" -to fmc_std_clk_dir
# set_instance_assignment -name IO_STANDARD "1.2V" -to hps_good
set_instance_assignment -name IO_STANDARD "1.2V" -to hps_rst

# set_instance_assignment -name IO_STANDARD LVDS -to "fmc_bot_clk0_m2c(n)"
# set_instance_assignment -name IO_STANDARD LVDS -to fmc_bot_clk0_m2c
# set_instance_assignment -name IO_STANDARD "1.2V" -to clk_a10_0
# set_instance_assignment -name IO_STANDARD "1.2V" -to clk_a10_1

set_location_assignment PIN_C17 -to hps_io_phery_sdmmc_CMD      ; # BANK 2L : 1.8V
set_location_assignment PIN_B15 -to hps_io_phery_sdmmc_D0       ; # BANK 2L : 1.8V
set_location_assignment PIN_B17 -to hps_io_phery_sdmmc_D1       ; # BANK 2L : 1.8V
set_location_assignment PIN_D16 -to hps_io_phery_sdmmc_D2       ; # BANK 2L : 1.8V
set_location_assignment PIN_A16 -to hps_io_phery_sdmmc_D3       ; # BANK 2L : 1.8V
set_location_assignment PIN_G16 -to hps_io_phery_sdmmc_D4       ; # BANK 2L : 1.8V
set_location_assignment PIN_A15 -to hps_io_phery_sdmmc_D5       ; # BANK 2L : 1.8V
set_location_assignment PIN_C15 -to hps_io_phery_sdmmc_D6       ; # BANK 2L : 1.8V
set_location_assignment PIN_F16 -to hps_io_phery_sdmmc_D7       ; # BANK 2L : 1.8V
set_location_assignment PIN_L19 -to hps_io_phery_emac1_MDC      ; # BANK 2L : 1.8V
set_location_assignment PIN_K19 -to hps_io_phery_emac1_MDIO     ; # BANK 2L : 1.8V
set_location_assignment PIN_G20 -to hps_io_phery_emac1_RX_CLK   ; # BANK 2L : 1.8V
set_location_assignment PIN_F20 -to hps_io_phery_emac1_RX_CTL   ; # BANK 2L : 1.8V
set_location_assignment PIN_F19 -to hps_io_phery_emac1_RXD0     ; # BANK 2L : 1.8V
set_location_assignment PIN_E19 -to hps_io_phery_emac1_RXD1     ; # BANK 2L : 1.8V
set_location_assignment PIN_C20 -to hps_io_phery_emac1_RXD2     ; # BANK 2L : 1.8V
set_location_assignment PIN_D20 -to hps_io_phery_emac1_RXD3     ; # BANK 2L : 1.8V
set_location_assignment PIN_E17 -to hps_io_phery_emac1_TX_CLK   ; # BANK 2L : 1.8V
set_location_assignment PIN_E18 -to hps_io_phery_emac1_TX_CTL   ; # BANK 2L : 1.8V
set_location_assignment PIN_E21 -to hps_io_phery_emac1_TXD0     ; # BANK 2L : 1.8V
set_location_assignment PIN_D21 -to hps_io_phery_emac1_TXD1     ; # BANK 2L : 1.8V
set_location_assignment PIN_D22 -to hps_io_phery_emac1_TXD2     ; # BANK 2L : 1.8V
set_location_assignment PIN_C22 -to hps_io_phery_emac1_TXD3     ; # BANK 2L : 1.8V
set_location_assignment PIN_J21 -to hps_io_phery_emac2_MDC      ; # BANK 2L : 1.8V
set_location_assignment PIN_K21 -to hps_io_phery_emac2_MDIO     ; # BANK 2L : 1.8V
set_location_assignment PIN_A18 -to hps_io_phery_emac2_RX_CLK   ; # BANK 2L : 1.8V
set_location_assignment PIN_B18 -to hps_io_phery_emac2_RX_CTL   ; # BANK 2L : 1.8V
set_location_assignment PIN_B22 -to hps_io_phery_emac2_RXD0     ; # BANK 2L : 1.8V
set_location_assignment PIN_A21 -to hps_io_phery_emac2_RXD1     ; # BANK 2L : 1.8V
set_location_assignment PIN_C19 -to hps_io_phery_emac2_RXD2     ; # BANK 2L : 1.8V
set_location_assignment PIN_D19 -to hps_io_phery_emac2_RXD3     ; # BANK 2L : 1.8V
set_location_assignment PIN_C18 -to hps_io_phery_emac2_TX_CLK   ; # BANK 2L : 1.8V
set_location_assignment PIN_D17 -to hps_io_phery_emac2_TX_CTL   ; # BANK 2L : 1.8V
set_location_assignment PIN_A19 -to hps_io_phery_emac2_TXD0     ; # BANK 2L : 1.8V
set_location_assignment PIN_A20 -to hps_io_phery_emac2_TXD1     ; # BANK 2L : 1.8V
set_location_assignment PIN_B21 -to hps_io_phery_emac2_TXD2     ; # BANK 2L : 1.8V
set_location_assignment PIN_B20 -to hps_io_phery_emac2_TXD3     ; # BANK 2L : 1.8V
set_location_assignment PIN_D15 -to hps_io_phery_sdmmc_CCLK     ; # BANK 2L : 1.8V
set_location_assignment PIN_L21 -to hps_io_phery_i2c0_SCL       ; # BANK 2L : 1.8V
set_location_assignment PIN_M21 -to hps_io_phery_i2c0_SDA       ; # BANK 2L : 1.8V
set_location_assignment PIN_M17 -to hps_io_phery_uart0_CTS_N    ; # BANK 2L : 1.8V
set_location_assignment PIN_M18 -to hps_io_phery_uart0_RTS_N    ; # BANK 2L : 1.8V
set_location_assignment PIN_L18 -to hps_io_phery_uart0_RX       ; # BANK 2L : 1.8V
set_location_assignment PIN_K18 -to hps_io_phery_uart0_TX       ; # BANK 2L : 1.8V
set_location_assignment PIN_J20 -to hps_io_phery_usb1_CLK       ; # BANK 2L : 1.8V
set_location_assignment PIN_H17 -to hps_io_phery_usb1_DATA0     ; # BANK 2L : 1.8V
set_location_assignment PIN_G21 -to hps_io_phery_usb1_DATA1     ; # BANK 2L : 1.8V
set_location_assignment PIN_G18 -to hps_io_phery_usb1_DATA2     ; # BANK 2L : 1.8V
set_location_assignment PIN_H18 -to hps_io_phery_usb1_DATA3     ; # BANK 2L : 1.8V
set_location_assignment PIN_F18 -to hps_io_phery_usb1_DATA4     ; # BANK 2L : 1.8V
set_location_assignment PIN_G17 -to hps_io_phery_usb1_DATA5     ; # BANK 2L : 1.8V
set_location_assignment PIN_J19 -to hps_io_phery_usb1_DATA6     ; # BANK 2L : 1.8V
set_location_assignment PIN_H19 -to hps_io_phery_usb1_DATA7     ; # BANK 2L : 1.8V
set_location_assignment PIN_J17 -to hps_io_phery_usb1_DIR       ; # BANK 2L : 1.8V
set_location_assignment PIN_F21 -to hps_io_phery_usb1_NXT       ; # BANK 2L : 1.8V
set_location_assignment PIN_H20 -to hps_io_phery_usb1_STP       ; # BANK 2L : 1.8V
set_location_assignment PIN_F15 -to hps_usr_led_g_n             ; # BANK 2L : 1.8V
set_location_assignment PIN_H15 -to hps_usr_led_r_n             ; # BANK 2L : 1.8V

set_instance_assignment -name IO_STANDARD "1.8V" -to hps_io_phery_sdmmc_CMD
set_instance_assignment -name IO_STANDARD "1.8V" -to hps_io_phery_sdmmc_D0
set_instance_assignment -name IO_STANDARD "1.8V" -to hps_io_phery_sdmmc_D1
set_instance_assignment -name IO_STANDARD "1.8V" -to hps_io_phery_sdmmc_D2
set_instance_assignment -name IO_STANDARD "1.8V" -to hps_io_phery_sdmmc_D3
set_instance_assignment -name IO_STANDARD "1.8V" -to hps_io_phery_sdmmc_D4
set_instance_assignment -name IO_STANDARD "1.8V" -to hps_io_phery_sdmmc_D5
set_instance_assignment -name IO_STANDARD "1.8V" -to hps_io_phery_sdmmc_D6
set_instance_assignment -name IO_STANDARD "1.8V" -to hps_io_phery_sdmmc_D7
set_instance_assignment -name IO_STANDARD "1.8V" -to hps_io_phery_emac1_MDC
set_instance_assignment -name IO_STANDARD "1.8V" -to hps_io_phery_emac1_MDIO
set_instance_assignment -name IO_STANDARD "1.8V" -to hps_io_phery_emac1_RX_CLK
set_instance_assignment -name IO_STANDARD "1.8V" -to hps_io_phery_emac1_RX_CTL
set_instance_assignment -name IO_STANDARD "1.8V" -to hps_io_phery_emac1_RXD0
set_instance_assignment -name IO_STANDARD "1.8V" -to hps_io_phery_emac1_RXD2
set_instance_assignment -name IO_STANDARD "1.8V" -to hps_io_phery_emac1_RXD3
set_instance_assignment -name IO_STANDARD "1.8V" -to hps_io_phery_emac1_TX_CLK
set_instance_assignment -name IO_STANDARD "1.8V" -to hps_io_phery_emac1_TX_CTL
set_instance_assignment -name IO_STANDARD "1.8V" -to hps_io_phery_emac1_TXD0
set_instance_assignment -name IO_STANDARD "1.8V" -to hps_io_phery_emac1_TXD1
set_instance_assignment -name IO_STANDARD "1.8V" -to hps_io_phery_emac1_TXD2
set_instance_assignment -name IO_STANDARD "1.8V" -to hps_io_phery_emac1_TXD3
set_instance_assignment -name IO_STANDARD "1.8V" -to hps_io_phery_emac2_MDC
set_instance_assignment -name IO_STANDARD "1.8V" -to hps_io_phery_emac2_MDIO
set_instance_assignment -name IO_STANDARD "1.8V" -to hps_io_phery_emac2_RX_CLK
set_instance_assignment -name IO_STANDARD "1.8V" -to hps_io_phery_emac2_RX_CTL
set_instance_assignment -name IO_STANDARD "1.8V" -to hps_io_phery_emac2_RXD0
set_instance_assignment -name IO_STANDARD "1.8V" -to hps_io_phery_emac2_RXD1
set_instance_assignment -name IO_STANDARD "1.8V" -to hps_io_phery_emac2_RXD2
set_instance_assignment -name IO_STANDARD "1.8V" -to hps_io_phery_emac2_RXD3
set_instance_assignment -name IO_STANDARD "1.8V" -to hps_io_phery_emac2_TX_CLK
set_instance_assignment -name IO_STANDARD "1.8V" -to hps_io_phery_emac2_TX_CTL
set_instance_assignment -name IO_STANDARD "1.8V" -to hps_io_phery_emac2_TXD0
set_instance_assignment -name IO_STANDARD "1.8V" -to hps_io_phery_emac2_TXD1
set_instance_assignment -name IO_STANDARD "1.8V" -to hps_io_phery_emac2_TXD2
set_instance_assignment -name IO_STANDARD "1.8V" -to hps_io_phery_emac2_TXD3
set_instance_assignment -name IO_STANDARD "1.8V" -to hps_io_phery_sdmmc_CCLK
set_instance_assignment -name IO_STANDARD "1.8V" -to hps_io_phery_i2c0_SCL
set_instance_assignment -name IO_STANDARD "1.8V" -to hps_io_phery_i2c0_SDA
set_instance_assignment -name IO_STANDARD "1.8V" -to hps_io_phery_uart0_CTS_N
set_instance_assignment -name IO_STANDARD "1.8V" -to hps_io_phery_uart0_RTS_N
set_instance_assignment -name IO_STANDARD "1.8V" -to hps_io_phery_uart0_RX
set_instance_assignment -name IO_STANDARD "1.8V" -to hps_io_phery_uart0_TX
set_instance_assignment -name IO_STANDARD "1.8V" -to hps_io_phery_usb1_CLK
set_instance_assignment -name IO_STANDARD "1.8V" -to hps_io_phery_emac1_RXD1
set_instance_assignment -name IO_STANDARD "1.8V" -to hps_io_phery_usb1_DATA0
set_instance_assignment -name IO_STANDARD "1.8V" -to hps_io_phery_usb1_DATA1
set_instance_assignment -name IO_STANDARD "1.8V" -to hps_io_phery_usb1_DATA2
set_instance_assignment -name IO_STANDARD "1.8V" -to hps_io_phery_usb1_DATA3
set_instance_assignment -name IO_STANDARD "1.8V" -to hps_io_phery_usb1_DATA4
set_instance_assignment -name IO_STANDARD "1.8V" -to hps_io_phery_usb1_DATA5
set_instance_assignment -name IO_STANDARD "1.8V" -to hps_io_phery_usb1_DATA6
set_instance_assignment -name IO_STANDARD "1.8V" -to hps_io_phery_usb1_DATA7
set_instance_assignment -name IO_STANDARD "1.8V" -to hps_io_phery_usb1_DIR
set_instance_assignment -name IO_STANDARD "1.8V" -to hps_io_phery_usb1_NXT
set_instance_assignment -name IO_STANDARD "1.8V" -to hps_io_phery_usb1_STP
set_instance_assignment -name IO_STANDARD "1.8V" -to hps_usr_led_g_n
set_instance_assignment -name IO_STANDARD "1.8V" -to hps_usr_led_r_n

# Group DQ60
set_location_assignment PIN_AM3 -to ddr4_dq[0]                  ; # BANK 3A : 1.2V
set_location_assignment PIN_AL6 -to ddr4_dq[1]                  ; # BANK 3A : 1.2V
set_location_assignment PIN_AL3 -to ddr4_dq[2]                  ; # BANK 3A : 1.2V
set_location_assignment PIN_AM5 -to ddr4_dq[3]                  ; # BANK 3A : 1.2V
set_location_assignment PIN_AP4 -to ddr4_dq[4]                  ; # BANK 3A : 1.2V
set_location_assignment PIN_AK6 -to ddr4_dq[5]                 ; # BANK 3A : 1.2V
set_location_assignment PIN_AM2 -to ddr4_dqs[0](n)           ; # BANK 3A : 1.2V
set_location_assignment PIN_AM1 -to ddr4_dqs[0]                ; # BANK 3A : 1.2V
set_location_assignment PIN_AN4 -to ddr4_dq[6]                 ; # BANK 3A : 1.2V
set_location_assignment PIN_AL4 -to ddr4_dq[7]                 ; # BANK 3A : 1.2V
set_location_assignment PIN_AM6 -to ddr4_dbi_n[0]              ; # BANK 3A : 1.2V
#set_location_assignment PIN_AH4 -to ddr4_alert_n[0]            ; # BANK 3A : 1.2V
# Group DQ61
set_location_assignment PIN_J25 -to led_usr_g_n                   ; # BANK 3A : 1.2V
set_location_assignment PIN_J26 -to led_usr_r_n                   ; # BANK 3A : 1.2V
set_location_assignment PIN_AG7 -to lnk_f2m_dat                 ; # BANK 3A : 1.2V
set_location_assignment PIN_AH7 -to lnk_m2f_dat                 ; # BANK 3A : 1.2V
set_location_assignment PIN_AK8 -to lnk_m2f_rst                 ; # BANK 3A : 1.2V
# set_location_assignment PIN_AG1 -to fmc_std_scl                 ; # BANK 3A : 1.2V
# set_location_assignment PIN_AK3 -to fmc_std_sda                 ; # BANK 3A : 1.2V
set_location_assignment PIN_AJ7 -to ddr4_oct_rzqin              ; # BANK 3A : 1.2V
#set_location_assignment PIN_AH5 -to fmc_bot_la_io_in[0]         ; # BANK 3A : 1.2V
#set_location_assignment PIN_AJ5 -to fmc_bot_la_io_out[0]        ; # BANK 3A : 1.2V
set_location_assignment PIN_AJ9 -to clk_25mhz_fpga              ; # BANK 3A : 1.2V clock p
set_instance_assignment -name IO_STANDARD "1.2V" -to clk_25mhz_fpga
# Group DQ62
set_location_assignment PIN_AH10 -to ddr4_dq[16]                 ; # BANK 3A : 1.2V
set_location_assignment PIN_AE8 -to ddr4_dq[17]                 ; # BANK 3A : 1.2V
set_location_assignment PIN_AF10 -to ddr4_dqs[2](n)            ; # BANK 3A : 1.2V
set_location_assignment PIN_AG10 -to ddr4_dqs[2]                 ; # BANK 3A : 1.2V
set_location_assignment PIN_AG11 -to ddr4_dq[18]                 ; # BANK 3A : 1.2V
set_location_assignment PIN_AF9 -to ddr4_dq[19]                 ; # BANK 3A : 1.2V
set_location_assignment PIN_AH9 -to ddr4_dq[20]                 ; # BANK 3A : 1.2V
set_location_assignment PIN_AE11 -to ddr4_dq[21]                 ; # BANK 3A : 1.2V
set_location_assignment PIN_AF8 -to ddr4_dq[22]                 ; # BANK 3A : 1.2V
set_location_assignment PIN_AF11 -to ddr4_dq[23]                 ; # BANK 3A : 1.2V
set_location_assignment PIN_AE9 -to ddr4_dbi_n[2]               ; # BANK 3A : 1.2V clock n
set_location_assignment PIN_AL5 -to ddr4_pll_ref_clk            ; # BANK 3A : 1.2V clock p
# Group DQ63
set_location_assignment PIN_AB5 -to ddr4_dq[24]                 ; # BANK 3A : 1.2V
set_location_assignment PIN_AB11 -to ddr4_dq[25]                 ; # BANK 3A : 1.2V
set_location_assignment PIN_AD4 -to ddr4_dq[26]                 ; # BANK 3A : 1.2V
set_location_assignment PIN_AB6 -to ddr4_dq[27]                 ; # BANK 3A : 1.2V
set_location_assignment PIN_AD2 -to ddr4_dq[28]                 ; # BANK 3A : 1.2V
set_location_assignment PIN_AB10 -to ddr4_dq[29]                 ; # BANK 3A : 1.2V
set_location_assignment PIN_AB7 -to ddr4_dqs[3](n)            ; # BANK 3A : 1.2V
set_location_assignment PIN_AB8 -to ddr4_dqs[3]                 ; # BANK 3A : 1.2V
set_location_assignment PIN_AE4 -to ddr4_dq[30]                 ; # BANK 3A : 1.2V
set_location_assignment PIN_AC5 -to ddr4_dq[31]                 ; # BANK 3A : 1.2V
set_location_assignment PIN_AD1 -to ddr4_dbi_n[3]               ; # BANK 3A : 1.2V

set_instance_assignment -name IO_STANDARD "1.2V" -to led_usr_g_n
set_instance_assignment -name IO_STANDARD "1.2V" -to led_usr_r_n
set_instance_assignment -name IO_STANDARD "1.2V" -to lnk_f2m_dat
set_instance_assignment -name IO_STANDARD "1.2V" -to lnk_m2f_dat
set_instance_assignment -name IO_STANDARD "1.2V" -to lnk_m2f_rst
set_instance_assignment -name FAST_OUTPUT_REGISTER "ON" -to lnk_f2m_dat
set_instance_assignment -name FAST_OUTPUT_REGISTER "ON" -to lnk_m2f_dat
# set_instance_assignment -name IO_STANDARD "1.2V" -to fmc_std_scl
# set_instance_assignment -name IO_STANDARD "1.2V" -to fmc_std_sda
if {($som_ver == "turbo") || ($som_ver == "indus")} {
set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_clk0_m2c(n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_clk0_m2c
}

# Group DQ 56
set_location_assignment PIN_AL8 -to ddr4_dq[8]                 ; # BANK 3B : 1.2V
set_location_assignment PIN_AN8 -to ddr4_dq[9]                 ; # BANK 3B : 1.2V
set_location_assignment PIN_AP6 -to ddr4_dq[10]                 ; # BANK 3B : 1.2V
set_location_assignment PIN_AL9 -to ddr4_dq[11]                 ; # BANK 3B : 1.2V
set_location_assignment PIN_AP5 -to ddr4_dq[12]                 ; # BANK 3B : 1.2V
set_location_assignment PIN_AP7 -to ddr4_dq[13]                 ; # BANK 3B : 1.2V
set_location_assignment PIN_AN9 -to ddr4_dqs[1](n)            ; # BANK 3B : 1.2V
set_location_assignment PIN_AP9 -to ddr4_dqs[1]                 ; # BANK 3B : 1.2V
set_location_assignment PIN_AM8 -to ddr4_dq[14]                 ; # BANK 3B : 1.2V
set_location_assignment PIN_AM7 -to ddr4_dq[15]                 ; # BANK 3B : 1.2V
set_location_assignment PIN_AN5 -to ddr4_dbi_n[1]               ; # BANK 3B : 1.2V
# Group DQ 57
set_location_assignment PIN_AC7 -to ddr4_bg[0]                  ; # BANK 3B : 1.2V
set_location_assignment PIN_AD7 -to ddr4_ba[1]                  ; # BANK 3B : 1.2V
set_location_assignment PIN_AD6 -to ddr4_ba[0]                  ; # BANK 3B : 1.2V
# set_location_assignment PIN_AE12 -to hps_good                   ; # BANK 3B : 1.2V
set_location_assignment PIN_AC10 -to ddr4_a[16]                 ; # BANK 3B : 1.2V
set_location_assignment PIN_AC9 -to ddr4_a[15]                  ; # BANK 3B : 1.2V
set_location_assignment PIN_AE7 -to ddr4_a[12]                  ; # BANK 3B : 1.2V
# set_location_assignment PIN_AK7 -to fmc_std_clk_dir             ; # BANK 3B : 1.2V
set_location_assignment PIN_AC8 -to ddr4_a[13]                  ; # BANK 3B : 1.2V
set_location_assignment PIN_AD9 -to ddr4_a[14]                  ; # BANK 3B : 1.2V
# set_location_assignment PIN_AD11 -to fmc_bot_clk1_m2c(n)      ; # BANK 3B : 1.2V clock n
# set_location_assignment PIN_AD10 -to fmc_bot_clk1_m2c           ; # BANK 3B : 1.2V clock p
# Group DQ 58
set_location_assignment PIN_AF5 -to ddr4_a[9]                   ; # BANK 3B : 1.2V
set_location_assignment PIN_AG5 -to ddr4_a[8]                   ; # BANK 3B : 1.2V
set_location_assignment PIN_AE1 -to ddr4_a[5]                   ; # BANK 3B : 1.2V
set_location_assignment PIN_AF1 -to ddr4_a[4]                   ; # BANK 3B : 1.2V
set_location_assignment PIN_AF6 -to ddr4_a[3]                   ; # BANK 3B : 1.2V
set_location_assignment PIN_AG6 -to ddr4_a[2]                   ; # BANK 3B : 1.2V
set_location_assignment PIN_AG3 -to ddr4_a[1]                   ; # BANK 3B : 1.2V
set_location_assignment PIN_AH3 -to ddr4_a[0]                   ; # BANK 3B : 1.2V
set_location_assignment PIN_AE2 -to ddr4_a[10]                  ; # BANK 3B : 1.2V clock p
set_location_assignment PIN_AE3 -to ddr4_a[11]                  ; # BANK 3B : 1.2V clock n
set_location_assignment PIN_AF3 -to ddr4_a[7]                   ; # BANK 3B : 1.2V
set_location_assignment PIN_AF4 -to ddr4_a[6]                   ; # BANK 3B : 1.2V
# Group DQ 59
set_location_assignment PIN_AG2 -to ddr4_par[0]                 ; # BANK 3B : 1.2V
set_location_assignment PIN_A26 -to hps_rst                     ; # BANK 3B : 1.2V
set_location_assignment PIN_AH2 -to ddr4_ck_n[0]                ; # BANK 3B : 1.2V
set_location_assignment PIN_AJ1 -to ddr4_ck[0]                  ; # BANK 3B : 1.2V
set_location_assignment PIN_AJ4 -to ddr4_cke[0]                 ; # BANK 3B : 1.2V
set_location_assignment PIN_AK4 -to ddr4_odt[0]                 ; # BANK 3B : 1.2V
set_location_assignment PIN_AJ2 -to ddr4_act_n[0]               ; # BANK 3B : 1.2V
set_location_assignment PIN_AK2 -to ddr4_cs_n[0]                ; # BANK 3B : 1.2V
set_location_assignment PIN_AK1 -to ddr4_reset_n[0]             ; # BANK 3B : 1.2V
if {$som_ver == "turbo"} {
set_location_assignment PIN_AL1 -to ddr4_bg[1]                  ; # BANK 3B : 1.2V
}

set_instance_assignment -name IO_STANDARD LVDS -to "fmc_std_clk1_m2c(n)"
set_instance_assignment -name IO_STANDARD LVDS -to fmc_std_clk1_m2c

if {($som_ver == "turbo") || ($som_ver == "indus")} {
set_instance_assignment -name IO_STANDARD "1.2V" -to fmc_bot_la_io_out
set_instance_assignment -name IO_STANDARD "1.2V" -to fmc_bot_la_io_in
set_location_assignment PIN_AH5 -to fmc_bot_la_io_in
set_location_assignment PIN_AJ5 -to fmc_bot_la_io_out
}

set_location_assignment PIN_AH4 -to ddr4_alert_n

#============================================================================================================================
# Set Standard XCVR pins.
#============================================================================================================================
proc xcvr_set_rx {pin tag} {
    global som_ver
    set_instance_assignment -name IO_STANDARD "HSSI DIFFERENTIAL I/O" -to $pin -tag $tag
    set_instance_assignment -name XCVR_VCCR_VCCT_VOLTAGE 0_9V -to $pin -tag $tag

    if {$som_ver == "lite"} {
        set_instance_assignment -name XCVR_A10_RX_LINK SR -to $pin -tag $tag
    }
    set_instance_assignment -name XCVR_A10_RX_TERM_SEL R_R1 -to $pin -tag $tag
    set_instance_assignment -name XCVR_A10_RX_ADP_DFE_FXTAP5 RADP_DFE_FXTAP5_0 -to $pin -tag $tag
    set_instance_assignment -name XCVR_A10_RX_ADP_DFE_FXTAP4 RADP_DFE_FXTAP4_0 -to $pin -tag $tag
    set_instance_assignment -name XCVR_A10_RX_ADP_DFE_FXTAP1 RADP_DFE_FXTAP1_0 -to $pin -tag $tag
    set_instance_assignment -name XCVR_A10_RX_ADP_DFE_FXTAP7 RADP_DFE_FXTAP7_0 -to $pin -tag $tag
    set_instance_assignment -name XCVR_A10_RX_ADP_DFE_FXTAP6 RADP_DFE_FXTAP6_0 -to $pin -tag $tag
    set_instance_assignment -name XCVR_A10_RX_ADP_DFE_FXTAP3 RADP_DFE_FXTAP3_0 -to $pin -tag $tag
    set_instance_assignment -name XCVR_A10_RX_ADP_DFE_FXTAP2 RADP_DFE_FXTAP2_0 -to $pin -tag $tag
    set_instance_assignment -name XCVR_A10_RX_ONE_STAGE_ENABLE NON_S1_MODE -to $pin -tag $tag
    if {$som_ver == "lite"} {
        set_instance_assignment -name XCVR_A10_RX_ADP_CTLE_ACGAIN_4S RADP_CTLE_ACGAIN_4S_14 -to $pin -tag $tag
        set_instance_assignment -name XCVR_A10_RX_EQ_DC_GAIN_TRIM STG2_GAIN7 -to $pin -tag $tag
    } else {
    set_instance_assignment -name XCVR_A10_RX_ADP_CTLE_ACGAIN_4S RADP_CTLE_ACGAIN_4S_0 -to $pin -tag $tag
    set_instance_assignment -name XCVR_A10_RX_EQ_DC_GAIN_TRIM NO_DC_GAIN -to $pin -tag $tag
    }

    set_instance_assignment -name XCVR_A10_RX_ADP_VGA_SEL RADP_VGA_SEL_4 -to $pin -tag $tag

    post_message -type info "# XCVR RX settings applied to pin=$pin (with tag=$tag)."
}

proc xcvr_set_tx {pin tag} {
    global som_ver
    set_instance_assignment -name IO_STANDARD "HSSI DIFFERENTIAL I/O" -to $pin -tag $tag
    set_instance_assignment -name XCVR_VCCR_VCCT_VOLTAGE 0_9V -to $pin -tag $tag

    if {$som_ver == "lite"} {
        set_instance_assignment -name XCVR_A10_TX_VOD_OUTPUT_SWING_CTRL 31 -to $pin -tag $tag
    } else {
        set_instance_assignment -name XCVR_A10_TX_VOD_OUTPUT_SWING_CTRL 29 -to $pin -tag $tag
    }

    set_instance_assignment -name XCVR_A10_TX_COMPENSATION_EN ENABLE -to $pin -tag $tag
    set_instance_assignment -name XCVR_A10_TX_PRE_EMP_SWITCHING_CTRL_1ST_POST_TAP 0 -to $pin -tag $tag
    set_instance_assignment -name XCVR_A10_TX_PRE_EMP_SIGN_1ST_POST_TAP FIR_POST_1T_POS -to $pin -tag $tag

    post_message -type info "# XCVR TX settings applied to pin=$pin (with tag=$tag)."
}

#============================================================================================================================
# Set PCIE XCVR pins.
#============================================================================================================================
proc xcvr_set_pcie_rx {pin tag} {
    set_instance_assignment -name IO_STANDARD "HSSI DIFFERENTIAL I/O" -to $pin -tag $tag
    set_instance_assignment -name XCVR_VCCR_VCCT_VOLTAGE 0_9V -to $pin -tag $tag

    set_instance_assignment -name XCVR_A10_RX_TERM_SEL R_R1 -to $pin -tag $tag
    set_instance_assignment -name XCVR_A10_RX_ONE_STAGE_ENABLE NON_S1_MODE -to $pin -tag $tag
    set_instance_assignment -name XCVR_A10_RX_ADP_CTLE_ACGAIN_4S RADP_CTLE_ACGAIN_4S_7 -to $pin -tag $tag
    set_instance_assignment -name XCVR_A10_RX_EQ_DC_GAIN_TRIM STG1_GAIN7 -to $pin -tag $tag
    set_instance_assignment -name XCVR_A10_RX_ADP_VGA_SEL RADP_VGA_SEL_4 -to $pin -tag $tag

    post_message -type info "# XCVR PCIe RX settings applied to pin=$pin (with tag=$tag)."
}

proc xcvr_set_pcie_tx {pin tag} {
    set_instance_assignment -name IO_STANDARD "HSSI DIFFERENTIAL I/O" -to $pin -tag $tag
    set_instance_assignment -name XCVR_VCCR_VCCT_VOLTAGE 0_9V -to $pin -tag $tag

    post_message -type info "# XCVR PCIe TX settings applied to pin=$pin (with tag=$tag)."
}

# FMC LPC
xcvr_set_rx fmc_bot_dp_m2c[0] rxc_pin_fmc_bot_xcvr
xcvr_set_rx fmc_bot_dp_m2c[1] rxc_pin_fmc_bot_xcvr
xcvr_set_rx fmc_bot_dp_m2c[2] rxc_pin_fmc_bot_xcvr
xcvr_set_rx fmc_bot_dp_m2c[3] rxc_pin_fmc_bot_xcvr
xcvr_set_rx fmc_bot_dp_m2c[4] rxc_pin_fmc_bot_xcvr
xcvr_set_rx fmc_bot_dp_m2c[5] rxc_pin_fmc_bot_xcvr

xcvr_set_tx fmc_bot_dp_c2m[0] rxc_pin_fmc_bot_xcvr
xcvr_set_tx fmc_bot_dp_c2m[1] rxc_pin_fmc_bot_xcvr
xcvr_set_tx fmc_bot_dp_c2m[2] rxc_pin_fmc_bot_xcvr
xcvr_set_tx fmc_bot_dp_c2m[3] rxc_pin_fmc_bot_xcvr
xcvr_set_tx fmc_bot_dp_c2m[4] rxc_pin_fmc_bot_xcvr
xcvr_set_tx fmc_bot_dp_c2m[5] rxc_pin_fmc_bot_xcvr

# FMC HPC
if {($som_ver == "turbo") || ($som_ver == "indus")} {
xcvr_set_rx fmc_std_dp_m2c[0] rxc_pin_fmc_std_xcvr
xcvr_set_rx fmc_std_dp_m2c[1] rxc_pin_fmc_std_xcvr
xcvr_set_rx fmc_std_dp_m2c[2] rxc_pin_fmc_std_xcvr
xcvr_set_rx fmc_std_dp_m2c[3] rxc_pin_fmc_std_xcvr
xcvr_set_rx fmc_std_dp_m2c[4] rxc_pin_fmc_std_xcvr
xcvr_set_rx fmc_std_dp_m2c[5] rxc_pin_fmc_std_xcvr
xcvr_set_rx fmc_std_dp_m2c[6] rxc_pin_fmc_std_xcvr
xcvr_set_rx fmc_std_dp_m2c[7] rxc_pin_fmc_std_xcvr
xcvr_set_rx fmc_std_dp_m2c[8] rxc_pin_fmc_std_xcvr
xcvr_set_rx fmc_std_dp_m2c[9] rxc_pin_fmc_std_xcvr

xcvr_set_tx fmc_std_dp_c2m[0] rxc_pin_fmc_std_xcvr
xcvr_set_tx fmc_std_dp_c2m[1] rxc_pin_fmc_std_xcvr
xcvr_set_tx fmc_std_dp_c2m[2] rxc_pin_fmc_std_xcvr
xcvr_set_tx fmc_std_dp_c2m[3] rxc_pin_fmc_std_xcvr
xcvr_set_tx fmc_std_dp_c2m[4] rxc_pin_fmc_std_xcvr
xcvr_set_tx fmc_std_dp_c2m[5] rxc_pin_fmc_std_xcvr
xcvr_set_tx fmc_std_dp_c2m[6] rxc_pin_fmc_std_xcvr
xcvr_set_tx fmc_std_dp_c2m[7] rxc_pin_fmc_std_xcvr
xcvr_set_tx fmc_std_dp_c2m[8] rxc_pin_fmc_std_xcvr
xcvr_set_tx fmc_std_dp_c2m[9] rxc_pin_fmc_std_xcvr
}

# PCIe
xcvr_set_rx pcie_0_rx[0] rxc_pin_pcie_xcvr
xcvr_set_rx pcie_0_rx[1] rxc_pin_pcie_xcvr
xcvr_set_rx pcie_0_rx[2] rxc_pin_pcie_xcvr
xcvr_set_rx pcie_0_rx[3] rxc_pin_pcie_xcvr
xcvr_set_rx pcie_0_rx[4] rxc_pin_pcie_xcvr
xcvr_set_rx pcie_0_rx[5] rxc_pin_pcie_xcvr
xcvr_set_rx pcie_0_rx[6] rxc_pin_pcie_xcvr
xcvr_set_rx pcie_0_rx[7] rxc_pin_pcie_xcvr

xcvr_set_tx pcie_0_tx[0] rxc_pin_pcie_xcvr
xcvr_set_tx pcie_0_tx[1] rxc_pin_pcie_xcvr
xcvr_set_tx pcie_0_tx[2] rxc_pin_pcie_xcvr
xcvr_set_tx pcie_0_tx[3] rxc_pin_pcie_xcvr
xcvr_set_tx pcie_0_tx[4] rxc_pin_pcie_xcvr
xcvr_set_tx pcie_0_tx[5] rxc_pin_pcie_xcvr
xcvr_set_tx pcie_0_tx[6] rxc_pin_pcie_xcvr
xcvr_set_tx pcie_0_tx[7] rxc_pin_pcie_xcvr
