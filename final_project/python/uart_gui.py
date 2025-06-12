import tkinter as tk
from tkinter import scrolledtext, messagebox, filedialog
import serial
import threading
import time
import numpy as np
from audio_to_binary import audio_to_binary
import pygame
from datetime import datetime
import csv

class UARTReaderGUI:
    def __init__(self, root):
        self.root = root
        self.root.title("UART Reader GUI")
        self.serial_port = None
        self.reading = False
        self.audio_path = ""

        tk.Label(root, text="Port:").grid(row=0, column=0, sticky="w")
        self.port_entry = tk.Entry(root, width=20)
        self.port_entry.grid(row=0, column=1)
        self.port_entry.insert(0, "/dev/serial0")

        tk.Label(root, text="Baudrate:").grid(row=1, column=0, sticky="w")
        self.baud_entry = tk.Entry(root, width=20)
        self.baud_entry.grid(row=1, column=1)
        self.baud_entry.insert(0, "115200")

        tk.Label(root, text="Audio File:").grid(row=2, column=0, sticky="w")
        self.audio_btn = tk.Button(root, text="Select File", command=self.select_audio_file)
        self.audio_btn.grid(row=2, column=1, sticky="w")

        self.connect_btn = tk.Button(root, text="Connect", command=self.connect)
        self.connect_btn.grid(row=3, column=0, pady=5)
        self.disconnect_btn = tk.Button(root, text="Disconnect", command=self.disconnect, state=tk.DISABLED)
        self.disconnect_btn.grid(row=3, column=1, pady=5)

        self.output = scrolledtext.ScrolledText(root, width=50, height=8)
        self.output.grid(row=4, column=0, columnspan=2)

        tk.Label(root, text="Send Data:").grid(row=5, column=0, sticky="w")
        self.send_entry = tk.Entry(root, width=20)
        self.send_entry.grid(row=5, column=1, sticky="w")
        self.send_btn = tk.Button(root, text="Send", command=self.send_to_uart, state=tk.DISABLED)
        self.send_btn.grid(row=6, column=0, columnspan=2)

        self.canvas = tk.Canvas(root, width=500, height=200, bg="black")
        self.canvas.grid(row=7, column=0, columnspan=2)
        self.note = None
        self.score = 0
        self.score_label = tk.Label(root, text="Score: 0", font=("Arial", 14), fg="green")
        self.score_label.grid(row=8, column=0, columnspan=2)

        self.tx_one_count = 0  # 記錄傳送出去的 1 數量
        self.display_count = 0  # 記錄畫面動畫觸發次數


    def select_audio_file(self):
        file_path = filedialog.askopenfilename(filetypes=[("Audio Files", "*.wav *.mp3")])
        if file_path:
            self.audio_path = file_path
            self.output.insert(tk.END, f"[File Selected] {file_path}\n")
            self.output.see(tk.END)

    def connect(self):
        try:
            self.serial_port = serial.Serial(self.port_entry.get(), int(self.baud_entry.get()), timeout=1)
            self.reading = True
            self.connect_btn.config(state=tk.DISABLED)
            self.disconnect_btn.config(state=tk.NORMAL)
            self.send_btn.config(state=tk.NORMAL)
            threading.Thread(target=self.read_uart, daemon=True).start()
            self.output.insert(tk.END, "[Connected]\n")
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
                    line = self.serial_port.readline().decode(errors='ignore').strip()
                    if line == "S":
                        threading.Thread(target=self.send_audio_binary, daemon=True).start()
                    elif line.startswith("p"):
                        try:
                            score_val = int(line[1:])
                            self.score = score_val
                            self.score_label.config(text=f"Score: {self.score}")
                            self.output.insert(tk.END, f"[Score Update] {line}\n")
                        except ValueError:
                            self.output.insert(tk.END, f"[Parse Error] Invalid score: {line}\n")
                    else:
                        self.output.insert(tk.END, f"[RX] {line}\n")
                        self.output.see(tk.END)
                        self.display_note(line)
            except Exception as e:
                self.output.insert(tk.END, f"[Error] {e}\n")
                break

    def send_to_uart(self):
        data = self.send_entry.get().strip()
        if data:
            try:
                self.serial_port.write(data.encode() + b'\n')
                self.output.insert(tk.END, f"[TX] {data}\n")
                self.output.see(tk.END)
            except Exception as e:
                self.output.insert(tk.END, f"[Send Error] {e}\n")

    ###遊戲畫面 圓圈出現總時長 （25-5）/2 ＝10 次 10*30 ＝ 300ms +200ms停留 剛好500ms(1拍)
    def animate_pulse_note(self):
        x, y = 250, 50
        radius = 5
        note = self.canvas.create_oval(x - radius, y - radius, x + radius, y + radius, fill="red")

        def expand():
            nonlocal radius
            if radius < 25:
                radius += 2
                self.canvas.coords(note, x - radius, y - radius, x + radius, y + radius)
                self.root.after(30, expand)
            else:
                self.root.after(200, lambda: self.canvas.delete(note))

        expand()

    def display_note(self, signal):
        if signal == "1":
            if self.note is None:
                self.display_count += 1
                self.animate_pulse_note()

    def send_audio_binary(self):
        if not self.audio_path:
            messagebox.showerror("Error", "Please select an audio file first.")
            return

        try:
            binary_data, _, _ = audio_to_binary(self.audio_path, difficulty="easy", time_resolution=0.5)
            binary_data = list(binary_data)
            shifted_data = binary_data[1:] + [0]  # 👈 提前顯示一拍

            self.output.insert(tk.END, f"[Sending {len(binary_data)} bits]\n")
            self.output.see(tk.END)

            pygame.mixer.init()
            pygame.mixer.music.load(self.audio_path)
            pygame.mixer.music.play()

            # 確保音樂真的開始再對齊節奏
            while not pygame.mixer.music.get_busy():
                time.sleep(0.01)

            threading.Thread(target=self.play_sequence_thread, args=(binary_data,shifted_data), daemon=True).start()

        except Exception as e:
            self.output.insert(tk.END, f"[Audio Error] {e}\n")

    def play_sequence_thread(self, tx_data, display_data):
        start_time = time.time()
        log_rows = []
        self.tx_one_count = 0
        self.display_count = 0
        for i in range(len(tx_data)):
            if not self.reading:
                break

            bit = int(tx_data[i])
            display_bit = int(display_data[i])
            timestamp = datetime.now().strftime("%H:%M:%S.%f")[:-3]  # 精確到毫秒

            # 傳送 UART
            self.serial_port.write(str(bit).encode() + b'\n')
            if bit == 1:
                self.tx_one_count += 1
            self.output.insert(tk.END, f"[TX]{bit}\n")
            self.output.see(tk.END)

            # 顯示畫面（提前一拍的）
            if display_bit == 1:
                self.display_note("1")
                show_flag = "YES"
            else:
                show_flag = "NO"
            log_rows.append([i + 1, timestamp, bit, show_flag])

            next_time = start_time + (i + 1) * 0.5
            time.sleep(max(0, next_time - time.time()))

        # 儲存為 CSV log 檔案
        log_filename = f"log_{datetime.now().strftime('%H%M%S')}.csv"
        with open(log_filename, "w", newline='') as csvfile:
            writer = csv.writer(csvfile)
            writer.writerow(["拍", "時間", "傳送位元", "是否顯示動畫"])
            writer.writerows(log_rows)

        # 印總結
        now = datetime.now().strftime("%H:%M:%S")
        self.output.insert(tk.END, f"[{now}] [Log] TX 1 count: {self.tx_one_count}, Display count: {self.display_count}\n")
        self.output.insert(tk.END, f"[Log Saved] {log_filename}\n")
        self.output.see(tk.END)


if __name__ == "__main__":
    root = tk.Tk()
    app = UARTReaderGUI(root)
    root.mainloop()


