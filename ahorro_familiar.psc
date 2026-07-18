Algoritmo ahorro_familiar
	Definir opcion, totalAhorros Como Entero
	Definir i, j Como Entero
	Definir idBuscar Como Entero
	Definir encontrado Como Logico
	Definir siguienteID Como Entero
	Dimension id[100]
	Dimension integrante[100]
	Dimension fecha[100]
	Dimension monto[100]
	Dimension categoria[100]
	Dimension metodo[100]
	Dimension descripcion[100]
	Dimension estado[100]
	totalAhorros <- 0
	siguienteID <- 1
	//---------------------------------------//
	//--|menu_principal_de_ahorro_familiar|--//
	//---------------------------------------//
	Repetir
		Escribir "menu principal de ahorro familiar"
		Escribir "1) registrar ahorro"
		Escribir "2) editar ahorro"
		Escribir "3) eliminar ahorro"
		Escribir "4) buscar ahorro"
		Escribir "5) listar ahorros"
		Escribir "6) ver detalles del ahorro"
		Escribir "7) salir"
		Escribir "seleccione una opción:"
		Leer opcion
		Segun opcion Hacer
			//----------------------//
			//--|registrar_ahorro|--//
			//----------------------//
			1:
				Escribir "registrar ahorro familiar"
				id[totalAhorros + 1] <- siguienteID
				siguienteID <- siguienteID + 1
				Escribir "id asignado: ", id[totalAhorros + 1]
				Escribir "ingrese el nombre del integrante:"
				Leer integrante[totalAhorros + 1]
				Escribir "ingrese la fecha:"
				Leer fecha[totalAhorros + 1]
				Escribir "ingrese el monto:"
				Leer monto[totalAhorros + 1]
				Escribir "ingrese la categoría:"
				Leer categoria[totalAhorros + 1]
				Escribir "ingrese el método:"
				Leer metodo[totalAhorros + 1]
				Escribir "ingrese la descripción:"
				Leer descripcion[totalAhorros + 1]
				Escribir "ingrese el estado:"
				Leer estado[totalAhorros + 1]
				totalAhorros <- totalAhorros + 1
				Escribir "ahorro registrado correctamente."
			//-------------------//
			//--|editar_ahorro|--//
			//-------------------//
			2:
				Escribir "editar ahorro familiar"
				Si totalAhorros = 0 Entonces
					Escribir "no hay ahorros registrados."
				SiNo
					Escribir "datos registrados a editar"
					Para i <- 1 Hasta totalAhorros Hacer
						Escribir id[i], " | ", integrante[i], " | ", fecha[i], " | ", monto[i], " | ", categoria[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id del ahorro:"
					Leer idBuscar
					Escribir "función de edición disponible."
				FinSi
			//---------------------//
			//--|eliminar_ahorro|--//
			//---------------------//
			3:
				Escribir "eliminar ahorro familiar"
				Si totalAhorros = 0 Entonces
					Escribir "no hay ahorros registrados."
				SiNo
					Escribir "datos registrados a eliminar"
					Para i <- 1 Hasta totalAhorros Hacer
						Escribir id[i], " | ", integrante[i], " | ", fecha[i], " | ", monto[i], " | ", categoria[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id del ahorro:"
					Leer idBuscar
					Escribir "función de eliminación disponible."
				FinSi
			//-------------------//
			//--|buscar_ahorro|--//
			//-------------------//
			4:
				Escribir "buscar ahorro familiar"
				Si totalAhorros = 0 Entonces
					Escribir "no hay ahorros familiares registrados."
				SiNo
					Escribir "ingrese el id del ahorro familiar:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalAhorros Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "datos registrados encontrado"
							Escribir id[i], " | ", integrante[i], " | ", fecha[i], " | ", monto[i], " | ", categoria[i], " | ", metodo[i], " | ", descripcion[i], " | ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un ahorro familiar con ese id."
					FinSi
				FinSi
			//--------------------//
			//--|listar_ahorros|--//
			//--------------------//
			5:
				Escribir "listar ahorros familiar"
				Si totalAhorros = 0 Entonces
					Escribir "no hay ahorros registrados."
				SiNo
					Escribir "datos registrados"
					Para i <- 1 Hasta totalAhorros Hacer
						Escribir id[i], " | ", integrante[i], " | ", fecha[i], " | ", monto[i], " | ", categoria[i], " | ", estado[i]
					FinPara
				FinSi
			//-----------------------------//
			//--|ver_detalles_del_ahorro|--//
			//-----------------------------//
			6:
				Escribir "ver detalles del ahorro familiar"
				Si totalAhorros = 0 Entonces
					Escribir "no hay ahorros familiares registrados."
				SiNo
					Escribir "ingrese el id del ahorro familiar:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalAhorros Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "detalles del ahorro familiar"
							Escribir "id: ", id[i]
							Escribir "integrante: ", integrante[i]
							Escribir "fecha: ", fecha[i]
							Escribir "monto: ", monto[i]
							Escribir "categoría: ", categoria[i]
							Escribir "método: ", metodo[i]
							Escribir "descripción: ", descripcion[i]
							Escribir "estado: ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un ahorro familiar con ese id."
					FinSi
				FinSi
			//------------------------------//
			//--|salir_del_menu_principal|--//
			//------------------------------//				
			7:
				Escribir "gracias por utilizar ahorro familiar."
			De Otro Modo:
				Escribir "opción no válida."
		FinSegun
	Hasta Que opcion = 7
FinAlgoritmo