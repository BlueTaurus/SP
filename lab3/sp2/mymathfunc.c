#include<stdio.h>

int isequal(int a , int b)
{

	if(a==b)
		return 1;
	else
		return -1;
}


void swap(int * a ,int * b)
{
	printf("wasiq");
	*a=(*b+*a);
	*b=*a-*b;
	*a=*a-*b;


}
