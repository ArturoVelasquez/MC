#!/bin/bash

wget -q https://raw.githubusercontent.com/ComputoCienciasUniandes/MetodosComputacionales/master/homework/2015-V/HW1/kepler.csv

cantidad=$(wc -l kepler.csv | sed 's/kepler.csv//g')
echo 'La cantidad de planetas es:' $(($cantidad-1)) 

awk -F "," '{if ($2 <0.01 && $2 >=0){print  $1}}' kepler.csv >  planetas.csv
cantidad2=$(wc -l planetas.csv | sed 's/planetas.csv//g' )

echo 'La cantidad de planetas con masa menor que una centesima de la masa de Jupiter es:' $cantidad2 

echo 'Los planetas son:' 

cat planetas.csv

awk -F "," '{if ($6 >=0){print  $6,$1}}' kepler.csv > orbitas.csv

sort -i orbitas.csv > orbitas1.csv

echo 'el planeta con menor radio es: '

awk '{print $2,$3}' orbitas1.csv | head -1

rm orbitas.csv
rm orbitas1.csv
rm planetas.csv
rm kepler.csv
