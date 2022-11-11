# cuda device info
 CUDA Device Information

This is a simple CUDA program that prints out information about the CUDA devices on your system.

## Building

To build, run the following commands

```bash
nvcc -o device_info device_info.cu
```

## Running

To run the program, simply run the executable:

```bash
./device_info
```

## Quick Run

To build and run the program in one step, run the following command:

```bash
nvcc -o device_info device_info.cu && ./device_info
```

or

```bash
sh run.sh
```
## Output

The output should look something like this:

```
Device Number is: 0
Device name is: Quadro M1000M
The memory Bus Width is 128 bits
Warp size: 32
Maximum memory pitch: 2147483647
Memory Clock Rate is 2505000 KHz 
Maximum threads per block is 1024	
Peak Memory Bandwidth is 80.160000 GB/s 
Number of multiprocessors is 4
```

## Thanks

Thanks to [NVIDIA](https://www.nvidia.com/) for providing the CUDA SDK.

## References

- [CUDA C Programming Guide](https://docs.nvidia.com/cuda/cuda-c-programming-guide/index.html)
- [CUDA Toolkit Documentation](https://docs.nvidia.com/cuda/index.html)
- [CUDA Toolkit Samples](
https://docs.nvidia.com/cuda/cuda-samples/index.html)

