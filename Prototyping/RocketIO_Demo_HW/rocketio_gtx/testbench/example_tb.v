///////////////////////////////////////////////////////////////////////////////
//$Date: 2008/05/30 00:57:53 $
//$RCSfile: example_tb.ejava,v $
//$Revision: 1.1.2.1 $
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 1.5
//  \   \         Application : RocketIO GTX Wizard 
//  /   /         Filename : example_tb.v
// /___/   /\     Timestamp : 
// \   \  /  \ 
//  \___\/\___\ 
//
//
// Module EXAMPLE_TB
// Generated by Xilinx RocketIO GTX Wizard
`timescale 1ns / 1ps

module EXAMPLE_TB;

//*************************Parameter Declarations******************************

    parameter   REFCLK_PERIOD   =   16.0;
  
//************************Internal Register Declarations***********************

//************************** Register Declarations ****************************        

    reg     [0:3]   debounce_pma_reset_r;
    reg             refclk_n_r;
    reg             drp_clk_r;
    reg             tx_usrclk_r;
    reg             rx_usrclk_r;    
    reg             gsr_r;
    reg             gts_r;
    reg             reset_i;

//********************************Wire Declarations**********************************

    //--------------------------------- Global Signals ------------------------------
    wire            refclk_p_r;
    
    //-------------------------- Example Module Connections -------------------------
    wire    [1:0]   rxn_in_i;
    wire    [1:0]   rxp_in_i;
    wire    [1:0]   txn_out_i;
    wire    [1:0]   txp_out_i;


    wire    [7:0]   tile0_error_count0_i;
    wire    [7:0]   tile0_error_count1_i;

    

//*********************************Main Body of Code**********************************


    // ------------------------------- Tie offs -------------------------------- 
    
    assign  tied_to_ground_i     =    1'b0;
    
    // ------------------------- MGT Serial Connections ------------------------

    assign   rxn_in_i           =  txn_out_i;
    assign   rxp_in_i           =  txp_out_i;  

    //------------------------------ Global Signals ----------------------------
    
    //Simultate the global reset that occurs after configuration at the beginning
    //of the simulation. 
    assign glbl.GSR = gsr_r;
    assign glbl.GTS = gts_r;

    initial
        begin
            gts_r = 1'b0;        
            gsr_r = 1'b1;
            #(16*REFCLK_PERIOD);
            gsr_r = 1'b0;
    end


    //---------- Generate Reference Clock input to UPPER MGTCLK ----------------
    
    initial begin
        refclk_n_r = 1'b1;
    end

    always  
        #(REFCLK_PERIOD/2) refclk_n_r = !refclk_n_r;

    assign refclk_p_r = !refclk_n_r;
                 
      
    
    //--------------------------------- Resets ---------------------------------
    
    initial
    begin
        reset_i = 1'b1;
        #100 reset_i = 1'b0;
    end

    //----------------- Instantiate an EXAMPLE_MGT_TOP module  -----------------

    EXAMPLE_MGT_TOP #
    (
        .EXAMPLE_SIM_MODE               ("FAST"),   // Fast Functional Model turned on for simulation
        .EXAMPLE_SIM_GTXRESET_SPEEDUP   (1),        // Speedup is turned on for simulation
        .EXAMPLE_SIM_PLL_PERDIV2        (9'h140),      // Set to the VCO Unit Interval time
        .EXAMPLE_USE_CHIPSCOPE          (0)         //1 - use chipscope to drive resets,
                                                            //0 - drive resets from top level ports
    )
    example_mgt_top_i
    (
        .TILE0_REFCLK_PAD_N_IN          (refclk_n_r),   
        .TILE0_REFCLK_PAD_P_IN          (refclk_p_r),
        .GTXRESET_IN                    (reset_i),
        .TILE0_PLLLKDET_OUT             (tile0_plllkdet_i),
        .RXN_IN                         (rxn_in_i),
        .RXP_IN                         (rxp_in_i),
        .TXN_OUT                        (txn_out_i),
        .TXP_OUT                        (txp_out_i)
    );


endmodule

