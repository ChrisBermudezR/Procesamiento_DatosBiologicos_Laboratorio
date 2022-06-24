Algoritmo DensidadMesozooplancton
	Definir D Como Real // Distancia recorrida por la red expresada en m
	Definir Ff Como Entero // Lectura final del fluj�metro
	Definir Fi Como Entero // Lectura inicial del fluj�metro
	Definir V Como Real // Volumen filtrado por la red  expresado en m3
	Definir di Como Real // Di�metro de la red expresada en m 
	Definir Nm3 como Real // Densidad de individuos en m3. Si necesita reportar en unidades de volumen diferentes, aplique el factor de conversi�n necesario.
	Definir N1 Como Entero // N�mero de individuos contados por al�cuota en la c�mara de conteo.
	Definir Vc como Real // Volumen concentrado inicial de la muestra en ml 
	Definir A Como Real // Volumen de la al�cuota tomada con la pipeta Hensen-Stempel en ml.
	Definir n2 Como Entero // N�mero de al�cuotas tomadas con la pipeta Hensen-Stempel
	Definir fracc Como Entero // N�mero de fracciones divididas de la muestra
	Escribir "�Cu�l es la lectura inicial del fluj�metro?"
	Leer Fi
	Escribir "�Cu�l es la lectura final del fluj�metro?"
	Leer Ff
	D= ((Ff-Fi)*26873)/999999  // C�lculo de la distancia recorrida por la red expresada en metros
	Escribir "El resultado de la distancia recorrida por la red es: ", D, " m"
	Escribir "�Cu�l es el di�metro en metros de la red?"
	Leer di
	V=(3.141618*(di^2)*D)/4
	Escribir "El resultado dle volumen de agua filtrada por la red es: ", V, " m3"
	Escribir "�C�al es el n�mero de individuos contados por al�cuota en la c�mara Bogorov?"
	Leer N1
	Escribir "�C�al es el volumen concentrado inicial de la muestra en ml?"
	Leer Vc
	Escribir "�C�al es el volumen de la al�cuota tomada con la pipeta Hensen-Stempel en ml?"
	Leer A
	Escribir "�C�al es el n�mero de al�cuotas tomadas con la pipeta Hensen-Stempel?"
	Leer n2
	Escribir "�En cuantas fracciones se dividi� la muestra?"
	Leer fracc
	Nm3= ((N1*Vc)/(A*n2*V))*fracc
	Escribir "La densidad de individuos en m3 es: ", Nm3, " indv/m3.","La densidad de individuos por 1000 m3 es: ", 1000*Nm3, " indv/1000m3"
	
FinAlgoritmo
