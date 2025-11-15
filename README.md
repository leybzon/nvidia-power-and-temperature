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

Completed 10 minutes of GPU load for temperature and power measurement.
```
