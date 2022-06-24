Algoritmo ConteoXcamaraUtermohl
	
	Definir Fd Como Real // Factor de diluci�n de la muestra.
	Definir VCs Como Real // Volumen de la columna de sedimentaci�n
	Definir vc Como Real // Volumen de la c�mara de observaci�n
	Definir N1 Como Real // N�mero de c�lula por unidad de volumen
	Definir n2 Como Entero // N�mero de medio de conteo por campo
	Definir Ac Como Real // �rea de la c�mara expresada en mil�metros cuadrados (mm2)
	Definir ap Como Real // �rea del campo �ptico o de la cuadr�cula utilizada expresada en mil�metros cuadrados (mm2)
	Definir v Como Real // Volumen sedimentado expresado en mililitros (ml)
	Definir diamcamara Como Real // Di�metro de la c�mara de observaci�n en mil�metros 
	Definir diamcampo Como Real // Di�metro del campo de observaci�n en mil�metros 
	Definir OrgL Como Real // Densidad de microzooplancton.
	Definir UsuarioEscoge Como Entero
	Escribir "�C�al es el c�lculo que va a realizar?"; 
	Escribir "Escoja un n�mero:"
	Escribir "1. C�lculo de c�mara completa"
	Escribir "2. C�lculo por campos"
	Escribir "Digite su selecci�n: "
	Leer UsuarioEscoge
	Si UsuarioEscoge < 1 o UsuarioEscoge > 2 Entonces
		Repetir
			Escribir "Escoja de nuevo un valor entre 1 y 2 y dig�telo:"
			Leer UsuarioEscoge
		Hasta Que UsuarioEscoge > 0 y UsuarioEscoge < 3
	FinSi
	Si UsuarioEscoge ==1 Entonces
		Escribir "�C�al es el volumen de la columna de sedimentaci�n en mL?"
		Leer VCs
		Escribir "�C�al es el volumen de la c�mara de observaci�n en mL?"
		Leer vc
		Fd= VCs/vc // Factor de diluci�n de la muestra
		Escribir "�Cu�l es el volumen sedimentado en mL?"
		Leer v
		Escribir "�C�al es el n�mero de organismos contados en el total de la c�mara?"
		Leer N1
		OrgL=N1*Fd/v
		Escribir "La densidad del microzooplancton es de: ", OrgL, " Organismos por litro"
	FinSi
	Si UsuarioEscoge ==2 Entonces
		Escribir "�C�al es el volumen de la columna de sedimentaci�n en mL?"
		Leer VCs
		Escribir "�C�al es el volumen de la c�mara de observaci�n en mL?"
		Leer vc
		Fd= VCs/vc // Factor de diluci�n de la muestra
		Escribir "El factor de diluci�n es: ", Fd
		Escribir "�C�al es el di�metro de la c�mara de observaci�n en mm?"
		Leer diamcamara
		Ac=2*3.141618*(diamcamara/2)
		Escribir "�C�al es el di�metro del campo de observaci�n en mm?"
		Leer diamcampo
		ap=2*3.141618*(diamcampo/2)
		Escribir "�C�al es el n�mero de campos que cont�?"
		Leer n2
		Escribir "�Cu�l es el volumen sedimentado en mL?"
		Leer v
		N1= n2*((Ac*Fd)/(ap*v))  // C�lculo del n�mero de c�lula por unidad de volumen
		Escribir "El n�mero de c�lulas en el total de la c�mara es: ", N1
		OrgL=N1*Fd/v
		Escribir "La densidad del microzooplancton es de: ", OrgL, " Organismos por litro"	
	FinSi
	
FinAlgoritmo
