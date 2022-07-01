Algoritmo DensidadMacroplancton // Este algoritmo es para calcular la densidad de individuos de macrozooplacton por cada 1000 m3
	
	Definir Norgx1000 Como Real // Densidad de individuos en 1000 m3
	Definir N Como Entero // Número de individuos contados en la muestra
	Definir Vf Como Real // Volumen filtrado de la muestra en m3
	Escribir "¿Cuál es el número de individuos contados en la muestra?"
	Leer N
	Escribir "¿Cuál es el volumen de agua filtrada en m3?"
	Leer Vf
	Norgx1000= (N/Vf)*1000  // Cálculo de la densidad de individuos de macrozooplacton por cada 1000 m3
	Escribir "El resultado de la densidad de individuos de macrozooplancton es: ", redon(Norgx1000), " ind/1000 m3"
	
FinAlgoritmo