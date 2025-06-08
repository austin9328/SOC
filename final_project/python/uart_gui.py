import tkinter as tk
from tkinter import scrolledtext, messagebox
import serial
import threading
import time
import numpy as np
from audio_to_binary import audio_to_binary  # 需自訂這個函式

class UARTReaderGUI:
    def __init__(self, root):
        self.root = root
        self.root.title("UART Reader GUI")
        self.serial_port = None
        self.reading = False

        tk.Label(root, text="Port:").grid(row=0, column=0, sticky="w")
        self.port_entry = tk.Entry(root, width=20)
        self.port_entry.grid(row=0, column=1)
        self.port_entry.insert(0, "/dev/serial0")

        tk.Label(root, text="Baudrate:").grid(row=1, column=0, sticky="w")
        self.baud_entry = tk.Entry(root, width=20)
        self.baud_entry.grid(row=1, column=1)
        self.baud_entry.insert(0, "115200")

        tk.Label(root, text="Audio File Path:").grid(row=2, column=0, sticky="w")
        self.audio_path_entry = tk.Entry(root, width=40)
        self.audio_path_entry.grid(row=2, column=1)
        self.audio_path_entry.insert(0, "/home/soc/Desktop/music.mp3")

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

    def display_note(self, signal):
        if signal == "1":
            if self.note is None:
                self.note = self.canvas.create_oval(80, 30, 120, 70, fill="red")
        elif signal == "0":
            if self.note:
                self.canvas.delete(self.note)
                self.note = None
        elif signal == "2":
            self.score += 1
            self.score_label.config(text=f"Score: {self.score}")

    def send_audio_binary(self):
        filepath = self.audio_path_entry.get().strip()
        try:
            binary_data = audio_to_binary(filepath)
            self.output.insert(tk.END, f"[Sending {len(binary_data)} bits]\n")
            for bit in binary_data:
                if not self.reading: break
                self.serial_port.write(str(int(bit)).encode() + b'\n')
                self.output.insert(tk.END, f"[TX]{bit}\n")
                self.output.see(tk.END)
                self.display_note(str(int(bit)))
                time.sleep(1)
            self.serial_port.write(b'D\n')  # 結尾時送 'D'
            self.score = 0
            self.score_label.config(text="Score: 0")
        except Exception as e:
            self.output.insert(tk.END, f"[Audio Error] {e}\n")

if __name__ == "__main__":
    root = tk.Tk()
    app = UARTReaderGUI(root)
    root.mainloop()