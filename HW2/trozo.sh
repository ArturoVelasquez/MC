#!/bin/bash
#Grupo de trabajo con Paula Siauchó
#se usa print substr para que muestre los caracteres dados por los parámetros. El del inicio corresponde a la segunda entrada y la letra, del final es la tercera. 
awk '{print substr($0,'$1','$2'-'$1')}' $3
