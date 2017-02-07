#include<stdio.h>

/*
 * Frank Code generation
 */

void main(void) {
	int size=16, i,j;
	float sum;
	int index,pos=0;

	printf("Frank Code AutoCorrelation");

	float seq[] = {0,0,0,0,0,4.7124,3.1416,1.5708,0,3.1416,0,3.1416,0,1.5708,3.1416,4.7124};
	float*ans = (float*)malloc((2*size-1)*sizeof(float));
	for(i=-1*size; i<size ; i++){
		sum = 0.0;
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
			printf("%f ",*(ans+i));
}
