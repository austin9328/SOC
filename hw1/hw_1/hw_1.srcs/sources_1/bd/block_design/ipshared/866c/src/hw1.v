`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/04/17 22:50:04
// Design Name: 
// Module Name: hw1
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


module hw1 (
    input wire clk,
    input wire rst,
    input wire start,
    output reg [7:0] led,
    output reg [2:0] led_index
);

    reg [2:0] count;
    reg start_d;

    // 偵測 start 的 rising edge（避免 SDK 重複觸發兩次）
    wire start_pulse = start & ~start_d;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            count <= 0;
            led_index <= 0;
            led <= 8'b00000001;
            start_d <= 0;
        end else begin
            start_d <= start;  // 暫存 start

            if (start_pulse) begin
                count <= (count == 3'd7) ? 3'd0 : count + 1;
                led_index <= (count == 3'd7) ? 3'd0 : count + 1;
                led <= 8'b00000001 << ((count == 3'd7) ? 3'd0 : count + 1);
            end
        end
    end

endmodule


