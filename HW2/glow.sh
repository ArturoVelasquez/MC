#!/bin/bash

#inicializar la variable con la que se va a trabajar
j=0

#Empieza el ciclo ( no es infinito pero lo suficientemente grande para ver la animacion varias veces)

for i in {1..10000}
do

# Aumenta ala variable de trabajo 
	j=$( echo "$j+0.1" | bc)

# Se asigna a una nnueva variable el valor del coseno de la variable a trabajar
	d=$( echo "(c($j))^2" | bc -l)

# Se llama la funcion que dibuja el circulo 
	bash circle.sh $d

	#echo $d (prueba para el ciclo, no hace parte del algoritmo)

# Detiene el proceso para darle tiempo a la terminal de mostra el circulo
	sleep 0.09

# Limpia la terminal
	clear
done
