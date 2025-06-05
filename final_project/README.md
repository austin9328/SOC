# 乒乓球遊戲並由UART傳輸到樹莓派顯示分數
#### 組員
C111112131 詹逸宏  
C111112153 呂騏佑
## 一、Fequirements

### 1.Functional Requirements

- btn打擊
- SDK啟動遊戲
- 使用UART(PS)傳輸得分訊號
- 樹莓派將音頻轉為01傳送到FPGA
- 球的移動在LED顯示
- 音樂由樹莓派輸出
- 

### 2.Interface Requirements
- FPGA interface
    - internal
        - PS -> PL(IP) ==>AXI Bus
    - external
        - PS <-> 樹莓派 ==> UART
        - FPGA btn、led  ==> GPIO
- 資料傳輸 interface
    - UART 
        - 資料寬度 8bit
        - 傳輸速率 115200（鲍率）
- 樹莓派 interface
    - UART <-> PS ==>UART

### 3.Performance Requirements
- 延遲 100ms(暫定)

### 4.Limitation Requirements
- 由於UART傳輸速率限制，遊戲的速度會受到影響
- 需透過SDK傳送訊號才能開始遊戲
- 只能由btn傳送打擊訊號
- 無遊戲紀錄存檔功能
- 僅限單一玩家遊玩

### 5.Verification Requirements

- 樹莓派uart驗證 :
    - UART通訊驗證
        - 透過socat 驗證創建虛擬port做UART通訊驗證GUI是否可以收到UAER訊號
        - 連接FPGA傳送UART訊號確定2者可以正確通訊
    
    - 音頻轉換驗證
        - 將轉換完成的01訊號由matplotlib顯示
    - GUI驗證
        - 確定GUI收到訊號2時可以正確顯示分數
        - 確定GUI收到訊號1時可以顯示打擊提示

- IP驗證：
    - 確定收到SDK傳送的start訊號後LED正常閃爍  
    - 確定按下按鈕有傳送得分訊號到樹莓派

- 整合驗證:  
    - 透過SDK送出開始訊號，FPGA有收到樹莓派傳來的訊號
    - GUI可以正確顯示分數，並在按下btn時顯示得分訊號


## 二、System analysis (Breakdown)

![螢幕擷取畫面 2025-06-05 171003](https://github.com/user-attachments/assets/ca59be94-93ea-478e-b75d-d01b001124a7)








## 三、Design 
- Architecture
![螢幕擷取畫面 2025-06-05 171509](https://github.com/user-attachments/assets/f34d35f4-1d07-4bd0-baf5-3bf2f1b31231)





- API
 - FPGA
    - PS
        - input 
            - 樹莓派傳來的01訊號 (UART rx)
            - PL 傳來的得分訊號 (AXI Bus)
            - 
        - output
            - 將遊戲開始訊號傳給PL (AXI Bus)
            - 將遊戲開始訊號傳給樹莓派 (UART tx)
            - 將得分訊號傳給樹莓派 (UART tx)
    - PL
        - 遊戲 IP
            - input 
                - clk
                - rst
                - start
                - btn
            - output
                - 得分訊號

    - 樹莓派 
        - input 
            - 遊戲開始訊號 (UART rx)
            - 得分訊號 (UART rx)
        - output
            - 音頻訊號 (UART tx)


## 四、coding 

## 五、Verification


