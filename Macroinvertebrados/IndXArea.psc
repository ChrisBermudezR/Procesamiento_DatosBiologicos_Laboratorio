Algoritmo IndXArea
	Definir D_Ind Como Real // Densidad de individuos por �rea
	Definir Ind Como Entero // Numero de individuos
	Definir A Como Real // Unidad de �rea monitoreada. Esta es en �rea que se genera por la draga
	Escribir "�Cu�l es el n�mero de individuos contados en la muestra?"
	Leer Ind
	Escribir "�C�al es el valor en m2 del �rea monitoreada?"
	Leer A
	D_Ind= Ind/A  //C�lculo de densidad individuos por �rea
	Escribir "El resultado de la cantidad de individuos por �rea es: ", D_Ind, " individuos / m2"
FinAlgoritmo
