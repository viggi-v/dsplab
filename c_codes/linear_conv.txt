#include<stdio.h>
#include<stdlib.h>

/*
 *  Linear Convolution
 *  By 15EC250, 15EC241
 */

void main(){
	int i,k,len1,len2,sum;
	int*seq1,*seq2,*ans;

	printf("Enter length1\n");
	scanf("%d",&len1);
	seq1 = (int*) malloc(len1*sizeof(int));
	printf("Enter seq1\n");
	for(i=0;i<len1;i++)
		scanf("%d",seq1+i);
	printf("Enter length2\n");
	scanf("%d",&len2);
	seq2 = (int*) malloc(len2*sizeof(int));
	printf("Enter seq2\n");
	for(i=0;i<len2;i++)
			scanf("%d",seq2+i);


	ans = (int*) malloc((len1+len2-1)*sizeof(int));

	for(k=0;k<len1+len2-1;k++){
		sum = 0;
		for(i=0;i<len1;i++){
			if( k-i < 0 || k-i >= len2)
				sum += 0;
			else
				sum += seq1[i] * seq2[k-i];
		}
		ans[k] = sum;
	}

	printf("The convolution Integral is\n");
	for(i=0;i<len1+len2-1;i++)
		printf("%d ", *(ans+i));
}
