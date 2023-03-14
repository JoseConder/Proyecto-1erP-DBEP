#!/bin/bash

agregarInformacion() {
		echo "ingrese el nombre del concepto"
        	read concepto
        	echo "ingrese la definicion del concepto"
        	read def
        	echo "$concepto .- $def" >> $log
		echo -e "\n"


}

buscar() {
	echo "Buscamos info ..."
        echo "Escriba la palabra que desea buscar"
        read palabra
	echo -e "\n"
        grep -iqw "$palabra" $log && grep $palabra $log || echo "La palabra NO existe"
}

eliminarInformacion() {
	echo "Eliminamos info ..."
	echo "Escriba la palabra que desea eliminar"
        read palabra
	echo -e "\n"
        grep -iqw "$palabra" $log && sed -i "/$palabra/d" $log && echo "la palabra se elimino" || echo "La palabra $palabra NO EXISTE por tanto no se puede eliminar"
}

mostrarmenuA(){
	echo ""
	echo "Bienvenido a la guia rapida de Agile, para continuar seleccione un tema: "
	echo "1) SCRUM"
	echo "2) X.P."
	echo "3) Kanban"
	echo "4) Crystal"
	echo "5) Salir del menu"
}

mostrarmenuT(){
	echo ""
	echo "Bienvenido a la guia rapida de Tradicional, para continuar seleccione un tema:"
	echo "1) Cascada"
	echo "2) Espiral"
	echo "3) ModeloV"
	echo "4) Salir del menu"
}

mostrarsubmenuA(){
	echo -e "\n"
	echo "Seleccione la opcion que desea uilizar"
	echo "1) Agregar informacion"
	echo "2) Buscar"
	echo "3) Eliminar informacion"
	echo "4) Leer base de informacion"
	echo "5) Salir del menu"
	echo "6) Salir del programa"
}




while getopts 'at' flag
do
	case "${flag}" in
		a) echo "Bienvenido a la guia rapida de Agile, para continuar seleccione un tema:"
		optionsa=("SCRUM" "X.P." "Kanban" "Crystal" "Salir del menu")
		optionsub=("Agregar informacion" "Buscar" "Eliminar informacion" "Leer base de informacion" "Salir del menu" "Salir del programa")
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
						mostrarsubmenuA
						;;
					"Buscar")
						buscar
						mostrarsubmenuA
						;;
					"Eliminar informacion")
						eliminarInformacion
						mostrarsubmenuA
						;;
					"Leer base de informacion")
						echo "BASE DE INFORMACION DE $opt"
						cat $log
						mostrarsubmenuA
						;;
					"Salir del menu")
						mostrarmenuA
						break
						;;
					"Salir del programa")
						echo "Has salido del programa"
						exit 0
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
						mostrarsubmenuA
                                                ;;
                                        "Buscar")
                                                buscar
						mostrarsubmenuA
                                                ;;
                                        "Eliminar informacion")
                                                eliminarInformacion
						mostrarsubmenuA
                                                ;;
                                        "Leer base de informacion")
						echo "BASE DE INFORMACION DE $opt"
                                                cat $log
						mostrarsubmenuA
                                                ;;
                                        "Salir del menu")
						mostrarmenuA
                                                break
                                                ;;
                                        "Salir del programa")
                                                echo "Has salido del programa"
                                                exit 0
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
						mostrarsubmenuA
                                                ;;
                                        "Buscar")
                                                buscar
						mostrarsubmenuA
                                                ;;
                                        "Eliminar informacion")
                                                eliminarInformacion
						mostrarsubmenuA
                                                ;;
                                        "Leer base de informacion")
						echo "BASE DE INFORMACION DE $opt"
                                                cat $log
						mostrarsubmenuA
                                                ;;
                                        "Salir del menu")
						mostrarmenuA
                                                break
                                                ;;
                                        "Salir del programa")
                                                echo "Has salido del programa"
                                                exit 0
                                                ;;
                                        *)
                                                echo "opcion incorrecta"
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
						mostrarsubmenuA
                                                ;;
                                        "Buscar")
                                                buscar
						mostrarsubmenuA
                                                ;;
                                        "Eliminar informacion")
                                                eliminarInformacion
						mostrarsubmenuA
                                                ;;
                                        "Leer base de informacion")
						echo "BASE DE INFORMACION DE $opt"
                                                cat $log
						mostrarsubmenuA
                                                ;;
                                        "Salir del menu")
						mostrarmenuA
                                                break
                                                ;;
                                        "Salir del programa")
                                                echo "Has salido del programa"
                                                exit 0
                                                ;;
                                        *)
                                                echo "opcion incorrecta"
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
		t)echo "Bienvenido a la guia rapida de Tradicional, para continuar seleccione un tema:"
		optionst=("Cascada" "Espiral" "ModeloV" "Salir del menu")
		optionsubt=("Agregar informacion" "Buscar" "Eliminar informacion" "Leer base de informacion" "Salir del menu" "Salir del programa")
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
						mostrarsubmenuA
                                                ;;
                                        "Buscar")
                                                buscar
						mostrarsubmenuA
                                                ;;
                                        "Eliminar informacion")
                                                eliminarInformacion
						mostrarsubmenuA
                                                ;;
                                        "Leer base de informacion")
						echo "BASE DE INFORMACION DE $opt"
                                                cat $log
						mostrarsubmenuA
                                                ;;
                                        "Salir del menu")
						mostrarmenuT
                                                break
                                                ;;
					"Salir del programa")
						echo "Has salido del programa"
						exit 0
						;;
                                        *)
                                                echo "opcion incorrecta"
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
						mostrarsubmenuA
                                                ;;
                                        "Buscar")
                                                buscar
						mostrarsubmenuA
                                                ;;
                                        "Eliminar informacion")
                                                eliminarInformacion
						mostrarsubmenuA
                                                ;;
                                        "Leer base de informacion")
						echo "BASE DE INFORMACION DE $opt"
                                                cat $log
						mostrarsubmenuA
                                                ;;
                                        "Salir del menu")
						mostrarmenuT
                                                break
                                                ;;
                                        "Salir del programa")
                                                echo "Has salido del programa"
                                                exit 0
                                                ;;
                                        *)
                                                echo "opcion incorrecta"
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
						mostrarsubmenuA
                                                ;;
                                        "Buscar")
                                                buscar
						mostrarsubmenuA
                                                ;;
                                        "Eliminar informacion")
                                                eliminarInformacion
						mostrarsubmenuA
                                                ;;
                                        "Leer base de informacion")
						echo "BASE DE INFORMACION DE $opt"
                                                cat $log
						mostrarsubmenuA
                                                ;;
                                        "Salir del menu")
						mostrarmenuT
                                                break
                                                ;;
                                        "Salir del programa")
                                                echo "Has salido del programa"
                                                exit 0
                                                ;;
                                        *)
                                                echo "opcion incorrecta"
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
