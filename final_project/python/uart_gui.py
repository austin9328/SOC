import tkinter as tk
from tkinter import scrolledtext, messagebox, filedialog
import serial
import threading
import time
import numpy as np
import pygame

class UARTReaderGUI:
    def __init__(self, root):
        self.root = root
        self.root.title("UART Rhythm Game")
        self.serial_port = None
        self.reading = False

        # 預設路徑
        self.wav_path = ""
        self.npy_path = ""

        # Port & Baudrate
        tk.Label(root, text="Port:").grid(row=0, column=0, sticky="w")
        self.port_entry = tk.Entry(root, width=20)
        self.port_entry.grid(row=0, column=1)
        self.port_entry.insert(0, "/dev/serial0")

        tk.Label(root, text="Baudrate:").grid(row=1, column=0, sticky="w")
        self.baud_entry = tk.Entry(root, width=20)
        self.baud_entry.grid(row=1, column=1)
        self.baud_entry.insert(0, "115200")

        # 選擇檔案
        tk.Button(root, text="選擇 WAV", command=self.select_wav).grid(row=2, column=0, pady=2)
        tk.Button(root, text="選擇 NPY", command=self.select_npy).grid(row=2, column=1, pady=2)

        # Connect 控制
        self.connect_btn = tk.Button(root, text="Connect", command=self.connect)
        self.connect_btn.grid(row=3, column=0, pady=5)
        self.disconnect_btn = tk.Button(root, text="Disconnect", command=self.disconnect, state=tk.DISABLED)
        self.disconnect_btn.grid(row=3, column=1, pady=5)

        # 資訊輸出區
        self.output = scrolledtext.ScrolledText(root, width=50, height=8)
        self.output.grid(row=4, column=0, columnspan=2)

        # 傳送測試區
        tk.Label(root, text="Send Data:").grid(row=5, column=0, sticky="w")
        self.send_entry = tk.Entry(root, width=20)
        self.send_entry.grid(row=5, column=1, sticky="w")
        self.send_btn = tk.Button(root, text="Send", command=self.send_to_uart, state=tk.DISABLED)
        self.send_btn.grid(row=6, column=0, columnspan=2)

        # Canvas 顯示與分數
        self.canvas = tk.Canvas(root, width=500, height=200, bg="black")
        self.canvas.grid(row=7, column=0, columnspan=2)
        self.score = 0
        self.score_label = tk.Label(root, text="Score: 0", font=("Arial", 14), fg="green")
        self.score_label.grid(row=8, column=0, columnspan=2)

    def select_wav(self):
        path = filedialog.askopenfilename(filetypes=[("WAV Files", "*.wav")])
        if path:
            self.wav_path = path
            self.output.insert(tk.END, f"[Selected WAV] {path}\n")

    def select_npy(self):
        path = filedialog.askopenfilename(filetypes=[("NumPy Files", "*.npy")])
        if path:
            self.npy_path = path
            self.output.insert(tk.END, f"[Selected NPY] {path}\n")

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
                        except ValueError:
                            self.output.insert(tk.END, f"[Invalid Score] {line}\n")
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
            except Exception as e:
                self.output.insert(tk.END, f"[Send Error] {e}\n")

    def animate_pulse_note(self):
        x, y = 250, 50
        radius = 5
        note = self.canvas.create_oval(x - radius, y - radius, x + radius, y + radius, fill="red")

        def expand():
            nonlocal radius
            if radius < 30:
                radius += 2
                self.canvas.coords(note, x - radius, y - radius, x + radius, y + radius)
                self.root.after(30, expand)
            else:
                self.root.after(200, lambda: self.canvas.delete(note))

        expand()

    def display_note(self, signal):
        if signal == "1":
            self.animate_pulse_note()

    def send_audio_binary(self):
        if not self.npy_path or not self.wav_path:
            self.output.insert(tk.END, "[Error] 請先選擇 WAV 與 NPY 檔案\n")
            return

        try:
            binary_data = np.load(self.npy_path)
            shifted_data = np.append(binary_data[1:], 0)

            self.output.insert(tk.END, f"[Sending {len(binary_data)} bits]\n")
            self.output.see(tk.END)

            play_audio(self.wav_path)

            threading.Thread(target=self.display_notes_thread, args=(shifted_data,), daemon=True).start()
            threading.Thread(target=self.send_uart_thread, args=(binary_data,), daemon=True).start()

        except Exception as e:
            self.output.insert(tk.END, f"[Audio Error] {e}\n")

    def send_uart_thread(self, binary_data):
        for bit in binary_data:
            if not self.reading:
                break
            self.serial_port.write(str(int(bit)).encode() + b'\n')
            self.output.insert(tk.END, f"[TX]{bit}\n")
            self.output.see(tk.END)
            time.sleep(0.5)
        self.serial_port.write(b'D\n')  # 結尾時送 'D'Add commentMore actions
        self.score = 0
        self.score_label.config(text="Score: 0")

    def display_notes_thread(self, shifted_data):
        for bit in shifted_data:
            if not self.reading:
                break
            self.display_note(str(int(bit)))
            time.sleep(0.5)


def play_audio(filepath):
    pygame.mixer.init()
    pygame.mixer.music.load(filepath)
    pygame.mixer.music.play()


if __name__ == "__main__":
    root = tk.Tk()
    app = UARTReaderGUI(root)
    root.mainloop()
