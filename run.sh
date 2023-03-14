#!/bin/bash
path=$(pwd)
echo "$path"
echo "Bienvenido al proyecto del primer parcial"
echo "Ingrese a si quiere el menu de agile o t si quiere el menu sobre lo tradicional"
read opt
case $opt in
	a) echo "Escogiste a"
	   $path/PPDBP23.sh -a
		;;
	t) echo "Escogiste t"
	   $path/PPDBP23.sh -t
		;;
	*) echo "Opcion incorrectoa, vuelve a intentar"
		;;
esac
