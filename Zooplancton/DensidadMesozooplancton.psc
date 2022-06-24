Algoritmo DensidadMesozooplancton
	Definir D Como Real // Distancia recorrida por la red expresada en m
	Definir Ff Como Entero // Lectura final del flujómetro
	Definir Fi Como Entero // Lectura inicial del flujómetro
	Definir V Como Real // Volumen filtrado por la red  expresado en m3
	Definir di Como Real // Diámetro de la red expresada en m 
	Definir Nm3 como Real // Densidad de individuos en m3. Si necesita reportar en unidades de volumen diferentes, aplique el factor de conversión necesario.
	Definir N1 Como Entero // Número de individuos contados por alícuota en la cámara de conteo.
	Definir Vc como Real // Volumen concentrado inicial de la muestra en ml 
	Definir A Como Real // Volumen de la alícuota tomada con la pipeta Hensen-Stempel en ml.
	Definir n2 Como Entero // Número de alícuotas tomadas con la pipeta Hensen-Stempel
	Definir fracc Como Entero // Número de fracciones divididas de la muestra
	Escribir "¿Cuál es la lectura inicial del flujómetro?"
	Leer Fi
	Escribir "¿Cuál es la lectura final del flujómetro?"
	Leer Ff
	D= ((Ff-Fi)*26873)/999999  // Cálculo de la distancia recorrida por la red expresada en metros
	Escribir "El resultado de la distancia recorrida por la red es: ", D, " m"
	Escribir "¿Cuál es el diámetro en metros de la red?"
	Leer di
	V=(3.141618*(di^2)*D)/4
	Escribir "El resultado dle volumen de agua filtrada por la red es: ", V, " m3"
	Escribir "¿Cúal es el número de individuos contados por alícuota en la cámara Bogorov?"
	Leer N1
	Escribir "¿Cúal es el volumen concentrado inicial de la muestra en ml?"
	Leer Vc
	Escribir "¿Cúal es el volumen de la alícuota tomada con la pipeta Hensen-Stempel en ml?"
	Leer A
	Escribir "¿Cúal es el número de alícuotas tomadas con la pipeta Hensen-Stempel?"
	Leer n2
	Escribir "¿En cuantas fracciones se dividió la muestra?"
	Leer fracc
	Nm3= ((N1*Vc)/(A*n2*V))*fracc
	Escribir "La densidad de individuos en m3 es: ", Nm3, " indv/m3.","La densidad de individuos por 1000 m3 es: ", 1000*Nm3, " indv/1000m3"
	
FinAlgoritmo
