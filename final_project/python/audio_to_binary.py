import numpy as np
import librosa
import matplotlib.pyplot as plt

def audio_to_binary(filepath, threshold_ratio=0.3, downsample_factor=100):
    # 使用 librosa 載入任何音訊格式
    y, sr = librosa.load(filepath, sr=None, mono=True)

    # 正規化
    y = y / np.max(np.abs(y))

    # 降取樣（減少資料量）
    y = y[::downsample_factor]

    # 設定門檻值，轉成 0 / 1
    threshold = threshold_ratio
    binary_seq = np.where(np.abs(y) > threshold, 1, 0)
    print(len(binary_seq))
    return binary_seq

if __name__ == "__main__":
    filepath = "test_music.m4a"
    
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
