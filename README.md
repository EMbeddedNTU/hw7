# HW7: Mbed-DSP programming

This codebase contains code for FFT function and FIR filter for the purpose of analyzing data.

## Team member:
b09901052 劉承亞

b09901058 邱奕翔

## How to run 
    
1, Open Mbed Studio. Create new project.

2, Add `FFT.cpp` and `FIR.cpp` in this repository to your project and delete the original `main.cpp`.

3, Add `arm_fir_data.c` and `arm_fft_bin_data.c` in this repository to your project and modify the data to your own data.

4, Add library `mbed-dsp` to the project. (https://os.mbed.com/teams/mbed-official/code/mbed-dsp)

5, Add `#define __CC_ARM` to the file arm_bitreversal2.S.

6, You can now build the program.

## Snapshots
- Original data on time domain and frequency domain

<img src="docs/comb1.png" width="300px"> <img src="docs/comb2.png" width="300px">
- Filtered with high-pass filter
  
<img src="docs/comb5.png" width="300px"> <img src="docs/comb6.png" width="300px">