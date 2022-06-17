Algoritmo Macroinvertebrados
	
	Definir Mft Como Entero // Numero de morfotipos
	Definir A Como Real // Unidad de �rea monitoreada. Esta es en �rea que se genera por la draga
	Definir V Como Real // Unidad de Volumen monitoreada. Este es el volumen total de sedimento que se obtiene con la muestra
	Definir Ind Como Entero // Numero de individuos
	Definir D_MftA Como Real // Densidad de morfotipos por �rea
	Definir D_MftV Como Real // Densidad de morfotipos por volumen
	Definir D_IndA Como Real // Densidad de individuos por �rea
	Definir D_IndV Como Real // Densidad de individuos por volumen
	Definir UsuarioEscoge Como Entero
	Escribir "�C�al es el c�lculo que va a realizar?"; 
	Escribir "Escoja un n�mero:"
	Escribir "1. Densidad de morfotipos por �rea"
	Escribir "2. Densidad de morfotipos por volumen"
	Escribir "3. Densidad de individuos por �rea"
	Escribir "4. Densidad de individuos por volumen"
	Escribir "Digite su selecci�n: "
	Leer UsuarioEscoge
	Si UsuarioEscoge == 1 Entonces
		Escribir "�Cu�l es el n�mero de mortipos contados en la muestra?"
		Leer Mft
		Escribir "�C�al es el valor en m2 del �rea monitoreada?"
		Leer A
		D_MftA= Mft/A  //C�lculo de densidad morfotipos por �rea
		Escribir "El resultado de la cantidad de morfotipos por �rea es: ", D_MftA, " morfotipos / m2"
	FinSi	
	Si	UsuarioEscoge == 2 Entonces
			Escribir "�Cu�l es el n�mero de mortipos contados en la muestra?"
			Leer Mft
			Escribir "�C�al es el valor en cm3 del volumen obtenido?"
			Leer V
			D_MftV= Mft/V  //C�lculo de densidad morfotipos por voluemn
			Escribir "El resultado de la cantidad de morfotipos por volumen es: ", D_MftV, " morfotipos / cm3"	
	FinSi		
	Si UsuarioEscoge == 3 Entonces
		Escribir "�Cu�l es el n�mero de individuos contados en la muestra?"
		Leer Ind
		Escribir "�C�al es el valor en m2 del �rea monitoreada?"
		Leer A
		D_IndA= Ind/A  //C�lculo de densidad individuos por �rea
		Escribir "El resultado de la cantidad de individuos por �rea es: ", D_IndA, " individuos / m2"	
	FinSi
	Si UsuarioEscoge == 4 Entonces
		Escribir "�Cu�l es el n�mero de individuos contados en la muestra?"
		Leer Ind
		Escribir "�C�al es el valor en cm3 del volumen obtenido?"
		Leer V
		D_IndV= Ind/V  //C�lculo de densidad individuos por voluemn
		Escribir "El resultado de la cantidad de individuos por volumen es: ", D_IndV, " individuos / cm3"
	FinSi	
	Si UsuarioEscoge < 0 o UsuarioEscoge > 4 Entonces
			Escribir "Escoja de nuevo un valor entre 1 y 4, y ejecute de nuevo el algoritmo"
	FinSi
		
FinAlgoritmo
	