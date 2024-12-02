#!/bin/bash

# a=$(wc -w <<< "$*")
# echo $a
# b=''
# for (i=$a;i>=0;i++) do
# b=$b a[i]
# done
# echo $b


frase=$*

a=$(echo $frase | awk '{for (i=NF; i<0; i--) printf "%s ";}')
echo $a
b=$(echo $frase | awk '{for (i=NF; i>0; i--) printf "%s ", $i; print ""}')
echo $b l

echo "tamanios:"
# max=0
# total=0
# t=$(ls -l | awk 'if($3>$max) max=$3; total=$total+$3;')
# echo total $total max: $max cant: $(ls -l | awk 'if(NR==NF) NR;')
cant=$(ls -l | wc -l)
d=$( ls -l | awk 'BEGIN {max=0; total=0} {if($5>max) max=$5; total+=$5;} END {printf "total: %i max: %i cant: ",total,max;}')
echo $d $cant


l=0
pos=7
g=$(ls -l)

for h in $g; do
    l=$((l + 1))
    if [ $pos -eq $l ]; then
        echo $h
        pos=$((pos + 9))
    fi
done
# Variables iniciales
pos=7
count=0

# Guardamos la salida de ls -l en una variable
output=$(ls -l)

# Iterar sobre cada palabra en la salida
for word in $output; do
    count=$((count + 1))  # Incrementamos el contador por cada palabra
    if [ $count -eq $pos ]; then
        echo $word  # Imprimimos la palabra en la posición deseada
        pos=$((pos + 9))  # Incrementamos la posición en 5 para la próxima palabra a imprimir
    fi
done



i=0
numlinea=0
pos=9
linea=""
for a in $(cat ls.txt);do
    linea="$linea $a"
    i=$((i + 1))
    if [ $pos -eq $i ];then
        numlinea=$(( numlinea + 1 ))
        pos=$((pos + 9))
        echo $linea $1 $numlinea
        linea=""
    fi
    done