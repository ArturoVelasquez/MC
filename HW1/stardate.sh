#!/bin/bash

# Descarga los archivos necesarios
wget  https://raw.githubusercontent.com/ComputoCienciasUniandes/MetodosComputacionales/master/homework/2015-V/HW1/worldhistory.tsv

wget  https://raw.githubusercontent.com/ComputoCienciasUniandes/MetodosComputacionales/master/homework/2015-V/HW1/hyg.csv
 
# Imprime eltitulo y los valores ingresados
figlet StarDate]

echo '============================================='

figlet $1

echo '============================================='

# Busca el valor en el archivo de la historia Mundial y lo imprime
grep $1 worldhistory.tsv | awk -F "\t" '{print $2}' 

echo '============================================='
echo 'LOOK AT THE FOLLOWING STARS'

# Busca los valores necesarios del .csv y los ridereciona a un nuevo archivo 
awk -F "," '{print $10,$8,$9,$2}' hyg.csv > distancia.csv 

# Calcula el valor para el año en que se vio
distancia=$((2015-$1))"\."

# Busca en el arhivo los valores para ese año 
grep "^$distancia" distancia.csv > distanciareq.csv

# Envia a un nuevo archivo csv los valores requeridos restringiendo el numero de digitos
awk '{print substr($2,1,4)"\t"substr($3,1,5)"\t"substr($4,1,5)}' distanciareq.csv > distanciafinal.csv

# Imprime los valores requeridos
echo 'RA/º    DEC/º   HIP No.'
head -5 distanciafinal.csv

# Elimina los archivos generados
rm distancia.csv
rm distanciareq.csv
rm distanciafinal.csv
rm hyg.csv
rm worldhistory.tsv 
