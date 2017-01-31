#include<stdio.h>
#include<stdlib.h>

/*
 * main.c
 */
void main(void) {
	int i,size;
	int*ptr1,*ptr2,*ans;
	printf("Enter the length of sequence:");
	scanf("%d",&size);

	ptr1 = (int*)malloc(size*sizeof(int));
	ptr2 = (int*)malloc(size*sizeof(int));
	ans = (int*)malloc(size*sizeof(int));

	printf("Enter the first sequence:");
	for(i=0;i<size;i++)
		scanf("%d",ptr1+i);
	printf("Enter the second sequence:");
	for(i=0;i<size;i++)
		scanf("%d",ptr2+i);

	for(i=0;i<size;i++)
		ans[i] = ptr1[i]*ptr2[i];

	printf("The answer is:");
	for(i=0;i<size;i++)
			printf("%d ",*(ans+i));

}
