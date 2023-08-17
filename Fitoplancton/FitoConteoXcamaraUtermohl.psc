Algoritmo ConteoXcamaraUtermohl
	Definir V Como Real // Volumen de la c�mara expresado en mililitros (ml)
	Definir Nml Como Real // N�mero de c�lulas contados por mililitros
	definir At Como Real // �rea total de la c�mara en mm2
	Definir F Como Real // �rea del campo �ptico o de la cuadr�cula utilizada expresada en mil�metros cuadrados (mm2)
	definir Af Como Entero //N�mero de campor contados
	Definir diamcamara Como Real // Di�metro de la c�mara de observaci�n en mil�metros 
	Definir diamcampo Como Real // Di�metro del campo de observaci�n en mil�metros 
	Definir C Como Entero // N�mero de c�lulas contados en la c�mara
	Definir CelL Como Real // Densidad de microzooplancton.
	Definir L Como Real //Longitud de la tira, mm
	Definir Lt Como Real //Longitud total de tiras
	Definir W Como Real //Amplitud de la tira, mm
	Definir S Como Entero //N�mero de tiras contadas
	Definir UsuarioEscoge Como Entero
	Definir contador Como Entero //Contador
	Lt=0
	contador=0
	
	Escribir "�Cu�l es el c�lculo que va a realizar?"; 
	Escribir "Escoja un n�mero:"
	Escribir "1. C�lculo de c�mara completa"
	Escribir "2. C�lculo por campos"
	Escribir "3. Conteo por tiras"
	Escribir "Digite su selecci�n: "
	Leer UsuarioEscoge
	
	Si UsuarioEscoge < 1 o UsuarioEscoge > 3 Entonces
		Repetir
			Escribir "Escoja de nuevo un valor entre 1 y 3 y dig�telo:"
			Leer UsuarioEscoge
		Hasta Que UsuarioEscoge > 0 y UsuarioEscoge < 4
	FinSi
	
	Si UsuarioEscoge ==1 Entonces
		V=3
		Escribir "�Cu�l es el n�mero de c�lulas contados en el total de la c�mara?"
		Leer C
		CelL=C*1000/V
		Escribir "La densidad del fitoplancton es de: ", CelL, " C�lulas por litro"
	FinSi
	
	Si UsuarioEscoge ==2 Entonces
		Escribir "�Cu�l es el di�metro de la c�mara de observaci�n en mm?"
		Leer diamcamara
		Escribir "�Cu�l es el �rea del campo de observaci�n en mm?"
		Leer diamcampo
		Si diamcampo > diamcamara Entonces
			Repetir 
				Escribir "El valor del di�metro del campo debe ser menor que el di�metro de la c�mara, los valores que usted ingres� son:"
				Escribir "Di�metro de c�mara: ", diamcamara
				Escribir " Di�metro de campo: ", diamcampo
				Escribir "Por favor digite de nuevo los valores"	
				Escribir "�Cu�l es el di�metro de la c�mara de observaci�n en mm?"
				Leer diamcamara
				Escribir "�Cu�l es el �rea del campo de observaci�n en mm?"
				Leer diamcampo
			Hasta Que diamcampo < diamcamara
		FinSi
		At=3.141618*(diamcamara/2)^2
		F=3.141618*(diamcampo/2)^2
		Escribir "�Cu�l es el n�mero de c�lulas contados?"
		Leer C
		Escribir "�Cu�l es el n�mero de campos que cont�?"
		Leer Af
		V=3
		Nml= ((C*At)/(Af*F*V))  // C�lculo del n�mero de c�lulas por unidad de volumen
		Escribir "El n�mero de c�lulas en el total de la c�mara es: ", Nml
		CelL=Nml*1000
		Escribir "La densidad del fitoplancton es de: ", CelL, " C�lulas por litro"	
	FinSi
	
	Si UsuarioEscoge ==3 Entonces
		Escribir "�Cu�ntas tiras cont�?"
		Leer S
		Para contador<-1 Hasta S Con Paso 1 Hacer
			Escribir "�Cu�l es la longitud de la tira ",contador, " en mm?"
			Leer L
			Lt=Lt+L
		Fin Para
		Escribir Lt
		Escribir "�Cu�l es la amplitud de la tira en mm?"
		Leer W
		Escribir "�Cu�l es el n�mero de c�lulas contados?"
		Leer C
		Escribir "�Cu�l es el di�metro de la c�mara de observaci�n en mm?"
		Leer diamcamara
		At=3.141618*(diamcamara/2)^2
		V=3
		Nml= ((C*At)/(Lt*W*S*V))  // C�lculo del n�mero de c�lulas por unidad de volumen
		Escribir "El n�mero de c�lulas en el total de la c�mara es: ", Nml
		CelL=Nml*1000
		Escribir "La densidad del fitoplancton es de: ", CelL, " C�lulas por litro"
	FinSi
FinAlgoritmo
