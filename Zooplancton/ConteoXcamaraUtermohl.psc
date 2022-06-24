Algoritmo ConteoXcamaraUtermohl
	
	Definir Fd Como Real // Factor de dilución de la muestra.
	Definir VCs Como Real // Volumen de la columna de sedimentación
	Definir vc Como Real // Volumen de la cámara de observación
	Definir N1 Como Real // Número de célula por unidad de volumen
	Definir n2 Como Entero // Número de medio de conteo por campo
	Definir Ac Como Real // Área de la cámara expresada en milímetros cuadrados (mm2)
	Definir ap Como Real // Área del campo óptico o de la cuadrícula utilizada expresada en milímetros cuadrados (mm2)
	Definir v Como Real // Volumen sedimentado expresado en mililitros (ml)
	Definir diamcamara Como Real // Diámetro de la cámara de observación en milímetros 
	Definir diamcampo Como Real // Diámetro del campo de observación en milímetros 
	Definir OrgL Como Real // Densidad de microzooplancton.
	Definir UsuarioEscoge Como Entero
	Escribir "¿Cúal es el cálculo que va a realizar?"; 
	Escribir "Escoja un número:"
	Escribir "1. Cálculo de cámara completa"
	Escribir "2. Cálculo por campos"
	Escribir "Digite su selección: "
	Leer UsuarioEscoge
	Si UsuarioEscoge < 1 o UsuarioEscoge > 2 Entonces
		Repetir
			Escribir "Escoja de nuevo un valor entre 1 y 2 y digítelo:"
			Leer UsuarioEscoge
		Hasta Que UsuarioEscoge > 0 y UsuarioEscoge < 3
	FinSi
	Si UsuarioEscoge ==1 Entonces
		Escribir "¿Cúal es el volumen de la columna de sedimentación en mL?"
		Leer VCs
		Escribir "¿Cúal es el volumen de la cámara de observación en mL?"
		Leer vc
		Fd= VCs/vc // Factor de dilución de la muestra
		Escribir "¿Cuál es el volumen sedimentado en mL?"
		Leer v
		Escribir "¿Cúal es el número de organismos contados en el total de la cámara?"
		Leer N1
		OrgL=N1*Fd/v
		Escribir "La densidad del microzooplancton es de: ", OrgL, " Organismos por litro"
	FinSi
	Si UsuarioEscoge ==2 Entonces
		Escribir "¿Cúal es el volumen de la columna de sedimentación en mL?"
		Leer VCs
		Escribir "¿Cúal es el volumen de la cámara de observación en mL?"
		Leer vc
		Fd= VCs/vc // Factor de dilución de la muestra
		Escribir "El factor de dilución es: ", Fd
		Escribir "¿Cúal es el diámetro de la cámara de observación en mm?"
		Leer diamcamara
		Ac=2*3.141618*(diamcamara/2)
		Escribir "¿Cúal es el diámetro del campo de observación en mm?"
		Leer diamcampo
		ap=2*3.141618*(diamcampo/2)
		Escribir "¿Cúal es el número de campos que contó?"
		Leer n2
		Escribir "¿Cuál es el volumen sedimentado en mL?"
		Leer v
		N1= n2*((Ac*Fd)/(ap*v))  // Cálculo del número de célula por unidad de volumen
		Escribir "El número de células en el total de la cámara es: ", N1
		OrgL=N1*Fd/v
		Escribir "La densidad del microzooplancton es de: ", OrgL, " Organismos por litro"	
	FinSi
	
FinAlgoritmo
