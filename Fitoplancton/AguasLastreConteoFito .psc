Algoritmo ConteoXcamaraSedgwickRafter
	
	Definir NmL Como Real // n�mero total de C�lulas contados por mililitro
	Definir n Como Real // n�mero de C�lulas contados en la c�mara
	
	Definir CelL Como Real // N�mero de C�lulas por litro
	Definir CelmL Como Real // N�mero de C�lulas por mililitro
	Definir V1 Como Real // Volumen concentrado de la muestra en mililitros
	Definir V2 Como Real // Volumen total de la al�cuota en mililitros
	Definir V3 Como Real // Volumen de agua filtrada por la red en litros
	definir volfiltradatotal como Real// Volumen de agua filtrada por la red en litros
	Definir volumenRed Como Real //Volumen de la red de muestro cm3
	Definir volRedLitros Como Real //Volumen de la red de muestro en litros
	Definir diametroRed Como Real // Radio de la red en 
	Definir alturaRed Como Real //Largo total de la red
	
	
	Escribir "�C�al es la altura de la red en cm?"
	Leer alturaRed
	Escribir "�C�al es el diametro de la red en cm?"
	Leer diametroRed
	
	volumenRed =1/3*PI*(diametroRed/2)^2*alturaRed
	volRedLitros = volumenRed/1000
	
	Escribir "�Cu�l es el volumen de agua filtrada por la red en litros?"
	Leer V3
	volfiltradatotal= V3+volRedLitros
	
	Escribir "El volumen de la red es: ", volRedLitros, " litros"
	Escribir "El volumen de agua filtrada es: ", volfiltradatotal , " litros"
	
	
		Escribir "�C�antas al�cuoatas cont�?"
		Leer V2
		Escribir "�Cu�l es el n�mero total de C�lulas contados en todas las al�cuotas?"
		Leer n
		NmL=n/V2// N�mero promedio total de C�lulas contados por mililitro
		Escribir "El n�mero promedio total de C�lulas de fitoplancton contados es: ", redon(NmL), " Cel/mL"
		Escribir "�Cu�l es el volumen concentrado de la muestra en mililitros?"
		Leer V1
		
		CelL=(NmL*V1)/(V2*volfiltradatotal) //  Densidad de C�lulas por litro
		CelmL= CelL/1000//  Densidad de C�lulas por mililitro
		Escribir "El resultado de la densidad de C�lulas de fitoplancton es: ", redon(CelL), " Cel/L"
		Escribir "El resultado de la densidad de C�lulas de fitoplancton es: ", redon(CelmL), " Cel/ml"

	
	
FinAlgoritmo