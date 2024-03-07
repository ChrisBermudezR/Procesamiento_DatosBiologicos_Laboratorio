Algoritmo ConteoXcamaraSedgwickRafter
	
	Definir NmL Como Real // número total de Células contados por mililitro
	Definir n Como Real // número de Células contados en la cámara
	Definir a Como Real // número de alícuotas de 1 mL contadas en la cámara
	Definir CelL Como Real // Número de Células por litro
	Definir V1 Como Real // Volumen concentrado de la muestra en mililitros
	Definir V2 Como Real // Volumen total de la alícuota en mililitros
	Definir V3 Como Real // Volumen de agua filtrada por la red en litros
	Definir Vc Como Real // Volumen del campo óptico o de la cuadrícula utilizada expresada en milímetros cúbicos (mm3)
	Definir diamcampo Como Real // Diámetro del campo de observación en milímetros
	Definir C como Entero //  Número de campos contados
	Definir Vt Como Real // Volumen de la tira expresada en milímetros cúbicos (mm3)
	Definir T Como Entero //Número de tiras contadas
	Definir v Como Real // Volumen sedimentado expresado en mililitros (ml)
	Definir diamcamara Como Real // Diámetro de la cámara de observación en milímetros 
	
	Definir UsuarioEscoge Como Entero
	Escribir "¿Cuál es el cálculo que va a realizar?"; 
	Escribir "Escoja un número:"
	Escribir "1. Cálculo de cámara completa"
	Escribir "2. Cálculo por campos"
	Escribir "3. Conteo por tiras"
	Escribir "Digite su selección: "
	Leer UsuarioEscoge
	
	Si UsuarioEscoge < 1 o UsuarioEscoge > 3 Entonces
		Repetir
			Escribir "Escoja de nuevo un valor entre 1 y 3 y digítelo:"
			Leer UsuarioEscoge
		Hasta Que UsuarioEscoge > 0 y UsuarioEscoge < 4
	FinSi
	
	Si UsuarioEscoge ==1 Entonces
		Escribir "¿Cúantas alícuoatas contó?"
		Leer V2
		Escribir "¿Cuál es el número total de Células contados en todas las alícuotas?"
		Leer n
		NmL=n/V2// Número promedio total de Células contados por mililitro
		Escribir "El número promedio total de Células de fitoplancton contados es: ", redon(NmL), " Cel/mL"
		Escribir "¿Cuál es el volumen concentrado de la muestra en mililitros?"
		Leer V1
		Escribir "¿Cuál es el volumen de agua filtrada por la red en litros?"
		Leer V3
		CelL=(NmL*V1)/(V2*V3) //  Densidad de Células por litro
		Escribir "El resultado de la densidad de Células de fitoplancton es: ", redon(CelL), " Cel/L"
	FinSi
	
	Si UsuarioEscoge ==2 Entonces
		Escribir "¿Cuál es el número total de Células contados en todos los campos?"
		Leer n
		Escribir "¿Cuál es el diámetro del campo de observación en mm?"
		Leer diamcampo
		Vc=((3.141618*(diamcampo/2)^2)*1)/1000 // Este es el volumen del campo en milimetros cúbicos, para convertirlo a mililitros se debe multiplicar por 1000
		Escribir "¿Cuál es el número de campos que contó?"
		Leer C
		NmL=(n*1000)/(Vc*C) // Número promedio total de Células contados por mililitro
		Escribir "El número promedio total de Células de fitoplancton contados es: ", redon(NmL), " Cel/mL"
		Escribir "¿Cuál es el volumen concentrado de la muestra en mililitros?"
		Leer V1
		Escribir "¿Cuál es el Volumen total de la alícuota en mililitros?"
		Leer V2
		Escribir "¿Cuál es el volumen de agua filtrada en la red en litros?"
		Leer V3
		CelL=(NmL*V1)/(V2*V3) //  Densidad de Células por litro
		Escribir "El resultado de la densidad de Células de fitoplancton es: ", redon(CelL), " Cel/L"
	FinSi
	
	Si UsuarioEscoge ==3 Entonces
		Escribir "¿Cuál es el número total de Células contados en todas las tiras?"
		Leer n
		Escribir "¿Cuál es el número de tiras contadas?"
		Leer T
		Vt=50
		NmL=(n*1000)/(Vt*T) // Número promedio total de Células contados por mililitro
		Escribir "El número promedio total de Células de fitoplancton contados es: ", redon(NmL), " Cel/mL"
		Escribir "¿Cuál es el volumen concentrado de la muestra en mililitros?"
		Leer V1
		Escribir "¿Cuál es el Volumen total de la alícuota en mililitros?"
		Leer V2
		Escribir "¿Cuál es el volumen de agua filtrada en la red en litros?"
		Leer V3
		CelL=(NmL*V1)/(V2*V3) //  Densidad de Células por litro
		Escribir "El resultado de la densidad de Células de fitoplancton es: ", redon(CelL), " Cel/L"
	FinSi
	
FinAlgoritmo