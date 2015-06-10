#include <stdio.h>

int main(void)
{
	int feet_width=0, feet_length=0, inch_width=0, inch_length=0;
	float yard_width=0.0, yard_length=0.0, total_area=0.0;
	
	printf("\nPies de longitud:");
	scanf("%d",&feet_length);	

	printf("\nPulgadas de longitud:");
	scanf("%d",&inch_length);

	yard_length=(inch_length/36.00)+(feet_length/3.0);

	printf("\nPies de ancho:");
	scanf("%d",&feet_width);

	printf("\nPulgadas de ancho:");
	scanf("%d",&inch_width);

	yard_width=(inch_width/36.00)+(feet_width/3.0);

	total_area=yard_width*yard_length;

	printf("\nEl area en yardas cuadradas es: %.2f\n",total_area);
	return 0;
}
