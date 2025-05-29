# 乒乓球遊戲並由UART傳輸到樹莓派顯示分數

## 一、Fequirements

### 1.Functional Requirements

- btn控制動作
- SDK啟動遊戲
- 使用Uart傳輸比分到樹莓派顯示
- 球的移動以LED顯示

### 2.Interface Requirements

- internal
    - PS -> PL ==>AXI Lite Bus

- external
    - FPGA -> 樹莓派 ==> UART
    - FPGA btn、led ==> GPIO

### 3.Performance Requirements

 - UART & 乒乓球 IP
    - 傳輸速率 115200（鲍率）
    - 資料寬度 8bit
    - 延遲 100ms(暫定)
    - 球速 固定

### 4.Limitation Requirements

- 由於由LED顯示，所以球體只有簡單的左右移動
- 只能由btn傳送擊球訊號
- 無遊戲紀錄存檔功能
- 僅限單一玩家遊玩

### 5.Verification Requirements

- 樹莓派uart驗證 :
    - 透過電腦傳送uart訊號測試樹莓派是否可以正確接收

- UART & 乒乓球IP驗證：
    - UART :  
        - 將訊號傳給已驗證過的樹莓派，確定可以接收並資料無誤
    - 乒乓球:  
         - 確定收到SDK傳送的start訊號後LED正常閃爍  
         - 確定按下按鈕後LED停止閃爍

- 整合驗證:  
    - 透過SDK送出訊號，並在按下btn時，樹莓派可以正確顯示分數


## 二、System analysis (Breakdown)

![image](https://github.com/user-attachments/assets/af03921d-a2f3-4471-82a1-16eac5a71ff4)


## 三、Design 
- Architecture
![image](https://github.com/user-attachments/assets/4604350d-7460-46f8-884b-cf3eb5260d46)

- API
    - UART & 乒乓球 IP 
        - input 
            - clk
            - rst
            - axi bus
            - btn

        - output
            - UART tx
            - led[7:0]

    - 樹莓派 
        - input 
            - UART rx
        - output
            - 顯示分數


## 四、coding 

## 五、Verification


