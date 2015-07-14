#include <time.h>

static struct timespec tv_start, tv_end;

static void start_timer(void)
{
	clock_gettime(CLOCK_REALTIME, &tv_start);
}

static void stop_timer(void)
{
	clock_gettime(CLOCK_REALTIME, &tv_end);
}

static void print_timer(void)
{
	volatile double lap = ((double)tv_end.tv_sec + tv_end.tv_nsec*1.0e-9) -
		((double)tv_start.tv_sec + tv_start.tv_nsec*1.0e-9);

	printf("Time: %.6lfsec\n", lap);
}
