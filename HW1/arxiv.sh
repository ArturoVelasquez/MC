#!/bin/bash
figlet arXiv

echo '=============================================
Searching the arXiv for the new stuff:
http://arxiv.org/list/nucl-th/ne
============================================='
# Se declara el valor de ingreso
echo'Keyword:' $1
echo '============================================='
# Busca el codigo fuente de la pagina y lo ridereccion a un .txt
curl -s http://arxiv.org/list/nucl-th/new > todo.txt
# Busca los titulos en el codigo fuente con la palabra clave
grep -i title: todo.txt | grep -i $1  > lista.txt
# Cuenta la cantidad de titulos encontrados
cantidad=$(wc -l lista.txt | sed 's/ lista.txt//g')
echo 'number of files' $cantidad 
# Limpia los titulos
sed 's/.*:<\/span>/-/g' lista.txt
#elimina los archivos creados
rm lista.txt
rm todo.txt
