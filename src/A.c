#include <stdio.h>
#include <string.h>
#include "test.h"

int main() {
	printf("start test:\n");
	long long a = 4, b = 5;
	printf("a^b = %lld\n", mathPow(a, b));
	return 0;
}
