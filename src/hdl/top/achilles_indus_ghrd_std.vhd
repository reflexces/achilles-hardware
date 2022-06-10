----------------------------------------------------------------------------------------------------
-- Copyright (c) ReFLEX CES 2020
--
-- Use of this source code through a simulator and/or a compiler tool
-- is illegal if not authorised through ReFLEX CES License agreement.
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
-- Author      : Dan Negvesky (dnegvesky@reflexces.com)
-- Company     : ReFLEX CES
--               2, rue du gevaudan
--               91047 LISSES
--               FRANCE
--               http://www.reflexces.com
----------------------------------------------------------------------------------------------------
-- Description :
-- GHRD for Achilles rocketboards.org page.
----------------------------------------------------------------------------------------------------
-- Quartus Version      Date            Author               Description
-- 20.1                 05/20/2020      DNE                  Initial release
-- 20.1                 08/28/2020      DNE                  updates to support Partial Reconfig
--                                                           using blink_led module as example PR
--                                                           region
--
-- 22.1                 06/01/2022      DNE                  Major update for scripted flow to
--                                                           support all 3 SOMs.  Moved pll, uart,
--                                                           fpga_ddr4, jtag_src_prb to qsys file.
----------------------------------------------------------------------------------------------------
library ieee;
use     ieee.std_logic_1164.all;
use     ieee.std_logic_unsigned.all;

library achilles_hps;

entity achilles_ghrd is port (

   clk_25mhz_fpga                    : in    std_logic;

-- ############################################################################################################################
--  FMC Top/Bot (HPC)
-- ############################################################################################################################
--   fmc_std_gbtclk0                   : in    std_logic;
--   fmc_std_gbtclk1                   : in    std_logic;
--   fmc_std_dp_m2c                    : in    std_logic_vector(  9 downto  0);
--   fmc_std_dp_c2m                    : out   std_logic_vector(  9 downto  0);
--   fmc_std_clk0_m2c                  : in    std_logic;
--   fmc_std_clk1_m2c                  : out   std_logic;
--   fmc_std_la_i                      : in    std_logic_vector( 16 downto  0);
--   fmc_std_la_o                      : out   std_logic_vector( 16 downto  0);
--   fmc_std_clk2_bidir                : in    std_logic;
--   fmc_std_clk3_bidir                : out   std_logic;
--   fmc_std_ha_i                      : in    std_logic_vector( 11 downto  0);
--   fmc_std_ha_o                      : out   std_logic_vector( 11 downto  0);
--   fmc_std_hb_i                      : in    std_logic_vector( 10 downto  0);
--   fmc_std_hb_o                      : out   std_logic_vector( 10 downto  0);
--	-- fmc_std_scl                       : inout std_logic -- i2c bus is common for both FMC connectors
--	-- fmc_std_sda                       : inout std_logic -- i2c bus is common for both FMC connectors

-- ############################################################################################################################
--  FMC Bot (LPC)
-- ############################################################################################################################
--   fmc_bot_gbtclk0                   : in    std_logic;
--   fmc_bot_gbtclk1                   : in    std_logic;
--   fmc_bot_dp_m2c                    : in    std_logic_vector(  3 downto  0);
--   fmc_bot_dp_c2m                    : out   std_logic_vector(  3 downto  0);
----   fmc_bot_clk0_m2c                  : in    std_logic;
----   fmc_bot_clk1_m2c                  : in    std_logic;
--   fmc_bot_la_i                      : in    std_logic_vector( 15 downto  0);
--   fmc_bot_la_o                      : out   std_logic_vector( 15 downto  0);
----   fmc_bot_la_io_in                  : in    std_logic_vector(  0 downto  0);
----   fmc_bot_la_io_out                 : out   std_logic_vector(  0 downto  0);

-- ############################################################################################################################
--  FPGA <=> MAX
-- ############################################################################################################################
   lnk_m2f_dat                       : in    std_logic;
   lnk_f2m_dat                       : out   std_logic;
   lnk_m2f_rst                       : in    std_logic;
 --   hps_good                          : out   std_logic;
   hps_rst                           : in    std_logic;

-- ############################################################################################################################
--  FPGA DDR4
-- ############################################################################################################################
   ddr4_ck                           : out   std_logic_vector(0 downto 0);                      -- mem_ck
   ddr4_ck_n                         : out   std_logic_vector(0 downto 0);                      -- mem_ck_n
   ddr4_a                            : out   std_logic_vector(16 downto 0);                     -- mem_a
   ddr4_act_n                        : out   std_logic_vector(0 downto 0);                      -- mem_act_n
   ddr4_ba                           : out   std_logic_vector(1 downto 0);                      -- mem_ba
   ddr4_bg                           : out   std_logic_vector(0 downto 0);                      -- mem_bg
   ddr4_cke                          : out   std_logic_vector(0 downto 0);                      -- mem_cke
   ddr4_cs_n                         : out   std_logic_vector(0 downto 0);                      -- mem_cs_n
   ddr4_odt                          : out   std_logic_vector(0 downto 0);                      -- mem_odt
   ddr4_reset_n                      : out   std_logic_vector(0 downto 0);                      -- mem_reset_n
   ddr4_par                          : out   std_logic_vector(0 downto 0);                      -- mem_par
   ddr4_alert_n                      : in    std_logic_vector(0 downto 0)  := (others => 'X');  -- mem_alert_n
   ddr4_dqs                          : inout std_logic_vector(3 downto 0)  := (others => 'X');  -- mem_dqs
   ddr4_dqs_n                        : inout std_logic_vector(3 downto 0)  := (others => 'X');  -- mem_dqs_n
   ddr4_dq                           : inout std_logic_vector(31 downto 0) := (others => 'X');  -- mem_dq
   ddr4_dbi_n                        : inout std_logic_vector(3 downto 0)  := (others => 'X');  -- mem_dbi_n
   ddr4_oct_rzqin                    : in    std_logic                     := 'X';              -- oct_rzqin
   ddr4_pll_ref_clk                  : in    std_logic                     := 'X';              -- clk

-- ############################################################################################################################
--  FX3
-- ############################################################################################################################
--   fx3_slcs_n                        : out   std_logic;                                       --
--   fx3_pktend_n                      : out   std_logic;                                       --
--   fx3_flaga                         : in    std_logic;                                       --
--   fx3_flagb                         : in    std_logic;                                       --
--   fx3_flagc                         : in    std_logic;                                       --
--   fx3_flagd                         : in    std_logic;                                       --
--   fx3_a                             : out   std_logic_vector(1 downto 0);                    --
--   fx3_dq                            : inout std_logic_vector(7 downto 0);                    --
--   fx3_slrd_n                        : out   std_logic;                                       --
--   fx3_slwr_n                        : out   std_logic;                                       --
--   fx3_sloe_n                        : out   std_logic;                                       --
--   fx3_pclk                          : out   std_logic;                                       --

-- ############################################################################################################################
--  HPS DDR4
-- ############################################################################################################################
   hps_ddr4_ck                       : out   std_logic_vector(0 downto 0);                     -- mem_ck
   hps_ddr4_ck_n                     : out   std_logic_vector(0 downto 0);                     -- mem_ck_n
   hps_ddr4_a                        : out   std_logic_vector(16 downto 0);                    -- mem_a
   hps_ddr4_act_n                    : out   std_logic_vector(0 downto 0);                     -- mem_act_n
   hps_ddr4_ba                       : out   std_logic_vector(1 downto 0);                     -- mem_ba
   hps_ddr4_bg                       : out   std_logic_vector(0 downto 0);                     -- mem_bg
   hps_ddr4_cke                      : out   std_logic_vector(0 downto 0);                     -- mem_cke
   hps_ddr4_cs_n                     : out   std_logic_vector(0 downto 0);                     -- mem_cs_n
   hps_ddr4_odt                      : out   std_logic_vector(0 downto 0);                     -- mem_odt
   hps_ddr4_reset_n                  : out   std_logic_vector(0 downto 0);                     -- mem_reset_n
   hps_ddr4_par                      : out   std_logic_vector(0 downto 0);                     -- mem_par
   hps_ddr4_alert_n                  : in    std_logic_vector(0 downto 0)  := (others => 'X'); -- mem_alert_n
   hps_ddr4_dqs                      : inout std_logic_vector(3 downto 0)  := (others => 'X'); -- mem_dqs
   hps_ddr4_dqs_n                    : inout std_logic_vector(3 downto 0)  := (others => 'X'); -- mem_dqs_n
   hps_ddr4_dq                       : inout std_logic_vector(31 downto 0) := (others => 'X'); -- mem_dq
   hps_ddr4_dbi_n                    : inout std_logic_vector(3 downto 0)  := (others => 'X'); -- mem_dbi_n
   hps_ddr4_oct_rzqin                : in    std_logic                     := 'X';             -- oct_rzqin
   hps_ddr4_pll_ref_clk              : in    std_logic                     := 'X';             -- clk

-- ############################################################################################################################
--  HPS peripherals
-- ############################################################################################################################
   hps_io_phery_emac1_TX_CLK         : out   std_logic;                    -- hps_io_phery_emac1_TX_CLK
   hps_io_phery_emac1_TXD0           : out   std_logic;                    -- hps_io_phery_emac1_TXD0
   hps_io_phery_emac1_TXD1           : out   std_logic;                    -- hps_io_phery_emac1_TXD1
   hps_io_phery_emac1_TXD2           : out   std_logic;                    -- hps_io_phery_emac1_TXD2
   hps_io_phery_emac1_TXD3           : out   std_logic;                    -- hps_io_phery_emac1_TXD3
   hps_io_phery_emac1_RX_CTL         : in    std_logic := 'X';             -- hps_io_phery_emac1_RX_CTL
   hps_io_phery_emac1_TX_CTL         : out   std_logic;                    -- hps_io_phery_emac1_TX_CTL
   hps_io_phery_emac1_RX_CLK         : in    std_logic := 'X';             -- hps_io_phery_emac1_RX_CLK
   hps_io_phery_emac1_RXD0           : in    std_logic := 'X';             -- hps_io_phery_emac1_RXD0
   hps_io_phery_emac1_RXD1           : in    std_logic := 'X';             -- hps_io_phery_emac1_RXD1
   hps_io_phery_emac1_RXD2           : in    std_logic := 'X';             -- hps_io_phery_emac1_RXD2
   hps_io_phery_emac1_RXD3           : in    std_logic := 'X';             -- hps_io_phery_emac1_RXD3
   hps_io_phery_emac1_MDIO           : inout std_logic := 'X';             -- hps_io_phery_emac1_MDIO
   hps_io_phery_emac1_MDC            : out   std_logic;                    -- hps_io_phery_emac1_MDC
   
   hps_io_phery_emac2_TX_CLK         : out   std_logic;                    -- hps_io_phery_emac2_TX_CLK
   hps_io_phery_emac2_TXD0           : out   std_logic;                    -- hps_io_phery_emac2_TXD0
   hps_io_phery_emac2_TXD1           : out   std_logic;                    -- hps_io_phery_emac2_TXD1
   hps_io_phery_emac2_TXD2           : out   std_logic;                    -- hps_io_phery_emac2_TXD2
   hps_io_phery_emac2_TXD3           : out   std_logic;                    -- hps_io_phery_emac2_TXD3
   hps_io_phery_emac2_RX_CTL         : in    std_logic := 'X';             -- hps_io_phery_emac2_RX_CTL
   hps_io_phery_emac2_TX_CTL         : out   std_logic;                    -- hps_io_phery_emac2_TX_CTL
   hps_io_phery_emac2_RX_CLK         : in    std_logic := 'X';             -- hps_io_phery_emac2_RX_CLK
   hps_io_phery_emac2_RXD0           : in    std_logic := 'X';             -- hps_io_phery_emac2_RXD0
   hps_io_phery_emac2_RXD1           : in    std_logic := 'X';             -- hps_io_phery_emac2_RXD1
   hps_io_phery_emac2_RXD2           : in    std_logic := 'X';             -- hps_io_phery_emac2_RXD2
   hps_io_phery_emac2_RXD3           : in    std_logic := 'X';             -- hps_io_phery_emac2_RXD3
   hps_io_phery_emac2_MDIO           : inout std_logic := 'X';             -- hps_io_phery_emac2_MDIO
   hps_io_phery_emac2_MDC            : out   std_logic;                    -- hps_io_phery_emac2_MDC
   
   hps_io_phery_sdmmc_CMD            : inout std_logic := 'X';             -- hps_io_phery_sdmmc_CMD
   hps_io_phery_sdmmc_D0             : inout std_logic := 'X';             -- hps_io_phery_sdmmc_D0
   hps_io_phery_sdmmc_D1             : inout std_logic := 'X';             -- hps_io_phery_sdmmc_D1
   hps_io_phery_sdmmc_D2             : inout std_logic := 'X';             -- hps_io_phery_sdmmc_D2
   hps_io_phery_sdmmc_D3             : inout std_logic := 'X';             -- hps_io_phery_sdmmc_D3
   hps_io_phery_sdmmc_D4             : inout std_logic := 'X';             -- hps_io_phery_sdmmc_D4
   hps_io_phery_sdmmc_D5             : inout std_logic := 'X';             -- hps_io_phery_sdmmc_D5
   hps_io_phery_sdmmc_D6             : inout std_logic := 'X';             -- hps_io_phery_sdmmc_D6
   hps_io_phery_sdmmc_D7             : inout std_logic := 'X';             -- hps_io_phery_sdmmc_D7
   hps_io_phery_sdmmc_CCLK           : out   std_logic;                    -- hps_io_phery_sdmmc_CCLK
   
   hps_io_phery_usb1_DATA0           : inout std_logic := 'X';             -- hps_io_phery_usb1_DATA0
   hps_io_phery_usb1_DATA1           : inout std_logic := 'X';             -- hps_io_phery_usb1_DATA1
   hps_io_phery_usb1_DATA2           : inout std_logic := 'X';             -- hps_io_phery_usb1_DATA2
   hps_io_phery_usb1_DATA3           : inout std_logic := 'X';             -- hps_io_phery_usb1_DATA3
   hps_io_phery_usb1_DATA4           : inout std_logic := 'X';             -- hps_io_phery_usb1_DATA4
   hps_io_phery_usb1_DATA5           : inout std_logic := 'X';             -- hps_io_phery_usb1_DATA5
   hps_io_phery_usb1_DATA6           : inout std_logic := 'X';             -- hps_io_phery_usb1_DATA6
   hps_io_phery_usb1_DATA7           : inout std_logic := 'X';             -- hps_io_phery_usb1_DATA7
   hps_io_phery_usb1_CLK             : in    std_logic := 'X';             -- hps_io_phery_usb1_CLK
   hps_io_phery_usb1_STP             : out   std_logic;                    -- hps_io_phery_usb1_STP
   hps_io_phery_usb1_DIR             : in    std_logic := 'X';             -- hps_io_phery_usb1_DIR
   hps_io_phery_usb1_NXT             : in    std_logic := 'X';             -- hps_io_phery_usb1_NXT
   
   hps_io_phery_uart0_RX             : in    std_logic := 'X';             -- hps_io_phery_uart0_RX
   hps_io_phery_uart0_TX             : out   std_logic;                    -- hps_io_phery_uart0_TX
   hps_io_phery_uart0_CTS_N          : in    std_logic := 'X';             -- hps_io_phery_uart0_CTS_N
   hps_io_phery_uart0_RTS_N          : out   std_logic;                    -- hps_io_phery_uart0_RTS_N
   
   hps_io_phery_i2c0_SDA             : inout std_logic := 'X';             -- hps_io_phery_i2c0_SDA
   hps_io_phery_i2c0_SCL             : inout std_logic := 'X';             -- hps_io_phery_i2c0_SCL
   
   hps_usr_led_g_n                   : inout std_logic;
   hps_usr_led_r_n                   : inout std_logic;

-- ############################################################################################################################
--  Misc
-- ############################################################################################################################
   led_usr_g_n                       : out   std_logic;
   led_usr_r_n                       : out   std_logic
--   clk_sync_pwr                      : out   std_logic
    );
end entity achilles_ghrd;

architecture rtl of achilles_ghrd is

-- ============================================================================================================================
--  Constant declarations
-- ============================================================================================================================
   constant C_SYS_CLK_PERIOD           : time      := 10 ns;
   constant C_SYS_CLK_FREQUENCY        : integer   := 100000000;

-- ============================================================================================================================
--  Signal declarations
-- ============================================================================================================================
   -- Resets
   signal s_sys_clk                                    : std_logic;
   signal s_sys_rst                                    : std_logic;
   signal s_sys_rst_n                                  : std_logic;
   signal sb_hps_rst_n                                 : std_logic;
   signal sb_ddr_rst_n                                 : std_logic;
   signal sb_reset_dly                                 : std_logic_vector(1 downto 0);
   signal sb_rst                                       : std_logic := '1';

	-- PLL
   signal sb_pll_locked                                : std_logic;

   -- Tick                                            
   signal s_tick_1s                                    : std_logic;
   signal s_tick_2hz_t                                 : std_logic;
   signal s_tick_8hz                                   : std_logic;
   signal s_tick_8hz_t                                 : std_logic;

   -- DDR4 test
   signal s_fpga_ddr4_status_local_cal_success         : std_logic;
   signal s_fpga_ddr4_status_local_cal_fail            : std_logic;
   signal s_fpga_ddr4_tg_status_traffic_gen_pass       : std_logic;
   signal s_fpga_ddr4_tg_status_traffic_gen_fail       : std_logic;
   signal s_fpga_ddr4_tg_status_traffic_gen_timeout    : std_logic;

   -- FX3 test
   signal s_stat_reading                               : std_logic;
   signal s_stat_writing                               : std_logic;

   -- Debug
   signal s_source                                     : std_logic_vector(127 downto 0);

   -- LED
   signal s_led_usr_r_n                                : std_logic;

component blink_led_default
   port (
      clk            : in std_logic;
      rst            : in std_logic;
      blink_led_out  : out std_logic
   );
end component;

begin

--############################################################################################################################
-- System PLL, LVDS PLL and reset
--############################################################################################################################
blk_clk_n_rst : block is
   constant C_RST_DELAY_NB_BITS    : integer   := 3;

--   signal sb_pll_locked            : std_logic;
--   signal sb_rst                   : std_logic := '1';
   signal sb_rst_dly               : std_logic;
   signal sb_rst_n                 : std_logic;
begin
 -- ============================================================================================================================
 --  PLL reset
 -- ============================================================================================================================
   process (clk_25mhz_fpga)
   begin
      if rising_edge(clk_25mhz_fpga) then
         sb_rst <=  '0';
      end if;
   end process;

-- ============================================================================================================================
--  Delayed reset.
-- ============================================================================================================================
   i_delayed_rst : entity work.delayed_rst generic map
      (NB_BITS => C_RST_DELAY_NB_BITS)          --     integer   := 2   -- number of bits for the internal counter. Ex. 2 will generate a 2**NB_BITS+3 cycles reset
      port map (
         in_rst   => lnk_m2f_rst,
         in_rst_n => sb_pll_locked,             -- in  std_logic := '1' -- asynchronous active low reset (choose only one between active low or high reset).
         out_clk  => clk_25mhz_fpga,            -- in  std_logic        -- clock used to synchronize reset and for counter
         out_rst  => sb_rst_dly                 -- out std_logic        -- synchronous de-asserted active high reset
      );

 -- ============================================================================================================================
 --  Generate reset
 -- ============================================================================================================================
   i_sync_rst : entity work.sync_rst generic map
      (NB_RESET => 1)                --     integer                                     := 1             -- number of reset to synchronize
      port map (
         in_com_rst   => sb_rst_dly,       -- in  std_logic                             := '0'           -- asynchronous active high reset  common to all clock domains /!\ choose only one reset source for each output /!\
         in_rst   (0) => '0',              -- in  std_logic_vector(NB_RESET-1 downto 0) := (others=>'0') -- asynchronous active high resets                            /!\ choose only one reset source for each output /!\
         out_clk  (0) => s_sys_clk,        -- in  std_logic_vector(NB_RESET-1 downto 0)                  -- clocks used to synchronize resets
         out_rst_n(0) => s_sys_rst_n,      -- out std_logic_vector(NB_RESET-1 downto 0)                  -- synchronous de-asserted active low resets
         out_rst  (0) => s_sys_rst         -- out std_logic_vector(NB_RESET-1 downto 0)                  -- synchronous de-asserted active high resets
      );

-- ============================================================================================================================
--  Tick generators and timestamp
-- ============================================================================================================================
    -- 1s
   i_tick_gen_1s : entity work.tick_gen generic map
      (NB_CYCLE => C_SYS_CLK_FREQUENCY)    --     integer   := 160000000 -- generate one 'tick' every NB_CYCLE clock periodes
      port map (
         rst         => s_sys_rst,         -- in  std_logic := '0'       -- asynchronous active high reset
         clk         => s_sys_clk,         -- in  std_logic              -- module and base clock
         tick        => s_tick_1s,         -- out std_logic              -- '1' for one cycle
         tick_toggle => open               -- out std_logic              -- inverted each time
      );
   
   -- 8Hz
   i_tick_gen_8hz : entity work.tick_gen generic map
      (NB_CYCLE => C_SYS_CLK_FREQUENCY/8)  --     integer   := 160000000 -- generate one 'tick' every NB_CYCLE clock periodes
      port map (
         rst         => s_sys_rst,         -- in  std_logic := '0'       -- asynchronous active high reset
         clk         => s_sys_clk,         -- in  std_logic              -- module and base clock
         tick        => s_tick_8hz,        -- out std_logic              -- '1' for one cycle
         tick_toggle => open               -- out std_logic              -- inverted each time
      );

end block blk_clk_n_rst;

-- remove FPGA DDR4 due to Quartus Prime Pro v20.1 fitter error
-- ############################################################################################################################
--  FPGA DDR4
-- ############################################################################################################################
--blk_fpga_ddr4 : block is
--begin    
--   i_fpga_ddr4 : entity fpga_ddr4.fpga_ddr4
--   
--   port map (
--	  fpga_ddr4_emif_pll_ref_clk_clk          => ddr4_pll_ref_clk,                          -- fpga_ddr4_emif_pll_ref_clk.clk
--	  fpga_ddr4_emif_oct_oct_rzqin            => ddr4_oct_rzqin,                            --         fpga_ddr4_emif_oct.oct_rzqin
--	  fpga_ddr4_emif_mem_mem_ck               => ddr4_ck,                                   --         fpga_ddr4_emif_mem.mem_ck
--	  fpga_ddr4_emif_mem_mem_ck_n             => ddr4_ck_n,                                 --                           .mem_ck_n
--	  fpga_ddr4_emif_mem_mem_a                => ddr4_a,                                    --                           .mem_a
--	  fpga_ddr4_emif_mem_mem_act_n            => ddr4_act_n,                                --                           .mem_act_n
--	  fpga_ddr4_emif_mem_mem_ba               => ddr4_ba,                                   --                           .mem_ba
--	  fpga_ddr4_emif_mem_mem_bg               => ddr4_bg,                                   --                           .mem_bg
--	  fpga_ddr4_emif_mem_mem_cke              => ddr4_cke,                                  --                           .mem_cke
--	  fpga_ddr4_emif_mem_mem_cs_n             => ddr4_cs_n,                                 --                           .mem_cs_n
--	  fpga_ddr4_emif_mem_mem_odt              => ddr4_odt,                                  --                           .mem_odt
--	  fpga_ddr4_emif_mem_mem_reset_n          => ddr4_reset_n,                              --                           .mem_reset_n
--	  fpga_ddr4_emif_mem_mem_par              => ddr4_par,                                  --                           .mem_par
--	  fpga_ddr4_emif_mem_mem_alert_n          => ddr4_alert_n,                              --                           .mem_alert_n
--	  fpga_ddr4_emif_mem_mem_dqs              => ddr4_dqs,                                  --                           .mem_dqs
--	  fpga_ddr4_emif_mem_mem_dqs_n            => ddr4_dqs_n,                                --                           .mem_dqs_n
--	  fpga_ddr4_emif_mem_mem_dq               => ddr4_dq,                                   --                           .mem_dq
--	  fpga_ddr4_emif_mem_mem_dbi_n            => ddr4_dbi_n,                                --                           .mem_dbi_n
--	  fpga_ddr4_emif_status_local_cal_success => s_fpga_ddr4_status_local_cal_success,      --      fpga_ddr4_emif_status.local_cal_success
--	  fpga_ddr4_emif_status_local_cal_fail    => s_fpga_ddr4_status_local_cal_fail,         --                           .local_cal_fail
--	  fpga_ddr4_global_reset_reset_n          => sb_ddr_rst_n,                              --     fpga_ddr4_global_reset.reset_n
--	  fpga_ddr4_tg_ninit_done_ninit_done      => '0',                                       --    fpga_ddr4_tg_ninit_done.ninit_done
--	  fpga_ddr4_tg_status_traffic_gen_pass    => s_fpga_ddr4_tg_status_traffic_gen_pass,    --        fpga_ddr4_tg_status.traffic_gen_pass
--	  fpga_ddr4_tg_status_traffic_gen_fail    => s_fpga_ddr4_tg_status_traffic_gen_fail,    --                           .traffic_gen_fail
--	  fpga_ddr4_tg_status_traffic_gen_timeout => s_fpga_ddr4_tg_status_traffic_gen_timeout  --                           .traffic_gen_timeout
--   );  
--end block blk_fpga_ddr4;

-- ############################################################################################################################
--  Hard Processor System (HPS)
-- ############################################################################################################################
blk_hps : block is

begin

-- ============================================================================================================================
--  Reset sequence for HPS and DDR HPS
-- ============================================================================================================================
   process (s_sys_rst, s_sys_clk)
      begin
      if s_sys_rst='1' then
          sb_reset_dly    <= (others=>'1');
      elsif rising_edge(s_sys_clk) then
         if s_tick_8hz='1' then
            sb_reset_dly <= sb_reset_dly(sb_reset_dly'high-1 downto 0) & '0';
         end if;
      end if;
   end process;
   
   sb_ddr_rst_n <= not(sb_reset_dly(0)); -- de-assert HPS DDR reset 125ms after reset from M10 (which is de-assert after Si5341 cnfiguration)
   sb_hps_rst_n <= not(sb_reset_dly(1)); -- de-assert HPS     reset 125ms after HPS DDR reset

      i_achilles_hps : entity achilles_hps.achilles_hps
         port map (
            sys_pll_reset_reset                                    => sb_rst,                                           --                    sys_pll_reset.reset
            sys_pll_ref_clk_clk                                    => clk_25mhz_fpga,                                   --                  sys_clk_ref_clk.clk
            sys_pll_locked_export                                  => sb_pll_locked,                                    --                   sys_pll_locked.export
                                                                   
            hps_sys_rst_n_reset_n                                  => s_sys_rst_n,                                      --                    hps_sys_rst_n.reset_n
            hps_f2h_cold_reset_req_reset_n                         => not(hps_rst),                                     --           hps_f2h_cold_reset_req.reset_n
            hps_f2h_warm_reset_req_reset_n                         => not(hps_rst),                                     --           hps_f2h_warm_reset_req.reset_n
            hps_h2f_user0_clock_clk                                => open,                                             --              hps_h2f_user0_clock.clk
                                                                   
            hps_io_hps_io_phery_emac1_TX_CLK                       => hps_io_phery_emac1_TX_CLK,                        --                           hps_io.hps_io_phery_emac1_TX_CLK
            hps_io_hps_io_phery_emac1_TXD0                         => hps_io_phery_emac1_TXD0,                          --                                 .hps_io_phery_emac1_TXD0
            hps_io_hps_io_phery_emac1_TXD1                         => hps_io_phery_emac1_TXD1,                          --                                 .hps_io_phery_emac1_TXD1
            hps_io_hps_io_phery_emac1_TXD2                         => hps_io_phery_emac1_TXD2,                          --                                 .hps_io_phery_emac1_TXD2
            hps_io_hps_io_phery_emac1_TXD3                         => hps_io_phery_emac1_TXD3,                          --                                 .hps_io_phery_emac1_TXD3
            hps_io_hps_io_phery_emac1_RX_CTL                       => hps_io_phery_emac1_RX_CTL,                        --                                 .hps_io_phery_emac1_RX_CTL
            hps_io_hps_io_phery_emac1_TX_CTL                       => hps_io_phery_emac1_TX_CTL,                        --                                 .hps_io_phery_emac1_TX_CTL
            hps_io_hps_io_phery_emac1_RX_CLK                       => hps_io_phery_emac1_RX_CLK,                        --                                 .hps_io_phery_emac1_RX_CLK
            hps_io_hps_io_phery_emac1_RXD0                         => hps_io_phery_emac1_RXD0,                          --                                 .hps_io_phery_emac1_RXD0
            hps_io_hps_io_phery_emac1_RXD1                         => hps_io_phery_emac1_RXD1,                          --                                 .hps_io_phery_emac1_RXD1
            hps_io_hps_io_phery_emac1_RXD2                         => hps_io_phery_emac1_RXD2,                          --                                 .hps_io_phery_emac1_RXD2
            hps_io_hps_io_phery_emac1_RXD3                         => hps_io_phery_emac1_RXD3,                          --                                 .hps_io_phery_emac1_RXD3
            hps_io_hps_io_phery_emac1_MDIO                         => hps_io_phery_emac1_MDIO,                          --                                 .hps_io_phery_emac1_MDIO
            hps_io_hps_io_phery_emac1_MDC                          => hps_io_phery_emac1_MDC,                           --                                 .hps_io_phery_emac1_MDC
                                                                   
            hps_io_hps_io_phery_emac2_TX_CLK                       => hps_io_phery_emac2_TX_CLK,                        --                                 .hps_io_phery_emac2_TX_CLK
            hps_io_hps_io_phery_emac2_TXD0                         => hps_io_phery_emac2_TXD0,                          --                                 .hps_io_phery_emac2_TXD0
            hps_io_hps_io_phery_emac2_TXD1                         => hps_io_phery_emac2_TXD1,                          --                                 .hps_io_phery_emac2_TXD1
            hps_io_hps_io_phery_emac2_TXD2                         => hps_io_phery_emac2_TXD2,                          --                                 .hps_io_phery_emac2_TXD2
            hps_io_hps_io_phery_emac2_TXD3                         => hps_io_phery_emac2_TXD3,                          --                                 .hps_io_phery_emac2_TXD3
            hps_io_hps_io_phery_emac2_RX_CTL                       => hps_io_phery_emac2_RX_CTL,                        --                                 .hps_io_phery_emac2_RX_CTL
            hps_io_hps_io_phery_emac2_TX_CTL                       => hps_io_phery_emac2_TX_CTL,                        --                                 .hps_io_phery_emac2_TX_CTL
            hps_io_hps_io_phery_emac2_RX_CLK                       => hps_io_phery_emac2_RX_CLK,                        --                                 .hps_io_phery_emac2_RX_CLK
            hps_io_hps_io_phery_emac2_RXD0                         => hps_io_phery_emac2_RXD0,                          --                                 .hps_io_phery_emac2_RXD0
            hps_io_hps_io_phery_emac2_RXD1                         => hps_io_phery_emac2_RXD1,                          --                                 .hps_io_phery_emac2_RXD1
            hps_io_hps_io_phery_emac2_RXD2                         => hps_io_phery_emac2_RXD2,                          --                                 .hps_io_phery_emac2_RXD2
            hps_io_hps_io_phery_emac2_RXD3                         => hps_io_phery_emac2_RXD3,                          --                                 .hps_io_phery_emac2_RXD3
            hps_io_hps_io_phery_emac2_MDIO                         => hps_io_phery_emac2_MDIO,                          --                                 .hps_io_phery_emac2_MDIO
            hps_io_hps_io_phery_emac2_MDC                          => hps_io_phery_emac2_MDC,                           --                                 .hps_io_phery_emac2_MDC
                                                                   
            hps_io_hps_io_phery_sdmmc_CMD                          => hps_io_phery_sdmmc_CMD,                           --                                 .hps_io_phery_sdmmc_CMD
            hps_io_hps_io_phery_sdmmc_D0                           => hps_io_phery_sdmmc_D0,                            --                                 .hps_io_phery_sdmmc_D0
            hps_io_hps_io_phery_sdmmc_D1                           => hps_io_phery_sdmmc_D1,                            --                                 .hps_io_phery_sdmmc_D1
            hps_io_hps_io_phery_sdmmc_D2                           => hps_io_phery_sdmmc_D2,                            --                                 .hps_io_phery_sdmmc_D2
            hps_io_hps_io_phery_sdmmc_D3                           => hps_io_phery_sdmmc_D3,                            --                                 .hps_io_phery_sdmmc_D3
            hps_io_hps_io_phery_sdmmc_D4                           => hps_io_phery_sdmmc_D4,                            --                                 .hps_io_phery_sdmmc_D4
            hps_io_hps_io_phery_sdmmc_D5                           => hps_io_phery_sdmmc_D5,                            --                                 .hps_io_phery_sdmmc_D5
            hps_io_hps_io_phery_sdmmc_D6                           => hps_io_phery_sdmmc_D6,                            --                                 .hps_io_phery_sdmmc_D6
            hps_io_hps_io_phery_sdmmc_D7                           => hps_io_phery_sdmmc_D7,                            --                                 .hps_io_phery_sdmmc_D7
            hps_io_hps_io_phery_sdmmc_CCLK                         => hps_io_phery_sdmmc_CCLK,                          --                                 .hps_io_phery_sdmmc_CCLK
                                                                                                                        
            hps_io_hps_io_phery_usb1_DATA0                         => hps_io_phery_usb1_DATA0,                          --                                 .hps_io_phery_usb1_DATA0
            hps_io_hps_io_phery_usb1_DATA1                         => hps_io_phery_usb1_DATA1,                          --                                 .hps_io_phery_usb1_DATA1
            hps_io_hps_io_phery_usb1_DATA2                         => hps_io_phery_usb1_DATA2,                          --                                 .hps_io_phery_usb1_DATA2
            hps_io_hps_io_phery_usb1_DATA3                         => hps_io_phery_usb1_DATA3,                          --                                 .hps_io_phery_usb1_DATA3
            hps_io_hps_io_phery_usb1_DATA4                         => hps_io_phery_usb1_DATA4,                          --                                 .hps_io_phery_usb1_DATA4
            hps_io_hps_io_phery_usb1_DATA5                         => hps_io_phery_usb1_DATA5,                          --                                 .hps_io_phery_usb1_DATA5
            hps_io_hps_io_phery_usb1_DATA6                         => hps_io_phery_usb1_DATA6,                          --                                 .hps_io_phery_usb1_DATA6
            hps_io_hps_io_phery_usb1_DATA7                         => hps_io_phery_usb1_DATA7,                          --                                 .hps_io_phery_usb1_DATA7
            hps_io_hps_io_phery_usb1_CLK                           => hps_io_phery_usb1_CLK,                            --                                 .hps_io_phery_usb1_CLK
            hps_io_hps_io_phery_usb1_STP                           => hps_io_phery_usb1_STP,                            --                                 .hps_io_phery_usb1_STP
            hps_io_hps_io_phery_usb1_DIR                           => hps_io_phery_usb1_DIR,                            --                                 .hps_io_phery_usb1_DIR
            hps_io_hps_io_phery_usb1_NXT                           => hps_io_phery_usb1_NXT,                            --                                 .hps_io_phery_usb1_NXT
                                                                   
            hps_io_hps_io_phery_uart0_RX                           => hps_io_phery_uart0_RX,                            --                                 .hps_io_phery_uart0_RX
            hps_io_hps_io_phery_uart0_TX                           => hps_io_phery_uart0_TX,                            --                                 .hps_io_phery_uart0_TX
            hps_io_hps_io_phery_uart0_CTS_N                        => hps_io_phery_uart0_CTS_N,                         --                                 .hps_io_phery_uart0_CTS_N
            hps_io_hps_io_phery_uart0_RTS_N                        => hps_io_phery_uart0_RTS_N,                         --                                 .hps_io_phery_uart0_RTS_N                                                       
   
            hps_io_hps_io_phery_i2c0_SDA                           => hps_io_phery_i2c0_SDA,                            --                                 .hps_io_phery_i2c0_SDA
            hps_io_hps_io_phery_i2c0_SCL                           => hps_io_phery_i2c0_SCL,                            --                                 .hps_io_phery_i2c0_SCL
                                                                   
            hps_io_hps_io_gpio_gpio2_io12                          => hps_usr_led_g_n,                                  --                                 .hps_io_gpio_gpio2_io12
            hps_io_hps_io_gpio_gpio2_io13                          => hps_usr_led_r_n,                                  --                                 .hps_io_gpio_gpio2_io13
                                                                   
            hps_out_rstn_reset_n                                   => open,                                             --                     hps_out_rstn.reset_n
                                                                   
            hps_f2h_irq0_irq                                       => (others => '0'),                                  --                     hps_f2h_irq0.irq
            hps_f2h_irq1_irq                                       => (others => '0'),                                  --                     hps_f2h_irq1.irq
                                                                   
            hps_ddr_rstn_reset_n                                   => sb_ddr_rst_n,                                     --                     hps_ddr_rstn.reset_n
            hps_ddr_ref_clk_clk                                    => hps_ddr4_pll_ref_clk,                             --                  hps_ddr_ref_clk.clk
            hps_ddr_oct_oct_rzqin                                  => hps_ddr4_oct_rzqin,                               --                      hps_ddr_oct.oct_rzqin
            hps_ddr_mem_mem_ck                                     => hps_ddr4_ck,                                      --                      hps_ddr_mem.mem_ck
            hps_ddr_mem_mem_ck_n                                   => hps_ddr4_ck_n,                                    --                                 .mem_ck_n
            hps_ddr_mem_mem_a                                      => hps_ddr4_a,                                       --                                 .mem_a
            hps_ddr_mem_mem_act_n                                  => hps_ddr4_act_n,                                   --                                 .mem_act_n
            hps_ddr_mem_mem_ba                                     => hps_ddr4_ba,                                      --                                 .mem_ba
            hps_ddr_mem_mem_bg                                     => hps_ddr4_bg,                                      --                                 .mem_bg
            hps_ddr_mem_mem_cke                                    => hps_ddr4_cke,                                     --                                 .mem_cke
            hps_ddr_mem_mem_cs_n                                   => hps_ddr4_cs_n,                                    --                                 .mem_cs_n
            hps_ddr_mem_mem_odt                                    => hps_ddr4_odt,                                     --                                 .mem_odt
            hps_ddr_mem_mem_reset_n                                => hps_ddr4_reset_n,                                 --                                 .mem_reset_n
            hps_ddr_mem_mem_par                                    => hps_ddr4_par,                                     --                                 .mem_par
            hps_ddr_mem_mem_alert_n                                => hps_ddr4_alert_n,                                 --                                 .mem_alert_n
            hps_ddr_mem_mem_dqs                                    => hps_ddr4_dqs,                                     --                                 .mem_dqs
            hps_ddr_mem_mem_dqs_n                                  => hps_ddr4_dqs_n,                                   --                                 .mem_dqs_n
            hps_ddr_mem_mem_dq                                     => hps_ddr4_dq,                                      --                                 .mem_dq
            hps_ddr_mem_mem_dbi_n                                  => hps_ddr4_dbi_n,                                   --                                 .mem_dbi_n
                                                                   
            jtag_src_prb_source                                    => s_source,                                         --             jtag_src_prb_sources.source
            jtag_src_prb_probe                                     => (others => '0'),                                  --              jtag_src_prb_probes.probe
                                                                   
            pio_led_export                                         => led_usr_g_n,                                      --                          pio_led.export

            rs232_uart_interrupt_irq                               => open,                                             --             rs232_uart_interrupt.irq
            rs232_uart_external_interface_RXD                      => lnk_m2f_dat,                                      --    rs232_uart_external_interface.RXD
            rs232_uart_external_interface_TXD                      => lnk_f2m_dat                                       --                                 .TXD
   
--            fpga_ddr4_pll_ref_clk_clk                              => ddr4_pll_ref_clk,                                 --            fpga_ddr4_pll_ref_clk.clk
--            fpga_ddr4_oct_oct_rzqin                                => ddr4_oct_rzqin,                                   --                    fpga_ddr4_oct.oct_rzqin
--            fpga_ddr4_mem_mem_ck                                   => ddr4_ck,                                          --                    fpga_ddr4_mem.mem_ck
--            fpga_ddr4_mem_mem_ck_n                                 => ddr4_ck_n,                                        --                                 .mem_ck_n
--            fpga_ddr4_mem_mem_a                                    => ddr4_a,                                           --                                 .mem_a
--            fpga_ddr4_mem_mem_act_n                                => ddr4_act_n,                                       --                                 .mem_act_n
--            fpga_ddr4_mem_mem_ba                                   => ddr4_ba,                                          --                                 .mem_ba
--            fpga_ddr4_mem_mem_bg                                   => ddr4_bg,                                          --                                 .mem_bg
--            fpga_ddr4_mem_mem_cke                                  => ddr4_cke,                                         --                                 .mem_cke
--            fpga_ddr4_mem_mem_cs_n                                 => ddr4_cs_n,                                        --                                 .mem_cs_n
--            fpga_ddr4_mem_mem_odt                                  => ddr4_odt,                                         --                                 .mem_odt
--            fpga_ddr4_mem_mem_reset_n                              => ddr4_reset_n,                                     --                                 .mem_reset_n
--            fpga_ddr4_mem_mem_par                                  => ddr4_par,                                         --                                 .mem_par
--            fpga_ddr4_mem_mem_alert_n                              => ddr4_alert_n,                                     --                                 .mem_alert_n
--            fpga_ddr4_mem_mem_dqs                                  => ddr4_dqs,                                         --                                 .mem_dqs
--            fpga_ddr4_mem_mem_dqs_n                                => ddr4_dqs_n,                                       --                                 .mem_dqs_n
--            fpga_ddr4_mem_mem_dq                                   => ddr4_dq,                                          --                                 .mem_dq
--            fpga_ddr4_mem_mem_dbi_n                                => ddr4_dbi_n,                                       --                                 .mem_dbi_n
--            fpga_ddr4_status_local_cal_success                     => s_fpga_ddr4_status_local_cal_success,             --                 fpga_ddr4_status.local_cal_success
--            fpga_ddr4_status_local_cal_fail                        => s_fpga_ddr4_status_local_cal_fail,                --                                 .local_cal_fail
--            fpga_ddr4_global_reset_n_splitter_sig_input_if_reset_n => sb_ddr_rst_n,                                     -- fpga_ddr4_global_reset_n_splitter_sig_input_if.reset_n
--            fpga_ddr4_tg_ninit_done_ninit_done                     => '0',                                              --          fpga_ddr4_tg_ninit_done.ninit_done
--            fpga_ddr4_tg_status_traffic_gen_pass                   => s_fpga_ddr4_tg_status_traffic_gen_pass,           --              fpga_ddr4_tg_status.traffic_gen_pass
--            fpga_ddr4_tg_status_traffic_gen_fail                   => s_fpga_ddr4_tg_status_traffic_gen_fail,           --                                 .traffic_gen_fail
--            fpga_ddr4_tg_status_traffic_gen_timeout                => s_fpga_ddr4_tg_status_traffic_gen_timeout,        --                                 .traffic_gen_timeout
         );

end block blk_hps;

-- ############################################################################################################################
--  Blink LED for easy visual indication that FPGA is configured
--  Also used as design partition for PR example design
-- ############################################################################################################################

   i_blink_led : blink_led_default
   port map (
      clk           => s_sys_clk,
      rst           => (s_sys_rst),
      blink_led_out => s_led_usr_r_n
   );
   
   led_usr_r_n <= s_led_usr_r_n;

end architecture rtl;
