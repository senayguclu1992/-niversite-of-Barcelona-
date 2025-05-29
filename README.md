
# Seismic Signal Analysis – Z Component (Bandpass Filter & FFT)

This project performs signal processing on real earthquake data using Python. Specifically, it analyzes the vertical (Z) component of a 3-axis seismic waveform using:

- 🎚️ Bandpass filtering (40–42 Hz)
- 📊 Fourier Transform (manual amplitude, power, and phase spectrum)
- 📈 Visualization of filtered vs original signals
- 📐 Nyquist frequency analysis

## 📂 Data
The analysis uses data from:
- `earthquake__in_3.mat`: MATLAB-format file containing a (150000 x 3) seismic waveform array.

The columns represent:
1. Z (Vertical)
2. N (North-South)
3. E (East-West)

## 🧪 Workflow

1. **Load Data**  
   MATLAB `.mat` file is loaded using `scipy.io.loadmat`.

2. **Bandpass Filtering**  
   Butterworth bandpass filter is applied to isolate 40–42 Hz frequencies using `scipy.signal.butter` and `filtfilt`.

3. **Fourier Analysis**  
   Manual computation of:
   - Amplitude spectrum
   - Phase spectrum
   - Power spectrum

4. **Visualization**  
   Signal is plotted in time and frequency domain using `matplotlib`.

## 🧠 Nyquist Frequency
Given `Fs = 400 Hz`, Nyquist frequency is:

```
Fs / 2 = 200 Hz
```

## 📜 Dependencies

- Python 3.x
- numpy
- scipy
- matplotlib

Install via pip:
```bash
pip install numpy scipy matplotlib
```

## ▶️ Run

Ensure `earthquake__in_3.mat` is in the working directory, then run:

```bash
python seismic_z_analysis.py
```

## 📈 Example Output

- Time-domain comparison of original vs filtered signal
- Power spectrum before and after filtering
- Nyquist frequency printout

---

© Universitat de Barcelona (original data & concept)  
