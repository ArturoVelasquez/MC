#!/bin/bash

##wget  https://raw.githubusercontent.com/ComputoCienciasUniandes/MetodosComputacionales/master/homework/2015-V/HW1/worldhistory.tsv

##wget  https://raw.githubusercontent.com/ComputoCienciasUniandes/MetodosComputacionales/master/homework/2015-V/HW1/hyg.csv

figlet StarDate
echo '============================================='
figlet $1
echo '============================================='
grep $1 worldhistory.tsv | awk -F "\t" '{print $2}' 
echo '============================================='
echo 'LOOK AT THE FOLLOWING STARS'
awk -F "," '{print $10,$8,$9,$2}' hyg.csv > distancia.csv 
distancia=$((2015-$1))"\."

grep "^$distancia" distancia.csv > distanciareq.csv

awk '{print substr($2,1,4)"\t"substr($3,1,5)"\t"substr($4,1,5)}' distanciareq.csv > distanciafinal.csv

echo 'RA/º    DEC/º   HIP No.'
head -5 distanciafinal.csv

rm distancia.csv
rm distanciareq.csv
rm distanciafinal.csv
rm hyg.csv
rm worldhistory.tsv 
