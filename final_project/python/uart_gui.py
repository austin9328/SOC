import tkinter as tk
from tkinter import scrolledtext, messagebox
import serial
import threading
import time
import numpy as np
from audio_to_binary import audio_to_binary

class UARTReaderGUI:
    def __init__(self, root):
        self.root = root
        self.root.title("UART Reader GUI")
        self.serial_port = None
        self.reading = False

        # 串口與鮑率設定區
        tk.Label(root, text="Port (e.g. /dev/pts/3):").grid(row=0, column=0, sticky="w")
        self.port_entry = tk.Entry(root, width=20)
        self.port_entry.grid(row=0, column=1)
        self.port_entry.insert(0, "/dev/pts/3")

        tk.Label(root, text="Baudrate:").grid(row=1, column=0, sticky="w")
        self.baud_entry = tk.Entry(root, width=20)
        self.baud_entry.grid(row=1, column=1)
        self.baud_entry.insert(0, "9600")
        # 音檔路徑輸入欄位
        tk.Label(root, text="Audio File Path:").grid(row=2, column=0, sticky="w")
        self.audio_path_entry = tk.Entry(root, width=40)
        self.audio_path_entry.grid(row=2, column=1)
        self.audio_path_entry.insert(0, "HAPPY Birthday Song, Happy Birthday to You (8QF9hM1MQwc).mp3")  # 預設值

        # 連線/斷線按鈕
        self.connect_btn = tk.Button(root, text="Connect", command=self.connect)
        self.connect_btn.grid(row=3, column=0, pady=5)

        self.disconnect_btn = tk.Button(root, text="Disconnect", command=self.disconnect, state=tk.DISABLED)
        self.disconnect_btn.grid(row=3, column=1, pady=5)

        # 接收訊號顯示
        self.output = scrolledtext.ScrolledText(root, width=50, height=8)
        self.output.grid(row=4, column=0, columnspan=2, pady=10)

        # ===== 輸入資料並傳送 =====
        tk.Label(root, text="Send Data (e.g. 1010):").grid(row=5, column=0, sticky="w")
        self.send_entry = tk.Entry(root, width=20)
        self.send_entry.grid(row=5, column=1, sticky="w")

        self.send_btn = tk.Button(root, text="Send", command=self.send_to_uart, state=tk.DISABLED)
        self.send_btn.grid(row=6, column=0, columnspan=2, pady=5)

        # ===== 新增遊戲畫面區 =====
        self.canvas = tk.Canvas(root, width=500, height=200, bg="black")
        self.canvas.grid(row=7, column=0, columnspan=2, pady=5)
        self.note = None  # 存放目前畫的圓形

        # 分數顯示
        self.score = 0
        self.score_label = tk.Label(root, text="Score: 0", font=("Arial", 14), fg="green")
        self.score_label.grid(row=8, column=0, columnspan=2, pady=10)

    def connect(self):
        port = self.port_entry.get()
        baud = int(self.baud_entry.get())

        try:
            self.serial_port = serial.Serial(port, baud, timeout=1)
            self.reading = True
            self.connect_btn.config(state=tk.DISABLED)
            self.disconnect_btn.config(state=tk.NORMAL)
            self.send_btn.config(state=tk.NORMAL)
            threading.Thread(target=self.read_uart, daemon=True).start()
            self.output.insert(tk.END, f"[Connected to {port}]\n")
        except Exception as e:
            messagebox.showerror("Connection Error", str(e))

    def disconnect(self):
        self.reading = False
        if self.serial_port and self.serial_port.is_open:
            self.serial_port.close()
        self.connect_btn.config(state=tk.NORMAL)
        self.disconnect_btn.config(state=tk.DISABLED)
        self.send_btn.config(state=tk.DISABLED)
        self.output.insert(tk.END, "[Disconnected]\n")

    def read_uart(self):
        while self.reading:
            try:
                if self.serial_port.in_waiting:
                    raw_line = self.serial_port.readline()
                    line = raw_line.decode(errors='ignore').strip()

                    if line == "start":
                        filepath = self.audio_path_entry.get().strip()
                        try:
                            binary_data = audio_to_binary(filepath)
                            self.output.insert(tk.END, f"[Sending {len(binary_data)} bits from '{filepath}']...\n")
                            self.output.see(tk.END)
                            threading.Thread(target=self.send_audio_binary, daemon=True).start()
                        except Exception as e:
                            self.output.insert(tk.END, f"[Error loading audio: {e}]\n")
                            self.output.see(tk.END)

                    else:
                        self.output.insert(tk.END, f"[RX] {line}\n")
                        self.output.see(tk.END)
                        self.display_note(line)

            except Exception as e:
                self.output.insert(tk.END, f"[Error] {e}\n")
                break


    def send_to_uart(self):
        data = self.send_entry.get().strip()
        if not data:
            return
        try:
            if self.serial_port and self.serial_port.is_open:
                self.serial_port.write(data.encode())  # 傳送資料
                self.serial_port.write(b'\n')          # 加上換行字元
                self.output.insert(tk.END, f"[TX] {data}\n")
                self.output.see(tk.END)
        except Exception as e:
            self.output.insert(tk.END, f"[Send Error] {e}\n")

    def display_note(self, signal):
        if signal == "1":
            if self.note is None:
                self.note = self.canvas.create_oval(80, 30, 120, 70, fill="red")
        elif signal == "0":
            if self.note is not None:
                self.canvas.delete(self.note)
                self.note = None
        elif signal == "2":
            self.score += 1
            self.score_label.config(text=f"Score: {self.score}")

    def send_audio_binary(self):
        filepath = "HAPPY Birthday Song, Happy Birthday to You (8QF9hM1MQwc).mp3"  # 音檔路徑可依需求修改
        binary_data = audio_to_binary(filepath)
        self.output.insert(tk.END, f"[Sending {len(binary_data)} bits from audio]...\n")
        self.output.see(tk.END)

        for bit in binary_data:
            if not self.reading:
                break
            try:
                self.serial_port.write(str(int(bit)).encode())
                self.serial_port.write(b'\n')
                self.output.insert(tk.END, f"[TX]{bit}\n")
                self.output.see(tk.END)
                time.sleep(1)  # 控制傳送速度
            except Exception as e:
                self.output.insert(tk.END, f"[TX Error] {e}\n")
                break

if __name__ == "__main__":
    root = tk.Tk()
    app = UARTReaderGUI(root)
    root.mainloop()
