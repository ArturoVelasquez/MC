#include <stdio.h>

int main(void)
{
/*Declaracion de las variables enteros y decimales (doubles)*/	
	int feet_width=0, feet_length=0, inch_width=0, inch_length=0;
	float yard_width=0.0, yard_length=0.0, total_area=0.0;

/*pide el valor en pies de la longitud que se debe dar por consola*/	
	printf("\nPies de longitud:");
	scanf("%d",&feet_length);	

/*pide el valor en pulgadas de la longitud que se debe dar por consola*/
	printf("\nPulgadas de longitud:");
	scanf("%d",&inch_length);

/*calcula el largo en yardas*/
	yard_length=(inch_length/36.00)+(feet_length/3.0);


/*pide el valor en pies del ancho que se debe dar por consola*/
	printf("\nPies de ancho:");
	scanf("%d",&feet_width);

/*pide el valor en pulgadas del ancho que se debe dar por consola*/
	printf("\nPulgadas de ancho:");
	scanf("%d",&inch_width);

/*calcula el ancho en yardas*/
	yard_width=(inch_width/36.00)+(feet_width/3.0);

/*clacula el area en yardas*/
	total_area=yard_width*yard_length;

/*devuelve el area en yardas*/
	printf("\nEl area en yardas cuadradas es: %.2f\n",total_area);
	return 0;
}
