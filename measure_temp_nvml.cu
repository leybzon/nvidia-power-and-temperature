#include <cuda_runtime.h>
#include <nvml.h>
#include <iostream>
#include <chrono>
#include <thread>

// Kernel function to perform matrix multiplication
__global__ void matMulKernel(float *A, float *B, float *C, int N) {
    int row = blockIdx.y * blockDim.y + threadIdx.y;
    int col = blockIdx.x * blockDim.x + threadIdx.x;
    if (row < N && col < N) {
        float value = 0;
        for (int k = 0; k < N; ++k) {
            value += A[row * N + k] * B[k * N + col];
        }
        C[row * N + col] = value;
    }
}

void checkCudaErrors(cudaError_t err) {
    if (err != cudaSuccess) {
        std::cerr << "CUDA Error: " << cudaGetErrorString(err) << std::endl;
        exit(-1);
    }
}

void checkNvmlErrors(nvmlReturn_t result) {
    if (result != NVML_SUCCESS) {
        std::cerr << "NVML Error: " << nvmlErrorString(result) << std::endl;
        exit(-1);
    }
}

int main() {
    int N = 2048; // Increased matrix size to better utilize the GPU
    size_t bytes = N * N * sizeof(float);
    
    // Allocate host memory
    float *h_A = (float *)malloc(bytes);
    float *h_B = (float *)malloc(bytes);
    float *h_C = (float *)malloc(bytes);

    // Initialize host matrices
    for (int i = 0; i < N * N; ++i) {
        h_A[i] = static_cast<float>(rand()) / RAND_MAX;
        h_B[i] = static_cast<float>(rand()) / RAND_MAX;
    }

    // Allocate device memory
    float *d_A, *d_B, *d_C;
    checkCudaErrors(cudaMalloc(&d_A, bytes));
    checkCudaErrors(cudaMalloc(&d_B, bytes));
    checkCudaErrors(cudaMalloc(&d_C, bytes));

    // Copy data to device
    checkCudaErrors(cudaMemcpy(d_A, h_A, bytes, cudaMemcpyHostToDevice));
    checkCudaErrors(cudaMemcpy(d_B, h_B, bytes, cudaMemcpyHostToDevice));

    // Define grid and block dimensions
    dim3 block(32, 32); // Larger block size to maximize utilization
    dim3 grid((N + block.x - 1) / block.x, (N + block.y - 1) / block.y);

    // Initialize NVML
    checkNvmlErrors(nvmlInit());

    // Get the handle for the first GPU
    nvmlDevice_t device;
    checkNvmlErrors(nvmlDeviceGetHandleByIndex(0, &device));

    // Measure the temperature, power consumption, and calculation rate over 10 minutes
    auto start = std::chrono::high_resolution_clock::now();
    auto end = start;
    auto next_temp_check = start + std::chrono::seconds(10);
    int matrixCalculations = 0;

    do {
        // Launch the kernel
        matMulKernel<<<grid, block>>>(d_A, d_B, d_C, N);
        checkCudaErrors(cudaGetLastError());
        checkCudaErrors(cudaDeviceSynchronize());

        matrixCalculations++;

        end = std::chrono::high_resolution_clock::now();
        if (end >= next_temp_check) {
            unsigned int temp;
            unsigned int power;

            checkNvmlErrors(nvmlDeviceGetTemperature(device, NVML_TEMPERATURE_GPU, &temp));
            checkNvmlErrors(nvmlDeviceGetPowerUsage(device, &power)); // Power in milliwatts

            double elapsedTime = std::chrono::duration_cast<std::chrono::seconds>(end - start).count();
            double calculationsPerSecond = matrixCalculations / elapsedTime;

            std::cout << "Time: " << elapsedTime << " seconds, "
                      << "Current GPU temperature: " << temp << " C, "
                      << "Power consumption: " << power / 1000.0 << " W, "
                      << "Matrix calculations per second: " << calculationsPerSecond << std::endl;

            next_temp_check = end + std::chrono::seconds(10);
        }
    } while (std::chrono::duration_cast<std::chrono::minutes>(end - start).count() < 10);

    // Get final temperature and power consumption
    unsigned int tempAfter;
    unsigned int powerAfter;

    checkNvmlErrors(nvmlDeviceGetTemperature(device, NVML_TEMPERATURE_GPU, &tempAfter));
    checkNvmlErrors(nvmlDeviceGetPowerUsage(device, &powerAfter));

    std::cout << "Final GPU temperature: " << tempAfter << " C" << std::endl;
    std::cout << "Final GPU power consumption: " << powerAfter / 1000.0 << " W" << std::endl;

    // Cleanup NVML
    checkNvmlErrors(nvmlShutdown());

    // Copy result back to host (optional)
    checkCudaErrors(cudaMemcpy(h_C, d_C, bytes, cudaMemcpyDeviceToHost));

    // Cleanup
    cudaFree(d_A);
    cudaFree(d_B);
    cudaFree(d_C);
    free(h_A);
    free(h_B);
    free(h_C);

    std::cout << "Completed 10 minutes of GPU load for temperature and power measurement." << std::endl;
    return 0;
}
