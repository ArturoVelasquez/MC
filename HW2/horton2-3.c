#include <stdio.h>

int main(void)
{
	int type=0, quantity=0;
	float standar=3.50, deluxe=5.50, total=0.00; 
	
	printf("\nIntrodusca 1 para el articulo estandar, 2 para el articulo de lujo: ");
	scanf("%d",&type);

	printf("\nIntrodusca la cantidad de articulos: ");
	scanf("%d",&quantity);
	
	if(type==1)
		{
		total = quantity*standar;
		}
	else if(type==2)
		{
		total = quantity*deluxe;
		}
	printf("\nSu total es: %.2f\n", total);

}
