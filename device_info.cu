/*

Compile: nvcc <filename>.cu
Execute: ./a.out

*/

#include <stdio.h>
#include <stdlib.h>

int main()
{
	int nrOfDevices;
	cudaGetDeviceCount(&nrOfDevices);
	for (int device = 0; device < nrOfDevices; device++)
	{
		cudaDeviceProp prp;
		cudaGetDeviceProperties(&prp, device);
		printf("Device Number is: %d\n", device);
		printf("Device name is: %s\n", prp.name);
		printf("The memory Bus Width is %d bits\n", prp.memoryBusWidth);
		printf("Warp size: %d\n", prp.warpSize);
		printf("Maximum memory pitch: %ld\n", prp.memPitch);
		printf("Memory Clock Rate is %d KHz \n", prp.memoryClockRate);
		printf("Maximum threads per block is %d	\n", prp.maxThreadsPerBlock);
		printf("Peak Memory Bandwidth is %f GB/s \n", 2.0 *prp.memoryClockRate *(prp.memoryBusWidth / 8) / 1.0e6);
		printf("Number of multiprocessors is %d	\n", prp.multiProcessorCount);

	}

	return 0;
}
