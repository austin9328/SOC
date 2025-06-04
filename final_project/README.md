# 乒乓球遊戲並由UART傳輸到樹莓派顯示分數
#### 組員
C111112131 詹逸宏  
C111112153 呂騏佑
## 一、Fequirements

### 1.Functional Requirements

- btn控制動作
- SDK啟動遊戲
- 使用UART傳輸比分到樹莓派顯示
- 球的移動以LED顯示

### 2.Interface Requirements

- internal
    - PS -> PL(IP) ==>AXI Bus
- external
    - FPGA(UART IP) -> 樹莓派 ==> UART
    - FPGA btn、led 

### 3.Performance Requirements

 - UART & 乒乓球 IP
    - 傳輸速率 115200（鲍率）
    - 資料寬度 8bit
    - 延遲 100ms(暫定)
    - 球速 固定

### 4.Limitation Requirements

- 由LED顯示，所以球體只有簡單的左右移動
- 只能由btn傳送擊球訊號
- 無遊戲紀錄存檔功能
- 僅限單一玩家遊玩

### 5.Verification Requirements

- 樹莓派uart驗證 :
    - 透過socat 驗證創建虛擬port做UART通訊驗證GUI是否可以收到UAER訊號
    - 連接FPGA傳送UART訊號確定2者可以正確通訊
- IP驗證：
    - UART :  
        - 將訊號傳給已驗證過的樹莓派，確定可以接收並資料無誤
    - 乒乓球:  
         - 確定收到SDK傳送的start訊號後LED正常閃爍  
         - 確定按下按鈕後LED停止閃爍

- 整合驗證:  
    - 透過SDK送出訊號，並在按下btn時，樹莓派可以正確顯示分數


## 二、System analysis (Breakdown)

![螢幕擷取畫面 2025-05-29 214949](https://github.com/user-attachments/assets/fb4ace25-9c88-47a4-a078-b53cdaf98dbf)




## 三、Design 
- Architecture
![螢幕擷取畫面 2025-05-29 215028](https://github.com/user-attachments/assets/a6640890-9c6d-4fa9-b112-280d2d4a7413)



- API
    - PL
        - 乒乓球 IP
            - input 
                - clk
                - rst
                - start
                - btn
                - AXI Bus
    
            - output
                - led[7:0]
        - UART IP
            - input
               - clk
               - rst
               - axi
               - AXI Bus

            - output
               -UART tx

    - 樹莓派 
        - input 
            - UART rx
        - output
            - 顯示分數


## 四、coding 

## 五、Verification


