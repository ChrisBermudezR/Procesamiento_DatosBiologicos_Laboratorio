Algoritmo VolumendeaguafiltradaXred // Este algoritmo es para calcular el volumen de agua filtrada con el fluj�metro General Oceanic
	
	Definir D Como Real // Distancia recorrida por la red expresada en m
	Definir Ff Como Entero // Lectura final del fluj�metro
	Definir Fi Como Entero // Lectura inicial del fluj�metro
	Definir V Como Real // Volumen filtrado por la red  expresado en m3
	Definir di Como Real // Di�metro de la red expresada en m 
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
	
FinAlgoritmo