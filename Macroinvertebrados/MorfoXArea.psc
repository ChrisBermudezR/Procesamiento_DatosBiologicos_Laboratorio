Algoritmo MorfoXArea
	Definir D_Mft Como Real // Densidad de morfotipos por área
	Definir Mft Como Entero // Numero de morfotipos
	Definir A Como Real // Unidad de Área monitoreada. Esta es en área que se enrea por la draga
	Escribir "¿Cuál es el número de mortipos contados en la muestra?"
	Leer Mft
	Escribir "¿Cúal es el área monitoreada?"
	Leer A
	D_Mft= Mft/A  //Cálculo de densidad morfotipos por área
	Escribir "El resultado de la cantidad de morfotipos por área es:", D_Mft
FinAlgoritmo
