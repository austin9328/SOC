# 音樂遊戲以FPGA做打擊
#### 組員
C111112131 詹逸宏  
C111112153 呂騏佑
## 一、Fequirements

### 1.Functional Requirements

- 1. btn打擊
- 2. SDK啟動遊戲
- 3. 音樂結束樹莓派傳送結束訊號
- 4. 使用UART(PS)傳輸得分訊號到樹莓派
- 5. 樹莓派將節奏轉為01
- 6. 將節奏訊號傳送到FPGA
- 7. 打擊提示由GUI呈現
- 8. 音樂由樹莓派輸出
- 9. GUI顯示分數
  
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
- 需透過SDK傳送訊號才能開始遊戲
- 只能由btn傳送打擊訊號
- 無遊戲紀錄存檔功能
- 僅限單一玩家遊玩

### 5.Verification Requirements

- 樹莓派uart驗證 :
    - UART通訊驗證 (驗證3、4、5、6、8點)
        - 透過socat 驗證創建虛擬port做UART通訊驗證GUI是否可以收到UART訊號 (驗證GUI本身UART)
        - 連接FPGA傳送UART訊號確定2者可以正確通訊 (驗證與FPGA的UART通訊)
    
    - 音頻轉換驗證 (確定第5點的音頻轉換正確)
        - 將轉換完成的01訊號由matplotlib顯示(確定轉碼成功，先不考慮正確性)
        - 同時撥放音樂、01訊號(驗證節奏點正確性，在GUI完成)

    - GUI驗證 (驗證7、9)
        - 確定GUI顯示的分數會根據收到的訊號改變 (驗證9點)
        - 確定GUI可以顯示打擊提示 (驗證7點)

- IP驗證(PL)：
    - 遊戲IP (驗證1、2點)
        - 確定收到S訊號後正確動作 
        - 確定按下按鈕有傳送得分訊號
      
- SDK驗證(PS)：(驗證第1點)
    - 確定送出S訊號FPGA、樹莓派有正確啟動

- 整合驗證:  
    - 透過SDK送出開始訊號，FPGA、樹莓派有收到SDK傳來的訊號 (驗證第2點)
    - 按下btn傳送的得分訊號在樹莓派正確顯示 (驗證1、3、4、9點)
    - 接收到訊號後開始LED是否有閃爍 (驗證第5、6點)
    - 接到開始訊號後，樹莓派傳送UART時音樂是否有撥放 (驗證第8點)
    - 再送出UART訊號且UART訊號為1時 ，是否有顯示打擊提示 (驗證第7點)


## 二、System analysis (Breakdown)

![螢幕擷取畫面 2025-06-05 171003](https://github.com/user-attachments/assets/ca59be94-93ea-478e-b75d-d01b001124a7)








## 三、Design 
- Architecture
      
![螢幕擷取畫面 2025-06-11 101246](https://github.com/user-attachments/assets/45367bbc-4961-406f-8584-3bf2243435d2)

- 流程圖
![image](https://github.com/user-attachments/assets/20533507-453f-42b2-a37b-d672a18dd265)

  
- API
 - FPGA
    - PS
        - input 
            - 樹莓派傳來的01訊號 (UART rx)
            - PL 傳來的得分訊號 (AXI Bus)
        - output
            - 將遊戲開始訊號傳給PL (AXI Bus)
            - 將遊戲開始訊號傳給樹莓派 (UART tx)
            - 將得分訊號傳給樹莓派 (UART tx)
        - method
            - 傳送 'S' 字元到樹梅派通知樹莓派開始傳輸 0、1 訊號，也將slv_reg0(8)設為1通知板子轉成 hit 狀態(開始遊戲)
            - 當從 slv_reg1 0收到的分數跟上一次不一樣後，傳輸給樹梅派目前分數，例如(p5、p12)
            - 從樹莓派收到 0、1 訊號，將這些訊號寫入 slv_reg0(0)，讓板子收到目前 0、1訊號
            - 收到樹莓派傳來的結束訊號後，將 slv_reg0(9)設為1，通知板子遊戲結束
    - PL
        - 遊戲 IP
            - input 
                - axi_clk
                - axi_rst
                - signal_in(31 downto 0)，對應 AXI slv_reg0(31 downto 0) 
                - btn_hit
            - output
                - signal_out(31 downto 0)，對應 AXI slv_reg1(31 downto 0)
                - LED(7 downto 0)
            - method 
                - 收到來自sdk傳送過來的開始訊號(signal_in(8))後進入hit狀態(開始玩遊戲)，對應slv_reg0
                - 收到來自sdk傳送過來的結束訊號(signal_in(9))後回到initial狀態，對應 slv_reg0
                - 將分數寫入 signal_out(3 downto 0) 對應 slv_reg1
                - LED 顯示目前 0、1 訊號

 - 樹莓派 
    - GUI
        - input 
            - 遊戲開始訊號 (UART rx)
            - 得分訊號 (UART rx)
        - output
            - 音頻訊號 (UART tx)
        - method
            - 透過tkinter 進行GUI設計
            - pyserial 進行UART通訊
                - 接收S訊號開始執行轉碼副程式(audio_to_binary.py)並傳送
                - 01訊號結束時傳送D訊號表示結束
            - 將解碼完成的uart訊號進行左移後進行繪製遊戲畫面

    - 轉碼副程式(audio_to_binary.py)
        
        - input 
            - 音樂檔案路徑
        - output
            - 01節奏訊號
        - method
            - 使用librosa 進行音樂檔案轉碼

## 四、coding 

## 五、Verification


