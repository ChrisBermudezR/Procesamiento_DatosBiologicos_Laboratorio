Algoritmo IndXVolumen
	Definir D_Ind Como Real // Densidad de individuos por volumen
	Definir Ind Como Entero // Numero de individuos
	Definir V Como Real // Unidad de Volumen monitoreada. Este es el volumen total de sedimento que se obtiene con la muestra
	Escribir "¿Cuál es el número de individuos contados en la muestra?"
	Leer Ind
	Escribir "¿Cúal es el valor en cm3 del volumen obtenido?"
	Leer V
	D_Ind= Ind/V  //Cálculo de densidad individuos por voluemn
	Escribir "El resultado de la cantidad de individuos por volumen es: ", D_Ind, " individuos / cm3"
FinAlgoritmo
