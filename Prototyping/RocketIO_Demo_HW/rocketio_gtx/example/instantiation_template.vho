------------------------------------------------------------------------------
--$Date: 2008/05/30 00:57:53 $
--$RCSfile: instantiation_template_vhd.ejava,v $
--$Revision: 1.1.2.1 $
------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 1.5
--  \   \         Application : RocketIO GTX Wizard 
--  /   /         Filename : instantiation_template.vhd
-- /___/   /\     Timestamp : 
-- \   \  /  \ 
--  \___\/\___\ 
--
--
-- Instantiation Template
-- Generated by Xilinx RocketIO GTX Wizard


--**************************Component Declarations*****************************


component ROCKETIO_GTX 
generic
(
    -- Simulation attributes
    WRAPPER_SIM_GTXRESET_SPEEDUP    : integer   := 0; -- Set to 1 to speed up sim reset
    WRAPPER_SIM_PLL_PERDIV2         : bit_vector:= x"140" -- Set to the VCO Unit Interval time
);
port
(
    
    --_________________________________________________________________________
    --_________________________________________________________________________
    --TILE0  (Location)

    ------------------------ Loopback and Powerdown Ports ----------------------
    TILE0_LOOPBACK0_IN                      : in   std_logic_vector(2 downto 0);
    TILE0_LOOPBACK1_IN                      : in   std_logic_vector(2 downto 0);
    ----------------------- Receive Ports - 8b10b Decoder ----------------------
    TILE0_RXCHARISK1_OUT                    : out  std_logic;
    TILE0_RXDISPERR1_OUT                    : out  std_logic;
    TILE0_RXNOTINTABLE1_OUT                 : out  std_logic;
    ------------------- Receive Ports - Clock Correction Ports -----------------
    TILE0_RXCLKCORCNT1_OUT                  : out  std_logic_vector(2 downto 0);
    --------------- Receive Ports - Comma Detection and Alignment --------------
    TILE0_RXENMCOMMAALIGN0_IN               : in   std_logic;
    TILE0_RXENMCOMMAALIGN1_IN               : in   std_logic;
    TILE0_RXENPCOMMAALIGN0_IN               : in   std_logic;
    TILE0_RXENPCOMMAALIGN1_IN               : in   std_logic;
    ------------------- Receive Ports - RX Data Path interface -----------------
    TILE0_RXDATA1_OUT                       : out  std_logic_vector(7 downto 0);
    TILE0_RXRESET0_IN                       : in   std_logic;
    TILE0_RXRESET1_IN                       : in   std_logic;
    TILE0_RXUSRCLK0_IN                      : in   std_logic;
    TILE0_RXUSRCLK1_IN                      : in   std_logic;
    TILE0_RXUSRCLK20_IN                     : in   std_logic;
    TILE0_RXUSRCLK21_IN                     : in   std_logic;
    ------- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
    TILE0_RXN0_IN                           : in   std_logic;
    TILE0_RXN1_IN                           : in   std_logic;
    TILE0_RXP0_IN                           : in   std_logic;
    TILE0_RXP1_IN                           : in   std_logic;
    --------------- Receive Ports - RX Loss-of-sync State Machine --------------
    TILE0_RXLOSSOFSYNC1_OUT                 : out  std_logic_vector(1 downto 0);
    --------------------- Shared Ports - Tile and PLL Ports --------------------
    TILE0_CLKIN_IN                          : in   std_logic;
    TILE0_GTXRESET_IN                       : in   std_logic;
    TILE0_PLLLKDET_OUT                      : out  std_logic;
    TILE0_REFCLKOUT_OUT                     : out  std_logic;
    TILE0_RESETDONE0_OUT                    : out  std_logic;
    TILE0_RESETDONE1_OUT                    : out  std_logic;
    ---------------- Transmit Ports - 8b10b Encoder Control Ports --------------
    TILE0_TXCHARISK1_IN                     : in   std_logic;
    ------------------ Transmit Ports - TX Data Path interface -----------------
    TILE0_TXDATA1_IN                        : in   std_logic_vector(7 downto 0);
    TILE0_TXUSRCLK0_IN                      : in   std_logic;
    TILE0_TXUSRCLK1_IN                      : in   std_logic;
    TILE0_TXUSRCLK20_IN                     : in   std_logic;
    TILE0_TXUSRCLK21_IN                     : in   std_logic;
    --------------- Transmit Ports - TX Driver and OOB signalling --------------
    TILE0_TXN0_OUT                          : out  std_logic;
    TILE0_TXN1_OUT                          : out  std_logic;
    TILE0_TXP0_OUT                          : out  std_logic;
    TILE0_TXP1_OUT                          : out  std_logic


);
end component;










    ----------------------------- The GTX Wrapper -----------------------------


    rocketio_gtx_i : ROCKETIO_GTX
    generic map
    (
        WRAPPER_SIM_GTXRESET_SPEEDUP    =>      1,
        WRAPPER_SIM_PLL_PERDIV2         =>      x"140"
    )
    port map
    (
        --_____________________________________________________________________
        --_____________________________________________________________________
        --TILE0  (X0Y5)

        ------------------------ Loopback and Powerdown Ports ----------------------
        TILE0_LOOPBACK0_IN              =>      ,
        TILE0_LOOPBACK1_IN              =>      ,
        ----------------------- Receive Ports - 8b10b Decoder ----------------------
        TILE0_RXCHARISK1_OUT            =>      ,
        TILE0_RXDISPERR1_OUT            =>      ,
        TILE0_RXNOTINTABLE1_OUT         =>      ,
        ------------------- Receive Ports - Clock Correction Ports -----------------
        TILE0_RXCLKCORCNT1_OUT          =>      ,
        --------------- Receive Ports - Comma Detection and Alignment --------------
        TILE0_RXENMCOMMAALIGN0_IN       =>      ,
        TILE0_RXENMCOMMAALIGN1_IN       =>      ,
        TILE0_RXENPCOMMAALIGN0_IN       =>      ,
        TILE0_RXENPCOMMAALIGN1_IN       =>      ,
        ------------------- Receive Ports - RX Data Path interface -----------------
        TILE0_RXDATA1_OUT               =>      ,
        TILE0_RXRESET0_IN               =>      ,
        TILE0_RXRESET1_IN               =>      ,
        TILE0_RXUSRCLK0_IN              =>      ,
        TILE0_RXUSRCLK1_IN              =>      ,
        TILE0_RXUSRCLK20_IN             =>      ,
        TILE0_RXUSRCLK21_IN             =>      ,
        ------- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
        TILE0_RXN0_IN                   =>      ,
        TILE0_RXN1_IN                   =>      ,
        TILE0_RXP0_IN                   =>      ,
        TILE0_RXP1_IN                   =>      ,
        --------------- Receive Ports - RX Loss-of-sync State Machine --------------
        TILE0_RXLOSSOFSYNC1_OUT         =>      ,
        --------------------- Shared Ports - Tile and PLL Ports --------------------
        TILE0_CLKIN_IN                  =>      ,
        TILE0_GTXRESET_IN               =>      ,
        TILE0_PLLLKDET_OUT              =>      ,
        TILE0_REFCLKOUT_OUT             =>      ,
        TILE0_RESETDONE0_OUT            =>      ,
        TILE0_RESETDONE1_OUT            =>      ,
        ---------------- Transmit Ports - 8b10b Encoder Control Ports --------------
        TILE0_TXCHARISK1_IN             =>      ,
        ------------------ Transmit Ports - TX Data Path interface -----------------
        TILE0_TXDATA1_IN                =>      ,
        TILE0_TXUSRCLK0_IN              =>      ,
        TILE0_TXUSRCLK1_IN              =>      ,
        TILE0_TXUSRCLK20_IN             =>      ,
        TILE0_TXUSRCLK21_IN             =>      ,
        --------------- Transmit Ports - TX Driver and OOB signalling --------------
        TILE0_TXN0_OUT                  =>      ,
        TILE0_TXN1_OUT                  =>      ,
        TILE0_TXP0_OUT                  =>      ,
        TILE0_TXP1_OUT                  =>      


    );



    -----------------------Dedicated GTX Reference Clock Inputs ---------------
    -- Each dedicated refclk you are using in your design will need its own IBUFDS instance
    
    tile0_refclk_ibufds_i : IBUFDS
    port map
    (
        O                               =>      ,
        I                               =>      ,  -- Connect to package pin H4
        IB                              =>        -- Connect to package pin H3
    );


















