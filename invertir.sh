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