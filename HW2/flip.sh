#!/bin/bash 
#Compañero de trabajo Paula Siauchó
#Se asume usuarios inteligentes, en este caso los parametros siempre se ponene en el mismo orden: letra a cambiar, letra sustituta y nombre del archivo
#Se hacen tres sed teniendo en cuenta que una se las sustituciones se hace por "#" para que el programa no se confunda. 

sed -E -i "s/$1/\#/g" $3
sed -E -i "s/$2/$1/g" $3
sed -E -i "s/\#/$2/g" $3 
 
