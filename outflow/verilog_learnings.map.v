
//
// Verific Verilog Description of module adder
//

module adder (clk, rx, tx);
    input clk /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(2)
    input rx /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(3)
    output tx /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(4)
    
    wire tx_2;
    wire n25;
    wire [3:0]n26_2;
    wire n108;
    wire [3:0]b;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(10)
    
    wire add_flag, send;
    wire [3:0]sum;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(11)
    
    wire carry;
    wire [3:0]a;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(10)
    
    wire \uart_rx_inst/r_Rx_Data , \uart_rx_inst/r_Rx_Data_R ;
    wire [8:0]\uart_rx_inst/r_Rx_Byte ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(81)
    wire [2:0]\uart_rx_inst/r_SM_Main ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(88)
    wire [31:0]\uart_rx_inst/r_Clock_Count ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(79)
    
    wire rx_ready;
    wire [2:0]\uart_rx_inst/r_Bit_Index ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(80)
    wire [31:0]\uart_tx_inst/r_Clock_Count ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(203)
    wire [2:0]\uart_tx_inst/r_Bit_Index ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(204)
    wire [7:0]\uart_tx_inst/r_Tx_Data ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(205)
    wire [2:0]\uart_tx_inst/r_SM_Main ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(211)
    wire [7:0]rx_data;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(7)
    
    wire \clk~O , \uart_rx_inst/n929 , \uart_rx_inst/n870 , \uart_rx_inst/n873 , 
        ceg_net14, ceg_net32, \uart_rx_inst/n877 , ceg_net26, \uart_rx_inst/n881 , 
        \uart_rx_inst/n885 , \uart_rx_inst/n965 , \uart_rx_inst/n866 , 
        \uart_rx_inst/n151 , \uart_rx_inst/n922 , \uart_rx_inst/n759 , 
        \uart_rx_inst/n762 , \uart_rx_inst/n765 , \uart_rx_inst/n768 , 
        \uart_rx_inst/n771 , \uart_rx_inst/n774 , \uart_rx_inst/n777 , 
        \uart_rx_inst/n780 , \uart_rx_inst/n783 , \uart_rx_inst/n786 , 
        \uart_rx_inst/n789 , \uart_rx_inst/n792 , \uart_rx_inst/n795 , 
        \uart_rx_inst/n798 , \uart_rx_inst/n801 , \uart_rx_inst/n804 , 
        \uart_rx_inst/n807 , \uart_rx_inst/n810 , \uart_rx_inst/n813 , 
        \uart_rx_inst/n816 , \uart_rx_inst/n819 , \uart_rx_inst/n822 , 
        \uart_rx_inst/n825 , \uart_rx_inst/n828 , \uart_rx_inst/n831 , 
        \uart_rx_inst/n834 , \uart_rx_inst/n837 , \uart_rx_inst/n840 , 
        \uart_rx_inst/n843 , \uart_rx_inst/n846 , \uart_rx_inst/n849 , 
        \uart_tx_inst/n848 , \uart_tx_inst/n634 , \uart_tx_inst/n852 , 
        ceg_net28, \uart_tx_inst/n958 , \uart_tx_inst/n844 , \uart_tx_inst/n715 , 
        \uart_tx_inst/n718 , \uart_tx_inst/n721 , \uart_tx_inst/n724 , 
        \uart_tx_inst/n727 , \uart_tx_inst/n730 , \uart_tx_inst/n733 , 
        \uart_tx_inst/n736 , \uart_tx_inst/n809 , \uart_tx_inst/n813 , 
        \uart_tx_inst/n708 , \uart_tx_inst/LessThan_9/n18 , \uart_tx_inst/n946 , 
        n143, n144, n145, n146, n147, n148, n149, n150, n151, 
        n152, n153, n154, n155, n156, n157, n158, n159, n160, 
        n161, n162, n163, n164, n165, n166, n167, n168, n169, 
        n170, n171, n172, n173, n174, n175, n176, n177, n178, 
        n179, n180, n181, n182, n183, n184, n185, n186, n187, 
        n188, n189, n190, n191, n192, n193, n194, n195, n196, 
        n197, n198, n199, n200, n201, n202, n203, n204, n205, 
        n206, n207, n208, n209, n210, n211;
    
    EFX_LUT4 LUT__219 (.I0(\uart_rx_inst/r_Rx_Byte [0]), .I1(rx_ready), 
            .O(rx_data[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(179)
    defparam LUT__219.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__220 (.I0(b[0]), .I1(a[0]), .O(n25)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(34)
    defparam LUT__220.LUTMASK = 16'h6666;
    EFX_FF \b[0]~FF  (.D(rx_data[0]), .CE(rx_ready), .CLK(\clk~O ), .SR(1'b0), 
           .Q(b[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(45)
    defparam \b[0]~FF .CLK_POLARITY = 1'b1;
    defparam \b[0]~FF .CE_POLARITY = 1'b1;
    defparam \b[0]~FF .SR_POLARITY = 1'b1;
    defparam \b[0]~FF .D_POLARITY = 1'b1;
    defparam \b[0]~FF .SR_SYNC = 1'b1;
    defparam \b[0]~FF .SR_VALUE = 1'b0;
    defparam \b[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \add_flag~FF  (.D(1'b1), .CE(rx_ready), .CLK(\clk~O ), .SR(1'b0), 
           .Q(add_flag)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(45)
    defparam \add_flag~FF .CLK_POLARITY = 1'b1;
    defparam \add_flag~FF .CE_POLARITY = 1'b1;
    defparam \add_flag~FF .SR_POLARITY = 1'b1;
    defparam \add_flag~FF .D_POLARITY = 1'b1;
    defparam \add_flag~FF .SR_SYNC = 1'b1;
    defparam \add_flag~FF .SR_VALUE = 1'b0;
    defparam \add_flag~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \send~FF  (.D(1'b1), .CE(add_flag), .CLK(\clk~O ), .SR(1'b0), 
           .Q(send)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(45)
    defparam \send~FF .CLK_POLARITY = 1'b1;
    defparam \send~FF .CE_POLARITY = 1'b1;
    defparam \send~FF .SR_POLARITY = 1'b1;
    defparam \send~FF .D_POLARITY = 1'b1;
    defparam \send~FF .SR_SYNC = 1'b1;
    defparam \send~FF .SR_VALUE = 1'b0;
    defparam \send~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sum[0]~FF  (.D(n25), .CE(add_flag), .CLK(\clk~O ), .SR(1'b0), 
           .Q(sum[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(45)
    defparam \sum[0]~FF .CLK_POLARITY = 1'b1;
    defparam \sum[0]~FF .CE_POLARITY = 1'b1;
    defparam \sum[0]~FF .SR_POLARITY = 1'b1;
    defparam \sum[0]~FF .D_POLARITY = 1'b1;
    defparam \sum[0]~FF .SR_SYNC = 1'b1;
    defparam \sum[0]~FF .SR_VALUE = 1'b0;
    defparam \sum[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \carry~FF  (.D(n26_2[0]), .CE(add_flag), .CLK(\clk~O ), .SR(1'b0), 
           .Q(carry)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(45)
    defparam \carry~FF .CLK_POLARITY = 1'b1;
    defparam \carry~FF .CE_POLARITY = 1'b1;
    defparam \carry~FF .SR_POLARITY = 1'b1;
    defparam \carry~FF .D_POLARITY = 1'b1;
    defparam \carry~FF .SR_SYNC = 1'b1;
    defparam \carry~FF .SR_VALUE = 1'b0;
    defparam \carry~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \a[0]~FF  (.D(rx_data[4]), .CE(rx_ready), .CLK(\clk~O ), .SR(1'b0), 
           .Q(a[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(45)
    defparam \a[0]~FF .CLK_POLARITY = 1'b1;
    defparam \a[0]~FF .CE_POLARITY = 1'b1;
    defparam \a[0]~FF .SR_POLARITY = 1'b1;
    defparam \a[0]~FF .D_POLARITY = 1'b1;
    defparam \a[0]~FF .SR_SYNC = 1'b1;
    defparam \a[0]~FF .SR_VALUE = 1'b0;
    defparam \a[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Rx_Data~FF  (.D(\uart_rx_inst/r_Rx_Data_R ), .CE(1'b1), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Rx_Data )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(102)
    defparam \uart_rx_inst/r_Rx_Data~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Rx_Data~FF .CE_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Rx_Data~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Rx_Data~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Rx_Data~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Rx_Data~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Rx_Data~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Rx_Data_R~FF  (.D(rx), .CE(1'b1), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\uart_rx_inst/r_Rx_Data_R )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(176)
    defparam \uart_rx_inst/r_Rx_Data_R~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Rx_Data_R~FF .CE_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Rx_Data_R~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Rx_Data_R~FF .D_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Rx_Data_R~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Rx_Data_R~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Rx_Data_R~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Rx_Byte[0]~FF  (.D(\uart_rx_inst/r_Rx_Data ), .CE(\uart_rx_inst/n929 ), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Rx_Byte [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(176)
    defparam \uart_rx_inst/r_Rx_Byte[0]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Rx_Byte[0]~FF .CE_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Rx_Byte[0]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Rx_Byte[0]~FF .D_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Rx_Byte[0]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Rx_Byte[0]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Rx_Byte[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_SM_Main[0]~FF  (.D(\uart_rx_inst/n870 ), .CE(1'b1), 
           .CLK(\clk~O ), .SR(\uart_rx_inst/r_SM_Main [2]), .Q(\uart_rx_inst/r_SM_Main [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(176)
    defparam \uart_rx_inst/r_SM_Main[0]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_SM_Main[0]~FF .CE_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_SM_Main[0]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_SM_Main[0]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_SM_Main[0]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_SM_Main[0]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_SM_Main[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Clock_Count[0]~FF  (.D(\uart_rx_inst/n873 ), .CE(ceg_net14), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Clock_Count [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(176)
    defparam \uart_rx_inst/r_Clock_Count[0]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[0]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[0]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[0]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[0]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[0]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_ready~FF  (.D(n108), .CE(ceg_net32), .CLK(\clk~O ), .SR(1'b0), 
           .Q(rx_ready)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(176)
    defparam \rx_ready~FF .CLK_POLARITY = 1'b1;
    defparam \rx_ready~FF .CE_POLARITY = 1'b0;
    defparam \rx_ready~FF .SR_POLARITY = 1'b1;
    defparam \rx_ready~FF .D_POLARITY = 1'b1;
    defparam \rx_ready~FF .SR_SYNC = 1'b1;
    defparam \rx_ready~FF .SR_VALUE = 1'b0;
    defparam \rx_ready~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Bit_Index[2]~FF  (.D(\uart_rx_inst/n877 ), .CE(ceg_net26), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Bit_Index [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(176)
    defparam \uart_rx_inst/r_Bit_Index[2]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Bit_Index[2]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Bit_Index[2]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Bit_Index[2]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Bit_Index[2]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Bit_Index[2]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Bit_Index[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Bit_Index[1]~FF  (.D(\uart_rx_inst/n881 ), .CE(ceg_net26), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Bit_Index [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(176)
    defparam \uart_rx_inst/r_Bit_Index[1]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Bit_Index[1]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Bit_Index[1]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Bit_Index[1]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Bit_Index[1]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Bit_Index[1]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Bit_Index[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Bit_Index[0]~FF  (.D(\uart_rx_inst/n885 ), .CE(ceg_net26), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Bit_Index [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(176)
    defparam \uart_rx_inst/r_Bit_Index[0]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Bit_Index[0]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Bit_Index[0]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Bit_Index[0]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Bit_Index[0]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Bit_Index[0]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Bit_Index[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Rx_Byte[4]~FF  (.D(\uart_rx_inst/r_Rx_Data ), .CE(\uart_rx_inst/n965 ), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Rx_Byte [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(176)
    defparam \uart_rx_inst/r_Rx_Byte[4]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Rx_Byte[4]~FF .CE_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Rx_Byte[4]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Rx_Byte[4]~FF .D_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Rx_Byte[4]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Rx_Byte[4]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Rx_Byte[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_SM_Main[1]~FF  (.D(\uart_rx_inst/n866 ), .CE(1'b1), 
           .CLK(\clk~O ), .SR(\uart_rx_inst/r_SM_Main [2]), .Q(\uart_rx_inst/r_SM_Main [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(176)
    defparam \uart_rx_inst/r_SM_Main[1]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_SM_Main[1]~FF .CE_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_SM_Main[1]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_SM_Main[1]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_SM_Main[1]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_SM_Main[1]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_SM_Main[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_SM_Main[2]~FF  (.D(\uart_rx_inst/n151 ), .CE(1'b1), 
           .CLK(\clk~O ), .SR(\uart_rx_inst/n922 ), .Q(\uart_rx_inst/r_SM_Main [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(176)
    defparam \uart_rx_inst/r_SM_Main[2]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_SM_Main[2]~FF .CE_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_SM_Main[2]~FF .SR_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_SM_Main[2]~FF .D_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_SM_Main[2]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_SM_Main[2]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_SM_Main[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Clock_Count[1]~FF  (.D(\uart_rx_inst/n759 ), .CE(ceg_net14), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Clock_Count [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(176)
    defparam \uart_rx_inst/r_Clock_Count[1]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[1]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[1]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[1]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[1]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[1]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Clock_Count[2]~FF  (.D(\uart_rx_inst/n762 ), .CE(ceg_net14), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Clock_Count [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(176)
    defparam \uart_rx_inst/r_Clock_Count[2]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[2]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[2]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[2]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[2]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[2]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Clock_Count[3]~FF  (.D(\uart_rx_inst/n765 ), .CE(ceg_net14), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Clock_Count [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(176)
    defparam \uart_rx_inst/r_Clock_Count[3]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[3]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[3]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[3]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[3]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[3]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Clock_Count[4]~FF  (.D(\uart_rx_inst/n768 ), .CE(ceg_net14), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Clock_Count [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(176)
    defparam \uart_rx_inst/r_Clock_Count[4]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[4]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[4]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[4]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[4]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[4]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Clock_Count[5]~FF  (.D(\uart_rx_inst/n771 ), .CE(ceg_net14), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Clock_Count [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(176)
    defparam \uart_rx_inst/r_Clock_Count[5]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[5]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[5]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[5]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[5]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[5]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Clock_Count[6]~FF  (.D(\uart_rx_inst/n774 ), .CE(ceg_net14), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Clock_Count [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(176)
    defparam \uart_rx_inst/r_Clock_Count[6]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[6]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[6]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[6]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[6]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[6]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Clock_Count[7]~FF  (.D(\uart_rx_inst/n777 ), .CE(ceg_net14), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Clock_Count [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(176)
    defparam \uart_rx_inst/r_Clock_Count[7]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[7]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[7]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[7]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[7]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[7]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Clock_Count[8]~FF  (.D(\uart_rx_inst/n780 ), .CE(ceg_net14), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Clock_Count [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(176)
    defparam \uart_rx_inst/r_Clock_Count[8]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[8]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[8]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[8]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[8]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[8]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Clock_Count[9]~FF  (.D(\uart_rx_inst/n783 ), .CE(ceg_net14), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Clock_Count [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(176)
    defparam \uart_rx_inst/r_Clock_Count[9]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[9]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[9]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[9]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[9]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[9]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Clock_Count[10]~FF  (.D(\uart_rx_inst/n786 ), .CE(ceg_net14), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Clock_Count [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(176)
    defparam \uart_rx_inst/r_Clock_Count[10]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[10]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[10]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[10]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[10]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[10]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Clock_Count[11]~FF  (.D(\uart_rx_inst/n789 ), .CE(ceg_net14), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Clock_Count [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(176)
    defparam \uart_rx_inst/r_Clock_Count[11]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[11]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[11]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[11]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[11]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[11]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Clock_Count[12]~FF  (.D(\uart_rx_inst/n792 ), .CE(ceg_net14), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Clock_Count [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(176)
    defparam \uart_rx_inst/r_Clock_Count[12]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[12]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[12]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[12]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[12]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[12]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Clock_Count[13]~FF  (.D(\uart_rx_inst/n795 ), .CE(ceg_net14), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Clock_Count [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(176)
    defparam \uart_rx_inst/r_Clock_Count[13]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[13]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[13]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[13]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[13]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[13]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Clock_Count[14]~FF  (.D(\uart_rx_inst/n798 ), .CE(ceg_net14), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Clock_Count [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(176)
    defparam \uart_rx_inst/r_Clock_Count[14]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[14]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[14]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[14]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[14]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[14]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Clock_Count[15]~FF  (.D(\uart_rx_inst/n801 ), .CE(ceg_net14), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Clock_Count [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(176)
    defparam \uart_rx_inst/r_Clock_Count[15]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[15]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[15]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[15]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[15]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[15]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Clock_Count[16]~FF  (.D(\uart_rx_inst/n804 ), .CE(ceg_net14), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Clock_Count [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(176)
    defparam \uart_rx_inst/r_Clock_Count[16]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[16]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[16]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[16]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[16]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[16]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Clock_Count[17]~FF  (.D(\uart_rx_inst/n807 ), .CE(ceg_net14), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Clock_Count [17])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(176)
    defparam \uart_rx_inst/r_Clock_Count[17]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[17]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[17]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[17]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[17]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[17]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[17]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Clock_Count[18]~FF  (.D(\uart_rx_inst/n810 ), .CE(ceg_net14), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Clock_Count [18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(176)
    defparam \uart_rx_inst/r_Clock_Count[18]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[18]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[18]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[18]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[18]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[18]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[18]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Clock_Count[19]~FF  (.D(\uart_rx_inst/n813 ), .CE(ceg_net14), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Clock_Count [19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(176)
    defparam \uart_rx_inst/r_Clock_Count[19]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[19]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[19]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[19]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[19]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[19]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[19]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Clock_Count[20]~FF  (.D(\uart_rx_inst/n816 ), .CE(ceg_net14), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Clock_Count [20])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(176)
    defparam \uart_rx_inst/r_Clock_Count[20]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[20]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[20]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[20]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[20]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[20]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[20]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Clock_Count[21]~FF  (.D(\uart_rx_inst/n819 ), .CE(ceg_net14), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Clock_Count [21])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(176)
    defparam \uart_rx_inst/r_Clock_Count[21]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[21]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[21]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[21]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[21]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[21]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[21]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Clock_Count[22]~FF  (.D(\uart_rx_inst/n822 ), .CE(ceg_net14), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Clock_Count [22])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(176)
    defparam \uart_rx_inst/r_Clock_Count[22]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[22]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[22]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[22]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[22]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[22]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[22]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Clock_Count[23]~FF  (.D(\uart_rx_inst/n825 ), .CE(ceg_net14), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Clock_Count [23])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(176)
    defparam \uart_rx_inst/r_Clock_Count[23]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[23]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[23]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[23]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[23]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[23]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[23]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Clock_Count[24]~FF  (.D(\uart_rx_inst/n828 ), .CE(ceg_net14), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Clock_Count [24])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(176)
    defparam \uart_rx_inst/r_Clock_Count[24]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[24]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[24]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[24]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[24]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[24]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[24]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Clock_Count[25]~FF  (.D(\uart_rx_inst/n831 ), .CE(ceg_net14), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Clock_Count [25])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(176)
    defparam \uart_rx_inst/r_Clock_Count[25]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[25]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[25]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[25]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[25]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[25]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[25]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Clock_Count[26]~FF  (.D(\uart_rx_inst/n834 ), .CE(ceg_net14), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Clock_Count [26])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(176)
    defparam \uart_rx_inst/r_Clock_Count[26]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[26]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[26]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[26]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[26]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[26]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[26]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Clock_Count[27]~FF  (.D(\uart_rx_inst/n837 ), .CE(ceg_net14), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Clock_Count [27])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(176)
    defparam \uart_rx_inst/r_Clock_Count[27]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[27]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[27]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[27]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[27]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[27]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[27]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Clock_Count[28]~FF  (.D(\uart_rx_inst/n840 ), .CE(ceg_net14), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Clock_Count [28])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(176)
    defparam \uart_rx_inst/r_Clock_Count[28]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[28]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[28]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[28]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[28]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[28]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[28]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Clock_Count[29]~FF  (.D(\uart_rx_inst/n843 ), .CE(ceg_net14), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Clock_Count [29])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(176)
    defparam \uart_rx_inst/r_Clock_Count[29]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[29]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[29]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[29]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[29]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[29]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[29]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Clock_Count[30]~FF  (.D(\uart_rx_inst/n846 ), .CE(ceg_net14), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Clock_Count [30])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(176)
    defparam \uart_rx_inst/r_Clock_Count[30]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[30]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[30]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[30]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[30]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[30]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[30]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_rx_inst/r_Clock_Count[31]~FF  (.D(\uart_rx_inst/n849 ), .CE(ceg_net14), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_rx_inst/r_Clock_Count [31])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(176)
    defparam \uart_rx_inst/r_Clock_Count[31]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[31]~FF .CE_POLARITY = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[31]~FF .SR_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[31]~FF .D_POLARITY = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[31]~FF .SR_SYNC = 1'b1;
    defparam \uart_rx_inst/r_Clock_Count[31]~FF .SR_VALUE = 1'b0;
    defparam \uart_rx_inst/r_Clock_Count[31]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_Clock_Count[0]~FF  (.D(\uart_tx_inst/n848 ), .CE(\uart_tx_inst/r_SM_Main [2]), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx_inst/r_Clock_Count [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(296)
    defparam \uart_tx_inst/r_Clock_Count[0]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[0]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[0]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[0]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[0]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[0]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_2~FF  (.D(\uart_tx_inst/n634 ), .CE(\uart_tx_inst/r_SM_Main [2]), 
           .CLK(\clk~O ), .SR(1'b0), .Q(tx_2)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(296)
    defparam \tx_2~FF .CLK_POLARITY = 1'b1;
    defparam \tx_2~FF .CE_POLARITY = 1'b0;
    defparam \tx_2~FF .SR_POLARITY = 1'b1;
    defparam \tx_2~FF .D_POLARITY = 1'b0;
    defparam \tx_2~FF .SR_SYNC = 1'b1;
    defparam \tx_2~FF .SR_VALUE = 1'b0;
    defparam \tx_2~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_Bit_Index[0]~FF  (.D(\uart_tx_inst/n852 ), .CE(ceg_net28), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx_inst/r_Bit_Index [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(296)
    defparam \uart_tx_inst/r_Bit_Index[0]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Bit_Index[0]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_inst/r_Bit_Index[0]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Bit_Index[0]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Bit_Index[0]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_Bit_Index[0]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_Bit_Index[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_Tx_Data[0]~FF  (.D(sum[0]), .CE(\uart_tx_inst/n958 ), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx_inst/r_Tx_Data [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(296)
    defparam \uart_tx_inst/r_Tx_Data[0]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Tx_Data[0]~FF .CE_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Tx_Data[0]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Tx_Data[0]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Tx_Data[0]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_Tx_Data[0]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_Tx_Data[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_SM_Main[0]~FF  (.D(\uart_tx_inst/n844 ), .CE(1'b1), 
           .CLK(\clk~O ), .SR(\uart_tx_inst/r_SM_Main [2]), .Q(\uart_tx_inst/r_SM_Main [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(296)
    defparam \uart_tx_inst/r_SM_Main[0]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_SM_Main[0]~FF .CE_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_SM_Main[0]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_SM_Main[0]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_SM_Main[0]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_SM_Main[0]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_SM_Main[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_Clock_Count[1]~FF  (.D(\uart_tx_inst/n715 ), .CE(\uart_tx_inst/r_SM_Main [2]), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx_inst/r_Clock_Count [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(296)
    defparam \uart_tx_inst/r_Clock_Count[1]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[1]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[1]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[1]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[1]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[1]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_Clock_Count[2]~FF  (.D(\uart_tx_inst/n718 ), .CE(\uart_tx_inst/r_SM_Main [2]), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx_inst/r_Clock_Count [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(296)
    defparam \uart_tx_inst/r_Clock_Count[2]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[2]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[2]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[2]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[2]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[2]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_Clock_Count[3]~FF  (.D(\uart_tx_inst/n721 ), .CE(\uart_tx_inst/r_SM_Main [2]), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx_inst/r_Clock_Count [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(296)
    defparam \uart_tx_inst/r_Clock_Count[3]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[3]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[3]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[3]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[3]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[3]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_Clock_Count[4]~FF  (.D(\uart_tx_inst/n724 ), .CE(\uart_tx_inst/r_SM_Main [2]), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx_inst/r_Clock_Count [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(296)
    defparam \uart_tx_inst/r_Clock_Count[4]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[4]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[4]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[4]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[4]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[4]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_Clock_Count[5]~FF  (.D(\uart_tx_inst/n727 ), .CE(\uart_tx_inst/r_SM_Main [2]), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx_inst/r_Clock_Count [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(296)
    defparam \uart_tx_inst/r_Clock_Count[5]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[5]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[5]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[5]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[5]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[5]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_Clock_Count[6]~FF  (.D(\uart_tx_inst/n730 ), .CE(\uart_tx_inst/r_SM_Main [2]), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx_inst/r_Clock_Count [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(296)
    defparam \uart_tx_inst/r_Clock_Count[6]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[6]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[6]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[6]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[6]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[6]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_Clock_Count[7]~FF  (.D(\uart_tx_inst/n733 ), .CE(\uart_tx_inst/r_SM_Main [2]), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx_inst/r_Clock_Count [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(296)
    defparam \uart_tx_inst/r_Clock_Count[7]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[7]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[7]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[7]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[7]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[7]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_Clock_Count[8]~FF  (.D(\uart_tx_inst/n736 ), .CE(\uart_tx_inst/r_SM_Main [2]), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx_inst/r_Clock_Count [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(296)
    defparam \uart_tx_inst/r_Clock_Count[8]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[8]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[8]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[8]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[8]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_Clock_Count[8]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_Clock_Count[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_Bit_Index[1]~FF  (.D(\uart_tx_inst/n809 ), .CE(ceg_net28), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx_inst/r_Bit_Index [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(296)
    defparam \uart_tx_inst/r_Bit_Index[1]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Bit_Index[1]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_inst/r_Bit_Index[1]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Bit_Index[1]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Bit_Index[1]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_Bit_Index[1]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_Bit_Index[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_Bit_Index[2]~FF  (.D(\uart_tx_inst/n813 ), .CE(ceg_net28), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx_inst/r_Bit_Index [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(296)
    defparam \uart_tx_inst/r_Bit_Index[2]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Bit_Index[2]~FF .CE_POLARITY = 1'b0;
    defparam \uart_tx_inst/r_Bit_Index[2]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Bit_Index[2]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Bit_Index[2]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_Bit_Index[2]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_Bit_Index[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_Tx_Data[4]~FF  (.D(carry), .CE(\uart_tx_inst/n958 ), 
           .CLK(\clk~O ), .SR(1'b0), .Q(\uart_tx_inst/r_Tx_Data [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(296)
    defparam \uart_tx_inst/r_Tx_Data[4]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Tx_Data[4]~FF .CE_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Tx_Data[4]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Tx_Data[4]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_Tx_Data[4]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_Tx_Data[4]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_Tx_Data[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_SM_Main[1]~FF  (.D(\uart_tx_inst/n708 ), .CE(1'b1), 
           .CLK(\clk~O ), .SR(\uart_tx_inst/r_SM_Main [2]), .Q(\uart_tx_inst/r_SM_Main [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(296)
    defparam \uart_tx_inst/r_SM_Main[1]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_SM_Main[1]~FF .CE_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_SM_Main[1]~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_SM_Main[1]~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_SM_Main[1]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_SM_Main[1]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_SM_Main[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_inst/r_SM_Main[2]~FF  (.D(\uart_tx_inst/LessThan_9/n18 ), 
           .CE(1'b1), .CLK(\clk~O ), .SR(\uart_tx_inst/n946 ), .Q(\uart_tx_inst/r_SM_Main [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(296)
    defparam \uart_tx_inst/r_SM_Main[2]~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_SM_Main[2]~FF .CE_POLARITY = 1'b1;
    defparam \uart_tx_inst/r_SM_Main[2]~FF .SR_POLARITY = 1'b0;
    defparam \uart_tx_inst/r_SM_Main[2]~FF .D_POLARITY = 1'b0;
    defparam \uart_tx_inst/r_SM_Main[2]~FF .SR_SYNC = 1'b1;
    defparam \uart_tx_inst/r_SM_Main[2]~FF .SR_VALUE = 1'b0;
    defparam \uart_tx_inst/r_SM_Main[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_LUT4 LUT__221 (.I0(b[0]), .I1(a[0]), .O(n26_2[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(35)
    defparam LUT__221.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__222 (.I0(rx_ready), .I1(\uart_rx_inst/r_Rx_Byte [4]), 
            .O(rx_data[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(179)
    defparam LUT__222.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__223 (.I0(\uart_rx_inst/r_Clock_Count [0]), .I1(\uart_rx_inst/r_Clock_Count [1]), 
            .I2(\uart_rx_inst/r_Clock_Count [2]), .O(n143)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__223.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__224 (.I0(\uart_rx_inst/r_Clock_Count [3]), .I1(\uart_rx_inst/r_Clock_Count [6]), 
            .O(n144)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__224.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__225 (.I0(\uart_rx_inst/r_Clock_Count [4]), .I1(\uart_rx_inst/r_Clock_Count [5]), 
            .I2(\uart_rx_inst/r_Clock_Count [6]), .O(n145)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0707 */ ;
    defparam LUT__225.LUTMASK = 16'h0707;
    EFX_LUT4 LUT__226 (.I0(\uart_rx_inst/r_Clock_Count [7]), .I1(\uart_rx_inst/r_Clock_Count [8]), 
            .O(n146)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__226.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__227 (.I0(n144), .I1(n143), .I2(n145), .I3(n146), .O(n147)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d00 */ ;
    defparam LUT__227.LUTMASK = 16'h0d00;
    EFX_LUT4 LUT__228 (.I0(\uart_rx_inst/r_Clock_Count [27]), .I1(\uart_rx_inst/r_Clock_Count [29]), 
            .I2(\uart_rx_inst/r_Clock_Count [30]), .I3(\uart_rx_inst/r_Clock_Count [31]), 
            .O(n148)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__228.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__229 (.I0(\uart_rx_inst/r_Clock_Count [9]), .I1(\uart_rx_inst/r_Clock_Count [10]), 
            .I2(\uart_rx_inst/r_Clock_Count [11]), .I3(\uart_rx_inst/r_Clock_Count [12]), 
            .O(n149)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__229.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__230 (.I0(\uart_rx_inst/r_Clock_Count [21]), .I1(\uart_rx_inst/r_Clock_Count [25]), 
            .I2(\uart_rx_inst/r_Clock_Count [26]), .I3(\uart_rx_inst/r_Clock_Count [28]), 
            .O(n150)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__230.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__231 (.I0(\uart_rx_inst/r_Clock_Count [15]), .I1(\uart_rx_inst/r_Clock_Count [19]), 
            .I2(\uart_rx_inst/r_Clock_Count [22]), .O(n151)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__231.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__232 (.I0(n148), .I1(n149), .I2(n150), .I3(n151), .O(n152)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__232.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__233 (.I0(\uart_rx_inst/r_Clock_Count [13]), .I1(\uart_rx_inst/r_Clock_Count [16]), 
            .I2(\uart_rx_inst/r_Clock_Count [17]), .I3(\uart_rx_inst/r_Clock_Count [24]), 
            .O(n153)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__233.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__234 (.I0(\uart_rx_inst/r_Clock_Count [14]), .I1(\uart_rx_inst/r_Clock_Count [18]), 
            .I2(\uart_rx_inst/r_Clock_Count [20]), .I3(\uart_rx_inst/r_Clock_Count [23]), 
            .O(n154)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__234.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__235 (.I0(n153), .I1(n154), .O(n155)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__235.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__236 (.I0(n147), .I1(n152), .I2(n155), .O(\uart_rx_inst/n151 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(137)
    defparam LUT__236.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__237 (.I0(\uart_rx_inst/r_SM_Main [2]), .I1(\uart_rx_inst/r_SM_Main [1]), 
            .O(n108)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__237.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__238 (.I0(\uart_rx_inst/r_Bit_Index [1]), .I1(\uart_rx_inst/r_Bit_Index [0]), 
            .I2(n108), .O(n156)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__238.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__239 (.I0(\uart_rx_inst/n151 ), .I1(\uart_rx_inst/r_SM_Main [0]), 
            .I2(\uart_rx_inst/r_Bit_Index [2]), .I3(n156), .O(\uart_rx_inst/n929 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(17)
    defparam LUT__239.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__240 (.I0(\uart_rx_inst/r_Clock_Count [5]), .I1(\uart_rx_inst/r_Clock_Count [4]), 
            .I2(\uart_rx_inst/r_Clock_Count [6]), .I3(\uart_rx_inst/r_Clock_Count [7]), 
            .O(n157)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__240.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__241 (.I0(\uart_rx_inst/r_Clock_Count [0]), .I1(\uart_rx_inst/r_Clock_Count [2]), 
            .I2(\uart_rx_inst/r_Clock_Count [1]), .I3(\uart_rx_inst/r_Clock_Count [3]), 
            .O(n158)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__241.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__242 (.I0(\uart_rx_inst/r_Clock_Count [8]), .I1(n157), 
            .I2(n158), .O(n159)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__242.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__243 (.I0(\uart_rx_inst/r_SM_Main [1]), .I1(\uart_rx_inst/r_SM_Main [0]), 
            .O(n160)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__243.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__244 (.I0(n155), .I1(n152), .I2(n159), .I3(n160), .O(n161)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f00 */ ;
    defparam LUT__244.LUTMASK = 16'h7f00;
    EFX_LUT4 LUT__245 (.I0(\uart_rx_inst/r_SM_Main [0]), .I1(\uart_rx_inst/r_SM_Main [1]), 
            .O(n162)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__245.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__246 (.I0(n147), .I1(n152), .I2(n155), .I3(n162), .O(n163)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__246.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__247 (.I0(\uart_rx_inst/r_Bit_Index [2]), .I1(\uart_rx_inst/r_Bit_Index [1]), 
            .I2(\uart_rx_inst/r_Bit_Index [0]), .I3(\uart_rx_inst/r_SM_Main [1]), 
            .O(n164)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__247.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__248 (.I0(n155), .I1(n152), .I2(\uart_rx_inst/r_SM_Main [0]), 
            .I3(n164), .O(n165)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0700 */ ;
    defparam LUT__248.LUTMASK = 16'h0700;
    EFX_LUT4 LUT__249 (.I0(\uart_rx_inst/r_SM_Main [0]), .I1(\uart_rx_inst/r_SM_Main [1]), 
            .I2(\uart_rx_inst/r_Rx_Data ), .O(n166)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__249.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__250 (.I0(\uart_rx_inst/r_SM_Main [0]), .I1(n164), .I2(n147), 
            .I3(n166), .O(n167)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00bf */ ;
    defparam LUT__250.LUTMASK = 16'h00bf;
    EFX_LUT4 LUT__251 (.I0(n161), .I1(n163), .I2(n165), .I3(n167), .O(\uart_rx_inst/n870 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfeff */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(175)
    defparam LUT__251.LUTMASK = 16'hfeff;
    EFX_LUT4 LUT__252 (.I0(n147), .I1(n152), .I2(n155), .I3(\uart_rx_inst/r_SM_Main [1]), 
            .O(n168)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__252.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__253 (.I0(n161), .I1(n168), .I2(\uart_rx_inst/r_Clock_Count [0]), 
            .O(\uart_rx_inst/n873 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e0e */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(175)
    defparam LUT__253.LUTMASK = 16'h0e0e;
    EFX_LUT4 LUT__254 (.I0(n161), .I1(\uart_rx_inst/r_Rx_Data ), .I2(n160), 
            .I3(\uart_rx_inst/r_SM_Main [2]), .O(ceg_net14)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hff10 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(88)
    defparam LUT__254.LUTMASK = 16'hff10;
    EFX_LUT4 LUT__255 (.I0(\uart_rx_inst/n151 ), .I1(\uart_rx_inst/r_SM_Main [2]), 
            .I2(\uart_rx_inst/r_SM_Main [1]), .I3(\uart_rx_inst/r_SM_Main [0]), 
            .O(ceg_net32)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heff0 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(88)
    defparam LUT__255.LUTMASK = 16'heff0;
    EFX_LUT4 LUT__256 (.I0(\uart_rx_inst/r_Bit_Index [1]), .I1(\uart_rx_inst/r_Bit_Index [0]), 
            .I2(\uart_rx_inst/r_Bit_Index [2]), .I3(\uart_rx_inst/r_SM_Main [1]), 
            .O(\uart_rx_inst/n877 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(151)
    defparam LUT__256.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__257 (.I0(n168), .I1(\uart_rx_inst/r_SM_Main [0]), .I2(\uart_rx_inst/r_SM_Main [2]), 
            .O(ceg_net26)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfefe */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(88)
    defparam LUT__257.LUTMASK = 16'hfefe;
    EFX_LUT4 LUT__258 (.I0(\uart_rx_inst/r_Bit_Index [1]), .I1(\uart_rx_inst/r_Bit_Index [0]), 
            .I2(\uart_rx_inst/r_SM_Main [1]), .O(\uart_rx_inst/n881 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(151)
    defparam LUT__258.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__259 (.I0(\uart_rx_inst/r_Bit_Index [0]), .I1(\uart_rx_inst/r_SM_Main [1]), 
            .O(\uart_rx_inst/n885 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(151)
    defparam LUT__259.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__260 (.I0(\uart_rx_inst/n151 ), .I1(\uart_rx_inst/r_SM_Main [0]), 
            .I2(n156), .I3(\uart_rx_inst/r_Bit_Index [2]), .O(\uart_rx_inst/n965 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(17)
    defparam LUT__260.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__261 (.I0(\uart_rx_inst/r_Rx_Data ), .I1(n155), .I2(n152), 
            .I3(n159), .O(n169)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__261.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__262 (.I0(\uart_rx_inst/n151 ), .I1(n169), .I2(\uart_rx_inst/r_SM_Main [0]), 
            .I3(\uart_rx_inst/r_SM_Main [1]), .O(\uart_rx_inst/n866 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hefc0 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(175)
    defparam LUT__262.LUTMASK = 16'hefc0;
    EFX_LUT4 LUT__263 (.I0(n108), .I1(\uart_rx_inst/r_SM_Main [0]), .O(\uart_rx_inst/n922 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(17)
    defparam LUT__263.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__264 (.I0(n161), .I1(n168), .I2(\uart_rx_inst/r_Clock_Count [0]), 
            .I3(\uart_rx_inst/r_Clock_Count [1]), .O(\uart_rx_inst/n759 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0ee0 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(175)
    defparam LUT__264.LUTMASK = 16'h0ee0;
    EFX_LUT4 LUT__265 (.I0(\uart_rx_inst/r_Clock_Count [0]), .I1(\uart_rx_inst/r_Clock_Count [1]), 
            .I2(\uart_rx_inst/r_Clock_Count [2]), .O(n170)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__265.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__266 (.I0(n161), .I1(n168), .I2(n170), .O(\uart_rx_inst/n762 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(175)
    defparam LUT__266.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__267 (.I0(\uart_rx_inst/r_Clock_Count [0]), .I1(\uart_rx_inst/r_Clock_Count [1]), 
            .I2(\uart_rx_inst/r_Clock_Count [2]), .I3(\uart_rx_inst/r_Clock_Count [3]), 
            .O(n171)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;
    defparam LUT__267.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__268 (.I0(n161), .I1(n168), .I2(n171), .O(\uart_rx_inst/n765 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(175)
    defparam LUT__268.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__269 (.I0(\uart_rx_inst/r_Clock_Count [0]), .I1(\uart_rx_inst/r_Clock_Count [1]), 
            .I2(\uart_rx_inst/r_Clock_Count [2]), .I3(\uart_rx_inst/r_Clock_Count [3]), 
            .O(n172)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__269.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__270 (.I0(n161), .I1(n168), .I2(n172), .I3(\uart_rx_inst/r_Clock_Count [4]), 
            .O(\uart_rx_inst/n768 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0ee0 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(175)
    defparam LUT__270.LUTMASK = 16'h0ee0;
    EFX_LUT4 LUT__271 (.I0(n172), .I1(\uart_rx_inst/r_Clock_Count [4]), 
            .I2(\uart_rx_inst/r_Clock_Count [5]), .O(n173)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__271.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__272 (.I0(n161), .I1(n168), .I2(n173), .O(\uart_rx_inst/n771 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(175)
    defparam LUT__272.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__273 (.I0(\uart_rx_inst/r_Clock_Count [4]), .I1(\uart_rx_inst/r_Clock_Count [5]), 
            .O(n174)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__273.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__274 (.I0(n174), .I1(n172), .O(n175)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__274.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__275 (.I0(n161), .I1(n168), .I2(n175), .I3(\uart_rx_inst/r_Clock_Count [6]), 
            .O(\uart_rx_inst/n774 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0ee0 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(175)
    defparam LUT__275.LUTMASK = 16'h0ee0;
    EFX_LUT4 LUT__276 (.I0(n175), .I1(\uart_rx_inst/r_Clock_Count [6]), 
            .I2(\uart_rx_inst/r_Clock_Count [7]), .O(n176)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__276.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__277 (.I0(n161), .I1(n168), .I2(n176), .O(\uart_rx_inst/n777 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(175)
    defparam LUT__277.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__278 (.I0(n174), .I1(n172), .I2(\uart_rx_inst/r_Clock_Count [6]), 
            .I3(\uart_rx_inst/r_Clock_Count [7]), .O(n177)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__278.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__279 (.I0(n161), .I1(n168), .I2(n177), .I3(\uart_rx_inst/r_Clock_Count [8]), 
            .O(\uart_rx_inst/n780 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0ee0 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(175)
    defparam LUT__279.LUTMASK = 16'h0ee0;
    EFX_LUT4 LUT__280 (.I0(n177), .I1(\uart_rx_inst/r_Clock_Count [8]), 
            .I2(\uart_rx_inst/r_Clock_Count [9]), .I3(n161), .O(\uart_rx_inst/n783 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(175)
    defparam LUT__280.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__281 (.I0(n177), .I1(\uart_rx_inst/r_Clock_Count [8]), 
            .I2(\uart_rx_inst/r_Clock_Count [9]), .O(n178)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__281.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__282 (.I0(n178), .I1(\uart_rx_inst/r_Clock_Count [10]), 
            .I2(n161), .O(\uart_rx_inst/n786 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(175)
    defparam LUT__282.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__283 (.I0(n178), .I1(\uart_rx_inst/r_Clock_Count [10]), 
            .I2(\uart_rx_inst/r_Clock_Count [11]), .I3(n161), .O(\uart_rx_inst/n789 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(175)
    defparam LUT__283.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__284 (.I0(\uart_rx_inst/r_Clock_Count [8]), .I1(\uart_rx_inst/r_Clock_Count [9]), 
            .I2(\uart_rx_inst/r_Clock_Count [10]), .I3(\uart_rx_inst/r_Clock_Count [11]), 
            .O(n179)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__284.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__285 (.I0(n178), .I1(n179), .I2(\uart_rx_inst/r_Clock_Count [12]), 
            .I3(n161), .O(\uart_rx_inst/n792 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(175)
    defparam LUT__285.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__286 (.I0(n179), .I1(\uart_rx_inst/r_Clock_Count [12]), 
            .O(n180)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__286.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__287 (.I0(n177), .I1(n180), .I2(\uart_rx_inst/r_Clock_Count [13]), 
            .I3(n161), .O(\uart_rx_inst/n795 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(175)
    defparam LUT__287.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__288 (.I0(\uart_rx_inst/r_Clock_Count [6]), .I1(\uart_rx_inst/r_Clock_Count [7]), 
            .I2(\uart_rx_inst/r_Clock_Count [12]), .I3(\uart_rx_inst/r_Clock_Count [13]), 
            .O(n181)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__288.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__289 (.I0(n174), .I1(n172), .I2(n179), .I3(n181), .O(n182)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__289.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__290 (.I0(n182), .I1(\uart_rx_inst/r_Clock_Count [14]), 
            .I2(n161), .O(\uart_rx_inst/n798 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(175)
    defparam LUT__290.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__291 (.I0(n182), .I1(\uart_rx_inst/r_Clock_Count [14]), 
            .I2(\uart_rx_inst/r_Clock_Count [15]), .I3(n161), .O(\uart_rx_inst/n801 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(175)
    defparam LUT__291.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__292 (.I0(n182), .I1(\uart_rx_inst/r_Clock_Count [14]), 
            .I2(\uart_rx_inst/r_Clock_Count [15]), .O(n183)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__292.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__293 (.I0(n183), .I1(\uart_rx_inst/r_Clock_Count [16]), 
            .I2(n161), .O(\uart_rx_inst/n804 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(175)
    defparam LUT__293.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__294 (.I0(n183), .I1(\uart_rx_inst/r_Clock_Count [16]), 
            .I2(\uart_rx_inst/r_Clock_Count [17]), .I3(n160), .O(\uart_rx_inst/n807 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(175)
    defparam LUT__294.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__295 (.I0(\uart_rx_inst/r_Clock_Count [14]), .I1(\uart_rx_inst/r_Clock_Count [15]), 
            .I2(\uart_rx_inst/r_Clock_Count [16]), .I3(\uart_rx_inst/r_Clock_Count [17]), 
            .O(n184)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__295.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__296 (.I0(n177), .I1(n180), .I2(n184), .I3(\uart_rx_inst/r_Clock_Count [13]), 
            .O(n185)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__296.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__297 (.I0(n185), .I1(\uart_rx_inst/r_Clock_Count [18]), 
            .I2(n161), .O(\uart_rx_inst/n810 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(175)
    defparam LUT__297.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__298 (.I0(n185), .I1(\uart_rx_inst/r_Clock_Count [18]), 
            .I2(\uart_rx_inst/r_Clock_Count [19]), .I3(n161), .O(\uart_rx_inst/n813 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(175)
    defparam LUT__298.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__299 (.I0(\uart_rx_inst/r_Clock_Count [18]), .I1(\uart_rx_inst/r_Clock_Count [19]), 
            .O(n186)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__299.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__300 (.I0(n185), .I1(n186), .I2(\uart_rx_inst/r_Clock_Count [20]), 
            .I3(n161), .O(\uart_rx_inst/n816 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(175)
    defparam LUT__300.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__301 (.I0(n186), .I1(\uart_rx_inst/r_Clock_Count [20]), 
            .O(n187)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__301.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__302 (.I0(n185), .I1(n187), .I2(\uart_rx_inst/r_Clock_Count [21]), 
            .I3(n161), .O(\uart_rx_inst/n819 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(175)
    defparam LUT__302.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__303 (.I0(n184), .I1(n186), .I2(\uart_rx_inst/r_Clock_Count [20]), 
            .I3(\uart_rx_inst/r_Clock_Count [21]), .O(n188)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__303.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__304 (.I0(n182), .I1(n188), .O(n189)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__304.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__305 (.I0(n189), .I1(\uart_rx_inst/r_Clock_Count [22]), 
            .I2(n161), .O(\uart_rx_inst/n822 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(175)
    defparam LUT__305.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__306 (.I0(n189), .I1(\uart_rx_inst/r_Clock_Count [22]), 
            .I2(\uart_rx_inst/r_Clock_Count [23]), .I3(n161), .O(\uart_rx_inst/n825 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(175)
    defparam LUT__306.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__307 (.I0(n182), .I1(n188), .I2(\uart_rx_inst/r_Clock_Count [22]), 
            .I3(\uart_rx_inst/r_Clock_Count [23]), .O(n190)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__307.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__308 (.I0(n190), .I1(\uart_rx_inst/r_Clock_Count [24]), 
            .I2(n161), .O(\uart_rx_inst/n828 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(175)
    defparam LUT__308.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__309 (.I0(n190), .I1(\uart_rx_inst/r_Clock_Count [24]), 
            .I2(\uart_rx_inst/r_Clock_Count [25]), .I3(n161), .O(\uart_rx_inst/n831 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(175)
    defparam LUT__309.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__310 (.I0(\uart_rx_inst/r_Clock_Count [22]), .I1(\uart_rx_inst/r_Clock_Count [23]), 
            .I2(\uart_rx_inst/r_Clock_Count [24]), .I3(\uart_rx_inst/r_Clock_Count [25]), 
            .O(n191)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__310.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__311 (.I0(n182), .I1(n188), .I2(n191), .O(n192)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__311.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__312 (.I0(n192), .I1(\uart_rx_inst/r_Clock_Count [26]), 
            .I2(n161), .O(\uart_rx_inst/n834 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(175)
    defparam LUT__312.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__313 (.I0(n192), .I1(\uart_rx_inst/r_Clock_Count [26]), 
            .I2(\uart_rx_inst/r_Clock_Count [27]), .I3(n161), .O(\uart_rx_inst/n837 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(175)
    defparam LUT__313.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__314 (.I0(\uart_rx_inst/r_Clock_Count [26]), .I1(\uart_rx_inst/r_Clock_Count [27]), 
            .O(n193)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__314.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__315 (.I0(n192), .I1(n193), .I2(\uart_rx_inst/r_Clock_Count [28]), 
            .I3(n161), .O(\uart_rx_inst/n840 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(175)
    defparam LUT__315.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__316 (.I0(n191), .I1(n193), .I2(\uart_rx_inst/r_Clock_Count [28]), 
            .O(n194)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__316.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__317 (.I0(n189), .I1(n194), .I2(\uart_rx_inst/r_Clock_Count [29]), 
            .I3(n161), .O(\uart_rx_inst/n843 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(175)
    defparam LUT__317.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__318 (.I0(n193), .I1(\uart_rx_inst/r_Clock_Count [28]), 
            .I2(\uart_rx_inst/r_Clock_Count [29]), .O(n195)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__318.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__319 (.I0(n192), .I1(n195), .I2(\uart_rx_inst/r_Clock_Count [30]), 
            .I3(n161), .O(\uart_rx_inst/n846 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(175)
    defparam LUT__319.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__320 (.I0(\uart_rx_inst/r_Clock_Count [29]), .I1(\uart_rx_inst/r_Clock_Count [30]), 
            .O(n196)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__320.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__321 (.I0(n188), .I1(n194), .I2(n196), .I3(n182), .O(n197)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__321.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__322 (.I0(n197), .I1(\uart_rx_inst/r_Clock_Count [31]), 
            .I2(n161), .O(\uart_rx_inst/n849 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(175)
    defparam LUT__322.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__323 (.I0(\uart_tx_inst/r_SM_Main [0]), .I1(\uart_tx_inst/r_SM_Main [1]), 
            .O(n198)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__323.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__324 (.I0(\uart_tx_inst/r_Clock_Count [0]), .I1(\uart_tx_inst/r_Clock_Count [1]), 
            .I2(\uart_tx_inst/r_Clock_Count [2]), .I3(\uart_tx_inst/r_Clock_Count [3]), 
            .O(n199)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h001f */ ;
    defparam LUT__324.LUTMASK = 16'h001f;
    EFX_LUT4 LUT__325 (.I0(n199), .I1(\uart_tx_inst/r_Clock_Count [4]), 
            .I2(\uart_tx_inst/r_Clock_Count [5]), .O(n200)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__325.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__326 (.I0(n200), .I1(\uart_tx_inst/r_Clock_Count [6]), 
            .I2(\uart_tx_inst/r_Clock_Count [7]), .I3(\uart_tx_inst/r_Clock_Count [8]), 
            .O(\uart_tx_inst/LessThan_9/n18 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1fff */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(242)
    defparam LUT__326.LUTMASK = 16'h1fff;
    EFX_LUT4 LUT__327 (.I0(n198), .I1(\uart_tx_inst/r_Clock_Count [0]), 
            .I2(\uart_tx_inst/LessThan_9/n18 ), .O(\uart_tx_inst/n848 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(248)
    defparam LUT__327.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__328 (.I0(\uart_tx_inst/r_Tx_Data [0]), .I1(\uart_tx_inst/r_Tx_Data [4]), 
            .I2(\uart_tx_inst/r_Bit_Index [2]), .O(n201)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__328.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__329 (.I0(\uart_tx_inst/r_Bit_Index [0]), .I1(\uart_tx_inst/r_Bit_Index [1]), 
            .I2(n201), .O(n202)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__329.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__330 (.I0(n202), .I1(\uart_tx_inst/r_SM_Main [0]), .I2(\uart_tx_inst/r_SM_Main [1]), 
            .O(\uart_tx_inst/n634 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he3e3 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(295)
    defparam LUT__330.LUTMASK = 16'he3e3;
    EFX_LUT4 LUT__331 (.I0(\uart_tx_inst/r_Bit_Index [0]), .I1(\uart_tx_inst/r_SM_Main [1]), 
            .O(\uart_tx_inst/n852 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(268)
    defparam LUT__331.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__332 (.I0(\uart_tx_inst/LessThan_9/n18 ), .I1(\uart_tx_inst/r_SM_Main [1]), 
            .I2(\uart_tx_inst/r_SM_Main [0]), .I3(\uart_tx_inst/r_SM_Main [2]), 
            .O(ceg_net28)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfff8 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(211)
    defparam LUT__332.LUTMASK = 16'hfff8;
    EFX_LUT4 LUT__333 (.I0(\uart_tx_inst/r_SM_Main [1]), .I1(send), .O(n203)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__333.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__334 (.I0(\uart_tx_inst/r_SM_Main [0]), .I1(\uart_tx_inst/r_SM_Main [2]), 
            .I2(n203), .O(\uart_tx_inst/n958 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(51)
    defparam LUT__334.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__335 (.I0(\uart_tx_inst/r_Bit_Index [0]), .I1(\uart_tx_inst/r_Bit_Index [1]), 
            .I2(\uart_tx_inst/r_Bit_Index [2]), .I3(\uart_tx_inst/r_SM_Main [1]), 
            .O(n204)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__335.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__336 (.I0(n204), .I1(n203), .I2(\uart_tx_inst/LessThan_9/n18 ), 
            .I3(\uart_tx_inst/r_SM_Main [0]), .O(\uart_tx_inst/n844 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf0ce */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(295)
    defparam LUT__336.LUTMASK = 16'hf0ce;
    EFX_LUT4 LUT__337 (.I0(n198), .I1(\uart_tx_inst/r_Clock_Count [0]), 
            .I2(\uart_tx_inst/r_Clock_Count [1]), .I3(\uart_tx_inst/LessThan_9/n18 ), 
            .O(\uart_tx_inst/n715 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1400 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(248)
    defparam LUT__337.LUTMASK = 16'h1400;
    EFX_LUT4 LUT__338 (.I0(\uart_tx_inst/r_Clock_Count [0]), .I1(\uart_tx_inst/r_Clock_Count [1]), 
            .I2(\uart_tx_inst/r_Clock_Count [2]), .O(n205)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__338.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__339 (.I0(n198), .I1(n205), .I2(\uart_tx_inst/LessThan_9/n18 ), 
            .O(\uart_tx_inst/n718 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(248)
    defparam LUT__339.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__340 (.I0(\uart_tx_inst/r_Clock_Count [0]), .I1(\uart_tx_inst/r_Clock_Count [1]), 
            .I2(\uart_tx_inst/r_Clock_Count [2]), .I3(\uart_tx_inst/r_Clock_Count [3]), 
            .O(n206)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;
    defparam LUT__340.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__341 (.I0(n198), .I1(n206), .I2(\uart_tx_inst/LessThan_9/n18 ), 
            .O(\uart_tx_inst/n721 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(248)
    defparam LUT__341.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__342 (.I0(\uart_tx_inst/r_Clock_Count [0]), .I1(\uart_tx_inst/r_Clock_Count [1]), 
            .I2(\uart_tx_inst/r_Clock_Count [2]), .I3(\uart_tx_inst/r_Clock_Count [3]), 
            .O(n207)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__342.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__343 (.I0(n198), .I1(n207), .I2(\uart_tx_inst/r_Clock_Count [4]), 
            .I3(\uart_tx_inst/LessThan_9/n18 ), .O(\uart_tx_inst/n724 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1400 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(248)
    defparam LUT__343.LUTMASK = 16'h1400;
    EFX_LUT4 LUT__344 (.I0(n207), .I1(\uart_tx_inst/r_Clock_Count [4]), 
            .I2(\uart_tx_inst/r_Clock_Count [5]), .O(n208)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__344.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__345 (.I0(n198), .I1(n208), .I2(\uart_tx_inst/LessThan_9/n18 ), 
            .O(\uart_tx_inst/n727 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(248)
    defparam LUT__345.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__346 (.I0(n207), .I1(\uart_tx_inst/r_Clock_Count [4]), 
            .I2(\uart_tx_inst/r_Clock_Count [5]), .I3(\uart_tx_inst/r_Clock_Count [6]), 
            .O(n209)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;
    defparam LUT__346.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__347 (.I0(n198), .I1(n209), .I2(\uart_tx_inst/LessThan_9/n18 ), 
            .O(\uart_tx_inst/n730 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(248)
    defparam LUT__347.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__348 (.I0(n207), .I1(\uart_tx_inst/r_Clock_Count [4]), 
            .I2(\uart_tx_inst/r_Clock_Count [5]), .I3(\uart_tx_inst/r_Clock_Count [6]), 
            .O(n210)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__348.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__349 (.I0(n198), .I1(n210), .I2(\uart_tx_inst/r_Clock_Count [7]), 
            .I3(\uart_tx_inst/LessThan_9/n18 ), .O(\uart_tx_inst/n733 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1400 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(248)
    defparam LUT__349.LUTMASK = 16'h1400;
    EFX_LUT4 LUT__350 (.I0(n210), .I1(\uart_tx_inst/r_Clock_Count [7]), 
            .I2(\uart_tx_inst/r_Clock_Count [8]), .O(n211)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0707 */ ;
    defparam LUT__350.LUTMASK = 16'h0707;
    EFX_LUT4 LUT__351 (.I0(n211), .I1(n198), .I2(\uart_tx_inst/LessThan_9/n18 ), 
            .O(\uart_tx_inst/n736 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(248)
    defparam LUT__351.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__352 (.I0(\uart_tx_inst/r_Bit_Index [0]), .I1(\uart_tx_inst/r_Bit_Index [1]), 
            .I2(\uart_tx_inst/r_SM_Main [1]), .O(\uart_tx_inst/n809 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(268)
    defparam LUT__352.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__353 (.I0(\uart_tx_inst/r_Bit_Index [0]), .I1(\uart_tx_inst/r_Bit_Index [1]), 
            .I2(\uart_tx_inst/r_Bit_Index [2]), .I3(\uart_tx_inst/r_SM_Main [1]), 
            .O(\uart_tx_inst/n813 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(268)
    defparam LUT__353.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__354 (.I0(\uart_tx_inst/LessThan_9/n18 ), .I1(\uart_tx_inst/r_SM_Main [0]), 
            .I2(\uart_tx_inst/r_SM_Main [1]), .O(\uart_tx_inst/n708 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(295)
    defparam LUT__354.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__355 (.I0(\uart_tx_inst/r_SM_Main [2]), .I1(\uart_tx_inst/r_SM_Main [1]), 
            .I2(\uart_tx_inst/r_SM_Main [0]), .O(\uart_tx_inst/n946 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(51)
    defparam LUT__355.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__357 (.I0(tx_2), .O(tx)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5555, EFX_ATTRIBUTE_INSTANCE__IS_LUT_SOP_INF_INV=TRUE */ ;   // /home/trinity/Downloads/efinity/2024.2/project/verilog_learnings/add.v(296)
    defparam LUT__357.LUTMASK = 16'h5555;
    EFX_GBUFCE CLKBUF__0 (.CE(1'b1), .I(clk), .O(\clk~O )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_GBUFCE, CE_POLARITY=1'b1 */ ;
    defparam CLKBUF__0.CE_POLARITY = 1'b1;
    
endmodule

//
// Verific Verilog Description of module EFX_LUT4_dd8836a1_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_dd8836a1_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_dd8836a1_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_dd8836a1_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_dd8836a1_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_dd8836a1_3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_dd8836a1_4
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_dd8836a1_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_dd8836a1_3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_dd8836a1_4
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_dd8836a1_5
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_dd8836a1_6
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_dd8836a1_7
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_dd8836a1_8
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_dd8836a1_9
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_dd8836a1_10
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_dd8836a1_11
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_dd8836a1_12
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_dd8836a1_13
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_dd8836a1_14
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_dd8836a1_15
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_dd8836a1_16
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_dd8836a1_17
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_dd8836a1_18
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_dd8836a1_19
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_dd8836a1_20
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_dd8836a1_21
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_dd8836a1_22
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_dd8836a1_23
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_dd8836a1_24
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_dd8836a1_25
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_dd8836a1_26
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_dd8836a1_27
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_dd8836a1_28
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_dd8836a1_29
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_dd8836a1_30
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_dd8836a1_31
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_dd8836a1_32
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_dd8836a1_33
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_dd8836a1_34
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_dd8836a1_35
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_dd8836a1_36
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_dd8836a1_37
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_dd8836a1_38
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_GBUFCE_dd8836a1_0
// module not written out since it is a black box. 
//

