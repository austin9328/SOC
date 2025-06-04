import serial
import time
import audio_to_binary

# 設定 UART
ser = serial.Serial("/dev/pts/5", 115200)
filepath = "test_music.m4a"

# 將音訊轉為 0/1 序列（每 0.1 秒一格）
binary_seq = audio_to_binary.audio_to_binary(filepath)

# 傳送每個 bit 給 FPGA
for i, bit in enumerate(binary_seq):
    data = f"{bit}\n".encode()
    ser.write(data)
    print(f"[{i:04}] TX: {bit}")
    time.sleep(0.1)  # 控制傳送速率（100ms = 10Hz）
