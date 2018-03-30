#include <stdio.h>
#include "mymath.h"

void main()
{
	int a=10 ,b=5;

	printf("enter var 1: ");
	scanf("%d",&a);

	printf ("enetr value 2: ");
	scanf("%d",&b);

	swap(&a,&b);
	printf("%d %d \n",a,b);

	printf("%d\n",isequal(a,b));

}
