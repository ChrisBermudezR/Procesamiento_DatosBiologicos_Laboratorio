Algoritmo Macroinvertebrados
	
	Definir Mft Como Entero // Numero de morfotipos
	Definir A Como Real // Unidad de Área monitoreada. Esta es en área que se genera por la draga
	Definir V Como Real // Unidad de Volumen monitoreada. Este es el volumen total de sedimento que se obtiene con la muestra
	Definir Ind Como Entero // Numero de individuos
	Definir D_MftA Como Real // Densidad de morfotipos por área
	Definir D_MftV Como Real // Densidad de morfotipos por volumen
	Definir D_IndA Como Real // Densidad de individuos por área
	Definir D_IndV Como Real // Densidad de individuos por volumen
	Definir UsuarioEscoge Como Entero
	Escribir "¿Cúal es el cálculo que va a realizar?"; 
	Escribir "Escoja un número:"
	Escribir "1. Densidad de morfotipos por área"
	Escribir "2. Densidad de morfotipos por volumen"
	Escribir "3. Densidad de individuos por área"
	Escribir "4. Densidad de individuos por volumen"
	Escribir "Digite su selección: "
	Leer UsuarioEscoge
	Si UsuarioEscoge == 1 Entonces
		Escribir "¿Cuál es el número de mortipos contados en la muestra?"
		Leer Mft
		Escribir "¿Cúal es el valor en m2 del área monitoreada?"
		Leer A
		D_MftA= Mft/A  //Cálculo de densidad morfotipos por área
		Escribir "El resultado de la cantidad de morfotipos por área es: ", D_MftA, " morfotipos / m2"
	FinSi	
	Si	UsuarioEscoge == 2 Entonces
			Escribir "¿Cuál es el número de mortipos contados en la muestra?"
			Leer Mft
			Escribir "¿Cúal es el valor en cm3 del volumen obtenido?"
			Leer V
			D_MftV= Mft/V  //Cálculo de densidad morfotipos por voluemn
			Escribir "El resultado de la cantidad de morfotipos por volumen es: ", D_MftV, " morfotipos / cm3"	
	FinSi		
	Si UsuarioEscoge == 3 Entonces
		Escribir "¿Cuál es el número de individuos contados en la muestra?"
		Leer Ind
		Escribir "¿Cúal es el valor en m2 del área monitoreada?"
		Leer A
		D_IndA= Ind/A  //Cálculo de densidad individuos por área
		Escribir "El resultado de la cantidad de individuos por área es: ", D_IndA, " individuos / m2"	
	FinSi
	Si UsuarioEscoge == 4 Entonces
		Escribir "¿Cuál es el número de individuos contados en la muestra?"
		Leer Ind
		Escribir "¿Cúal es el valor en cm3 del volumen obtenido?"
		Leer V
		D_IndV= Ind/V  //Cálculo de densidad individuos por voluemn
		Escribir "El resultado de la cantidad de individuos por volumen es: ", D_IndV, " individuos / cm3"
	FinSi	
	Si UsuarioEscoge < 0 o UsuarioEscoge > 4 Entonces
			Escribir "Escoja de nuevo un valor entre 1 y 4, y ejecute de nuevo el algoritmo"
	FinSi
		
FinAlgoritmo
	