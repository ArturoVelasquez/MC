#include <stdio.h>

int main(void)
{

/*Declaracion de variables*/
	float inches =0.0f;
	float yards =0.0f;
	float feet =0.0f;

/*Pregunta el valor que debe entrar por consola*/
	printf("Introdusca la longitud en puldgadas:");

/*obtiene el valor decimal que debe dar por consola*/	
	scanf("%f",&inches);

/*Calcula los valores a devolver*/
	feet = inches/12.0 ;
	yards = inches/36.0;

/*Devuelve los valores calculados en yardas y pies*/
	printf("\nLa longitud en pies es %.5f", feet);
	printf("\nLa longitud en yardas es %.5f\n", yards);
	return 0;
}
