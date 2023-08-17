Algoritmo ConteoXcamaraUtermohl
	Definir V Como Real // Volumen de la cámara expresado en mililitros (ml)
	Definir Nml Como Real // Número de células contados por mililitros
	definir At Como Real // Área total de la cámara en mm2
	Definir F Como Real // Área del campo óptico o de la cuadrícula utilizada expresada en milímetros cuadrados (mm2)
	definir Af Como Entero //Número de campor contados
	Definir diamcamara Como Real // Diámetro de la cámara de observación en milímetros 
	Definir diamcampo Como Real // Diámetro del campo de observación en milímetros 
	Definir C Como Entero // Número de células contados en la cámara
	Definir CelL Como Real // Densidad de microzooplancton.
	Definir L Como Real //Longitud de la tira, mm
	Definir Lt Como Real //Longitud total de tiras
	Definir W Como Real //Amplitud de la tira, mm
	Definir S Como Entero //Número de tiras contadas
	Definir UsuarioEscoge Como Entero
	Definir contador Como Entero //Contador
	Lt=0
	contador=0
	
	Escribir "¿Cuál es el cálculo que va a realizar?"; 
	Escribir "Escoja un número:"
	Escribir "1. Cálculo de cámara completa"
	Escribir "2. Cálculo por campos"
	Escribir "3. Conteo por tiras"
	Escribir "Digite su selección: "
	Leer UsuarioEscoge
	
	Si UsuarioEscoge < 1 o UsuarioEscoge > 3 Entonces
		Repetir
			Escribir "Escoja de nuevo un valor entre 1 y 3 y digítelo:"
			Leer UsuarioEscoge
		Hasta Que UsuarioEscoge > 0 y UsuarioEscoge < 4
	FinSi
	
	Si UsuarioEscoge ==1 Entonces
		V=3
		Escribir "¿Cuál es el número de células contados en el total de la cámara?"
		Leer C
		CelL=C*1000/V
		Escribir "La densidad del fitoplancton es de: ", CelL, " Células por litro"
	FinSi
	
	Si UsuarioEscoge ==2 Entonces
		Escribir "¿Cuál es el diámetro de la cámara de observación en mm?"
		Leer diamcamara
		Escribir "¿Cuál es el área del campo de observación en mm?"
		Leer diamcampo
		Si diamcampo > diamcamara Entonces
			Repetir 
				Escribir "El valor del diámetro del campo debe ser menor que el diámetro de la cámara, los valores que usted ingresó son:"
				Escribir "Diámetro de cámara: ", diamcamara
				Escribir " Diámetro de campo: ", diamcampo
				Escribir "Por favor digite de nuevo los valores"	
				Escribir "¿Cuál es el diámetro de la cámara de observación en mm?"
				Leer diamcamara
				Escribir "¿Cuál es el área del campo de observación en mm?"
				Leer diamcampo
			Hasta Que diamcampo < diamcamara
		FinSi
		At=3.141618*(diamcamara/2)^2
		F=3.141618*(diamcampo/2)^2
		Escribir "¿Cuál es el número de células contados?"
		Leer C
		Escribir "¿Cuál es el número de campos que contó?"
		Leer Af
		V=3
		Nml= ((C*At)/(Af*F*V))  // Cálculo del número de células por unidad de volumen
		Escribir "El número de células en el total de la cámara es: ", Nml
		CelL=Nml*1000
		Escribir "La densidad del fitoplancton es de: ", CelL, " Células por litro"	
	FinSi
	
	Si UsuarioEscoge ==3 Entonces
		Escribir "¿Cuántas tiras contó?"
		Leer S
		Para contador<-1 Hasta S Con Paso 1 Hacer
			Escribir "¿Cuál es la longitud de la tira ",contador, " en mm?"
			Leer L
			Lt=Lt+L
		Fin Para
		Escribir Lt
		Escribir "¿Cuál es la amplitud de la tira en mm?"
		Leer W
		Escribir "¿Cuál es el número de células contados?"
		Leer C
		Escribir "¿Cuál es el diámetro de la cámara de observación en mm?"
		Leer diamcamara
		At=3.141618*(diamcamara/2)^2
		V=3
		Nml= ((C*At)/(Lt*W*S*V))  // Cálculo del número de células por unidad de volumen
		Escribir "El número de células en el total de la cámara es: ", Nml
		CelL=Nml*1000
		Escribir "La densidad del fitoplancton es de: ", CelL, " Células por litro"
	FinSi
FinAlgoritmo
