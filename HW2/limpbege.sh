#!/bin/bash
#Grupo de trabajo con Paula Siauchó
#archivo de limpieza para el punto 3c 
#Se elimina todo lo que diga "Page" y luego, todos los números del archivo
sed 's/Page//g' inicial.txt | sed 's/[0-9]//g' >inicial2.txt

#Se utiliza perl para quitar los saltos de reglón y volverlo todo una sola línea. 
perl -p -e 's/\n/ /' inicial2.txt >inicial3.txt
#Por último se quitan los espacios sobrantes
sed 's/ //g' inicial3.txt > inicial4.txt





