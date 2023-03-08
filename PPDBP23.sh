#!/bin/bash

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
				echo "Usted esta en la seccion $opt, seleccione la opcion qe desea uilizar"
				select opt2 in  "${optionsub[@]}"
				do
					case $opt2 in
					"Agregar informacion")
						echo "Se agrega info ..."
						;;
					"Buscar")
						echo "Buscamos info ..."
						;;
					"Eliminar informacion")
						echo "Eliminamos info ..."
						;;
					"Leer base de informacion")
						echo "Se lee toda la info ..."
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
				echo "Usted esta en la seccion $opt, seleccione la opcion qe desea uilizar"
                                select opt2 in  "${optionsub[@]}"
                                do
                                        case $opt2 in
                                        "Agregar informacion")
                                                echo "Se agrega info ..."
                                                ;;
                                        "Buscar")
                                                echo "Buscamos info ..."
                                                ;;
                                        "Eliminar informacion")
                                                echo "Eliminamos info ..."
                                                ;;
                                        "Leer base de informacion")
                                                echo "Se lee toda la info ..."
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
				echo "Usted esta en la seccion $opt, seleccione la opcion qe desea uilizar"
                                select opt2 in  "${optionsub[@]}"
                                do
                                        case $opt2 in
                                        "Agregar informacion")
                                                echo "Se agrega info ..."
                                                ;;
                                        "Buscar")
                                                echo "Buscamos info ..."
                                                ;;
                                        "Eliminar informacion")
                                                echo "Eliminamos info ..."
                                                ;;
                                        "Leer base de informacion")
                                                echo "Se lee toda la info ..."
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
				echo "Usted esta en la seccion $opt, seleccione la opcion qe desea uilizar"
                                select opt2 in  "${optionsub[@]}"
                                do
                                        case $opt2 in
                                        "Agregar informacion")
                                                echo "Se agrega info ..."
                                                ;;
                                        "Buscar")
                                                echo "Buscamos info ..."
                                                ;;
                                        "Eliminar informacion")
                                                echo "Eliminamos info ..."
                                                ;;
                                        "Leer base de informacion")
                                                echo "Se lee toda la info ..."
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
		t) echo "usaste -t"
		optionst=("Cascada" "Espiral" "ModeloV" "Salir del menu")
		optionsubt=("Agregar informacion" "Buscar" "Eliminar informacion" "Leer base de informacion" "Salir del menu")
                select opt in "${optionst[@]}"
                do
                        case $opt in
                        "Cascada")
                                echo "Usted esta en la seccion $opt, seleccione la opcion qe desea uilizar"
                                select opt2 in  "${optionsubt[@]}"
                                do
                                        case $opt2 in
                                        "Agregar informacion")
                                                echo "Se agrega info ..."
                                                ;;
                                        "Buscar")
                                                echo "Buscamos info ..."
                                                ;;
                                        "Eliminar informacion")
                                                echo "Eliminamos info ..."
                                                ;;
                                        "Leer base de informacion")
                                                echo "Se lee toda la info ..."
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
                                echo "Usted esta en la seccion $opt, seleccione la opcion qe desea uilizar"
                                select opt2 in  "${optionsubt[@]}"
                                do
                                        case $opt2 in
                                        "Agregar informacion")
                                                echo "Se agrega info ..."
                                                ;;
                                        "Buscar")
                                                echo "Buscamos info ..."
                                                ;;
                                        "Eliminar informacion")
                                                echo "Eliminamos info ..."
                                                ;;
                                        "Leer base de informacion")
                                                echo "Se lee toda la info ..."
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
                                echo "Usted esta en la seccion $opt, seleccione la opcion qe desea uilizar"
                                select opt2 in  "${optionsubt[@]}"
                                do
                                        case $opt2 in
                                        "Agregar informacion")
                                                echo "Se agrega info ..."
                                                ;;
                                        "Buscar")
                                                echo "Buscamos info ..."
                                                ;;
                                        "Eliminar informacion")
                                                echo "Eliminamos info ..."
                                                ;;
                                        "Leer base de informacion")
                                                echo "Se lee toda la info ..."
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
