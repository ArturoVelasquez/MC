#!/bin/bash

# Abri gnuplot
gnuplot<<EOF

# Darle la orden de que grafique en la terminal 
set term dumb

# Establecer la grafica parametrica
set parametric

# Quitar las leyendas
set key off

# Establecer la grafica cuadrada
set size ratio 0.5

# Quitar los ejes 
 
unset xtics
unset ytics

# Establecer los rangos 
set xrange [-1:1]
set yrange [-1:1]

# Grafica un circulo
plot $1*sin(t),$1*cos(t)

EOF
