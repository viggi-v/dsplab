#include<stdio.h>

/*
 * main.c
 */

void main(void) {
	int size, i,j,sum;
	int index,pos=0;

	printf("Enter the size:");
	scanf("%d",&size);

	int*seq = (int*)malloc(size*sizeof(int));
	int*ans = (int*)malloc((2*size-1)*sizeof(int));

	printf("Enter the sequence");
	for(i=0;i<size;i++)
		scanf("%d",seq+i);
	for(i=-1*size; i<size ; i++){
		sum = 0;
		for(j=0;j<size;j++){
			index = j-i;
			if(j<i || (j-i)>=size)
				;
			else
				sum += seq[j]*seq[index];
		}
		*(ans+pos) = sum;
		pos++;
	}
	printf("answer:\n");
	for(i=0;i<(2*size);i++)
			printf("%d ",*(ans+i));
}
