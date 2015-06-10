#include <stdio.h>

int main(void)
{
	float inches =0.0f;
	float yards =0.0f;
	float feet =0.0f;


	printf("Introdusca la longitud en puldgadas:");
	scanf("%f",&inches);
	feet = inches/12.0 ;
	yards = inches/36.0;
	printf("\nLa longitud en pies es %.5f", feet);
	printf("\nLa longitud en yardas es %.5f\n", yards);
	return 0;
}
