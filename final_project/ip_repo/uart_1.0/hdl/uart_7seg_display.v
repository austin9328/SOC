module uart_7seg_display (
    input  wire        clk,
    input  wire        rst,
    input  wire [7:0]  rx_data,
    input  wire        rx_valid,
    output reg  [6:0]  seg,
    output reg         rx_seen  // ← 你如果還想接 LED 顯示可用
);

    reg [3:0] digit;

    // 只在 rx_valid 時更新 digit
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            digit <= 4'd0;
            rx_seen <= 0;
        end else if (rx_valid) begin
            if (rx_data >= 8'd48 && rx_data <= 8'd57) begin
                digit <= rx_data - 8'd48;  // '0'–'9'
            end else begin
                digit <= 4'd15;  // invalid
            end
            rx_seen <= 1;
        end
    end

    // 七段解碼（共陽：低電位亮）
	always @(*) begin
			case (digit)
				4'd0: seg = ~7'b0111111;
				4'd1: seg = ~7'b0000110;
				4'd2: seg = ~7'b1011011;
				4'd3: seg = ~7'b1001111;
				4'd4: seg = ~7'b1100110;
				4'd5: seg = ~7'b1101101;
				4'd6: seg = ~7'b1111101;
				4'd7: seg = ~7'b0000111;
				4'd8: seg = ~7'b1111111;
				4'd9: seg = ~7'b1101111;
				default: seg = ~7'b0000000; 
			endcase
		end

endmodule


    // 對應段碼，低電位亮，共陰七段顯示器
	/*
    always @(*) begin
        case (digit)
            4'd0: seg = 7'b0111111;
            4'd1: seg = 7'b0000110;
            4'd2: seg = 7'b1011011;
            4'd3: seg = 7'b1001111;
            4'd4: seg = 7'b1100110;
            4'd5: seg = 7'b1101101;
            4'd6: seg = 7'b1111101;
            4'd7: seg = 7'b0000111;
            4'd8: seg = 7'b1111111;
            4'd9: seg = 7'b1101111;
            default: seg = 7'b0000000; // 全滅
        endcase
		*/
		// 共陽七段顯示器

