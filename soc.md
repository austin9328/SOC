### 1.Functional Requirements

- btn控制動作
- SDK啟動遊戲
- UART傳送SDK啟動訊號
- UART接收遊戲比分回傳SDK Terminal
- 球的移動以LED顯示
### 2.Interface
- 內部
    - UART IP
    - 乒乓球 IP
    - SDK
- 外部
    - LED 
    - btn

### 3.Performance
 - UART IP
    - 傳輸速率 115200（鲍率）
    - 資料寬度 8bit
    - 延遲 100ms(暫定)
    - 球速 固定

### 4.Limitation

- 乒乓球 IP
    - 只能處理單一FPGA
    - 只能以btn做為控制
    - 以LED做為顯示方式
- UART IP
    - 只能處理單一連線
    - 只能處理單一傳輸速率
### 5.Verification

- UART驗證 ：將IP I/O掛上 ILA以確定進出訊號是否正確

- 乒乓球驗證：將IP I/O掛上 ILA以確定進出訊號是否正確

- 整合驗證： 確定LED 、SDK Terminal、btn 正常運作