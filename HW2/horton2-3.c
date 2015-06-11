#include <stdio.h>

int main(void)
{
/*Se declaran las variables para la cantidad, el tipo de producto, y el total a pagar*/
	int type=0, quantity=0;
	float total=0.00; 
	
/*Se declaran las consatantes para el valor segun el artículo*/
	const float standar=3.50, deluxe=5.50

/*Se pide el tipo de artículo requerido*/
	printf("\nIntrodusca 1 para el articulo estandar, 2 para el articulo de lujo: ");

/*Se asigna el tipo de artículo*/
	scanf("%d",&type);

/*Se pide la cantidad de artículos requeridos*/
	printf("\nIntrodusca la cantidad de articulos: ");

/*Se asigna la cantida de artículos*/
	scanf("%d",&quantity);

/*Este condicional devuelve el total según los el tipo de artículo y cantidad requerida*/	
	if(type==1)
		{
		total = quantity*standar;
		}
	else if(type==2)
		{
		total = quantity*deluxe;
		}

/*Devuelve el total a pagar*/
	printf("\nSu total es: %.2f\n", total);

}
