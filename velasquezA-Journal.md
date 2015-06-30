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
+ `nombreFuncion(parametro)=expresion` - gnuplot permite definir una funcion.\n
gnu plot permite usar datos de un archivo tipo csv
+ `set fileseparator "separador"`.\n
Para poder usar un imput desde un escript de bash se debe usar el comando `EOS`
+ `gnuplot<<EOS`

# C

# Python

