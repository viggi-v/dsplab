#include<stdio.h>

/*
 * main.c
 */

void main(void) {

	int *temp1,*temp2;
	//int *ans1,*ans2;
	int* ans0 = (int*)malloc(2*sizeof(int));
	int* ans1 = (int*)malloc(2*sizeof(int));
	int* ans2 = (int*)malloc(2*sizeof(int));
	ans1[0] = 1;
	ans1[1] = 1;
	ans2[0] = 1;
	ans2[1] = -1;
	int size = 2;

	int i,j;

	for(i=0;i<2;i++){

		temp1 = (int*)malloc(2*size*sizeof(int));
		temp2 = (int*)malloc(2*size*sizeof(int));

		for(j=0;j<size;j++)
			*(temp1+j) = ans1[j];
		for(j=0;j<size;j++)
			*(temp1+size+j) = ans2[j];
		for(j=0;j<size;j++)
			*(temp2+j) = ans1[j];
		for(j=0;j<size;j++)
			*(temp2+size+j) = ans2[j]*-1;

		size*=2;
		printf("\ntemp1 after iteration %d is:\n",i);
				for(j=0;j<size;j++)
					printf("%d ",*(temp1+j));
		printf("\ntemp2 after iteration %d is:\n",i);
		for(j=0;j<size;j++)
			printf("%d ",*(temp2+j));
		free(ans1);
		free(ans2);


		ans1 = (int*)malloc(2*sizeof(int));
		ans2 = (int*)malloc(2*sizeof(int));

		for(j=0;j<size;j++)
			*(ans1+j) = *(temp1+j);
		for(j=0;j<size;j++)
			*(ans2+j) = *(temp2+j);

		printf("\nans1 after iteration %d is:\n",i);
		for(j=0;j<size;j++)
			printf("%d ",*(ans1+j));
		printf("\nans2 after iteration %d is:\n",i);
		for(j=0;j<size;j++)
			printf("%d ",*(ans2+j));
		free(temp1);
		free(temp2);
	}
	printf("The complementary sequences are:\na.");
	for(i=0;i<size;i++)
		printf("%d ", *(ans1+i));
	printf("\nb.");
	for(i=0;i<size;i++)
			printf("%d ", *(ans2+i));
	printf("stats:\n");
	printf("size:%d, sizeof(ans1)=%d",size,sizeof(ans1));
}
