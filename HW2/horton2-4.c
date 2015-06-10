#include <stdio.h>

int main(void)
{
	float pay = 0.0, hours = 0.0,  cents = 0.0, average = 0.0;    		int bucks = 0;

	printf("\nIntrodusca el pago semanal: ");	
	scanf("%f", &pay);

	printf("\nIntrodusca las horas trabajadas: ");
	scanf("%f", &hours);

	average=pay/hours;

	bucks=(int)average;

	cents=(average-bucks);

	cents=cents*100;

	printf("\nEl pago promedio por hora es %d dolares y %.0f centavos\n", bucks, cents);	
	
	return 0;

}
