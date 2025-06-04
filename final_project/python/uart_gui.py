import tkinter as tk
from tkinter import scrolledtext, messagebox
import serial
import threading

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

        # 連線/斷線按鈕
        self.connect_btn = tk.Button(root, text="Connect", command=self.connect)
        self.connect_btn.grid(row=2, column=0, pady=5)

        self.disconnect_btn = tk.Button(root, text="Disconnect", command=self.disconnect, state=tk.DISABLED)
        self.disconnect_btn.grid(row=2, column=1, pady=5)

        # 顯示區
        self.output = scrolledtext.ScrolledText(root, width=50, height=15)
        self.output.grid(row=3, column=0, columnspan=2, pady=10)

        # ===== 新增：輸入資料並傳送 =====
        tk.Label(root, text="Send Data (e.g. 1010):").grid(row=4, column=0, sticky="w")
        self.send_entry = tk.Entry(root, width=20)
        self.send_entry.grid(row=4, column=1, sticky="w")

        self.send_btn = tk.Button(root, text="Send", command=self.send_to_uart, state=tk.DISABLED)
        self.send_btn.grid(row=5, column=0, columnspan=2, pady=5)

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
                    line = self.serial_port.readline().decode(errors='ignore').strip()
                    if line:
                        self.output.insert(tk.END, f"[RX] {line}\n")
                        self.output.see(tk.END)
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


if __name__ == "__main__":
    root = tk.Tk()
    app = UARTReaderGUI(root)
    root.mainloop()
