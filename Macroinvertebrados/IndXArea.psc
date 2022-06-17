Algoritmo IndXArea
	Definir D_Ind Como Real // Densidad de individuos por área
	Definir Ind Como Entero // Numero de individuos
	Definir A Como Real // Unidad de Área monitoreada. Esta es en área que se genera por la draga
	Escribir "¿Cuál es el número de individuos contados en la muestra?"
	Leer Ind
	Escribir "¿Cúal es el valor en m2 del área monitoreada?"
	Leer A
	D_Ind= Ind/A  //Cálculo de densidad individuos por área
	Escribir "El resultado de la cantidad de individuos por área es: ", D_Ind, " individuos / m2"
FinAlgoritmo
