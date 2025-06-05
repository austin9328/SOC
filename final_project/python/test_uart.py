import serial
import time
import audio_to_binary

# 設定 UART
ser = serial.Serial("/dev/pts/7", 115200)
filepath = "HAPPY Birthday Song, Happy Birthday to You (8QF9hM1MQwc).mp3"

# 將音訊轉為 0/1 序列（每 0.1 秒一格）
binary_seq = audio_to_binary.audio_to_binary(filepath)

# 傳送每個 bit 給 FPGA
start_time = time.time()
for i, bit in enumerate(binary_seq):
    data = f"{bit}\n".encode()
    ser.write(data)
    print(f"[{i:04}] TX: {bit}")
    time.sleep(1)  # 控制傳送速率（100ms = 10Hz）
end_time = time.time()
use_time = end_time - start_time
print(f"{end_time}-{start_time}")
