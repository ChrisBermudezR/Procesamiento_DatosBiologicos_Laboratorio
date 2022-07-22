Algoritmo ConteoXcamaraSedgwickRafter
	
	Definir NmL Como Real // número total de Organismos contados por mililitro
	Definir n Como Real // número de Organismos contados en la cámara
	Definir a Como Real // número de alícuotas de 1 mL contadas en la cámara
	Definir Org Como Real // Número de Organismos por litro
	Definir V1 Como Real // Volumen concentrado de la muestra en mililitros
	Definir V2 Como Real // Volumen total de la alícuota en mililitros
	Definir V3 Como Real // Volumen de agua filtrada por la red en litros
	Definir Vc Como Real // Volumen del campo óptico o de la cuadrícula utilizada expresada en milímetros cuadrados (mm2)
	Definir diamcampo Como Real // Diámetro del campo de observación en milímetros
	Definir C como Entero //  Número de campos contados
	
	Definir v Como Real // Volumen sedimentado expresado en mililitros (ml)
	Definir diamcamara Como Real // Diámetro de la cámara de observación en milímetros 
	Definir OrgL Como Real // Densidad de microzooplancton.
	
	Definir UsuarioEscoge Como Entero
	Escribir "¿Cúal es el cálculo que va a realizar?"; 
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
		Escribir "¿Cúal es el número total de Organismos contados en todas las alícuotas?"
		Leer n
		NmL=n/V2// Número promedio total de Organismos contados por mililitro
		Escribir "El número promedio total de Organismos de microzooplancton contados es: ", redon(NmL), " Org/mL"
		Escribir "¿Cúal es el volumen concentrado de la muestra en mililitros?"
		Leer V1
		Escribir "¿Cúal es el volumen de agua filtrada por la red en litros?"
		Leer V3
		OrgL=(NmL*V1)/(V2*V3) //  Densidad de Organismos por litro
		Escribir "El resultado de la densidad de Organismos de microzooplancton es: ", redon(OrgL), " Org/L"
	FinSi
	
	
	Si UsuarioEscoge ==2 Entonces
		Escribir "¿Cúal es el diámetro del campo de observación en mm?"
		Leer diamcampo
		Vc=(3.141618*(diamcampo/2)^2)*1 // Este es el volumen del campo en milimetros cúbicos, para convertirlo a mililitros se debe multiplicar por 1000
		Escribir "¿Cúal es el número de campos que contó?"
		Leer C
		NmL=(n*1000)/(Vc*C) // Número promedio total de Organismos contados por mililitro
		Escribir "El número promedio total de Organismos de microzooplancton contados es: ", redon(NmL), " Org/mL"
		Escribir "¿Cúal es el volumen concentrado de la muestra en mililitros?"
		Leer V1
		Escribir "¿Cúal es el Volumen total de la alícuota en mililitros?"
		Leer V2
		Escribir "¿Cúal es el volumen de agua filtrada en la red en litros?"
		Leer V3
		OrgL=(NmL*V1)/(V2*V3) //  Densidad de Organismos por litro
		Escribir "El resultado de la densidad de Organismos de microzooplancton es: ", redon(OrgL), " Org/L"
	FinSi
	
	Si UsuarioEscoge ==3 Entonces
		Escribir "¿Cúal es el volumen de la columna de sedimentación en mL?"
		Leer VCs
		Escribir "¿Cúal es el volumen de la cámara de observación en mL?"
		Leer vc
		Fd= VCs/vc // Factor de dilución de la muestra
		Escribir "¿Cuál es el volumen sedimentado en mL?"
		Leer v
		Escribir "¿Cúal es el número de organismos contados en el total de la cámara?"
		Leer N1
		OrgL=N1*Fd/v
		Escribir "La densidad del microzooplancton es de: ", OrgL, " Organismos por litro"
	FinSi
	
FinAlgoritmo