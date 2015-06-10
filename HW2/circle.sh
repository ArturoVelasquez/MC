#!/bin/bash

# Abri gnuplot
gnuplot<<EOF

# Asignar el valor querido a una variable
x=$1

# Darle la orden de que grafique en la terminal 
set term dumb

# Establecer la grafica parametrica
set parametric

# Quitar las leyendas
set key off

# Establecer la grafica cuadrada
set size ratio 0.5

# Establecer los rangos 
set xrange [-1:1]
set yrange [-1:1]

# Grafica un circulo
plot x*sin(t),x*cos(t)

EOF
