#include <stdio.h>
#include "function.h"

//int log1 (int log);

int main()
{
	int k = 0; // входное число
	int i = 2; // основание логарифма
	//int log = 0;
	int rez;
	rez = log1(i, k);
	printf("log%d = %d\n", i, rez);
}
