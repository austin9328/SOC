`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/05/06 21:35:58
// Design Name: 
// Module Name: hw2_intr
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module hw2_intr (
    input wire clk,
    input wire rst,
    input wire start,              // 軟體觸發 (AXI)
    input wire btn,                // 硬體按鈕
    output reg [7:0] led,          // LED 輸出
    output reg [2:0] led_index,    // LED index
    output reg irq_raw             // IRQ 給 AXI_INTR
);

    reg [2:0] count;
    reg start_d, btn_d;

    wire start_pulse = start & ~start_d;
    wire btn_pulse = btn & ~btn_d;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            count <= 0;
            led_index <= 0;
            led <= 8'b00000001;
            start_d <= 0;
            btn_d <= 0;
            irq_raw <= 0;
        end else begin
            start_d <= start;
            btn_d <= btn;

            // 軟體觸發：每次 shift LED
            if (start_pulse) begin
                count <= (count == 3'd7) ? 3'd0 : count + 1;
                led_index <= (count == 3'd7) ? 3'd0 : count + 1;
                led <= 8'b00000001 << ((count == 3'd7) ? 3'd0 : count + 1);
            end

            // 中斷觸發（軟體 or 硬體）
            if ( btn_pulse) begin
                irq_raw <= 1'b1;  // 發送 IRQ
            end else begin
                irq_raw <= 1'b0;
            end
        end
    end

endmodule
