#!/bin/bash

agregarInformacion() {
		echo "ingrese el nombre del concepto"
        	read concepto
        	echo "ingrese la definicion del concepto"
        	read def
        	echo "$concepto .- $def" >> $log

}

buscar() {
	echo "Buscamos info ..."
        echo "Escriba la palabra que desea buscar"
        read palabra
        grep -iqw "$palabra" $log && echo "la palabra SI existe" || echo "La palabra NO existe"
}

eliminarInformacion() {
	echo "Eliminamos info ..."
	echo "Escriba la palabra que desea eliminar"
        read palabra
        grep -iqw "$palabra" $log && sed -i "/$palabra/d" $log && echo "la palabra se elimino" || echo "La palabra $palabra NO EXISTE por tanto no se puede eliminar"
}



while getopts 'at' flag
do
	case "${flag}" in
		a) echo "Bienvenido a la guia rapida de Agile, para continuar seleccione un tema:"
		optionsa=("SCRUM" "X.P." "Kanban" "Crystal" "Salir del menu")
		optionsub=("Agregar informacion" "Buscar" "Eliminar informacion" "Leer base de informacion" "Salir del menu")
		select opt in "${optionsa[@]}"
		do
			case $opt in
			"SCRUM")
				log="./SCRUM.inf"
                                if [ ! -e "$log" ]; then
					touch $log
                                fi
				echo "Usted esta en la seccion $opt, seleccione la opcion que desea uilizar"
				select opt2 in  "${optionsub[@]}"
				do
					case $opt2 in
					"Agregar informacion")
						agregarInformacion
						;;
					"Buscar")
						buscar
						;;
					"Eliminar informacion")
						eliminarInformacion
						;;
					"Leer base de informacion")
						echo "BASE DE INFORMACION DE $opt"
						cat $log
						;;
					"Salir del menu")
						break
						;;
					*)
						echo "opcion incorrecto"
						break
						;;
					esac
				done
				;;
			"X.P.")
				log="./X.P.inf"
                                if [ ! -e "$log" ]; then
                                        touch $log
                                fi
				echo "Usted esta en la seccion $opt, seleccione la opcion qe desea uilizar"
                                select opt2 in  "${optionsub[@]}"
                                do
                                        case $opt2 in
                                        "Agregar informacion")
                                                agregarInformacion
                                                ;;
                                        "Buscar")
                                                buscar
                                                ;;
                                        "Eliminar informacion")
                                                eliminarInformacion
                                                ;;
                                        "Leer base de informacion")
						echo "BASE DE INFORMACION DE $opt"
                                                cat $log
                                                ;;
                                        "Salir del menu")
                                                break
                                                ;;
                                        *)
                                                echo "opcion incorrecto"
                                                break
                                                ;;
                                        esac
                                done
                                ;;

			"Kanban")
				log="./Kanban.inf"
                                if [ ! -e "$log" ]; then
                                        touch $log
                                fi
				echo "Usted esta en la seccion $opt, seleccione la opcion qe desea uilizar"
                                select opt2 in  "${optionsub[@]}"
                                do
                                        case $opt2 in
                                        "Agregar informacion")
                                                agregarInformacion
                                                ;;
                                        "Buscar")
                                                buscar
                                                ;;
                                        "Eliminar informacion")
                                                eliminarInformacion
                                                ;;
                                        "Leer base de informacion")
						echo "BASE DE INFORMACION DE $opt"
                                                cat $log
                                                ;;
                                        "Salir del menu")
                                                break
                                                ;;
                                        *)
                                                echo "opcion incorrecto"
                                                break
                                                ;;
                                        esac
                                done
                                ;;
			"Crystal")
				log="./Crystal.inf"
                                if [ ! -e "$log" ]; then
                                        touch $log
                                fi
				echo "Usted esta en la seccion $opt, seleccione la opcion qe desea uilizar"
                                select opt2 in  "${optionsub[@]}"
                                do
                                        case $opt2 in
                                        "Agregar informacion")
                                                agregarInformacion
                                                ;;
                                        "Buscar")
                                                buscar
                                                ;;
                                        "Eliminar informacion")
                                                eliminarInformacion
                                                ;;
                                        "Leer base de informacion")
						echo "BASE DE INFORMACION DE $opt"
                                                cat $log
                                                ;;
                                        "Salir del menu")
                                                break
                                                ;;
                                        *)
                                                echo "opcion incorrecto"
                                                break
                                                ;;
                                        esac
                                done
                                ;;

			"Salir del menu")
				break
				;;
			*)
				echo "opcion invalida"
				break
				;;
			esac
		done
		;;
		t)
		optionst=("Cascada" "Espiral" "ModeloV" "Salir del menu")
		optionsubt=("Agregar informacion" "Buscar" "Eliminar informacion" "Leer base de informacion" "Salir del menu")
                select opt in "${optionst[@]}"
                do
                        case $opt in
                        "Cascada")
				log="./Cascada.inf"
                                if [ ! -e "$log" ]; then
                                        touch $log
                                fi
                                echo "Usted esta en la seccion $opt, seleccione la opcion qe desea uilizar"
                                select opt2 in  "${optionsubt[@]}"
                                do
                                        case $opt2 in
                                        "Agregar informacion")
                                                agregarInformacion
                                                ;;
                                        "Buscar")
                                                buscar
                                                ;;
                                        "Eliminar informacion")
                                                eliminarInformacion
                                                ;;
                                        "Leer base de informacion")
						echo "BASE DE INFORMACION DE $opt"
                                                cat $log
                                                ;;
                                        "Salir del menu")
                                                break
                                                ;;
                                        *)
                                                echo "opcion incorrecto"
                                                break
                                                ;;
                                        esac
                                done
                                ;;

                        "Espiral")
				log="./Espiral.inf"
                                if [ ! -e "$log" ]; then
                                        touch $log
                                fi
                                echo "Usted esta en la seccion $opt, seleccione la opcion qe desea uilizar"
                                select opt2 in  "${optionsubt[@]}"
                                do
                                        case $opt2 in
                                        "Agregar informacion")
                                                agregarInformacion
                                                ;;
                                        "Buscar")
                                                buscar
                                                ;;
                                        "Eliminar informacion")
                                                eliminarInformacion
                                                ;;
                                        "Leer base de informacion")
						echo "BASE DE INFORMACION DE $opt"
                                                cat $log
                                                ;;
                                        "Salir del menu")
                                                break
                                                ;;
                                        *)
                                                echo "opcion incorrecto"
                                                break
                                                ;;
                                        esac
                                done
                                ;;

                        "ModeloV")
				log="./ModeloV.inf"
                                if [ ! -e "$log" ]; then
                                        touch $log
                                fi
                                echo "Usted esta en la seccion $opt, seleccione la opcion qe desea uilizar"
                                select opt2 in  "${optionsubt[@]}"
                                do
                                        case $opt2 in
                                        "Agregar informacion")
                                                agregarInformacion
                                                ;;
                                        "Buscar")
                                                buscar
                                                ;;
                                        "Eliminar informacion")
                                                eliminarInformacion
                                                ;;
                                        "Leer base de informacion")
						echo "BASE DE INFORMACION DE $opt"
                                                cat $log
                                                ;;
                                        "Salir del menu")
                                                break
                                                ;;
                                        *)
                                                echo "opcion incorrecto"
                                                break
                                                ;;
                                        esac
                                done
                                ;;

                        "Salir del menu")
                                break
                                ;;
                        *)
                                echo "opcion invalida"
                                ;;
                        esac
                done
                ;;
	esac
done
