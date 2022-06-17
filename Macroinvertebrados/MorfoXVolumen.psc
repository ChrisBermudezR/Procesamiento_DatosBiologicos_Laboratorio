Algoritmo MorfoXVolumen
	Definir D_Mft Como Real // Densidad de morfotipos por volumen
	Definir Mft Como Entero // Numero de morfotipos
	Definir V Como Real // Unidad de Volumen monitoreada. Este es el volumen total de sedimento que se obtiene con la muestra
	Escribir "¿Cuál es el número de mortipos contados en la muestra?"
	Leer Mft
	Escribir "¿Cúal es el valor en cm3 del volumen obtenido?"
	Leer V
	D_Mft= Mft/V  //Cálculo de densidad morfotipos por voluemn
	Escribir "El resultado de la cantidad de morfotipos por volumen es: ", D_Mft, " morfotipos / cm3"
FinAlgoritmo
