import numpy as np
import librosa
import matplotlib.pyplot as plt


def audio_to_binary(filepath, threshold_ratio=0.1):
    # 載入音訊（自動抓取取樣率 sr）
    y, sr = librosa.load(filepath, sr=None, mono=True)

    # 正規化音訊到 -1 ~ 1
    y = y / np.max(np.abs(y))

    # 每秒取一個點：每隔 sr 個 sample 抓一個
    y_downsampled = y[::sr]

    # 設定門檻並轉換為 0 / 1
    binary_seq = np.where(np.abs(y_downsampled) > threshold_ratio, 1, 0)

    return binary_seq


if __name__ == "__main__":
    filepath = "HAPPY Birthday Song, Happy Birthday to You (8QF9hM1MQwc).mp3"
    
    bin_seq = audio_to_binary(filepath)

    print("前 100 個二進位資料：")
    print(''.join(map(str, bin_seq[:100])))

    # 顯示簡單圖形
    plt.plot(bin_seq[:1000])
    plt.title("Binary Signal from Audio")
    plt.xlabel("Time (downsampled index)")
    plt.ylabel("Binary (0 or 1)")
    plt.grid(True)
    plt.show()
