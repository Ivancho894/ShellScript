#!/bin/bash
titulo=$1
NLINEAS=70
o=$(awk -v NLINEAS="$NLINEAS" -v titulo="$titulo" '{printf "%s %s %i \n\n", $0, titulo, NR} {printf "\n"}' ls.txt)
echo $o