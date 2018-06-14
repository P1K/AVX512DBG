/*
 * To be compiled as: gcc -mavx512vl -O3 minimal.c -o minimal
 */
#include <stdio.h>
#include <stdint.h>

#define CASE 3

void copy(void)
{
	unsigned fcard = 33;
//	uint64_t buf[fcard] __attribute__ ((aligned (64)));
//	uint64_t buf2[8] __attribute__ ((aligned (64))) = {0,0,0,0,0,0,0,0};
//	uint64_t buf3[4] __attribute__ ((aligned (64))) = {0,0,0,0};
	uint64_t buf[fcard];
	uint64_t buf2[8] = {0ull,0ull,0ull,0ull,0ull,0ull,0ull,0ull};
	uint64_t buf3[4] = {0ull,0ull,0ull,0ull};

	for (uint64_t i = 0; i < fcard; i++)
	{
		buf[i] = i;
	}

//	printf("buf content\n");
//	for (int i = 0; i < 8; i++)
//		printf("[%d] = %lx\n", i, buf[i]);

	printf("\n~~ case %d ~~\n\n",CASE);
#if CASE == 1
	for (int i = 0; i < 4; i++)
	{
		buf2[i] = buf[i];
		buf3[i] = buf[4 + i];
//		printf("[%d] = %d\n", i, buf2[i]);
//		printf("[%d] = %d\n", i, buf3[i]);
	}
#endif
#if CASE == 2
	buf2[0] = buf[0];
	buf2[1] = buf[1];
	buf2[2] = buf[2];
	buf2[3] = buf[3];
	buf3[0] = buf[4];
	buf3[1] = buf[5];
	buf3[2] = buf[6];
	buf3[3] = buf[7];
#endif
#if CASE == 3
	for (int i = 0; i < 8; i++)
	{
		buf2[i] = buf[i];
//		printf("[%d] = %d\n", i, buf2[i]);
	}
#endif

	printf("buf2 content\n");
	for (int i = 0; i < 8; i++)
		printf("[%d] = %lx\n", i, buf2[i]);

	printf("buf3 content\n");
	for (int i = 0; i < 4; i++)
		printf("[%d] = %lx\n", i, buf3[i]);

	return;
}

int main()
{
	copy();

	return 0;
}
