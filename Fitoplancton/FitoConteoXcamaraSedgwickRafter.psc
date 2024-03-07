Algoritmo ConteoXcamaraSedgwickRafter
	
	Definir NmL Como Real // n�mero total de C�lulas contados por mililitro
	Definir n Como Real // n�mero de C�lulas contados en la c�mara
	Definir a Como Real // n�mero de al�cuotas de 1 mL contadas en la c�mara
	Definir CelL Como Real // N�mero de C�lulas por litro
	Definir V1 Como Real // Volumen concentrado de la muestra en mililitros
	Definir V2 Como Real // Volumen total de la al�cuota en mililitros
	Definir V3 Como Real // Volumen de agua filtrada por la red en litros
	Definir Vc Como Real // Volumen del campo �ptico o de la cuadr�cula utilizada expresada en mil�metros c�bicos (mm3)
	Definir diamcampo Como Real // Di�metro del campo de observaci�n en mil�metros
	Definir C como Entero //  N�mero de campos contados
	Definir Vt Como Real // Volumen de la tira expresada en mil�metros c�bicos (mm3)
	Definir T Como Entero //N�mero de tiras contadas
	Definir v Como Real // Volumen sedimentado expresado en mililitros (ml)
	Definir diamcamara Como Real // Di�metro de la c�mara de observaci�n en mil�metros 
	
	Definir UsuarioEscoge Como Entero
	Escribir "�Cu�l es el c�lculo que va a realizar?"; 
	Escribir "Escoja un n�mero:"
	Escribir "1. C�lculo de c�mara completa"
	Escribir "2. C�lculo por campos"
	Escribir "3. Conteo por tiras"
	Escribir "Digite su selecci�n: "
	Leer UsuarioEscoge
	
	Si UsuarioEscoge < 1 o UsuarioEscoge > 3 Entonces
		Repetir
			Escribir "Escoja de nuevo un valor entre 1 y 3 y dig�telo:"
			Leer UsuarioEscoge
		Hasta Que UsuarioEscoge > 0 y UsuarioEscoge < 4
	FinSi
	
	Si UsuarioEscoge ==1 Entonces
		Escribir "�C�antas al�cuoatas cont�?"
		Leer V2
		Escribir "�Cu�l es el n�mero total de C�lulas contados en todas las al�cuotas?"
		Leer n
		NmL=n/V2// N�mero promedio total de C�lulas contados por mililitro
		Escribir "El n�mero promedio total de C�lulas de fitoplancton contados es: ", redon(NmL), " Cel/mL"
		Escribir "�Cu�l es el volumen concentrado de la muestra en mililitros?"
		Leer V1
		Escribir "�Cu�l es el volumen de agua filtrada por la red en litros?"
		Leer V3
		CelL=(NmL*V1)/(V2*V3) //  Densidad de C�lulas por litro
		Escribir "El resultado de la densidad de C�lulas de fitoplancton es: ", redon(CelL), " Cel/L"
	FinSi
	
	Si UsuarioEscoge ==2 Entonces
		Escribir "�Cu�l es el n�mero total de C�lulas contados en todos los campos?"
		Leer n
		Escribir "�Cu�l es el di�metro del campo de observaci�n en mm?"
		Leer diamcampo
		Vc=((3.141618*(diamcampo/2)^2)*1)/1000 // Este es el volumen del campo en milimetros c�bicos, para convertirlo a mililitros se debe multiplicar por 1000
		Escribir "�Cu�l es el n�mero de campos que cont�?"
		Leer C
		NmL=(n*1000)/(Vc*C) // N�mero promedio total de C�lulas contados por mililitro
		Escribir "El n�mero promedio total de C�lulas de fitoplancton contados es: ", redon(NmL), " Cel/mL"
		Escribir "�Cu�l es el volumen concentrado de la muestra en mililitros?"
		Leer V1
		Escribir "�Cu�l es el Volumen total de la al�cuota en mililitros?"
		Leer V2
		Escribir "�Cu�l es el volumen de agua filtrada en la red en litros?"
		Leer V3
		CelL=(NmL*V1)/(V2*V3) //  Densidad de C�lulas por litro
		Escribir "El resultado de la densidad de C�lulas de fitoplancton es: ", redon(CelL), " Cel/L"
	FinSi
	
	Si UsuarioEscoge ==3 Entonces
		Escribir "�Cu�l es el n�mero total de C�lulas contados en todas las tiras?"
		Leer n
		Escribir "�Cu�l es el n�mero de tiras contadas?"
		Leer T
		Vt=50
		NmL=(n*1000)/(Vt*T) // N�mero promedio total de C�lulas contados por mililitro
		Escribir "El n�mero promedio total de C�lulas de fitoplancton contados es: ", redon(NmL), " Cel/mL"
		Escribir "�Cu�l es el volumen concentrado de la muestra en mililitros?"
		Leer V1
		Escribir "�Cu�l es el Volumen total de la al�cuota en mililitros?"
		Leer V2
		Escribir "�Cu�l es el volumen de agua filtrada en la red en litros?"
		Leer V3
		CelL=(NmL*V1)/(V2*V3) //  Densidad de C�lulas por litro
		Escribir "El resultado de la densidad de C�lulas de fitoplancton es: ", redon(CelL), " Cel/L"
	FinSi
	
FinAlgoritmo