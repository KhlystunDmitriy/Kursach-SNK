#include <stdio.h>
#include "function.h"

//int log1 (int log);

int main()
{
	int k = 0; // ������� �����
	int i = 2; // ��������� ���������
	//int log = 0;
	int rez;
	rez = log1(i, k);
	printf("log%d = %d\n", i, rez);
}
