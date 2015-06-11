#!/bin/bash 
#Grupo de trabajo con Paula Siauchó 
#Se pone el input en un archivo 
cat $1 >>arch2.txt
#Se hacen 10 iteraciones, cada una según el código dado en el enunciado, para desencriptar el mensaje. 
for i in {1..10}
do
	./flip.sh z v arch2.txt >>arch2.txt
	./flip.sh y h arch2.txt >>arch2.txt
	./flip.sh x p arch2.txt >>arch2.txt
	./flip.sh w u arch2.txt >>arch2.txt
	./flip.sh v z arch2.txt >>arch2.txt
	./flip.sh u s arch2.txt >>arch2.txt
	./flip.sh t f arch2.txt >>arch2.txt
	./flip.sh s g arch2.txt >>arch2.txt
	./flip.sh r x arch2.txt >>arch2.txt
	./flip.sh q e arch2.txt >>arch2.txt
	./flip.sh p d arch2.txt >>arch2.txt
	./flip.sh o r arch2.txt >>arch2.txt
	./flip.sh n m arch2.txt >>arch2.txt
	./flip.sh m b arch2.txt >>arch2.txt
	./flip.sh l j arch2.txt >>arch2.txt
	./flip.sh k a arch2.txt >>arch2.txt
	./flip.sh j c arch2.txt >>arch2.txt
	./flip.sh i y arch2.txt >>arch2.txt
	./flip.sh h k arch2.txt >>arch2.txt
	./flip.sh g t arch2.txt >>arch2.txt
	./flip.sh f q arch2.txt >>arch2.txt
	./flip.sh e o arch2.txt >>arch2.txt
	./flip.sh d l arch2.txt >>arch2.txt
	./flip.sh c w arch2.txt >>arch2.txt
	./flip.sh b n arch2.txt >>arch2.txt
	./flip.sh a i arch2.txt >>arch2.txt
done
#Por último, se muestra lo que hay en la última versión de arch2.txt.
cat arch2.txt
