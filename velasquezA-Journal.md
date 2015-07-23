# Marckdown

## Primera clase 27-Mayo-2015

Comenzando el curso de Metodos Computacionales.

Herramientas del curso:
git,
Github,
bash,
c,
python.

# Git-Github

## Hands on 1

### Comandos importantes
+ `git clone <url del repositorio>` - Para obtener una copa del repositorio.
+ `git pull origin master` - Para actualizar la carpeta personal del repositorio.
+ `git push oigin master` - Para subir cambios realizados a la rama central de trabajo.
+ `git commit <nombre del archivo>` - Para hacer un comit a un archivo (guardar los cambios hechos).
+ `git add` - Para incluir algun archivo al repositori (Hacer un "track" del archivo en el repositorio)
+ `--all` - Para incluir todos los archivos de una carpeta a un comando.
+ `-h` - Para dar el mensaje del commit desde la terminal.
+ `git checkout <commit id>` - Para revisar versiones anteriores del repositorio

# Bash

## Hands on 1

### awk

Este comando sirve para imprimi datos contenidos en un archivo.

#### Comandos
+ `awk -f "<separador>"` - define el seprador en un archivo con columnas. 
+ `awk {'print'}` - imprime algo buscado por awk.\n
+ se usa el simbolo `$` para referirse a un valor dentro de un archivo csv `Ejemplo: echo numeros importantes | awk '{print $1}'` imprmiera `numeros` para referirse a la line completa se usa `$0`
+ `%d` - sirve como en c para especificar que el valor es un decimal. (ambien se puede dar el valor hexagesimal `%x` y octagonal `%o`).
+ awk recive coo comandos `prit` y `printf` que usan diferente sintaxis `printf` usa sintaxis de c en la que se especifica los valores de lo que se va a imprimir, y despues las constantes. Por otro lado `print` usa la variable que se imprime dentro del texto.

### Curl 

Este comando sirve para obener el codigo fuente de una pagina web.

### sed

Este comano sirve para remplazar un atron cracter o texto dentro de un texto por otra cosa

#### Sintaxis
+ `sed /<patron>/d nombredelarchivo` - para eleminar un patron de un archivo.
+ `sed s/<patron que se desea cambia>/<patron por el que se desea cambiar>/g` - para remplaza un patron especifico.
+ `<numero de linea>d nombredelarchivo` - elimina una linea de un archivo.
+ `<numero de linea>i 'texto que se desea insetar' nombredelarchivo` - inserta una linea de texto en una fila de un archivo.

## Hands on 2

### gnuplot

Es un programa que permite hacer calculos e imprimir en (o no) la terminal.

### Comandos
+ `set term dumb`- permite hacer graficas en la terminal.
+ `nombreFuncion(parametro)=expresion` - gnuplot permite definir una funcion.

gnu plot permite usar datos de un archivo tipo csv
+ `set fileseparator "separador"`.

Para poder usar un imput desde un escript de bash se debe usar el comando `EOS`
+ `gnuplot<<EOS`

# C

# Python

#Intento 2.0

## Hands-on 2
*02-Jun-2015*

### Expresiones regulares

4. Construya una expresión regular que represente cuatro caracteres al inicio de una línea junto con un espacio a continuación. **log**
`^....`
5. Tome el texto del artículo de la Wikipedia (haciendo *copy-paste* desde el explorador) sobre [eventos de la edad moderna](http://en.wikipedia.org/wiki/Timeline_of_modern_history) y usando expresiones regulares adecuadas transfórmelo para que tenga un formato `tsv` con dos columnas: el año y los eventos correspondientes. 
6. Descargue con `curl` el código fuente de la página [Pi - 10 Million Digits](http://pi.karmona.com), límpielo de todo caracter diferente a los dígitos de pi y divídalo en líneas con 20 dígitos cada una quedando ellas en un archivo con nombre `PIslices20.dat`. **log**
```
#!/bin/bash
echo -n "El nombre del archivo csv: "
read archivo
echo -n "Escriba el numero de la columna vertical: "
read ejey
echo -n "Escriba el numero de la columna horizontal: "
read ejex
```

7. Decida si su número de teléfono celular se encuentra en los primeros 10 millones de dígitos de pi *usando PIslices20.dat*. Use [pcregrep](http://stackoverflow.com/questions/2686147/how-to-find-patterns-across-multiple-lines-using-grep) para considerar aciertos que se extienden en dos líneas.

### gnuplot

1. Escriba un script de `bash` que reciba tres argumentos, el nombre de un archivo csv, el número de la columna para el eje horizontal y el número de la columna para el eje verticual y que haga con `gnuplot` una gráfica de dispersión con puntos visibles y unidos por líneas rectas. Haga pruebas con el archivo [joviansatellites.csv](https://raw.githubusercontent.com/ComputoCienciasUniandes/MetodosComputacionales/master/examples/joviansatellites.csv)] **log**
```
#!/bin/bash
gnuplot<<EOF
set term dumb
set datafile separator ","
set xrange [1:350]
set yrange [0:780]
plot "joviansatellites.csv" using 2:3 with linesp
EOF
```
2. Haga una gráfica en la terminal de la [lemniscata de Bernoulli](http://en.wikipedia.org/wiki/Lemniscate_of_Bernoulli) donde solamente se muestre la curva, es decir, sin títulos ni ejes. Use la representación paramétrica.

##Hands-on 5
*10-Jun-2015*


### matplotlib

1. Descargue el  [manual de matplotlib](http://matplotlib.org/Matplotlib.pdf) y reproduzca las primeras diez gráficas mostradas.
1. La misma animación `glow` que hizo en `bash` y `gnuplot` ahora hágala usando `matplotlib`.
2. Haga un panel de 5X5 con diferentes [curvas de Lissajous](http://en.wikipedia.org/wiki/Lissajous_curve). **log**

```
%pylab inline
    
# Se generan los rangs en que varian las variables
r1 = np.linspace(0,25,1)
r2 = np.linspace(1,26,1)
# Se genera el valor para el desfaceentre los ejes 
delta = pi/2
# Se genera el arreglo a que servira como parametro
t = linspace(0, 2*pi, 400)
# se generan las figuras 
figure (figsize = (10,10))
for i in range(0,25):
	x = sin(r1[i]*t + delta)
        y = sin(r2[i]*t)
        subplot(5, 5, i+1)
        plot (x,y)
        plt.axis('off')
show()
```

![](https://raw.githubusercontent.com/ComputoCienciasUniandes/MetodosComputacionales/master/hands_on/figures/lisa.png)

# Hands-On 7
*16-Jun-2015*


## Interpolación y Ajustes

1. El archivo [polyunkown.csv](https://raw.githubusercontent.com/ComputoCienciasUniandes/MetodosComputacionalesDatos/master/hands_on/polyunkown.csv) tiene dos columnas: las primera tiene las abscisas y la segunda las ordenadas correspondientes. La tabla se ha calculado con un polinomio, encuentre el orden del polinomio.

2. (Cuatro lunas de Júpiter) A partir de los siguientes parámetros orbitales de los satélites galileanos estime la masa de Júpiter haciendo en algún momento un ajuste polinomial de orden 3.

	| Satélite        | Semieje Mayor / Mm | Periodo / días |
	| :-------------:|:-------------:| :-------------:
	| Io     	| 421.6 | 1.769 |
	| Europa 	| 670.0 | 3.551
	| Ganymede	| 1070.4    | 7.154 |
	| Callisto	| 1882.7    | 16.689 |

3. La tabla mostrada abajo tiene información sobre el campo magnético de un dipolo magnético a lo largo de su eje, haga un ajuste por mínimos cuadrados de acuerdo a un modelo teórico adecuado y calcule la magnitud del [momento magnético](https://en.wikipedia.org/wiki/Magnetic_dipole)  del imán (en A m^2) y una tabla para B(x) con 100 renglones uniformemente espaciada entre el x=2.3cm y x=4.3cm. Haga una gráfica con los datos y el ajuste encontrado. **log**


	| x/cm        | B/uT           |
	| ------------- |:-------------:|
	|2.3|34745|
	|2.8|19689|
	|3.2|12594|
	|3.7|7982|
	|4.3|5822|

```
%pylab inline
#se crean dos arrays con los datos
xr = np.array([2.3,2.8,3.2,3.7,4.3])
B = np.array([34745,19689,12594,7982,5822])
    
def Campo_magnetico(l,s):
    return (l/s**3)
    
fitpars,covmat = curve_fit(Campo_magnetico,xr,B)
xrdatos = np.linspace(2.3,4.3,100)
Bdatos = Campo_magnetico(xr100,fitpars)
    
print "|     x/cm     |     B/uT     |\n|--------------|--------------|"
    for i in range (len(Bdatos)):
        print "|   %f   | %f |"%(xr100[i],B100[i])
```
4. Dedique diez minutos a pensar en ideas para su proyecto final. **log**


<!--3. (L1 Júpiter Io) Compare la solución exacta al [primer punto de Lagrange](https://en.wikipedia.org/?title=Lagrangian_point#L1) del sistema Júpiter-Io con la aproximación.-->

<!--Masa de Io = 893.2E20 kg

Masa de Júpiter = 1.898E27 kg-->


<!--![](https://raw.githubusercontent.com/ComputoCienciasUniandes/MetodosComputacionales/master/hands_on/figures/choreography.png =700x)-->


## Hands-On 10
*23-Jun-2015*

### DFT

1. Estime la duración del [ciclo solar](https://en.wikipedia.org/wiki/Solar_cycle) analizando con una DFT los datos [monthrg.dat](https://raw.githubusercontent.com/ComputoCienciasUniandes/MetodosComputacionalesDatos/master/hands_on/solar/monthrg.dat). La descripción del archivo está [aquí](https://github.com/ComputoCienciasUniandes/MetodosComputacionalesDatos/blob/master/hands_on/solar/README). Además utilice un filtro de altas frecuencias para obtener una gráfica similar a la mostrada abajo. **log**
```
%pylab inline
# se importan los datos
actividad=np.genfromtxt("./monthrg.dat")
year=actividad[:,0]
mes=actividad[:,1]
media=actividad[:,3]
dev=actividad[:,4]

#se toman los dats desde el siglo 20
yearxix=year[year>=1900]
mediaxix=media[year>=1900]
mesxix=mes[year>=1900]
devxix=dev[year>=1900]

#se calculan los datos por años y fraccion
tiempoxix=[]
for i in range(0,len(yearxix)):
    tiempoxix.append(yearxix[i]+((mesxix[i]-1)/12))

from scipy.fftpack import ifft, fft, fftfreq
# Se calcula la transformada inversa y la frecuencia de os datos 
N=len(AF)
dt=(AF[-1]-AF[0])/N
DatF = fft(MediaF)
freq = fftfreq(N, dt)
```
![](https://raw.githubusercontent.com/ComputoCienciasUniandes/MetodosComputacionales/master/hands_on/figures/solaractivity.png?raw=true =500x)


