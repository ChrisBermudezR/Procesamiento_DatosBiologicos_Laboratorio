Algoritmo ConteoXcamaraSedgwickRafter
	
	Definir NmL Como Real // número total de Células contados por mililitro
	Definir n Como Real // número de Células contados en la cámara
	
	Definir CelL Como Real // Número de Células por litro
	Definir CelmL Como Real // Número de Células por mililitro
	Definir V1 Como Real // Volumen concentrado de la muestra en mililitros
	Definir V2 Como Real // Volumen total de la alícuota en mililitros
	Definir V3 Como Real // Volumen de agua filtrada por la red en litros
	definir volfiltradatotal como Real// Volumen de agua filtrada por la red en litros
	Definir volumenRed Como Real //Volumen de la red de muestro cm3
	Definir volRedLitros Como Real //Volumen de la red de muestro en litros
	Definir diametroRed Como Real // Radio de la red en 
	Definir alturaRed Como Real //Largo total de la red
	
	
	Escribir "¿Cúal es la altura de la red en cm?"
	Leer alturaRed
	Escribir "¿Cúal es el diametro de la red en cm?"
	Leer diametroRed
	
	volumenRed =1/3*PI*(diametroRed/2)^2*alturaRed
	volRedLitros = volumenRed/1000
	
	Escribir "¿Cuál es el volumen de agua filtrada por la red en litros?"
	Leer V3
	volfiltradatotal= V3+volRedLitros
	
	Escribir "El volumen de la red es: ", volRedLitros, " litros"
	Escribir "El volumen de agua filtrada es: ", volfiltradatotal , " litros"
	
	
		Escribir "¿Cúantas alícuoatas contó?"
		Leer V2
		Escribir "¿Cuál es el número total de Células contados en todas las alícuotas?"
		Leer n
		NmL=n/V2// Número promedio total de Células contados por mililitro
		Escribir "El número promedio total de Células de fitoplancton contados es: ", redon(NmL), " Cel/mL"
		Escribir "¿Cuál es el volumen concentrado de la muestra en mililitros?"
		Leer V1
		
		CelL=(NmL*V1)/(V2*volfiltradatotal) //  Densidad de Células por litro
		CelmL= CelL/1000//  Densidad de Células por mililitro
		Escribir "El resultado de la densidad de Células de fitoplancton es: ", redon(CelL), " Cel/L"
		Escribir "El resultado de la densidad de Células de fitoplancton es: ", redon(CelmL), " Cel/ml"

	
	
FinAlgoritmo