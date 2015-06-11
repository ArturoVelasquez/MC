#include <stdio.h>

int main(void)
{

/*Inicializa las variables*/
	float pay = 0.0, hours = 0.0,  cents = 0.0, average = 0.0;    		int bucks = 0;

/*se pide el valor para el pago semanal*/
	printf("\nIntrodusca el pago semanal: ");	
	scanf("%f", &pay);

/*se pide la cantidad de horas trabajadas*/
	printf("\nIntrodusca las horas trabajadas: ");
	scanf("%f", &hours);

/*se calcula el promedio de pago por hora*/
	average=pay/hours;

/*Se calcula el valor entero del promedio a pagar en dolares (solo los valores enteros) */
	bucks=(int)average;

/*Se calcula el valor de lkos centavos restando del promedio el valor entero*/
	cents=(average-bucks);

/*se da un valor enetero a los centavos*/
	cents=cents*100;

/*Se retorna el promedio de paga por hora*/
	printf("\nEl pago promedio por hora es %d dolares y %.0f centavos\n", bucks, cents);	
	
	return 0;

}
