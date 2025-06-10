import numpy as np
import librosa
import matplotlib.pyplot as plt


def audio_to_binary(filepath, difficulty="easy", time_resolution=0.5):
    # 載入音訊
    y, sr = librosa.load(filepath, sr=None, mono=True)

    # 偵測節拍
    onset_env = librosa.onset.onset_strength(y=y, sr=sr)
    tempo, beat_frames = librosa.beat.beat_track(onset_envelope=onset_env, sr=sr)
    beat_times = librosa.frames_to_time(beat_frames, sr=sr)

    # 根據難度選擇節拍密度
    level_skip = {"easy": 4, "medium": 2, "hard": 1}
    skip = level_skip.get(difficulty, 4)
    selected_beats = beat_times[::skip]

    # 計算總時間格數（0.5秒為一格）
    total_length_seconds = len(y) / sr
    total_bins = int(np.ceil(total_length_seconds / time_resolution))

    # 建立 0/1 序列
    binary_seq = np.zeros(total_bins, dtype=int)

    # 節拍時間轉成第幾格，設為1
    for bt in selected_beats:
        bin_index = int(bt / time_resolution)
        if bin_index < total_bins:
            binary_seq[bin_index] = 1

    return binary_seq


if __name__ == "__main__":
    filepath = "TheFatRat - Monody (feat. Laura Brehm) (Orchestral Remix by sJLs) (Lyrics Video) (R5aurUlfn3w).mp3"
    
    bin_seq= audio_to_binary(filepath, difficulty="easy", time_resolution=0.5)

    print("前 100 個半秒格的節拍（0.5秒一格）：")
    print(''.join(map(str, bin_seq[:100])))

    # 畫圖看結果
    plt.figure(figsize=(12, 3))
    plt.plot(bin_seq[:1000])
    plt.title("Beat-based Binary Signal (0.5 sec resolution)")
    plt.xlabel("Time (0.5 second bins)")
    plt.ylabel("Beat Presence (0 or 1)")
    plt.grid(True)
    plt.tight_layout()
    plt.show()
