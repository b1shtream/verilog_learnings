module adder(
    input clk,
    input rx,
    output tx
);

    wire [7:0] rx_data;
    wire rx_ready;
    reg add_flag;
    reg [3:0] a, b;
    reg [3:0] sum;
    reg carry;
    wire [7:0] uart_data;
    reg send;

    // UART Receiver
    uart_rx uart_rx_inst (
        .i_Clock(clk),
  
        .i_Rx_Serial(rx),
        .o_Rx_Byte(rx_data),
        .o_Rx_DV(rx_ready)
    );

    // On data receive, parse it into a and b
    always @(posedge clk) begin
        if (rx_ready) begin
            a <= rx_data[7:4];
            b <= rx_data[3:0];
          
            add_flag <= 1'b1;
        end
        if ( add_flag ) begin
            send <= 1;
            sum <= a ^ b;
            carry <= a & b;
        end
    end

    // Combine sum and carry into a byte to send over UART
    assign uart_data = {4'b0000 | sum, carry, 3'b000};

    // UART Transmitter
    uart_tx uart_tx_inst (
        .i_Clock(clk),
        .i_Tx_Byte(uart_data),
        .i_Tx_DV(send),
        .o_Tx_Serial(tx)
    );
    
endmodule


module uart_rx (
 /* Clock Signals */
 input                          i_Clock,
 
 /* Configuration Control Signals */
 input [CONFIG_DATA_WIDTH-1:0]  uart_config_data,
 
 /* UART Rx Signals */
 input                          i_Rx_Serial,
 output                         o_Rx_DV,
 output [UART_DATA_WIDTH-1:0]   o_Rx_Byte
);

/* Global parameters */
parameter UART_DATA_WIDTH   = 8;
parameter CONFIG_DATA_WIDTH = 32;

/* Register declaration and Initialization */
reg [CONFIG_DATA_WIDTH-1:0] r_Clock_Count = 0;
reg [2:0]                   r_Bit_Index   = 0;
reg [UART_DATA_WIDTH:0]     r_Rx_Byte     = 0;
reg                         r_Rx_DV       = 0;
reg [CONFIG_DATA_WIDTH-1:0] r_config_data = 32'd437;


/* State Machine Parameters */ 
reg [2:0]  r_SM_Main      = 0; 
localparam s_IDLE         = 3'b000;
localparam s_RX_START_BIT = 3'b001;
localparam s_RX_DATA_BITS = 3'b010;
localparam s_RX_STOP_BIT  = 3'b011;
localparam s_CLEANUP      = 3'b100;

/* To avoid metastability */
reg           r_Rx_Data_R = 1'b1;
reg           r_Rx_Data   = 1'b1;

always @(posedge i_Clock) begin
  r_Rx_Data_R <= i_Rx_Serial;
  r_Rx_Data   <= r_Rx_Data_R;
end

/* Main FSM */
always @(posedge i_Clock) begin
  r_Rx_Data_R <= i_Rx_Serial;
  r_Rx_Data   <= r_Rx_Data_R;
  case (r_SM_Main)
    s_IDLE : begin
      r_Rx_DV       <= 1'b0;
      r_Clock_Count <= 0;
      r_Bit_Index   <= 0;
      r_config_data <= uart_config_data - 1;
       
      if (r_Rx_Data == 1'b0) begin  // Start bit detected
        r_SM_Main <= s_RX_START_BIT;
      end else begin
        r_SM_Main <= s_IDLE;
      end
    end
  
    s_RX_START_BIT : begin
      if (r_Clock_Count == (r_config_data >> 1)) begin
        if (r_Rx_Data == 1'b0) begin
          r_Clock_Count <= 0;  // reset counter, found the middle
          r_SM_Main     <= s_RX_DATA_BITS;
        end else begin
          r_SM_Main <= s_IDLE;
        end
      end else begin
        r_Clock_Count <= r_Clock_Count + 1;
        r_SM_Main     <= s_RX_START_BIT;
      end
    end

    s_RX_DATA_BITS : begin
      if (r_Clock_Count < r_config_data) begin
        r_Clock_Count <= r_Clock_Count + 1;
        r_SM_Main     <= s_RX_DATA_BITS;
      end else begin
        r_Clock_Count          <= 0;
        r_Rx_Byte[r_Bit_Index] <= r_Rx_Data;
         
        // Check if we have received all bits
        if (r_Bit_Index < 7) begin
          r_Bit_Index <= r_Bit_Index + 1;
          r_SM_Main   <= s_RX_DATA_BITS;
        end else begin
          r_Bit_Index <= 0;
          r_SM_Main   <= s_RX_STOP_BIT;
        end
      end
    end
 
    // Receive Stop bit.  Stop bit = 1
    s_RX_STOP_BIT : begin
      // Wait CLKS_PER_BIT-1 clock cycles for Stop bit to finish
      if (r_Clock_Count < r_config_data) begin
        r_Clock_Count <= r_Clock_Count + 1;
        r_SM_Main     <= s_RX_STOP_BIT;
      end else begin
        r_Rx_DV       <= 1'b1;
        r_Clock_Count <= 0;
        r_SM_Main     <= s_CLEANUP;
      end
    end

    // Stay here 1 clock
    s_CLEANUP : begin
      r_SM_Main <= s_IDLE;
      r_Rx_DV   <= 1'b0;
    end
     
    default : r_SM_Main <= s_IDLE;
  endcase
end

assign o_Rx_DV   = r_Rx_DV;
assign o_Rx_Byte = r_Rx_DV ? r_Rx_Byte : 0;

endmodule

module uart_tx (
    /* Clock Signals */
    input                           i_Clock,
    
    /* Configuration Control Signal */
    input [CONFIG_DATA_WIDTH-1:0]   uart_config_data,
    
    /* UART Tx Signals */
    input                           i_Tx_DV,
    input [UART_DATA_WIDTH-1:0]     i_Tx_Byte,
    output                          o_Tx_Active,
    output reg                      o_Tx_Serial = 1,
    output                          o_Tx_Done
);

/* Global Parameters */
parameter UART_DATA_WIDTH   = 8;
parameter CONFIG_DATA_WIDTH = 32;

/* Register declaration and initialization */
reg [CONFIG_DATA_WIDTH-1:0] r_Clock_Count = 0;
reg [2:0]                   r_Bit_Index = 0;
reg [UART_DATA_WIDTH-1:0]   r_Tx_Data = 0;
reg                         r_Tx_Done = 0;
reg                         r_Tx_Active = 0;
reg [CONFIG_DATA_WIDTH-1:0] r_config_data = 32'd437;

/* State Machine Parameters */
reg [2:0] r_SM_Main = 0;
localparam s_IDLE           = 3'b000;
localparam s_TX_START_BIT   = 3'b001;
localparam s_TX_DATA_BITS   = 3'b010;
localparam s_TX_STOP_BIT    = 3'b011;
localparam s_CLEANUP        = 3'b100;

always @(posedge i_Clock) begin
    case (r_SM_Main)
        s_IDLE: begin
             /* Drive Line High for Idle */
            o_Tx_Serial <= 1'b1;
            r_Tx_Done <= 1'b0;
            r_Clock_Count <= 0;
            r_Bit_Index <= 0;
            r_config_data <= uart_config_data - 1;
            
            if (i_Tx_DV == 1'b1) begin
                r_Tx_Active <= 1'b1;
                r_Tx_Data <= i_Tx_Byte;
                r_SM_Main <= s_TX_START_BIT;
            end else begin
                r_SM_Main <= s_IDLE;
            end
        end // case: s_IDLE

        /* Send out Start Bit. Start bit = 0 */
        s_TX_START_BIT: begin
            o_Tx_Serial <= 1'b0;

            /* Wait CLKS_PER_BIT-1 clock cycles for start bit to finish */
            if (r_Clock_Count < r_config_data) begin
                r_Clock_Count <= r_Clock_Count + 1;
                r_SM_Main <= s_TX_START_BIT;
            end else begin
                r_Clock_Count <= 0;
                r_SM_Main <= s_TX_DATA_BITS;
            end
        end // case: s_TX_START_BIT

        /* Wait CLKS_PER_BIT-1 clock cycles for data bits to finish */
        s_TX_DATA_BITS: begin
            o_Tx_Serial <= r_Tx_Data[r_Bit_Index];

            if (r_Clock_Count < r_config_data) begin
                r_Clock_Count <= r_Clock_Count + 1;
                r_SM_Main <= s_TX_DATA_BITS;
            end else begin
                r_Clock_Count <= 0;

                /* Check if we have sent out all bits */
                if (r_Bit_Index < 7) begin
                    r_Bit_Index <= r_Bit_Index + 1;
                    r_SM_Main <= s_TX_DATA_BITS;
                end else begin
                    r_Bit_Index <= 0;
                    r_SM_Main <= s_TX_STOP_BIT;
                end
            end
        end // case: s_TX_DATA_BITS

        /* Send out Stop bit. Stop bit = 1 */
        s_TX_STOP_BIT: begin
            o_Tx_Serial <= 1'b1;

            /* Wait CLKS_PER_BIT-1 clock cycles for Stop bit to finish */
            if (r_Clock_Count < r_config_data) begin
                r_Clock_Count <= r_Clock_Count + 1;
                r_SM_Main <= s_TX_STOP_BIT;
            end else begin
                r_Tx_Done <= 1'b1;
                r_Clock_Count <= 0;
                r_SM_Main <= s_CLEANUP;
                r_Tx_Active <= 1'b0;
            end
        end // case: s_Tx_STOP_BIT

        /* Stay here 1 clock */
        s_CLEANUP: begin
            r_Tx_Done <= 1'b1;
            r_SM_Main <= s_IDLE;
        end

        default: r_SM_Main <= s_IDLE;
    endcase
end

assign o_Tx_Active = r_Tx_Active;
assign o_Tx_Done = r_Tx_Done;

endmodule


