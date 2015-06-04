#Taller 2
*Métodos Computacionales - Laboratorio*

03-Jun-2015

Haga una copia de este archivo en su repositorio de GitHub en la carpeta /MC/Talleres/Taller2/. No olvide al final hacer un *commit* y un *push*.

## Lotería

1. Escriba  un script de `bash` llamado `loteria.sh` que determine si su taller es afortunado y va a ser revisado. La información necesaria siempre va a estar en el momento adecuado en el archivo [lottery](https://raw.githubusercontent.com/ComputoCienciasUniandes/MetodosComputacionalesLaboratorio/master/2015-V/actividades/lottery/lottery.csv). Además de imprimir si el taller va a ser o no revisado también se debe imprimir la primera línea del archivo `csv` que tiene la fecha. Guárdelo en la carpeta de ejecutables de su computador.

####Solución

```
#!/bin/bash
wget -q  https://raw.githubusercontent.com/ComputoCienciasUniandes/MetodosComputacionalesLaboratorio/master/2015-V/actividades/lottery/lottery.csv
head -1 lottery.csv
grep 201226919 lottery.csv  
rm lottery.csv
```
## Expresiones Regulares

1. Descargue el [archivo](http://www.minhacienda.gov.co/portal/page/portal/HomeMinhacienda/presupuestogeneraldelanacion/ProyectoPGN/2015/Presentacion%20Proyecto%202015.pdf) del Ministerio de Hacienda con información sobre el Presupuesto General de la Nación 2015. Abra el archivo, diríjase a la página 10, haga *copy-paste* los datos de la tabla comenzando en *EDUCACIÓN* y terminando en *100,0*, guárdelos en un archivo llamado `pgn.dat`. Escriba comandos de `sed` que lleven a cabo las siguientes tareas de búsqueda y reemplazo y aplíquelos secuencialmente sobre el archivo `pgn.dat`: 

	* eliminar todos los puntos,

	* cambiar por puntos todas las comas que estén seguidas de algún dígito,

	* cambiar por `tab` todos los espacios en blanco que estén seguidos de algún dígito o por (,

	* eliminar todos los paréntesis derechos,

	* y por último cambiar todos los paréntesis izquierdos por -. El resultado final debe quedar guardado en el archivo `pgn.tsv`.

	* Finalmente usar `sort --field-separator=$'\t' ...`  y `head` para organizar el archivo de acuerdo al cambio porcentual y encontrar el sector con el menor cambio porcentual.

#### Solución

  * Elininar los puntos: `sed -i 's/\.//g png.dat'`

  * Eliminar las comas segidas por agun digito: `sed -i 's/\,[0-9]/\./g png.dat`.

  * Cambiar por tab los espacion seguido por un digito: `sed -i 's/\s[0-9]/\t/g' png.dat`.

  * Poner tab en todos los epacios vacios seguidos de ( : `sed -i -E 's/\s\(/\t/g' png.dat`.
  
  * Eliminar los paréntesis derechos: `sed -i -E 's/\(//g' png.dat`.
  
  * Cambiar todos los parentesis derechos por - : `sed -i -E s/\(/\-/g' png.dat > png.tsv`.
  
  * para el ultimo punto: `sort --field-separator=$'\t' --key=4 -n png.tsv | awk -F "\t" '{print $1}' | head -1`.

## gnuplot

1. Haga con [Saturno](http://nssdc.gsfc.nasa.gov/planetary/factsheet/saturniansatfact.html) lo mismo que hicimos con Júpiter: limpiar el archivo llevándolo a formato `csv` y hacer una gráfica con `gnuplot` que evalúe la tercera ley de Kepler. Hay que tener especial cuidado con la columna para el periodo de rotación.

####Solución

1. Se limpio la grafica en parte usando las funciones de clase en parte a mano y se guardo en el arhivo Saturno.csv
2. Tras abrir gnuplot se definene dos funciones:
	* cbe(x)=x**3
	* sqr(x)=x**2
3. Para definir el delimitador del archivo com una , se usa la funcion`set datafile separator ","`
4. Por último para graficar usando las funciones se da el comando `plot "saturno.csv" using ((cbe(3):(sqr(2))`

**Al terminar la clase ejecute `lottery.sh` para saber si su taller va a ser revisado.*
