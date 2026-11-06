# GPU Power and Temperature Monitoring with CUDA and NVML

For us, human beings, productivity tends to decline as temperatures is on the rise. It feels to me reasonable to expect that GPU to exhibit similar behavior, slowing down as its temperature increases. However, experiments show that GPU maintain their performance levels regardless of temperature, with the cooling fan working overtime to keep the device within a safe temperature range.

This repository contains a CUDA program for this experiment and is designed to fully load the GPU for 10 minutes, measuring temperature increase, power consumption, and matrix calculations per second. The program leverages the NVIDIA Management Library (NVML) to monitor the GPU's temperature and power consumption in real time.

## Requirements

- CUDA-capable GPU
- NVIDIA CUDA Toolkit
- NVIDIA Management Library (NVML)

## Installation

1. **Clone the repository:**

    ```sh
    gh repo clone leybzon/nvidia-power-and-temperature
    cd gpu-temp-monitor
    ```

2. **Ensure that the CUDA Toolkit and NVML are installed on your system.**

3. **Compile the program:**

    ```sh
    nvcc -lnvidia-ml -o measure_temp_nvml measure_temp_nvml.cu
    ```

## Usage

Run the compiled program:

```sh
./measure_temp_nvml
```

## Results on NVIDIA RTX 5080

```
Time: 10 seconds, Current GPU temperature: 62 C, Power consumption: 390.074 W, Matrix calculations per second: 312
Time: 20 seconds, Current GPU temperature: 66 C, Power consumption: 391.481 W, Matrix calculations per second: 311.8
Time: 30 seconds, Current GPU temperature: 68 C, Power consumption: 392.46 W, Matrix calculations per second: 311.533
Time: 40 seconds, Current GPU temperature: 69 C, Power consumption: 395.069 W, Matrix calculations per second: 311.375
Time: 50 seconds, Current GPU temperature: 71 C, Power consumption: 398.023 W, Matrix calculations per second: 311.3
Time: 60 seconds, Current GPU temperature: 71 C, Power consumption: 400.384 W, Matrix calculations per second: 311.183
Time: 70 seconds, Current GPU temperature: 72 C, Power consumption: 401.82 W, Matrix calculations per second: 311.071
Time: 80 seconds, Current GPU temperature: 72 C, Power consumption: 402.217 W, Matrix calculations per second: 310.988
Time: 90 seconds, Current GPU temperature: 72 C, Power consumption: 403.081 W, Matrix calculations per second: 310.911
Time: 100 seconds, Current GPU temperature: 73 C, Power consumption: 403.4 W, Matrix calculations per second: 310.85
Time: 110 seconds, Current GPU temperature: 73 C, Power consumption: 403.892 W, Matrix calculations per second: 310.8
Time: 120 seconds, Current GPU temperature: 73 C, Power consumption: 404.534 W, Matrix calculations per second: 310.75
Time: 130 seconds, Current GPU temperature: 73 C, Power consumption: 404.466 W, Matrix calculations per second: 310.708
Time: 140 seconds, Current GPU temperature: 73 C, Power consumption: 405.187 W, Matrix calculations per second: 310.671
Time: 150 seconds, Current GPU temperature: 73 C, Power consumption: 405.13 W, Matrix calculations per second: 310.64
Time: 160 seconds, Current GPU temperature: 73 C, Power consumption: 405.358 W, Matrix calculations per second: 310.613
Time: 170 seconds, Current GPU temperature: 73 C, Power consumption: 405.448 W, Matrix calculations per second: 310.582
Time: 180 seconds, Current GPU temperature: 73 C, Power consumption: 405.282 W, Matrix calculations per second: 310.556
Time: 190 seconds, Current GPU temperature: 73 C, Power consumption: 405.625 W, Matrix calculations per second: 310.532
Time: 200 seconds, Current GPU temperature: 73 C, Power consumption: 405.59 W, Matrix calculations per second: 310.515
Time: 210 seconds, Current GPU temperature: 73 C, Power consumption: 404.955 W, Matrix calculations per second: 310.495
Time: 220 seconds, Current GPU temperature: 73 C, Power consumption: 405.219 W, Matrix calculations per second: 310.477
Time: 230 seconds, Current GPU temperature: 73 C, Power consumption: 405.041 W, Matrix calculations per second: 310.461
Time: 240 seconds, Current GPU temperature: 73 C, Power consumption: 405.333 W, Matrix calculations per second: 310.446
Time: 250 seconds, Current GPU temperature: 73 C, Power consumption: 404.82 W, Matrix calculations per second: 310.436
Time: 260 seconds, Current GPU temperature: 73 C, Power consumption: 405.021 W, Matrix calculations per second: 310.427
Time: 270 seconds, Current GPU temperature: 73 C, Power consumption: 405.069 W, Matrix calculations per second: 310.419
Time: 280 seconds, Current GPU temperature: 73 C, Power consumption: 405.636 W, Matrix calculations per second: 310.407
Time: 290 seconds, Current GPU temperature: 73 C, Power consumption: 404.897 W, Matrix calculations per second: 310.397
Time: 300 seconds, Current GPU temperature: 73 C, Power consumption: 405.003 W, Matrix calculations per second: 310.387
Time: 310 seconds, Current GPU temperature: 73 C, Power consumption: 404.999 W, Matrix calculations per second: 310.377
Time: 320 seconds, Current GPU temperature: 73 C, Power consumption: 405.347 W, Matrix calculations per second: 310.369
Time: 330 seconds, Current GPU temperature: 73 C, Power consumption: 405.494 W, Matrix calculations per second: 310.361
Time: 340 seconds, Current GPU temperature: 73 C, Power consumption: 405.433 W, Matrix calculations per second: 310.353
Time: 350 seconds, Current GPU temperature: 73 C, Power consumption: 405.485 W, Matrix calculations per second: 310.349
Time: 360 seconds, Current GPU temperature: 73 C, Power consumption: 405.281 W, Matrix calculations per second: 310.344
Time: 370 seconds, Current GPU temperature: 73 C, Power consumption: 405.567 W, Matrix calculations per second: 310.341
Time: 380 seconds, Current GPU temperature: 73 C, Power consumption: 405.277 W, Matrix calculations per second: 310.337
Time: 390 seconds, Current GPU temperature: 73 C, Power consumption: 404.985 W, Matrix calculations per second: 310.333
Time: 400 seconds, Current GPU temperature: 73 C, Power consumption: 404.667 W, Matrix calculations per second: 310.327
Time: 410 seconds, Current GPU temperature: 73 C, Power consumption: 404.668 W, Matrix calculations per second: 310.322
Time: 420 seconds, Current GPU temperature: 73 C, Power consumption: 405.12 W, Matrix calculations per second: 310.317
Time: 430 seconds, Current GPU temperature: 73 C, Power consumption: 404.679 W, Matrix calculations per second: 310.312
Time: 440 seconds, Current GPU temperature: 73 C, Power consumption: 404.909 W, Matrix calculations per second: 310.307
Time: 450 seconds, Current GPU temperature: 73 C, Power consumption: 404.8 W, Matrix calculations per second: 310.302
Time: 460 seconds, Current GPU temperature: 72 C, Power consumption: 405.045 W, Matrix calculations per second: 310.3
Time: 470 seconds, Current GPU temperature: 73 C, Power consumption: 404.465 W, Matrix calculations per second: 310.298
Time: 480 seconds, Current GPU temperature: 72 C, Power consumption: 405.074 W, Matrix calculations per second: 310.296
Time: 490 seconds, Current GPU temperature: 72 C, Power consumption: 404.896 W, Matrix calculations per second: 310.294
Time: 500 seconds, Current GPU temperature: 72 C, Power consumption: 404.523 W, Matrix calculations per second: 310.292
Time: 510 seconds, Current GPU temperature: 72 C, Power consumption: 404.716 W, Matrix calculations per second: 310.29
Time: 520 seconds, Current GPU temperature: 72 C, Power consumption: 404.624 W, Matrix calculations per second: 310.288
Time: 530 seconds, Current GPU temperature: 73 C, Power consumption: 404.156 W, Matrix calculations per second: 310.285
Time: 540 seconds, Current GPU temperature: 72 C, Power consumption: 404.452 W, Matrix calculations per second: 310.283
Time: 550 seconds, Current GPU temperature: 72 C, Power consumption: 404.462 W, Matrix calculations per second: 310.28
Time: 560 seconds, Current GPU temperature: 73 C, Power consumption: 404.613 W, Matrix calculations per second: 310.277
Time: 570 seconds, Current GPU temperature: 72 C, Power consumption: 404.751 W, Matrix calculations per second: 310.275
Time: 580 seconds, Current GPU temperature: 72 C, Power consumption: 404.35 W, Matrix calculations per second: 310.274
Time: 590 seconds, Current GPU temperature: 73 C, Power consumption: 404.461 W, Matrix calculations per second: 310.273
Final GPU temperature: 72 C
Final GPU power consumption: 404.73 W
```

## Results on NVIDIA DGX Spark

```
Time: 10 seconds, Current GPU temperature: 51 C, Power consumption: 67.46 W, Matrix calculations per second: 92.7
Time: 20 seconds, Current GPU temperature: 54 C, Power consumption: 68.487 W, Matrix calculations per second: 92.6
Time: 30 seconds, Current GPU temperature: 56 C, Power consumption: 67.189 W, Matrix calculations per second: 92.2667
Time: 40 seconds, Current GPU temperature: 58 C, Power consumption: 68.688 W, Matrix calculations per second: 91.875
Time: 50 seconds, Current GPU temperature: 60 C, Power consumption: 70.535 W, Matrix calculations per second: 92.26
Time: 60 seconds, Current GPU temperature: 62 C, Power consumption: 69.852 W, Matrix calculations per second: 92.0667
Time: 70 seconds, Current GPU temperature: 63 C, Power consumption: 70.698 W, Matrix calculations per second: 91.9714
Time: 80 seconds, Current GPU temperature: 65 C, Power consumption: 73.053 W, Matrix calculations per second: 92.125
Time: 90 seconds, Current GPU temperature: 65 C, Power consumption: 70.892 W, Matrix calculations per second: 92.2
Time: 100 seconds, Current GPU temperature: 66 C, Power consumption: 71.898 W, Matrix calculations per second: 92.15
Time: 110 seconds, Current GPU temperature: 66 C, Power consumption: 72.244 W, Matrix calculations per second: 92.2182
Time: 120 seconds, Current GPU temperature: 68 C, Power consumption: 73.867 W, Matrix calculations per second: 92.3333
Time: 130 seconds, Current GPU temperature: 69 C, Power consumption: 74.477 W, Matrix calculations per second: 92.4692
Time: 140 seconds, Current GPU temperature: 70 C, Power consumption: 74.75 W, Matrix calculations per second: 92.6
Time: 150 seconds, Current GPU temperature: 70 C, Power consumption: 74.675 W, Matrix calculations per second: 92.7267
Time: 160 seconds, Current GPU temperature: 71 C, Power consumption: 78.186 W, Matrix calculations per second: 92.85
Time: 170 seconds, Current GPU temperature: 72 C, Power consumption: 77.883 W, Matrix calculations per second: 92.9412
Time: 180 seconds, Current GPU temperature: 72 C, Power consumption: 78.074 W, Matrix calculations per second: 93.0222
Time: 190 seconds, Current GPU temperature: 72 C, Power consumption: 78.33 W, Matrix calculations per second: 93.1053
Time: 200 seconds, Current GPU temperature: 72 C, Power consumption: 78.503 W, Matrix calculations per second: 93.185
Time: 210 seconds, Current GPU temperature: 71 C, Power consumption: 78.278 W, Matrix calculations per second: 93.2619
Time: 220 seconds, Current GPU temperature: 72 C, Power consumption: 78.159 W, Matrix calculations per second: 93.3318
Time: 230 seconds, Current GPU temperature: 72 C, Power consumption: 77.895 W, Matrix calculations per second: 93.3696
Time: 240 seconds, Current GPU temperature: 72 C, Power consumption: 76.353 W, Matrix calculations per second: 93.3208
Time: 250 seconds, Current GPU temperature: 74 C, Power consumption: 88.284 W, Matrix calculations per second: 93.292
Time: 260 seconds, Current GPU temperature: 75 C, Power consumption: 89.354 W, Matrix calculations per second: 93.4077
Time: 270 seconds, Current GPU temperature: 76 C, Power consumption: 87.487 W, Matrix calculations per second: 93.4444
Time: 280 seconds, Current GPU temperature: 75 C, Power consumption: 87.489 W, Matrix calculations per second: 93.5321
Time: 290 seconds, Current GPU temperature: 75 C, Power consumption: 78.74 W, Matrix calculations per second: 93.5759
Time: 300 seconds, Current GPU temperature: 76 C, Power consumption: 85.369 W, Matrix calculations per second: 93.5733
Time: 310 seconds, Current GPU temperature: 76 C, Power consumption: 87.909 W, Matrix calculations per second: 93.5806
Time: 320 seconds, Current GPU temperature: 78 C, Power consumption: 88.18 W, Matrix calculations per second: 93.6094
Time: 330 seconds, Current GPU temperature: 77 C, Power consumption: 85.662 W, Matrix calculations per second: 93.5576
Time: 340 seconds, Current GPU temperature: 77 C, Power consumption: 82.615 W, Matrix calculations per second: 93.4824
Time: 350 seconds, Current GPU temperature: 77 C, Power consumption: 82.135 W, Matrix calculations per second: 93.1343
Time: 360 seconds, Current GPU temperature: 79 C, Power consumption: 86.735 W, Matrix calculations per second: 92.9556
Time: 370 seconds, Current GPU temperature: 79 C, Power consumption: 86.538 W, Matrix calculations per second: 92.8946
Time: 380 seconds, Current GPU temperature: 79 C, Power consumption: 88.387 W, Matrix calculations per second: 92.8316
Time: 390 seconds, Current GPU temperature: 80 C, Power consumption: 86.745 W, Matrix calculations per second: 92.7641
Time: 400 seconds, Current GPU temperature: 79 C, Power consumption: 86.302 W, Matrix calculations per second: 92.695
Time: 410 seconds, Current GPU temperature: 79 C, Power consumption: 86.751 W, Matrix calculations per second: 92.6268
Time: 420 seconds, Current GPU temperature: 79 C, Power consumption: 86.187 W, Matrix calculations per second: 92.5619
Time: 430 seconds, Current GPU temperature: 78 C, Power consumption: 85.771 W, Matrix calculations per second: 92.5093
Time: 440 seconds, Current GPU temperature: 79 C, Power consumption: 87.162 W, Matrix calculations per second: 92.45
Time: 450 seconds, Current GPU temperature: 78 C, Power consumption: 86.494 W, Matrix calculations per second: 92.4089
Time: 460 seconds, Current GPU temperature: 78 C, Power consumption: 85.065 W, Matrix calculations per second: 92.3587
Time: 470 seconds, Current GPU temperature: 78 C, Power consumption: 87.766 W, Matrix calculations per second: 92.3234
Time: 480 seconds, Current GPU temperature: 78 C, Power consumption: 88.048 W, Matrix calculations per second: 92.3063
Time: 490 seconds, Current GPU temperature: 78 C, Power consumption: 87.972 W, Matrix calculations per second: 92.2898
Time: 500 seconds, Current GPU temperature: 78 C, Power consumption: 88.206 W, Matrix calculations per second: 92.296
Time: 510 seconds, Current GPU temperature: 78 C, Power consumption: 87.975 W, Matrix calculations per second: 92.2863
Time: 520 seconds, Current GPU temperature: 77 C, Power consumption: 86.443 W, Matrix calculations per second: 92.2769
Time: 530 seconds, Current GPU temperature: 77 C, Power consumption: 88.468 W, Matrix calculations per second: 92.283
Time: 540 seconds, Current GPU temperature: 78 C, Power consumption: 88.223 W, Matrix calculations per second: 92.2852
Time: 550 seconds, Current GPU temperature: 77 C, Power consumption: 86.103 W, Matrix calculations per second: 92.2764
Time: 560 seconds, Current GPU temperature: 78 C, Power consumption: 87.886 W, Matrix calculations per second: 92.2732
Time: 570 seconds, Current GPU temperature: 78 C, Power consumption: 87.715 W, Matrix calculations per second: 92.2754
Time: 580 seconds, Current GPU temperature: 78 C, Power consumption: 86.88 W, Matrix calculations per second: 92.2707
Time: 590 seconds, Current GPU temperature: 78 C, Power consumption: 87.734 W, Matrix calculations per second: 92.2627
Final GPU temperature: 78 C
Final GPU power consumption: 87.524 W
Completed 10 minutes of GPU load for temperature and power measurement.
```

## Results on NVIDIA RTX PRO 6000 Blackwell Workstation Edition

```
Time: 10 seconds, Current GPU temperature: 56 C, Power consumption: 599.997 W, Matrix calculations per second: 463.6
Time: 20 seconds, Current GPU temperature: 61 C, Power consumption: 599.967 W, Matrix calculations per second: 468.35
Time: 30 seconds, Current GPU temperature: 66 C, Power consumption: 600.005 W, Matrix calculations per second: 469.167
Time: 40 seconds, Current GPU temperature: 69 C, Power consumption: 600.002 W, Matrix calculations per second: 469.025
Time: 50 seconds, Current GPU temperature: 72 C, Power consumption: 599.968 W, Matrix calculations per second: 468.78
Time: 60 seconds, Current GPU temperature: 74 C, Power consumption: 599.98 W, Matrix calculations per second: 468.383
Time: 70 seconds, Current GPU temperature: 76 C, Power consumption: 599.999 W, Matrix calculations per second: 467.871
Time: 80 seconds, Current GPU temperature: 78 C, Power consumption: 599.958 W, Matrix calculations per second: 467.413
Time: 90 seconds, Current GPU temperature: 79 C, Power consumption: 599.98 W, Matrix calculations per second: 466.967
Time: 100 seconds, Current GPU temperature: 80 C, Power consumption: 599.988 W, Matrix calculations per second: 466.57
Time: 110 seconds, Current GPU temperature: 81 C, Power consumption: 599.977 W, Matrix calculations per second: 466.182
Time: 120 seconds, Current GPU temperature: 82 C, Power consumption: 599.994 W, Matrix calculations per second: 465.842
Time: 130 seconds, Current GPU temperature: 82 C, Power consumption: 599.994 W, Matrix calculations per second: 465.523
Time: 140 seconds, Current GPU temperature: 83 C, Power consumption: 600.002 W, Matrix calculations per second: 465.171
Time: 150 seconds, Current GPU temperature: 83 C, Power consumption: 599.996 W, Matrix calculations per second: 464.827
Time: 160 seconds, Current GPU temperature: 84 C, Power consumption: 599.978 W, Matrix calculations per second: 464.494
Time: 170 seconds, Current GPU temperature: 84 C, Power consumption: 599.997 W, Matrix calculations per second: 464.2
Time: 180 seconds, Current GPU temperature: 85 C, Power consumption: 599.975 W, Matrix calculations per second: 463.922
Time: 190 seconds, Current GPU temperature: 85 C, Power consumption: 600.011 W, Matrix calculations per second: 463.663
Time: 200 seconds, Current GPU temperature: 85 C, Power consumption: 599.99 W, Matrix calculations per second: 463.41
Time: 210 seconds, Current GPU temperature: 85 C, Power consumption: 599.98 W, Matrix calculations per second: 463.186
Time: 220 seconds, Current GPU temperature: 85 C, Power consumption: 599.981 W, Matrix calculations per second: 462.964
Time: 230 seconds, Current GPU temperature: 86 C, Power consumption: 599.99 W, Matrix calculations per second: 462.765
Time: 240 seconds, Current GPU temperature: 86 C, Power consumption: 599.997 W, Matrix calculations per second: 462.579
Time: 250 seconds, Current GPU temperature: 86 C, Power consumption: 599.99 W, Matrix calculations per second: 462.404
Time: 260 seconds, Current GPU temperature: 86 C, Power consumption: 599.984 W, Matrix calculations per second: 462.238
Time: 270 seconds, Current GPU temperature: 86 C, Power consumption: 599.973 W, Matrix calculations per second: 462.074
Time: 280 seconds, Current GPU temperature: 86 C, Power consumption: 600.016 W, Matrix calculations per second: 461.925
Time: 290 seconds, Current GPU temperature: 86 C, Power consumption: 599.966 W, Matrix calculations per second: 461.783
Time: 300 seconds, Current GPU temperature: 86 C, Power consumption: 599.984 W, Matrix calculations per second: 461.653
Time: 310 seconds, Current GPU temperature: 86 C, Power consumption: 600.013 W, Matrix calculations per second: 461.532
Time: 320 seconds, Current GPU temperature: 87 C, Power consumption: 599.983 W, Matrix calculations per second: 461.409
Time: 330 seconds, Current GPU temperature: 87 C, Power consumption: 600 W, Matrix calculations per second: 461.3
Time: 340 seconds, Current GPU temperature: 87 C, Power consumption: 599.983 W, Matrix calculations per second: 461.191
Time: 350 seconds, Current GPU temperature: 87 C, Power consumption: 599.999 W, Matrix calculations per second: 461.091
Time: 360 seconds, Current GPU temperature: 87 C, Power consumption: 599.955 W, Matrix calculations per second: 460.997
Time: 370 seconds, Current GPU temperature: 87 C, Power consumption: 600.003 W, Matrix calculations per second: 460.908
Time: 380 seconds, Current GPU temperature: 87 C, Power consumption: 600.001 W, Matrix calculations per second: 460.826
Time: 390 seconds, Current GPU temperature: 87 C, Power consumption: 600.023 W, Matrix calculations per second: 460.746
Time: 400 seconds, Current GPU temperature: 87 C, Power consumption: 599.991 W, Matrix calculations per second: 460.67
Time: 410 seconds, Current GPU temperature: 87 C, Power consumption: 599.993 W, Matrix calculations per second: 460.593
Time: 420 seconds, Current GPU temperature: 87 C, Power consumption: 599.976 W, Matrix calculations per second: 460.524
Time: 430 seconds, Current GPU temperature: 87 C, Power consumption: 599.984 W, Matrix calculations per second: 460.456
Time: 440 seconds, Current GPU temperature: 87 C, Power consumption: 599.966 W, Matrix calculations per second: 460.391
Time: 450 seconds, Current GPU temperature: 87 C, Power consumption: 599.983 W, Matrix calculations per second: 460.329
Time: 460 seconds, Current GPU temperature: 87 C, Power consumption: 599.996 W, Matrix calculations per second: 460.27
Time: 470 seconds, Current GPU temperature: 87 C, Power consumption: 599.992 W, Matrix calculations per second: 460.213
Time: 480 seconds, Current GPU temperature: 87 C, Power consumption: 600.001 W, Matrix calculations per second: 460.152
Time: 490 seconds, Current GPU temperature: 87 C, Power consumption: 599.986 W, Matrix calculations per second: 460.098
Time: 500 seconds, Current GPU temperature: 87 C, Power consumption: 599.972 W, Matrix calculations per second: 460.048
Time: 510 seconds, Current GPU temperature: 87 C, Power consumption: 600 W, Matrix calculations per second: 460
Time: 520 seconds, Current GPU temperature: 87 C, Power consumption: 599.97 W, Matrix calculations per second: 459.952
Time: 530 seconds, Current GPU temperature: 87 C, Power consumption: 599.988 W, Matrix calculations per second: 459.906
Time: 540 seconds, Current GPU temperature: 87 C, Power consumption: 600.024 W, Matrix calculations per second: 459.861
Time: 550 seconds, Current GPU temperature: 87 C, Power consumption: 599.978 W, Matrix calculations per second: 459.815
Time: 560 seconds, Current GPU temperature: 87 C, Power consumption: 600.005 W, Matrix calculations per second: 459.771
Time: 570 seconds, Current GPU temperature: 87 C, Power consumption: 599.979 W, Matrix calculations per second: 459.728
Time: 580 seconds, Current GPU temperature: 87 C, Power consumption: 599.996 W, Matrix calculations per second: 459.688
Time: 590 seconds, Current GPU temperature: 87 C, Power consumption: 600.026 W, Matrix calculations per second: 459.647
Final GPU temperature: 87 C
Final GPU power consumption: 599.972 W
Completed 10 minutes of GPU load for temperature and power measurement.
```

## Comparison and Observations

The program prints a running average since the start of the run, which hides slowdowns. The calculation rates below are per-interval rates derived from those averages. All values except peak temperature are averages over the last 5 minutes of the run.

| Metric | RTX PRO 6000 Blackwell | RTX 5080 | DGX Spark |
|---|---|---|---|
| Matrix calculations per second | 457.6 | 310.2 | 91.0 |
| Power | 600.0 W | 404.9 W | 86.8 W |
| Calculations per second per watt | 0.763 | 0.766 | 1.049 |
| Temperature | 86.9 C | 72.7 C | 78.0 C |
| Peak temperature (full run) | 87 C | 73 C | 80 C |
| Rate change, first minute to last 5 minutes | -2.5% | -0.3% | -1.0% |

- **Speed scales with power.** Compared with the RTX 5080, the RTX PRO 6000 does 1.48x the work on 1.48x the power, so their efficiency is essentially the same. The DGX Spark does about 37% more work per watt, although its power reading may not be directly comparable because it is an integrated chip.
- **The RTX PRO 6000 slows down slightly as it heats up.** It lost 2.5% of its throughput while the graphics clock fell from 2835 MHz to 2722 MHz (-4%) and the temperature rose from 52 C to 87 C, sampled with `nvidia-smi` every 5 seconds. This is a small exception to the expectation that performance holds regardless of temperature.
- **The limit on the RTX PRO 6000 is power, not temperature.** The card stayed at its 600 W cap for the whole run. The only throttle reason reported was the software power cap (`0x4`), active from about 55 seconds in, and no thermal throttling was reported. Hotter silicon leaks more power, leaving less for clock speed, which is the likely explanation for the drop, but this was not tested directly.
- **The thermal margin is small, but the fan has headroom.** NVIDIA's reported limits work out to about 91 C for maximum operating temperature and 93 C for slowdown, about 4 C above the 87 C reached. The fan peaked at 54%, so a higher fan speed might recover some of the lost throughput. This was also not tested.

These are single runs per card, and ambient temperature, driver version and case setup were not controlled across them. The workload uses small 2048x2048 matrices (about 48 MB), so it says little about memory capacity or real workloads.

The RTX PRO 6000 run used driver 595.99.02 and CUDA Toolkit 12.8.2. `nvcc` in that toolkit does not support GCC 15, so the program was built with GCC 14:

```sh
nvcc -ccbin /usr/bin/g++-14 -lnvidia-ml -o measure_temp_nvml measure_temp_nvml.cu
```
