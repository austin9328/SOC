import numpy as np
import soundfile as sf
import librosa
import matplotlib.pyplot as plt
import os

def audio_to_binary(filepath, difficulty="easy", time_resolution=0.5, chunk_duration=10, save_path=None):
    level_skip = {"easy": 4, "medium": 2, "hard": 1}
    skip = level_skip.get(difficulty, 4)

    info = sf.info(filepath)
    sr = info.samplerate
    total_duration = info.duration
    total_bins = int(np.ceil(total_duration / time_resolution))
    binary_seq = np.zeros(total_bins, dtype=int)

    chunk_size = int(chunk_duration * sr)
    hop_size = 512
    n_fft = 2048

    with sf.SoundFile(filepath) as f:
        current_offset_sec = 0
        while current_offset_sec < total_duration:
            f.seek(int(current_offset_sec * sr))
            y = f.read(frames=chunk_size, dtype='float32')
            y = np.asarray(y).flatten()

            if len(y) < n_fft:
                print(f"[Skip] 段 {current_offset_sec:.1f}s 太短")
                current_offset_sec += chunk_duration
                continue

            try:
                S = np.abs(librosa.stft(y, n_fft=n_fft, hop_length=hop_size))
                onset_env = librosa.onset.onset_strength(S=S, sr=sr, hop_length=hop_size)
                if len(onset_env) < 3:
                    raise ValueError("Onset too short")

                tempo, beat_frames = librosa.beat.beat_track(onset_envelope=onset_env, sr=sr, hop_length=hop_size)
                beat_times = librosa.frames_to_time(beat_frames, sr=sr, hop_length=hop_size)
                selected_beats = beat_times[::skip]

                for bt in selected_beats:
                    abs_time = bt + current_offset_sec
                    bin_index = int(abs_time / time_resolution)
                    if bin_index < total_bins:
                        binary_seq[bin_index] = 1

            except Exception as e:
                print(f"[Error @ {current_offset_sec:.2f}s] {e}")

            current_offset_sec += chunk_duration

    if save_path:
        np.save(save_path, binary_seq)
        print(f"✅ Binary sequence saved to: {save_path}")

    return binary_seq, total_duration, time_resolution


if __name__ == "__main__":
    filepath = "/home/soc/Desktop/your.wav"
    savefile = "/home/soc/Desktop/your_binary.npy"
    
    bin_seq, total_len, res = audio_to_binary(
        filepath,
        difficulty="easy",
        time_resolution=0.5,
        chunk_duration=10,
        save_path=savefile
    )

    print(f"🎵 總節奏數：{np.sum(bin_seq)}")
    if np.sum(bin_seq) == 0:
        print("⚠️ 無節奏點，可能是音訊太平、太短，或節奏強度不足")

    # 可視化
    plt.figure(figsize=(14, 4))
    t = np.arange(len(bin_seq)) * res
    plt.plot(t, bin_seq, drawstyle='steps-pre')
    plt.title("Binary Beat Sequence")
    plt.xlabel("Time (s)")
    plt.ylabel("Beat (0/1)")
    plt.grid(True)
    plt.tight_layout()
    plt.show()
