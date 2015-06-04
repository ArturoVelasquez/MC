#!/bin/bash

# Descarga el archivo Kepler.csv
wget -q https://raw.githubusercontent.com/ComputoCienciasUniandes/MetodosComputacionales/master/homework/2015-V/HW1/kepler.csv

#Calcula la cabtidad de planetas
cantidad=$(wc -l kepler.csv | sed 's/kepler.csv//g')
echo 'La cantidad de planetas es:' $(($cantidad-1)) 

# Define el valor del separados para el archivo .csv y le pide buscar los valores positivos menores a una sentesima redireccionando ha un nuevo .csv
awk -F "," '{if ($2 <0.01 && $2 >=0){print  $1}}' kepler.csv >  planetas.csv

# Cuenta la cantidad de elementos que cumplen con la condicion anterior y la asigana a una variable
cantidad2=$(wc -l planetas.csv | sed 's/planetas.csv//g' )

#imprime los elementos con los valores requeridospor masa
echo 'La cantidad de planetas con masa menor que una centesima de la masa de Jupiter es:' $cantidad2 

echo 'Los planetas son:' 

cat planetas.csv

#Saca los datos para las orbitas por planeta 
awk -F "," '{if ($6 >=0){print  $6,$1}}' kepler.csv > orbitas.csv

#ordena los planetas por tamaño de orbita
sort -i orbitas.csv > orbitas1.csv

#Imprime el menor vaor para las orbitas
echo 'el planeta con menor radio es: '

awk '{print $2,$3}' orbitas1.csv | head -1

# Elimina los archivos generados
rm orbitas.csv
rm orbitas1.csv
rm planetas.csv
rm kepler.csv
