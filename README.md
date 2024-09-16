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

## Results

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
Completed 10 minutes of GPU load for temperature and power measurement.
```
