module uart_top (
    input  wire        clk,
    input  wire        rst_n,
    input  wire        rxd,           // UART RX pin
    output wire        txd,           // UART TX pin
    output wire [6:0]  seg,            // 7-segment segments (a-g)
	output wire        rx_seen, //add
	output wire [7:0] debug_rx_data,
	output wire       debug_rx_valid,
	output wire       debug_busy

);

    // Internal signals
    wire        rst = ~rst_n;
    wire [7:0]  rx_data;
    wire        rx_valid;
    wire        rx_ready;
    wire        tx_ready;
    wire [7:0]  tx_data;
    wire        tx_valid;
    wire        tx_ready_internal;
    wire        busy;
    wire        overrun_error;
    wire        frame_error;

    // Parameter: prescale = clk_freq / (baud_rate * 8)
    // For example: 100 MHz / (115200 * 8) ≈ 108
    wire [15:0] prescale = 16'd054;

    // UART Receiver
    uart_rx #(
        .DATA_WIDTH(8)
    ) uart_rx_inst (
        .clk(clk),
        .rst(rst),
        .m_axis_tdata(rx_data),
        .m_axis_tvalid(rx_valid),
        .m_axis_tready(1'b1),  // Always ready
        .rxd(rxd),
        .busy(busy),
        .overrun_error(overrun_error),
        .frame_error(frame_error),
        .prescale(prescale)
    );

    // 7-Segment Display
    uart_7seg_display display_inst (
        .clk(clk),
        .rst(rst),
        .rx_data(rx_data),
        .rx_valid(rx_valid),
        .seg(seg),
		.rx_seen(rx_seen) //add
    );

    // Echo logic: when rx_valid, send it back
    assign tx_data  = rx_data;
    assign tx_valid = rx_valid;

    // UART Transmitter
    uart_tx #(
        .DATA_WIDTH(8)
    ) uart_tx_inst (
        .clk(clk),
        .rst(rst),
        .s_axis_tdata(tx_data),
        .s_axis_tvalid(tx_valid),
        .s_axis_tready(), // ignore
        .txd(txd),
        .prescale(prescale)
    );
	//add
	assign debug_rx_data  = rx_data;
	assign debug_rx_valid = rx_valid;
	assign debug_busy     = busy;


endmodule
