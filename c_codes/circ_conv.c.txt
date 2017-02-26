#include<stdio.h>
#include<stdlib.h>

/*
 *  Circular Convolution
 */

int makenormal(int i, int j,int size){
	int index = i-j;
	while(index < 0){
		index+=size;
	}
	index%=size;
	return index;
}

void main(){
	int i,k,len1,len2,sum,max,index;
	int*seq1,*seq2,*ans;

	printf("Enter length1\n");
	scanf("%d",&len1);
	printf("Enter length2\n");
	scanf("%d",&len2);

	max = len1>len2?len1:len2;

	seq1 = (int*) malloc(max*sizeof(int));
	seq2 = (int*) malloc(max*sizeof(int));
	ans =  (int*) malloc(max*sizeof(int));

	printf("Enter seq1\n");
	for(i=0;i<len1;i++)
		scanf("%d",seq1+i);
	printf("Enter seq2\n");
	for(i=0;i<len2;i++)
		scanf("%d",seq2+i);

	for(i=len1;i<max;i++)
		seq1[i]=0;
	for(i=len2;i<max;i++)
		seq2[i]=0;

	for(i=0;i<max;i++){
		sum = 0;
		for(k=0;k<max;k++){
			index = makenormal(i,k,max);
			sum+=seq1[k] * seq2[index];
		}
		*(ans+i) = sum;
	}
	printf("The convolution Integral is\n");
	for(i=0;i<max;i++)
		printf("%d ", *(ans+i));
}
