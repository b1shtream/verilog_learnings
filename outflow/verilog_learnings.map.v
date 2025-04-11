
//
// Verific Verilog Description of module adder
//

module adder (clk, rx, tx);
    input clk /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(2)
    input rx /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(3)
    output tx /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(4)
    
    wire tx_2;
    wire [3:0]n25_2;
    wire [3:0]n30_2;
    wire [3:0]b;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(10)
    wire [3:0]sum;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(11)
    
    wire add_flag, send, carry;
    wire [3:0]a;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(10)
    
    wire \uart_rx_inst/r_Rx_Data , \uart_rx_inst/r_Rx_Data_R ;
    wire [8:0]\uart_rx_inst/r_Rx_Byte ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(74)
    wire [2:0]\uart_rx_inst/r_SM_Main ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(80)
    wire [31:0]\uart_rx_inst/r_Clock_Count ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(72)
    
    wire rx_ready;
    wire [2:0]\uart_rx_inst/r_Bit_Index ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(73)
    wire [31:0]\uart_rx_inst/r_config_data ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(76)
    wire [31:0]\uart_tx_inst/r_Clock_Count ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(195)
    wire [2:0]\uart_tx_inst/r_Bit_Index ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(196)
    wire [2:0]\uart_tx_inst/r_SM_Main ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(203)
    wire [31:0]\uart_tx_inst/r_config_data ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(200)
    wire [7:0]\uart_tx_inst/r_Tx_Data ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(197)
    wire [7:0]rx_data;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(7)
    
    wire \clk~O , \uart_rx_inst/n1220 , \uart_rx_inst/n1139 , \uart_rx_inst/n1142 , 
        ceg_net14, \uart_rx_inst/n337 , ceg_net32, \uart_rx_inst/n1150 , 
        ceg_net26, \uart_rx_inst/n1199 , \uart_rx_inst/n1202 , \uart_rx_inst/n1205 , 
        \uart_rx_inst/n1208 , \uart_rx_inst/n1211 , \uart_rx_inst/n1212 , 
        \uart_rx_inst/n1217 , \uart_rx_inst/n826 , \uart_rx_inst/n151 , 
        \uart_rx_inst/n1180 , \uart_rx_inst/n833 , \uart_rx_inst/n836 , 
        \uart_rx_inst/n839 , \uart_rx_inst/n842 , \uart_rx_inst/n845 , 
        \uart_rx_inst/n848 , \uart_rx_inst/n851 , \uart_rx_inst/n854 , 
        \uart_rx_inst/n857 , \uart_rx_inst/n860 , \uart_rx_inst/n863 , 
        \uart_rx_inst/n866 , \uart_rx_inst/n869 , \uart_rx_inst/n872 , 
        \uart_rx_inst/n875 , \uart_rx_inst/n878 , \uart_rx_inst/n881 , 
        \uart_rx_inst/n884 , \uart_rx_inst/n887 , \uart_rx_inst/n890 , 
        \uart_rx_inst/n893 , \uart_rx_inst/n896 , \uart_rx_inst/n899 , 
        \uart_rx_inst/n902 , \uart_rx_inst/n905 , \uart_rx_inst/n908 , 
        \uart_rx_inst/n911 , \uart_rx_inst/n914 , \uart_rx_inst/n917 , 
        \uart_rx_inst/n920 , \uart_rx_inst/n923 , \uart_rx_inst/n1146 , 
        \uart_rx_inst/n927 , \uart_rx_inst/n1159 ;
    wire [3:0]n25;
    
    wire \uart_tx_inst/n1116 , \uart_tx_inst/n733 , \uart_tx_inst/n1120 , 
        ceg_net28, \uart_tx_inst/n1112 , \uart_tx_inst/n786 , \uart_tx_inst/n789 , 
        \uart_tx_inst/n792 , \uart_tx_inst/n795 , \uart_tx_inst/n798 , 
        \uart_tx_inst/n801 , \uart_tx_inst/n804 , \uart_tx_inst/n807 , 
        \uart_tx_inst/n810 , \uart_tx_inst/n813 , \uart_tx_inst/n816 , 
        \uart_tx_inst/n819 , \uart_tx_inst/n822 , \uart_tx_inst/n825 , 
        \uart_tx_inst/n828 , \uart_tx_inst/n831 , \uart_tx_inst/n834 , 
        \uart_tx_inst/n837 , \uart_tx_inst/n840 , \uart_tx_inst/n843 , 
        \uart_tx_inst/n846 , \uart_tx_inst/n849 , \uart_tx_inst/n852 , 
        \uart_tx_inst/n855 , \uart_tx_inst/n858 , \uart_tx_inst/n861 , 
        \uart_tx_inst/n864 , \uart_tx_inst/n867 , \uart_tx_inst/n870 , 
        \uart_tx_inst/n873 , \uart_tx_inst/n876 , \uart_tx_inst/n880 , 
        \uart_tx_inst/n884 , \uart_tx_inst/n1032 , \uart_tx_inst/n1224 , 
        \uart_tx_inst/n779 , \uart_tx_inst/n50 , \uart_tx_inst/n1206 , 
        n226, n227, n228, n229, n230, n231, n232, n233, n234, 
        n235, n236, n237, n238, n239, n240, n241, n242, n243, 
        n244, n245, n246, n247, n248, n249, n250, n251, n252, 
        n253, n254, n255, n256, n257, n258, n259, n260, n261, 
        n262, n263, n264, n265, n266, n267, n268, n269, n270, 
        n271, n272, n273, n274, n275, n276, n277, n278, n279, 
        n280, n281, n282, n283, n284, n285, n286, n287, n288, 
        n289, n290, n291, n292, n293, n294, n295, n296, n297, 
        n298, n299, n300, n301, n302, n303, n304, n305, n306, 
        n307, n308, n309, n310, n311, n312, n313, n314, n315, 
        n316, n317, n318, n319, n320, n321, n322, n323, n324, 
        n325, n326, n327, n328, n329, n330, n331, n332, n333, 
        n334, n335, n336, n337, n338, n339, n340, n341, n342, 
        n343, n344, n345, n346, n347, n348, n349, n350, n351, 
        n352, n353;
    
    EFX_LUT4 LUT__348 (.I0(\uart_rx_inst/r_Rx_Byte [0]), .I1(rx_ready), 
            .O(rx_data[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(171)
    defparam LUT__348.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__349 (.I0(b[0]), .I1(a[0]), .O(n25_2[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(35)
    defparam LUT__349.LUTMASK = 16'h6666;
    EFX_FF \b[0]~FF  (.D(rx_data[0]), .CE(rx_ready), .CLK(\clk~O ), .SR(1'b0), 
           .Q(b[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(38)
    defparam \b[0]~FF .CLK_POLARITY = 1'b1;
    defparam \b[0]~FF .CE_POLARITY = 1'b1;
    defparam \b[0]~FF .SR_POLARITY = 1'b1;
    defparam \b[0]~FF .D_POLARITY = 1'b1;
    defparam \b[0]~FF .SR_SYNC = 1'b1;
    defparam \b[0]~FF .SR_VALUE = 1'b0;
    defparam \b[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sum[0]~FF  (.D(n25_2[0]), .CE(add_flag), .CLK(\clk~O ), .SR(1'b0), 
           .Q(sum[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(38)
    defparam \sum[0]~FF .CLK_POLARITY = 1'b1;
    defparam \sum[0]~FF .CE_POLARITY = 1'b1;
    defparam \sum[0]~FF .SR_POLARITY = 1'b1;
    defparam \sum[0]~FF .D_POLARITY = 1'b1;
    defparam \sum[0]~FF .SR_SYNC = 1'b1;
    defparam \sum[0]~FF .SR_VALUE = 1'b0;
    defparam \sum[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \add_flag~FF  (.D(1'b1), .CE(rx_ready), .CLK(\clk~O ), .SR(1'b0), 
           .Q(add_flag)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(38)
    defparam \add_flag~FF .CLK_POLARITY = 1'b1;
    defparam \add_flag~FF .CE_POLARITY = 1'b1;
    defparam \add_flag~FF .SR_POLARITY = 1'b1;
    defparam \add_flag~FF .D_POLARITY = 1'b1;
    defparam \add_flag~FF .SR_SYNC = 1'b1;
    defparam \add_flag~FF .SR_VALUE = 1'b0;
    defparam \add_flag~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \send~FF  (.D(1'b1), .CE(add_flag), .CLK(\clk~O ), .SR(1'b0), 
           .Q(send)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(38)
    defparam \send~FF .CLK_POLARITY = 1'b1;
    defparam \send~FF .CE_POLARITY = 1'b1;
    defparam \send~FF .SR_POLARITY = 1'b1;
    defparam \send~FF .D_POLARITY = 1'b1;
    defparam \send~FF .SR_SYNC = 1'b1;
    defparam \send~FF .SR_VALUE = 1'b0;
    defparam \send~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \carry~FF  (.D(n30_2[0]), .CE(add_flag), .CLK(\clk~O ), .SR(1'b0), 
           .Q(carry)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(38)
    defparam \carry~FF .CLK_POLARITY = 1'b1;
    defparam \carry~FF .CE_POLARITY = 1'b1;
    defparam \carry~FF .SR_POLARITY = 1'b1;
    defparam \carry~FF .D_POLARITY = 1'b1;
    defparam \carry~FF .SR_SYNC = 1'b1;
    defparam \carry~FF .SR_VALUE = 1'b0;
    defparam \carry~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \a[0]~FF  (.D(rx_data[4]), .CE(rx_ready), .CLK(\clk~O ), .SR(1'b0), 
           .Q(a[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(38)
    defparam \a[0]~FF .CLK_POLARITY = 1'b1;
    defparam \a[0]~FF .CE_POLARITY = 1'b1;
    defparam \a[0]~FF .SR_POLARITY = 1'b1;
    defparam \a[0]~FF .D_POLARITY = 1'b1;
    defparam \a[0]~FF .SR_SYNC = 1'b1;
    defparam \a[0]~FF .SR_VALUE = 1'b0;
    defparam \a[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Rx_Data~FF  (.D(\uart_rx_inst/r_Rx_Data_R ), .CE(1'b1), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Rx_Data )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(94)
    defparam \uart_rx_inst/r_Rx_Data~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Rx_Data~FF .CE_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Rx_Data~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Rx_Data~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Rx_Data~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Rx_Data~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Rx_Data~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Rx_Data_R~FF  (.D(rx), .CE(1'b1), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\uart_rx_inst/r_Rx_Data_R )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(168)
    defparam \uart_rx_inst/r_Rx_Data_R~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Rx_Data_R~FF .CE_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Rx_Data_R~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Rx_Data_R~FF .D_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Rx_Data_R~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Rx_Data_R~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Rx_Data_R~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Rx_Byte[0]~FF  (.D(\uart_rx_inst/r_Rx_Data ), .CE(\uart_rx_inst/n1220 ), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Rx_Byte [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(168)
    defparam \uart_rx_inst/r_Rx_Byte[0]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Rx_Byte[0]~FF .CE_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Rx_Byte[0]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Rx_Byte[0]~FF .D_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Rx_Byte[0]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Rx_Byte[0]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Rx_Byte[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_SM_Main[0]~FF  (.D(\uart_rx_inst/n1139 ), .CE(1'b1), 
           .CLK(\clk~O ), .SR(\uart_rx_inst/r_SM_Main [2]), .Q(\uart_rx_inst/r_SM_Main [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(168)
    defparam \uart_rx_inst/r_SM_Main[0]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_SM_Main[0]~FF .CE_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_SM_Main[0]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_SM_Main[0]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_SM_Main[0]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_SM_Main[0]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_SM_Main[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Clock_Count[0]~FF  (.D(\uart_rx_inst/n1142 ), .CE(ceg_net14), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Clock_Count [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(168)
    defparam \uart_rx_inst/r_Clock_Count[0]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[0]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[0]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[0]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[0]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[0]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_ready~FF  (.D(\uart_rx_inst/n337 ), .CE(ceg_net32), .CLK(\clk~O ), 
           .SR(1'b0), .Q(rx_ready)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(168)
    defparam \rx_ready~FF .CLK_POLARITY = 1'b1;
    defparam \rx_ready~FF .CE_POLARITY = 1'b0;
    defparam \rx_ready~FF .SR_POLARITY = 1'b1;
    defparam \rx_ready~FF .D_POLARITY = 1'b1;
    defparam \rx_ready~FF .SR_SYNC = 1'b1;
    defparam \rx_ready~FF .SR_VALUE = 1'b0;
    defparam \rx_ready~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Bit_Index[0]~FF  (.D(\uart_rx_inst/n1150 ), .CE(ceg_net26), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Bit_Index [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(168)
    defparam \uart_rx_inst/r_Bit_Index[0]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Bit_Index[0]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Bit_Index[0]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Bit_Index[0]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Bit_Index[0]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Bit_Index[0]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Bit_Index[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Rx_Byte[1]~FF  (.D(\uart_rx_inst/r_Rx_Data ), .CE(\uart_rx_inst/n1199 ), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Rx_Byte [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(168)
    defparam \uart_rx_inst/r_Rx_Byte[1]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Rx_Byte[1]~FF .CE_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Rx_Byte[1]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Rx_Byte[1]~FF .D_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Rx_Byte[1]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Rx_Byte[1]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Rx_Byte[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Rx_Byte[2]~FF  (.D(\uart_rx_inst/r_Rx_Data ), .CE(\uart_rx_inst/n1202 ), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Rx_Byte [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(168)
    defparam \uart_rx_inst/r_Rx_Byte[2]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Rx_Byte[2]~FF .CE_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Rx_Byte[2]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Rx_Byte[2]~FF .D_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Rx_Byte[2]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Rx_Byte[2]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Rx_Byte[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Rx_Byte[3]~FF  (.D(\uart_rx_inst/r_Rx_Data ), .CE(\uart_rx_inst/n1205 ), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Rx_Byte [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(168)
    defparam \uart_rx_inst/r_Rx_Byte[3]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Rx_Byte[3]~FF .CE_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Rx_Byte[3]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Rx_Byte[3]~FF .D_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Rx_Byte[3]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Rx_Byte[3]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Rx_Byte[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Rx_Byte[4]~FF  (.D(\uart_rx_inst/r_Rx_Data ), .CE(\uart_rx_inst/n1208 ), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Rx_Byte [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(168)
    defparam \uart_rx_inst/r_Rx_Byte[4]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Rx_Byte[4]~FF .CE_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Rx_Byte[4]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Rx_Byte[4]~FF .D_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Rx_Byte[4]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Rx_Byte[4]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Rx_Byte[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Rx_Byte[5]~FF  (.D(\uart_rx_inst/r_Rx_Data ), .CE(\uart_rx_inst/n1211 ), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Rx_Byte [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(168)
    defparam \uart_rx_inst/r_Rx_Byte[5]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Rx_Byte[5]~FF .CE_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Rx_Byte[5]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Rx_Byte[5]~FF .D_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Rx_Byte[5]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Rx_Byte[5]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Rx_Byte[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Rx_Byte[6]~FF  (.D(\uart_rx_inst/r_Rx_Data ), .CE(\uart_rx_inst/n1212 ), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Rx_Byte [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(168)
    defparam \uart_rx_inst/r_Rx_Byte[6]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Rx_Byte[6]~FF .CE_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Rx_Byte[6]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Rx_Byte[6]~FF .D_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Rx_Byte[6]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Rx_Byte[6]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Rx_Byte[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Rx_Byte[7]~FF  (.D(\uart_rx_inst/r_Rx_Data ), .CE(\uart_rx_inst/n1217 ), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Rx_Byte [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(168)
    defparam \uart_rx_inst/r_Rx_Byte[7]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Rx_Byte[7]~FF .CE_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Rx_Byte[7]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Rx_Byte[7]~FF .D_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Rx_Byte[7]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Rx_Byte[7]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Rx_Byte[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_SM_Main[1]~FF  (.D(\uart_rx_inst/n826 ), .CE(1'b1), 
           .CLK(\clk~O ), .SR(\uart_rx_inst/r_SM_Main [2]), .Q(\uart_rx_inst/r_SM_Main [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(168)
    defparam \uart_rx_inst/r_SM_Main[1]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_SM_Main[1]~FF .CE_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_SM_Main[1]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_SM_Main[1]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_SM_Main[1]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_SM_Main[1]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_SM_Main[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_SM_Main[2]~FF  (.D(\uart_rx_inst/n151 ), .CE(1'b1), 
           .CLK(\clk~O ), .SR(\uart_rx_inst/n1180 ), .Q(\uart_rx_inst/r_SM_Main [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(168)
    defparam \uart_rx_inst/r_SM_Main[2]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_SM_Main[2]~FF .CE_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_SM_Main[2]~FF .SR_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_SM_Main[2]~FF .D_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_SM_Main[2]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_SM_Main[2]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_SM_Main[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Clock_Count[1]~FF  (.D(\uart_rx_inst/n833 ), .CE(ceg_net14), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Clock_Count [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(168)
    defparam \uart_rx_inst/r_Clock_Count[1]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[1]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[1]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[1]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[1]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[1]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Clock_Count[2]~FF  (.D(\uart_rx_inst/n836 ), .CE(ceg_net14), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Clock_Count [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(168)
    defparam \uart_rx_inst/r_Clock_Count[2]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[2]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[2]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[2]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[2]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[2]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Clock_Count[3]~FF  (.D(\uart_rx_inst/n839 ), .CE(ceg_net14), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Clock_Count [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(168)
    defparam \uart_rx_inst/r_Clock_Count[3]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[3]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[3]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[3]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[3]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[3]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Clock_Count[4]~FF  (.D(\uart_rx_inst/n842 ), .CE(ceg_net14), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Clock_Count [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(168)
    defparam \uart_rx_inst/r_Clock_Count[4]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[4]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[4]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[4]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[4]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[4]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Clock_Count[5]~FF  (.D(\uart_rx_inst/n845 ), .CE(ceg_net14), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Clock_Count [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(168)
    defparam \uart_rx_inst/r_Clock_Count[5]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[5]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[5]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[5]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[5]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[5]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Clock_Count[6]~FF  (.D(\uart_rx_inst/n848 ), .CE(ceg_net14), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Clock_Count [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(168)
    defparam \uart_rx_inst/r_Clock_Count[6]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[6]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[6]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[6]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[6]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[6]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Clock_Count[7]~FF  (.D(\uart_rx_inst/n851 ), .CE(ceg_net14), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Clock_Count [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(168)
    defparam \uart_rx_inst/r_Clock_Count[7]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[7]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[7]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[7]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[7]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[7]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Clock_Count[8]~FF  (.D(\uart_rx_inst/n854 ), .CE(ceg_net14), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Clock_Count [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(168)
    defparam \uart_rx_inst/r_Clock_Count[8]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[8]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[8]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[8]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[8]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[8]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Clock_Count[9]~FF  (.D(\uart_rx_inst/n857 ), .CE(ceg_net14), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Clock_Count [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(168)
    defparam \uart_rx_inst/r_Clock_Count[9]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[9]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[9]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[9]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[9]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[9]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Clock_Count[10]~FF  (.D(\uart_rx_inst/n860 ), .CE(ceg_net14), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Clock_Count [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(168)
    defparam \uart_rx_inst/r_Clock_Count[10]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[10]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[10]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[10]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[10]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[10]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Clock_Count[11]~FF  (.D(\uart_rx_inst/n863 ), .CE(ceg_net14), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Clock_Count [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(168)
    defparam \uart_rx_inst/r_Clock_Count[11]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[11]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[11]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[11]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[11]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[11]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Clock_Count[12]~FF  (.D(\uart_rx_inst/n866 ), .CE(ceg_net14), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Clock_Count [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(168)
    defparam \uart_rx_inst/r_Clock_Count[12]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[12]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[12]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[12]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[12]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[12]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Clock_Count[13]~FF  (.D(\uart_rx_inst/n869 ), .CE(ceg_net14), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Clock_Count [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(168)
    defparam \uart_rx_inst/r_Clock_Count[13]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[13]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[13]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[13]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[13]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[13]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Clock_Count[14]~FF  (.D(\uart_rx_inst/n872 ), .CE(ceg_net14), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Clock_Count [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(168)
    defparam \uart_rx_inst/r_Clock_Count[14]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[14]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[14]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[14]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[14]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[14]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Clock_Count[15]~FF  (.D(\uart_rx_inst/n875 ), .CE(ceg_net14), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Clock_Count [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(168)
    defparam \uart_rx_inst/r_Clock_Count[15]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[15]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[15]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[15]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[15]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[15]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Clock_Count[16]~FF  (.D(\uart_rx_inst/n878 ), .CE(ceg_net14), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Clock_Count [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(168)
    defparam \uart_rx_inst/r_Clock_Count[16]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[16]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[16]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[16]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[16]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[16]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Clock_Count[17]~FF  (.D(\uart_rx_inst/n881 ), .CE(ceg_net14), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Clock_Count [17])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(168)
    defparam \uart_rx_inst/r_Clock_Count[17]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[17]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[17]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[17]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[17]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[17]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[17]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Clock_Count[18]~FF  (.D(\uart_rx_inst/n884 ), .CE(ceg_net14), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Clock_Count [18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(168)
    defparam \uart_rx_inst/r_Clock_Count[18]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[18]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[18]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[18]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[18]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[18]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[18]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Clock_Count[19]~FF  (.D(\uart_rx_inst/n887 ), .CE(ceg_net14), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Clock_Count [19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(168)
    defparam \uart_rx_inst/r_Clock_Count[19]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[19]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[19]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[19]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[19]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[19]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[19]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Clock_Count[20]~FF  (.D(\uart_rx_inst/n890 ), .CE(ceg_net14), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Clock_Count [20])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(168)
    defparam \uart_rx_inst/r_Clock_Count[20]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[20]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[20]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[20]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[20]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[20]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[20]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Clock_Count[21]~FF  (.D(\uart_rx_inst/n893 ), .CE(ceg_net14), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Clock_Count [21])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(168)
    defparam \uart_rx_inst/r_Clock_Count[21]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[21]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[21]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[21]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[21]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[21]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[21]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Clock_Count[22]~FF  (.D(\uart_rx_inst/n896 ), .CE(ceg_net14), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Clock_Count [22])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(168)
    defparam \uart_rx_inst/r_Clock_Count[22]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[22]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[22]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[22]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[22]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[22]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[22]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Clock_Count[23]~FF  (.D(\uart_rx_inst/n899 ), .CE(ceg_net14), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Clock_Count [23])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(168)
    defparam \uart_rx_inst/r_Clock_Count[23]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[23]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[23]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[23]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[23]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[23]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[23]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Clock_Count[24]~FF  (.D(\uart_rx_inst/n902 ), .CE(ceg_net14), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Clock_Count [24])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(168)
    defparam \uart_rx_inst/r_Clock_Count[24]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[24]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[24]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[24]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[24]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[24]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[24]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Clock_Count[25]~FF  (.D(\uart_rx_inst/n905 ), .CE(ceg_net14), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Clock_Count [25])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(168)
    defparam \uart_rx_inst/r_Clock_Count[25]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[25]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[25]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[25]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[25]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[25]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[25]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Clock_Count[26]~FF  (.D(\uart_rx_inst/n908 ), .CE(ceg_net14), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Clock_Count [26])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(168)
    defparam \uart_rx_inst/r_Clock_Count[26]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[26]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[26]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[26]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[26]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[26]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[26]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Clock_Count[27]~FF  (.D(\uart_rx_inst/n911 ), .CE(ceg_net14), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Clock_Count [27])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(168)
    defparam \uart_rx_inst/r_Clock_Count[27]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[27]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[27]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[27]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[27]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[27]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[27]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Clock_Count[28]~FF  (.D(\uart_rx_inst/n914 ), .CE(ceg_net14), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Clock_Count [28])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(168)
    defparam \uart_rx_inst/r_Clock_Count[28]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[28]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[28]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[28]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[28]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[28]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[28]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Clock_Count[29]~FF  (.D(\uart_rx_inst/n917 ), .CE(ceg_net14), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Clock_Count [29])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(168)
    defparam \uart_rx_inst/r_Clock_Count[29]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[29]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[29]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[29]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[29]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[29]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[29]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Clock_Count[30]~FF  (.D(\uart_rx_inst/n920 ), .CE(ceg_net14), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Clock_Count [30])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(168)
    defparam \uart_rx_inst/r_Clock_Count[30]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[30]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[30]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[30]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[30]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[30]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[30]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Clock_Count[31]~FF  (.D(\uart_rx_inst/n923 ), .CE(ceg_net14), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Clock_Count [31])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(168)
    defparam \uart_rx_inst/r_Clock_Count[31]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[31]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[31]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[31]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[31]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[31]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[31]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Bit_Index[1]~FF  (.D(\uart_rx_inst/n1146 ), .CE(ceg_net26), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Bit_Index [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(168)
    defparam \uart_rx_inst/r_Bit_Index[1]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Bit_Index[1]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Bit_Index[1]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Bit_Index[1]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Bit_Index[1]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Bit_Index[1]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Bit_Index[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Bit_Index[2]~FF  (.D(\uart_rx_inst/n927 ), .CE(ceg_net26), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Bit_Index [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(168)
    defparam \uart_rx_inst/r_Bit_Index[2]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Bit_Index[2]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Bit_Index[2]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Bit_Index[2]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Bit_Index[2]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Bit_Index[2]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Bit_Index[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_config_data[1]~FF  (.D(1'b1), .CE(\uart_rx_inst/n1159 ), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_config_data [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(168)
    defparam \uart_rx_inst/r_config_data[1]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_config_data[1]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_config_data[1]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_config_data[1]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_config_data[1]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_config_data[1]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_config_data[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \b[1]~FF  (.D(rx_data[1]), .CE(rx_ready), .CLK(\clk~O ), .SR(1'b0), 
           .Q(b[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(38)
    defparam \b[1]~FF .CLK_POLARITY = 1'b1;
    defparam \b[1]~FF .CE_POLARITY = 1'b1;
    defparam \b[1]~FF .SR_POLARITY = 1'b1;
    defparam \b[1]~FF .D_POLARITY = 1'b1;
    defparam \b[1]~FF .SR_SYNC = 1'b1;
    defparam \b[1]~FF .SR_VALUE = 1'b0;
    defparam \b[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \b[2]~FF  (.D(rx_data[2]), .CE(rx_ready), .CLK(\clk~O ), .SR(1'b0), 
           .Q(b[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(38)
    defparam \b[2]~FF .CLK_POLARITY = 1'b1;
    defparam \b[2]~FF .CE_POLARITY = 1'b1;
    defparam \b[2]~FF .SR_POLARITY = 1'b1;
    defparam \b[2]~FF .D_POLARITY = 1'b1;
    defparam \b[2]~FF .SR_SYNC = 1'b1;
    defparam \b[2]~FF .SR_VALUE = 1'b0;
    defparam \b[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \b[3]~FF  (.D(rx_data[3]), .CE(rx_ready), .CLK(\clk~O ), .SR(1'b0), 
           .Q(b[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(38)
    defparam \b[3]~FF .CLK_POLARITY = 1'b1;
    defparam \b[3]~FF .CE_POLARITY = 1'b1;
    defparam \b[3]~FF .SR_POLARITY = 1'b1;
    defparam \b[3]~FF .D_POLARITY = 1'b1;
    defparam \b[3]~FF .SR_SYNC = 1'b1;
    defparam \b[3]~FF .SR_VALUE = 1'b0;
    defparam \b[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sum[1]~FF  (.D(n25[1]), .CE(add_flag), .CLK(\clk~O ), .SR(1'b0), 
           .Q(sum[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(38)
    defparam \sum[1]~FF .CLK_POLARITY = 1'b1;
    defparam \sum[1]~FF .CE_POLARITY = 1'b1;
    defparam \sum[1]~FF .SR_POLARITY = 1'b1;
    defparam \sum[1]~FF .D_POLARITY = 1'b1;
    defparam \sum[1]~FF .SR_SYNC = 1'b1;
    defparam \sum[1]~FF .SR_VALUE = 1'b0;
    defparam \sum[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sum[2]~FF  (.D(n25[2]), .CE(add_flag), .CLK(\clk~O ), .SR(1'b0), 
           .Q(sum[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(38)
    defparam \sum[2]~FF .CLK_POLARITY = 1'b1;
    defparam \sum[2]~FF .CE_POLARITY = 1'b1;
    defparam \sum[2]~FF .SR_POLARITY = 1'b1;
    defparam \sum[2]~FF .D_POLARITY = 1'b1;
    defparam \sum[2]~FF .SR_SYNC = 1'b1;
    defparam \sum[2]~FF .SR_VALUE = 1'b0;
    defparam \sum[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sum[3]~FF  (.D(n25[3]), .CE(add_flag), .CLK(\clk~O ), .SR(1'b0), 
           .Q(sum[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(38)
    defparam \sum[3]~FF .CLK_POLARITY = 1'b1;
    defparam \sum[3]~FF .CE_POLARITY = 1'b1;
    defparam \sum[3]~FF .SR_POLARITY = 1'b1;
    defparam \sum[3]~FF .D_POLARITY = 1'b1;
    defparam \sum[3]~FF .SR_SYNC = 1'b1;
    defparam \sum[3]~FF .SR_VALUE = 1'b0;
    defparam \sum[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_Clock_Count[0]~FF  (.D(\uart_tx_inst/n1116 ), .CE(\uart_tx_inst/r_SM_Main [2]), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx_inst/r_Clock_Count [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(288)
    defparam \uart_tx_inst/r_Clock_Count[0]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[0]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[0]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[0]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[0]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[0]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_2~FF  (.D(\uart_tx_inst/n733 ), .CE(\uart_tx_inst/r_SM_Main [2]), 
           .CLK(\clk~O ), .SR(1'b0), .Q(tx_2)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(288)
    defparam \tx_2~FF .CLK_POLARITY = 1'b1;
    defparam \tx_2~FF .CE_POLARITY = 1'b0;
    defparam \tx_2~FF .SR_POLARITY = 1'b1;
    defparam \tx_2~FF .D_POLARITY = 1'b0;
    defparam \tx_2~FF .SR_SYNC = 1'b1;
    defparam \tx_2~FF .SR_VALUE = 1'b0;
    defparam \tx_2~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_Bit_Index[0]~FF  (.D(\uart_tx_inst/n1120 ), .CE(ceg_net28), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx_inst/r_Bit_Index [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(288)
    defparam \uart_tx_inst/r_Bit_Index[0]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Bit_Index[0]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_inst/r_Bit_Index[0]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Bit_Index[0]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Bit_Index[0]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_Bit_Index[0]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_Bit_Index[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_SM_Main[0]~FF  (.D(\uart_tx_inst/n1112 ), .CE(1'b1), 
           .CLK(\clk~O ), .SR(\uart_tx_inst/r_SM_Main [2]), .Q(\uart_tx_inst/r_SM_Main [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(288)
    defparam \uart_tx_inst/r_SM_Main[0]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_SM_Main[0]~FF .CE_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_SM_Main[0]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_SM_Main[0]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_SM_Main[0]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_SM_Main[0]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_SM_Main[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_Clock_Count[1]~FF  (.D(\uart_tx_inst/n786 ), .CE(\uart_tx_inst/r_SM_Main [2]), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx_inst/r_Clock_Count [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(288)
    defparam \uart_tx_inst/r_Clock_Count[1]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[1]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[1]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[1]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[1]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[1]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_Clock_Count[2]~FF  (.D(\uart_tx_inst/n789 ), .CE(\uart_tx_inst/r_SM_Main [2]), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx_inst/r_Clock_Count [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(288)
    defparam \uart_tx_inst/r_Clock_Count[2]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[2]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[2]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[2]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[2]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[2]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_Clock_Count[3]~FF  (.D(\uart_tx_inst/n792 ), .CE(\uart_tx_inst/r_SM_Main [2]), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx_inst/r_Clock_Count [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(288)
    defparam \uart_tx_inst/r_Clock_Count[3]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[3]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[3]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[3]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[3]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[3]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_Clock_Count[4]~FF  (.D(\uart_tx_inst/n795 ), .CE(\uart_tx_inst/r_SM_Main [2]), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx_inst/r_Clock_Count [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(288)
    defparam \uart_tx_inst/r_Clock_Count[4]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[4]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[4]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[4]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[4]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[4]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_Clock_Count[5]~FF  (.D(\uart_tx_inst/n798 ), .CE(\uart_tx_inst/r_SM_Main [2]), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx_inst/r_Clock_Count [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(288)
    defparam \uart_tx_inst/r_Clock_Count[5]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[5]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[5]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[5]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[5]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[5]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_Clock_Count[6]~FF  (.D(\uart_tx_inst/n801 ), .CE(\uart_tx_inst/r_SM_Main [2]), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx_inst/r_Clock_Count [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(288)
    defparam \uart_tx_inst/r_Clock_Count[6]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[6]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[6]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[6]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[6]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[6]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_Clock_Count[7]~FF  (.D(\uart_tx_inst/n804 ), .CE(\uart_tx_inst/r_SM_Main [2]), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx_inst/r_Clock_Count [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(288)
    defparam \uart_tx_inst/r_Clock_Count[7]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[7]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[7]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[7]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[7]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[7]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_Clock_Count[8]~FF  (.D(\uart_tx_inst/n807 ), .CE(\uart_tx_inst/r_SM_Main [2]), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx_inst/r_Clock_Count [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(288)
    defparam \uart_tx_inst/r_Clock_Count[8]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[8]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[8]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[8]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[8]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[8]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_Clock_Count[9]~FF  (.D(\uart_tx_inst/n810 ), .CE(\uart_tx_inst/r_SM_Main [2]), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx_inst/r_Clock_Count [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(288)
    defparam \uart_tx_inst/r_Clock_Count[9]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[9]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[9]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[9]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[9]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[9]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_Clock_Count[10]~FF  (.D(\uart_tx_inst/n813 ), .CE(\uart_tx_inst/r_SM_Main [2]), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx_inst/r_Clock_Count [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(288)
    defparam \uart_tx_inst/r_Clock_Count[10]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[10]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[10]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[10]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[10]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[10]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_Clock_Count[11]~FF  (.D(\uart_tx_inst/n816 ), .CE(\uart_tx_inst/r_SM_Main [2]), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx_inst/r_Clock_Count [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(288)
    defparam \uart_tx_inst/r_Clock_Count[11]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[11]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[11]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[11]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[11]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[11]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_Clock_Count[12]~FF  (.D(\uart_tx_inst/n819 ), .CE(\uart_tx_inst/r_SM_Main [2]), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx_inst/r_Clock_Count [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(288)
    defparam \uart_tx_inst/r_Clock_Count[12]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[12]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[12]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[12]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[12]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[12]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_Clock_Count[13]~FF  (.D(\uart_tx_inst/n822 ), .CE(\uart_tx_inst/r_SM_Main [2]), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx_inst/r_Clock_Count [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(288)
    defparam \uart_tx_inst/r_Clock_Count[13]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[13]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[13]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[13]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[13]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[13]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_Clock_Count[14]~FF  (.D(\uart_tx_inst/n825 ), .CE(\uart_tx_inst/r_SM_Main [2]), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx_inst/r_Clock_Count [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(288)
    defparam \uart_tx_inst/r_Clock_Count[14]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[14]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[14]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[14]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[14]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[14]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_Clock_Count[15]~FF  (.D(\uart_tx_inst/n828 ), .CE(\uart_tx_inst/r_SM_Main [2]), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx_inst/r_Clock_Count [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(288)
    defparam \uart_tx_inst/r_Clock_Count[15]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[15]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[15]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[15]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[15]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[15]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_Clock_Count[16]~FF  (.D(\uart_tx_inst/n831 ), .CE(\uart_tx_inst/r_SM_Main [2]), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx_inst/r_Clock_Count [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(288)
    defparam \uart_tx_inst/r_Clock_Count[16]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[16]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[16]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[16]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[16]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[16]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_Clock_Count[17]~FF  (.D(\uart_tx_inst/n834 ), .CE(\uart_tx_inst/r_SM_Main [2]), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx_inst/r_Clock_Count [17])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(288)
    defparam \uart_tx_inst/r_Clock_Count[17]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[17]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[17]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[17]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[17]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[17]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[17]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_Clock_Count[18]~FF  (.D(\uart_tx_inst/n837 ), .CE(\uart_tx_inst/r_SM_Main [2]), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx_inst/r_Clock_Count [18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(288)
    defparam \uart_tx_inst/r_Clock_Count[18]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[18]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[18]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[18]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[18]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[18]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[18]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_Clock_Count[19]~FF  (.D(\uart_tx_inst/n840 ), .CE(\uart_tx_inst/r_SM_Main [2]), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx_inst/r_Clock_Count [19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(288)
    defparam \uart_tx_inst/r_Clock_Count[19]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[19]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[19]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[19]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[19]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[19]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[19]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_Clock_Count[20]~FF  (.D(\uart_tx_inst/n843 ), .CE(\uart_tx_inst/r_SM_Main [2]), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx_inst/r_Clock_Count [20])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(288)
    defparam \uart_tx_inst/r_Clock_Count[20]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[20]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[20]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[20]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[20]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[20]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[20]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_Clock_Count[21]~FF  (.D(\uart_tx_inst/n846 ), .CE(\uart_tx_inst/r_SM_Main [2]), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx_inst/r_Clock_Count [21])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(288)
    defparam \uart_tx_inst/r_Clock_Count[21]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[21]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[21]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[21]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[21]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[21]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[21]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_Clock_Count[22]~FF  (.D(\uart_tx_inst/n849 ), .CE(\uart_tx_inst/r_SM_Main [2]), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx_inst/r_Clock_Count [22])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(288)
    defparam \uart_tx_inst/r_Clock_Count[22]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[22]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[22]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[22]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[22]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[22]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[22]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_Clock_Count[23]~FF  (.D(\uart_tx_inst/n852 ), .CE(\uart_tx_inst/r_SM_Main [2]), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx_inst/r_Clock_Count [23])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(288)
    defparam \uart_tx_inst/r_Clock_Count[23]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[23]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[23]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[23]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[23]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[23]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[23]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_Clock_Count[24]~FF  (.D(\uart_tx_inst/n855 ), .CE(\uart_tx_inst/r_SM_Main [2]), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx_inst/r_Clock_Count [24])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(288)
    defparam \uart_tx_inst/r_Clock_Count[24]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[24]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[24]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[24]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[24]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[24]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[24]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_Clock_Count[25]~FF  (.D(\uart_tx_inst/n858 ), .CE(\uart_tx_inst/r_SM_Main [2]), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx_inst/r_Clock_Count [25])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(288)
    defparam \uart_tx_inst/r_Clock_Count[25]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[25]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[25]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[25]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[25]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[25]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[25]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_Clock_Count[26]~FF  (.D(\uart_tx_inst/n861 ), .CE(\uart_tx_inst/r_SM_Main [2]), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx_inst/r_Clock_Count [26])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(288)
    defparam \uart_tx_inst/r_Clock_Count[26]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[26]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[26]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[26]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[26]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[26]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[26]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_Clock_Count[27]~FF  (.D(\uart_tx_inst/n864 ), .CE(\uart_tx_inst/r_SM_Main [2]), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx_inst/r_Clock_Count [27])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(288)
    defparam \uart_tx_inst/r_Clock_Count[27]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[27]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[27]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[27]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[27]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[27]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[27]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_Clock_Count[28]~FF  (.D(\uart_tx_inst/n867 ), .CE(\uart_tx_inst/r_SM_Main [2]), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx_inst/r_Clock_Count [28])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(288)
    defparam \uart_tx_inst/r_Clock_Count[28]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[28]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[28]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[28]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[28]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[28]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[28]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_Clock_Count[29]~FF  (.D(\uart_tx_inst/n870 ), .CE(\uart_tx_inst/r_SM_Main [2]), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx_inst/r_Clock_Count [29])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(288)
    defparam \uart_tx_inst/r_Clock_Count[29]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[29]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[29]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[29]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[29]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[29]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[29]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_Clock_Count[30]~FF  (.D(\uart_tx_inst/n873 ), .CE(\uart_tx_inst/r_SM_Main [2]), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx_inst/r_Clock_Count [30])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(288)
    defparam \uart_tx_inst/r_Clock_Count[30]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[30]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[30]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[30]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[30]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[30]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[30]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_Clock_Count[31]~FF  (.D(\uart_tx_inst/n876 ), .CE(\uart_tx_inst/r_SM_Main [2]), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx_inst/r_Clock_Count [31])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(288)
    defparam \uart_tx_inst/r_Clock_Count[31]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[31]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[31]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[31]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[31]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[31]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[31]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_Bit_Index[1]~FF  (.D(\uart_tx_inst/n880 ), .CE(ceg_net28), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx_inst/r_Bit_Index [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(288)
    defparam \uart_tx_inst/r_Bit_Index[1]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Bit_Index[1]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_inst/r_Bit_Index[1]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Bit_Index[1]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Bit_Index[1]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_Bit_Index[1]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_Bit_Index[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_Bit_Index[2]~FF  (.D(\uart_tx_inst/n884 ), .CE(ceg_net28), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx_inst/r_Bit_Index [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(288)
    defparam \uart_tx_inst/r_Bit_Index[2]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Bit_Index[2]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_inst/r_Bit_Index[2]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Bit_Index[2]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Bit_Index[2]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_Bit_Index[2]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_Bit_Index[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_config_data[31]~FF  (.D(1'b1), .CE(\uart_tx_inst/n1032 ), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx_inst/r_config_data [31])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(288)
    defparam \uart_tx_inst/r_config_data[31]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_config_data[31]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_inst/r_config_data[31]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_config_data[31]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_config_data[31]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_config_data[31]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_config_data[31]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_Tx_Data[3]~FF  (.D(carry), .CE(\uart_tx_inst/n1224 ), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx_inst/r_Tx_Data [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(288)
    defparam \uart_tx_inst/r_Tx_Data[3]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Tx_Data[3]~FF .CE_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Tx_Data[3]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Tx_Data[3]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Tx_Data[3]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_Tx_Data[3]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_Tx_Data[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_Tx_Data[4]~FF  (.D(sum[0]), .CE(\uart_tx_inst/n1224 ), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx_inst/r_Tx_Data [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(288)
    defparam \uart_tx_inst/r_Tx_Data[4]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Tx_Data[4]~FF .CE_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Tx_Data[4]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Tx_Data[4]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Tx_Data[4]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_Tx_Data[4]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_Tx_Data[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_Tx_Data[5]~FF  (.D(sum[1]), .CE(\uart_tx_inst/n1224 ), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx_inst/r_Tx_Data [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(288)
    defparam \uart_tx_inst/r_Tx_Data[5]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Tx_Data[5]~FF .CE_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Tx_Data[5]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Tx_Data[5]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Tx_Data[5]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_Tx_Data[5]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_Tx_Data[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_Tx_Data[6]~FF  (.D(sum[2]), .CE(\uart_tx_inst/n1224 ), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx_inst/r_Tx_Data [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(288)
    defparam \uart_tx_inst/r_Tx_Data[6]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Tx_Data[6]~FF .CE_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Tx_Data[6]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Tx_Data[6]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Tx_Data[6]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_Tx_Data[6]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_Tx_Data[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_Tx_Data[7]~FF  (.D(sum[3]), .CE(\uart_tx_inst/n1224 ), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx_inst/r_Tx_Data [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(288)
    defparam \uart_tx_inst/r_Tx_Data[7]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Tx_Data[7]~FF .CE_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Tx_Data[7]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Tx_Data[7]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Tx_Data[7]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_Tx_Data[7]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_Tx_Data[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_SM_Main[1]~FF  (.D(\uart_tx_inst/n779 ), .CE(1'b1), 
           .CLK(\clk~O ), .SR(\uart_tx_inst/r_SM_Main [2]), .Q(\uart_tx_inst/r_SM_Main [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(288)
    defparam \uart_tx_inst/r_SM_Main[1]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_SM_Main[1]~FF .CE_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_SM_Main[1]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_SM_Main[1]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_SM_Main[1]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_SM_Main[1]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_SM_Main[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_SM_Main[2]~FF  (.D(\uart_tx_inst/n50 ), .CE(1'b1), 
           .CLK(\clk~O ), .SR(\uart_tx_inst/n1206 ), .Q(\uart_tx_inst/r_SM_Main [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(288)
    defparam \uart_tx_inst/r_SM_Main[2]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_SM_Main[2]~FF .CE_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_SM_Main[2]~FF .SR_POLARITY = 1'b0;
    defparam \uart_tx_inst/r_SM_Main[2]~FF .D_POLARITY = 1'b0;
    defparam \uart_tx_inst/r_SM_Main[2]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_SM_Main[2]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_SM_Main[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \a[1]~FF  (.D(rx_data[5]), .CE(rx_ready), .CLK(\clk~O ), .SR(1'b0), 
           .Q(a[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(38)
    defparam \a[1]~FF .CLK_POLARITY = 1'b1;
    defparam \a[1]~FF .CE_POLARITY = 1'b1;
    defparam \a[1]~FF .SR_POLARITY = 1'b1;
    defparam \a[1]~FF .D_POLARITY = 1'b1;
    defparam \a[1]~FF .SR_SYNC = 1'b1;
    defparam \a[1]~FF .SR_VALUE = 1'b0;
    defparam \a[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \a[2]~FF  (.D(rx_data[6]), .CE(rx_ready), .CLK(\clk~O ), .SR(1'b0), 
           .Q(a[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(38)
    defparam \a[2]~FF .CLK_POLARITY = 1'b1;
    defparam \a[2]~FF .CE_POLARITY = 1'b1;
    defparam \a[2]~FF .SR_POLARITY = 1'b1;
    defparam \a[2]~FF .D_POLARITY = 1'b1;
    defparam \a[2]~FF .SR_SYNC = 1'b1;
    defparam \a[2]~FF .SR_VALUE = 1'b0;
    defparam \a[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \a[3]~FF  (.D(rx_data[7]), .CE(rx_ready), .CLK(\clk~O ), .SR(1'b0), 
           .Q(a[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(38)
    defparam \a[3]~FF .CLK_POLARITY = 1'b1;
    defparam \a[3]~FF .CE_POLARITY = 1'b1;
    defparam \a[3]~FF .SR_POLARITY = 1'b1;
    defparam \a[3]~FF .D_POLARITY = 1'b1;
    defparam \a[3]~FF .SR_SYNC = 1'b1;
    defparam \a[3]~FF .SR_VALUE = 1'b0;
    defparam \a[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_LUT4 LUT__350 (.I0(b[0]), .I1(a[0]), .O(n30_2[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(36)
    defparam LUT__350.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__351 (.I0(rx_ready), .I1(\uart_rx_inst/r_Rx_Byte [4]), 
            .O(rx_data[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(171)
    defparam LUT__351.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__352 (.I0(\uart_rx_inst/r_Clock_Count [0]), .I1(\uart_rx_inst/r_config_data [1]), 
            .I2(\uart_rx_inst/r_Clock_Count [1]), .I3(\uart_rx_inst/r_Clock_Count [2]), 
            .O(n226)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb200 */ ;
    defparam LUT__352.LUTMASK = 16'hb200;
    EFX_LUT4 LUT__353 (.I0(\uart_rx_inst/r_Clock_Count [4]), .I1(\uart_rx_inst/r_Clock_Count [5]), 
            .O(n227)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__353.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__354 (.I0(n226), .I1(\uart_rx_inst/r_config_data [1]), 
            .I2(\uart_rx_inst/r_Clock_Count [3]), .I3(n227), .O(n228)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb200 */ ;
    defparam LUT__354.LUTMASK = 16'hb200;
    EFX_LUT4 LUT__355 (.I0(\uart_rx_inst/r_Clock_Count [7]), .I1(\uart_rx_inst/r_Clock_Count [8]), 
            .O(n229)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__355.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__356 (.I0(n228), .I1(\uart_rx_inst/r_config_data [1]), 
            .I2(\uart_rx_inst/r_Clock_Count [6]), .I3(n229), .O(n230)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb200 */ ;
    defparam LUT__356.LUTMASK = 16'hb200;
    EFX_LUT4 LUT__357 (.I0(\uart_rx_inst/r_Clock_Count [9]), .I1(\uart_rx_inst/r_Clock_Count [19]), 
            .I2(\uart_rx_inst/r_Clock_Count [31]), .I3(\uart_rx_inst/r_config_data [1]), 
            .O(n231)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7ffe */ ;
    defparam LUT__357.LUTMASK = 16'h7ffe;
    EFX_LUT4 LUT__358 (.I0(\uart_rx_inst/r_Clock_Count [10]), .I1(\uart_rx_inst/r_Clock_Count [11]), 
            .I2(\uart_rx_inst/r_Clock_Count [15]), .O(n232)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7e7e */ ;
    defparam LUT__358.LUTMASK = 16'h7e7e;
    EFX_LUT4 LUT__359 (.I0(\uart_rx_inst/r_Clock_Count [10]), .I1(\uart_rx_inst/r_Clock_Count [20]), 
            .I2(\uart_rx_inst/r_Clock_Count [21]), .I3(\uart_rx_inst/r_Clock_Count [24]), 
            .O(n233)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7ffe */ ;
    defparam LUT__359.LUTMASK = 16'h7ffe;
    EFX_LUT4 LUT__360 (.I0(\uart_rx_inst/r_Clock_Count [10]), .I1(\uart_rx_inst/r_Clock_Count [25]), 
            .I2(\uart_rx_inst/r_Clock_Count [27]), .I3(\uart_rx_inst/r_config_data [1]), 
            .O(n234)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7ffe */ ;
    defparam LUT__360.LUTMASK = 16'h7ffe;
    EFX_LUT4 LUT__361 (.I0(n232), .I1(n233), .I2(n234), .O(n235)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__361.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__362 (.I0(\uart_rx_inst/r_Clock_Count [12]), .I1(\uart_rx_inst/r_Clock_Count [13]), 
            .I2(\uart_rx_inst/r_config_data [1]), .O(n236)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7e7e */ ;
    defparam LUT__362.LUTMASK = 16'h7e7e;
    EFX_LUT4 LUT__363 (.I0(n236), .I1(\uart_rx_inst/r_Clock_Count [22]), 
            .I2(\uart_rx_inst/r_Clock_Count [23]), .I3(\uart_rx_inst/r_config_data [1]), 
            .O(n237)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4001 */ ;
    defparam LUT__363.LUTMASK = 16'h4001;
    EFX_LUT4 LUT__364 (.I0(\uart_rx_inst/r_Clock_Count [14]), .I1(\uart_rx_inst/r_Clock_Count [16]), 
            .I2(\uart_rx_inst/r_Clock_Count [17]), .O(n238)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7e7e */ ;
    defparam LUT__364.LUTMASK = 16'h7e7e;
    EFX_LUT4 LUT__365 (.I0(\uart_rx_inst/r_Clock_Count [14]), .I1(\uart_rx_inst/r_Clock_Count [18]), 
            .I2(\uart_rx_inst/r_Clock_Count [26]), .I3(\uart_rx_inst/r_Clock_Count [28]), 
            .O(n239)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7ffe */ ;
    defparam LUT__365.LUTMASK = 16'h7ffe;
    EFX_LUT4 LUT__366 (.I0(\uart_rx_inst/r_Clock_Count [14]), .I1(\uart_rx_inst/r_Clock_Count [29]), 
            .I2(\uart_rx_inst/r_Clock_Count [30]), .I3(\uart_rx_inst/r_config_data [1]), 
            .O(n240)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7ffe */ ;
    defparam LUT__366.LUTMASK = 16'h7ffe;
    EFX_LUT4 LUT__367 (.I0(n238), .I1(n239), .I2(n240), .O(n241)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__367.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__368 (.I0(n231), .I1(n235), .I2(n237), .I3(n241), .O(n242)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__368.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__369 (.I0(\uart_rx_inst/r_SM_Main [2]), .I1(\uart_rx_inst/r_SM_Main [1]), 
            .O(\uart_rx_inst/n337 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(167)
    defparam LUT__369.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__370 (.I0(\uart_rx_inst/r_config_data [1]), .I1(n230), 
            .I2(n242), .I3(\uart_rx_inst/n337 ), .O(n243)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc500 */ ;
    defparam LUT__370.LUTMASK = 16'hc500;
    EFX_LUT4 LUT__371 (.I0(\uart_rx_inst/r_SM_Main [0]), .I1(\uart_rx_inst/r_Bit_Index [0]), 
            .O(n244)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__371.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__372 (.I0(\uart_rx_inst/r_Bit_Index [1]), .I1(\uart_rx_inst/r_Bit_Index [2]), 
            .I2(n243), .I3(n244), .O(\uart_rx_inst/n1220 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(17)
    defparam LUT__372.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__373 (.I0(\uart_rx_inst/r_Bit_Index [0]), .I1(\uart_rx_inst/r_SM_Main [1]), 
            .I2(\uart_rx_inst/r_Bit_Index [1]), .I3(\uart_rx_inst/r_Bit_Index [2]), 
            .O(n245)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__373.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__374 (.I0(\uart_rx_inst/r_SM_Main [1]), .I1(\uart_rx_inst/r_Rx_Data ), 
            .I2(\uart_rx_inst/r_SM_Main [0]), .O(n246)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b0b */ ;
    defparam LUT__374.LUTMASK = 16'h0b0b;
    EFX_LUT4 LUT__375 (.I0(\uart_rx_inst/r_config_data [1]), .I1(n230), 
            .I2(n242), .I3(\uart_rx_inst/r_SM_Main [1]), .O(n247)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3a00 */ ;
    defparam LUT__375.LUTMASK = 16'h3a00;
    EFX_LUT4 LUT__376 (.I0(\uart_rx_inst/r_Clock_Count [8]), .I1(\uart_rx_inst/r_Clock_Count [9]), 
            .I2(\uart_rx_inst/r_Clock_Count [19]), .I3(\uart_rx_inst/r_config_data [1]), 
            .O(n248)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7ffe */ ;
    defparam LUT__376.LUTMASK = 16'h7ffe;
    EFX_LUT4 LUT__377 (.I0(\uart_rx_inst/r_Clock_Count [0]), .I1(\uart_rx_inst/r_Clock_Count [2]), 
            .I2(\uart_rx_inst/r_Clock_Count [5]), .I3(\uart_rx_inst/r_config_data [1]), 
            .O(n249)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7ffe */ ;
    defparam LUT__377.LUTMASK = 16'h7ffe;
    EFX_LUT4 LUT__378 (.I0(n248), .I1(n249), .O(n250)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__378.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__379 (.I0(n235), .I1(n237), .I2(n250), .O(n251)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__379.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__380 (.I0(\uart_rx_inst/r_Clock_Count [6]), .I1(\uart_rx_inst/r_Clock_Count [7]), 
            .O(n252)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__380.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__381 (.I0(\uart_rx_inst/r_Clock_Count [31]), .I1(\uart_rx_inst/r_Clock_Count [3]), 
            .I2(\uart_rx_inst/r_Clock_Count [4]), .I3(\uart_rx_inst/r_Clock_Count [1]), 
            .O(n253)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__381.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__382 (.I0(n241), .I1(n252), .I2(n253), .O(n254)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__382.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__383 (.I0(n254), .I1(n251), .I2(\uart_rx_inst/r_SM_Main [1]), 
            .I3(\uart_rx_inst/r_SM_Main [0]), .O(n255)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf800 */ ;
    defparam LUT__383.LUTMASK = 16'hf800;
    EFX_LUT4 LUT__384 (.I0(n245), .I1(n246), .I2(n247), .I3(n255), .O(\uart_rx_inst/n1139 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h303b */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(167)
    defparam LUT__384.LUTMASK = 16'h303b;
    EFX_LUT4 LUT__385 (.I0(n235), .I1(n237), .O(n256)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__385.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__386 (.I0(\uart_rx_inst/r_SM_Main [1]), .I1(\uart_rx_inst/r_SM_Main [0]), 
            .O(n257)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__386.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__387 (.I0(n256), .I1(n254), .I2(n250), .I3(n257), .O(n258)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f00 */ ;
    defparam LUT__387.LUTMASK = 16'h7f00;
    EFX_LUT4 LUT__388 (.I0(n258), .I1(n247), .I2(\uart_rx_inst/r_Clock_Count [0]), 
            .O(\uart_rx_inst/n1142 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e0e */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(167)
    defparam LUT__388.LUTMASK = 16'h0e0e;
    EFX_LUT4 LUT__389 (.I0(n256), .I1(n254), .I2(n250), .I3(n257), .O(n259)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__389.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__390 (.I0(\uart_rx_inst/r_Rx_Data ), .I1(n259), .I2(\uart_rx_inst/r_SM_Main [2]), 
            .O(ceg_net14)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf4f4 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(80)
    defparam LUT__390.LUTMASK = 16'hf4f4;
    EFX_LUT4 LUT__391 (.I0(\uart_rx_inst/r_config_data [1]), .I1(n230), 
            .I2(n242), .O(\uart_rx_inst/n151 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3a3a */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(129)
    defparam LUT__391.LUTMASK = 16'h3a3a;
    EFX_LUT4 LUT__392 (.I0(\uart_rx_inst/n151 ), .I1(\uart_rx_inst/r_SM_Main [2]), 
            .I2(\uart_rx_inst/r_SM_Main [1]), .I3(\uart_rx_inst/r_SM_Main [0]), 
            .O(ceg_net32)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heff0 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(80)
    defparam LUT__392.LUTMASK = 16'heff0;
    EFX_LUT4 LUT__393 (.I0(\uart_rx_inst/r_Bit_Index [0]), .I1(\uart_rx_inst/r_SM_Main [1]), 
            .O(\uart_rx_inst/n1150 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(143)
    defparam LUT__393.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__394 (.I0(n247), .I1(\uart_rx_inst/r_SM_Main [0]), .I2(\uart_rx_inst/r_SM_Main [2]), 
            .O(ceg_net26)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfefe */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(80)
    defparam LUT__394.LUTMASK = 16'hfefe;
    EFX_LUT4 LUT__395 (.I0(\uart_rx_inst/r_SM_Main [0]), .I1(\uart_rx_inst/r_Bit_Index [0]), 
            .O(n260)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__395.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__396 (.I0(\uart_rx_inst/r_Bit_Index [1]), .I1(\uart_rx_inst/r_Bit_Index [2]), 
            .I2(n243), .I3(n260), .O(\uart_rx_inst/n1199 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(17)
    defparam LUT__396.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__397 (.I0(\uart_rx_inst/r_Bit_Index [2]), .I1(n244), .I2(\uart_rx_inst/r_Bit_Index [1]), 
            .I3(n243), .O(\uart_rx_inst/n1202 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(17)
    defparam LUT__397.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__398 (.I0(\uart_rx_inst/r_Bit_Index [2]), .I1(n260), .I2(\uart_rx_inst/r_Bit_Index [1]), 
            .I3(n243), .O(\uart_rx_inst/n1205 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(17)
    defparam LUT__398.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__399 (.I0(\uart_rx_inst/r_Bit_Index [1]), .I1(n244), .I2(n243), 
            .I3(\uart_rx_inst/r_Bit_Index [2]), .O(\uart_rx_inst/n1208 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(17)
    defparam LUT__399.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__400 (.I0(\uart_rx_inst/r_Bit_Index [1]), .I1(n260), .I2(n243), 
            .I3(\uart_rx_inst/r_Bit_Index [2]), .O(\uart_rx_inst/n1211 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(17)
    defparam LUT__400.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__401 (.I0(n244), .I1(\uart_rx_inst/r_Bit_Index [1]), .I2(\uart_rx_inst/r_Bit_Index [2]), 
            .O(n261)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__401.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__402 (.I0(\uart_rx_inst/n151 ), .I1(n261), .I2(\uart_rx_inst/r_SM_Main [1]), 
            .O(\uart_rx_inst/n1212 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(17)
    defparam LUT__402.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__403 (.I0(n243), .I1(n260), .I2(\uart_rx_inst/r_Bit_Index [1]), 
            .I3(\uart_rx_inst/r_Bit_Index [2]), .O(\uart_rx_inst/n1217 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(17)
    defparam LUT__403.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__404 (.I0(\uart_rx_inst/r_SM_Main [0]), .I1(\uart_rx_inst/r_SM_Main [1]), 
            .O(n262)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__404.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__405 (.I0(\uart_rx_inst/r_Rx_Data ), .I1(n259), .I2(n262), 
            .I3(n247), .O(\uart_rx_inst/n826 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfff8 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(167)
    defparam LUT__405.LUTMASK = 16'hfff8;
    EFX_LUT4 LUT__406 (.I0(\uart_rx_inst/n337 ), .I1(\uart_rx_inst/r_SM_Main [0]), 
            .O(\uart_rx_inst/n1180 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(17)
    defparam LUT__406.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__407 (.I0(n247), .I1(n258), .I2(\uart_rx_inst/r_Clock_Count [0]), 
            .I3(\uart_rx_inst/r_Clock_Count [1]), .O(\uart_rx_inst/n833 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0ee0 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(167)
    defparam LUT__407.LUTMASK = 16'h0ee0;
    EFX_LUT4 LUT__408 (.I0(\uart_rx_inst/r_Clock_Count [0]), .I1(\uart_rx_inst/r_Clock_Count [1]), 
            .O(n263)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__408.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__409 (.I0(n247), .I1(n258), .I2(n263), .I3(\uart_rx_inst/r_Clock_Count [2]), 
            .O(\uart_rx_inst/n836 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0ee0 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(167)
    defparam LUT__409.LUTMASK = 16'h0ee0;
    EFX_LUT4 LUT__410 (.I0(n263), .I1(\uart_rx_inst/r_Clock_Count [2]), 
            .I2(\uart_rx_inst/r_Clock_Count [3]), .O(n264)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__410.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__411 (.I0(n258), .I1(n247), .I2(n264), .O(\uart_rx_inst/n839 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(167)
    defparam LUT__411.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__412 (.I0(\uart_rx_inst/r_Clock_Count [0]), .I1(\uart_rx_inst/r_Clock_Count [1]), 
            .I2(\uart_rx_inst/r_Clock_Count [2]), .I3(\uart_rx_inst/r_Clock_Count [3]), 
            .O(n265)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__412.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__413 (.I0(n247), .I1(n258), .I2(n265), .I3(\uart_rx_inst/r_Clock_Count [4]), 
            .O(\uart_rx_inst/n842 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0ee0 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(167)
    defparam LUT__413.LUTMASK = 16'h0ee0;
    EFX_LUT4 LUT__414 (.I0(n265), .I1(\uart_rx_inst/r_Clock_Count [4]), 
            .O(n266)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__414.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__415 (.I0(n247), .I1(n258), .I2(n266), .I3(\uart_rx_inst/r_Clock_Count [5]), 
            .O(\uart_rx_inst/n845 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0ee0 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(167)
    defparam LUT__415.LUTMASK = 16'h0ee0;
    EFX_LUT4 LUT__416 (.I0(n227), .I1(n265), .O(n267)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__416.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__417 (.I0(n247), .I1(n258), .I2(n267), .I3(\uart_rx_inst/r_Clock_Count [6]), 
            .O(\uart_rx_inst/n848 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0ee0 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(167)
    defparam LUT__417.LUTMASK = 16'h0ee0;
    EFX_LUT4 LUT__418 (.I0(n267), .I1(\uart_rx_inst/r_Clock_Count [6]), 
            .I2(\uart_rx_inst/r_Clock_Count [7]), .O(n268)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8787 */ ;
    defparam LUT__418.LUTMASK = 16'h8787;
    EFX_LUT4 LUT__419 (.I0(n258), .I1(n247), .I2(n268), .O(\uart_rx_inst/n851 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e0e */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(167)
    defparam LUT__419.LUTMASK = 16'h0e0e;
    EFX_LUT4 LUT__420 (.I0(n267), .I1(n252), .O(n269)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__420.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__421 (.I0(n247), .I1(n258), .I2(n269), .I3(\uart_rx_inst/r_Clock_Count [8]), 
            .O(\uart_rx_inst/n854 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0ee0 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(167)
    defparam LUT__421.LUTMASK = 16'h0ee0;
    EFX_LUT4 LUT__422 (.I0(n269), .I1(\uart_rx_inst/r_Clock_Count [8]), 
            .O(n270)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__422.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__423 (.I0(n247), .I1(n258), .I2(n270), .I3(\uart_rx_inst/r_Clock_Count [9]), 
            .O(\uart_rx_inst/n857 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0ee0 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(167)
    defparam LUT__423.LUTMASK = 16'h0ee0;
    EFX_LUT4 LUT__424 (.I0(\uart_rx_inst/r_Clock_Count [6]), .I1(\uart_rx_inst/r_Clock_Count [7]), 
            .I2(\uart_rx_inst/r_Clock_Count [8]), .I3(\uart_rx_inst/r_Clock_Count [9]), 
            .O(n271)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__424.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__425 (.I0(n267), .I1(n271), .O(n272)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__425.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__426 (.I0(n247), .I1(n258), .I2(n272), .I3(\uart_rx_inst/r_Clock_Count [10]), 
            .O(\uart_rx_inst/n860 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0ee0 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(167)
    defparam LUT__426.LUTMASK = 16'h0ee0;
    EFX_LUT4 LUT__427 (.I0(n272), .I1(\uart_rx_inst/r_Clock_Count [10]), 
            .O(n273)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__427.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__428 (.I0(n247), .I1(n258), .I2(n273), .I3(\uart_rx_inst/r_Clock_Count [11]), 
            .O(\uart_rx_inst/n863 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0ee0 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(167)
    defparam LUT__428.LUTMASK = 16'h0ee0;
    EFX_LUT4 LUT__429 (.I0(n272), .I1(\uart_rx_inst/r_Clock_Count [10]), 
            .I2(\uart_rx_inst/r_Clock_Count [11]), .I3(\uart_rx_inst/r_Clock_Count [12]), 
            .O(n274)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;
    defparam LUT__429.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__430 (.I0(n258), .I1(n247), .I2(n274), .O(\uart_rx_inst/n866 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(167)
    defparam LUT__430.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__431 (.I0(n272), .I1(\uart_rx_inst/r_Clock_Count [10]), 
            .I2(\uart_rx_inst/r_Clock_Count [11]), .I3(\uart_rx_inst/r_Clock_Count [12]), 
            .O(n275)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__431.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__432 (.I0(n247), .I1(n258), .I2(n275), .I3(\uart_rx_inst/r_Clock_Count [13]), 
            .O(\uart_rx_inst/n869 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0ee0 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(167)
    defparam LUT__432.LUTMASK = 16'h0ee0;
    EFX_LUT4 LUT__433 (.I0(\uart_rx_inst/r_Clock_Count [10]), .I1(\uart_rx_inst/r_Clock_Count [11]), 
            .I2(\uart_rx_inst/r_Clock_Count [12]), .I3(\uart_rx_inst/r_Clock_Count [13]), 
            .O(n276)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__433.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__434 (.I0(n276), .I1(n227), .I2(n265), .I3(n271), .O(n277)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__434.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__435 (.I0(n247), .I1(n258), .I2(n277), .I3(\uart_rx_inst/r_Clock_Count [14]), 
            .O(\uart_rx_inst/n872 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0ee0 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(167)
    defparam LUT__435.LUTMASK = 16'h0ee0;
    EFX_LUT4 LUT__436 (.I0(n277), .I1(\uart_rx_inst/r_Clock_Count [14]), 
            .O(n278)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__436.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__437 (.I0(n247), .I1(n258), .I2(n278), .I3(\uart_rx_inst/r_Clock_Count [15]), 
            .O(\uart_rx_inst/n875 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0ee0 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(167)
    defparam LUT__437.LUTMASK = 16'h0ee0;
    EFX_LUT4 LUT__438 (.I0(n278), .I1(\uart_rx_inst/r_Clock_Count [15]), 
            .O(n279)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__438.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__439 (.I0(n247), .I1(n258), .I2(n279), .I3(\uart_rx_inst/r_Clock_Count [16]), 
            .O(\uart_rx_inst/n878 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0ee0 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(167)
    defparam LUT__439.LUTMASK = 16'h0ee0;
    EFX_LUT4 LUT__440 (.I0(n278), .I1(\uart_rx_inst/r_Clock_Count [15]), 
            .I2(\uart_rx_inst/r_Clock_Count [16]), .O(n280)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__440.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__441 (.I0(n247), .I1(n258), .I2(n280), .I3(\uart_rx_inst/r_Clock_Count [17]), 
            .O(\uart_rx_inst/n881 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0ee0 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(167)
    defparam LUT__441.LUTMASK = 16'h0ee0;
    EFX_LUT4 LUT__442 (.I0(n278), .I1(\uart_rx_inst/r_Clock_Count [15]), 
            .I2(\uart_rx_inst/r_Clock_Count [16]), .I3(\uart_rx_inst/r_Clock_Count [17]), 
            .O(n281)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__442.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__443 (.I0(n247), .I1(n258), .I2(n281), .I3(\uart_rx_inst/r_Clock_Count [18]), 
            .O(\uart_rx_inst/n884 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0ee0 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(167)
    defparam LUT__443.LUTMASK = 16'h0ee0;
    EFX_LUT4 LUT__444 (.I0(\uart_rx_inst/r_Clock_Count [16]), .I1(\uart_rx_inst/r_Clock_Count [17]), 
            .I2(\uart_rx_inst/r_Clock_Count [18]), .O(n282)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__444.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__445 (.I0(n277), .I1(n282), .I2(\uart_rx_inst/r_Clock_Count [14]), 
            .I3(\uart_rx_inst/r_Clock_Count [15]), .O(n283)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__445.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__446 (.I0(n247), .I1(n258), .I2(n283), .I3(\uart_rx_inst/r_Clock_Count [19]), 
            .O(\uart_rx_inst/n887 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0ee0 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(167)
    defparam LUT__446.LUTMASK = 16'h0ee0;
    EFX_LUT4 LUT__447 (.I0(\uart_rx_inst/r_Clock_Count [14]), .I1(\uart_rx_inst/r_Clock_Count [15]), 
            .I2(\uart_rx_inst/r_Clock_Count [18]), .I3(\uart_rx_inst/r_Clock_Count [19]), 
            .O(n284)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__447.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__448 (.I0(n277), .I1(n284), .I2(\uart_rx_inst/r_Clock_Count [16]), 
            .I3(\uart_rx_inst/r_Clock_Count [17]), .O(n285)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__448.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__449 (.I0(n247), .I1(n258), .I2(n285), .I3(\uart_rx_inst/r_Clock_Count [20]), 
            .O(\uart_rx_inst/n890 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0ee0 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(167)
    defparam LUT__449.LUTMASK = 16'h0ee0;
    EFX_LUT4 LUT__450 (.I0(n284), .I1(\uart_rx_inst/r_Clock_Count [16]), 
            .I2(\uart_rx_inst/r_Clock_Count [17]), .I3(\uart_rx_inst/r_Clock_Count [20]), 
            .O(n286)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__450.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__451 (.I0(n277), .I1(n286), .I2(\uart_rx_inst/r_Clock_Count [21]), 
            .O(n287)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8787 */ ;
    defparam LUT__451.LUTMASK = 16'h8787;
    EFX_LUT4 LUT__452 (.I0(n258), .I1(n247), .I2(n287), .O(\uart_rx_inst/n893 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e0e */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(167)
    defparam LUT__452.LUTMASK = 16'h0e0e;
    EFX_LUT4 LUT__453 (.I0(\uart_rx_inst/r_Clock_Count [16]), .I1(\uart_rx_inst/r_Clock_Count [17]), 
            .I2(\uart_rx_inst/r_Clock_Count [20]), .I3(\uart_rx_inst/r_Clock_Count [21]), 
            .O(n288)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__453.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__454 (.I0(n271), .I1(n288), .O(n289)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__454.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__455 (.I0(n267), .I1(n289), .I2(n276), .I3(n284), .O(n290)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__455.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__456 (.I0(n247), .I1(n258), .I2(n290), .I3(\uart_rx_inst/r_Clock_Count [22]), 
            .O(\uart_rx_inst/n896 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0ee0 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(167)
    defparam LUT__456.LUTMASK = 16'h0ee0;
    EFX_LUT4 LUT__457 (.I0(n290), .I1(\uart_rx_inst/r_Clock_Count [22]), 
            .O(n291)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__457.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__458 (.I0(n247), .I1(n258), .I2(n291), .I3(\uart_rx_inst/r_Clock_Count [23]), 
            .O(\uart_rx_inst/n899 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0ee0 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(167)
    defparam LUT__458.LUTMASK = 16'h0ee0;
    EFX_LUT4 LUT__459 (.I0(\uart_rx_inst/r_Clock_Count [22]), .I1(\uart_rx_inst/r_Clock_Count [23]), 
            .O(n292)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__459.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__460 (.I0(n276), .I1(n292), .I2(n271), .I3(n288), .O(n293)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__460.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__461 (.I0(n267), .I1(n293), .I2(n284), .O(n294)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__461.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__462 (.I0(n247), .I1(n258), .I2(n294), .I3(\uart_rx_inst/r_Clock_Count [24]), 
            .O(\uart_rx_inst/n902 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0ee0 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(167)
    defparam LUT__462.LUTMASK = 16'h0ee0;
    EFX_LUT4 LUT__463 (.I0(n294), .I1(\uart_rx_inst/r_Clock_Count [24]), 
            .O(n295)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__463.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__464 (.I0(n247), .I1(n258), .I2(n295), .I3(\uart_rx_inst/r_Clock_Count [25]), 
            .O(\uart_rx_inst/n905 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0ee0 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(167)
    defparam LUT__464.LUTMASK = 16'h0ee0;
    EFX_LUT4 LUT__465 (.I0(\uart_rx_inst/r_Clock_Count [24]), .I1(\uart_rx_inst/r_Clock_Count [25]), 
            .O(n296)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__465.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__466 (.I0(n294), .I1(n296), .O(n297)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__466.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__467 (.I0(n247), .I1(n258), .I2(n297), .I3(\uart_rx_inst/r_Clock_Count [26]), 
            .O(\uart_rx_inst/n908 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0ee0 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(167)
    defparam LUT__467.LUTMASK = 16'h0ee0;
    EFX_LUT4 LUT__468 (.I0(n294), .I1(\uart_rx_inst/r_Clock_Count [24]), 
            .I2(\uart_rx_inst/r_Clock_Count [25]), .I3(\uart_rx_inst/r_Clock_Count [26]), 
            .O(n298)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__468.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__469 (.I0(n247), .I1(n258), .I2(n298), .I3(\uart_rx_inst/r_Clock_Count [27]), 
            .O(\uart_rx_inst/n911 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0ee0 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(167)
    defparam LUT__469.LUTMASK = 16'h0ee0;
    EFX_LUT4 LUT__470 (.I0(n296), .I1(\uart_rx_inst/r_Clock_Count [26]), 
            .I2(\uart_rx_inst/r_Clock_Count [27]), .O(n299)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__470.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__471 (.I0(n299), .I1(n292), .O(n300)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__471.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__472 (.I0(n290), .I1(n300), .O(n301)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__472.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__473 (.I0(n247), .I1(n258), .I2(n301), .I3(\uart_rx_inst/r_Clock_Count [28]), 
            .O(\uart_rx_inst/n914 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0ee0 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(167)
    defparam LUT__473.LUTMASK = 16'h0ee0;
    EFX_LUT4 LUT__474 (.I0(n290), .I1(n300), .I2(\uart_rx_inst/r_Clock_Count [28]), 
            .O(n302)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__474.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__475 (.I0(n247), .I1(n258), .I2(n302), .I3(\uart_rx_inst/r_Clock_Count [29]), 
            .O(\uart_rx_inst/n917 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0ee0 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(167)
    defparam LUT__475.LUTMASK = 16'h0ee0;
    EFX_LUT4 LUT__476 (.I0(n299), .I1(n292), .I2(\uart_rx_inst/r_Clock_Count [28]), 
            .I3(\uart_rx_inst/r_Clock_Count [29]), .O(n303)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__476.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__477 (.I0(n290), .I1(n303), .O(n304)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__477.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__478 (.I0(n247), .I1(n258), .I2(n304), .I3(\uart_rx_inst/r_Clock_Count [30]), 
            .O(\uart_rx_inst/n920 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0ee0 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(167)
    defparam LUT__478.LUTMASK = 16'h0ee0;
    EFX_LUT4 LUT__479 (.I0(n290), .I1(n303), .I2(\uart_rx_inst/r_Clock_Count [30]), 
            .O(n305)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__479.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__480 (.I0(n247), .I1(n258), .I2(n305), .I3(\uart_rx_inst/r_Clock_Count [31]), 
            .O(\uart_rx_inst/n923 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0ee0 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(167)
    defparam LUT__480.LUTMASK = 16'h0ee0;
    EFX_LUT4 LUT__481 (.I0(\uart_rx_inst/r_Bit_Index [0]), .I1(\uart_rx_inst/r_Bit_Index [1]), 
            .I2(\uart_rx_inst/r_SM_Main [1]), .O(\uart_rx_inst/n1146 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(143)
    defparam LUT__481.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__482 (.I0(\uart_rx_inst/r_Bit_Index [0]), .I1(\uart_rx_inst/r_Bit_Index [1]), 
            .I2(\uart_rx_inst/r_Bit_Index [2]), .I3(\uart_rx_inst/r_SM_Main [1]), 
            .O(\uart_rx_inst/n927 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(143)
    defparam LUT__482.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__483 (.I0(\uart_rx_inst/r_SM_Main [0]), .I1(\uart_rx_inst/r_SM_Main [1]), 
            .I2(\uart_rx_inst/r_SM_Main [2]), .O(\uart_rx_inst/n1159 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfefe */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(17)
    defparam LUT__483.LUTMASK = 16'hfefe;
    EFX_LUT4 LUT__484 (.I0(rx_ready), .I1(\uart_rx_inst/r_Rx_Byte [1]), 
            .O(rx_data[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(171)
    defparam LUT__484.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__485 (.I0(rx_ready), .I1(\uart_rx_inst/r_Rx_Byte [2]), 
            .O(rx_data[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(171)
    defparam LUT__485.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__486 (.I0(rx_ready), .I1(\uart_rx_inst/r_Rx_Byte [3]), 
            .O(rx_data[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(171)
    defparam LUT__486.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__487 (.I0(b[1]), .I1(a[1]), .O(n25[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(35)
    defparam LUT__487.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__488 (.I0(b[2]), .I1(a[2]), .O(n25[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(35)
    defparam LUT__488.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__489 (.I0(b[3]), .I1(a[3]), .O(n25[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(35)
    defparam LUT__489.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__490 (.I0(\uart_tx_inst/r_Clock_Count [0]), .I1(\uart_tx_inst/r_config_data [31]), 
            .I2(\uart_tx_inst/r_Clock_Count [1]), .I3(\uart_tx_inst/r_Clock_Count [2]), 
            .O(n306)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb200 */ ;
    defparam LUT__490.LUTMASK = 16'hb200;
    EFX_LUT4 LUT__491 (.I0(\uart_tx_inst/r_Clock_Count [4]), .I1(\uart_tx_inst/r_Clock_Count [5]), 
            .O(n307)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__491.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__492 (.I0(n306), .I1(\uart_tx_inst/r_config_data [31]), 
            .I2(\uart_tx_inst/r_Clock_Count [3]), .I3(n307), .O(n308)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb200 */ ;
    defparam LUT__492.LUTMASK = 16'hb200;
    EFX_LUT4 LUT__493 (.I0(\uart_tx_inst/r_Clock_Count [7]), .I1(\uart_tx_inst/r_Clock_Count [8]), 
            .O(n309)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__493.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__494 (.I0(n308), .I1(\uart_tx_inst/r_config_data [31]), 
            .I2(\uart_tx_inst/r_Clock_Count [6]), .I3(n309), .O(n310)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb200 */ ;
    defparam LUT__494.LUTMASK = 16'hb200;
    EFX_LUT4 LUT__495 (.I0(\uart_tx_inst/r_SM_Main [0]), .I1(\uart_tx_inst/r_SM_Main [1]), 
            .O(n311)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__495.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__496 (.I0(\uart_tx_inst/r_Clock_Count [10]), .I1(\uart_tx_inst/r_Clock_Count [29]), 
            .I2(\uart_tx_inst/r_Clock_Count [30]), .I3(\uart_tx_inst/r_config_data [31]), 
            .O(n312)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7ffe */ ;
    defparam LUT__496.LUTMASK = 16'h7ffe;
    EFX_LUT4 LUT__497 (.I0(n312), .I1(\uart_tx_inst/r_Clock_Count [20]), 
            .I2(\uart_tx_inst/r_Clock_Count [21]), .I3(\uart_tx_inst/r_Clock_Count [10]), 
            .O(n313)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4001 */ ;
    defparam LUT__497.LUTMASK = 16'h4001;
    EFX_LUT4 LUT__498 (.I0(\uart_tx_inst/r_Clock_Count [10]), .I1(\uart_tx_inst/r_Clock_Count [22]), 
            .I2(\uart_tx_inst/r_Clock_Count [27]), .I3(\uart_tx_inst/r_Clock_Count [28]), 
            .O(n314)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7ffe */ ;
    defparam LUT__498.LUTMASK = 16'h7ffe;
    EFX_LUT4 LUT__499 (.I0(\uart_tx_inst/r_Clock_Count [20]), .I1(\uart_tx_inst/r_Clock_Count [23]), 
            .I2(\uart_tx_inst/r_Clock_Count [24]), .I3(\uart_tx_inst/r_Clock_Count [25]), 
            .O(n315)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7ffe */ ;
    defparam LUT__499.LUTMASK = 16'h7ffe;
    EFX_LUT4 LUT__500 (.I0(\uart_tx_inst/r_Clock_Count [10]), .I1(\uart_tx_inst/r_Clock_Count [11]), 
            .I2(\uart_tx_inst/r_Clock_Count [14]), .I3(\uart_tx_inst/r_Clock_Count [15]), 
            .O(n316)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7ffe */ ;
    defparam LUT__500.LUTMASK = 16'h7ffe;
    EFX_LUT4 LUT__501 (.I0(\uart_tx_inst/r_Clock_Count [10]), .I1(\uart_tx_inst/r_Clock_Count [18]), 
            .I2(\uart_tx_inst/r_Clock_Count [19]), .I3(\uart_tx_inst/r_Clock_Count [26]), 
            .O(n317)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7ffe */ ;
    defparam LUT__501.LUTMASK = 16'h7ffe;
    EFX_LUT4 LUT__502 (.I0(n315), .I1(n316), .I2(n317), .O(n318)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__502.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__503 (.I0(\uart_tx_inst/r_Clock_Count [9]), .I1(\uart_tx_inst/r_Clock_Count [12]), 
            .I2(\uart_tx_inst/r_Clock_Count [13]), .I3(\uart_tx_inst/r_Clock_Count [16]), 
            .O(n319)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7ffe */ ;
    defparam LUT__503.LUTMASK = 16'h7ffe;
    EFX_LUT4 LUT__504 (.I0(\uart_tx_inst/r_Clock_Count [9]), .I1(\uart_tx_inst/r_Clock_Count [17]), 
            .I2(\uart_tx_inst/r_Clock_Count [31]), .I3(\uart_tx_inst/r_config_data [31]), 
            .O(n320)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7ffe */ ;
    defparam LUT__504.LUTMASK = 16'h7ffe;
    EFX_LUT4 LUT__505 (.I0(n319), .I1(n320), .O(n321)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__505.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__506 (.I0(n314), .I1(n313), .I2(n318), .I3(n321), .O(n322)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__506.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__507 (.I0(\uart_tx_inst/r_config_data [31]), .I1(n310), 
            .I2(n311), .I3(n322), .O(n323)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h030a */ ;
    defparam LUT__507.LUTMASK = 16'h030a;
    EFX_LUT4 LUT__508 (.I0(\uart_tx_inst/r_Clock_Count [0]), .I1(n323), 
            .O(\uart_tx_inst/n1116 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(240)
    defparam LUT__508.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__509 (.I0(\uart_tx_inst/r_Tx_Data [5]), .I1(\uart_tx_inst/r_Tx_Data [7]), 
            .I2(\uart_tx_inst/r_Bit_Index [1]), .I3(\uart_tx_inst/r_Bit_Index [0]), 
            .O(n324)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3500 */ ;
    defparam LUT__509.LUTMASK = 16'h3500;
    EFX_LUT4 LUT__510 (.I0(\uart_tx_inst/r_Tx_Data [4]), .I1(\uart_tx_inst/r_Tx_Data [6]), 
            .I2(\uart_tx_inst/r_Bit_Index [0]), .I3(\uart_tx_inst/r_Bit_Index [1]), 
            .O(n325)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0305 */ ;
    defparam LUT__510.LUTMASK = 16'h0305;
    EFX_LUT4 LUT__511 (.I0(\uart_tx_inst/r_Bit_Index [0]), .I1(\uart_tx_inst/r_Bit_Index [1]), 
            .I2(\uart_tx_inst/r_Tx_Data [3]), .O(n326)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__511.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__512 (.I0(n325), .I1(n324), .I2(n326), .I3(\uart_tx_inst/r_Bit_Index [2]), 
            .O(n327)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hee0f */ ;
    defparam LUT__512.LUTMASK = 16'hee0f;
    EFX_LUT4 LUT__513 (.I0(n327), .I1(\uart_tx_inst/r_SM_Main [0]), .I2(\uart_tx_inst/r_SM_Main [1]), 
            .O(\uart_tx_inst/n733 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd3d3 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(287)
    defparam LUT__513.LUTMASK = 16'hd3d3;
    EFX_LUT4 LUT__514 (.I0(\uart_tx_inst/r_Bit_Index [0]), .I1(\uart_tx_inst/r_SM_Main [1]), 
            .O(\uart_tx_inst/n1120 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(260)
    defparam LUT__514.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__515 (.I0(\uart_tx_inst/r_config_data [31]), .I1(n310), 
            .I2(n322), .O(\uart_tx_inst/n50 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3a3a */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(234)
    defparam LUT__515.LUTMASK = 16'h3a3a;
    EFX_LUT4 LUT__516 (.I0(\uart_tx_inst/r_SM_Main [1]), .I1(\uart_tx_inst/n50 ), 
            .I2(\uart_tx_inst/r_SM_Main [0]), .I3(\uart_tx_inst/r_SM_Main [2]), 
            .O(ceg_net28)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfff8 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(203)
    defparam LUT__516.LUTMASK = 16'hfff8;
    EFX_LUT4 LUT__517 (.I0(\uart_tx_inst/r_Bit_Index [0]), .I1(\uart_tx_inst/r_Bit_Index [1]), 
            .I2(\uart_tx_inst/r_Bit_Index [2]), .I3(\uart_tx_inst/r_SM_Main [1]), 
            .O(n328)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__517.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__518 (.I0(\uart_tx_inst/r_SM_Main [1]), .I1(send), .O(n329)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__518.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__519 (.I0(n328), .I1(n329), .I2(\uart_tx_inst/n50 ), 
            .I3(\uart_tx_inst/r_SM_Main [0]), .O(\uart_tx_inst/n1112 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf0ce */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(287)
    defparam LUT__519.LUTMASK = 16'hf0ce;
    EFX_LUT4 LUT__520 (.I0(\uart_tx_inst/r_Clock_Count [0]), .I1(\uart_tx_inst/r_Clock_Count [1]), 
            .I2(n323), .O(\uart_tx_inst/n786 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(240)
    defparam LUT__520.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__521 (.I0(\uart_tx_inst/r_Clock_Count [0]), .I1(\uart_tx_inst/r_Clock_Count [1]), 
            .I2(\uart_tx_inst/r_Clock_Count [2]), .I3(n323), .O(\uart_tx_inst/n789 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(240)
    defparam LUT__521.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__522 (.I0(\uart_tx_inst/r_Clock_Count [0]), .I1(\uart_tx_inst/r_Clock_Count [1]), 
            .I2(\uart_tx_inst/r_Clock_Count [2]), .I3(\uart_tx_inst/r_Clock_Count [3]), 
            .O(n330)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h807f */ ;
    defparam LUT__522.LUTMASK = 16'h807f;
    EFX_LUT4 LUT__523 (.I0(n330), .I1(n323), .O(\uart_tx_inst/n792 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(240)
    defparam LUT__523.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__524 (.I0(\uart_tx_inst/r_Clock_Count [0]), .I1(\uart_tx_inst/r_Clock_Count [1]), 
            .I2(\uart_tx_inst/r_Clock_Count [2]), .I3(\uart_tx_inst/r_Clock_Count [3]), 
            .O(n331)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__524.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__525 (.I0(n331), .I1(\uart_tx_inst/r_Clock_Count [4]), 
            .I2(n323), .O(\uart_tx_inst/n795 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(240)
    defparam LUT__525.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__526 (.I0(n331), .I1(\uart_tx_inst/r_Clock_Count [4]), 
            .I2(\uart_tx_inst/r_Clock_Count [5]), .I3(n323), .O(\uart_tx_inst/n798 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(240)
    defparam LUT__526.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__527 (.I0(n307), .I1(n331), .I2(\uart_tx_inst/r_Clock_Count [6]), 
            .I3(n323), .O(\uart_tx_inst/n801 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(240)
    defparam LUT__527.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__528 (.I0(n307), .I1(n331), .I2(\uart_tx_inst/r_Clock_Count [6]), 
            .O(n332)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__528.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__529 (.I0(n332), .I1(\uart_tx_inst/r_Clock_Count [7]), 
            .I2(n323), .O(\uart_tx_inst/n804 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(240)
    defparam LUT__529.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__530 (.I0(\uart_tx_inst/r_Clock_Count [4]), .I1(\uart_tx_inst/r_Clock_Count [5]), 
            .I2(\uart_tx_inst/r_Clock_Count [6]), .I3(\uart_tx_inst/r_Clock_Count [7]), 
            .O(n333)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__530.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__531 (.I0(n331), .I1(n333), .O(n334)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__531.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__532 (.I0(n334), .I1(\uart_tx_inst/r_Clock_Count [8]), 
            .I2(n323), .O(\uart_tx_inst/n807 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(240)
    defparam LUT__532.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__533 (.I0(n334), .I1(\uart_tx_inst/r_Clock_Count [8]), 
            .I2(\uart_tx_inst/r_Clock_Count [9]), .I3(n323), .O(\uart_tx_inst/n810 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(240)
    defparam LUT__533.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__534 (.I0(n334), .I1(\uart_tx_inst/r_Clock_Count [8]), 
            .I2(\uart_tx_inst/r_Clock_Count [9]), .I3(\uart_tx_inst/r_Clock_Count [10]), 
            .O(n335)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h807f */ ;
    defparam LUT__534.LUTMASK = 16'h807f;
    EFX_LUT4 LUT__535 (.I0(n335), .I1(n323), .O(\uart_tx_inst/n813 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(240)
    defparam LUT__535.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__536 (.I0(n334), .I1(\uart_tx_inst/r_Clock_Count [8]), 
            .I2(\uart_tx_inst/r_Clock_Count [9]), .I3(\uart_tx_inst/r_Clock_Count [10]), 
            .O(n336)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__536.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__537 (.I0(n336), .I1(\uart_tx_inst/r_Clock_Count [11]), 
            .I2(n323), .O(\uart_tx_inst/n816 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(240)
    defparam LUT__537.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__538 (.I0(\uart_tx_inst/r_Clock_Count [8]), .I1(\uart_tx_inst/r_Clock_Count [9]), 
            .I2(\uart_tx_inst/r_Clock_Count [10]), .I3(\uart_tx_inst/r_Clock_Count [11]), 
            .O(n337)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__538.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__539 (.I0(n334), .I1(n337), .I2(\uart_tx_inst/r_Clock_Count [12]), 
            .I3(n323), .O(\uart_tx_inst/n819 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(240)
    defparam LUT__539.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__540 (.I0(n334), .I1(n337), .I2(\uart_tx_inst/r_Clock_Count [12]), 
            .O(n338)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__540.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__541 (.I0(n338), .I1(\uart_tx_inst/r_Clock_Count [13]), 
            .I2(n323), .O(\uart_tx_inst/n822 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(240)
    defparam LUT__541.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__542 (.I0(\uart_tx_inst/r_Clock_Count [12]), .I1(\uart_tx_inst/r_Clock_Count [13]), 
            .O(n339)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__542.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__543 (.I0(n339), .I1(n331), .I2(n333), .I3(n337), .O(n340)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__543.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__544 (.I0(n340), .I1(\uart_tx_inst/r_Clock_Count [14]), 
            .I2(n323), .O(\uart_tx_inst/n825 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(240)
    defparam LUT__544.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__545 (.I0(n340), .I1(\uart_tx_inst/r_Clock_Count [14]), 
            .I2(\uart_tx_inst/r_Clock_Count [15]), .I3(n323), .O(\uart_tx_inst/n828 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(240)
    defparam LUT__545.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__546 (.I0(n338), .I1(\uart_tx_inst/r_Clock_Count [13]), 
            .I2(\uart_tx_inst/r_Clock_Count [14]), .I3(\uart_tx_inst/r_Clock_Count [15]), 
            .O(n341)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__546.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__547 (.I0(n341), .I1(\uart_tx_inst/r_Clock_Count [16]), 
            .I2(n323), .O(\uart_tx_inst/n831 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(240)
    defparam LUT__547.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__548 (.I0(n341), .I1(\uart_tx_inst/r_Clock_Count [16]), 
            .I2(\uart_tx_inst/r_Clock_Count [17]), .I3(n323), .O(\uart_tx_inst/n834 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(240)
    defparam LUT__548.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__549 (.I0(\uart_tx_inst/r_Clock_Count [14]), .I1(\uart_tx_inst/r_Clock_Count [15]), 
            .I2(\uart_tx_inst/r_Clock_Count [16]), .I3(\uart_tx_inst/r_Clock_Count [17]), 
            .O(n342)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__549.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__550 (.I0(n340), .I1(n342), .O(n343)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__550.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__551 (.I0(n343), .I1(\uart_tx_inst/r_Clock_Count [18]), 
            .I2(n323), .O(\uart_tx_inst/n837 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(240)
    defparam LUT__551.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__552 (.I0(n343), .I1(\uart_tx_inst/r_Clock_Count [18]), 
            .I2(\uart_tx_inst/r_Clock_Count [19]), .I3(n323), .O(\uart_tx_inst/n840 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(240)
    defparam LUT__552.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__553 (.I0(n343), .I1(\uart_tx_inst/r_Clock_Count [18]), 
            .I2(\uart_tx_inst/r_Clock_Count [19]), .O(n344)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__553.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__554 (.I0(n344), .I1(\uart_tx_inst/r_Clock_Count [20]), 
            .I2(n323), .O(\uart_tx_inst/n843 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(240)
    defparam LUT__554.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__555 (.I0(n344), .I1(\uart_tx_inst/r_Clock_Count [20]), 
            .I2(\uart_tx_inst/r_Clock_Count [21]), .I3(n323), .O(\uart_tx_inst/n846 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(240)
    defparam LUT__555.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__556 (.I0(\uart_tx_inst/r_Clock_Count [18]), .I1(\uart_tx_inst/r_Clock_Count [19]), 
            .I2(\uart_tx_inst/r_Clock_Count [20]), .I3(\uart_tx_inst/r_Clock_Count [21]), 
            .O(n345)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__556.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__557 (.I0(n343), .I1(n345), .O(n346)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__557.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__558 (.I0(n346), .I1(\uart_tx_inst/r_Clock_Count [22]), 
            .I2(n323), .O(\uart_tx_inst/n849 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(240)
    defparam LUT__558.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__559 (.I0(n346), .I1(\uart_tx_inst/r_Clock_Count [22]), 
            .I2(\uart_tx_inst/r_Clock_Count [23]), .I3(n323), .O(\uart_tx_inst/n852 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(240)
    defparam LUT__559.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__560 (.I0(n343), .I1(n345), .I2(\uart_tx_inst/r_Clock_Count [22]), 
            .I3(\uart_tx_inst/r_Clock_Count [23]), .O(n347)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__560.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__561 (.I0(n347), .I1(\uart_tx_inst/r_Clock_Count [24]), 
            .I2(n323), .O(\uart_tx_inst/n855 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(240)
    defparam LUT__561.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__562 (.I0(n347), .I1(\uart_tx_inst/r_Clock_Count [24]), 
            .I2(\uart_tx_inst/r_Clock_Count [25]), .I3(n323), .O(\uart_tx_inst/n858 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(240)
    defparam LUT__562.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__563 (.I0(\uart_tx_inst/r_Clock_Count [22]), .I1(\uart_tx_inst/r_Clock_Count [23]), 
            .I2(\uart_tx_inst/r_Clock_Count [24]), .I3(\uart_tx_inst/r_Clock_Count [25]), 
            .O(n348)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__563.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__564 (.I0(n343), .I1(n348), .I2(n345), .O(n349)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__564.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__565 (.I0(n349), .I1(\uart_tx_inst/r_Clock_Count [26]), 
            .I2(n323), .O(\uart_tx_inst/n861 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(240)
    defparam LUT__565.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__566 (.I0(n348), .I1(n342), .I2(n345), .I3(\uart_tx_inst/r_Clock_Count [26]), 
            .O(n350)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__566.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__567 (.I0(n340), .I1(n350), .O(n351)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__567.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__568 (.I0(n351), .I1(\uart_tx_inst/r_Clock_Count [27]), 
            .I2(n323), .O(\uart_tx_inst/n864 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(240)
    defparam LUT__568.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__569 (.I0(n351), .I1(\uart_tx_inst/r_Clock_Count [27]), 
            .O(n352)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__569.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__570 (.I0(n352), .I1(\uart_tx_inst/r_Clock_Count [28]), 
            .I2(n323), .O(\uart_tx_inst/n867 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(240)
    defparam LUT__570.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__571 (.I0(n352), .I1(\uart_tx_inst/r_Clock_Count [28]), 
            .I2(\uart_tx_inst/r_Clock_Count [29]), .I3(n323), .O(\uart_tx_inst/n870 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(240)
    defparam LUT__571.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__572 (.I0(n351), .I1(\uart_tx_inst/r_Clock_Count [27]), 
            .I2(\uart_tx_inst/r_Clock_Count [28]), .I3(\uart_tx_inst/r_Clock_Count [29]), 
            .O(n353)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__572.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__573 (.I0(n353), .I1(\uart_tx_inst/r_Clock_Count [30]), 
            .I2(n323), .O(\uart_tx_inst/n873 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(240)
    defparam LUT__573.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__574 (.I0(n353), .I1(\uart_tx_inst/r_Clock_Count [30]), 
            .I2(\uart_tx_inst/r_Clock_Count [31]), .I3(n323), .O(\uart_tx_inst/n876 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf800 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(240)
    defparam LUT__574.LUTMASK = 16'hf800;
    EFX_LUT4 LUT__575 (.I0(\uart_tx_inst/r_Bit_Index [0]), .I1(\uart_tx_inst/r_Bit_Index [1]), 
            .I2(\uart_tx_inst/r_SM_Main [1]), .O(\uart_tx_inst/n880 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(260)
    defparam LUT__575.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__576 (.I0(\uart_tx_inst/r_Bit_Index [0]), .I1(\uart_tx_inst/r_Bit_Index [1]), 
            .I2(\uart_tx_inst/r_Bit_Index [2]), .I3(\uart_tx_inst/r_SM_Main [1]), 
            .O(\uart_tx_inst/n884 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(260)
    defparam LUT__576.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__577 (.I0(\uart_tx_inst/r_SM_Main [2]), .I1(n311), .O(\uart_tx_inst/n1032 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbbb */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(44)
    defparam LUT__577.LUTMASK = 16'hbbbb;
    EFX_LUT4 LUT__578 (.I0(\uart_tx_inst/n1032 ), .I1(send), .O(\uart_tx_inst/n1224 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(44)
    defparam LUT__578.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__579 (.I0(\uart_tx_inst/n50 ), .I1(\uart_tx_inst/r_SM_Main [0]), 
            .I2(\uart_tx_inst/r_SM_Main [1]), .O(\uart_tx_inst/n779 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(287)
    defparam LUT__579.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__580 (.I0(\uart_tx_inst/r_SM_Main [2]), .I1(\uart_tx_inst/r_SM_Main [1]), 
            .I2(\uart_tx_inst/r_SM_Main [0]), .O(\uart_tx_inst/n1206 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(44)
    defparam LUT__580.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__581 (.I0(rx_ready), .I1(\uart_rx_inst/r_Rx_Byte [5]), 
            .O(rx_data[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(171)
    defparam LUT__581.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__582 (.I0(rx_ready), .I1(\uart_rx_inst/r_Rx_Byte [6]), 
            .O(rx_data[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(171)
    defparam LUT__582.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__583 (.I0(rx_ready), .I1(\uart_rx_inst/r_Rx_Byte [7]), 
            .O(rx_data[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(171)
    defparam LUT__583.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__585 (.I0(tx_2), .O(tx)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5555, EFX_ATTRIBUTE_INSTANCE__IS_LUT_SOP_INF_INV=TRUE */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/half_adder.v(288)
    defparam LUT__585.LUTMASK = 16'h5555;
    EFX_GBUFCE CLKBUF__0 (.CE(1'b1), .I(clk), .O(\clk~O )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_GBUFCE, CE_POLARITY=1'b1 */ ;
    defparam CLKBUF__0.CE_POLARITY = 1'b1;
    
endmodule

//
// Verific Verilog Description of module EFX_LUT4_8cb7a1a3_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_8cb7a1a3_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_8cb7a1a3_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_8cb7a1a3_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_8cb7a1a3_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_8cb7a1a3_3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_8cb7a1a3_4
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_8cb7a1a3_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_8cb7a1a3_3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_8cb7a1a3_4
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_8cb7a1a3_5
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_8cb7a1a3_6
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_8cb7a1a3_7
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_8cb7a1a3_8
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_8cb7a1a3_9
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_8cb7a1a3_10
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_8cb7a1a3_11
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_8cb7a1a3_12
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_8cb7a1a3_13
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_8cb7a1a3_14
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_8cb7a1a3_15
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_8cb7a1a3_16
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_8cb7a1a3_17
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_8cb7a1a3_18
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_8cb7a1a3_19
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_8cb7a1a3_20
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_8cb7a1a3_21
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_8cb7a1a3_22
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_8cb7a1a3_23
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_8cb7a1a3_24
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_8cb7a1a3_25
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_8cb7a1a3_26
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_8cb7a1a3_27
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_8cb7a1a3_28
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_8cb7a1a3_29
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_8cb7a1a3_30
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_8cb7a1a3_31
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_8cb7a1a3_32
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_8cb7a1a3_33
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_8cb7a1a3_34
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_8cb7a1a3_35
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_8cb7a1a3_36
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_8cb7a1a3_37
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_8cb7a1a3_38
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_8cb7a1a3_39
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_8cb7a1a3_40
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_8cb7a1a3_41
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_8cb7a1a3_42
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_GBUFCE_8cb7a1a3_0
// module not written out since it is a black box. 
//

